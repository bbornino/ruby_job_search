import { Application } from "@hotwired/stimulus"

//= require jquery
//= require bootstrap

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
import "../jquery-3.7.1.min.js"
console.log('app ready?')