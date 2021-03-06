
   
    DROP FOREIGN TABLE IF EXISTS "preapprovedapplicants_dw";
    CREATE FOREIGN TABLE "preapprovedapplicants_dw"
    (
  campaign text,
  applicant_hash text,
  expiration_date date,
  state character varying(2),
  max_line integer,
  apr double precision,
  pricing_tier_id integer,
  promo_code_id integer,
  first_name text,
  last_name text,
  provider text,
  min_term_months integer,
  max_term_months integer,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  mname	        text,
  con_gen_cd	  text,
  house_num	    text,
  street_dir	  text,
  street_nm	    text,
  streettype	  text,
  post_dir	    text,
  unit_type	    text,
  unit_num	    text,
  city	        text,
  zip	          text,
  seg_code	    text,
  price_tier	  text,
  ssn_7         text,
  ssn_encrypted text,
  selection	    text,
  source	      text,
  testgroup	    text,
  sequence	    text,
  drop	        text,
  laser_code    text,
  offer_date	  date, 
  load_error text,
  response_score text,
  risk_score text,
  riskm text,
  exp_income text,
  tu_income text,
  id serial,
  marketingcampaignid integer,
  pick text,
  live_fl int)
    SERVER "edw_new_server"
    OPTIONS (
      schema_name 'dw_reporting',
      table_name  'preapprovedapplicants_dw'
    );


 alter foreign table preapprovedapplicants_dw owner to dw_owner;
grant select on preapprovedapplicants_dw to dw_proxy_load;

-- marketing_analytics tables

