@interface DDTelephoneNumberAction
- (DDTelephoneNumberAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)compactTitle;
- (id)contactAndLabelForPhoneNumber:(id *)number;
- (id)contactsMatchingPhoneNumber:(void *)number inContactStore:;
- (id)labelToUseForEmail:(void *)email ofContact:;
- (id)labelToUseForPhoneNumber:(void *)number ofContact:;
@end

@implementation DDTelephoneNumberAction

- (DDTelephoneNumberAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v39.receiver = self;
  v39.super_class = DDTelephoneNumberAction;
  v10 = [(DDAction *)&v39 initWithURL:lCopy result:result context:contextCopy];
  if (v10)
  {
    if (lCopy)
    {
      scheme = [(__CFString *)lCopy scheme];
      lowercaseString = [scheme lowercaseString];

      if (([lowercaseString isEqualToString:@"sms"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"messages") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"sip") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"tel") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"telephony") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"telephonyprompt"))
      {
        url = v10->super._url;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        v14 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v37 serviceID:&v36 suggestions:?];
        v15 = v38;
        v16 = v37;
        v17 = v36;
        phoneNumber = v10->_phoneNumber;
        v10->_phoneNumber = v14;

        body = v10->_body;
        v10->_body = v15;
        v20 = v15;

        suggestions = v10->_suggestions;
        v10->_suggestions = v17;
        v22 = v17;

        serviceID = v10->_serviceID;
        v10->_serviceID = &v16->isa;
        v24 = v16;
      }

      else if ([lowercaseString isEqualToString:@"mailto"])
      {
        v30 = dd_emailFromMailtoScheme(v10->super._url);
        v20 = v10->_phoneNumber;
        v10->_phoneNumber = v30;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:lCopy];
        handle = [(NSString *)v20 handle];
        value = [handle value];
        v33 = v10->_phoneNumber;
        v10->_phoneNumber = value;

        if (!v10->_phoneNumber)
        {
          v34 = dd_phoneNumberFromTelScheme(lCopy);
          v35 = v10->_phoneNumber;
          v10->_phoneNumber = v34;
        }
      }

      if (!v10->_phoneNumber)
      {
        v25 = dd_emailFromMailtoScheme(v10->super._url);
        v26 = v10->_phoneNumber;
        v10->_phoneNumber = v25;
      }

      goto LABEL_15;
    }

    if (!result)
    {
      v27 = [contextCopy objectForKeyedSubscript:@"ContactValue"];

      if (v27)
      {
        v28 = [contextCopy objectForKeyedSubscript:@"ContactValue"];
        lowercaseString = v10->_phoneNumber;
        v10->_phoneNumber = v28;
LABEL_15:
      }
    }
  }

  return v10;
}

- (id)compactTitle
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__DDTelephoneNumberAction_compactTitle__block_invoke;
  activity_block[3] = &unk_2782917C0;
  activity_block[4] = self;
  activity_block[5] = &v11;
  _os_activity_initiate(&dword_21AB70000, "searching for name in Contacts to display Call compact label", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  if ([v12[5] length])
  {
    phoneNumber = v12[5];
    goto LABEL_3;
  }

  url = self->super._url;
  if (!url)
  {
LABEL_11:
    if (![(NSString *)self->_phoneNumber length])
    {
      v9.receiver = self;
      v9.super_class = DDTelephoneNumberAction;
      compactTitle = [(DDAction *)&v9 compactTitle];
      goto LABEL_4;
    }

    v8 = [(NSString *)self->_phoneNumber containsString:@"@"];
    phoneNumber = self->_phoneNumber;
    if (!v8)
    {
      compactTitle = TUFormattedPhoneNumber();
      goto LABEL_4;
    }

LABEL_3:
    compactTitle = phoneNumber;
LABEL_4:
    dd_formattedPhoneNumber = compactTitle;
    goto LABEL_5;
  }

  dd_formattedPhoneNumber = [(NSURL *)url dd_formattedPhoneNumber];
  if (![dd_formattedPhoneNumber length])
  {

    goto LABEL_11;
  }

LABEL_5:
  _Block_object_dispose(&v11, 8);

  return dd_formattedPhoneNumber;
}

void __39__DDTelephoneNumberAction_compactTitle__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) contactAndLabelForPhoneNumber:0];
  v2 = [MEMORY[0x277CBDA78] stringFromContact:? style:?];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 40) + 8) + 40) length])
  {
    v5 = v9;
  }

  else
  {
    v6 = [MEMORY[0x277CBDA78] stringFromContact:v9 style:0];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = v9;
  }
}

- (id)contactAndLabelForPhoneNumber:(id *)number
{
  v28[3] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    if (DDResultGetCategory() != 2)
    {
      goto LABEL_5;
    }

    if (DDResultGetSubresultWithType())
    {
      v5 = DDResultGetMatchedString();
      if (v5)
      {
        goto LABEL_6;
      }

LABEL_5:
      v5 = self->_phoneNumber;
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
LABEL_13:
        v10 = SubResults;
        if (CFArrayGetCount(SubResults) >= 1)
        {
          v14 = 0;
          v15 = MEMORY[0x277D86220];
          do
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [(DDTelephoneNumberAction *)v28 contactAndLabelForPhoneNumber:v10, v14, (v28 + 4)];
            }

            ++v14;
          }

          while (v14 < CFArrayGetCount(v10));
        }

        goto LABEL_21;
      }
    }

    else
    {
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
    }

