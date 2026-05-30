const cart = [];

function showPage(pageId) {
  document.querySelectorAll('.page').forEach(page => page.classList.remove('active'));
  document.getElementById(pageId).classList.add('active');
}

function addToCart(name, price) {
  cart.push({ name, price });
  renderCart();
  alert(`${name} added to cart.`);
}

function renderCart() {
  const cartItems = document.getElementById('cartItems');
  const total = document.getElementById('total');
  cartItems.innerHTML = '';
  let sum = 0;

  cart.forEach(item => {
    sum += item.price;
    const li = document.createElement('li');
    li.textContent = `${item.name} - $${item.price}`;
    cartItems.appendChild(li);
  });

  total.textContent = sum.toFixed(2);
}

function checkout() {
  if (cart.length === 0) {
    alert('Cart is empty.');
    return;
  }

  const kdsOrders = document.getElementById('kdsOrders');
  kdsOrders.innerHTML = `<strong>New Order:</strong><br>${cart.map(item => item.name).join('<br>')}`;
  alert('Payment successful. Order sent to KDS.');
}

function reserveTable(event) {
  event.preventDefault();
  const name = document.getElementById('resName').value;
  const date = document.getElementById('resDate').value;
  const time = document.getElementById('resTime').value;
  const guests = document.getElementById('resGuests').value;

  document.getElementById('reservationResult').textContent =
    `Reservation confirmed for ${name}: ${guests} guest(s) on ${date} at ${time}.`;
}
