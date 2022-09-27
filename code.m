
%**Free Space Path Loss Model**

%free_space_pl(fc,d,Gt,Gr)  

%where
% fc : carrier frequency 
% d  : distance between the transmitter and the receiver 
% Gt and Gr : transmitter gain and receiver gain respectively 

d=[1:2:31].^2;

PL1=free_space(1800*10^6,d,1,1); % Gt=1 Gr=1
PL2=free_space(1800*10^6,d,1.5,2); % Gt=1.5 Gr=2


semilogx(d,PL1),grid on,title('Free Space Path Loss Model'),xlabel('distance[m]'),ylabel('path loss [dB]')
hold on
semilogx(d,PL2),
legend('Gt=1 and Gr=1','Gt=1.5 and Gr=2')
hold off

function PL=free_space(fc,d,Gt,Gr)
lamda=3*10^8/fc; 
PL=-10*log10((Gt*Gr*(lamda)^2)./((4*pi)^2.*(d).^2));
end



%  *************************************
%  * DONE BY: IBRAHIM MOAKKIT          *
%  * EMAIL: ibrahimmoakkit@outlook.com *
%  *************************************
