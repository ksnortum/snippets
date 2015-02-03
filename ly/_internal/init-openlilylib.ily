% Make general openLilyLib utilities available to any library.
% See TODO: DOC for more information
% This file is part of the openLilyLib library infrastructure
% ... TOBEDONE ...
%
% This file initializes openLilyLib

#(ly:set-option 'relative-includes #t)

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Common functionality
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Version predicates to execute code for specific LilyPond versions
\include "utilities/lilypond-version-predicates.ily"
% Helpers for handling Scheme association lists
\include "utilities/alist-access.ily"
% Get current file name
\include "utilities/this-file.ily"

% logging capabilities with different log levels
\include "logging.ily"

% Set variables for root path and Scheme module path
\include "root-path.ily"

% Load functionality to load and manage modules
\include "module-handling.ily"

% Common option handling
\include "options.ily"


% Flag used to include the library only once
#(define openlilylib-loaded #t)

% Welcome message.
% This is a default ly:message because otherwise we'd have to mess around with
% loglevels. This shouldn't be logged anyway.

#(ly:message "\nopenLilyLib: library infrastructure successfully loaded.\n\n")