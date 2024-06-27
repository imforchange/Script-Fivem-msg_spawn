window.addEventListener('message', function(event) {
    if (event.data.type === "toggleUI") {
        const display = event.data.display ? 'flex' : 'none';
        document.getElementById('ui').style.display = display;
        if (!event.data.display) {
            document.body.style.background = 'transparent';
        } else {
            document.body.style.background = 'rgba(0, 0, 0, 0.7)';
        }
    }
});

function closeUI() {
    fetch(`https://${GetParentResourceName()}/closeUI`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({})
    });
}
