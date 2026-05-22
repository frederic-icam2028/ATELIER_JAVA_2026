document.addEventListener('DOMContentLoaded', function () {
  function closePopup() {
    const existing = document.querySelector('.help-popup');
    if (existing) {
      existing.remove();
    }
  }

  document.body.addEventListener('click', function (event) {
    const icon = event.target.closest('.help-icon');
    if (!icon) {
      closePopup();
      return;
    }

    event.stopPropagation();
    closePopup();

    const popup = document.createElement('div');
    popup.className = 'help-popup';
    popup.innerHTML = icon.dataset.help || 'Aucune aide disponible.';
    document.body.appendChild(popup);

    const rect = icon.getBoundingClientRect();
    const top = window.scrollY + rect.bottom + 8;
    const left = window.scrollX + rect.left;
    popup.style.top = top + 'px';
    popup.style.left = left + 'px';
  });
});
