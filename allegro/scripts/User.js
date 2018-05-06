class User {
    constructor(user_ID,
                first_name,
                surname,
                login,
                email,
                email_outdated,
                tel1,
                tel2,
                NIP,
                address_ID
    ) {
        this.user_ID = user_ID;
        this.first_name = first_name;
        this.surname = surname;
        this.login = login;
        this.email = email;
        this.email_outdated = email_outdated;
        this.tel1 = tel1;
        this.tel2 = tel2;
        this.NIP = NIP;
        this.address_ID = address_ID;
    }
}