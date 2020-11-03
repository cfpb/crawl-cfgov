/*************************************************************************************************************************//*
Program Name: NFWBS_PUF_2016_read_in_SAS.sas
Path:         .\NFWBS_PUF_2016_read_in_SAS.sas
Ancestor:     
Project:      National Financial Well-Being Survey (Consumer Financial Protection Bureau)
Programmer:   Abt Associates
Inputs:       .\NFWBS_PUF_2016_data.csv
Outputs:      .\NFWBS_PUF_2016_data.sas7bdat
Purpose:      This SAS program reads in the National Financial Well-Being Survey Public Use File.
Note:		
Created On:   07-28-17
Edit History:	
*//************************************************************************************************************************/
OPTIONS NOFMTERR ERRORS=3 NOCENTER PAGESIZE=MAX;  

%LET filepath = /*INSERT FILE DIRECTORY LOCATION HERE*/;



LIBNAME outdata "&filepath";

/* Read in NFWBS_PUF_2016_data.csv */

   DATA NFWBS_PUF    ;
   %LET _EFIERR_ = 0; /* set the ERROR detection macro variable */
   INFILE "&filepath\NFWBS_PUF_2016_data.csv"
   DELIMITER = ',' MISSOVER DSD LRECL=32767  FIRSTOBS=2 ;

   INPUT
               PUF_ID
               sample
               fpl
               SWB_1
               SWB_2
               SWB_3
               FWBscore
               FWB1_1
               FWB1_2
               FWB1_3
               FWB1_4
               FWB1_5
               FWB1_6
               FWB2_1
               FWB2_2
               FWB2_3
               FWB2_4
               FSscore
               FS1_1
               FS1_2
               FS1_3
               FS1_4
               FS1_5
               FS1_6
               FS1_7
               FS2_1
               FS2_2
               FS2_3
               SUBKNOWL1
               ACT1_1
               ACT1_2
               FINGOALS
               PROPPLAN_1
               PROPPLAN_2
               PROPPLAN_3
               PROPPLAN_4
               MANAGE1_1
               MANAGE1_2
               MANAGE1_3
               MANAGE1_4
               SAVEHABIT
               FRUGALITY
               AUTOMATED_1
               AUTOMATED_2
               ASK1_1
               ASK1_2
               SUBNUMERACY2
               SUBNUMERACY1
               CHANGEABLE
               GOALCONF
               LMscore
               FINKNOWL1
               FINKNOWL2
               FINKNOWL3
               FK1correct
               FK2correct
               FK3correct
               KHscore
               KHKNOWL1
               KHKNOWL2
               KHKNOWL3
               KHKNOWL4
               KHKNOWL5
               KHKNOWL6
               KHKNOWL7
               KHKNOWL8
               KHKNOWL9
               KH1correct
               KH2correct
               KH3correct
               KH4correct
               KH5correct
               KH6correct
               KH7correct
               KH8correct
               KH9correct
               ENDSMEET
               HOUSING
               LIVINGARRANGEMENT
               HOUSERANGES
               IMPUTATION_FLAG
               VALUERANGES
               MORTGAGE
               SAVINGSRANGES
               PRODHAVE_1
               PRODHAVE_2
               PRODHAVE_3
               PRODHAVE_4
               PRODHAVE_5
               PRODHAVE_6
               PRODHAVE_7
               PRODHAVE_8
               PRODHAVE_9
               PRODUSE_1
               PRODUSE_2
               PRODUSE_3
               PRODUSE_4
               PRODUSE_5
               PRODUSE_6
               CONSPROTECT1
               CONSPROTECT2
               CONSPROTECT3
               EARNERS
               VOLATILITY
               SNAP
               MATHARDSHIP_1
               MATHARDSHIP_2
               MATHARDSHIP_3
               MATHARDSHIP_4
               MATHARDSHIP_5
               MATHARDSHIP_6
               COLLECT
               REJECTED_1
               REJECTED_2
               ABSORBSHOCK
               BENEFITS_1
               BENEFITS_2
               BENEFITS_3
               BENEFITS_4
               BENEFITS_5
               FRAUD2
               COVERCOSTS
               BORROW_1
               BORROW_2
               SHOCKS_1
               SHOCKS_2
               SHOCKS_3
               SHOCKS_4
               SHOCKS_5
               SHOCKS_6
               SHOCKS_7
               SHOCKS_8
               SHOCKS_9
               SHOCKS_10
               SHOCKS_11
               SHOCKS_12
               MANAGE2
               PAIDHELP
               HSLOC
               PAREDUC
               FINSOC2_1
               FINSOC2_2
               FINSOC2_3
               FINSOC2_4
               FINSOC2_5
               FINSOC2_6
               FINSOC2_7
               OBJNUMERACY1
               ON2correct
               ON1correct
               MATERIALISM_1
               MATERIALISM_2
               MATERIALISM_3
               CONNECT
               HEALTH
               SCFHORIZON
               DISCOUNT
               MEMLOSS
               DISTRESS
               SELFCONTROL_1
               SELFCONTROL_2
               SELFCONTROL_3
               OUTLOOK_1
               OUTLOOK_2
               INTERCONNECTIONS_1
               INTERCONNECTIONS_2
               INTERCONNECTIONS_3
               INTERCONNECTIONS_4
               INTERCONNECTIONS_5
               INTERCONNECTIONS_6
               INTERCONNECTIONS_7
               INTERCONNECTIONS_8
               INTERCONNECTIONS_9
               INTERCONNECTIONS_10
               PEM
               HOUSESAT
               SOCSEC1
               SOCSEC2
               SOCSEC3
               LIFEEXPECT
               HHEDUC
               KIDS_NoChildren
               KIDS_1
               KIDS_2
               KIDS_3
               KIDS_4
               EMPLOY
               EMPLOY1_1
               EMPLOY1_2
               EMPLOY1_3
               EMPLOY1_4
               EMPLOY1_5
               EMPLOY1_6
               EMPLOY1_7
               EMPLOY1_8
               EMPLOY1_9
               RETIRE
               MILITARY
               Military_Status
               agecat
               generation
               PPEDUC
               PPETHM
               PPGENDER
               PPHHSIZE
               PPINCIMP
               PPMARIT
               PPMSACAT
               PPREG4
               PPREG9
               PPT01
               PPT25
               PPT612
               PPT1317
               PPT18OV
               PCTLT200FPL
               finalwt
   ;
   if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
   run;


