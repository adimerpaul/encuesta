<?php
class Main extends CI_Controller{
function index($ci){
    $query=$this->db->query("SELECT * FROM registro WHERE  ci='$ci'");
    if ($query->num_rows()==0){
        header("Location: ".base_url());
    }
    $data['ci']=$ci;
    $this->load->view('templates/header');
    $this->load->view('main',$data);
    $this->load->view('templates/footer');
}
function registro(){
    $ci=$_POST['ci'];
    $paterno=$_POST['paterno'];
    $materno=$_POST['materno'];
    $nombre=$_POST['nombre'];
    $rni=$_POST['rni'];
    $fechanac=$_POST['fechanac'];
    $fecharegistro=$_POST['fecharegistro'];
    $email=$_POST['email'];
    $celular=$_POST['celular'];
    $profesion=$_POST['profesion'];
    $anio=$_POST['anio'];
    $this->db->query("INSERT INTO profesional SET 
    rni='$rni',
    ci='$ci',
    paterno='$paterno',
    materno='$materno',
    nombre='$nombre',
    fechanac='$fechanac',
    fecharegistro='$fecharegistro',
    telefono='$celular',
    especialidad='$profesion',
    anio='$anio'
    ");
    $idprofesion=$this->db->insert_id();
    $query=$this->db->query("SELECT * FROM ocupacion ");
    foreach ($query->result() as $row){
        if (isset($_POST['o'.$row->idocupacion])){
            $te=$_POST['o'.$row->idocupacion];
        }else{
            $te="";
        }
        $query=$this->db->query("INSERT INTO po SET
            idprofesional='$idprofesion',
            idocupacion='$row->idocupacion',
            texto='$te'");
    }
    $query=$this->db->query("SELECT * FROM cursos ");
    foreach ($query->result() as $row){
        if (isset($_POST['c'.$row->idcursos])){
            $te=$_POST['c'.$row->idcursos];
        }else{
            $te="";
        }
        $query=$this->db->query("INSERT INTO pc SET
            idprofesional='$idprofesion',
            idcursos='$row->idcursos',
            texto='$te'");
    }
    header("Location: ".base_url()."Main/terminado");
}
function terminado(){
    $this->load->view('templates/header');
    $this->load->view('terminado');
    $this->load->view('templates/footer');
}
}
