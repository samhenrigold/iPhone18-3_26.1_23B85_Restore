@interface IRNDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
- (void)logToFileForTacho:(const void *)tacho;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation IRNDiagnosticExtension

- (void)setupWithParameters:(id)parameters
{
  v3 = irn_get_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[IRNDiagnosticExtension setupWithParameters:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (void)teardownWithParameters:(id)parameters
{
  v3 = irn_get_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[IRNDiagnosticExtension teardownWithParameters:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v23 = parametersCopy;
  v5 = irn_get_log(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", &buf, 0xCu);
  }

  v6 = dispatch_semaphore_create(0);
  queue = dispatch_queue_create("com.apple.HeartRhythmAlgorithms.IRNDiagnostic.PulseSequenceRetrieval.Queue", 0);
  v26 = objc_opt_new();
  v25 = [HKSampleType seriesTypeForIdentifier:HKDataTypeIdentifierHeartbeatSeries];
  v7 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  v8 = +[NSDate date];
  v24 = [HKQuery predicateForSamplesWithStartDate:v7 endDate:v8 options:0];

  v9 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x4812000000;
  v39 = sub_100001298;
  v40 = sub_1000012BC;
  v41 = &unk_10000C439;
  memset(v42, 0, 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012E8;
  block[3] = &unk_100010408;
  v10 = v25;
  v29 = v10;
  v11 = v24;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  v13 = v6;
  v32 = v13;
  p_buf = &buf;
  v14 = v26;
  v33 = v14;
  dispatch_async(queue, block);
  v15 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v13, v15);
  [(IRNDiagnosticExtension *)self logToFileForTacho:*(&buf + 1) + 48];
  v16 = +[NSFileManager defaultManager];
  v17 = [v16 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/IRNDiagnostics/" error:0];

  v19 = irn_get_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 138543362;
    *&v36[4] = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "tachgoram retrieval generated files : %{public}@", v36, 0xCu);
  }

  v20 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/IRNDiagnostics/"];
  [v20 setShouldCompress:&__kCFBooleanTrue];
  [v20 setDeleteOnAttach:&__kCFBooleanTrue];
  v35 = v20;
  v21 = [NSArray arrayWithObjects:&v35 count:1];

  _Block_object_dispose(&buf, 8);
  *v36 = v42;
  sub_100003A5C(v36);

  return v21;
}

- (void)logToFileForTacho:(const void *)tacho
{
  v4 = +[NSFileManager defaultManager];
  v23 = NSFileProtectionKey;
  v24 = NSFileProtectionCompleteUnlessOpen;
  v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v21 = 0;
  v6 = [v4 createDirectoryAtPath:@"/var/mobile/Library/Logs/IRNDiagnostics/" withIntermediateDirectories:1 attributes:v5 error:&v21];
  v14 = v21;

  if (v6)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    std::to_string(&v15, v8);
    v9 = std::string::insert(&v15, 0, "irn_tachograms_");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v22, ".json");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20 = v11->__r_.__value_.__r.__words[2];
    *v19 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    [@"/var/mobile/Library/Logs/IRNDiagnostics/" UTF8String];
    std::operator+<char>();
    sub_1000022D8(&v22, &__p, 1);
    if (*tacho != *(tacho + 1))
    {
      sub_1000044F8(v16, 0, 0, 0, 2);
    }

    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v13 = irn_get_log(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100009684(v14, v13);
    }
  }
}

@end