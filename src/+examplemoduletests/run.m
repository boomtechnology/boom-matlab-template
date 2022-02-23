function result = run(varargin)
    import matlab.unittest.TestSuite
    import matlab.unittest.TestRunner
    import matlab.unittest.plugins.CodeCoveragePlugin
    import matlab.unittest.plugins.StopOnFailuresPlugin

    runner = TestRunner.withTextOutput;
    runner.addPlugin(CodeCoveragePlugin.forPackage('examplemodule','IncludingSubpackages',true));    
    suite = TestSuite.fromPackage('examplemoduletests');
    result = runner.run(suite);
end