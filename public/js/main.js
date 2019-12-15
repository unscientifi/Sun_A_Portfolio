
const myVM = (() => {
    let userButtons = document.querySelectorAll('.u-link'),
        lightbox = document.querySelector('.lightbox');


    function parseUserData(work) { 
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');

        let workContent = `
            
        <h3>${work.Category}</h3>
        <p></p>
        <h4>${work.Description}</h4>
        <p></p>
        <p>${work.Information}</p>
        <p>${work.Collaborate}</p>
        <video controls src="images/${work.Video}" width="80%"></video>
            `;

        console.log(workContent);

        targetDiv.innerHTML = workContent;
        targetImg.src = work.imgsrc;

        lightbox.classList.add('show-lb');
    }

    function getUserData(event) {
        event.preventDefault(); 
        
        let imgSrc = this.previousElementSibling.getAttribute('src');
        let url = `/users/${this.getAttribute('href')}`;  

        fetch(url) 
            .then(res => res.json())  
            .then (data => {
                console.log("my database result is:", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });

    }

    userButtons.forEach(button => button.addEventListener('click', getUserData));
    lightbox.querySelector('.close').addEventListener('click', function () {
        lightbox.classList.remove('show-lb');
    })
})();