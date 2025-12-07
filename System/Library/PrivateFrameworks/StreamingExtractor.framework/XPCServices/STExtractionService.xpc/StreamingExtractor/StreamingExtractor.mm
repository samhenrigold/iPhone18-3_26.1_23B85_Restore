void *sub_100000D08(uint64_t a1, uint64_t a2)
{
  if (qword_10000D020 != -1)
  {
    sub_100003668();
  }

  return off_10000CDC8;
}

void sub_100000D38(id a1)
{
  v1 = sub_100000FF0();
  v2 = os_log_create("com.apple.StreamingExtractor", v1);
  v3 = off_10000CDC8;
  off_10000CDC8 = v2;
}

void *sub_100000D68(uint64_t a1, uint64_t a2)
{
  if (qword_10000D028 != -1)
  {
    sub_10000367C();
  }

  return off_10000CDD0;
}

void sub_100000D98(id a1)
{
  v1 = sub_100000FF0();
  v2 = os_log_create("com.apple.StreamingExtractor.signposts", v1);
  v3 = off_10000CDD0;
  off_10000CDD0 = v2;
}

id sub_100000DC8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a7, a8, a6, v16];
  v21 = sub_100000D08(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = &stru_100008708;
    *buf = 136448002;
    v28 = "STCreateErrorWithInfo";
    v29 = 2080;
    if (v17)
    {
      v26 = v17;
    }

    v30 = a7;
    v31 = 1024;
    v32 = a8;
    v33 = 2080;
    v34 = a6;
    v35 = 2112;
    v36 = v15;
    v37 = 2048;
    v38 = a2;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v26;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: Error [%s:%d][%s]: %@ - %ld - %@ %@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v22 = [v18 mutableCopy];
  }

  else
  {
    v22 = [NSMutableDictionary dictionaryWithCapacity:2];
  }

  v23 = v22;
  [v22 setObject:v19 forKey:NSDebugDescriptionErrorKey];
  if (v17)
  {
    [v23 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v24 = [NSError errorWithDomain:v15 code:a2 userInfo:v23];

  return v24;
}

id sub_100001424(uint64_t a1, uint64_t a2)
{
  v3 = sub_100000D08(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) sessionID];
    v7 = 136446722;
    v8 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%@ - %@]", &v7, 0x20u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id sub_100001504(uint64_t a1, uint64_t a2)
{
  v3 = sub_100000D08(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) sessionID];
    v7 = 136446722;
    v8 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%@ - %@]", &v7, 0x20u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000D08(*&argc, argv);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "main";
    v11 = 2080;
    v12 = "Oct 10 2025";
    v13 = 2080;
    v14 = "21:28:18";
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

void sub_10000175C(id a1)
{
  v2 = sub_100000D08(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = "main_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: SIGTERM received - suspending active extractions.", &v3, 0xCu);
  }

  xpc_transaction_exit_clean();
  +[STExtractionService setProcessTerminated];
}

id sub_100001EB4(uint64_t a1)
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

  return [*(a1 + 32) invalidate];
}

void sub_1000021B4(uint64_t a1)
{
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_100002CA8;
  v100[3] = &unk_100008480;
  v2 = (a1 + 32);
  v100[4] = *(a1 + 32);
  v101 = *(a1 + 64);
  v91 = objc_retainBlock(v100);
  v3 = [v2[1] objectForKeyedSubscript:@"STRemoteExtractorSessionID"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v3 = v5;
  }

  v90 = v3;
  [*(a1 + 32) setSessionID:v3];
  v6 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorOptionsUsesReservePolicy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*v2 setUsesReserveAccessPolicy:{objc_msgSend(v6, "BOOLValue")}];
  }

  v89 = v6;
  v7 = [*(a1 + 40) mutableCopy];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v8 = [*(a1 + 40) keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v97;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v97 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v96 + 1) + 8 * i);
        if ([v13 containsString:@"<Private>"])
        {
          [v7 setObject:@"<redacted>" forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v10);
  }

  v16 = sub_100000D08(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 32) sessionID];
    v18 = *(a1 + 48);
    *buf = 138413059;
    *&buf[4] = v17;
    *&buf[12] = 2082;
    *&buf[14] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[22] = 2113;
    *&buf[24] = v18;
    v105 = 2112;
    v106 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: sandbox_token: %{private}@ - options: %@", buf, 0x2Au);
  }

  [objc_opt_class() addActiveExtractionService:*(a1 + 32)];
  v19 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundlePath"];
  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100003898();
      v92 = v102;
      goto LABEL_69;
    }

    v20 = [NSURL fileURLWithPath:v19];
    if (v20)
    {
      v21 = v20;
      v92 = 0;
      goto LABEL_29;
    }
  }

  v22 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginBundleName"];
  objc_opt_class();
  v92 = v22;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000039A8();
    v24 = v102;
    goto LABEL_75;
  }

  v23 = [*(a1 + 40) objectForKeyedSubscript:@"STRemoteExtractorPluginDirectory"];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v19;
      goto LABEL_26;
    }

    sub_100003AB8(buf, v25);
