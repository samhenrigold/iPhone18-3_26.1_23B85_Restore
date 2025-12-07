@interface NSArray(WebPrivacyExtras)
- (id)_wp_arrayByRemovingTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras;
@end

@implementation NSArray(WebPrivacyExtras)

- (id)_wp_arrayByRemovingTrackingInformationFromURLs
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v8)
          {
            _wp_urlByRemovingTrackingInformation = [v8 _wp_urlByRemovingTrackingInformation];
            if (_wp_urlByRemovingTrackingInformation)
            {
              [v2 setObject:_wp_urlByRemovingTrackingInformation atIndexedSubscript:v5];
            }

            goto LABEL_15;
          }
        }

        else
        {
        }

        _wp_urlByRemovingTrackingInformation = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
LABEL_15:

          goto LABEL_16;
        }

        if (_wp_urlByRemovingTrackingInformation)
        {
          [_wp_urlByRemovingTrackingInformation _wp_removeTrackingInformationFromURLRepresentation];
          v8 = _wp_urlByRemovingTrackingInformation;
        }

        else
        {
          v8 = 0;
        }

LABEL_16:

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v10 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v10;
    }

    while (v10);
  }

  return v2;
}

- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = [self mutableCopy];
  v4 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v10)
          {
            dispatch_group_enter(v4);
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3321888768;
            v22[2] = __67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke;
            v22[3] = &__block_descriptor_56_ea8_32c80_ZTSKZ67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__2_e15_v16__0__NSURL_8l;
            v11 = v4;
            v12 = v18;
            v23 = v11;
            v24 = v12;
            v25 = v7;
            [v10 _wp_removeTrackingInformation:v22];

            v13 = v23;
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
        }

        v13 = v10;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = 0;
          goto LABEL_14;
        }

        if (v13)
        {
          [v13 _wp_removeTrackingInformationFromURLRepresentation];
          v10 = v13;
        }

        else
        {
          v10 = 0;
        }

LABEL_15:

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v14 = [selfCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
      v6 = v14;
    }

    while (v14);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_18;
  block[3] = &unk_279EAF330;
  v20 = v18;
  v21 = v17;
  v15 = v18;
  v16 = v17;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);
}

@end