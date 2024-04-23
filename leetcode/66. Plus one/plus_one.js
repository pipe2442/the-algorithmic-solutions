// function incrementNumber(digits) {
//   // Convierte el arreglo de dígitos a un número entero, lo incrementa y luego lo convierte a cadena
//   let number = (parseInt(digits.join(""), 10) + 1).toString();
//   // Divide la cadena de regreso en dígitos y los convierte a números
//   return number.split("").map((e) => parseInt(e, 10));
// }

function incrementNumber(digits) {
  let last_index = digits.length - 1;

  for (let i = last_index; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits; // aqui ya se sale de toda la funcion
    }
    digits[i] = 0;
  }

  digits.unshift(1); // Agrega un 1 al inicio si todos los dígitos eran 9
  return digits;
}

// Ejemplo de uso:
let digits = [9, 9, 9];
let result = incrementNumber(digits);
console.log(result);
