<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# NetData pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/netdata.svg)](https://ci-apps.yunohost.org/ci/apps/netdata/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/netdata.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/netdata.maintain.svg)

[![Installer NetData avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer NetData rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Version incluse :** 2.0.3~ynh1

**Démo :** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Anti-fonctionnalités

- **Application sous licence libre restreinte **: Netdata inclut maintenant une dépendance à une interface utilisateur qui est sous une licence bizarre qui interdit la rétro-ingénierie ou la personnalisation. Voir : https://github.com/YunoHost/apps/pull/2519

## Documentations et ressources

- Site officiel de l’app : <http://my-netdata.io>
- Documentation officielle de l’admin : <https://learn.netdata.cloud/docs>
- Dépôt de code officiel de l’app : <https://github.com/netdata/netdata>
- YunoHost Store : <https://apps.yunohost.org/app/netdata>
- Signaler un bug : <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
ou
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
