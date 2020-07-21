const showinfo = response => {
    let str = response;
    let strs = str.split("@");
    document.getElementById('pic-planet').innerHTML = `<img src="../assets/img/${strs[2]}" alt="${strs[0]}" height="160">`;
    document.getElementById('inf-planet').innerHTML = `<p>${strs[1]}</p>`;
}

const loadsun = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_1",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadmercury = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_2",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadvenus = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_3",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadearth = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_4",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadmars = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_5",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadjupiter = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_6",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadsaturn = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_7",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loaduranus = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_8",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}

const loadneptune = () => {
    $.ajax({
        type: 'post',
        data: {
            id: "TS_9",
        },
        url: '../process/loadsun.php',
        
        success: response => {
            showinfo(response);
        }
    });
}