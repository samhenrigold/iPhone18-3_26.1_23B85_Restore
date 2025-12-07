@interface PLBatteryUIExternalData
+ (id)getLocalizedStringForKey:(id)key;
+ (id)getTitleAndTextForType:(int)type;
@end

@implementation PLBatteryUIExternalData

+ (id)getTitleAndTextForType:(int)type
{
  v3 = 0;
  v20[2] = *MEMORY[0x1E69E9840];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_14;
      }

      v17[0] = @"Title";
      v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"ENABLE_AUTOLOCK"];
      v17[1] = @"Text";
      v18[0] = v4;
      v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOLOCK_INFO_TEXT"];
      v18[1] = v5;
      v6 = MEMORY[0x1E695DF20];
      v7 = v18;
      v8 = v17;
    }

    else
    {
      v19[0] = @"Title";
      v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOBRIGHTNESS"];
      v19[1] = @"Text";
      v20[0] = v4;
      v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOBRIGHTNESS_INFO_TEXT"];
      v20[1] = v5;
      v6 = MEMORY[0x1E695DF20];
      v7 = v20;
      v8 = v19;
    }

    goto LABEL_12;
  }

  if (type == 2)
  {
    v15[0] = @"Title";
    v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"REDUCEBRIGHTNESS"];
    v15[1] = @"Text";
    v16[0] = v4;
    v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"REDUCEBRIGHTNESS_INFO_TEXT"];
    v16[1] = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v16;
    v8 = v15;
LABEL_12:
    v3 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:2];
    goto LABEL_13;
  }

  if (type != 3)
  {
    goto LABEL_14;
  }

  v9 = +[PLModelingUtilities isiPhone];
  v10 = @"IPAD";
  if (v9)
  {
    v10 = @"IPHONE";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSIGHTS_SUGGESTIONS_SUMMARY_RECENT_USAGE_TEXT_%@", v10];
  v13[0] = @"Title";
  v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"UPGRADE_TITLE"];
  v13[1] = @"Text";
  v14[0] = v5;
  v11 = [PLBatteryUIExternalData getLocalizedStringForKey:v4];
  v14[1] = v11;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

LABEL_13:
LABEL_14:

  return v3;
}

+ (id)getLocalizedStringForKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_1F38DE2A8 table:@"BatteryUI"];

  return v6;
}

@end