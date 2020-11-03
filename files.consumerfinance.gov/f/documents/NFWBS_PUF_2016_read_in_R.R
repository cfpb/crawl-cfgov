# The plyr library will be used to help us remap values
library(plyr)

# Load the data in to a dataframe for later use, please enter the appropriate path for the CSV.
df = read.csv('/home/cfpb/hsumi/DRG/NFWBS_PUF_2016_data.csv')

# This code maps values from the dummy variables to the descriptors from the codebook.
df$sample = revalue(factor(df$sample), c(
  `1` = "General population",
  `2` = "Age 62+ oversample",
  `3` = "Race/ethnicity and poverty oversample"
))
df$fpl = revalue(factor(df$fpl), c(
  `1` = "<100% FPL",
  `2` = "100%-199% FPL",
  `3` = "200%+ FPL"
))
df$SWB_1 = revalue(factor(df$SWB_1), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "1 Strongly disagree",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6",
  `7` = "7 Strongly agree"
))
df$SWB_2 = revalue(factor(df$SWB_2), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "1 Strongly disagree",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6",
  `7` = "7 Strongly agree"
))
df$SWB_3 = revalue(factor(df$SWB_3), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "1 Strongly disagree",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6",
  `7` = "7 Strongly agree"
))
df$FWBscore = revalue(factor(df$FWBscore), c(
  `-4` = "Response not written to database",
  `-1` = "Refused"
))
df$FWB1_1 = revalue(factor(df$FWB1_1), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB1_2 = revalue(factor(df$FWB1_2), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB1_3 = revalue(factor(df$FWB1_3), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB1_4 = revalue(factor(df$FWB1_4), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB1_5 = revalue(factor(df$FWB1_5), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB1_6 = revalue(factor(df$FWB1_6), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FWB2_1 = revalue(factor(df$FWB2_1), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FWB2_2 = revalue(factor(df$FWB2_2), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FWB2_3 = revalue(factor(df$FWB2_3), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FWB2_4 = revalue(factor(df$FWB2_4), c(
  `-4` = "Response not written to database",
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FSscore = revalue(factor(df$FSscore), c(
  `-1` = "Refused"
))
df$FS1_1 = revalue(factor(df$FS1_1), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_2 = revalue(factor(df$FS1_2), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_3 = revalue(factor(df$FS1_3), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_4 = revalue(factor(df$FS1_4), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_5 = revalue(factor(df$FS1_5), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_6 = revalue(factor(df$FS1_6), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS1_7 = revalue(factor(df$FS1_7), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FS2_1 = revalue(factor(df$FS2_1), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FS2_2 = revalue(factor(df$FS2_2), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$FS2_3 = revalue(factor(df$FS2_3), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$SUBKNOWL1 = revalue(factor(df$SUBKNOWL1), c(
  `-1` = "Refused",
  `1` = "1 - Very low",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6",
  `7` = "7 - Very high"
))
df$ACT1_1 = revalue(factor(df$ACT1_1), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$ACT1_2 = revalue(factor(df$ACT1_2), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Very little",
  `3` = "Somewhat",
  `4` = "Very well",
  `5` = "Completely"
))
df$FINGOALS = revalue(factor(df$FINGOALS), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$PROPPLAN_1 = revalue(factor(df$PROPPLAN_1), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$PROPPLAN_2 = revalue(factor(df$PROPPLAN_2), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$PROPPLAN_3 = revalue(factor(df$PROPPLAN_3), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$PROPPLAN_4 = revalue(factor(df$PROPPLAN_4), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$MANAGE1_1 = revalue(factor(df$MANAGE1_1), c(
  `-1` = "Refused",
  `1` = "Not applicable or never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$MANAGE1_2 = revalue(factor(df$MANAGE1_2), c(
  `-1` = "Refused",
  `1` = "Not applicable or never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$MANAGE1_3 = revalue(factor(df$MANAGE1_3), c(
  `-1` = "Refused",
  `1` = "Not applicable or never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$MANAGE1_4 = revalue(factor(df$MANAGE1_4), c(
  `-1` = "Refused",
  `1` = "Not applicable or never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$SAVEHABIT = revalue(factor(df$SAVEHABIT), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Disagree slightly",
  `4` = "Agree slightly",
  `5` = "Agree",
  `6` = "Strongly agree"
))
df$FRUGALITY = revalue(factor(df$FRUGALITY), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Disagree slightly",
  `4` = "Agree slightly",
  `5` = "Agree",
  `6` = "Strongly agree"
))
df$AUTOMATED_1 = revalue(factor(df$AUTOMATED_1), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes",
  `7` = "I do not have this type of account"
))
df$AUTOMATED_2 = revalue(factor(df$AUTOMATED_2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes",
  `7` = "I do not have this type of account"
))
df$ASK1_1 = revalue(factor(df$ASK1_1), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$ASK1_2 = revalue(factor(df$ASK1_2), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Seldom",
  `3` = "Sometimes",
  `4` = "Often",
  `5` = "Always"
))
df$SUBNUMERACY2 = revalue(factor(df$SUBNUMERACY2), c(
  `-1` = "Refused",
  `1` = "1 - Always prefer words",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6 - Always prefer numbers"
))
df$SUBNUMERACY1 = revalue(factor(df$SUBNUMERACY1), c(
  `-1` = "Refused",
  `1` = "1 - Not good at all",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6 - Extremely good"
))
df$CHANGEABLE = revalue(factor(df$CHANGEABLE), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Somewhat disagree",
  `4` = "Neither agree nor disagree",
  `5` = "Somewhat agree",
  `6` = "Agree",
  `7` = "Strongly agree"
))
df$GOALCONF = revalue(factor(df$GOALCONF), c(
  `-1` = "Refused",
  `1` = "Not at all confident",
  `2` = "Not very confident",
  `3` = "Somewhat confident",
  `4` = "Very confident"
))
df$FINKNOWL1 = revalue(factor(df$FINKNOWL1), c(
  `-1` = "Refused",
  `1` = "More than $102",
  `2` = "Exactly $102",
  `3` = "Less than $102"
))
df$FINKNOWL2 = revalue(factor(df$FINKNOWL2), c(
  `-1` = "Refused",
  `1` = "More than today",
  `2` = "Exactly the same",
  `3` = "Less than today"
))
df$FINKNOWL3 = revalue(factor(df$FINKNOWL3), c(
  `-1` = "Refused",
  `1` = "True",
  `2` = "False"
))
df$FK1correct = revalue(factor(df$FK1correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$FK2correct = revalue(factor(df$FK2correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$FK3correct = revalue(factor(df$FK3correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KHKNOWL1 = revalue(factor(df$KHKNOWL1), c(
  `-1` = "Refused",
  `1` = "Savings accounts",
  `2` = "Bonds",
  `3` = "Stocks"
))
df$KHKNOWL2 = revalue(factor(df$KHKNOWL2), c(
  `-1` = "Refused",
  `1` = "Savings accounts",
  `2` = "Bonds",
  `3` = "Stocks"
))
df$KHKNOWL3 = revalue(factor(df$KHKNOWL3), c(
  `-1` = "Refused",
  `1` = "Increase",
  `2` = "Decrease",
  `3` = "Stay the same"
))
df$KHKNOWL4 = revalue(factor(df$KHKNOWL4), c(
  `-1` = "Refused",
  `1` = "True",
  `2` = "False"
))
df$KHKNOWL5 = revalue(factor(df$KHKNOWL5), c(
  `-1` = "Refused",
  `1` = "True",
  `2` = "False"
))
df$KHKNOWL6 = revalue(factor(df$KHKNOWL6), c(
  `-1` = "Refused",
  `1` = "True",
  `2` = "False"
))
df$KHKNOWL7 = revalue(factor(df$KHKNOWL7), c(
  `-1` = "Refused",
  `1` = "Less than 5 years",
  `2` = "Between 5 and 10 years",
  `3` = "Between 10 and 15 years",
  `4` = "Never, you will continue to be in debt"
))
df$KHKNOWL8 = revalue(factor(df$KHKNOWL8), c(
  `-1` = "Refused",
  `1` = "They will rise",
  `2` = "They will fall",
  `3` = "They will stay the same",
  `4` = "There is no relationship between bond prices and the interest rate"
))
df$KHKNOWL9 = revalue(factor(df$KHKNOWL9), c(
  `-1` = "Refused",
  `1` = "True",
  `2` = "False"
))
df$KH1correct = revalue(factor(df$KH1correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH2correct = revalue(factor(df$KH2correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH3correct = revalue(factor(df$KH3correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH4correct = revalue(factor(df$KH4correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH5correct = revalue(factor(df$KH5correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH6correct = revalue(factor(df$KH6correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH7correct = revalue(factor(df$KH7correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH8correct = revalue(factor(df$KH8correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$KH9correct = revalue(factor(df$KH9correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$ENDSMEET = revalue(factor(df$ENDSMEET), c(
  `-1` = "Refused",
  `1` = "Not at all difficult",
  `2` = "Somewhat difficult",
  `3` = "Very difficult"
))
df$HOUSING = revalue(factor(df$HOUSING), c(
  `-1` = "Refused",
  `1` = "I own my home",
  `2` = "I rent",
  `3` = "I do not currently own or rent"
))
df$LIVINGARRANGEMENT = revalue(factor(df$LIVINGARRANGEMENT), c(
  `-1` = "Refused",
  `1` = "I am the only adult in the household",
  `2` = "I live with my spouse/partner/significant other",
  `3` = "I live in my parents' home",
  `4` = "I live with other family, friends, or roommates",
  `5` = "Some other arrangement"
))
df$HOUSERANGES = revalue(factor(df$HOUSERANGES), c(
  `-1` = "Refused",
  `1` = "Less than $300",
  `2` = "$300-499",
  `3` = "$500-749",
  `4` = "$750-999",
  `5` = "$1,000-1,499",
  `6` = "$1,500-1,999",
  `7` = "$2,000 or more",
  `98` = "I don't know",
  `99` = "Prefer not to say"
))
df$IMPUTATION_FLAG = revalue(factor(df$IMPUTATION_FLAG), c(
  `0` = "Not imputed",
  `1` = "Imputed"
))
df$VALUERANGES = revalue(factor(df$VALUERANGES), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `1` = "Less than $150,000",
  `2` = "$150,000-249,999",
  `3` = "$250,000-399,999",
  `4` = "$400,000 or more",
  `98` = "I don't know",
  `99` = "Prefer not to say"
))
df$MORTGAGE = revalue(factor(df$MORTGAGE), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `1` = "Less than $50,000",
  `2` = "$50,000-199,999",
  `3` = "$200,000 or more",
  `98` = "I don't know",
  `99` = "Prefer not to say"
))
df$SAVINGSRANGES = revalue(factor(df$SAVINGSRANGES), c(
  `-1` = "Refused",
  `1` = "0",
  `2` = "$1-99",
  `3` = "$100-999",
  `4` = "$1,000-4,999",
  `5` = "$5,000-19,999",
  `6` = "$20,000-74,999",
  `7` = "$75,000 or more",
  `98` = "I don't know",
  `99` = "Prefer not to say"
))
df$PRODHAVE_1 = revalue(factor(df$PRODHAVE_1), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_2 = revalue(factor(df$PRODHAVE_2), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_3 = revalue(factor(df$PRODHAVE_3), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_4 = revalue(factor(df$PRODHAVE_4), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_5 = revalue(factor(df$PRODHAVE_5), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_6 = revalue(factor(df$PRODHAVE_6), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_7 = revalue(factor(df$PRODHAVE_7), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_8 = revalue(factor(df$PRODHAVE_8), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODHAVE_9 = revalue(factor(df$PRODHAVE_9), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_1 = revalue(factor(df$PRODUSE_1), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_2 = revalue(factor(df$PRODUSE_2), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_3 = revalue(factor(df$PRODUSE_3), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_4 = revalue(factor(df$PRODUSE_4), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_5 = revalue(factor(df$PRODUSE_5), c(
  `0` = "No",
  `1` = "Yes"
))
df$PRODUSE_6 = revalue(factor(df$PRODUSE_6), c(
  `0` = "No",
  `1` = "Yes"
))
df$CONSPROTECT1 = revalue(factor(df$CONSPROTECT1), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Rarely",
  `3` = "Sometimes",
  `4` = "Often"
))
df$CONSPROTECT2 = revalue(factor(df$CONSPROTECT2), c(
  `-1` = "Refused",
  `1` = "Not at all familiar",
  `2` = "Somewhat familiar",
  `3` = "Very familiar"
))
df$CONSPROTECT3 = revalue(factor(df$CONSPROTECT3), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$EARNERS = revalue(factor(df$EARNERS), c(
  `-1` = "Refused",
  `1` = "One",
  `2` = "Two",
  `3` = "More than two"
))
df$VOLATILITY = revalue(factor(df$VOLATILITY), c(
  `-1` = "Refused",
  `1` = "Roughly the same each month",
  `2` = "Roughly the same most months, but some unusually high or low months during the year",
  `3` = "Often varies quite a bit from one month to the next"
))
df$SNAP = revalue(factor(df$SNAP), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes",
  `8` = "Not sure"
))
df$MATHARDSHIP_1 = revalue(factor(df$MATHARDSHIP_1), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$MATHARDSHIP_2 = revalue(factor(df$MATHARDSHIP_2), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$MATHARDSHIP_3 = revalue(factor(df$MATHARDSHIP_3), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$MATHARDSHIP_4 = revalue(factor(df$MATHARDSHIP_4), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$MATHARDSHIP_5 = revalue(factor(df$MATHARDSHIP_5), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$MATHARDSHIP_6 = revalue(factor(df$MATHARDSHIP_6), c(
  `-1` = "Refused",
  `1` = "Never",
  `2` = "Sometimes",
  `3` = "Often"
))
df$COLLECT = revalue(factor(df$COLLECT), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes",
  `8` = "Not sure"
))
df$REJECTED_1 = revalue(factor(df$REJECTED_1), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$REJECTED_2 = revalue(factor(df$REJECTED_2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$ABSORBSHOCK = revalue(factor(df$ABSORBSHOCK), c(
  `-1` = "Refused",
  `1` = "I am certain I could not come up with $2,000",
  `2` = "I could probably not come up with $2,000",
  `3` = "I could probably come up with $2,000",
  `4` = "I am certain I could come up with the full $2,000",
  `8` = "I don't know"
))
df$BENEFITS_1 = revalue(factor(df$BENEFITS_1), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$BENEFITS_2 = revalue(factor(df$BENEFITS_2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$BENEFITS_3 = revalue(factor(df$BENEFITS_3), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$BENEFITS_4 = revalue(factor(df$BENEFITS_4), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$BENEFITS_5 = revalue(factor(df$BENEFITS_5), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FRAUD2 = revalue(factor(df$FRAUD2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes",
  `8` = "Not sure"
))
df$COVERCOSTS = revalue(factor(df$COVERCOSTS), c(
  `-1` = "Refused",
  `1` = "Use savings or sell something you own",
  `2` = "Cut back or do without",
  `3` = "Earn more money",
  `4` = "Borrow money"
))
df$BORROW_1 = revalue(factor(df$BORROW_1), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$BORROW_2 = revalue(factor(df$BORROW_2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_1 = revalue(factor(df$SHOCKS_1), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_2 = revalue(factor(df$SHOCKS_2), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_3 = revalue(factor(df$SHOCKS_3), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_4 = revalue(factor(df$SHOCKS_4), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_5 = revalue(factor(df$SHOCKS_5), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_6 = revalue(factor(df$SHOCKS_6), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_7 = revalue(factor(df$SHOCKS_7), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_8 = revalue(factor(df$SHOCKS_8), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_9 = revalue(factor(df$SHOCKS_9), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_10 = revalue(factor(df$SHOCKS_10), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_11 = revalue(factor(df$SHOCKS_11), c(
  `0` = "No",
  `1` = "Yes"
))
df$SHOCKS_12 = revalue(factor(df$SHOCKS_12), c(
  `0` = "No",
  `1` = "Yes"
))
df$MANAGE2 = revalue(factor(df$MANAGE2), c(
  `-1` = "Refused",
  `1` = "Someone else takes care of all or most money matters in my household.",
  `2` = "Someone else and I take care of money matters in my household about the same.",
  `3` = "I take care of all or most money matters in my household."
))
df$PAIDHELP = revalue(factor(df$PAIDHELP), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$HSLOC = revalue(factor(df$HSLOC), c(
  `-1` = "Refused",
  `1` = "U.S. and territories",
  `2` = "Outside the U.S.",
  `8` = "I can't recall"
))
df$PAREDUC = revalue(factor(df$PAREDUC), c(
  `-1` = "Refused",
  `1` = "Less than high school",
  `2` = "High school degree/GED",
  `3` = "Some college/Associate",
  `4` = "Bachelor's degree",
  `5` = "Graduate/professional degree"
))
df$FINSOC2_1 = revalue(factor(df$FINSOC2_1), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_2 = revalue(factor(df$FINSOC2_2), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_3 = revalue(factor(df$FINSOC2_3), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_4 = revalue(factor(df$FINSOC2_4), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_5 = revalue(factor(df$FINSOC2_5), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_6 = revalue(factor(df$FINSOC2_6), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$FINSOC2_7 = revalue(factor(df$FINSOC2_7), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$OBJNUMERACY1 = revalue(factor(df$OBJNUMERACY1), c(
  `-1` = "Refused",
  `1` = "1%",
  `2` = "10%",
  `3` = "5%"
))
df$ON2correct = revalue(factor(df$ON2correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$ON1correct = revalue(factor(df$ON1correct), c(
  `0` = "No",
  `1` = "Yes"
))
df$MATERIALISM_1 = revalue(factor(df$MATERIALISM_1), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$MATERIALISM_2 = revalue(factor(df$MATERIALISM_2), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$MATERIALISM_3 = revalue(factor(df$MATERIALISM_3), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$CONNECT = revalue(factor(df$CONNECT), c(
  `-1` = "Refused"
))
df$HEALTH = revalue(factor(df$HEALTH), c(
  `-1` = "Refused",
  `1` = "Poor",
  `2` = "Fair",
  `3` = "Good",
  `4` = "Very good",
  `5` = "Excellent"
))
df$SCFHORIZON = revalue(factor(df$SCFHORIZON), c(
  `-1` = "Refused",
  `1` = "The next few months",
  `2` = "The next year",
  `3` = "The next few years",
  `4` = "The next 5 to 10 years",
  `5` = "Longer than 10 years"
))
df$DISCOUNT = revalue(factor(df$DISCOUNT), c(
  `-1` = "Refused",
  `1` = "$816 now",
  `2` = "$860 in three months"
))
df$MEMLOSS = revalue(factor(df$MEMLOSS), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$DISTRESS = revalue(factor(df$DISTRESS), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Agree",
  `5` = "Strongly agree"
))
df$SELFCONTROL_1 = revalue(factor(df$SELFCONTROL_1), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Not very well",
  `3` = "Very well",
  `4` = "Completely well"
))
df$SELFCONTROL_2 = revalue(factor(df$SELFCONTROL_2), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Not very well",
  `3` = "Very well",
  `4` = "Completely well"
))
df$SELFCONTROL_3 = revalue(factor(df$SELFCONTROL_3), c(
  `-1` = "Refused",
  `1` = "Not at all",
  `2` = "Not very well",
  `3` = "Very well",
  `4` = "Completely well"
))
df$OUTLOOK_1 = revalue(factor(df$OUTLOOK_1), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Somewhat disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Somewhat agree",
  `5` = "Strongly agree"
))
df$OUTLOOK_2 = revalue(factor(df$OUTLOOK_2), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Somewhat disagree",
  `3` = "Neither agree nor disagree",
  `4` = "Somewhat agree",
  `5` = "Strongly agree"
))
df$INTERCONNECTIONS_1 = revalue(factor(df$INTERCONNECTIONS_1), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_2 = revalue(factor(df$INTERCONNECTIONS_2), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_3 = revalue(factor(df$INTERCONNECTIONS_3), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_4 = revalue(factor(df$INTERCONNECTIONS_4), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_5 = revalue(factor(df$INTERCONNECTIONS_5), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_6 = revalue(factor(df$INTERCONNECTIONS_6), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_7 = revalue(factor(df$INTERCONNECTIONS_7), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_8 = revalue(factor(df$INTERCONNECTIONS_8), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_9 = revalue(factor(df$INTERCONNECTIONS_9), c(
  `0` = "No",
  `1` = "Yes"
))
df$INTERCONNECTIONS_10 = revalue(factor(df$INTERCONNECTIONS_10), c(
  `0` = "No",
  `1` = "Yes"
))
df$PEM = revalue(factor(df$PEM), c(
  `-1` = "Refused",
  `1` = "Strongly disagree",
  `2` = "Disagree",
  `3` = "Somewhat disagree",
  `4` = "Neither agree nor disagree",
  `5` = "Somewhat agree",
  `6` = "Agree",
  `7` = "Strongly agree"
))
df$HOUSESAT = revalue(factor(df$HOUSESAT), c(
  `-1` = "Refused",
  `1` = "Not at all satisfied",
  `2` = "Not very satisfied",
  `3` = "Somewhat satisfied",
  `4` = "Very satisfied"
))
df$SOCSEC1 = revalue(factor(df$SOCSEC1), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$SOCSEC2 = revalue(factor(df$SOCSEC2), c(
  `-3` = "Invalid Response",
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `62` = "62",
  `63` = "63",
  `64` = "64",
  `65` = "65",
  `66` = "66",
  `67` = "67",
  `68` = "68",
  `69` = "69",
  `70` = "70 and above"
))
df$SOCSEC3 = revalue(factor(df$SOCSEC3), c(
  `-3` = "Invalid Response",
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `61` = "61 and below",
  `62` = "62",
  `63` = "63",
  `64` = "64",
  `65` = "65",
  `66` = "66",
  `67` = "67",
  `68` = "68",
  `69` = "69",
  `70` = "70",
  `71` = "71 and above"
))
df$LIFEEXPECT = revalue(factor(df$LIFEEXPECT), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `0` = "0",
  `1` = "1",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5",
  `6` = "6",
  `7` = "7",
  `8` = "8",
  `9` = "9",
  `10` = "10",
  `11` = "11",
  `12` = "12",
  `15` = "15",
  `20` = "20",
  `22` = "22",
  `24` = "24",
  `25` = "25",
  `26` = "26",
  `28` = "28",
  `29` = "29",
  `30` = "30",
  `33` = "33",
  `35` = "35",
  `36` = "36",
  `37` = "37",
  `40` = "40",
  `41` = "41",
  `42` = "42",
  `43` = "43",
  `44` = "44",
  `45` = "45",
  `47` = "47",
  `50` = "50",
  `52` = "52",
  `54` = "54",
  `55` = "55",
  `56` = "56",
  `57` = "57",
  `59` = "59",
  `60` = "60",
  `62` = "62",
  `63` = "63",
  `64` = "64",
  `65` = "65",
  `66` = "66",
  `67` = "67",
  `68` = "68",
  `69` = "69",
  `70` = "70",
  `71` = "71",
  `72` = "72",
  `73` = "73",
  `75` = "75",
  `76` = "76",
  `77` = "77",
  `78` = "78",
  `79` = "79",
  `80` = "80",
  `81` = "81",
  `82` = "82",
  `83` = "83",
  `84` = "84",
  `85` = "85",
  `86` = "86",
  `87` = "87",
  `88` = "88",
  `89` = "89",
  `90` = "90",
  `91` = "91",
  `92` = "92",
  `93` = "93",
  `94` = "94",
  `95` = "95",
  `96` = "96",
  `97` = "97",
  `98` = "98",
  `99` = "99",
  `100` = "100"
))
df$HHEDUC = revalue(factor(df$HHEDUC), c(
  `-1` = "Refused",
  `1` = "Less than high school",
  `2` = "High school degree/GED",
  `3` = "Some college/Associate",
  `4` = "Bachelor's degree",
  `5` = "Graduate/professional degree"
))
df$KIDS_NoChildren = revalue(factor(df$KIDS_NoChildren), c(
  `-1` = "Refused",
  `0` = "Respondent financially supports children",
  `1` = "I have no children that I financially support"
))
df$KIDS_1 = revalue(factor(df$KIDS_1), c(
  `-1` = "Refused",
  `0` = "0",
  `1` = "1",
  `2` = "2+"
))
df$KIDS_2 = revalue(factor(df$KIDS_2), c(
  `-3` = "Invalid Response",
  `-1` = "Refused",
  `0` = "0",
  `1` = "1",
  `2` = "2+"
))
df$KIDS_3 = revalue(factor(df$KIDS_3), c(
  `-1` = "Refused",
  `0` = "0",
  `1` = "1",
  `2` = "2+"
))
df$KIDS_4 = revalue(factor(df$KIDS_4), c(
  `-1` = "Refused",
  `0` = "0",
  `1` = "1",
  `2` = "2+"
))
df$EMPLOY = revalue(factor(df$EMPLOY), c(
  `1` = "Self-employed",
  `2` = "Work full-time for an employer or the military",
  `3` = "Work part-time for an employer or the military",
  `4` = "Homemaker",
  `5` = "Full-time student",
  `6` = "Permanently sick, disabled or unable to work",
  `7` = "Unemployed or temporarily laid off",
  `8` = "Retired",
  `99` = "Refused"
))
df$EMPLOY1_1 = revalue(factor(df$EMPLOY1_1), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_2 = revalue(factor(df$EMPLOY1_2), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_3 = revalue(factor(df$EMPLOY1_3), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_4 = revalue(factor(df$EMPLOY1_4), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_5 = revalue(factor(df$EMPLOY1_5), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_6 = revalue(factor(df$EMPLOY1_6), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_7 = revalue(factor(df$EMPLOY1_7), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_8 = revalue(factor(df$EMPLOY1_8), c(
  `0` = "No",
  `1` = "Yes"
))
df$EMPLOY1_9 = revalue(factor(df$EMPLOY1_9), c(
  `0` = "No",
  `1` = "Yes"
))
df$RETIRE = revalue(factor(df$RETIRE), c(
  `-2` = "Question not asked because respondent not in item base",
  `-1` = "Refused",
  `1` = "Earlier than planned",
  `2` = "About when planned",
  `3` = "Later than planned"
))
df$MILITARY = revalue(factor(df$MILITARY), c(
  `-1` = "Refused",
  `0` = "No",
  `1` = "Yes"
))
df$Military_Status = revalue(factor(df$Military_Status), c(
  `-1` = "Refused",
  `1` = "Active military (active, reserve, natl guard)",
  `2` = "Veteran (veteran or retired)",
  `3` = "Spouse/dependent Active",
  `4` = "Spouse/dependent Veteran",
  `5` = "Neither Active nor Veteran"
))
df$agecat = revalue(factor(df$agecat), c(
  `1` = "18-24",
  `2` = "25-34",
  `3` = "35-44",
  `4` = "45-54",
  `5` = "55-61",
  `6` = "62-69",
  `7` = "70-74",
  `8` = "75+"
))
df$generation = revalue(factor(df$generation), c(
  `1` = "Pre-Boomer",
  `2` = "Boomer",
  `3` = "Gen X",
  `4` = "Millennial"
))
df$PPEDUC = revalue(factor(df$PPEDUC), c(
  `1` = "Less than high school",
  `2` = "High school degree/GED",
  `3` = "Some college/Associate",
  `4` = "Bachelor's degree",
  `5` = "Graduate/professional degree"
))
df$PPETHM = revalue(factor(df$PPETHM), c(
  `1` = "White, Non-Hispanic",
  `2` = "Black, Non-Hispanic",
  `3` = "Other, Non-Hispanic",
  `4` = "Hispanic"
))
df$PPGENDER = revalue(factor(df$PPGENDER), c(
  `1` = "Male",
  `2` = "Female"
))
df$PPHHSIZE = revalue(factor(df$PPHHSIZE), c(
  `1` = "1",
  `2` = "2",
  `3` = "3",
  `4` = "4",
  `5` = "5+"
))
df$PPINCIMP = revalue(factor(df$PPINCIMP), c(
  `1` = "Less than $20,000",
  `2` = "$20,000 to $29,999",
  `3` = "$30,000 to $39,999",
  `4` = "$40,000 to $49,999",
  `5` = "$50,000 to $59,999",
  `6` = "$60,000 to $74,999",
  `7` = "$75,000 to $99,999",
  `8` = "$100,000 to $149,999",
  `9` = "$150,000 or more"
))
df$PPMARIT = revalue(factor(df$PPMARIT), c(
  `1` = "Married",
  `2` = "Widowed",
  `3` = "Divorced/Separated",
  `4` = "Never married",
  `5` = "Living with partner"
))
df$PPMSACAT = revalue(factor(df$PPMSACAT), c(
  `0` = "Non-Metro",
  `1` = "Metro"
))
df$PPREG4 = revalue(factor(df$PPREG4), c(
  `1` = "Northeast",
  `2` = "Midwest",
  `3` = "South",
  `4` = "West"
))
df$PPREG9 = revalue(factor(df$PPREG9), c(
  `1` = "New England",
  `2` = "Mid-Atlantic",
  `3` = "East-North Central",
  `4` = "West-North Central",
  `5` = "South Atlantic",
  `6` = "East-South Central",
  `7` = "West-South Central",
  `8` = "Mountain",
  `9` = "Pacific"
))
df$PPT01 = revalue(factor(df$PPT01), c(
  `0` = "0",
  `1` = "1+"
))
df$PPT25 = revalue(factor(df$PPT25), c(
  `0` = "0",
  `1` = "1+"
))
df$PPT612 = revalue(factor(df$PPT612), c(
  `0` = "0",
  `1` = "1+"
))
df$PPT1317 = revalue(factor(df$PPT1317), c(
  `0` = "0",
  `1` = "1+"
))
df$PPT18OV = revalue(factor(df$PPT18OV), c(
  `1` = "1",
  `2` = "2",
  `3` = "3",
  `4` = "4+"
))
df$PCTLT200FPL = revalue(factor(df$PCTLT200FPL), c(
  `-5` = "County is not known",
  `0` = "Less than 40% of county population below 200% of poverty level",
  `1` = "40% or more of county population below 200% of poverty level"
))

