import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static classes = ["error"];

  openCreateAlbumModal(event) {
    const createAlbumModalContainer = document.querySelector(
      "#create-album-modal"
    );
    createAlbumModalContainer.setAttribute("aria-hidden", "false");
  }

  closeCreateAlbumModal(event) {
    this.element.setAttribute("aria-hidden", "true");
  }

  async createAlbum(event) {
    event.preventDefault();

    const formElm = event.currentTarget;

    const formData = new FormData(formElm);
    const response = await fetch("/albums", {
      method: "POST",
      body: formData,
      credentials: "same-origin",
    });

    const data = await response.json();
    if (!response.ok) {
      for (let [key, errorMessage] of Object.entries(data)) {
        const inputElm = formElm.querySelector(`#album_${key}`);
        inputElm.classList.add(...this.errorClasses);

        const errorElm = formElm.querySelector(`#${key}_error`);
        errorElm.innerText = `${this.capitalize(key)} ${errorMessage[0]}`;
        errorElm.classList.toggle("hidden");
      }
    } else {
      window.location.href = "/";
    }
  }

  capitalize(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
  }
}
