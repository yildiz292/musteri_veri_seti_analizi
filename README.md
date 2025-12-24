- Bu projede bir e-ticaret veritabanı üzerinde satış performansı, müşteri davranışları, ciro analizi, ürün kârlılığı ve iş riskleri SQL kullanılarak analiz edilmiştir.


# Kullanılan Tablolar

customers: müşteri bilgileri (isim, şehir)

orders: sipariş bilgileri (tarih, adet, durum)

products: ürün bilgileri (kategori, fiyat)

# Yapılan Analizler
Kategori Bazlı Toplam Ciro

Her ürün kategorisinin toplam satış tutarı hesaplanmıştır. Böylece şirket gelirinin hangi kategorilerden geldiği netleştirilmiştir.

Kategori Bazlı Sipariş ve İptal Analizi

Her kategori için toplam sipariş sayısı ve iptal edilen sipariş sayısı hesaplanmıştır. Operasyonel sorun yaşanabilecek kategoriler tespit edilmiştir.

Kategoriye Göre En Pahalı Ürün

Window function kullanılarak her kategorideki en yüksek fiyatlı ürün belirlenmiştir. Premium ürün analizi yapılmıştır.

Tek Seferlik Müşteriler (Churn Riski)

Sadece bir kez sipariş veren müşteriler tespit edilmiştir. Şehir bazlı dağılımlar incelenmiş ve tekrar satın alma potansiyeli değerlendirilmiştir.

Elektronik Kategorisindeki En Pahalı Üç Ürün

Elektronik kategorisinde yer alan en yüksek fiyatlı üç ürün belirlenmiştir. Stok ve sermaye riski açısından değerlendirme yapılmıştır.

Şehirlere Göre Sipariş Yoğunluğu

Hangi şehirden ne kadar sipariş geldiği analiz edilmiştir. Hacim odaklı ve değer odaklı şehirler ayrıştırılmıştır.

Şehirlere Göre Toplam Ciro

Sipariş adedi ile toplam ciro arasındaki fark ortaya konmuştur. Az siparişin her zaman az gelir anlamına gelmediği gösterilmiştir.

Aylara Göre Satış Yoğunluğu

Aylık sipariş adetleri analiz edilmiştir. Satışların yılın son aylarında yoğunlaştığı gözlemlenmiştir.

Hiç Sipariş Vermemiş Müşteriler

Sistemde kayıtlı olup hiç sipariş vermemiş müşteriler tespit edilmiştir. Veri temizliği ve pazarlama çalışmaları için önemli bir analizdir.

Son Altı Ayda Sipariş Vermemiş Müşteriler

Uzun süredir aktif olmayan müşteriler belirlenerek müşteri kaybı (churn) analizi yapılmıştır.

VIP Müşteriler

Toplam harcaması yüksek olup uzun süredir sipariş vermeyen müşteriler tespit edilmiştir. Yüksek değerli müşteri kaybı riski analiz edilmiştir.

Satılıp Ciro Getirmeyen Ürünler

Satış adedi yüksek olmasına rağmen düşük gelir getiren ürünler belirlenmiştir. Kârlılık problemi olan ürünler ortaya çıkarılmıştır.

Sadık Müşterilerin Toplam Cirodaki Payı

İkiden fazla sipariş veren müşterilerin toplam ciro içindeki payı hesaplanmıştır. Sadık müşterilerin şirket gelirindeki önemi gösterilmiştir.

Ortalama Fiyatın Üzerinde Olup Satış Adedi Düşük Olan Ürünler

Ortalama fiyatın üzerinde olmasına rağmen düşük satış adedine sahip ürünler tespit edilmiştir. Stokta bekleyen pahalı ürünlerin yarattığı finansal risk analiz edilmiştir.

En Çok Ciro Getiren İlk Üç Müşteri Kaybedilirse Oluşacak Kayıp

En yüksek ciroyu oluşturan ilk üç müşteri kaybedildiğinde toplam cironun ne kadar düşeceği hesaplanmıştır. Şirketin belirli müşterilere olan bağımlılığı ortaya konmuştur.

# Kullanılan SQL Teknikleri

INNER JOIN, LEFT JOIN

GROUP BY, HAVING

CASE WHEN

CTE (WITH)

Window Functions

Tarih fonksiyonları

İş odaklı metrik ve KPI hesaplamaları

