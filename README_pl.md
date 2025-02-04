<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# NetData dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![Status działania](https://apps.yunohost.org/badge/state/netdata)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/netdata)

[![Zainstaluj NetData z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację NetData na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Dostarczona wersja:** 2.2.4~ynh1

**Demo:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Niepożądane funkcje

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <http://my-netdata.io>
- Oficjalna dokumentacja dla administratora: <https://learn.netdata.cloud/docs>
- Repozytorium z kodem źródłowym: <https://github.com/netdata/netdata>
- Sklep YunoHost: <https://apps.yunohost.org/app/netdata>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
lub
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
