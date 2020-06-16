function [mascaraMkov]=generarMascara(pdimension)
%     patron_perdidas=[0 0 0 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0,...
%     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
    patronmascara=[1 1 1 1 1 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1];
    a=length(patronmascara);
    b=zeros(1,pdimension);
    for i=0:a:length(b)
        for j=1:a
            if (i+j)<=length(b)
                b(i+j)=patronmascara(j);
            end
        end
    end
    mascaraMkov=b;
end