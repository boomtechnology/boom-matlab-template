# Installation
To install add `./src` to your matlab path.

# Usage
Example classes, methods, and functions are contained within `./src`. Once installed, you should be able to access the 
included data structures using the matlab module access syntax. For example:

```{matlab}
>> x = examplemodule.ExampleClass('foo',2,'optarg1',true)

x = 

  ExampleClass with properties:

    prop1: 'foo'
    prop2: 2
    prop3: 1

>> examplemodule.exampleFunction(12)

ans =

        1200

```

# Testing
To run tests, execute the included `run` script in the `examplemoduletests` module:

```{matlab}
>> examplemoduletests.run()
Running examplemoduletests.testExampleClass
..
Done examplemoduletests.testExampleClass
__________

Code coverage report has been saved to:
 C:\Users\robert.schaefer\AppData\Local\Temp\tpe95cb712_a947_4655_b6b7_2a1736c7a9a9\index.html

ans = 

  1×2 TestResult array with properties:

    Name
    Passed
    Failed
    Incomplete
    Duration
    Details

Totals:
   2 Passed, 0 Failed, 0 Incomplete.
   0.030223 seconds testing time.
```
Follow the printed coverage link on your machine to view code coverage.
