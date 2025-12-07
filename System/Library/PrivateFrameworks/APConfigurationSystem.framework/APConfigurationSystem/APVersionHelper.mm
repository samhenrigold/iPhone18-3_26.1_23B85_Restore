@interface APVersionHelper
+ (id)versionNumberFromJSONFileAtPath:(id)path;
- (APVersionHelper)initWithDatasource:(id)datasource;
- (id)_versionInDirectoryWithURLs:(id)ls;
- (int64_t)_getVersionForNodesAtDirectoryPath:(id)path;
- (int64_t)systemVersion;
@end

@implementation APVersionHelper

+ (id)versionNumberFromJSONFileAtPath:(id)path
{
  v4 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, path);
  if (v4)
  {
    v5 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v3, v4, 0, 0);
    v7 = v5;
    if (v5)
    {
      v8 = objc_msgSend_objectForKey_(v5, v6, @"version");
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = v9;
      }

      else
      {
        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_1CA1CE000, v11, OS_LOG_TYPE_ERROR, "Error Unable to get version from bundle.", v13, 2u);
        }

        v10 = 0;
      }
    }

    else
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_1CA1CE000, v9, OS_LOG_TYPE_ERROR, "Error Unable to get dictionary from JSON.", v14, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_ERROR, "Error getting data for JSON", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (APVersionHelper)initWithDatasource:(id)datasource
{
  datasourceCopy = datasource;
  v9.receiver = self;
  v9.super_class = APVersionHelper;
  v6 = [(APVersionHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datasource, datasource);
  }

  return v7;
}

- (int64_t)systemVersion
{
  v4 = objc_msgSend_configSystemDirectoryPath(APConfigurationMediator, a2, v2);
  VersionForNodesAtDirectoryPath = objc_msgSend__getVersionForNodesAtDirectoryPath_(self, v5, v4);

  return VersionForNodesAtDirectoryPath;
}

- (int64_t)_getVersionForNodesAtDirectoryPath:(id)path
{
  v21[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v5, pathCopy);
  if (v6)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3042000000;
    v19 = sub_1CA1D56D4;
    v20 = sub_1CA1D56E0;
    v21[0] = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1CA1D56E8;
    v12[3] = &unk_1E8368CC0;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = &buf;
    v7 = MEMORY[0x1CCA9B7D0](v12);
    objc_storeWeak((*(&buf + 1) + 40), v7);
    (v7)[2](v7, v6);
    v8 = v14[3];

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v21);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = objc_opt_class();
      v10 = *(&buf + 4);
      _os_log_impl(&dword_1CA1CE000, v9, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Unable to create URL from directory path.", &buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_versionInDirectoryWithURLs:(id)ls
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  lsCopy = ls;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(lsCopy, v4, &v19, v23, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(lsCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_msgSend_pathExtension(v11, v6, v7, v19);
        isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"json");

        if (isEqualToString)
        {
          v16 = objc_msgSend_path(v11, v6, v7);
          v15 = objc_msgSend_versionNumberFromJSONFileAtPath_(APVersionHelper, v17, v16);

          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(lsCopy, v6, &v19, v23, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end