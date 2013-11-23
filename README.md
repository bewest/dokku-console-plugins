
# dokku-console - plugins for dokku

Some docker/console related plugins for dokku.

```bash
$ dokku help
    console <app>          # tail -f the live app console
    console:rebuild <app>  # force rebuild of buildpack
    help            Print the list of commands
    list:all               # list mapping of apps, containers, commit
    list                   # list all apps
    logs <app>      Show the last logs for an application
    plugins-install Install active plugins
    plugins         Print active plugins
    prompt <app>           # live prompt in your app's container
    version                # commit hash of deployed app

```

### basic helpers

## `list:all`
Provide mapping of deployed apps to docker containers to commit hash.
```bash
$ dokku list:all
app container revision
anemone.tidepool.io f8589082afbe 390f9b06d396df9bc2786e38be855582ed2c975a
blip-bewest.tidepool.io 1029dda65321 74563f16bf977f02e120d11a88498b68c268b246
blip-data-api 6dd093f9773e da6c7ee3301c71f8bfe47ab3b0aa9dadc1289903
blip-data-api.bewest 27189567538c 4a2da0766bf601a817dfa99dc663e9efee82aeda
blip-devel.tidepool.io 2cd2b552b475 df17411420c9df8a434e0f49aed0960243917684
blip-mvp.tidepool.io bdac90ac5507 1d1ffe2875693aa4609baa31ceca4b8f1cca85d0
data-bip-devel 9fa9163298a5 4a2da0766bf601a817dfa99dc663e9efee82aeda
data-blip-devel.tidepool.io 2928b8eb46ab 2012ac20fda470340f790035d98a638faf307519
data-blip-mvp 0c2811ce6e3e 8e1c48b89643a36cd10e5fce11586ac1e9b6e8c9
data-blip-mvp.tidepool.io 55939f8ede03 f24b73b1a725d30407b8231b580be517982f9662
reef.tidepool.io 76e4d1079570 355c3eaad385a794b2b055e652e842b82f64a13c
starfish-api.tidepool.io 92019ba8c9ab 9e538f3e931c3dc66f75d41934cfd1177740a1d5
starfish.tidepool.io ce8e8f1fe2e9 ba1bc0c1d296ad1b48182432e359f05c5994c3c2
static-blip 5a85d461a3d8 ba1bc0c1d296ad1b48182432e359f05c5994c3c2
test-devenv 280e2f0df525 242976c5755bff539fee920408299dbaa36c6d36
test-devenv.tidepool.io ced489424328 7cc9c8e7856d6cff65d33c9df1e97c8695a4d001
```

## `console`
Attach to a docker container's console, eg view live logs.
```bash
$ dokku console <app>
$ dokku console reef.tidepool.io
console for 76e4d1079570 (reef.tidepool.io)
request /
new page http://static-blip.dev.tidepool.io/
request /
new page http://static-blip.dev.tidepool.io/
request /status
new page http://static-blip.dev.tidepool.io/status
request /api/status
new page https://data-blip-devel.tidepool.io/status
^Cbewest@dev:~/src/dokku-console$ 

```

