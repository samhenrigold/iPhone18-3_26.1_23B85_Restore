@interface NRDUpdateBrainLoader
+ (id)brainAtPath:(id)path delegate:(id)delegate error:(id *)error;
@end

@implementation NRDUpdateBrainLoader

+ (id)brainAtPath:(id)path delegate:(id)delegate error:(id *)error
{
  if (!load_trust_cache_at_path([objc_msgSend(path stringByAppendingPathComponent:{@".TrustCache", "fileSystemRepresentation"}], 0))
  {
    if (error)
    {
      v23 = NSDebugDescriptionErrorKey;
      v24 = @"trust cache load failed";
      v16 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:100 userInfo:[NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1]];
LABEL_16:
      v11 = 0;
      *error = v16;
      return v11;
    }

    return 0;
  }

  v8 = [path stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.xpc", @"com.apple.NRD.UpdateBrainService"}];
  v9 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v8];
  if (!v9)
  {
    if (error)
    {
      v25 = NSDebugDescriptionErrorKey;
      v26 = @"xpc bundle does not exist";
      v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:[NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1]];
      goto LABEL_16;
    }

    return 0;
  }

  v10 = nrdSharedLogger(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Loading NeRD update brain bundle at %{public}@", &buf, 0xCu);
  }

  [v8 fileSystemRepresentation];
  xpc_add_bundle();
  isLoaded = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v11 = [[NRDUpdateBrainClientImpl alloc] initWithDelegate:delegate];
  v12 = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __51__NRDUpdateBrainLoader_brainAtPath_delegate_error___block_invoke;
  v18[3] = &unk_1000189C0;
  v18[4] = &v19;
  v18[5] = &buf;
  [(NRDUpdateBrainClientImpl *)v11 ping:v18];
  if (!*(v20 + 24))
  {
    v11 = 0;
  }

  v13 = *(&buf + 1);
  v14 = *(*(&buf + 1) + 40);
  if (v14)
  {
    if (error)
    {
      *error = v14;
      v14 = *(v13 + 40);
    }

    v15 = v14;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

void *__51__NRDUpdateBrainLoader_brainAtPath_delegate_error___block_invoke(void *result, void *a2)
{
  v2 = result;
  if (a2)
  {
    result = [a2 copy];
    *(*(v2[5] + 8) + 40) = result;
  }

  else
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

@end