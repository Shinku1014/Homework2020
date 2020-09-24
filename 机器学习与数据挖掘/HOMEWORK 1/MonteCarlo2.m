times = [5, 10, 20, 30, 40, 50, 60, 70, 80, 100];
mean = zeros(1, 10);
variance = zeros(1, 10);
tmp = zeros(1, 100);
for i = 1:10
    for n = 1:100
        r = rand(times(i),1);
        val = 0;
        for j = 1:times(i)
            val = val + r(j) * r(j) * r(j);
        end
        tmp(n) = val / times(i);
        mean(i) = mean(i) + tmp(n) / 100;        
    end
    variance(i) = var(tmp);
    fprintf("采样次数: %d, 均值: %f, 方差: %f \n",times(i), mean(i), variance(i)); 
end
