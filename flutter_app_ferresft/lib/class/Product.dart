class ProductList {
  final String name;
  final String image;
  final String category;

  ProductList(
    this.name,
    this.image,
    this.category
  );

  static List<ProductList> productList() {
    return [
      ProductList('Taladro electrico', 'assets/images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Martillo electrico', 'assets/images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Pulidora', 'assets/images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Caladora', 'assets/images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Hombre solo', 'assets/images/urrea-img5.jpg', 'Herramienta electrica'),
      ProductList('Alicate', 'assets/images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Prensa', 'assets/images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Llaves', 'assets/images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Remachadora', 'assets/images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Destornillador', 'assets/images/urrea-img5.jpg', 'Herramienta electrica'),
      ProductList('Calibradores', 'assets/images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Hidrometro', 'assets/images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Lima en cruz', 'assets/images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Aceitera', 'assets/images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Tornillos cortos', 'assets/images/urrea-img5.jpg', 'Herramienta electrica'),
    ];
  }  
}

 
