function validar() {
    email = document.getElementById('email').value
    password = document.getElementById('password').value
    mensaje = document.getElementById('mensaje')

    if (password == '' && email == '') {
        //alert('Rellena el EMAIL y la CONTRASEÑA - Es Obligatorio')
        mensaje.innerHTML = 'Rellena el EMAIL y la CONTRASEÑA'
        return false
    } else if (password == '') {
        //alert('Rellena el la CONTRASEÑA - Es Obligatorio')
        mensaje.innerHTML = 'Rellena la CONTRASEÑA'
        return false
    } else if (email == '') {
        //alert('Rellena el EMAIL - Es Obligatorio')
        mensaje.innerHTML = 'Rellena el EMAIL'
        return false
    } else {
        return true
    }


}