<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="style/reset.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="style/skeleton.css">
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
        <meta charset="utf-8">
        <meta name="description" content="Página para el listado de regalos de Daniela Martínez y Rodrigo Mardones. Tiene como finalidad hacer algo amigable y sin mayor compromiso.">
        <meta name="author" content="Rodrigo Mardones">
        <title>Dan y Rod: el matrimonio de los gatos!</title>
        <!-- Mobile Specific Metas
        –––––––––––––––––––––––––––––––––––––––––––––––––– -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- FONT–––––––––––––––––––––––––––––––––––––––––––––––––– -->
    </head>
    <body>
        <div class="container">
            <?php
                include('pages/classConexion.php');
                $conexion = new conexion();
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    $id = test_input($_POST["listadoRegalos"]);
                    $conexion->insertar($id);
                    $conexion->insertarComentario(test_input($_POST["comentario"]),$id);
                    echo "<center><img src='http://bestanimations.com/Animals/Mammals/Cats/catgif/funny-cat-gif-12.gif'/></center><h3 style='text-align:center;' class='thanks'>Regalo Seleccionado!. Muchas gracias por ayudarnos. Que el amor fluya! </h3>";
                }
            ?>
            <div id="imagen" class="row">
                <div class="eleven column">
                    <h2>Rodrigo y Daniela, 26.Noviembre.2016</h2>
                    <p>Somos Daniela y Rodrigo (cosa que creemos que ya sabes si es que llegas a este sitio).</p>
                    <p> Les damos la bienvenida a este peque&ntilde;o lugar en la red.</p>
                    <p>Como muchos -si no todos- sabr&aacute;n, Nosotros ya somos ante la ley un matrimonio. Eso si, nos queda una parte pendiente: la celebraci&oacute;n por la iglesia -y su correspondiente fiesta!-</p>
                    <p>Estamos formando un hogar, y para ello, agradeceriamos cualquier aporte. Esto normalmente se hace a trav&eacute;s de grandes tiendas, pero encontramos que sus 'contratos' no dan el beneficio que muchos buscan y la libertad que los invitados quieren.</p>
                    <p>Es por esto que entregamos este sitio, para que puedan seleccionar el regalo que estimen conveniente y que ustedes vean d&oacute;nde comprarlo, c&oacute;mo movilizarlo, y cu&aacute;ndo entregarlo. En el listado inferior encontraran las opciones que van quedando, y con el bot&oacute;n que est&aacute; a su derecha, podr&aacute;n seleccionarlo. Esto es completamente anonimo, confiamos en que lo usar&aacute;n bien.</p>
                    <p>De antemano, les agradecemos mucho! Espero podamos compartir en la futura fiesta y en toda esta vida que estamos generando</p>
                </div>
            </div>
            <div id="formulario">
                <?php
                    function test_input($data) {
                        $data = trim($data);
                        $data = stripslashes($data);
                        $data = htmlspecialchars($data);
                        return $data;
                    }

                ?>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" onsubmit="return confirm('¿Deseas realmente elegir eso?');">
                    <span clas="right">
                        <textarea name="comentario" rows="4" cols="50" placeholder="Nos quieres decir algo? Escribe aquí! :)"></textarea>
                    </span>
                    <span class="left">
                        <h4>Regalos Disponibles:</h4>
                    </span>
                    <span class="right">
                        <select id="listadoRegalos" name="listadoRegalos">
                            <?php
                                $conexion->conectarAndListar();
                                $conexion->cerrarSesion();
                            ?>
                        </select>
                        <input type="submit" value="Elegir y enviar comentario" class="button button-primary">
                    </span>
                </form>
            </div>
        </div>
    </body>
</html>