drop foreign table if exists experian_full_attributes;
create foreign table experian_full_attributes (
    campaign text,
    applicant_hash text,
    control_nb text,
    hsn text,
    encrypted_pin text,
    con_last_name text,
    con_first_name text,
    con_mid_init text,
    con_gen_cd text,
    house_nb text,
    predirectn_cd text,
    street_name text,
    street_suffix text,
    pstdirectn_cd text,
    unit_type text,
    unit_id text,
    city_name text,
    state_cd text,
    zip_cd text,
    segment_code text,
    ssn7l text,
    vantage_v3_score text,
    income_insight_w2 text,
    smartv40_aal01 text,
    smartv40_aal02 text,
    smartv40_aal03 text,
    smartv40_aal04 text,
    smartv40_aal05 text,
    smartv40_aal06 text,
    smartv40_aal07 text,
    smartv40_aal08 text,
    smartv40_aal09 text,
    smartv40_aal10 text,
    smartv40_aal11 text,
    smartv40_aal12 text,
    smartv40_aal13 text,
    smartv40_aal14 text,
    smartv40_aal15 text,
    smartv40_aal16 text,
    smartv40_aal17 text,
    smartv40_aal18 text,
    smartv40_aal19 text,
    smartv40_aal20 text,
    smartv40_aal21 text,
    smartv40_aal22 text,
    smartv40_aal23 text,
    smartv40_aal24 text,
    smartv40_aal25 text,
    smartv40_aal26 text,
    smartv40_aal27 text,
    smartv40_aal28 text,
    smartv40_aal29 text,
    smartv40_aal30 text,
    smartv40_aal31 text,
    smartv40_aal32 text,
    smartv40_aal33 text,
    smartv40_aal34 text,
    smartv40_aal37 text,
    smartv40_aal38 text,
    smartv40_aal39 text,
    smartv40_aal40 text,
    smartv40_aal41 text,
    smartv40_aal42 text,
    smartv40_aal43 text,
    smartv40_aal44 text,
    smartv40_aal45 text,
    smartv40_aal46 text,
    smartv40_aal47 text,
    smartv40_aal48 text,
    smartv40_aal49 text,
    smartv40_aal50 text,
    smartv40_aal51 text,
    smartv40_aal52 text,
    smartv40_aal53 text,
    smartv40_aal54 text,
    smartv40_aal55 text,
    smartv40_aal59 text,
    smartv40_aal60 text,
    smartv40_aal61 text,
    smartv40_aal62 text,
    smartv40_aal63 text,
    smartv40_aal64 text,
    smartv40_aal65 text,
    smartv40_aal66 text,
    smartv40_aal67 text,
    smartv40_aal68 text,
    smartv40_aal69 text,
    smartv40_aal70 text,
    smartv40_aau01 text,
    smartv40_aau02 text,
    smartv40_aau03 text,
    smartv40_aau04 text,
    smartv40_aau05 text,
    smartv40_aau06 text,
    smartv40_aau07 text,
    smartv40_aau08 text,
    smartv40_aau09 text,
    smartv40_aau10 text,
    smartv40_aau11 text,
    smartv40_aau12 text,
    smartv40_aau13 text,
    smartv40_aau14 text,
    smartv40_aau15 text,
    smartv40_aau16 text,
    smartv40_aau17 text,
    smartv40_aau18 text,
    smartv40_aau19 text,
    smartv40_aau20 text,
    smartv40_aau21 text,
    smartv40_aau22 text,
    smartv40_abk01 text,
    smartv40_abk02 text,
    smartv40_abk03 text,
    smartv40_abk04 text,
    smartv40_abk05 text,
    smartv40_abk06 text,
    smartv40_abk07 text,
    smartv40_abk08 text,
    smartv40_abk09 text,
    smartv40_abk10 text,
    smartv40_abk11 text,
    smartv40_abk12 text,
    smartv40_abk13 text,
    smartv40_abk14 text,
    smartv40_abk15 text,
    smartv40_abk16 text,
    smartv40_abk17 text,
    smartv40_abk18 text,
    smartv40_abk19 text,
    smartv40_abk20 text,
    smartv40_abk21 text,
    smartv40_abk22 text,
    smartv40_abk23 text,
    smartv40_abk24 text,
    smartv40_abk25 text,
    smartv40_abk26 text,
    smartv40_abk27 text,
    smartv40_abk28 text,
    smartv40_abk29 text,
    smartv40_abk30 text,
    smartv40_abk31 text,
    smartv40_abk32 text,
    smartv40_abk33 text,
    smartv40_abk34 text,
    smartv40_abk35 text,
    smartv40_abk36 text,
    smartv40_abk37 text,
    smartv40_abk38 text,
    smartv40_abk39 text,
    smartv40_abk40 text,
    smartv40_abk41 text,
    smartv40_abl01 text,
    smartv40_abl02 text,
    smartv40_abl03 text,
    smartv40_abl04 text,
    smartv40_abt01 text,
    smartv40_abt02 text,
    smartv40_abt03 text,
    smartv40_abt04 text,
    smartv40_abt05 text,
    smartv40_abt06 text,
    smartv40_abt07 text,
    smartv40_abt08 text,
    smartv40_abt09 text,
    smartv40_abt10 text,
    smartv40_abt11 text,
    smartv40_abt12 text,
    smartv40_acd01 text,
    smartv40_acd02 text,
    smartv40_acd03 text,
    smartv40_acd04 text,
    smartv40_acd05 text,
    smartv40_acd06 text,
    smartv40_acd07 text,
    smartv40_acd08 text,
    smartv40_acd09 text,
    smartv40_acd10 text,
    smartv40_acd11 text,
    smartv40_acd12 text,
    smartv40_acd13 text,
    smartv40_acd14 text,
    smartv40_ace01 text,
    smartv40_ace02 text,
    smartv40_ace03 text,
    smartv40_ace04 text,
    smartv40_ace05 text,
    smartv40_ace06 text,
    smartv40_ace07 text,
    smartv40_ace08 text,
    smartv40_ace09 text,
    smartv40_ace10 text,
    smartv40_ace11 text,
    smartv40_ace12 text,
    smartv40_ace13 text,
    smartv40_ace14 text,
    smartv40_ace15 text,
    smartv40_ace16 text,
    smartv40_ace17 text,
    smartv40_ace18 text,
    smartv40_ace19 text,
    smartv40_ace20 text,
    smartv40_ace21 text,
    smartv40_ace22 text,
    smartv40_ace23 text,
    smartv40_ace24 text,
    smartv40_ace25 text,
    smartv40_acl01 text,
    smartv40_acl02 text,
    smartv40_acl03 text,
    smartv40_acl04 text,
    smartv40_acl05 text,
    smartv40_acl06 text,
    smartv40_acl07 text,
    smartv40_acl08 text,
    smartv40_acl09 text,
    smartv40_acl10 text,
    smartv40_acl11 text,
    smartv40_acl12 text,
    smartv40_acl13 text,
    smartv40_acl14 text,
    smartv40_acl15 text,
    smartv40_acl16 text,
    smartv40_acl17 text,
    smartv40_acl18 text,
    smartv40_acl19 text,
    smartv40_acl20 text,
    smartv40_acl21 text,
    smartv40_acl22 text,
    smartv40_acl23 text,
    smartv40_adi01 text,
    smartv40_adi02 text,
    smartv40_adi03 text,
    smartv40_adi04 text,
    smartv40_adi05 text,
    smartv40_adi06 text,
    smartv40_adi07 text,
    smartv40_adi08 text,
    smartv40_adi09 text,
    smartv40_adi10 text,
    smartv40_adi11 text,
    smartv40_adi12 text,
    smartv40_adi13 text,
    smartv40_adi14 text,
    smartv40_adi15 text,
    smartv40_adi16 text,
    smartv40_adi17 text,
    smartv40_adi18 text,
    smartv40_adi19 text,
    smartv40_adi20 text,
    smartv40_adi21 text,
    smartv40_adi22 text,
    smartv40_adi23 text,
    smartv40_adi24 text,
    smartv40_adi25 text,
    smartv40_adi26 text,
    smartv40_adi27 text,
    smartv40_adi28 text,
    smartv40_adi29 text,
    smartv40_adi30 text,
    smartv40_adi31 text,
    smartv40_adi32 text,
    smartv40_adi33 text,
    smartv40_adi34 text,
    smartv40_adi35 text,
    smartv40_adi36 text,
    smartv40_adi37 text,
    smartv40_adi38 text,
    smartv40_adi39 text,
    smartv40_adi40 text,
    smartv40_adi41 text,
    smartv40_adi42 text,
    smartv40_adi43 text,
    smartv40_adi44 text,
    smartv40_adi45 text,
    smartv40_adi46 text,
    smartv40_aeq01 text,
    smartv40_aeq02 text,
    smartv40_aeq03 text,
    smartv40_aeq04 text,
    smartv40_aeq05 text,
    smartv40_aeq06 text,
    smartv40_aeq07 text,
    smartv40_aeq08 text,
    smartv40_aeq09 text,
    smartv40_aeq10 text,
    smartv40_aeq11 text,
    smartv40_aeq12 text,
    smartv40_aeq13 text,
    smartv40_aeq14 text,
    smartv40_aeq15 text,
    smartv40_aeq16 text,
    smartv40_aeq17 text,
    smartv40_aeq18 text,
    smartv40_aeq19 text,
    smartv40_aeq20 text,
    smartv40_aeq21 text,
    smartv40_aeq22 text,
    smartv40_aeq23 text,
    smartv40_ahd01 text,
    smartv40_ahd02 text,
    smartv40_ahd03 text,
    smartv40_ahd04 text,
    smartv40_ahd05 text,
    smartv40_ahd06 text,
    smartv40_ahd07 text,
    smartv40_ahd08 text,
    smartv40_ahd09 text,
    smartv40_ahd10 text,
    smartv40_ahd11 text,
    smartv40_ahd12 text,
    smartv40_ahd13 text,
    smartv40_ahd14 text,
    smartv40_ahd15 text,
    smartv40_ahd16 text,
    smartv40_ahd17 text,
    smartv40_ahd18 text,
    smartv40_ahd19 text,
    smartv40_ahd20 text,
    smartv40_ahd21 text,
    smartv40_ahd22 text,
    smartv40_ahd23 text,
    smartv40_ahd24 text,
    smartv40_ahd25 text,
    smartv40_ahd26 text,
    smartv40_ahd27 text,
    smartv40_ahd28 text,
    smartv40_ahd29 text,
    smartv40_ahd30 text,
    smartv40_ahd31 text,
    smartv40_ahd32 text,
    smartv40_ahd33 text,
    smartv40_ahd34 text,
    smartv40_ahd35 text,
    smartv40_ahd36 text,
    smartv40_ahi01 text,
    smartv40_ahi02 text,
    smartv40_ahi03 text,
    smartv40_ahi04 text,
    smartv40_ahi05 text,
    smartv40_ahi06 text,
    smartv40_ahi07 text,
    smartv40_ahi08 text,
    smartv40_ahi09 text,
    smartv40_ahi10 text,
    smartv40_ahi11 text,
    smartv40_ahi12 text,
    smartv40_ahi13 text,
    smartv40_ahi14 text,
    smartv40_ahi15 text,
    smartv40_ahi16 text,
    smartv40_ahi17 text,
    smartv40_ahi18 text,
    smartv40_ahi19 text,
    smartv40_ahi20 text,
    smartv40_ahi21 text,
    smartv40_ahi22 text,
    smartv40_ahi23 text,
    smartv40_ahi24 text,
    smartv40_ahi25 text,
    smartv40_ahi26 text,
    smartv40_ahi27 text,
    smartv40_ahi28 text,
    smartv40_ahi29 text,
    smartv40_ahi30 text,
    smartv40_ahi31 text,
    smartv40_ahi32 text,
    smartv40_ahi33 text,
    smartv40_ahi34 text,
    smartv40_ahi35 text,
    smartv40_ahi36 text,
    smartv40_ahi37 text,
    smartv40_ahi39 text,
    smartv40_ahi40 text,
    smartv40_ahi44 text,
    smartv40_ahi45 text,
    smartv40_ahi46 text,
    smartv40_ahi47 text,
    smartv40_ahi48 text,
    smartv40_ahi49 text,
    smartv40_ahi50 text,
    smartv40_ahi51 text,
    smartv40_ahi52 text,
    smartv40_ahi53 text,
    smartv40_ahi54 text,
    smartv40_ahi55 text,
    smartv40_ahi56 text,
    smartv40_ahi57 text,
    smartv40_ahi58 text,
    smartv40_ahi59 text,
    smartv40_ahi60 text,
    smartv40_ahi61 text,
    smartv40_ahi62 text,
    smartv40_ahi63 text,
    smartv40_ahi64 text,
    smartv40_ahi65 text,
    smartv40_ahi66 text,
    smartv40_ahi67 text,
    smartv40_ahi68 text,
    smartv40_ahi69 text,
    smartv40_ahi70 text,
    smartv40_ahi71 text,
    smartv40_ahi72 text,
    smartv40_ahi73 text,
    smartv40_ahi74 text,
    smartv40_ahi75 text,
    smartv40_ahi76 text,
    smartv40_ahi77 text,
    smartv40_ahi78 text,
    smartv40_ahi79 text,
    smartv40_ahi80 text,
    smartv40_ahi81 text,
    smartv40_ahi82 text,
    smartv40_ahi83 text,
    smartv40_ahi84 text,
    smartv40_ahi85 text,
    smartv40_ahi86 text,
    smartv40_ahi87 text,
    smartv40_ahi88 text,
    smartv40_ahi89 text,
    smartv40_ahi90 text,
    smartv40_ahi91 text,
    smartv40_ahi92 text,
    smartv40_ahi93 text,
    smartv40_ain01 text,
    smartv40_ain02 text,
    smartv40_ain03 text,
    smartv40_ain04 text,
    smartv40_ain05 text,
    smartv40_ain06 text,
    smartv40_ain07 text,
    smartv40_ain08 text,
    smartv40_ain09 text,
    smartv40_ain10 text,
    smartv40_ain11 text,
    smartv40_ain12 text,
    smartv40_ain13 text,
    smartv40_ain14 text,
    smartv40_ain15 text,
    smartv40_ain16 text,
    smartv40_ain17 text,
    smartv40_ain18 text,
    smartv40_ain19 text,
    smartv40_ain20 text,
    smartv40_ain21 text,
    smartv40_ain22 text,
    smartv40_ain23 text,
    smartv40_ain24 text,
    smartv40_ain25 text,
    smartv40_ain26 text,
    smartv40_ain27 text,
    smartv40_ain28 text,
    smartv40_ain29 text,
    smartv40_ain30 text,
    smartv40_ain31 text,
    smartv40_ain32 text,
    smartv40_ain33 text,
    smartv40_ain34 text,
    smartv40_aiq01 text,
    smartv40_aiq02 text,
    smartv40_aiq03 text,
    smartv40_aiq04 text,
    smartv40_aiq05 text,
    smartv40_aiq07 text,
    smartv40_aiq08 text,
    smartv40_aiq09 text,
    smartv40_aiq10 text,
    smartv40_aiq11 text,
    smartv40_ale01 text,
    smartv40_ale02 text,
    smartv40_ale03 text,
    smartv40_ale04 text,
    smartv40_ale05 text,
    smartv40_ale06 text,
    smartv40_ale07 text,
    smartv40_ale08 text,
    smartv40_ale09 text,
    smartv40_ale10 text,
    smartv40_ale11 text,
    smartv40_ale12 text,
    smartv40_ale13 text,
    smartv40_ale14 text,
    smartv40_ale15 text,
    smartv40_ale16 text,
    smartv40_ale17 text,
    smartv40_ale18 text,
    smartv40_ale19 text,
    smartv40_ale20 text,
    smartv40_ale21 text,
    smartv40_aln01 text,
    smartv40_aln02 text,
    smartv40_aln03 text,
    smartv40_aln04 text,
    smartv40_aln05 text,
    smartv40_aln06 text,
    smartv40_aln07 text,
    smartv40_aln08 text,
    smartv40_aln09 text,
    smartv40_aln10 text,
    smartv40_aln11 text,
    smartv40_aln12 text,
    smartv40_aln13 text,
    smartv40_aln14 text,
    smartv40_aln15 text,
    smartv40_aln16 text,
    smartv40_amg01 text,
    smartv40_amg02 text,
    smartv40_amg03 text,
    smartv40_amg04 text,
    smartv40_amg05 text,
    smartv40_amg06 text,
    smartv40_amg07 text,
    smartv40_amg08 text,
    smartv40_amg09 text,
    smartv40_amg10 text,
    smartv40_amg11 text,
    smartv40_amg12 text,
    smartv40_amg13 text,
    smartv40_amg14 text,
    smartv40_amg15 text,
    smartv40_amg16 text,
    smartv40_amg17 text,
    smartv40_amg18 text,
    smartv40_amg19 text,
    smartv40_amg20 text,
    smartv40_amg21 text,
    smartv40_amg22 text,
    smartv40_amg23 text,
    smartv40_amg24 text,
    smartv40_amg25 text,
    smartv40_amg26 text,
    smartv40_amg27 text,
    smartv40_amg28 text,
    smartv40_amg29 text,
    smartv40_amg30 text,
    smartv40_amg31 text,
    smartv40_amg32 text,
    smartv40_amg33 text,
    smartv40_amg34 text,
    smartv40_amg35 text,
    smartv40_amg36 text,
    smartv40_amg37 text,
    smartv40_amg38 text,
    smartv40_amg39 text,
    smartv40_amg40 text,
    smartv40_amg41 text,
    smartv40_amg42 text,
    smartv40_amg43 text,
    smartv40_amg44 text,
    smartv40_amg45 text,
    smartv40_amg46 text,
    smartv40_amg47 text,
    smartv40_amh01 text,
    smartv40_anr01 text,
    smartv40_anr02 text,
    smartv40_anr03 text,
    smartv40_anr04 text,
    smartv40_anr05 text,
    smartv40_anr06 text,
    smartv40_anr07 text,
    smartv40_anr08 text,
    smartv40_anr09 text,
    smartv40_anr10 text,
    smartv40_anr11 text,
    smartv40_anr12 text,
    smartv40_anr13 text,
    smartv40_anr14 text,
    smartv40_anr15 text,
    smartv40_anr16 text,
    smartv40_apr01 text,
    smartv40_apr02 text,
    smartv40_apr03 text,
    smartv40_apr04 text,
    smartv40_apr05 text,
    smartv40_apr06 text,
    smartv40_apr07 text,
    smartv40_apr08 text,
    smartv40_apr09 text,
    smartv40_apr10 text,
    smartv40_apr11 text,
    smartv40_apr12 text,
    smartv40_apr13 text,
    smartv40_apr14 text,
    smartv40_apr15 text,
    smartv40_apr16 text,
    smartv40_apr17 text,
    smartv40_apr18 text,
    smartv40_apr19 text,
    smartv40_apr20 text,
    smartv40_apr21 text,
    smartv40_apr22 text,
    smartv40_apr23 text,
    smartv40_apr24 text,
    smartv40_apr25 text,
    smartv40_apr26 text,
    smartv40_apr28 text,
    smartv40_apr29 text,
    smartv40_apr30 text,
    smartv40_apr31 text,
    smartv40_apr32 text,
    smartv40_apr33 text,
    smartv40_apr34 text,
    smartv40_apr35 text,
    smartv40_apr36 text,
    smartv40_apr37 text,
    smartv40_apr38 text,
    smartv40_apr39 text,
    smartv40_apr41 text,
    smartv40_apr43 text,
    smartv40_apr44 text,
    smartv40_apr45 text,
    smartv40_apr46 text,
    smartv40_apr47 text,
    smartv40_apr48 text,
    smartv40_apr49 text,
    smartv40_apr50 text,
    smartv40_apr51 text,
    smartv40_apr52 text,
    smartv40_apr53 text,
    smartv40_apr54 text,
    smartv40_apr55 text,
    smartv40_arm01 text,
    smartv40_arm02 text,
    smartv40_arm03 text,
    smartv40_arm04 text,
    smartv40_art01 text,
    smartv40_art02 text,
    smartv40_art03 text,
    smartv40_art04 text,
    smartv40_art05 text,
    smartv40_art06 text,
    smartv40_art07 text,
    smartv40_art08 text,
    smartv40_art09 text,
    smartv40_art10 text,
    smartv40_art11 text,
    smartv40_art12 text,
    smartv40_art13 text,
    smartv40_art14 text,
    smartv40_art15 text,
    smartv40_art16 text,
    smartv40_art17 text,
    smartv40_art18 text,
    smartv40_art19 text,
    smartv40_art20 text,
    smartv40_art21 text,
    smartv40_art22 text,
    smartv40_art23 text,
    smartv40_art24 text,
    smartv40_art25 text,
    smartv40_art26 text,
    smartv40_art27 text,
    smartv40_art28 text,
    smartv40_art29 text,
    smartv40_art30 text,
    smartv40_art31 text,
    smartv40_art32 text,
    smartv40_art33 text,
    smartv40_art34 text,
    smartv40_arv01 text,
    smartv40_arv02 text,
    smartv40_arv03 text,
    smartv40_arv04 text,
    smartv40_arv05 text,
    smartv40_arv06 text,
    smartv40_arv07 text,
    smartv40_arv08 text,
    smartv40_arv09 text,
    smartv40_arv10 text,
    smartv40_arv11 text,
    smartv40_arv12 text,
    smartv40_arv13 text,
    smartv40_arv14 text,
    smartv40_arv15 text,
    smartv40_arv16 text,
    smartv40_arv17 text,
    smartv40_arv18 text,
    smartv40_arv19 text,
    smartv40_arv20 text,
    smartv40_arv21 text,
    smartv40_arv22 text,
    smartv40_arv23 text,
    smartv40_arv24 text,
    smartv40_arv25 text,
    smartv40_arv26 text,
    smartv40_arv27 text,
    smartv40_arv28 text,
    smartv40_arv29 text,
    smartv40_arv30 text,
    smartv40_arv31 text,
    smartv40_arv32 text,
    smartv40_arv33 text,
    smartv40_arv34 text,
    smartv40_arv35 text,
    smartv40_arv36 text,
    smartv40_arv37 text,
    smartv40_arv38 text,
    smartv40_arv39 text,
    smartv40_arv40 text,
    smartv40_arv41 text,
    smartv40_asl01 text,
    smartv40_asl02 text,
    smartv40_asl03 text,
    smartv40_asl04 text,
    smartv40_asl05 text,
    smartv40_asl06 text,
    smartv40_asl07 text,
    smartv40_asl08 text,
    smartv40_asl09 text,
    smartv40_asl10 text,
    smartv40_asl11 text,
    smartv40_asl12 text,
    smartv40_asl13 text,
    smartv40_asl14 text,
    smartv40_asl15 text,
    smartv40_asl16 text,
    smartv40_asl17 text,
    smartv40_asl18 text,
    smartv40_asl19 text,
    smartv40_asl20 text,
    smartv40_asl21 text,
    smartv40_asl22 text,
    smartv40_asl23 text,
    smartv40_asl24 text,
    smartv40_asl25 text,
    smartv40_asl26 text,
    smartv40_asl27 text,
    smartv40_asl28 text,
    smartv40_asl29 text,
    smartv40_asl30 text,
    smartv40_asl31 text,
    smartv40_asl32 text,
    smartv40_asl33 text,
    smartv40_asl34 text,
    smartv40_asl35 text,
    smartv40_asl36 text,
    smartv40_asl37 text,
    smartv40_cau01 text,
    smartv40_cau04 text,
    smartv40_cau05 text,
    smartv40_cbk01 text,
    smartv40_cbk04 text,
    smartv40_cbk07 text,
    smartv40_cbk08 text,
    smartv40_cbl01 text,
    smartv40_cbl06 text,
    smartv40_ccu01 text,
    smartv40_ceq01 text,
    smartv40_ceq04 text,
    smartv40_cin01 text,
    smartv40_cin04 text,
    smartv40_cle01 text,
    smartv40_cle05 text,
    smartv40_cmg01 text,
    smartv40_cmg04 text,
    smartv40_cmg05 text,
    smartv40_crm01 text,
    smartv40_crn01 text,
    smartv40_crt01 text,
    smartv40_crt06 text,
    smartv40_csl01 text,
    smartv40_ddt01 text,
    smartv40_ddt02 text,
    smartv40_ddt03 text,
    smartv40_ddt04 text,
    smartv40_ddt05 text,
    smartv40_ddt06 text,
    smartv40_ddt07 text,
    smartv40_ddt08 text,
    smartv40_ddt09 text,
    smartv40_ddt10 text,
    smartv40_ddt11 text,
    smartv40_ddt12 text,
    smartv40_ddt13 text,
    smartv40_ddt14 text,
    smartv40_ddt15 text,
    smartv40_ddt16 text,
    smartv40_ddt17 text,
    smartv40_ddt18 text,
    smartv40_mdt01 text,
    smartv40_mdt02 text,
    smartv40_mdt03 text,
    smartv40_mdt04 text,
    smartv40_mdt05 text,
    smartv40_mdt06 text,
    smartv40_mdt07 text,
    smartv40_mdt08 text,
    smartv40_mdt09 text,
    smartv40_mdt10 text,
    smartv40_tal01 text,
    smartv40_tal02 text,
    smartv40_tal03 text,
    smartv40_tal04 text,
    smartv40_tal05 text,
    smartv40_tal06 text,
    smartv40_tdg01 text,
    smartv40_tdg03 text,
    smartv40_tdg04 text,
    smartv40_tdg05 text,
    smartv40_tdg06 text,
    smartv40_tdg07 text,
    smartv40_tdg08 text,
    smartv40_tdg09 text,
    smartv40_tiq01 text,
    smartv40_tiq02 text,
    dem02 text,
    xfc01 text,
    xfc02 text,
    xfc03 text,
    xfc04 text,
    xfc05 text,
    xfc06 text,
    xfc07 text,
    record_nb text,
    scrambled_permid text,
    line text,
    price_tier text,
    selection text,
    source text,
    test_group text,
    state_code text,
    lasercode text,
    creative text,
    last_mailed text,
    score1 text,
    score2 text,
    score3 text,
    score4 text,
    score5 text,
    score6 text,
    score7 text,
    score8 text,
    score9 text,
    score10 text,
    score11 text,
    score12 text,
    score13 text,
    score14 text,
    data1 text,
    data2 text,
    data3 text,
    data4 text,
    data5 text,
    data6 text,
    data7 text,
    data8 text,
    data9 text,
    data10 text,
    data11 text,
    data12 text,
    data13 text,
    data14 text,
    data15 text,
    test0 text,
    test1 text,
    test2 text,
    test3 text,
    test4 text,
    test5 text,
    test6 text,
    test7 text,
    test8 text,
    test9 text,
    test10 text,
    test11 text,
    test12 text,
    test13 text,
    test14 text,
    dti1 text,
    dti2 text,
    dti3 text,
    dti4 text
)
server "edw_new_server"
options (
schema_name 'marketing_analytics',
table_name  'experian_full_attributes'
);

