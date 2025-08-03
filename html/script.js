window.addEventListener('message', function (event) {
    const data = event.data;
    if (data.action === "showNotification") {
        const container = document.getElementById("notification-container");

        const note = document.createElement("div");
        note.className = "notification";
        note.innerText = data.message;

        container.appendChild(note);

        setTimeout(() => {
            note.remove();
        }, 5000);
    }
});
