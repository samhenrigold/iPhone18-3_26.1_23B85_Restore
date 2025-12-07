@interface RDUserData
+ (void)fetchUserDataWithLanguage:(id)language keepGoing:(id)going completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (RDUserData)initWithCoder:(id)coder;
- (id)_initWithLanguage:(id)language;
- (id)debugDescription;
- (id)description;
- (void)_fetchContactsWithKeepGoing:(id)going;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RDUserData

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
    v5->_contactsWords = &__NSArray0__struct;
  }

  return v5;
}

- (void)_fetchContactsWithKeepGoing:(id)going
{
  goingCopy = going;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(CNContactStore);
  [v6 requestAccessForEntityType:0 completionHandler:&stru_1000FF160];
  v60[0] = CNContactGivenNameKey;
  v60[1] = CNContactMiddleNameKey;
  v60[2] = CNContactFamilyNameKey;
  v60[3] = CNContactNicknameKey;
  v7 = [NSArray arrayWithObjects:v60 count:4];
  v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v7];
  selfCopy = self;
  v47 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10003A698;
  v42[3] = &unk_1000FF188;
  v9 = goingCopy;
  v44 = v9;
  v45 = &v48;
  v10 = v5;
  v43 = v10;
  v46 = &v52;
  v11 = [v6 enumerateContactsWithFetchRequest:v8 error:&v47 usingBlock:v42];
  v12 = v47;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003A8A8;
  v29[3] = &unk_1000FF1B0;
  v31 = &v48;
  v32 = &v38;
  v13 = v10;
  v30 = v13;
  v33 = &v34;
  v14 = [_INVocabulary enumerateVocabularyUsingBlock:v29];
  if (v11)
  {
    v15 = RXOSLog(v14);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v16 = v53[3];
    v17 = v49[3];
    *buf = 134218240;
    v57 = v16;
    v58 = 2048;
    v59 = v17;
    v18 = "Found %lu and added %lu contact(s) for offline recognition";
    v19 = v15;
    v20 = OS_LOG_TYPE_DEFAULT;
    v21 = 22;
  }

  else
  {
    v15 = RXOSLog(v14);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v57 = v12;
    v18 = "Could not get contacts for offline recognition: %@";
    v19 = v15;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 12;
  }

  _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
LABEL_7:

  v23 = RXOSLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v39[3];
    v25 = v35[3];
    *buf = 134218240;
    v57 = v24;
    v58 = 2048;
    v59 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found %lu and added %lu contact(s) from INVocabulary for offline recognition", buf, 0x16u);
  }

  v26 = [v13 copy];
  contactsWords = selfCopy->_contactsWords;
  selfCopy->_contactsWords = v26;

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
}

+ (void)fetchUserDataWithLanguage:(id)language keepGoing:(id)going completion:(id)completion
{
  languageCopy = language;
  goingCopy = going;
  completionCopy = completion;
  v9 = [[RDUserData alloc] _initWithLanguage:languageCopy];
  v10 = dispatch_group_create();
  v11 = objc_opt_class();
  languageCopy = [NSString stringWithFormat:@"%s.%@", class_getName(v11), languageCopy];
  v13 = dispatch_queue_create([languageCopy UTF8String], 0);

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10003B1F8;
  v40[3] = &unk_1000FF218;
  v14 = v9;
  v41 = v14;
  v15 = goingCopy;
  v42 = v15;
  v16 = v10;
  v17 = v13;
  v18 = v40;
  if (qword_10010E518 != -1)
  {
    sub_1000C935C();
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B87C;
  block[3] = &unk_1000FF288;
  v53 = @"Contacts";
  v54 = &v55;
  dispatch_sync(qword_10010E520, block);
  if (*(v56 + 24) == 1)
  {
    v20 = RXOSLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"Contacts";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Skipping fetch for  %@ because another fetch is still active", &buf, 0xCu);
    }
  }

  else
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10003B8E4;
    v50[3] = &unk_1000FE108;
    v51 = @"Contacts";
    v21 = objc_retainBlock(v50);
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    v22 = +[NSProcessInfo processInfo];
    [v22 systemUptime];
    v24 = v23;

    v34 = languageCopy;
    v25 = dispatch_time(0, 15000000000);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10003BA3C;
    v43[3] = &unk_1000FF2B0;
    v47 = v48;
    v26 = v21;
    v46 = v26;
    v44 = @"Contacts";
    v27 = v16;
    v45 = v27;
    dispatch_after(v25, v17, v43);
    dispatch_group_enter(v27);
    v28 = dispatch_get_global_queue(0, 0);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v60 = sub_10003BB24;
    v61 = &unk_1000FF328;
    v65 = v18;
    v66 = v26;
    v29 = v17;
    v68 = v24;
    v67 = v48;
    v62 = v29;
    v63 = @"Contacts";
    v64 = v27;
    v30 = v26;
    dispatch_async(v28, &buf);

    languageCopy = v34;
    _Block_object_dispose(v48, 8);
    v20 = v51;
  }

  _Block_object_dispose(&v55, 8);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003B258;
  v36[3] = &unk_1000FF240;
  v38 = completionCopy;
  v39 = v15;
  v37 = v14;
  v31 = v14;
  v32 = v15;
  v33 = completionCopy;
  dispatch_group_notify(v16, v17, v36);
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

- (id)description
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords count=%ld", self->_language, -[NSArray count](self->_contactsWords, "count")];

  return v4;
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords=%@", self->_language, self->_contactsWords];

  return v4;
}

- (RDUserData)initWithCoder:(id)coder
{
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
          for (i = 0; i != v10; i = i + 1)
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
              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_10003BE3C;
              v21[3] = &unk_1000FF350;
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

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"_language"];
  [coderCopy encodeObject:self->_contactsWords forKey:@"_contactsWords"];
}

@end