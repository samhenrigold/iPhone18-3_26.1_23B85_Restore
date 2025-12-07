@interface MBManateePlugin
- (id)startingBackupWithEngine:(id)engine;
@end

@implementation MBManateePlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (![engineCopy backsUpPrimaryAccount])
  {
    v6 = 0;
    goto LABEL_80;
  }

  v87 = 0;
  if (![engineCopy isCloudKitEngine])
  {
    v56 = 0;
    goto LABEL_7;
  }

  v86 = 0;
  v4 = [engineCopy fetchDeviceToDeviceEncryptionSupportedByAccount:&v87 error:&v86];
  v5 = v86;
  if (v4)
  {
    v56 = v5;
LABEL_7:
    domainManager = [engineCopy domainManager];
    allDomains = [domainManager allDomains];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = allDomains;
    v59 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
    if (v59)
    {
      v58 = *v83;
      v9 = &DLContentsOfDirectory_ptr;
      v61 = engineCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v83 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v82 + 1) + 8 * v10);
          relativePathsToBackupToDriveAndStandardAccount = [v11 relativePathsToBackupToDriveAndStandardAccount];

          if (relativePathsToBackupToDriveAndStandardAccount)
          {
            v60 = v10;
            relativePathsToBackupToDriveAndStandardAccount2 = [v11 relativePathsToBackupToDriveAndStandardAccount];
            v14 = [relativePathsToBackupToDriveAndStandardAccount2 mutableCopy];

            relativePathsToBackupAndRestore = [v11 relativePathsToBackupAndRestore];

            if (relativePathsToBackupAndRestore)
            {
              relativePathsToBackupAndRestore2 = [v11 relativePathsToBackupAndRestore];
              v17 = [relativePathsToBackupAndRestore2 mutableCopy];
            }

            else
            {
              v17 = objc_opt_new();
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v18 = v14;
            v19 = [v18 countByEnumeratingWithState:&v78 objects:v95 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v79;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v79 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v78 + 1) + 8 * i);
                  v24 = [v11 standardizedRelativePathFor:v23];
                  if ([v17 containsObject:v24])
                  {
                    v25 = MBGetDefaultLog();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v91 = v23;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Removing manatee path: %@", buf, 0xCu);
                      _MBLog(@"I ", "Removing manatee path: %@", v23);
                    }

                    [v17 removeObject:v24];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v78 objects:v95 count:16];
              }

              while (v20);
            }

            engineCopy = v61;
            if ([v61 isCloudKitEngine])
            {
              if (qword_10011E4A0 != -1)
              {
                sub_10009F99C();
              }

              v26 = qword_10011E498;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v27 = [v26 countByEnumeratingWithState:&v74 objects:v94 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v75;
                v62 = *v75;
                v63 = v26;
                do
                {
                  v30 = 0;
                  v64 = v28;
                  do
                  {
                    if (*v75 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v65 = v30;
                    v31 = *(*(&v74 + 1) + 8 * v30);
                    rootPath = [v11 rootPath];
                    v33 = [v31 hasPrefix:rootPath];

                    if (v33)
                    {
                      defaultManager = [v9[506] defaultManager];
                      v35 = [defaultManager fileExistsAtPath:v31];

                      v36 = MBGetDefaultLog();
                      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
                      if (v35)
                      {
                        if (v37)
                        {
                          *buf = 138412546;
                          v91 = v11;
                          v92 = 2112;
                          v93 = v31;
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Marker found for %@ at %@", buf, 0x16u);
                          _MBLog(@"I ", "Marker found for %@ at %@", v11, v31);
                        }

                        v36 = [v26 objectForKeyedSubscript:v31];
                        v70 = 0u;
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v38 = [v36 countByEnumeratingWithState:&v70 objects:v89 count:16];
                        if (v38)
                        {
                          v39 = v38;
                          v40 = *v71;
                          do
                          {
                            for (j = 0; j != v39; j = j + 1)
                            {
                              if (*v71 != v40)
                              {
                                objc_enumerationMutation(v36);
                              }

                              v42 = *(*(&v70 + 1) + 8 * j);
                              v43 = [v18 containsObject:v42];
                              v44 = MBGetDefaultLog();
                              v45 = v44;
                              if (v43)
                              {
                                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 138412290;
                                  v91 = v42;
                                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Adding manatee path (marker detected): %@", buf, 0xCu);
                                  _MBLog(@"I ", "Adding manatee path (marker detected): %@", v42);
                                }

                                v45 = [v11 standardizedRelativePathFor:v42];
                                [v17 addObject:v45];
                                [v18 removeObject:v45];
                              }

                              else if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 138412290;
                                v91 = v42;
                                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Domains plist does not contain path found in hardcoded manatee exclusion list: %@", buf, 0xCu);
                                _MBLog(@"E ", "Domains plist does not contain path found in hardcoded manatee exclusion list: %@", v42);
                              }
                            }

                            v39 = [v36 countByEnumeratingWithState:&v70 objects:v89 count:16];
                          }

                          while (v39);
                          v9 = &DLContentsOfDirectory_ptr;
                          v29 = v62;
                          v26 = v63;
                        }
                      }

                      else if (v37)
                      {
                        *buf = 138412546;
                        v91 = v11;
                        v92 = 2112;
                        v93 = v31;
                        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Marker not found for %@ at %@", buf, 0x16u);
                        _MBLog(@"I ", "Marker not found for %@ at %@", v11, v31);
                      }

                      v28 = v64;
                    }

                    v30 = v65 + 1;
                  }

                  while ((v65 + 1) != v28);
                  v28 = [v26 countByEnumeratingWithState:&v74 objects:v94 count:16];
                }

                while (v28);
              }

              engineCopy = v61;
            }

            if (([engineCopy isDeviceTransferEngine] & 1) != 0 || objc_msgSend(engineCopy, "isDriveEngine") && (objc_msgSend(engineCopy, "encrypted") & 1) != 0 || objc_msgSend(engineCopy, "isCloudKitEngine") && (v87 & 1) == 0)
            {
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v46 = v18;
              v47 = [v46 countByEnumeratingWithState:&v66 objects:v88 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v67;
                do
                {
                  for (k = 0; k != v48; k = k + 1)
                  {
                    if (*v67 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = *(*(&v66 + 1) + 8 * k);
                    v52 = MBGetDefaultLog();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v91 = v51;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Adding manatee path: %@", buf, 0xCu);
                      _MBLog(@"I ", "Adding manatee path: %@", v51);
                    }

                    v53 = [v11 standardizedRelativePathFor:v51];
                    [v17 addObject:v53];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v66 objects:v88 count:16];
                }

                while (v48);
              }

              engineCopy = v61;
            }

            [v11 setRelativePathsToBackupAndRestore:v17];

            v10 = v60;
          }

          v10 = v10 + 1;
        }

        while (v10 != v59);
        v59 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
      }

      while (v59);
    }

    v6 = 0;
    v54 = v56;
    goto LABEL_79;
  }

  v54 = v5;
  v6 = v54;
LABEL_79:

LABEL_80:

  return v6;
}

@end