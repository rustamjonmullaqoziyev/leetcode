List<double> convertTemperature(double celsius) {
  double kelvin = celsius + 273.15;
  double fahrenheit = celsius * 1.80 + 32.00;
  kelvin = double.parse(kelvin.toStringAsFixed(5));
  fahrenheit = double.parse(fahrenheit.toStringAsFixed(5));
  return [kelvin, fahrenheit];
}
