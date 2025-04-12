# 📱 Hava Durumu Mobil Uygulaması

Flutter ile geliştirilen bu uygulama, kullanıcının konumuna göre güncel hava durumu bilgisini gösterir. Kullanıcıdan konum izni alır, bulunduğu şehre göre verileri CollectAPI üzerinden çeker ve şık bir arayüzle listeler.
![WhatsApp Image 2025-04-12 at 9 35 34 PM](https://github.com/user-attachments/assets/90b8082c-85c3-4f81-b88c-48cec8e43fdb)

---

## 🚀 Özellikler

- 📍 **Konum Tespiti:** Cihazın mevcut konumunu tespit eder.
- 🌤️ **Günlük Hava Durumu:** Günlük sıcaklık, gece-gündüz dereceleri ve hava durumu açıklamaları.
- 🖼️ **Duruma Özel İkonlar:** API’den gelen ikon bağlantılarını gösterir.
- 📋 **Liste Görünümü:** Şık tasarımlı kartlar halinde listeleme.

---

## 🛠️ Kullanılan Teknolojiler

- **Flutter**
- **Dart**
- **Dio** (HTTP istekleri için)
- **Geolocator** (Konum bilgisi almak için)
- **CollectAPI** (Hava durumu verisi kaynağı)

---

📌 Dikkat Edilmesi Gerekenler
Uygulama çalışırken cihazın konum servisleri açık olmalıdır.

Android cihazlar için AndroidManifest.xml içerisine aşağıdaki izinlerin eklenmiş olması gerekir:

<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>

collectapi.com üzerinden alınan API key .env gibi gizli tutulmalıdır. Bu örnekte doğrudan yazılmıştır (geliştirme amacıyla).
