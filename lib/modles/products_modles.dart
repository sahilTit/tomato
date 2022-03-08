 class Product{
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModle> _products;

  Product({required totalSize,required typeId,required offset,required products}){
   this._totalSize=totalSize;
   this._typeId=typeId;
   this._offset=offset;
   this._products=products;
  }

  Product.fromjson(Map<String , dynamic> json){
    _totalSize = json['total_Size'];
    _typeId = json['type_Id'];
    _offset = json['offset'];
    if(json['Products'] != Null){
      _products = <ProductModle>[];
      json['products'].forEach((v){
        _products.add(ProductModle.fromJson(v));
      });
    }
  }
}

class ProductModle {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModle(
    {
      this.id,
      this.createdAt,
      this.description,
      this.img,
      this.location,
      this.name,
      this.price,
      this.stars,
      this.typeId,
      this.updatedAt});

  ProductModle.fromJson(Map<String,dynamic> json){
    id = json['id'];
    createdAt = json['createAt'];
    description = json['description'];
    img = json['img'];
    location = json['location'];
    name = json['name'];
    price = json['price'];
    stars = json['stars'];
    typeId = json['typeId'];
    updatedAt = json['updatedAt']; 
  }
}