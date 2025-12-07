@interface BDSBookWidgetDataFile
+ (NSURL)defaultDataURL;
+ (id)sharedInstance;
- (BDSBookWidgetDataFile)init;
- (id)load;
- (void)save:(id)save;
@end

@implementation BDSBookWidgetDataFile

+ (id)sharedInstance
{
  if (qword_1EE2B0568 != -1)
  {
    sub_1E4706F34();
  }

  v3 = qword_1EE2B0510;

  return v3;
}

- (BDSBookWidgetDataFile)init
{
  v7.receiver = self;
  v7.super_class = BDSBookWidgetDataFile;
  v2 = [(BDSBookWidgetDataFile *)&v7 init];
  if (v2)
  {
    v3 = +[BDSBookWidgetDataFile defaultDataURL];
    v4 = [[BDSSharedDataFile alloc] initWithURL:v3];
    dataFile = v2->_dataFile;
    v2->_dataFile = v4;
  }

  return v2;
}

- (id)load
{
  v17 = *MEMORY[0x1E69E9840];
  dataFile = [(BDSBookWidgetDataFile *)self dataFile];
  v12 = 0;
  v3 = [dataFile load:&v12];
  v4 = v12;

  if (v4)
  {
    v6 = BDSWidgetLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706F48();
    }

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v6 = BDSWidgetLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "Didn't find current widget data file, starting fresh.", buf, 2u);
    }

    v4 = 0;
    goto LABEL_4;
  }

  v11 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v11];
  v4 = v11;
  v9 = BDSWidgetLog(v4);
  v6 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706FB0();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 count];
    *buf = 134218242;
    v14 = v10;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "Loading %lu widget datas read from disk: %@", buf, 0x16u);
  }

LABEL_5:

  return v7;
}

- (void)save:(id)save
{
  v4 = MEMORY[0x1E696ACC8];
  saveCopy = save;
  v6 = [[v4 alloc] initRequiringSecureCoding:1];
  [v6 setOutputFormat:200];
  [v6 encodeObject:saveCopy forKey:*MEMORY[0x1E696A508]];

  encodedData = [v6 encodedData];
  dataFile = [(BDSBookWidgetDataFile *)self dataFile];
  v20 = 0;
  v9 = [dataFile save:encodedData error:&v20];
  v10 = v20;

  v12 = BDSWidgetLog(v11);
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "Successfully updated current widget data file.", buf, 2u);
    }

LABEL_10:

    v16 = v10;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707018();
  }

  dataFile2 = [(BDSBookWidgetDataFile *)self dataFile];
  v18 = v10;
  v15 = [dataFile2 remove:&v18];
  v16 = v18;

  if ((v15 & 1) == 0)
  {
    v13 = BDSWidgetLog(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707080();
    }

    v10 = v16;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_1EE2AEC20 != -1)
  {
    sub_1E47070E8();
  }

  v3 = qword_1ECF75DF0;

  return v3;
}

@end