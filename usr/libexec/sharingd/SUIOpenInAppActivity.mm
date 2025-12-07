@interface SUIOpenInAppActivity
+ (id)_activitiesForFileURL:(id)l isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data includeSourceApplicationInResults:(BOOL)results supportedTypeIdentifiers:(id)identifiers;
+ (id)openInActivitiesForItems:(id)items isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data includeSourceApplicationInResults:(BOOL)results supportedTypeIdentifiers:(id)identifiers;
- (BOOL)canPerformWithActivityItems:(id)items;
- (BOOL)openByImportWillHandlePromiseURLs;
- (NSString)applicationIdentifier;
- (NSString)description;
- (SUIOpenInAppActivity)initWithApplicationProxy:(id)proxy documentProxy:(id)documentProxy isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data appIsDocumentTypeOwner:(BOOL)owner supportedTypeIdentifiers:(id)identifiers;
- (id)_bookmarkWithSandboxExtensionForExport;
- (id)_firstMatchingDocumentProxyForActivityItems:(id)items;
- (id)activityTitle;
- (id)activityType;
- (id)ss_activitySpecificExtensionItemDataRequestInfo;
- (void)_performLaunchServicesOpenWithDocumentOpenURL:(id)l launchServiceOptions:(id)options completion:(id)completion;
- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)performActivity;
- (void)performLaunchServicesImportOpenWithCompletion:(id)completion;
- (void)performLaunchServicesInPlaceOpenWithCompletion:(id)completion;
- (void)prepareWithActivityExtensionItemData:(id)data;
- (void)prepareWithActivityItemData:(id)data;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation SUIOpenInAppActivity

- (id)ss_activitySpecificExtensionItemDataRequestInfo
{
  applicationIdentifier = [(SUIOpenInAppActivity *)self applicationIdentifier];
  v3 = _UISUIActivitySpecificMetadataForOpeningDocumentWithApplicationID();

  return v3;
}

- (SUIOpenInAppActivity)initWithApplicationProxy:(id)proxy documentProxy:(id)documentProxy isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data appIsDocumentTypeOwner:(BOOL)owner supportedTypeIdentifiers:(id)identifiers
{
  ownerCopy = owner;
  managedCopy = managed;
  proxyCopy = proxy;
  documentProxyCopy = documentProxy;
  dataCopy = data;
  identifiersCopy = identifiers;
  v18 = objc_opt_class();
  if (v18 == objc_opt_class())
  {
    sub_1001FC1F4();
  }

  v23.receiver = self;
  v23.super_class = SUIOpenInAppActivity;
  v19 = [(SUIOpenInAppActivity *)&v23 init];
  v20 = v19;
  if (v19)
  {
    [(SUIOpenInAppActivity *)v19 setApplicationProxy:proxyCopy];
    [(SUIOpenInAppActivity *)v20 setDocumentProxy:documentProxyCopy];
    [(SUIOpenInAppActivity *)v20 setIsContentManaged:managedCopy];
    [(SUIOpenInAppActivity *)v20 setSourceApplicationAuditTokenData:dataCopy];
    [(SUIOpenInAppActivity *)v20 _setAppIsDocumentTypeOwner:ownerCopy];
    v21 = [identifiersCopy copy];
    [(SUIOpenInAppActivity *)v20 setSupportedTypeIdentifiers:v21];
  }

  return v20;
}

- (NSString)applicationIdentifier
{
  applicationProxy = [(SUIOpenInAppActivity *)self applicationProxy];
  applicationIdentifier = [applicationProxy applicationIdentifier];

  return applicationIdentifier;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SUIOpenInAppActivity;
  v3 = [(SUIOpenInAppActivity *)&v7 description];
  activityTitle = [(SUIOpenInAppActivity *)self activityTitle];
  v5 = [NSString stringWithFormat:@"%@ '%@'", v3, activityTitle];

  return v5;
}

