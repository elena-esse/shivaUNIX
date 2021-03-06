% Created by:
% ----------------------------------------------------------------------- %
%   Author:  Elena Spagnuolo                                              %
%   Date:    2012                                                         %
%   E-mail:                                                               %
% ----------------------------------------------------------------------- %

function T=Tmeas_3(Y,T0) %X=mV

%%
%     0      1      2      3      4      5      6      7      8      9      10
% 00  0.000  0.039  0.079  0.119  0.158  0.198  0.238  0.277  0.317  0.357  0.397
% 10  0.397  0.437  0.477  0.517  0.557  0.597  0.637  0.677  0.718  0.758  0.798
% 20  0.798  0.838  0.879  0.919  0.960  1.000  1.041  1.081  1.122  1.163  1.203
% 30  1.203  1.244  1.285  1.326  1.366  1.407  1.448  1.489  1.530  1.571  1.612
% 40  1.612  1.653  1.694  1.735  1.776  1.817  1.858  1.899  1.941  1.982  2.023
A=[0.039  0.079  0.119  0.158  0.198  0.238  0.277  0.317  0.357  ...
    0.397  0.437  0.477  0.517  0.557  0.597  0.637  0.677  0.718  0.758  ...
    0.798  0.838  0.879  0.919  0.960  1.000  1.041  1.081  1.122  1.163  ...
    1.203  1.244  1.285  1.326  1.366  1.407  1.448  1.489  1.530  1.571  ...
    1.612  1.653  1.694  1.735  1.776  1.817  1.858  1.899  1.941  1.982  2.023];


mT0=A(T0);
X=Y-Y(1)+ mT0;


d0= [        0.0000000E+00  0.000000E+00 -1.318058E+02 ];
d1= [        2.5173462E+01  2.508355E+01  4.830222E+01 ];
d2= [       -1.1662878E+00  7.860106E-02 -1.646031E+00 ];
d3= [       -1.0833638E+00 -2.503131E-01  5.464731E-02 ];
d4= [       -8.9773540E-01  8.315270E-02 -9.650715E-04 ];
d5= [       -3.7342377E-01 -1.228034E-02  8.802193E-06 ];
d6= [      -8.6632643E-02  9.804036E-04 -3.110810E-08 ];
d7= [       -1.0450598E-02 -4.413030E-05  0.000000E+00 ];
d8= [       -5.1920577E-04  1.057734E-06  0.000000E+00 ];
d9= [       0.0000000E+00 -1.052755E-08  0.000000E+00 ];

I0=find(X <0);
if ~isempty(I0)
    i=1;
    T(I0)=d0(i) + d1(i)*X(I0) + d2(i)*X(I0).^2 + d3(i)*X(I0).^3 + d4(i)*X(I0).^4 + d5(i)*X(I0).^5 + ...
        d6(i)*X(I0).^6 + d7(i)*X(I0).^7 + d8(i)*X(I0).^8 + d9(i)*X(I0).^9;
end

I0=find(X >=0 & X <= 20.644);
if ~isempty(I0)
    i=2;
    T(I0)=d0(i) + d1(i)*X(I0) + d2(i)*X(I0).^2 + d3(i)*X(I0).^3 + d4(i)*X(I0).^4 + d5(i)*X(I0).^5 + ...
        d6(i)*X(I0).^6 + d7(i)*X(I0).^7 + d8(i)*X(I0).^8 + d9(i)*X(I0).^9;
end

I0=find(X > 20.644);
if ~isempty(I0)
    i=3;
    T(I0)=d0(i) + d1(i)*X(I0) + d2(i)*X(I0).^2 + d3(i)*X(I0).^3 + d4(i)*X(I0).^4 + d5(i)*X(I0).^5 + ...
        d6(i)*X(I0).^6 + d7(i)*X(I0).^7 + d8(i)*X(I0).^8 + d9(i)*X(I0).^9;
end





