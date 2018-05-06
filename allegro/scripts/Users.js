class Users {
    constructor() {
        this.users = [];
    }

    setUsers(users) {
        this.users = [];
        for (var i = 0; i < users.length; i++) {
            var user = users[i];



            var newUser = new User(
                user.user_ID,
                user.first_name,
                user.surname,
                user.login,
                user.email,
                user.email_outdated,
                user.tel1,
                user.tel2,
                user.NIP,
                user.address_ID
            );
            console.log(newUser);
            this.users.push(newUser);
        }
    }

    getHtml() {
        var html = '<table><caption><h4>Konta prywatne i firmowe (konta prywatne nie posiadają numeru NIP)</h4></caption>' +
            '<tr><th>ID</th><th>Imię</th><th>Nazwisko</th><th>Login</th></th><th>Email</th><th>Nieaktualny email</th>' +
            '<th>Tel1</th><th>Tel2</th><th>NIP</th><th>ID adresu</th></tr>';
        for (var i = 0; i < this.users.length; i++) {
            var user = this.users[i];
            html += '<tr><td>' + user.user_ID
                + '</td><td>' + user.first_name
                + '</td><td>' + user.surname
                + '</td><td>' + user.login
                + '</td><td>' + user.email
                + '</td><td>' + (user.email_outdated === '1' ? 'tak' : '-')
                + '</td><td>' + user.tel1
                + '</td><td>' + user.tel2
                + '</td><td>' + user.NIP
                + '</td><td>' + user.address_ID
                + '</td></tr>'
        }

        html += '</table>';
        return html;
    }
}