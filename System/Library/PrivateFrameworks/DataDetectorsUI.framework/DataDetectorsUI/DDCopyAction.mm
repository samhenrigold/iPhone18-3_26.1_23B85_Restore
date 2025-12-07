@interface DDCopyAction
+ (BOOL)actionAvailableForContact:(id)contact;
+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDCopyAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context;
- (DDCopyAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)iconName;
- (id)localizedName;
- (void)_copyURL:(id)l;
- (void)copyStringOnly:(id)only;
- (void)performFromView:(id)view;
@end

@implementation DDCopyAction

+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  lCopy = l;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];

  return v10;
}

- (DDCopyAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v9.receiver = self;
  v9.super_class = DDCopyAction;
  result = [(DDAction *)&v9 initWithURL:l result:result context:context];
  if (result && result->super._result && !result->super._url)
  {
    resultCopy = result;
    v7 = _DDURLFromResult(result->super._result, 0);
    url = resultCopy->super._url;
    resultCopy->super._url = v7;

    return resultCopy;
  }

  return result;
}

+ (BOOL)actionAvailableForContact:(id)contact
{
  v3 = DDDefaultAddressForContact(contact);
  v4 = v3 != 0;

  return v4;
}

- (id)localizedName
{
  if (self->super._result)
  {
    Category = DDResultGetCategory();
    if (Category == 2)
    {
      goto LABEL_43;
    }

    v4 = Category;
    if (Category == 1)
    {
      if (DDResultHasType())
      {
        MatchedString = DDResultGetMatchedString();
        if ((dd_handleIsChatBot(MatchedString) & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      scheme = [(NSURL *)self->super._url scheme];
      lowercaseString = [scheme lowercaseString];
      v23 = [lowercaseString isEqualToString:@"mailto"];

      if (v23)
      {
        goto LABEL_49;
      }

      if (!dd_isAnySimpleTelephonyScheme(self->super._url))
      {
LABEL_50:
        v16 = @"Copy Link";
        goto LABEL_51;
      }

      url = self->super._url;
      v31 = 0;
      v25 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v31 serviceID:0 suggestions:?];
      v26 = v31;
      v27 = [v25 containsString:@"@"];
      if (v26)
      {
        v14 = 0;
LABEL_39:
        v4 = 1;

        goto LABEL_40;
      }

      v14 = v27;
      if (([v25 length] == 0) | v27 & 1)
      {
        goto LABEL_39;
      }

      v14 = 0;
      if ([DDTextMessageAction isShowMessageURL:self->super._url])
      {
        goto LABEL_39;
      }

      v4 = 2;

LABEL_40:
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v16 = @"Copy Phone Number";
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v14)
      {
LABEL_49:
        v16 = @"Copy Email";
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v15 = 0;
    v14 = 0;
    if (Category <= 2)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v6 = self->super._url;
  if (v6)
  {
    scheme2 = [(NSURL *)v6 scheme];
    lowercaseString2 = [scheme2 lowercaseString];

    isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme(self->super._url);
    v10 = self->super._url;
    if (!isAnySimpleTelephonyScheme)
    {
      if (![(__CFString *)v10 dd_isMaps:1]|| (DDMapAddressFromURL(self->super._url), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        if ([lowercaseString2 isEqualToString:@"mailto"])
        {
          v14 = 1;
        }

        else
        {
          dd_schemeIsHttp(lowercaseString2);
          v14 = 0;
        }

        v4 = 1;

        goto LABEL_40;
      }

      v4 = 3;
      v15 = 1;

LABEL_12:
      if (v4 == 4)
      {
        v16 = @"Copy Event";
        goto LABEL_51;
      }

      if (v4 == 3)
      {
        if (v15)
        {
          v16 = @"Copy Location";
          goto LABEL_51;
        }

        goto LABEL_19;
      }

      goto LABEL_43;
    }

    v30 = 0;
    v11 = [(NSURL *)v10 dd_phoneNumberFromTelSchemeAndExtractBody:&v30 serviceID:0 suggestions:?];
    v12 = v30;
    v13 = [v11 containsString:@"@"];
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
      if (!(([v11 length] == 0) | v13 & 1))
      {
        v14 = 0;
        if (![DDTextMessageAction isShowMessageURL:self->super._url])
        {
          v4 = 2;
          goto LABEL_34;
        }
      }
    }

    v4 = 1;
LABEL_34:

    goto LABEL_40;
  }

  contact = self->super._contact;
  if (contact)
  {
    v18 = DDDefaultAddressForContact(contact);

    if (v18)
    {
      v19 = DDDefaultAddressForContact(self->super._contact);

      if (v19)
      {
LABEL_19:
        v16 = @"Copy Address";
        goto LABEL_51;
      }
    }
  }

LABEL_43:
  if (DDResultHasType())
  {
    v16 = @"Copy Code";
  }

  else if (DDResultHasType())
  {
    v16 = @"Copy Flight Code";
  }

  else
  {
    v16 = @"Copy";
  }

LABEL_51:
  v28 = DDLocalizedString(v16);

  return v28;
}

- (id)iconName
{
  if (self->super._result && DDResultGetCategory() == 1)
  {
    if ((DDResultHasType() & 1) == 0)
    {
      scheme = [(NSURL *)self->super._url scheme];
      lowercaseString = [scheme lowercaseString];
      v5 = [lowercaseString isEqualToString:@"mailto"];

      if ((v5 & 1) == 0 && (dd_isAnySimpleTelephonyScheme(self->super._url) & 1) == 0)
      {
        scheme2 = [(NSURL *)self->super._url scheme];
        lowercaseString2 = [scheme2 lowercaseString];
        v8 = [lowercaseString2 isEqualToString:@"upi"];

        if ((v8 & 1) == 0)
        {
          return @"link";
        }
      }
    }

    return @"doc.on.doc";
  }

  url = self->super._url;
  if (!url)
  {
    return @"doc.on.doc";
  }

  scheme3 = [(NSURL *)url scheme];
  lowercaseString3 = [scheme3 lowercaseString];

  if (!dd_schemeIsHttp(lowercaseString3) || ([lowercaseString3 isEqualToString:@"mailto"] & 1) != 0 || (dd_isAnySimpleTelephonyScheme(self->super._url) & 1) != 0)
  {

    return @"doc.on.doc";
  }

  if ([(NSURL *)self->super._url dd_isMaps:1])
  {
    v13 = DDMapAddressFromURL(self->super._url);

    if (v13)
    {
      return @"doc.on.doc";
    }

    return @"link";
  }

  else
  {

    return @"link";
  }
}

- (void)_copyURL:(id)l
{
  v33[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    scheme = [(__CFString *)lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"mailto"])
    {
      _web_userVisibleString = dd_emailFromMailtoScheme(v5);
      if (!_web_userVisibleString)
      {
        goto LABEL_13;
      }
    }

    else if ([lowercaseString isEqualToString:@"tel"])
    {
      _web_userVisibleString = dd_phoneNumberFromTelScheme(v5);
      if (!_web_userVisibleString)
      {
        goto LABEL_13;
      }
    }

    else if (![(__CFString *)v5 dd_isMaps:1]|| (DDMapAddressFromURL(v5), (_web_userVisibleString = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_13:
      _web_userVisibleString = [(__CFString *)v5 _web_userVisibleString];
      if (![_web_userVisibleString length])
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (![_web_userVisibleString length])
    {
LABEL_14:
      v21 = MEMORY[0x277CBEA60];
      v22 = MEMORY[0x277CBEAC0];
      identifier = [*MEMORY[0x277CE1E90] identifier];
      v24 = [v22 dictionaryWithObjectsAndKeys:{v5, identifier, 0}];
      v20 = [v21 arrayWithObject:v24];

LABEL_15:
      v25 = MEMORY[0x277D75810];
      dataOwner = self->_dataOwner;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __25__DDCopyAction__copyURL___block_invoke;
      v28[3] = &unk_278290B50;
      v29 = v20;
      v27 = v20;
      [v25 _performAsDataOwner:dataOwner block:v28];

      goto LABEL_16;
    }

LABEL_8:
    v9 = MEMORY[0x277CBEB38];
    identifier2 = [*MEMORY[0x277CE1EB0] identifier];
    identifier3 = [*MEMORY[0x277CE1E90] identifier];
    v12 = [v9 dictionaryWithObjectsAndKeys:{_web_userVisibleString, identifier2, v5, identifier3, 0}];

    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v32 = *MEMORY[0x277D740E8];
    v33[0] = v5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v15 = [v13 initWithString:_web_userVisibleString attributes:v14];

    v16 = [v15 length];
    v30 = *MEMORY[0x277D74090];
    v31 = *MEMORY[0x277D74130];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v18 = [v15 dataFromRange:0 documentAttributes:v16 error:{v17, 0}];

    if (v18)
    {
      identifier4 = [*MEMORY[0x277CE1E50] identifier];
      [v12 setObject:v18 forKey:identifier4];
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithObject:v12];

    goto LABEL_15;
  }

LABEL_16:
}

void __25__DDCopyAction__copyURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 setItems:*(a1 + 32)];
}

- (void)copyStringOnly:(id)only
{
  onlyCopy = only;
  v5 = MEMORY[0x277D75810];
  dataOwner = self->_dataOwner;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__DDCopyAction_copyStringOnly___block_invoke;
  v8[3] = &unk_278290B50;
  v9 = onlyCopy;
  v7 = onlyCopy;
  [v5 _performAsDataOwner:dataOwner block:v8];
}

void __31__DDCopyAction_copyStringOnly___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length])
  {
    v2 = [*MEMORY[0x277CE1EB0] identifier];
    v3 = *(a1 + 32);
    v7 = v2;
    v8 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setItems:v5];
}

- (void)performFromView:(id)view
{
  if (self->_query)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setString:self->_query];

    return;
  }

  self->_dataOwner = [view _dataOwnerForCopy];
  scheme = [(NSURL *)self->super._url scheme];
  lowercaseString = [scheme lowercaseString];

  DDUIRecordOtherActionInSheetForResultIfNeeded(self->super._result);
  if (dd_isAnySimpleTelephonyScheme(self->super._url))
  {
    v26 = 0;
    if (self->super._result)
    {
      DDResultCopyPhoneValue();
    }

    url = self->super._url;
    v25 = 0;
    v9 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v25 serviceID:0 suggestions:?];
    generalPasteboard3 = v25;
    if (generalPasteboard3 || ![v9 length] || (objc_msgSend(v9, "isEqualToString:", @"open") & 1) != 0)
    {
      [(DDCopyAction *)self _copyURL:self->super._url];
    }

    else
    {
      [(DDCopyAction *)self copyStringOnly:v9];
    }

    goto LABEL_16;
  }

  if ([lowercaseString isEqualToString:@"upi"])
  {
    if (self->super._result)
    {
      v6 = DDResultCopyUPIIdentifierValue();
      if (v6)
      {
        v7 = v6;
        [(DDCopyAction *)self copyStringOnly:v6];
        CFRelease(v7);

        return;
      }
    }

    goto LABEL_29;
  }

  if ([lowercaseString isEqualToString:@"mailto"])
  {
    v26 = 0;
    if (self->super._result)
    {
      DDResultCopyMailValue();
    }

    goto LABEL_29;
  }

  if ([(NSURL *)self->super._url dd_isMaps:1])
  {
    if (self->super._result && DDResultGetCategory() == 3)
    {
      goto LABEL_26;
    }

LABEL_29:
    v12 = self->super._url;
LABEL_30:
    [(DDCopyAction *)self _copyURL:v12];

    return;
  }

  if (dd_schemeIsHttp(lowercaseString))
  {
    goto LABEL_29;
  }

  if (self->super._result)
  {
    v13 = DDResultCopyAuthCode();
    if (v13)
    {
      generalPasteboard6 = v13;
      generalPasteboard2 = [MEMORY[0x277D75810] generalPasteboard];
      v16 = generalPasteboard2;
      v17 = generalPasteboard6;
    }

    else
    {
      Category = DDResultGetCategory();
      if (Category == 3)
      {
LABEL_26:
        generalPasteboard3 = [MEMORY[0x277D75810] generalPasteboard];
        generalPasteboard4 = DDResultGetMatchedString();
        [(__CFString *)generalPasteboard3 setString:generalPasteboard4];
LABEL_27:

LABEL_16:
        return;
      }

      if ((Category & 0xFFFFFFFE) != 4)
      {
        if (Category == 1)
        {
          generalPasteboard3 = _DDURLFromResult(self->super._result, 0);
          if (generalPasteboard3)
          {
            generalPasteboard4 = [MEMORY[0x277D75810] generalPasteboard];
            [generalPasteboard4 setURL:generalPasteboard3];
          }

          else
          {
            generalPasteboard4 = DDResultGetMatchedString();
            generalPasteboard5 = [MEMORY[0x277D75810] generalPasteboard];
            [generalPasteboard5 setString:generalPasteboard4];
          }

          goto LABEL_27;
        }

        v22 = Category;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [DDCopyAction performFromView:v22];
        }
      }

      v16 = DDResultGetMatchedString();
      generalPasteboard2 = [MEMORY[0x277D75810] generalPasteboard];
      generalPasteboard6 = generalPasteboard2;
      v17 = v16;
    }

    [generalPasteboard2 setString:v17];
    goto LABEL_35;
  }

  contact = self->super._contact;
  if (contact)
  {
    v19 = DDDefaultAddressForContact(contact);

    if (v19)
    {
      v16 = DDDefaultAddressForContact(self->super._contact);
      if (!v16)
      {
        goto LABEL_36;
      }

      generalPasteboard6 = [MEMORY[0x277D75810] generalPasteboard];
      v20 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v16 style:0];
      [generalPasteboard6 setString:v20];

LABEL_35:
LABEL_36:

      return;
    }
  }

  v12 = self->super._url;
  if (v12)
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDCopyAction performFromView:];
  }
}

- (DDCopyAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v10 = [string substringWithRange:{location, length}];
  query = self->_query;
  self->_query = v10;

  v12 = [(DDCopyAction *)self initWithURL:0 result:0 context:contextCopy];
  return v12;
}

- (void)performFromView:(int)a1 .cold.1(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Unknown category %x", v1, 8u);
}

@end