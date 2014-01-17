//
// Kevin's personal .slate.js file.
//

// CONFIGURATION

slate.configAll({
    'checkDefaultsOnLoad':       true,
    'defaultToCurrentScreen':    true,
    'focusCheckWidthMax':        3000,
    'orderScreensLeftToRight':   true,
    'nudgePercentOf':            'screenSize',
    'resizePercentOf':           'screenSize',
    'secondsBetweenRepeat':      0.1,
    'windowHintsShowIcons':      true,
    'windowHintsSpread':         true
});

// ALIASES

// Miscellaneous
var leader = 'esc;cmd';
var showHint = 'hint AOEUIDHTNSYXFBPKGMCW';
var hyper = 'ctrl;shift;alt;cmd';

// Monitors
var moniMac = "0";
var monTbolt = "1";

// BINDINGS

slate.bindAll({
    // Grid
    'g:'+leader: slate.operation('grid');

    // Resize Bindings
    // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
    'right:alt': S.op('resize', { 'width': '+10%', 'height': '+0' }),
    'left:alt':  S.op('resize', { 'width': '-10%', 'height': '+0' }),
    'up:alt':    S.op('resize', { 'width': '+0', 'height': '-10%' }),
    'down:alt':  S.op('resize', { 'width': '+0', 'height': '+10%' }),

    'right:ctrl;alt': S.op('resize', { 'width': '-10%', 'height': '+0', 'anchor': 'bottom-right' }),
    'left:ctrl;alt':  S.op('resize', { 'width': '+10%', 'height': '+0', 'anchor': 'bottom-right' }),
    'up:ctrl;alt':    S.op('resize', { 'width': '+0', 'height': '+10%', 'anchor': 'bottom-right' }),
    'down:ctrl;alt':  S.op('resize', { 'width': '+0', 'height': '-10%', 'anchor': 'bottom-right' }),
});


// Test Cases
S.src(".slate.test", true);
S.src(".slate.test.js", true);

// Log that we're done configuring
S.log("[SLATE] -------------- Finished Loading Config --------------");
