@interface NGMTimeBasedEvaluations
+ (BOOL)prekeyCanBeDeleted:(id)deleted;
+ (BOOL)prekeyShouldBeRolled:(id)rolled;
+ (BOOL)shouldRekeyIfLastRekeyFrom:(id)from;
+ (BOOL)validateFetchedPrekeyTimestamp:(double)timestamp forEvaluationType:(unint64_t)type;
+ (double)timeIntervalAllowedForAction:(unint64_t)action;
+ (id)debugDescriptionForAction:(unint64_t)action;
+ (id)nowDate;
+ (id)oldestDateAllowedToSendTo;
+ (id)sharedManager;
+ (void)setNowDate:(id)date;
@end

@implementation NGMTimeBasedEvaluations

+ (id)sharedManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedManager_sharedMyManager)
  {
    v3 = objc_alloc_init(selfCopy);
    v4 = sharedManager_sharedMyManager;
    sharedManager_sharedMyManager = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedManager_sharedMyManager;

  return v5;
}

+ (id)nowDate
{
  sharedManager = [self sharedManager];
  date = [sharedManager date];

  if (date)
  {
    v4 = date;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] now];
  }

  v5 = v4;

  return v5;
}

+ (void)setNowDate:(id)date
{
  dateCopy = date;
  sharedManager = [self sharedManager];
  [sharedManager setDate:dateCopy];
}

+ (id)oldestDateAllowedToSendTo
{
  v2 = MEMORY[0x277CBEAA8];
  nowDate = [self nowDate];
  [nowDate timeIntervalSince1970];
  v5 = [v2 dateWithTimeIntervalSince1970:v4 + -2678400.0];

  return v5;
}

+ (double)timeIntervalAllowedForAction:(unint64_t)action
{
  result = dbl_22B48D650[action == 1];
  if (action == 2)
  {
    return 12355200.0;
  }

  return result;
}

+ (id)debugDescriptionForAction:(unint64_t)action
{
  v3 = @"registering";
  if (action == 1)
  {
    v3 = @"encrypting to";
  }

  if (action == 2)
  {
    return @"validating signature of message";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)validateFetchedPrekeyTimestamp:(double)timestamp forEvaluationType:(unint64_t)type
{
  v41 = *MEMORY[0x277D85DE8];
  nowDate = [self nowDate];
  [nowDate timeIntervalSince1970];
  v9 = v8 - timestamp;

  v10 = [self timeIntervalAllowedForAction:type];
  v12 = v9 < 0.0;
  if (v9 >= 0.0)
  {
    v21 = v11;
    if (v9 <= v11)
    {
      return 1;
    }

    v13 = MessageProtectionLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:timestamp];
      v23 = [v32 description];
      v24 = MEMORY[0x277CBEAA8];
      nowDate2 = [self nowDate];
      [nowDate2 timeIntervalSince1970];
      v27 = [v24 dateWithTimeIntervalSince1970:v26 - v21];
      v28 = [v27 description];
      nowDate3 = [self nowDate];
      v30 = [nowDate3 description];
      v31 = [self debugDescriptionForAction:type];
      *buf = 138413058;
      v34 = v23;
      v35 = 2112;
      v36 = v28;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = v31;
      _os_log_error_impl(&dword_22B404000, v13, OS_LOG_TYPE_ERROR, "The encryption prekey is older (%@) than the last allowed date (%@) for %@ at %@.", buf, 0x2Au);
    }
  }

  else
  {
    v13 = MessageProtectionLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(NGMTimeBasedEvaluations *)v13 validateFetchedPrekeyTimestamp:v14 forEvaluationType:v15, v16, v17, v18, v19, v20];
    }
  }

  return v12;
}

+ (BOOL)shouldRekeyIfLastRekeyFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    nowDate = [self nowDate];
    [nowDate timeIntervalSince1970];
    v7 = v6;
    [fromCopy timeIntervalSince1970];
    v9 = v7 - v8;

    if (v9 < 0.0)
    {
      v11 = MessageProtectionLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v21 = 0;
        v12 = "A KEM rekeying happened with a date logged in the future.";
        v13 = &v21;
LABEL_13:
        _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v11 = MessageProtectionLog(v10);
    v17 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v9 <= 604800.0)
    {
      if (v17)
      {
        v19 = 0;
        v12 = "We have rekeyed less than a week ago.";
        v13 = &v19;
        goto LABEL_13;
      }

LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    if (!v17)
    {
      v14 = 1;
      goto LABEL_15;
    }

    *buf = 0;
    v15 = "A week or more has passed since our last KEM rekeying, should rekey again.";
    v14 = 1;
    v16 = buf;
    goto LABEL_10;
  }

  v11 = MessageProtectionLog(0);
  v14 = 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v22 = 0;
    v15 = "Rekeying since we don't have a last rekey date.";
    v16 = &v22;
LABEL_10:
    _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, v15, v16, 2u);
  }

LABEL_15:

  return v14;
}

+ (BOOL)prekeyCanBeDeleted:(id)deleted
{
  v20 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  nowDate = [self nowDate];
  [nowDate timeIntervalSince1970];
  v7 = v6;
  publicPrekey = [deletedCopy publicPrekey];
  [publicPrekey timestamp];
  v10 = v7 - v9;

  v12 = v10 >= 0.0;
  if (v10 < 0.0)
  {
    v13 = MessageProtectionLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v14 = "The encryption prekey appears to have been signed with a date in the future.                    The time was probably rolled back on the phone.";
      v15 = v13;
      v16 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    if (v10 <= 10368000.0)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v13 = MessageProtectionLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = deletedCopy;
      v14 = "Removing prekey %@ since it's safe to delete it now (expired).";
      v15 = v13;
      v16 = 12;
LABEL_7:
      _os_log_impl(&dword_22B404000, v15, OS_LOG_TYPE_INFO, v14, &v18, v16);
    }
  }

LABEL_10:
  return v12;
}

+ (BOOL)prekeyShouldBeRolled:(id)rolled
{
  rolledCopy = rolled;
  nowDate = [self nowDate];
  [nowDate timeIntervalSince1970];
  v7 = v6;
  publicPrekey = [rolledCopy publicPrekey];

  [publicPrekey timestamp];
  v10 = v7 - v9;

  if (v10 < 0.0)
  {
    v12 = MessageProtectionLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(NGMTimeBasedEvaluations *)v12 prekeyShouldBeRolled:v13, v14, v15, v16, v17, v18, v19];
    }

LABEL_7:

    return 1;
  }

  if (v10 > 604800.0)
  {
    v12 = MessageProtectionLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(NGMTimeBasedEvaluations *)v12 prekeyShouldBeRolled:v20, v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_7;
  }

  return 0;
}

@end