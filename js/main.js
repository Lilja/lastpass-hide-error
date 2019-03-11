const SLEEP_TIME_MS = 2000;

function removeLastPassErrors() {
    const elem = document.querySelector('.lpiframeoverlay');
    if (elem) {
        elem.remove();
    }
}

function main() {
    removeLastPassErrors();
    setInterval(removeLastPassErrors, SLEEP_TIME_MS);
}

main()
