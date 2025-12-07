@interface ASEventUID
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASEventUID)initWithASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict lengthUntilEndOfTerminator:(int)terminator;
- (ASEventUID)initWithCalFrameworkString:(id)string;
- (ASEventUID)initWithGlobalObjectIdString:(id)string;
- (ASEventUID)initWithUidString:(id)string;
- (id)_uidStringBySettingExceptionDateInOutlookUUIDString:(id)string withTimeZone:(id)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recurrenceIDForResponseEmail;
- (id)uidForActiveSyncWithTimeZone:(id)zone;
- (id)uidForCalFramework;
- (id)uidForResponseEmailWithTimeZone:(id)zone;
- (id)uidFromGlobalObjId:(id)id outIsOutlookCreatedUid:(BOOL *)uid;
- (void)setExceptionDate:(id)date;
@end

@implementation ASEventUID

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_5 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_5;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_5 = v2;
    acceptsTopLevelLeaves___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_5 == 1)
  {
    v2 = parsingLeafNode___result_5;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_5 = v2;
    parsingLeafNode___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_5 == 1)
  {
    v2 = parsingWithSubItems___result_5;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_5 = v2;
    parsingWithSubItems___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_5 == 1)
  {
    v2 = frontingBasicTypes___result_5;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_5 = v2;
    frontingBasicTypes___haveChecked_5 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_5 == 1)
  {
    v2 = notifyOfUnknownTokens___result_5;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_5 = v2;
    notifyOfUnknownTokens___haveChecked_5 = 1;
  }

  return v2 & 1;
}

- (id)uidFromGlobalObjId:(id)id outIsOutlookCreatedUid:(BOOL *)uid
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (uid)
  {
    *uid = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:idCopy options:0];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_24A0AC000, v7, v9, "creating a uid, the original globalobjid looked like this, after base64decoding : %@", buf, 0xCu);
  }

  if ([v6 length] < 0x28 || ((v10 = objc_msgSend(v6, "bytes"), *v10 == 0xE0008200000004) ? (v11 = v10[1] == 0x8E0821A10B7C574) : (v11 = 0), !v11))
  {
    v12 = DALoggingwithCategory();
    v13 = *(v8 + 3);
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_13:

LABEL_14:
      da_uppercaseHexStringWithoutSpaces = 0;
      goto LABEL_15;
    }

    *buf = 138412290;
    *&buf[4] = v6;
    v14 = "Malformed globalObjId: either too small, or incorrect prefix, (global obj id is %@)";
LABEL_12:
    _os_log_impl(&dword_24A0AC000, v12, v13, v14, buf, 0xCu);
    goto LABEL_13;
  }

  bytes = [v6 bytes];
  v18 = *(bytes + 17);
  v19 = (*(bytes + 16) << 8);
  v20 = *(bytes + 18);
  v21 = v19 | v18;
  if (v19 | v18)
  {
    v22 = *(bytes + 19);
    v23 = [MEMORY[0x277CBEBB0] gmt];
    v24 = DALoggingwithCategory();
    v25 = *(v8 + 6);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = [MEMORY[0x277CCA8F8] dateWithYear:v21 month:v20 day:v22 hour:0 minute:0 second:0 timeZone:v23];
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_24A0AC000, v24, v25, "Interesting, but will be ignored: there's an Outlook-created exception date here: %@", buf, 0xCu);
    }
  }

  else if (*(bytes + 18) || *(bytes + 19))
  {
    v12 = DALoggingwithCategory();
    v13 = *(v8 + 3);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    *&buf[4] = v6;
    v14 = "Malformed globalObjId: no exception timestamp, but garbage following the prefix (global obj id is %@)";
    goto LABEL_12;
  }

  v27 = [v6 length];
  bytes2 = [v6 bytes];
  if (v27 - 40 >= 13)
  {
    v29 = bytes2;
    if (*(bytes2 + 40) == 0x6469552D6C614376 && *(bytes2 + 48) == 1)
    {
      v32 = v27 - 52;
      do
      {
        v33 = v32;
        v34 = v32-- != 0;
      }

      while (v34 && !*(bytes2 + 51 + v33));
      v35 = v33;
      if (v33 && *(bytes2 + 53))
      {
        v36 = objc_alloc(MEMORY[0x277CCACA8]);
        v37 = v29 + 52;
        v38 = v35;
        v39 = 4;
      }

      else
      {
        v36 = objc_alloc(MEMORY[0x277CCACA8]);
        v37 = v29 + 52;
        v38 = v35;
        v39 = 10;
      }

      da_uppercaseHexStringWithoutSpaces = [v36 initWithBytes:v37 length:v38 encoding:v39];
      goto LABEL_15;
    }
  }

  if (([v6 length] - 20) < 1)
  {
    goto LABEL_14;
  }

  if (uid)
  {
    *uid = 1;
  }

  v31 = [v6 mutableCopy];
  *buf = 0uLL;
  [v31 replaceBytesInRange:16 withBytes:4 length:{buf, 4}];
  da_uppercaseHexStringWithoutSpaces = [v31 da_uppercaseHexStringWithoutSpaces];

