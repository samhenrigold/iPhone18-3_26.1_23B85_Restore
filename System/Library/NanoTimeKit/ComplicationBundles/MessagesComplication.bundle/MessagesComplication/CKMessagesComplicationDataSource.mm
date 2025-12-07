@interface CKMessagesComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)localizedAppName;
- (CKMessagesComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (id)fullColorImageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template;
- (id)imageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template;
- (id)lockedTemplate;
- (id)privacyTemplate;
- (id)templateForFamily:(int64_t)family unreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy;
- (id)textProviderForUnreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy shortText:(BOOL)text tintColor:(id)color;
- (void)_updateCommunicationPolicies;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)setDefaultBackgroundForTemplate:(id)template;
- (void)setInitialUnreadCount:(unint64_t)count;
- (void)unreadCountDidChange:(unint64_t)change;
@end

@implementation CKMessagesComplicationDataSource

+ (id)localizedAppName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MESSAGES_TITLE" value:&stru_284E7EA48 table:@"MessagesComplication"];
  v5 = [v2 localizedStringWithFormat:v4];

  return v5;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  if (family < 8 && ((0xDDu >> family) & 1) != 0)
  {
    return 1;
  }

  return *MEMORY[0x277CBB668] == family || family == 12 || (family - 8) < 3;
}

- (CKMessagesComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = CKMessagesComplicationDataSource;
  v9 = [(CLKCComplicationDataSource *)&v15 initWithComplication:complication family:family forDevice:deviceCopy];
  if (v9)
  {
    v10 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataSource");
    log = v9->_log;
    v9->_log = v10;

    v12 = [[CKMessagesComplicationSpecs alloc] initWithDevice:deviceCopy];
    specs = v9->_specs;
    v9->_specs = v12;
  }

  return v9;
}

- (void)_updateCommunicationPolicies
{
  v3 = objc_initWeak(&location, self);
  communicationPolicyMonitor = [(CKMessagesComplicationDataSource *)self communicationPolicyMonitor];
  v12 = 0;
  v5 = [communicationPolicyMonitor requestPoliciesByBundleIdentifierWithError:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = objc_loadWeakRetained(&location);
    v8 = [v7 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_23BD20DE4();
    }
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23BD1E250;
    v9[3] = &unk_278B931C8;
    objc_copyWeak(&v11, &location);
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20E58();
  }

  v4.receiver = self;
  v4.super_class = CKMessagesComplicationDataSource;
  [(CKMessagesComplicationDataSource *)&v4 dealloc];
}

- (void)unreadCountDidChange:(unint64_t)change
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134349312;
    unreadCount = [(CKMessagesComplicationDataSource *)self unreadCount];
    v10 = 2050;
    changeCopy = change;
    _os_log_impl(&dword_23BD1C000, v5, OS_LOG_TYPE_DEFAULT, "unread count did change from: %{public}lu to: %{public}lu", &v8, 0x16u);
  }

  if ([(CKMessagesComplicationDataSource *)self unreadCount]!= change)
  {
    [(CKMessagesComplicationDataSource *)self setUnreadCount:change];
    delegate = [(CLKCComplicationDataSource *)self delegate];
    [delegate invalidateEntries];

    delegate2 = [(CLKCComplicationDataSource *)self delegate];
    [delegate2 invalidateSwitcherTemplate];
  }
}

- (void)setInitialUnreadCount:(unint64_t)count
{
  v5 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20EC8();
  }

  [(CKMessagesComplicationDataSource *)self setUnreadCount:count];
}

- (id)privacyTemplate
{
  v3 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20F38();
  }

  unreadCount = [(CKMessagesComplicationDataSource *)self unreadCount];
  if (unreadCount)
  {
    unreadCount = [(CKMessagesComplicationDataSource *)self templateForFamily:[(CLKCComplicationDataSource *)self family] unreadCount:0 locked:0 privacy:1];
  }

  return unreadCount;
}

