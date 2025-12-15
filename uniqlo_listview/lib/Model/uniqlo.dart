class Uniqlo {
  String imgLabel;
  String imageUrl;
  String description;
  String price;

  Uniqlo(this.imageUrl, this.imgLabel, this.description, this.price);

static List<Uniqlo> samples = [
  Uniqlo('assets/images/Fleece Shirt.jpg','Fleece knitted t-shirt','Soft, warm fleece fabric with a texture and color similar to knitted fabric. The fabric retains its shape, making it a perfect single-piece garment.Soft, warm fleece fabric with a texture and color similar to knitted fabric.','990 THB'),
  Uniqlo('assets/images/Flannel Shirt.jpg','Flannel Shirt','Fine 100% cotton brushed for a smooth feel on the outside and soft and cozy warmth on the inside.','990 THB'),
  Uniqlo('assets/images/Dry-Ex.jpg','Dry-Ex Shirt','This shirt is packed with features, making it ideal for active activities or as everyday wear.','490 THB'),
  Uniqlo('assets/images/Ultra Stretch Active Tapered Pants.jpg','Ultra Stretch Pants','Ultra Stretch fabric stretches in all directions for easy movement.','790 THB'),
  Uniqlo('assets/images/Slim Straight Jeans.jpg','Slim Straight Jeans','Natural whiskers and fading create a perfectly worn-in feel. Balances freedom of movement with a distinctive vintage feel.','1,290 THB'),
  ];
}