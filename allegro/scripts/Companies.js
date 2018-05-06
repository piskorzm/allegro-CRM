class Companies {
    constructor() {
        this.companies = [];
    }

    setCompanies(companies) {
        this.companies = [];
        for (var i = 0; i < companies.length; i++) {
            var company = companies[i];

            var newCompany = new Company(
                company.NIP,
                company.company_name
            );
            this.companies.push(newCompany);
        }
    }

    getHtml() {
        var html = '<table><caption><h4>Firmy</h4></caption>' +
            '<tr><th>NIP</th><th>Nazwa Firma</th></tr>';
        for (var i = 0; i < this.companies.length; i++) {
            var company = this.companies[i];
            html += '<tr><td>' + company.NIP
                + '</td><td>' + company.company_name + '</td></tr>';
        }

        html += '</table>';
        return html;
    }
}