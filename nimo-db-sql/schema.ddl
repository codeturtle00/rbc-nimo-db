drop schema if exists nimodb cascade;
create schema nimodb;
set search_path to nimodb;

-- A client of RBC
create table Client(
    client_id integer primary key,
    firstname varchar not null,
    lastname varchar not null
);

-- A company that partners up with RBC
create table Partner(
    partner_id integer primary key,
    partner_name varchar not null unique
);

-- A client's subscription with a partner
create table Subscription(
    client_id integer not null,
    partner_id integer not null,
    unique(client_id, partner_id)
);

-- An invoice to an RBC client from a partner
create table Invoice(
    invoice_id integer primary key,
    client_id integer not null references Client,
    partner_id integer not null references Partner,
    amount float not null,
    due_date date not null
);

-- An offer in the 'RBC Offers' section
-- Summary is displayed in the 'RBC Offers' page
-- Title and content are revealed in the Offer Detail pages.
create table Offer(
    offer_id integer primary key,
    partner_id integer not null references Partner,
    title varchar(50) not null,
    summary varchar(150) not null,
    content varchar not null
);