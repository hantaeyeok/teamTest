// listing vars here so they're in the global scope
var cards, nCards, cover, openContent, openContentText, pageIsOpen = false,
    openContentImage, closeContent, windowWidth, windowHeight, currentCard;

// initiate the process
init();

function init() {
  resize();
  selectElements();
  attachListeners();
}

// select all the elements in the DOM that are going to be used
function selectElements() {
  cards = document.getElementsByClassName('card'),
  nCards = cards.length,
  cover = document.getElementById('cover'),
  openContent = document.getElementById('open-content'),
  openContentText = document.getElementById('open-content-text'),
  openContentImage = document.getElementById('open-content-image')
  closeContent = document.getElementById('close-content');
}

/* Attaching three event listeners here:
  - a click event listener for each card
  - a click event listener to the close button
  - a resize event listener on the window
*/
function attachListeners() {
  for (var i = 0; i < nCards; i++) {
    attachListenerToCard(i);
  }
  closeContent.addEventListener('click', onCloseClick);
  window.addEventListener('resize', resize);
}

function attachListenerToCard(i) {
  cards[i].addEventListener('click', function(e) {
    var card = getCardElement(e.target);
    onCardClick(card, i);
  })
}

/* When a card is clicked */
function onCardClick(card, i) {
  // set the current card
  currentCard = card;
  // add the 'clicked' class to the card, so it animates out
  currentCard.className += ' clicked';
  // animate the card 'cover' after a 500ms delay
  setTimeout(function() {animateCoverUp(currentCard)}, 500);
  // animate out the other cards
  animateOtherCards(currentCard, true);
  // add the open class to the page content
  openContent.className += ' open';
}

/*
* This effect is created by taking a separate 'cover' div, placing
* it in the same position as the clicked card, and animating it to
* become the background of the opened 'page'.
* It looks like the card itself is animating in to the background,
* but doing it this way is more performant (because the cover div is
* absolutely positioned and has no children), and there's just less
* having to deal with z-index and other elements in the card
*/
function animateCoverUp(card) {
  // get the position of the clicked card
  var cardPosition = card.getBoundingClientRect();
  // get the style of the clicked card
  var cardStyle = getComputedStyle(card);
  setCoverPosition(cardPosition);
  setCoverColor(cardStyle);
  scaleCoverToFillWindow(cardPosition);
  
  // Extract the number from the card's color class name
  var cardColorClass = card.classList[1]; // e.g., card-color-0
  var paragraphText;
  var number = parseInt(cardColorClass.split('-')[2]); // Extract number from class name
  switch(number) {
    case 0:
      paragraphText=
    '<div class="opentext">' +
    '<p>우리 속초시는 산,바다,호수,온천 등 천혜의 관광자원을 고루 갖춘 세계적인 관광휴양도시입니다. 동서․동해고속도로의 준공, 쿠르즈 관광선의 취항과</p>' +
    '<p>동서고속화철도 건설 확정 등으로 무한한 발전 가능성과 풍부한 잠재력을 가진 국내 제일의 관광도시입니다.</p>' +
    '<p>또한, 설악산을 중심으로 형성된 산촌문화와 동해바다를 경영하면서 구체화된 어촌문화, 그리고 한국전쟁이후 피난민의 대거유입과 정착으로 형성된</p>' +
    '<p>아바이마을로 대표되는 실향민문화가 공존하는 독특한 향토문화를 간직한 문화의 도시이기도 합니다.</p>' +
    '<p>속초시립박물관은 속초가 간직하고 있는 독특한 민속문화를 두루 관람하면서, 향토민속문화를 손수 체험 할 수 있는 문화체험관광지로 조성되어 있습니다.</p>' +
    '<p>비록 온라인상에 박물관이 갖고 있는 전반적인 내용을 소개드리기는 어려우나 앞으로 폭넓고 깊이 있는 속초의 역사와 문화에 관한 정보를 제공해 드릴 것을</p>' +
    '<p>네티즌 여러분께 약속드립니다.</p>' +
    '<p>속초시립박물관 홈페이지가 여러분의 즐겁고 유익한 여행에 도움이 되기를 바라며 궁금하신 사항이나, 좋은 의견을 남겨 주시면 정성껏 알려 드리고 박물관</p>' +
    '<p>운영에도 적극 반영하겠습니다.<br>감사합니다.</p>' +
    '</div>';
      break;
    case 1:
      paragraphText = paragraphText1;
      break;
    case 2:
      paragraphText = paragraphText2;
      break;
    case 3:
      paragraphText = paragraphText3;
      break;
    // Add more cases if needed
  }

  // update the content of the opened page
  openContentText.innerHTML = '<h1>' + card.children[2].textContent + '</h1>' + paragraphText;
  openContentImage.src = card.children[1].src;

  setTimeout(function() {
    // update the scroll position to 0 (so it is at the top of the 'opened' page)
    window.scroll(0, 0);
    // set page to open
    pageIsOpen = true;
  }, 300);
}
var paragraphText0 = 
'<p>안녕하세요 속초박물관입니다</p>';
var paragraphText1 = 
'<p>안녕하세요 속초박물관입니다1</p>';
var paragraphText2 = 
'<p>안녕하세요 속초박물관입니다2</p>';
var paragraphText3 = 
'<p>안녕하세요 속초박물관입니다3</p>';

