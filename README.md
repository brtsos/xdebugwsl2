# PHPSTORM + XDEBUG (2/3) + WSL2 + DOCKER
Small example project to show how to configure xdebug (2 or 3) with WSL2 and Docker.  
**This solution works only if you use PhpStorm on WSL2 with X server!**

1. WSL2 change Linux IP every reboot time, so you should, add global variable (WSLIP) in your Linux system. Add content from .bashrc to your bashrc (~/.bashrc) or .zshrc.
2. Restart your terminal or use command ". ~/.bashrc" to reload your shell
3. Run docker build:
`
   docker-compose build --no-cache --force-rm --pull
`
4. Up docker composer:
`
   docker-compose up --force-recreate
`
5. If you wound use xdebug 3 instead 2 install at lest PhpStorm 2020.3 version and check
   `Additionally listen on Xdebug 3 default port 9003` in settings (Settings | Languages & Frameworks | PHP | Debug) or change default listening port from 9000 to 9003.
   
6. Add mapping in Servers setting (Settings | Languages & Frameworks | PHP | Servers):
- check "Use path mapping"
- Add mapping "src" => "/var/www/html"

7. Add breakpoint in src/index.php in line 6.
8. Turn Phpstorm debugging on - icon or (Run | Start Listening for PHP Debug Connections)
9. Run http://app_server/ and turn on Xdebug helper (https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc)
10. Accept connection in PhpStorm.
11. Enjoy!

## Xdebug v.2
Change Dockerfile. Comment Xdebug 3 setting lines adn uncomment Xdebug 2 setting lines. Start again from point 3.

## Troubleshooting
###PhpStorm doesn't see connection.  
1. Restart terminal.
2. Check Xdebug in PhpStorm Setting.
3. Disable a firewall and check again. If work, enable the firewall again, and add a rule to allow connection PhpStorm in your firewall.