void main() {
  // Supondo que o vetor de faturamento diário já esteja carregado
  List<double> faturamentoDiario = [/* valores de faturamento */];

  // Filtrar os dias com faturamento
  List<double> diasComFaturamento = faturamentoDiario.where((f) => f > 0).toList();

  // Encontrar o menor valor de faturamento
  double menorFaturamento = diasComFaturamento.reduce((a, b) => a < b ? a : b);

  // Encontrar o maior valor de faturamento
  double maiorFaturamento = diasComFaturamento.reduce((a, b) => a > b ? a : b);

  // Calcular a média anual de faturamento
  double mediaAnual = diasComFaturamento.reduce((a, b) => a + b) / diasComFaturamento.length;

  // Contar o número de dias com faturamento superior à média anual
  int diasAcimaDaMedia = diasComFaturamento.where((f) => f > mediaAnual).length;

  // Exibir os resultados
  print('Menor valor de faturamento: $menorFaturamento');
  print('Maior valor de faturamento: $maiorFaturamento');
  print('Número de dias com faturamento acima da média anual: $diasAcimaDaMedia');
}