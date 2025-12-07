@interface TPSAnalyticsCommonDefines
+ (id)displayTypeStringForDisplayType:(unint64_t)type;
+ (id)experimentCampIDStringForCamp:(int64_t)camp;
+ (id)ineligibleReasonStringForReason:(int64_t)reason;
@end

@implementation TPSAnalyticsCommonDefines

+ (id)displayTypeStringForDisplayType:(unint64_t)type
{
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8101518[type];
  }
}

+ (id)ineligibleReasonStringForReason:(int64_t)reason
{
  if (ineligibleReasonStringForReason__onceToken != -1)
  {
    +[TPSAnalyticsCommonDefines ineligibleReasonStringForReason:];
  }

  v4 = ineligibleReasonStringForReason__reasonsToStringMapping;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = +[TPSLogger analytics];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TPSAnalyticsCommonDefines *)reason ineligibleReasonStringForReason:v7];
    }

    v6 = @"unspecfied";
  }

  return v6;
}

void __61__TPSAnalyticsCommonDefines_ineligibleReasonStringForReason___block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F3F41BA8;
  v2[1] = &unk_1F3F41BC0;
  v3[0] = @"none";
  v3[1] = @"notificationSettingDisabled";
  v2[2] = &unk_1F3F41BD8;
  v2[3] = &unk_1F3F41BF0;
  v3[2] = @"configurationChanged";
  v3[3] = @"displayedOnOtherDevices";
  v2[4] = &unk_1F3F41C08;
  v2[5] = &unk_1F3F41C20;
  v3[4] = @"performedOutcome";
  v3[5] = @"preconditionChanged";
  v2[6] = &unk_1F3F41C38;
  v2[7] = &unk_1F3F41C50;
  v3[6] = @"absentEventObserved";
  v3[7] = @"deliveryInfoLifetimeExpired";
  v2[8] = &unk_1F3F41C68;
  v2[9] = &unk_1F3F41C80;
  v3[8] = @"suppressedByHoldoutCamp";
  v3[9] = @"userLanguageChanged";
  v2[10] = &unk_1F3F41C98;
  v3[10] = @"userKnew";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = ineligibleReasonStringForReason__reasonsToStringMapping;
  ineligibleReasonStringForReason__reasonsToStringMapping = v0;
}

+ (id)experimentCampIDStringForCamp:(int64_t)camp
{
  v3 = @"unspecified";
  if (camp == 1)
  {
    v3 = @"allContent";
  }

  if (camp == 2)
  {
    return @"holdout";
  }

  else
  {
    return v3;
  }
}

+ (void)ineligibleReasonStringForReason:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Unknown ineligible reason: %ld", &v2, 0xCu);
}

@end