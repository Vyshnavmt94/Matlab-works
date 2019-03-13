function con=confsn_matrix(true_label,predicted_label)

d=true_label;
D=predicted_label;

c=unique(d);
n=size(c,1);
for j=1:n
    
    class{j}=c(j);
    
    for p=1:n
        con{j,p}=0;
    end
      
end

for i=1:size(d,1)
   
   for j=1:size(class,2)
       
       if d(i)==class{j}
           
           if D(i)==d(i)
              con{j,j}=con{j,j}+1;
              
           else
               for m=1:size(class,2)
                   if D(i)==class{m}
                       con{j,m}=con{j,m}+1;
                   end 
               end
           end
           
       end
       
   end
   
end

end