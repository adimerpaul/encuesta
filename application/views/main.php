<?php
$query=$this->db->query("SELECT * FROM registro WHERE ci='$ci'");
$row=$query->row();
$apaterno=$row->apaterno;
$amaterno=$row->amaterno;
$nombres=$row->nombres;
$rni=$row->rni;
$fechanac=$row->fechanac;
$fechareg=$row->fechareg;
$email=$row->email;
$telmovil=$row->telmovil;
$amaterno=$row->amaterno;

?>
<form method="post" action="<?=base_url()?>Main/Registro">
    <h4>DATOS GENERALES</h4>
    <div class="form-group row">
        <label  class="col-sm-2 col-form-label">Cedula de identidad</label>
        <div class="col-sm-2">
            <input type="text" name="ci" value="<?=$ci?>" hidden>
            <input type="text" class="form-control" value="<?=$ci?>" disabled>
        </div>
        <label class="col-sm-2 col-form-label">Nombre Completo</label>
        <div class="col-sm-6">
            <input type="text" name="paterno" value="<?=$apaterno?>" hidden>
            <input type="text" name="materno" value="<?=$amaterno?>" hidden>
            <input type="text" name="nombre" value="<?=$nombres?>" hidden>
            <input type="text" class="form-control"  value="<?=$apaterno." ".$amaterno." ".$nombres?>" disabled>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label">RNI</label>
        <div class="col-sm-2">
            <input type="text" name="rni" value="<?=$rni?>" hidden>
            <input type="text" class="form-control"  value="<?=$rni?>" disabled>
        </div>
        <label class="col-sm-1 col-form-label">Fecha de nacimiento</label>
        <div class="col-sm-3">
            <input type="text" name="fechanac" value="<?=$fechanac?>" hidden>
            <input type="date" class="form-control"  value="<?=$fechanac?>" disabled>
        </div>
        <label class="col-sm-1 col-form-label">Fecha de registro</label>
        <div class="col-sm-3">
            <input type="text" name="fecharegistro" value="<?=$fechareg?>" hidden>
            <input type="date" class="form-control"  value="<?=$fechareg?>" disabled>
        </div>
    </div>
    <h4>DATOS MODIFICABLES</h4>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label">Correo electronico</label>
        <div class="col-sm-2">
            <input type="correo" name="email" class="form-control"  value="<?=$email?>" >
        </div>
        <label class="col-sm-1 col-form-label">Celular</label>
        <div class="col-sm-2">
            <input type="text" name="celular" class="form-control"  value="<?=$telmovil?>" required >
        </div>
        <label class="col-sm-1 col-form-label">Profesion</label>
        <div class="col-sm-2">
            <select class="form-control" name="profesion" required>
                <option value="">Seleccionar</option>
                <option value="MINAS">MINAS</option>
                <option value="CIVIL">CIVIL</option>
                <option value="METALURGIA">METALURGIA</option>
                <option value="MECANICA">MECANICA</option>
                <option value="ELECTRICA">ELECTRICA</option>
                <option value="QUIMICA">QUIMICA</option>
                <option value="GEOLOGIA">GEOLOGIA</option>
                <option value="SISTEMAS">SISTEMAS</option>
                <option value="INDUSTRIAL">INDUSTRIAL</option>
            </select>
        </div>
        <label class="col-sm-1 col-form-label">Año de titulacion</label>
        <div class="col-sm-2">
            <input type="text" name="anio" class="form-control" >
        </div>
    </div>
    <h4>OCUPACION ACTUAL</h4>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label">Actualmente trabaja?</label>
        <div class="col-sm-2">
            <input type="radio" name="o1" id="si" value="SI"> SI

            <input type="radio" name="o1" id="no" value="NO"> NO
        </div>
        <label class="col-sm-2 col-form-label" id="tituloo2">Institucion donde trabaja</label>
        <div class="col-sm-2" id="textoo2" >
            <input type="text" name="o2" class="form-control" >
        </div>
        <label class="col-sm-3 col-form-label">Cargo actual que desempeña</label>
        <div class="col-sm-2">
            <input type="text" name="o3" class="form-control" >
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Se desempeña actualmente en el cargo como:</label>
        <div class="col-sm-4">
            <input type="radio" name="o4" id="sistemas" value="INGENIERO DE SISTEMAS"> Ingeniero de sistemas
            <br>
            <input type="radio" name="o4" id="infomatico" value="INGENIERO INFORMATICO"> Ingeniero informatico
        </div>
    </div>
    <h4>CURSOS DE POSTGRADO</h4>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Cuenta con cursos de posgrado:</label>
        <div class="col-sm-2">
            <input type="radio" name="c1" id="si2" value="SI"> SI
            <input type="radio" name="c1" id="no2" value="NO"> NO
        </div>
        <label class="col-sm-2 col-form-label" id="tituloc2">Con que nivel de posgrado cuenta:</label>
        <div class="col-sm-2" id="textoc2">
            <select class="form-control" name="c2" >
                <option value="">Seleccionar</option>
                <option value="DIPLOMADO">DIPLOMADO</option>
                <option value="ESPECIALIZACION">ESPECIALIZACION</option>
                <option value="MAESTRIA">MAESTRIA</option>
                <option value="DOCTORADO">DOCTORADO</option>
                <option value="POSTDOCTORADO">POSTDOCTORADO</option>
            </select>
        </div>
        <label class="col-sm-2 col-form-label">Desea alguna capacitacion, en el area por parte de la carrera?</label>
        <div class="col-sm-2">
            <input type="radio" name="c3" id="si" value="SI"> SI
            <input type="radio" name="c3" id="no" value="NO"> NO
        </div>
    </div>
    <div class="form-group row">
        <button class="btn-success btn btn-block" type="submit">Terminar actualizacion de datos</button>
    </div>
</form>
<script !src="">
    window.onload=function (e) {
        $('#tituloc2').hide();
        $('#tituloo2').hide();
        $('#textoc2').hide();
        $('#textoo2').hide();
        $('#si').change(function (e) {
            $('#tituloo2').show();
            $('#textoo2').show();
            e.preventDefault();
        });
        $('#no').change(function (e) {
            $('#tituloo2').hide();
            $('#textoo2').hide();
            e.preventDefault();
        });
        $('#si2').change(function (e) {
            $('#tituloc2').show();
            $('#textoc2').show();
            e.preventDefault();
        });
        $('#no2').change(function (e) {
            $('#tituloc2').hide();
            $('#textoc2').hide();
            e.preventDefault();
        });
    }
</script>
