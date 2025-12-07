@interface IMDCarrierReportJunkHelper
+ (BOOL)supportsReportJunkForMessage:(id)message chatStyle:(unsigned __int8)style;
+ (BOOL)validateReportJunkCarrierAddress:(id)address;
+ (id)_createJunkReportMessageItemBodyForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name;
+ (id)createJunkReportMessageBodyTextForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name;
+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d;
+ (id)jsonSerializeDictionary:(id)dictionary;
+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)content;
+ (id)junkReportMessageItemForMessageItem:(id)item account:(id)account junkChatStyle:(unsigned __int8)style serviceName:(id)name;
+ (id)receiveDateForMessageItem:(id)item;
+ (void)setHandleParametersOfMessageItem:(id)item usingAccount:(id)account usingMessageItem:(id)messageItem junkChatStyle:(unsigned __int8)style;
@end

@implementation IMDCarrierReportJunkHelper

+ (id)junkReportMessageItemForMessageItem:(id)item account:(id)account junkChatStyle:(unsigned __int8)style serviceName:(id)name
{
  styleCopy = style;
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  accountCopy = account;
  v13 = [self _createJunkReportMessageItemBodyForMessageItem:itemCopy junkChatStyle:styleCopy serviceName:nameCopy];
  LOBYTE(account) = [nameCopy isEqualToString:*MEMORY[0x277D1A608]];

  if (account)
  {
    fileTransferGUIDs = MEMORY[0x277CBEBF8];
  }

  else
  {
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  }

  v15 = objc_alloc(MEMORY[0x277D1AA70]);
  date = [MEMORY[0x277CBEAA8] date];
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  v18 = [v15 initWithSender:0 time:date body:v13 attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:5 error:0 guid:stringGUID threadIdentifier:0];

  destinationCallerID = [itemCopy destinationCallerID];
  [v18 setDestinationCallerID:destinationCallerID];

  [self setHandleParametersOfMessageItem:v18 usingAccount:accountCopy usingMessageItem:itemCopy junkChatStyle:styleCopy];
  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v18;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "IMMessageItem for reporting junk -> %@", buf, 0xCu);
  }

  return v18;
}

+ (id)_createJunkReportMessageItemBodyForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name
{
  styleCopy = style;
  itemCopy = item;
  nameCopy = name;
  v10 = [self createJunkReportMessageBodyTextForMessageItem:itemCopy junkChatStyle:styleCopy serviceName:nameCopy];
  LOBYTE(styleCopy) = [nameCopy isEqualToString:*MEMORY[0x277D1A608]];

  if (styleCopy)
  {
    fileTransferGUIDs = MEMORY[0x277CBEBF8];
  }

  else
  {
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  }

  v12 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:fileTransferGUIDs];
  v13 = [v12 mutableCopy];
  [v13 appendAttributedString:v10];
  __im_attributedStringByAssigningMessagePartNumbers = [v13 __im_attributedStringByAssigningMessagePartNumbers];

  return __im_attributedStringByAssigningMessagePartNumbers;
}

