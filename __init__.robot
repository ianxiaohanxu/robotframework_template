# Variables and keywords created or imported in initialization files are not available in the lower level test suites.
# If you need to share variables or keywords, you can put them into resource files that can be imported both by initialization and test case files.
***settings***
| Documentation  | This is the description for the whole test suite, | 
| ...            | you can also split it into multiple lines, | 
| ...            | and it also support html style, *bold*, _italic_ | 
| Library        | library1 | 
| Library        | library2 | arg1 | arg2 |         # You cannot import multiple libraries in one line.
| resource       | resource1 | 
| resource       | resource2 | resource3 |          # You could import multiple resource files in one line.
| Force tags     | tag1 | tag2 |        # Force added tags for all test cases in the suite.
| suite setup    | Run keyword | log | abc |                            # Suite setup/teardown is for the test suite, only run once in the suite.
| suite teardown | Run keywords | keyword1 | keyword2 | keyword3 |      # Run multiple keywords in setup/teardown with 'Run keywords'.
| test setup     | Run keyword | log | abc |                            # Test setup/teardown is default setup/teardown, will be overwriten by [setup]/[teardown] in test case.
| test teardown  | Run keywords | keyword1 | keyword2 | keyword3 |      # Test setup/teardown will run for each test case.
| test timeout   | 33s | 

***variables***
| ${var1} | abc | 
| @{list1} | a | b | c | 
| &{dict} | a=a | b=c | 

***keywords***
keyword name
|  | [arguments] | ${arg} | 
|  | [return] | ${arg} | 
