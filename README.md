# Todo Tracker

## Tugas 7
### Pertanyaan:
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    - Stateless Widget
        - Stateless Widget adalah widget yang tidak mengalami perubahan selama aplikasi berjalan (tidak mengubah state selama aplikasi berjalan)
        - Penampilan dan propertinya tidak berubah, sebagai contoh adalah Icon, IconButton, atau Text
        - Stateless Widget digunakan ketika UI yang ingin dibuat tidak perlu bergantung pada widget lain yang dapat menyebabkan perubahan
    - Stateful Widget
        - Stateful Widget adalah widget yang dapat mengubah perubahan selama aplikasi berjalan (penampilan atau properti dapat berubah)
        - Bersifat dinamis, sebagai contoh adalah CheckBox, RadioButton, Slider, atau TextField
        - Dapat merespon perubahan data atau terdapat interaksi dari pengguna

1. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    - ThemeData: mendefinisikan konfigurasi tampilan keseluruhan atau sebagian dari aplikasi seperti warna, gaya teks, atau parameter lainnya yang berlaku untuk komponen Material
    - MaterialApp: widget root dari sebuah aplikasi berbasis Flutter yang menyertakan sejumlah widget Material Design
    - Material: digunakan sebagai kanvas untuk render komponen UI yang mematuhi standar Material Design
    - Icon: untuk menampilkan ikon
    - Text: untuk menampilkan teks dalam bentuk string dengan gaya yang ditentukan
    - Column: untuk menampilkan child dalam tata letak secara vertikal
    - Center: untuk memposisikan child di tengah
    - Container: untuk menggabungkan satu atau lebih widget dan ditempatkan sesuai dengan kondisi yang sudah ditetapkan
    - InkWell: memberikan efek sentuhan pada child widget
    - AppBar: bar aplikasi Material Design yang biasanya digunakan sebagai bagian atas dari Scaffold
    - Padding: memberikan padding ke child widget
    - GridView.count: digunakan untuk menampilkan child dalam grid dengan jumlah kolom tetap
    - SingleChildScrollView: digunakan ketika ingin memastikan bahwa child widget dapat discroll
    - Scaffold: kerangka dasar visual Material Design untuk menyediakan struktur default kepada AppBar, Body, dll
    - SnackBar: untuk menampilkan pesan
    
1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
    - Pertama, saya buat direktori terlebih dahulu untuk meletakkan project flutternya
    - Setelah buat direktori, saya cd (nama direktori) dan membuat project flutter baru dengan kode dibawah ini
    ```
    flutter create (nama project)
    ``` 
    - Setelah itu, di root direktori saya git init untuk menginisialisasi git.
    - Kemudian, saya cd (nama project) dan membuat file baru bernama menu.dart di subdirektori bin dan melakukan modifikasi untuk menu.dart dan main.dart seperti pada tutorial.

## Tugas 8
### Pertanyaan:
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    - Navigator.push() digunakan untuk menavigasi suatu halaman ke halaman baru tanpa menghapus halaman sebelumnya dari stack navigasi. Sebelumnya, perlu diketahui bahwa sistem widget Navigator dari Flutter akan memanfaatkan Stack untuk berpindah halaman. Ketika ingin berpindah ke halaman baru, Navigator akan push halaman yang baru tersebut ke dalam Stack dan akan ditampilkan pada user. Jika user mengklik tombol kembali, maka user dapat kembali ke halaman sebelumnya. Contoh dari penggunaan Navigator.push() adalah ketika user mengklik halaman detail item, kemudian setelah selesai user dapat klik Back dan kembali ke halaman Home.
    - Navigator.pushReplacement() digunakan untuk menavigasi suatu halaman ke halaman baru dan menghapus halaman sebelumnya dari stack navigasi. Contoh dari penggunaan Navigator.pushReplacement() adalah ketika user sedang berada di halaman login dan berhasil sukses login, maka program akan menavigasi ke halaman utama. Tetapi, ketika user mengklik tombol kembali, maka user tidak dapat kembali ke halaman login tersebut karena sudah dihapus halamannya ketika Navigator.pushReplacement() dipanggil.

1. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    - Align
        - Widget ini digunakan untuk menyesuaikan posisi child widget dalam widget parentnya dan secara opsional menyesuaikan ukuran widget tersebut berdasarkan ukuran dari child widget.
    - AspectRatio
        - Widget ini digunakan untuk mengukur ukuran dari child widget sesuai dengan suatu ratio tertentu
    - Center
        - Widget ini digunakan untuk menyesuaikan posisi child widget di tengah widget parentnya. Jika center digunakan, maka child widget akan persis berada di tengah dari parentnya
    - Container
        - Widget ini digunakan untuk mengatur tata letak dan dekorasi widget lain. Container dapat dikatakan sebagai kotak persegi panjang yang dapat diberi hiasan menggunakan widget BoxDecoration.
    - Padding
        - Widget yang digunakan untuk memberikan padding kepada child widget. Ketika memberikan layout constrain dari parent ke child, padding akan mengecilkan constrain dari padding yang diberikan, sehingga child akan memiliki ukuran yang lebih kecil sesuai dengan constrainnya.
    - SizedBox
        - Widget ini digunakan untuk memberikan ukuran yang spesifik kepada child. Misalkan ada suatu child widget, maka widget SizedBox ini akan memaksa child widget untuk berukuran sesuai dengan ukuran SizedBox. 
    - Column
        - Widget ini digunakan untuk menyusun child widget secara vertikal. Jadi, per child widget akan disusun secara menurun.
    - GridView
        - Widget ini digunakan untuk menampilkan daftar grid yang terdiri atas pola sel-sel dalam tata letak vertikal dan horizontal. 
    - ListView
        - Widget ini adalah widget untuk scrolling yang paling umum digunakan. Widget ini akan menampilkan child widgets satu per satu dalam arah scroll secara linear.
    - Row
        - Widget ini digunakan untuk menyusun child widget secara horizontal. Jadi, per child widget akan disusun secara menyamping.
    - Stack
        - Widget ini digunakan untuk menumpuk beberapa widget satu diatas yang lain. Widget ini berguna untuk menimpa beberapa child widget, misalnya ingin menumpuk text diatas gambar.
    - SingleChildScrollView
        - Widget yang digunakan untuk menampilkan tepat satu child dalam bentuk scrollable. Widget ini berguna untuk memastikan apakah suatu box dapat discroll jika box container tersebut sudah menjadi terlalu kecil.

1. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    - Form
        - Form adalah sebuah wadah untuk mengelompokkan widget-widget yang berkaitan dengan form. Kita menggunakan Form sebagai penampung semua widget-widget yang berkaitan degan form seperti TextFormField
    - OutlineInputBorder
        - OutlineInputBorder digunakan untuk menghias dan mengatur tampilan field input text (pada tugas ini yaitu TextFormField). Namun, lebih spesifik, OutlineInputBorder digunakan untuk menghias tampilan outliner dari field input tersebut. Berbeda dengan InputDecoration yang bertugas untuk menghias bagian isi dari field input. Kita gunakan OutlineInputBorder untuk mendesign bentukan luaran dari field input.
    - InputDecoration
        - InputDecoration digunakan untuk menghias dan mengatur tampilan field input text (pada tugas ini yaitu TextFormField). Namun, lebih spesifik, InputDecoration dapat digunakan untuk memberikan placeholder kepada field input text.
    - TextFormField
        - TextFormField digunakan untuk meminta input dari pengguna kemudian input tersebut dapat divalidasi sehingga dapat mengecek apakah input yang diberikan oleh pengguna sudah valid atau belum valid.

1. Bagaimana penerapan clean architecture pada aplikasi Flutter?
    - Clean architecture adalah prinsip dalam software design yang berfokus pada separation of concerns dan bertujuan untuk menciptakan basis kode yang modular, terukur, dan dapat diuji. 
    - Dalam aplikasi Flutter, penerapan clean architecture dapat menjadi:
        - Presentation Layer (UI)
            - Layer ini berisikan kode-kode yang berkaitan dengan rendering User Interface, seperti widget, screen, dan tampilan. Misalnya, file dart pada tugas ini yang bertugas untuk mengembalikan tampilan adalah form.dart, drawer.dart (khusus drawer.dart hanya bertugas sebagai widget dan bukan keseluruhan layar) dan menu.dart (selain main.dart), maka form.dart dan menu.dart akan dimasukkan ke suatu folder baru bernama misalnya "UI" atau "screen".
        - Domain Layer
            - Layer ini berisikan kode-kode yang berkaitan dengan logic dan model data aplikasi Flutter yang dibuat. Misalnya untuk class Item yang berada di dalam menu.dart dapat dibuat menjadi sebuah file baru (kemudian untuk di menu.dart akan mengimport file class baru tersebut) dan dimasukkan ke folder baru bernama misalnya "model".
        - Data Layer
            - Layer ini berisikan kode-kode yang berkaitan dengan penerimaan data dan penyimpanan. Layer ini biasanya digunakan untuk melakukan manipulasi dan mengakses data. Data yang dimaksud dapat berupa remote API, database lokal, dll. 

1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
    - Pertama, saya buat dulu file baru bernama drawer.dart untuk menjadi left drawer dari program ini yang selalu ada di setiap page (termasuk menu.dart dan form.dart). Di drawer.dart ini akan memuat 2 tulisan yaitu Nama Program dan Deskripsi Program dan memuat 2 ListTile untuk navigasi, yaitu untuk Halaman Utama dan Tambah Item, di mana ListTile untuk halaman utama akan dinavigasi ke MyHomepage di menu.dart menggunakan Navigator.pushReplacement() sedangkan untuk Tambah Item akan dinavigasi ke FormPage di form.dart menggunakan Navigator.push().
    - Kemudian, saya buat form.dart untuk menampilkan halaman Tambah Item. Di FormPage ini akan ada 4 atribut yaitu formkey, nama todo, deadline, dan description. Kemudian, dibuat input textfield sebanyak 3 untuk masing-masing nama todo, deadline, dan description. Setiap textfield dilengkapi oleh validator sehingga jika terjadi ketidaksesuaian input maka validator akan bernilai true sehingga nanti ketika tombol save ditekan maka akan menampilkan output "Terdapat form yang tidak valid" menggunakan SnackBar. Jika tombol save ditekan dan input valid, maka akan menampilkan pop up yang berisikan detail dari item yang disimpan dan kemudian akan mereset semua field input menjadi kosong kembali.