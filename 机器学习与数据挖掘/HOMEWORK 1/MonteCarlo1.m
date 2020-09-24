times = [20, 50, 100, 200, 300, 500, 1000, 5000];
mean = zeros(1,8);
variance = zeros(1,8);
tmp = zeros(1, 20);
for i = 1:8
    for n = 1:20
        r = rand(times(i),2);
        aimed = 0;
        for j = 1:times(i)
            if r(j,1)*r(j,1) + r(j,2)*r(j,2) < 1
                aimed = aimed + 1;
            end
        end
        tmp(n) = 4 * aimed / times(i);
        mean(i) = mean(i) + tmp(n) / 20;
        
    end
    variance(i) = var(tmp);
    fprintf("投点个数: %d, 均值: %f, 方差: %f \n",times(i), mean(i), variance(i)); 
end