LABEL_15:

  return da_uppercaseHexStringWithoutSpaces;
}

- (id)_uidStringBySettingExceptionDateInOutlookUUIDString:(id)string withTimeZone:(id)zone
{
  zoneCopy = zone;
  v7 = [MEMORY[0x277CBEA90] da_dataWithHexString:string stringIsUppercase:1];
  v8 = [v7 mutableCopy];

  if (!zoneCopy)
  {
    zoneCopy = [MEMORY[0x277CBEBB0] gmt];
  }

  v9 = [(NSDate *)self->_exceptionDate dateWithCalendarFormat:0 timeZone:zoneCopy];
  yearOfCommonEra = [v9 yearOfCommonEra];
  monthOfYear = [v9 monthOfYear];
  dayOfMonth = [v9 dayOfMonth];
  v13 = yearOfCommonEra;
  [v8 replaceBytesInRange:16 withBytes:{1, &v13 + 1}];
  [v8 replaceBytesInRange:17 withBytes:{1, &v13}];
  [v8 replaceBytesInRange:18 withBytes:{1, &monthOfYear}];
  [v8 replaceBytesInRange:19 withBytes:{1, &dayOfMonth}];
  da_uppercaseHexStringWithoutSpaces = [v8 da_uppercaseHexStringWithoutSpaces];

  return da_uppercaseHexStringWithoutSpaces;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ASEventUID;
  v4 = [(ASEventUID *)&v11 description];
  exceptionDate = self->_exceptionDate;
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  uidForCalFramework = [(ASEventUID *)self uidForCalFramework];
  recurrenceIDForResponseEmail = [(ASEventUID *)self recurrenceIDForResponseEmail];
  v9 = [v3 stringWithFormat:@"%@, _exceptionDate %@, _uidWithoutExceptionDate %@, uidForCalFramework %@, recurrenceIDForResponseEmail %@", v4, exceptionDate, uidWithoutExceptionDate, uidForCalFramework, recurrenceIDForResponseEmail];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASEventUID alloc];
  uidForCalFramework = [(ASEventUID *)self uidForCalFramework];
  v6 = [(ASEventUID *)v4 initWithCalFrameworkString:uidForCalFramework];

  return v6;
}

- (ASEventUID)initWithCalFrameworkString:(id)string
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v22.receiver = self;
  v22.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v22 init];
  if (v5)
  {
    v8 = 0;
    if ([stringCopy length] >= 0x10)
    {
      uTF8String = [stringCopy UTF8String];
      if (*uTF8String == 0xE0008200000004 && uTF8String[1] == 0x8E0821A10B7C574)
      {
        v8 = 1;
      }
    }

    v5->_isOutlookCreatedUid = v8;
    v9 = [stringCopy rangeOfString:@"<!ExceptionDate!>"];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = stringCopy;
      v12 = 0;
    }

    else
    {
      v13 = v9;
      v14 = v10;
      v11 = [stringCopy substringToIndex:v9];
      v15 = [stringCopy substringFromIndex:v13 + v14];
      v12 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringFromYearMonthDay:v15];
    }

    if (v5->_isOutlookCreatedUid)
    {
      v16 = [(ASEventUID *)v5 _uidStringBySettingExceptionDateInOutlookUUIDString:v11 withTimeZone:0];
    }

    else
    {
      v16 = v11;
    }

    uidWithoutExceptionDate = v5->_uidWithoutExceptionDate;
    v5->_uidWithoutExceptionDate = v16;

    exceptionDate = v5->_exceptionDate;
    v5->_exceptionDate = v12;
  }

  v19 = DALoggingwithCategory();
  v20 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138412546;
    v24 = stringCopy;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_24A0AC000, v19, v20, "in initWithCalFrameworkString: calFrameworkString is %@, self is %@", buf, 0x16u);
  }

  return v5;
}

- (ASEventUID)initWithGlobalObjectIdString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ASEventUID *)v5 uidFromGlobalObjId:stringCopy outIsOutlookCreatedUid:&v5->_isOutlookCreatedUid];
    uidWithoutExceptionDate = v6->_uidWithoutExceptionDate;
    v6->_uidWithoutExceptionDate = v7;
  }

  return v6;
}

