// Load Elm
import Elm from './Main.elm';
const mountNode = document.getElementById('main');

// Embed Elm app in HTML
Elm.Main.embed(mountNode);
