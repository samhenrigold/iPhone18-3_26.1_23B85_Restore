@interface BDSBookWidgetReadingHistoryDataFile
+ (BDSBookWidgetReadingHistoryDataFile)sharedInstance;
+ (NSURL)defaultDataURL;
- (BDSBookWidgetReadingHistoryDataFile)init;
- (id)load;
- (void)save:(id)save;
@end

@implementation BDSBookWidgetReadingHistoryDataFile

+ (BDSBookWidgetReadingHistoryDataFile)sharedInstance
{
  if (qword_1002748F0 != -1)
  {
    sub_1001BD54C();
  }

  v3 = qword_1002748F8;

  return v3;
}

- (BDSBookWidgetReadingHistoryDataFile)init
{
  v7.receiver = self;
  v7.super_class = BDSBookWidgetReadingHistoryDataFile;
  v2 = [(BDSBookWidgetReadingHistoryDataFile *)&v7 init];
  if (v2)
  {
    v3 = +[BDSBookWidgetReadingHistoryDataFile defaultDataURL];
    v4 = [[BDSSharedDataFile alloc] initWithURL:v3];
    dataFile = v2->_dataFile;
    v2->_dataFile = v4;
  }

  return v2;
}

- (id)load
{
  dataFile = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v12 = 0;
  v3 = [dataFile load:&v12];
  v4 = v12;

  if (v4)
  {
    v6 = sub_10000DE28(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD560();
    }

LABEL_4:
    v7 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    v6 = sub_10000DE28(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Didn't find widget reading history data file, starting fresh.", buf, 2u);
    }

    goto LABEL_4;
  }

  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
  v6 = v11;
  v8 = sub_10000DE28(v6);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loaded widget reading history data read from disk: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD5C8();
  }

LABEL_14:

  return v7;
}

- (void)save:(id)save
{
  saveCopy = save;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:saveCopy forKey:NSKeyedArchiveRootObjectKey];

  encodedData = [v5 encodedData];
  dataFile = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully saved widget reading history data.", buf, 2u);
    }

LABEL_10:

    v15 = v9;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1001BD630();
  }

  dataFile2 = [(BDSBookWidgetReadingHistoryDataFile *)self dataFile];
  v17 = v9;
  v14 = [dataFile2 remove:&v17];
  v15 = v17;

  if ((v14 & 1) == 0)
  {
    v12 = sub_10000DE28(v16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD698();
    }

    v9 = v15;
    goto LABEL_10;
  }

LABEL_11:
}

+ (NSURL)defaultDataURL
{
  if (qword_100274908 != -1)
  {
    sub_1001BD700();
  }

  v3 = qword_100274900;

  return v3;
}

@end