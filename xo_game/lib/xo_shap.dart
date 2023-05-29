class XOBoxShap {
  String? t1;
  String? t2;
  String? t3;
  String? m1;
  String? m2;
  String? m3;
  String? b1;
  String? b2;
  String? b3;

  XOBoxShap({
    this.t1,
    this.t2,
    this.t3,
    this.m1,
    this.m2,
    this.m3,
    this.b1,
    this.b2,
    this.b3,
  });

  void drawXOBoxShap() {
    print('''
      $t1 | $t2 | $t3
      ---+----+----
      $m1 | $m2 | $m3
      ---+----+----
      $b1 | $b2 | $b3
 ''');
  }
}
