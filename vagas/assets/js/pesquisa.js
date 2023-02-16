function aplicaFiltroCards() {
    var input, filter, cards, cardContainer, title, i;
    input = document.getElementById("filtroCards");
    filter = input.value.toUpperCase();
    cardContainer = document.getElementById("containerCards");
    cards = cardContainer.getElementsByClassName("card");
    for (i = 0; i < cards.length; i++) {
        title = cards[i].querySelector(".card-body");
        if (title.innerText.toUpperCase().indexOf(filter) > -1) {
            cards[i].style.display = "";
            input.scrollIntoView({ behavior: "smooth" })
            
        } else {
            cards[i].style.display = "none";
            cardContainer.scrollIntoView({ behavior: "smooth" })
        }
    }
}