function exampleMethod1(obj)
    % exampleMethod - prints the character array in prop1 a total of times equal to the value in prop2

    for idx = 1:obj.prop2
        disp(obj.prop1);
    end
    
end