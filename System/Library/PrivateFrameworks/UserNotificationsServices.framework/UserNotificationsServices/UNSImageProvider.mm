@interface UNSImageProvider
+ (id)_contactForImageRenderingFromContentURLWithContext:(id)context bundleIdentifier:(id)identifier;
+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys;
+ (id)_imageDataFromFileSystemForContactURL:(id)l;
+ (id)_imageDataFromIntentsForContentURL:(id)l;
+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys;
+ (id)imageDataForContentURL:(id)l;
@end

@implementation UNSImageProvider

+ (id)imageDataForContentURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    v12 = UNSLogImageProvider(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "+[UNSImageProvider imageDataForContentURL:]";
      _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:nil", &v14, 0xCu);
    }

    v7 = 0;
    goto LABEL_19;
  }

  isFileURL = [lCopy isFileURL];
  if (!isFileURL)
  {
    goto LABEL_13;
  }

  v7 = [self _imageDataFromFileSystemForContactURL:v5];
  v8 = UNSLogImageProvider(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446722;
    v15 = "+[UNSImageProvider imageDataForContentURL:]";
    v16 = 2114;
    v17 = v5;
    v18 = 1026;
    LODWORD(v19) = v7 != 0;
    _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from file system FIRST. Success:%{public}d", &v14, 0x1Cu);
  }

  if (!v7)
  {
LABEL_13:
    v7 = [self _imageDataFromIntentsForContentURL:v5];
    v9 = UNSLogImageProvider(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"FIRST";
      v14 = 136446978;
      v15 = "+[UNSImageProvider imageDataForContentURL:]";
      if (isFileURL)
      {
        v10 = @"SECOND";
      }

      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      v20 = 1026;
      v21 = v7 != 0;
      _os_log_impl(&dword_270B08000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from intents %{public}@. Success:%{public}d", &v14, 0x26u);
    }

    v11 = v7 ? 1 : isFileURL;
    if ((v11 & 1) == 0)
    {
      v7 = [self _imageDataFromFileSystemForContactURL:v5];
      v12 = UNSLogImageProvider(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446722;
        v15 = "+[UNSImageProvider imageDataForContentURL:]";
        v16 = 2114;
        v17 = v5;
        v18 = 1026;
        LODWORD(v19) = v7 != 0;
        _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Trying to fetch from file system SECOND. Success:%{public}d", &v14, 0x1Cu);
      }

LABEL_19:
    }
  }

  return v7;
}

+ (id)generateEphemeralContactsForImageRenderingWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  keysCopy = keys;
  v11 = UNSLogImageProvider(keysCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543874;
    v32 = identifierCopy;
    v33 = 2082;
    v34 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
    v35 = 2114;
    v36 = un_logDigest;
    _os_log_impl(&dword_270B08000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Start getting contacts", buf, 0x20u);
  }

  if (!contextCopy)
  {
    v20 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  v14 = [self _contactForImageRenderingFromContentURLWithContext:contextCopy bundleIdentifier:identifierCopy];
  v15 = v14;
  if (v14)
  {
    v16 = UNSLogImageProvider(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [contextCopy identifier];
      un_logDigest2 = [identifier2 un_logDigest];
      *buf = 138543874;
      v32 = identifierCopy;
      v33 = 2082;
      v34 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v35 = 2114;
      v36 = un_logDigest2;
      _os_log_impl(&dword_270B08000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contact created from content URL", buf, 0x20u);
    }

    v30 = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  }

  else
  {
    un_isFirstPartyIdentifier = [identifierCopy un_isFirstPartyIdentifier];
    v22 = un_isFirstPartyIdentifier;
    v23 = UNSLogImageProvider(un_isFirstPartyIdentifier);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (!v22)
    {
      if (v24)
      {
        identifier3 = [contextCopy identifier];
        un_logDigest3 = [identifier3 un_logDigest];
        *buf = 138543874;
        v32 = identifierCopy;
        v33 = 2082;
        v34 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
        v35 = 2114;
        v36 = un_logDigest3;
        _os_log_impl(&dword_270B08000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ No contact created because no data found content URL provided", buf, 0x20u);
      }

      v20 = MEMORY[0x277CBEBF8];
      goto LABEL_14;
    }

    if (v24)
    {
      identifier4 = [contextCopy identifier];
      un_logDigest4 = [identifier4 un_logDigest];
      *buf = 138543874;
      v32 = identifierCopy;
      v33 = 2082;
      v34 = "+[UNSImageProvider generateEphemeralContactsForImageRenderingWithContext:bundleIdentifier:descriptorForRequiredKeys:]";
      v35 = 2114;
      v36 = un_logDigest4;
      _os_log_impl(&dword_270B08000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Contacts created from recipients for snowglobe (1st party only)", buf, 0x20u);
    }

    v19 = [self _contactsForImageRenderingFromRecipientsWithContext:contextCopy bundleIdentifier:identifierCopy descriptorForRequiredKeys:keysCopy];
  }

  v20 = v19;
LABEL_14:

LABEL_15:

  return v20;
}

+ (id)_imageDataFromIntentsForContentURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
    v27 = 2114;
    v28 = lCopy;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CD3D10] imageWithURL:lCopy];
  v7 = v6;
  if (v6)
  {
    _imageData = [v6 _imageData];
    if (_imageData)
    {
LABEL_20:
      v18 = [MEMORY[0x277CBEAA8] now];
      v19 = [v18 timeIntervalSinceDate:v4];
      v21 = v20;
      v22 = UNSLogImageProvider(v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = lCopy;
        v29 = 1026;
        *v30 = _imageData != 0;
        *&v30[4] = 2050;
        *&v30[6] = v21;
        _os_log_impl(&dword_270B08000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
      }

      goto LABEL_23;
    }

    _uri = [v7 _uri];
    if ([_uri isFileURL])
    {
      [_uri fileSystemRepresentation];
      v10 = sandbox_extension_issue_file();
      if (!v10)
      {
        v14 = UNSLogImageProvider(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(UNSImageProvider *)lCopy _imageDataFromIntentsForContentURL:_uri, v14];
        }

        _imageData = 0;
        goto LABEL_19;
      }

      v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v10 length:strlen(v10) + 1 freeWhenDone:1];
      [v7 _setSandboxExtensionData:v11];
    }

    mEMORY[0x277CD3D20] = [MEMORY[0x277CD3D20] sharedConnection];
    v24 = 0;
    v13 = [mEMORY[0x277CD3D20] loadDataImageFromImage:v7 scaledSize:&v24 error:{*MEMORY[0x277CD3840], *(MEMORY[0x277CD3840] + 8)}];
    v14 = v24;

    if (!v13 || v14)
    {
      v16 = UNSLogImageProvider(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = lCopy;
        v29 = 2114;
        *v30 = v7;
        *&v30[8] = 2114;
        *&v30[10] = v14;
        _os_log_error_impl(&dword_270B08000, v16, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to fetch icon data from INImage %{public}@ with error %{public}@", buf, 0x2Au);
      }

      _imageData = 0;
    }

    else
    {
      _imageData = [v13 _imageData];
      v16 = UNSLogImageProvider(_imageData);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _identifier = [v7 _identifier];
        *buf = 136446722;
        v26 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
        v27 = 2114;
        v28 = lCopy;
        v29 = 2114;
        *v30 = _identifier;
        _os_log_impl(&dword_270B08000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Successfully fetched identity image with identifier '%{public}@'", buf, 0x20u);
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  v18 = UNSLogImageProvider(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(UNSImageProvider *)lCopy _imageDataFromIntentsForContentURL:v18];
  }

  _imageData = 0;
LABEL_23:

  return _imageData;
}

+ (id)_imageDataFromFileSystemForContactURL:(id)l
{
  v22[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = UNSLogImageProvider(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
    v19 = 2114;
    v20 = lCopy;
    _os_log_impl(&dword_270B08000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Starting Read", buf, 0x16u);
  }

  v16 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v16];
  v7 = v16;
  v8 = v7;
  if (v7)
  {
    v9 = UNSLogImageProvider(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v18 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
      v19 = 2114;
      v20 = lCopy;
      v21 = 2114;
      v22[0] = v8;
      _os_log_impl(&dword_270B08000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Error reading image data %{public}@", buf, 0x20u);
    }
  }

  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 timeIntervalSinceDate:v4];
  v13 = v12;
  v14 = UNSLogImageProvider(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "+[UNSImageProvider _imageDataFromFileSystemForContactURL:]";
    v19 = 2114;
    v20 = lCopy;
    v21 = 1026;
    LODWORD(v22[0]) = v6 != 0;
    WORD2(v22[0]) = 2050;
    *(v22 + 6) = v13;
    _os_log_impl(&dword_270B08000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: contentURL:%{public}@ Ending Read. Success:%{public}d. Finished in:%{public}f milliseconds", buf, 0x26u);
  }

  return v6;
}

+ (id)_contactForImageRenderingFromContentURLWithContext:(id)context bundleIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  v8 = UNSLogImageProvider(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    un_logDigest = [identifier un_logDigest];
    contentURL = [contextCopy contentURL];
    contentURL2 = [contextCopy contentURL];
    v20 = 138544386;
    v21 = identifierCopy;
    v22 = 2082;
    v23 = "+[UNSImageProvider _contactForImageRenderingFromContentURLWithContext:bundleIdentifier:]";
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 1026;
    v27 = contentURL != 0;
    v28 = 2114;
    v29 = contentURL2;
    _os_log_impl(&dword_270B08000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Context identifier:%{public}@ Will attempt to get image data:%{public}d withURL:%{public}@", &v20, 0x30u);
  }

  contentURL3 = [contextCopy contentURL];
  if (contentURL3 && ([self imageDataForContentURL:contentURL3], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v16 setImageData:v15];
    absoluteString = [contentURL3 absoluteString];
    if (absoluteString)
    {
      [v16 setGivenName:absoluteString];
    }

    [v16 setFamilyName:identifierCopy];
  }

  else if ([contextCopy isBusinessCorrespondence])
  {
    v16 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v16 setContactType:1];
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v18 = v16;

  return v16;
}

+ (id)_contactsForImageRenderingFromRecipientsWithContext:(id)context bundleIdentifier:(id)identifier descriptorForRequiredKeys:(id)keys
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  keysCopy = keys;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = contextCopy;
  obj = [contextCopy allContacts];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        cnContactIdentifier = [v14 cnContactIdentifier];
        if (!cnContactIdentifier || (+[UNSNotificationContactService sharedInstance](UNSNotificationContactService, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v32 = keysCopy, [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "curatedContactForContact:bundleIdentifier:keysToFetch:", v14, identifierCopy, v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, !v18))
        {
          displayName = [v14 displayName];
          v20 = [displayName rangeOfString:@" "];
          v18 = objc_alloc_init(MEMORY[0x277CBDB38]);
          v21 = [displayName length] < 3 || v20 == 0;
          if (v21 || v20 >= [displayName length] - 1)
          {
            [v18 setGivenName:displayName];
          }

          else
          {
            v22 = [displayName substringWithRange:{0, v20}];
            v23 = [displayName substringWithRange:{v20 + 1, objc_msgSend(displayName, "length") + ~v20}];
            [v18 setGivenName:v22];
            [v18 setFamilyName:v23];
          }
        }

        [v9 addObject:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  return v9;
}

+ (void)_imageDataFromIntentsForContentURL:(NSObject *)a3 .cold.1(uint64_t a1, id a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [a2 fileSystemRepresentation];
  v8 = *__error();
  v9 = 136446978;
  v10 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
  v11 = 2114;
  v12 = a1;
  v13 = 2080;
  v14 = v7;
  v15 = 1026;
  v16 = v8;
  _os_log_error_impl(&dword_270B08000, a3, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to issue sandbox extension for '%s' with error %{public}d", &v9, 0x26u);
}

+ (void)_imageDataFromIntentsForContentURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446466;
  v3 = "+[UNSImageProvider _imageDataFromIntentsForContentURL:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_270B08000, a2, OS_LOG_TYPE_ERROR, "%{public}s: contentURL:%{public}@ Failed to create an INIntent from url. Cannot proceed with loading data from INImageServiceConnection.", &v2, 0x16u);
}

@end