PROC FORMAT;
VALUE  sample_f
        1="General population"
        2="Age 62+ oversample"
        3="Race/ethnicity and poverty oversample"
        ;
VALUE  fpl_f
        1="<100% FPL"
        2="100%-199% FPL"
        3="200%+ FPL"
        ;
VALUE  SWB_1_f
        -4="Response not written to database"
        -1="Refused"
        1="1 Strongly disagree"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6"
        7="7 Strongly agree"
        ;
VALUE  SWB_2_f
        -4="Response not written to database"
        -1="Refused"
        1="1 Strongly disagree"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6"
        7="7 Strongly agree"
        ;
VALUE  SWB_3_f
        -4="Response not written to database"
        -1="Refused"
        1="1 Strongly disagree"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6"
        7="7 Strongly agree"
        ;
VALUE  FWBscore_f
        -4="Response not written to database"
        -1="Refused"	
		;
VALUE  FWB1_1_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB1_2_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB1_3_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB1_4_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB1_5_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB1_6_f
        -4="Response not written to database"
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FWB2_1_f
        -4="Response not written to database"
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FWB2_2_f
        -4="Response not written to database"
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FWB2_3_f
        -4="Response not written to database"
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FWB2_4_f
        -4="Response not written to database"
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FSscore_f
		-1="Refused"
		;
VALUE  FS1_1_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_2_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_3_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_4_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_5_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_6_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS1_7_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FS2_1_f
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FS2_2_f
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  FS2_3_f
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  SUBKNOWL1_f
        -1="Refused"
        1="1 - Very low"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6"
        7="7 - Very high"
        ;
VALUE  ACT1_1_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  ACT1_2_f
        -1="Refused"
        1="Not at all"
        2="Very little"
        3="Somewhat"
        4="Very well"
        5="Completely"
        ;
VALUE  FINGOALS_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  PROPPLAN_1_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  PROPPLAN_2_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  PROPPLAN_3_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  PROPPLAN_4_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  MANAGE1_1_f
        -1="Refused"
        1="Not applicable or never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  MANAGE1_2_f
        -1="Refused"
        1="Not applicable or never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  MANAGE1_3_f
        -1="Refused"
        1="Not applicable or never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  MANAGE1_4_f
        -1="Refused"
        1="Not applicable or never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  SAVEHABIT_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Disagree slightly"
        4="Agree slightly"
        5="Agree"
        6="Strongly agree"
        ;
VALUE  FRUGALITY_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Disagree slightly"
        4="Agree slightly"
        5="Agree"
        6="Strongly agree"
        ;
VALUE  AUTOMATED_1_f
        -1="Refused"
        0="No"
        1="Yes"
        7="I do not have this type of account"
        ;
VALUE  AUTOMATED_2_f
        -1="Refused"
        0="No"
        1="Yes"
        7="I do not have this type of account"
        ;
VALUE  ASK1_1_f
        -1="Refused"
        1="Never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  ASK1_2_f
        -1="Refused"
        1="Never"
        2="Seldom"
        3="Sometimes"
        4="Often"
        5="Always"
        ;
VALUE  SUBNUMERACY2_f
        -1="Refused"
        1="1 - Always prefer words"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6 - Always prefer numbers"
        ;
VALUE  SUBNUMERACY1_f
        -1="Refused"
        1="1 - Not good at all"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6 - Extremely good"
        ;
VALUE  CHANGEABLE_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Somewhat disagree"
        4="Neither agree nor disagree"
        5="Somewhat agree"
        6="Agree"
        7="Strongly agree"
        ;
VALUE  GOALCONF_f
        -1="Refused"
        1="Not at all confident"
        2="Not very confident"
        3="Somewhat confident"
        4="Very confident"
        ;
VALUE  FINKNOWL1_f
        -1="Refused"
        1="More than $102"
        2="Exactly $102"
        3="Less than $102"
        ;
VALUE  FINKNOWL2_f
        -1="Refused"
        1="More than today"
        2="Exactly the same"
        3="Less than today"
        ;
VALUE  FINKNOWL3_f
        -1="Refused"
        1="True"
        2="False"
        ;
VALUE  FK1correct_f
        0="No"
        1="Yes"
        ;
VALUE  FK2correct_f
        0="No"
        1="Yes"
        ;
VALUE  FK3correct_f
        0="No"
        1="Yes"
        ;
VALUE  KHKNOWL1_f
        -1="Refused"
        1="Savings accounts"
        2="Bonds"
        3="Stocks"
        ;
VALUE  KHKNOWL2_f
        -1="Refused"
        1="Savings accounts"
        2="Bonds"
        3="Stocks"
        ;
VALUE  KHKNOWL3_f
        -1="Refused"
        1="Increase"
        2="Decrease"
        3="Stay the same"
        ;
VALUE  KHKNOWL4_f
        -1="Refused"
        1="True"
        2="False"
        ;
VALUE  KHKNOWL5_f
        -1="Refused"
        1="True"
        2="False"
        ;
VALUE  KHKNOWL6_f
        -1="Refused"
        1="True"
        2="False"
        ;
VALUE  KHKNOWL7_f
        -1="Refused"
        1="Less than 5 years"
        2="Between 5 and 10 years"
        3="Between 10 and 15 years"
        4="Never, you will continue to be in debt"
        ;
VALUE  KHKNOWL8_f
        -1="Refused"
        1="They will rise"
        2="They will fall"
        3="They will stay the same"
        4="There is no relationship between bond prices and the interest rate"
        ;
VALUE  KHKNOWL9_f
        -1="Refused"
        1="True"
        2="False"
        ;
VALUE  KH1correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH2correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH3correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH4correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH5correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH6correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH7correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH8correct_f
        0="No"
        1="Yes"
        ;
VALUE  KH9correct_f
        0="No"
        1="Yes"
        ;
VALUE  ENDSMEET_f
        -1="Refused"
        1="Not at all difficult"
        2="Somewhat difficult"
        3="Very difficult"
        ;
VALUE  HOUSING_f
        -1="Refused"
        1="I own my home"
        2="I rent"
        3="I do not currently own or rent"
        ;
