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
      ProductList('Taladro electrico', 'images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Martillo electrico', 'images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Pulidora', 'images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Caladora', 'images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Hombre solo', 'images/urrea-img5.jpg', 'Herramienta electrica'),
      ProductList('Alicate', 'images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Prensa', 'images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Llaves', 'images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Remachadora', 'images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Destornillador', 'images/urrea-img5.jpg', 'Herramienta electrica'),
      ProductList('Calibradores', 'images/taladro-img1.jpg', 'Herramienta electrica'),
      ProductList('Hidrometro', 'images/martillo-img2.jpg', 'Herramienta electrica'),
      ProductList('Lima en cruz', 'images/martillodemoledor-img3.jpg', 'Herramienta electrica'),
      ProductList('Aceitera', 'images/taladro-img4.jpg', 'Herramienta electrica'),
      ProductList('Tornillos cortos', 'images/urrea-img5.jpg', 'Herramienta electrica'),
    ];
  }  
}

 
