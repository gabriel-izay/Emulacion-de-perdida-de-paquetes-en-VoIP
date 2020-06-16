% Se selecciona un archivo de audio
% Se lee el archivo y genera un vector
% [file,path] = uigetfile('*.wav');
% if isequal(file,0)
%     disp('Operación cancelada');
% else
%     disp(['Archivo seleccionado: ', fullfile(path,file)]);
%     pathfile = strcat(path,file);
%     [x, fm] = audioread(pathfile);
%     %x = {x};
%     x=x';
%     y=x;
%     filename = {file};
% end
[x, fm] = audioread('Originales\Vocal.wav');
x=x';
% Se indica un porcentaje de perdida de muestras
%losspc=input('Ingrese un porcentaje de perdidas: ');
% Se determina, segun sample rate y duracion del audio,
% cuantas muestras se pierden
samplesOrig=length(x);
mask=randn(1,samplesOrig);
mask=(mask/max(abs(mask)));
mask2=mask;
% for i=1:length(mask)
%     mask2(i)=abs(round((mask(i))));
%     if mask2(i)>1
%         mask2(i)=1;
%     end
% end
patron_perdidas=[0 0 0 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
mascaraMarkov2=zeros(1,length(patron_perdidas));
for i=1:length(patron_perdidas)
    if patron_perdidas(i)==0
        mascaraMarkov2(i)=1;
    end
end
auxsamples=find(mask2);
samplesrep=length(auxsamples);
lostsamples=samplesOrig-samplesrep;
disp('Samples de audio original: ',samplesOrig);
disp('Samples a reproducir: ',samplesrep);
disp('Samples perdidos: ',lostsamples)
%audio and punto a punto mscara
% audioloss=x.*mask2;
% %ploteo de audio mas audio con perdidas
% subplot(2,1,1)
% plot(x)
% subplot(2,1,2)
% plot(audioloss)

