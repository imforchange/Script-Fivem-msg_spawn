window.addEventListener('message', function(event) {
    if (event.data.type === "toggleUI") {
        const display = event.data.display ? 'flex' : 'none';
        document.getElementById('ui').style.display = display;
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
