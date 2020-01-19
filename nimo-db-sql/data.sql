insert into Client values
(1, 'Karen', 'Chen'),
(2, 'Stella', 'Cai'),
(3, 'Jacky', 'Yang'),
(4, 'Alex', 'Shih');

insert into Partner values
(11, 'RBC'),
(22, 'Fido'),
(33, 'Toronto Hydro'),
(44, 'Telus'),
(55, 'Netflix');

insert into Subscription VALUES
(1, 11),
(1, 22),
(1, 33),
(1, 44);

insert into Invoice values
(111, 1, 11, 680.18, '2020-02-16'),
(222, 1, 22, 35.45, '2020-02-19'),
(333, 1, 33, 59.26, '2020-02-09'),
(444, 1, 44, 58.42, '2020-02-18'),
(555, 2, 55, 12.45, '2020-01-31');

insert into Offer values
(
    1111,
    22,
    'FIDO WISHES YOU A HAPPY LUNAR NEW YEAR!',
    'Add 3GB of data for $10/month! Offer ends Jan 31.',
    'For limited time only, add 3GB of data to your plan for $10/month 
    on select plans online or in-store. Catch this deal while you can!'
), 
(
    2222,
    55,
    'Upgrade to Netflix Primium!',
    'Watch in Ultra HD! Upgrade to Premium today!',
    'Watch in Ultra HD! Upgrade to Premium today!'
);
