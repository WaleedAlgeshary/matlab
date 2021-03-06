function examples = getexamples(this)
%GETEXAMPLES   Get the examples.

%   Copyright 2008 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2008/10/31 07:04:57 $

examples = { ...
    {'Design a raised cosine windowed FIR filter of order 8 symbols, ', ...
    '% rolloff factor of 0.50, and 10 samples per symbol.',...
    'h  = fdesign.pulseshaping(8,''Raised Cosine'',''Nsym,Beta'',8,0.50);', ...
    'Hd = design(h);'};...
    };

% [EOF]
