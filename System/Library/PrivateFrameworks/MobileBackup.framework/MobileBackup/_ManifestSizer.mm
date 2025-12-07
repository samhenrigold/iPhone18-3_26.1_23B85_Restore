@interface _ManifestSizer
+ (id)_getDomainInfoForDomainName:(id)name cache:(id)cache restrictedDomains:(id)domains disabledDomains:(id)disabledDomains dependentDomains:(id)dependentDomains appManager:(id)manager;
+ (id)sizeDomainWithName:(id)name manager:(id)manager account:(id)account error:(id *)error;
+ (id)sizeDomainsWithManager:(id)manager account:(id)account error:(id *)error;
@end

@implementation _ManifestSizer

+ (id)_getDomainInfoForDomainName:(id)name cache:(id)cache restrictedDomains:(id)domains disabledDomains:(id)disabledDomains dependentDomains:(id)dependentDomains appManager:(id)manager
{
  nameCopy = name;
  cacheCopy = cache;
  domainsCopy = domains;
  disabledDomainsCopy = disabledDomains;
  dependentDomainsCopy = dependentDomains;
  managerCopy = manager;
  if (!disabledDomainsCopy)
  {
    __assert_rtn("+[_ManifestSizer _getDomainInfoForDomainName:cache:restrictedDomains:disabledDomains:dependentDomains:appManager:]", "MBCalculateQuota.m", 397, "disabledDomains");
  }

  v19 = managerCopy;
  v67 = 0;
  v20 = [cacheCopy sizeOfDomain:nameCopy error:&v67];
  v21 = v67;
  if (v21)
  {
    v22 = v21;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v70 = nameCopy;
      v71 = 2112;
      v72 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching size of domain %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=quota-calculation= Error fetching size of domain %@: %@", nameCopy, v22);
    }

LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v66 = 0;
  v24 = [cacheCopy sizeOfScannedDomain:nameCopy error:&v66];
  v25 = v66;
  if (v25)
  {
    v22 = v25;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v70 = nameCopy;
      v71 = 2112;
      v72 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching local size of domain: %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=quota-calculation= Error fetching local size of domain: %@: %@", nameCopy, v22);
    }

    goto LABEL_8;
  }

  v53 = v19;
  v55 = cacheCopy;
  v51 = disabledDomainsCopy;
  v52 = domainsCopy;
  v23 = +[MBDomainInfo domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:](MBDomainInfo, "domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:", nameCopy, 0, v20, v24, [disabledDomainsCopy containsObject:nameCopy] ^ 1, objc_msgSend(domainsCopy, "containsObject:", nameCopy));
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = dependentDomainsCopy;
  obj = dependentDomainsCopy;
  v28 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = v28;
  v30 = *v63;
  while (2)
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v63 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v62 + 1) + 8 * i);
      if (([nameCopy isEqualToString:v32] & 1) == 0)
      {
        v61 = 0;
        v33 = [v55 sizeOfDomain:v32 error:&v61];
        v34 = v61;
        if (v34)
        {
          v22 = v34;
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v70 = v32;
            v71 = 2112;
            v72 = v22;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching size of domain %@: %@", buf, 0x16u);
            _MBLog(@"E ", "=quota-calculation= Error fetching size of domain %@: %@", v32, v22);
          }
        }

        else
        {
          v60 = 0;
          v35 = [v55 sizeOfScannedDomain:v32 error:&v60];
          v22 = v60;
          v36 = MBGetDefaultLog();
          v37 = v36;
          if (!v22)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v70 = nameCopy;
              v71 = 2112;
              v72 = v32;
              v73 = 2048;
              v74 = v33;
              v75 = 2048;
              v76 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=quota-calculation= %@ adding dependentDomain %@ (%llu %llu)", buf, 0x2Au);
              _MBLog(@"I ", "=quota-calculation= %@ adding dependentDomain %@ (%llu %llu)", nameCopy, v32, v33, v35);
            }

            [v23 setRemoteSize:&v33[[v23 remoteSize]]];
            [v23 setLocalSize:&v35[[v23 localSize]]];
            continue;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v70 = v32;
            v71 = 2112;
            v72 = v22;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching local size of domain: %@: %@", buf, 0x16u);
            _MBLog(@"E ", "=quota-calculation= Error fetching local size of domain: %@: %@", v32, v22);
          }
        }

        cacheCopy = v55;
        disabledDomainsCopy = v51;
        domainsCopy = v52;
        dependentDomainsCopy = v50;
        v19 = v53;

        goto LABEL_8;
      }
    }

    v29 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_25:

  cacheCopy = v55;
  v19 = v53;
  if ([nameCopy isEqualToString:@"AppDomain-com.apple.iBooks"])
  {
    -[NSObject setRemoteSize:](v23, "setRemoteSize:", [v55 sizeOfDomain:@"BooksDomain" error:0] + -[NSObject remoteSize](v23, "remoteSize"));
  }

  if ([nameCopy isEqualToString:@"HealthDomain"])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v38 = MBGetHealthRelatedDomains();
    v39 = [v38 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v57;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v57 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v56 + 1) + 8 * j);
          if (([v43 isEqualToString:nameCopy] & 1) == 0)
          {
            v44 = [cacheCopy sizeOfDomain:v43 error:0];
            if (v44)
            {
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                remoteSize = [v23 remoteSize];
                remoteSize2 = [v23 remoteSize];
                *buf = 138413058;
                v70 = v43;
                v71 = 2048;
                v72 = remoteSize;
                v73 = 2048;
                v74 = v44;
                v75 = 2048;
                v76 = &v44[remoteSize2];
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=quota-calculation= Adding health-related domain %@ to HealthDomain size %llu + %llu = %llu", buf, 0x2Au);
                cacheCopy = v55;
                _MBLog(@"I ", "=quota-calculation= Adding health-related domain %@ to HealthDomain size %llu + %llu = %llu", v43, [v23 remoteSize], v44, &v44[[v23 remoteSize]]);
              }
            }

            [v23 setRemoteSize:&v44[[v23 remoteSize]]];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v40);
    }

    v19 = v53;
  }

  dependentDomainsCopy = v50;
  disabledDomainsCopy = v51;
  if ([MBDomain isAppName:nameCopy]&& ([MBDomain isLegacyPerAppPlaceholderName:nameCopy]& 1) == 0)
  {
    v48 = [MBDomain containerIDWithName:nameCopy];
    v49 = [v19 appWithIdentifier:v48];

    if (v49 && [v49 isSystemApp])
    {
      [v23 setSystemApp:1];
    }
  }

  v23 = v23;
  v22 = 0;
  v26 = v23;
  domainsCopy = v52;
