@interface BCSBusinessItem
+ (id)businessItemsFromChatSuggestJSONObj:(id)obj;
+ (id)businessItemsFromChatSuggestMessageDictionary:(id)dictionary;
+ (id)businessItemsFromRecords:(id)records;
- (BCSBusinessItem)initWithBizID:(id)d phoneNumber:(id)number name:(id)name phoneHash:(int64_t)hash squareLogoURL:(id)l wideLogoURL:(id)rL tintColor:(unint64_t)color backgroundColor:(unint64_t)self0 callToActions:(id)self1 messagingOpenHours:(id)self2 callingOpenHours:(id)self3 isVerified:(BOOL)self4 intentID:(id)self5 groupID:(id)self6 visibilityItems:(id)self7;
- (BCSBusinessItem)initWithChatSuggestMessage:(id)message bucketID:(id)d;
- (BCSBusinessItem)initWithCoder:(id)coder;
- (BCSBusinessItem)initWithJSONObj:(id)obj;
- (BCSBusinessItemIdentifier)_businessItemIdentifier;
- (BOOL)_isChatSuggestVisibleForVisibilityItem:(id)item messagesIdentifier:(id)identifier bizID:(id)d;
- (BOOL)isAvailableForCalling;
- (BOOL)isAvailableForMessaging;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSDate)dateWhenCallingAvailableNext;
- (NSDate)dateWhenMessagingAvailableNext;
- (NSString)callSubtitle;
- (NSString)messageSubtitle;
- (NSString)messageTitle;
- (NSURL)messagesOpenURL;
- (id)_availableNextStringFromAvailableNextDate:(uint64_t)date;
- (id)_escapedVersionOfInputString:(void *)string;
- (id)_selectedVisibilityItemForLanguage:(id)language country:(id)country;
- (id)callToAction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)_integerForHexString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSBusinessItem

- (BCSBusinessItem)initWithChatSuggestMessage:(id)message bucketID:(id)d
{
  v63 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatOpenHours = [messageCopy chatOpenHours];
  v7 = [chatOpenHours count];

  phoneOpenHours = [messageCopy phoneOpenHours];
  v9 = [phoneOpenHours count];

  if (v7)
  {
    v10 = [BCSOpenHours alloc];
    chatOpenHours2 = [messageCopy chatOpenHours];
    firstObject = [chatOpenHours2 firstObject];
    timeZone = [messageCopy timeZone];
    v52 = [(BCSOpenHours *)v10 initWithHoursPeriodMessage:firstObject timeZone:timeZone];

    if (v9)
    {
LABEL_3:
      v14 = [BCSOpenHours alloc];
      phoneOpenHours2 = [messageCopy phoneOpenHours];
      firstObject2 = [phoneOpenHours2 firstObject];
      timeZone2 = [messageCopy timeZone];
      v51 = [(BCSOpenHours *)v14 initWithHoursPeriodMessage:firstObject2 timeZone:timeZone2];

      goto LABEL_6;
    }
  }

  else
  {
    v52 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v51 = 0;
LABEL_6:
  v18 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  callToActions = [messageCopy callToActions];
  v20 = [callToActions countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v58;
    do
    {
      v23 = 0;
      do
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(callToActions);
        }

        v24 = [[BCSCallToActionItem alloc] initWithCallToAction:*(*(&v57 + 1) + 8 * v23)];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [callToActions countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v21);
  }

  v25 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  visibilities = [messageCopy visibilities];
  v27 = [visibilities countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v54;
    do
    {
      v30 = 0;
      do
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(visibilities);
        }

        v31 = [[BCSVisibilityItem alloc] initWithVisibility:*(*(&v53 + 1) + 8 * v30)];
        [v25 addObject:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [visibilities countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v28);
  }

  tintColor = [messageCopy tintColor];
  v50 = [(BCSBusinessItem *)self _integerForHexString:tintColor];

  backgroundColor = [messageCopy backgroundColor];
  v48 = [(BCSBusinessItem *)self _integerForHexString:backgroundColor];

  v34 = MEMORY[0x277CBEBC0];
  squareLogoUrl = [messageCopy squareLogoUrl];
  v47 = [v34 URLWithString:squareLogoUrl];

  v36 = MEMORY[0x277CBEBC0];
  wideLogoUrl = [messageCopy wideLogoUrl];
  v46 = [v36 URLWithString:wideLogoUrl];

  bizId = [messageCopy bizId];
  name = [messageCopy name];
  phoneHash = [messageCopy phoneHash];
  isVerified = [messageCopy isVerified];
  intentId = [messageCopy intentId];
  group = [messageCopy group];
  LOBYTE(v45) = isVerified;
  v49 = [(BCSBusinessItem *)self initWithBizID:bizId phoneNumber:&stru_28544C2A0 name:name phoneHash:phoneHash squareLogoURL:v47 wideLogoURL:v46 tintColor:v50 backgroundColor:v48 callToActions:v18 messagingOpenHours:v52 callingOpenHours:v51 isVerified:v45 intentID:intentId groupID:group visibilityItems:v25];

  return v49;
}

+ (id)businessItemsFromChatSuggestJSONObj:(id)obj
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [obj objectForKeyedSubscript:@"records"];
  v21 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = @"message";
    do
    {
      v8 = 0;
      v22 = v5;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v25 + 1) + 8 * v8) objectForKeyedSubscript:0x28544DD80];
        v10 = [v9 objectForKeyedSubscript:v7];
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = v7;
          v12 = v6;
          v13 = [v10 objectForKeyedSubscript:@"value"];
          v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
          v15 = [[BCSChatSuggestMessage alloc] initWithData:v14];
          v16 = [BCSBusinessItem alloc];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", -[BCSChatSuggestMessage phoneHash](v15, "phoneHash")];
          v18 = [(BCSBusinessItem *)v16 initWithChatSuggestMessage:v15 bucketID:v17];

          if (v18)
          {
            [v21 addObject:v18];
          }

          else
          {
            v19 = ABSLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromChatSuggestJSONObj: BusinessItem object didn't initialize correctly", buf, 2u);
            }
          }

          v6 = v12;
          v7 = v11;
          v5 = v22;
        }

        else
        {
          v13 = ABSLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromChatSuggestJSONObj: Message object is not a dictionary or not initialized", buf, 2u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  return v21;
}

+ (id)businessItemsFromChatSuggestMessageDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"records"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
    v18 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:0x28544DD80];
        v9 = [v8 objectForKeyedSubscript:@"message"];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v9 objectForKeyedSubscript:@"value"];
            v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v21 options:0];
            v10 = [[BCSChatSuggestMessage alloc] initWithData:v20];
            v11 = v4;
            v12 = v5;
            v13 = [BCSBusinessItem alloc];
            v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BCSChatSuggestMessage phoneHash](v10, "phoneHash")}];
            stringValue = [v14 stringValue];
            v5 = [(BCSBusinessItem *)v13 initWithChatSuggestMessage:v10 bucketID:stringValue];

            v4 = v11;
            v6 = v18;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)businessItemsFromRecords:(id)records
{
  v25 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = recordsCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v20 + 1) + 8 * v8) objectForKeyedSubscript:@"message"];
        v10 = [[BCSChatSuggestMessage alloc] initWithData:v9];
        v11 = [BCSBusinessItem alloc];
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BCSChatSuggestMessage phoneHash](v10, "phoneHash")}];
        stringValue = [v12 stringValue];
        v14 = [(BCSBusinessItem *)v11 initWithChatSuggestMessage:v10 bucketID:stringValue];

        if (v14)
        {
          [v4 addObject:v14];
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromRecords: BusinessItem object didn't initialize correctly", buf, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];

  return v16;
}

