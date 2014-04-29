var App = Ember.Application.create({
  LOG_TRANSITIONS: true
})

App.Router.map(function(){
  this.resource('specs');
  this.route('about');
});