VALUE  LIVINGARRANGEMENT_f
        -1="Refused"
        1="I am the only adult in the household"
        2="I live with my spouse/partner/significant other"
        3="I live in my parents' home"
        4="I live with other family, friends, or roommates"
        5="Some other arrangement"
        ;
VALUE  HOUSERANGES_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        1="Less than $300"
        2="$300-499"
        3="$500-749"
        4="$750-999"
        5="$1,000-1,499"
        6="$1,500-1,999"
        7="$2,000 or more"
        98="I don't know"
        99="Prefer not to say"
        ;
VALUE  IMPUTATION_FLAG_f
        0="Not imputed"
        1="Imputed"
        ;
VALUE  VALUERANGES_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        1="Less than $150,000"
        2="$150,000-249,999"
        3="$250,000-399,999"
        4="$400,000 or more"
        98="I don't know"
        99="Prefer not to say"
        ;
VALUE  MORTGAGE_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        1="Less than $50,000"
        2="$50,000-199,999"
        3="$200,000 or more"
        98="I don't know"
        99="Prefer not to say"
        ;
VALUE  SAVINGSRANGES_f
        -1="Refused"
        1="0"
        2="$1-99"
        3="$100-999"
        4="$1,000-4,999"
        5="$5,000-19,999"
        6="$20,000-74,999"
        7="$75,000 or more"
        98="I don't know"
        99="Prefer not to say"
        ;
VALUE  PRODHAVE_1_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_2_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_3_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_4_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_5_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_6_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_7_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_8_f
        0="No"
        1="Yes"
        ;
VALUE  PRODHAVE_9_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_1_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_2_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_3_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_4_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_5_f
        0="No"
        1="Yes"
        ;
VALUE  PRODUSE_6_f
        0="No"
        1="Yes"
        ;
VALUE  CONSPROTECT1_f
        -1="Refused"
        1="Never"
        2="Rarely"
        3="Sometimes"
        4="Often"
        ;
VALUE  CONSPROTECT2_f
        -1="Refused"
        1="Not at all familiar"
        2="Somewhat familiar"
        3="Very familiar"
        ;
VALUE  CONSPROTECT3_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  EARNERS_f
        -1="Refused"
        1="One"
        2="Two"
        3="More than two"
        ;
VALUE  VOLATILITY_f
        -1="Refused"
        1="Roughly the same each month"
        2="Roughly the same most months, but some unusually high or low months during the year"
        3="Often varies quite a bit from one month to the next"
        ;
VALUE  SNAP_f
        -1="Refused"
        0="No"
        1="Yes"
        8="Not sure"
        ;
VALUE  MATHARDSHIP_1_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  MATHARDSHIP_2_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  MATHARDSHIP_3_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  MATHARDSHIP_4_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  MATHARDSHIP_5_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  MATHARDSHIP_6_f
        -1="Refused"
        1="Never"
        2="Sometimes"
        3="Often"
        ;
VALUE  COLLECT_f
        -1="Refused"
        0="No"
        1="Yes"
        8="Not sure"
        ;
VALUE  REJECTED_1_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  REJECTED_2_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  ABSORBSHOCK_f
        -1="Refused"
        1="I am certain I could not come up with $2,000"
        2="I could probably not come up with $2,000"
        3="I could probably come up with $2,000"
        4="I am certain I could come up with the full $2,000"
        8="I don't know"
        ;
VALUE  BENEFITS_1_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  BENEFITS_2_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  BENEFITS_3_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  BENEFITS_4_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  BENEFITS_5_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FRAUD2_f
        -1="Refused"
        0="No"
        1="Yes"
        8="Not sure"
        ;
VALUE  COVERCOSTS_f
        -1="Refused"
        1="Use savings or sell something you own"
        2="Cut back or do without"
        3="Earn more money"
        4="Borrow money"
        ;
VALUE  BORROW_1_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  BORROW_2_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_1_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_2_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_3_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_4_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_5_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_6_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_7_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_8_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_9_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_10_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_11_f
        0="No"
        1="Yes"
        ;
VALUE  SHOCKS_12_f
        0="No"
        1="Yes"
        ;
VALUE  MANAGE2_f
        -1="Refused"
        1="Someone else takes care of all or most money matters in my household."
        2="Someone else and I take care of money matters in my household about the same."
        3="I take care of all or most money matters in my household."
        ;
VALUE  PAIDHELP_f
		-2="Question not asked because respondent not in item base"
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  HSLOC_f
        -1="Refused"
        1="U.S. and territories"
        2="Outside the U.S."
        8="I can't recall"
        ;
VALUE  PAREDUC_f
        -1="Refused"
        1="Less than high school"
        2="High school degree/GED"
        3="Some college/Associate"
        4="Bachelor's degree"
        5="Graduate/professional degree"
        ;
VALUE  FINSOC2_1_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_2_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_3_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_4_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_5_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_6_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  FINSOC2_7_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  OBJNUMERACY1_f
        -1="Refused"
        1="1%"
        2="10%"
        3="5%"
        ;
VALUE  ON2correct_f
        0="No"
        1="Yes"
        ;
VALUE  ON1correct_f
        0="No"
        1="Yes"
        ;
VALUE  MATERIALISM_1_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  MATERIALISM_2_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  MATERIALISM_3_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  CONNECT_f
        -1="Refused"
        ;
VALUE  HEALTH_f
        -1="Refused"
        1="Poor"
        2="Fair"
        3="Good"
        4="Very good"
        5="Excellent"
        ;
VALUE  SCFHORIZON_f
        -1="Refused"
        1="The next few months"
        2="The next year"
        3="The next few years"
        4="The next 5 to 10 years"
        5="Longer than 10 years"
        ;
VALUE  DISCOUNT_f
        -1="Refused"
        1="$816 now"
        2="$860 in three months"
        ;
VALUE  MEMLOSS_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  DISTRESS_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Neither agree nor disagree"
        4="Agree"
        5="Strongly agree"
        ;
VALUE  SELFCONTROL_1_f
        -1="Refused"
        1="Not at all"
        2="Not very well"
        3="Very well"
        4="Completely well"
        ;
VALUE  SELFCONTROL_2_f
        -1="Refused"
        1="Not at all"
        2="Not very well"
        3="Very well"
        4="Completely well"
        ;
