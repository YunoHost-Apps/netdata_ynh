<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 NetData

[![集成程度](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![工作状态](https://apps.yunohost.org/badge/state/netdata)
![维护状态](https://apps.yunohost.org/badge/maintained/netdata)

[![使用 YunoHost 安装 NetData](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 NetData。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**分发版本：** 2.2.5~ynh1

**演示：** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: 负面特征

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## 文档与资源

- 官方应用网站： <http://my-netdata.io>
- 官方管理文档： <https://learn.netdata.cloud/docs>
- 上游应用代码库： <https://github.com/netdata/netdata>
- YunoHost 商店： <https://apps.yunohost.org/app/netdata>
- 报告 bug： <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
或
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
