/*
stefany gonzalez leon
id: 10152111
*/

// 1. Suma de Números del 1 al N
int sumaHastaN(int N) {
  int suma = 0;
  for (int i = 1; i <= N; i++) {
    suma += i;
  }
  return suma;
}

// 2. Contar Valores Pares e Impares
Map<String, int> contarParesImpares(List<int> numeros) {
  int pares = 0;
  int impares = 0;

  for (var num in numeros) {
    if (num % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  return {'pares': pares, 'impares': impares};
}

// 3. Palabra Más Larga
String encontrarPalabraMasLarga(List<String> palabras) {
  String palabraMasLarga = '';

  for (var palabra in palabras) {
    if (palabra.length > palabraMasLarga.length) {
      palabraMasLarga = palabra;
    }
  }

  return palabraMasLarga;
}

// 4. Conversión de Temperatura
double celsiusToFahrenheit(double c) {
  return (c * 9 / 5) + 32;
}

double fahrenheitToCelsius(double f) {
  return (f - 32) * 5 / 9;
}

// 5. Calcular el Factorial de un Número
int factorial(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

// 6. Validar Palíndromo
bool esPalindromo(String palabra) {
  String palabraInvertida = palabra.split('').reversed.join('');
  return palabra == palabraInvertida;
}

// 7. FizzBuzz
List<String> fizzBuzz() {
  List<String> output = [];
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      output.add("FizzBuzz");
    } else if (i % 3 == 0) {
      output.add("Fizz");
    } else if (i % 5 == 0) {
      output.add("Buzz");
    } else {
      output.add(i.toString());
    }
  }
  return output;
}

// 8. Ordenar una Lista
// Ya hecho en main() usando el método .sort()

// 9. Buscar la Frecuencia de cada Caracter
Map<String, int> contarFrecuencia(String texto) {
  Map<String, int> frecuencia = {};

  for (var char in texto.split('')) {
    frecuencia[char] = (frecuencia[char] ?? 0) + 1;
  }

  return frecuencia;
}

// 10. Generar Serie de Fibonacci
List<int> generarFibonacci(int n) {
  List<int> fibonacci = [0, 1];

  for (int i = 2; i < n; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  return fibonacci;
}

void main() {
  int passed = 0;
  int failed = 0;

  // Reto 1: Suma de Números del 1 al N
  int sumEsperada = 15;
  int suma = sumaHastaN(5);
  print("00:00 +$passed -$failed: Suma de Números del 1 al N");
  if (suma == sumEsperada) {
    passed++;
    print("\t1. Suma de Números del 1 al N: Test Passed\n");
  } else {
    failed++;
    print("\t1. Suma de Números del 1 al N: Test Failed\n");
  }

  // Pruebas adicionales
  suma = sumaHastaN(0); // Caso borde: N = 0
  print(
      "00:00 +$passed -$failed: Suma de Números del 1 al N (Caso borde: N = 0)");
  if (suma == 0) {
    passed++;
    print("\t1. Suma de Números del 1 al N (Caso borde: N = 0): Test Passed\n");
  } else {
    failed++;
    print("\t1. Suma de Números del 1 al N (Caso borde: N = 0): Test Failed\n");
  }

  // Reto 2: Contar Valores Pares e Impares
  List<int> numeros = [1, 2, 3, 4];
  var resultados = contarParesImpares(numeros);
  print("00:00 +$passed -$failed: Contar Valores Pares e Impares");
  print(
      "\t2. Contar pares e impares: pares: ${resultados['pares']}, impares: ${resultados['impares']}");
  if (resultados['pares'] == 2 && resultados['impares'] == 2) {
    passed++;
    print("\tTest Passed\n");
  } else {
    failed++;
    print("\tTest Failed\n");
  }

  // Pruebas adicionales
  numeros = []; // Caso borde: lista vacía
  resultados = contarParesImpares(numeros);
  print(
      "00:00 +$passed -$failed: Contar Valores Pares e Impares (Caso borde: lista vacía)");
  print(
      "\t2. Contar pares e impares: pares: ${resultados['pares']}, impares: ${resultados['impares']}");
  if (resultados['pares'] == 0 && resultados['impares'] == 0) {
    passed++;
    print("\tTest Passed\n");
  } else {
    failed++;
    print("\tTest Failed\n");
  }

  // Reto 3: Palabra Más Larga
  List<String> palabras = ["Hola", "Mundo", "Dart"];
  String palabraMasLarga = encontrarPalabraMasLarga(palabras);
  print("00:00 +$passed -$failed: Palabra Más Larga");
  print("\t3. La palabra más larga es: \"$palabraMasLarga\"");
  if (palabraMasLarga == "Mundo") {
    passed++;
    print("\tTest Passed\n");
  } else {
    failed++;
    print("\tTest Failed\n");
  }

  // Reto 4: Conversión de Temperatura
  double celsius = 25;
  double fahrenheit = celsiusToFahrenheit(celsius);
  print("00:00 +$passed -$failed: Conversión de Temperatura");
  if (fahrenheit == 77) {
    passed++;
    print("\t4. Conversión de Temperatura: Test Passed\n");
  } else {
    failed++;
    print("\t4. Conversión de Temperatura: Test Failed\n");
  }

  fahrenheit = 77;
  celsius = fahrenheitToCelsius(fahrenheit);
  print(
      "00:00 +$passed -$failed: Conversión de Temperatura (Fahrenheit a Celsius)");
  if (celsius == 25) {
    passed++;
    print(
        "\t4. Conversión de Temperatura (Fahrenheit a Celsius): Test Passed\n");
  } else {
    failed++;
    print(
        "\t4. Conversión de Temperatura (Fahrenheit a Celsius): Test Failed\n");
  }

  // Reto 5: Calcular el Factorial de un Número
  int factorialResultado = factorial(5);
  print("00:00 +$passed -$failed: Calcular el Factorial de un Número");
  if (factorialResultado == 120) {
    passed++;
    print("\t5. Calcular el Factorial de un Número: Test Passed\n");
  } else {
    failed++;
    print("\t5. Calcular el Factorial de un Número: Test Failed\n");
  }

  // Pruebas adicionales
  factorialResultado = factorial(0); // Caso borde: factorial de 0
  print(
      "00:00 +$passed -$failed: Calcular el Factorial de un Número (Caso borde: factorial de 0)");
  if (factorialResultado == 1) {
    passed++;
    print(
        "\t5. Calcular el Factorial de un Número (Caso borde: factorial de 0): Test Passed\n");
  } else {
    failed++;
    print(
        "\t5. Calcular el Factorial de un Número (Caso borde: factorial de 0): Test Failed\n");
  }

  // Reto 6: Validar Palíndromo
  String palabra = "neuquen";
  bool resultadoPalindromo = esPalindromo(palabra);
  print("00:00 +$passed -$failed: Validar Palíndromo");
  if (resultadoPalindromo) {
    passed++;
    print("\t6. Validar Palíndromo: Test Passed\n");
  } else {
    failed++;
    print("\t6. Validar Palíndromo: Test Failed\n");
  }

  // Pruebas adicionales
  palabra = "hola";
  resultadoPalindromo = esPalindromo(palabra);
  print("00:00 +$passed -$failed: Validar Palíndromo (Caso borde: 'hola')");
  if (!resultadoPalindromo) {
    passed++;
    print("\t6. Validar Palíndromo (Caso borde: 'hola'): Test Passed\n");
  } else {
    failed++;
    print("\t6. Validar Palíndromo (Caso borde: 'hola'): Test Failed\n");
  }

  // Reto 7: FizzBuzz
  print("00:00 +$passed -$failed: FizzBuzz");
  List<String> fizzBuzzOutput = fizzBuzz();
  bool fizzBuzzCorrect = true; // Assume it's correct initially

  // Check FizzBuzz output
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      if (fizzBuzzOutput[i - 1] != "FizzBuzz") {
        fizzBuzzCorrect = false;
        break;
      }
    } else if (i % 3 == 0) {
      if (fizzBuzzOutput[i - 1] != "Fizz") {
        fizzBuzzCorrect = false;
        break;
      }
    } else if (i % 5 == 0) {
      if (fizzBuzzOutput[i - 1] != "Buzz") {
        fizzBuzzCorrect = false;
        break;
      }
    } else {
      if (fizzBuzzOutput[i - 1] != i.toString()) {
        fizzBuzzCorrect = false;
        break;
      }
    }
  }

  if (fizzBuzzCorrect) {
    passed++;
    print("\t7. FizzBuzz: Test Passed\n");
  } else {
    failed++;
    print("\t7. FizzBuzz: Test Failed\n");
  }

  // Reto 8: Ordenar una Lista
  List<int> listaDesordenada = [4, 1, 3, 2];
  listaDesordenada.sort();
  print("00:00 +$passed -$failed: Ordenar una Lista");
  if (listaDesordenada.toString() == [1, 2, 3, 4].toString()) {
    passed++;
    print("\t8. Ordenar una Lista: Test Passed\n");
  } else {
    failed++;
    print("\t8. Ordenar una Lista: Test Failed\n");
  }

  // Reto 9: Buscar la Frecuencia de cada Caracter
  String texto = "banana";
  Map<String, int> frecuencia = contarFrecuencia(texto);
  print("00:00 +$passed -$failed: Buscar la Frecuencia de cada Caracter");
  if (frecuencia.toString() == {'b': 1, 'a': 3, 'n': 2}.toString()) {
    passed++;
    print("\t9. Buscar la Frecuencia de cada Caracter: Test Passed\n");
  } else {
    failed++;
    print("\t9. Buscar la Frecuencia de cada Caracter: Test Failed\n");
  }

  // Reto 10: Generar Serie de Fibonacci
  List<int> fibonacciSerie = generarFibonacci(5);
  print("00:00 +$passed -$failed: Generar Serie de Fibonacci");
  if (fibonacciSerie.toString() == [0, 1, 1, 2, 3].toString()) {
    passed++;
    print("\t10. Generar Serie de Fibonacci: Test Passed\n");
  } else {
    failed++;
    print("\t10. Generar Serie de Fibonacci: Test Failed\n");
  }
}