LABEL_75:
    v40 = *buf;

    goto LABEL_76;
  }

  v26 = v19;
  v24 = @"/System/Library/StreamingExtractorPlugins";
LABEL_26:
  v103[0] = v24;
  v27 = [NSString stringWithFormat:@"%@.bundle", v92];
  v103[1] = v27;
  v28 = [NSArray arrayWithObjects:v103 count:2];
  v29 = [NSString pathWithComponents:v28];
  v21 = [NSURL fileURLWithPath:v29];

  v32 = sub_100000D08(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v21 path];
    *buf = 136446466;
    *&buf[4] = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: pluginURL: %@", buf, 0x16u);
  }

  v19 = v26;
  if (!v21)
  {
    sub_1000041A4(buf, v34);
LABEL_69:
    v40 = *buf;
    goto LABEL_76;
  }

LABEL_29:
  v35 = [NSBundle bundleWithURL:v21];
  if (!v35)
  {
    sub_10000404C(v21, buf);
    goto LABEL_69;
  }

  v36 = v35;
  v95 = 0;
  v37 = [v35 loadAndReturnError:&v95];
  v38 = v95;
  v40 = v38;
  if ((v37 & 1) == 0)
  {
    v65 = sub_100000D08(v38, v39);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_100003BCC();
    }

    v68 = sub_100000D08(v66, v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_100003C6C(v2, v40, v68);
    }

    goto LABEL_76;
  }

  v41 = [v36 principalClass];
  if (!v41)
  {
    v69 = sub_100000D08(0, v42);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_100003FAC();
    }

    v70 = STExtractorErrorDomain;
    v71 = [NSString stringWithFormat:@"unable to get principal class from plugin: %@", v21];
    v72 = v70;
    v73 = v71;
    v74 = 314;
    goto LABEL_64;
  }

  v43 = v41;
  v44 = [(objc_class *)v41 conformsToProtocol:&OBJC_PROTOCOL___STExtractionPlugin];
  if ((v44 & 1) == 0)
  {
    v75 = sub_100000D08(v44, v45);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_100003D2C();
    }

    v76 = STExtractorErrorDomain;
    v71 = [NSString stringWithFormat:@"principal class for plugin does not conform to STExtractorPlugin protocol: %@", v21];
    v72 = v76;
    v73 = v71;
    v74 = 315;
LABEL_64:
    v77 = sub_100000FDC(v72, 6, v73, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", v74);

    v40 = v77;
LABEL_76:
    v56 = v91;
LABEL_42:
    v59 = v89;
    v58 = v90;
    goto LABEL_48;
  }

  v46 = *(a1 + 48);
  if (v46 && ([v46 UTF8String], objc_msgSend(*v2, "setSandboxToken:", sandbox_extension_consume()), objc_msgSend(*v2, "sandboxToken") == -1))
  {
    v82 = v19;
    v83 = sub_100000D08(-1, v47);
    v56 = v91;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_100003DCC();
    }

    v84 = STExtractorErrorDomain;
    v85 = __error();
    v86 = strerror(*v85);
    v87 = [NSString stringWithFormat:@"failed to consume sandbox token: %s (%d)", v86, *__error()];
    v88 = sub_100000FDC(v84, 10, v87, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 319);

    v40 = v88;
    v59 = v89;
    v58 = v90;
    v19 = v82;
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
    v48 = sandbox_check_by_audit_token();
    if (!v48)
    {
LABEL_40:
      v50 = [[v43 alloc] initWithOptions:*(a1 + 40) delegate:*(a1 + 32)];
      [*(a1 + 32) setPlugin:v50];

      v51 = [*(a1 + 32) plugin];

      if (v51)
      {
        v54 = [*(a1 + 32) plugin];
        v55 = *(a1 + 56);
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_100002D2C;
        v93[3] = &unk_1000084A8;
        v56 = v91;
        v57 = v91;
        v93[4] = *(a1 + 32);
        v94 = v57;
        [v54 prepareForExtractionToPath:v55 withCompletionBlock:v93];
      }

      else
      {
        v78 = sub_100000D08(v52, v53);
        v56 = v91;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_100003E6C();
        }

        v79 = STExtractorErrorDomain;
        v80 = [NSString stringWithFormat:@"failed to initialize plugin class: %@", v43];
        v81 = sub_100000FDC(v79, 6, v80, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 331);

        v40 = v81;
      }

      goto LABEL_42;
    }

    if (v48 == -1)
    {
      v48 = __error();
      v60 = *v48;
    }

    else
    {
      v60 = 1;
    }

    v61 = sub_100000D08(v48, v49);
    v56 = v91;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_100003F0C();
    }

    v62 = STExtractorErrorDomain;
    v63 = [NSString stringWithFormat:@"cannot write to path: %s (%d)", strerror(v60), v60];
    v64 = sub_100000FDC(v62, 14, v63, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 327);

    v40 = v64;
    v59 = v89;
    v58 = v90;
  }

