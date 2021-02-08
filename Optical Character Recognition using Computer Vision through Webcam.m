clc;clear;
close all;
camObj = webcam();

% Preview a stream of image frames.
preview(camObj);
while(1)
    img = snapshot(camObj);
    Message   = ocr(img);
    disp(Message.Text);
    imshow(img);
    pause(1)
end