alter foreign table experian_full_attributes owner to dw_owner;
grant select on experian_full_attributes to dw_proxy_load;

drop foreign table if exists transunion_full_attributes;
create foreign table transunion_full_attributes (
    campaign text,
    applicant_hash text,
    firstname text,
    middlename text,
    lastname text,
    fullname text,
    housenumber text,
    streetdirection text,
    streetname text,
    streetpostdir text,
    streettype text,
    unittype text,
    unitnumber text,
    city text,
    state text,
    zipcode text,
    zip_plus_4code text,
    soc_security_num text,
    gna001 text,
    permid text,
    consumer_id text,
    sequence_number text,
    trv01 text,
    cv15 text,
    cv16 text,
    bc21s text,
    g100s text,
    g230s text,
    of24s text,
    s114s text,
    ssub01_score text,
    scrat01 text,
    scrat07 text,
    scrat09 text,
    scrat27 text,
    scrat29 text,
    scrbr28 text,
    scrre03 text,
    scrre28 text,
    scrfi01 text,
    scrmt01 text,
    scrbc01 text,
    scrbc21 text,
    scrg001 text,
    scrg024 text,
    scrg048 text,
    scrg096 text,
    scrg098 text,
    scrs004 text,
    scrs059 text,
    rmdspflg text,
    age text,
    infrage text,
    colxmd24 text,
    colbalth text,
    trdcl6 text,
    fiopenth text,
    firatio text,
    numsattr text,
    revaggcr text,
    bkrnage text,
    bknage text,
    bkopbl12 text,
    bktrades text,
    bkagblth text,
    bkagbal text,
    bankmof text,
    hmp4gn6 text,
    h2in24af text,
    numinq12 text,
    inqnoa text,
    colbl36h text,
    bkavgcl text,
    finscore text,
    br31 text,
    re30 text,
    fi28 text,
    fi35 text,
    pf28 text,
    pf32 text,
    bc27 text,
    rt25 text,
    ds20 text,
    fn01 text,
    fn20 text,
    bk20 text,
    bk28 text,
    bk33 text,
    bk35 text,
    cvtg2a_score text,
    sbau2a_score text,
    rtl_trd text,
    trv08 text,
    trv10 text,
    cv21 text,
    at20s text,
    trau_cv text,
    scrg051 text,
    trdsat text,
    scrg103 text,
    sbaut5_score text,
    cna201_score text,
    eads19_score text,
    eads20_score text,
    eads23_score text,
    sbaut3_score text,
    sbaut6_score text,
    sbaut2_score text,
    etie04_score text,
    die text,
    tie3 text,
    agg910 text,
    bc107s text,
    g199s text,
    g207s text,
    of09s text,
    of101s text,
    scrs064 text,
    autoutil text,
    fi36 text,
    scrs115 text,
    fiopenmo text,
    bc102s text,
    fi24s text,
    g208s text,
    g212s text,
    g304s text,
    re28s text,
    revs903 text,
    recnum text,
    variable2036 text,
    line text,
    pricetier text,
    selection text,
    source text,
    testgroup text,
    state_code text,
    lasercode text,
    creative text,
    lastmailed text,
    score1 text,
    score2 text,
    score3 text,
    score4 text,
    score5 text,
    score6 text,
    score7 text,
    score8 text,
    score9 text,
    score10 text,
    score11 text,
    score12 text,
    score13 text,
    score14 text,
    data1 text,
    data2 text,
    data3 text,
    data4 text,
    data5 text,
    data6 text,
    data7 text,
    data8 text,
    data9 text,
    data10 text,
    data11 text,
    data12 text,
    data13 text,
    data14 text,
    data15 text,
    test0 text,
    test1 text,
    test2 text,
    test3 text,
    test4 text,
    test5 text,
    test6 text,
    test7 text,
    test8 text,
    test9 text,
    test10 text,
    test11 text,
    test12 text,
    test13 text,
    test14 text,
    dti1 text,
    dti2 text,
    dti3 text,
    dti4 text
)
server "edw_new_server"
options (
schema_name 'marketing_analytics',
table_name  'transunion_full_attributes'
);

