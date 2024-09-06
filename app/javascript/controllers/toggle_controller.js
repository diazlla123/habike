import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["postedBikes", "purchasedBikes", "postedButton", "purchasedButton"]

  connect() {
    console.log("hi mom!")
  }

  displayPosted() {
    this.postedBikesTarget.classList.remove("d-none");
    this.purchasedBikesTarget.classList.add("d-none");
    this.postedButtonTarget.classList.add("active");
    this.purchasedButtonTarget.classList.remove("active");
  }

  displayPurchased() {
    this.purchasedBikesTarget.classList.remove("d-none")
    this.postedBikesTarget.classList.add("d-none");
    this.postedButtonTarget.classList.remove("active");
    this.purchasedButtonTarget.classList.add("active");
  }
}
