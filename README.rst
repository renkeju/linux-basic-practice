.. _Sphinx Configuration: https://www.sphinx-doc.org/en/master/usage/configuration.html
.. _Travis CI: https://github.com/marketplace/travis-ci
.. _Github Settings Tokens: https://github.com/settings/tokens

.. image:: https://travis-ci.com/renkeju/sphinx-template.svg?branch=master
    :target: https://travis-ci.com/renkeju/sphinx-template

------------------
项目结构
------------------

1. 克隆模版并去掉模版中的历史记录

  .. code-block:: bash

    git clone https://github.com/renkeju/gitbook-template l2tp-usage-guide
    cd l2tp-usage-guide && rm -rf .git

2. 修改模版

  * .travis.yml

    * recipients: 修改为你个人邮件地址
    * REF: 修改为你的 github 项目地址

  * source/conf.py

    修改 sphinx 相应配置，可以参考此文档 `Sphinx Configuration`_ 配置文件

  * CNAME

    如果你不需要指定自己使用的域名，可以删除这个文件。

    如果需要请在 DNS 服务供应商中使用 CNAME 方式将 gitbook.renkeju.com 指向 renkeju.github.com

3. 在 github 上创建新项目

  比如我对新仓库命名为 l2tp-usage-guide

  .. image:: _images/create_a_new_repository.png

  把修改好的模版 push 到新的仓库

  .. code-block:: bash

    echo "# l2tp-usage-guide" > README.md
    git init
    git add .
    git commit -m "first commit"
    git remote add origin git@github.com:renkeju/l2tp-usage-guide.git
    git push -u origin master

Github Pages
-----------------

1. 新建 gh-pages 分支:

  .. code-block:: bash

    git checkout -b gh-pages
    git push origin gh-pages

2. 在项目 Settings -> GitHub Pages 开启 Github Pages 服务:

  .. image:: _images/github_pages_settings.png

Travis CI
--------------

1. 给刚刚在 github 上创建的项目 l2tp-usage-guide 开启 `Travis CI`_ 服务：

  .. image:: _images/travis_ci_repositories.png

2. 在 `Github Settings Tokens`_ 里申请 token 让 Travis 有权修改这个项目：

  .. image:: _images/github_presonal_access_tokens_scopes.png

3. 然后选择 repo，点击生成按钮:

  .. image:: _images/github_presonal_access_tokens.png

4. 复制生成的 token，填写在 Travis 的设置-全局变量中，并且取名为 TOKEN:

  .. image:: _images/Travis_CI_Token.png

