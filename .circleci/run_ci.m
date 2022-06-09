function run_ci()
    % Add all dependencies to the matlab path
    [ci_dir, ~] = fileparts(mfilename('fullpath'));

    root_dir = fileparts(ci_dir);
    addpath(genpath(root_dir));

    % Add dependencies here
    % sources_dir = fileparts(root_dir);
    % core_functions_dir = fullfile(sources_dir, 'boom-core-functions');
    % addpath(genpath(core_functions_dir));

    % Run test suite
    suite = matlab.unittest.TestSuite.fromFolder(root_dir, 'IncludingSubfolders', true);
    results = run(suite);
    assertSuccess(results);
end
