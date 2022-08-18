# terraform-workspace-prompt

A prompt that displays the current Terraform workspace in your ZSH shell using oh-my-zsh.

You can read more about Oh-My-ZSH [here](https://ohmyz.sh/)

You can read more about Terraform workspaces [here](https://www.terraform.io/docs/state/workspaces.html).

## Installation

- Download the script.

```sh
wget -O ~/.terraform-workspace-prompt.sh https://raw.githubusercontent.com/jstrebeck/terraform-workspace-prompt/master/terraform-workspace-prompt.sh
```

- Add to the `~/.zshrc`

```sh
source $HOME/.terraform-workspace-prompt.sh
```

- Add the function to your ZSH theme promopt
```sh
sudo nano ~/.oh-my-zsh/themes/$ZSH_THEME.zsh-theme
```
### Use my ZSH theme
1. 
    ```sh
    cp miloshadzic-terraform.zsh-theme ~/.oh-my-zsh/themes/
    ```
1. 
    ```sh
    sudo nano ~/.zshrc
    ```
1. set `ZSH_THEME="miloshadzic-terraform"`
1.  
    ```sh
    exec zsh
    ```

### To add script to your own theme
If you dont like my theme you can easily add the function to any other theme.
1. Add the terraform_prompt function in the location you would like it in your shell prompt 
    ```sh
    sudo nano ~/.oh-my-zsh/themes/$ZSH_THEME.zsh-theme
    ```
    #### Example
    Before
    ```
    PROMPT=%{$fg[cyan]%}%1~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%   {$reset_color%} 
    ```
    ![before](https://i.imgur.com/KCa6l2M.png)

    After
    ```
    PROMPT=%{$fg[cyan]%}%1~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}%{$fg[magenta]%}$(terraform_prompt)%    {$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%} 
    ```
    ![After](https://i.imgur.com/WXl3gL3.png)

1.
    ```sh
    exec zsh
    ```
