void sub_100001678(uint64_t a1)
{
  v2 = 50;
  while (1)
  {
    v3 = [*(a1 + 32) registry];
    v4 = [v3 delegate];

    if (v4)
    {
      break;
    }

    v5 = [NSThread sleepForTimeInterval:0.02];
    if (!--v2)
    {
      v6 = sub_1000017C0(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001D788(v6);
      }

      return;
    }
  }

  v10 = [*(a1 + 32) registry];
  v7 = [v10 delegate];
  v8 = [*(a1 + 32) registry];
  v9 = [*(a1 + 32) tokenID];
  [v7 hostTokenRegistry:v8 addedToken:v9 persistent:{objc_msgSend(*(a1 + 32), "persistent")}];
}

id sub_1000017C0(uint64_t a1)
{
  if (qword_100043310 != -1)
  {
    sub_10001D7CC();
  }

  v2 = qword_100043318;

  return v2;
}

uint64_t sub_100001AA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F1C(uint64_t a1)
{
  if ([*(a1 + 32) isRegistered])
  {
    v2 = [*(a1 + 32) slotName];
    if ([v2 isEqualToString:TKNFCSlotName])
    {

LABEL_7:
      v6 = *(a1 + 32);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100002074;
      v10[3] = &unk_1000387B0;
      v10[4] = v6;
      v12 = *(a1 + 48);
      v11 = *(a1 + 40);
      [v6 isEndpointValidWithCompletion:v10];

      return;
    }

    v3 = [*(a1 + 32) slotName];

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if ([*(a1 + 32) connectionCount])
  {
    v4 = [*(a1 + 32) driver];
    v5 = [v4 valid] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  [v8 acquireTokenConnection:v5 canRequireCardInsertion:v7 completion:v9];
}

void sub_100002074(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002130;
  block[3] = &unk_100038788;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v7 = v5;
  dispatch_async(v4, block);
}

id sub_100002130(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 & 1) == 0)
  {
    [*(a1 + 32) setEndpoint:0];
  }

  v3 = *(a1 + 49);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 acquireTokenConnection:v2 ^ 1u canRequireCardInsertion:v3 completion:v5];
}

void sub_100002394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 48) + 16))();
  v5 = sub_1000017C0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10001D7E0(a1);
  }

  [*(a1 + 40) invalidate];
}

id sub_100002414(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100002648(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000273C;
  block[3] = &unk_100038850;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v16 = *(a1 + 48);
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

id sub_10000273C(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(a1 + 48);

    return [v2 handleAcquisitionError:? canRequireCardInsertion:? completion:?];
  }

  else
  {
    [*(a1 + 48) setEndpoint:*(a1 + 40)];
    [[TKHostTokenConnection alloc] initWithToken:*(a1 + 48)];
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))();
    }

    return _objc_release_x1();
  }
}

void sub_100002A60(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [*(a1 + 32) driver];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) endpoint];

      if (v9)
      {
        v10 = [[TKHostTokenConnection alloc] initWithToken:*(a1 + 32)];
        v11 = *(a1 + 40);
        if (v11)
        {
          (*(v11 + 16))(v11, v10, 0);
        }

        goto LABEL_14;
      }
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v10 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
      (*(v14 + 16))(v14, 0, v10);
LABEL_14:
    }
  }

  else
  {
    if (v5)
    {
      v12 = sub_1000017C0(v5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001D91C(a1);
      }
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v6);
    }
  }
}

void sub_100002DEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 tokenID];
  v5 = [v6 stringRepresentation];
  [v4 updateForTokenID:v5 items:*(a1 + 40)];
}

void sub_100002EB4(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:6];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100043308;
  qword_100043308 = v2;
}

void sub_100003350(id a1)
{
  qword_100043318 = os_log_create("com.apple.CryptoTokenKit", "tokenhost");

  _objc_release_x1();
}

void sub_1000033AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_10000381C(uint64_t a1)
{
  v2 = [TKTokenWatcher alloc];
  v3 = [*(*(a1 + 32) + 32) ctkdConnection];
  v4 = [v2 initWithCTKDConnection:v3];

  return v4;
}

void sub_100003EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100003EC4(uint64_t a1)
{
  if (qword_100043320 != -1)
  {
    sub_10001DB34();
  }

  v2 = qword_100043328;

  return v2;
}

void sub_100003F08(uint64_t a1)
{
  v2 = sub_100003EC4(objc_autoreleasePoolPush());
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got SIGTERM, shutting down", v19, 2u);
  }

  v3 = [*(a1 + 32) tokenServer];
  [v3 stop];

  v4 = [*(a1 + 32) slotWatcher];
  [v4 stop];

  v5 = [*(a1 + 32) slotServer];
  [v5 stop];

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = 0;

  v14 = [*(a1 + 32) smartCardRegistrationServer];
  [v14 stop];

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = 0;

  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  *(v17 + 24) = 0;

  exit(0);
}

void sub_100004030(uint64_t a1)
{
  v2 = sub_100003EC4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DB48(v2);
  }

  v3 = [*(a1 + 32) slotServer];
  [v3 notifyDesktopUp];
}

void sub_100004090(uint64_t a1)
{
  v2 = [*(a1 + 32) tokenRegistry];
  [v2 loadTokensFromStore:@"ctkd"];

  v4 = [*(a1 + 32) tokenRegistry];
  v3 = [*(a1 + 32) tokenServer];
  [v3 setTokenRegistry:v4];
}

void sub_100004118(uint64_t a1)
{
  v2 = sub_100003EC4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DB8C(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ensureSlotWatcherIsRunning];
}

void start(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [[[TKCtkdRunner alloc] initWithArgc:a1 argv:a2] run];
  objc_autoreleasePoolPop(v4);
  dispatch_main();
}