LABEL_9:

  return v26;
}

+ (id)sizeDomainsWithManager:(id)manager account:(id)account error:(id *)error
{
  managerCopy = manager;
  accountCopy = account;
  v85 = [managerCopy openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v85)
  {
    v9 = [MBDomainManager alloc];
    persona = [accountCopy persona];
    v77 = [(MBDomainManager *)v9 initWithPersona:persona];

    v11 = [MBMobileInstallation alloc];
    v12 = [(MBMobileInstallation *)v11 initWithSafeHarborDir:kMBSafeHarborDir];
    v13 = [[MBAppManager alloc] initWithMobileInstallation:v12];
    persona2 = [accountCopy persona];
    v106 = 0;
    LOBYTE(persona) = [(MBAppManager *)v13 loadAppsWithPersona:persona2 safeHarbors:0 error:&v106];
    v15 = v106;

    if (persona)
    {
      v83 = [managerCopy allRestrictedDomainNames:v13 account:accountCopy];
      persona3 = [accountCopy persona];
      v17 = [(MBAppManager *)v13 allDisabledDomainNamesForPersona:persona3];

      v87 = v17;
      if (!v17)
      {
        __assert_rtn("+[_ManifestSizer sizeDomainsWithManager:account:error:]", "MBCalculateQuota.m", 486, "disabledDomains");
      }

      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_100090D78;
      v104[3] = &unk_1003BC450;
      v18 = objc_opt_new();
      v105 = v18;
      v19 = [v85 enumerateDomainNames:v104];
      v20 = MBGetDefaultLog();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to enumerate domain names: %{public}@", buf, 0xCu);
          _MBLog(@"E ", "=quota-calculation= Failed to enumerate domain names: %{public}@", v19);
        }

        v22 = 0;
      }

      else
      {
        v79 = accountCopy;
        v76 = managerCopy;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v18 count];
          *buf = 134217984;
          v112 = v25;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Fetched %lu domain names from the cache", buf, 0xCu);
          _MBLog(@"Df", "=quota-calculation= Fetched %lu domain names from the cache", [v18 count]);
        }

        v74 = v15;
        v75 = v12;

        v21 = objc_opt_new();
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        obj = v18;
        v86 = v21;
        v81 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
        if (v81)
        {
          v80 = *v101;
          do
          {
            for (i = 0; i != v81; i = i + 1)
            {
              if (*v101 != v80)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v100 + 1) + 8 * i);
              v28 = objc_autoreleasePoolPush();
              v29 = [MBDomain containerIDWithName:v27];
              v30 = [(MBAppManager *)v13 appWithIdentifier:v29];

              if (v30)
              {
                v82 = v28;
                v31 = v13;
                v32 = objc_alloc_init(NSMutableSet);
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                persona4 = [v79 persona];
                v34 = [MBCKSizingEngine domainsForApp:v30 persona:persona4];

                v35 = [v34 countByEnumeratingWithState:&v96 objects:v109 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v97;
                  do
                  {
                    for (j = 0; j != v36; j = j + 1)
                    {
                      if (*v97 != v37)
                      {
                        objc_enumerationMutation(v34);
                      }

                      name = [*(*(&v96 + 1) + 8 * j) name];
                      [v32 addObject:name];
                    }

                    v36 = [v34 countByEnumeratingWithState:&v96 objects:v109 count:16];
                  }

                  while (v36);
                }

                v13 = v31;
                v28 = v82;
              }

              else
              {
                v32 = 0;
              }

              v40 = [self _getDomainInfoForDomainName:v27 cache:v85 restrictedDomains:v83 disabledDomains:v87 dependentDomains:v32 appManager:v13];
              v41 = v40;
              if (v40)
              {
                if ([v40 size] || (+[MBDomain containerIDWithName:](MBDomain, "containerIDWithName:", v27), v42 = objc_claimAutoreleasedReturnValue(), -[MBAppManager appWithIdentifier:](v13, "appWithIdentifier:", v42), v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
                {
                  [v41 setEnabled:{objc_msgSend(v87, "containsObject:", v27) ^ 1}];
                  [v86 setObject:v41 forKeyedSubscript:v27];
                }
              }

              objc_autoreleasePoolPop(v28);
              v21 = v86;
            }

            v81 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
          }

          while (v81);
        }

        systemDomainsByName = [(MBDomainManager *)v77 systemDomainsByName];
        allValues = [systemDomainsByName allValues];

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v46 = allValues;
        v47 = [v46 countByEnumeratingWithState:&v92 objects:v108 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v93;
          do
          {
            for (k = 0; k != v48; k = k + 1)
            {
              if (*v93 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v92 + 1) + 8 * k);
              name2 = [v51 name];
              v53 = sub_10008EC54(name2);

              if ((v53 & 1) == 0)
              {
                name3 = [v51 name];
                v55 = [v21 objectForKeyedSubscript:name3];

                if (!v55)
                {
                  name4 = [v51 name];
                  v55 = [self _getDomainInfoForDomainName:name4 cache:v85 restrictedDomains:v83 disabledDomains:v87 dependentDomains:0 appManager:v13];

                  name5 = [v51 name];
                  [v55 setEnabled:{objc_msgSend(v87, "containsObject:", name5) ^ 1}];

                  name6 = [v51 name];
                  [v21 setObject:v55 forKeyedSubscript:name6];
                }
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v92 objects:v108 count:16];
          }

          while (v48);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        allContainers = [(MBAppManager *)v13 allContainers];
        v60 = [allContainers countByEnumeratingWithState:&v88 objects:v107 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v89;
          do
          {
            for (m = 0; m != v61; m = m + 1)
            {
              if (*v89 != v62)
              {
                objc_enumerationMutation(allContainers);
              }

              domain = [*(*(&v88 + 1) + 8 * m) domain];
              name7 = [domain name];
              v66 = sub_10008EC54(name7);

              if ((v66 & 1) == 0)
              {
                name8 = [domain name];
                v68 = [v21 objectForKeyedSubscript:name8];

                if (!v68)
                {
                  name9 = [domain name];
                  v68 = [self _getDomainInfoForDomainName:name9 cache:v85 restrictedDomains:v83 disabledDomains:v87 dependentDomains:0 appManager:v13];

                  name10 = [domain name];
                  v21 = v86;
                  [v68 setEnabled:{objc_msgSend(v87, "containsObject:", name10) ^ 1}];

                  name11 = [domain name];
                  [v86 setObject:v68 forKeyedSubscript:name11];
                }
              }
            }

            v61 = [allContainers countByEnumeratingWithState:&v88 objects:v107 count:16];
          }

          while (v61);
        }

        allValues2 = [v21 allValues];
        v22 = [allValues2 mutableCopy];

        [v22 sortUsingComparator:&stru_1003BCF08];
        v18 = 0;
        v12 = v75;
        managerCopy = v76;
        accountCopy = v79;
        v19 = 0;
        v15 = v74;
      }
    }

    else
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v112 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to load apps: %@", buf, 0xCu);
        _MBLog(@"E ", "=quota-calculation= Failed to load apps: %@", v15);
      }

      if (error)
      {
        v24 = v15;
        v22 = 0;
        *error = v15;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)sizeDomainWithName:(id)name manager:(id)manager account:(id)account error:(id *)error
{
  nameCopy = name;
  managerCopy = manager;
  accountCopy = account;
  v13 = [managerCopy openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v13)
  {
    v27 = nameCopy;
    v14 = [MBMobileInstallation alloc];
    v15 = [(MBMobileInstallation *)v14 initWithSafeHarborDir:kMBSafeHarborDir];
    v16 = [[MBAppManager alloc] initWithMobileInstallation:v15];
    persona = [accountCopy persona];
    v28 = 0;
    v18 = [(MBAppManager *)v16 loadAppsWithPersona:persona safeHarbors:0 error:&v28];
    v19 = v28;

    if (v18)
    {
      v20 = [managerCopy allRestrictedDomainNames:v16 account:accountCopy];
      persona2 = [accountCopy persona];
      v22 = [(MBAppManager *)v16 allDisabledDomainNamesForPersona:persona2];

      v23 = [self _getDomainInfoForDomainName:v27 cache:v13 restrictedDomains:v20 disabledDomains:v22 dependentDomains:0 appManager:v16];

      nameCopy = v27;
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to load apps: %@", buf, 0xCu);
        _MBLog(@"E ", "=quota-calculation= Failed to load apps: %@", v19);
      }

      nameCopy = v27;
      if (error)
      {
        v25 = v19;
        v23 = 0;
        *error = v19;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end