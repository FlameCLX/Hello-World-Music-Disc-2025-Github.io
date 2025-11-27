(function (window) {
    const scriptData = Object.assign({}, Array.prototype.slice.call(document.scripts).pop().dataset);

    const nonMeasurableUrl = scriptData['impTagUrlVblNonMeasurable'];
    const measurableUrl = scriptData['impTagUrlVblMeasurable'];
    const viewableUrl = scriptData['impTagUrlVblViewable'];

    const reports_sent = {};
    reports_sent[nonMeasurableUrl] = false;
    reports_sent[measurableUrl] = false;
    reports_sent[viewableUrl] = false;

    function sendViewReport(url) {
        if (!reports_sent[url]) {
            reports_sent[url] = true;
            window.fetch(url, {mode: "no-cors", keepalive: true});
        }
    }

    // No support.
    if (typeof window.IntersectionObserver !== "function") {
        sendViewReport(nonMeasurableUrl);
        return;
    } else {
        sendViewReport(measurableUrl);
    }

    // Run intersection observer until view requirements are fulfilled.
    let timeout;
    const MIN_RATIO = 0.5;
    const MIN_TIME = 1000;
    const observer = new IntersectionObserver(function (entries) {
        if (entries[0].intersectionRatio >= MIN_RATIO) {
            timeout = timeout || setTimeout(function () {
                sendViewReport(viewableUrl);
                observer.disconnect();
            }, MIN_TIME);
        } else {
            timeout = clearTimeout(timeout);
        }
    }, {
        threshold: [0, MIN_RATIO, 1],
    });
    observer.observe(document.body);

}(window));
