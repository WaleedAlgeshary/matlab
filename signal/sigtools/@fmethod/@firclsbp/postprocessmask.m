function newA = postprocessmask(this, oldA, units)
%POSTPROCESSMASK - Change the mask according to passband offset value.

%   Copyright 2008 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2008/05/12 21:37:29 $

newA = oldA;

switch(units)
    case 'db'
        gain = this.PassbandOffset;
        newA(3) = oldA(3) + gain;        
        newA(10) = oldA(10) + gain;        
    case {'linear', 'zerophase'}
        gain = convertmagunits(this.PassbandOffset,'db','linear','amplitude');
        newA(3) = oldA(3) + gain - 1;       
        newA(10) = oldA(10) + gain - 1;        
    case 'squared'
        gain = convertmagunits(this.PassbandOffset,'db','linear','amplitude');
        newA(3) = (oldA(3) + gain - 1)^2;
        newA(10) = (oldA(10) + gain - 1)^2 ;
end
newA(4) = newA(3);
newA(11) = newA(10);

% [EOF]

