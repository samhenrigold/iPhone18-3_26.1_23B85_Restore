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
  if (qword_1002749A0 != -1)
  {
    sub_1001BD830();
  }

  v3 = qword_1002749A8;

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
  dataFile = [(BDSBookWidgetDataFile *)self dataFile];
  v12 = 0;
  v3 = [dataFile load:&v12];
  v4 = v12;

  if (v4)
  {
    v6 = sub_10000DE28(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD844();
    }

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v6 = sub_10000DE28(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Didn't find current widget data file, starting fresh.", buf, 2u);
    }

    v4 = 0;
    goto LABEL_4;
  }

  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v11];
  v4 = v11;
  v9 = sub_10000DE28(v4);
  v6 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD8AC();
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loading %lu widget datas read from disk: %@", buf, 0x16u);
  }

LABEL_5:

  return v7;
}

- (void)save:(id)save
{
  saveCopy = save;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:saveCopy forKey:NSKeyedArchiveRootObjectKey];

  encodedData = [v5 encodedData];
  dataFile = [(BDSBookWidgetDataFile *)self dataFile];
  v19 = 0;
  v8 = [dataFile save:encodedData error:&v19];
  v9 = v19;

  v11 = sub_10000DE28(v10);
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully updated current widget data file.", buf, 2u);
    }

LABEL_10:

    v15 = v9;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD914();
  }

  dataFile2 = [(BDSBookWidgetDataFile *)self dataFile];
  v17 = v9;
  v14 = [dataFile2 remove:&v17];
  v15 = v17;

  if ((v14 & 1) == 0)
  {
    v12 = sub_10000DE28(v16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD97C();
    }

    v9 = v15;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_1002749B8 != -1)
  {
    sub_1001BD9E4();
  }

  v3 = qword_1002749B0;

  return v3;
}

@end