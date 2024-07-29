// app/javascript/packs/application.js
import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import { Turbo } from "@hotwired/turbo-rails"; // 古いturbo-railsの代わりに新しいturbo-rails

Rails.start();
Turbolinks.start();
