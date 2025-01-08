<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# NetData para Yunohost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![Estado funcional](https://apps.yunohost.org/badge/state/netdata)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/netdata)

[![Instalar NetData con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarNetData rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Versión actual:** 2.1.1~ynh1

**Demo:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Características no deseables

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Documentaciones y recursos

- Sitio web oficial: <http://my-netdata.io>
- Documentación administrador oficial: <https://learn.netdata.cloud/docs>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/netdata/netdata>
- Catálogo YunoHost: <https://apps.yunohost.org/app/netdata>
- Reportar un error: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
o
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
