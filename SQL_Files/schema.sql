----------  Table 1 -------------

CREATE TABLE Hotness_By_County (
    month_date_yyyym                            INT,
    county_fips                                 INT,
    county_name                                 VARCHAR,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    nielsen_hh_rank                             DOUBLE PRECISION,
    hotness_rank                                DOUBLE PRECISION,
    hotness_rank_mm                             DOUBLE PRECISION,
    hotness_rank_yy                             DOUBLE PRECISION,
    hotness_score                               DOUBLE PRECISION,                                 
    supply_score                                DOUBLE PRECISION,
    demand_score                                DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_dom_mm_day                           DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    median_dom_yy_day                           DOUBLE PRECISION,
    median_dom_vs_us                            DOUBLE PRECISION,
    ldp_unique_viewers_per_property_mm          DOUBLE PRECISION,
    ldp_unique_viewers_per_property_yy          DOUBLE PRECISION,      
    ldp_unique_viewers_per_property_vs_us       DOUBLE PRECISION,    
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    median_listing_price_vs_us                  DOUBLE PRECISION,
    quality_flag                                DOUBLE PRECISION,
    PRIMARY KEY (cbsa_code)
);
	 
----------  Table 2 -------------

CREATE TABLE Hotness_By_Metro (
    month_date_yyyym                            INT,                                
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    nielsen_hh_rank                             DOUBLE PRECISION,
    hotness_rank                                DOUBLE PRECISION,
    hotness_rank_mm                             DOUBLE PRECISION,
    hotness_rank_yy                             DOUBLE PRECISION,
    hotness_score                               DOUBLE PRECISION,                                 
    supply_score                                DOUBLE PRECISION,
    demand_score                                DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_dom_mm_day                           DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    median_dom_yy_day                           DOUBLE PRECISION,
    median_dom_vs_us                            DOUBLE PRECISION,
    ldp_unique_viewers_per_property_mm          DOUBLE PRECISION,
    ldp_unique_viewers_per_property_yy          DOUBLE PRECISION,      
    ldp_unique_viewers_per_property_vs_us       DOUBLE PRECISION,    
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    median_listing_price_vs_us                  DOUBLE PRECISION,
    quality_flag                                DOUBLE PRECISION,
    PRIMARY KEY (cbsa_code)
);

----------  Table 3 -------------


CREATE TABLE Monthly_By_Country (
    month_date_yyyymm                           INT,
    country                                     VARCHAR,
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    active_listing_count                        INT,
    active_listing_count_mm                     DOUBLE PRECISION,
    active_listing_count_yy                     DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    new_listing_count                           INT,
    new_listing_count_mm                        DOUBLE PRECISION,
    new_listing_count_yy                        DOUBLE PRECISION,
    price_increased_count                       INT,
    price_increased_count_mm                    DOUBLE PRECISION,
    price_increased_count_yy                    DOUBLE PRECISION,
    price_reduced_count                         INT,
    price_reduced_count_mm                      DOUBLE PRECISION,
    price_reduced_count_yy                      DOUBLE PRECISION,
    pending_listing_count                       INT,
    pending_listing_count_mm                    DOUBLE PRECISION,
    pending_listing_count_yy                    DOUBLE PRECISION,
    median_listing_price_per_square_foot        DOUBLE PRECISION,
    median_listing_price_per_square_foot_mm     DOUBLE PRECISION,
    median_listing_price_per_square_foot_yy     DOUBLE PRECISION,
    median_square_feet                          DOUBLE PRECISION,
    median_square_feet_mm                       DOUBLE PRECISION,
    median_square_feet_yy                       DOUBLE PRECISION,
    average_listing_price                       DOUBLE PRECISION,
    average_listing_price_mm                    DOUBLE PRECISION,
    average_listing_price_yy                    DOUBLE PRECISION,
    total_listing_count                         INT,
    total_listing_count_mm                      DOUBLE PRECISION,
    total_listing_count_yy                      DOUBLE PRECISION,
    pending_ratio                               DOUBLE PRECISION,
    pending_ratio_mm                            DOUBLE PRECISION,
    pending_ratio_yy                            DOUBLE PRECISION,
    PRIMARY KEY (month_date_yyyymm)


);

