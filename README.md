# ssh-scp-deploy

[![Action type](https://img.shields.io/badge/Docker%20action-262b31?logo=docker&logoColor=2496ed)](https://docs.github.com/en/actions/creating-actions/about-actions#types-of-actions)
[![License](https://img.shields.io/github/license/mdallasanta/ssh-scp-deploy)](LICENSE)
[![Pipeline status](https://img.shields.io/github/workflow/status/mdallasanta/ssh-scp-deploy/Test?label=test)](./)

## ❔ Why should I use this action?

Because this action provide an easy and higly customizable way to upload files via scp and execute a set of command via ssh before or/and after.  
I use this action in my personal project to deploy an application to a remote server or to upload a file via scp.

## 🏃 Supported runners
[![Supported runner](https://img.shields.io/badge/Linux-262b31?style=for-the-badge&logo=linux&logoColor=fcc624)](https://docs.github.com/en/actions/creating-actions/about-actions#docker-container-actions)


## 👤 Author

**Marco Dalla Santa**

* Twitter: [@marcodallasanta](https://twitter.com/Marco16032098)
* Github: [@marcodallasanta](https://github.com/mdallasanta)
* LinkedIn: [@marcodallasanta](https://www.linkedin.com/in/marco-dalla-santa-72bb4015a/)


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

Thanks to [Raphaël Bussa](https://github.com/raphaelbussa) that helped in testing.

## 📝 License

Copyright © 2020 [Marco Dalla Santa]()

The source code, scripts and documentation in this project are released under the [MIT License](LICENSE)