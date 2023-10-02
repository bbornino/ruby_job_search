import { Application } from "@hotwired/stimulus"

//= require jquery
//= require bootstrap

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log('app/js/controllers/application.js Complete')
// RUNS FIRST!