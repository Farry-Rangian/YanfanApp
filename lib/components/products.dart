import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yanfan/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

var product_list = [
  {
    "name": "Sensi",
    "picture": "images/product/mask1.png",
    "old_price": "Rp. 125,000",
    "price": "Rp. 119,500",
    "desc": "1 pack isi 50 pcs ,Terbuat dari bahan yang berkualitas dan aman sesuai standar kesehatan. Dengan desain duckbill yang nyaman saat digunakan. Melindungi dari debu , virus & penyebab penyakit. ",
  },
  {
    "name": "Mask KN95",
    "picture": "images/product/mask2.png",
    "old_price": "Rp. 10,000",
    "price": "Rp. 3,000",
    "desc": "-	Anti virus, Lapisan filter karbon aktif N95. Proteksi superior atas mikropartikel udara PM 2.5 mm, Mudah bernafas, sirkulasi udara lebih baik karena dilengkapi 1 buah katup udara (single-valve), dan material bahan yang nyaman., Masker Semi-Disposable, penggunaan efektif 2-5 hari tergantung pemakaian (Masker tidak dapat dicuci).",
  },
  {
    "name": "Mask EVO",
    "picture": "images/product/mask3.png",
    "old_price": "Rp. 15,000",
    "price": "Rp. 12,000",
    "desc": "Design 4D sehingga membuat pemakaian nyaman dan karet yang lembut. Dibuat dari 3 lapis (3 ply) bahan non woven yang dilengkapi dengan bahan filter bakteri pada lapisan kedua, ditambah inovasi desain bentuk yang disempurnakan, membuat masker ini dapat mengoptimalkan fungsi dan manfaatnya untuk menjaga kesehatan serta melindungi dari cairan, bakteri, kuman penyakit dan partikel mikro lainnya, tanpa mengurangi kenyamanan pada saat menggunakannya.",
  },
  {
    "name": "Face Shield",
    "picture": "images/product/fs1.png",
    "old_price": "Rp. 20.000",
    "price": "Rp. 15,000",
    "desc": "Dapat dicuci, Ringan, Anti percikan, Bahan ramah lingkungan",
  },
  {
    "name": "Face Shild",
    "picture": "images/product/fs2.png",
    "old_price": "Rp. 20.000",
    "price": "Rp. 16,000",
    "desc": "Dapat dicuci, Ringan, Anti percikan, Bahan ramah lingkungan",
  },
  {
    "name": "Face Sheld",
    "picture": "images/product/fs3.png",
    "old_price": "Rp. 20.000",
    "price": "Rp. 17,000",
    "desc": "Dapat dicuci, Ringan, Anti percikan, Bahan ramah lingkungan",
  },
  {
    "name": "Hazmat",
    "picture": "images/product/apd1.png",
    "old_price": "Rp. 120,000",
    "price": "Rp. 99,000",
    "desc": "Kualitas Premium, Anti air",
  },
  {
    "name": "Cozmeed",
    "picture": "images/product/apd2.png",
    "old_price": "Rp. 160,000",
    "price": "Rp. 140,000",
    "desc": "Dengan pembuatan yg sangat teliti setiap detailnya sehingga tidak bocor, lentur, dengan mengoptimalkan kwalitan serta mutu tinggi dan membuat pemakai menjadi nyaman.",
  },
  {
    "name": "Tyfek",
    "picture": "images/product/apd3.png",
    "old_price": "Rp. 350,000",
    "price": "Rp. 322,000",
    "desc": "Keseimbangan dalam perlindungan, daya tahan & kenyamanan, Membantu memberikan perlindungan dasar terhadap debu dan percikan cairan ringan, Perlindungan Maximal terhadap bahaya partikel kering, aerosol, dan percikan kimia cairan",
  },
  {
    "name": "Antis",
    "picture": "images/product/hs1.png",
    "old_price": "Rp. 15,000",
    "price": "Rp. 13,800",
    "desc": "Praktis, Tidak lengket, TIdak tersisa, bisa langsung makan, Dengan moisturizer atau pelembab, Tidak kering ditangan",
  },
  {
    "name": "Mandom",
    "picture": "images/product/hs2.png",
    "old_price": "Rp. 15,000",
    "price": "Rp. 11,500",
    "desc": "Efektif membunuh kuman dan bakteri, Cepat kering dan mudah meresa, Tidak berbau, Menyejukkan",
  },
  {
    "name": "Nuvo",
    "picture": "images/product/hs3.png",
    "old_price": "Rp. 10,000",
    "price": "Rp. 5,500",
    "desc": "Cepat kering, membunuh virus 99%",
  },
  {
    "name": "Sensi Latex",
    "picture": "images/product/g1.png",
    "old_price": "Rp. 90,900",
    "price": "Rp. 78,900",
    "desc": "Rp.78,900/box isi 60 pcs, dibuat dari bahan latex yang berkualitas tinggi.,Tingkat elastisitas yang optimal dan tidak mudah robek,Bentuk yang mudah untuk digunakan.",
  },
  {
    "name": "Nitrile",
    "picture": "images/product/g2.png",
    "old_price": "Rp. 230,900",
    "price": "Rp. 205,500",
    "desc": "Rp. 205.500/box isi 100pcs,-	Sarung tangan medis,Bahan nitril,Nyaman dipakai,Tidak mudah robek",
  },
  {
    "name": "Surgi Care",
    "picture": "images/product/g3.png",
    "old_price": "Rp. 230,900",
    "price": "Rp. 205,500",
    "desc": "Rp. 205.500/box isi 100pcs, Sarung tangan medis, Elastis, Nyaman dipakai",
  },
  {
    "name": "Wastafel",
    "picture": "images/product/tct1.png",
    "old_price": "Rp. 350,000",
    "price": "Rp. 300,000",
    "desc": "Toren air 350 liter, Tempat sabun, Tempat Tisu, Keran air, Rangka besi 45mm, tebal 3mm",
  },
  {
    "name": "Dafacart",
    "picture": "images/product/tct2.png",
    "old_price": "Rp. 300,000",
    "price": "Rp. 250,000",
    "desc": "Untuk mengidupkan keran dan mengambil sabun dapat menggunakan kaki agar mengurangi kontak tangan",
  },
  {
    "name": "GM",
    "picture": "images/product/tct3.png",
    "old_price": "Rp. 350,000",
    "price": "Rp. 300,000",
    "desc": "Toren air 250 liter, Tempat sabun, Tempat Tisu, Keran air, untuk mengidupkan keran dan mengambil sabun dapat menggunakan kaki agar mengurangi kontak tangan",
  },
];
class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (BuildContext, int index){
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
          prod_desc: product_list[index]['desc'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_desc;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_desc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=>
                  Navigator.of(context).push(new  MaterialPageRoute(
                    //here we are passing the values of the product details page
                      builder: (context) => new ProductDetails(
                        product_details_name: prod_name,
                        product_details_new_price: prod_price,
                        product_details_old_price: prod_old_price,
                        product_details_picture: prod_picture,
                        product_details_desc: prod_desc,
                      ))),

              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text("$prod_price", style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13),
                      ),
                      subtitle: Text("$prod_old_price", style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w800, fontSize: 13 ,decoration
                          :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(prod_picture,
                    fit: BoxFit.cover,)
              ),
            ),
          ),)
    );
  }
}