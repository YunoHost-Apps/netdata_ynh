<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# NetData YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/netdata)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/netdata)

[![Instalatu NetData YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek NetData YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Paketatutako bertsioa:** 2.2.4~ynh1

**Demoa:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Ezaugarri zalantzagarriak

- **Jatorrizkoa ez da erabat librea**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://my-netdata.io>
- Administratzaileen dokumentazio ofiziala: <https://learn.netdata.cloud/docs>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/netdata/netdata>
- YunoHost Denda: <https://apps.yunohost.org/app/netdata>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
edo
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
