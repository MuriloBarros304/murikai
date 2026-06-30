<div align="center" style="background-color: #000000; padding: 40px 20px; border-radius: 8px; margin-bottom: 20px;">
    <h1 style="font-family: 'Courier New', Consolas, monospace; font-size: 6rem; font-weight: 1100; margin: 0; letter-spacing: 8px;">
        <span style="color: #f92672;">M</span>
        <span style="color: #fc971f;">U</span>
        <span style="color: #ffd700;">R</span>
        <span style="color: #a6e22e;">I</span>
        <span style="color: #66d9ef;">K</span>
        <span style="color: #8462c2;">A</span>
        <span style="color: #179fff;">I</span>
    </h1>
    <p style="color: #e6db74; font-family: Consolas, monospace; font-size: 1.1rem; margin-top: 10px; font-style: italic;">
        Uma versão personalizada do Monokai.
    </p>
</div>
<br>
<br>

Um tema moderno, modular e desenvolvido inteiramente em Lua puro para o Neovim baseado no Monokai, oferecendo uma experiência visual minimalista de alto contraste com fundo puramente preto (`#000000`) e realces vibrantes.

![Murikai Screenshot](media/screenshot.png)

## Instalação e Configuração
### 1. Utilizando o Lazy.nvim
Para testar ou instalar diretamente em sua configuração do LazyVim, adicione o seguinte spec de plugin (geralmente em lua/plugins/theme.lua ou similar):


```lua
return {
  {
    "MuriloBarros304/murikai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme murikai")
    end,
  }
}
```

### 2. Ativando o Tema no Lualine
Para garantir que a barra inferior combine perfeitamente com o tema, configure o Lualine para utilizar o profile do Murikai:

```lua
return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "murikai",
    },
  },
}
```
