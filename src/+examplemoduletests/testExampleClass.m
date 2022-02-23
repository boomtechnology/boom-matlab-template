classdef testExampleClass < matlab.unittest.TestCase


    properties
        exclass examplemodule.ExampleClass
    end

    % Test Setup ==============================================================

    % BUILDUP -----------------------------------------------------------------
    methods (TestClassSetup)
        function createExampleClass(tc)
            tc.exclass = examplemodule.ExampleClass('foo',5,'optarg1',true);
        end
    end
    methods (TestMethodSetup)
    end

    % TEARDOWN ---------------------------------------------------------------

    methods(TestClassTeardown)
    end
    methods (TestMethodTeardown)
    end

    % TESTS ===================================================================
    methods (Test)

        function testArg1(tc)
            % Test that prop1 of ExampleClass has value 'foo'
            tc.verifyEqual(tc.exclass.prop1, 'foo');
        end

        function testArg2(tc)
            % Test that prop2 of ExampleClasee is set to 5
            tc.verifyEqual(tc.exclass.prop2, 5);
        end

    end

end
