@interface MSDXCTestSpawnWrapper
+ (id)sharedInstance;
- (BOOL)executeTestScriptOfIdentifier:(id)identifier;
- (id)_parseTestScriptsFromXCTSpawnResultDictionary:(id)dictionary;
- (id)_testProductsPath;
- (id)listAllTestScripts;
@end

@implementation MSDXCTestSpawnWrapper

+ (id)sharedInstance
{
  if (qword_10005BF70 != -1)
  {
    sub_100031338();
  }

  v3 = qword_10005BF68;

  return v3;
}

- (id)listAllTestScripts
{
  _testProductsPath = [(MSDXCTestSpawnWrapper *)self _testProductsPath];
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"/var/tmp/%@.json", uUIDString];

  v8 = sub_100021268(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v53 = _testProductsPath;
    v54 = 2114;
    v55 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Listing all test scripts from input: %{public}@ output: %{public}@", buf, 0x16u);
  }

  v9 = [NSURL fileURLWithPath:_testProductsPath];
  v51 = 0;
  v50 = 0;
  v10 = [v9 getResourceValue:&v51 forKey:NSURLContentModificationDateKey error:&v50];
  v11 = v51;
  v12 = v50;

  if ((v10 & 1) == 0)
  {
    v14 = sub_100021268(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003134C(v12);
    }
  }

  testScripts = [(MSDXCTestSpawnWrapper *)self testScripts];
  if (testScripts)
  {
    v16 = testScripts;
    testScriptsLastModified = [(MSDXCTestSpawnWrapper *)self testScriptsLastModified];
    v18 = [testScriptsLastModified isEqualToDate:v11];

    if (v18)
    {
      v20 = sub_100021268(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No change in test scripts. Returning cached results!", buf, 2u);
      }

      testScripts2 = [(MSDXCTestSpawnWrapper *)self testScripts];
      goto LABEL_23;
    }
  }

  v22 = [NSURL fileURLWithPath:@"/usr/local/bin/xctspawn"];
  v49 = v12;
  v23 = [v22 checkResourceIsReachableAndReturnError:&v49];
  v24 = v49;

  if ((v23 & 1) == 0)
  {
    v38 = sub_100021268(v25);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000313D0(v24);
    }

    goto LABEL_22;
  }

  v26 = objc_alloc_init(NSTask);
  [v26 setLaunchPath:@"/usr/local/bin/xctspawn"];
  v27 = [NSArray arrayWithObjects:_testProductsPath, @"--enumerate-tests", @"--test-enumeration-format", @"json", @"--test-enumeration-output-path", v6, 0];
  [v26 setArguments:v27];

  [v26 setCurrentDirectoryPath:@"/var/tmp"];
  v28 = +[NSPipe pipe];
  v29 = sub_100021268([v26 setStandardOutput:v28]);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    launchPath = [v26 launchPath];
    arguments = [v26 arguments];
    *buf = 138543618;
    v53 = launchPath;
    v54 = 2114;
    v55 = arguments;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with arguments: %{public}@", buf, 0x16u);
  }

  [v26 launch];
  [v26 waitUntilExit];
  terminationStatus = [v26 terminationStatus];
  if (terminationStatus)
  {
    v33 = terminationStatus;
    fileHandleForReading = [v28 fileHandleForReading];
    readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];

    v36 = [[NSString alloc] initWithData:readDataToEndOfFile encoding:4];
    v37 = sub_100021268(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100031454(v36, v33, v37);
    }

LABEL_22:
    testScripts2 = 0;
    v12 = v24;
    goto LABEL_23;
  }

  v48 = v24;
  v40 = [NSData dataWithContentsOfFile:v6 options:0 error:&v48];
  v41 = v48;

  if (v40)
  {
    v47 = v41;
    v43 = [NSJSONSerialization JSONObjectWithData:v40 options:0 error:&v47];
    v12 = v47;

    if (v43)
    {
      v45 = [(MSDXCTestSpawnWrapper *)self _parseTestScriptsFromXCTSpawnResultDictionary:v43];
      [(MSDXCTestSpawnWrapper *)self setTestScripts:v45];

      [(MSDXCTestSpawnWrapper *)self setTestScriptsLastModified:v11];
      testScripts2 = [(MSDXCTestSpawnWrapper *)self testScripts];
    }

    else
    {
      v46 = sub_100021268(v44);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1000314DC(v12);
      }

      testScripts2 = 0;
    }
  }

  else
  {
    v43 = sub_100021268(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_100031560(v41);
    }

    testScripts2 = 0;
    v12 = v41;
  }

LABEL_23:

  return testScripts2;
}

