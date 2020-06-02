function out = cmp(in, de)
    if(size(in) == 0)
        out = false;
    else
        out = (in == de);
    end
end