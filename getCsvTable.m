function out = getCsvTable(inp, names)
    
    switch nargin
        case 2
            ds = tabularTextDatastore(inp, 'ReadVariableNames', false, 'VariableNames', names);
        otherwise
            ds = tabularTextDatastore(inp);
    end
    
    ds.TreatAsMissing = 'NA';
    ds.MissingValue = 0;
%     preview(ds)
    
    out = readall(ds);

end