void sub_100004274(id a1)
{
  qword_100043328 = os_log_create("com.apple.CryptoTokenKit", "ctkd");

  _objc_release_x1();
}

id sub_1000049CC(uint64_t a1)
{
  if (qword_100043330 != -1)
  {
    sub_10001E064();
  }

  v2 = qword_100043338;

  return v2;
}

void sub_1000064A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000064D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1000049CC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E3C8();
  }

  v29 = +[NSMutableSet set];
  v48[0] = kSecClassCertificate;
  v48[1] = kSecClassKey;
  [NSArray arrayWithObjects:v48 count:2];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v26 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v24 = *v40;
    v25 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v39 + 1) + 8 * v4);
        v45[0] = kSecClass;
        v45[1] = kSecAttrAccessGroup;
        v46[0] = v5;
        v46[1] = kSecAttrAccessGroupToken;
        v45[2] = kSecReturnAttributes;
        v46[2] = &__kCFBooleanTrue;
        v6 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v27 = v6;
        v7 = [v2 query:?];
        v8 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v36;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v36 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v35 + 1) + 8 * i) objectForKeyedSubscript:kSecAttrTokenID];
              if (v12)
              {
                v13 = [[TKTokenID alloc] initWithTokenID:v12];
                WeakRetained = objc_loadWeakRetained((a1 + 32));
                v15 = [WeakRetained tokensByTokenID];
                v16 = [v15 objectForKeyedSubscript:v13];

                if (!v16)
                {
                  [v29 addObject:v13];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v9);
        }

        v4 = v28 + 1;
        v2 = v25;
      }

      while ((v28 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v26);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v29;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v31 + 1) + 8 * j) stringRepresentation];
        [v2 updateForTokenID:v22 items:0];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v19);
  }
}

void sub_100006F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006FA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 _plugIn];
  v6 = [v8 uuid];
  v7 = [v6 UUIDString];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void sub_100007038(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v11 = sub_1000049CC(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E44C();
    }

    v12 = [*(a1 + 48) objectForKeyedSubscript:v5];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v5];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_100008E9C(id a1)
{
  qword_100043338 = os_log_create("com.apple.CryptoTokenKit", "tokenhost");

  _objc_release_x1();
}

id sub_100009E14()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100043350;
  v7 = qword_100043350;
  if (!qword_100043350)
  {
    v1 = sub_10000AC28();
    v5[3] = dlsym(v1, "kTKVirtualTokenIdentifier");
    qword_100043350 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10001E6F4();
  }

  v2 = *v0;

  return v2;
}

void sub_100009F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100009FD8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100043360;
  v7 = qword_100043360;
  if (!qword_100043360)
  {
    v1 = sub_10000AC28();
    v5[3] = dlsym(v1, "kTKVirtualTokenXPCService");
    qword_100043360 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10001E76C();
  }

  v2 = *v0;

  return v2;
}

void sub_10000A0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A1FC(id a1)
{
  is_darwinos = os_variant_is_darwinos();
  if ((is_darwinos & 1) == 0)
  {
    v4 = sub_10000A2D4(is_darwinos);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E7F8(v4);
    }

    goto LABEL_10;
  }

  v2 = sub_10000AC7C(0);
  v3 = sub_10000A2D4(v2);
  v4 = v3;
  if (!v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E83C(v4);
    }

LABEL_10:

    return;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "using TKVirtualTokenExtension", v5, 2u);
  }

  byte_100043340 = 1;
}

id sub_10000A2D4(uint64_t a1)
{
  if (qword_100043368 != -1)
  {
    sub_10001E880();
  }

  v2 = qword_100043370;

  return v2;
}

id sub_10000A480()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100043378;
  v7 = qword_100043378;
  if (!qword_100043378)
  {
    v1 = sub_10000AC28();
    v5[3] = dlsym(v1, "kTKVirtualTokenName");
    qword_100043378 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10001E894();
  }

  v2 = *v0;

  return v2;
}

void sub_10000A56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A884(uint64_t a1)
{
  v2 = [*(a1 + 32) requestInterruptionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) requestInterruptionBlock];
    v3[2](v3, *(a1 + 40));
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 removeContext:v5];
}