VALUE  SELFCONTROL_3_f
        -1="Refused"
        1="Not at all"
        2="Not very well"
        3="Very well"
        4="Completely well"
        ;
VALUE  OUTLOOK_1_f
        -1="Refused"
        1="Strongly disagree"
        2="Somewhat disagree"
        3="Neither agree nor disagree"
        4="Somewhat agree"
        5="Strongly agree"
        ;
VALUE  OUTLOOK_2_f
        -1="Refused"
        1="Strongly disagree"
        2="Somewhat disagree"
        3="Neither agree nor disagree"
        4="Somewhat agree"
        5="Strongly agree"
        ;
VALUE  INTERCONNECTIONS_1_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_2_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_3_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_4_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_5_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_6_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_7_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_8_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_9_f
        0="No"
        1="Yes"
        ;
VALUE  INTERCONNECTIONS_10_f
        0="No"
        1="Yes"
        ;
VALUE  PEM_f
        -1="Refused"
        1="Strongly disagree"
        2="Disagree"
        3="Somewhat disagree"
        4="Neither agree nor disagree"
        5="Somewhat agree"
        6="Agree"
        7="Strongly agree"
        ;
VALUE  HOUSESAT_f
        -1="Refused"
        1="Not at all satisfied"
        2="Not very satisfied"
        3="Somewhat satisfied"
        4="Very satisfied"
        ;
VALUE  SOCSEC1_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  SOCSEC2_f
        -3="Invalid Response"
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        62="62"
        63="63"
        64="64"
        65="65"
        66="66"
        67="67"
        68="68"
        69="69"
        70="70 and above"
        ;
VALUE  SOCSEC3_f
        -3="Invalid Response"
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        61="61 and below"
        62="62"
        63="63"
        64="64"
        65="65"
        66="66"
        67="67"
        68="68"
        69="69"
        70="70"
        71="71 and above"
        ;
VALUE  LIFEEXPECT_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        0="0"
        1="1"
        2="2"
        3="3"
        4="4"
        5="5"
        6="6"
        7="7"
        8="8"
        9="9"
        10="10"
        11="11"
        12="12"
        15="15"
        20="20"
        22="22"
        24="24"
        25="25"
        26="26"
        28="28"
        29="29"
        30="30"
        33="33"
        35="35"
        36="36"
        37="37"
        40="40"
        41="41"
        42="42"
        43="43"
        44="44"
        45="45"
        47="47"
        50="50"
        52="52"
        54="54"
        55="55"
        56="56"
        57="57"
        59="59"
        60="60"
        62="62"
        63="63"
        64="64"
        65="65"
        66="66"
        67="67"
        68="68"
        69="69"
        70="70"
        71="71"
        72="72"
        73="73"
        75="75"
        76="76"
        77="77"
        78="78"
        79="79"
        80="80"
        81="81"
        82="82"
        83="83"
        84="84"
        85="85"
        86="86"
        87="87"
        88="88"
        89="89"
        90="90"
        91="91"
        92="92"
        93="93"
        94="94"
        95="95"
        96="96"
        97="97"
        98="98"
        99="99"
        100="100"
        ;
VALUE  HHEDUC_f
        -1="Refused"
        1="Less than high school"
        2="High school degree/GED"
        3="Some college/Associate"
        4="Bachelor's degree"
        5="Graduate/professional degree"
        ;
VALUE  KIDS_NoChildren_f
		-1="Refused"
        0="Respondent financially supports children"
        1="I have no children that I financially support"
        ;
VALUE  KIDS_1_f
        -1="Refused"
        0="0"
        1="1"
        2="2+"
        ;
VALUE  KIDS_2_f
        -3="Invalid Response"
        -1="Refused"
        0="0"
        1="1"
        2="2+"
        ;
VALUE  KIDS_3_f
        -1="Refused"
        0="0"
        1="1"
        2="2+"
        ;
VALUE  KIDS_4_f
        -1="Refused"
        0="0"
        1="1"
        2="2+"
        ;
VALUE  EMPLOY_f
        1="Self-employed"
        2="Work full-time for an employer or the military"
        3="Work part-time for an employer or the military"
        4="Homemaker"
        5="Full-time student"
        6="Permanently sick, disabled or unable to work"
        7="Unemployed or temporarily laid off"
        8="Retired"
        97="Multiple statuses selected, no primary status selected"
        99="Refused"
        ;
VALUE  EMPLOY1_1_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_2_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_3_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_4_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_5_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_6_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_7_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_8_f
        0="No"
        1="Yes"
        ;
VALUE  EMPLOY1_9_f
        0="No"
        1="Yes"
        ;
VALUE  RETIRE_f
        -2="Question not asked because respondent not in item base"
        -1="Refused"
        1="Earlier than planned"
        2="About when planned"
        3="Later than planned"
        ;
VALUE  MILITARY_f
        -1="Refused"
        0="No"
        1="Yes"
        ;
VALUE  Military_Status_f
		-1="Refused"
        1="Active military (active, reserve, natl guard)"
        2="Veteran (veteran or retired)"
        3="Spouse/dependent Active"
        4="Spouse/dependent Veteran"
		5="Neither Active nor Veteran"
        ;
VALUE  agecat_f
        1="18-24"
        2="25-34"
        3="35-44"
        4="45-54"
        5="55-61"
        6="62-69"
        7="70-74"
        8="75+"
        ;
VALUE  generation_f
        1="Pre-Boomer"
        2="Boomer"
        3="Gen X"
        4="Millennial"
        ;
VALUE  PPEDUC_f
        1="Less than high school"
        2="High school degree/GED"
        3="Some college/Associate"
        4="Bachelor's degree"
        5="Graduate/professional degree"
        ;
VALUE  PPETHM_f
        1="White, Non-Hispanic"
        2="Black, Non-Hispanic"
        3="Other, Non-Hispanic"
        4="Hispanic"
        ;
VALUE  PPGENDER_f
        1="Male"
        2="Female"
        ;
VALUE  PPHHSIZE_f
        1="1"
        2="2"
        3="3"
        4="4"
        5="5+"
        ;
VALUE  PPINCIMP_f
        1="Less than $20,000"
        2="$20,000 to $29,999"
        3="$30,000 to $39,999"
        4="$40,000 to $49,999"
        5="$50,000 to $59,999"
        6="$60,000 to $74,999"
        7="$75,000 to $99,999"
        8="$100,000 to $149,999"
        9="$150,000 or more"
        ;
