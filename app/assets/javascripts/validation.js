

function validateForm() {

    var x = document.getElementById("facility_name").val;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
}