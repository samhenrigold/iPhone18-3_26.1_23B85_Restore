@interface RDUserProfileImpl
- (RDUserProfileImpl)initWithLanguage:(id)language assetPath:(id)path;
- (id)readUserProfileFromCache;
- (void)adaptUserProfileWithUserData:(id)data;
- (void)addPhraseToUserProfileWithIPAprons:(id)aprons wordTag:(id)tag phrase:(id)phrase pronsArray:(id)array;
- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag phrase:(id)phrase;
- (void)addWordsToUserProfileWithTemplateName:(id)name wordArrays:(id)arrays;
- (void)updateUserProfileWithPersonalData:(BOOL)data completion:(id)completion;
- (void)writeOutUserDataToJson;
- (void)writeUserProfileToCache;
@end

@implementation RDUserProfileImpl

- (RDUserProfileImpl)initWithLanguage:(id)language assetPath:(id)path
{
  languageCopy = language;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = RDUserProfileImpl;
  v8 = [(RDUserProfileImpl *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(RDUserProfileImpl *)v8 setLanguage:languageCopy];
    [(RDUserProfileImpl *)v9 setAssetPath:pathCopy];
    v10 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"mini.json"];
    v11 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"ncs"];
    v12 = [v11 stringByAppendingPathComponent:@"en_US_napg.json"];
    v13 = [v11 stringByAppendingPathComponent:@"vocdelta.voc"];
    v14 = [v11 stringByAppendingPathComponent:@"pg.voc"];
    v15 = [v11 stringByAppendingPathComponent:@"mrec.psh"];
    v16 = [[_EARUserProfile alloc] initWithConfiguration:v10 language:languageCopy overrides:0 sdapiOverrides:v12 emptyVoc:v13 pgVoc:v14 paramsetHolder:v15];
    userProfile = v9->_userProfile;
    v9->_userProfile = v16;
  }

  return v9;
}

- (void)updateUserProfileWithPersonalData:(BOOL)data completion:(id)completion
{
  completionCopy = completion;
  v7 = RXOSLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    language = self->_language;
    *buf = 138412290;
    v21 = language;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating profile for %@", buf, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  readUserProfileFromCache = [(RDUserProfileImpl *)self readUserProfileFromCache];
  v11 = RXOSLog(readUserProfileFromCache);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (readUserProfileFromCache)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Re-using existing profile data", buf, 2u);
    }

    [(_EARUserProfile *)self->_userProfile readUserProfile:readUserProfileFromCache];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No existing cache found", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v9);
  objc_initWeak(buf, self);
  v13 = self->_language;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004BEC4;
  v18[3] = &unk_1000FFC10;
  objc_copyWeak(&v19, buf);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004BEF8;
  v15[3] = &unk_1000FFC60;
  dataCopy = data;
  v15[4] = self;
  v14 = completionCopy;
  v16 = v14;
  [RDUserData fetchUserDataWithLanguage:v13 keepGoing:v18 completion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (id)readUserProfileFromCache
{
  v2 = [(NSString *)self->_language copy];
  v21 = 0;
  v3 = sub_10004C874(v2, &v21);
  if (!v3)
  {
    v5 = RXOSLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v21;
      v8 = "File path for SRC cache not found : %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v21];
  if (!v4)
  {
    v5 = RXOSLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v21;
      v8 = "No SpeechProfile cached for SRC : %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v21];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  v9 = v21;
  if (!v7)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v10 = [v7 valueForKey:@"language"];
  v11 = [v10 isEqual:v2];

  if ((v11 & 1) == 0)
  {
    v13 = RXOSLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "readUserProfileFromCache: Mismatch in speech profile language in content and filename", buf, 2u);
    }
  }

  v14 = [v7 valueForKey:@"version"];
  v15 = [v14 isEqual:@"4.0"];
  if ((v15 & 1) == 0)
  {
    v18 = RXOSLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = @"4.0";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "readUserProfileFromCache: Profile version on disk (%@) does not match the expected version (%@)", buf, 0x16u);
    }

    v17 = 0;
    goto LABEL_27;
  }

  v16 = [v7 valueForKey:@"data"];
  v17 = v16;
  if (v16)
  {
    v18 = RXOSLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 length];
      *buf = 134217984;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deserialization of user profile done with size=%lu", buf, 0xCu);
    }

LABEL_27:
  }

LABEL_29:

  return v17;
}

