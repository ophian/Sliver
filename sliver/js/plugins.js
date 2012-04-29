// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function f(){ log.history = log.history || []; log.history.push(arguments); if(this.console) { var args = arguments, newarr; try { args.callee = f.caller } catch(e) {}; newarr = [].slice.call(args); if (typeof console.log === 'object') log.apply.call(console.log, console, newarr); else console.log.apply(console, newarr);}};

// make it safe to use console.log always
(function(a){function b(){}for(var c="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),d;!!(d=c.pop());){a[d]=a[d]||b;}})
(function(){try{console.log();return window.console;}catch(a){return (window.console={});}}());


// place any jQuery/helper plugins in here, instead of separate, slower script files.

// Serendipity backend functions - Sliversite used in default_staticpage_backend.tpl
function showConfig(id) {
    if (document.getElementById) {
        dlm = document.getElementById(id);
        if (dlm.style.display == 'none') {
            document.getElementById('option' + id).src = img_minus;
            dlm.style.display = '';
        } else {
            document.getElementById('option' + id).src = img_plus;
            dlm.style.display = 'none';
        }
    }
}

var state='';
function showConfigAll(count) {
    if (document.getElementById) {
        for (i = 1; i <= count; i++) {
            document.getElementById('dlm' + i).style.display = state;
            document.getElementById('optiondlm' + i).src = (state == '' ? img_minus : img_plus);
        }

        if (state == '') {
            document.getElementById('optionall').src = img_minus;
            state = 'none';
        } else {
            document.getElementById('optionall').src = img_plus;
            state = '';
        }
    }
}

function chkAll(frm, arr, mark) {
  for (i = 0; i <= frm.elements.length; i++) {
   try {
     if(frm.elements[i].name == arr) {
       frm.elements[i].checked = mark;
     }
   } catch (err) {}
  }
}
