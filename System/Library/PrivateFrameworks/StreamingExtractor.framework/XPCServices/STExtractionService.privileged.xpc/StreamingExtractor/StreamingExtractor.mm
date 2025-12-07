id sub_100000DA8(uint64_t a1)
{
  if (qword_10000D020 != -1)
  {
    sub_1000039F4();
  }

  v2 = off_10000CDC8;

  return v2;
}

void sub_100000DEC(id a1)
{
  v1 = sub_1000010F4();
  off_10000CDC8 = os_log_create("com.apple.StreamingExtractor", v1);

  _objc_release_x1();
}

id sub_100000E30(uint64_t a1)
{
  if (qword_10000D028 != -1)
  {
    sub_100003A08();
  }

  v2 = off_10000CDD0;

  return v2;
}

void sub_100000E74(id a1)
{
  v1 = sub_1000010F4();
  off_10000CDD0 = os_log_create("com.apple.StreamingExtractor.signposts", v1);

  _objc_release_x1();
}

id sub_100000EB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a7, a8, a6, v16];
  v20 = sub_100000DA8(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v25 = &stru_100008708;
    *buf = 136448002;
    v27 = "STCreateErrorWithInfo";
    v28 = 2080;
    if (v17)
    {
      v25 = v17;
    }

    v29 = a7;
    v30 = 1024;
    v31 = a8;
    v32 = 2080;
    v33 = a6;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = a2;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v25;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: Error [%s:%d][%s]: %@ - %ld - %@ %@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v21 = [v18 mutableCopy];
  }

  else
  {
    v21 = [NSMutableDictionary dictionaryWithCapacity:2];
  }

  v22 = v21;
  [v21 setObject:v19 forKey:NSDebugDescriptionErrorKey];
  if (v17)
  {
    [v22 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v23 = [NSError errorWithDomain:v15 code:a2 userInfo:v22];

  return v23;
}

id sub_100001524(uint64_t a1)
{
  v2 = sub_100000DA8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sessionID];
    v6 = 136446722;
    v7 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%@ - %@]", &v6, 0x20u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id sub_100001608(uint64_t a1)
{
  v2 = sub_100000DA8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sessionID];
    v6 = 136446722;
    v7 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%@ - %@]", &v6, 0x20u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000DA8(*&argc);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "main";
    v11 = 2080;
    v12 = "Oct 10 2025";
    v13 = 2080;
    v14 = "21:28:16";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Service started (built at %s %s)", &v9, 0x20u);
  }

  _set_user_dir_suffix();
  v4 = dispatch_get_global_queue(2, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);

  dispatch_source_set_event_handler(v5, &stru_100008390);
  dispatch_resume(v5);
  v6 = objc_opt_new();
  v7 = +[NSXPCListener serviceListener];
  [v7 setDelegate:v6];
  [v7 resume];

  return 0;
}

void sub_100001868(id a1)
{
  v1 = sub_100000DA8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "main_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: SIGTERM received - suspending active extractions.", &v2, 0xCu);
  }

  xpc_transaction_exit_clean();
  +[STExtractionService setProcessTerminated];
}

id sub_100001FF4(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    if ([*(a1 + 32) extractionValid] && objc_msgSend(*(a1 + 32), "extractionPrepared"))
    {
      v3 = [*(a1 + 32) plugin];
      [v3 suspendStreamWithCompletionBlock:&stru_100008410];
    }

    v4 = [*(a1 + 32) plugin];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) plugin];
      [v6 invalidate];
    }
  }

  v7 = *(a1 + 32);

  return [v7 invalidate];
}

