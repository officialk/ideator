const a=['dGVzdA==','cGFnZXMvaG9tZS5odG1s','bG9jYXRpb24=','R29vZ2xlQXV0aFByb3ZpZGVy','ZGlzcGxheU5hbWU=','ZW1haWw=','c3RyaW5naWZ5','b25sb2Fk','cmV0dXJuIC8iICsgdGhpcyArICIv','YXV0aA==','c2lnbkluV2l0aFBvcHVw','bG9n','dGhlbg==','Y29uc3RydWN0b3I=','ZGF0YQ==','RVJST1I6Og==','aHJlZg==','XihbXiBdKyggK1teIF0rKSspK1teIF19','bmFtZQ==','dWlk'];(function(b,c){const d=function(f){while(--f){b['push'](b['shift']());}};const e=function(){const f={'data':{'key':'cookie','value':'timeout'},'setCookie':function(l,m,n,o){o=o||{};let p=m+'='+n;let q=0x0;for(let r=0x0,s=l['length'];r<s;r++){const t=l[r];p+=';\x20'+t;const u=l[t];l['push'](u);s=l['length'];if(u!==!![]){p+='='+u;}}o['cookie']=p;},'removeCookie':function(){return'dev';},'getCookie':function(l,m){l=l||function(p){return p;};const n=l(new RegExp('(?:^|;\x20)'+m['replace'](/([.$?*|{}()[]\/+^])/g,'$1')+'=([^;]*)'));const o=function(p,q){p(++q);};o(d,c);return n?decodeURIComponent(n[0x1]):undefined;}};const g=function(){const l=new RegExp('\x5cw+\x20*\x5c(\x5c)\x20*{\x5cw+\x20*[\x27|\x22].+[\x27|\x22];?\x20*}');return l['test'](f['removeCookie']['toString']());};f['updateCookie']=g;let j='';const k=f['updateCookie']();if(!k){f['setCookie'](['*'],'counter',0x1);}else if(k){j=f['getCookie'](null,'counter');}else{f['removeCookie']();}};e();}(a,0xbb));const b=function(c,d){c=c-0x0;let e=a[c];if(b['ZSALfR']===undefined){(function(){let g;try{const i=Function('return\x20(function()\x20'+'{}.constructor(\x22return\x20this\x22)(\x20)'+');');g=i();}catch(j){g=window;}const h='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';g['atob']||(g['atob']=function(k){const l=String(k)['replace'](/=+$/,'');let m='';for(let n=0x0,o,p,q=0x0;p=l['charAt'](q++);~p&&(o=n%0x4?o*0x40+p:p,n++%0x4)?m+=String['fromCharCode'](0xff&o>>(-0x2*n&0x6)):0x0){p=h['indexOf'](p);}return m;});}());b['bxGnVz']=function(g){const h=atob(g);let j=[];for(let k=0x0,l=h['length'];k<l;k++){j+='%'+('00'+h['charCodeAt'](k)['toString'](0x10))['slice'](-0x2);}return decodeURIComponent(j);};b['bHafdd']={};b['ZSALfR']=!![];}const f=b['bHafdd'][c];if(f===undefined){const g=function(h){this['WDrYSt']=h;this['uWqmhB']=[0x1,0x0,0x0];this['RIgYvT']=function(){return'newState';};this['eOJLhM']='\x5cw+\x20*\x5c(\x5c)\x20*{\x5cw+\x20*';this['yrbjTq']='[\x27|\x22].+[\x27|\x22];?\x20*}';};g['prototype']['VotRUF']=function(){const h=new RegExp(this['eOJLhM']+this['yrbjTq']);const i=h['test'](this['RIgYvT']['toString']())?--this['uWqmhB'][0x1]:--this['uWqmhB'][0x0];return this['TWJydd'](i);};g['prototype']['TWJydd']=function(h){if(!Boolean(~h)){return h;}return this['wNvVCh'](this['WDrYSt']);};g['prototype']['wNvVCh']=function(h){for(let j=0x0,k=this['uWqmhB']['length'];j<k;j++){this['uWqmhB']['push'](Math['round'](Math['random']()));k=this['uWqmhB']['length'];}return h(this['uWqmhB'][0x0]);};new g(b)['VotRUF']();e=b['bxGnVz'](e);b['bHafdd'][c]=e;}else{e=f;}return e;};const e=function(){let h=!![];return function(i,j){const k=h?function(){if(j){const l=j['apply'](i,arguments);j=null;return l;}}:function(){};h=![];return k;};}();const f=e(this,function(){const h=function(){const i=h[b('0x6')](b('0x1'))()['compile'](b('0xa'));return!i[b('0xd')](f);};return h();});f();window[b('0x0')]=()=>{firebase['initializeApp'](firebaseConfig);let h=JSON['parse'](local(b('0x7')))||{};if(h['id']!=undefined){window[b('0xf')]['href']='pages/home.html';}M['AutoInit']();};const g=()=>{var h=new firebase[(b('0x2'))][(b('0x10'))]();firebase['auth']()[b('0x3')](h)[b('0x5')](i=>{let j=i['user'];var k={};k[b('0x12')]=j[b('0x12')];k[b('0xb')]=j[b('0x11')];k['id']=j[b('0xc')];k['pic']=j['photoURL'];local(b('0x7'),JSON[b('0x13')](k));window['location'][b('0x9')]=b('0xe');})['catch'](function(i){console[b('0x4')](b('0x8'),i);});};
