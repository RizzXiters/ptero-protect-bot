# Ptero Protect Bot

Repo ini berisi script proteksi panel Pterodactyl untuk membatasi akses admin selain SUPER_ADMIN. Bisa dikontrol lewat **bot Telegram**.

---

## **Fitur**

1. Proteksi admin panel:
   - Semua admin selain SUPER_ADMIN dikunci.
   - Hanya SUPER_ADMIN yang bisa akses fitur penuh (start server, manage server, dll).
2. Bot Telegram support command:
   - `/gitclone ip|password` → Clone repo proteksi di VPS panel.
   - `/protect ip|password|id_panel` → Aktifkan proteksi untuk user panel.
   - `/unprotect ip|password|id_panel` → Nonaktifkan proteksi.
   - `/addid ip|password|id_panel` → Tambah SUPER_ADMIN.
   - `/delid ip|password|id_panel` → Hapus SUPER_ADMIN.
   - `/listid ip|password` → List semua SUPER_ADMIN.
   - `/set403 ip|password|text` → Ubah pesan 403 Forbidden untuk LimitedAdmin.

---

## **Struktur Folder**