+ (id)createJunkReportMessageBodyTextForMessageItem:(id)item junkChatStyle:(unsigned __int8)style serviceName:(id)name
{
  styleCopy = style;
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  subject = [itemCopy subject];
  v12 = @"MMS";
  if (![subject length])
  {
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
    if ([fileTransferGUIDs count])
    {
      v14 = 0;
    }

    else
    {
      v14 = styleCopy == 45;
    }

    if (v14)
    {
      v12 = @"SMS";
    }
  }

  v15 = v12;
  if ([nameCopy isEqualToString:*MEMORY[0x277D1A608]])
  {
    v16 = nameCopy;

    fallbackHash = [itemCopy fallbackHash];
    v18 = [fallbackHash rangeOfString:@"__"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v18;
      if (v18 <= [fallbackHash length])
      {
        v20 = [fallbackHash substringToIndex:v19];

        fallbackHash = v20;
      }
    }

    if (fallbackHash)
    {
      [dictionary setValue:fallbackHash forKey:@"e"];
    }

    v21 = +[IMDFileTransferCenter sharedInstance];
    fileTransferGUIDs2 = [itemCopy fileTransferGUIDs];
    firstObject = [fileTransferGUIDs2 firstObject];
    v24 = [v21 transferForGUID:firstObject];

    originalFilename = [v24 originalFilename];
    [dictionary setObject:originalFilename forKeyedSubscript:@"a"];

    v26 = @"A03";
    v15 = v16;
  }

  else
  {
    v26 = @"A01";
  }

  [dictionary setValue:v15 forKey:@"r"];
  [dictionary setValue:v26 forKey:@"v"];
  handle = [itemCopy handle];
  im_stripCategoryLabel = [handle im_stripCategoryLabel];

  if (im_stripCategoryLabel)
  {
    [dictionary setValue:im_stripCategoryLabel forKey:@"f"];
  }

  v29 = [self receiveDateForMessageItem:itemCopy];
  if (v29)
  {
    [dictionary setValue:v29 forKey:@"t"];
  }

  body = [itemCopy body];
  string = [body string];

  if (string)
  {
    [dictionary setValue:string forKey:@"m"];
  }

  v32 = [self jsonSerializeDictionary:dictionary];
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [self jsonSerializeDictionaryStrippingOutMessageContent:dictionary];
    v37 = 138412290;
    v38 = v34;
    _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Created serialize junk report: %@", &v37, 0xCu);
  }

  v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v32];

  return v35;
}

+ (void)setHandleParametersOfMessageItem:(id)item usingAccount:(id)account usingMessageItem:(id)messageItem junkChatStyle:(unsigned __int8)style
{
  styleCopy = style;
  v8 = MEMORY[0x277D1A910];
  itemCopy = item;
  v10 = [v8 reportJunkCarrierAddressForMessageItem:messageItem junkChatStyle:styleCopy];
  [itemCopy setHandle:v10];
}

+ (id)receiveDateForMessageItem:(id)item
{
  v11 = *MEMORY[0x277D85DE8];
  time = [item time];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v4 stringFromDate:time];
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Receiving date of message item -> %@", &v9, 0xCu);
  }

  return v6;
}

+ (id)jsonSerializeDictionary:(id)dictionary
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)jsonSerializeDictionaryStrippingOutMessageContent:(id)content
{
  v4 = MEMORY[0x277CBEB38];
  v5 = [content copy];
  v6 = [v4 dictionaryWithDictionary:v5];

  [v6 setObject:@"(hidden)" forKey:@"m"];
  v7 = [self jsonSerializeDictionary:v6];

  return v7;
}

+ (BOOL)validateReportJunkCarrierAddress:(id)address
{
  v14 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"^[+]?[0-9]+$"];
  if ([v4 evaluateWithObject:addressCopy])
  {
    v5 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:addressCopy];
    digitsRemovingDialingCode = [v5 digitsRemovingDialingCode];
    v7 = [digitsRemovingDialingCode length];
    v8 = v7 < 11;
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v7 < 11)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Is valid carrier report junk address - %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = addressCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not a valid report junk address from carrier. Carrier report junk address - %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)fetchSMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EE88 phoneNumber:number simID:d];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 valueForKey:@"SMSCarrierReportJunkAddress"];
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v10, 0xCu);
    }

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5FF8(v4, v7);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)fetchMMSReportJunkCarrierAddressForPhoneNumber:(id)number simID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:&unk_283F4EEA0 phoneNumber:number simID:d];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 valueForKey:@"MMSCarrierReportJunkAddress"];
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Report junk address provided by carrier is -> %@.\n", &v10, 0xCu);
    }

    v7 = v5;
    v8 = v7;
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = &unk_283F4EEA0;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v10, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)supportsReportJunkForMessage:(id)message chatStyle:(unsigned __int8)style
{
  v4 = [MEMORY[0x277D1A910] reportJunkCarrierAddressForMessageItem:message junkChatStyle:style];
  v5 = [v4 length] != 0;

  return v5;
}

@end