----------  Table 4 -------------

CREATE TABLE Monthly_By_County  (
    month_date_yyyymm                           INT,
    county_fips                                 INT,
    county_name                                 VARCHAR,
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    active_listing_count                        INT,
    active_listing_count_mm                     DOUBLE PRECISION,
    active_listing_count_yy                     DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    new_listing_count                           INT,
    new_listing_count_mm                        DOUBLE PRECISION,
    new_listing_count_yy                        DOUBLE PRECISION,
    price_increased_count                       INT,
    price_increased_count_mm                    DOUBLE PRECISION,
    price_increased_count_yy                    DOUBLE PRECISION,
    price_reduced_count                         INT,
    price_reduced_count_mm                      DOUBLE PRECISION,
    price_reduced_count_yy                      DOUBLE PRECISION,
    pending_listing_count                       INT,
    pending_listing_count_mm                    DOUBLE PRECISION,
    pending_listing_count_yy                    DOUBLE PRECISION,
    median_listing_price_per_square_foot        DOUBLE PRECISION,
    median_listing_price_per_square_foot_mm     DOUBLE PRECISION,
    median_listing_price_per_square_foot_yy     DOUBLE PRECISION,
    median_square_feet                          DOUBLE PRECISION,
    median_square_feet_mm                       DOUBLE PRECISION,
    median_square_feet_yy                       DOUBLE PRECISION,
    average_listing_price                       DOUBLE PRECISION,
    average_listing_price_mm                    DOUBLE PRECISION,
    average_listing_price_yy                    DOUBLE PRECISION,
    total_listing_count                         INT,
    total_listing_count_mm                      DOUBLE PRECISION,
    total_listing_count_yy                      DOUBLE PRECISION,
    pending_ratio                               DOUBLE PRECISION,
    pending_ratio_mm                            DOUBLE PRECISION,
    pending_ratio_yy                            DOUBLE PRECISION,
    PRIMARY KEY (month_date_yyyymm)
);

----------  Table 5 -------------

CREATE TABLE Monthly_By_Metro  (
    month_date_yyyymm                           INT,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    HouseholdRank                               INT,
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    active_listing_count                        INT,
    active_listing_count_mm                     DOUBLE PRECISION,
    active_listing_count_yy                     DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    new_listing_count                           INT,
    new_listing_count_mm                        DOUBLE PRECISION,
    new_listing_count_yy                        DOUBLE PRECISION,
    price_increased_count                       INT,
    price_increased_count_mm                    DOUBLE PRECISION,
    price_increased_count_yy                    DOUBLE PRECISION,
    price_reduced_count                         INT,
    price_reduced_count_mm                      DOUBLE PRECISION,
    price_reduced_count_yy                      DOUBLE PRECISION,
    pending_listing_count                       INT,
    pending_listing_count_mm                    DOUBLE PRECISION,
    pending_listing_count_yy                    DOUBLE PRECISION,
    median_listing_price_per_square_foot        DOUBLE PRECISION,
    median_listing_price_per_square_foot_mm     DOUBLE PRECISION,
    median_listing_price_per_square_foot_yy     DOUBLE PRECISION,
    median_square_feet                          DOUBLE PRECISION,
    median_square_feet_mm                       DOUBLE PRECISION,
    median_square_feet_yy                       DOUBLE PRECISION,
    average_listing_price                       DOUBLE PRECISION,
    average_listing_price_mm                    DOUBLE PRECISION,
    average_listing_price_yy                    DOUBLE PRECISION,
    total_listing_count                         INT,
    total_listing_count_mm                      DOUBLE PRECISION,
    total_listing_count_yy                      DOUBLE PRECISION,
    pending_ratio                               DOUBLE PRECISION,
    pending_ratio_mm                            DOUBLE PRECISION,
    pending_ratio_yy                            DOUBLE PRECISION,
    PRIMARY KEY (cbsa_code)

);

