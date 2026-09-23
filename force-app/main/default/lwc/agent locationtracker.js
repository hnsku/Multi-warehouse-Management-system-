import { LightningElement, track } from 'lwc';

export default class AgentLocationTracker extends LightningElement {
    @track latitude;
    @track longitude;
    @track visitDuration = 0;
    timer;

    connectedCallback() {
        this.getLocation();
        this.startTimer();
    }
    getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(pos => {
                this.latitude = pos.coords.latitude;
                this.longitude = pos.coords.longitude;
            });
        }
    }
    startTimer() {
        this.timer = setInterval(() => { this.visitDuration++; }, 1000);
    }
    get formattedDuration() {
        return `${Math.floor(this.visitDuration/60)}m ${this.visitDuration%60}s`;
    }
    disconnectedCallback() {
        clearInterval(this.timer);
    }
}
