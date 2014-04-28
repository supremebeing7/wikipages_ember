Wikipages.NewContactController = Ember.ObjectController.extend({
  actions: {
    createContact: function() {
      var model = this.get('model');
      var controller = this;
      model.save()
      .then(function() {
        controller.transitionToRoute('contacts');
      })
      .catch(function(){
        alert("Please fix the problems noted.");
      });
    }
  }
});