VALUE  PPMARIT_f
        1="Married"
        2="Widowed"
        3="Divorced/Separated"
        4="Never married"
        5="Living with partner"
        ;
VALUE  PPMSACAT_f
        0="Non-Metro"
        1="Metro"
        ;
VALUE  PPREG4_f
        1="Northeast"
        2="Midwest"
        3="South"
        4="West"
        ;
VALUE  PPREG9_f
        1="New England"
        2="Mid-Atlantic"
        3="East-North Central"
        4="West-North Central"
        5="South Atlantic"
        6="East-South Central"
        7="West-South Central"
        8="Mountain"
        9="Pacific"
        ;
VALUE  PPT01_f
        0="0"
        1="1+"
        ;
VALUE  PPT25_f
        0="0"
        1="1+"
        ;
VALUE  PPT612_f
        0="0"
        1="1+"
        ;
VALUE  PPT1317_f
        0="0"
        1="1+"
        ;
VALUE  PPT18OV_f
        1="1"
        2="2"
        3="3"
        4="4+"
        ;
VALUE  PCTLT200FPL_f
		-5="County is not known"
        0="Less than 40% of county population below 200% of poverty level"
        1="40% or more of county population below 200% of poverty level"
        ;

RUN;




/* Apply labels and formats */
DATA NFWBS_PUF    ;
SET NFWBS_PUF    ;

LABEL
 
