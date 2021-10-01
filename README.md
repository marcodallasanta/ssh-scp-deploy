<p align="center">
  <img src="resources/logo.png">
</p>

<p align="center">
  <a href="https://docs.github.com/en/actions/creating-actions/about-actions#types-of-actions"><img alt="Action type" src="https://img.shields.io/badge/Docker%20action-262b31?logo=docker&logoColor=2496ed"></a>
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/github/license/marcodallasanta/ssh-scp-deploy"></a>
  <a href="https://github.com/marcodallasanta/ssh-scp-deploy/actions?query=workflow%3ATest"><img alt="Pipeline status" src="https://github.com/marcodallasanta/ssh-scp-deploy/workflows/Test/badge.svg"></a>
</p>

# ssh-scp-deploy

## ❔ Why should I use this action?

Because this action provide an easy and higly customizable way to upload files via scp and execute a set of command via ssh before or/and after.  
I use this action to deploy my personal projects to remote server, restarting the needed services or to do a simple upload via scp.

## 🏃 Supported runners
[![Supported runner](https://img.shields.io/badge/Linux-262b31?style=for-the-badge&logo=linux&logoColor=fcc624)](https://docs.github.com/en/actions/creating-actions/about-actions#docker-container-actions)


## 👤 Author

**Marco Dalla Santa**

* Twitter: [@marcodallasanta](https://twitter.com/marcodallasanta)
* Github: [@marcodallasanta](https://github.com/marcodallasanta)
* LinkedIn: [@marcodallasanta](https://linkedin.com/in/marcodallasanta)
* StackOverflow: [@marcodallasanta](https://stackoverflow.com/story/marcodallasanta)


## ⚙️ Usage
```yaml
    - uses: mdallasanta/ssh-scp-deploy@{version}
      with:
        local: './'                                                  # Local file path - REQUIRED false - DEFAULT ./
        remote: '~/'                                                 # Remote file path - REQUIRED false - DEFAULT ~/
        host: ${{secrets.HOST}}                                      # Remote server address - REQUIRED true
        port: ${{secrets.PORT}}                                      # Remote server port - REQUIRED false - DEFAULT 22
        user: ${{secrets.USER}}                                      # Remote server user - REQUIRED true
        password: ${{secrets.PASSWORD}}                              # User password - REQUIRED at least one of "password" or "key" 
        key: ${{secrets.KEY}}                                        # Remote server private key - REQUIRED at least one of "password" or "key" 
        pre_upload: echo "This will be executed before the upload!"  # Command to run via ssh before scp upload - REQUIRED false
        post_upload: echo "This will be executed after the upload!"  # Command to run via ssh after scp upload - REQUIRED false
        ssh_options: -o StrictHostKeyChecking=no                     # A set of ssh_option separated by -o - REQUIRED false - DEFAULT -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null
        scp_options: -v                                              # Flags to use during scp - REQUIRED false - DEFAULT ''
```

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page](https://github.com/mdallasanta/ssh-scp-deploy/issues).

## 🙏 Thanks

Thanks to:

- [Raphaël Bussa](https://github.com/raphaelbussa) for help in testing.
- [jamesremuscat](https://github.com/jamesremuscat) for resolving [issue#15](https://github.com/marcodallasanta/ssh-scp-deploy/issues/15)


## 📝 License

Copyright © 2020-2021 [Marco Dalla Santa](https://github.com/marcodallasanta)

The source code, scripts and documentation in this project are released under the [MIT License](LICENSE)