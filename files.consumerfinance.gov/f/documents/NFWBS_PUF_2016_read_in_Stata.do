/*************************************************************************************************
Program Name: NFWBS_PUF_2016_read_in_Stata.do
Path:         .\NFWBS_PUF_2016_read_in_Stata.do
Ancestor:     
Project:      National Financial Well-Being Survey (Consumer Financial Protection Bureau)
Programmer:   Abt Associates
Inputs:       .\NFWBS_PUF_2016_data.csv
Outputs:      .\NFWBS_PUF_2016_data.dta
Purpose:      This Stata program reads in the National Financial Well-Being Survey Public Use File.
Note:		
Created On:   07-28-17
Edit History:	
**************************************************************************************************/

version 14.2

* Set directory *

cd /*INSERT FILE DIRECTORY LOCATION HERE*/

* Read in file *

import delimited using NFWBS_PUF_2016_data.csv, delimiters(",") ///
case(preserve) asdouble numericcols(_all) clear

* Label variables and values *

label var PUF_ID "Public Use File ID"
label var sample "Sample"
label define sample 1 "General population" ///
2 "Age 62+ oversample" ///
3 "Race/ethnicity and poverty oversample"
label values sample sample
label var fpl "Poverty status"
label define fpl 1 "<100% FPL" ///
2 "100%-199% FPL" ///
3 "200%+ FPL"
label values fpl fpl
label var SWB_1 "I am satisfied with my life"
label define SWB_1 -4 "Response not written to database" ///
-1 "Refused" ///
1 "1 Strongly disagree" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6" ///
7 "7 Strongly agree"
label values SWB_1 SWB_1
label var SWB_2 "I am optimistic about my future"
label define SWB_2 -4 "Response not written to database" ///
-1 "Refused" ///
1 "1 Strongly disagree" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6" ///
7 "7 Strongly agree"
label values SWB_2 SWB_2
label var SWB_3 "If I work hard today, I will be more successful in the future"
label define SWB_3 -4 "Response not written to database" ///
-1 "Refused" ///
1 "1 Strongly disagree" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6" ///
7 "7 Strongly agree"
label values SWB_3 SWB_3
label var FWBscore "Financial well-being scale score"
label define FWBscore -4 "Response not written to dataset" ///
-1 "Refused"
label values FWBscore FWBscore
label var FWB1_1 "I could handle a major unexpected expense"
label define FWB1_1 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_1 FWB1_1
label var FWB1_2 "I am securing my financial future"
label define FWB1_2 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_2 FWB1_2
label var FWB1_3 "Because of my money situation...I will never have the things I want in life"
label define FWB1_3 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_3 FWB1_3
label var FWB1_4 "I can enjoy life because of the way I'm managing my money"
label define FWB1_4 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_4 FWB1_4
label var FWB1_5 "I am just getting by financially"
label define FWB1_5 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_5 FWB1_5
label var FWB1_6 "I am concerned that the money I have or will save won't last"
label define FWB1_6 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FWB1_6 FWB1_6
label var FWB2_1 "Giving a gift...would put a strain on my finances for the month"
label define FWB2_1 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FWB2_1 FWB2_1
label var FWB2_2 "I have money left over at the end of the month"
label define FWB2_2 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FWB2_2 FWB2_2
label var FWB2_3 "I am behind with my finances"
label define FWB2_3 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FWB2_3 FWB2_3
label var FWB2_4 "My finances control my life"
label define FWB2_4 -4 "Response not written to database" ///
-1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FWB2_4 FWB2_4
label var FSscore "Financial skill scale score"
label define FSscore -1 "Refused"
label values FSscore FSscore
label var FS1_1 "I know how to get myself to follow through on my financial intentions"
label define FS1_1 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_1 FS1_1
label var FS1_2 "I know where to find the advice I need to make decisions involving money"
label define FS1_2 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_2 FS1_2
label var FS1_3 "I know how to make complex financial decisions"
label define FS1_3 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_3 FS1_3
label var FS1_4 "I am able to make good financial decisions that are new to me"
label define FS1_4 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_4 FS1_4
label var FS1_5 "I am able to recognize a good financial investment"
label define FS1_5 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_5 FS1_5
label var FS1_6 "I know how to keep myself from spending too much"
label define FS1_6 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_6 FS1_6
label var FS1_7 "I know how to make myself save"
label define FS1_7 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values FS1_7 FS1_7
label var FS2_1 "I know when I do not have enough info to make a good decision involving my money"
label define FS2_1 -1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FS2_1 FS2_1
label var FS2_2 "I know when I need advice about my money"
label define FS2_2 -1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FS2_2 FS2_2
label var FS2_3 "I struggle to understand financial information"
label define FS2_3 -1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values FS2_3 FS2_3
label var SUBKNOWL1 "How would you assess your overall financial knowledge?"
label define SUBKNOWL1 -1 "Refused" ///
1 "1 - Very low" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6" ///
7 "7 - Very high"
label values SUBKNOWL1 SUBKNOWL1
label var ACT1_1 "I follow-through on my financial commitments to others"
label define ACT1_1 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values ACT1_1 ACT1_1
label var ACT1_2 "I follow-through on financial goals I set for myself"
label define ACT1_2 -1 "Refused" ///
1 "Not at all" ///
2 "Very little" ///
3 "Somewhat" ///
4 "Very well" ///
5 "Completely"
label values ACT1_2 ACT1_2
label var FINGOALS "Do you have a current or recent financial goal?"
label define FINGOALS -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINGOALS FINGOALS
label var PROPPLAN_1 "I consult my budget to see how much money I have left"
label define PROPPLAN_1 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values PROPPLAN_1 PROPPLAN_1
label var PROPPLAN_2 "I actively consider the steps I need to take to stick to my budget"
label define PROPPLAN_2 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values PROPPLAN_2 PROPPLAN_2
label var PROPPLAN_3 "I set financial goals for what I want to achieve with my money"
label define PROPPLAN_3 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values PROPPLAN_3 PROPPLAN_3
label var PROPPLAN_4 "I prepare a clear plan of action w/ detailed steps to achieve my financial goals"
label define PROPPLAN_4 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values PROPPLAN_4 PROPPLAN_4
label var MANAGE1_1 "Paid all your bills on time"
label define MANAGE1_1 -1 "Refused" ///
1 "Not applicable or never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values MANAGE1_1 MANAGE1_1
label var MANAGE1_2 "Stayed within your budget or spending plan"
label define MANAGE1_2 -1 "Refused" ///
1 "Not applicable or never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values MANAGE1_2 MANAGE1_2
label var MANAGE1_3 "Paid off credit card balance in full each month"
label define MANAGE1_3 -1 "Refused" ///
1 "Not applicable or never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values MANAGE1_3 MANAGE1_3
label var MANAGE1_4 "Checked your statements, bills and receipts to make sure there were no errors"
label define MANAGE1_4 -1 "Refused" ///
1 "Not applicable or never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values MANAGE1_4 MANAGE1_4
label var SAVEHABIT "Putting money into savings is a habit for me"
label define SAVEHABIT -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Disagree slightly" ///
4 "Agree slightly" ///
5 "Agree" ///
6 "Strongly agree"
label values SAVEHABIT SAVEHABIT
label var FRUGALITY "If I can re-use an item I already have, there's no sense in buying something new"
label define FRUGALITY -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Disagree slightly" ///
4 "Agree slightly" ///
5 "Agree" ///
6 "Strongly agree"
label values FRUGALITY FRUGALITY
label var AUTOMATED_1 "A Retirement Savings Account"
label define AUTOMATED_1 -1 "Refused" ///
0 "No" ///
1 "Yes" ///
7 "I do not have this type of account"
label values AUTOMATED_1 AUTOMATED_1
label var AUTOMATED_2 "A Non-Retirement Savings Account"
label define AUTOMATED_2 -1 "Refused" ///
0 "No" ///
1 "Yes" ///
7 "I do not have this type of account"
label values AUTOMATED_2 AUTOMATED_2
label var ASK1_1 "I do my own research before making decisions involving money"
label define ASK1_1 -1 "Refused" ///
1 "Never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values ASK1_1 ASK1_1
label var ASK1_2 "I ask other people their opinions before making decisions involving money"
label define ASK1_2 -1 "Refused" ///
1 "Never" ///
2 "Seldom" ///
3 "Sometimes" ///
4 "Often" ///
5 "Always"
label values ASK1_2 ASK1_2
label var SUBNUMERACY2 "Prefers words for expressions of probabilities"
label define SUBNUMERACY2 -1 "Refused" ///
1 "1 - Always prefer words" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6 - Always prefer numbers"
label values SUBNUMERACY2 SUBNUMERACY2
label var SUBNUMERACY1 "How good are you at working with percentages?"
label define SUBNUMERACY1 -1 "Refused" ///
1 "1 - Not good at all" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6 - Extremely good"
label values SUBNUMERACY1 SUBNUMERACY1
label var CHANGEABLE "Belief that ability to manage money is NOT changeable"
label define CHANGEABLE -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Somewhat disagree" ///
4 "Neither agree nor disagree" ///
5 "Somewhat agree" ///
6 "Agree" ///
7 "Strongly agree"
label values CHANGEABLE CHANGEABLE
label var GOALCONF "Confidence in own ability to achieve financial goals"
label define GOALCONF -1 "Refused" ///
1 "Not at all confident" ///
2 "Not very confident" ///
3 "Somewhat confident" ///
4 "Very confident"
label values GOALCONF GOALCONF
label var LMscore "Lusardi and Mitchell financial knowledge scale score"
label var FINKNOWL1 "Understanding of compound interest"
label define FINKNOWL1 -1 "Refused" ///
1 "More than $102" ///
2 "Exactly $102" ///
3 "Less than $102"
label values FINKNOWL1 FINKNOWL1
label var FINKNOWL2 "Understanding of inflation and return on savings"
label define FINKNOWL2 -1 "Refused" ///
1 "More than today" ///
2 "Exactly the same" ///
3 "Less than today"
label values FINKNOWL2 FINKNOWL2
label var FINKNOWL3 "Understanding of stock vs mutual fund volatility"
label define FINKNOWL3 -1 "Refused" ///
1 "True" ///
2 "False"
label values FINKNOWL3 FINKNOWL3
label var FK1correct "FINKNOWL1 answered correctly"
label define FK1correct 0 "No" ///
1 "Yes"
label values FK1correct FK1correct
label var FK2correct "FINKNOWL2 answered correctly"
label define FK2correct 0 "No" ///
1 "Yes"
label values FK2correct FK2correct
label var FK3correct "FINKNOWL3 answered correctly"
label define FK3correct 0 "No" ///
1 "Yes"
label values FK3correct FK3correct
label var KHscore "Knoll and Houts financial knowledge scale score"
label var KHKNOWL1 "Understanding of long-term returns on investment"
label define KHKNOWL1 -1 "Refused" ///
1 "Savings accounts" ///
2 "Bonds" ///
3 "Stocks"
label values KHKNOWL1 KHKNOWL1
label var KHKNOWL2 "Understanding of stocks vs bond vs savings volatility"
label define KHKNOWL2 -1 "Refused" ///
1 "Savings accounts" ///
2 "Bonds" ///
3 "Stocks"
label values KHKNOWL2 KHKNOWL2
label var KHKNOWL3 "Understanding of benefits of diversification"
label define KHKNOWL3 -1 "Refused" ///
1 "Increase" ///
2 "Decrease" ///
3 "Stay the same"
label values KHKNOWL3 KHKNOWL3
label var KHKNOWL4 "Understanding of possibility of stock market losses"
label define KHKNOWL4 -1 "Refused" ///
1 "True" ///
2 "False"
label values KHKNOWL4 KHKNOWL4
label var KHKNOWL5 "Understanding of life insurance"
label define KHKNOWL5 -1 "Refused" ///
1 "True" ///
2 "False"
label values KHKNOWL5 KHKNOWL5
label var KHKNOWL6 "Understanding of possibility of housing market losses"
label define KHKNOWL6 -1 "Refused" ///
1 "True" ///
2 "False"
label values KHKNOWL6 KHKNOWL6
label var KHKNOWL7 "Understanding of credit card minimum payments"
label define KHKNOWL7 -1 "Refused" ///
1 "Less than 5 years" ///
2 "Between 5 and 10 years" ///
3 "Between 10 and 15 years" ///
4 "Never, you will continue to be in debt"
label values KHKNOWL7 KHKNOWL7
label var KHKNOWL8 "Understanding of relationship of bonds and interest rates"
label define KHKNOWL8 -1 "Refused" ///
1 "They will rise" ///
2 "They will fall" ///
3 "They will stay the same" ///
4 "There is no relationship between bond prices and the interest rate"
label values KHKNOWL8 KHKNOWL8
label var KHKNOWL9 "Understanding of mortgage term length on total interest paid"
label define KHKNOWL9 -1 "Refused" ///
1 "True" ///
2 "False"
label values KHKNOWL9 KHKNOWL9
label var KH1correct "KHKNOWL1 answered correctly"
label define KH1correct 0 "No" ///
1 "Yes"
label values KH1correct KH1correct
label var KH2correct "KHKNOWL2 answered correctly"
label define KH2correct 0 "No" ///
1 "Yes"
label values KH2correct KH2correct
label var KH3correct "KHKNOWL3 answered correctly"
label define KH3correct 0 "No" ///
1 "Yes"
label values KH3correct KH3correct
label var KH4correct "KHKNOWL4 answered correctly"
label define KH4correct 0 "No" ///
1 "Yes"
label values KH4correct KH4correct
label var KH5correct "KHKNOWL5 answered correctly"
label define KH5correct 0 "No" ///
1 "Yes"
label values KH5correct KH5correct
label var KH6correct "KHKNOWL6 answered correctly"
label define KH6correct 0 "No" ///
1 "Yes"
label values KH6correct KH6correct
label var KH7correct "KHKNOWL7 answered correctly"
label define KH7correct 0 "No" ///
1 "Yes"
label values KH7correct KH7correct
label var KH8correct "KHKNOWL8 answered correctly"
label define KH8correct 0 "No" ///
1 "Yes"
label values KH8correct KH8correct
label var KH9correct "KHKNOWL9 answered correctly"
label define KH9correct 0 "No" ///
1 "Yes"
label values KH9correct KH9correct
label var ENDSMEET "Difficulty of covering monthly expenses and bills"
label define ENDSMEET -1 "Refused" ///
1 "Not at all difficult" ///
2 "Somewhat difficult" ///
3 "Very difficult"
label values ENDSMEET ENDSMEET
label var HOUSING "Which one of the following best describes your housing situation?"
label define HOUSING -1 "Refused" ///
1 "I own my home" ///
2 "I rent" ///
3 "I do not currently own or rent"
label values HOUSING HOUSING
label var LIVINGARRANGEMENT "Current living arrangements"
label define LIVINGARRANGEMENT -1 "Refused" ///
1 "I am the only adult in the household" ///
2 "I live with my spouse/partner/significant other" ///
3 "I live in my parents' home" ///
4 "I live with other family, friends, or roommates" ///
5 "Some other arrangement"
label values LIVINGARRANGEMENT LIVINGARRANGEMENT
label var HOUSERANGES "About how much do you pay for your home each month?"
label define HOUSERANGES -1 "Refused" ///
1 "Less than $300" ///
2 "$300-499" ///
3 "$500-749" ///
4 "$750-999" ///
5 "$1,000-1,499" ///
6 "$1,500-1,999" ///
7 "$2,000 or more" ///
98 "I don't know" ///
99 "Prefer not to say"
label values HOUSERANGES HOUSERANGES
label var IMPUTATION_FLAG "Value for HOUSERANGES was imputed"
label define IMPUTATION_FLAG 0 "Not imputed" ///
1 "Imputed"
label values IMPUTATION_FLAG IMPUTATION_FLAG
label var VALUERANGES "If you were to sell your home today, what do you think it would be worth?"
label define VALUERANGES -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
1 "Less than $150,000" ///
2 "$150,000-249,999" ///
3 "$250,000-399,999" ///
4 "$400,000 or more" ///
98 "I don't know" ///
99 "Prefer not to say"
label values VALUERANGES VALUERANGES
label var MORTGAGE "What do you owe on your home today?"
label define MORTGAGE -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
1 "Less than $50,000" ///
2 "$50,000-199,999" ///
3 "$200,000 or more" ///
98 "I don't know" ///
99 "Prefer not to say"
label values MORTGAGE MORTGAGE
label var SAVINGSRANGES "How much money do you have in savings today...?"
label define SAVINGSRANGES -1 "Refused" ///
1 "$0" ///
2 "$1-99" ///
3 "$100-999" ///
4 "$1,000-4,999" ///
5 "$5,000-19,999" ///
6 "$20,000-74,999" ///
7 "$75,000 or more" ///
98 "I don't know" ///
99 "Prefer not to say"
label values SAVINGSRANGES SAVINGSRANGES
label var PRODHAVE_1 "Checking or Savings Account at a bank or credit union"
label define PRODHAVE_1 0 "No" ///
1 "Yes"
label values PRODHAVE_1 PRODHAVE_1
label var PRODHAVE_2 "Life Insurance"
label define PRODHAVE_2 0 "No" ///
1 "Yes"
label values PRODHAVE_2 PRODHAVE_2
label var PRODHAVE_3 "Health Insurance"
label define PRODHAVE_3 0 "No" ///
1 "Yes"
label values PRODHAVE_3 PRODHAVE_3
label var PRODHAVE_4 "Retirement Account (such as a 401k or IRA)"
label define PRODHAVE_4 0 "No" ///
1 "Yes"
label values PRODHAVE_4 PRODHAVE_4
label var PRODHAVE_5 "Pension"
label define PRODHAVE_5 0 "No" ///
1 "Yes"
label values PRODHAVE_5 PRODHAVE_5
label var PRODHAVE_6 "Non-Retirement Investments (such as stocks, bonds or mutual funds)"
label define PRODHAVE_6 0 "No" ///
1 "Yes"
label values PRODHAVE_6 PRODHAVE_6
label var PRODHAVE_7 "Education Savings Account (such as 529 or Coverdale)"
label define PRODHAVE_7 0 "No" ///
1 "Yes"
label values PRODHAVE_7 PRODHAVE_7
label var PRODHAVE_8 "Student/Education Loan (for yourself or someone else)"
label define PRODHAVE_8 0 "No" ///
1 "Yes"
label values PRODHAVE_8 PRODHAVE_8
label var PRODHAVE_9 "Respondent did not select any item in PRODHAVE bank"
label define PRODHAVE_9 0 "No" ///
1 "Yes"
label values PRODHAVE_9 PRODHAVE_9
label var PRODUSE_1 "Used payday loan or cash advance loan"
label define PRODUSE_1 0 "No" ///
1 "Yes"
label values PRODUSE_1 PRODUSE_1
label var PRODUSE_2 "Used pawn loan or auto title loan"
label define PRODUSE_2 0 "No" ///
1 "Yes"
label values PRODUSE_2 PRODUSE_2
label var PRODUSE_3 "Used reloadable card not linked with checking or savings account"
label define PRODUSE_3 0 "No" ///
1 "Yes"
label values PRODUSE_3 PRODUSE_3
label var PRODUSE_4 "Used nonbank service for international money transfers"
label define PRODUSE_4 0 "No" ///
1 "Yes"
label values PRODUSE_4 PRODUSE_4
label var PRODUSE_5 "Used nonbank service for check cashing or purchasing a money order"
label define PRODUSE_5 0 "No" ///
1 "Yes"
label values PRODUSE_5 PRODUSE_5
label var PRODUSE_6 "Respondent did not select any item in PRODUSE bank"
label define PRODUSE_6 0 "No" ///
1 "Yes"
label values PRODUSE_6 PRODUSE_6
label var CONSPROTECT1 "Frequency felt not respected or mistreated w/ financial services"
label define CONSPROTECT1 -1 "Refused" ///
1 "Never" ///
2 "Rarely" ///
3 "Sometimes" ///
4 "Often"
label values CONSPROTECT1 CONSPROTECT1
label var CONSPROTECT2 "Familiarity w/ agencies and orgs to resolve problems w/ financial services"
label define CONSPROTECT2 -1 "Refused" ///
1 "Not at all familiar" ///
2 "Somewhat familiar" ///
3 "Very familiar"
label values CONSPROTECT2 CONSPROTECT2
label var CONSPROTECT3 "Reported problem to one of these agencies or orgs"
label define CONSPROTECT3 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values CONSPROTECT3 CONSPROTECT3
label var EARNERS "Household members currently contributing to paying household bills"
label define EARNERS -1 "Refused" ///
1 "One" ///
2 "Two" ///
3 "More than two"
label values EARNERS EARNERS
label var VOLATILITY "Household income volatility"
label define VOLATILITY -1 "Refused" ///
1 "Roughly the same each month" ///
2 "Roughly the same most months, but some unusually high or low months during the year" ///
3 "Often varies quite a bit from one month to the next"
label values VOLATILITY VOLATILITY
label var SNAP "Any household member received SNAP benefits"
label define SNAP -1 "Refused" ///
0 "No" ///
1 "Yes" ///
8 "Not sure"
label values SNAP SNAP
label var MATHARDSHIP_1 "Worried whether food would run out before got money to buy more"
label define MATHARDSHIP_1 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_1 MATHARDSHIP_1
label var MATHARDSHIP_2 "Food didn't last and didn't have money to get more"
label define MATHARDSHIP_2 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_2 MATHARDSHIP_2
label var MATHARDSHIP_3 "Couldn't afford a place to live"
label define MATHARDSHIP_3 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_3 MATHARDSHIP_3
label var MATHARDSHIP_4 "Any household member couldn't afford to see doctor or go to hospital"
label define MATHARDSHIP_4 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_4 MATHARDSHIP_4
label var MATHARDSHIP_5 "Any household member stopped taking medication or took less due to costs"
label define MATHARDSHIP_5 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_5 MATHARDSHIP_5
label var MATHARDSHIP_6 "Utilities shut off due to non-payment"
label define MATHARDSHIP_6 -1 "Refused" ///
1 "Never" ///
2 "Sometimes" ///
3 "Often"
label values MATHARDSHIP_6 MATHARDSHIP_6
label var COLLECT "Contacted by debt collector in past 12 months"
label define COLLECT -1 "Refused" ///
0 "No" ///
1 "Yes" ///
8 "Not sure"
label values COLLECT COLLECT
label var REJECTED_1 "I applied for credit and was turned down"
label define REJECTED_1 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values REJECTED_1 REJECTED_1
label var REJECTED_2 "I did not apply for credit because I thought would be turned down"
label define REJECTED_2 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values REJECTED_2 REJECTED_2
label var ABSORBSHOCK "Confidence in ability to raise $2,000 in 30 days"
label define ABSORBSHOCK -1 "Refused" ///
1 "I am certain I could not come up with $2,000" ///
2 "I could probably not come up with $2,000" ///
3 "I could probably come up with $2,000" ///
4 "I am certain I could come up with the full $2,000" ///
8 "I don't know"
label values ABSORBSHOCK ABSORBSHOCK
label var BENEFITS_1 "Health Insurance"
label define BENEFITS_1 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BENEFITS_1 BENEFITS_1
label var BENEFITS_2 "401(k) or Other Employer-Sponsored Retirement Savings Account"
label define BENEFITS_2 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BENEFITS_2 BENEFITS_2
label var BENEFITS_3 "Defined-Benefit Pension"
label define BENEFITS_3 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BENEFITS_3 BENEFITS_3
label var BENEFITS_4 "Tuition Reimbursement and/or Student Debt Repayment"
label define BENEFITS_4 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BENEFITS_4 BENEFITS_4
label var BENEFITS_5 "Work/Life Benefits"
label define BENEFITS_5 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BENEFITS_5 BENEFITS_5
label var FRAUD2 "Victim of financial fraud or attempted financial fraud in past 5 years"
label define FRAUD2 -1 "Refused" ///
0 "No" ///
1 "Yes" ///
8 "Not sure"
label values FRAUD2 FRAUD2
label var COVERCOSTS "Course of action if income did not cover living costs"
label define COVERCOSTS -1 "Refused" ///
1 "Use savings or sell something you own" ///
2 "Cut back or do without" ///
3 "Earn more money" ///
4 "Borrow money"
label values COVERCOSTS COVERCOSTS
label var BORROW_1 "My friends or family would lend me the money and expect me to repay them"
label define BORROW_1 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BORROW_1 BORROW_1
label var BORROW_2 "My friends or family would give me the money with no expectation of repayment"
label define BORROW_2 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values BORROW_2 BORROW_2
label var SHOCKS_1 "Lost a job"
label define SHOCKS_1 0 "No" ///
1 "Yes"
label values SHOCKS_1 SHOCKS_1
label var SHOCKS_2 "Work hours/pay reduced or business owned by self/HH mem had financial difficulty"
label define SHOCKS_2 0 "No" ///
1 "Yes"
label values SHOCKS_2 SHOCKS_2
label var SHOCKS_3 "Received a foreclosure notice"
label define SHOCKS_3 0 "No" ///
1 "Yes"
label values SHOCKS_3 SHOCKS_3
label var SHOCKS_4 "Had a major car or home repair"
label define SHOCKS_4 0 "No" ///
1 "Yes"
label values SHOCKS_4 SHOCKS_4
label var SHOCKS_5 "Had a health emergency"
label define SHOCKS_5 0 "No" ///
1 "Yes"
label values SHOCKS_5 SHOCKS_5
label var SHOCKS_6 "Got a divorce or separation"
label define SHOCKS_6 0 "No" ///
1 "Yes"
label values SHOCKS_6 SHOCKS_6
label var SHOCKS_7 "Added a child to the household"
label define SHOCKS_7 0 "No" ///
1 "Yes"
label values SHOCKS_7 SHOCKS_7
label var SHOCKS_8 "Experienced the death of primary breadwinner"
label define SHOCKS_8 0 "No" ///
1 "Yes"
label values SHOCKS_8 SHOCKS_8
label var SHOCKS_9 "Received a large sum of money beyond normal income"
label define SHOCKS_9 0 "No" ///
1 "Yes"
label values SHOCKS_9 SHOCKS_9
label var SHOCKS_10 "Had a child start daycare or college"
label define SHOCKS_10 0 "No" ///
1 "Yes"
label values SHOCKS_10 SHOCKS_10
label var SHOCKS_11 "Provided unexpected financial support to a family member or friend"
label define SHOCKS_11 0 "No" ///
1 "Yes"
label values SHOCKS_11 SHOCKS_11
label var SHOCKS_12 "Respondent did not select any item in SHOCKS bank"
label define SHOCKS_12 0 "No" ///
1 "Yes"
label values SHOCKS_12 SHOCKS_12
label var MANAGE2 "Who in household makes financial decisions"
label define MANAGE2 -1 "Refused" ///
1 "Someone else takes care of all or most money matters in my household." ///
2 "Someone else and I take care of money matters in my household about the same." ///
3 "I take care of all or most money matters in my household."
label values MANAGE2 MANAGE2
label var PAIDHELP "Do you pay the person who helps take care of money matters in your household?"
label define PAIDHELP -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
0 "No" ///
1 "Yes"
label values PAIDHELP PAIDHELP
label var HSLOC "Where did you live at age 17?"
label define HSLOC -1 "Refused" ///
1 "U.S. and territories" ///
2 "Outside the U.S." ///
8 "I can't recall"
label values HSLOC HSLOC
label var PAREDUC "Highest level of education by person/people who raised respondent"
label define PAREDUC -1 "Refused" ///
1 "Less than high school" ///
2 "High school degree/GED" ///
3 "Some college/Associate" ///
4 "Bachelor's degree" ///
5 "Graduate/professional degree"
label values PAREDUC PAREDUC
label var FINSOC2_1 "Discussed family financial matters with me"
label define FINSOC2_1 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_1 FINSOC2_1
label var FINSOC2_2 "Spoke to me about the importance of saving"
label define FINSOC2_2 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_2 FINSOC2_2
label var FINSOC2_3 "Discussed how to establish a good credit rating"
label define FINSOC2_3 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_3 FINSOC2_3
label var FINSOC2_4 "Taught me how to be a smart shopper"
label define FINSOC2_4 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_4 FINSOC2_4
label var FINSOC2_5 "Taught me that my actions determine my success in life"
label define FINSOC2_5 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_5 FINSOC2_5
label var FINSOC2_6 "Provided me with a regular allowance"
label define FINSOC2_6 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_6 FINSOC2_6
label var FINSOC2_7 "Provided me with a savings account"
label define FINSOC2_7 -1 "Refused" ///
0 "No" ///
1 "Yes"
label values FINSOC2_7 FINSOC2_7
label var OBJNUMERACY1 "Which of the following represents the biggest risk of getting a disease?"
label define OBJNUMERACY1 -1 "Refused" ///
1 "1%" ///
2 "10%" ///
3 "5%"
label values OBJNUMERACY1 OBJNUMERACY1
label var ON2correct "OBJNUMERACY2 answered correctly"
label define ON2correct 0 "No" ///
1 "Yes"
label values ON2correct ON2correct
label var ON1correct "OBJNUMERACY1 answered correctly"
label define ON1correct 0 "No" ///
1 "Yes"
label values ON1correct ON1correct
label var MATERIALISM_1 "I admire people who own expensive homes, cars and clothes"
label define MATERIALISM_1 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values MATERIALISM_1 MATERIALISM_1
label var MATERIALISM_2 "The things I own say a lot about how well I'm doing in life"
label define MATERIALISM_2 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values MATERIALISM_2 MATERIALISM_2
label var MATERIALISM_3 "I like to own things that impress people"
label define MATERIALISM_3 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values MATERIALISM_3 MATERIALISM_3
label var CONNECT "Psychological connectedness"
label values CONNECT CONNECT
label define CONNECT -1 "Refused"
label var HEALTH "In general, would you say your health is . . ."
label define HEALTH -1 "Refused" ///
1 "Poor" ///
2 "Fair" ///
3 "Good" ///
4 "Very good" ///
5 "Excellent"
label values HEALTH HEALTH
label var SCFHORIZON "Financial planning time horizon"
label define SCFHORIZON -1 "Refused" ///
1 "The next few months" ///
2 "The next year" ///
3 "The next few years" ///
4 "The next 5 to 10 years" ///
5 "Longer than 10 years"
label values SCFHORIZON SCFHORIZON
label var DISCOUNT "If you had a choice, would you rather receive . . .?"
label define DISCOUNT -1 "Refused" ///
1 "$816 now" ///
2 "$860 in three months"
label values DISCOUNT DISCOUNT
label var MEMLOSS "Experienced memory loss or confusion in past 12 months"
label define MEMLOSS -1 "Refused" ///
0 "No" ///
1 "Yes"
label values MEMLOSS MEMLOSS
label var DISTRESS "Lot of stress in respondent's life"
label define DISTRESS -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Neither agree nor disagree" ///
4 "Agree" ///
5 "Strongly agree"
label values DISTRESS DISTRESS
label var SELFCONTROL_1 "I often act without thinking through all the alternatives"
label define SELFCONTROL_1 -1 "Refused" ///
1 "Not at all" ///
2 "Not very well" ///
3 "Very well" ///
4 "Completely well"
label values SELFCONTROL_1 SELFCONTROL_1
label var SELFCONTROL_2 "I am good at resisting temptation"
label define SELFCONTROL_2 -1 "Refused" ///
1 "Not at all" ///
2 "Not very well" ///
3 "Very well" ///
4 "Completely well"
label values SELFCONTROL_2 SELFCONTROL_2
label var SELFCONTROL_3 "I am able to work diligently toward long-term goals"
label define SELFCONTROL_3 -1 "Refused" ///
1 "Not at all" ///
2 "Not very well" ///
3 "Very well" ///
4 "Completely well"
label values SELFCONTROL_3 SELFCONTROL_3
label var OUTLOOK_1 "There are services in this area to help me"
label define OUTLOOK_1 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Somewhat disagree" ///
3 "Neither agree nor disagree" ///
4 "Somewhat agree" ///
5 "Strongly agree"
label values OUTLOOK_1 OUTLOOK_1
label var OUTLOOK_2 "There are good work opportunities for me, if I choose to take them"
label define OUTLOOK_2 -1 "Refused" ///
1 "Strongly disagree" ///
2 "Somewhat disagree" ///
3 "Neither agree nor disagree" ///
4 "Somewhat agree" ///
5 "Strongly agree"
label values OUTLOOK_2 OUTLOOK_2
label var INTERCONNECTIONS_1 "Parent"
label define INTERCONNECTIONS_1 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_1 INTERCONNECTIONS_1
label var INTERCONNECTIONS_2 "Spouse/Partner"
label define INTERCONNECTIONS_2 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_2 INTERCONNECTIONS_2
label var INTERCONNECTIONS_3 "Extended family (e.g., uncle, aunt, cousins, grandparents)"
label define INTERCONNECTIONS_3 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_3 INTERCONNECTIONS_3
label var INTERCONNECTIONS_4 "Employer"
label define INTERCONNECTIONS_4 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_4 INTERCONNECTIONS_4
label var INTERCONNECTIONS_5 "Friends/Co-workers"
label define INTERCONNECTIONS_5 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_5 INTERCONNECTIONS_5
label var INTERCONNECTIONS_6 "Community or faith-based organizations"
label define INTERCONNECTIONS_6 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_6 INTERCONNECTIONS_6
label var INTERCONNECTIONS_7 "Financial institution"
label define INTERCONNECTIONS_7 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_7 INTERCONNECTIONS_7
label var INTERCONNECTIONS_8 "Professional advisor, planner or counselor/coach"
label define INTERCONNECTIONS_8 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_8 INTERCONNECTIONS_8
label var INTERCONNECTIONS_9 "Government"
label define INTERCONNECTIONS_9 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_9 INTERCONNECTIONS_9
label var INTERCONNECTIONS_10 "Respondent did not select any item in INTERCONNECTIONS bank"
label define INTERCONNECTIONS_10 0 "No" ///
1 "Yes"
label values INTERCONNECTIONS_10 INTERCONNECTIONS_10
label var PEM "Everyone has a fair chance at moving up the economic ladder"
label define PEM -1 "Refused" ///
1 "Strongly disagree" ///
2 "Disagree" ///
3 "Somewhat disagree" ///
4 "Neither agree nor disagree" ///
5 "Somewhat agree" ///
6 "Agree" ///
7 "Strongly agree"
label values PEM PEM
label var HOUSESAT "How satisfied are you with the place you live currently?"
label define HOUSESAT -1 "Refused" ///
1 "Not at all satisfied" ///
2 "Not very satisfied" ///
3 "Somewhat satisfied" ///
4 "Very satisfied"
label values HOUSESAT HOUSESAT
label var SOCSEC1 "Have you started receiving social security retirement benefits?"
label define SOCSEC1 -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
0 "No" ///
1 "Yes"
label values SOCSEC1 SOCSEC1
label var SOCSEC2 "At what age did you begin receiving benefits?"
label define SOCSEC2 -3 "Invalid Response" ///
-2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
62 "62" ///
63 "63" ///
64 "64" ///
65 "65" ///
66 "66" ///
67 "67" ///
68 "68" ///
69 "69" ///
70 "70 and above"
label values SOCSEC2 SOCSEC2
label var SOCSEC3 "Age likely to start receiving Social Security retirement benefits"
label define SOCSEC3 -3 "Invalid Response" ///
-2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
61 "61 and below" ///
62 "62" ///
63 "63" ///
64 "64" ///
65 "65" ///
66 "66" ///
67 "67" ///
68 "68" ///
69 "69" ///
70 "70" ///
71 "71 and above"
label values SOCSEC3 SOCSEC3
label var LIFEEXPECT "How likely do you believe it is that you will live beyond age 75?"
label define LIFEEXPECT -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
0 "0" ///
1 "1" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5" ///
6 "6" ///
7 "7" ///
8 "8" ///
9 "9" ///
10 "10" ///
11 "11" ///
12 "12" ///
15 "15" ///
20 "20" ///
22 "22" ///
24 "24" ///
25 "25" ///
26 "26" ///
28 "28" ///
29 "29" ///
30 "30" ///
33 "33" ///
35 "35" ///
36 "36" ///
37 "37" ///
40 "40" ///
41 "41" ///
42 "42" ///
43 "43" ///
44 "44" ///
45 "45" ///
47 "47" ///
50 "50" ///
52 "52" ///
54 "54" ///
55 "55" ///
56 "56" ///
57 "57" ///
59 "59" ///
60 "60" ///
62 "62" ///
63 "63" ///
64 "64" ///
65 "65" ///
66 "66" ///
67 "67" ///
68 "68" ///
69 "69" ///
70 "70" ///
71 "71" ///
72 "72" ///
73 "73" ///
75 "75" ///
76 "76" ///
77 "77" ///
78 "78" ///
79 "79" ///
80 "80" ///
81 "81" ///
82 "82" ///
83 "83" ///
84 "84" ///
85 "85" ///
86 "86" ///
87 "87" ///
88 "88" ///
89 "89" ///
90 "90" ///
91 "91" ///
92 "92" ///
93 "93" ///
94 "94" ///
95 "95" ///
96 "96" ///
97 "97" ///
98 "98" ///
99 "99" ///
100 "100"
label values LIFEEXPECT LIFEEXPECT
label var HHEDUC "Highest level of education of all household members"
label define HHEDUC -1 "Refused" ///
1 "Less than high school" ///
2 "High school degree/GED" ///
3 "Some college/Associate" ///
4 "Bachelor's degree" ///
5 "Graduate/professional degree"
label values HHEDUC HHEDUC
label var KIDS_NoChildren "I have no children that I support financially"
label define KIDS_NoChildren -1 "Refused" ///
0 "Respondent financially supports children" ///
1 "I have no children that I financially support"
label values KIDS_NoChildren KIDS_NoChildren
label var KIDS_1 "Less than 7 years old"
label define KIDS_1 -1 "Refused" ///
0 "0" ///
1 "1" ///
2 "2+"
label values KIDS_1 KIDS_1
label var KIDS_2 "7 to 12 years old"
label define KIDS_2 -3 "Invalid Response" ///
-1 "Refused" ///
0 "0" ///
1 "1" ///
2 "2+"
label values KIDS_2 KIDS_2
label var KIDS_3 "13 to 17 years old"
label define KIDS_3 -1 "Refused" ///
0 "0" ///
1 "1" ///
2 "2+"
label values KIDS_3 KIDS_3
label var KIDS_4 "More than 18 years old"
label define KIDS_4 -1 "Refused" ///
0 "0" ///
1 "1" ///
2 "2+"
label values KIDS_4 KIDS_4
label var EMPLOY "Primary or only employment status"
label define EMPLOY 1 "Self-employed" ///
2 "Work full-time for an employer or the military" ///
3 "Work part-time for an employer or the military" ///
4 "Homemaker" ///
5 "Full-time student" ///
6 "Permanently sick, disabled or unable to work" ///
7 "Unemployed or temporarily laid off" ///
8 "Retired" ///
99 "Refused"
label values EMPLOY EMPLOY
label var EMPLOY1_1 "Self-employed"
label define EMPLOY1_1 0 "No" ///
1 "Yes"
label values EMPLOY1_1 EMPLOY1_1
label var EMPLOY1_2 "Work full-time for an employer or the military"
label define EMPLOY1_2 0 "No" ///
1 "Yes"
label values EMPLOY1_2 EMPLOY1_2
label var EMPLOY1_3 "Work part-time for an employer or the military"
label define EMPLOY1_3 0 "No" ///
1 "Yes"
label values EMPLOY1_3 EMPLOY1_3
label var EMPLOY1_4 "Homemaker"
label define EMPLOY1_4 0 "No" ///
1 "Yes"
label values EMPLOY1_4 EMPLOY1_4
label var EMPLOY1_5 "Full-time student"
label define EMPLOY1_5 0 "No" ///
1 "Yes"
label values EMPLOY1_5 EMPLOY1_5
label var EMPLOY1_6 "Permanently sick, disabled or unable to work"
label define EMPLOY1_6 0 "No" ///
1 "Yes"
label values EMPLOY1_6 EMPLOY1_6
label var EMPLOY1_7 "Unemployed or temporarily laid off"
label define EMPLOY1_7 0 "No" ///
1 "Yes"
label values EMPLOY1_7 EMPLOY1_7
label var EMPLOY1_8 "Retired"
label define EMPLOY1_8 0 "No" ///
1 "Yes"
label values EMPLOY1_8 EMPLOY1_8
label var EMPLOY1_9 "Respondent did not select any item in EMPLOY1 bank"
label define EMPLOY1_9 0 "No" ///
1 "Yes"
label values EMPLOY1_9 EMPLOY1_9
label var RETIRE "Actual date of retirement vs date planned"
label define RETIRE -2 "Question not asked because respondent not in item base" ///
-1 "Refused" ///
1 "Earlier than planned" ///
2 "About when planned" ///
3 "Later than planned"
label values RETIRE RETIRE
label var MILITARY "Current/former member of US Armed Forces or spouse/dependent of service member"
label define MILITARY -1 "Refused" ///
0 "No" ///
1 "Yes"
label values MILITARY MILITARY
label var Military_Status "Military status"
label define Military_Status -1 "Refused" ///
1 "Active military (active, reserve, natl guard)" ///
2 "Veteran (veteran or retired)" ///
3 "Spouse/dependent Active" ///
4 "Spouse/dependent Veteran" ///
5 "Neither Active nor Veteran"
label values Military_Status Military_Status
label var agecat "Age"
label define agecat 1 "18-24" ///
2 "25-34" ///
3 "35-44" ///
4 "45-54" ///
5 "55-61" ///
6 "62-69" ///
7 "70-74" ///
8 "75+"
label values agecat agecat
label var generation "Generation"
label define generation 1 "Pre-Boomer" ///
2 "Boomer" ///
3 "Gen X" ///
4 "Millennial"
label values generation generation
label var PPEDUC "Education (Highest Degree Received)"
label define PPEDUC 1 "Less than high school" ///
2 "High school degree/GED" ///
3 "Some college/Associate" ///
4 "Bachelor's degree" ///
5 "Graduate/professional degree"
label values PPEDUC PPEDUC
label var PPETHM "Race / Ethnicity"
label define PPETHM 1 "White, Non-Hispanic" ///
2 "Black, Non-Hispanic" ///
3 "Other, Non-Hispanic" ///
4 "Hispanic"
label values PPETHM PPETHM
label var PPGENDER "Gender"
label define PPGENDER 1 "Male" ///
2 "Female"
label values PPGENDER PPGENDER
label var PPHHSIZE "Household Size"
label define PPHHSIZE 1 "1" ///
2 "2" ///
3 "3" ///
4 "4" ///
5 "5+"
label values PPHHSIZE PPHHSIZE
label var PPINCIMP "Household Income"
label define PPINCIMP 1 "Less than $20,000" ///
2 "$20,000 to $29,999" ///
3 "$30,000 to $39,999" ///
4 "$40,000 to $49,999" ///
5 "$50,000 to $59,999" ///
6 "$60,000 to $74,999" ///
7 "$75,000 to $99,999" ///
8 "$100,000 to $149,999" ///
9 "$150,000 or more"
label values PPINCIMP PPINCIMP
label var PPMARIT "Marital Status"
label define PPMARIT 1 "Married" ///
2 "Widowed" ///
3 "Divorced/Separated" ///
4 "Never married" ///
5 "Living with partner"
label values PPMARIT PPMARIT
label var PPMSACAT "MSA Status"
label define PPMSACAT 0 "Non-Metro" ///
1 "Metro"
label values PPMSACAT PPMSACAT
label var PPREG4 "Census Region"
label define PPREG4 1 "Northeast" ///
2 "Midwest" ///
3 "South" ///
4 "West"
label values PPREG4 PPREG4
label var PPREG9 "Census Division"
label define PPREG9 1 "New England" ///
2 "Mid-Atlantic" ///
3 "East-North Central" ///
4 "West-North Central" ///
5 "South Atlantic" ///
6 "East-South Central" ///
7 "West-South Central" ///
8 "Mountain" ///
9 "Pacific"
label values PPREG9 PPREG9
label var PPT01 "Presence of Household Members - Children 0-1"
label define PPT01 0 "0" ///
1 "1+"
label values PPT01 PPT01
label var PPT25 "Presence of Household Members - Children 2-5"
label define PPT25 0 "0" ///
1 "1+"
label values PPT25 PPT25
label var PPT612 "Presence of Household Members - Children 6-12"
label define PPT612 0 "0" ///
1 "1+"
label values PPT612 PPT612
label var PPT1317 "Presence of Household Members - Children 13-17"
label define PPT1317 0 "0" ///
1 "1+"
label values PPT1317 PPT1317
label var PPT18OV "Presence of Household Members - Adults 18+"
label define PPT18OV 1 "1" ///
2 "2" ///
3 "3" ///
4 "4+"
label values PPT18OV PPT18OV
label var PCTLT200FPL "County pct less than 200% of poverty level (ACS 2015 5-year SF)"
label define PCTLT200FPL -5 "County not known" ///
0 "Less than 40% of county population below 200% of poverty level" ///
1 "40% or more of county population below 200% of poverty level"
label values PCTLT200FPL PCTLT200FPL
label var finalwt "Final weight"

* Set for analysis with svy commands *

svyset [pweight=finalwt]

* Save file *

save NFWBS_PUF_2016_data.dta, replace