----------  Table 6 -------------

CREATE TABLE Monthly_By_State  (
    month_date_yyyymm                           INT,
    state                                       INT,
    state_id                                    VARCHAR,
    HouseholdRank                               INT,
    median_listing_price                        DOUBLE PRECISION,
    median_listing_price_mm                     DOUBLE PRECISION,
    median_listing_price_yy                     DOUBLE PRECISION,
    active_listing_count                        INT,
    active_listing_count_mm                     DOUBLE PRECISION,
    active_listing_count_yy                     DOUBLE PRECISION,
    median_days_on_market                       DOUBLE PRECISION,
    median_days_on_market_mm                    DOUBLE PRECISION,
    median_days_on_market_yy                    DOUBLE PRECISION,
    new_listing_count                           INT,
    new_listing_count_mm                        DOUBLE PRECISION,
    new_listing_count_yy                        DOUBLE PRECISION,
    price_increased_count                       INT,
    price_increased_count_mm                    DOUBLE PRECISION,
    price_increased_count_yy                    DOUBLE PRECISION,
    price_reduced_count                         INT,
    price_reduced_count_mm                      DOUBLE PRECISION,
    price_reduced_count_yy                      DOUBLE PRECISION,
    pending_listing_count                       INT,
    pending_listing_count_mm                    DOUBLE PRECISION,
    pending_listing_count_yy                    DOUBLE PRECISION,
    median_listing_price_per_square_foot        DOUBLE PRECISION,
    median_listing_price_per_square_foot_mm     DOUBLE PRECISION,
    median_listing_price_per_square_foot_yy     DOUBLE PRECISION,
    median_square_feet                          DOUBLE PRECISION,
    median_square_feet_mm                       DOUBLE PRECISION,
    median_square_feet_yy                       DOUBLE PRECISION,
    average_listing_price                       DOUBLE PRECISION,
    average_listing_price_mm                    DOUBLE PRECISION,
    average_listing_price_yy                    DOUBLE PRECISION,
    total_listing_count                         INT,
    total_listing_count_mm                      DOUBLE PRECISION,
    total_listing_count_yy                      DOUBLE PRECISION,
    pending_ratio                               DOUBLE PRECISION,
    pending_ratio_mm                            DOUBLE PRECISION,
    pending_ratio_yy                            DOUBLE PRECISION,
    PRIMARY KEY (state_id)
);

----------  Table 7 -------------

CREATE TABLE Weekly_By_Country  (
    
    week_end_date                               DATE,
    geo_country                                 VARCHAR,
    median_listing_price_yy                     DECIMAL,
    active_listing_count_yy                     DECIMAL,
    median_days_on_market_by_day_yy             INT,
    median_days_on_market_yy                    DECIMAL,
    new_listing_count_yy                        DECIMAL,
    new_listing_share_yy                        DECIMAL,
    price_reduced_count_yy                      DECIMAL,
    price_reduced_share_yy                      DECIMAL,
    PRIMARY KEY (week_end_date)
);

----------  Table 8 -------------

CREATE TABLE Weekly_By_Metro  (
    
    week_end_date                               DATE,
    cbsa_code                                   INT,
    cbsa_title                                  VARCHAR,
    hh_rank                                     INT,
    median_listing_price_yy                     DECIMAL,
    active_listing_count_yy                     DECIMAL,
    median_days_on_market_by_day_yy             INT,
    median_days_on_market_yy                    DECIMAL,
    new_listing_count_yy                        DECIMAL,
    new_listing_share_yy                        DECIMAL,
    price_reduced_count_yy                      DECIMAL,
    price_reduced_share_yy                      DECIMAL,
    PRIMARY KEY (cbsa_code)
);