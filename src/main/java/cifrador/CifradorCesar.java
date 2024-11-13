package cifrador;

public class CifradorCesar {

    // Cargar la biblioteca nativa
    static {
        System.loadLibrary("cifrador"); // Nombre de la biblioteca sin la extensión (.so)
    }

    // Declaración de métodos nativos
    public native String cifrarCesar(String texto, int desplazamiento);
    public native String descifrarCesar(String texto, int desplazamiento);

}
