//
// Kevin's personal .slate.js file.
//

// CONFIGURATION
slate.log("[SLATE] -------------- Begin Loading Javascript Config --------------");
/*
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
var moniMac  = '0';
var monTbolt = '1';

// BINDINGS

*/
slate.bindAll({
/*
    // Grid
    'g:'+leader: slate.operation('grid'),

    'v:'+leader: showHint,

    // Resize Bindings
    // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
    'right:alt': slate.operation('resize', {
        'width': '+10%',
        'height': '+0'
    }),
    'left:alt':  slate.operation('resize', { 'width': '-10%', 'height': '+0' }),
    'up:alt':    slate.operation('resize', { 'width': '+0', 'height': '-10%' }),
    'down:alt':  slate.operation('resize', { 'width': '+0', 'height': '+10%' }),

    'right:ctrl;alt': slate.operation('resize', { 'width': '-10%', 'height': '+0', 'anchor': 'bottom-right' }),
    'left:ctrl;alt':  slate.operation('resize', { 'width': '+10%', 'height': '+0', 'anchor': 'bottom-right' }),
    'up:ctrl;alt':    slate.operation('resize', { 'width': '+0', 'height': '+10%', 'anchor': 'bottom-right' }),
    'down:ctrl;alt':  slate.operation('resize', { 'width': '+0', 'height': '-10%', 'anchor': 'bottom-right' }),

    // Push Bindings - New Hyper Bindings
    // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
    'f:'+hyper: slate.operation('push', { 'direction': 'left',  'style': 'bar-resize:screenSizeX' }),
    'h:'+hyper: slate.operation('push', { 'direction': 'left',  'style': 'bar-resize:screenSizeX/2-3' }),
    'j:'+hyper: slate.operation('push', { 'direction': 'down',  'style': 'bar-resize:screenSizeX/2' }),
    'k:'+hyper: slate.operation('push', { 'direction': 'up',    'style': 'bar-resize:screenSizeX/2-3' }),
    'l:'+hyper: slate.operation('push', { 'direction': 'right', 'style': 'bar-resize:screenSizeX/2' }),

    'pad7'+hyper: slate.operation('corner', { 'direction': 'top-left', 'style': 'resize:screenSizeX/2;screenSizeY/2'}),
    'pad9'+hyper: slate.operation('corner', { 'direction': 'top-right', 'style': 'resize:screenSizeX/2;screenSizeY/2'}),
*/
/*
# Push Bindings - New Hyper Binding# Keypad Bindings
bind pad7:${hyper}   corner  top-left     resize:screenSizeX/2;screenSizeY/2
bind pad8:${hyper}   push    up           bar-resize:screenSizeY/2-3
bind pad9:${hyper}   corner  top-right    resize:screenSizeX/2;screenSizeY/2
bind pad4:${hyper}   push    left         bar-resize:screenSizeX/2-3
bind pad5:${hyper}   push    left         bar-resize:screenSizeX
bind pad6:${hyper}   push    right        bar-resize:screenSizeX/2
bind pad1:${hyper}   corner  bottom-left  resize:screenSizeX/2;screenSizeY/2
bind pad2:${hyper}   push    down         bar-resize:screenSizeY/2
bind pad3:${hyper}   corner  bottom-right resize:screenSizeX/2;screenSizeY/2
*/

/*
# Throw Bindings
bind  left:${hyper}      throw left
bind  right:${hyper}     throw right
*/
    'left:ctrl;shift;alt;cmd': function(win) {
        slate.log('[SLATE] Throwing left!');
        slate.log('[SLATE] ' + win.topLeft().x);
        slate.log('[SLATE] ' + win.topLeft().y);
        slate.log('[SLATE] ' + win.screen().id());
        var x = win.topLeft().x;
        var y = win.topLeft().y;
        success = win.move({ screen: '0' });
        slate.log('[SLATE] ' + win.topLeft().x);
        slate.log('[SLATE] ' + win.topLeft().y);
        slate.log('[SLATE] ' + win.screen().id());
        slate.log('[SLATE] ' + success);
    },

    'right:ctrl;shift;alt;cmd': function(win) {
        slate.log('[SLATE] Throwing right!');
        slate.log('[SLATE] ' + win.topLeft().x);
        slate.log('[SLATE] ' + win.topLeft().y);
        slate.log('[SLATE] ' + win.screen().id());
        var x = win.topLeft().x;
        var y = win.topLeft().y;
        success = win.move({ screen: '1' });
        slate.log('[SLATE] ' + win.topLeft().x);
        slate.log('[SLATE] ' + win.topLeft().y);
        slate.log('[SLATE] ' + win.screen().id());
        slate.log('[SLATE] ' + success);
    }

});


// Test Cases
//slate.source('.slate.test', true);
//slate.source('.slate.test.js', true);

// Log that we're done configuring
slate.log('[SLATE] -------------- Finished Loading Config --------------');
