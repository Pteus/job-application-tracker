import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static values = {
        timeout: Number
    }

    connect() {
        if (this.timeoutValue) {
            setTimeout(() => {
                this.dismiss()
            }, this.timeoutValue)
        }
    }

    dismiss() {
        this.element.classList.add("opacity-0", "transition", "duration-700")
        setTimeout(() => this.element.remove(), 700)
    }
}