- (ASEventUID)initWithUidString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ASEventUID;
  v5 = [(ASEventUID *)&v9 init];
  if (v5)
  {
    if ([stringCopy hasPrefix:@"040000008200E00074C5B7101A82E008"])
    {
      v5->_isOutlookCreatedUid = 1;
      v6 = [(ASEventUID *)v5 _uidStringBySettingExceptionDateInOutlookUUIDString:stringCopy withTimeZone:0];
    }

    else
    {
      v5->_isOutlookCreatedUid = 0;
      v6 = stringCopy;
    }

    uidWithoutExceptionDate = v5->_uidWithoutExceptionDate;
    v5->_uidWithoutExceptionDate = v6;
  }

  return v5;
}

- (ASEventUID)initWithASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict lengthUntilEndOfTerminator:(int)terminator
{
  v8 = *&terminator;
  v32 = *MEMORY[0x277D85DE8];
  callbackDictCopy = callbackDict;
  dictCopy = dict;
  parentCopy = parent;
  rootCopy = root;
  contextCopy = context;
  currentByte = [contextCopy currentByte];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy lengthUntilEndOfTerminator:v8];

  if (v20)
  {
    v29.receiver = self;
    v29.super_class = ASEventUID;
    v21 = [(ASEventUID *)&v29 init];
    v22 = v21;
    if (v21)
    {
      if ((currentByte & 0x3F) == 0x34)
      {
        v23 = [(ASEventUID *)v21 uidFromGlobalObjId:v20 outIsOutlookCreatedUid:&v21->_isOutlookCreatedUid];
      }

      else if ([v20 hasPrefix:@"040000008200E00074C5B7101A82E008"])
      {
        v22->_isOutlookCreatedUid = 1;
        v23 = [(ASEventUID *)v22 _uidStringBySettingExceptionDateInOutlookUUIDString:v20 withTimeZone:0];
      }

      else
      {
        v22->_isOutlookCreatedUid = 0;
        v23 = v20;
      }

      uidWithoutExceptionDate = v22->_uidWithoutExceptionDate;
      v22->_uidWithoutExceptionDate = v23;
    }

    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&dword_24A0AC000, v26, v27, "in initWithASParseContext:, self is %@", buf, 0xCu);
    }

    self = v22;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)uidForCalFramework
{
  exceptionDate = self->_exceptionDate;
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (exceptionDate)
  {
    activeSyncStringForYearMonthDay = [(NSDate *)exceptionDate activeSyncStringForYearMonthDay];
    v6 = [(NSString *)uidWithoutExceptionDate stringByAppendingFormat:@"%@%@", @"<!ExceptionDate!>", activeSyncStringForYearMonthDay];
  }

  else
  {
    v6 = uidWithoutExceptionDate;
  }

  return v6;
}

- (id)uidForResponseEmailWithTimeZone:(id)zone
{
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (self->_isOutlookCreatedUid)
  {
    v5 = [(ASEventUID *)self _uidStringBySettingExceptionDateInOutlookUUIDString:uidWithoutExceptionDate withTimeZone:zone];
  }

  else
  {
    v5 = uidWithoutExceptionDate;
  }

  return v5;
}

- (id)recurrenceIDForResponseEmail
{
  exceptionDate = self->_exceptionDate;
  if (exceptionDate)
  {
    exceptionDate = [exceptionDate activeSyncStringWithoutSeparators];
    v2 = vars8;
  }

  return exceptionDate;
}

- (id)uidForActiveSyncWithTimeZone:(id)zone
{
  uidWithoutExceptionDate = self->_uidWithoutExceptionDate;
  if (self->_isOutlookCreatedUid)
  {
    v5 = [(ASEventUID *)self _uidStringBySettingExceptionDateInOutlookUUIDString:uidWithoutExceptionDate withTimeZone:zone];
  }

  else
  {
    v5 = uidWithoutExceptionDate;
  }

  return v5;
}

- (void)setExceptionDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v5 = dateCopy;
    v6 = [MEMORY[0x277CBEBB0] gmt];
    v7 = [v5 dateWithCalendarFormat:0 timeZone:v6];
    v11 = [MEMORY[0x277CCA8F8] dateWithYear:objc_msgSend(v7 month:"yearOfCommonEra") day:objc_msgSend(v7 hour:"monthOfYear") minute:objc_msgSend(v7 second:"dayOfMonth") timeZone:{objc_msgSend(v7, "hourOfDay"), objc_msgSend(v7, "minuteOfHour"), objc_msgSend(v7, "secondOfMinute"), v6}];

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  exceptionDate = self->_exceptionDate;
  p_exceptionDate = &self->_exceptionDate;
  if (exceptionDate != v8)
  {
    v12 = v8;
    objc_storeStrong(p_exceptionDate, v8);
    v8 = v12;
  }

  MEMORY[0x2821F96F8](dateCopy, v8);
}

@end