void *sub_10000ABD8(uint64_t a1)
{
  v2 = sub_10000AC28();
  result = dlsym(v2, "kTKVirtualTokenIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100043350 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AC28()
{
  v3 = 0;
  v0 = sub_10000AC7C(&v3);
  if (!v0)
  {
    sub_10001E90C(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t sub_10000AC7C(uint64_t a1)
{
  if (!qword_100043358)
  {
    qword_100043358 = _sl_dlopen();
  }

  return qword_100043358;
}

uint64_t sub_10000AD4C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100043358 = result;
  return result;
}

void *sub_10000ADC0(uint64_t a1)
{
  v2 = sub_10000AC28();
  result = dlsym(v2, "kTKVirtualTokenXPCService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100043360 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000AE10(id a1)
{
  qword_100043370 = os_log_create("com.apple.CryptoTokenKit", "tokenhost");

  _objc_release_x1();
}

void *sub_10000AE54(uint64_t a1)
{
  v2 = sub_10000AC28();
  result = dlsym(v2, "kTKVirtualTokenName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100043378 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000B0B8(uint64_t a1)
{
  if (qword_100043380 != -1)
  {
    sub_10001EA04();
  }

  v2 = qword_100043388;

  return v2;
}

void sub_10000BAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BAD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000BAF0(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) selectApplication:*(a1 + 40) error:a2])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }

  return 1;
}

void sub_10000C7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C7F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000B0B8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001EB90(v2, v3);
  }
}

void sub_10000C850(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained(WeakRetained + 1);
  [v2 invalidate];

  v3 = objc_storeWeak(WeakRetained + 1, 0);
  v4 = sub_10000B0B8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EC08(v4);
  }
}

void sub_10000CDD4(id a1)
{
  qword_100043388 = os_log_create("com.apple.CryptoTokenKit", "slotwtch");

  _objc_release_x1();
}

void sub_10000CE18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id sub_10000D174(uint64_t a1)
{
  if (qword_100043390 != -1)
  {
    sub_10001ED1C();
  }

  v2 = qword_100043398;

  return v2;
}

void sub_10000D910(id a1)
{
  qword_100043398 = os_log_create("com.apple.CryptoTokenKit", "smartcard");

  _objc_release_x1();
}

void sub_10000D984(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_10000D9A0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_10000DFD0(uint64_t a1)
{
  if (qword_1000433B0 != -1)
  {
    sub_10001F440();
  }

  v2 = qword_1000433B8;

  return v2;
}

void sub_10000E368(uint64_t a1)
{
  if ([objc_opt_class() isUnlocked])
  {
    v2 = *(a1 + 40);
    v15 = [*(a1 + 32) operations];
    (*(v2 + 16))(v2, v15);
  }

  else
  {
    v3 = *(*(a1 + 32) + 24);
    if (!v3)
    {
      v4 = [&__NSArray0__struct mutableCopy];
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      v7 = os_transaction_create();
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *(v8 + 32) = v7;

      objc_initWeak(&location, *(a1 + 32));
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000E52C;
      handler[3] = &unk_100038C10;
      objc_copyWeak(&v17, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v10 + 16), v11, handler);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      v3 = *(*(a1 + 32) + 24);
    }

    v12 = objc_retainBlock(*(a1 + 40));
    [v3 addObject:v12];

    v14 = sub_10000DFD0(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F454(v14);
    }
  }
}

void sub_10000E510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000E52C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([objc_opt_class() isUnlocked])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(WeakRetained + 3);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          v8 = [WeakRetained operations];
          (*(v7 + 16))(v7, v8);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    v9 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;

    notify_cancel(*(WeakRetained + 4));
    v10 = *(WeakRetained + 4);
    *(WeakRetained + 4) = 0;

    *(WeakRetained + 4) = 0;
  }
}

void sub_10000E718(id a1)
{
  qword_1000433A0 = objc_alloc_init(TKHostKeychainOperations);

  _objc_release_x1();
}

void sub_10000E7A4(id a1)
{
  qword_1000433B8 = os_log_create("com.apple.CryptoTokenKit", "keychain");

  _objc_release_x1();
}

id sub_10000EE10(uint64_t a1)
{
  if (qword_1000433C0 != -1)
  {
    sub_10001F5E0();
  }

  v2 = qword_1000433C8;

  return v2;
}

void sub_10000F0C4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeClient:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  [v3 verifyNFCSlotInvalidationWithRemovedClientPID:{objc_msgSend(WeakRetained, "processIdentifier")}];
}

void sub_10000FC2C(id a1)
{
  v1 = [NSXPCConnection alloc];
  v2 = [v1 initWithMachServiceName:TKClientTokenServerPortName options:0];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKClientTokenServerProtocol];
  [v2 setRemoteObjectInterface:v3];

  v4 = sub_10000EE10([v2 resume]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F64C(v2);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000FDA8;
  v10[3] = &unk_100038CE0;
  v5 = v2;
  v11 = v5;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FE0C;
  v8[3] = &unk_100038710;
  v9 = v5;
  v7 = v5;
  [v6 ensureSlotWatcherRunningWithReply:v8];
}

void sub_10000FDA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000EE10(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001F6D4(a1);
  }
}

id sub_10000FE0C(uint64_t a1)
{
  v2 = sub_10000EE10(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F760(a1);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100010378(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = sub_10000EE10(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F858();
  }
}

void sub_100010934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100010950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[4];
    objc_sync_enter(v7);
    if (v4)
    {
      v8 = v6[3];
      v6[3] = 0;

      objc_sync_exit(v7);
      v10 = sub_10000EE10(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001FA38();
      }

      v11 = *(*(a1 + 48) + 16);
    }

    else
    {
      objc_storeStrong(v6 + 3, *(a1 + 40));
      objc_sync_exit(v7);

      v11 = *(*(a1 + 48) + 16);
    }

    v11();
  }

  else
  {
    v12 = *(a1 + 48);
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Object deallocated";
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v13];
    (*(v12 + 16))(v12, 0, 0, v14);
  }
}

void sub_100010BEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100010C08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = sub_10000EE10(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001FAA0();
      }
    }

    v7 = sub_10000EE10(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001FB08();
    }

    v8 = v5[4];
    objc_sync_enter(v8);
    v9 = v5[3];
    v5[3] = 0;

    objc_sync_exit(v8);
  }

  else
  {
    v8 = sub_10000EE10(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001FB7C();
    }
  }
}

void sub_100010E00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100010E1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v7 = sub_10000EE10(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001FA38();
      }

      v8 = v6[4];
      objc_sync_enter(v8);
      v9 = v6[3];
      v6[3] = 0;

      objc_sync_exit(v8);
      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      v14 = *(a1 + 40);
      [WeakRetained[3] creatorPID];
      v10 = *(v14 + 16);
    }

    v10();
  }

  else
  {
    v11 = *(a1 + 40);
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Object deallocated";
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v12];
    (*(v11 + 16))(v11, 0, 0, v13);
  }
}

