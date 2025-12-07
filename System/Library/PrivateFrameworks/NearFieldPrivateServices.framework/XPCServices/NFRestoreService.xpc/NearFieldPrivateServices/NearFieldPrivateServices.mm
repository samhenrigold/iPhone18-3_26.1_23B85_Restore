int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t sub_1000014B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000014D0(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Fail to run in time, exiting", v7, ClassName, Name, 63);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 1024;
    v21 = 63;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to run in time, exiting", buf, 0x22u);
  }

  exit(-1);
}

void sub_100001610(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 objectForKey:@"FactoryInstall"];
    objc_opt_class();
    v4 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v3 BOOLValue])
      {
        v5 = &__kCFBooleanTrue;
      }

      else
      {
        v5 = &__kCFBooleanFalse;
      }

      v4 = v5;
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:@"StockholmOnly"];

    objc_opt_class();
    v7 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v6 BOOLValue])
      {
        v8 = &__kCFBooleanTrue;
      }

      else
      {
        v8 = &__kCFBooleanFalse;
      }

      v7 = v8;
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:@"HammerfestOnly"];

    objc_opt_class();
    v10 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v9 BOOLValue])
      {
        v11 = &__kCFBooleanTrue;
      }

      else
      {
        v11 = &__kCFBooleanFalse;
      }

      v10 = v11;
    }
  }

  else
  {
    v10 = &__kCFBooleanFalse;
    v7 = &__kCFBooleanFalse;
    v4 = &__kCFBooleanFalse;
  }

  v57[0] = @"RootFilePath";
  v57[1] = @"JcopUpdateDisable";
  v58[0] = @"/usr/standalone/firmware/nfrestore/firmware";
  v58[1] = &__kCFBooleanTrue;
  v57[2] = @"FactoryInstall";
  v57[3] = @"StockholmOnly";
  v58[2] = v4;
  v58[3] = v7;
  v57[4] = @"HammerfestOnly";
  v58[4] = v10;
  v12 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(*(a1 + 40));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 40));
    Name = sel_getName(*(a1 + 72));
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v14(5, "%c[%{public}s %{public}s]:%i Updating FW", v18, ClassName, Name, 99);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(*(a1 + 40));
    v23 = sel_getName(*(a1 + 72));
    *buf = 67109890;
    v48 = v21;
    v49 = 2082;
    v50 = v22;
    v51 = 2082;
    v52 = v23;
    v53 = 1024;
    v54 = 99;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating FW", buf, 0x22u);
  }

  v24 = NfRestore();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v26 = v25;
    v27 = object_getClass(*(a1 + 40));
    v28 = class_isMetaClass(v27);
    v42 = object_getClassName(*(a1 + 40));
    v44 = sel_getName(*(a1 + 72));
    v29 = 45;
    if (v28)
    {
      v29 = 43;
    }

    v26(6, "%c[%{public}s %{public}s]:%i FW is updated with status %d", v29, v42, v44, 101, v24);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(*(a1 + 40));
    v34 = sel_getName(*(a1 + 72));
    *buf = 67110146;
    v48 = v32;
    v49 = 2082;
    v50 = v33;
    v51 = 2082;
    v52 = v34;
    v53 = 1024;
    v54 = 101;
    v55 = 1024;
    v56 = v24;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FW is updated with status %d", buf, 0x28u);
  }

  dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
  v35 = *(*(a1 + 56) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = 0;

  v37 = *(a1 + 48);
  if (v24)
  {
    v45 = NSLocalizedDescriptionKey;
    v46 = @"Restore error";
    v38 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v39 = [NSError errorWithDomain:@"nfrestore" code:v24 userInfo:v38];
    (*(v37 + 16))(v37, 0, v39);
  }

  else
  {
    (*(v37 + 16))(*(a1 + 48), 0, 0);
  }

  v40 = *(*(a1 + 64) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = 0;
}