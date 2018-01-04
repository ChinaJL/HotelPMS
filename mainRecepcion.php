<?php
include('session.php');
include('declaracionFechas.php');
include('funciones.php');
if(isset($_SESSION['login'])){
	include('header.php');
	include('navbarRecepcion.php');
	?>

	<section class="container">
		<div class="row">
			<div class="col-4 mb-3">
				<div class="card text-white bg-card o-hidden h-100">
					<div class="card-body">
						<div class="card-body-icon">
							<i class="fa fa-fw fa-car"></i>
						</div>
                        <div class="spacer15"></div>
                        <?php
                        $date = date("Y-m-d");
                        $result = mysqli_query($link,"SELECT COUNT(*) AS nroArribos FROM HabitacionReservada WHERE fechaInicio = '{$date}' AND idEstado = '3'");
                        while ($fila = mysqli_fetch_array($result)){
                            $nroArribos = $fila['nroArribos'];
                        }
                        ?>
						<div class="card-body-text"><?php echo $nroArribos;?> Arribos</div>
					</div>
				</div>
			</div>
			<div class="col-4 mb-3">
                <div class="card text-white bg-card o-hidden h-100">
                    <div class="card-body">
                        <div class="card-body-icon">
                            <i class="fa fa-fw fa-tags"></i>
                        </div>
                        <div class="spacer15"></div>
                        <?php
                        $date = date("Y-m-d");
                        $result = mysqli_query($link,"SELECT COUNT(*) AS nroSalidas FROM HabitacionReservada WHERE fechaFin = '{$date}' AND idEstado = '4'");
                        while ($fila = mysqli_fetch_array($result)){
                            $nroSalidas = $fila['nroSalidas'];
                        }
                        ?>
                        <div class="card-body-text"><?php echo $nroSalidas;?> Salidas</div>
                    </div>
                </div>
			</div>
			<div class="col-4 mb-3">
                <div class="card text-white bg-card o-hidden h-100">
                    <div class="card-body">
                        <div class="card-body-icon">
                            <i class="fa fa-fw fa-bed"></i>
                        </div>
                        <div class="spacer15"></div>
                        <?php
                        $date = date("Y-m-d");
                        $result = mysqli_query($link,"SELECT COUNT(*) AS nroHuespedes FROM Ocupantes WHERE (idReserva, idHabitacion) IN (SELECT idReserva, idHabitacion FROM HabitacionReservada WHERE fechaFin >= '{$date}' AND idEstado = '4')");
                        while ($fila = mysqli_fetch_array($result)){
                            $nroHuespedes = $fila['nroHuespedes'];
                        }
                        ?>
                        <div class="card-body-text"><?php echo $nroHuespedes;?> Huespedes</div>
                        <div class="spacer20"></div>
                    </div>
                </div>
            </div>
		</div>
		<div class="spacer20"></div>
		<div class="row">
			<div class="col-6">
				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-table"></i> Reservas
						<div class="float-right">
							<button type="button" class="btn btn-sm btn-light" data-toggle="modal" data-target="#modalReserva">Nueva Reserva</button>
						</div>
					</div>
					<div class="card-body">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#arribos" role="tab">Arribos</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#checkout" role="tab">Registrados</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#sobrestadia" role="tab">Sobrestadía</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="arribos" role="tabpanel">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#hoy" role="tab">Hoy</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#manana" role="tab">Mañana</a>
									</li>
								</ul>
								<div class="spacer10"></div>
								<div class="tab-content">
									<div class="tab-pane active" id="hoy" role="tabpanel">
										<table class="table text-center">
											<thead>
											<tr>
												<th class="text-center">Huésped</th>
												<th class="text-center">ID Reserva</th>
												<th class="text-center">Habitación</th>
												<th class="text-center">Estado</th>
												<th class="text-center">Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $result = mysqli_query($link,"SELECT * FROM HabitacionReservada WHERE fechaInicio = '{$date}' AND idEstado = '3'");
                                            while ($fila = mysqli_fetch_array($result)){
                                                echo "<tr>";
                                                $result1 = mysqli_query($link,"SELECT * FROM Ocupantes WHERE idReserva = '{$fila['idReserva']}' AND idHabitacion = '{$fila['idHabitacion']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $result2 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped = '{$fila1['idHuesped']}'");
                                                    while ($fila2 = mysqli_fetch_array($result2)){
                                                        $nombre = $fila2['nombreCompleto'];
                                                    }
                                                }
                                                $result1 = mysqli_query($link,"SELECT * FROM Estado WHERE idEstado = '{$fila['idEstado']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $estado = $fila1['descripcion'];
                                                }
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>{$estado}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type=\"submit\" value=\"Registrar Check-In\" class=\"dropdown-item\" formaction=\"#\">
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                    <input type=\"submit\" value=\"Editar Reserva\" class=\"dropdown-item\" formaction=\"editarReserva.php\">
                                                                    <input type=\"submit\" value=\"Eliminar\" class=\"dropdown-item\" formaction=\"#\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
									<div class="tab-pane" id="manana" role="tabpanel">
										<table class="table text-center">
											<thead>
											<tr>
												<th class="text-center">Huésped</th>
												<th class="text-center">ID Reserva</th>
												<th class="text-center">Habitación</th>
												<th class="text-center">Estado</th>
												<th class="text-center">Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $date = date('Y-m-d', strtotime($date . ' +1 day'));
                                            $result = mysqli_query($link,"SELECT * FROM HabitacionReservada WHERE fechaInicio = '{$date}' AND idEstado = '3'");
                                            while ($fila = mysqli_fetch_array($result)){
                                                echo "<tr>";
                                                $result1 = mysqli_query($link,"SELECT * FROM Ocupantes WHERE idReserva = '{$fila['idReserva']}' AND idHabitacion = '{$fila['idHabitacion']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $result2 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped = '{$fila1['idHuesped']}'");
                                                    while ($fila2 = mysqli_fetch_array($result2)){
                                                        $nombre = $fila2['nombreCompleto'];
                                                    }
                                                }
                                                $result1 = mysqli_query($link,"SELECT * FROM Estado WHERE idEstado = '{$fila['idEstado']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $estado = $fila1['descripcion'];
                                                }
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>{$estado}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                    <input type=\"submit\" value=\"Editar Reserva\" class=\"dropdown-item\" formaction=\"editarReserva.php\">
                                                                    <input type=\"submit\" value=\"Eliminar\" class=\"dropdown-item\" formaction=\"#\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="checkout" role="tabpanel">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#hoy2" role="tab">Hoy</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#manana2" role="tab">Mañana</a>
									</li>
								</ul>
								<div class="spacer10"></div>
								<div class="tab-content">
									<div class="tab-pane active" id="hoy2" role="tabpanel">
										<table class="table text-center">
											<thead>
											<tr>
												<th class="text-center">Huésped</th>
												<th class="text-center">ID Reserva</th>
												<th class="text-center">Habitación</th>
												<th class="text-center">Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $result = mysqli_query($link,"SELECT * FROM Ocupantes WHERE (idReserva, idHabitacion) IN (SELECT idReserva, idHabitacion FROM HabitacionReservada WHERE fechaFin >= '{$date}' AND idEstado = '4')");
                                            while ($fila = mysqli_fetch_array($result)){
                                                $result1 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped = '{$fila['idHuesped']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $nombre = $fila1['nombreCompleto'];
                                                    $idHuesped = $fila1['idHuesped'];
                                                }
                                                echo "<tr>";
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                    Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type='hidden' name='idHuesped' value='{$idHuesped}'>
                                                                    <input type=\"submit\" value=\"Registrar Consumo\" class=\"dropdown-item\" formaction=\"#\">
                                                                    <input type=\"submit\" value=\"Registrar Check-out\" class=\"dropdown-item\" formaction=\"checkout.php\">
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                    <input type=\"submit\" value=\"Editar Reserva\" class=\"dropdown-item\" formaction=\"editarReserva.php\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
									<div class="tab-pane" id="manana2" role="tabpanel">
										<table class="table">
											<thead>
											<tr>
												<th>Huésped</th>
												<th>ID Reserva</th>
												<th>Habitación</th>
												<th>Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $date = date('Y-m-d', strtotime($date . ' +1 day'));
                                            $result = mysqli_query($link,"SELECT * FROM Ocupantes WHERE (idReserva, idHabitacion) IN (SELECT idReserva, idHabitacion FROM HabitacionReservada WHERE fechaFin >= '{$date}' AND idEstado = '4')");
                                            while ($fila = mysqli_fetch_array($result)){
                                                $result1 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped = '{$fila['idHuesped']}'");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $nombre = $fila1['nombreCompleto'];
                                                    $idHuesped = $fila1['idHuesped'];
                                                }
                                                echo "<tr>";
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                    Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type='hidden' name='idHuesped' value='{$idHuesped}'>
                                                                    <input type=\"submit\" value=\"Registrar Consumo\" class=\"dropdown-item\" formaction=\"#\">
                                                                    <input type=\"submit\" value=\"Registrar Check-out\" class=\"dropdown-item\" formaction=\"checkout.php\">
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                    <input type=\"submit\" value=\"Editar Reserva\" class=\"dropdown-item\" formaction=\"editarReserva.php\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="sobrestadia" role="tabpanel">
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#hoy3" role="tab">Hoy</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#manana3" role="tab">Mañana</a>
									</li>
								</ul>
								<div class="spacer10"></div>
								<div class="tab-content">
									<div class="tab-pane active" id="hoy3" role="tabpanel">
										<table class="table">
											<thead>
											<tr>
												<th>Huésped</th>
												<th>ID Reserva</th>
												<th>Habitación</th>
												<th>Estado</th>
												<th>Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $result = mysqli_query($link,"SELECT * FROM HabitacionReservada WHERE idEstado = '8'");
                                            while ($fila = mysqli_fetch_array($result)){
                                                $result1 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped IN (SELECT idHuesped FROM Ocupantes WHERE idReserva = '{$fila['idReserva']}' AND idHabitacion = '{$fila['idHabitacion']}')");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $nombre = $fila1['nombreCompleto'];
                                                    $idHuesped = $fila1['idHuesped'];
                                                }
                                                echo "<tr>";
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                    Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type='hidden' name='idHuesped' value='{$idHuesped}'>
                                                                    <input type=\"submit\" value=\"Registrar Consumo\" class=\"dropdown-item\" formaction=\"#\">
                                                                    <input type=\"submit\" value=\"Registrar Check-out\" class=\"dropdown-item\" formaction=\"checkout.php\">
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
									<div class="tab-pane" id="manana3" role="tabpanel">
										<table class="table">
											<thead>
											<tr>
												<th>Huésped</th>
												<th>ID Reserva</th>
												<th>Habitación</th>
												<th>Estado</th>
												<th>Acciones</th>
											</tr>
											</thead>
                                            <tbody>
                                            <?php
                                            $date = date("Y-m-d");
                                            $date = date('Y-m-d', strtotime($date . ' +1 day'));
                                            $result = mysqli_query($link,"SELECT * FROM HabitacionReservada WHERE idEstado = '8'");
                                            while ($fila = mysqli_fetch_array($result)){
                                                $result1 = mysqli_query($link,"SELECT * FROM Huesped WHERE idHuesped IN (SELECT idHuesped FROM Ocupantes WHERE idReserva = '{$fila['idReserva']}' AND idHabitacion = '{$fila['idHabitacion']}')");
                                                while ($fila1 = mysqli_fetch_array($result1)){
                                                    $nombre = $fila1['nombreCompleto'];
                                                    $idHuesped = $fila1['idHuesped'];
                                                }
                                                echo "<tr>";
                                                echo "<td>{$nombre}</td>";
                                                echo "<td>{$fila['idReserva']}</td>";
                                                echo "<td>{$fila['idHabitacion']}</td>";
                                                echo "<td>
                                                        <form method='post'>
                                                            <div class=\"dropdown\">
                                                                <button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                                                                    Acciones
                                                                </button>
                                                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
                                                                    <input type='hidden' name='idReserva' value='{$fila['idReserva']}'>
                                                                    <input type='hidden' name='idHabitacion' value='{$fila['idHabitacion']}'>
                                                                    <input type='hidden' name='idHuesped' value='{$idHuesped}'>
                                                                    <input type=\"submit\" value=\"Registrar Consumo\" class=\"dropdown-item\" formaction=\"#\">
                                                                    <input type=\"submit\" value=\"Registrar Check-out\" class=\"dropdown-item\" formaction=\"checkout.php\">
                                                                    <input type=\"submit\" value=\"Ver Reserva\" class=\"dropdown-item\" formaction=\"verReserva.php\">
                                                                </div>
                                                            </div>
                                                        </form>
                                                      </td>
                                                ";
                                                echo "</tr>";
                                            }
                                            ?>
                                            </tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-table"></i> Actividad del día</div>
					<div class="card-body">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#checkin" role="tab">Check-In</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#checkout2" role="tab">Check-out</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#consumos" role="tab">Consumos</a>
							</li>
						</ul>
						<div class="spacer10"></div>
						<div class="tab-content">
							<div class="tab-pane active" id="checkin" role="tabpanel">
								<table class="table">
									<thead>
									<tr>
										<th>Huésped</th>
										<th>ID Reserva</th>
										<th>Habitación</th>
										<th>Hora</th>
										<th>Acciones</th>
									</tr>
									</thead>
                                    <tbody>
                                    <tr>
                                        <td>Juan Pérez</td>
                                        <td>R170872</td>
                                        <td>Suite Junior</td>
                                        <td>08:18am</td>
                                        <td>
                                            <form method='post'>
                                                <div class="dropdown">
                                                    <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Acciones
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <input type="submit" value="Ver Reserva" class="dropdown-item" formaction="verReserva.php">
                                                        <input type="submit" value="Registrar Consumo" class="dropdown-item" formaction="#">
                                                    </div>
                                                </div>
                                            </form>
                                        </td>
                                    </tr>
                                    </tbody>
								</table>
							</div>
							<div class="tab-pane" id="checkout2" role="tabpanel">
								<table class="table">
									<thead>
									<tr>
										<th>Huésped</th>
										<th>ID Reserva</th>
										<th>Habitación</th>
										<th>Hora</th>
										<th>Acciones</th>
									</tr>
									</thead>
								</table>
							</div>
							<div class="tab-pane" id="consumos" role="tabpanel">
								<table class="table">
									<thead>
									<tr>
										<th>Huésped</th>
										<th>ID Reserva</th>
										<th>Habitación</th>
										<th>Monto</th>
										<th>Detalle</th>
									</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<form method="post" action="nuevaReserva.php">
		<div class="modal fade" id="modalReserva" tabindex="-1" role="dialog" aria-labelledby="modalReserva" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Nueva Reserva</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container-fluid">
                            <input type="hidden" name="idReserva" value="<?php $idReserva = idgen("R"); echo $idReserva?>">
							<div class="row">
								<div class="form-group col-6" id="divDni">
									<label class="col-form-label" for="dni">DNI Titular:</label>
									<input type="number" name="dni" id="dni" class="form-control" onchange="getNombre(this.value);getTelf(this.value);getEmail(this.value);">
								</div>
								<div class="form-group col-6" id="divNombre">
									<label class="col-form-label" for="nombres">Nombre Completo:</label>
									<input type="text" name="nombres" id="nombres" class="form-control" onchange="getID(this.value);getTelf(this.value);getEmail(this.value);">
								</div>
							</div>
							<div class="row">
								<div class="form-group col-6" id="divTelf">
									<label class="col-form-label" for="telefono">Teléfono Celular:</label>
									<input type="text" name="telefono" id="telefono" class="form-control">
								</div>
								<div class="form-group col-6" id="divEmail">
									<label class="col-form-label" for="email">Correo Electrónico:</label>
									<input type="email" name="email" id="email" class="form-control">
								</div>
							</div>
                            <div class="row">
                                <div class="form-group col-12">
                                    <label class="col-form-label" for="tipoReserva">Tipo de Reserva:</label>
                                    <select class="form-control" name="tipoReserva" id="tipoReserva">
                                        <option selected disabled>Seleccionar</option>
                                        <option value="3">Reserva Confirmada</option>
                                        <option value="9">Reserva Pendiente</option>
                                    </select>
                                </div>
                            </div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-secondary" data-dismiss="modal" value="Cerrar">
						<input type="submit" class="btn btn-primary" name="addReserva" value="Guardar Cambios">
					</div>
				</div>
			</div>
		</div>
	</form>

	<?php
	include('footer.php');
}
?>