uint64_t sub_100011118(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  objc_sync_exit(v2);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_100011258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_100011568(id a1)
{
  qword_1000433C8 = os_log_create("com.apple.CryptoTokenKit", "smartcard");

  _objc_release_x1();
}

void sub_100011998(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 8) allStoredBundleIDs];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412802;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 length])
        {
          v9 = [LSBundleRecord bundleRecordWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
          if (!v9)
          {
            v10 = sub_100011C80(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v23 = v8;
              _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Found app (%@) that was uninstalled, removing access.", buf, 0xCu);
            }

            [*(*(a1 + 32) + 8) removeAccessForBundleID:v8 matchPartial:1];
          }

          v11 = [*(*(a1 + 32) + 8) getInstallationIDFromBundleID:v8];
          if (v11)
          {
            v12 = [*(*(a1 + 32) + 8) fetchStoredInstallationIDForBundleID:v8];
            v13 = v12;
            if (v12)
            {
              v14 = [v12 isEqualToString:v11];
              if ((v14 & 1) == 0)
              {
                v15 = sub_100011C80(v14);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v17;
                  v23 = v8;
                  v24 = 2112;
                  v25 = v13;
                  v26 = 2112;
                  v27 = v11;
                  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Found app (%@) with different installation ID, removing access. Old: %@, New: %@", buf, 0x20u);
                }

                [*(*(a1 + 32) + 8) removeAccessForBundleID:v8 matchPartial:1];
              }
            }
          }

          else
          {
            v16 = sub_100011C80(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v23 = v8;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Found app (%@) that was uninstalled, removing access", buf, 0xCu);
            }

            [*(*(a1 + 32) + 8) removeAccessForBundleID:v8 matchPartial:1];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v5);
  }
}

id sub_100011C80(uint64_t a1)
{
  if (qword_1000433D0 != -1)
  {
    sub_10001FBBC();
  }

  v2 = qword_1000433D8;

  return v2;
}

void sub_100011D5C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = sub_100011C80(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "App uninstalled %@", buf, 0xCu);
        }

        v9 = [v7 bundleIdentifier];
        [*(*(a1 + 40) + 8) removeAccessForBundleID:v9 matchPartial:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
      v4 = v3;
    }

    while (v3);
  }
}

void sub_100011F80(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = sub_100011C80(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(a1 + 32);
          *buf = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v10;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Extension uninstalled %@, %@", buf, 0x16u);
        }

        v9 = [v7 bundleIdentifier];
        [*(*(a1 + 40) + 8) removeAccessForBundleID:v9 matchPartial:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
      v4 = v3;
    }

    while (v3);
  }
}

void sub_10001216C(id a1)
{
  qword_1000433D8 = os_log_create("com.apple.CryptoTokenKit", "token_access_manager");

  _objc_release_x1();
}

id sub_100012AB8(uint64_t a1)
{
  if (qword_1000433E0 != -1)
  {
    sub_10001FBD0();
  }

  v2 = qword_1000433E8;

  return v2;
}

void sub_100012D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012DB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = sub_100012AB8(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001FCE0();
      }

      v11 = v9[7];
      objc_sync_enter(v11);
      [v9[1] endSession];
      v12 = v9[1];
      v9[1] = 0;

      *(v9 + 48) = 0;
      objc_sync_exit(v11);

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v16 = WeakRetained[7];
      objc_sync_enter(v16);
      objc_storeStrong(v9 + 2, a2);
      [v9[2] setDelegate:v9];
      if (v9[4])
      {
        v17 = [v9[2] updateUIAlertMessage:?];
      }

      objc_sync_exit(v16);

      if (objc_opt_class())
      {
        v18 = v9[5];
        if (v18 && [v18 count])
        {
          v19 = [NFCTKPollConfig pollConfigWithAppletIdentifiers:v9[5]];
          v20 = v9[2];
          v31 = 0;
          v21 = [v20 startPollingWithConfig:v19 error:&v31];
          v22 = v31;
          v23 = v22;
          if (v21)
          {
            v24 = v9[7];
            objc_sync_enter(v24);
            *(v9 + 48) = 0;
            objc_sync_exit(v24);

            (*(*(a1 + 32) + 16))();
          }

          else
          {
            v29 = sub_100012AB8(v22);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10001FD54();
            }

            [v6 endSession];
            v30 = v9[7];
            objc_sync_enter(v30);
            *(v9 + 48) = 0;
            objc_sync_exit(v30);

            (*(*(a1 + 32) + 16))();
          }
        }

        else
        {
          v32[0] = NSLocalizedDescriptionKey;
          v32[1] = NSLocalizedRecoverySuggestionErrorKey;
          v33[0] = @"No valid AIDs were provided";
          v33[1] = @"Valid AIDs must be provided in Info.plist";
          v25 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
          v23 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v25];

          v26 = v9[7];
          objc_sync_enter(v26);
          *(v9 + 48) = 0;
          objc_sync_exit(v26);

          (*(*(a1 + 32) + 16))();
        }
      }

      else
      {
        v34 = NSLocalizedDescriptionKey;
        v35 = @"Missing NFC support";
        v27 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:v27];

        v28 = v9[7];
        objc_sync_enter(v28);
        *(v9 + 48) = 0;
        objc_sync_exit(v28);

        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v36 = NSLocalizedDescriptionKey;
    v37 = @"Object deallocated";
    v14 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v15 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v14];
    (*(v13 + 16))(v13, 0, v15);
  }
}

uint64_t sub_1000133F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100013A10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 checkTagConnection];
  }
}

void sub_100013FD0(id a1)
{
  qword_1000433E8 = os_log_create("com.apple.CryptoTokenKit", "smartcard");

  _objc_release_x1();
}