alter foreign table transunion_full_attributes owner to dw_owner;
grant select on transunion_full_attributes to dw_proxy_load;

-- decision_logic

drop foreign table if exists "accounts";
create foreign table "accounts"
(
  id integer,
  customeridentifier text,
  amountinput numeric,
  errormessage text,
  iserror boolean,
  isstarted boolean,
  activityenddate date,
  asofdate date,
  routingnumberentered text,
  averagebalancerecent numeric,
  chartsid integer,
  accountnumberentered text,
  notes text,
  isverified boolean,
  availablebalance numeric,
  accountname text,
  statustext text,
  nameentered text,
  processedstatus integer,
  totaldebits numeric,
  accountnumberfound text,
  lastrefresherrormessage text,
  emailaddress text,
  iscompleted boolean,
  accounttype text,
  nameconfidence integer,
  status integer,
  isachsupported boolean,
  currentbalance numeric,
  institutionname text,
  statuscodecolor text,
  isactivityavailable boolean,
  accountnumberconfidence integer,
  totalcredits numeric,
  namefound text,
  isloginvalid boolean,
  requestcode text,
  averagebalance numeric,
  activitystartdate date
)
server "edw_new_server"
options (
schema_name 'decision_logic',
table_name  'accounts');

alter foreign table accounts owner to dw_owner;
grant select on accounts to dw_proxy_load;

