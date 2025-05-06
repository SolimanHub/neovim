# Configuracion base de Neovim

David Soliman

## Instalar dependencias del sistema

```bash
# JavaScript/TypeScript
npm install -g typescript typescript-language-server

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Go
go install golang.org/x/tools/gopls@latest
```

## Lenguajes full-stack base
```bash
sudo pacman -S lua-language-server clang python-pylsp php-inteliphense nodejs-typescript-language-server

# Herramientas adicionales
sudo pacman -S shellcheck bash-language-server yamllint

# Para lenguajes no incluidos en repositorios oficiales
yay -S texlab ruby-solargraph gopls

sudo pacman -S npm && sudo npm i -g typescript

sudo pacman -S ruby && gem install solargraph

yay -S lua-language-server-git haskell-language-server
```

## Instalacion con Mason

```bash
:MasonInstall html-lsp css-lsq tsserver emmet-ls dockerfile-language-server
```

## Atajos de teclado principales

| Modo | Atajo           | Descripción                                  |
|------|-----------------|----------------------------------------------|
| **Insertar**                                                                 |
| `i`  | `jk`            | Salir del modo inserción[^keymaps]            |
| `i`  | `{`/`(`/`[`    | Insertar pares de caracteres y posicionar cursor[^keymaps] |
| `i`  | `\"`/`\'`       | Insertar comillas y posicionar cursor[^keymaps] |
| `i`  | `n\``           | Insertar caracter ñ[^keymaps]                 |
| `i`  | `<C-Space>`     | Activar completado[^keymaps][^cmp]            |
| `i`  | `<C-e>`         | Cerrar ventana de completado[^keymaps]         |
| `i`  | `a\``/`e\``    | Insertar vocales con tilde[^keymaps]          |
| `i`  | `<C-y>`         | Expansión rápida de Emmet[^keymaps]           |

| **Normal**                                                                  |
| `n`  | `<leader>n`     | Desactivar resaltado de búsqueda[^keymaps]    |
| `n`  | `<leader>w`     | Guardar archivo actual[^keymaps]              |
| `n`  | `<leader>q`     | Salir de Neovim[^keymaps]                     |
| `n`  | `<leader>t`     | Crear nueva pestaña[^keymaps]                 |
| `n`  | `<leader>s`     | Búsqueda con EasyMotion (2 caracteres)[^keymaps] |

| **LSP**                                                                     |
| `n`  | `gd`            | Ir a la definición[^lsp]                      |
| `n`  | `K`             | Mostrar documentación flotante[^lsp]          |

| **Completado**                                                              |
| `i`  | `<Tab>`         | Siguiente elemento en completado[^cmp]        |
| `i`  | `<S-Tab>`       | Elemento anterior en completado[^cmp]         |
| `i`  | `<CR>`          | Confirmar selección de completado[^cmp]       |

## Lenguajes configurados en LSP
| Lenguaje      | Servidor LSP           |
|---------------|------------------------|
| HTML          | emmet_ls               |
| CSS           | cssls                  |
| PHP           | intelephense           |
| Lua           | lua_ls                 |
| C/C++         | clangd                 |
| SQL           | sqlls                  |
| Python        | pyright                |
| JavaScript/TS | (configuración Emmet)  |

[^keymaps]: Configuración en `lua/core/keymaps.lua`
[^lsp]: Configuración en `lua/core/lsp-setup.lua`
[^cmp]: Configuración en `lua/core/cmp-setup.lua`