LABEL_48:

  if (v40)
  {
    (v56)[2](v56, 0, 0, v40);
  }
}

void sub_100002CA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void sub_100002D2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v9 = [v5 plugin];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 extractionMemoryFootprint]);
  v8 = [NSDictionary dictionaryWithObject:v7 forKey:@"STRemoteExtractorMemoryFootprint"];
  (*(v4 + 16))(v4, v8, a2, v6);
}

void sub_100002EA8(uint64_t a1)
{
  if (processTerminated == 1)
  {
    sub_1000044CC();
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
        v7[2] = sub_100002FC4;
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

      sub_1000042AC();
    }

    else
    {
      sub_1000043BC();
    }
  }

  v6 = v10;

  if (v10)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }
}

void sub_100002FC4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003044;
  block[3] = &unk_100008438;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1000030E4(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v4 = [*(a1 + 32) plugin];
    [v4 suspendStreamWithCompletionBlock:*(a1 + 40)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_1000045E4(a1, v3);
  }
}

void sub_1000031E4(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v4 = [*(a1 + 32) plugin];
    [v4 finishStreamWithCompletionBlock:*(a1 + 40)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_100004704(a1, v3);
  }
}

void sub_100003308(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];

  if (v2)
  {
    v4 = [*(a1 + 32) plugin];
    [v4 terminateStreamWithError:*(a1 + 40) completionBlock:*(a1 + 48)];

    [*(a1 + 32) invalidate];
  }

  else
  {
    sub_100004818(a1, v3);
  }
}

void sub_100003690(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Rejecting process %@ since it is not properly entitled.", &v2, 0x16u);
}

void sub_100003718(void *a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v11 = 136447490;
    sub_100003564();
    sub_100003618();
    sub_1000035C0();
    sub_10000358C(&_mh_execute_header, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11);
  }

  sub_100003648();
}

void sub_1000037D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000D08(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136447490;
    sub_100003564();
    sub_100003618();
    v5 = "";
    sub_1000035C0();
    v6 = 215;
    sub_1000035B4(&_mh_execute_header, v2, v3, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v4);
  }

  sub_100003648();
}

void sub_100003898()
{
  sub_100003630();
  v3 = sub_100000D08(v1, v2);
  if (sub_1000035E4(v3))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 282;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"bundle path option is not an NSString"];
  sub_100003624(v5);
  v7 = sub_100000FDC(v4, 3, v6, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 282);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000039A8()
{
  sub_100003630();
  v3 = sub_100000D08(v1, v2);
  if (sub_1000035E4(v3))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 290;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"bundle name option is not an NSString"];
  sub_100003624(v5);
  v7 = sub_100000FDC(v4, 3, v6, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 290);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_100003AB8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v13 = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v7, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9, v10, v11, v12, v13);
  }

  v5 = STExtractorErrorDomain;
  v6 = [NSString stringWithFormat:@"plugin directory option is not an NSString"];
  *a1 = sub_100000FDC(v5, 3, v6, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 294);

  sub_10000357C();
}

void sub_100003BCC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 311;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003C6C(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 sessionID];
  v6 = 138412802;
  v7 = v5;
  v8 = 2082;
  v9 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%@] %{public}s: failed to load plugin: %@", &v6, 0x20u);

  sub_100003610();
}

