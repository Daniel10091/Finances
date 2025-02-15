# Projeto Finanças

Projeto Finanças é um aplicativo desenvolvido em Flutter para controle de despesas e gerenciamento financeiro pessoal. O aplicativo permite que você registre suas despesas, visualize estatísticas e gráficos de gastos e economias, e acompanhe a saúde financeira de forma simples e intuitiva.

## Sumário

- [Recursos](#recursos)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Instalação e Execução](#instalação-e-execução)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Recursos

- **Registro de Despesas**: Cadastre suas despesas diárias com categorias e descrições.
- **Gráficos e Estatísticas**: Visualize gráficos interativos que mostram seus gastos mensais, economia e distribuição das despesas.
- **Interface Intuitiva**: Design limpo e organizado para facilitar a navegação e o acompanhamento financeiro.
- **Controle de Economias**: Acompanhe suas metas de economia e veja o progresso em tempo real.

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de aplicativos multiplataforma.
- **Dart**: Linguagem de programação utilizada pelo Flutter.
- **Pacotes Flutter**: Utilização de pacotes como [provider](https://pub.dev/packages/provider) para gerenciamento de estado e [charts_flutter](https://pub.dev/packages/charts_flutter) (ou similares) para a criação dos gráficos.
- **Firebase/SQLite** *(opcional)*: Para armazenamento local ou em nuvem dos dados financeiros.

## Estrutura do Projeto

A estrutura de pastas do projeto segue uma organização modular para facilitar a manutenção e escalabilidade:

lib/ ├── main.dart ├── models/ │ ├── expense.dart # Modelo de despesa │ └── user.dart # Modelo de usuário (se necessário) ├── views/ │ ├── home_page.dart # Tela principal com visão geral financeira │ ├── expense_page.dart # Tela para cadastro e listagem de despesas │ └── statistics_page.dart # Tela com gráficos e estatísticas ├── widgets/ │ ├── expense_item.dart # Widget para exibir item de despesa │ ├── custom_button.dart # Botões personalizados │ └── chart_widget.dart # Widget para gráficos ├── services/ │ ├── database_service.dart # Serviços para gerenciamento de dados │ └── auth_service.dart # Serviços de autenticação (se necessário) └── utils/ └── formatters.dart # Funções auxiliares (ex.: formatação de datas, números)

## Instalação e Execução

### Pré-requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado.
- Um emulador Android/iOS ou dispositivo físico configurado para desenvolvimento.

### Passos para Rodar o Projeto

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/projeto-financas.git
   cd projeto-financas

2. **Instale as dependências:**
  ```bash
  flutter pub get

3. **Execute o aplicativo:**
  ```bash
  flutter run

## Contribuição

Contribuições são bem-vindas! Se você deseja melhorar o projeto, por favor, abra uma issue para discutir as mudanças ou envie um pull request.

## Licença

Distribuído sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

  ```lua
  Este README oferece uma visão geral do projeto e orienta os usuários sobre como começar a usá-lo e contribuir para o desenvolvimento. Se precisar de mais informações ou ajustes, sinta-se à vontade para modificar conforme necessário.
