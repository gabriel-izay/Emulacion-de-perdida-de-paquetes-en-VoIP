%% Selección de archivo de audio .wav

    [file,path] = uigetfile('*.wav');
    disp(['Archivo seleccionado: ', fullfile(path,file)]);
    pathfile = strcat(path,file);
    [x, fm] = audioread(pathfile);
    x=x';
    filename = {file};
    %Datos del audio
    %Cantidad de muestras del audio original, fm:frecuencia de muestreo
    nsamplesOrig=length(x);
    
%% Patrón de pérdidas, se genera vector máscara binaria

    mascara_mkov=generarMascara(nsamplesOrig);
    
%% Producto punto a punto entre la mascara y el audio

    audiowloss=x.*mascara_mkov;