void sub_100003D2C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 315;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003DCC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 319;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003E6C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 331;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003F0C()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 327;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_100003FAC()
{
  v2[0] = 136447490;
  sub_100003564();
  sub_100003618();
  v3 = "";
  sub_1000035C0();
  v4 = 314;
  sub_1000035B4(&_mh_execute_header, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
  sub_100003610();
}

void sub_10000404C(void *a1, uint64_t *a2)
{
  v5 = sub_100000D08(a1, a2);
  if (sub_1000035E4(v5))
  {
    v9 = 136447490;
    v10 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v11 = 2080;
    v12 = "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke";
    v13 = 2080;
    v14 = "pluginBundle != nil";
    v15 = 2080;
    v16 = "";
    v17 = 2080;
    v18 = "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m";
    v19 = 1024;
    v20 = 310;
    sub_1000035B4(&_mh_execute_header, v2, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", &v9);
  }

  v7 = STExtractorErrorDomain;
  v8 = [NSString stringWithFormat:@"unable to get plugin bundle: %@", a1];
  *a2 = sub_100000FDC(v7, 6, v8, 0, "[STExtractionService remote_prepareForExtractionToPath:sandboxExtensionToken:options:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 310);
}

void sub_1000041A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v18 = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v5 = [NSString stringWithFormat:@"unable to get plugin URL"];
  v6 = sub_1000035FC();
  *a1 = sub_100000FDC(v6, v7, v8, v9, v10, v11, 307);

  sub_10000357C();
}

void sub_1000042AC()
{
  sub_100003630();
  v3 = sub_100000D08(v1, v2);
  if (sub_1000035E4(v3))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 361;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"extraction is invalid - it likely has already been finished, suspended or terminated"];
  sub_100003624(v5);
  v7 = sub_100000FDC(v4, 8, v6, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 361);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000043BC()
{
  sub_100003630();
  v3 = sub_100000D08(v1, v2);
  if (sub_1000035E4(v3))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 360;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"no plugin for -supplyBytes"];
  sub_100003624(v5);
  v7 = sub_100000FDC(v4, 6, v6, 0, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 360);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000044CC()
{
  sub_100003630();
  v3 = sub_100000D08(v1, v2);
  if (sub_1000035E4(v3))
  {
    v9[0] = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    *(&v9[13] + 2) = 359;
    sub_1000035B4(&_mh_execute_header, v0, v8, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v9);
  }

  v4 = STExtractorErrorDomain;
  v5 = [NSString stringWithFormat:@"extraction stopped - system is shutting down"];
  sub_100003624(v5);
  v7 = sub_100000DC8(v4, 13, v6, 0, &off_100008B80, "[STExtractionService remote_supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractorService/STExtractionService/STExtractionService.m", 359);
  sub_10000363C(v7);
  sub_10000357C();
}

void sub_1000045E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v18 = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v5 = STExtractorErrorDomain;
  [NSString stringWithFormat:@"no plugin for -suspendStream"];
  objc_claimAutoreleasedReturnValue();
  v6 = sub_1000035FC();
  sub_100000FDC(v6, v7, v8, v9, v10, v11, 391);
  objc_claimAutoreleasedReturnValue();
  sub_100003654();
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  sub_10000357C();
}

void sub_100004704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v18 = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v5 = STExtractorErrorDomain;
  [NSString stringWithFormat:@"no plugin for -finishStream"];
  objc_claimAutoreleasedReturnValue();
  v6 = sub_1000035FC();
  sub_100000FDC(v6, v7, v8, v9, v10, v11, 416);
  objc_claimAutoreleasedReturnValue();
  sub_100003654();
  if (v5)
  {
    sub_10000365C(*(a1 + 40));
  }

  sub_10000357C();
}

void sub_100004818(uint64_t a1, uint64_t a2)
{
  v4 = sub_100000D08(a1, a2);
  if (sub_1000035F0(v4))
  {
    v18 = 136447490;
    sub_1000035A0();
    sub_1000035D4();
    sub_10000354C();
    sub_10000358C(&_mh_execute_header, v12, v13, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v14, v15, v16, v17, v18);
  }

  v5 = STExtractorErrorDomain;
  [NSString stringWithFormat:@"no plugin for -terminateStream"];
  objc_claimAutoreleasedReturnValue();
  v6 = sub_1000035FC();
  sub_100000FDC(v6, v7, v8, v9, v10, v11, 442);
  objc_claimAutoreleasedReturnValue();
  sub_100003654();
  if (v5)
  {
    sub_10000365C(*(a1 + 48));
  }

  sub_10000357C();
}