a = input('Enter experimental points:');
l = length(a)-1;

 i = 1:l
    x= polyfit(a(:,1), a(:,2), i);
    p_1 = polyval(x, a(:,1))
    p_2 = norm(a(:,2))
    p = p_2 - p_1
    
    z = [i,p];
    if i == 1
        y=z;
    end
    
    if y(2)>=z(2)
        j = z(1);
    end   
x = polyfit(a(:,1),a(:,2),j);