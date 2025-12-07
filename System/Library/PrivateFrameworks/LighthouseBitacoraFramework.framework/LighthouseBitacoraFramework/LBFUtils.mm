@interface LBFUtils
+ (BOOL)IsEmptyTrialIdentifiers:(id)identifiers;
+ (BOOL)IsEqualNumberOrNil:(id)nil n2:(id)n2;
+ (BOOL)IsEqualStringOrNil:(id)nil s2:(id)s2;
+ (BOOL)switchToMobile;
+ (id)dateToGMTDate:(id)date;
+ (id)dateToTimestampStringInMSec:(id)sec;
@end

@implementation LBFUtils

+ (BOOL)switchToMobile
{
  if (getuid())
  {
    return 1;
  }

  puts("Dropping root privileges to mobile");
  v3 = getpwnam("mobile");
  if (v3)
  {
    pw_uid = v3->pw_uid;
    if (pw_uid)
    {
      if (setuid(pw_uid))
      {
        v5 = "Error: could not set uid";
      }

      else
      {
        if (getuid())
        {
          return 1;
        }

        v5 = "Error: failed to setuid to drop privileges. Exiting.";
      }
    }

    else
    {
      v5 = "Error: got pwInfo for uid=0. Exiting.";
    }
  }

  else
  {
    v5 = "Error: failed to get pwInfo Exiting.";
  }

  puts(v5);
  return 0;
}

+ (id)dateToGMTDate:(id)date
{
  v3 = MEMORY[0x277CBEBB0];
  dateCopy = date;
  v8 = objc_msgSend_defaultTimeZone(v3, v5, v7, v6);
  v12 = objc_msgSend_secondsFromGMT(v8, v9, v11, v10);

  objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v13, v15, v14);
  v17 = v16;

  v19 = MEMORY[0x277CBEAA8];

  v18.n128_f64[0] = v17 - v12;
  return MEMORY[0x2821F9670](v19, sel_dateWithTimeIntervalSinceReferenceDate_, v18);
}

+ (id)dateToTimestampStringInMSec:(id)sec
{
  v4 = MEMORY[0x277CCACA8];
  objc_msgSend_timeIntervalSince1970(sec, a2, v3, sec);
  v6.n128_f64[0] = v5 * 1000.0;
  return objc_msgSend_stringWithFormat_(v4, v7, v6, @"%llu", v6.n128_f64[0]);
}

+ (BOOL)IsEmptyTrialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = objc_msgSend_bmltIdentifiers(identifiersCopy, v4, v6, v5);
  v13 = objc_msgSend_trialDeploymentID(v7, v8, v10, v9);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_bmltIdentifiers(identifiersCopy, v11, v14, v12);
    v22 = objc_msgSend_trialTaskID(v16, v17, v19, v18);
    if (v22)
    {
      v15 = 0;
    }

    else
    {
      v24 = objc_msgSend_experimentIdentifiers(identifiersCopy, v20, v23, v21);
      v30 = objc_msgSend_trialExperimentID(v24, v25, v27, v26);
      if (v30)
      {
        v15 = 0;
      }

      else
      {
        v32 = objc_msgSend_experimentIdentifiers(identifiersCopy, v28, v31, v29);
        v38 = objc_msgSend_trialDeploymentID(v32, v33, v35, v34);
        if (v38)
        {
          v15 = 0;
        }

        else
        {
          v45 = objc_msgSend_experimentIdentifiers(identifiersCopy, v36, v39, v37);
          v43 = objc_msgSend_trialTreatmentID(v45, v40, v42, v41);
          v15 = v43 == 0;
        }
      }
    }
  }

  return v15;
}

+ (BOOL)IsEqualStringOrNil:(id)nil s2:(id)s2
{
  nilCopy = nil;
  s2Copy = s2;
  v9 = s2Copy;
  if (!nilCopy || !s2Copy)
  {
    if (nilCopy | s2Copy)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(nilCopy, v7, v8, s2Copy))
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = 0;
LABEL_7:

  return v10;
}

+ (BOOL)IsEqualNumberOrNil:(id)nil n2:(id)n2
{
  nilCopy = nil;
  n2Copy = n2;
  v9 = n2Copy;
  if (!nilCopy || !n2Copy)
  {
    if (nilCopy | n2Copy)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToNumber_(nilCopy, v7, v8, n2Copy))
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = 0;
LABEL_7:

  return v10;
}

@end