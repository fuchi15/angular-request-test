#!/bin/sh

if [ -e app/views/$1 ]; then
    echo "$1は存在します。"
    exit 1

else

mkdir app/views/$1
touch app/views/$1/$1.html
touch app/views/$1/$1.js
touch app/views/$1/$1_test.js

a=`echo $1 | awk '{ print toupper(substr($0, 1, 1)) substr($0, 2, length($0) - 1) }'`
echo "'use strict';

angular.module('myApp.${1}', ['ngRoute'])

.config(['\$routeProvider', function(\$routeProvider) {
  \$routeProvider.when('/${1}', {
    templateUrl: 'views/${1}/${1}.html',
    controller: '${a}Ctrl'
  });
}])

.controller('${a}Ctrl', [function() {

}]);" > app/views/$1/$1.js

echo "'use strict';

describe('myApp.$1 module', function() {
  beforeEach(module('myApp.$1'));

  describe('$1 controller', function(){

    it('should ....', inject(function(\$controller) {
      //spec body
      var $1Ctrl = \$controller('$aCtrl');
      expect($1Ctrl).toBeDefined();
    }));

  });
});" > app/views/$1/$1_test.js

fi
