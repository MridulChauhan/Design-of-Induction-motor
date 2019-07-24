% DESIGN OF THREE PHASE INDUCTION MOTOR MATLAB
clc
clear all
% input data
fprintf('\n ########################################################## \n');
fprintf('\n INPUT THE SPECIATIONS OF THE INDUCTION MOTOR\n');
fprintf('\n ########################################################## \n');
ph=input('\n no of phases=\n');
p=input('power in KW=\n');
v=input ('voltage in volts=\n');
f=input('frequency on hz=\n');
eff=input('eff of m/c=\n');
pf=0.825;
choice=menu('DESIGN INDUCTION MOTOR with','4 Poles','6 Poles','Customised Specifications');
switch choice
    case 1
        fprintf('The parameters for the 4 pole machine are :\n');
        po=4;
        fprintf('No. of poles %f\n',po);
        % to find speed
        Ns=(f*120)/po;
        ns=(2*f)/po;
        fprintf('Synchronous speed %f\n',Ns);
        Bav=0.45;
        fprintf('Specific magnetic loading %f\n',Bav);
        ac=23000;
        fprintf('Specific electrical loading %f\n',ac);
        Kw=0.925;
        fprintf('Winding factor %f\n',Kw);
        %to find output co-efficient
        Co=1.11*(pi^2)*Kw*Bav*ac*10^-3;
        % to find input KVA
        q=p/(eff*pf);
        fprintf('Output %f\n',q);
        % to find D and L
        D=abs((q/(Co*ns))/1.18)^(1/3);
        L=1.18*D;
        % to find pole pitch
        pp=(pi*D)/po;
        fprintf('Pole pitch %f',pp);
        %Peripheral speed
        pspeed=(pi*D*ns);
        fprintf('\n ################################### \n');
        fprintf('\n DIAMETER AND NET LENGTH OF THE INDUCTION MOTOR \n');
        fprintf('\n ################################## \n');
        fprintf('\n THE DIAMETER OF THE INDUCTION MOTOR=%.6f METERS \n',D);
        fprintf('\n THE NET LENGTH OF THE INDUCTION MOTOR=%.6f METERS\n',L);
        Q=Co*D*D*L*ns;
        fprintf('KVA output of the machine %f\n',Q);
        
    case 2
        fprintf('The parameters for the 6 pole machine are :\n');
        po=6;
        fprintf('No. of poles %f\n',po);
        % to find speed
        Ns=(f*120)/po;
        ns=(2*f)/po;
        fprintf('Synchronous speed %f\n',Ns);
        Bav=0.693;
        fprintf('Specific magnetic loading %f\n',Bav);
        ac=28200;
        fprintf('Specific electrical loading %f\n',ac);
        Kw=0.925;
        fprintf('Winding factor %f\n',Kw);
        %to find output co-efficient
        Co=1.11*(pi^2)*Kw*Bav*ac*10^-3;
        % to find input KVA
        q=p/(eff*pf);
        fprintf('Output %f\n',q);
        % to find D and L
        D=abs((q/(Co*ns))/1.18)^(1/3);
        L=1.18*D;
        fprintf('Diameter %f\n',D);
        fprintf('Length %f',L);
        % to find pole pitch
        pp=(pi*D)/po;
        fprintf('Pole pitch %f\n',pp);
        %Peripheral speed
        pspeed=(pi*D*ns);
        fprintf('\n ################################### \n');
        fprintf('\n DIAMETER AND NET LENGTH OF THE INDUCTION MOTOR \n');
        fprintf('\n ################################## \n');
        fprintf('\n THE DIAMETER OF THE INDUCTION MOTOR=%.6f METERS \n',D);
        fprintf('\n THE NET LENGTH OF THE INDUCTION MOTOR=%.6f METERS\n',L);
        Q=Co*D*D*L*ns;
        fprintf('KVA Output of the machine %f\n',Q);
        
    case 3
        clc
        clear all
        % input data
        fprintf('\n ########################################################## \n');
        fprintf('\n INPUT THE SPECIATIONS OF THE INDUCTION MOTOR\n');
        fprintf('\n ########################################################## \n');
        ph=input('\n no of phases=\n');
        p=input('power in KW=\n');
        v=input ('voltage in volts=\n');
        f=input('frequency on hz=\n');
        po=input('no of poles=\n');
        Bav=input('Bav in Wb/m2=\n');
        q=input('ac in a/m=\n');
        Kw=input('winding factor=\n');
        pf=input('power facot=\n');
        eff=input('eff of m/c=\n');
        % to find speed
        Ns=(f*120)/po;
        ns=(2*f)/po
        % to find output co-efficient
        Co=11*Kw*Bav*q*10^-3;
        % to find input KVA
        Q=p/(eff*pf);
        % to find D and L
        D=abs((Q/(Co*ns))/1.18)^(1/3);
        L=1.18*D;
        % to find pole pitch
        pp=(pi*D)/po;
        iron=input('iron factor=');
        % Li- net length
        Li=(L)*iron;
        pspeed=(pi*D*ns);
        fprintf('\n ################################### \n');
        fprintf('\n DIAMETER AND NET LENGTH OF THE INDUCTION MOTOR \n');
        fprintf('\n ################################## \n');
        fprintf('\n THE DIAMETER OF THE INDUCTION MOTOR=%.6f METERS \n',D);
        fprintf('\n THE NET LENGTH OF THE INDUCTION MOTOR=%.6f METERS\n',Li);
      
end
