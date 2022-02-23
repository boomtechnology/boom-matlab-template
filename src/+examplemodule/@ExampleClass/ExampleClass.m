classdef ExampleClass

    properties
        prop1 char
        prop2 double
        prop3 logical
    end

    methods
        function obj = ExampleClass(arg1, arg2, varargin)
            % ExampleClass is an example on a modern way to create a matlab instance from a classdef
            %
            % Inputs
            % -----
            %   arg1 : ischar
            %       A char array
            %   arg2 : isnumeric
            %       A number
            %
            % Optional Inputs (provide these inputs as 'key', 'value' pairs):
            % ----------------
            %   'optarg1', logical (default: false)
            %       And optional logical flag.

            % Its best practice to always specify function inputs using an input Parser. This will validate the types of inputs
            % and avoid simple errors where the wrong value is passed through the function.
            %
            % See also: https://www.mathworks.com/help/matlab/ref/inputparser.html    
            p = inputParser;
            addRequired(p,'arg1', @ischar);
            addRequired(p,'arg2', @isnumeric);
            addParameter(p,'optarg1', false, @islogical);
            parse(p, arg1, arg2, varargin{:});

            % Set prop1 equal to arg1
            obj.prop1 = p.Results.arg1;
            % Convert the numerical value of arg2 to a double for prop2
            obj.prop2 = double(p.Results.arg2);
            % optarg1 is optional and must be supplied as a "keyword" or 
            obj.prop3 = p.Results.optarg1;

        end

        function ret = doubleProp2(obj)
            % doubleProp2 - returns double the value of the prop2 instance property
            ret = 2 * obj.prop2;
        end
    end

    methods (Access='private')
        function ret = tripleProp2(obj)
            % a private function to triple the value of prop2, this can only be called by functions within in the scope of
            % ExampleClass.
            ret = 3 * obj.prop2;
        end
    end


end