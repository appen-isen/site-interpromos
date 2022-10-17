/*******************************************************************************
Creation Date:  2022-10-13
Author:         Maxence Laurent <nano0@duck.com>
Author:         Youn Mélois <youn@melois.dev>
Description:    Creates the database tables and relations.
Usage:          psql -U postgres -d interpromos -a -f data.sql
                https://stackoverflow.com/a/23992045/12619942
*******************************************************************************/

DELETE FROM sports;
DELETE FROM users;

-- Populate sports table
ALTER SEQUENCE sports_id_seq RESTART;
INSERT INTO sports ("id", "name") VALUES
('1', 'Basket'),
('2', 'Handball'),
('3', 'Badminton1'),
('4', 'Badminton2'),
('5', 'Volley'),
('6', 'Futsal'),
('7', 'Beer&Run');

-- Populate users table
ALTER SEQUENCE users_id_seq RESTART;
INSERT INTO users ("name", "email", "password_hash") VALUES
('Appen', 'appenisen@proton.me', '$2y$10$5xFOYw3o0c5Py.mNpOHSl.WiNdWRvxbNPLEhr.9/wZzo7.LL0OEl6');

-- Populate teams table
ALTER SEQUENCE teams_id_seq RESTART;
INSERT INTO teams ("id", "name") VALUES
('1', 'A1: Mater Tua'),
('2', 'A1: Mater Tua 1'),
('3', 'A1: Mater Tua 2'),
('4', 'A1: Mater Tua 3'),
('5', 'A1: Mater Tua 4'),
('6', 'A1: Mater Tua 5'),
('7', 'A2: FC Fouche'),
('8', 'A2: FC Fouche 1'),
('9', 'A2: FC Fouche 2'),
('10', 'A2: FC Fouche 3'),
('11', 'A2: As du volant'),
('12', 'A2: A2 Grammes'),
('13', 'A2: FC A2 Grammes'),
('14', 'A3: Fun'),
('15', 'A3: Fun 1'),
('16', 'A3: Fun 2'),
('17', 'A3: Fun 3'),
('18', 'A3: Fun 4'),
('19', 'A3: Fun 5'),
('20', 'A3: SANSFACON'),
('21', 'A4: BROS'),
('22', 'A4: Olympique Brechi'),
('23', 'A4: Olympique Brechi2'),
('24', 'A4: Team Vickings'),
('25', 'A4: JayJay Menuou''s Team'),
('26', 'A5: RUFTEAM'),
('27', 'Perm: Les fous furieux'),
('28', 'Perm: Les mentors'),
('29', 'Perm: Les mentors 1'),
('30', 'Perm: Les mentors encore');

-- Populate matches table
ALTER SEQUENCE matches_id_seq RESTART;
INSERT INTO matches ("sport_id", "type", "date") VALUES
('6', '0', '2022-10-17T19:10'),
('6', '7', '2022-10-17T19:19'),
('6', '0', '2022-10-17T19:28'),
('6', '7', '2022-10-17T19:37'),
('6', '0', '2022-10-17T19:46'),
('6', '7', '2022-10-17T19:55'),
('6', '0', '2022-10-17T20:04'),
('6', '7', '2022-10-17T20:13'),
('6', '0', '2022-10-17T20:22'),
('6', '7', '2022-10-17T20:31'),
('6', '0', '2022-10-17T20:40'),
('6', '7', '2022-10-17T20:49'),
('6', '0', '2022-10-17T20:58'),
('6', '7', '2022-10-17T21:07'),
('6', '0', '2022-10-17T21:16'),
('6', '7', '2022-10-17T21:25'),
('6', '0', '2022-10-17T21:34'),
('6', '7', '2022-10-17T21:43'),
('6', '0', '2022-10-17T21:52'),
('6', '7', '2022-10-17T22:01'),

('1', '7', '2022-10-17T22:15'),
('1', '0', '2022-10-17T22:28'),
('1', '7', '2022-10-17T22:40'),
('1', '0', '2022-10-17T22:52'),
('1', '7', '2022-10-18T18:25'),
('1', '0', '2022-10-18T18:36'),
('1', '0', '2022-10-18T18:47'),
('1', '0', '2022-10-18T18:58'),
('1', '0', '2022-10-18T19:09'),