drop foreign table if exists "transactions";
create foreign table "transactions"
(
  requestcode text,
  accountid integer,
  amount numeric,
  category text,
  description text,
  isrefresh boolean,
  runningbalance numeric,
  status text,
  transactiondate date,
  typecodes text,
  id integer
)
server "edw_new_server"
options (
schema_name 'decision_logic',
table_name  'transactions');

alter foreign table transactions owner to dw_owner;
grant select on transactions to dw_proxy_load;

drop foreign table if exists "scores";
create foreign table "scores"
(
    requestcode text NULL,
	score numeric NULL,
	created_at timestamptz NULL,
	scored_at timestamptz NULL,
	grade text NULL,
	decision text NULL,
	no_tran_flag text NULL,
	loan_activity_flag text NULL,
	low_balance_flag text NULL,
	pay_freq_mismatch_flag text NULL
)
server "edw_new_server"
options (
schema_name 'decision_logic',
table_name  'scores');

alter foreign table scores owner to dw_owner;
grant select on scores to dw_proxy_load;

--

DROP FOREIGN TABLE IF EXISTS edw_prod_to_stage_fdw.pg_class cascade;
CREATE FOREIGN TABLE edw_prod_to_stage_fdw.pg_class (
    oid oid,
	relname name NOT NULL,
	relnamespace oid NOT NULL,
	reltype oid NOT NULL,
	reloftype oid NOT NULL,
	relowner oid NOT NULL,
	relam oid NOT NULL,
	relfilenode oid NOT NULL,
	reltablespace oid NOT NULL,
	relpages int4 NOT NULL,
	reltuples float4 NOT NULL,
	relallvisible int4 NOT NULL,
	reltoastrelid oid NOT NULL,
	relhasindex bool NOT NULL,
	relisshared bool NOT NULL,
	relpersistence char(1) NOT NULL,
	relkind char(1) NOT NULL,
	relnatts int2 NOT NULL,
	relchecks int2 NOT NULL,
	relhasoids bool NOT NULL,
	relhaspkey bool NOT NULL,
	relhasrules bool NOT NULL,
	relhastriggers bool NOT NULL,
	relhassubclass bool NOT NULL,
	relrowsecurity bool NOT NULL,
	relforcerowsecurity bool NOT NULL,
	relispopulated bool NOT NULL,
	relreplident char(1) NOT NULL,
	relfrozenxid xid NOT NULL,
	relminmxid xid NOT NULL,
--	relacl aclitem[] NULL,
	reloptions text[] NULL
)
    SERVER edw_new_server
    OPTIONS (
      schema_name 'pg_catalog',
      table_name  'pg_class'
    );
    