- (id)lockedTemplate
{
  v3 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20F74();
  }

  v4 = [(CKMessagesComplicationDataSource *)self templateForFamily:[(CLKCComplicationDataSource *)self family] unreadCount:0 locked:1 privacy:0];

  return v4;
}

- (id)currentSwitcherTemplate
{
  family = [(CLKCComplicationDataSource *)self family];

  return [(CKMessagesComplicationDataSource *)self templateForFamily:family unreadCount:0 locked:1 privacy:0];
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v5 = [(CKMessagesComplicationDataSource *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20FB0();
    }

    v6 = [(CKMessagesComplicationDataSource *)self templateForFamily:[(CLKCComplicationDataSource *)self family] unreadCount:[(CKMessagesComplicationDataSource *)self unreadCount] locked:0 privacy:0];
    v7 = MEMORY[0x277CBBAC8];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [v7 entryWithDate:date complicationTemplate:v6];

    handlerCopy[2](handlerCopy, v9);
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23BD1C000, v7, OS_LOG_TYPE_DEFAULT, "complication tapped", v9, 2u);
  }

  v8 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20FEC();
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)templateForFamily:(int64_t)family unreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy
{
  privacyCopy = privacy;
  v59 = *MEMORY[0x277D85DE8];
  communicationPolicies = [(CKMessagesComplicationDataSource *)self communicationPolicies];

  if (communicationPolicies)
  {
    communicationPolicies2 = [(CKMessagesComplicationDataSource *)self communicationPolicies];
    v13 = [communicationPolicies2 objectForKeyedSubscript:@"com.apple.MobileSMS"];
    v14 = [v13 intValue] == 2;
  }

  else
  {
    v14 = 0;
  }

  if (locked || privacyCopy || v14)
  {
    countCopy = 0;
  }

  else
  {
    countCopy = count;
  }

  v16 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD21064(family, countCopy, v16);
  }

  v17 = 0;
  if (family <= 6)
  {
    if (family > 2)
    {
      if (family != 3)
      {
        if (family != 4)
        {
          if (family != 6)
          {
            goto LABEL_60;
          }

          v17 = objc_alloc_init(MEMORY[0x277CBBA90]);
          v18 = [(CKMessagesComplicationDataSource *)self log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23BD1C000, v18, OS_LOG_TYPE_DEFAULT, "creating UtilitarianSmallFlat template", buf, 2u);
          }

          v19 = [(CKMessagesComplicationDataSource *)self imageProviderForUnreadCount:countCopy family:6 template:v17];
          [v17 setImageProvider:v19];

          v20 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284E7EA48];
          [v17 setTextProvider:v20];
          goto LABEL_55;
        }

        v17 = objc_alloc_init(MEMORY[0x277CBB790]);
        v44 = [(CKMessagesComplicationDataSource *)self log];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23BD1C000, v44, OS_LOG_TYPE_DEFAULT, "creating CircularSmallSimpleImage template", buf, 2u);
        }

        selfCopy4 = self;
        v27 = countCopy;
        v28 = 4;
        goto LABEL_53;
      }

      v17 = objc_alloc_init(MEMORY[0x277CBBA80]);
      v35 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v35, OS_LOG_TYPE_DEFAULT, "creating UtilitarianLargeFlat template", buf, 2u);
      }

      v36 = [(CKMessagesComplicationDataSource *)self imageProviderForUnreadCount:0 family:3 template:v17];
      [v17 setImageProvider:v36];

      if (locked || privacyCopy || v14)
      {
        if (privacyCopy || !locked || v14)
        {
          if (!privacyCopy && !v14)
          {
            goto LABEL_70;
          }

          v37 = MEMORY[0x277CCACA8];
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = v38;
          v40 = @"MESSAGES_TITLE";
        }

        else
        {
          v37 = MEMORY[0x277CCACA8];
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = v38;
          v40 = @"UTILITY_UNLOCK_TO_VIEW";
        }

        v51 = [v38 localizedStringForKey:v40 value:&stru_284E7EA48 table:@"MessagesComplication"];
        [v37 localizedStringWithFormat:v51, v56];
      }

      else
      {
        v50 = MEMORY[0x277CCACA8];
        v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v51 = [v39 localizedStringForKey:@"NEW_MESSAGES_FORMAT" value:&stru_284E7EA48 table:@"MessagesComplication"];
        [v50 localizedStringWithFormat:v51, count];
      }
      v52 = ;

      v53 = [MEMORY[0x277CBBB88] textProviderWithText:v52];
      [v17 setTextProvider:v53];