+ (id)openInActivitiesForItems:(id)items isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data includeSourceApplicationInResults:(BOOL)results supportedTypeIdentifiers:(id)identifiers
{
  resultsCopy = results;
  managedCopy = managed;
  dataCopy = data;
  identifiersCopy = identifiers;
  itemsCopy = items;
  v15 = [NSPredicate predicateWithBlock:&stru_1008D4090];
  v16 = [itemsCopy filteredArrayUsingPredicate:v15];

  if ([v16 count])
  {

    identifiersCopy = 0;
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    if ([identifiersCopy countByEnumeratingWithState:v27 objects:v31 count:16])
    {
      v17 = [UTType typeWithIdentifier:**(&v27[0] + 1)];
      preferredFilenameExtension = [v17 preferredFilenameExtension];
      v19 = [NSString stringWithFormat:@"fake.%@", preferredFilenameExtension];
      v20 = [NSURL fileURLWithPath:v19 isDirectory:0];

      v22 = share_sheet_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SUIOpenInAppActivity: using fake fileURL:%@", buf, 0xCu);
      }

      v28 = v20;
      v23 = [NSArray arrayWithObjects:&v28 count:1];

      v16 = v23;
    }
  }

  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    v25 = [self _activitiesForFileURL:firstObject isContentManaged:managedCopy sourceApplicationAuditTokenData:dataCopy includeSourceApplicationInResults:resultsCopy supportedTypeIdentifiers:identifiersCopy];
  }

  else
  {
    v25 = &__NSArray0__struct;
  }

  return v25;
}

- (void)_performLaunchServicesOpenWithDocumentOpenURL:(id)l launchServiceOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  lCopy = l;
  v9 = _UIActivityDefaultOpenApplicationLaunchServiceOptions();
  v10 = [v9 mutableCopy];

  [v10 addEntriesFromDictionary:optionsCopy];
  sourceApplicationAuditTokenData = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];

  if (sourceApplicationAuditTokenData)
  {
    sourceApplicationAuditTokenData2 = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];
    v13 = sub_1001FA2C0(sourceApplicationAuditTokenData2);

    if (v13)
    {
      v14 = v10;
      v15 = UIApplicationLaunchOptionsSourceApplicationKey;
      v16 = v13;
      if (v15)
      {
        v17 = LSOpenApplicationPayloadOptionsKey;
        v18 = [v14 objectForKeyedSubscript:LSOpenApplicationPayloadOptionsKey];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v18)
          {
            v19 = [v18 mutableCopy];

            v18 = v19;
          }

          else
          {
            v18 = +[NSMutableDictionary dictionary];
          }

          [v14 setObject:v18 forKeyedSubscript:v17];
        }

        [v18 setObject:v16 forKeyedSubscript:v15];
      }
    }
  }

  openURLAnnotationsByURL = [(SUIOpenInAppActivity *)self openURLAnnotationsByURL];
  v21 = [openURLAnnotationsByURL objectForKeyedSubscript:lCopy];

  v22 = [v10 objectForKeyedSubscript:LSFileProviderStringKey];
  v23 = +[LSApplicationWorkspace defaultWorkspace];
  applicationIdentifier = [(LSApplicationProxy *)self->_applicationProxy applicationIdentifier];
  isContentManaged = [(SUIOpenInAppActivity *)self isContentManaged];
  sourceApplicationAuditTokenData3 = [(SUIOpenInAppActivity *)self sourceApplicationAuditTokenData];
  v27 = [v23 operationToOpenResource:lCopy usingApplication:applicationIdentifier uniqueDocumentIdentifier:v22 isContentManaged:isContentManaged sourceAuditToken:objc_msgSend(sourceApplicationAuditTokenData3 userInfo:"bytes") options:v21 delegate:{v10, self}];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001FA2F8;
  v30[3] = &unk_1008CDEA0;
  v30[4] = self;
  v28 = share_sheet_log([v27 setCompletionBlock:v30]);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier2 = [(LSApplicationProxy *)self->_applicationProxy applicationIdentifier];
    *buf = 138412546;
    v32 = applicationIdentifier2;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SUIOpenInAppActivity: Performing open using application %@ with options %@", buf, 0x16u);
  }

  [v27 start];
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  v5 = share_sheet_log(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SUIOpenInAppActivity openResourceOperation:didFailWithError:]";
    v8 = 2112;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }
}