void sub_10001402C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000142A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000142C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_100014350(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001FFB0();
    }

    v4 = v2[4];
    objc_sync_enter(v4);
    v5 = v2[4];
    v2[4] = 0;

    objc_sync_exit(v4);
    [v2 endNFCSlotIfActive];
  }
}

id sub_100014350(uint64_t a1)
{
  if (qword_1000433F0 != -1)
  {
    sub_10002001C();
  }

  v2 = qword_1000433F8;

  return v2;
}

void sub_100014760(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100014350(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002020C();
  }
}

void sub_1000147B4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100014350(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100020274();
    }
  }
}

void sub_100014B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a30);
  _Block_object_dispose((v31 - 160), 8);
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

id sub_100014B7C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100014BB0(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = v7[8];
    if (v8)
    {
      dispatch_source_cancel(v8);
      v9 = v7[8];
      v7[8] = 0;
    }

    objc_sync_exit(v7);

    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2, v15);
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v13 = v7;
      objc_sync_enter(v13);
      v14 = v13[15];
      v13[15] = 0;

      if ((a2 & 1) == 0)
      {
        v13[1] = 0;
      }

      objc_sync_exit(v13);
    }
  }
}

void sub_100014CA8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100014350(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000202DC();
    }

    [v5 _handleConnectionCloseWithInvalidate:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100014D40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v3[1] = 2;
    objc_sync_exit(v3);

    [v3 _handleRegisteredTokenDetection:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    WeakRetained = v4;
  }
}

void sub_100014F5C(uint64_t a1)
{
  v2 = [NSError errorWithCode:-7 debugDescription:@"NFC slot timed out without receiving token"];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = sub_100014350([WeakRetained endNFCSlotIfActive]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100020344();
    }

    v6 = v4[8];
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = v4[8];
      v4[8] = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000151A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000151C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015370(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10001539C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 64));

    if (v5)
    {
      v6 = a1 + 32;
      v7 = [*(a1 + 32) stringRepresentation];
      v8 = [v3 isEqual:v7];

      if (v8)
      {
        v10 = objc_loadWeakRetained((a1 + 64));
        v11 = [v10 tokenInfoForTokenID:v3];

        if (v11 && (-[NSObject slotName](v11, "slotName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:*(a1 + 40)], v13, v14))
        {
          v15 = sub_100014350(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_100020428();
          }

          v16 = *(a1 + 48);
          if (v16)
          {
            (*(v16 + 16))();
          }
        }

        else
        {
          v17 = sub_100014350(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_100020490(v6, v11);
          }
        }
      }

      else
      {
        v11 = sub_100014350(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_1000203B0();
        }
      }
    }
  }
}

void sub_100015E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016084(id a1)
{
  qword_1000433F8 = os_log_create("com.apple.CryptoTokenKit", "smartcard_registry");

  _objc_release_x1();
}

void sub_1000160E0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100016100(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10001611C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100016240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

id sub_1000164FC(uint64_t a1)
{
  if (qword_100043400 != -1)
  {
    sub_10002090C();
  }

  v2 = qword_100043408;

  return v2;
}

void sub_100016994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 168), 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000169C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000169DC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 isCaller:v3 allowedForToken:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
  *(*(a1[9] + 8) + 24) = 1;
}

void sub_100016A58(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 16);
    objc_sync_enter(v8);
    objc_storeStrong((*(a1 + 32) + 16), a2);
    objc_sync_exit(v8);

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v9 = *(a1 + 56);
      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        v10 = [v6 endpoint];
        (*(v9 + 16))(v9, v10, 0);
      }

      else
      {
        (*(v9 + 16))(*(a1 + 56), 0, *(*(*(a1 + 80) + 8) + 40));
      }
    }

    else
    {
      activity_block[0] = _NSConcreteStackBlock;
      activity_block[1] = 3221225472;
      activity_block[2] = sub_100016C3C;
      activity_block[3] = &unk_100039010;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v20 = *(a1 + 72);
      activity_block[4] = v11;
      v16 = v12;
      v13 = *(a1 + 48);
      v14 = *(a1 + 80);
      v17 = v13;
      v21 = v14;
      v19 = *(a1 + 56);
      v18 = v6;
      _os_activity_initiate(&_mh_execute_header, "evaluate token access request", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100016C3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 80) + 8);
  obj = *(v5 + 40);
  v6 = [v2 isCaller:v3 allowedForToken:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 72) + 8) + 24) = v6;
  v7 = *(a1 + 64);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v8 = [*(a1 + 56) endpoint];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 64), 0, *(*(*(a1 + 80) + 8) + 40));
  }
}

void sub_100018094(id a1)
{
  v1 = sub_1000164FC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100020A98(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000182D0(id a1)
{
  v1 = sub_1000164FC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100020AD0(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100018954(id a1)
{
  qword_100043408 = os_log_create("com.apple.CryptoTokenKit", "tkserver");

  _objc_release_x1();
}

void sub_100018998(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1000189F8(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100043410;
  qword_100043410 = v2;
}

void sub_100018C88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100018CF8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100020CCC(a1);
  }

  [*(a1 + 32) setError:v3];
}

id sub_100018CF8(uint64_t a1)
{
  if (qword_100043420 != -1)
  {
    sub_100020D94();
  }

  v2 = qword_100043428;

  return v2;
}

void sub_100019BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100018CF8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100021070();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained cache];
    [v7 removeDriverWithClassID:*(a1 + 32)];
  }
}

void sub_100019C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100018CF8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000210DC();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained cache];
    [v7 removeDriverWithClassID:*(a1 + 32)];
  }
}

void sub_10001A110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A14C(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) setError:v7];
}

void sub_10001A52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001A55C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;
  v15 = a4;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  [*(a1 + 32) setError:v15];
}