void sub_10000236C(uint64_t a1)
{
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_100002E98;
  v89[3] = &unk_100008480;
  v2 = (a1 + 32);
  v89[4] = *(a1 + 32);
  v90 = *(a1 + 64);
  v80 = objc_retainBlock(v89);
  v3 = [v2[1] objectForKeyedSubscript:@"STRemoteExtractorSessionID"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v3 = v5;
  }

  v79 = v3;
  [*(a1 + 32) setSessionID:v3];
  v6 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorOptionsUsesReservePolicy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*v2 setUsesReserveAccessPolicy:{objc_msgSend(v6, "BOOLValue")}];
  }

  v78 = v6;
  v7 = [*(a1 + 40) mutableCopy];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v8 = [*(a1 + 40) keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v85 objects:v96 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v86;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v86 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v85 + 1) + 8 * i);
        if ([v13 containsString:@"<Private>"])
        {
          [v7 setObject:@"<redacted>" forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v85 objects:v96 count:16];
    }

    while (v10);
  }

  v15 = sub_100000DA8(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) sessionID];
    v17 = *(a1 + 48);
    *buf = 138413059;
    *&buf[4] = v16;
    *&buf[12] = 2082;
    *&buf[14] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[22] = 2113;
    *&buf[24] = v17;
    v94 = 2112;
    v95 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: sandbox_token: %{private}@ - options: %@", buf, 0x2Au);
  }

  [objc_opt_class() addActiveExtractionService:*(a1 + 32)];
  v18 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundlePath"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100003C48();
      v81 = v91;
      goto LABEL_69;
    }

    v19 = [NSURL fileURLWithPath:v18];
    if (v19)
    {
      v20 = v19;
      v81 = 0;
      goto LABEL_29;
    }
  }

  v21 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundleName"];
  objc_opt_class();
  v81 = v21;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100003D60();
    v23 = v91;
    goto LABEL_75;
  }

  v22 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginDirectory"];
  if (v22)
  {
    v23 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v18;
      goto LABEL_26;
    }

    sub_100003E78(buf);
LABEL_75:
    v35 = *buf;

    goto LABEL_76;
  }

  v24 = v18;
  v23 = @"/System/Library/StreamingExtractorPlugins";
LABEL_26:
  v92[0] = v23;
  v25 = [NSString stringWithFormat:@"%@.bundle", v81];
  v92[1] = v25;
  v26 = [NSArray arrayWithObjects:v92 count:2];
  v27 = [NSString pathWithComponents:v26];
  v20 = [NSURL fileURLWithPath:v27];

  v29 = sub_100000DA8(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v20 path];
    *buf = 136446466;
    *&buf[4] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: pluginURL: %@", buf, 0x16u);
  }

  v18 = v24;
  if (!v20)
  {
    sub_1000045A0(buf);
LABEL_69:
    v35 = *buf;
    goto LABEL_76;
  }

LABEL_29:
  v31 = [NSBundle bundleWithURL:v20];
  if (!v31)
  {
    sub_10000443C(v20, buf);
    goto LABEL_69;
  }

  v32 = v31;
  v84 = 0;
  v33 = [v31 loadAndReturnError:&v84];
  v34 = v84;
  v35 = v34;
  if ((v33 & 1) == 0)
  {
    v55 = sub_100000DA8(v34);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_100003F9C();
    }

    v57 = sub_100000DA8(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_100004040(v2, v35, v57);
    }

    goto LABEL_76;
  }

  v36 = [v32 principalClass];
  if (!v36)
  {
    v58 = sub_100000DA8(0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_100004398();
    }

    v59 = STExtractorErrorDomain;
    v60 = [NSString stringWithFormat:@"unable to get principal class from plugin: %@", v20];
    v61 = v59;
    v62 = v60;
    v63 = 314;
    goto LABEL_64;
  }

  v37 = v36;
  v38 = [(objc_class *)v36 conformsToProtocol:&OBJC_PROTOCOL___STExtractionPlugin];
  if ((v38 & 1) == 0)
  {
    v64 = sub_100000DA8(v38);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_100004108();
    }

    v65 = STExtractorErrorDomain;
    v60 = [NSString stringWithFormat:@"principal class for plugin does not conform to STExtractorPlugin protocol: %@", v20];
    v61 = v65;
    v62 = v60;
    v63 = 315;
