const php_folder_url = 'php/';

function loadFlatAccounts() {
    $.get(php_folder_url + 'get_flat_accounts.php', function (data) {
        var accountsData = JSON.parse(data);
        flatAccounts.setAccounts(accountsData);
        getFlatView();
    });
}

function loadHierarchy() {
    $.get(php_folder_url + 'get_users.php', function (data) {
        var usersData = JSON.parse(data);
        users.setUsers(usersData);
        $.get(php_folder_url + 'get_addresses.php', function (data) {
            var addressesData = JSON.parse(data);
            addresses.setAddresses(addressesData);
        });
        $.get(php_folder_url + 'get_companies.php', function (data) {
            var companiesData = JSON.parse(data);
            companies.setCompanies(companiesData);
            getHierarchyView();
        });
    });
}

function getFlatView() {
    $('#nav').html('<img id="logo" alt="Logo Allegro" height="50px" src="assets/logo.jpg">' +
        '<button onclick="loadHierarchy()">Pokaż obecny stan struktury hierarchicznej</button>' +
        '<button onclick="checkAll()">Zaznacz wszystkie konta</button>' +
        '<button onclick="uncheckAll()">Odznacz wszyskie wszystkie konta</button>' +
        '<button onclick="transferToHierarchy()">Przenieś zaznaczone konta do struktury hierarchicznej</button>');

    $('#content').html(flatAccounts.getHtml());
}
function getHierarchyView() {
    $('#nav').html('<img id="logo" alt="Logo Allegro" height="50px" src="assets/logo.jpg">' +
        '<button onclick="getFlatView()">Pokaż płaską strukturę</button>' +
        '<button onclick="emptyHierarchy()">Wyczyść zawartość struktury hierarchicznej</button>');

    $('#content').html(users.getHtml() + addresses.getHtml() + companies.getHtml());
}

function transferToHierarchy() {
    $.post(php_folder_url + 'transfer_to_hierarchy.php', {accounts: JSON.stringify(flatAccounts.selectedAccounts)}, function (data) {
        console.log(data);
        flatAccounts.selectedAccounts = [];
        loadHierarchy();
    });
}

function uncheckAll() {
    $('input:checkbox').removeAttr('checked');
    flatAccounts.selectedAccounts = [];
}

function checkAll() {
    $('input:checkbox').attr('checked','');
    flatAccounts.selectedAccounts = flatAccounts.accounts.slice();
}

function emptyHierarchy() {
    $.post(php_folder_url + 'empty_hierarchy.php', {}, function () {
        loadHierarchy();
    });
}

