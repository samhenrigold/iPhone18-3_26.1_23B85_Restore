id SafariLibraryPath(uint64_t a1)
{
  if (qword_100010B08 != -1)
  {
    sub_1000059BC();
  }

  v2 = qword_100010B00;

  return v2;
}

void sub_10000105C(id a1)
{
  v1 = _SFSafariContainerPath();
  v4 = v1;
  if (v1)
  {
    [v1 stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    SafariNonContaineredLibraryPath(0);
  }
  v2 = ;
  v3 = qword_100010B00;
  qword_100010B00 = v2;
}

id SafariNonContaineredLibraryPath(uint64_t a1)
{
  if (qword_100010B18 != -1)
  {
    sub_1000059D0();
  }

  v2 = qword_100010B10;

  return v2;
}

void sub_10000110C(id a1)
{
  qword_100010B10 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];

  _objc_release_x1();
}

id SafariSettingsDirectoryPath()
{
  v0 = qword_100010B20;
  if (!qword_100010B20)
  {
    v1 = SafariLibraryPath(0);
    v2 = [v1 stringByAppendingPathComponent:@"Safari"];
    v3 = qword_100010B20;
    qword_100010B20 = v2;

    v4 = +[NSFileManager defaultManager];
    [v4 _web_createDirectoryAtPathWithIntermediateDirectories:qword_100010B20 attributes:0];

    v0 = qword_100010B20;
  }

  return v0;
}

id SafariCloudBookmarksMigrationCoordinatorDirectoryURL()
{
  v0 = SafariSettingsDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"CloudBookmarksMigrationCoordinator"];
  v2 = [NSURL fileURLWithPath:v1 isDirectory:1];

  return v2;
}

id SafariCloudBookmarksMigrationCoordinatorLogsDirectoryURL()
{
  v0 = SafariCloudBookmarksMigrationCoordinatorDirectoryURL();
  v1 = [v0 URLByAppendingPathComponent:@"Logs" isDirectory:1];

  return v1;
}

void sub_1000012B4(id a1)
{
  qword_100010B28 = os_log_create("com.apple.mobilesafari", "DiagnosticExtension");

  _objc_release_x1();
}

void sub_10000133C(id a1)
{
  qword_100010B38 = objc_alloc_init(WBReadonlyTabCollection);

  _objc_release_x1();
}

void sub_1000013BC(id a1)
{
  v1 = [WBTabCollection alloc];
  v4 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  v2 = [v1 initWithConfiguration:v4 openDatabase:1];
  v3 = qword_100010B48;
  qword_100010B48 = v2;
}

void sub_1000014D8(uint64_t a1)
{
  v1 = [WBTabGroupManager alloc];
  v4 = [objc_opt_class() _tabCollection];
  v2 = [v1 initWithCollection:v4];
  v3 = qword_100010B58;
  qword_100010B58 = v2;
}

void sub_100001598(id a1)
{
  qword_100010B68 = objc_alloc_init(SafariProfileDelegate);

  _objc_release_x1();
}

void sub_100001618(id a1)
{
  v1 = [SFWebExtensionsController alloc];
  v2 = [v1 initWithProfileServerID:WBSDefaultProfileIdentifier userContentController:0];
  v3 = qword_100010B78;
  qword_100010B78 = v2;

  v4 = +[SafariDiagnosticExtension sharedProfileDelegate];
  [qword_100010B78 setProfileDelegate:v4];
}

void sub_100001740(uint64_t a1)
{
  v2 = [SFContentBlockerManager alloc];
  v5 = [*(a1 + 32) defaultWebExtensionsController];
  v3 = [v2 initWithUserContentController:0 webExtensionsController:v5];
  v4 = qword_100010B88;
  qword_100010B88 = v3;
}