('2', '0', '2022-10-18T19:50'),
('2', '7', '2022-10-18T20:02'),
('2', '0', '2022-10-18T20:14'),
('2', '7', '2022-10-18T20:26'),
('2', '0', '2022-10-18T20:38'),
('2', '7', '2022-10-18T20:50'),
('2', '0', '2022-10-18T21:02'),
('2', '0', '2022-10-18T21:14'),
('2', '0', '2022-10-18T21:26'),

('5', '0', '2022-10-18T22:14'),
('5', '7', '2022-10-18T22:14'),
('5', '0', '2022-10-18T22:26'),
('5', '7', '2022-10-18T22:26'),
('5', '0', '2022-10-18T22:38'),
('5', '7', '2022-10-18T22:38'),
('5', '0', '2022-10-18T22:50'),
('5', '7', '2022-10-18T22:50'),
('5', '0', '2022-10-18T23:02'),
('5', '7', '2022-10-18T23:02'),
('5', '0', '2022-10-18T23:14'),
('5', '7', '2022-10-18T23:14'),

('3', '6', '2022-10-17T18:25'),
('3', '6', '2022-10-17T18:25'),
('4', '6', '2022-10-17T18:25'),
('4', '6', '2022-10-17T18:25'),
('3', '5', '2022-10-17T18:25'),
('3', '5', '2022-10-17T18:25'),
('4', '5', '2022-10-17T18:35'),
('4', '5', '2022-10-17T18:35');

-- Populate participations table
ALTER SEQUENCE participations_id_seq RESTART;
INSERT INTO participations ("match_id", "team_id") VALUES
('1', '3'),
('1', '12'),
('2', '24'),
('2', '28'),
('3', '22'),
('3', '25'),
('4', '14'),
('4', '1'),
('5', '16'),
('5', '12'),
('6', '24'),
('6', '7'),
('7', '22'),
('7', '16'),
('8', '14'),
('8', '7'),
('9', '12'),
('9', '25'),
('10', '1'),
('10', '24'),
('11', '22'),
('11', '3'),
('12', '28'),
('12', '14'),
('13', '22'),
('13', '12'),
('14', '14'),
('14', '24'),
('15', '25'),
('15', '16'),
('16', '1'),
('16', '7'),
('17', '25'),
('17', '3'),
('18', '1'),
('18', '28'),
('19', '16'),
('19', '3'),
('20', '7'),
('20', '28'),

('21', '22'),
('21', '7'),
('22', '14'),
('22', '1'),
('23', '7'),
('23', '16'),
('24', '12'),
('24', '25'),
('25', '22'),
('25', '16'),
('26', '12'),
('26', '1'),
('27', '12'),
('27', '14'),
('28', '25'),
('28', '1'),
('29', '14'),
('29', '25'),

('30', '7'),
('30', '14'),
('31', '12'),
('31', '1'),
('32', '22'),
('32', '3'),
('33', '25'),
('33', '12'),
('34', '7'),
('34', '3'),
('35', '1'),
('35', '25'),
('36', '7'),
('36', '22'),
('37', '14'),
('37', '3'),
('38', '14'),
('38', '22'),

('39', '22'),
('39', '12'),
('40', '1'),
('40', '24'),
('41', '3'),
('41', '16'),
('42', '14'),
('42', '7'),
('43', '16'),
('43', '22'),
('44', '1'),
('44', '7'),
('45', '12'),
('45', '3'),
('46', '14'),
('46', '24'),
('47', '22'),
('47', '3'),
('48', '1'),
('48', '14'),
('49', '12'),
('49', '16'),
('50', '7'),
('50', '24'),

('51', '18'),
('51', '2'),
('52', '4'),
('52', '9'),
('53', '6'),
('53', '16'),
('54', '10'),
('54', '23'),
('55', '11'),
('55', '22'),
('56', '20'),
('56', '3'),
('57', '26'),
('57', '27'),
('58', '8'),
('58', '15');