- (NSString)callSubtitle
{
  if ([(BCSBusinessItem *)self isAvailableForCalling]|| ([(BCSBusinessItem *)self dateWhenCallingAvailableNext], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v5 = 0;
  }

  else
  {
    dateWhenCallingAvailableNext = [(BCSBusinessItem *)self dateWhenCallingAvailableNext];
    v5 = [(BCSBusinessItem *)self _availableNextStringFromAvailableNextDate:dateWhenCallingAvailableNext];
  }

  return v5;
}

- (id)_availableNextStringFromAvailableNextDate:(uint64_t)date
{
  if (date)
  {
    v2 = MEMORY[0x277CBEAA8];
    v3 = a2;
    date = [v2 date];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    isDevice24HourTime = [(NSLocale *)currentLocale isDevice24HourTime];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = +[BCSLocalizedStringProvider sharedInstance];
    v8 = v3;
    v9 = v7;
    v10 = @"h:mm a";
    if (isDevice24HourTime)
    {
      v10 = @"H:mm";
    }

    v11 = MEMORY[0x277CCA968];
    v12 = v10;
    v13 = currentCalendar;
    v14 = date;
    v15 = objc_alloc_init(v11);
    [v15 setDateFormat:v12];

    v32 = [v15 stringFromDate:v8];
    v16 = [v13 component:32 fromDate:v8];
    if (isDevice24HourTime)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 % 12;
    }

    v18 = MEMORY[0x277CCA968];
    v19 = v8;
    v20 = v14;
    v21 = objc_alloc_init(v18);
    [v21 setDateFormat:@"EEEE"];
    v22 = [v21 stringFromDate:v20];
    v23 = [v21 stringFromDate:v19];
    [v19 timeIntervalSinceDate:v20];
    v25 = v24;

    v26 = [v23 isEqualToString:v22];
    if (v26 && fabs(v25) < 86400.0)
    {
      v27 = v32;
      if (v17 == 1)
      {
        [v9 willOpenAtSameDaySingularWithFormattedTime:v32];
      }

      else
      {
        [v9 willOpenAtSameDayPluralWithFormattedTime:v32];
      }
      v30 = ;
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v28 setDateFormat:@"EEEE"];
      v29 = [v28 stringFromDate:v19];
      v27 = v32;
      if (v17 == 1)
      {
        [v9 willOpenAtDifferentDaySingularWithFormattedTime:v32 formattedDay:v29];
      }

      else
      {
        [v9 willOpenAtDifferentDayPluralWithFormattedTime:v32 formattedDay:v29];
      }
      v30 = ;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (NSString)messageTitle
{
  callToAction = [(BCSBusinessItem *)self callToAction];
  title = [callToAction title];
  if ([title length])
  {
    callToAction2 = [(BCSBusinessItem *)self callToAction];
    [callToAction2 title];
  }

  else
  {
    callToAction2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [callToAction2 localizedStringForKey:@"CHAT_NOW" value:&stru_28544C2A0 table:0];
  }
  v6 = ;

  return v6;
}

- (NSString)messageSubtitle
{
  if ([(BCSBusinessItem *)self isAvailableForMessaging])
  {
    callToAction = [(BCSBusinessItem *)self callToAction];
    subtitle = [callToAction subtitle];
LABEL_5:
    v6 = subtitle;

    goto LABEL_6;
  }

  dateWhenMessagingAvailableNext = [(BCSBusinessItem *)self dateWhenMessagingAvailableNext];

  if (dateWhenMessagingAvailableNext)
  {
    callToAction = [(BCSBusinessItem *)self dateWhenMessagingAvailableNext];
    subtitle = [(BCSBusinessItem *)self _availableNextStringFromAvailableNextDate:callToAction];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BCSBusinessItem)initWithBizID:(id)d phoneNumber:(id)number name:(id)name phoneHash:(int64_t)hash squareLogoURL:(id)l wideLogoURL:(id)rL tintColor:(unint64_t)color backgroundColor:(unint64_t)self0 callToActions:(id)self1 messagingOpenHours:(id)self2 callingOpenHours:(id)self3 isVerified:(BOOL)self4 intentID:(id)self5 groupID:(id)self6 visibilityItems:(id)self7
{
  dCopy = d;
  numberCopy = number;
  nameCopy = name;
  lCopy = l;
  rLCopy = rL;
  actionsCopy = actions;
  hoursCopy = hours;
  openHoursCopy = openHours;
  iDCopy = iD;
  groupIDCopy = groupID;
  itemsCopy = items;
  v59.receiver = self;
  v59.super_class = BCSBusinessItem;
  v28 = [(BCSItem *)&v59 init];
  if (v28)
  {
    prefixedBizID = [dCopy prefixedBizID];
    v30 = [prefixedBizID copy];
    bizID = v28->_bizID;
    v28->_bizID = v30;

    v32 = [numberCopy copy];
    phoneNumber = v28->_phoneNumber;
    v28->_phoneNumber = v32;

    v34 = [nameCopy copy];
    name = v28->_name;
    v28->_name = v34;

    v28->_phoneHash = hash;
    v36 = [lCopy copy];
    squareLogoURL = v28->_squareLogoURL;
    v28->_squareLogoURL = v36;

    v38 = [rLCopy copy];
    wideLogoURL = v28->_wideLogoURL;
    v28->_wideLogoURL = v38;

    v28->_tintColor = color;
    v28->_backgroundColor = backgroundColor;
    v40 = [actionsCopy copy];
    callToActions = v28->_callToActions;
    v28->_callToActions = v40;

    v42 = [hoursCopy copy];
    messagingOpenHours = v28->_messagingOpenHours;
    v28->_messagingOpenHours = v42;

    v44 = [openHoursCopy copy];
    callingOpenHours = v28->_callingOpenHours;
    v28->_callingOpenHours = v44;

    v28->_isVerified = verified;
    v46 = [iDCopy copy];
    intentID = v28->_intentID;
    v28->_intentID = v46;

    v48 = [groupIDCopy copy];
    groupID = v28->_groupID;
    v28->_groupID = v48;

    v50 = [itemsCopy copy];
    visibilityItems = v28->_visibilityItems;
    v28->_visibilityItems = v50;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = BCSBusinessItem;
  v4 = [(BCSBusinessItem *)&v9 description];
  bizID = [(BCSBusinessItem *)self bizID];
  name = [(BCSBusinessItem *)self name];
  v7 = [v3 stringWithFormat:@"%@ - bizID:%@ - name:%@", v4, bizID, name];

  return v7;
}

- (id)debugDescription
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = MEMORY[0x277CCACA8];
  bizID = [(BCSBusinessItem *)self bizID];
  name = [(BCSBusinessItem *)self name];
  phoneHash = [(BCSBusinessItem *)self phoneHash];
  squareLogoURL = [(BCSBusinessItem *)self squareLogoURL];
  absoluteString = [squareLogoURL absoluteString];
  wideLogoURL = [(BCSBusinessItem *)self wideLogoURL];
  absoluteString2 = [wideLogoURL absoluteString];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX", -[BCSBusinessItem tintColor](self, "tintColor")];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX", -[BCSBusinessItem backgroundColor](self, "backgroundColor")];
  callToAction = [(BCSBusinessItem *)self callToAction];
  language = [callToAction language];
  callToAction2 = [(BCSBusinessItem *)self callToAction];
  title = [callToAction2 title];
  callToAction3 = [(BCSBusinessItem *)self callToAction];
  subtitle = [callToAction3 subtitle];
  messagingOpenHours = [(BCSBusinessItem *)self messagingOpenHours];
  v20 = [messagingOpenHours debugDescription];
  callingOpenHours = [(BCSBusinessItem *)self callingOpenHours];
  v18 = [callingOpenHours debugDescription];
  isVerified = [(BCSBusinessItem *)self isVerified];
  groupID = [(BCSBusinessItem *)self groupID];
  intentID = [(BCSBusinessItem *)self intentID];
  if (self)
  {
    visibilityItems = [(BCSBusinessItem *)self visibilityItems];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v4 = [visibilityItems countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v40;
      v7 = &stru_28544C2A0;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*v40 != v6)
          {
            objc_enumerationMutation(visibilityItems);
          }

          v10 = MEMORY[0x277CCACA8];
          v11 = [*(*(&v39 + 1) + 8 * v8) description];
          v12 = [v10 stringWithFormat:@"Visibility %@\n", v11];
          v7 = [(__CFString *)v9 stringByAppendingString:v12];

          ++v8;
          v9 = v7;
        }

        while (v5 != v8);
        v5 = [visibilityItems countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = &stru_28544C2A0;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = @"NO";
  if (isVerified)
  {
    v13 = @"YES";
  }

  v31 = [v30 stringWithFormat:@"ID : %@\nName : %@\nBucket ID: %lld\nSquare Logo URL : %@\nWide Logo URL : %@\nTint color : %@\nBackground color: %@\nCall to Action (%@) : %@ - %@\nMessaging Open Hours:\n%@\nCalling Open Hours:\n%@\nVerified : %@\nGroup ID : %@\nIntent ID : %@\nConfigured Visibility Items : \n%@\n", bizID, name, phoneHash, absoluteString, absoluteString2, v32, v29, language, title, subtitle, v20, v18, v13, groupID, intentID, v7];

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    bizID = [(BCSBusinessItem *)self bizID];
    v7 = [bizID copyWithZone:zone];
    v8 = *(v5 + 16);
    *(v5 + 16) = v7;

    phoneNumber = [(BCSBusinessItem *)self phoneNumber];
    v10 = [phoneNumber copyWithZone:zone];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    name = [(BCSBusinessItem *)self name];
    v13 = [name copyWithZone:zone];
    v14 = *(v5 + 32);
    *(v5 + 32) = v13;

    *(v5 + 40) = [(BCSBusinessItem *)self phoneHash];
    squareLogoURL = [(BCSBusinessItem *)self squareLogoURL];
    v16 = [squareLogoURL copyWithZone:zone];
    v17 = *(v5 + 48);
    *(v5 + 48) = v16;

    wideLogoURL = [(BCSBusinessItem *)self wideLogoURL];
    v19 = [wideLogoURL copyWithZone:zone];
    v20 = *(v5 + 56);
    *(v5 + 56) = v19;

    *(v5 + 64) = [(BCSBusinessItem *)self tintColor];
    *(v5 + 72) = [(BCSBusinessItem *)self backgroundColor];
    callToActions = [(BCSBusinessItem *)self callToActions];
    v22 = [callToActions copyWithZone:zone];
    v23 = *(v5 + 80);
    *(v5 + 80) = v22;

    messagingOpenHours = [(BCSBusinessItem *)self messagingOpenHours];
    v25 = [messagingOpenHours copyWithZone:zone];
    v26 = *(v5 + 96);
    *(v5 + 96) = v25;

    callingOpenHours = [(BCSBusinessItem *)self callingOpenHours];
    v28 = [callingOpenHours copyWithZone:zone];
    v29 = *(v5 + 104);
    *(v5 + 104) = v28;

    *(v5 + 112) = [(BCSBusinessItem *)self isVerified];
    intentID = [(BCSBusinessItem *)self intentID];
    v31 = *(v5 + 120);
    *(v5 + 120) = intentID;

    groupID = [(BCSBusinessItem *)self groupID];
    v33 = *(v5 + 128);
    *(v5 + 128) = groupID;

    visibilityItems = [(BCSBusinessItem *)self visibilityItems];
    v35 = [visibilityItems copyWithZone:zone];
    v36 = *(v5 + 88);
    *(v5 + 88) = v35;
  }

  return v5;
}

- (BOOL)isAvailableForMessaging
{
  date = [MEMORY[0x277CBEAA8] date];
  if (self)
  {
    messagingOpenHours = [(BCSBusinessItem *)self messagingOpenHours];

    if (messagingOpenHours)
    {
      messagingOpenHours2 = [(BCSBusinessItem *)self messagingOpenHours];
      LOBYTE(self) = [messagingOpenHours2 isOpenAtDate:date];
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (NSDate)dateWhenMessagingAvailableNext
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = date;
  if (self)
  {
    v5 = date;
    messagingOpenHours = [(BCSBusinessItem *)self messagingOpenHours];
    self = [messagingOpenHours dateWhenOpenNextAfterDate:v5];
  }

  return self;
}

- (BOOL)isAvailableForCalling
{
  date = [MEMORY[0x277CBEAA8] date];
  if (self)
  {
    callingOpenHours = [(BCSBusinessItem *)self callingOpenHours];

    if (callingOpenHours)
    {
      callingOpenHours2 = [(BCSBusinessItem *)self callingOpenHours];
      LOBYTE(self) = [callingOpenHours2 isOpenAtDate:date];
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (NSDate)dateWhenCallingAvailableNext
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = date;
  if (self)
  {
    v5 = date;
    callingOpenHours = [(BCSBusinessItem *)self callingOpenHours];
    self = [callingOpenHours dateWhenOpenNextAfterDate:v5];
  }

  return self;
}

- (NSURL)messagesOpenURL
{
  v3 = MEMORY[0x277CCACA8];
  bizID = [(BCSBusinessItem *)self bizID];
  prefixedBizID = [bizID prefixedBizID];
  if (self)
  {
    intentID = [(BCSBusinessItem *)self intentID];
    v7 = [intentID length];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      intentID2 = [(BCSBusinessItem *)self intentID];
      v10 = [BCSBusinessItem _escapedVersionOfInputString:intentID2];
      v11 = [v8 stringWithFormat:@"&biz-intent-id=%@", v10];
      v12 = [&stru_28544C2A0 stringByAppendingString:v11];
    }

    else
    {
      v12 = &stru_28544C2A0;
    }

    groupID = [(BCSBusinessItem *)self groupID];
    v14 = [groupID length];

    if (v14)
    {
      v15 = MEMORY[0x277CCACA8];
      groupID2 = [(BCSBusinessItem *)self groupID];
      v17 = [BCSBusinessItem _escapedVersionOfInputString:groupID2];
      v18 = [v15 stringWithFormat:@"&biz-group-id=%@", v17];
      v19 = [(__CFString *)v12 stringByAppendingString:v18];

      v12 = v19;
    }

    callToAction = [(BCSBusinessItem *)self callToAction];
    body = [callToAction body];
    v22 = [body length];

    if (v22)
    {
      v23 = MEMORY[0x277CCACA8];
      callToAction2 = [(BCSBusinessItem *)self callToAction];
      body2 = [callToAction2 body];
      v26 = [BCSBusinessItem _escapedVersionOfInputString:body2];
      v27 = [v23 stringWithFormat:@"&body=%@", v26];
      v28 = [(__CFString *)v12 stringByAppendingString:v27];

      v12 = v28;
    }
  }

  else
  {
    v12 = 0;
  }

  v29 = [v3 stringWithFormat:@"messages://open?service=iMessage&recipient=%@%@", prefixedBizID, v12];

  v30 = [MEMORY[0x277CBEBC0] URLWithString:v29];

  return v30;
}

- (id)_escapedVersionOfInputString:(void *)string
{
  v1 = MEMORY[0x277CCA900];
  stringCopy = string;
  alphanumericCharacterSet = [v1 alphanumericCharacterSet];
  v4 = [stringCopy stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

  return v4;
}

- (id)itemIdentifier
{
  _businessItemIdentifier = [(BCSBusinessItem *)self _businessItemIdentifier];
  itemIdentifier = [_businessItemIdentifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  _businessItemIdentifier = [(BCSBusinessItem *)self _businessItemIdentifier];
  truncatedHash = [_businessItemIdentifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  _businessItemIdentifier = [(BCSBusinessItem *)self _businessItemIdentifier];
  type = [_businessItemIdentifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  _businessItemIdentifier = [(BCSBusinessItem *)self _businessItemIdentifier];
  v6 = [_businessItemIdentifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (BCSBusinessItemIdentifier)_businessItemIdentifier
{
  itemIdentifier = self->_itemIdentifier;
  if (!itemIdentifier)
  {
    v4 = [BCSBusinessItemIdentifier identifierWithBusinessItem:?];
    v5 = self->_itemIdentifier;
    self->_itemIdentifier = v4;

    itemIdentifier = self->_itemIdentifier;
  }

  return itemIdentifier;
}

- (id)callToAction
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[(NSLocale *)MEMORY[0x277CBEAF8]];
  if (self)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    callToActions = [(BCSBusinessItem *)self callToActions];
    v5 = [callToActions countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(callToActions);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          language = [v10 language];
          v12 = [language isEqualToString:v3];

          if (v12)
          {
            v14 = v10;

            goto LABEL_16;
          }

          if ([v10 isDefault])
          {
            v13 = v10;

            v7 = v13;
          }
        }

        v6 = [callToActions countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    v7 = v7;
    v14 = v7;
LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isChatSuggestVisibleForVisibilityItem:(id)item messagesIdentifier:(id)identifier bizID:(id)d
{
  if (!item)
  {
    return 0;
  }

  itemCopy = item;
  v8 = [identifier stringByAppendingString:d];
  LOBYTE(identifier) = [itemCopy isVisibleForDSID:v8];

  return identifier;
}

- (id)_selectedVisibilityItemForLanguage:(id)language country:(id)country
{
  v39 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  countryCopy = country;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(BCSBusinessItem *)self visibilityItems];
  v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v6)
  {
    v25 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v33;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      language = [v10 language];
      lowercaseString = [language lowercaseString];
      lowercaseString2 = [languageCopy lowercaseString];
      v14 = [lowercaseString isEqualToString:lowercaseString2];

      country = [v10 country];
      lowercaseString3 = [country lowercaseString];
      lowercaseString4 = [countryCopy lowercaseString];
      v18 = [lowercaseString3 isEqualToString:lowercaseString4];

      language2 = [v10 language];
      v20 = [language2 isEqualToString:@"*"];

      country2 = [v10 country];
      v22 = [country2 isEqualToString:@"*"];

      v23 = v18 ^ 1;
      if (((v14 ^ 1) & 1) == 0 && (v23 & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
          v27 = "%s Selecting visibility item - equal language and country code";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v24 = v22 ^ 1;
      if (((v20 ^ 1) & 1) == 0 && (v24 & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
          v27 = "%s Selecting visibility item - language and country code are wildcard";
          goto LABEL_24;
        }

LABEL_25:

        v25 = v10;
        goto LABEL_26;
      }

      if (((v14 ^ 1 | v24) & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v37 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
        v27 = "%s Selecting visibility item - equal language and country code is wildcard";
LABEL_24:
        _os_log_impl(&dword_242072000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        goto LABEL_25;
      }

      if (((v20 ^ 1 | v23) & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v37 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
        v27 = "%s Selecting visibility item - wildcard language and country code is equal";
        goto LABEL_24;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    v25 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  bizID = self->_bizID;
  coderCopy = coder;
  [coderCopy encodeObject:bizID forKey:@"kBCSBusinessItemBizIDCodingKey"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"kBCSBusinessItemPhoneNumberCodingKey"];
  [coderCopy encodeObject:self->_name forKey:@"kBCSBusinessItemNameCodingKey"];
  [coderCopy encodeInteger:self->_phoneHash forKey:@"kBCSBusinessItemBucketIDCodingKey"];
  [coderCopy encodeObject:self->_squareLogoURL forKey:@"kBCSBusinessItemSquareLogoURLCodingKey"];
  [coderCopy encodeObject:self->_wideLogoURL forKey:@"kBCSBusinessItemWideLogoURLCodingKey"];
  [coderCopy encodeInteger:self->_tintColor forKey:@"kBCSBusinessItemTintColorCodingKey"];
  [coderCopy encodeInteger:self->_backgroundColor forKey:@"kBCSBusinessItemBackgroundColorCodingKey"];
  [coderCopy encodeObject:self->_callToActions forKey:@"kBCSBusinessItemCallToActionCodingKey"];
  [coderCopy encodeObject:self->_messagingOpenHours forKey:@"kBCSBusinessItemMessagingOpenHoursCodingKey"];
  [coderCopy encodeObject:self->_callingOpenHours forKey:@"kBCSBusinessItemCallingOpenHoursCodingKey"];
  [coderCopy encodeBool:self->_isVerified forKey:@"kBCSBusinessItemIsVerifiedCodingKey"];
  [coderCopy encodeObject:self->_intentID forKey:@"kBCSBusinessItemIntentIDCodingKey"];
  [coderCopy encodeObject:self->_groupID forKey:@"kBCSBusinessItemGroupIDCodingKey"];
  [coderCopy encodeObject:self->_visibilityItems forKey:@"visibilityItems"];
}

- (BCSBusinessItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = BCSBusinessItem;
  v5 = [(BCSItem *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemBizIDCodingKey"];
    bizID = v5->_bizID;
    v5->_bizID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemPhoneNumberCodingKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemNameCodingKey"];
    name = v5->_name;
    v5->_name = v10;

    v5->_phoneHash = [coderCopy decodeIntegerForKey:@"kBCSBusinessItemBucketIDCodingKey"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemSquareLogoURLCodingKey"];
    squareLogoURL = v5->_squareLogoURL;
    v5->_squareLogoURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemWideLogoURLCodingKey"];
    wideLogoURL = v5->_wideLogoURL;
    v5->_wideLogoURL = v14;

    v5->_tintColor = [coderCopy decodeIntegerForKey:@"kBCSBusinessItemTintColorCodingKey"];
    v5->_backgroundColor = [coderCopy decodeIntegerForKey:@"kBCSBusinessItemBackgroundColorCodingKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kBCSBusinessItemCallToActionCodingKey"];
    callToActions = v5->_callToActions;
    v5->_callToActions = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemMessagingOpenHoursCodingKey"];
    messagingOpenHours = v5->_messagingOpenHours;
    v5->_messagingOpenHours = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemCallingOpenHoursCodingKey"];
    callingOpenHours = v5->_callingOpenHours;
    v5->_callingOpenHours = v23;

    v5->_isVerified = [coderCopy decodeBoolForKey:@"kBCSBusinessItemIsVerifiedCodingKey"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemIntentIDCodingKey"];
    intentID = v5->_intentID;
    v5->_intentID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemGroupIDCodingKey"];
    groupID = v5->_groupID;
    v5->_groupID = v27;

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"visibilityItems"];
    visibilityItems = v5->_visibilityItems;
    v5->_visibilityItems = v32;
  }

  return v5;
}

- (unint64_t)_integerForHexString:(id)string
{
  v10 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy length])
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
    [v4 scanHexInt:&v8];
    v5 = v8;
  }

  else
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = stringCopy;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "BCSBusinessItem hex string length <= 0 - %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (BCSBusinessItem)initWithJSONObj:(id)obj
{
  objCopy = obj;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objCopy objectForKeyedSubscript:0x28544DD80];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:0x28544F540];
      v48 = [v7 objectForKeyedSubscript:0x28544DD60];

      v8 = [v6 objectForKeyedSubscript:0x28544F560];
      v47 = [v8 objectForKeyedSubscript:0x28544DD60];

      v9 = [v6 objectForKeyedSubscript:0x28544F580];
      v38 = [v9 objectForKeyedSubscript:0x28544DD60];

      v10 = [v6 objectForKeyedSubscript:0x28544F5A0];
      v37 = [v10 objectForKeyedSubscript:0x28544DD60];

      v11 = [v6 objectForKeyedSubscript:0x28544F5E0];
      v45 = [v11 objectForKeyedSubscript:0x28544DD60];

      v12 = [v6 objectForKeyedSubscript:0x28544F5C0];
      v39 = [v12 objectForKeyedSubscript:0x28544DD60];

      v13 = [v6 objectForKeyedSubscript:0x28544F4E0];
      v41 = [v13 objectForKeyedSubscript:0x28544DD60];

      v14 = [v6 objectForKeyedSubscript:0x28544F500];
      v40 = [v14 objectForKeyedSubscript:0x28544DD60];

      v15 = [v6 objectForKeyedSubscript:0x28544E900];
      v46 = [v15 objectForKeyedSubscript:0x28544DD60];

      v44 = [v6 objectForKeyedSubscript:0x28544F600];
      v43 = [v6 objectForKeyedSubscript:0x28544F620];
      v36 = [(BCSBusinessItem *)self _integerForHexString:v41];
      v35 = [(BCSBusinessItem *)self _integerForHexString:v40];
      v42 = objCopy;
      v34 = [MEMORY[0x277CBEBC0] URLWithString:v48];
      v33 = [MEMORY[0x277CBEBC0] URLWithString:v47];
      bOOLValue = [v39 BOOLValue];
      v28 = [[BCSOpenHours alloc] initWithJSONObj:v38 timeZone:v45];
      v27 = [[BCSOpenHours alloc] initWithJSONObj:v37 timeZone:v45];
      v32 = [v6 objectForKeyedSubscript:0x28544F4C0];
      v16 = [v32 objectForKeyedSubscript:0x28544DD60];
      v31 = [v6 objectForKeyedSubscript:0x28544C300];
      v17 = [v31 objectForKeyedSubscript:0x28544DD60];
      v29 = [v6 objectForKeyedSubscript:0x28544D8E0];
      v18 = [v29 objectForKeyedSubscript:0x28544DD60];
      longLongValue = [v46 longLongValue];
      v20 = [v6 objectForKeyedSubscript:0x28544F520];
      v21 = [v20 objectForKeyedSubscript:0x28544DD60];
      LOBYTE(v26) = bOOLValue;
      v22 = longLongValue;
      objCopy = v42;
      self = [(BCSBusinessItem *)self initWithBizID:v16 phoneNumber:v17 name:v18 phoneHash:v22 squareLogoURL:v34 wideLogoURL:v33 tintColor:v36 backgroundColor:v35 callToActions:v21 messagingOpenHours:v28 callingOpenHours:v27 isVerified:v26 intentID:v44 groupID:v43 visibilityItems:MEMORY[0x277CBEBF8]];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    v24 = ABSLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v24, OS_LOG_TYPE_ERROR, "BCSBusinessItem init JSON object is not dictionary", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end