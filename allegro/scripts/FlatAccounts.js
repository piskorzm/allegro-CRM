class FlatAccounts {
    constructor() {
        this.accounts = [];
        this.selectedAccounts = [];
    }

    setAccounts(accounts) {
        for (var i = 0; i < accounts.length; i++) {
            var account = accounts[i];

            var newAccount = new FlatAccount(
                account.ID,
                account.NIP,
                account.first_name,
                account.surname,
                account.company_name,
                account.login,
                account.email,
                account.tel1,
                account.tel2,
                account.postcode,
                account.city,
                account.street,
                account.house_no,
                account.flat_no
            );
            this.accounts.push(newAccount);
        }
    }

    getAccount(login) {
        for (var i = 0; i < this.accounts.length; i++) {
            var account = this.accounts[i];
            if (account.login === login) {
                return account;
            }
        }
    }

    getHtml() {
        var html = '<table><caption><h3>Płaska struktura</h3></caption>' +
            '<tr><th>ID</th><th>NIP</th><th>Imię</th><th>Nazwisko</th><th>Firma</th><th>Login</th></th><th>Email</th>' +
            '<th>Tel1</th><th>Tel2</th><th>Kod pocztowy</th><th>Miasto</th><th>Ulica</th><th>Nr domu</th><th>Nr lokalu</th><th></th></tr>';
        for (var i = 0; i < this.accounts.length; i++) {
            var account = this.accounts[i];
            html += '<tr><td>' + account.ID
                + '</td><td>' + account.NIP
                + '</td><td>' + account.first_name
                + '</td><td>' + account.surname
                + '</td><td>' + account.company_name
                + '</td><td>' + account.login
                + '</td><td>' + account.email
                + '</td><td>' + account.tel1
                + '</td><td>' + account.tel2
                + '</td><td>' + account.postcode
                + '</td><td>' + account.city
                + '</td><td>' + account.street
                + '</td><td>' + account.house_no
                + '</td><td>' + (account.flat_no > 0 ? account.flat_no : '-')
                + '</td><td><input name="' + account.login + '" type="checkbox" onchange="flatAccounts.onCheckboxClick(event)">'
                + '</td></tr>'
        }

        html += '</table>';
        return html;
    }

    onCheckboxClick(event) {
        var target = event.target;
        var login = target.getAttribute('name');
        var account = this.getAccount(login);

        if (target.checked) {
            this.selectedAccounts.push(account);
        } else {
            var account_index = this.selectedAccounts.indexOf(account);
            this.selectedAccounts.splice(account_index, account_index + 1);
        }
    }


}