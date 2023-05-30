import '../model/product.dart';

class ProductsManager {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Hoa Tulip',
      description:
          'Hoa tulip hay còn biết đến nhiều với tên gọi là uất kim hương, có tên khoa học là Tulipa, là một chi thực vật có hoa trong họ Liliaceae. Hoa tulip có nguồn gốc từ vùng Trung Đông, hiện nay được trồng ở khắp nơi trên thế giới. ',
      price: 11.02,
      imageUrl:
          'https://salt.tikicdn.com/cache/w1200/ts/product/f3/81/f2/404dda53af071b8e81648287e1cfeffe.jpg',
      isFavorite: true,
      quantity: 1,
    ),
    Product(
      id: 'p2',
      title: 'Hoa Lan',
      description:
          'Hoa lan biểu trưng cho tình yêu son sắt, thủy chung, khi ai đó dành tặng cho bạn một bó hoa lan tươi thắm thì có nghĩa họ đang biểu đạt tình cảm dạt dào, chân thành cho bạn. Loài hoa này như một lời khen dành tặng cho người yêu về trí tuệ thông minh, tấm lòng thiện lương.',
      price: 15.02,
      imageUrl: 'https://hoatuoithanhthao.com/media/ftp/hoa-lan-5.jpg',
      quantity: 1,
    ),
    Product(
      id: 'p3',
      title: 'Hoa Ly ',
      description:
          'Hoa Ly hay còn được gọi là “Lily” từ lâu đã được mệnh danh là một loài hoa quý phái và thanh cao. Loài hoa này mang nét đẹp đơn giản, mộc mạc nhưng lại lôi cuốn ánh mắt người nhìn. Hơn nữa, hoa ly còn mang trong mình nhiều ý nghĩa biểu tượng độc đáo khác nhau.',
      price: 22.11,
      imageUrl:
          'https://iuhoa.com/wp-content/uploads/2020/11/ly-trong-vuon.jpg',
      quantity: 1,
    ),
    Product(
      id: 'p4',
      title: 'Hoa Loa Kèn',
      description: '',
      price: 8.32,
      imageUrl:
          'https://api.ajumagarden.com/Upload/MATERIAL_EXT_4_WEBSITE/2418_Files_0/Compress/Ajuma_hoa-loa-ken-chum_20220301140538808.jpg',
      quantity: 1,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}
