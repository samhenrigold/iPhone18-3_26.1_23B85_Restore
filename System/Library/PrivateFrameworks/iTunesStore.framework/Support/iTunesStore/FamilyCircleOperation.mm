@interface FamilyCircleOperation
- (id)_cachePath;
- (id)_cachedFamilyCircleWithAccountIdentifier:(id)identifier;
- (id)_familyCircleForDictionary:(id)dictionary;
- (void)_writeCacheWithFamilyCircle:(id)circle accountIdentifier:(id)identifier;
- (void)dealloc;
- (void)run;
@end

@implementation FamilyCircleOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FamilyCircleOperation;
  [(FamilyCircleOperation *)&v3 dealloc];
}

- (void)run
{
  v33 = 0;
  v3 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_36;
  }

  v4 = v3;
  v5 = [SSURLBagContext contextWithBagType:0];
  v6 = SSHTTPHeaderUserAgent;
  [(SSURLBagContext *)v5 setValue:self->_userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v7 = [(FamilyCircleOperation *)self loadedURLBagWithContext:v5 returningError:&v33];
  if (!v7)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v34 = 138412290;
      v35 = v19;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Couldn't load bag to get family-info url", &v34, 12);
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithCString:v20 encoding:4];
        free(v21);
        v31 = v22;
        SSFileLog();
      }
    }

    goto LABEL_23;
  }

  v8 = +[NSURL URLWithString:](NSURL, "URLWithString:", [v7 valueForKey:@"family-info"]);
  v9 = v8;
  if (self->_fetchITunesAccountNames)
  {
    v9 = [(NSURL *)v8 URLByAppendingQueryParameter:@"fetchAccountNames" value:@"true"];
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setClientAuditTokenData:{-[FamilyCircleOperation clientAuditTokenData](self, "clientAuditTokenData")}];
  [v10 setURL:v9];
  [v10 setCachePolicy:1];
  [v10 setValue:-[FamilyCircleOperation userAgent](self forHTTPHeaderField:{"userAgent"), v6}];
  v11 = [[SSMutableAuthenticationContext alloc] initWithAccount:v4];
  [v11 setPromptStyle:{-[FamilyCircleOperation authenticationPromptStyle](self, "authenticationPromptStyle")}];
  v12 = objc_alloc_init(ISStoreURLOperation);
  [v12 setAuthenticationContext:v11];
  [v12 setRequestProperties:v10];
  [v12 setDataProvider:{+[ISProtocolDataProvider provider](ISProtocolDataProvider, "provider")}];
  if (-[FamilyCircleOperation runSubOperation:returningError:](self, "runSubOperation:returningError:", v12, &v33) && (v13 = [objc_msgSend(v12 "dataProvider")]) != 0)
  {
    v14 = [(FamilyCircleOperation *)self _familyCircleForDictionary:v13];
    -[FamilyCircleOperation _writeCacheWithFamilyCircle:accountIdentifier:](self, "_writeCacheWithFamilyCircle:accountIdentifier:", v14, [v4 uniqueIdentifier]);
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_23:
    v14 = -[FamilyCircleOperation _cachedFamilyCircleWithAccountIdentifier:](self, "_cachedFamilyCircleWithAccountIdentifier:", [v4 uniqueIdentifier]);
    if (v14)
    {
      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog2;
      }

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v34 = 138412546;
        v35 = v27;
        v36 = 2112;
        v37 = v33;
        LODWORD(v32) = 22;
        v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Using cached family after error: %@", &v34, v32);
        if (v28)
        {
          v29 = v28;
          v30 = [NSString stringWithCString:v28 encoding:4];
          free(v29);
          v31 = v30;
          SSFileLog();
        }
      }

      v33 = 0;
    }
  }

LABEL_36:
  [(FamilyCircleOperation *)self setError:v33, v31];
  [(FamilyCircleOperation *)self setSuccess:v14 != 0];
  self->_familyCircle = v14;
}

