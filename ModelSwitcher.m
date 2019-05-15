% Загрузка файлов
files = ["1.csv", "8.csv","bovespa.csv"];

Results = [];
% Соотношение данных для обучения и прогноза
separator = 5;


for file = files
    % Достаем данные, приводим их к удобоваримому виду, отрезается кусок
    % данных для обучения
    file
    returns = csvread(file);
    returnSeries = returns(:);                                                                                                      
    returnSeries(isnan(returnSeries))=0;
    returnSeries = returnSeries - mean(returnSeries);
    SampleSize = length(returnSeries);
    returnSeriesShort = returnSeries(1:SampleSize/separator);
    plotting = 1;
    levels = [0.91:0.01:0.99];

    
    varLogisticRating = zeros(1,9);
    varKernelRating = zeros(1,9);
    varNormalRating = zeros(1,9);
    varTLocationScaleRating = zeros(1,9);
    varEGARCHRating = zeros(1,9);
    varEGARCHVolatileRating = zeros(1,9);

    % Прогоняется алгоритм для разных уровней Var, возвращается выбранный
    % VAR и доступные 6 вариантов, результаты для них
    1
    [VaR1, Method1, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(1));
    varLogisticRating(1) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(1) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(1) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(1) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(1) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(1) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    2
    [VaR2, Method2, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(2));
    varLogisticRating(2) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(2) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(2) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(2) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(2) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(2) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    3
    [VaR3, Method3, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(3));
    varLogisticRating(3) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(3) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(3) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(3) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(3) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(3) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    4
    [VaR4, Method4, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(4));
    varLogisticRating(4) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(4) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(4) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(4) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(4) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(4) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    5
    [VaR5, Method5, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(5), plotting);
    varLogisticRating(5) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(5) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(5) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(5) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(5) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(5) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    6
    [VaR6, Method6, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(6));
    varLogisticRating(6) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(6) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(6) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(6) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(6) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(6) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    7
    [VaR7, Method7, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(7));
    varLogisticRating(7) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(7) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(7) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(7) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(7) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(7) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    8
    [VaR8, Method8, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(8));
    varLogisticRating(8) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(8) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(8) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(8) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(8) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(8) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;
    9
    [VaR9, Method9, varLogistic, varKernel, varNormal, varTLocationScale, varEGARCH, varEGARCHVolatile] = estimateVaR(returnSeriesShort, SampleSize, levels(9));
    varLogisticRating(9) = mean(sum(returnSeries > varLogistic))/SampleSize;
    varKernelRating(9) = mean(sum(returnSeries > varKernel))/SampleSize;
    varNormalRating(9) = mean(sum(returnSeries > varNormal))/SampleSize;
    varTLocationScaleRating(9) = mean(sum(returnSeries > varTLocationScale))/SampleSize;
    varEGARCHRating(9) = mean(sum(returnSeries > varEGARCH))/SampleSize;
    varEGARCHVolatileRating(9) = mean(sum(returnSeries > varEGARCHVolatile))/SampleSize;

    % график со всеми коэффициентами доверия, как выглядят 
    figure;
    subplot(3,3,1);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR1,'r')
    title([Method1 ' ' num2str(levels(1))])
    subplot(3,3,2);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR2,'r')
    title([Method2 ' ' num2str(levels(2))])
    subplot(3,3,3);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR3,'r')
    title([Method3 ' ' num2str(levels(3))])
    subplot(3,3,4);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR4,'r')
    title([Method4 ' ' num2str(levels(4))])
    subplot(3,3,5);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR5,'r')
    title([Method5 ' ' num2str(levels(5))])
    subplot(3,3,6);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR6,'r')
    title([Method6 ' ' num2str(levels(6))])
    subplot(3,3,7);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR7,'r')
    title([Method7 ' ' num2str(levels(7))])
    subplot(3,3,8);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR8,'r')
    title([Method8 ' ' num2str(levels(8))])
    subplot(3,3,9);
    plot([1:SampleSize/separator],returnSeries(1:SampleSize/separator),'k',...
        [SampleSize/separator:SampleSize],returnSeries(SampleSize/separator:SampleSize),'b',...
        [1:SampleSize],VaR9,'r')
    title([Method9 ' ' num2str(levels(9))])

    %изменения относительно таргета
    figure;
    plot(1:9,varLogisticRating,'r',...
        1:9,varKernelRating,'g',...
        1:9,varNormalRating,'b',...
        1:9,varTLocationScaleRating,'c',...
        1:9,varEGARCHRating,'y',...
        1:9,varEGARCHVolatileRating,'m',...
        1:9,levels,'k');
    legend('DISTLogistic','DISTKernel','DISTNormal','DISTtLocationScale','EGARCHQuantile','EGARCHVolatile','Target');
    title(file)
    
    Ratings = [...
        levels;...
        varLogisticRating;...
        varKernelRating;...
        varNormalRating;...
        varTLocationScaleRating;...
        varEGARCHRating;...
        varEGARCHVolatileRating...
        ];
    
    
    Results = cat(3, Results, Ratings);

