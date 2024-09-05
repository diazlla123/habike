import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["displayedBikes"]

  connect() {
    console.log("hi mom!")
  }

  display() {
    console.log(this.displayedBikesTarget.classList)
    console.log(this.displayedBikesTarget.childrenNodes)
    this.displayedBikesTarget.classList.toggle("active");
  }
}