void sub_10001A768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001AEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001AF04(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v28 = v7;
  if (v6 || !v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      obj = a2;
      v8 = WeakRetained;
      objc_sync_enter(v8);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v8[4].isa;
      v11 = [(objc_class *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v11)
      {
        v12 = *v34;
        v13 = TKTokenClassDriverClassIDKey;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * i);
            v16 = [v6 containsObject:{v15, obj}];
            if ((v16 & 1) == 0)
            {
              v17 = sub_100018CF8(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                [v15 identifier];
                objc_claimAutoreleasedReturnValue();
                sub_100021670();
              }

              v18 = [v15 attributes];
              v19 = [v18 objectForKeyedSubscript:v13];

              [v8 removeDriverWithClassID:v19];
            }
          }

          v11 = [(objc_class *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v11);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v6;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        v22 = *v30;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v29 + 1) + 8 * j);
            v25 = [(objc_class *)v8[4].isa containsObject:v24, obj];
            if ((v25 & 1) == 0)
            {
              v26 = sub_100018CF8(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                [v24 identifier];
                objc_claimAutoreleasedReturnValue();
                sub_1000216BC();
              }
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v21);
      }

      objc_storeStrong(&v8[4].isa, obj);
      objc_sync_exit(v8);
    }
  }

  else
  {
    v8 = sub_100018CF8(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000215FC();
    }
  }
}

void sub_10001BDA0(id a1)
{
  qword_100043428 = os_log_create("com.apple.CryptoTokenKit", "tokenhost");

  _objc_release_x1();
}

id sub_10001C2A4(uint64_t a1)
{
  if (qword_100043430 != -1)
  {
    sub_1000219B8();
  }

  v2 = qword_100043438;

  return v2;
}

void sub_10001C654(id a1)
{
  qword_100043438 = os_log_create("com.apple.CryptoTokenKit", "smartcard_registry");

  _objc_release_x1();
}

void sub_10001D178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10001D1A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    v4 = [v7 delegate];
    v5 = v4;
    if (v3)
    {
      [v4 connectionDidInterrupt:v7];
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      v5 = [v7 delegate];
      [v5 connectionDidInvalidate:v7];
    }

    WeakRetained = v7;
  }

LABEL_7:
}

void sub_10001D26C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v4 connectionDidInvalidate:v5];

      WeakRetained = v5;
    }
  }
}

void sub_10001D3BC(id a1)
{
  qword_100043448 = os_log_create("com.apple.CryptoTokenKit", "xpc");

  _objc_release_x1();
}

