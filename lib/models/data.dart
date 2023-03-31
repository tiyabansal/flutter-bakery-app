class Data {
  late String dessertName;
  late String dessertImage;

  late String dessertDescription;

  Data({
    required this.dessertName,
    required this.dessertImage,
    required this.dessertDescription,
  });
}

List<Data> datalist = [
  Data(
    dessertName: 'Blueberry Cheesecake',
    dessertImage: "https://img.freepik.com/free-photo/blueberry-cheese-cake_1203-3582.jpg?w=740&t=st=1680271460~exp=1680272060~hmac=bfa39185f0c983df72bfac9f9acae47ac167f3e4fa6d536f6b990b848cd39b47",
    dessertDescription:
        'Cheesecake is a sweet dessert consisting of one or more layers. The main, and thickest, layer consists of a mixture of soft, fresh cheese, eggs, and sugar; if there is a bottom layer it often consists of a crust or base made from crushed cookies (or digestive biscuits), graham crackers, pastry, or sometimes sponge cake.',
  ),
  Data(
    dessertName: 'Choco Lava Croissant',
    dessertImage: "https://img.freepik.com/free-photo/side-view-croissants-with-chocolate-white-plate-with-purple-flowers-background_176474-120128.jpg?w=740&t=st=1680271485~exp=1680272085~hmac=1c6484543fa15e44653f4a616647fe1b234305c9f47bfe1a0fb7d44870201798",
    dessertDescription:
        'A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, named for its well-known crescent shape. The croissant and its close relative, the pain au chocolat, are some of the most popular viennoiseries in the world.',
  ),
  Data(
    dessertName: 'Hazelnut Brownie',
    dessertImage: "https://img.freepik.com/free-photo/close-up-delicious-chocolate-cake-with-walnuts_23-2148622319.jpg?w=740&t=st=1680271510~exp=1680272110~hmac=1e130a34f92c631eed578402763e45b031d14d59cb9855d7402ebbd82955ac6f",
    dessertDescription:
        'A brownie is a square, baked, chocolate dessert. Brownies come in a variety of forms and may be either fudgy or cakey in texture, depending on their density. Brownies are sometimes topped with frosting or powdered sugar.',
  ),
  Data(
    dessertName: 'Hot Chocolate',
    dessertImage: "https://img.freepik.com/free-photo/cold-chocolate-cocktail-with-ice-cream_140725-940.jpg?w=740&t=st=1680271535~exp=1680272135~hmac=6f0729385b5627cae920086b5ecce61ce4454be0dd54d1f24e41d5dec154d53d",
    dessertDescription:
        'Hot chocolate is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and often a sweetener. Hot chocolate may be topped with whipped cream.',
  ),
  Data(
    dessertName: 'Caramel Macchiato',
    dessertImage: "https://lowcarbyum.com/wp-content/uploads/2022/07/keto-caramel-macchiato-sq.jpg",
    dessertDescription:
        'Caramel macchiato is a coffee drink made with espresso, steamed milk, and a caramel-flavored syrup. It is topped with a layer of foam. The drink is served in a tall glass with a handle.',
  ),
  Data(
    dessertName: 'Tiramisu Jar',
    dessertImage: "https://img.freepik.com/free-photo/vertical-closeup-ice-cream-small-glass-jar_181624-59520.jpg?w=740&t=st=1680271581~exp=1680272181~hmac=aef43c060a7e1e1dd9ed23eefcffae02e0690525f49d78cde3ccf9891bc7ba74",
    dessertDescription:
        'Ti·ra·mi·su is an Italian dessert. It is made of ladyfingers dipped in coffee, layered with a whipped mixture of eggs, sugar, and mascarpone cheese, flavoured with cocoa.',
  ),
];