- (void)writeUserProfileToCache
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = [(NSString *)self->_language copy];
  v32 = 0;
  v7 = sub_10004C874(v6, &v32);
  v8 = v32;
  v9 = v8;
  if (v7)
  {
    dataProfile = [(RDUserProfileImpl *)self dataProfile];
    v11 = dataProfile;
    if (!dataProfile)
    {
      v12 = RXOSLog(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Empty data profile", buf, 2u);
      }

      goto LABEL_20;
    }

    v37[0] = @"data";
    v37[1] = @"version";
    v38[0] = dataProfile;
    v38[1] = @"4.0";
    v37[2] = @"language";
    v38[2] = v6;
    v12 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
    v31 = 0;
    v13 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:&v31];
    v14 = v31;

    v16 = RXOSLog(v15);
    v17 = v16;
    if (!v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Serialization of user profile failed with error=%@", buf, 0xCu);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v13 length];
      *buf = 134217984;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Serialization of user profile done with size=%lu", buf, 0xCu);
    }

    v30 = v14;
    v19 = [v13 writeToFile:v7 options:0x40000000 error:&v30];
    v20 = v30;

    if (v19)
    {
      v22 = +[NSProcessInfo processInfo];
      [v22 systemUptime];
      v24 = v23;

      v17 = RXOSLog(v25);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v7;
        v35 = 2048;
        v36 = (v24 - v5) * 1000.0;
        v26 = "Persisted user profile to path=%@ in %.2fms";
        v27 = v17;
        v28 = OS_LOG_TYPE_DEFAULT;
        v29 = 22;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);
      }
    }

    else
    {
      v17 = RXOSLog(v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v20;
        v26 = "Persisting user profile to disk failed with error=%@";
        v27 = v17;
        v28 = OS_LOG_TYPE_ERROR;
        v29 = 12;
        goto LABEL_17;
      }
    }

    v14 = v20;
LABEL_19:

    v9 = v14;
LABEL_20:

    goto LABEL_21;
  }

  v11 = RXOSLog(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "writeUpdatedUserProfileToCache: Error in getting profile path: %@", buf, 0xCu);
  }

LABEL_21:
}

- (void)writeOutUserDataToJson
{
  v3 = [NSString stringWithFormat:@"%@/mini.json", self->_assetPath];
  v4 = [(NSString *)self->_language copy];
  v18 = 0;
  v5 = v4;
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [firstObject stringByAppendingPathComponent:@"/SpeechRecognitionCore"];
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v18];

    v11 = 0;
    if (v10)
    {
      v12 = v5;
      if (v8)
      {
        v12 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

        v13 = [v8 stringByAppendingPathComponent:@"SpeechProfileJSON"];
        v14 = [v13 stringByAppendingString:@"_"];
        v11 = [v14 stringByAppendingString:v12];
      }
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v18 = v11 = 0;
    v12 = v5;
  }

  v15 = v18;
  v16 = v15;
  if (v11)
  {
    [(_EARUserProfile *)self->_userProfile writeOutUserDataToJson:v11 withConfig:v3];
  }

  else
  {
    v17 = RXOSLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "writeOutUserDataToJson: Error in getting json profile path: %@", buf, 0xCu);
    }
  }
}

- (void)addWordsToUserProfileWithTemplateName:(id)name wordArrays:(id)arrays
{
  nameCopy = name;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = arrays;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = +[NSMutableArray array];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10004CE08;
        v15[3] = &unk_1000FFC88;
        v16 = v12;
        v13 = v12;
        [v11 enumerateKeysAndObjectsUsingBlock:v15];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:v13 templateName:nameCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag phrase:(id)phrase
{
  nameCopy = name;
  tagCopy = tag;
  phraseCopy = phrase;
  v9 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = phraseCopy;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [_EARWordPart alloc];
        v16 = +[NSSet set];
        v17 = [v15 initWithOrthography:v14 pronunciations:v16 tag:sub_10004CECC(tagCopy)];

        [v9 addObject:v17];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(_EARUserProfile *)self->_userProfile addWordWithParts:v9 templateName:nameCopy];
}

- (void)addPhraseToUserProfileWithIPAprons:(id)aprons wordTag:(id)tag phrase:(id)phrase pronsArray:(id)array
{
  tagCopy = tag;
  phraseCopy = phrase;
  arrayCopy = array;
  apronsCopy = aprons;
  v14 = +[NSMutableArray array];
  v15 = [_EARWordPart alloc];
  v16 = [NSSet setWithArray:arrayCopy];
  v17 = [v15 initWithOrthography:phraseCopy pronunciations:v16 tagName:tagCopy frequency:1];

  v19 = RXOSLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138413058;
    v21 = phraseCopy;
    v22 = 2112;
    v23 = arrayCopy;
    v24 = 2112;
    v25 = tagCopy;
    v26 = 2048;
    v27 = 1;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Adding orthography %@ with IPA %@, wordTag: %@, frequency: %lu", &v20, 0x2Au);
  }

  [v14 addObject:v17];
  [(_EARUserProfile *)self->_userProfile addWordWithParts:v14 templateName:apronsCopy];
}

- (void)adaptUserProfileWithUserData:(id)data
{
  contactsWords = [data contactsWords];
  [(RDUserProfileImpl *)self addWordsToUserProfileWithTemplateName:@"\\NT-contact" wordArrays:contactsWords];
}

@end