// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

//= require jquery
//= require datatables



import "../datatables.min.js"


console.log('index.js ready?')
$( document ).ready(function() {
    console.log("index.js ready func")
    new DataTable('#job_site_dt', {
        order: [[4, 'desc']]
    });
})
