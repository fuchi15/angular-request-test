'use strict';

describe('myApp.hoge module', function() {
  beforeEach(module('myApp.hoge'));

  describe('hoge controller', function(){

    it('should ....', inject(function($controller) {
      //spec body
      var hogeCtrl = $controller('');
      expect(hogeCtrl).toBeDefined();
    }));

  });
});