PUF_ID="Public Use File ID"
sample="Sample"
fpl="Poverty status"
SWB_1="I am satisfied with my life"
SWB_2="I am optimistic about my future"
SWB_3="If I work hard today, I will be more successful in the future"
FWBscore="Financial well-being scale score"
FWB1_1="I could handle a major unexpected expense"
FWB1_2="I am securing my financial future"
FWB1_3="Because of my money situation...I will never have the things I want in life"
FWB1_4="I can enjoy life because of the way I’m managing my money"
FWB1_5="I am just getting by financially"
FWB1_6="I am concerned that the money I have or will save won’t last"
FWB2_1="Giving a gift...would put a strain on my finances for the month"
FWB2_2="I have money left over at the end of the month"
FWB2_3="I am behind with my finances"
FWB2_4="My finances control my life"
FSscore="Financial skill scale score"
FS1_1="I know how to get myself to follow through on my financial intentions"
FS1_2="I know where to find the advice I need to make decisions involving money"
FS1_3="I know how to make complex financial decisions"
FS1_4="I am able to make good financial decisions that are new to me"
FS1_5="I am able to recognize a good financial investment"
FS1_6="I know how to keep myself from spending too much"
FS1_7="I know how to make myself save"
FS2_1="I know when I do not have enough info to make a good decision involving my money"
FS2_2="I know when I need advice about my money"
FS2_3="I struggle to understand financial information"
SUBKNOWL1="How would you assess your overall financial knowledge?"
ACT1_1="I follow-through on my financial commitments to others"
ACT1_2="I follow-through on financial goals I set for myself"
FINGOALS="Do you have a current or recent financial goal?"
PROPPLAN_1="I consult my budget to see how much money I have left"
PROPPLAN_2="I actively consider the steps I need to take to stick to my budget"
PROPPLAN_3="I set financial goals for what I want to achieve with my money"
PROPPLAN_4="I prepare a clear plan of action w/ detailed steps to achieve my financial goals"
MANAGE1_1="Paid all your bills on time"
MANAGE1_2="Stayed within your budget or spending plan"
MANAGE1_3="Paid off credit card balance in full each month"
MANAGE1_4="Checked your statements, bills and receipts to make sure there were no errors"
SAVEHABIT="Putting money into savings is a habit for me"
FRUGALITY="If I can re-use an item I already have, there’s no sense in buying something new"
AUTOMATED_1="A Retirement Savings Account"
AUTOMATED_2="A Non-Retirement Savings Account"
ASK1_1="I do my own research before making decisions involving money"
ASK1_2="I ask other people their opinions before making decisions involving money"
SUBNUMERACY2="Prefers words for expressions of probabilities"
SUBNUMERACY1="How good are you at working with percentages?"
CHANGEABLE="Belief that ability to manage money is NOT changeable"
GOALCONF="Confidence in own ability to achieve financial goals"
LMscore="Lusardi and Mitchell financial knowledge scale score"
FINKNOWL1="Understanding of compound interest"
FINKNOWL2="Understanding of inflation and return on savings"
FINKNOWL3="Understanding of stock vs mutual fund volatility"
FK1correct="FINKNOWL1 answered correctly"
FK2correct="FINKNOWL2 answered correctly"
FK3correct="FINKNOWL3 answered correctly"
KHscore="Knoll and Houts financial knowledge scale score"
KHKNOWL1="Understanding of long-term returns on investment"
KHKNOWL2="Understanding of stocks vs bond vs savings volatility"
KHKNOWL3="Understanding of benefits of diversification"
KHKNOWL4="Understanding of possibility of stock market losses"
KHKNOWL5="Understanding of life insurance"
KHKNOWL6="Understanding of possibility of housing market losses"
KHKNOWL7="Understanding of credit card minimum payments"
KHKNOWL8="Understanding of relationship of bonds and interest rates"
KHKNOWL9="Understanding of mortgage term length on total interest paid"
KH1correct="KHKNOWL1 answered correctly"
KH2correct="KHKNOWL2 answered correctly"
KH3correct="KHKNOWL3 answered correctly"
KH4correct="KHKNOWL4 answered correctly"
KH5correct="KHKNOWL5 answered correctly"
KH6correct="KHKNOWL6 answered correctly"
KH7correct="KHKNOWL7 answered correctly"
KH8correct="KHKNOWL8 answered correctly"
KH9correct="KHKNOWL9 answered correctly"
ENDSMEET="Difficulty of covering monthly expenses and bills"
HOUSING="Which one of the following best describes your housing situation?"
LIVINGARRANGEMENT="Current living arrangements"
HOUSERANGES="About how much do you pay for your home each month?"
IMPUTATION_FLAG="Value for HOUSERANGES was imputed"
VALUERANGES="If you were to sell your home today, what do you think it would be worth?"
MORTGAGE="What do you owe on your home today?"
SAVINGSRANGES="How much money do you have in savings today...?"
PRODHAVE_1="Checking or Savings Account at a bank or credit union"
PRODHAVE_2="Life Insurance"
PRODHAVE_3="Health Insurance"
PRODHAVE_4="Retirement Account (such as a 401k or IRA)"
PRODHAVE_5="Pension"
PRODHAVE_6="Non-Retirement Investments (such as stocks, bonds or mutual funds)"
PRODHAVE_7="Education Savings Account (such as 529 or Coverdale)"
PRODHAVE_8="Student/Education Loan (for yourself or someone else)"
PRODHAVE_9="Respondent did not select any item in PRODHAVE bank"
PRODUSE_1="Used payday loan or cash advance loan"
PRODUSE_2="Used pawn loan or auto title loan"
PRODUSE_3="Used reloadable card not linked with checking or savings account"
PRODUSE_4="Used nonbank service for international money transfers"
PRODUSE_5="Used nonbank service for check cashing or purchasing a money order"
PRODUSE_6="Respondent did not select any item in PRODUSE bank"
CONSPROTECT1="Frequency felt not respected or mistreated w/ financial services"
CONSPROTECT2="Familiarity w/ agencies and orgs to resolve problems w/ financial services"
CONSPROTECT3="Reported problem to one of these agencies or orgs"
EARNERS="Household members currently contributing to paying household bills"
VOLATILITY="Household income volatility"
SNAP="Any household member received SNAP benefits"
MATHARDSHIP_1="Worried whether food would run out before got money to buy more"
MATHARDSHIP_2="Food didn't last and didn't have money to get more"
MATHARDSHIP_3="Couldn't afford a place to live"
MATHARDSHIP_4="Any household member couldn't afford to see doctor or go to hospital"
MATHARDSHIP_5="Any household member stopped taking medication or took less due to costs"
MATHARDSHIP_6="Utilities shut off due to non-payment"
COLLECT="Contacted by debt collector in past 12 months"
REJECTED_1="I applied for credit and was turned down"
REJECTED_2="I did not apply for credit because I thought would be turned down"
ABSORBSHOCK="Confidence in ability to raise $2,000 in 30 days"
BENEFITS_1="Health Insurance"
BENEFITS_2="401(k) or Other Employer-Sponsored Retirement Savings Account"
BENEFITS_3="Defined-Benefit Pension"
BENEFITS_4="Tuition Reimbursement and/or Student Debt Repayment"
BENEFITS_5="Work/Life Benefits"
FRAUD2="Victim of financial fraud or attempted financial fraud in past 5 years"
COVERCOSTS="Course of action if income did not cover living costs"
BORROW_1="My friends or family would lend me the money and expect me to repay them"
BORROW_2="My friends or family would give me the money with no expectation of repayment"
SHOCKS_1="Lost a job"
SHOCKS_2="Work hours/pay reduced or business owned by self/HH mem had financial difficulty"
SHOCKS_3="Received a foreclosure notice"
SHOCKS_4="Had a major car or home repair"
SHOCKS_5="Had a health emergency"
SHOCKS_6="Got a divorce or separation"
SHOCKS_7="Added a child to the household"
SHOCKS_8="Experienced the death of primary breadwinner"
SHOCKS_9="Received a large sum of money beyond normal income"
SHOCKS_10="Had a child start daycare or college"
SHOCKS_11="Provided unexpected financial support to a family member or friend"
SHOCKS_12="Respondent did not select any item in SHOCKS bank"
MANAGE2="Who in household makes financial decisions"
PAIDHELP="Do you pay the person who helps take care of money matters in your household?"
HSLOC="Where did you live at age 17?"
PAREDUC="Highest level of education by person/people who raised respondent"
FINSOC2_1="Discussed family financial matters with me"
FINSOC2_2="Spoke to me about the importance of saving"
FINSOC2_3="Discussed how to establish a good credit rating"
FINSOC2_4="Taught me how to be a smart shopper"
FINSOC2_5="Taught me that my actions determine my success in life"
FINSOC2_6="Provided me with a regular allowance"
FINSOC2_7="Provided me with a savings account"
OBJNUMERACY1="Which of the following represents the biggest risk of getting a disease?"
ON2correct="OBJNUMERACY2 answered correctly"
ON1correct="OBJNUMERACY1 answered correctly"
MATERIALISM_1="I admire people who own expensive homes, cars and clothes"
MATERIALISM_2="The things I own say a lot about how well I’m doing in life"
MATERIALISM_3="I like to own things that impress people"
CONNECT="Psychological connectedness"
HEALTH="In general, would you say your health is . . ."
SCFHORIZON="Financial planning time horizon"
DISCOUNT="If you had a choice, would you rather receive . . .?"
MEMLOSS="Experienced memory loss or confusion in past 12 months"
DISTRESS="Lot of stress in respondent's life"
SELFCONTROL_1="I often act without thinking through all the alternatives"
SELFCONTROL_2="I am good at resisting temptation"
SELFCONTROL_3="I am able to work diligently toward long-term goals"
OUTLOOK_1="There are services in this area to help me"
OUTLOOK_2="There are good work opportunities for me, if I choose to take them"
INTERCONNECTIONS_1="Parent"
INTERCONNECTIONS_2="Spouse/Partner"
INTERCONNECTIONS_3="Extended family (e.g., uncle, aunt, cousins, grandparents)"
INTERCONNECTIONS_4="Employer"
INTERCONNECTIONS_5="Friends/Co-workers"
INTERCONNECTIONS_6="Community or faith-based organizations"
INTERCONNECTIONS_7="Financial institution"
INTERCONNECTIONS_8="Professional advisor, planner or counselor/coach"
INTERCONNECTIONS_9="Government"
INTERCONNECTIONS_10="Respondent did not select any item in INTERCONNECTIONS bank"
PEM="Everyone has a fair chance at moving up the economic ladder"
HOUSESAT="How satisfied are you with the place you live currently?"
SOCSEC1="Have you started receiving social security retirement benefits?"
SOCSEC2="At what age did you begin receiving benefits?"
SOCSEC3="Age likely to start receiving Social Security retirement benefits"
LIFEEXPECT="How likely do you believe it is that you will live beyond age 75?"
HHEDUC="Highest level of education of all household members"
KIDS_NoChildren="I have no children that I support financially"
KIDS_1="Less than 7 years old"
KIDS_2="7 to 12 years old"
KIDS_3="13 to 17 years old"
KIDS_4="More than 18 years old"
EMPLOY="Primary or only employment status"
EMPLOY1_1="Self-employed"
EMPLOY1_2="Work full-time for an employer or the military"
EMPLOY1_3="Work part-time for an employer or the military"
EMPLOY1_4="Homemaker"
EMPLOY1_5="Full-time student"
EMPLOY1_6="Permanently sick, disabled or unable to work"
EMPLOY1_7="Unemployed or temporarily laid off"
EMPLOY1_8="Retired"
EMPLOY1_9="Respondent did not select any item in EMPLOY1 bank"
RETIRE="Actual date of retirement vs date planned"
MILITARY="Current/former member of US Armed Forces or spouse/dependent of service member"
Military_Status="Military status"
agecat="Age"
generation="Generation"
PPEDUC="Education (Highest Degree Received)"
PPETHM="Race / Ethnicity"
PPGENDER="Gender"
PPHHSIZE="Household Size"
PPINCIMP="Household Income"
PPMARIT="Marital Status"
PPMSACAT="MSA Status"
PPREG4="Census Region"
PPREG9="Census Division"
PPT01="Presence of Household Members - Children 0-1"
PPT25="Presence of Household Members - Children 2-5"
PPT612="Presence of Household Members - Children 6-12"
PPT1317="Presence of Household Members - Children 13-17"
PPT18OV="Presence of Household Members - Adults 18+"
PCTLT200FPL="County pct less than 200% of poverty level (ACS 2015 5-year SF)"
finalwt="Final weight"

