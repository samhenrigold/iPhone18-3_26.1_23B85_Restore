@interface ASDTPMActionFileReader
- (ASDTPMActionFileReader)initWithConfig:(id)config forSequencer:(id)sequencer;
- (int)action;
- (void)action;
@end

@implementation ASDTPMActionFileReader

- (ASDTPMActionFileReader)initWithConfig:(id)config forSequencer:(id)sequencer
{
  v46 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v35.receiver = self;
  v35.super_class = ASDTPMActionFileReader;
  v7 = [(ASDTPMAction *)&v35 initWithConfig:configCopy forSequencer:sequencer];
  if (!v7)
  {
    goto LABEL_5;
  }

  asdtFilePath = [configCopy asdtFilePath];
  [(ASDTPMActionFileReader *)v7 setFilePath:asdtFilePath];

  filePath = [(ASDTPMActionFileReader *)v7 filePath];

  if (!filePath)
  {
    asdtBundleClass = [configCopy asdtBundleClass];
    asdtBundlePath = [configCopy asdtBundlePath];
    asdtBundleResource = [configCopy asdtBundleResource];
    asdtBundleExtension = [configCopy asdtBundleExtension];
    asdtBundleSubdir = [configCopy asdtBundleSubdir];
    v21 = asdtBundleSubdir;
    if (asdtBundleResource && asdtBundleClass | asdtBundlePath)
    {
      if (asdtBundleClass)
      {
        [MEMORY[0x277CCA8D8] bundleForClass:asdtBundleClass];
      }

      else
      {
        [MEMORY[0x277CCA8D8] bundleWithPath:asdtBundlePath];
      }
      v22 = ;
      v24 = v22;
      if (v22)
      {
        if (v21)
        {
          [v22 pathForResource:asdtBundleResource ofType:asdtBundleExtension inDirectory:v21];
        }

        else
        {
          [v22 pathForResource:asdtBundleResource ofType:asdtBundleExtension];
        }
        v27 = ;
        [(ASDTPMActionFileReader *)v7 setFilePath:v27];

        filePath2 = [(ASDTPMActionFileReader *)v7 filePath];

        if (filePath2)
        {

          goto LABEL_3;
        }

        v25 = ASDTBaseLogType(v29, v30);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          name = [(ASDTPMDevice *)v7 name];
          bundlePath = [v24 bundlePath];
          *buf = 138413314;
          v37 = name;
          v38 = 2112;
          v39 = asdtBundleResource;
          v40 = 2112;
          v41 = asdtBundleExtension;
          v42 = 2112;
          v43 = v21;
          v44 = 2112;
          v45 = bundlePath;
          _os_log_error_impl(&dword_241659000, v25, OS_LOG_TYPE_ERROR, "%@: Could not generate path for bundle resource '%@', type '%@', subdir '%@'. Bundle path: %@", buf, 0x34u);
        }
      }

      else
      {
        v25 = ASDTBaseLogType(0, v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          name2 = [(ASDTPMDevice *)v7 name];
          v26 = asdtBundlePath;
          if (asdtBundleClass)
          {
            v26 = NSStringFromClass(asdtBundleClass);
          }

          *buf = 138412546;
          v37 = name2;
          v38 = 2112;
          v39 = v26;
          _os_log_error_impl(&dword_241659000, v25, OS_LOG_TYPE_ERROR, "%@: Bundle not found for %@", buf, 0x16u);
          if (asdtBundleClass)
          {
          }
        }
      }
    }

    else
    {
      v24 = ASDTBaseLogType(asdtBundleSubdir, v20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ASDTPMActionFileReader initWithConfig:v7 forSequencer:?];
      }
    }

LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

LABEL_3:
  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  [(ASDTPMActionFileReader *)v7 setPropertyAddress:asdtPropertyAddress];

  propertyAddress = [(ASDTPMActionFileReader *)v7 propertyAddress];

  if (!propertyAddress)
  {
    asdtBundlePath = ASDTBaseLogType(v12, v13);
    if (os_log_type_enabled(asdtBundlePath, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionFileReader initWithConfig:v7 forSequencer:?];
    }

    goto LABEL_31;
  }

  -[ASDTPMActionFileReader setPropertyDataType:](v7, "setPropertyDataType:", [configCopy asdtPropertyIsPList]);
LABEL_5:
  v14 = v7;
LABEL_32:

  return v14;
}

- (int)action
{
  v3 = MEMORY[0x277CBEA90];
  filePath = [(ASDTPMActionFileReader *)self filePath];
  v25 = 0;
  v5 = [v3 dataWithContentsOfFile:filePath options:2 error:&v25];
  v6 = v25;

  if (v5)
  {
    v9 = [(ASDTPMActionFileReader *)self convert:v5];
    v24 = 0;
    if ([(ASDTPMActionFileReader *)self propertyDataType]== 1886155636)
    {
      v24 = v9;
      v10 = 8;
      bytes = &v24;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v9;
        v15 = v9;
        bytes = [v15 bytes];
        v10 = [v15 length];
      }

      else
      {
        bytes = 0;
        v10 = 0;
      }
    }

    propertyAddress = [(ASDTPMActionFileReader *)self propertyAddress];
    audioObjectPropertyAddress = [propertyAddress audioObjectPropertyAddress];
    LODWORD(v23) = v17;

    v18 = [(ASDTPMDevice *)self parentSequencer:audioObjectPropertyAddress];
    parentDevice = [v18 parentDevice];
    v20 = [parentDevice setProperty:&audioObjectPropertyAddress withQualifierSize:0 qualifierData:0 dataSize:v10 andData:bytes forClient:0];

    if (v20)
    {
      code = 0;
    }

    else
    {
      code = 2003329396;
    }
  }

  else
  {
    v12 = ASDTBaseLogType(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASDTPMActionFileReader *)self action];
    }

    code = [v6 code];
  }

  return code;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.2(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x34u);
}

- (void)action
{
  name = [self name];
  filePath = [self filePath];
  v11 = [a2 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end