set search_path to security;

insert into users(
	login_id, 
	password, 
	first_name, 
	last_name, 
	created_by
) values(
	'superadmin',
	'$2a$10$WHevC/pWCTlpbTpSP6vmN.nUGArX2QVC4QOuIKnDKExEeW5P.FjEK',
	'superadmin',
    	'superadmin',
	'Script'
);