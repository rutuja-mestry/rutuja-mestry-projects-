function markAttendance() {
    let name = document.getElementById("name").value;
    if (name.trim() === "") {
        alert("Please enter a name");
        return;
    }

    fetch("/mark_attendance", {
        method: "POST",
        body: new URLSearchParams({ name: name }),
        headers: { "Content-Type": "application/x-www-form-urlencoded" }
    })
    .then(response => response.json())
    .then(data => {
        alert(data.message);
        getAttendance();
        document.getElementById("name").value = "";
    });
}

function getAttendance() {
    fetch("/get_attendance")
    .then(response => response.json())
    .then(data => {
        let list = document.getElementById("attendanceList");
        list.innerHTML = "";
        data.forEach(name => {
            let li = document.createElement("li");
            li.textContent = name;
            list.appendChild(li);
        });
    });
}

window.onload = getAttendance;
