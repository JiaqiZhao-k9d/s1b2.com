# s1b2.com — GitHub Pages 用于对外链接页面与百度推送

说明：
- index.html：对外静态链接页面（已提交）。
- CNAME：自定义域名（www.s1b2.com）。
- sitemap.xml、robots.txt：用于搜索引擎抓取与站长提交。
- urls.txt：用于百度主动推送（每行一个 URL）。
- push_baidu.sh：示例脚本，替换 token 后执行。

如何启用 GitHub Pages：
1. 在仓库 Settings → Pages 中选择 main 分支并保存（或 /docs），启用 Pages。
2. 在 DNS 中添加 CNAME 记录：主机名 www 指向 `JiaqiZhao-k9d.github.io`（或按你的 DNS 提供商说明）。
3. 在 Settings → Pages 中确认自定义域名为 www.s1b2.com，并勾选 Enforce HTTPS（如果可用）。

在百度站长提交与推送：
1. 登录百度搜索资源平台，添加站点 https://www.s1b2.com 并进行验证（推荐 DNS TXT 或 HTML 文件验证）。
2. 提交 sitemap：站点 → 网站地图，填写 https://www.s1b2.com/sitemap.xml。
3. 在站点设置中获取主动推送 Token，替换 push_baidu.sh 中的 TOKEN。
4. 运行：bash push_baidu.sh

提示与建议：
- 保持页面内容有一定原创描述，避免大量空链接或只做“链接农场”。
- 使用站内整理、内部互链有利于爬虫发现。
