const SLEEP_TIME_MS = 2000;

function removeLastPassErrors() {
    const elem = document.querySelector('.lpiframeoverlay');
    if (elem) {
        elem.remove();
    }

    // Remove spacing element that lastpass creates
    document.querySelectorAll('[id^=lptopspacer]').forEach(k => k.remove());
}

function main() {
    removeLastPassErrors();
    setInterval(removeLastPassErrors, SLEEP_TIME_MS);
}

main()
