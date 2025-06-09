 <?php
/*
Plugin Name: CPU Burner
Description: Página que simula uso intensivo de CPU para pruebas de carga.
Version: 1.0
*/

add_action('init', function () {
    if (isset($_GET['cpu-test'])) {
        // Quema CPU por 10 segundos
        $end = microtime(true) + 10;
        while (microtime(true) < $end) {
            sqrt(rand());
        }

        wp_die('CPU quemado durante 10 segundos');
    }
});
