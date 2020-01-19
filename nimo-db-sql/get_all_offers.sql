-- This is a simple demostration of pulling all offers from a 
-- client's subscription to a sql table.
set search_path to nimodb;
drop table if exists all_offers cascade;

-- This table gets all offers for a client
create table all_offers(
    offer_id integer primary key,
    partner_id integer not null references Partner,
    title varchar(50) not null,
    summary varchar(150) not null,
    content varchar not null
);

insert into all_offers
select offer_id, Offer.partner_id, title, summary, content
from Offer join Subscription
on Offer.partner_id = Subscription.partner_id
where client_id = 1;