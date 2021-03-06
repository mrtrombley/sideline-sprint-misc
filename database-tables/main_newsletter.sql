CREATE TABLE main_newsletter (
    email text PRIMARY KEY,
    status varchar(256) NOT NULL,
    unique_id varchar(256) NOT NULL,
    legacy_unique_id varchar(256),
    referral_id varchar(256) NOT NULL,
    check_referral_id varchar(256) NOT NULL,
    referral_link varchar(256),
    referral_display_link varchar(256),
    check_referral_link varchar(256),
    check_referral_display_link varchar(256),
    legacy_referral_link varchar(256),
    legacy_referral_display_link varchar(256),
    legacy_check_referral_link varchar(256),
    legacy_check_referral_display_link varchar(256),
    signup_parameters text,
    signup_source varchar(256),
    signup_referrer_header text,
    signup_user_agent text,
    signup_base_url text,
    referred_by_id varchar(256),
    referred_by_email varchar(256),
    referral_count integer DEFAULT 0,
    users_referred_id text,
    users_referred_email text,
    unconfirmed_users_referred_id text,
    unconfirmed_users_referred_email text,
    legacy_referred_by_id varchar(256),
    legacy_users_referred_id text,
    first_subscribed_timestamp_utc timestamp,
    resubscribed_timestamp_utc timestamp,
    unsubscribed_timestamp_utc timestamp,
    confirmed_timestamp_utc timestamp,
    number_times_unsubscribed integer DEFAULT 0,
    number_times_resubscribed integer DEFAULT 0,
    signup_ip_address varchar(256),
    emails_sent integer DEFAULT 0,
    emails_opened integer DEFAULT 0,
    links_clicked integer DEFAULT 0,
    college_ambassador integer DEFAULT 0
);

CREATE INDEX unique_id_index on main_newsletter (unique_id);
CREATE INDEX referral_id_index on main_newsletter (referral_id);
CREATE INDEX check_referral_id_index on main_newsletter (check_referral_id);