alter foreign table edw_prod_to_stage_fdw.pg_class owner to dw_owner;
grant select on edw_prod_to_stage_fdw.pg_class to enterprise_dw_read_only;




DROP FOREIGN TABLE IF EXISTS edw_prod_to_stage_fdw.pg_namespace cascade;
CREATE FOREIGN TABLE edw_prod_to_stage_fdw.pg_namespace (
    oid oid,
	nspname name NOT NULL,
	nspowner oid NOT null--,
--	nspacl aclitem[] NULL

)
    SERVER edw_new_server
    OPTIONS (
      schema_name 'pg_catalog',
      table_name  'pg_namespace'
    );
    

alter foreign table edw_prod_to_stage_fdw.pg_namespace owner to dw_owner;
grant select on edw_prod_to_stage_fdw.pg_namespace to enterprise_dw_read_only;
    
    


DROP FOREIGN TABLE IF EXISTS edw_prod_to_stage_fdw.pg_roles cascade;
CREATE FOREIGN TABLE edw_prod_to_stage_fdw.pg_roles (
 rolname   name,
 rolsuper  boolean,
 rolinherit    boolean,
 rolcreaterole   boolean,
 rolcreatedb   boolean,
 rolcanlogin   boolean,
 rolreplication   boolean,
 rolconnlimit  integer,
 rolpassword   text,
 rolvaliduntil   timestamp with time zone,
 rolbypassrls  boolean,
 rolconfig   text[],
 oid   oid 

)
    SERVER edw_new_server
    OPTIONS (
      schema_name 'pg_catalog',
      table_name  'pg_roles'
    );
    
