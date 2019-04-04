# User Authentication 10%
### Para este ejercicio implementaremos una capa de seguridad en el inicio de sesión de la aplicación.

Cuando un usuario ingresa a un sitio web es posible obtener información que detallen las características de su dispositivo, y puede utilizarse para reconocer si el usuario que esta intentando iniciar sesión lo ha hecho con un dipositivo reconocido o no reconocido.

Fase 1. Cuando un usuario se regisre en el servico de la página web, recolecta y almacena en una base de datos las siguientes características del dispositivo:

1. User Agent
2. Operating System
3. Operating System Version
4. Browser
5. Browser Version
6. Color Depth
7. Resolution (width*height)
8. Time Zone
9. Language
10. Mobile or Desktop
11. Has Touch Capabilities?

Nota: La información puede ser recolectada con lenguaje JavaScript y para ser mandada como parámetro a PHP para ser insertada a la base de datos, puedes utilzar AJAX una tecnología de JQuery.

Fase 2. Cuando un usuario registrado ingrese las credenciales correctas para iniciar sesión, se deberá de analizar su dispositivo y compararlo con los registros almacenados en la base de datos, si las caractersiticas son similares en 80% o más el usuario podrá ingresar normalmente.

1. En caso contrario se le enviará por correo electrónico un token al usuaro para que confirme su identidad. 
2. Si el usuario ingresa incorrectamente el token, se le denegará el acceso al sistema.
3. Si el usuario ingresa correctamente el token, se le dará acceso al sistema  y se le preguntará si desea guardar el nuevo dispositivo a la lista de dispositivos confiables.