LABEL_70:
      v20 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        textProvider = [v17 textProvider];
        text = [textProvider text];
        *buf = 138543362;
        v58 = text;
        _os_log_impl(&dword_23BD1C000, v20, OS_LOG_TYPE_DEFAULT, "added text: %{public}@", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (family)
    {
      if (family != 2)
      {
        goto LABEL_60;
      }

      v17 = objc_alloc_init(MEMORY[0x277CBBAC0]);
      v25 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v25, OS_LOG_TYPE_DEFAULT, "creating UtilitarianSmallSquare template", buf, 2u);
      }

      selfCopy4 = self;
      v27 = countCopy;
      v28 = 2;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBBA50]);
      v33 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v33, OS_LOG_TYPE_DEFAULT, "creating ModularSmallSimpleImage template", buf, 2u);
      }

      selfCopy4 = self;
      v27 = countCopy;
      v28 = 0;
    }

LABEL_53:
    v45 = [(CKMessagesComplicationDataSource *)selfCopy4 imageProviderForUnreadCount:v27 family:v28 template:v17];
LABEL_54:
    v20 = v45;
    [v17 setImageProvider:v45];
LABEL_55:

    goto LABEL_60;
  }

  if (family <= 8)
  {
    if (family == 7)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBB7F0]);
      v34 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v34, OS_LOG_TYPE_DEFAULT, "creating ExtraLargeSimpleImage template", buf, 2u);
      }

      selfCopy4 = self;
      v27 = countCopy;
      v28 = 7;
      goto LABEL_53;
    }

    if (!countCopy || locked)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBB8B8]);
      v49 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v49, OS_LOG_TYPE_DEFAULT, "creating GraphicCorner template without unread count", buf, 2u);
      }

      [(CKMessagesComplicationDataSource *)self setDefaultBackgroundForTemplate:v17];
      v45 = [(CKMessagesComplicationDataSource *)self fullColorImageProviderForUnreadCount:countCopy family:8 template:v17];
      goto LABEL_54;
    }

    v17 = objc_alloc_init(MEMORY[0x277CBB908]);
    v29 = [(CKMessagesComplicationDataSource *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v58 = countCopy;
      _os_log_impl(&dword_23BD1C000, v29, OS_LOG_TYPE_DEFAULT, "creating GraphicCorner template with unread count %{public}lu", buf, 0xCu);
    }

    v30 = [(CKMessagesComplicationDataSource *)self fullColorImageProviderForUnreadCount:0 family:8 template:v17];
    [v17 setImageProvider:v30];

    v31 = +[CKMessagesComplicationSpecs bubbleTintColor];
    v32 = [(CKMessagesComplicationDataSource *)self textProviderForUnreadCount:countCopy locked:0 privacy:privacyCopy shortText:1 tintColor:v31];
    [v17 setTextProvider:v32];
  }

  else if (family == 9)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBB810]);
    v41 = objc_alloc_init(MEMORY[0x277CBB850]);
    v42 = [(CKMessagesComplicationDataSource *)self log];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD1C000, v42, OS_LOG_TYPE_DEFAULT, "creating GraphicBezel template", buf, 2u);
    }

    v43 = [(CKMessagesComplicationDataSource *)self fullColorImageProviderForUnreadCount:countCopy family:10 template:0];
    [v41 setImageProvider:v43];

    [(CKMessagesComplicationDataSource *)self setDefaultBackgroundForTemplate:v41];
    [v17 setCircularTemplate:v41];
    [v17 setTextProvider:0];
  }

  else
  {
    if (family == 12)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBB938]);
      v46 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v46, OS_LOG_TYPE_DEFAULT, "creating GraphicExtraLarge template", buf, 2u);
      }

      selfCopy6 = self;
      v23 = countCopy;
      v24 = 12;
    }

    else
    {
      if (family != 10)
      {
        goto LABEL_60;
      }

      v17 = objc_alloc_init(MEMORY[0x277CBB850]);
      v21 = [(CKMessagesComplicationDataSource *)self log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BD1C000, v21, OS_LOG_TYPE_DEFAULT, "creating GraphicCircular template", buf, 2u);
      }

      selfCopy6 = self;
      v23 = countCopy;
      v24 = 10;
    }

    v47 = [(CKMessagesComplicationDataSource *)selfCopy6 fullColorImageProviderForUnreadCount:v23 family:v24 template:0];
    [v17 setImageProvider:v47];

    [(CKMessagesComplicationDataSource *)self setDefaultBackgroundForTemplate:v17];
  }

