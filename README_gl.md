<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# NetData para YunoHost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![Estado de funcionamento](https://apps.yunohost.org/badge/state/netdata)
![Estado de mantemento](https://apps.yunohost.org/badge/maintained/netdata)

[![Instalar NetData con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar NetData de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Versión proporcionada:** 2.3.1~ynh1

**Demo:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Debes considerar

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Documentación e recursos

- Web oficial da app: <http://my-netdata.io>
- Documentación oficial para admin: <https://learn.netdata.cloud/docs>
- Repositorio de orixe do código: <https://github.com/netdata/netdata>
- Tenda YunoHost: <https://apps.yunohost.org/app/netdata>
- Informar dun problema: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
ou
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
