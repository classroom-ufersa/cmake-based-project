# Github Action no seu projeto C 

## Por que usar Github Action?

O Github Action é uma ferramenta que permite automatizar tarefas no seu projeto. Com ele você pode criar pipelines de CI/CD, automatizar testes, fazer deploy, entre outras coisas.

## Como configurar o Github Action no seu projeto C?

1. Crie um arquivo chamado `main.yml` na pasta `.github/workflows/` do seu projeto.

2. Adicione o seguinte código no arquivo `main.yml`:

```yml
name: C/C++ CI

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Install dependencies
      run: sudo apt-get install build-essential
    - name: Make
      run: make
    - name: Run tests
      run: ./test
```

3. Adicione o arquivo `Makefile` no seu projeto:

```makefile
test: test.c
    gcc -o test test.c
```

4. Adicione o arquivo `test.c` no seu projeto:

```c
#include <stdio.h>

int main() {
    printf("Hello World!");
    return 0;
}
```

5. Faça um commit e um push no seu projeto.

6. Acesse a aba `Actions` do seu projeto no Github e veja o resultado do seu pipeline.
