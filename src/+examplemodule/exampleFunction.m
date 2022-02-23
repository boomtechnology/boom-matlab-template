function result = exampleFunction(var1)
    % exampleFunction - returns 100 * input value.
    %
    % Input:
    % -----
    %  var1: numeric
    %   input variable 1, this will be multiplied by 10 to generate the output.
    %
    % Output:
    % ------
    %   A numeric value 100 times the input
    %
    % Example
    % -------
    % >> examplemodule.exampleFunction(12)
    %
    % ans =
    %         1200
    %

    % Its best practice to always specify function inputs using an input Parser. This will validate the types of inputs
    % and avoid simple errors where the wrong value is passed through the function.
    %
    % See also: https://www.mathworks.com/help/matlab/ref/inputparser.html
    p = inputParser;
    addRequired(p,'var1', @isnumeric);
    parse(p, var1);
    
    % the result is 100 times the var1 input variable
    result = p.Results.var1 * 100;
end