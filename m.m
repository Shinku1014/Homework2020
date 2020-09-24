MAX = 64;
n = 3;
picture = zeros(MAX,MAX);
%part a\
current_sum = 0;
for i = 1:n
    for j = 1:n
        current_sum = current_sum + picture(i, j);
    end
end
current_sum = current_sum /( n * n);
%part b
picture_backup = picture;
for i = 1:MAX
    for j = 1:MAX
        current_sum = 0;
        for k = i + (1 - n) / 2 : i + (n - 1) / 2
            for l = i + (1 - n) / 2 : i + (n - 1) / 2
                if (k > 0 && l > 0 && k <= MAX && l <= MAX)
                    current_sum = current_sum + picture_backup(k, l);
                end
            end
        end
        picture(i, j) = current_sum / (n * n);
    end
end