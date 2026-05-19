1) Where would you fit your automated tests in your Recipe project development pipeline? Select one of the following and explain why.

- Within a Github action that runs whenever code is pushed 

    This is because it ensures that there is continuous awareness each time the codebase is updated (through a git push or through a pull request) that the code still works as expected, so that obvious bugs don't go unnoticed (of course tests still miss stuff).

2) Would you use an end to end test to check if a function is returning the correct output? (yes/no)

    No