LABEL_64:
    v66 = sub_1000010E0(v61, 6, v62, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", v63);

    v35 = v66;
LABEL_76:
    v46 = v80;
LABEL_42:
    v49 = v78;
    v48 = v79;
    goto LABEL_48;
  }

  v39 = *(a1 + 48);
  if (v39 && ([v39 UTF8String], objc_msgSend(*v2, "setSandboxToken:", sandbox_extension_consume()), objc_msgSend(*v2, "sandboxToken") == -1))
  {
    v71 = v18;
    v72 = sub_100000DA8(-1);
    v46 = v80;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      sub_1000041AC();
    }

    v73 = STExtractorErrorDomain;
    v74 = __error();
    v75 = strerror(*v74);
    v76 = [NSString stringWithFormat:@"failed to consume sandbox token: %s (%d)", v75, *__error()];
    v77 = sub_1000010E0(v73, 10, v76, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 319);

    v35 = v77;
    v49 = v78;
    v48 = v79;
    v18 = v71;
  }

  else
  {
    if (![*v2 hasConnection])
    {
      goto LABEL_40;
    }

    if (*v2)
    {
      objc_msgSend_auditToken(*v2);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [*(a1 + 56) fileSystemRepresentation];
    v40 = sandbox_check_by_audit_token();
    if (!v40)
    {
LABEL_40:
      v41 = [[v37 alloc] initWithOptions:*(a1 + 40) delegate:*(a1 + 32)];
      [*(a1 + 32) setPlugin:v41];

      v42 = [*(a1 + 32) plugin];

      if (v42)
      {
        v44 = [*(a1 + 32) plugin];
        v45 = *(a1 + 56);
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_100002F34;
        v82[3] = &unk_1000084A8;
        v46 = v80;
        v47 = v80;
        v82[4] = *(a1 + 32);
        v83 = v47;
        [v44 prepareForExtractionToPath:v45 withCompletionBlock:v82];
      }

      else
      {
        v67 = sub_100000DA8(v43);
        v46 = v80;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sub_100004250();
        }

        v68 = STExtractorErrorDomain;
        v69 = [NSString stringWithFormat:@"failed to initialize plugin class: %@", v37];
        v70 = sub_1000010E0(v68, 6, v69, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 331);

        v35 = v70;
      }

      goto LABEL_42;
    }

    if (v40 == -1)
    {
      v40 = __error();
      v50 = *v40;
    }

    else
    {
      v50 = 1;
    }

    v51 = sub_100000DA8(v40);
    v46 = v80;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000042F4();
    }

    v52 = STExtractorErrorDomain;
    v53 = [NSString stringWithFormat:@"cannot write to path: %s (%d)", strerror(v50), v50];
    v54 = sub_1000010E0(v52, 14, v53, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 327);

    v35 = v54;
    v49 = v78;
    v48 = v79;
  }

LABEL_48:

  if (v35)
  {
    (v46)[2](v46, 0, 0, v35);
  }
}

void sub_100002E98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if (v6)
  {
    [objc_opt_class() removeExtractionService:*(a1 + 32)];
  }

  else
  {
    *(*(a1 + 32) + 18) = 1;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002F34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v9 = [v5 plugin];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 extractionMemoryFootprint]);
  v8 = [NSDictionary dictionaryWithObject:v7 forKey:@"STRemoteExtractorMemoryFootprint"];
  (*(v4 + 16))(v4, v8, a2, v6);
}

void sub_1000030E4(uint64_t a1)
{
  if (processTerminated == 1)
  {
    sub_1000048E8();
  }

  else
  {
    v2 = [*(a1 + 32) plugin];

    if (v2)
    {
      if ([*(a1 + 32) extractionValid])
      {
        v3 = [*(a1 + 32) plugin];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100003220;
        v7[3] = &unk_1000084F8;
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        v7[4] = *(a1 + 32);
        v8 = v5;
        [v3 supplyBytes:v4 withCompletionBlock:v7];

        v6 = v8;
LABEL_5:

        return;
      }

      sub_1000046B8();
    }

    else
    {
      sub_1000047D0();
    }
  }

  v6 = v10;

  if (v10)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }
}

void sub_100003220(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032C0;
  block[3] = &unk_100008438;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10000337C(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 suspendStreamWithCompletionBlock:*(a1 + 40)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004A08(a1);
  }
}

void sub_1000034AC(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 finishStreamWithCompletionBlock:*(a1 + 40)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004B40(a1);
  }
}

void sub_100003600(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v3 = [*(a1 + 32) plugin];
    [v3 terminateStreamWithError:*(a1 + 40) completionBlock:*(a1 + 48)];

    v4 = *(a1 + 32);

    [v4 invalidate];
  }

  else
  {
    sub_100004C74(a1);
  }
}

void sub_100003938(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_100003958(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_100003978(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

BOOL sub_1000039C4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000039DC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100003A1C(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Rejecting process %@ since it is not properly entitled.", &v2, 0x16u);
}

void sub_100003AA8(void *a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v10 = 136447490;
    sub_1000038D4();
    sub_100003994();
    sub_100003900();
    sub_100003938(&_mh_execute_header, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, v10);
  }
}

void sub_100003B70(uint64_t a1)
{
  v1 = sub_100000DA8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2[0] = 136447490;
    sub_1000038D4();
    sub_100003994();
    v3 = "";
    sub_100003900();
    v4 = 215;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, 0x3Au);
  }
}

