@interface ABRequestHandler
- (ABRequestHandler)init;
- (void)fetchProxyCredential:(id)credential reply:(id)reply;
@end

@implementation ABRequestHandler

- (void)fetchProxyCredential:(id)credential reply:(id)reply
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    buf = 138412290;
    buf_4 = credential;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Fetching proxy credential for query %@", &buf, 0xCu);
  }

  operator new();
}

- (ABRequestHandler)init
{
  v9.receiver = self;
  v9.super_class = ABRequestHandler;
  v2 = [(ABRequestHandler *)&v9 init];
  if (v2)
  {
    if (qword_10000C630 != -1)
    {
      dispatch_once(&qword_10000C630, &stru_1000085A0);
    }

    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = off_100008528;
    *(Instance + 24) = &off_1000087B0;
    pthread_mutex_init((Instance + 32), 0);
    *(Instance + 16) = off_1000085D0;
    *(Instance + 24) = off_100008618;
    *(Instance + 96) = off_100008638;
    v4 = CFGetAllocator(Instance);
    *(Instance + 120) = off_100008730;
    *(Instance + 128) = CFDictionaryCreateMutable(v4, 0, &kCFTypeDictionaryKeyCallBacks, &unk_10000C4D8);
    *(Instance + 136) = 0;
    CFGetAllocator(Instance);
    *(Instance + 104) = CFURLCredentialStorageCreate();
    if (CFURLCredentialStorageIsSystemKeychainSupported())
    {
      CFURLCredentialStorageSetUseSystemKeychain();
    }

    *(Instance + 112) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cfnetwork.authbroker.authenticator.work-queue", v5);
    v7 = *(Instance + 136);
    *(Instance + 136) = v6;
    if (v7)
    {
      dispatch_release(v7);
    }

    v2->authenticator = (Instance + 16);
  }

  return v2;
}

@end