- (void)performLaunchServicesInPlaceOpenWithCompletion:(id)completion
{
  completionCopy = completion;
  applicationProxy = [(SUIOpenInAppActivity *)self applicationProxy];
  documentProxy = [(SUIOpenInAppActivity *)self documentProxy];
  v7 = [documentProxy URL];
  CanOpenInPlaceByReferenceOriginalFile = _UIApplicationCanOpenInPlaceByReferenceOriginalFile();

  if ((CanOpenInPlaceByReferenceOriginalFile & 1) == 0)
  {
    sub_1001FC274();
  }

  documentProxy2 = [(SUIOpenInAppActivity *)self documentProxy];
  v10 = [documentProxy2 URL];

  applicationProxy2 = [(SUIOpenInAppActivity *)self applicationProxy];
  bundleIdentifier = [applicationProxy2 bundleIdentifier];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FA5BC;
  v16[3] = &unk_1008D40E0;
  v17 = v10;
  v18 = completionCopy;
  v16[4] = self;
  v13 = off_100972B58;
  v14 = v10;
  v15 = completionCopy;
  v13(v14, bundleIdentifier, v16);
}

- (BOOL)openByImportWillHandlePromiseURLs
{
  documentProxy = [(SUIOpenInAppActivity *)self documentProxy];
  v4 = [documentProxy URL];

  applicationProxy = [(SUIOpenInAppActivity *)self applicationProxy];
  LOBYTE(documentProxy) = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile();

  return documentProxy;
}

- (void)performLaunchServicesImportOpenWithCompletion:(id)completion
{
  completionCopy = completion;
  documentProxy = [(SUIOpenInAppActivity *)self documentProxy];
  v6 = [documentProxy URL];

  applicationProxy = [(SUIOpenInAppActivity *)self applicationProxy];
  CanOpenInPlaceByCopyingFromOriginalFile = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile();

  if (CanOpenInPlaceByCopyingFromOriginalFile)
  {
    applicationProxy2 = [(SUIOpenInAppActivity *)self applicationProxy];
    supportsOpenInPlace = [applicationProxy2 supportsOpenInPlace];

    if (supportsOpenInPlace)
    {
      sub_1001FC2E4();
    }

    _bookmarkWithSandboxExtensionForExport = [(SUIOpenInAppActivity *)self _bookmarkWithSandboxExtensionForExport];
    v13[0] = LSFileProviderStringKey;
    v13[1] = LSRequireOpenInPlaceKey;
    v14[0] = _bookmarkWithSandboxExtensionForExport;
    v14[1] = &__kCFBooleanFalse;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v12 = 0;
  }

  [(SUIOpenInAppActivity *)self _performLaunchServicesOpenWithDocumentOpenURL:v6 launchServiceOptions:v12 completion:completionCopy];
}