uint64_t sub_100003C48()
{
  sub_1000039AC();
  v2 = sub_100000DA8(v1);
  if (sub_1000039C4(v2))
  {
    v14 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, v14);
  }

  v3 = STExtractorErrorDomain;
  v4 = [NSString stringWithFormat:@"bundle path option is not an NSString"];
  sub_1000039A0(v4);
  v6 = sub_1000010E0(v3, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 282);
  return sub_1000039B8(v6);
}

uint64_t sub_100003D60()
{
  sub_1000039AC();
  v2 = sub_100000DA8(v1);
  if (sub_1000039C4(v2))
  {
    v14 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, v14);
  }

  v3 = STExtractorErrorDomain;
  v4 = [NSString stringWithFormat:@"bundle name option is not an NSString"];
  sub_1000039A0(v4);
  v6 = sub_1000010E0(v3, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 290);
  return sub_1000039B8(v6);
}

void sub_100003E78(uint64_t *a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v12 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v6, v7, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v8, v9, v10, v11, v12);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"plugin directory option is not an NSString"];
  *a1 = sub_1000010E0(v4, 3, v5, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 294);
}

void sub_100003F9C()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_100004040(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 sessionID];
  v6 = 138412802;
  v7 = v5;
  v8 = 2082;
  v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%@] %{public}s: failed to load plugin: %@", &v6, 0x20u);
}

void sub_100004108()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_1000041AC()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_100004250()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_1000042F4()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_100004398()
{
  v6 = 136447490;
  sub_1000038D4();
  sub_100003994();
  sub_100003900();
  sub_100003978(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
}

void sub_10000443C(void *a1, uint64_t *a2)
{
  v5 = sub_100000DA8(a1);
  if (sub_1000039C4(v5))
  {
    *buf = 136447490;
    v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v10 = 2080;
    v11 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v12 = 2080;
    v13 = "pluginBundle != nil";
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m";
    v18 = 1024;
    v19 = 310;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", buf, 0x3Au);
  }

  v6 = STExtractorErrorDomain;
  v7 = [NSString stringWithFormat:@"unable to get plugin bundle: %@", a1];
  *a2 = sub_1000010E0(v6, 6, v7, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 310);
}

void sub_1000045A0(uint64_t *a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v17 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, v17);
  }

  v4 = [NSString stringWithFormat:@"unable to get plugin URL"];
  v5 = sub_100003924();
  *a1 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 307);
}

uint64_t sub_1000046B8()
{
  sub_1000039AC();
  v2 = sub_100000DA8(v1);
  if (sub_1000039C4(v2))
  {
    v14 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, v14);
  }

  v3 = STExtractorErrorDomain;
  v4 = [NSString stringWithFormat:@"extraction is invalid - it likely has already been finished, suspended or terminated"];
  sub_1000039A0(v4);
  v6 = sub_1000010E0(v3, 8, v5, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 361);
  return sub_1000039B8(v6);
}

uint64_t sub_1000047D0()
{
  sub_1000039AC();
  v2 = sub_100000DA8(v1);
  if (sub_1000039C4(v2))
  {
    v14 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, v14);
  }

  v3 = STExtractorErrorDomain;
  v4 = [NSString stringWithFormat:@"no plugin for -supplyBytes"];
  sub_1000039A0(v4);
  v6 = sub_1000010E0(v3, 6, v5, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 360);
  return sub_1000039B8(v6);
}

uint64_t sub_1000048E8()
{
  sub_1000039AC();
  v2 = sub_100000DA8(v1);
  if (sub_1000039C4(v2))
  {
    v14 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003958(&_mh_execute_header, v8, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10, v11, v12, v13, v14);
  }

  v3 = STExtractorErrorDomain;
  v4 = [NSString stringWithFormat:@"extraction stopped - system is shutting down"];
  sub_1000039A0(v4);
  v6 = sub_100000EB8(v3, 13, v5, 0, &off_100008B80, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 359);
  return sub_1000039B8(v6);
}

void sub_100004A08(uint64_t a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v18 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -suspendStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 391);

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004B40(uint64_t a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v18 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -finishStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 416);

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004C74(uint64_t a1)
{
  v3 = sub_100000DA8(a1);
  if (sub_1000039DC(v3))
  {
    v18 = 136447490;
    sub_1000038EC();
    sub_100003914();
    sub_1000038BC();
    sub_100003938(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v4 = [NSString stringWithFormat:@"no plugin for -terminateStream"];
  v5 = sub_100003924();
  v11 = sub_1000010E0(v5, v6, v7, v8, v9, v10, 442);

  if (v11)
  {
    (*(*(a1 + 48) + 16))();
  }
}