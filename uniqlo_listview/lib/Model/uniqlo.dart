class Uniqlo {
  String imgLabel;
  String imageUrl;
  String description;

  Uniqlo(this.imageUrl, this.imgLabel,this.description);

static List<Uniqlo> samples = [
  Uniqlo('assets/image/beef.webp','beef','poom'),
  Uniqlo('assets/image/green-curry.webp','green-curry','poom'),
  Uniqlo('assets/image/mama-vegetable.webp','mama-vegetable','poom'),
  Uniqlo('assets/image/padthai-prawn.webp','padthai-prawn','poom'),
  Uniqlo('assets/image/Turkey-Larb.webp','Turkey-Larb','poom'),
  ];
}