- (id)_cachedFamilyCircleWithAccountIdentifier:(id)identifier
{
  _cachePath = [(FamilyCircleOperation *)self _cachePath];
  if (_cachePath && (v5 = [[NSData alloc] initWithContentsOfFile:_cachePath]) != 0)
  {
    v6 = v5;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (v8 = [v7 objectForKey:@"account"], v9 = objc_msgSend(v7, "objectForKey:", @"circle"), v10 = objc_msgSend(v7, "objectForKey:", @"timestamp"), objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v10];
      v12 = v11;
      v13 = [v8 isEqualToNumber:identifier];
      v14 = 0;
      if (v13 && v12 > 2.22044605e-16 && v12 < 604800.0)
      {
        v14 = [[SSFamilyCircle alloc] initWithCacheRepresentation:v9];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_cachePath
{
  v2 = [[NSArray alloc] initWithObjects:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject"), @"com.apple.itunesstored", @"JFamilyCircle.plist", 0}];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

- (id)_familyCircleForDictionary:(id)dictionary
{
  v36 = +[NSMutableArray array];
  dictionaryCopy = dictionary;
  v4 = [dictionary objectForKey:@"family"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"members"];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      v34 = *v44;
      v35 = v5;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 objectForKey:@"ITunesPreferredDsid"];
            if (objc_opt_respondsToSelector())
            {
              v12 = [v10 objectForKey:@"ICloudDsid"];
              if (objc_opt_respondsToSelector())
              {
                v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 longLongValue]);
              }

              else
              {
                v13 = 0;
              }

              v14 = [v10 objectForKey:@"firstName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = 0;
              }

              v15 = [v10 objectForKey:@"lastName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v15 = 0;
              }

              v16 = [v10 objectForKey:@"accountName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = 0;
              }

              v17 = [v10 objectForKey:@"sharingPurchases"];
              v18 = objc_alloc_init(SSFamilyMember);
              [v18 setITunesIdentifier:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v11, "longLongValue"))}];
              [v18 setFirstName:v14];
              [v18 setLastName:v15];
              [v18 setICloudAccountName:v16];
              [v18 setICloudIdentifier:v13];
              [v18 setSharingPurchases:{objc_msgSend(v17, "BOOLValue")}];
              [v36 addObject:v18];

              v8 = v34;
              v5 = v35;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }
  }

  v19 = +[NSMutableArray array];
  v20 = [dictionaryCopy objectForKey:@"iTunesAccountNames"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }
  }

  if (![v36 count])
  {
    return 0;
  }

  v26 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  ISWeakLinkerLoadLibrary();
  v27 = objc_alloc_init(ACAccountStore);
  v28 = [objc_msgSend(v27 "aa_primaryAppleAccount")];

  firstObject = 0;
  if (v26 && v28)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10009B0FC;
    v38[3] = &unk_100327430;
    v38[4] = v28;
    v38[5] = v26;
    firstObject = [objc_msgSend(v36 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v38)), "firstObject"}];
  }

  if (v26 && !firstObject)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10009B160;
    v37[3] = &unk_100327458;
    v37[4] = v26;
    v30 = [v36 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v37)}];
    if ([v30 count] == 1)
    {
      firstObject = [v30 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  [firstObject setMe:1];
  [v36 sortUsingComparator:&stru_100327498];
  v31 = objc_alloc_init(SSFamilyCircle);
  [v31 setITunesAccountNames:v19];
  [v31 setFamilyMembers:v36];
  return v31;
}

- (void)_writeCacheWithFamilyCircle:(id)circle accountIdentifier:(id)identifier
{
  newCacheRepresentation = [circle newCacheRepresentation];
  if (newCacheRepresentation)
  {
    _cachePath = [(FamilyCircleOperation *)self _cachePath];
    if (_cachePath)
    {
      v7 = _cachePath;
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:identifier forKey:@"account"];
      [v8 setObject:newCacheRepresentation forKey:@"circle"];
      [v8 setObject:+[NSDate date](NSDate forKey:{"date"), @"timestamp"}];
      v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];
      if (v9)
      {
        [(NSData *)v9 writeToFile:v7 options:1 error:0];
      }
    }
  }
}

@end