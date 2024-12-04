document.addEventListener('turbolinks:load', () => {
  const userMenuButton = document.getElementById('user-menu-button');
  const userDropdown = document.getElementById('user-dropdown');

  if (userMenuButton && userDropdown) {
    userMenuButton.addEventListener('click', () => {
      userDropdown.classList.toggle('hidden');
    });

    document.addEventListener('click', (event) => {
      if (!userMenuButton.contains(event.target) && !userDropdown.contains(event.target)) {
        userDropdown.classList.add('hidden');
      }
    });
  }
});