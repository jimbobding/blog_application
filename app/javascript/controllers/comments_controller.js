import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  initialize() {}
  connect() {}
  toggleForm(event) {
    console.log("Toggling form");
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const commentBodyId = event.params["body"];
    const form = document.getElementById(formID);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const commentBody = document.getElementById(commentBodyId);
    commentBody.classList.toggle("d-none");
  }
}