void sub_10001D510(id a1)
{
  qword_100043450 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_10001D7E0(uint64_t a1)
{
  v1 = [*(a1 + 32) tokenID];
  v2 = [v1 stringRepresentation];
  sub_100003394();
  sub_1000033AC(&_mh_execute_header, v3, v4, "Failed to test connection to endpoint for registered token: %@, error: %@", v5, v6, v7, v8);
}

void sub_10001D884(void *a1, NSObject *a2)
{
  v3 = [a1 tokenID];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Token is registered (%{public}@) but card insertion cannot be required", &v4, 0xCu);
}

void sub_10001D91C(uint64_t a1)
{
  v1 = [*(a1 + 32) tokenID];
  v2 = [v1 stringRepresentation];
  sub_100003394();
  sub_1000033AC(&_mh_execute_header, v3, v4, "Failed to receive endpoint for registered token: %@, error: %@", v5, v6, v7, v8);
}

void sub_10001D9D4(void *a1, NSObject *a2)
{
  v4 = [a1 tokenServer];
  if (v4)
  {
    v5 = "token";
  }

  else
  {
    v5 = "";
  }

  v6 = [a1 slotWatcher];
  if (v6)
  {
    v7 = "watcher";
  }

  else
  {
    v7 = "";
  }

  v8 = [a1 slotServer];
  if (v8)
  {
    v9 = "slot";
  }

  else
  {
    v9 = "";
  }

  v10 = 136447490;
  v11 = v5;
  v12 = 2082;
  v13 = v7;
  v14 = 2082;
  v15 = v9;
  v16 = 1024;
  v17 = geteuid();
  v18 = 1024;
  v19 = getuid();
  v20 = 2114;
  v21 = @"n/a";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Hello from ctkd(%{public}s:%{public}s:%{public}s) euid=%u uid=%u session:%{public}@", &v10, 0x36u);
}

void sub_10001DBD0()
{
  sub_100008F28();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100008F1C();
  sub_100008F10();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10001DC3C()
{
  sub_100008F28();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100008F1C();
  sub_100008F10();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10001DCA8()
{
  sub_100008F28();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100008F1C();
  sub_100008F10();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10001DD14()
{
  sub_100008F28();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100008F1C();
  sub_100008F10();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10001DD80()
{
  sub_100008F04();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DDBC()
{
  sub_100008EF8();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DE2C()
{
  sub_100008EF8();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DE9C()
{
  sub_100008EF8();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DF0C()
{
  sub_100008EF8();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E078()
{
  sub_100008F04();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E0B4()
{
  sub_100008F04();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E0F0(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to get bundle identifier for pid %u", v3, 8u);
}

void sub_10001E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"TKHostTokenRegistry.m" lineNumber:293 description:{@"Failed to archive data of token %@, error: %@", a3, a4}];
}

void sub_10001E200()
{
  sub_100008F04();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E23C()
{
  sub_100008F04();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E278()
{
  sub_100008EF8();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E2E8()
{
  sub_100008EF8();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E358()
{
  sub_100008EF8();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E3C8()
{
  sub_100008F04();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E404(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Writing changes into tokenDB classes: %d extensions", buf, 8u);
}

void sub_10001E44C()
{
  sub_100008EF8();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E4BC()
{
  sub_100008F04();
  sub_100008EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E4F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Refusing caller %{public}@, no extension found for classID=%{public}@", &v4, 0x16u);
}

void sub_10001E584()
{
  sub_100008EF8();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E5F4()
{
  sub_100008F04();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E630(void *a1, NSObject *a2)
{
  [a1 count];
  sub_100008EF8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updating registered token items with new items (%lu items).", v3, 0xCu);
}

void sub_10001E6B8()
{
  sub_100008F04();
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E6F4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *const getkTKVirtualTokenIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"TKHostExtension.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10001E76C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *const getkTKVirtualTokenXPCService(void)"];
  [v0 handleFailureInFunction:v1 file:@"TKHostExtension.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10001E894()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *const getkTKVirtualTokenName(void)"];
  [v0 handleFailureInFunction:v1 file:@"TKHostExtension.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10001E90C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *GuestSigningTokenServiceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TKHostExtension.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10001E98C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to start watching state of new slot, abandoning the slot (err %{public}@)", &v2, 0xCu);
}

void sub_10001EA18(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10000CE18(&_mh_execute_header, a3, a3, "Card does not contain any application handled by extension %{public}@", a2);
}

void sub_10001EA68(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = 138543362;
  v5 = v3;
  sub_10000CE18(&_mh_execute_header, a2, a3, "card inserted into slot: %{public}@", &v4);
}

void sub_10001EADC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = 138543362;
  v5 = v3;
  sub_10000CE18(&_mh_execute_header, a2, a3, "card removed from slot: %{public}@", &v4);
}

void sub_10001EB50(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10000CE18(&_mh_execute_header, a3, a3, "start watching %lu slots", a1);
}

void sub_10001EB90(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to register slot list notifications, error %{public}@", &v2, 0xCu);
}

void sub_10001EC4C(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "removing slot name=%{public}@: - remaining %lu slots", buf, 0x16u);
}

void sub_10001ECB4()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: starting polling", v2, v3, v4, v5);
}

void sub_10001ED30()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: stopping polling", v2, v3, v4, v5);
}

void sub_10001ED98()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: ending session", v2, v3, v4, v5);
}

void sub_10001EE00()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Slot %@: setCardConnected=%d", v2, 0x12u);
}

void sub_10001EE88(void *a1, NSObject *a2)
{
  v3 = a1[5];
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = [a1 isCardConnected];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Slot %@: card status changed: present=%d", &v4, 0x12u);
}

void sub_10001EF24()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D954();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Slot %@: transmitting data, %@", v1, 0x16u);
}

void sub_10001EF9C()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Slot %{public}@: failed attempt to transmit: tag is not connected", v1, 0xCu);
}

void sub_10001F010()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D954();
  sub_10000D9A0(&_mh_execute_header, v0, v1, "Slot %{public}@: failed attempt to transmit, error: %@");
}

void sub_10001F078()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: engineResetCard", v2, v3, v4, v5);
}

void sub_10001F0E0()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: The slot has no tag. Skipping card reset", v2, v3, v4, v5);
}

void sub_10001F148()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: didDetectTag", v2, v3, v4, v5);
}

void sub_10001F1B0()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D954();
  sub_10000D9A0(&_mh_execute_header, v0, v1, "Slot %@: Failed to connect to NFTag: %@");
}

void sub_10001F218()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: Connected to NFTag", v2, v3, v4, v5);
}

void sub_10001F280()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: readerManagerDidEndSession", v2, v3, v4, v5);
}

void sub_10001F2E8()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D954();
  sub_10000D9A0(&_mh_execute_header, v0, v1, "Slot %@: readerManagerDidEncounterError: %@");
}

void sub_10001F350()
{
  sub_10000D96C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Slot %@: readerManagerDidDisconnectTag", v2, v3, v4, v5);
}

void sub_10001F3B8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "keychain query failed: %d (%@)", v3, 0x12u);
}

void sub_10001F4AC()
{
  sub_1000115C4(__stack_chk_guard);
  v2 = 138412290;
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "ignoring multiple registration attempt for slot type '%@'", &v2, 0xCu);
}

void sub_10001F524(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  [WeakRetained processIdentifier];
  sub_1000115D0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x1Cu);
}

void sub_10001F5F4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "added registration for slot %{public}@", buf, 0xCu);
}

void sub_10001F64C(void *a1)
{
  [a1 processIdentifier];
  sub_1000115AC();
  sub_1000115D0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
}

void sub_10001F6D4(uint64_t a1)
{
  [*(a1 + 32) processIdentifier];
  sub_1000115AC();
  sub_1000115D0();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_10001F760(uint64_t a1)
{
  [*(a1 + 32) processIdentifier];
  sub_1000115D0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
}

void sub_10001F800(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "removing registration for slot %{public}@", buf, 0xCu);
}