end

%Запись результатов в командную строку
Results

% функция возвращающая лучший метод из построенных
function [VaR, Method, varLogisticFull, varKernelFull, varNormalFull, varTLocationScaleFull, varEGARCHFull, varEGARCHVolatileFull] = estimateVaR(returnSeries, estimationWidth, confidence_level, plotting)
    rng default;    
    SampleSize = length(returnSeries);
    if nargin < 4
        plotting = 0;
    end

    % функция симуляции данных по EGARCH
    [simulatedVolatilesFull, simulatedRetursFull] = getEGARCHSimulation(returnSeries, estimationWidth);
    simulatedVolatiles = simulatedVolatilesFull(1:SampleSize);
    simulatedReturs = simulatedRetursFull(1:SampleSize);
    % выстраивание дистрибуций для всех данных
    x_pdf = [-0.1:0.001:0.1];
    distLogistic = fitdist(returnSeries,'Logistic');
    yLogistic = pdf(distLogistic,x_pdf);
    varLogistic = computeParametricVaR(distLogistic,confidence_level);
    distKernel = fitdist(returnSeries,'Kernel');
    yKernel = pdf(distKernel,x_pdf);
    varKernel = computeParametricVaR(distKernel,confidence_level);
    distNormal = fitdist(returnSeries,'Normal');
    yNormal = pdf(distNormal,x_pdf);
    varNormal = computeParametricVaR(distNormal,confidence_level);
    distTLocationScale = fitdist(returnSeries,'tLocationScale');
    yTLocationScale = pdf(distTLocationScale,x_pdf);
    varTLocationScale = computeParametricVaR(distTLocationScale,confidence_level);

    %Квантильнй гарч
    varEGARCH = quantile(simulatedReturs,1-confidence_level);
    %волатильный гарч
    varEGARCHVolatileFull = computeVolatileVaR(simulatedVolatilesFull, simulatedRetursFull, 1-confidence_level);
    varEGARCHVolatile = varEGARCHVolatileFull(1:SampleSize);

    if plotting == 1
        figure;
        subplot(2,2,1);
        plot(returnSeries);
        title('returnSeries');
        subplot(2,2,2);
        plot(simulatedReturs);
        title('simulatedReturs');
        subplot(2,2,[3,4]);
        histogram(returnSeries,'Normalization','pdf','FaceColor','white')
        hold on
        line(x_pdf,yLogistic,'Color','red')
        line(x_pdf,yKernel,'Color','green')
        line(x_pdf,yNormal,'Color','black')
        line(x_pdf,yTLocationScale,'Color','blue')
        legend('Normalization','yLogistic','yKernel','yNormal','yTLocationScale')
        title('distributionFittness')
        hold off;

        figure;
        subplot(3,2,1);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varLogistic,'r')
        title('varLogistic')
        subplot(3,2,2);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varKernel,'r')
        title('varKernel')
        subplot(3,2,3);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varNormal,'r')
        title('varNormal')
        subplot(3,2,4);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varTLocationScale,'r')
        title('varTLocationScale')
        subplot(3,2,5);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varEGARCH,'r')
        title('varEGARCH')
        subplot(3,2,6);
        plot([1:SampleSize],returnSeries,'k',[1:SampleSize],zeros(1,SampleSize) + varEGARCHVolatile,'r')
        title('varEGARCHVolatile')
    end

    %насколько построенные модели хорошо описывают данные которые есть
    varLogisticRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varLogistic)))/SampleSize/confidence_level);
    varKernelRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varKernel)))/SampleSize/confidence_level);
    varNormalRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varNormal)))/SampleSize/confidence_level);
    varTLocationScaleRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varTLocationScale)))/SampleSize/confidence_level);
    varEGARCHRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varEGARCH)))/SampleSize/confidence_level);
    varEGARCHVolatileRating = abs(1-mean(sum(returnSeries > (zeros(1,SampleSize) + varEGARCHVolatile)))/SampleSize/confidence_level);

    ratings = [varLogisticRating, varKernelRating, varNormalRating, varTLocationScaleRating, varEGARCHRating, varEGARCHVolatileRating];

    
    varLogisticFull = (zeros(1,estimationWidth) + varLogistic);
    varKernelFull = (zeros(1,estimationWidth) + varKernel);
    varNormalFull = (zeros(1,estimationWidth) + varNormal);
    varTLocationScaleFull = (zeros(1,estimationWidth) + varTLocationScale);
    varEGARCHFull = (zeros(1,estimationWidth) + varEGARCH);
    % Если рейтинг равен min то он лучший, и модель выбирается алгоритмом
    % как наилучшая
    if varLogisticRating == min(ratings)
        VaR = (zeros(1,estimationWidth) + varLogistic);
        Method = 'DISTLogistic';
    end
    if varKernelRating == min(ratings)
        VaR = (zeros(1,estimationWidth) + varKernel);
        Method = 'DISTKernel';
    end
    if varNormalRating == min(ratings)
        VaR = (zeros(1,estimationWidth) + varNormal);
        Method = 'DISTNormal';
    end
    if varTLocationScaleRating == min(ratings)
        VaR = (zeros(1,estimationWidth) + varTLocationScale);
        Method = 'DISTtLocationScale';
    end
    if varEGARCHRating == min(ratings)
        VaR = (zeros(1,estimationWidth) + varEGARCH);
        Method = 'EGARCHQuantile';
    end
    if varEGARCHVolatileRating == min(ratings)
        VaR = varEGARCHVolatileFull;
        Method = 'EGARCHVolatile';
    end
    