- (id)_bookmarkWithSandboxExtensionForExport
{
  documentProxy = [(SUIOpenInAppActivity *)self documentProxy];
  v4 = [documentProxy URL];

  securityContext = [(SUIOpenInAppActivity *)self securityContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FAAAC;
  v11[3] = &unk_1008D4108;
  v6 = v4;
  v12 = v6;
  v7 = [securityContext securityScopedResourcesMatchingPredicate:v11];
  firstObject = [v7 firstObject];

  bookmarkExportDataEncodedAsString = [firstObject bookmarkExportDataEncodedAsString];
  if (!bookmarkExportDataEncodedAsString)
  {
    bookmarkExportDataEncodedAsString = [v6 ui_bookmarkForExportWithError:0];
  }

  return bookmarkExportDataEncodedAsString;
}

- (void)prepareWithActivityItemData:(id)data
{
  dataCopy = data;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  securityContexts = [dataCopy securityContexts];
  v7 = [securityContexts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(securityContexts);
        }

        securityScopedResources = [*(*(&v16 + 1) + 8 * v10) securityScopedResources];
        [v5 addObjectsFromArray:securityScopedResources];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [securityContexts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v5];
  openURLAnnotationsByURL = [dataCopy openURLAnnotationsByURL];
  [(SUIOpenInAppActivity *)self setOpenURLAnnotationsByURL:openURLAnnotationsByURL];

  [(SUIOpenInAppActivity *)self setSecurityContext:v12];
  securityContext = [(SUIOpenInAppActivity *)self securityContext];
  [securityContext activate];

  v15 = sub_1001FAD1C(v12);
  [(SUIOpenInAppActivity *)self prepareWithActivityItems:v15];
}

- (void)prepareWithActivityExtensionItemData:(id)data
{
  selfCopy = self;
  dataCopy = data;
  extensionItems = [dataCopy extensionItems];
  v4 = dispatch_group_create();
  v39 = NSItemProviderOptionsDispatchModeKey;
  v40 = NSItemProviderOptionsDispatchModeAsynchronous;
  v5 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v6 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = extensionItems;
  v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v24)
  {
    v23 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v33 + 1) + 8 * v7);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        attachments = [v8 attachments];
        v10 = [attachments countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(attachments);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              if ([v14 hasItemConformingToTypeIdentifier:@"com.apple.ShareUI.openURL.supplementalSecurityContext"])
              {
                dispatch_group_enter(v4);
                v26[0] = _NSConcreteStackBlock;
                v26[1] = 3221225472;
                v26[2] = sub_1001FC0E4;
                v26[3] = &unk_1008D4178;
                v27 = v6;
                v28 = v4;
                [v14 loadItemForTypeIdentifier:@"com.apple.ShareUI.openURL.supplementalSecurityContext" options:v5 completionHandler:v26];
              }
            }

            v11 = [attachments countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v7 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v24);
  }

  v15 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v4, v15);

  v16 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v6];
  openURLAnnotationsByURL = [dataCopy openURLAnnotationsByURL];
  [(SUIOpenInAppActivity *)selfCopy setOpenURLAnnotationsByURL:openURLAnnotationsByURL];

  [(SUIOpenInAppActivity *)selfCopy setSecurityContext:v16];
  securityContext = [(SUIOpenInAppActivity *)selfCopy securityContext];
  [securityContext activate];

  v19 = sub_1001FAD1C(v16);
  [(SUIOpenInAppActivity *)selfCopy prepareWithActivityItems:v19];
}

- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error
{
  v7.receiver = self;
  v7.super_class = SUIOpenInAppActivity;
  [(SUIOpenInAppActivity *)&v7 activityDidFinish:finish items:items error:error];
  securityContext = [(SUIOpenInAppActivity *)self securityContext];
  [securityContext deactivate];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  supportedTypeIdentifiers = [(SUIOpenInAppActivity *)self supportedTypeIdentifiers];

  if (supportedTypeIdentifiers)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SUIOpenInAppActivity *)self _firstMatchingDocumentProxyForActivityItems:itemsCopy];
    v6 = v7 != 0;
  }

  return v6;
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = [(SUIOpenInAppActivity *)self _firstMatchingDocumentProxyForActivityItems:items];
  documentProxy = self->_documentProxy;
  self->_documentProxy = v4;
}

- (id)activityType
{
  applicationIdentifier = [(SUIOpenInAppActivity *)self applicationIdentifier];
  v3 = _UISUIActivityRealActivityTypeForOpeningDocumentWithApplicationID();

  return v3;
}

