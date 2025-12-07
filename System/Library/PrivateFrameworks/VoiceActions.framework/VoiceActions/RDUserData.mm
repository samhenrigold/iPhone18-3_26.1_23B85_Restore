@interface RDUserData
+ (void)fetchUserDataWithLanguage:(id)language keepGoing:(id)going completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (RDUserData)initWithCoder:(id)coder;
- (id)_initWithLanguage:(id)language;
- (id)debugDescription;
- (id)description;
- (void)_fetchContactsWithKeepGoing:(id)going;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RDUserData

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"_language"];
  [coderCopy encodeObject:self->_contactsWords forKey:@"_contactsWords"];
}

- (RDUserData)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(RDUserData *)self init];
  if (v5)
  {
    v20 = coderCopy;
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v6;

    v18 = coderCopy;
    v19 = [v18 decodePropertyListForKey:@"_contactsWords"];
    objc_opt_class();
    v8 = v19;
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v19;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = 0;
              v23 = &v22;
              v24 = 0x2020000000;
              v25 = 0;
              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v21[2] = sub_2723625BC;
              v21[3] = &unk_279E40710;
              v21[4] = &v22;
              [v13 enumerateKeysAndObjectsUsingBlock:v21];
              v14 = *(v23 + 24);
              _Block_object_dispose(&v22, 8);
              if ((v14 & 1) == 0)
              {
                continue;
              }
            }

            v15 = 0;
            goto LABEL_15;
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v15 = v9;
LABEL_15:
      v8 = v19;
    }

    else
    {
      v15 = 0;
    }

    contactsWords = v5->_contactsWords;
    v5->_contactsWords = v15;

    coderCopy = v20;
  }

  return v5;
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords=%@", self->_language, self->_contactsWords];

  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords count=%ld", self->_language, -[NSArray count](self->_contactsWords, "count")];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      language = self->_language;
      if (language == v5->_language || [(NSString *)language isEqual:?])
      {
        contactsWords = self->_contactsWords;
        if (contactsWords == v5->_contactsWords)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(NSArray *)contactsWords isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_fetchContactsWithKeepGoing:(id)going
{
  v48[4] = *MEMORY[0x277D85DE8];
  goingCopy = going;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  [v6 requestAccessForEntityType:0 completionHandler:&unk_288190678];
  v7 = *MEMORY[0x277CBD058];
  v48[0] = *MEMORY[0x277CBD000];
  v48[1] = v7;
  v8 = *MEMORY[0x277CBD078];
  v48[2] = *MEMORY[0x277CBCFF8];
  v48[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v9];
  v39 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_272362C20;
  v34[3] = &unk_279E40588;
  v11 = goingCopy;
  v36 = v11;
  v37 = &v40;
  v12 = v5;
  v35 = v12;
  v38 = &v44;
  v13 = [v6 enumerateContactsWithFetchRequest:v10 error:&v39 usingBlock:v34];
  v14 = v39;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v15 = MEMORY[0x277CD43E0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_272362E30;
  v21[3] = &unk_279E405B0;
  v23 = &v40;
  v24 = &v30;
  v16 = v12;
  v22 = v16;
  v25 = &v26;
  [v15 enumerateVocabularyUsingBlock:v21];
  if (v13)
  {
    printf("Found %lu and added %lu contact(s) for offline recognition\n", v45[3], v41[3]);
  }

  else
  {
    localizedFailureReason = [v14 localizedFailureReason];
    v18 = localizedFailureReason;
    printf("Could not get contacts for offline recognition: %s\n", [localizedFailureReason UTF8String]);
  }

  printf("Found %lu and added %lu contact(s) from INVocabulary for offline recognition\n", v31[3], v27[3]);
  v19 = [v16 copy];
  contactsWords = self->_contactsWords;
  self->_contactsWords = v19;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

- (void)dealloc
{
  language = self->_language;
  self->_language = 0;

  contactsWords = self->_contactsWords;
  self->_contactsWords = 0;

  v5.receiver = self;
  v5.super_class = RDUserData;
  [(RDUserData *)&v5 dealloc];
}

- (id)_initWithLanguage:(id)language
{
  languageCopy = language;
  v10.receiver = self;
  v10.super_class = RDUserData;
  v5 = [(RDUserData *)&v10 init];
  if (v5)
  {
    v6 = [languageCopy copy];
    language = v5->_language;
    v5->_language = v6;

    contactsWords = v5->_contactsWords;
    v5->_contactsWords = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (void)fetchUserDataWithLanguage:(id)language keepGoing:(id)going completion:(id)completion
{
  languageCopy = language;
  goingCopy = going;
  completionCopy = completion;
  v10 = [[RDUserData alloc] _initWithLanguage:languageCopy];
  v11 = dispatch_group_create();
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  languageCopy = [v12 stringWithFormat:@"%s.%@", class_getName(v13), languageCopy];
  v15 = dispatch_queue_create([languageCopy UTF8String], 0);

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_27236385C;
  v40[3] = &unk_279E405F8;
  v16 = v10;
  v41 = v16;
  v17 = goingCopy;
  v42 = v17;
  v18 = v11;
  v19 = v15;
  v20 = v40;
  if (qword_2808938C8 != -1)
  {
    dispatch_once(&qword_2808938C8, &unk_2881906B8);
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2723638BC;
  block[3] = &unk_279E40648;
  v61 = @"Contacts";
  v62 = &v63;
  dispatch_sync(qword_2808938D0, block);
  if (*(v64 + 24) == 1)
  {
    printf("Skipping fetch for  %s because another fetch is still active", [@"Contacts" UTF8String]);
  }

  else
  {
    v34 = completionCopy;
    v35 = languageCopy;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_272363924;
    aBlock[3] = &unk_279E40760;
    v59 = @"Contacts";
    v21 = _Block_copy(aBlock);
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v57 = 0;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v24 = v23;

    v25 = dispatch_time(0, 15000000000);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_2723639B4;
    v51[3] = &unk_279E40670;
    v55 = v56;
    v26 = v21;
    v54 = v26;
    v52 = @"Contacts";
    v27 = v18;
    v53 = v27;
    dispatch_after(v25, v19, v51);
    dispatch_group_enter(v27);
    v28 = dispatch_get_global_queue(0, 0);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_272363A34;
    v43[3] = &unk_279E406E8;
    v47 = v20;
    v48 = v26;
    v29 = v19;
    v50 = v24;
    v49 = v56;
    v44 = v29;
    v45 = @"Contacts";
    v46 = v27;
    v30 = v26;
    dispatch_async(v28, v43);

    _Block_object_dispose(v56, 8);
    completionCopy = v34;
    languageCopy = v35;
  }

  _Block_object_dispose(&v63, 8);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_272363B14;
  v36[3] = &unk_279E40620;
  v38 = completionCopy;
  v39 = v17;
  v37 = v16;
  v31 = v16;
  v32 = v17;
  v33 = completionCopy;
  dispatch_group_notify(v18, v19, v36);
}

@end