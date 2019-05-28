<?php

class conexion{
	
	public function conectarAndListar(){
        $mysqli = new mysqli($this->servidor, $this->usuario, $this->password, $this->basedatos, 3306);
        if ($mysqli->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
        }else{
            $resultado = $mysqli->query("SELECT * 
                                            FROM regalo
                                            WHERE pedido =0
                                            ORDER BY nombre ASC");
            $resultado->data_seek(0);
            while ($fila = $resultado->fetch_assoc()) {
                echo "<option value=".$fila['id'].">".$fila['nombre']."</option>";
            }
        }
	}

    public function insertar($id){
        $mysqli = new mysqli($this->servidor, $this->usuario, $this->password, $this->basedatos, 3306);
        if ($mysqli->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
        }else{
            $queryUpdate = "UPDATE regalo set pedido = 1 where id= " .$id." and pedido=0";
            if ($mysqli->query($queryUpdate) === TRUE) {
                return "Actualizado";
            } else {
                echo "Error updating record: " . $mysqli->error;
            }

            $mysqli->close();
        }
    }

    public function insertarComentario($comentario,$id){
        $mysqli = new mysqli($this->servidor, $this->usuario, $this->password, $this->basedatos, 3306);
        if ($mysqli->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
        }else{
            if(strlen($comentario) > 0){
                $queryInsert = "Insert into comentario(texto,regalo) values('".$comentario."',".$id.")";
                if ($mysqli->query($queryInsert) === TRUE) {
                    return "Actualizado";
                }else{
                    echo "Error en comentario";
                }
            }
        }
    }
        
        public function cerrarSesion(){
            session_start();
            session_destroy();
        }  
}
?>