+ (id)_activitiesForFileURL:(id)l isContentManaged:(BOOL)managed sourceApplicationAuditTokenData:(id)data includeSourceApplicationInResults:(BOOL)results supportedTypeIdentifiers:(id)identifiers
{
  managedCopy = managed;
  lCopy = l;
  dataCopy = data;
  identifiersCopy = identifiers;
  v14 = objc_opt_new();
  v15 = lCopy;
  isFileURL = [v15 isFileURL];
  v17 = v15;
  v18 = v17;
  if (isFileURL)
  {
    if (_UIIsIWorkArchiveURL())
    {
      lastPathComponent = [v17 lastPathComponent];
      v20 = _UIStringByDeletingArchiveExtensions();

      uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];
      v18 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v20];
    }

    else
    {
      v18 = v17;
    }
  }

  v22 = sub_1001FB61C(v18, managedCopy, dataCopy);
  if (results)
  {
    v23 = 0;
LABEL_10:
    v25 = &__NSArray0__struct;
    goto LABEL_11;
  }

  v24 = sub_1001FA2C0(dataCopy);
  v23 = v24;
  if (!v24)
  {
    goto LABEL_10;
  }

  v37 = v24;
  v25 = [NSArray arrayWithObjects:&v37 count:1];
LABEL_11:
  v26 = sub_1001FB61C(v17, managedCopy, dataCopy);
  v36 = identifiersCopy;
  v33 = v14;
  v34 = v26;
  v35 = dataCopy;
  v27 = identifiersCopy;
  v28 = dataCopy;
  v29 = v26;
  v30 = v17;
  _UIEnumerateApplicationsInPreferredOrderForOpeningDocument();
  v31 = v33;

  return v33;
}

- (id)_firstMatchingDocumentProxyForActivityItems:(id)items
{
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v46;
    v9 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
    *&v6 = 138412802;
    v34 = v6;
    v38 = itemsCopy;
    selfCopy = self;
    v35 = *v46;
    while (2)
    {
      v10 = 0;
      v36 = v7;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          if ([v12 isFileURL])
          {
            pathExtension = [v12 pathExtension];
            v14 = v9[550];
            v15 = [*(&self->super.super.isa + v14) URL];
            pathExtension2 = [v15 pathExtension];
            v17 = [pathExtension caseInsensitiveCompare:pathExtension2];

            if (!v17)
            {
              v32 = sub_1001FB61C(v12, self->_isContentManaged, self->_sourceApplicationAuditTokenData);
LABEL_25:

              goto LABEL_27;
            }

            v37 = v14;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            obj = [(SUIOpenInAppActivity *)self supportedTypeIdentifiers];
            v18 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v42;
              while (2)
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v42 != v20)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = [UTType typeWithIdentifier:*(*(&v41 + 1) + 8 * i), v34];
                  pathExtension3 = [v12 pathExtension];
                  v24 = [UTType typeWithFilenameExtension:pathExtension3];

                  preferredFilenameExtension = [v22 preferredFilenameExtension];
                  preferredFilenameExtension2 = [v24 preferredFilenameExtension];
                  v27 = [preferredFilenameExtension isEqual:preferredFilenameExtension2];

                  if (v27)
                  {
                    v32 = sub_1001FB61C(v12, selfCopy->_isContentManaged, selfCopy->_sourceApplicationAuditTokenData);

                    itemsCopy = v38;
                    goto LABEL_25;
                  }
                }

                v19 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v29 = share_sheet_log(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [*(&selfCopy->super.super.isa + v37) URL];
              supportedTypeIdentifiers = [(SUIOpenInAppActivity *)selfCopy supportedTypeIdentifiers];
              *buf = v34;
              v50 = v12;
              v51 = 2112;
              v52 = v30;
              v53 = 2112;
              v54 = supportedTypeIdentifiers;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SUIOpenInAppActivity: didn't find a matching document proxy for url:%@ documentProxy.URL:%@ supportedTypeIdentifiers:%@", buf, 0x20u);
            }

            itemsCopy = v38;
            self = selfCopy;
            v8 = v35;
            v7 = v36;
            v9 = &OBJC_IVAR___SharingDaemon__collaborationUserDefaultsServer;
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [itemsCopy countByEnumeratingWithState:&v45 objects:v56 count:16];
      v32 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_27:

  return v32;
}

- (id)activityTitle
{
  sub_100008A18();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1008EFBD0;
}

- (void)performActivity
{
  sub_100008A18();
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end