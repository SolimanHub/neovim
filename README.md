# Configuración de Neovim para Desarrollo Full-Stack

**Sistema objetivo:** Arch Linux  
**Mantenedor:** David Soliman  
**Última actualización:** Mayo 2025

## 🚀 Instalación Rápida

1. **Requisitos previos:**
```bash
sudo pacman -S neovim nodejs npm python-pip ruby rustup go lua clang
yay -S nvim-packer-git  # Instalar Packer desde AUR
```

2. **Clonar configuración:**
```bash
git clone https://github.com/SolimanHub/neovim.git ~/.config/nvim
```

3. **Instalar plugins:**
```bash
nvim +PackerSync
```

## 🛠 Configuración Específica para Arch Linux

### Dependencias del Sistema

```bash
# Lenguajes base
yay -S lua-language-server-git
sudo pacman -S clang python-pylsp php-inteliphense nodejs-typescript-language-server

# Herramientas complementarias
sudo pacman -S shellcheck bash-language-server yamllint docker-compose

# Paquetes AUR
yay -S texlab ruby-solargraph gopls haskell-language-server-git
```

### Configuración de LSPs nativos

```bash
# Instalación manual para proyectos especializados
rustup component add rust-analyzer
sudo npm install -g typescript typescript-language-server vue-language-server
gem install solargraph
```

## 🔧 Estructura de Directorios

```text
~/.config/nvim/
├── init.lua
├── lua
│   └── core
│       ├── cmp-setup.lua    # Configuración de autocompletado
│       ├── keymaps.lua      # Atajos de teclado
│       ├── lsp-setup.lua    # Servidores LSP
│       ├── plugins-setup.lua # Gestión de plugins
│       └── snippets.lua     # Snippets personalizados
└── README.md
```

## ⌨️ Atajos de Teclado Esenciales

### Atajos en modo Insertar

| Atajo           | Función                                  |
|-----------------|------------------------------------------|
| `jk`            | Salir del modo inserción[^keymaps]       |
| `{`/`(`/`[`    | Insertar pares de caracteres[^keymaps]   |
| `<C-Space>`     | Activar autocompletado[^cmp][^keymaps]   |
| `<C-y>`         | Expansión rápida de Emmet[^keymaps]      |

[^keymaps]: Configuración en `lua/core/keymaps.lua`
[^cmp]: Configuración en `lua/core/cmp-setup.lua`


### Atajos en modo Normal

| Atajo           | Función                                  | Fuente                |
|-----------------|------------------------------------------|-----------------------|
| `<leader>w`     | Guardar archivo actual                   | [keymaps.lua][^keymaps] |
| `<leader>s`     | Búsqueda con EasyMotion (2 caracteres)   | [keymaps.lua][^keymaps] |
| `gd`            | Ir a la definición (LSP)                 | [lsp-setup.lua][^lsp]  |
| `K`             | Mostrar documentación flotante (LSP)     | [lsp-setup.lua][^lsp]  |

[^keymaps]: Configuración en `lua/core/keymaps.lua`  
[^lsp]: Configuración en `lua/core/lsp-setup.lua`

## 🌐 Servidores LSP Configurados

| Lenguaje       | Servidor         | Instalación                                  |
|----------------|------------------|----------------------------------------------|
| JavaScript/TS  | `tsserver`       | `:MasonInstall tsserver`[^1]                 |
| Python         | `pyright`        | `sudo pacman -S pyright`                     |
| Rust           | `rust_analyzer`  | `rustup component add rust-analyzer`         |
| Go             | `gopls`          | `yay -S gopls`                               |
| Java           | `jdtls`          | `:MasonInstall jdtls`[^1]                    |
| Docker         | `dockerls`       | `:MasonInstall dockerls`[^1]                 |

[^1]: Comandos ejecutables directamente en Neovim usando Mason.nvim

## 🔄 Flujo de Trabajo Recomendado

1. Instalar dependencias específicas:
```bash
:Mason  # Instalar LSPs faltantes desde neovim
```

2. Verificar salud de la configuración:
```text
:checkhealth
```

3. Actualizar periodicamente:
```bash
nvim +PackerUpdate +MasonUpdate +LspInstallInfo
```

## ⚠️ Solución de Problemas Comunes
```bash
yay -S lua-language-server-git  # Desde Actualizar
:NvimTreeRefresh  # Recargar estructura de proyectos
```

### Fallo en autocompletado
```bash
:PackerSync  # Reinstalar plugins de completado
:TSUpdate    # Actualizar árboles sintácticos
```

### Problemas con Rust Analizer
```bash
rustup update
rustup component add rust-src
```

## 📦 Plugins Principales
## Plugins Principales y sus Funciones

| Plugin               | Función Principal                                                                 | Fuente                |
|----------------------|-----------------------------------------------------------------------------------|-----------------------|
| **nvim-lspconfig**   | Proporciona configuraciones base para servidores LSP en Neovim[^3][^5]            | [nvim-lspconfig][^3]  |
| **mason.nvim**       | Gestor de instalación/actualización de servidores LSP y herramientas de desarrollo[^1][^4] | [Mason-LSP][^1]       |
| **nvim-cmp**         | Motor de autocompletado inteligente integrado con LSP y snippets[^5]              | [Configuración LSP][^5] |
| **vim-easymotion**   | Sistema de navegación rápida en texto usando atajos visuales[^5]                  | [Guía LSP][^5]       |
| **nvim-ts-autotag**  | Autocompletado automático de etiquetas HTML/XML usando Treesitter[^config]        | Configuración del usuario |

[^1]: [Mason-LSPconfig GitHub](https://github.com/williamboman/mason-lspconfig.nvim)  
[^3]: [nvim-lspconfig GitHub](https://github.com/neovim/nvim-lspconfig)  
[^4]: [Video de configuración Mason](https://www.youtube.com/watch?v=2iczAXDdgTE)  
[^5]: [Guía de configuración LSP](https://youngxhui.top/en/2023/09/neovim-beginners-guide-part-three-lsp-configuration-part-one/)

## 📌 Notas Finales

- La configuración incluye soporte nativo para WSL2 y Wayland
- Para proyectos PHP+JavaScript usar:
```bash
sudo pacman -S php-inteliphense npm
```
