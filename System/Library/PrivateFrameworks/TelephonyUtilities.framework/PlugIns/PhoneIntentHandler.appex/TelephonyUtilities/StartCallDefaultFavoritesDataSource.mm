@interface StartCallDefaultFavoritesDataSource
- (BOOL)hasFavoritesEntryForContact:(id)contact;
- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)number isoCountryCodes:(id)codes;
- (CNFavorites)favoritesController;
- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)center;
@end

@implementation StartCallDefaultFavoritesDataSource

- (StartCallDefaultFavoritesDataSource)initWithCallCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = StartCallDefaultFavoritesDataSource;
  v6 = [(StartCallDefaultFavoritesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenter, center);
  }

  return v7;
}

- (CNFavorites)favoritesController
{
  favoritesController = self->_favoritesController;
  if (!favoritesController)
  {
    v4 = [CNFavorites alloc];
    contactStore = [(TUCallCenter *)self->_callCenter contactStore];
    v6 = [v4 initWithContactStore:contactStore];
    v7 = self->_favoritesController;
    self->_favoritesController = v6;

    favoritesController = self->_favoritesController;
  }

  return favoritesController;
}

- (BOOL)hasFavoritesEntryForContact:(id)contact
{
  contactCopy = contact;
  favoritesController = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  v6 = [favoritesController entriesForContact:contactCopy];

  LOBYTE(favoritesController) = [v6 count] != 0;
  return favoritesController;
}

- (BOOL)hasFavoritesEntryForTelephonyCallWithPhoneNumber:(id)number isoCountryCodes:(id)codes
{
  numberCopy = number;
  codesCopy = codes;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  favoritesController = [(StartCallDefaultFavoritesDataSource *)self favoritesController];
  entries = [favoritesController entries];

  v9 = [entries countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = *v42;
  v34 = CNActionBundleIdentifierPhone;
  v35 = CNActionTypeAudioCall;
  v30 = entries;
  v31 = codesCopy;
  v32 = *v42;
  do
  {
    v12 = 0;
    v33 = v10;
    do
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(entries);
      }

      v13 = *(*(&v41 + 1) + 8 * v12);
      actionType = [v13 actionType];
      if ([v35 isEqualToString:actionType])
      {
        bundleIdentifier = [v13 bundleIdentifier];
        v16 = [v34 isEqualToString:bundleIdentifier];

        if (!v16)
        {
          goto LABEL_27;
        }

        actionType = [v13 contactProperty];
        isKindOfClass = [actionType value];
        v18 = isKindOfClass;
        if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
        {
          stringValue = [v18 stringValue];
          if ([stringValue length])
          {
            v20 = [[TUHandle alloc] initWithType:2 value:stringValue];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v21 = codesCopy;
            v22 = [v21 countByEnumeratingWithState:&v37 objects:v47 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v38;
              while (2)
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v38 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = [v20 isCanonicallyEqualToHandle:numberCopy isoCountryCode:*(*(&v37 + 1) + 8 * i)];
                  if (v26)
                  {
                    v28 = IntentHandlerDefaultLog(v26);
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v46 = v13;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found a favorites entry matching handle: %@", buf, 0xCu);
                    }

                    v27 = 1;
                    entries = v30;
                    codesCopy = v31;
                    goto LABEL_33;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v37 objects:v47 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            entries = v30;
            codesCopy = v31;
          }

          else
          {
            v20 = IntentHandlerDefaultLog(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v13;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring favorite for telephony call with an empty phone number: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          stringValue = IntentHandlerDefaultLog(isKindOfClass);
          if (os_log_type_enabled(stringValue, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v13;
            _os_log_impl(&_mh_execute_header, stringValue, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring favorite for telephony call without a phone number: %@", buf, 0xCu);
          }
        }

        v11 = v32;
        v10 = v33;
      }

LABEL_27:
      v12 = v12 + 1;
    }

    while (v12 != v10);
    v10 = [entries countByEnumeratingWithState:&v41 objects:v48 count:16];
  }

  while (v10);
LABEL_29:
  v27 = 0;
LABEL_33:

  return v27;
}

@end