LABEL_21:
    DDUILogAssertionFailure("valueResult != NULL", "/Library/Caches/com.apple.xbs/Sources/MobileDataDetectorsUI/Actions/DDCallAction.m", "[DDTelephoneNumberAction contactAndLabelForPhoneNumber:]", 209, @"PhoneNumber without a <Value>", v11, v12, v13, v28[0]);
    v5 = self->_phoneNumber;
    if (v5)
    {
LABEL_6:
      dd_formattedPhoneNumber = v5;
      v7 = DDMakeContactStore();
      if (v7)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

LABEL_22:
    if (self->super._result && (v16 = DDResultCopyExtractedURL()) != 0)
    {
      v17 = v16;
      v18 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      scheme = [v18 scheme];
      lowercaseString = [scheme lowercaseString];
      v21 = [lowercaseString isEqualToString:@"tel"];

      if (v21)
      {
        dd_formattedPhoneNumber = [(NSURL *)v18 dd_formattedPhoneNumber];
      }

      else
      {
        dd_formattedPhoneNumber = 0;
      }

      CFRelease(v17);

      v7 = DDMakeContactStore();
      if (v7)
      {
LABEL_34:
        v23 = v7;
        v24 = [(DDTelephoneNumberAction *)self contactsMatchingPhoneNumber:dd_formattedPhoneNumber inContactStore:v7];
        if ([v24 count] != 1)
        {
          v8 = 0;
          goto LABEL_42;
        }

        v8 = [v24 objectAtIndexedSubscript:0];
        if (number)
        {
          if ([dd_formattedPhoneNumber containsString:@"@"])
          {
            v26 = [(DDTelephoneNumberAction *)self labelToUseForEmail:dd_formattedPhoneNumber ofContact:v8];
            if (!v26)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          if (dd_formattedPhoneNumber)
          {
            v25 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:dd_formattedPhoneNumber];
            if (!v25)
            {

              goto LABEL_42;
            }

            v27 = v25;
            v26 = [(DDTelephoneNumberAction *)self labelToUseForPhoneNumber:v25 ofContact:v8];

            if (!v26)
            {
              goto LABEL_42;
            }

LABEL_40:
            *number = [MEMORY[0x277CBDB20] localizedStringForLabel:v26];
          }
        }

LABEL_42:

        v7 = v23;
        goto LABEL_28;
      }
    }

    else
    {
      dd_formattedPhoneNumber = 0;
      v7 = DDMakeContactStore();
      if (v7)
      {
        goto LABEL_34;
      }
    }

LABEL_27:
    v8 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
  }

  v8 = 0;
LABEL_29:

  return v8;
}

- (id)contactsMatchingPhoneNumber:(void *)number inContactStore:
{
  v20[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  numberCopy = number;
  if (self)
  {
    isDeviceLocked = dd_isDeviceLocked();
    self = 0;
    if (numberCopy)
    {
      if ((isDeviceLocked & 1) == 0)
      {
        if ([v5 length])
        {
          if (v5)
          {
            if ([v5 containsString:@"@"])
            {
              v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v5];
            }

            else
            {
              v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
              v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v9];
            }

            v10 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
            v20[0] = v10;
            v11 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
            v12 = *MEMORY[0x277CBD098];
            v20[1] = v11;
            v20[2] = v12;
            v20[3] = *MEMORY[0x277CBCFC0];
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

            self = [numberCopy unifiedContactsMatchingPredicate:v8 keysToFetch:v13 error:0];
          }

          else
          {
            self = 0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_3_0();
            _os_log_debug_impl(v15, v16, v17, v18, v19, 0x16u);
          }
        }

        else
        {
          self = 0;
        }
      }
    }
  }

  return self;
}

- (id)labelToUseForPhoneNumber:(void *)number ofContact:
{
  v5 = a2;
  if (self)
  {
    phoneNumbers = [number phoneNumbers];
    OUTLINED_FUNCTION_0_4();
    self = [v7 countByEnumeratingWithState:0 objects:? count:?];
    if (self)
    {
      v8 = MEMORY[0];
      while (2)
      {
        v9 = 0;
        do
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v10 = *(8 * v9);
          value = [v10 value];
          v12 = [value isLikePhoneNumber:v5];

          if (v12)
          {
            self = [v10 label];
            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (self != v9);
        OUTLINED_FUNCTION_0_4();
        self = [phoneNumbers countByEnumeratingWithState:? objects:? count:?];
        if (self)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return self;
}

- (id)labelToUseForEmail:(void *)email ofContact:
{
  v5 = a2;
  emailCopy = email;
  if (self && [v5 length])
  {
    emailAddresses = [emailCopy emailAddresses];
    lowercaseString = [v5 lowercaseString];

    v9 = emailAddresses;
    OUTLINED_FUNCTION_0_4();
    label = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (label)
    {
      v12 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != label; i = i + 1)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(8 * i);
          value = [v14 value];
          lowercaseString2 = [value lowercaseString];

          if ([lowercaseString2 length] && (objc_msgSend(lowercaseString, "isEqualToString:", lowercaseString2) & 1) != 0)
          {
            label = [v14 label];

            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_4();
        label = [v9 countByEnumeratingWithState:? objects:? count:?];
        if (label)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    label = 0;
    lowercaseString = v5;
  }

  return label;
}

- (void)contactAndLabelForPhoneNumber:(CFIndex)idx .cold.3(uint8_t *a1, CFArrayRef theArray, CFIndex idx, uint64_t *a4)
{
  CFArrayGetValueAtIndex(theArray, idx);
  Type = DDResultGetType();
  *a1 = 138412290;
  *a4 = Type;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Subresult type: %@", a1, 0xCu);
}

@end