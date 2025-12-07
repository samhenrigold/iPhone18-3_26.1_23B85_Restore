@interface WAChanInfo
+ (id)chanInfoWithChannel:(signed __int16)channel band:(signed __int16)band;
+ (id)chanInfoWithObjectHavingChInfo:(id)info withPrefix:(id)prefix;
+ (int)simplifiedChannelFlags:(signed __int16)flags;
- (id)chanInfoDictionary;
@end

@implementation WAChanInfo

+ (id)chanInfoWithChannel:(signed __int16)channel band:(signed __int16)band
{
  bandCopy = band;
  channelCopy = channel;
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 setChannel:channelCopy];
    [v7 setBand:bandCopy];
    [v7 setSimplifiedChannelFlags:{objc_msgSend(objc_opt_class(), "simplifiedChannelFlags:", bandCopy)}];
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [WADeviceAnalyticsClient bandAsString:bandCopy];
    v11 = 136446978;
    v12 = "+[WAChanInfo chanInfoWithChannel:band:]";
    v13 = 1024;
    v14 = 1568;
    v15 = 1024;
    v16 = channelCopy;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Channel info: %hd Band %@", &v11, 0x22u);
  }

  return v7;
}

+ (id)chanInfoWithObjectHavingChInfo:(id)info withPrefix:(id)prefix
{
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  prefixCopy = prefix;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [@"channel" substringFromIndex:1];
  v9 = [v7 stringWithFormat:@"%@%@", prefixCopy, v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [@"channelFlags" substringFromIndex:1];
  v12 = [v10 stringWithFormat:@"%@%@", prefixCopy, v11];

  v13 = [infoCopy valueForKey:v9];
  if (!v13)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v23 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v24 = 1024;
      v25 = 1583;
      v26 = 2112;
      v27 = infoCopy;
      v28 = 2112;
      v29 = v9;
LABEL_17:
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ does not contain a value for %@", buf, 0x26u);
    }

LABEL_21:

    v18 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447234;
      v23 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v24 = 1024;
      v25 = 1584;
      v26 = 2112;
      v27 = infoCopy;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ contains a value for %@ that is not a number %@", buf, 0x30u);
    }

    goto LABEL_21;
  }

  shortValue = [v13 shortValue];
  v15 = [infoCopy valueForKey:v12];

  if (!v15)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v23 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v24 = 1024;
      v25 = 1588;
      v26 = 2112;
      v27 = infoCopy;
      v28 = 2112;
      v29 = v12;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447234;
      v23 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v24 = 1024;
      v25 = 1589;
      v26 = 2112;
      v27 = infoCopy;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ contains a value for %@ that is not a number %@", buf, 0x30u);
    }

    v13 = v15;
    goto LABEL_21;
  }

  intValue = [v15 intValue];

  v17 = objc_opt_new();
  v18 = v17;
  if (v17)
  {
    [v17 setChannel:shortValue];
    [v18 setBand:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", intValue)}];
    [v18 setSimplifiedChannelFlags:{objc_msgSend(objc_opt_class(), "simplifiedChannelFlags:", objc_msgSend(v18, "band"))}];
  }

LABEL_7:

  return v18;
}

+ (int)simplifiedChannelFlags:(signed __int16)flags
{
  if (flags == 1)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0x2000;
  }

  if (flags)
  {
    return v3;
  }

  else
  {
    return 8;
  }
}

- (id)chanInfoDictionary
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"channel";
  v3 = [MEMORY[0x1E696AD98] numberWithShort:self->_channel];
  v8[0] = v3;
  v7[1] = @"channelFlags";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_simplifiedChannelFlags];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end