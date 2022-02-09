// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import {} from 'jquery-ujs';

import 'bootstrap'; 
import 'bootstrap-icons/font/bootstrap-icons.css'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// require("packs/custom")
// require("packs/posts.js")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