alter foreign table edw_prod_to_stage_fdw.pg_roles owner to dw_owner;
grant select on edw_prod_to_stage_fdw.pg_roles to enterprise_dw_read_only;
    
DROP FOREIGN TABLE IF EXISTS edw_prod_to_stage_fdw.pg_proc cascade;
CREATE FOREIGN TABLE edw_prod_to_stage_fdw.pg_proc (
    oid oid,
	proname name NOT NULL,
	pronamespace oid NOT NULL,
	proowner oid NOT NULL,
	prolang oid NOT NULL,
	procost float4 NOT NULL,
	prorows float4 NOT NULL,
	provariadic oid NOT NULL,
	protransform regproc NOT NULL,
	proisagg bool NOT NULL,
	proiswindow bool NOT NULL,
	prosecdef bool NOT NULL,
	proleakproof bool NOT NULL,
	proisstrict bool NOT NULL,
	proretset bool NOT NULL,
	provolatile char(1) NOT NULL,
	pronargs int2 NOT NULL,
	pronargdefaults int2 NOT NULL,
	prorettype oid NOT NULL,
	proargtypes oidvector NOT NULL,
	proallargtypes oid[] NULL,
	proargmodes char[] NULL,
	proargnames text[] NULL,
	proargdefaults pg_node_tree NULL,
	protrftypes oid[] NULL,
	prosrc text NOT NULL,
	probin text NULL,
	proconfig text[] null--,
--	proacl aclitem[] NULL
)
    SERVER edw_new_server
    OPTIONS (
      schema_name 'pg_catalog',
      table_name  'pg_proc'
    );
    
