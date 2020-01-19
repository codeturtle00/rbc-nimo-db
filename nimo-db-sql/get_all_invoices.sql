-- This is a simple demostration of pulling a client's invoices
-- to a sql table.
set search_path to nimodb;
drop table if exists all_invoices cascade;

-- This table gets all invoices from a client
create table all_invoices(
    invoice_id integer primary key,
    client_id integer not null references Client,
    partner_id integer not null references Partner,
    amount float not null,
    due_date date not null
);

insert into all_invoices
select *
from Invoice
where client_id = 1;