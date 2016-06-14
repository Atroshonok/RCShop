function checkEnteredData(inputID) {
	var pattern = null;

	switch (inputID) {
	case 'login':
		pattern = new RegExp('^[a-zA-Z0-9]{6,45}$', '');
		break;

	case 'password':
		pattern = new RegExp('^[a-zA-Z0-9]{6,45}$', '');
		break;

	case 'email':
		pattern = new RegExp('^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\\.[a-zA-Z]+$', '');
		break;

	case 'firstName':
		pattern = new RegExp('^[a-zA-Zа-яА-ЯёЁ ]+$', '');
		break;

	case 'lastName':
		pattern = new RegExp('^[a-zA-Zа-яА-ЯёЁ ]+$', '');
		break;

	case 'age':
		pattern = new RegExp('^[0-9]{0,3}$', '');
		break;

	}

	inputStr = document.getElementById(inputID + 'Data').value;

	if (pattern.test(inputStr)) {
		document.getElementById(inputID).style.color = 'green';
	} else {
		document.getElementById(inputID).style.color = 'red';
	}
}