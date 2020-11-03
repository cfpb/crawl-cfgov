import pandas as pd

#Adjust the path to where you have saved the data
df = pd.read_csv("./NFWBS_PUF_2016_data.csv")

#Map values
df = df.replace({"sample":{
  1: "General population",
  2: "Age 62+ oversample",
  3: "Race/ethnicity and poverty oversample"
},
"fpl":{
  1: "<100% FPL",
  2: "100%-199% FPL",
  3: "200%+ FPL"
},
"SWB_1":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "1 Strongly disagree",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6",
  7: "7 Strongly agree"
},
"SWB_2":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "1 Strongly disagree",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6",
  7: "7 Strongly agree"
},
"SWB_3":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "1 Strongly disagree",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6",
  7: "7 Strongly agree"
},
"FWBscore":{
  -4: "Response not written to database",
  -1: "Refused"
},
"FWB1_1":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB1_2":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB1_3":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB1_4":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB1_5":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB1_6":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FWB2_1":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FWB2_2":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FWB2_3":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FWB2_4":{
  -4: "Response not written to database",
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FSscore":{
  -1: "Refused"
},
"FS1_1":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_2":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_3":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_4":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_5":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_6":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS1_7":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FS2_1":{
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FS2_2":{
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"FS2_3":{
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"SUBKNOWL1":{
  -1: "Refused",
  1: "1 - Very low",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6",
  7: "7 - Very high"
},
"ACT1_1":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"ACT1_2":{
  -1: "Refused",
  1: "Not at all",
  2: "Very little",
  3: "Somewhat",
  4: "Very well",
  5: "Completely"
},
"FINGOALS":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"PROPPLAN_1":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"PROPPLAN_2":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"PROPPLAN_3":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"PROPPLAN_4":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"MANAGE1_1":{
  -1: "Refused",
  1: "Not applicable or never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"MANAGE1_2":{
  -1: "Refused",
  1: "Not applicable or never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"MANAGE1_3":{
  -1: "Refused",
  1: "Not applicable or never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"MANAGE1_4":{
  -1: "Refused",
  1: "Not applicable or never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"SAVEHABIT":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Disagree slightly",
  4: "Agree slightly",
  5: "Agree",
  6: "Strongly agree"
},
"FRUGALITY":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Disagree slightly",
  4: "Agree slightly",
  5: "Agree",
  6: "Strongly agree"
},
"AUTOMATED_1":{
  -1: "Refused",
  0: "No",
  1: "Yes",
  7: "I do not have this type of account"
},
"AUTOMATED_2":{
  -1: "Refused",
  0: "No",
  1: "Yes",
  7: "I do not have this type of account"
},
"ASK1_1":{
  -1: "Refused",
  1: "Never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"ASK1_2":{
  -1: "Refused",
  1: "Never",
  2: "Seldom",
  3: "Sometimes",
  4: "Often",
  5: "Always"
},
"SUBNUMERACY2":{
  -1: "Refused",
  1: "1 - Always prefer words",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6 - Always prefer numbers"
},
"SUBNUMERACY1":{
  -1: "Refused",
  1: "1 - Not good at all",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6 - Extremely good"
},
"CHANGEABLE":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Somewhat disagree",
  4: "Neither agree nor disagree",
  5: "Somewhat agree",
  6: "Agree",
  7: "Strongly agree"
},
"GOALCONF":{
  -1: "Refused",
  1: "Not at all confident",
  2: "Not very confident",
  3: "Somewhat confident",
  4: "Very confident"
},
"FINKNOWL1":{
  -1: "Refused",
  1: "More than $102",
  2: "Exactly $102",
  3: "Less than $102"
},
"FINKNOWL2":{
  -1: "Refused",
  1: "More than today",
  2: "Exactly the same",
  3: "Less than today"
},
"FINKNOWL3":{
  -1: "Refused",
  1: "True",
  2: "False"
},
"FK1correct":{
  0: "No",
  1: "Yes"
},
"FK2correct":{
  0: "No",
  1: "Yes"
},
"FK3correct":{
  0: "No",
  1: "Yes"
},
"KHKNOWL1":{
  -1: "Refused",
  1: "Savings accounts",
  2: "Bonds",
  3: "Stocks"
},
"KHKNOWL2":{
  -1: "Refused",
  1: "Savings accounts",
  2: "Bonds",
  3: "Stocks"
},
"KHKNOWL3":{
  -1: "Refused",
  1: "Increase",
  2: "Decrease",
  3: "Stay the same"
},
"KHKNOWL4":{
  -1: "Refused",
  1: "True",
  2: "False"
},
"KHKNOWL5":{
  -1: "Refused",
  1: "True",
  2: "False"
},
"KHKNOWL6":{
  -1: "Refused",
  1: "True",
  2: "False"
},
"KHKNOWL7":{
  -1: "Refused",
  1: "Less than 5 years",
  2: "Between 5 and 10 years",
  3: "Between 10 and 15 years",
  4: "Never, you will continue to be in debt"
},
"KHKNOWL8":{
  -1: "Refused",
  1: "They will rise",
  2: "They will fall",
  3: "They will stay the same",
  4: "There is no relationship between bond prices and the interest rate"
},
"KHKNOWL9":{
  -1: "Refused",
  1: "True",
  2: "False"
},
"KH1correct":{
  0: "No",
  1: "Yes"
},
"KH2correct":{
  0: "No",
  1: "Yes"
},
"KH3correct":{
  0: "No",
  1: "Yes"
},
"KH4correct":{
  0: "No",
  1: "Yes"
},
"KH5correct":{
  0: "No",
  1: "Yes"
},
"KH6correct":{
  0: "No",
  1: "Yes"
},
"KH7correct":{
  0: "No",
  1: "Yes"
},
"KH8correct":{
  0: "No",
  1: "Yes"
},
"KH9correct":{
  0: "No",
  1: "Yes"
},
"ENDSMEET":{
  -1: "Refused",
  1: "Not at all difficult",
  2: "Somewhat difficult",
  3: "Very difficult"
},
"HOUSING":{
  -1: "Refused",
  1: "I own my home",
  2: "I rent",
  3: "I do not currently own or rent"
},
"LIVINGARRANGEMENT":{
  -1: "Refused",
  1: "I am the only adult in the household",
  2: "I live with my spouse/partner/significant other",
  3: "I live in my parents home",
  4: "I live with other family, friends, or roommates",
  5: "Some other arrangement"
},
"HOUSERANGES":{
  -1: "Refused",
  1: "Less than $300",
  2: "$300-499",
  3: "$500-749",
  4: "$750-999",
  5: "$1,000-1,499",
  6: "$1,500-1,999",
  7: "$2,000 or more",
  98: "I dont know",
  99: "Prefer not to say"
},
"IMPUTATION_FLAG":{
  0: "Not imputed",
  1: "Imputed"
},
"VALUERANGES":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  1: "Less than $150,000",
  2: "$150,000-249,999",
  3: "$250,000-399,999",
  4: "$400,000 or more",
  98: "I dont know",
  99: "Prefer not to say"
},
"MORTGAGE":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  1: "Less than $50,000",
  2: "$50,000-199,999",
  3: "$200,000 or more",
  98: "I dont know",
  99: "Prefer not to say"
},
"SAVINGSRANGES":{
  -1: "Refused",
  1: "0",
  2: "$1-99",
  3: "$100-999",
  4: "$1,000-4,999",
  5: "$5,000-19,999",
  6: "$20,000-74,999",
  7: "$75,000 or more",
  98: "I dont know",
  99: "Prefer not to say"
},
"PRODHAVE_1":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_2":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_3":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_4":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_5":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_6":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_7":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_8":{
  0: "No",
  1: "Yes"
},
"PRODHAVE_9":{
  0: "No",
  1: "Yes"
},
"PRODUSE_1":{
  0: "No",
  1: "Yes"
},
"PRODUSE_2":{
  0: "No",
  1: "Yes"
},
"PRODUSE_3":{
  0: "No",
  1: "Yes"
},
"PRODUSE_4":{
  0: "No",
  1: "Yes"
},
"PRODUSE_5":{
  0: "No",
  1: "Yes"
},
"PRODUSE_6":{
  0: "No",
  1: "Yes"
},
"CONSPROTECT1":{
  -1: "Refused",
  1: "Never",
  2: "Rarely",
  3: "Sometimes",
  4: "Often"
},
"CONSPROTECT2":{
  -1: "Refused",
  1: "Not at all familiar",
  2: "Somewhat familiar",
  3: "Very familiar"
},
"CONSPROTECT3":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"EARNERS":{
  -1: "Refused",
  1: "One",
  2: "Two",
  3: "More than two"
},
"VOLATILITY":{
  -1: "Refused",
  1: "Roughly the same each month",
  2: "Roughly the same most months, but some unusually high or low months during the year",
  3: "Often varies quite a bit from one month to the next"
},
"SNAP":{
  -1: "Refused",
  0: "No",
  1: "Yes",
  8: "Not sure"
},
"MATHARDSHIP_1":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"MATHARDSHIP_2":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"MATHARDSHIP_3":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"MATHARDSHIP_4":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"MATHARDSHIP_5":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"MATHARDSHIP_6":{
  -1: "Refused",
  1: "Never",
  2: "Sometimes",
  3: "Often"
},
"COLLECT":{
  -1: "Refused",
  0: "No",
  1: "Yes",
  8: "Not sure"
},
"REJECTED_1":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"REJECTED_2":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"ABSORBSHOCK":{
  -1: "Refused",
  1: "I am certain I could not come up with $2,000",
  2: "I could probably not come up with $2,000",
  3: "I could probably come up with $2,000",
  4: "I am certain I could come up with the full $2,000",
  8: "I dont know"
},
"BENEFITS_1":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"BENEFITS_2":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"BENEFITS_3":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"BENEFITS_4":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"BENEFITS_5":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FRAUD2":{
  -1: "Refused",
  0: "No",
  1: "Yes",
  8: "Not sure"
},
"COVERCOSTS":{
  -1: "Refused",
  1: "Use savings or sell something you own",
  2: "Cut back or do without",
  3: "Earn more money",
  4: "Borrow money"
},
"BORROW_1":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"BORROW_2":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"SHOCKS_1":{
  0: "No",
  1: "Yes"
},
"SHOCKS_2":{
  0: "No",
  1: "Yes"
},
"SHOCKS_3":{
  0: "No",
  1: "Yes"
},
"SHOCKS_4":{
  0: "No",
  1: "Yes"
},
"SHOCKS_5":{
  0: "No",
  1: "Yes"
},
"SHOCKS_6":{
  0: "No",
  1: "Yes"
},
"SHOCKS_7":{
  0: "No",
  1: "Yes"
},
"SHOCKS_8":{
  0: "No",
  1: "Yes"
},
"SHOCKS_9":{
  0: "No",
  1: "Yes"
},
"SHOCKS_10":{
  0: "No",
  1: "Yes"
},
"SHOCKS_11":{
  0: "No",
  1: "Yes"
},
"SHOCKS_12":{
  0: "No",
  1: "Yes"
},
"MANAGE2":{
  -1: "Refused",
  1: "Someone else takes care of all or most money matters in my household.",
  2: "Someone else and I take care of money matters in my household about the same.",
  3: "I take care of all or most money matters in my household."
},
"PAIDHELP":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"HSLOC":{
  -1: "Refused",
  1: "U.S. and territories",
  2: "Outside the U.S.",
  8: "I cant recall"
},
"PAREDUC":{
  -1: "Refused",
  1: "Less than high school",
  2: "High school degree/GED",
  3: "Some college/Associate",
  4: "Bachelors degree",
  5: "Graduate/professional degree"
},
"FINSOC2_1":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_2":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_3":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_4":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_5":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_6":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"FINSOC2_7":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"OBJNUMERACY1":{
  -1: "Refused",
  1: "1%",
  2: "10%",
  3: "5%"
},
"ON2correct":{
  0: "No",
  1: "Yes"
},
"ON1correct":{
  0: "No",
  1: "Yes"
},
"MATERIALISM_1":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"MATERIALISM_2":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"MATERIALISM_3":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"CONNECT":{
  -1: "Refused"
},
"HEALTH":{
  -1: "Refused",
  1: "Poor",
  2: "Fair",
  3: "Good",
  4: "Very good",
  5: "Excellent"
},
"SCFHORIZON":{
  -1: "Refused",
  1: "The next few months",
  2: "The next year",
  3: "The next few years",
  4: "The next 5 to 10 years",
  5: "Longer than 10 years"
},
"DISCOUNT":{
  -1: "Refused",
  1: "$816 now",
  2: "$860 in three months"
},
"MEMLOSS":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"DISTRESS":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Neither agree nor disagree",
  4: "Agree",
  5: "Strongly agree"
},
"SELFCONTROL_1":{
  -1: "Refused",
  1: "Not at all",
  2: "Not very well",
  3: "Very well",
  4: "Completely well"
},
"SELFCONTROL_2":{
  -1: "Refused",
  1: "Not at all",
  2: "Not very well",
  3: "Very well",
  4: "Completely well"
},
"SELFCONTROL_3":{
  -1: "Refused",
  1: "Not at all",
  2: "Not very well",
  3: "Very well",
  4: "Completely well"
},
"OUTLOOK_1":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Somewhat disagree",
  3: "Neither agree nor disagree",
  4: "Somewhat agree",
  5: "Strongly agree"
},
"OUTLOOK_2":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Somewhat disagree",
  3: "Neither agree nor disagree",
  4: "Somewhat agree",
  5: "Strongly agree"
},
"INTERCONNECTIONS_1":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_2":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_3":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_4":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_5":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_6":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_7":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_8":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_9":{
  0: "No",
  1: "Yes"
},
"INTERCONNECTIONS_10":{
  0: "No",
  1: "Yes"
},
"PEM":{
  -1: "Refused",
  1: "Strongly disagree",
  2: "Disagree",
  3: "Somewhat disagree",
  4: "Neither agree nor disagree",
  5: "Somewhat agree",
  6: "Agree",
  7: "Strongly agree"
},
"HOUSESAT":{
  -1: "Refused",
  1: "Not at all satisfied",
  2: "Not very satisfied",
  3: "Somewhat satisfied",
  4: "Very satisfied"
},
"SOCSEC1":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"SOCSEC2":{
  -3: "Invalid Response",
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  62: "62",
  63: "63",
  64: "64",
  65: "65",
  66: "66",
  67: "67",
  68: "68",
  69: "69",
  70: "70 and above"
},
"SOCSEC3":{
  -3: "Invalid Response",
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  61: "61 and below",
  62: "62",
  63: "63",
  64: "64",
  65: "65",
  66: "66",
  67: "67",
  68: "68",
  69: "69",
  70: "70",
  71: "71 and above"
},
"LIFEEXPECT":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  0: "0",
  1: "1",
  2: "2",
  3: "3",
  4: "4",
  5: "5",
  6: "6",
  7: "7",
  8: "8",
  9: "9",
  10: "10",
  11: "11",
  12: "12",
  15: "15",
  20: "20",
  22: "22",
  24: "24",
  25: "25",
  26: "26",
  28: "28",
  29: "29",
  30: "30",
  33: "33",
  35: "35",
  36: "36",
  37: "37",
  40: "40",
  41: "41",
  42: "42",
  43: "43",
  44: "44",
  45: "45",
  47: "47",
  50: "50",
  52: "52",
  54: "54",
  55: "55",
  56: "56",
  57: "57",
  59: "59",
  60: "60",
  62: "62",
  63: "63",
  64: "64",
  65: "65",
  66: "66",
  67: "67",
  68: "68",
  69: "69",
  70: "70",
  71: "71",
  72: "72",
  73: "73",
  75: "75",
  76: "76",
  77: "77",
  78: "78",
  79: "79",
  80: "80",
  81: "81",
  82: "82",
  83: "83",
  84: "84",
  85: "85",
  86: "86",
  87: "87",
  88: "88",
  89: "89",
  90: "90",
  91: "91",
  92: "92",
  93: "93",
  94: "94",
  95: "95",
  96: "96",
  97: "97",
  98: "98",
  99: "99",
  100: "100"
},
"HHEDUC":{
  -1: "Refused",
  1: "Less than high school",
  2: "High school degree/GED",
  3: "Some college/Associate",
  4: "Bachelors degree",
  5: "Graduate/professional degree"
},
"KIDS_NoChildren":{
  -1: "Refused",
  0: "Respondent financially supports children",
  1: "I have no children that I financially support"
},
"KIDS_1":{
  -1: "Refused",
  0: "0",
  1: "1",
  2: "2+"
},
"KIDS_2":{
  -3: "Invalid Response",
  -1: "Refused",
  0: "0",
  1: "1",
  2: "2+"
},
"KIDS_3":{
  -1: "Refused",
  0: "0",
  1: "1",
  2: "2+"
},
"KIDS_4":{
  -1: "Refused",
  0: "0",
  1: "1",
  2: "2+"
},
"EMPLOY":{
  1: "Self-employed",
  2: "Work full-time for an employer or the military",
  3: "Work part-time for an employer or the military",
  4: "Homemaker",
  5: "Full-time student",
  6: "Permanently sick, disabled or unable to work",
  7: "Unemployed or temporarily laid off",
  8: "Retired",
  99: "Refused"
},
"EMPLOY1_1":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_2":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_3":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_4":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_5":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_6":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_7":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_8":{
  0: "No",
  1: "Yes"
},
"EMPLOY1_9":{
  0: "No",
  1: "Yes"
},
"RETIRE":{
  -2: "Question not asked because respondent not in item base",
  -1: "Refused",
  1: "Earlier than planned",
  2: "About when planned",
  3: "Later than planned"
},
"MILITARY":{
  -1: "Refused",
  0: "No",
  1: "Yes"
},
"Military_Status":{
  -1: "Refused",
  1: "Active military (active, reserve, natl guard)",
  2: "Veteran (veteran or retired)",
  3: "Spouse/dependent Active",
  4: "Spouse/dependent Veteran",
  5: "Neither Active nor Veteran"
},
"agecat":{
  1: "18-24",
  2: "25-34",
  3: "35-44",
  4: "45-54",
  5: "55-61",
  6: "62-69",
  7: "70-74",
  8: "75+"
},
"generation":{
  1: "Pre-Boomer",
  2: "Boomer",
  3: "Gen X",
  4: "Millennial"
},
"PPEDUC":{
  1: "Less than high school",
  2: "High school degree/GED",
  3: "Some college/Associate",
  4: "Bachelors degree",
  5: "Graduate/professional degree"
},
"PPETHM":{
  1: "White, Non-Hispanic",
  2: "Black, Non-Hispanic",
  3: "Other, Non-Hispanic",
  4: "Hispanic"
},
"PPGENDER":{
  1: "Male",
  2: "Female"
},
"PPHHSIZE":{
  1: "1",
  2: "2",
  3: "3",
  4: "4",
  5: "5+"
},
"PPINCIMP":{
  1: "Less than $20,000",
  2: "$20,000 to $29,999",
  3: "$30,000 to $39,999",
  4: "$40,000 to $49,999",
  5: "$50,000 to $59,999",
  6: "$60,000 to $74,999",
  7: "$75,000 to $99,999",
  8: "$100,000 to $149,999",
  9: "$150,000 or more"
},
"PPMARIT":{
  1: "Married",
  2: "Widowed",
  3: "Divorced/Separated",
  4: "Never married",
  5: "Living with partner"
},
"PPMSACAT":{
  0: "Non-Metro",
  1: "Metro"
},
"PPREG4":{
  1: "Northeast",
  2: "Midwest",
  3: "South",
  4: "West"
},
"PPREG9":{
  1: "New England",
  2: "Mid-Atlantic",
  3: "East-North Central",
  4: "West-North Central",
  5: "South Atlantic",
  6: "East-South Central",
  7: "West-South Central",
  8: "Mountain",
  9: "Pacific"
},
"PPT01":{
  0: "0",
  1: "1+"
},
"PPT25":{
  0: "0",
  1: "1+"
},
"PPT612":{
  0: "0",
  1: "1+"
},
"PPT1317":{
  0: "0",
  1: "1+"
},
"PPT18OV":{
  1: "1",
  2: "2",
  3: "3",
  4: "4+"
},
"PCTLT200FPL":{
  -5: "County is not known",
  0: "Less than 40% of county population below 200% of poverty level",
  1: "40% or more of county population below 200% of poverty level"
}})
