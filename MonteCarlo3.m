times = [10, 20, 30, 40, 50, 60, 70, 80, 100, 200, 500];
mean = zeros(1,11);
variance = zeros(1,11);
tmp = zeros(1, 100);
for i = 1:11
    for n = 1:100
        r = rand(times(i),1) * 2 + ones(times(i),1) * 2;
        r(:,2) = rand(times(i),1) * 2 - ones(times(i),1);
        val = 0;
        for j = 1:times(i)
            x = r(j,1);
            y = r(j,2);
            fxy = (y^2*exp(-y^2 )+x^4*exp(-x^2 ))/(x*exp(-x^2 ));
            val = val + fxy;
        end
        tmp(n) = 4 * val / times(i);
        mean(i) = mean(i) + tmp(n) / 100;           
    end
    variance(i) = var(tmp);
    fprintf("采样次数: %d, 均值: %f, 方差: %f \n",times(i), mean(i), variance(i)); 
end

