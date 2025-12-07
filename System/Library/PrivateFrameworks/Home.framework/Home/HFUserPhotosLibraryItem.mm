@interface HFUserPhotosLibraryItem
- (HFUserPhotosLibraryItem)init;
- (HFUserPhotosLibraryItem)initWithUser:(id)user inHome:(id)home;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFUserPhotosLibraryItem

- (HFUserPhotosLibraryItem)initWithUser:(id)user inHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  hf_allUsersIncludingCurrentUser = [homeCopy hf_allUsersIncludingCurrentUser];
  v10 = [hf_allUsersIncludingCurrentUser containsObject:userCopy];

  if (v10)
  {
    v16.receiver = self;
    v16.super_class = HFUserPhotosLibraryItem;
    v11 = [(HFUserPhotosLibraryItem *)&v16 init];
    p_isa = &v11->super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_user, user);
      objc_storeStrong(p_isa + 7, home);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    hf_allUsersIncludingCurrentUser2 = [homeCopy hf_allUsersIncludingCurrentUser];
    NSLog(&cfstr_SHomeDoesnTInc.isa, self, "[HFUserPhotosLibraryItem initWithUser:inHome:]", homeCopy, userCopy, hf_allUsersIncludingCurrentUser2);

    selfCopy = 0;
  }

  return selfCopy;
}

- (HFUserPhotosLibraryItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUser_inHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFUserPhotosLibraryItem.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFUserPhotosLibraryItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  user = [(HFUserPhotosLibraryItem *)self user];
  v6 = objc_msgSend_home(self);
  v7 = [v4 initWithUser:user inHome:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v56[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  user = [(HFUserPhotosLibraryItem *)self user];
  v6 = [HFUserNameFormatter alloc];
  v7 = objc_msgSend_home(self);
  v8 = [(HFUserNameFormatter *)v6 initWithHome:v7];

  [(HFUserNameFormatter *)v8 setStyle:0];
  v9 = objc_msgSend_home(self);
  v10 = [v9 hf_handleForUser:user];

  if (+[HFUtilities isAMac])
  {
    v11 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
    v56[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];

    v13 = +[HFContactStore defaultStore];
    v14 = [v13 contactForUserHandle:v10 withKeys:v12];

    v15 = [MEMORY[0x277CBDA78] stringFromContact:v14 style:1000];
  }

  else
  {
    v15 = [(HFUserNameFormatter *)v8 stringForObjectValue:v10];
  }

  v22 = HFLocalizedStringWithFormat(@"HFFaceRecognitionUsersPhotosLibraryTableViewCellTitle", @"%@", v16, v17, v18, v19, v20, v21, v15);
  [dictionary setObject:v22 forKeyedSubscript:@"title"];

  v23 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_home(self);
  personManagerSettings = [v24 personManagerSettings];
  v26 = [v23 numberWithInt:{objc_msgSend(personManagerSettings, "isFaceClassificationEnabled") ^ 1}];
  [dictionary setObject:v26 forKeyedSubscript:@"isDisabled"];

  v27 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [dictionary setObject:v27 forKeyedSubscript:@"dependentHomeKitClasses"];

  photosPersonManagerSettings = [user photosPersonManagerSettings];
  if (photosPersonManagerSettings)
  {
    v49 = v15;
    v29 = v8;
    v30 = v10;
    user2 = [(HFUserPhotosLibraryItem *)self user];
    v32 = objc_msgSend_home(self);
    currentUser = [v32 currentUser];
    v34 = [user2 isEqual:currentUser];

    isImportingFromPhotoLibraryEnabled = [photosPersonManagerSettings isImportingFromPhotoLibraryEnabled];
    if (v34)
    {
      if (isImportingFromPhotoLibraryEnabled)
      {
        if ([photosPersonManagerSettings isSharingFaceClassificationsEnabled])
        {
          v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextAnyoneInHome";
        }

        else
        {
          v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextOnlyMe";
        }
      }

      else
      {
        v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextNotConnected";
      }

      v10 = v30;
    }

    else
    {
      v10 = v30;
      if (!isImportingFromPhotoLibraryEnabled || ([photosPersonManagerSettings isSharingFaceClassificationsEnabled] & 1) == 0)
      {
        [dictionary setObject:0 forKeyedSubscript:@"description"];
        v41 = 1;
        v8 = v29;
LABEL_20:
        v15 = v49;
        goto LABEL_21;
      }

      v36 = @"HFFaceRecognitionUsersPhotosLibraryTableViewCellDescriptionTextShared";
    }

    v8 = v29;
    v42 = _HFLocalizedStringWithDefaultValue(v36, v36, 1);
    [dictionary setObject:v42 forKeyedSubscript:@"description"];

    v43 = objc_msgSend_home(self);
    personManagerSettings2 = [v43 personManagerSettings];
    v41 = [personManagerSettings2 isFaceClassificationEnabled] ^ 1;

    goto LABEL_20;
  }

  v37 = MEMORY[0x277CCACA8];
  name = [user name];
  v39 = [v37 stringWithFormat:@"externalPersonManagerSettings is nil for user %@", name];

  v40 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v52 = 2080;
    v53 = "[HFUserPhotosLibraryItem _subclass_updateWithOptions:]";
    v54 = 2112;
    v55 = v39;
    _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ (%s): %@", buf, 0x20u);
  }

  v41 = 1;
LABEL_21:
  v45 = [MEMORY[0x277CCABB0] numberWithBool:v41];
  [dictionary setObject:v45 forKeyedSubscript:@"hidden"];

  v46 = [[HFItemUpdateOutcome alloc] initWithResults:dictionary];
  v47 = [MEMORY[0x277D2C900] futureWithResult:v46];

  return v47;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  user = [(HFUserPhotosLibraryItem *)self user];
  name = [user name];
  [v3 appendString:name withName:@"user"];

  v6 = objc_msgSend_home(self);
  v7 = [v6 description];
  [v3 appendString:v7 withName:@"home"];

  build = [v3 build];

  return build;
}

@end