void sub_10001F94C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10000D9A0(&_mh_execute_header, a2, a3, "Slot %@: Creation of NFC slot failed, error: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10001FA38()
{
  sub_1000115C4(__stack_chk_guard);
  sub_10000D954();
  sub_10000D9A0(&_mh_execute_header, v0, v1, "Slot %@: There was an error with start of NFC polling: %@");
}

void sub_10001FAA0()
{
  sub_1000115C4(__stack_chk_guard);
  sub_10000D954();
  sub_10000D9A0(&_mh_execute_header, v0, v1, "Slot %@: Reader disconnection failed, error: %@");
}

void sub_10001FB08()
{
  sub_1000115C4(__stack_chk_guard);
  sub_100008EEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001FEBC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: tag disconnected, restarting polling failed: %@", &v3, 0x16u);
}

void sub_10001FF44(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000D984(&_mh_execute_header, a2, a3, "%@: tag disconnected, restarting polling", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100020030(uint64_t a1, void *a2)
{
  v2 = [a2 creatorBundleID];
  sub_1000160C8();
  sub_10001611C(&_mh_execute_header, v3, v4, "Starting NFC slot for tokenID: %@, registrator: %@", v5, v6, v7, v8);
}

void sub_1000200C8()
{
  sub_10001613C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Cannot postpone: NFC slot not in active state (current: %ld)", v2, v3, v4, v5);
}

void sub_100020198()
{
  sub_10001613C(__stack_chk_guard);
  sub_10000D978();
  sub_1000160E0(&_mh_execute_header, v0, v1, "Cannot postpone: token ID mismatch (active: %@, requested: %@)");
}

void sub_100020428()
{
  sub_10001613C(__stack_chk_guard);
  sub_10000D978();
  sub_10000D984(&_mh_execute_header, v0, v1, "Inserted expected registered token: %@", v2, v3, v4, v5);
}

void sub_100020490(uint64_t a1, void *a2)
{
  v2 = [a2 slotName];
  sub_1000160C8();
  sub_10001611C(&_mh_execute_header, v3, v4, "Expected registered token '%@' inserted in an incorrect slot: %@", v5, v6, v7, v8);
}

void sub_10002059C(uint64_t a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting NFC operation for token %@ with termination in %f seconds", buf, 0x16u);
}

void sub_100020658(uint8_t *buf, NSObject *a2, double a3)
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Refreshing active NFC operation and terminating after %f seconds", buf, 0xCu);
}

void sub_10002069C()
{
  sub_10001613C(__stack_chk_guard);
  sub_10000D978();
  sub_1000160E0(&_mh_execute_header, v0, v1, "Postponing NFC slot termination for token %@ by %f seconds");
}

void sub_100020804()
{
  v0 = +[NSThread currentThread];
  sub_1000160C8();
  sub_10001611C(&_mh_execute_header, v1, v2, "XPC connection to '%@' endpoint was closed %@", v3, v4, v5, v6);
}

void sub_100020A08()
{
  sub_100008EF8();
  v3 = 2114;
  v4 = 0;
  v5 = 2048;
  v6 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "got notification for operation: %ld with incorrect tokenID: %{public}@ status: %ld", v2, 0x20u);
}

void sub_100020B40(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "waiting for the registry to be loaded", buf, 2u);
}

void sub_100020B80(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "received registry loaded signal", buf, 2u);
}

void sub_100020BC0()
{
  sub_100008EF8();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "sending notification '%@' failed with status %u", v2, 0x12u);
}

void sub_100020C58(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKHostTokenDriver.m" lineNumber:40 description:@"Driver context does not have registry set"];
}

void sub_100020CCC(uint64_t a1)
{
  v1 = [*(a1 + 32) driver];
  v2 = [v1 extension];
  v3 = [v2 identifier];
  sub_100008EF8();
  sub_1000033AC(&_mh_execute_header, v4, v5, "Failed to communicate with driver %{public}@, error: %{public}@", v6, v7, v8, v9);
}

void sub_100020DA8(uint64_t a1, void *a2)
{
  v3 = [a2 extension];
  v4 = [v3 identifier];
  *v11 = 138543618;
  *&v11[4] = a1;
  *&v11[12] = 2114;
  *&v11[14] = v4;
  sub_1000033AC(&_mh_execute_header, v5, v6, "Invalid or missing attribute '%{public}@' of extension %{public}@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

void sub_100020E5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKHostTokenDriver.m" lineNumber:142 description:@"Attempted to create keepalive xaction when it already exists"];
}

void sub_100021148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TKHostTokenDriver.m" lineNumber:268 description:{@"%@ asked to acquire token with bad class: %@", a2, a3}];
}

void sub_10002129C(void *a1, NSObject *a2)
{
  v3 = [a1 extension];
  v4 = [v3 identifier];
  sub_100008EF8();
  sub_10000CE18(&_mh_execute_header, a2, v5, "acquiring token on driver %{public}@ through slot", v6);
}

void sub_100021344(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_10000D984(&_mh_execute_header, a2, a3, "%{public}@: acquired by slot", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000213B4(void *a1, NSObject *a2)
{
  v3 = [a1 extension];
  v4 = [v3 identifier];
  sub_100008EF8();
  sub_10000CE18(&_mh_execute_header, a2, v5, "configuring extension %{public}@", v6);
}

void sub_100021670()
{
  sub_10001BDE4();
  *v1 = 138543362;
  *v3 = v2;
  sub_10000CE18(&_mh_execute_header, v5, v3, "token extension uninstalled: %{public}@", v4);
}

void sub_1000216BC()
{
  sub_10001BDE4();
  *v1 = 138543362;
  *v3 = v2;
  sub_10000CE18(&_mh_execute_header, v5, v3, "token extension installed: %{public}@", v4);
}

void sub_100021708()
{
  sub_10001BDE4();
  *v1 = 138543362;
  *v3 = v2;
  sub_10000CE18(&_mh_execute_header, v5, v3, "preloading token extension: '%{public}@'", v4);
}

void sub_100021754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = +[NSAssertionHandler currentHandler];
  v8 = [a1 identifier];
  [v9 handleFailureInMethod:a2 object:a3 file:@"TKHostTokenDriver.m" lineNumber:538 description:{@"token extension %@ has no %@ attribute", v8, a4}];
}

void sub_10002185C(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "terminating, force-invalidating %d drivers", v3, 8u);
}

void sub_100021A9C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No registration found for tokenID: %@", &v2, 0xCu);
}

void sub_100021B28(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ configured with unsupported configuration object %@", &v3, 0x16u);
}