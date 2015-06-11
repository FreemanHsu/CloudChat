var app = app || {};

(function(){
	'use strict';

	// User Card Model
	// For Menu Profile

	app.usercard = Backbone.Model.extend({

		defaults:{
			nickname: '',
			user_id: null,
			avatar_url: '',

		}

	});

})();