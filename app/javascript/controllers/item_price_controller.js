import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "quantity", "unitPrice", "discount", "totalPrice" ]

  sumTotalPrice() {
    if(!this.quantityTarget.value || !this.unitPriceTarget.value) return;

    this.totalPriceTarget.value = this.quantityTarget.value * this.unitPriceTarget.value - this.discountTarget.value;
  }
}
