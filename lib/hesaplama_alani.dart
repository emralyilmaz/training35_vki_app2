import 'dart:math';

class HesaplamaAlani {
  HesaplamaAlani({this.boy, this.kilo});
  final int boy;
  final int kilo;
  double _vki;

  String hesapla() {
    _vki = kilo / pow(boy / 100, 2);
    return _vki.toStringAsFixed(1);
  }

  String sonucGetir() {
    if (_vki >= 45) {
      return "Aşırı Şişman (Aşırı Obez) - III. Sınıf";
    } else if (_vki >= 35) {
      return "Şişman (Obez) - II. Sınıf";
    } else if (_vki >= 30) {
      return "Şişman (Obez) - I. Sınıf";
    } else if (_vki >= 25) {
      return "Fazla Kilolu";
    } else if (_vki >= 18.5) {
      return "Normal";
    } else {
      return "Zayıf";
    }
  }

  String yorumGetir() {
    if (_vki >= 45) {
      return "Boyunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür.";
    } else if (_vki >= 35) {
      return "Uzunluğunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür.";
    } else if (_vki >= 30) {
      return "Boyunuza göre vücut ağırlığınızın fazla olduğunu bir başka deyişle şişman olduğunuzun bir göstergesidir. Şişmanlık, kalp-damar hastalıkları, diyabet, hipertansiyon v.b. kronik hastalıklar için risk faktörüdür.";
    } else if (_vki >= 25) {
      return "Boyunuza göre vücut ağırlığınızın fazla olduğunu gösterir. Fazla kilolu olma durumu gerekli önlemler alınmadığı takdirde pek çok hastalık için risk faktörü olan obeziteye (şişmanlık) yol açar.";
    } else if (_vki >= 18.5) {
      return "Uzunluğunuza göre uygun ağırlıkta olduğunuzu gösterir. Yeterli ve dengeli beslenerek ve düzenli fiziksel aktivite yaparak bu ağırlığınızı korumaya özen gösteriniz.";
    } else {
      return "Uzunluğunuza göre uygun ağırlıkta olmadığınızı, zayıf olduğunuzu gösterir. Zayıflık, bazı hastalıklar için risk oluşturan ve istenmeyen bir durumdur.";
    }
  }
}