alter foreign table edw_prod_to_stage_fdw.pg_proc owner to dw_owner;
grant select on edw_prod_to_stage_fdw.pg_proc to enterprise_dw_read_only;


DROP FOREIGN TABLE IF EXISTS edw_prod_to_stage_fdw.pg_type;

CREATE FOREIGN TABLE edw_prod_to_stage_fdw.pg_type(
    oid oid NULL,
    typname name NOT NULL,
    typnamespace oid NOT NULL,
    typowner oid NOT NULL,
    typlen smallint NOT NULL,
    typbyval boolean NOT NULL,
    typtype character(1) NOT NULL COLLATE pg_catalog."default",
    typcategory character(1) NOT NULL COLLATE pg_catalog."default",
    typispreferred boolean NOT NULL,
    typisdefined boolean NOT NULL,
    typdelim character(1) NOT NULL COLLATE pg_catalog."default",
    typrelid oid NOT NULL,
    typelem oid NOT NULL,
    typarray oid NOT NULL,
    typinput regproc NOT NULL,
    typoutput regproc NOT NULL,
    typreceive regproc NOT NULL,
    typsend regproc NOT NULL,
    typmodin regproc NOT NULL,
    typmodout regproc NOT NULL,
    typanalyze regproc NOT NULL,
    typalign character(1) NOT NULL COLLATE pg_catalog."default",
    typstorage character(1) NOT NULL COLLATE pg_catalog."default",
    typnotnull boolean NOT NULL,
    typbasetype oid NOT NULL,
    typtypmod integer NOT NULL,
    typndims integer NOT NULL,
    typcollation oid NOT NULL,
    typdefaultbin pg_node_tree NULL COLLATE pg_catalog."default",
    typdefault text NULL COLLATE pg_catalog."default"
)
    SERVER edw_new_server
    OPTIONS (schema_name 'pg_catalog', table_name 'pg_type');

ALTER FOREIGN TABLE edw_prod_to_stage_fdw.pg_type
    OWNER TO dw_owner;
grant select on edw_prod_to_stage_fdw.pg_type to enterprise_dw_read_only;
