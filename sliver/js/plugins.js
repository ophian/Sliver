
// usage: log('inside coolFunc', this, arguments);
window.log = function(){
  log.history = log.history || [];   // store logs to an array for reference
  log.history.push(arguments);
  if(this.console) {
      arguments.callee = arguments.callee.caller;
      console.log( Array.prototype.slice.call(arguments) );
  }
};
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();)b[a]=b[a]||c})(window.console=window.console||{});

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
