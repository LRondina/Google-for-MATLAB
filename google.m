function google(varargin)
% GOOGLE prompts Google in your favourite browser and searches for
% the string that you have inputted.
%
% USAGE:
%   Use GOOGLE as you would normally use Google.
%   For example if you want to search for 'how to use google' just type the
%   following in the MATLAB command window:
%
%           GOOGLE How to use google
%
% © 2018 Luca Rondina (<a href="matlab:web('https://github.com/LRondina','-browser')">GitHub</a>)


query = [];
for ii=1:nargin
    if ii == 1
        query = varargin{ii};
    else
        query = [query '+' varargin{ii}];
    end
end

web(['www.google.com/search?q=' query],'-browser')

end

