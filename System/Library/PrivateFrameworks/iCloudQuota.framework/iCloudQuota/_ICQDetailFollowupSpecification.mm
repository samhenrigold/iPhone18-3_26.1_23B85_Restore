@interface _ICQDetailFollowupSpecification
+ (id)replaceWordsIn:(id)in with:(id)with;
- (_ICQDetailFollowupSpecification)initWithServerDictionary:(id)dictionary;
- (id)mesgWithKey:(id)key;
- (id)subTitleWithKey:(id)key;
- (id)titleWithKey:(id)key;
- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion;
- (void)setFollowUpInfo:(id)info;
- (void)setLockScreenInfo:(id)info;
@end

@implementation _ICQDetailFollowupSpecification

- (_ICQDetailFollowupSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "request for detail notification object", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = _ICQDetailFollowupSpecification;
  v6 = [(_ICQFollowupSpecification *)&v13 initWithServerDictionary:dictionaryCopy];
  v7 = v6;
  if (v6)
  {
    [(_ICQDetailFollowupSpecification *)v6 setBundleId:@"com.apple.mobileslideshow"];
    v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);

    if (v8)
    {
      v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
      [(_ICQDetailFollowupSpecification *)v7 setLockScreenInfo:v9];
    }

    v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);

    if (v10)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
      [(_ICQDetailFollowupSpecification *)v7 setFollowUpInfo:v11];
    }
  }

  return v7;
}

- (void)setLockScreenInfo:(id)info
{
  v44[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_storeStrong(&self->_lockScreenInfo, info);
  v6 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v9 = [_ICQHelperFunctions parseTemplates:v8];
    [(_ICQDetailFollowupSpecification *)self setTitleTemplates:v9];
  }

  else
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v43 = @"default";
      v12 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
      v44[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      [(_ICQDetailFollowupSpecification *)self setTitleTemplates:v13];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "lockTitle field not present or of undefined type in lockScreenInfo", &v37, 2u);
      }
    }
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v17 = [_ICQHelperFunctions parseTemplates:v16];
LABEL_12:
    v20 = v17;
    [(_ICQDetailFollowupSpecification *)self setSubTitleTemplates:v17];

    goto LABEL_13;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v41 = @"default";
    v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v42 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    goto LABEL_12;
  }

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "lockSubTitle field not present or of undefined type in lockScreenInfo", &v37, 2u);
  }

LABEL_13:

  v21 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v24 = [_ICQHelperFunctions parseTemplates:v23];
LABEL_17:
    v27 = v24;
    [(_ICQDetailFollowupSpecification *)self setMesgTemplates:v24];

    goto LABEL_18;
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v39 = @"default";
    v23 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v40 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    goto LABEL_17;
  }

  v23 = _ICQGetLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "lockMessage field not present or of undefined type in lockScreenInfo", &v37, 2u);
  }

LABEL_18:

  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  if (v29)
  {
    v30 = v29;
    v31 = objc_msgSend_objectForKeyedSubscript_(infoCopy);

    if (v31)
    {
      v32 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
      [v28 setObject:v32 forKey:@"actParams"];

      v33 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
      [v28 setObject:v33 forKey:@"action"];

      [v28 setObject:&stru_288431E38 forKey:@"display"];
      v34 = _ICQLinkForServerMessageParameter(v28);
      [(_ICQFollowupSpecification *)self setNoteActivateLink:v34];
    }
  }

  v35 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  if (v35)
  {
    v36 = _ICQGetLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v35;
      _os_log_impl(&dword_275572000, v36, OS_LOG_TYPE_DEFAULT, "Lockscreen info contains notifyingAppId %@", &v37, 0xCu);
    }

    [(_ICQFollowupSpecification *)self setNotifyingAppId:v35];
  }
}

- (void)setFollowUpInfo:(id)info
{
  v25[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_storeStrong(&self->_followUpInfo, info);
  v6 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v9 = [_ICQHelperFunctions parseTemplates:v8];
    [(_ICQDetailFollowupSpecification *)self setFollowupTitleTemplates:v9];
  }

  else
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v24 = @"default";
      v12 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
      v25[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      [(_ICQDetailFollowupSpecification *)self setFollowupTitleTemplates:v13];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "title field not present or of undefined type in followups", v21, 2u);
      }
    }
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v17 = [_ICQHelperFunctions parseTemplates:v16];
LABEL_12:
    v20 = v17;
    [(_ICQDetailFollowupSpecification *)self setFollowupMesgTemplates:v17];

    goto LABEL_13;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v22 = @"default";
    v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v23 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    goto LABEL_12;
  }

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "mesg field not present or of undefined type in followups", v21, 2u);
  }

LABEL_13:
}

+ (id)replaceWordsIn:(id)in with:(id)with
{
  v20 = *MEMORY[0x277D85DE8];
  inCopy = in;
  withCopy = with;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [withCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = inCopy;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(withCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        v13 = [withCopy objectForKey:v12];
        inCopy = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = inCopy;
      }

      while (v8 != v10);
      v8 = [withCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return inCopy;
}

- (id)titleWithKey:(id)key
{
  keyCopy = key;
  titleTemplates = [(_ICQDetailFollowupSpecification *)self titleTemplates];
  objc_msgSend_objectForKeyedSubscript_(titleTemplates);

  titleTemplates2 = [(_ICQDetailFollowupSpecification *)self titleTemplates];
  v7 = objc_msgSend_objectForKeyedSubscript_(titleTemplates2);

  return v7;
}

- (id)subTitleWithKey:(id)key
{
  keyCopy = key;
  subTitleTemplates = [(_ICQDetailFollowupSpecification *)self subTitleTemplates];
  objc_msgSend_objectForKeyedSubscript_(subTitleTemplates);

  subTitleTemplates2 = [(_ICQDetailFollowupSpecification *)self subTitleTemplates];
  v7 = objc_msgSend_objectForKeyedSubscript_(subTitleTemplates2);

  return v7;
}

- (id)mesgWithKey:(id)key
{
  keyCopy = key;
  mesgTemplates = [(_ICQDetailFollowupSpecification *)self mesgTemplates];
  objc_msgSend_objectForKeyedSubscript_(mesgTemplates);

  mesgTemplates2 = [(_ICQDetailFollowupSpecification *)self mesgTemplates];
  v7 = objc_msgSend_objectForKeyedSubscript_(mesgTemplates2);

  return v7;
}

- (void)postFollowupWithController:(id)controller replaceExisting:(BOOL)existing completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Posting detail notification", buf, 2u);
  }

  bundleId = [(_ICQDetailFollowupSpecification *)self bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89___ICQDetailFollowupSpecification_postFollowupWithController_replaceExisting_completion___block_invoke;
  v14[3] = &unk_27A652F48;
  v14[4] = self;
  v15 = controllerCopy;
  existingCopy = existing;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = controllerCopy;
  [_ICQDeviceInfo getInfoWithBundleId:bundleId completion:v14];
}

@end