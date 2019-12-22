import { Socket } from "phoenix";
import LiveSocket from "phoenix_live_view";
import "../css/app.css";

let liveSocket = new LiveSocket("/live", Socket);
liveSocket.connect();
