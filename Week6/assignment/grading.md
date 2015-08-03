## Notes on Automated Grading

For the instructor's grades, your code will very likely be graded
**automatically** using Bash and Python scripts written by the TA. Thus, it is
important that you do the following:

1. Read the instructions carefully.

 Goes without saying.

2. Grab the template file `<projectname>.ipynb` that corresponds to each problem from GitHub.

 You are highly encouraged to use Git commands, `git clone` and `git pull`. See [Suggested Workflow](workflow.md).

3. **Do not** change the function names, arguments, or return types if they are given in the template files.

 But you are allowed and encouraged to change any comments. Note that comments
 and docstrings are different, and you are **not** allowed to change
 docstrings. Docstrings appear at the beginning of each function; comments will
 usually be in Markdown or begin with `#`.

4. **Do not** use Python modules other than the ones included in the course
  Docker image `lcdm/info490`.

  For example, you google how others solved a similar problem and find that the
  problem is easily solved if you use a module named `foo`. So you run `apt-get
  install foo` and include `import foo` in your program. This code will not run
  when I grade your code because I won't run `apt-get install foo` for you.

5. Try to reproduce the sample output as closely as possible.

 Pay close attention to the spelling, whitespaces, data types, significant digits, etc.

Is automated grading perfect? Of course not. That's where the peer grading comes in. Grading by your peers will hopefully balance out the shortcomings of automated grading. If you think you were graded unfairly due to a bug in the automated grading program, please contact Edward at jkim575@illinois.edu.
