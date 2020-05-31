function a = getTable(inp)
    opts = delimitedTextImportOptions("NumVariables", 28);

    % Specify range and delimiter
    opts.DataLines = [3, Inf];
    opts.Delimiter = ",";
    
    % Specify column names and types
    opts.VariableNames = ["village", "VarName2", "fullAddress", "landArea", "VarName5", "VarName6", "VarName7", "date", "VarName9", "floor", "fullFloor", "VarName12", "VarName13", "VarName14", "VarName15", "buildingArea", "VarName17", "VarName18", "VarName19", "VarName20", "VarName21", "fullPrice", "unitPrice", "VarName24", "VarName25", "VarName26", "VarName27", "VarName28"];
    opts.VariableTypes = ["categorical", "categorical", "string", "double", "categorical", "string", "string", "double", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "double", "double", "double", "double", "double", "categorical", "categorical", "double", "double", "categorical", "double", "double", "categorical", "string"];
    
    % Specify file level properties
    opts.ExtraColumnsRule = "ignore";
    opts.EmptyLineRule = "read";
    
    % Specify variable properties
    opts = setvaropts(opts, ["fullAddress", "VarName6", "VarName7", "VarName28"], "WhitespaceRule", "preserve");
    opts = setvaropts(opts, ["village", "VarName2", "fullAddress", "VarName5", "VarName6", "VarName7", "VarName9", "floor", "fullFloor", "VarName12", "VarName13", "VarName14", "VarName20", "VarName21", "VarName24", "VarName27", "VarName28"], "EmptyFieldRule", "auto");
    
    % Import the data
    a = readtable("lvr_landAcsv/" + inp, opts);
    
    clear opts
end