import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap";

// https://api.themoviedb.org/3/movie/top_rated?api_key=<your_api_key>

Rails.start()
Turbolinks.start()
ActiveStorage.start()
