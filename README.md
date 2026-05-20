1) Where would you fit your automated tests in your Recipe project development pipeline? Select one of the following and explain why.

- Within a Github action that runs whenever code is pushed 

    This is because it ensures that there is continuous awareness each time the codebase is updated (through a git push or through a pull request) that the code still works as expected, so that obvious bugs don't go unnoticed (of course tests still miss stuff).

2) Would you use an end to end test to check if a function is returning the correct output? (yes/no)

    No

3) What is the difference between navigation and snapshot mode?

    navigation mode always analyzes the page by freshly loading so it can measure performance,
    while snapshot mode looks at the page as is so it is more for quickly finding accessibility issues,
    can't measure load times, DOM changes, etc.

4) Name three things we could do to improve the CSE 110 shop site based on the Lighthouse results.

    1. add a `[lang]` attribute to the `<html>` element.
    2. add a `<meta name="viewport">` with `width` or `initial-scale`
    3. provide a meta description for SEO improvement
