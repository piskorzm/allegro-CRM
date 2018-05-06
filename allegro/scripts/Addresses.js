class Addresses {
    constructor() {
        this.addresses = [];
    }

    setAddresses(addresses) {
        this.addresses = [];
        for (var i = 0; i < addresses.length; i++) {
            var address = addresses[i];

            var newAddress = new Address(
                address.address_ID,
                address.postcode,
                address.city,
                address.street,
                address.house_no,
                address.flat_no
            );
            this.addresses.push(newAddress);
        }
    }

    getHtml() {
        var html = '<table><caption><h4>Adresy</h4></caption>' +
            '<tr><th>ID</th><th>Kod pocztowy</th><th>Miasto</th><th>Ulica</th><th>Nr domu</th><th>Nr lokalu</th></tr>';
        for (var i = 0; i < this.addresses.length; i++) {
            var address = this.addresses[i];
            html += '<tr><td>' + address.address_ID
                + '</td><td>' + address.postcode
                + '</td><td>' + address.city
                + '</td><td>' + address.street
                + '</td><td>' + address.house_no
                + '</td><td>' + (address.flat_no > 0 ? address.flat_no : '-')
                + '</td></tr>'
        }

        html += '</table>';
        return html;
    }
}