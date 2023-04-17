local Translations = {
    error = {
        not_online = 'Spelare inte online',
        wrong_format = 'Felaktigt format',
        missing_args = 'Alla argument har inte fyllts i (x, y, z)',
        missing_args2 = 'Alla argument måste fyllas i!',
        no_access = 'Ingen åtkomst till denna kommando',
        company_too_poor = 'Din arbetsgivare är pank',
        item_not_exist = 'Föremålet finns inte',
        too_heavy = 'Inventarie för fullt',
        location_not_exist = 'Platsen finns inte',
        duplicate_license = 'Duplicerad Rockstar-licens hittades',
        no_valid_license  = 'Ingen giltig Rockstar-licens hittades',
        not_whitelisted = 'Du är inte whitelistad för denna server',
        server_already_open = 'Servern är redan öppen',
        server_already_closed = 'Servern är redan stängd',
        no_permission = 'Du har inte behörighet för detta..',
        no_waypoint = 'Ingen vägpunkt satt.',
        tp_error = 'Fel vid teleportering.',
        connecting_database_error = 'Ett databasfel inträffade när servern anslöt. (Är SQL-servern på?)',
        connecting_database_timeout = 'Anslutning till databasen löpte ut. (Är SQL-servern på?)',
    },
    success = {
        server_opened = 'Servern har öppnats',
        server_closed = 'Servern har stängts',
        teleported_waypoint = 'Teleporterad till vägpunkt.',
    },
    info = {
        received_paycheck = 'Du har fått din lönecheck på SEK%{value}',
        job_info = 'Jobb: %{value} | Grad: %{value2} | Tjänst: %{value3}',
        gang_info = 'Gäng: %{value} | Grad: %{value2}',
        on_duty = 'Du är nu i tjänst!',
        off_duty = 'Du är nu ur tjänst!',
        checking_ban = 'Hej %s. Vi kontrollerar om du är bannad.',
        join_server = 'Välkommen %s till {Server Namn}.',
        checking_whitelisted = 'Hej %s. Vi kontrollerar din tillåtlighet.' --AI
        exploit_banned = 'Du har blivit bannad för fusk. Kolla vår Discord för mer information: %{discord}', --AI
        exploit_dropped = 'Du har blivit sparkad för exploatering', --AI
    },
    command = {
        tp = {
            help = 'TP Till spelare eller koordinater (Endast Admin)', ---------------------------------------------------------------------------
            params = {
                x = { name = 'id/x', help = 'ID för spelare eller X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP Till markör (Endast Admin)' },
        togglepvp = { help = 'Toggla PVP på servern (Endast Admin)' },
        addpermission = {
            help = 'Ge spelare behörigheter (Endast Gud)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                permission = { name = 'permission', help = 'Behörighetsnivå' }, --AI
            },
        },
        removepermission = {
            help = 'Ta bort spelarbehörigheter (Endast Gud)',
            params = {
                id = { name = 'id', help = 'Spelar-ID' },
                permission = { name = 'permission', help = 'Behörighetsnivå' }, --AI
            },
        },
        openserver = { help = 'Öppna servern för alla (Endast Admin)' },
        closeserver = {
            help = 'Stäng servern för personer utan behörighet (Endast Admin)',
            params = {
                reason = { name = 'reason', help = 'Anledning till stängning (valfritt)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check Your Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'sv' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
