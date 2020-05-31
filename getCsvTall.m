function out = getCsvTall(inp)
    
    ds = tabularTextDatastore("lvr_landAcsv/" + inp);
    
%     preview(ds)
    
    out = tall(ds);

end