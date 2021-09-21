----------  Table 1 -------------

CREATE TABLE Hotness_By_County (
    record_key									INT,
	month_date_yyyym                            INT,
    state_id 									VARCHAR,
	county                                 		VARCHAR,
	county_fips                                 INT,
    cbsa_code                                   FLOAT,
    cbsa_title                                  VARCHAR, 
    nielsen_hh_rank                             NUMERIC,
    hotness_rank                                NUMERIC,
    hotness_rank_mm                             NUMERIC,
    hotness_rank_yy                             NUMERIC,
    hotness_score                               NUMERIC,                                 
    supply_score                                NUMERIC,
    demand_score                                NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_dom_mm_day                           NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    median_dom_yy_day                           NUMERIC,
    median_dom_vs_us                            NUMERIC,
    ldp_unique_viewers_per_property_mm          NUMERIC,
    ldp_unique_viewers_per_property_yy          NUMERIC,      
    ldp_unique_viewers_per_property_vs_us       NUMERIC,    
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    median_listing_price_vs_us                  NUMERIC,
    quality_flag                                FLOAT,
    PRIMARY KEY (record_key)
);
	 
----------  Table 2 -------------

CREATE TABLE Hotness_By_Metro (
    record_key									INT,
	month_date_yyyym                            INT,  
	metro										VARCHAR,
	state_id									VARCHAR,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    nielsen_hh_rank                             NUMERIC,
    hotness_rank                                NUMERIC,
    hotness_rank_mm                             NUMERIC,
    hotness_rank_yy                             NUMERIC,
    hotness_score                               NUMERIC,                                 
    supply_score                                NUMERIC,
    demand_score                                NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_dom_mm_day                           NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    median_dom_yy_day                           NUMERIC,
    median_dom_vs_us                            NUMERIC,
    ldp_unique_viewers_per_property_mm          NUMERIC,
    ldp_unique_viewers_per_property_yy          NUMERIC,      
    ldp_unique_viewers_per_property_vs_us       NUMERIC,    
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    median_listing_price_vs_us                  NUMERIC,
    quality_flag                                NUMERIC,
    PRIMARY KEY (record_key)
	
);

----------  Table 3 -------------


CREATE TABLE Monthly_By_Country (
    record_key									INT,
	month_date_yyyymm                           INT,
    country                                     VARCHAR,
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    active_listing_count                        INT,
    active_listing_count_mm                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count                           INT,
    new_listing_count_mm                        NUMERIC,
    new_listing_count_yy                        NUMERIC,
    price_increased_count                       INT,
    price_increased_count_mm                    NUMERIC,
    price_increased_count_yy                    NUMERIC,
    price_reduced_count                         INT,
    price_reduced_count_mm                      NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    pending_listing_count                       INT,
    pending_listing_count_mm                    NUMERIC,
    pending_listing_count_yy                    NUMERIC,
    median_listing_price_per_square_foot        NUMERIC,
    median_listing_price_per_square_foot_mm     NUMERIC,
    median_listing_price_per_square_foot_yy     NUMERIC,
    median_square_feet                          NUMERIC,
    median_square_feet_mm                       NUMERIC,
    median_square_feet_yy                       NUMERIC,
    average_listing_price                       NUMERIC,
    average_listing_price_mm                    NUMERIC,
    average_listing_price_yy                    NUMERIC,
    total_listing_count                         INT,
    total_listing_count_mm                      NUMERIC,
    total_listing_count_yy                      NUMERIC,
    pending_ratio                               NUMERIC,
    pending_ratio_mm                            NUMERIC,
    pending_ratio_yy                            NUMERIC,
    PRIMARY KEY (record_key)


);

----------  Table 4 -------------

CREATE TABLE Monthly_By_County  (
    
	record_key									INT,
	month_date_yyyymm                           INT,
    county_fips                                 INT,
    county_name                                 VARCHAR,
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    active_listing_count                        INT,
    active_listing_count_mm                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count                           INT,
    new_listing_count_mm                        NUMERIC,
    new_listing_count_yy                        NUMERIC,
    price_increased_count                       INT,
    price_increased_count_mm                    NUMERIC,
    price_increased_count_yy                    NUMERIC,
    price_reduced_count                         INT,
    price_reduced_count_mm                      NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    pending_listing_count                       INT,
    pending_listing_count_mm                    NUMERIC,
    pending_listing_count_yy                    NUMERIC,
    median_listing_price_per_square_foot        NUMERIC,
    median_listing_price_per_square_foot_mm     NUMERIC,
    median_listing_price_per_square_foot_yy     NUMERIC,
    median_square_feet                          NUMERIC,
    median_square_feet_mm                       NUMERIC,
    median_square_feet_yy                       NUMERIC,
    average_listing_price                       NUMERIC,
    average_listing_price_mm                    NUMERIC,
    average_listing_price_yy                    NUMERIC,
    total_listing_count                         INT,
    total_listing_count_mm                      NUMERIC,
    total_listing_count_yy                      NUMERIC,
    pending_ratio                               NUMERIC,
    pending_ratio_mm                            NUMERIC,
    pending_ratio_yy                            NUMERIC,
    PRIMARY KEY (record_key)
);

