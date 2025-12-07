@interface CRKMeCardUserProvider
- (CRKMeCardUserProvider)init;
- (CRKMeCardUserProvider)initWithContactsPrimitives:(id)primitives;
- (id)fetchCurrentUser;
- (void)beginObservingContacts;
- (void)fetchCurrentUser;
- (void)rebuildUser;
- (void)rebuildUserDebounced;
@end

@implementation CRKMeCardUserProvider

- (CRKMeCardUserProvider)init
{
  v3 = objc_opt_new();
  v4 = [(CRKMeCardUserProvider *)self initWithContactsPrimitives:v3];

  return v4;
}

- (CRKMeCardUserProvider)initWithContactsPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v9.receiver = self;
  v9.super_class = CRKMeCardUserProvider;
  v6 = [(CRKMeCardUserProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactsPrimitives, primitives);
    [(CRKMeCardUserProvider *)v7 beginObservingContacts];
    [(CRKMeCardUserProvider *)v7 rebuildUser];
  }

  return v7;
}

- (void)beginObservingContacts
{
  objc_initWeak(&location, self);
  contactsPrimitives = [(CRKMeCardUserProvider *)self contactsPrimitives];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __47__CRKMeCardUserProvider_beginObservingContacts__block_invoke;
  v8 = &unk_278DC1870;
  objc_copyWeak(&v9, &location);
  v4 = [contactsPrimitives subscribeToContactsChanges:&v5];
  [(CRKMeCardUserProvider *)self setContactsSubscription:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__CRKMeCardUserProvider_beginObservingContacts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildUserDebounced];
}

- (void)rebuildUserDebounced
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_rebuildUser object:0];

  [(CRKMeCardUserProvider *)self performSelector:sel_rebuildUser withObject:0 afterDelay:0.200000003];
}

- (void)rebuildUser
{
  fetchCurrentUser = [(CRKMeCardUserProvider *)self fetchCurrentUser];
  [(CRKMeCardUserProvider *)self setUser:fetchCurrentUser];
}

- (id)fetchCurrentUser
{
  v3 = _CRKLogGeneral_23(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding MeCard user", buf, 2u);
  }

  contactsPrimitives = [(CRKMeCardUserProvider *)self contactsPrimitives];
  v31 = 0;
  v5 = [contactsPrimitives fetchMeCardContactWithError:&v31];
  v6 = v31;

  if (v5)
  {
    v8 = objc_opt_new();
    [v8 setUserIdentifier:@"TEMPORARY_ME_CARD_IDENTIFIER"];
    nickname = [v5 nickname];
    v10 = [nickname length];

    if (v10)
    {
      nickname2 = [v5 nickname];
    }

    else
    {
      givenName = [v5 givenName];
      if ([givenName length])
      {
        familyName = [v5 familyName];
        v23 = [familyName length];

        if (v23)
        {
          v12 = objc_opt_new();
          givenName2 = [v5 givenName];
          [v12 setGivenName:givenName2];

          familyName2 = [v5 familyName];
          [v12 setFamilyName:familyName2];

          v26 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:3 options:0];
          [v8 setDisplayName:v26];

          goto LABEL_7;
        }
      }

      else
      {
      }

      givenName3 = [v5 givenName];
      v28 = [givenName3 length];

      if (v28)
      {
        nickname2 = [v5 givenName];
      }

      else
      {
        familyName3 = [v5 familyName];
        v30 = [familyName3 length];

        if (!v30)
        {
          goto LABEL_8;
        }

        nickname2 = [v5 familyName];
      }
    }

    v12 = nickname2;
    [v8 setDisplayName:nickname2];
LABEL_7:

LABEL_8:
    givenName4 = [v5 givenName];
    [v8 setGivenName:givenName4];

    familyName4 = [v5 familyName];
    [v8 setFamilyName:familyName4];

    phoneticGivenName = [v5 phoneticGivenName];
    [v8 setPhoneticGivenName:phoneticGivenName];

    phoneticFamilyName = [v5 phoneticFamilyName];
    [v8 setPhoneticFamilyName:phoneticFamilyName];

    [v8 setUserSource:@"MeCard"];
    thumbnailImageData = [v5 thumbnailImageData];
    [v8 setUserImageData:thumbnailImageData];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v8 setImageIdentifier:uUIDString];

    goto LABEL_12;
  }

  uUID = _CRKLogGeneral_23(v7);
  if (os_log_type_enabled(uUID, OS_LOG_TYPE_ERROR))
  {
    [(CRKMeCardUserProvider *)v6 fetchCurrentUser];
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)fetchCurrentUser
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "No me contact found in the contact store: %{public}@", &v2, 0xCu);
}

@end