- (BOOL)executeTestScriptOfIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _testProductsPath = [(MSDXCTestSpawnWrapper *)self _testProductsPath];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v8 = [NSString stringWithFormat:@"/var/tmp/%@.xcresult", uUIDString];

  if (os_variant_has_internal_content())
  {
    v9 = +[MSDTestPreferences sharedInstance];
    pressDemoTestTarget = [v9 pressDemoTestTarget];

    if (pressDemoTestTarget)
    {
      v11 = pressDemoTestTarget;
    }

    else
    {
      v11 = @"PressDemoScripts";
    }
  }

  else
  {
    v11 = @"PressDemoScripts";
  }

  identifierCopy = [NSString stringWithFormat:@"%@/%@", v11, identifierCopy];
  v13 = sub_100021268(identifierCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Exexcuting test script of identifier %{public}@", buf, 0xCu);
  }

  v14 = objc_alloc_init(NSTask);
  [v14 setLaunchPath:@"/usr/local/bin/xctspawn"];
  v15 = [NSArray arrayWithObjects:_testProductsPath, @"--result-bundle-path", v8, @"--only-testing", identifierCopy, 0];
  [v14 setArguments:v15];

  v16 = sub_100021268([v14 setCurrentDirectoryPath:@"/var/tmp"]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    launchPath = [v14 launchPath];
    arguments = [v14 arguments];
    *buf = 138543618;
    v24 = launchPath;
    v25 = 2114;
    v26 = arguments;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with arguments: %{public}@", buf, 0x16u);
  }

  [v14 launch];
  [v14 waitUntilExit];
  terminationStatus = [v14 terminationStatus];
  v20 = terminationStatus;
  if (terminationStatus)
  {
    v21 = sub_100021268(terminationStatus);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000315E4(v20, v21);
    }
  }

  return v20 == 0;
}

- (id)_testProductsPath
{
  v2 = +[MSDTestPreferences sharedInstance];
  pressDemoXCTestProductsPath = [v2 pressDemoXCTestProductsPath];

  if (pressDemoXCTestProductsPath)
  {
    v4 = pressDemoXCTestProductsPath;
  }

  else
  {
    v4 = @"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts";
  }

  return v4;
}

- (id)_parseTestScriptsFromXCTSpawnResultDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"values"];
  v4 = [v3 objectAtIndexedSubscript:0];

  v6 = sub_100021268(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 objectForKeyedSubscript:@"name"];
      *buf = 138543362;
      v52 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found test plan: %{public}@", buf, 0xCu);
    }

    v9 = [v4 objectForKeyedSubscript:@"children"];
    v7 = [v9 objectAtIndexedSubscript:0];

    v11 = sub_100021268(v10);
    v12 = v11;
    if (v7)
    {
      v36 = v4;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 objectForKeyedSubscript:@"name"];
        *buf = 138543362;
        v52 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "> Found test target: %{public}@", buf, 0xCu);
      }

      v35 = v7;
      v14 = [v7 objectForKeyedSubscript:@"children"];
      v39 = [[NSMutableArray alloc] initWithCapacity:0];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = v14;
      v40 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v40)
      {
        v38 = *v48;
        do
        {
          v15 = 0;
          do
          {
            if (*v48 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v42 = v15;
            v16 = *(*(&v47 + 1) + 8 * v15);
            v17 = [v16 objectForKeyedSubscript:@"name"];
            v18 = sub_100021268(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v52 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, ">> Found test case: %{public}@", buf, 0xCu);
            }

            v41 = v17;

            v19 = [v16 objectForKeyedSubscript:@"children"];
            v20 = [[NSMutableArray alloc] initWithCapacity:0];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v44;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v44 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v43 + 1) + 8 * i);
                  v27 = [v26 objectForKeyedSubscript:@"name"];
                  v28 = [v26 objectForKeyedSubscript:@"disabled"];
                  bOOLValue = [v28 BOOLValue];

                  v31 = sub_100021268(v30);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v52 = v27;
                    v53 = 1024;
                    v54 = bOOLValue;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, ">>> Found test method: %{public}@  Disabled: %{BOOL}d", buf, 0x12u);
                  }

                  if ((bOOLValue & 1) == 0)
                  {
                    [v20 addObject:v27];
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v43 objects:v55 count:16];
              }

              while (v23);
            }

            v32 = [[MSDKPeerDemoTestScript alloc] initWithName:v41 andMethods:v20];
            [v39 addObject:v32];

            v15 = v42 + 1;
          }

          while ((v42 + 1) != v40);
          v40 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v40);
      }

      v12 = obj;

      v33 = [NSArray arrayWithArray:v39];

      v7 = v35;
      v4 = v36;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003165C(v12);
      }

      v33 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000316A0(v7);
    }

    v33 = 0;
  }

  return v33;
}

@end