----------  Table 5 -------------

CREATE TABLE Monthly_By_Metro  (
    
	record_key									INT,
	month_date_yyyymm                           INT,
	metro										VARCHAR,
	state_id									VARCHAR,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
	HouseholdRank								INT,
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    active_listing_count                        INT,
    active_listing_count_mm                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count                           INT,
    new_listing_count_mm                        NUMERIC,
    new_listing_count_yy                        NUMERIC,
    price_increased_count                       INT,
    price_increased_count_mm                    NUMERIC,
    price_increased_count_yy                    NUMERIC,
    price_reduced_count                         INT,
    price_reduced_count_mm                      NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    pending_listing_count                       INT,
    pending_listing_count_mm                    NUMERIC,
    pending_listing_count_yy                    NUMERIC,
    median_listing_price_per_square_foot        NUMERIC,
    median_listing_price_per_square_foot_mm     NUMERIC,
    median_listing_price_per_square_foot_yy     NUMERIC,
    median_square_feet                          NUMERIC,
    median_square_feet_mm                       NUMERIC,
    median_square_feet_yy                       NUMERIC,
    average_listing_price                       NUMERIC,
    average_listing_price_mm                    NUMERIC,
    average_listing_price_yy                    NUMERIC,
    total_listing_count                         INT,
    total_listing_count_mm                      NUMERIC,
    total_listing_count_yy                      NUMERIC,
    pending_ratio                               NUMERIC,
    pending_ratio_mm                            NUMERIC,
    pending_ratio_yy                            NUMERIC,
    PRIMARY KEY (record_key)

);

----------  Table 6 -------------

CREATE TABLE Monthly_By_State  (
    record_key									INT,
	month_date_yyyymm                           INT,
    state                                       VARCHAR,
    state_id                                    VARCHAR,
    median_listing_price                        NUMERIC,
    median_listing_price_mm                     NUMERIC,
    median_listing_price_yy                     NUMERIC,
    active_listing_count                        NUMERIC,
    active_listing_count_mm                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market                       NUMERIC,
    median_days_on_market_mm                    NUMERIC,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count                           NUMERIC,
    new_listing_count_mm                        NUMERIC,
    new_listing_count_yy                        NUMERIC,
    price_increased_count                       NUMERIC,
    price_increased_count_mm                    NUMERIC,
    price_increased_count_yy                    NUMERIC,
    price_reduced_count                         NUMERIC,
    price_reduced_count_mm                      NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    pending_listing_count                       NUMERIC,
    pending_listing_count_mm                    NUMERIC,
    pending_listing_count_yy                    NUMERIC,
    median_listing_price_per_square_foot        NUMERIC,
    median_listing_price_per_square_foot_mm     NUMERIC,
    median_listing_price_per_square_foot_yy     NUMERIC,
    median_square_feet                          NUMERIC,
    median_square_feet_mm                       NUMERIC,
    median_square_feet_yy                       NUMERIC,
    average_listing_price                       NUMERIC,
    average_listing_price_mm                    NUMERIC,
    average_listing_price_yy                    NUMERIC,
    total_listing_count                         NUMERIC,
    total_listing_count_mm                      NUMERIC,
    total_listing_count_yy                      NUMERIC,
    pending_ratio                               NUMERIC,
    pending_ratio_mm                            NUMERIC,
    pending_ratio_yy                            NUMERIC,
    PRIMARY KEY (record_key)
);

----------  Table 7 -------------

CREATE TABLE Weekly_By_Country  (
    record_key									INT,
    week_end_date                               DATE,
    geo_country                                 VARCHAR,
    median_listing_price_yy                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market_by_day_yy             INT,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count_yy                        NUMERIC,
    new_listing_share_yy                        NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    price_reduced_share_yy                      NUMERIC,
    PRIMARY KEY (record_key)
);

----------  Table 8 -------------

CREATE TABLE Weekly_By_Metro  (
    
	record_key									INT,
    week_end_date                               DATE,
	metro										VARCHAR,
	state_id									VARCHAR,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    hh_rank                                     INT,
    median_listing_price_yy                     NUMERIC,
    active_listing_count_yy                     NUMERIC,
    median_days_on_market_by_day_yy             INT,
    median_days_on_market_yy                    NUMERIC,
    new_listing_count_yy                        NUMERIC,
    new_listing_share_yy                        NUMERIC,
    price_reduced_count_yy                      NUMERIC,
    price_reduced_share_yy                      NUMERIC,
    PRIMARY KEY (record_key)
);
