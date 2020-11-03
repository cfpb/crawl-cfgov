****************************************************************************************************.
*Program Name: NFWBS_PUF_2016_read_in_SPSS.sps                                                     *.
*Path:         .\NFWBS_PUF_2016_read_in_SPSS.sps                                                   *.
*Ancestor:                                                                                         *.
*Project:      National Financial Well-Being Survey (Consumer Financial Protection Bureau)         *.
*Programmer:   Abt Associates                                                                      *.
*Inputs:       .\NFWBS_PUF_2016_data.csv                                                           *.
*Outputs:      .\NFWBS_PUF_2016_data.sav                                                           *.
*Purpose:      This SPSS program reads in the National Financial Well-Being Survey Public Use File *.
*Note:		                                                                                   *.
*Created On:   07-28-17                                                                            *.
*Edit History:	                                                                                   *.
****************************************************************************************************.

* Set directory *.

CD /*INSERT FILE DIRECTORY LOCATION HERE*/.

* Read in file *.

GET DATA
	/TYPE=TXT
	/FILE="NFWBS_PUF_2016_data.csv"
	/ENCODING='Locale'
	/ARRANGEMENT=DELIMITED
	/FIRSTCASE=2
	/DELCASE=LINE
	/DELIMITERS=","
	/VARIABLES=
	PUF_ID F5.0
	sample F1.0
	fpl F1.0
	SWB_1 F1.0
	SWB_2 F2.0
	SWB_3 F2.0
	FWBscore F2.0
	FWB1_1 F1.0
	FWB1_2 F1.0
	FWB1_3 F2.0
	FWB1_4 F1.0
	FWB1_5 F2.0
	FWB1_6 F2.0
	FWB2_1 F1.0
	FWB2_2 F1.0
	FWB2_3 F1.0
	FWB2_4 F1.0
	FSscore F2.0
	FS1_1 F1.0
	FS1_2 F2.0
	FS1_3 F1.0
	FS1_4 F1.0
	FS1_5 F1.0
	FS1_6 F1.0
	FS1_7 F1.0
	FS2_1 F1.0
	FS2_2 F1.0
	FS2_3 F1.0
	SUBKNOWL1 F2.0
	ACT1_1 F2.0
	ACT1_2 F2.0
	FINGOALS F2.0
	PROPPLAN_1 F1.0
	PROPPLAN_2 F1.0
	PROPPLAN_3 F1.0
	PROPPLAN_4 F1.0
	MANAGE1_1 F1.0
	MANAGE1_2 F1.0
	MANAGE1_3 F1.0
	MANAGE1_4 F1.0
	SAVEHABIT F1.0
	FRUGALITY F1.0
	AUTOMATED_1 F2.0
	AUTOMATED_2 F2.0
	ASK1_1 F2.0
	ASK1_2 F2.0
	SUBNUMERACY2 F2.0
	SUBNUMERACY1 F2.0
	CHANGEABLE F2.0
	GOALCONF F2.0
	LMscore F1.0
	FINKNOWL1 F1.0
	FINKNOWL2 F1.0
	FINKNOWL3 F1.0
	FK1correct F1.0
	FK2correct F1.0
	FK3correct F1.0
	KHscore F6.3
	KHKNOWL1 F1.0
	KHKNOWL2 F1.0
	KHKNOWL3 F1.0
	KHKNOWL4 F1.0
	KHKNOWL5 F1.0
	KHKNOWL6 F1.0
	KHKNOWL7 F1.0
	KHKNOWL8 F2.0
	KHKNOWL9 F1.0
	KH1correct F1.0
	KH2correct F1.0
	KH3correct F1.0
	KH4correct F1.0
	KH5correct F1.0
	KH6correct F1.0
	KH7correct F1.0
	KH8correct F1.0
	KH9correct F1.0
	ENDSMEET F2.0
	HOUSING F2.0
	LIVINGARRANGEMENT F2.0
	HOUSERANGES F2.0
	IMPUTATION_FLAG F1.0
	VALUERANGES F2.0
	MORTGAGE F2.0
	SAVINGSRANGES F2.0
	PRODHAVE_1 F1.0
	PRODHAVE_2 F1.0
	PRODHAVE_3 F1.0
	PRODHAVE_4 F1.0
	PRODHAVE_5 F1.0
	PRODHAVE_6 F1.0
	PRODHAVE_7 F1.0
	PRODHAVE_8 F1.0
	PRODHAVE_9 F1.0
	PRODUSE_1 F1.0
	PRODUSE_2 F1.0
	PRODUSE_3 F1.0
	PRODUSE_4 F1.0
	PRODUSE_5 F1.0
	PRODUSE_6 F1.0
	CONSPROTECT1 F2.0
	CONSPROTECT2 F2.0
	CONSPROTECT3 F2.0
	EARNERS F2.0
	VOLATILITY F2.0
	SNAP F2.0
	MATHARDSHIP_1 F1.0
	MATHARDSHIP_2 F1.0
	MATHARDSHIP_3 F1.0
	MATHARDSHIP_4 F1.0
	MATHARDSHIP_5 F1.0
	MATHARDSHIP_6 F1.0
	COLLECT F2.0
	REJECTED_1 F2.0
	REJECTED_2 F2.0
	ABSORBSHOCK F1.0
	BENEFITS_1 F1.0
	BENEFITS_2 F1.0
	BENEFITS_3 F1.0
	BENEFITS_4 F1.0
	BENEFITS_5 F1.0
	FRAUD2 F1.0
	COVERCOSTS F2.0
	BORROW_1 F2.0
	BORROW_2 F2.0
	SHOCKS_1 F1.0
	SHOCKS_2 F1.0
	SHOCKS_3 F1.0
	SHOCKS_4 F1.0
	SHOCKS_5 F1.0
	SHOCKS_6 F1.0
	SHOCKS_7 F1.0
	SHOCKS_8 F1.0
	SHOCKS_9 F1.0
	SHOCKS_10 F1.0
	SHOCKS_11 F1.0
	SHOCKS_12 F1.0
	MANAGE2 F2.0
	PAIDHELP F1.0
	HSLOC F2.0
	PAREDUC F1.0
	FINSOC2_1 F1.0
	FINSOC2_2 F1.0
	FINSOC2_3 F1.0
	FINSOC2_4 F1.0
	FINSOC2_5 F1.0
	FINSOC2_6 F1.0
	FINSOC2_7 F1.0
	OBJNUMERACY1 F2.0
	ON2correct F1.0
	ON1correct F1.0
	MATERIALISM_1 F2.0
	MATERIALISM_2 F2.0
	MATERIALISM_3 F2.0
	CONNECT F3.0
	HEALTH F2.0
	SCFHORIZON F2.0
	DISCOUNT F2.0
	MEMLOSS F2.0
	DISTRESS F2.0
	SELFCONTROL_1 F2.0
	SELFCONTROL_2 F2.0
	SELFCONTROL_3 F2.0
	OUTLOOK_1 F2.0
	OUTLOOK_2 F2.0
	INTERCONNECTIONS_1 F1.0
	INTERCONNECTIONS_2 F1.0
	INTERCONNECTIONS_3 F1.0
	INTERCONNECTIONS_4 F1.0
	INTERCONNECTIONS_5 F1.0
	INTERCONNECTIONS_6 F1.0
	INTERCONNECTIONS_7 F1.0
	INTERCONNECTIONS_8 F1.0
	INTERCONNECTIONS_9 F1.0
	INTERCONNECTIONS_10 F1.0
	PEM F2.0
	HOUSESAT F2.0
	SOCSEC1 F2.0
	SOCSEC2 F2.0
	SOCSEC3 F2.0
	LIFEEXPECT F3.0
	HHEDUC F2.0
	KIDS_NoChildren F1.0
	KIDS_1 F1.0
	KIDS_2 F1.0
	KIDS_3 F1.0
	KIDS_4 F1.0
	EMPLOY F2.0
	EMPLOY1_1 F1.0
	EMPLOY1_2 F1.0
	EMPLOY1_3 F1.0
	EMPLOY1_4 F1.0
	EMPLOY1_5 F1.0
	EMPLOY1_6 F1.0
	EMPLOY1_7 F1.0
	EMPLOY1_8 F1.0
	EMPLOY1_9 F1.0
	RETIRE F2.0
	MILITARY F2.0
	Military_Status F1.0
	agecat F1.0
	generation F1.0
	PPEDUC F1.0
	PPETHM F1.0
	PPGENDER F1.0
	PPHHSIZE F1.0
	PPINCIMP F1.0
	PPMARIT F1.0
	PPMSACAT F1.0
	PPREG4 F1.0
	PPREG9 F1.0
	PPT01 F1.0
	PPT25 F1.0
	PPT612 F1.0
	PPT1317 F1.0
	PPT18OV F1.0
	PCTLT200FPL F1.0
	finalwt F16.15.