end
    

%на вход принимаются симулированные волатильности, ретурны и уровни
%доверия. Подбираются наилучшие коэффициенты. 
%Выдает результат - какое наилучшее значение у функции качества
function VaR = computeVolatileVaR(simulatedVolatiles, simulatedReturs, confidence_level)
    SampleSize = length(simulatedReturs);
    a = 0;
    b = 0;
    stepA = 0.01;
    stepB = 0.1;
    winstreak = 0;
    bestViolationsRate = 0.5;
    while winstreak < 10
        tempA = a + stepA;
        tempB = b + stepB;
        violations = sum(simulatedReturs < mean(simulatedReturs) - tempA - tempB * simulatedVolatiles);
        tempViolationsRate = abs(violations/SampleSize - confidence_level);
        if tempViolationsRate >= bestViolationsRate
        else
            bestViolationsRate = tempViolationsRate;
            winstreak = 0;
            a = tempA;
            b = tempB;
            continue
        end
        tempA = a - stepA;
        tempB = b + stepB;
        violations = sum(simulatedReturs < mean(simulatedReturs) - tempA - tempB * simulatedVolatiles);
        tempViolationsRate = abs(violations/SampleSize - confidence_level);
        if tempViolationsRate >= bestViolationsRate
        else
            bestViolationsRate = tempViolationsRate;
            winstreak = 0;
            a = tempA;
            b = tempB;
            continue
        end
        tempA = a + stepA;
        tempB = b - stepB;
        violations = sum(simulatedReturs < mean(simulatedReturs) - tempA - tempB * simulatedVolatiles);
        tempViolationsRate = abs(violations/SampleSize - confidence_level);
        if tempViolationsRate >= bestViolationsRate
        else
            bestViolationsRate = tempViolationsRate;
            winstreak = 0;
            a = tempA;
            b = tempB;
            continue
        end
        tempA = a - stepA;
        tempB = b - stepB;
        violations = sum(simulatedReturs < mean(simulatedReturs) - tempA - tempB * simulatedVolatiles);
        tempViolationsRate = abs(violations/SampleSize - confidence_level);
        if tempViolationsRate >= bestViolationsRate
        else
            bestViolationsRate = tempViolationsRate;
            winstreak = 0;
            a = tempA;
            b = tempB;
            continue
        end
        winstreak = winstreak + 1;
        stepA = stepA/2;
        stepB = stepB/2;
    end
    VaR = mean(simulatedReturs) - a - b * simulatedVolatiles;
end

%возвращает накопительные функции распределения
function VaR = computeParametricVaR(dist,confidence_level)
    VaR = icdf(dist,1-confidence_level);
end
%по исходным данным возвращает EGARCH симуляцию
function [volatiles, returns] = getEGARCHSimulation(returnSeries, width, leverage)
    if nargin < 3
    	leverage = -0.016089;
    end
    model = egarch('GARCHLags', 1, 'ARCHLags', 1);
    [estMdl, estParamCov, logL] = estimate(model, returnSeries);
    mdl = egarch('Constant',estMdl.Constant,'GARCH',estMdl.GARCH{1},'ARCH',estMdl.ARCH{1}, 'Leverage', leverage);
    [volatiles, returns] = simulate(mdl, width);
end