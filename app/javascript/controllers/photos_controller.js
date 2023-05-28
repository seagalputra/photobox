import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static classes = ["selected"];

  select(event) {
    const button = event.currentTarget;
    const checkIcon = button.querySelector("#check-icon");
    const photoContainer = button.parentElement;

    ["border-0", "bg-blue-500"].forEach((klass) =>
      button.classList.toggle(klass)
    );
    photoContainer.classList.toggle(this.selectedClass);
    checkIcon.classList.toggle("hidden");
  }
}
