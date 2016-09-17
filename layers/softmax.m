function output = softmax(in)
% turn set of numbers into probabilities by exponentiation

% get alpha and integer of third dimension
alpha = max(in(1,1,:));
inSize = size(in);
dimension = inSize(3);
display(dimension)
sumofd = 0;

for i = 1:dimension
    % compute the sum of the denominator first
    denominator = exp((in(1,1,i) - alpha));
    sumofd = sumofd + denominator;
end

for k = 1:dimension
        % compute output by dividing the numerator from the sum of denom
        numerator = exp((in(1,1,k) - alpha));
        output(1:1:k) = numerator / sumofd;
end        
        
end