CACHE.
EXECUTE.
DATASET NAME FWB WINDOW=FRONT.

* Label variables and values *.

VARIABLE LABELS PUF_ID "Public Use File ID".
VARIABLE LABELS sample "Sample".
VALUE LABELS sample 1 "General population"
2 "Age 62+ oversample"
3 "Race/ethnicity and poverty oversample".
VARIABLE LABELS fpl "Poverty status".
VALUE LABELS fpl 1 "<100% FPL"
2 "100%-199% FPL"
3 "200%+ FPL".
VARIABLE LABELS SWB_1 "I am satisfied with my life".
VALUE LABELS SWB_1 -4 "Response not written to database"
-1 "Refused"
1 "1 Strongly disagree"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6"
7 "7 Strongly agree".
VARIABLE LABELS SWB_2 "I am optimistic about my future".
VALUE LABELS SWB_2 -4 "Response not written to database"
-1 "Refused"
1 "1 Strongly disagree"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6"
7 "7 Strongly agree".
VARIABLE LABELS SWB_3 "If I work hard today, I will be more successful in the future".
VALUE LABELS SWB_3 -4 "Response not written to database"
-1 "Refused"
1 "1 Strongly disagree"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6"
7 "7 Strongly agree".
VARIABLE LABELS FWBscore "Financial well-being scale score".
VALUE LABELS FWBscore -4 "Response not written to database"
-1 "Refused".
VARIABLE LABELS FWB1_1 "I could handle a major unexpected expense".
VALUE LABELS FWB1_1 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB1_2 "I am securing my financial future".
VALUE LABELS FWB1_2 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB1_3 "Because of my money situation...I will never have the things I want in life".
VALUE LABELS FWB1_3 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB1_4 "I can enjoy life because of the way I'm managing my money".
VALUE LABELS FWB1_4 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB1_5 "I am just getting by financially".
VALUE LABELS FWB1_5 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB1_6 "I am concerned that the money I have or will save won't last".
VALUE LABELS FWB1_6 -4 "Response not written to database"
-1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FWB2_1 "Giving a gift...would put a strain on my finances for the month".
VALUE LABELS FWB2_1 -4 "Response not written to database"
-1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FWB2_2 "I have money left over at the end of the month".
VALUE LABELS FWB2_2 -4 "Response not written to database"
-1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FWB2_3 "I am behind with my finances".
VALUE LABELS FWB2_3 -4 "Response not written to database"
-1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FWB2_4 "My finances control my life".
VALUE LABELS FWB2_4 -4 "Response not written to database"
-1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FSscore "Financial skill scale score".
VALUE LABELS FSscore -1 "Refused".
VARIABLE LABELS FS1_1 "I know how to get myself to follow through on my financial intentions".
VALUE LABELS FS1_1 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_2 "I know where to find the advice I need to make decisions involving money".
VALUE LABELS FS1_2 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_3 "I know how to make complex financial decisions".
VALUE LABELS FS1_3 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_4 "I am able to make good financial decisions that are new to me".
VALUE LABELS FS1_4 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_5 "I am able to recognize a good financial investment".
VALUE LABELS FS1_5 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_6 "I know how to keep myself from spending too much".
VALUE LABELS FS1_6 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS1_7 "I know how to make myself save".
VALUE LABELS FS1_7 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FS2_1 "I know when I do not have enough info to make a good decision involving my money".
VALUE LABELS FS2_1 -1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FS2_2 "I know when I need advice about my money".
VALUE LABELS FS2_2 -1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS FS2_3 "I struggle to understand financial information".
VALUE LABELS FS2_3 -1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS SUBKNOWL1 "How would you assess your overall financial knowledge?".
VALUE LABELS SUBKNOWL1 -1 "Refused"
1 "1 - Very low"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6"
7 "7 - Very high".
VARIABLE LABELS ACT1_1 "I follow-through on my financial commitments to others".
VALUE LABELS ACT1_1 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS ACT1_2 "I follow-through on financial goals I set for myself".
VALUE LABELS ACT1_2 -1 "Refused"
1 "Not at all"
2 "Very little"
3 "Somewhat"
4 "Very well"
5 "Completely".
VARIABLE LABELS FINGOALS "Do you have a current or recent financial goal?".
VALUE LABELS FINGOALS -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS PROPPLAN_1 "I consult my budget to see how much money I have left".
VALUE LABELS PROPPLAN_1 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS PROPPLAN_2 "I actively consider the steps I need to take to stick to my budget".
VALUE LABELS PROPPLAN_2 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS PROPPLAN_3 "I set financial goals for what I want to achieve with my money".
VALUE LABELS PROPPLAN_3 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS PROPPLAN_4 "I prepare a clear plan of action w/ detailed steps to achieve my financial goals".
VALUE LABELS PROPPLAN_4 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS MANAGE1_1 "Paid all your bills on time".
VALUE LABELS MANAGE1_1 -1 "Refused"
1 "Not applicable or never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS MANAGE1_2 "Stayed within your budget or spending plan".
VALUE LABELS MANAGE1_2 -1 "Refused"
1 "Not applicable or never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS MANAGE1_3 "Paid off credit card balance in full each month".
VALUE LABELS MANAGE1_3 -1 "Refused"
1 "Not applicable or never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS MANAGE1_4 "Checked your statements, bills and receipts to make sure there were no errors".
VALUE LABELS MANAGE1_4 -1 "Refused"
1 "Not applicable or never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS SAVEHABIT "Putting money into savings is a habit for me".
VALUE LABELS SAVEHABIT -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Disagree slightly"
4 "Agree slightly"
5 "Agree"
6 "Strongly agree".
VARIABLE LABELS FRUGALITY "If I can re-use an item I already have, there's no sense in buying something new".
VALUE LABELS FRUGALITY -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Disagree slightly"
4 "Agree slightly"
5 "Agree"
6 "Strongly agree".
VARIABLE LABELS AUTOMATED_1 "A Retirement Savings Account".
VALUE LABELS AUTOMATED_1 -1 "Refused"
0 "No"
1 "Yes"
7 "I do not have this type of account".
VARIABLE LABELS AUTOMATED_2 "A Non-Retirement Savings Account".
VALUE LABELS AUTOMATED_2 -1 "Refused"
0 "No"
1 "Yes"
7 "I do not have this type of account".
VARIABLE LABELS ASK1_1 "I do my own research before making decisions involving money".
VALUE LABELS ASK1_1 -1 "Refused"
1 "Never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS ASK1_2 "I ask other people their opinions before making decisions involving money".
VALUE LABELS ASK1_2 -1 "Refused"
1 "Never"
2 "Seldom"
3 "Sometimes"
4 "Often"
5 "Always".
VARIABLE LABELS SUBNUMERACY2 "Prefers words for expressions of probabilities".
VALUE LABELS SUBNUMERACY2 -1 "Refused"
1 "1 - Always prefer words"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6 - Always prefer numbers".
VARIABLE LABELS SUBNUMERACY1 "How good are you at working with percentages?".
VALUE LABELS SUBNUMERACY1 -1 "Refused"
1 "1 - Not good at all"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6 - Extremely good".
VARIABLE LABELS CHANGEABLE "Belief that ability to manage money is NOT changeable".
VALUE LABELS CHANGEABLE -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Somewhat disagree"
4 "Neither agree nor disagree"
5 "Somewhat agree"
6 "Agree"
7 "Strongly agree".
VARIABLE LABELS GOALCONF "Confidence in own ability to achieve financial goals".
VALUE LABELS GOALCONF -1 "Refused"
1 "Not at all confident"
2 "Not very confident"
3 "Somewhat confident"
4 "Very confident".
VARIABLE LABELS LMscore "Lusardi and Mitchell financial knowledge scale score".
VARIABLE LABELS FINKNOWL1 "Understanding of compound interest".
VALUE LABELS FINKNOWL1 -1 "Refused"
1 "More than $102"
2 "Exactly $102"
3 "Less than $102".
VARIABLE LABELS FINKNOWL2 "Understanding of inflation and return on savings".
VALUE LABELS FINKNOWL2 -1 "Refused"
1 "More than today"
2 "Exactly the same"
3 "Less than today".
VARIABLE LABELS FINKNOWL3 "Understanding of stock vs mutual fund volatility".
VALUE LABELS FINKNOWL3 -1 "Refused"
1 "True"
2 "False".
VARIABLE LABELS FK1correct "FINKNOWL1 answered correctly".
VALUE LABELS FK1correct 0 "No"
1 "Yes".
VARIABLE LABELS FK2correct "FINKNOWL2 answered correctly".
VALUE LABELS FK2correct 0 "No"
1 "Yes".
VARIABLE LABELS FK3correct "FINKNOWL3 answered correctly".
VALUE LABELS FK3correct 0 "No"
1 "Yes".
VARIABLE LABELS KHscore "Knoll and Houts financial knowledge scale score".
VARIABLE LABELS KHKNOWL1 "Understanding of long-term returns on investment".
VALUE LABELS KHKNOWL1 -1 "Refused"
1 "Savings accounts"
2 "Bonds"
3 "Stocks".
VARIABLE LABELS KHKNOWL2 "Understanding of stocks vs bond vs savings volatility".
VALUE LABELS KHKNOWL2 -1 "Refused"
1 "Savings accounts"
2 "Bonds"
3 "Stocks".
VARIABLE LABELS KHKNOWL3 "Understanding of benefits of diversification".
VALUE LABELS KHKNOWL3 -1 "Refused"
1 "Increase"
2 "Decrease"
3 "Stay the same".
VARIABLE LABELS KHKNOWL4 "Understanding of possibility of stock market losses".
VALUE LABELS KHKNOWL4 -1 "Refused"
1 "True"
2 "False".
VARIABLE LABELS KHKNOWL5 "Understanding of life insurance".
VALUE LABELS KHKNOWL5 -1 "Refused"
1 "True"
2 "False".
VARIABLE LABELS KHKNOWL6 "Understanding of possibility of housing market losses".
VALUE LABELS KHKNOWL6 -1 "Refused"
1 "True"
2 "False".
VARIABLE LABELS KHKNOWL7 "Understanding of credit card minimum payments".
VALUE LABELS KHKNOWL7 -1 "Refused"
1 "Less than 5 years"
2 "Between 5 and 10 years"
3 "Between 10 and 15 years"
4 "Never, you will continue to be in debt".
VARIABLE LABELS KHKNOWL8 "Understanding of relationship of bonds and interest rates".
VALUE LABELS KHKNOWL8 -1 "Refused"
1 "They will rise"
2 "They will fall"
3 "They will stay the same"
4 "There is no relationship between bond prices and the interest rate".
VARIABLE LABELS KHKNOWL9 "Understanding of mortgage term length on total interest paid".
VALUE LABELS KHKNOWL9 -1 "Refused"
1 "True"
2 "False".
VARIABLE LABELS KH1correct "KHKNOWL1 answered correctly".
VALUE LABELS KH1correct 0 "No"
1 "Yes".
VARIABLE LABELS KH2correct "KHKNOWL2 answered correctly".
VALUE LABELS KH2correct 0 "No"
1 "Yes".
VARIABLE LABELS KH3correct "KHKNOWL3 answered correctly".
VALUE LABELS KH3correct 0 "No"
1 "Yes".
VARIABLE LABELS KH4correct "KHKNOWL4 answered correctly".
VALUE LABELS KH4correct 0 "No"
1 "Yes".
VARIABLE LABELS KH5correct "KHKNOWL5 answered correctly".
VALUE LABELS KH5correct 0 "No"
1 "Yes".
VARIABLE LABELS KH6correct "KHKNOWL6 answered correctly".
VALUE LABELS KH6correct 0 "No"
1 "Yes".
VARIABLE LABELS KH7correct "KHKNOWL7 answered correctly".
VALUE LABELS KH7correct 0 "No"
1 "Yes".
VARIABLE LABELS KH8correct "KHKNOWL8 answered correctly".
VALUE LABELS KH8correct 0 "No"
1 "Yes".
VARIABLE LABELS KH9correct "KHKNOWL9 answered correctly".
VALUE LABELS KH9correct 0 "No"
1 "Yes".
VARIABLE LABELS ENDSMEET "Difficulty of covering monthly expenses and bills".
VALUE LABELS ENDSMEET -1 "Refused"
1 "Not at all difficult"
2 "Somewhat difficult"
3 "Very difficult".
VARIABLE LABELS HOUSING "Which one of the following best describes your housing situation?".
VALUE LABELS HOUSING -1 "Refused"
1 "I own my home"
2 "I rent"
3 "I do not currently own or rent".
VARIABLE LABELS LIVINGARRANGEMENT "Current living arrangements".
VALUE LABELS LIVINGARRANGEMENT -1 "Refused"
1 "I am the only adult in the household"
2 "I live with my spouse/partner/significant other"
3 "I live in my parents' home"
4 "I live with other family, friends, or roommates"
5 "Some other arrangement".
VARIABLE LABELS HOUSERANGES "About how much do you pay for your home each month?".
VALUE LABELS HOUSERANGES -1 "Refused"
1 "Less than $300"
2 "$300-499"
3 "$500-749"
4 "$750-999"
5 "$1,000-1,499"
6 "$1,500-1,999"
7 "$2,000 or more"
98 "I don't know"
99 "Prefer not to say".
VARIABLE LABELS IMPUTATION_FLAG "Value for HOUSERANGES was imputed".
VALUE LABELS IMPUTATION_FLAG 0 "Not imputed"
1 "Imputed".
VARIABLE LABELS VALUERANGES "If you were to sell your home today, what do you think it would be worth?".
VALUE LABELS VALUERANGES -2 "Question not asked because respondent not in item base"
-1 "Refused"
1 "Less than $150,000"
2 "$150,000-249,999"
3 "$250,000-399,999"
4 "$400,000 or more"
98 "I don't know"
99 "Prefer not to say".
VARIABLE LABELS MORTGAGE "What do you owe on your home today?".
VALUE LABELS MORTGAGE -2 "Question not asked because respondent not in item base"
-1 "Refused"
1 "Less than $50,000"
2 "$50,000-199,999"
3 "$200,000 or more"
98 "I don't know"
99 "Prefer not to say".
VARIABLE LABELS SAVINGSRANGES "How much money do you have in savings today...?".
VALUE LABELS SAVINGSRANGES -1 "Refused"
1 "$0"
2 "$1-99"
3 "$100-999"
4 "$1,000-4,999"
5 "$5,000-19,999"
6 "$20,000-74,999"
7 "$75,000 or more"
98 "I don't know"
99 "Prefer not to say".
VARIABLE LABELS PRODHAVE_1 "Checking or Savings Account at a bank or credit union".
VALUE LABELS PRODHAVE_1 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_2 "Life Insurance".
VALUE LABELS PRODHAVE_2 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_3 "Health Insurance".
VALUE LABELS PRODHAVE_3 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_4 "Retirement Account (such as a 401k or IRA)".
VALUE LABELS PRODHAVE_4 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_5 "Pension".
VALUE LABELS PRODHAVE_5 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_6 "Non-Retirement Investments (such as stocks, bonds or mutual funds)".
VALUE LABELS PRODHAVE_6 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_7 "Education Savings Account (such as 529 or Coverdale)".
VALUE LABELS PRODHAVE_7 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_8 "Student/Education Loan (for yourself or someone else)".
VALUE LABELS PRODHAVE_8 0 "No"
1 "Yes".
VARIABLE LABELS PRODHAVE_9 "Respondent did not select any item in PRODHAVE bank".
VALUE LABELS PRODHAVE_9 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_1 "Used payday loan or cash advance loan".
VALUE LABELS PRODUSE_1 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_2 "Used pawn loan or auto title loan".
VALUE LABELS PRODUSE_2 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_3 "Used reloadable card not linked with checking or savings account".
VALUE LABELS PRODUSE_3 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_4 "Used nonbank service for international money transfers".
VALUE LABELS PRODUSE_4 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_5 "Used nonbank service for check cashing or purchasing a money order".
VALUE LABELS PRODUSE_5 0 "No"
1 "Yes".
VARIABLE LABELS PRODUSE_6 "Respondent did not select any item in PRODUSE bank".
VALUE LABELS PRODUSE_6 0 "No"
1 "Yes".
VARIABLE LABELS CONSPROTECT1 "Frequency felt not respected or mistreated w/ financial services".
VALUE LABELS CONSPROTECT1 -1 "Refused"
1 "Never"
2 "Rarely"
3 "Sometimes"
4 "Often".
VARIABLE LABELS CONSPROTECT2 "Familiarity w/ agencies and orgs to resolve problems w/ financial services".
VALUE LABELS CONSPROTECT2 -1 "Refused"
1 "Not at all familiar"
2 "Somewhat familiar"
3 "Very familiar".
VARIABLE LABELS CONSPROTECT3 "Reported problem to one of these agencies or orgs".
VALUE LABELS CONSPROTECT3 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS EARNERS "Household members currently contributing to paying household bills".
VALUE LABELS EARNERS -1 "Refused"
1 "One"
2 "Two"
3 "More than two".
VARIABLE LABELS VOLATILITY "Household income volatility".
VALUE LABELS VOLATILITY -1 "Refused"
1 "Roughly the same each month"
2 "Roughly the same most months, but some unusually high or low months during the year"
3 "Often varies quite a bit from one month to the next".
VARIABLE LABELS SNAP "Any household member received SNAP benefits".
VALUE LABELS SNAP -1 "Refused"
0 "No"
1 "Yes"
8 "Not sure".
VARIABLE LABELS MATHARDSHIP_1 "Worried whether food would run out before got money to buy more".
VALUE LABELS MATHARDSHIP_1 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS MATHARDSHIP_2 "Food didn't last and didn't have money to get more".
VALUE LABELS MATHARDSHIP_2 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS MATHARDSHIP_3 "Couldn't afford a place to live".
VALUE LABELS MATHARDSHIP_3 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS MATHARDSHIP_4 "Any household member couldn't afford to see doctor or go to hospital".
VALUE LABELS MATHARDSHIP_4 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS MATHARDSHIP_5 "Any household member stopped taking medication or took less due to costs".
VALUE LABELS MATHARDSHIP_5 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS MATHARDSHIP_6 "Utilities shut off due to non-payment".
VALUE LABELS MATHARDSHIP_6 -1 "Refused"
1 "Never"
2 "Sometimes"
3 "Often".
VARIABLE LABELS COLLECT "Contacted by debt collector in past 12 months".
VALUE LABELS COLLECT -1 "Refused"
0 "No"
1 "Yes"
8 "Not sure".
VARIABLE LABELS REJECTED_1 "I applied for credit and was turned down".
VALUE LABELS REJECTED_1 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS REJECTED_2 "I did not apply for credit because I thought would be turned down".
VALUE LABELS REJECTED_2 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS ABSORBSHOCK "Confidence in ability to raise $2,000 in 30 days".
VALUE LABELS ABSORBSHOCK -1 "Refused"
1 "I am certain I could not come up with $2,000"
2 "I could probably not come up with $2,000"
3 "I could probably come up with $2,000"
4 "I am certain I could come up with the full $2,000"
8 "I don't know".
VARIABLE LABELS BENEFITS_1 "Health Insurance".
VALUE LABELS BENEFITS_1 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS BENEFITS_2 "401(k) or Other Employer-Sponsored Retirement Savings Account".
VALUE LABELS BENEFITS_2 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS BENEFITS_3 "Defined-Benefit Pension".
VALUE LABELS BENEFITS_3 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS BENEFITS_4 "Tuition Reimbursement and/or Student Debt Repayment".
VALUE LABELS BENEFITS_4 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS BENEFITS_5 "Work/Life Benefits".
VALUE LABELS BENEFITS_5 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FRAUD2 "Victim of financial fraud or attempted financial fraud in past 5 years".
VALUE LABELS FRAUD2 -1 "Refused"
0 "No"
1 "Yes"
8 "Not sure".
VARIABLE LABELS COVERCOSTS "Course of action if income did not cover living costs".
VALUE LABELS COVERCOSTS -1 "Refused"
1 "Use savings or sell something you own"
2 "Cut back or do without"
3 "Earn more money"
4 "Borrow money".
VARIABLE LABELS BORROW_1 "My friends or family would lend me the money and expect me to repay them".
VALUE LABELS BORROW_1 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS BORROW_2 "My friends or family would give me the money with no expectation of repayment".
VALUE LABELS BORROW_2 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_1 "Lost a job".
VALUE LABELS SHOCKS_1 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_2 "Work hours/pay reduced or business owned by self/HH mem had financial difficulty".
VALUE LABELS SHOCKS_2 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_3 "Received a foreclosure notice".
VALUE LABELS SHOCKS_3 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_4 "Had a major car or home repair".
VALUE LABELS SHOCKS_4 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_5 "Had a health emergency".
VALUE LABELS SHOCKS_5 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_6 "Got a divorce or separation".
VALUE LABELS SHOCKS_6 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_7 "Added a child to the household".
VALUE LABELS SHOCKS_7 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_8 "Experienced the death of primary breadwinner".
VALUE LABELS SHOCKS_8 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_9 "Received a large sum of money beyond normal income".
VALUE LABELS SHOCKS_9 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_10 "Had a child start daycare or college".
VALUE LABELS SHOCKS_10 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_11 "Provided unexpected financial support to a family member or friend".
VALUE LABELS SHOCKS_11 0 "No"
1 "Yes".
VARIABLE LABELS SHOCKS_12 "Respondent did not select any item in SHOCKS bank".
VALUE LABELS SHOCKS_12 0 "No"
1 "Yes".
VARIABLE LABELS MANAGE2 "Who in household makes financial decisions".
VALUE LABELS MANAGE2 -1 "Refused"
1 "Someone else takes care of all or most money matters in my household."
2 "Someone else and I take care of money matters in my household about the same."
3 "I take care of all or most money matters in my household.".
VARIABLE LABELS PAIDHELP "Do you pay the person who helps take care of money matters in your household?".
VALUE LABELS PAIDHELP -2 "Question not asked because respondent not in item base"
-1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS HSLOC "Where did you live at age 17?".
VALUE LABELS HSLOC -1 "Refused"
1 "U.S. and territories"
2 "Outside the U.S."
8 "I can't recall".
VARIABLE LABELS PAREDUC "Highest level of education by person/people who raised respondent".
VALUE LABELS PAREDUC -1 "Refused"
1 "Less than high school"
2 "High school degree/GED"
3 "Some college/Associate"
4 "Bachelor's degree"
5 "Graduate/professional degree".
VARIABLE LABELS FINSOC2_1 "Discussed family financial matters with me".
VALUE LABELS FINSOC2_1 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_2 "Spoke to me about the importance of saving".
VALUE LABELS FINSOC2_2 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_3 "Discussed how to establish a good credit rating".
VALUE LABELS FINSOC2_3 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_4 "Taught me how to be a smart shopper".
VALUE LABELS FINSOC2_4 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_5 "Taught me that my actions determine my success in life".
VALUE LABELS FINSOC2_5 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_6 "Provided me with a regular allowance".
VALUE LABELS FINSOC2_6 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS FINSOC2_7 "Provided me with a savings account".
VALUE LABELS FINSOC2_7 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS OBJNUMERACY1 "Which of the following represents the biggest risk of getting a disease?".
VALUE LABELS OBJNUMERACY1 -1 "Refused"
1 "1%"
2 "10%"
3 "5%".
VARIABLE LABELS ON2correct "OBJNUMERACY2 answered correctly".
VALUE LABELS ON2correct 0 "No"
1 "Yes".
VARIABLE LABELS ON1correct "OBJNUMERACY1 answered correctly".
VALUE LABELS ON1correct 0 "No"
1 "Yes".
VARIABLE LABELS MATERIALISM_1 "I admire people who own expensive homes, cars and clothes".
VALUE LABELS MATERIALISM_1 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS MATERIALISM_2 "The things I own say a lot about how well I'm doing in life".
VALUE LABELS MATERIALISM_2 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS MATERIALISM_3 "I like to own things that impress people".
VALUE LABELS MATERIALISM_3 -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS CONNECT "Psychological connectedness".
VALUE LABELS CONNECT -1 "Refused".
VARIABLE LABELS HEALTH "In general, would you say your health is . . .".
VALUE LABELS HEALTH -1 "Refused"
1 "Poor"
2 "Fair"
3 "Good"
4 "Very good"
5 "Excellent".
VARIABLE LABELS SCFHORIZON "Financial planning time horizon".
VALUE LABELS SCFHORIZON -1 "Refused"
1 "The next few months"
2 "The next year"
3 "The next few years"
4 "The next 5 to 10 years"
5 "Longer than 10 years".
VARIABLE LABELS DISCOUNT "If you had a choice, would you rather receive . . .?".
VALUE LABELS DISCOUNT -1 "Refused"
1 "$816 now"
2 "$860 in three months".
VARIABLE LABELS MEMLOSS "Experienced memory loss or confusion in past 12 months".
VALUE LABELS MEMLOSS -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS DISTRESS "Lot of stress in respondent's life".
VALUE LABELS DISTRESS -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Neither agree nor disagree"
4 "Agree"
5 "Strongly agree".
VARIABLE LABELS SELFCONTROL_1 "I often act without thinking through all the alternatives".
VALUE LABELS SELFCONTROL_1 -1 "Refused"
1 "Not at all"
2 "Not very well"
3 "Very well"
4 "Completely well".
VARIABLE LABELS SELFCONTROL_2 "I am good at resisting temptation".
VALUE LABELS SELFCONTROL_2 -1 "Refused"
1 "Not at all"
2 "Not very well"
3 "Very well"
4 "Completely well".
VARIABLE LABELS SELFCONTROL_3 "I am able to work diligently toward long-term goals".
VALUE LABELS SELFCONTROL_3 -1 "Refused"
1 "Not at all"
2 "Not very well"
3 "Very well"
4 "Completely well".
VARIABLE LABELS OUTLOOK_1 "There are services in this area to help me".
VALUE LABELS OUTLOOK_1 -1 "Refused"
1 "Strongly disagree"
2 "Somewhat disagree"
3 "Neither agree nor disagree"
4 "Somewhat agree"
5 "Strongly agree".
VARIABLE LABELS OUTLOOK_2 "There are good work opportunities for me, if I choose to take them".
VALUE LABELS OUTLOOK_2 -1 "Refused"
1 "Strongly disagree"
2 "Somewhat disagree"
3 "Neither agree nor disagree"
4 "Somewhat agree"
5 "Strongly agree".
VARIABLE LABELS INTERCONNECTIONS_1 "Parent".
VALUE LABELS INTERCONNECTIONS_1 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_2 "Spouse/Partner".
VALUE LABELS INTERCONNECTIONS_2 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_3 "Extended family (e.g., uncle, aunt, cousins, grandparents)".
VALUE LABELS INTERCONNECTIONS_3 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_4 "Employer".
VALUE LABELS INTERCONNECTIONS_4 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_5 "Friends/Co-workers".
VALUE LABELS INTERCONNECTIONS_5 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_6 "Community or faith-based organizations".
VALUE LABELS INTERCONNECTIONS_6 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_7 "Financial institution".
VALUE LABELS INTERCONNECTIONS_7 -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_8 "Professional advisor, planner or counselor/coach".
VALUE LABELS INTERCONNECTIONS_8 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_9 "Government".
VALUE LABELS INTERCONNECTIONS_9 0 "No"
1 "Yes".
VARIABLE LABELS INTERCONNECTIONS_10 "Respondent did not select any item in INTERCONNECTIONS bank".
VALUE LABELS INTERCONNECTIONS_10 0 "No"
1 "Yes".
VARIABLE LABELS PEM "Everyone has a fair chance at moving up the economic ladder".
VALUE LABELS PEM -1 "Refused"
1 "Strongly disagree"
2 "Disagree"
3 "Somewhat disagree"
4 "Neither agree nor disagree"
5 "Somewhat agree"
6 "Agree"
7 "Strongly agree".
VARIABLE LABELS HOUSESAT "How satisfied are you with the place you live currently?".
VALUE LABELS HOUSESAT -1 "Refused"
1 "Not at all satisfied"
2 "Not very satisfied"
3 "Somewhat satisfied"
4 "Very satisfied".
VARIABLE LABELS SOCSEC1 "Have you started receiving social security retirement benefits?".
VALUE LABELS SOCSEC1 -2 "Question not asked because respondent not in item base"
-1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS SOCSEC2 "At what age did you begin receiving benefits?".
VALUE LABELS SOCSEC2 -3 "Invalid Response"
-2 "Question not asked because respondent not in item base"
-1 "Refused"
62 "62"
63 "63"
64 "64"
65 "65"
66 "66"
67 "67"
68 "68"
69 "69"
70 "70 and above".
VARIABLE LABELS SOCSEC3 "Age likely to start receiving Social Security retirement benefits".
VALUE LABELS SOCSEC3 -3 "Invalid Response"
-2 "Question not asked because respondent not in item base"
-1 "Refused"
61 "61 and below"
62 "62"
63 "63"
64 "64"
65 "65"
66 "66"
67 "67"
68 "68"
69 "69"
70 "70"
71 "71 and above".
VARIABLE LABELS LIFEEXPECT "How likely do you believe it is that you will live beyond age 75?".
VALUE LABELS LIFEEXPECT -2 "Question not asked because respondent not in item base"
-1 "Refused"
0 "0"
1 "1"
2 "2"
3 "3"
4 "4"
5 "5"
6 "6"
7 "7"
8 "8"
9 "9"
10 "10"
11 "11"
12 "12"
15 "15"
20 "20"
22 "22"
24 "24"
25 "25"
26 "26"
28 "28"
29 "29"
30 "30"
33 "33"
35 "35"
36 "36"
37 "37"
40 "40"
41 "41"
42 "42"
43 "43"
44 "44"
45 "45"
47 "47"
50 "50"
52 "52"
54 "54"
55 "55"
56 "56"
57 "57"
59 "59"
60 "60"
62 "62"
63 "63"
64 "64"
65 "65"
66 "66"
67 "67"
68 "68"
69 "69"
70 "70"
71 "71"
72 "72"
73 "73"
75 "75"
76 "76"
77 "77"
78 "78"
79 "79"
80 "80"
81 "81"
82 "82"
83 "83"
84 "84"
85 "85"
86 "86"
87 "87"
88 "88"
89 "89"
90 "90"
91 "91"
92 "92"
93 "93"
94 "94"
95 "95"
96 "96"
97 "97"
98 "98"
99 "99"
100 "100".
VARIABLE LABELS HHEDUC "Highest level of education of all household members".
VALUE LABELS HHEDUC -1 "Refused"
1 "Less than high school"
2 "High school degree/GED"
3 "Some college/Associate"
4 "Bachelor's degree"
5 "Graduate/professional degree".
VARIABLE LABELS KIDS_NoChildren "I have no children that I support financially".
VALUE LABELS KIDS_NoChildren -1 "Refused"
0 "Respondent financially supports children"
1 "I have no children that I financially support".
VARIABLE LABELS KIDS_1 "Less than 7 years old".
VALUE LABELS KIDS_1 -1 "Refused"
0 "0"
1 "1"
2 "2+".
VARIABLE LABELS KIDS_2 "7 to 12 years old".
VALUE LABELS KIDS_2 -3 "Invalid Response"
-1 "Refused"
0 "0"
1 "1"
2 "2+".
VARIABLE LABELS KIDS_3 "13 to 17 years old".
VALUE LABELS KIDS_3 -1 "Refused"
0 "0"
1 "1"
2 "2+".
VARIABLE LABELS KIDS_4 "More than 18 years old".
VALUE LABELS KIDS_4 -1 "Refused"
0 "0"
1 "1"
2 "2+".
VARIABLE LABELS EMPLOY "Primary or only employment status".
VALUE LABELS EMPLOY 1 "Self-employed"
2 "Work full-time for an employer or the military"
3 "Work part-time for an employer or the military"
4 "Homemaker"
5 "Full-time student"
6 "Permanently sick, disabled or unable to work"
7 "Unemployed or temporarily laid off"
8 "Retired"
99 "Refused".
VARIABLE LABELS EMPLOY1_1 "Self-employed".
VALUE LABELS EMPLOY1_1 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_2 "Work full-time for an employer or the military".
VALUE LABELS EMPLOY1_2 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_3 "Work part-time for an employer or the military".
VALUE LABELS EMPLOY1_3 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_4 "Homemaker".
VALUE LABELS EMPLOY1_4 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_5 "Full-time student".
VALUE LABELS EMPLOY1_5 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_6 "Permanently sick, disabled or unable to work".
VALUE LABELS EMPLOY1_6 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_7 "Unemployed or temporarily laid off".
VALUE LABELS EMPLOY1_7 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_8 "Retired".
VALUE LABELS EMPLOY1_8 0 "No"
1 "Yes".
VARIABLE LABELS EMPLOY1_9 "Respondent did not select any item in EMPLOY1 bank".
VALUE LABELS EMPLOY1_9 0 "No"
1 "Yes".
VARIABLE LABELS RETIRE "Actual date of retirement vs date planned".
VALUE LABELS RETIRE -2 "Question not asked because respondent not in item base"
-1 "Refused"
1 "Earlier than planned"
2 "About when planned"
3 "Later than planned".
VARIABLE LABELS MILITARY "Current/former member of US Armed Forces or spouse/dependent of service member".
VALUE LABELS MILITARY -1 "Refused"
0 "No"
1 "Yes".
VARIABLE LABELS Military_Status "Military status".
VALUE LABELS Military_Status -1 "Refused" 
1 "Active military (active, reserve, natl guard)"
2 "Veteran (veteran or retired)"
3 "Spouse/dependent Active"
4 "Spouse/dependent Veteran"
5 "Neither Active nor Veteran".
VARIABLE LABELS agecat "Age".
VALUE LABELS agecat 1 "18-24"
2 "25-34"
3 "35-44"
4 "45-54"
5 "55-61"
6 "62-69"
7 "70-74"
8 "75+".
VARIABLE LABELS generation "Generation".
VALUE LABELS generation 1 "Pre-Boomer"
2 "Boomer"
3 "Gen X"
4 "Millennial".
VARIABLE LABELS PPEDUC "Education (Highest Degree Received)".
VALUE LABELS PPEDUC 1 "Less than high school"
2 "High school degree/GED"
3 "Some college/Associate"
4 "Bachelor's degree"
5 "Graduate/professional degree".
VARIABLE LABELS PPETHM "Race / Ethnicity".
VALUE LABELS PPETHM 1 "White, Non-Hispanic"
2 "Black, Non-Hispanic"
3 "Other, Non-Hispanic"
4 "Hispanic".
VARIABLE LABELS PPGENDER "Gender".
VALUE LABELS PPGENDER 1 "Male"
2 "Female".
VARIABLE LABELS PPHHSIZE "Household Size".
VALUE LABELS PPHHSIZE 1 "1"
2 "2"
3 "3"
4 "4"
5 "5+".
VARIABLE LABELS PPINCIMP "Household Income".
VALUE LABELS PPINCIMP 1 "Less than $20,000"
2 "$20,000 to $29,999"
3 "$30,000 to $39,999"
4 "$40,000 to $49,999"
5 "$50,000 to $59,999"
6 "$60,000 to $74,999"
7 "$75,000 to $99,999"
8 "$100,000 to $149,999"
9 "$150,000 or more".
VARIABLE LABELS PPMARIT "Marital Status".
VALUE LABELS PPMARIT 1 "Married"
2 "Widowed"
3 "Divorced/Separated"
4 "Never married"
5 "Living with partner".
VARIABLE LABELS PPMSACAT "MSA Status".
VALUE LABELS PPMSACAT 0 "Non-Metro"
1 "Metro".
VARIABLE LABELS PPREG4 "Census Region".
VALUE LABELS PPREG4 1 "Northeast"
2 "Midwest"
3 "South"
4 "West".
VARIABLE LABELS PPREG9 "Census Division".
VALUE LABELS PPREG9 1 "New England"
2 "Mid-Atlantic"
3 "East-North Central"
4 "West-North Central"
5 "South Atlantic"
6 "East-South Central"
7 "West-South Central"
8 "Mountain"
9 "Pacific".
VARIABLE LABELS PPT01 "Presence of Household Members - Children 0-1".
VALUE LABELS PPT01 0 "0"
1 "1+".
VARIABLE LABELS PPT25 "Presence of Household Members - Children 2-5".
VALUE LABELS PPT25 0 "0"
1 "1+".
VARIABLE LABELS PPT612 "Presence of Household Members - Children 6-12".
VALUE LABELS PPT612 0 "0"
1 "1+".
VARIABLE LABELS PPT1317 "Presence of Household Members - Children 13-17".
VALUE LABELS PPT1317 0 "0"
1 "1+".
VARIABLE LABELS PPT18OV "Presence of Household Members - Adults 18+".
VALUE LABELS PPT18OV 1 "1"
2 "2"
3 "3"
4 "4+".
VARIABLE LABELS PCTLT200FPL "County pct less than 200% of poverty level (ACS 2015 5-year SF)".
VALUE LABELS PCTLT200FPL -5 "County not known"
0 "Less than 40% of county population below 200% of poverty level"
1 "40% or more of county population below 200% of poverty level".
VARIABLE LABELS finalwt "Final weight".
EXECUTE.

* Save file *.

SAVE OUTFILE="NFWBS_PUF_2016_data.sav"
	/COMPRESSED.