function animateCoverBack(card) {
  var cardPosition = card.getBoundingClientRect();
  // the original card may be in a different position, because of scrolling, so the cover position needs to be reset before scaling back down
  setCoverPosition(cardPosition);
  scaleCoverToFillWindow(cardPosition);
  // animate scale back to the card size and position
  cover.style.transform = 'scaleX('+1+') scaleY('+1+') translate3d('+(0)+'px, '+(0)+'px, 0px)';
  setTimeout(function() {
    // set content back to empty
    openContentText.innerHTML = '';
    openContentImage.src = '';
    // style the cover to 0x0 so it is hidden
    cover.style.width = '0px';
    cover.style.height = '0px';
    pageIsOpen = false;
    // remove the clicked class so the card animates back in
    currentCard.className = currentCard.className.replace(' clicked', '');
  }, 301);
}

function setCoverPosition(cardPosition) {
  // style the cover so it is in exactly the same position as the card
  cover.style.left = cardPosition.left + 'px';
  cover.style.top = cardPosition.top + 'px';
  cover.style.width = cardPosition.width + 'px';
  cover.style.height = cardPosition.height + 'px';
}

function setCoverColor(cardStyle) {
  // style the cover to be the same color as the card
  cover.style.backgroundColor = cardStyle.backgroundColor;
}

function scaleCoverToFillWindow(cardPosition) {
  // calculate the scale and position for the card to fill the page,
  var scaleX = windowWidth / cardPosition.width;
  var scaleY = windowHeight / cardPosition.height;
  var offsetX = (windowWidth / 2 - cardPosition.width / 2 - cardPosition.left) / scaleX;
  var offsetY = (windowHeight / 2 - cardPosition.height / 2 - cardPosition.top) / scaleY;
  // set the transform on the cover - it will animate because of the transition set on it in the CSS
  cover.style.transform = 'scaleX('+scaleX+') scaleY('+scaleY+') translate3d('+(offsetX)+'px, '+(offsetY)+'px, 0px)';
}

/* When the close is clicked */
function onCloseClick() {
  // remove the open class so the page content animates out
  openContent.className = openContent.className.replace(' open', '');
  // animate the cover back to the original position card and size
  animateCoverBack(currentCard);
  // animate in other cards
  animateOtherCards(currentCard, false);
}

function animateOtherCards(card, out) {
  var delay = 100;
  for (var i = 0; i < nCards; i++) {
    // animate cards on a stagger, 1 each 100ms
    if (cards[i] === card) continue;
    if (out) animateOutCard(cards[i], delay);
    else animateInCard(cards[i], delay);
    delay += 100;
  }
}

// animations on individual cards (by adding/removing card names)
function animateOutCard(card, delay) {
  setTimeout(function() {
    card.className += ' out';
   }, delay);
}

function animateInCard(card, delay) {
  setTimeout(function() {
    card.className = card.className.replace(' out', '');
  }, delay);
}

// this function searches up the DOM tree until it reaches the card element that has been clicked
function getCardElement(el) {
  if (el.className.indexOf('card ') > -1) return el;
  else return getCardElement(el.parentElement);
}

// resize function - records the window width and height
function resize() {
  if (pageIsOpen) {
    // update position of cover
    var cardPosition = currentCard.getBoundingClientRect();
    setCoverPosition(cardPosition);
    scaleCoverToFillWindow(cardPosition);
  }
  windowWidth = window.innerWidth;
  windowHeight = window.innerHeight;
}