void sub_100001970(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [objc_opt_class() defaultContentBlockerManager];
  [v5 addObserver:*(a1 + 32)];

  v6 = dispatch_semaphore_create(0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = [objc_opt_class() defaultWebExtensionsController];
  [v9 addObserver:*(a1 + 32)];
}

void sub_1000025EC(id *a1, void *a2)
{
  v11 = a2;
  if ([a1[4] isPrivateBrowsing])
  {
    v3 = @"Private Tab";
    goto LABEL_4;
  }

  v4 = [v11 url];
  v3 = [v4 absoluteString];

  if (v3)
  {
LABEL_4:
    if (![(__CFString *)v3 isEqual:&stru_10000C788])
    {
      goto LABEL_6;
    }
  }

  v3 = @"Start Page";
LABEL_6:
  v5 = [v11 uuid];
  if ([v5 length])
  {
    v6 = [(__CFString *)v3 stringByAppendingFormat:@" (%@)", v5];

    v3 = v6;
  }

  if (WBSIsEqual())
  {
    v7 = [a1[4] uuid];
    v8 = [a1[6] activeTabGroupUUID];
    v9 = WBSIsEqual();

    if (v9)
    {
      v10 = [(__CFString *)v3 stringByAppendingString:@" (Current)"];

      v3 = v10;
    }
  }

  [a1[7] appendFormat:@"%@\n", v3];
}

uint64_t sub_100002DD4(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = WBSIsEqual();

  return v3;
}

void sub_100003750(uint64_t a1)
{
  v2 = [objc_opt_class() defaultWebExtensionsController];
  v3 = *(*(a1 + 32) + 16);
  v4 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v3, v4);
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100005D04();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v2 allDiscoveredExtensions];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v2 webExtensionForExtension:v8];
        v10 = [v9 displayName];
        v11 = [v8 _plugIn];
        v12 = [v11 identifier];
        v13 = [NSString stringWithFormat:@"%@ (%@)", v10, v12];

        v14 = [v2 extensionIsEnabled:v8];
        v15 = *(a1 + 40);
        v16 = @"disabled:";
        if (v14)
        {
          v16 = @"enabled:";
        }

        v17 = [NSString stringWithFormat:@"%@ %@", v16, v13];
        [v15 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_10000406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004098(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000040B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100005ED4();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100004CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004D2C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000050A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100006160();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000558C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 lastPathComponent];
  v4 = [v3 length];
  v5 = [*(a1 + 32) firstMatchInString:v3 options:0 range:{0, v4}];

  if (v5)
  {
    v6 = [*(a1 + 40) firstMatchInString:v3 options:0 range:{0, v4}];

    if (!v6)
    {
      v7 = *(a1 + 48);
      v8 = [DEAttachmentItem attachmentWithPathURL:v9];
      [v7 addObject:v8];
    }
  }
}

void sub_1000056B0(id a1)
{
  qword_100010B98 = _SFSafariTemporaryDirectoryPath();

  _objc_release_x1();
}

void sub_100005920(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000594C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_100005968(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10000599C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100005A70()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write file with list of open tabs to %{public}@: %{public}@", v6, v7, v8, v9);
}

void sub_100005B08()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write file with list of open tabs to %{public}@, error: %{public}@", v6, v7, v8, v9);
}

void sub_100005BD4()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write list of content blockers to %{public}@: %{public}@", v6, v7, v8, v9);
}

void sub_100005C6C()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write list of web extensions to %{public}@: %{public}@", v6, v7, v8, v9);
}

void sub_100005D38(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  sub_10000599C(&_mh_execute_header, v5, v6, "Error collecting migration eligibility logs: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_100005E38(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write bookmarks diagnostics data to %{public}@ with error: %{public}@", buf, 0x16u);
}

void sub_100005F08(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  sub_10000599C(&_mh_execute_header, v5, v6, "Failed to delete sensitive data from database with error: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_100005FA0()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write file with tab collection diagnostics to %{public}@, error: %{public}@", v6, v7, v8, v9);
}

void sub_1000060A0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to redact sensitive data from history database with error: %{public}@", buf, 0xCu);
}

void sub_100006194()
{
  sub_100005990();
  v2 = v1;
  v3 = [sub_100005984() safari_privacyPreservingDescription];
  sub_100005908();
  sub_100005920(&_mh_execute_header, v4, v5, "Failed to write file with CloudTab restoration diagnostics to %{public}@, error: %{public}@", v6, v7, v8, v9);
}