;
*** Format Assignments;                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
FORMAT   
sample	sample_f.
fpl	fpl_f.
SWB_1	SWB_1_f.
SWB_2	SWB_2_f.
SWB_3	SWB_3_f.
FWBscore FWBscore_f.
FWB1_1	FWB1_1_f.
FWB1_2	FWB1_2_f.
FWB1_3	FWB1_3_f.
FWB1_4	FWB1_4_f.
FWB1_5	FWB1_5_f.
FWB1_6	FWB1_6_f.
FWB2_1	FWB2_1_f.
FWB2_2	FWB2_2_f.
FWB2_3	FWB2_3_f.
FWB2_4	FWB2_4_f.
FSscore FSscore_f.
FS1_1	FS1_1_f.
FS1_2	FS1_2_f.
FS1_3	FS1_3_f.
FS1_4	FS1_4_f.
FS1_5	FS1_5_f.
FS1_6	FS1_6_f.
FS1_7	FS1_7_f.
FS2_1	FS2_1_f.
FS2_2	FS2_2_f.
FS2_3	FS2_3_f.
SUBKNOWL1	SUBKNOWL1_f.
ACT1_1	ACT1_1_f.
ACT1_2	ACT1_2_f.
FINGOALS	FINGOALS_f.
PROPPLAN_1	PROPPLAN_1_f.
PROPPLAN_2	PROPPLAN_2_f.
PROPPLAN_3	PROPPLAN_3_f.
PROPPLAN_4	PROPPLAN_4_f.
MANAGE1_1	MANAGE1_1_f.
MANAGE1_2	MANAGE1_2_f.
MANAGE1_3	MANAGE1_3_f.
MANAGE1_4	MANAGE1_4_f.
SAVEHABIT	SAVEHABIT_f.
FRUGALITY	FRUGALITY_f.
AUTOMATED_1	AUTOMATED_1_f.
AUTOMATED_2	AUTOMATED_2_f.
ASK1_1	ASK1_1_f.
ASK1_2	ASK1_2_f.
SUBNUMERACY2	SUBNUMERACY2_f.
SUBNUMERACY1	SUBNUMERACY1_f.
CHANGEABLE	CHANGEABLE_f.
GOALCONF	GOALCONF_f.
FINKNOWL1	FINKNOWL1_f.
FINKNOWL2	FINKNOWL2_f.
FINKNOWL3	FINKNOWL3_f.
FK1correct	FK1correct_f.
FK2correct	FK2correct_f.
FK3correct	FK3correct_f.
KHKNOWL1	KHKNOWL1_f.
KHKNOWL2	KHKNOWL2_f.
KHKNOWL3	KHKNOWL3_f.
KHKNOWL4	KHKNOWL4_f.
KHKNOWL5	KHKNOWL5_f.
KHKNOWL6	KHKNOWL6_f.
KHKNOWL7	KHKNOWL7_f.
KHKNOWL8	KHKNOWL8_f.
KHKNOWL9	KHKNOWL9_f.
KH1correct	KH1correct_f.
KH2correct	KH2correct_f.
KH3correct	KH3correct_f.
KH4correct	KH4correct_f.
KH5correct	KH5correct_f.
KH6correct	KH6correct_f.
KH7correct	KH7correct_f.
KH8correct	KH8correct_f.
KH9correct	KH9correct_f.
ENDSMEET	ENDSMEET_f.
HOUSING	HOUSING_f.
LIVINGARRANGEMENT	LIVINGARRANGEMENT_f.
HOUSERANGES	HOUSERANGES_f.
IMPUTATION_FLAG	IMPUTATION_FLAG_f.
VALUERANGES	VALUERANGES_f.
MORTGAGE	MORTGAGE_f.
SAVINGSRANGES	SAVINGSRANGES_f.
PRODHAVE_1	PRODHAVE_1_f.
PRODHAVE_2	PRODHAVE_2_f.
PRODHAVE_3	PRODHAVE_3_f.
PRODHAVE_4	PRODHAVE_4_f.
PRODHAVE_5	PRODHAVE_5_f.
PRODHAVE_6	PRODHAVE_6_f.
PRODHAVE_7	PRODHAVE_7_f.
PRODHAVE_8	PRODHAVE_8_f.
PRODHAVE_9	PRODHAVE_9_f.
PRODUSE_1	PRODUSE_1_f.
PRODUSE_2	PRODUSE_2_f.
PRODUSE_3	PRODUSE_3_f.
PRODUSE_4	PRODUSE_4_f.
PRODUSE_5	PRODUSE_5_f.
PRODUSE_6	PRODUSE_6_f.
CONSPROTECT1	CONSPROTECT1_f.
CONSPROTECT2	CONSPROTECT2_f.
CONSPROTECT3	CONSPROTECT3_f.
EARNERS	EARNERS_f.
VOLATILITY	VOLATILITY_f.
SNAP	SNAP_f.
MATHARDSHIP_1	MATHARDSHIP_1_f.
MATHARDSHIP_2	MATHARDSHIP_2_f.
MATHARDSHIP_3	MATHARDSHIP_3_f.
MATHARDSHIP_4	MATHARDSHIP_4_f.
MATHARDSHIP_5	MATHARDSHIP_5_f.
MATHARDSHIP_6	MATHARDSHIP_6_f.
COLLECT	COLLECT_f.
REJECTED_1	REJECTED_1_f.
REJECTED_2	REJECTED_2_f.
ABSORBSHOCK	ABSORBSHOCK_f.
BENEFITS_1	BENEFITS_1_f.
BENEFITS_2	BENEFITS_2_f.
BENEFITS_3	BENEFITS_3_f.
BENEFITS_4	BENEFITS_4_f.
BENEFITS_5	BENEFITS_5_f.
FRAUD2	FRAUD2_f.
COVERCOSTS	COVERCOSTS_f.
BORROW_1	BORROW_1_f.
BORROW_2	BORROW_2_f.
SHOCKS_1	SHOCKS_1_f.
SHOCKS_2	SHOCKS_2_f.
SHOCKS_3	SHOCKS_3_f.
SHOCKS_4	SHOCKS_4_f.
SHOCKS_5	SHOCKS_5_f.
SHOCKS_6	SHOCKS_6_f.
SHOCKS_7	SHOCKS_7_f.
SHOCKS_8	SHOCKS_8_f.
SHOCKS_9	SHOCKS_9_f.
SHOCKS_10	SHOCKS_10_f.
SHOCKS_11	SHOCKS_11_f.
SHOCKS_12	SHOCKS_12_f.
MANAGE2	MANAGE2_f.
PAIDHELP	PAIDHELP_f.
HSLOC	HSLOC_f.
PAREDUC	PAREDUC_f.
FINSOC2_1	FINSOC2_1_f.
FINSOC2_2	FINSOC2_2_f.
FINSOC2_3	FINSOC2_3_f.
FINSOC2_4	FINSOC2_4_f.
FINSOC2_5	FINSOC2_5_f.
FINSOC2_6	FINSOC2_6_f.
FINSOC2_7	FINSOC2_7_f.
OBJNUMERACY1	OBJNUMERACY1_f.
ON2correct	ON2correct_f.
ON1correct	ON1correct_f.
MATERIALISM_1	MATERIALISM_1_f.
MATERIALISM_2	MATERIALISM_2_f.
MATERIALISM_3	MATERIALISM_3_f.
CONNECT	CONNECT_f.
HEALTH	HEALTH_f.
SCFHORIZON	SCFHORIZON_f.
DISCOUNT	DISCOUNT_f.
MEMLOSS	MEMLOSS_f.
DISTRESS	DISTRESS_f.
SELFCONTROL_1	SELFCONTROL_1_f.
SELFCONTROL_2	SELFCONTROL_2_f.
SELFCONTROL_3	SELFCONTROL_3_f.
OUTLOOK_1	OUTLOOK_1_f.
OUTLOOK_2	OUTLOOK_2_f.
INTERCONNECTIONS_1	INTERCONNECTIONS_1_f.
INTERCONNECTIONS_2	INTERCONNECTIONS_2_f.
INTERCONNECTIONS_3	INTERCONNECTIONS_3_f.
INTERCONNECTIONS_4	INTERCONNECTIONS_4_f.
INTERCONNECTIONS_5	INTERCONNECTIONS_5_f.
INTERCONNECTIONS_6	INTERCONNECTIONS_6_f.
INTERCONNECTIONS_7	INTERCONNECTIONS_7_f.
INTERCONNECTIONS_8	INTERCONNECTIONS_8_f.
INTERCONNECTIONS_9	INTERCONNECTIONS_9_f.
INTERCONNECTIONS_10	INTERCONNECTIONS_10_f.
PEM	PEM_f.
HOUSESAT	HOUSESAT_f.
SOCSEC1	SOCSEC1_f.
SOCSEC2	SOCSEC2_f.
SOCSEC3	SOCSEC3_f.
LIFEEXPECT	LIFEEXPECT_f.
HHEDUC	HHEDUC_f.
KIDS_NoChildren	KIDS_NoChildren_f.
KIDS_1	KIDS_1_f.
KIDS_2	KIDS_2_f.
KIDS_3	KIDS_3_f.
KIDS_4	KIDS_4_f.
EMPLOY	EMPLOY_f.
EMPLOY1_1	EMPLOY1_1_f.
EMPLOY1_2	EMPLOY1_2_f.
EMPLOY1_3	EMPLOY1_3_f.
EMPLOY1_4	EMPLOY1_4_f.
EMPLOY1_5	EMPLOY1_5_f.
EMPLOY1_6	EMPLOY1_6_f.
EMPLOY1_7	EMPLOY1_7_f.
EMPLOY1_8	EMPLOY1_8_f.
EMPLOY1_9	EMPLOY1_9_f.
RETIRE	RETIRE_f.
MILITARY	MILITARY_f.
Military_Status	Military_Status_f.
agecat	agecat_f.
generation	generation_f.
PPEDUC	PPEDUC_f.
PPETHM	PPETHM_f.
PPGENDER	PPGENDER_f.
PPHHSIZE	PPHHSIZE_f.
PPINCIMP	PPINCIMP_f.
PPMARIT	PPMARIT_f.
PPMSACAT	PPMSACAT_f.
PPREG4	PPREG4_f.
PPREG9	PPREG9_f.
PPT01	PPT01_f.
PPT25	PPT25_f.
PPT612	PPT612_f.
PPT1317	PPT1317_f.
PPT18OV	PPT18OV_f.
PCTLT200FPL	PCTLT200FPL_f.
;

RUN;

/* Outputting permanent SAS dataset*/
DATA outdata.NFWBS_PUF_2016_data;
SET NFWBS_PUF;
RUN;


