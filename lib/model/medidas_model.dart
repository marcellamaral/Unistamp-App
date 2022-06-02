class Medidas {
  late double _espessura;
  late double _tensao;
  late double _largura;
  late double _angulo;

  set espessura(esp) =>
      esp == '' ? _espessura = 0.0 : _espessura = double.parse(esp);
  set largura(lar) => lar == '' ? _largura = 0.0 : _largura = double.parse(lar);
  set tensao(ten) => _tensao = ten;
  set angulo(ang) => _angulo = ang;

  get espessura => _espessura;
  get tensao => _tensao;
  get largura => _largura;
  get angulo => _angulo;
}