LABEL_60:

  return v17;
}

- (id)imageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template
{
  templateCopy = template;
  v9 = +[CKMessagesComplicationImageProvider sharedInstance];
  specs = [(CKMessagesComplicationDataSource *)self specs];
  v11 = [v9 imageForUnreadCount:count family:family complicationTemplate:templateCopy specs:specs];

  v12 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v11];
  if (family == 6)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    +[CKMessagesComplicationSpecs bubbleTintColor];
  }
  v13 = ;
  [v12 setTintColor:v13];

  return v12;
}

- (id)fullColorImageProviderForUnreadCount:(unint64_t)count family:(int64_t)family template:(id)template
{
  templateCopy = template;
  v9 = +[CKMessagesComplicationImageProvider sharedInstance];
  specs = [(CKMessagesComplicationDataSource *)self specs];
  v11 = [v9 imageForUnreadCount:count family:family complicationTemplate:templateCopy specs:specs];

  v12 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v11 monochromeFilterType:1];

  return v12;
}

- (id)textProviderForUnreadCount:(unint64_t)count locked:(BOOL)locked privacy:(BOOL)privacy shortText:(BOOL)text tintColor:(id)color
{
  textCopy = text;
  privacyCopy = privacy;
  lockedCopy = locked;
  colorCopy = color;
  if (lockedCopy || privacyCopy)
  {
    if (!lockedCopy || privacyCopy)
    {
      if (!privacyCopy)
      {
        goto LABEL_13;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"MESSAGES_TITLE";
    }

    else
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"UTILITY_UNLOCK_TO_VIEW";
    }

    v22 = [v19 localizedStringForKey:v21 value:&stru_284E7EA48 table:@"MessagesComplication"];
    v15 = [v18 localizedStringWithFormat:v22];

    v17 = [MEMORY[0x277CBBB88] textProviderWithText:v15];
LABEL_12:

    goto LABEL_14;
  }

  if (textCopy)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"UNREAD_MESSAGES_FORMAT" value:&stru_284E7EA48 table:@"MessagesComplication"];
    v15 = [v12 localizedStringWithFormat:v14, count];

    v16 = [MEMORY[0x277CBBB88] textProviderWithText:v15];
    v17 = v16;
    if (colorCopy)
    {
      [v16 setTintColor:colorCopy];
    }

    goto LABEL_12;
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

- (void)setDefaultBackgroundForTemplate:(id)template
{
  v8[1] = *MEMORY[0x277D85DE8];
  templateCopy = template;
  v5 = [(CKMessagesComplicationDataSource *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD2111C();
  }

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [templateCopy setMetadata:v6];
}

@end