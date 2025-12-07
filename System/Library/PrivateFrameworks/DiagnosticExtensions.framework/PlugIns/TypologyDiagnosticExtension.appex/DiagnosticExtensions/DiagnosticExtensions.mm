id TITypologyDiagnosticExtensionOSLogFacility(uint64_t a1)
{
  if (qword_1000081C8 != -1)
  {
    sub_100001318();
  }

  v2 = qword_1000081C0;

  return v2;
}

void sub_100000CB4(id a1)
{
  qword_1000081C0 = os_log_create("com.apple.TextInput", "TITypologyDiagnosticExtension");

  _objc_release_x1();
}

void sub_100000DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 url];
  v9 = 0;
  [v4 removeItemAtURL:v5 error:&v9];
  v6 = v9;

  if (v6)
  {
    v8 = TITypologyDiagnosticExtensionOSLogFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000132C(v3);
    }
  }
}

void sub_100000FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"log"];

  if (v6)
  {
    v7 = [v3 url];
    v22 = 0;
    v8 = [NSString stringWithContentsOfURL:v7 encoding:4 error:&v22];
    v9 = v22;

    v11 = TITypologyDiagnosticExtensionOSLogFacility(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v12)
      {
        sub_100001548(v3);
      }

      v13 = *(a1 + 32);
      v14 = [v3 url];
      v15 = [v14 lastPathComponent];
      v11 = [v13 URLByAppendingPathComponent:v15];

      v16 = *(a1 + 40);
      v17 = [v3 url];
      v21 = v9;
      [v16 copyItemAtURL:v17 toURL:v11 error:&v21];
      v18 = v21;

      v19 = [DEAttachmentItem attachmentWithPathURL:v11];
      v20 = TITypologyDiagnosticExtensionOSLogFacility([v19 setDeleteOnAttach:&off_100004308]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100001614(v19, v20);
      }

      [*(a1 + 48) addObject:v19];
      v9 = v18;
    }

    else if (v12)
    {
      sub_10000171C(v3);
    }
  }
}

void sub_1000012EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_debug_impl(a1, v10, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_10000132C(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s failed to delete %@ from datavault", "[TypologyDiagnosticExtension cleanupDatavault]_block_invoke", v2];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, v10, v11);
}

void sub_1000013F8()
{
  v0 = [NSString stringWithFormat:@"%s %@", "[TypologyDiagnosticExtension attachmentsForParameters:]", @"attachmentsForParameters called"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, v7, v8);
}

void sub_1000014A0(void *a1)
{
  v1 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s total attachments: %lu", "-[TypologyDiagnosticExtension attachmentsForParameters:]", [a1 count]);
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, v8, v9);
}

void sub_100001548(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s accessing %@ from datavault", "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v2];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, v10, v11);
}

void sub_100001614(void *a1, NSObject *a2)
{
  v4 = [a1 path];
  v5 = [a1 modificationDate];
  v6 = [a1 deleteOnAttach];
  v7 = [NSString stringWithFormat:@"%s adding attachment with path %@ and date %@ and deleteOnAttach %@", "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v4, v5, v6];
  *buf = 138412290;
  v9 = v7;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_10000171C(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s unable to access %@ from datavault", "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v2];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, v10, v11);
}

void sub_1000017E8()
{
  v0 = [NSString stringWithFormat:@"%s %@", "[TypologyDiagnosticExtension setupWithParameters:]", @"setupWithParameters called"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, v7, v8);
}

void sub_100001890()
{
  v0 = [NSString stringWithFormat:@"%s %@", "[TypologyDiagnosticExtension teardownWithParameters:]", @"teardownWithParameters called"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, v7, v8);
}