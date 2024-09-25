<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# NetData untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/netdata.svg)](https://ci-apps.yunohost.org/ci/apps/netdata/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/netdata.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/netdata.maintain.svg)

[![Pasang NetData dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang NetData secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Versi terkirim:** 1.47.2~ynh1

**Demo:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Antifitur

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <http://my-netdata.io>
- Dokumentasi admin resmi: <https://learn.netdata.cloud/docs>
- Depot kode aplikasi hulu: <https://github.com/netdata/netdata>
- Gudang YunoHost: <https://apps.yunohost.org/app/netdata>
- Laporkan bug: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
atau
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
