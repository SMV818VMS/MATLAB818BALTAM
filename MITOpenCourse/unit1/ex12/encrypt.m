% Ex12 encrypt.m
% Given a text, encrypts it and after decrypts. The last step evaluate the
% process worked correctly

original = 'This is my top secret message!';
encrypter = randperm(length(original));
encoded = original(encrypter);

tempMat = [encrypter ; 1:1:length(original)]';
sortedMat = sortrows(tempMat, 1);
decrypter = sortedMat(:,2)';

decoded = encoded(decrypter);

% Display process
disp(['Original: ' original]);
disp(['Encoded: ' encoded]);
disp(['Decoded: ' decoded]);

% compare the correctness

TF = strcmp(original, decoded);
disp(['Decoded correctly (1 true, 0 false): ' num2str(TF)]);