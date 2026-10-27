create table clienti(
    id integer primary key,
    nome varchar(25) not null,
    cognome varchar(25) not null,
    citta varchar(20),
    data_iscrizione date
);
create table conto(
    id integer primary key,
    iban varchar(27) unique not null,
    cliente_id integer references clienti(id),
    tipo VARCHAR(20)
);
create table movimenti(
    id integer primary key,
    conto_id integer references conto(id),
    data date not null,
    importo decimal(12,2) not null,
    descrizione varchar(250)
);