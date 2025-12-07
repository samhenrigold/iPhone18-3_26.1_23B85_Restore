uint64_t sub_100002140(uint64_t a1)
{
  qword_1000D5290 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000022BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2 <= 0)
  {
    v3 = +[ASOctaneServer shared];
    *(*(a1 + 32) + 8) = [v3 activePort];

    v2 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000025C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000025E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000025FC(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleID];
  v4 = [v7 buyProductWithID:v2 bundleID:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000028A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000028C0(uint64_t a1)
{
  v8 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) transactionID];
  v4 = [*(a1 + 32) bundleID];
  v5 = [v8 changeAutoRenewStatus:v2 transactionID:v3 bundleID:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100002B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B8C(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 clearOverridesForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100002E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002E84(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 deleteAllTransactionsForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100003374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003398(uint64_t a1)
{
  v8 = +[ASOctaneServer shared];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) bundleID];
  v5 = [v8 expireOrRenewSubscriptionWithIdentifier:v3 expire:v2 forBundleID:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100003540(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 getStorefrontForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000036D4(uint64_t a1)
{
  v6 = +[ASOctaneServer shared];
  v2 = [*(a1 + 32) bundleID];
  v3 = [v6 getTransactionDataForBundleID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100003A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003AB8(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v4 = +[ASOctaneServer shared];
        v24 = [*(a1 + 32) transactionID];
        v6 = [*(a1 + 32) bundleID];
        v10 = [v4 resolveIssueForTransactionWithIdentifier:v24 forBundleID:v6];
        goto LABEL_23;
      }

      v4 = +[ASOctaneServer shared];
      v12 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      v13 = v4;
      v14 = v12;
      v15 = v6;
      v16 = 0;
    }

    else
    {
      if (v2 != 6)
      {
        if (v2 == 7)
        {
          v4 = +[ASOctaneServer shared];
          v5 = [*(a1 + 32) transactionID];
          v6 = [*(a1 + 32) bundleID];
          v7 = v4;
          v8 = 1;
          goto LABEL_22;
        }

        if (v2 == 8)
        {
          v4 = +[ASOctaneServer shared];
          v5 = [*(a1 + 32) transactionID];
          v6 = [*(a1 + 32) bundleID];
          v7 = v4;
          v8 = 0;
LABEL_22:
          v10 = [v7 completePriceConsentRequestWithResponse:v8 transactionIdentifier:v5 forBundleID:v6];
          goto LABEL_23;
        }

        goto LABEL_30;
      }

      v4 = +[ASOctaneServer shared];
      v23 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      v13 = v4;
      v14 = v23;
      v15 = v6;
      v16 = 1;
    }

    v10 = [v13 startPriceIncreaseForTransactionID:v14 bundleID:v15 needsConsent:v16];
LABEL_23:
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v10;

    goto LABEL_24;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = +[ASOctaneServer shared];
      v22 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      [v4 deleteTransactionWithIdentifier:v22 forBundleID:v6];
    }

    else
    {
      v4 = +[ASOctaneServer shared];
      v11 = [*(a1 + 32) transactionID];
      v6 = [*(a1 + 32) bundleID];
      [v4 refundTransactionWithIdentifier:v11 forBundleID:v6];
    }
    v10 = ;
    goto LABEL_23;
  }

  if (v2)
  {
    if (v2 != 1)
    {
LABEL_30:
      v28 = ASDErrorDomain;
      v18 = [NSString stringWithFormat:@"Invalid action (action: %ld)", v2, NSDebugDescriptionErrorKey];
      v34 = v18;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v30 = [NSError errorWithDomain:v28 code:951 userInfo:v29];
      v31 = *(*(a1 + 40) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      goto LABEL_31;
    }

    v4 = +[ASOctaneServer shared];
    v9 = [*(a1 + 32) transactionID];
    v6 = [*(a1 + 32) bundleID];
    v10 = [v4 cancelTransactionWithIdentifier:v9 forBundleID:v6];
    goto LABEL_23;
  }

  v17 = ASDErrorDomain;
  v35 = NSDebugDescriptionErrorKey;
  v36 = @"Unknown action request";
  v18 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v19 = [NSError errorWithDomain:v17 code:951 userInfo:v18];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_31:
LABEL_24:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v27 = qword_1000D52D8;
    if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
    {
      sub_10008DDC8(a1, v27, v3);
    }
  }
}

void sub_10000423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000425C(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleID];
  v4 = [v7 setStorefront:v2 forBundleID:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100004404(void *a1)
{
  v5 = +[ASOctaneServer shared];
  v2 = [v5 registerForEventOfType:a1[6] withFilterData:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100004510(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 unregisterForEventWithIdentifier:*(a1 + 32)];
}

void sub_100004628(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 useConfigurationDirectory:*(a1 + 32) forBundleID:*(a1 + 40)];
}

void sub_100004834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004854(uint64_t a1)
{
  v5 = +[ASOctaneServer shared];
  v2 = [v5 generateSKANPostbackSignature:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100004AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004B10(uint64_t a1)
{
  v10 = +[ASOctaneServer shared];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) bundleID];
  v7 = [v10 validateSKAdNetworkSignature:v2 withPublicKey:v3 source:v4 andParameters:v5 forBundleID:v6];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100004C90(void *a1)
{
  v2 = +[ASOctaneServer shared];
  *(*(a1[5] + 8) + 24) = [v2 storeKitErrorForCategory:a1[6] bundleID:a1[4]];
}

void sub_100004DA4(void *a1)
{
  v2 = +[ASOctaneServer shared];
  [v2 setStoreKitError:a1[5] forCategory:a1[6] bundleID:a1[4]];
}

void sub_100004FD4(uint64_t a1)
{
  v4 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) bundleID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 getIntegerValueForIdentifier:v2 forBundleID:v3];
}

void sub_100005250(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) bundleID];
  v6 = [v2 setIntegerValue:v3 forIdentifier:v4 forBundleID:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DCBC();
    }

    v9 = qword_1000D52D8;
    if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 logKey];
      v14 = *(a1 + 48);
      v13 = *(a1 + 56);
      v15 = *(*(*(a1 + 40) + 8) + 40);
      v16 = 138544130;
      v17 = v12;
      v18 = 2048;
      v19 = v14;
      v20 = 2048;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set value to %ld for key %lu: %{public}@", &v16, 0x2Au);
    }
  }
}

void sub_1000055C0(uint64_t a1)
{
  v7 = +[ASOctaneServer shared];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) bundleID];
  v4 = [v7 getStringValueForIdentifier:v2 forBundleID:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100005864(uint64_t a1)
{
  v2 = +[ASOctaneServer shared];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleID];
  v6 = [v2 setStringValue:v4 forIdentifier:v3 forBundleID:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DCBC();
    }

    v9 = qword_1000D52D8;
    if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 logKey];
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = 138544130;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set value to %ld for key %lu: %{public}@", &v16, 0x2Au);
    }
  }
}

void sub_100005AF8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1000D0BA8;
  off_1000D0BA8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1000D52A0;
  qword_1000D52A0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1000D52A8;
  qword_1000D52A8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1000D52B0;
  qword_1000D52B0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1000D52B8;
  qword_1000D52B8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1000D52C0;
  qword_1000D52C0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1000D52C8;
  qword_1000D52C8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1000D52D0;
  qword_1000D52D0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1000D52D8;
  qword_1000D52D8 = v17;

  qword_1000D52E0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_100005C80(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2114;
  *(a4 + 14) = v4;
  return result;
}

id sub_100006284(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 path];
  v8 = [NSString stringWithFormat:@"%@ for '%@'", v5, v7];

  v9 = ASDErrorWithUnderlyingErrorAndDescription();

  return v9;
}

void sub_100006BD8(id a1)
{
  qword_1000D52F0 = objc_alloc_init(SKClientBroker);

  _objc_release_x1();
}

void sub_100008770(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10008E09C();
  }
}

void sub_1000087B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008E11C();
    }
  }

  else if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 8);
    objc_sync_enter(v7);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [*(*(a1 + 32) + 8) objectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 updatedTransactions:v5];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
  }
}

void sub_100008A90(id a1)
{
  qword_1000D5300 = objc_alloc_init(SKServiceBroker);

  _objc_release_x1();
}

uint64_t sub_100008B9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100008C84(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100008D6C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100008E54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100008F3C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100009024(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10000910C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000091F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000092DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000093C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000094AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100009668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

void sub_1000096D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

NSString sub_1000098FC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4250 = result;
  return result;
}

NSString sub_1000099A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4258 = result;
  return result;
}

NSString sub_100009A44()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4260 = result;
  return result;
}

NSString sub_100009AE8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4268 = result;
  return result;
}

NSString sub_100009B8C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4270 = result;
  return result;
}

NSString sub_100009C30()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4278 = result;
  return result;
}

NSString sub_100009CD4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4280 = result;
  return result;
}

NSString sub_100009D78()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4288 = result;
  return result;
}

NSString sub_100009E20()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4290 = result;
  return result;
}

NSString sub_100009EC4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4298 = result;
  return result;
}

NSString sub_100009F68()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42A0 = result;
  return result;
}

NSString sub_10000A010()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42A8 = result;
  return result;
}

NSString sub_10000A0B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42B0 = result;
  return result;
}

NSString sub_10000A158()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42B8 = result;
  return result;
}

NSString sub_10000A1FC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42C0 = result;
  return result;
}

NSString sub_10000A2A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42C8 = result;
  return result;
}

NSString sub_10000A344()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42D0 = result;
  return result;
}

NSString sub_10000A3E8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42D8 = result;
  return result;
}

NSString sub_10000A48C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42E0 = result;
  return result;
}

NSString sub_10000A530()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42E8 = result;
  return result;
}

NSString sub_10000A5D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42F0 = result;
  return result;
}

NSString sub_10000A678()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E42F8 = result;
  return result;
}

NSString sub_10000A71C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4300 = result;
  return result;
}

NSString sub_10000A7C0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4308 = result;
  return result;
}

NSString sub_10000A864()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4310 = result;
  return result;
}

NSString sub_10000A908()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4318 = result;
  return result;
}

NSString sub_10000A9AC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4320 = result;
  return result;
}

NSString sub_10000AA50()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4328 = result;
  return result;
}

NSString sub_10000AAF4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4330 = result;
  return result;
}

NSString sub_10000AB98()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4338 = result;
  return result;
}

NSString sub_10000AC3C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4340 = result;
  return result;
}

NSString sub_10000ACE0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4348 = result;
  return result;
}

NSString sub_10000AD8C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4350 = result;
  return result;
}

NSString sub_10000AE30()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4358 = result;
  return result;
}

NSString sub_10000AED8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4360 = result;
  return result;
}

NSString sub_10000AF7C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4368 = result;
  return result;
}

NSString sub_10000B020()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4370 = result;
  return result;
}

NSString sub_10000B0C4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4378 = result;
  return result;
}

NSString sub_10000B168()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4380 = result;
  return result;
}

NSString sub_10000B20C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4388 = result;
  return result;
}

NSString sub_10000B2B0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4390 = result;
  return result;
}

NSString sub_10000B354()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4398 = result;
  return result;
}

NSString sub_10000B3FC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43A0 = result;
  return result;
}

NSString sub_10000B4A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43A8 = result;
  return result;
}

NSString sub_10000B544()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43B0 = result;
  return result;
}

NSString sub_10000B5E8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43B8 = result;
  return result;
}

NSString sub_10000B68C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43C0 = result;
  return result;
}

NSString sub_10000B730()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43C8 = result;
  return result;
}

NSString sub_10000B7D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43D0 = result;
  return result;
}

NSString sub_10000B878()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43D8 = result;
  return result;
}

NSString sub_10000B91C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43E0 = result;
  return result;
}

NSString sub_10000B9C0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43E8 = result;
  return result;
}

NSString sub_10000BA64()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43F0 = result;
  return result;
}

NSString sub_10000BB08()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E43F8 = result;
  return result;
}

NSString sub_10000BBAC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4400 = result;
  return result;
}

NSString sub_10000BC50()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4408 = result;
  return result;
}

NSString sub_10000BCF4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4410 = result;
  return result;
}

NSString sub_10000BD98()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4418 = result;
  return result;
}

NSString sub_10000BE3C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4420 = result;
  return result;
}

NSString sub_10000BEE0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4428 = result;
  return result;
}

NSString sub_10000BF88()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4430 = result;
  return result;
}

NSString sub_10000C034()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4438 = result;
  return result;
}

NSString sub_10000C0E0()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4440 = result;
  return result;
}

NSString sub_10000C184()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4448 = result;
  return result;
}

NSString sub_10000C228()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4450 = result;
  return result;
}

NSString sub_10000C2CC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4458 = result;
  return result;
}

id sub_10000C328(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id sub_10000C3BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagKey();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10000C458()
{
  sub_100013A7C();
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  swift_allocError();
  *v1 = v0;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_10000C4E8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return _swift_continuation_throwingResume(a1);
}

uint64_t sub_10000C50C()
{
  v2[3] = &type metadata for StoreKitFeatureFlag;
  v2[4] = sub_1000129C4();
  LOBYTE(v2[0]) = 0;
  v0 = isFeatureEnabled(_:)();
  sub_100012A18(v2);
  if (v0)
  {
    return 0x74694B65726F7453;
  }

  else
  {
    return 0x65726F7473707061;
  }
}

uint64_t sub_10000C7D0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) expirationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_10001267C(a1, v5, 1, v6);
}

id sub_10000CA28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = objc_allocWithZone(type metadata accessor for Bag());
  result = sub_10000CC78(v4);
  *a3 = result;
  return result;
}

uint64_t sub_10000CA8C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t sub_10000CB44(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a3 = a1;

  return swift_unknownObjectRelease();
}

id sub_10000CBDC()
{
  sub_100013A7C();
  v2 = objc_allocWithZone(type metadata accessor for Bag.XcodeBag(0));

  return sub_10000EF28(v1, v0);
}

id sub_10000CC78(char a1)
{
  v2 = v1;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = [objc_opt_self() currentProcess];
  v8 = **(&off_1000BEC50 + a1);
  [v7 setAccountMediaType:v8];

  sub_100012BAC(0, &qword_1000D1C60, AMSBag_ptr);
  v9 = type metadata accessor for Bag();
  v10 = sub_10000C50C();
  v12 = v11;
  v13 = v7;
  v14 = sub_10000CE78(v10, v12, 49, 0xE100000000000000, v7);
  *&v2[OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag] = v14;
  v15 = type metadata accessor for TaskPriority();
  sub_10001267C(v6, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  v17 = v14;
  v18 = sub_10000D994(0, 0, v6, &unk_1000935A0, v16, &type metadata for () + 8);

  *&v2[OBJC_IVAR____TtC22StoreKitUISceneService3Bag_accountListenerTask] = v18;
  v20.receiver = v2;
  v20.super_class = v9;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_10000CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [swift_getObjCClassFromMetadata() bagForProfile:v6 profileVersion:v7 processInfo:a5];

  return v8;
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 240) = a5;
  *(v5 + 234) = a4;
  v6 = sub_100012634(&qword_1000D1C68, &qword_1000935A8);
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  v7 = sub_100012634(&qword_1000D1C70, &qword_1000935B0);
  *(v5 + 272) = v7;
  *(v5 + 280) = *(v7 - 8);
  *(v5 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10000D050, 0, 0);
}

uint64_t sub_10000D050()
{
  if (qword_1000D1AD0 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_100039FAC();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v5 = sub_1000139B0(v4);
  *v5 = v6;
  sub_100013914(v5);
  sub_1000139C0();

  return AsyncStream.Iterator.next(isolation:)(v7);
}

uint64_t sub_10000D14C()
{
  sub_100013A88();

  return _swift_task_switch(sub_10000D244, 0, 0);
}

uint64_t sub_10000D244()
{
  v34 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  *(v0 + 304) = v2;
  *(v0 + 312) = v3;
  if (!v3)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    sub_100013A94();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 234);
  if (v5 == v1)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
      LOBYTE(v5) = *(v0 + 234);
    }

    v6 = v0 + 224;
    v7 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v7, qword_1000E4560);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v8 = *(v0 + 200);
    *(v0 + 176) = *(v0 + 192);
    *(v0 + 184) = v8;
    v9._countAndFlagsBits = 0x6164696C61766E49;
    v9._object = 0xED000020676E6974;
    String.append(_:)(v9);
    *(v0 + 233) = v5;
    _print_unlocked<A, B>(_:_:)();
    v10._object = 0x800000010009DDE0;
    v10._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v10);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = static os_log_type_t.default.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v32 = v12;
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v15 = 136446466;
      *(v0 + 208) = 91;
      *(v0 + 216) = 0xE100000000000000;
      v16._countAndFlagsBits = v4;
      v16._object = v3;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_1000847A8(*(v0 + 208), *(v0 + 216), &v33);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_1000847A8(v32, v11, &v33);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      v6 = v0 + 224;
    }

    else
    {
    }

    if (qword_1000D1A10 != -1)
    {
      sub_10001395C(&qword_1000D1A10);
    }

    v27 = [*(v0 + 240) stringForKey:{qword_1000E43F0, v32}];
    *(v0 + 320) = v27;
    *(v0 + 16) = v0;
    *(v0 + 56) = v6;
    *(v0 + 24) = sub_10000D6C8;
    v28 = swift_continuation_init();
    *(v0 + 136) = sub_100012634(&qword_1000D1C78, &qword_1000935B8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000D914;
    *(v0 + 104) = &unk_1000BE9C0;
    *(v0 + 112) = v28;
    [v27 valueWithCompletion:v0 + 80];
    sub_100013A94();

    return _swift_continuation_await(v29);
  }

  else
  {

    v22 = swift_task_alloc();
    v23 = sub_1000139B0(v22);
    *v23 = v24;
    sub_100013914(v23);
    sub_1000139C0();
    sub_100013A94();

    return AsyncStream.Iterator.next(isolation:)(v25);
  }
}

uint64_t sub_10000D6C8()
{
  sub_100013A88();
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_10000D864;
  }

  else
  {
    v2 = sub_10000D7D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000D7D4()
{
  sub_100013A88();
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  v3 = swift_task_alloc();
  v4 = sub_1000139B0(v3);
  *v4 = v5;
  sub_100013914(v4);
  sub_1000139C0();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t sub_10000D864()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  swift_willThrow();

  v3 = swift_task_alloc();
  v4 = sub_1000139B0(v3);
  *v4 = v5;
  sub_100013914(v4);
  sub_1000139C0();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t *sub_10000D914(uint64_t a1, void *a2, char a3, void *a4)
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v8 = a4;
    return sub_10000C458();
  }

  else if (a2)
  {
    return sub_10000C4E8(*result, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100012BEC();
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100012898(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100012CB4(v11, &unk_1000D3EC0, &qword_100093590);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012CB4(a3, &unk_1000D3EC0, &qword_100093590);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_10000DC24()
{

  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  Task.cancel()();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for Bag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000DD24(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) arrayForKey:a1];

  return v2;
}

id sub_10000DDC8(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) BOOLForKey:a1];

  return v2;
}

void sub_10000DE6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000DF2C;
  v5[3] = &unk_1000BE9E8;
  v4 = _Block_copy(v5);

  [v3 createSnapshotWithCompletion:v4];
  _Block_release(v4);
}

void sub_10000DF2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000E044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10000E0B4(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) doubleForKey:a1];

  return v2;
}

id sub_10000E158(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) integerForKey:a1];

  return v2;
}

id sub_10000E1FC(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) stringForKey:a1];

  return v2;
}

id sub_10000E2A0(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) URLForKey:a1];

  return v2;
}

id sub_10000E344(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag);
  if (([v5 respondsToSelector:"URLForKey:account:"] & 1) == 0 || (result = objc_msgSend(v5, "URLForKey:account:", a1, a2)) == 0)
  {
    v7 = [v5 URLForKey:a1];

    return v7;
  }

  return result;
}

id sub_10000E464(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService3Bag_bag) dictionaryForKey:a1];

  return v2;
}

void *sub_10000E56C()
{
  sub_100012634(&qword_1000D1D50, &unk_100093610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093320;
  if (qword_1000D1890 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E4270;
  *(inited + 32) = qword_1000E4270;
  *(inited + 40) = 0xD000000000000027;
  *(inited + 48) = 0x800000010009E020;
  v2 = qword_1000D18B0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E4290;
  *(inited + 56) = qword_1000E4290;
  *(inited + 64) = 0xD00000000000002DLL;
  *(inited + 72) = 0x800000010009E050;
  v5 = qword_1000D1950;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1000E4330;
  *(inited + 80) = qword_1000E4330;
  *(inited + 88) = 0xD000000000000031;
  *(inited + 96) = 0x800000010009E080;
  v8 = qword_1000D1968;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1000E4348;
  *(inited + 104) = qword_1000E4348;
  *(inited + 112) = 0xD000000000000021;
  *(inited + 120) = 0x800000010009E0C0;
  v11 = qword_1000D1970;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1000E4350;
  *(inited + 128) = qword_1000E4350;
  *(inited + 136) = 0xD00000000000001CLL;
  *(inited + 144) = 0x800000010009E0F0;
  v14 = qword_1000D1998;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1000E4378;
  *(inited + 152) = qword_1000E4378;
  strcpy((inited + 160), "/subscriptions");
  *(inited + 175) = -18;
  v17 = qword_1000D19C0;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1000E43A0;
  *(inited + 176) = qword_1000E43A0;
  *(inited + 184) = 0xD000000000000038;
  *(inited + 192) = 0x800000010009E110;
  v20 = qword_1000D19C8;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1000E43A8;
  *(inited + 200) = qword_1000E43A8;
  *(inited + 208) = 0xD000000000000035;
  *(inited + 216) = 0x800000010009E150;
  v23 = qword_1000D19E0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1000E43C0;
  *(inited + 224) = qword_1000E43C0;
  *(inited + 232) = 0xD00000000000002ELL;
  *(inited + 240) = 0x800000010009E190;
  v26 = qword_1000D19F8;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1000E43D8;
  *(inited + 248) = qword_1000E43D8;
  *(inited + 256) = 0x6D65656465722FLL;
  *(inited + 264) = 0xE700000000000000;
  v29 = qword_1000D1A00;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1000E43E0;
  *(inited + 272) = qword_1000E43E0;
  *(inited + 280) = 0x2F646E756665722FLL;
  *(inited + 288) = 0xEF74736575716572;
  v32 = qword_1000D1A08;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_1000E43E8;
  *(inited + 296) = qword_1000E43E8;
  *(inited + 304) = 0xD000000000000038;
  *(inited + 312) = 0x800000010009E1C0;
  v35 = qword_1000D1A28;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_1000E4408;
  *(inited + 320) = qword_1000E4408;
  *(inited + 328) = 0xD000000000000015;
  *(inited + 336) = 0x800000010009E200;
  v38 = qword_1000D1A48;
  v39 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = qword_1000E4428;
  *(inited + 344) = qword_1000E4428;
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x800000010009E220;
  v41 = qword_1000D1A50;
  v42 = v40;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_1000E4430;
  *(inited + 368) = qword_1000E4430;
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x800000010009E240;
  type metadata accessor for AMSBagKey(0);
  sub_100011B18(&qword_1000D1C48, type metadata accessor for AMSBagKey, &unk_1000934FC);
  v44 = v43;
  result = Dictionary.init(dictionaryLiteral:)();
  off_1000D1AA0 = result;
  return result;
}

uint64_t sub_10000EE14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_expirationDate;
  swift_beginAccess();
  sub_100012A64(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10000EF28(void *a1, void *a2)
{
  v154[2] = a2;
  v154[1] = a1;
  v3 = sub_100012634(&qword_1000D1CF0, &qword_1000935C8);
  __chkstk_darwin(v3 - 8);
  v5 = v154 - v4;
  v6 = OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_expirationDate;
  v7 = type metadata accessor for Date();
  sub_10001267C(&v2[v6], 1, 1, v7);
  v2[OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_isExpired] = 0;
  static Date.distantFuture.getter();
  v155 = v7;
  sub_10001267C(v5, 0, 1, v7);
  swift_beginAccess();
  v158 = v2;
  sub_100012A64(v5, &v2[v6]);
  swift_endAccess();
  v8 = [objc_opt_self() sharedInstance];
  v166._countAndFlagsBits = 0x736F686C61636F6CLL;
  v166._object = 0xEA00000000003A74;
  v157 = v8;
  *&v164[0] = [v8 activePort];
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = v166;
  v166._countAndFlagsBits = 0x2F2F3A70747468;
  v166._object = 0xE700000000000000;
  v156 = v10;
  String.append(_:)(v10);
  object = v166._object;
  countAndFlagsBits = v166._countAndFlagsBits;
  if (qword_1000D1A98 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v11 = off_1000D1AA0;
    type metadata accessor for AMSBagKey(0);
    v13 = v12;
    sub_100011B18(&qword_1000D1C48, type metadata accessor for AMSBagKey, &unk_1000934FC);

    v154[0] = v13;
    v14 = Dictionary.init(dictionaryLiteral:)();
    v15 = v11 + 64;
    v16 = 1 << v11[32];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v11 + 8);
    v19 = (v16 + 63) >> 6;
    v160 = v11;

    v20 = 0;
    *&v159 = v11 + 64;
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v18)) | (v21 << 6);
      v23 = *(*(v160 + 6) + 8 * v22);
      v24 = (*(v160 + 7) + 16 * v22);
      v25 = v24[1];
      *&v164[0] = *v24;
      *(&v164[0] + 1) = v25;
      v165._countAndFlagsBits = countAndFlagsBits;
      v165._object = object;
      v26 = v23;

      v165._countAndFlagsBits = String.init<A>(_:)();
      v165._object = v27;
      String.append<A>(contentsOf:)();
      v168 = &type metadata for String;
      v166 = v165;
      sub_100012AD4(&v166, v164);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165._countAndFlagsBits = v14;
      v29 = sub_100083AE0();
      v31 = v14[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v29;
      v35 = v30;
      sub_100012634(&qword_1000D1CF8, &unk_1000935D0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
      {
        v36 = sub_100083AE0();
        if ((v35 & 1) != (v37 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v34 = v36;
      }

      v18 &= v18 - 1;
      v14 = v165._countAndFlagsBits;
      if (v35)
      {
        v38 = (*(v165._countAndFlagsBits + 56) + 32 * v34);
        sub_100012A18(v38);
        sub_100012AD4(v164, v38);
      }

      else
      {
        *(v165._countAndFlagsBits + 8 * (v34 >> 6) + 64) |= 1 << v34;
        *(v14[6] + 8 * v34) = v26;
        sub_100012AD4(v164, (v14[7] + 32 * v34));

        v39 = v14[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_84;
        }

        v14[2] = v41;
      }

      v20 = v21;
      v15 = v159;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  while (1)
  {
LABEL_6:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *&v15[8 * v21];
    ++v20;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v42 = OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_bag;
  v43 = v158;
  *&v158[OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_bag] = v14;
  if (qword_1000D1870 != -1)
  {
    swift_once();
  }

  v44 = qword_1000E4250;
  v45 = sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  v168 = v45;
  v166._countAndFlagsBits = &off_1000BE5D0;
  sub_10001397C(&v43[v42]);
  sub_10003A098(&v166, v44);
  swift_endAccess();
  if (qword_1000D1888 != -1)
  {
    swift_once();
  }

  v46 = qword_1000E4268;
  v168 = &type metadata for Int;
  v166._countAndFlagsBits = 1;
  sub_10001397C(&v43[v42]);
  sub_10003A098(&v166, v46);
  swift_endAccess();
  if (qword_1000D18A0 != -1)
  {
    swift_once();
  }

  v47 = qword_1000E4280;
  sub_100012634(&qword_1000D1D08, &qword_1000935E0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100093330;
  *(v48 + 32) = 0x702D6C72752D3276;
  *(v48 + 40) = 0xEF736E7265747461;
  *(v48 + 48) = &off_1000BE630;
  v160 = v45;
  *(v48 + 72) = v45;
  strcpy((v48 + 80), "v2-mapped-urls");
  *(v48 + 95) = -18;
  sub_100012634(&qword_1000D1D10, &qword_1000935E8);
  v49 = swift_allocObject();
  v159 = xmmword_100093340;
  *(v49 + 16) = xmmword_100093340;
  strcpy((v49 + 32), "/subscriptions");
  *(v49 + 47) = -18;
  v166._countAndFlagsBits = 0;
  v166._object = 0xE000000000000000;
  v154[0] = v47;
  _StringGuts.grow(_:)(16);
  v50 = object;

  v51 = countAndFlagsBits;
  v166._countAndFlagsBits = countAndFlagsBits;
  v166._object = v50;
  v52._countAndFlagsBits = 0x697263736275732FLL;
  v52._object = 0xEE00736E6F697470;
  String.append(_:)(v52);
  v53 = v166._object;
  *(v49 + 48) = v166._countAndFlagsBits;
  *(v49 + 56) = v53;
  *(v49 + 64) = 0xD00000000000001ALL;
  *(v49 + 72) = 0x800000010009DE80;
  v166._countAndFlagsBits = 0;
  v166._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v166._countAndFlagsBits = v51;
  v166._object = v50;
  v54._countAndFlagsBits = 0xD00000000000001ALL;
  v54._object = 0x800000010009DE80;
  String.append(_:)(v54);
  v55 = v166._object;
  *(v49 + 80) = v166._countAndFlagsBits;
  *(v49 + 88) = v55;
  v56 = Dictionary.init(dictionaryLiteral:)();
  v57 = sub_100012634(&qword_1000D1D18, &qword_1000935F0);
  *(v48 + 96) = v56;
  *(v48 + 120) = v57;
  *(v48 + 128) = 0xD000000000000014;
  *(v48 + 136) = 0x800000010009DEA0;
  *(v48 + 168) = sub_100012634(&qword_1000D1D20, &qword_1000935F8);
  *(v48 + 144) = _swiftEmptyArrayStorage;
  v58 = Dictionary.init(dictionaryLiteral:)();
  v168 = sub_100012634(&qword_1000D1D28, &unk_100093600);
  v166._countAndFlagsBits = v58;
  sub_10001397C(&v43[v42]);
  sub_10003A098(&v166, v154[0]);
  swift_endAccess();
  sub_100012BAC(0, &qword_1000D1D30, off_1000BD048);
  v59 = sub_10003A524();
  v60 = [v157 getStorefrontWithContext:v59];
  if (v60)
  {
    v61 = v60;
    v62 = v59;
    type metadata accessor for OctaneStorefrontKey(0);
    sub_100011B18(&qword_1000D1D40, type metadata accessor for OctaneStorefrontKey, &unk_1000942DC);
    v63 = &type metadata for String;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1000D18A8 != -1)
    {
      sub_100013A30(&qword_1000D18A8);
    }

    v64 = qword_1000E4288;
    v65 = sub_100013A50();
    if (v66)
    {
      v67 = &type metadata for String;
    }

    else
    {
      v65 = sub_100013A6C();
    }

    v166._countAndFlagsBits = v65;
    v166._object = v66;
    v168 = v67;
    sub_10001397C(&v158[v42]);
    sub_10003A098(&v166, &unk_1000E4000);
    swift_endAccess();
    if (qword_1000D18C0 != -1)
    {
      sub_100013A10(&qword_1000D18C0);
    }

    v92 = qword_1000E42A0;
    v93 = sub_100013A50();
    v79 = v156._countAndFlagsBits;
    if (v94)
    {
      v95 = &type metadata for String;
    }

    else
    {
      v93 = sub_100013A6C();
    }

    v69 = v158;
    v166._countAndFlagsBits = v93;
    v166._object = v94;
    v168 = v95;
    sub_10001393C();
    v96 = sub_100013998();
    sub_10003A098(v96, &unk_1000E4000);
    swift_endAccess();
    if (qword_1000D1978 != -1)
    {
      sub_1000139F0(&qword_1000D1978);
    }

    v97 = qword_1000E4358;
    v98 = [v157 getStringValueForIdentifier:4 withContext:v62];
    if (v98)
    {
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v166._countAndFlagsBits = v99;
      v166._object = v101;
      *&v164[0] = 95;
      *(&v164[0] + 1) = 0xE100000000000000;
      v165._countAndFlagsBits = 45;
      v165._object = 0xE100000000000000;
      sub_100012B58();
      v98 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v103 = v102;
    }

    else
    {
      v103 = 0;
      v63 = 0;
      v167 = 0;
    }

    v166._countAndFlagsBits = v98;
    v166._object = v103;
    v168 = v63;
    sub_10001393C();
    v104 = sub_100013998();
    sub_10003A098(v104, v97);
    swift_endAccess();
    if (qword_1000D1A10 != -1)
    {
      sub_10001395C(&qword_1000D1A10);
    }

    v105 = qword_1000E43F0;
    v106 = sub_100013A50();
    v59 = v62;
    if (v107)
    {
      v108 = &type metadata for String;
    }

    else
    {
      v106 = sub_100013A6C();
    }

    v166._countAndFlagsBits = v106;
    v166._object = v107;
    v168 = v108;
    sub_10001393C();
    v109 = sub_100013998();
    sub_10003A098(v109, v97);
    swift_endAccess();
    if (qword_1000D1A18 != -1)
    {
      sub_1000139D0(&qword_1000D1A18);
    }

    v110 = qword_1000E43F8;
    v111 = sub_100013A50();
    v113 = v112;

    if (v113)
    {
      v114 = &type metadata for String;
    }

    else
    {
      v111 = 0;
      v114 = 0;
      v167 = 0;
    }

    v73 = v160;
    v166._countAndFlagsBits = v111;
    v166._object = v113;
    v168 = v114;
    sub_10001393C();
    v115 = sub_100013998();
    sub_10003A098(v115, v97);
    swift_endAccess();
    v78 = v156._object;
  }

  else
  {
    if (qword_1000D18A8 != -1)
    {
      sub_100013A30(&qword_1000D18A8);
    }

    v68 = qword_1000E4288;
    v168 = &type metadata for String;
    v166._countAndFlagsBits = 21333;
    v166._object = 0xE200000000000000;
    v69 = v158;
    sub_10001393C();
    v70 = v68;
    v71 = sub_100013998();
    sub_10003A098(v71, v72);
    swift_endAccess();
    v73 = v160;
    if (qword_1000D18C0 != -1)
    {
      sub_100013A10(&qword_1000D18C0);
    }

    v74 = qword_1000E42A0;
    v168 = &type metadata for String;
    v166._countAndFlagsBits = 4477781;
    v166._object = 0xE300000000000000;
    sub_10001393C();
    v75 = v74;
    v76 = sub_100013998();
    sub_10003A098(v76, v77);
    swift_endAccess();
    v78 = v156._object;
    v79 = v156._countAndFlagsBits;
    if (qword_1000D1978 != -1)
    {
      sub_1000139F0(&qword_1000D1978);
    }

    v80 = qword_1000E4358;
    v168 = &type metadata for String;
    v166._countAndFlagsBits = 0x53552D6E65;
    v166._object = 0xE500000000000000;
    sub_10001393C();
    v81 = v80;
    v82 = sub_100013998();
    sub_10003A098(v82, v83);
    swift_endAccess();
    if (qword_1000D1A10 != -1)
    {
      sub_10001395C(&qword_1000D1A10);
    }

    v84 = qword_1000E43F0;
    v168 = &type metadata for String;
    v166._countAndFlagsBits = 4281173;
    v166._object = 0xE300000000000000;
    sub_10001393C();
    v85 = v84;
    v86 = sub_100013998();
    sub_10003A098(v86, v87);
    swift_endAccess();
    if (qword_1000D1A18 != -1)
    {
      sub_1000139D0(&qword_1000D1A18);
    }

    v88 = qword_1000E43F8;
    v168 = &type metadata for String;
    v166._countAndFlagsBits = 0x313434333431;
    v166._object = 0xE600000000000000;
    sub_10001393C();
    v89 = v88;
    v90 = sub_100013998();
    sub_10003A098(v90, v91);
    swift_endAccess();
  }

  if (qword_1000D1980 != -1)
  {
    swift_once();
  }

  v116 = qword_1000E4360;
  v168 = &type metadata for Double;
  v166._countAndFlagsBits = 0x3FF0000000000000;
  sub_10001393C();
  v117 = v116;
  v118 = sub_100013998();
  sub_10003A098(v118, v119);
  swift_endAccess();
  if (qword_1000D19A0 != -1)
  {
    swift_once();
  }

  v120 = qword_1000E4380;
  v168 = &type metadata for String;
  v166._countAndFlagsBits = v79;
  v166._object = v78;
  sub_10001393C();
  v121 = v120;

  v122 = sub_100013998();
  sub_10003A098(v122, v121);
  swift_endAccess();
  if (qword_1000D19A8 != -1)
  {
    swift_once();
  }

  v123 = qword_1000E4388;
  v168 = &type metadata for String;
  v166._countAndFlagsBits = v79;
  v166._object = v78;
  sub_10001393C();

  v124 = v123;
  v125 = sub_100013998();
  sub_10003A098(v125, v126);
  swift_endAccess();
  if (qword_1000D19D8 != -1)
  {
    swift_once();
  }

  v127 = qword_1000E43B8;
  v168 = &type metadata for Int;
  v166._countAndFlagsBits = 25;
  sub_10001393C();
  v128 = v127;
  v129 = sub_100013998();
  sub_10003A098(v129, v130);
  swift_endAccess();
  if (qword_1000D1A20 != -1)
  {
    swift_once();
  }

  v131 = qword_1000E4400;
  v168 = &type metadata for Int;
  v166._countAndFlagsBits = 2;
  sub_10001393C();
  v132 = v131;
  v133 = sub_100013998();
  sub_10003A098(v133, v134);
  swift_endAccess();
  if (qword_1000D1A30 != -1)
  {
    swift_once();
  }

  v135 = qword_1000E4410;
  v168 = v155;
  sub_100012AE4(&v166._countAndFlagsBits);
  v136 = v135;
  Date.init()();
  sub_10001393C();
  v137 = sub_100013998();
  sub_10003A098(v137, v136);
  swift_endAccess();
  if (qword_1000D1A38 != -1)
  {
    swift_once();
  }

  v138 = qword_1000E4418;
  v168 = &type metadata for Int;
  v166._countAndFlagsBits = 1;
  sub_10001393C();
  v139 = v138;
  v140 = sub_100013998();
  sub_10003A098(v140, v141);
  swift_endAccess();
  v142 = v156._object;
  if (qword_1000D1A40 != -1)
  {
    swift_once();
  }

  v143 = qword_1000E4420;
  v168 = &type metadata for Int;
  v166._countAndFlagsBits = 50;
  sub_10001393C();
  v144 = v143;
  v145 = sub_100013998();
  sub_10003A098(v145, v146);
  swift_endAccess();
  if (qword_1000D1A58 != -1)
  {
    swift_once();
  }

  v147 = qword_1000E4438;
  sub_100012634(&qword_1000D1D38, &qword_100098920);
  v148 = swift_allocObject();
  *(v148 + 16) = v159;
  *(v148 + 32) = 0x736F686C61636F6CLL;
  *(v148 + 40) = 0xE900000000000074;
  *(v148 + 48) = v79;
  *(v148 + 56) = v142;
  v168 = v73;
  v166._countAndFlagsBits = v148;
  sub_10001393C();
  v149 = v147;
  v150 = sub_100013998();
  sub_10003A098(v150, v151);
  swift_endAccess();

  v152 = type metadata accessor for Bag.XcodeBag(0);
  v163.receiver = v69;
  v163.super_class = v152;
  return objc_msgSendSuper2(&v163, "init");
}

void sub_1000101F8(uint64_t a1, const void *a2)
{
  v58 = a2;
  v52 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v52);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Date();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v5 = OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_bag;
  swift_beginAccess();
  v6 = *(a1 + v5);

  v7 = Dictionary.init(dictionaryLiteral:)();
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v61 = v6;

  v13 = 0;
  v14 = &unk_100093628;
  v60 = v6 + 64;
  v59 = v12;
  if (v11)
  {
    while (1)
    {
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v13 << 6);
      v17 = *(*(v61 + 48) + 8 * v16);
      sub_100012908(*(v61 + 56) + 32 * v16, &v69);
      v68 = v17;
      sub_100012BEC();
      v6 = v66;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = v17;

      v22 = v14;
      sub_100012BEC();

      sub_100012AD4(&v65, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v7;
      v24 = sub_10007D370(v18, v20);
      v26 = v7[2];
      v27 = (v25 & 1) == 0;
      v14 = (v26 + v27);
      if (__OFADD__(v26, v27))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v28 = v24;
      v6 = v25;
      sub_100012634(&qword_1000D1D90, &unk_100093630);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
      {
        v29 = sub_10007D370(v18, v20);
        if ((v6 & 1) != (v30 & 1))
        {
          _Block_release(v58);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v28 = v29;
      }

      v14 = v22;
      if (v6)
      {

        v7 = v62;
        v6 = v62[7] + 32 * v28;
        sub_100012A18(v6);
        sub_100012AD4(v63, v6);
        sub_100012CB4(&v68, &qword_1000D1D88, v22);
      }

      else
      {
        v7 = v62;
        v62[(v28 >> 6) + 8] |= 1 << v28;
        v31 = (v7[6] + 16 * v28);
        *v31 = v18;
        v31[1] = v20;
        sub_100012AD4(v63, (v7[7] + 32 * v28));
        sub_100012CB4(&v68, &qword_1000D1D88, v22);
        v32 = v7[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_27;
        }

        v7[2] = v34;
      }

      v11 &= v11 - 1;
      sub_100012A18(v67);
      v8 = v60;
      v12 = v59;
      if (!v11)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_8;
    }
  }

  v14 = v57;
  sub_1000122A4(v7, v57);

  v35 = v54;
  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v55 + 8))(v35, v56);
  [v14 setExpirationDate:{isa, v52}];

  v37 = [objc_opt_self() currentProcess];
  [v14 setProcessInfo:v37];

  type metadata accessor for Bag();
  v38 = sub_10000C50C();
  sub_100012318(v38, v39, v14, &selRef_setProfile_);
  sub_100012318(49, 0xE100000000000000, v14, &selRef_setProfileVersion_);
  v68 = 0;
  v6 = [v14 buildWithError:&v68];
  if (v6)
  {
    v40 = v68;
    v41 = 0;
    goto LABEL_24;
  }

  v42 = v68;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1000D1AE8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v43 = sub_1000128C0(v52, qword_1000E4560);
  v44 = v53;
  sub_100012C50(v43, v53);
  swift_errorRetain();
  v45 = Logger.logObject.getter();
  v46 = type metadata accessor for Logger();
  (*(*(v46 - 8) + 8))(v44, v46);
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = _convertErrorToNSError(_:)();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v45, v47, "Failed to create snapshot bag: %{public}@", v48, 0xCu);
    sub_100012CB4(v49, &qword_1000D1D98, &qword_100094C90);
  }

  v41 = _convertErrorToNSError(_:)();
LABEL_24:
  v51 = v58;
  (*(v58 + 2))(v58, v6, v41);

  _Block_release(v51);
}

id sub_100010BDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = OBJC_IVAR____TtCC22StoreKitUISceneService3BagP33_81BD179FDA0647EB1946F9F97E45FDA48XcodeBag_bag;
  swift_beginAccess();
  v9 = *(v2 + v8);

  sub_100021A78(v9, &v27);

  if (v28)
  {
    sub_100012AD4(&v27, v29);
    switch(a2)
    {
      case 0:
        sub_100012908(v29, &v27);
        v10 = &qword_1000D1D80;
        v11 = NSArray_ptr;
        goto LABEL_11;
      case 1:
      case 2:
      case 3:
        sub_100012908(v29, &v27);
        v10 = &qword_1000D1D78;
        v11 = NSNumber_ptr;
        goto LABEL_11;
      case 4:
        sub_100012908(v29, &v27);
        v10 = &unk_1000D1D70;
        v11 = NSString_ptr;
        goto LABEL_11;
      case 5:
        sub_100012908(v29, &v27);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        URL.init(string:)();

        v17 = type metadata accessor for URL();
        if (sub_100012898(v7, 1, v17) == 1)
        {
          goto LABEL_14;
        }

        URL._bridgeToObjectiveC()(v18);
        v20 = v19;
        (*(*(v17 - 8) + 8))(v7, v17);
        goto LABEL_13;
      case 6:
        sub_100012908(v29, &v27);
        v10 = &qword_1000D1D68;
        v11 = NSDictionary_ptr;
LABEL_11:
        sub_100012BAC(0, v10, v11);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v20 = v26[1];
LABEL_13:
        v21 = v20;
        v22 = [objc_opt_self() promiseWithResult:v21];
        v16 = v21;
        break;
      default:
LABEL_14:
        v23 = AMSError();
        v21 = _convertErrorToNSError(_:)();
        v22 = [objc_opt_self() promiseWithError:v21];

        v16 = 0;
        break;
    }

    v15 = v22;
    sub_100012A18(v29);
  }

  else
  {
    sub_100012CB4(&v27, &qword_1000D1D60, &qword_100093620);
    v12 = AMSError();
    v13 = _convertErrorToNSError(_:)();
    v14 = [objc_opt_self() promiseWithError:v13];

    v15 = v14;
    v16 = 0;
  }

  v24 = [objc_opt_self() bagValueWithKey:a1 valueType:a2 valuePromise:v15];

  return v24;
}

id sub_100011030(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for Bag.XcodeBag(uint64_t a1)
{
  result = qword_1000D1BA8;
  if (!qword_1000D1BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001110C(uint64_t a1)
{
  sub_1000111B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000111B4(uint64_t a1)
{
  if (!qword_1000D1BB8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D1BB8);
    }
  }
}

__n128 sub_100011210(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001121C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001123C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

NSString sub_1000112D0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000125C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100011338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E298();
  *a1 = result;
  return result;
}

uint64_t sub_100011370(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1ED0, type metadata accessor for ASDError, &unk_100093950);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000113DC(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1ED0, type metadata accessor for ASDError, &unk_100093950);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10001144C(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000114C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100047E50(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_10001150C()
{
  sub_1000139A4();
  nullsub_1();
  *v0 = v1;
}

Swift::Int sub_1000115E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001169C(uint64_t a1)
{
  sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100011708(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100011774(void *a1, uint64_t a2)
{
  v4 = sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10001180C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100011888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000118E8(uint64_t a2@<X8>)
{
  sub_10001191C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_100011934()
{
  v1 = sub_1000139A4();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_10001195C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000119CC(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1C48, type metadata accessor for AMSBagKey, &unk_1000934FC);
  v3 = sub_100011B18(&unk_1000D1C50, type metadata accessor for AMSBagKey, &unk_10009349C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011BA8(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F68, type metadata accessor for AMSAccountMediaType, &unk_100093CD4);
  v3 = sub_100011B18(&qword_1000D1F70, type metadata accessor for AMSAccountMediaType, &unk_100093C74);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011C64()
{
  v1 = sub_1000139A4();
  result = j_j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_100011C8C(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1D40, type metadata accessor for OctaneStorefrontKey, &unk_1000942DC);
  v3 = sub_100011B18(&qword_1000D1F20, type metadata accessor for OctaneStorefrontKey, &unk_10009423C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011B18(&qword_1000D1F08, type metadata accessor for ASDError, &unk_100094424);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100011DCC(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F28, type metadata accessor for SKClientOverridesKey, &unk_10009431C);
  v3 = sub_100011B18(&qword_1000D1F30, type metadata accessor for SKClientOverridesKey, &unk_10009413C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011E88(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F38, type metadata accessor for SKServerKey, &unk_10009435C);
  v3 = sub_100011B18(&qword_1000D1F40, type metadata accessor for SKServerKey, &unk_10009403C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011F50(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F48, type metadata accessor for LaunchOptionsKey, &unk_10009439C);
  v3 = sub_100011B18(&qword_1000D1F50, type metadata accessor for LaunchOptionsKey, &unk_100093F30);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001200C(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F58, type metadata accessor for Role, &unk_100093E38);
  v3 = sub_100011B18(&qword_1000D1F60, type metadata accessor for Role, &unk_100093DD8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000120C8(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F88, type metadata accessor for FileProtectionType, &unk_100093A68);
  v3 = sub_100011B18(&qword_1000D1F90, type metadata accessor for FileProtectionType, &unk_100093A08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100012184@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000121CC(uint64_t a1)
{
  v2 = sub_100011B18(&qword_1000D1F78, type metadata accessor for FileAttributeKey, &unk_1000943E0);
  v3 = sub_100011B18(&qword_1000D1F80, type metadata accessor for FileAttributeKey, &unk_100093B60);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_1000122A4(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a2 setData:isa];
}

void sub_100012318(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_100012384(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000123DC(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100012450(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000124D4()
{
  sub_100013A7C();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t sub_100012548()
{
  sub_100013A7C();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

NSString sub_1000125C4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_1000125FC(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100012634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000126A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000126E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000127A8;

  return sub_10000CF18(a1, v4, v5, v7, v6);
}

uint64_t sub_1000127A8()
{
  sub_100013A88();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000128C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100012908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100012980(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000129C4()
{
  result = qword_1000D1C88;
  if (!qword_1000D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1C88);
  }

  return result;
}

uint64_t sub_100012A18(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100012A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D1CF0, &qword_1000935C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100012AD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_100012AE4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_100012B58()
{
  result = qword_1000D1D48;
  if (!qword_1000D1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1D48);
  }

  return result;
}

uint64_t sub_100012BAC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100012BEC()
{
  sub_100013A7C();
  v4 = sub_100012634(v2, v3);
  (*(*(v4 - 8) + 16))(v0, v1, v4);
  return v0;
}

uint64_t sub_100012C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012CB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100012634(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100012D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012D2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000136CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100013764()
{
  result = qword_1000D1EF8;
  if (!qword_1000D1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1EF8);
  }

  return result;
}

uint64_t sub_10001393C()
{

  return swift_beginAccess();
}

uint64_t sub_10001395C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10001397C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000139D0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000139F0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100013A10(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100013A30(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100013A50()
{

  return sub_100021A24(v0, v1);
}

uint64_t sub_100013A6C()
{
  result = 0;
  *(v0 - 104) = 0;
  return result;
}

uint64_t sub_100013AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v9 = a1 + *(a3 + 20);

    return sub_100012898(v9, a2, v8);
  }
}

uint64_t sub_100013B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v8 = v5 + *(a4 + 20);

    return sub_10001267C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClientTypeRequest(uint64_t a1)
{
  result = qword_1000D2060;
  if (!qword_1000D2060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013C44(uint64_t a1)
{
  sub_100013CC0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100013CC0(uint64_t a1)
{
  if (!qword_1000D2070)
  {
    type metadata accessor for ClientOverride(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D2070);
    }
  }
}

uint64_t sub_100013D18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100013E24(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100013E78(char a1)
{
  if (a1)
  {
    return 0x764F746E65696C63;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

Swift::Int sub_100013ED4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100013F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100013F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013DE4();
  *a1 = result;
  return result;
}

uint64_t sub_100013F90(uint64_t a1)
{
  v2 = sub_100014578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013FCC(uint64_t a1)
{
  v2 = sub_100014578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100014008(void *a1)
{
  v3 = sub_100012634(&qword_1000D20D0, &qword_1000946C8);
  sub_100014A8C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100012980(a1, a1[3]);
  sub_100014578();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ClientTypeRequest(0);
    v12[14] = 1;
    type metadata accessor for ClientOverride(0);
    sub_100014A64();
    sub_100014764(v9, v10, &unk_100099EE0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000141A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  sub_100012634(&qword_1000D20B8, &qword_1000946C0);
  sub_100014A8C();
  v21[1] = v8;
  v21[2] = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for ClientTypeRequest(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 28);
  v14 = type metadata accessor for ClientOverride(0);
  v22 = v13;
  sub_10001267C(v12 + v13, 1, 1, v14);
  sub_100012980(a1, a1[3]);
  sub_100014578();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100012A18(a1);
    return sub_1000145CC(v12 + v22);
  }

  else
  {
    v24 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v23 = 1;
    sub_100014A64();
    sub_100014764(v16, v17, &unk_100099F08);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = sub_100014A7C();
    v19(v18);
    sub_100014634(v6, v12 + v22);
    sub_1000146A4(v12, v21[0]);
    sub_100012A18(a1);
    return sub_100014708(v12);
  }
}

uint64_t sub_10001449C(uint64_t a1)
{
  result = sub_100014764(&qword_1000D20A0, type metadata accessor for ClientTypeRequest, &unk_1000946A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000144F4(uint64_t a1)
{
  *(a1 + 16) = sub_100014764(&qword_1000D20A8, type metadata accessor for ClientTypeRequest, &unk_10009463C);
  result = sub_100014764(&qword_1000D20B0, type metadata accessor for ClientTypeRequest, &unk_100094614);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_100014578()
{
  result = qword_1000D20C0;
  if (!qword_1000D20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D20C0);
  }

  return result;
}

uint64_t sub_1000145CC(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000146A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientTypeRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014708(uint64_t a1)
{
  v2 = type metadata accessor for ClientTypeRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientTypeRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientTypeRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001490CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100014960()
{
  result = qword_1000D20E0;
  if (!qword_1000D20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D20E0);
  }

  return result;
}

unint64_t sub_1000149B8()
{
  result = qword_1000D20E8;
  if (!qword_1000D20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D20E8);
  }

  return result;
}

unint64_t sub_100014A10()
{
  result = qword_1000D20F0;
  if (!qword_1000D20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D20F0);
  }

  return result;
}

uint64_t sub_100014AA0()
{
  sub_100012634(&qword_1000D21A8, qword_100094828);
  swift_allocObject();
  result = sub_100015750(sub_100014B04, 0);
  qword_1000D20F8 = result;
  return result;
}

uint64_t sub_100014B04()
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  return sub_100014B3C();
}

uint64_t sub_100014B3C()
{
  v1 = v0;
  *(v0 + 24) = sub_1000326AC();
  *(v0 + 32) = v2;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  _StringGuts.grow(_:)(32);
  sub_100012BAC(0, &qword_1000D21B0, AAFService_ptr);
  v4 = _typeName(_:qualified:)();
  v6 = v5;

  v29 = v4;
  v30 = v6;
  v7._object = 0x800000010009E910;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v7);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v12 = v29;
  v11 = v30;
  v13 = static os_log_type_t.info.getter();

  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000847A8(0, 0xE000000000000000, &v29);
    *(v15 + 12) = 2082;
    v16 = sub_1000847A8(v12, v11, &v29);

    *(v15 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100012BAC(0, &qword_1000D2380, NSXPCConnection_ptr);
  v17 = objc_opt_self();
  v18 = [v17 serviceName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = sub_100014F8C(v19, v21, 0);
  v23 = [v17 service];
  [v22 setRemoteObjectInterface:v23];

  v24 = [v17 client];
  [v22 setExportedInterface:v24];

  v25 = [objc_opt_self() defaultBroker];
  [v22 setExportedObject:v25];

  v33 = sub_100015008;
  v34 = 0;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100015238;
  v32 = &unk_1000BED60;
  v26 = _Block_copy(&v29);
  [v22 setInterruptionHandler:v26];
  _Block_release(v26);
  v33 = sub_10001527C;
  v34 = 0;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100015238;
  v32 = &unk_1000BED88;
  v27 = _Block_copy(&v29);
  [v22 setInvalidationHandler:v27];
  _Block_release(v27);
  [v22 resume];
  *(v1 + 16) = v22;
  return v1;
}

id sub_100014F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_100015008()
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v0, qword_1000E4560);
  _StringGuts.grow(_:)(25);
  sub_100012BAC(0, &qword_1000D21B0, AAFService_ptr);
  v1 = _typeName(_:qualified:)();
  v3 = v2;

  v11[1] = v3;
  v4._object = 0x800000010009E950;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v6 = v1;
  v5 = v3;
  v7 = static os_log_type_t.default.getter();

  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000847A8(0, 0xE000000000000000, v11);
    *(v8 + 12) = 2082;
    v9 = sub_1000847A8(v6, v5, v11);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v7, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100015238(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10001527C()
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v0, qword_1000E4560);
  _StringGuts.grow(_:)(25);
  sub_100012BAC(0, &qword_1000D21B0, AAFService_ptr);
  v1 = _typeName(_:qualified:)();
  v3 = v2;

  v11[1] = v3;
  v4._object = 0x800000010009E930;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v6 = v1;
  v5 = v3;
  v7 = static os_log_type_t.default.getter();

  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000847A8(0, 0xE000000000000000, v11);
    *(v8 + 12) = 2082;
    v9 = sub_1000847A8(v6, v5, v11);

    *(v8 + 14) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v7, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1000154AC()
{
  v1 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v2, qword_1000E4560);
  _StringGuts.grow(_:)(27);
  sub_100012BAC(0, &qword_1000D21B0, AAFService_ptr);
  v3 = _typeName(_:qualified:)();
  v5 = v4;

  v17 = v3;
  v18 = v5;
  v6._object = 0x800000010009E970;
  v6._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v6);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v11 = v17;
  v10 = v18;
  v12 = static os_log_type_t.info.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_1000847A8(0, 0xE000000000000000, &v17);
    *(v14 + 12) = 2082;
    v15 = sub_1000847A8(v11, v10, &v17);

    *(v14 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  [*(v1 + 16) invalidate];

  return v1;
}

uint64_t sub_1000156FC()
{
  v0 = sub_1000154AC();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100015750(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return v2;
}

uint64_t sub_100015798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000157B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65696C63 && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x764F646563726F66 && a2 == 0xEE00656469727265)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100015890(char a1)
{
  if (a1)
  {
    return 0x764F646563726F66;
  }

  else
  {
    return 0x7954746E65696C63;
  }
}

uint64_t sub_1000158D8(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D2268, &qword_1000949C8);
  sub_100014A8C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100012980(a1, a1[3]);
  sub_100016418();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = *v3;
  v12[14] = 0;
  sub_100016594();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for ClientTypeResponse(0);
    v12[13] = 1;
    type metadata accessor for ClientOverride(0);
    sub_1000165E8(&qword_1000D20D8, &unk_100099EE0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100015A88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_100012634(&qword_1000D2250, &qword_1000949C0);
  sub_100014A8C();
  v20 = v8;
  v21 = v7;
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ClientTypeResponse(0);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012980(a1, a1[3]);
  sub_100016418();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v13;
    v18 = v11;
    v15 = v20;
    v23 = 0;
    sub_10001646C();
    v16 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v14 = v24;
    type metadata accessor for ClientOverride(0);
    v22 = 1;
    sub_1000165E8(&qword_1000D20C8, &unk_100099F08);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v15 + 8))(v10, v16);
    sub_1000164C0(v6, &v14[*(v18 + 20)]);
    sub_100016530(v14, v19);
  }

  return sub_100012A18(a1);
}

unint64_t sub_100015D38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE6D8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100015D84(char a1)
{
  result = 0x65646F6378;
  switch(a1)
  {
    case 1:
      result = 0x67696C6674736574;
      break;
    case 2:
      result = 0x69746375646F7270;
      break;
    case 3:
      result = 0x786F62646E6173;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100015E34(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v9 = &a1[*(a3 + 20)];

    return sub_100012898(v9, a2, v8);
  }
}

_BYTE *sub_100015ED4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v8 = &v5[*(a4 + 20)];

    return sub_10001267C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClientTypeResponse(uint64_t a1)
{
  result = qword_1000D2210;
  if (!qword_1000D2210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015FA8(uint64_t a1)
{
  sub_100013CC0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for ClientType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100016178);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000161C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000157B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000161E8(uint64_t a1)
{
  v2 = sub_100016418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016224(uint64_t a1)
{
  v2 = sub_100016418();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000162B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015D38(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000162E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100015D84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000163C4()
{
  result = qword_1000D2248;
  if (!qword_1000D2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2248);
  }

  return result;
}

unint64_t sub_100016418()
{
  result = qword_1000D2258;
  if (!qword_1000D2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2258);
  }

  return result;
}

unint64_t sub_10001646C()
{
  result = qword_1000D2260;
  if (!qword_1000D2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2260);
  }

  return result;
}

uint64_t sub_1000164C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientTypeResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016594()
{
  result = qword_1000D2270;
  if (!qword_1000D2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2270);
  }

  return result;
}

uint64_t sub_1000165E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientOverride(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001662C()
{
  result = qword_1000D2278;
  if (!qword_1000D2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientTypeResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001674CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100016788()
{
  result = qword_1000D2280;
  if (!qword_1000D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2280);
  }

  return result;
}

unint64_t sub_1000167E0()
{
  result = qword_1000D2288;
  if (!qword_1000D2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2288);
  }

  return result;
}

unint64_t sub_100016838()
{
  result = qword_1000D2290;
  if (!qword_1000D2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2290);
  }

  return result;
}

uint64_t sub_10001688C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  SHA256.update(bufferPointer:)();
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return v11[1];
}

void *sub_100016A58@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2 - result == 32)
  {
    *a3 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100016B68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100016C0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_100016CA0()
{
  v1 = &v0[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_serverCorrelationID];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_environment];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_storefrontCountryCode];
  v4 = type metadata accessor for StoreKitServiceErrorMetadata();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100016D30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreKitServiceErrorMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100016DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_100016E04()
{
}

__n128 initializeBufferWithCopyOfBuffer for AuditTokenDecodingError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AuditTokenDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuditTokenDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100016E84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016EA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_100016EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_100016F04, 0, 0);
}

uint64_t sub_100016F04()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v4[2] = v2;
  v4[3] = sub_1000190D8;
  v4[4] = v3;
  swift_task_alloc();
  sub_100019388();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_100016FFC;
  v7 = sub_1000192F4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_100016FFC()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_100019350();
  *v4 = v3;
  v5 = *v1;
  sub_100019340();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100017104()
{
  sub_1000179A8(*(v0 + 16), *(v0 + 24));
  sub_100018DF0(*(v0 + 16), *(v0 + 24));
  sub_100019370();

  return v1();
}

uint64_t sub_10001718C()
{
  sub_100013A88();

  sub_100019370();

  return v0();
}

uint64_t sub_1000171F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_100017214, 0, 0);
}

uint64_t sub_100017214()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v4[2] = v2;
  v4[3] = sub_100018DD8;
  v4[4] = v3;
  swift_task_alloc();
  sub_100019388();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_10001730C;
  v7 = sub_1000192F4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_10001730C()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_100019350();
  *v4 = v3;
  v5 = *v1;
  sub_100019340();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100017414()
{
  v1 = v0[11];
  v2 = sub_100017C2C(v0[2], v0[3]);
  if (v1)
  {
    sub_100018DF0(v0[2], v0[3]);
    sub_100019370();

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    sub_100018DF0(v0[2], v0[3]);
    v12 = v0[1];

    return v12(v8, v9, v10, v11);
  }
}

uint64_t sub_100017504()
{
  sub_100013A88();

  sub_100019370();

  return v0();
}

uint64_t sub_100017568(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a6;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v25 = a2;
  v24 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v9);
  v10 = sub_100012634(&qword_1000D22E8, &unk_100094BC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v26 = a1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100012980(a3, a3[3]);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  (*(v11 + 16))(v13, v25, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  v23(&v26, v14, v16, v21, v18);
  sub_100018DF0(v14, v16);
}

uint64_t sub_1000178EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_100019008(a1, a2);
      sub_100012634(&qword_1000D22E8, &unk_100094BC0);
      return CheckedContinuation.resume(returning:)();
    }

    sub_100018F34();
    swift_allocError();
    *v3 = 9;
  }

  sub_100012634(&qword_1000D22E8, &unk_100094BC0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000179A8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000128C0(v2, qword_1000E4560);
  sub_100019078(v5, v4, type metadata accessor for SKLogger);
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000847A8(0xD000000000000012, 0x800000010009EAC0, &v13);
    _os_log_impl(&_mh_execute_header, v6, v8, "Decoding service response to %s", v9, 0xCu);
    sub_100012A18(v10);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for ClientTypeResponse(0);
  sub_1000190E4(&qword_1000D22F8, type metadata accessor for ClientTypeResponse, &unk_100094998);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_100017C2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000128C0(v3, qword_1000E4560);
  sub_100019078(v6, v5, type metadata accessor for SKLogger);
  v7 = Logger.logObject.getter();
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v5, v8);
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000847A8(0xD00000000000001DLL, 0x800000010009EA20, &v14);
    _os_log_impl(&_mh_execute_header, v7, v9, "Decoding service response to %s", v10, 0xCu);
    sub_100012A18(v11);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100018E48();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v13;
  }

  return result;
}

uint64_t sub_100017E84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = sub_100012634(&qword_1000D22E8, &unk_100094BC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-1] - v8;
  (*(v7 + 16))(&v23[-1] - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = *(a2 + 16);
  aBlock[4] = sub_100018EA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018464;
  aBlock[3] = &unk_1000BEF88;
  v13 = _Block_copy(aBlock);

  v14 = [v12 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100012908(aBlock, v23);
  sub_100012634(&qword_1000D22F0, &qword_100094BD0);
  if (swift_dynamicCast())
  {
    v24 = v22;
    a3(&v24, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v15, qword_1000E4560);
    v16 = static os_log_type_t.error.getter();
    v17 = Logger.logObject.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v18 = 136446466;
      *(v18 + 4) = sub_1000847A8(0, 0xE000000000000000, v23);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1000847A8(0xD000000000000037, 0x800000010009EA60, v23);
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    sub_100018F34();
    v19 = swift_allocError();
    *v20 = 14;
    v23[0] = v19;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_100012A18(aBlock);
}

uint64_t sub_100018250(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000128C0(v2, qword_1000E4560);
  sub_100019078(v5, v4, type metadata accessor for SKLogger);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v8, "Failed in XPC: %{public}@", v9, 0xCu);
    sub_100018F88(v10);
  }

  v13[1] = a1;
  swift_errorRetain();
  sub_100012634(&qword_1000D22E8, &unk_100094BC0);
  return CheckedContinuation.resume(throwing:)();
}

void sub_100018464(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000184CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return sub_100019330();
}

uint64_t sub_1000184E4()
{
  sub_100013A88();
  v1 = v0[8];
  v0[5] = type metadata accessor for ClientTypeRequest(0);
  v0[6] = sub_1000190E4(&qword_1000D20A0, type metadata accessor for ClientTypeRequest, &unk_1000946A0);
  v2 = sub_100012AE4(v0 + 2);
  sub_100019078(v1, v2, type metadata accessor for ClientTypeRequest);
  sub_100019394();
  sub_100019388();
  v0[10] = v3;
  *v3 = v4;
  v3[1] = sub_100018604;
  v5 = v0[9];
  v6 = v0[7];

  return v8(v6, v0 + 2, sub_10001877C, 0, v5);
}

uint64_t sub_100018604()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_100019350();
  *v4 = v3;
  v5 = *v1;
  sub_100019340();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1000193B4();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100012A18((v3 + 16));
    sub_100019370();

    return v10();
  }
}

uint64_t sub_100018720()
{
  sub_100013A88();
  sub_100012A18((v0 + 16));
  sub_100019370();

  return v1();
}

uint64_t sub_1000187CC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100019064(v4, v8);
}

uint64_t sub_100018878(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_100019330();
}

uint64_t sub_10001888C()
{
  sub_100013A88();
  v1 = v0[7];
  v0[5] = type metadata accessor for ProcessPurchaseResultRequest(0);
  v0[6] = sub_1000190E4(&qword_1000D22D8, type metadata accessor for ProcessPurchaseResultRequest, &unk_10009A80C);
  v2 = sub_100012AE4(v0 + 2);
  sub_100019078(v1, v2, type metadata accessor for ProcessPurchaseResultRequest);
  sub_100019394();
  sub_100019388();
  v0[9] = v3;
  *v3 = v4;
  v3[1] = sub_1000189A8;
  v5 = v0[8];

  return v7(v0 + 2, sub_100018B74, 0, v5);
}

uint64_t sub_1000189A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001937C();
  v11 = v10;
  sub_100019350();
  *v12 = v11;
  v13 = *v5;
  sub_100019340();
  *v14 = v13;
  *(v11 + 80) = v4;

  if (v4)
  {
    sub_1000193B4();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {
    sub_100012A18((v11 + 16));
    v18 = *(v13 + 8);

    return v18(a1, a2, a3, a4);
  }
}

uint64_t sub_100018B18()
{
  sub_100013A88();
  sub_100012A18((v0 + 16));
  sub_100019370();

  return v1();
}

void sub_100018BC4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v13 = *a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v17[4] = a7;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000187CC;
  v17[3] = a8;
  v16 = _Block_copy(v17);

  [v13 *a9];
  _Block_release(v16);
}

void sub_100018CCC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100018DF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_100018E48()
{
  result = qword_1000D22E0;
  if (!qword_1000D22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D22E0);
  }

  return result;
}

uint64_t sub_100018EA0(uint64_t a1)
{
  sub_100012634(&qword_1000D22E8, &unk_100094BC0);

  return sub_100018250(a1);
}

uint64_t sub_100018F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100018F34()
{
  result = qword_1000D3A50;
  if (!qword_1000D3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3A50);
  }

  return result;
}

uint64_t sub_100018F88(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D1D98, &qword_100094C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019008(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100019064(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018DF0(result, a2);
  }

  return result;
}

uint64_t sub_100019078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_100019360();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000190E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001912C()
{
  sub_100012634(&qword_1000D22E8, &unk_100094BC0);
  sub_100019360();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000191B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100012634(&qword_1000D22E8, &unk_100094BC0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100019258()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t sub_100019394()
{

  return swift_task_alloc();
}

uint64_t sub_10001940C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleID);

  return v1;
}

uint64_t sub_10001952C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleURL;
  type metadata accessor for URL();
  sub_100019360();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id sub_10001969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_dialogObserver;
  *&v5[OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_dialogObserver] = 0;
  v10 = &v5[OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleURL;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a3, v12);
  *&v5[v9] = a5;
  *&v5[OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_processInfo] = a4;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for DialogContext(0);
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v13 + 8))(a3, v12);
  return v14;
}

uint64_t sub_100019880()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100012BAC(0, &qword_1000D23F0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10001CE08();
  sub_100012634(&qword_1000D2400, &qword_100094CA0);
  sub_10001CE60();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000D2300 = result;
  return result;
}

uint64_t sub_100019A98(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  if (qword_1000D1AB0 != -1)
  {
    swift_once();
  }

  v5 = qword_1000D2300;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = &v13;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10001CDA4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10001CDBC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A438;
  aBlock[3] = &unk_1000BF1B8;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_100019C44(uint64_t a1, void ***a2, uint64_t (*a3)(), uint64_t a4)
{
  v8 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1000D2308;
  v12 = &off_100093000;
  if (qword_1000D2308)
  {
    goto LABEL_12;
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v40 = a1;
  v13 = sub_1000128C0(v8, qword_1000E4560);
  sub_100012C50(v13, v10);
  v14 = Logger.logObject.getter();
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v10, v15);
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v14, v16, "Connecting to UI service", v17, 2u);
    v12 = &off_100093000;
  }

  sub_100012BAC(0, &qword_1000D2380, NSXPCConnection_ptr);
  v18 = sub_100014F8C(0xD000000000000019, 0x800000010009EF00, 0);
  v19 = qword_1000D2308;
  qword_1000D2308 = v18;

  v20 = objc_opt_self();
  v21 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL___SKDialogProtocol];
  v22 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL___PaymentSheetDelegate];
  [v21 setInterface:v22 forSelector:"handlePurchase:paymentSheetDelegate:resultHandler:" argumentIndex:1 ofReply:0];
  if (qword_1000D2308)
  {
    [qword_1000D2308 setRemoteObjectInterface:v21];
    v23 = qword_1000D2308;
    if (qword_1000D2308)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v40;
      v45 = sub_10001CDF0;
      v46 = v24;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100015238;
      v44 = &unk_1000BF208;
      v25 = _Block_copy(&aBlock);
      v26 = v23;

      [v26 setInterruptionHandler:v25];
      v27 = v25;
      v12 = &off_100093000;
      _Block_release(v27);

      v28 = qword_1000D2308;
      if (qword_1000D2308)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v40;
        v45 = sub_10001CDF8;
        v46 = v29;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_100015238;
        v44 = &unk_1000BF258;
        v30 = _Block_copy(&aBlock);
        v31 = v28;
        v12 = &off_100093000;

        [v31 setInvalidationHandler:v30];
        _Block_release(v30);

        if (qword_1000D2308)
        {
          v32 = qword_1000D2308;
          [v32 resume];
        }
      }
    }
  }

  v11 = qword_1000D2308;
  if (qword_1000D2308)
  {
LABEL_12:
    v45 = a3;
    v46 = a4;
    aBlock = _NSConcreteStackBlock;
    v42 = *(v12 + 98);
    v43 = sub_100018464;
    v44 = &unk_1000BF280;
    v33 = _Block_copy(&aBlock);
    v34 = v11;

    v35 = [v34 remoteObjectProxyWithErrorHandler:v33];
    _Block_release(v33);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100012634(&qword_1000D23E8, &qword_100094C98);
    v36 = swift_dynamicCast();
    v37 = aBlock;
    if (!v36)
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  *a2 = v37;
  return swift_unknownObjectRelease();
}

uint64_t sub_10001A170(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000128C0(v2, qword_1000E4560);
  sub_100012C50(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, v8, "UI service interrupted", v9, 2u);
  }

  if (qword_1000D1AB0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000D2300;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10001D600;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10001D5E8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A438;
  aBlock[3] = &unk_1000BF370;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A460(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000128C0(v2, qword_1000E4560);
  sub_100012C50(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, v8, "UI service invalidated", v9, 2u);
  }

  if (qword_1000D1AB0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000D2300;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10001CE00;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10001D5E8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A438;
  aBlock[3] = &unk_1000BF2F8;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

void sub_10001A728()
{
  v0 = qword_1000D2308;
  qword_1000D2308 = 0;
}

uint64_t sub_10001A738(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_10001D608(sub_10001A750);
}

uint64_t sub_10001A750()
{
  sub_10001D674();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  sub_100012BAC(0, &qword_1000D2368, AMSAuthenticateResult_ptr);
  *v2 = v0;
  v2[1] = sub_10001A85C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16);
}

uint64_t sub_10001A85C()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_10001A984;
  }

  else
  {

    v6 = sub_10001A968;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001A984()
{
  sub_100013A88();

  sub_100019370();

  return v0();
}

uint64_t sub_10001A9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100012634(&unk_1000D2370, &qword_100094C88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  if (*(a2 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_dialogObserver))
  {
    v12 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_dialogObserver);
    (*(v9 + 16))(v11, a1, v8);
LABEL_5:
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_10001CCD0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF2C;
    aBlock[3] = &unk_1000BF140;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v12 handleAuthenticateRequest:v29 resultHandler:v18];
    _Block_release(v18);
    return swift_unknownObjectRelease();
  }

  v27[0] = v5;
  v27[1] = type metadata accessor for DialogContext(0);
  v28 = a1;
  v13 = *(v9 + 16);
  v13(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  v12 = sub_100019A98(sub_10001CBC8, v15);

  if (v12)
  {
    v13(v11, v28, v8);
    goto LABEL_5;
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000128C0(v27[0], qword_1000E4560);
  sub_100012C50(v20, v7);
  v21 = Logger.logObject.getter();
  v22 = type metadata accessor for Logger();
  (*(*(v22 - 8) + 8))(v7, v22);
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v21, v23, "Failed authenticate request. No dialog observer.", v24, 2u);
  }

  sub_10001CA10();
  v25 = swift_allocError();
  *v26 = 0;
  aBlock[0] = v25;
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10001ADE8(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000128C0(v2, qword_1000E4560);
  sub_100012C50(v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v8, "Failed authenticate request %{public}@", v9, 0xCu);
    sub_100018F88(v10);
  }

  v13[1] = a1;
  swift_errorRetain();
  sub_100012634(&unk_1000D2370, &qword_100094C88);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10001AFE0(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100012634(&unk_1000D2370, &qword_100094C88);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    sub_10001CA10();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  sub_100012634(&unk_1000D2370, &qword_100094C88);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001B0B4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10001D5DC;

  return sub_10001A738(v6);
}

uint64_t sub_10001B190()
{
  sub_10001D674();
  v1 = [objc_allocWithZone(AMSSystemAlertDialogTask) initWithRequest:v0[19]];
  v0[20] = v1;
  v2 = [v1 present];
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001B2E4;
  v3 = swift_continuation_init();
  v0[17] = sub_100012634(&qword_1000D2360, &qword_100094C80);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001B4BC;
  v0[13] = &unk_1000BF0C8;
  v0[14] = v3;
  [v2 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001B2E4()
{
  sub_100013A88();
  sub_10001937C();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 176) = v2;
  if (v2)
  {
    v3 = sub_10001B44C;
  }

  else
  {
    v3 = sub_10001B3EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B3EC()
{
  sub_100013A88();
  v1 = *(v0 + 168);

  v2 = sub_10001D718();

  return v3(v2);
}

uint64_t sub_10001B44C()
{
  sub_10001D674();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  sub_100019370();

  return v3();
}

void *sub_10001B4BC(uint64_t a1, void *a2, void *a3)
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_100013908();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1000138FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B56C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_10003A608(a6, v10);
}

uint64_t sub_10001B5F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10001B6B0;

  return sub_10001B178(v6);
}

uint64_t sub_10001B6B0()
{
  sub_10001D70C();
  sub_10001D658();
  v4 = v3[3];
  v5 = v3[2];
  v6 = *v2;
  sub_100019340();
  *v7 = v6;

  v8 = v3[4];
  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = sub_10001D614();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = sub_10001D614();
    v13(v12, v1, 0);
    _Block_release(v8);
  }

  sub_10001D6BC();

  return v14();
}

uint64_t sub_10001B838()
{
  sub_10001D674();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = sub_10001D6A0(v4);
  *v5 = v6;
  v5[1] = sub_10001B8D4;

  return sub_10001BABC(v3, v1);
}

uint64_t sub_10001B8D4()
{
  sub_100013A88();
  v3 = v2;
  sub_10001937C();
  v4 = *v1;
  sub_100019340();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_10001B9E4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_10001D5B8;

  return sub_10001B838();
}

uint64_t sub_10001BABC(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return sub_10001D608(sub_10001BAD8);
}

uint64_t sub_10001BAD8()
{
  if (!sub_10001CA64(*(v0 + 208)))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v1 = *(v0 + 224);
  v12 = *(v0 + 216);
  v2 = *(v0 + 208);
  *(v0 + 144) = 7368801;
  *(v0 + 152) = 0xE300000000000000;
  sub_10001D680();
  *(v0 + 168) = &type metadata for String;
  v3 = sub_10001D6CC(0x800000010009EE00);
  sub_10001D634(v3);
  sub_10001CAD0(v0 + 80);
  *(v0 + 144) = 0x707041666572;
  *(v0 + 152) = 0xE600000000000000;
  sub_10001D680();
  v4 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleID);
  v5 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_bundleID + 8);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  sub_100012AD4((v0 + 144), (v0 + 176));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10001D634(isUniquelyReferenced_nonNull_native);
  sub_10001CAD0(v0 + 80);
  *(v0 + 144) = 0x6369706F74;
  *(v0 + 152) = 0xE500000000000000;
  sub_10001D680();
  *(v0 + 168) = &type metadata for String;
  v7 = sub_10001D6CC(0x800000010009EE20);
  sub_10001D634(v7);
  sub_10001CAD0(v0 + 80);
  sub_10001CB24(v13, v2);
  v8 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest:v2];
  *(v0 + 232) = v8;
  [v8 setClientInfo:*(v1 + OBJC_IVAR____TtC22StoreKitUISceneService13DialogContext_processInfo)];
  [v8 setBag:v12];
  v9 = [v8 present];
  *(v0 + 240) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10001BDBC;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_100012634(&qword_1000D2358, &qword_100094C78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001B4BC;
  *(v0 + 104) = &unk_1000BF0A0;
  *(v0 + 112) = v10;
  [v9 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10001BDBC()
{
  sub_100013A88();
  sub_10001937C();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 248) = v2;
  if (v2)
  {
    v3 = sub_10001BF24;
  }

  else
  {
    v3 = sub_10001BEC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001BEC4()
{
  sub_100013A88();
  v1 = *(v0 + 240);

  v2 = sub_10001D718();

  return v3(v2);
}

uint64_t sub_10001BF24()
{
  sub_10001D674();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  swift_willThrow();

  sub_100019370();

  return v3();
}

uint64_t sub_10001C03C(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v5[6] = v10;
  v11 = a1;
  swift_unknownObjectRetain();
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_10001C134;

  return sub_10001BABC(v11, a2);
}

uint64_t sub_10001C134(uint64_t a1)
{
  sub_10001D658();
  v5 = v4[4];
  v6 = v4[2];
  v7 = *v3;
  sub_100019340();
  *v8 = v7;

  swift_unknownObjectRelease();
  v9 = v4[5];

  if (v1)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_10001D614();
    v12(v11, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v13 = sub_10001D614();
    v14(v13, v2, 0);
    _Block_release(v9);
  }

  sub_10001D6BC();

  return v15();
}

uint64_t sub_10001C310()
{
  v9 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v1, qword_1000E4560);
  v2 = static os_log_type_t.error.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v8[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_1000847A8(0, 0xE000000000000000, v8);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x800000010009EDD0, v8);
    _os_log_impl(&_mh_execute_header, v3, v2, "%{public}s%{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_10001CA10();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  sub_100019370();

  return v6();
}

uint64_t sub_10001C4F8(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10001D6AC();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = a1;

  return sub_10003A608(a7, v12);
}

uint64_t sub_10001C5B0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_10001C678;

  return sub_10001C2FC();
}

uint64_t sub_10001C678(uint64_t a1)
{
  sub_10001D658();
  v5 = v4[4];
  v6 = v4[2];
  v7 = *v3;
  sub_100019340();
  *v8 = v7;

  swift_unknownObjectRelease();
  v9 = v4[5];
  if (v1)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_10001D614();
    v12(v11, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v13 = sub_10001D614();
    v14(v13, v2, 0);
    _Block_release(v9);
  }

  sub_10001D6BC();

  return v15();
}

id sub_10001C838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialogContext(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DialogContext(uint64_t a1)
{
  result = qword_1000D2340;
  if (!qword_1000D2340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C95C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001CA10()
{
  result = qword_1000D2350;
  if (!qword_1000D2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2350);
  }

  return result;
}

uint64_t sub_10001CA64(void *a1)
{
  v1 = [a1 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001CB24(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setMetricsOverlay:isa];
}

uint64_t sub_10001CBC8(uint64_t a1)
{
  sub_100012634(&unk_1000D2370, &qword_100094C88);

  return sub_10001ADE8(a1);
}

uint64_t sub_10001CC44()
{
  sub_100012634(&unk_1000D2370, &qword_100094C88);
  sub_100019360();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001CCD0(void *a1, uint64_t a2)
{
  sub_100012634(&unk_1000D2370, &qword_100094C88);

  return sub_10001AFE0(a1, a2);
}

uint64_t sub_10001CD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CD74()
{

  v0 = sub_10001D6AC();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_10001CE08()
{
  result = qword_1000D23F8;
  if (!qword_1000D23F8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D23F8);
  }

  return result;
}

unint64_t sub_10001CE60()
{
  result = qword_1000D2408;
  if (!qword_1000D2408)
  {
    sub_10001CEC4(&qword_1000D2400, &qword_100094CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2408);
  }

  return result;
}

uint64_t sub_10001CEC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001CF10()
{
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10001CFC0()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001D018()
{
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10001D0D0()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  v1 = sub_10001D6AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001D118()
{
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10001D1CC()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10001D270()
{
  sub_100013A88();
  sub_10001937C();
  v1 = *v0;
  sub_100019340();
  *v2 = v1;

  sub_100019370();

  return v3();
}

uint64_t sub_10001D350()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D398()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

_BYTE *storeEnumTagSinglePayload for DialogContext.DialogContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001D508);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001D544()
{
  result = qword_1000D2470;
  if (!qword_1000D2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2470);
  }

  return result;
}

_OWORD *sub_10001D634(uint64_t a1)
{

  return sub_100048B74((v2 + 176), v1, a1);
}

uint64_t sub_10001D680()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10001D6CC@<X0>(uint64_t a1@<X8>)
{
  *v2 = 0xD000000000000012;
  *(v1 + 152) = a1;
  sub_100012AD4(v2, (v1 + 176));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_10001D72C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001D740(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001D780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_10001D7D0(void *a1)
{
  v2 = type metadata accessor for DecodingError.Context();
  sub_100014A8C();
  v39 = v3;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012634(&qword_1000D2480, &qword_100094E88);
  sub_100014A8C();
  v40 = v7;
  __chkstk_darwin(v8);
  sub_100012980(a1, a1[3]);
  v9 = sub_10001E1F0();
  v10 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    v12 = a1;
LABEL_4:
    sub_100012A18(v12);
    return v6;
  }

  v37 = v9;
  v38 = v2;
  v41 = v6;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  LOBYTE(v42) = 0;
  sub_10001E29C(&qword_1000D2490, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v43;
  v11 = v44;
  LOBYTE(v42) = 1;
  sub_10001E244();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = a1;
  v15 = v43;
  v14 = v44;
  v16 = objc_opt_self();
  v35 = v15;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v43 = 0;
  v18 = [v16 JSONObjectWithData:isa options:0 error:&v43];

  if (!v18)
  {
    v22 = v43;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100018DF0(v35, v14);
    v23 = sub_10001E568();
    v24(v23);
    v12 = v36;
    goto LABEL_4;
  }

  v34 = v14;
  v19 = v43;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100012634(&qword_1000D24A0, &qword_100094E98);
  if (swift_dynamicCast())
  {
    v20 = sub_10001E568();
    v21(v20);
    sub_100018DF0(v35, v34);
    sub_100012A18(v36);
  }

  else
  {
    sub_100012634(&qword_1000D24A8, &qword_100094EA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100094DD0;
    v26 = v37;
    *(v25 + 56) = &type metadata for ProductResponse.CodingKeys;
    *(v25 + 64) = v26;
    *(v25 + 32) = 1;
    v27 = v41;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v29;
    v37 = v11;
    v30 = v38;
    v31 = v39;
    (*(v39 + 16))(v29, v27, v38);
    (*(*(v28 - 8) + 104))(v6, enum case for DecodingError.dataCorrupted(_:), v28);
    swift_willThrow();
    sub_100018DF0(v35, v34);
    (*(v31 + 8))(v27, v30);
    v32 = sub_10001E568();
    v33(v32);
    sub_100012A18(v36);
  }

  return v6;
}

uint64_t sub_10001DCEC(void *a1, void *a2, unint64_t a3)
{
  v23 = a2;
  v6 = sub_100012634(&qword_1000D24B0, &unk_100094EA8);
  sub_100014A8C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = objc_opt_self();
  sub_100012634(&qword_1000D1D28, &unk_100093600);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = 0;
  v14 = [v12 dataWithJSONObject:isa options:0 error:&v25];

  v15 = v25;
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v17;

    sub_100012980(a1, a1[3]);
    sub_10001E1F0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v25 = v23;
    v26 = a3;
    v24 = 0;

    sub_100012634(&unk_1000D3A40, &qword_100094E90);
    sub_10001E29C(&qword_1000D24B8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v3)
    {
      sub_100018DF0(v16, v22);

      return (*(v8 + 8))(v11, v6);
    }

    else
    {

      v20 = v16;
      v25 = v16;
      v21 = v22;
      v26 = v22;
      v24 = 1;
      sub_10001E308();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v8 + 8))(v11, v6);
      return sub_100018DF0(v20, v21);
    }
  }

  else
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10001DFE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000010009E9D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10001E0B0(char a1)
{
  if (a1)
  {
    return 0x73746375646F7270;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10001E0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001DFE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E128(uint64_t a1)
{
  v2 = sub_10001E1F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E164(uint64_t a1)
{
  v2 = sub_10001E1F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_10001E1A0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_10001D7D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_10001E1F0()
{
  result = qword_1000D2488;
  if (!qword_1000D2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2488);
  }

  return result;
}

unint64_t sub_10001E244()
{
  result = qword_1000D2498;
  if (!qword_1000D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2498);
  }

  return result;
}

uint64_t sub_10001E29C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001CEC4(&unk_1000D3A40, &qword_100094E90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E308()
{
  result = qword_1000D24C0;
  if (!qword_1000D24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D24C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProductResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001E428);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001E464()
{
  result = qword_1000D24C8;
  if (!qword_1000D24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D24C8);
  }

  return result;
}

unint64_t sub_10001E4BC()
{
  result = qword_1000D24D0;
  if (!qword_1000D24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D24D0);
  }

  return result;
}

unint64_t sub_10001E514()
{
  result = qword_1000D24D8;
  if (!qword_1000D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D24D8);
  }

  return result;
}

uint64_t sub_10001E580(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10001E628()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001E69C()
{
  Hasher.init(_seed:)();
  sub_10001E600();
  return Hasher._finalize()();
}

uint64_t sub_10001E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001E580(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10001E738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001E5F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001E768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10001E7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10001E810()
{

  return v0;
}

uint64_t sub_10001E838()
{
  sub_10001E810();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001E890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a3;
  type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer.CodingKeys(255, *(a2 + 16), a3, a4);
  sub_10001F288();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  sub_10001F2A0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v12 - v9;
  sub_100012980(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10001E9E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  sub_10001F2A0();
  v33 = v6;
  v34 = v5;
  __chkstk_darwin(v7);
  v35 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer.CodingKeys(255, v9, v10, v11);
  sub_10001F288();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  sub_10001F2A0();
  v31 = v13;
  v32 = v12;
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v18 = type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer(0, a2, v16, v17);
  sub_10001F2A0();
  v29 = v19;
  __chkstk_darwin(v20);
  v22 = &v28 - v21;
  sub_100012980(a1, a1[3]);
  v23 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v36 = v18;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v15, v25);
    (*(v26 + 32))(v22, v35, a2);
    (*(v29 + 32))(v30, v22, v36);
  }

  return sub_100012A18(a1);
}

uint64_t getEnumTagSinglePayload for StoreKitAngelServiceName(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_10001ED48(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10001EDE4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001EE1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001EE8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100012898(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100012898(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_10001EFD8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x10001F1DCLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_10001267C(a1, a2, v7, v6);
      }

      return;
  }
}

void sub_10001F2B0(void *a1)
{
  v2 = a1;
  v3 = &stru_1000CE000;
  while (1)
  {
    v4 = v2;
    if ([v4 v3[42].name])
    {
LABEL_24:

      return;
    }

    v5 = [v4 userInfo];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v6 + 16))
    {

      goto LABEL_18;
    }

    v9 = sub_10007D370(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_18:
    v19 = [v4 userInfo];
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v20 + 16))
    {

LABEL_26:

      return;
    }

    v23 = sub_10007D370(v21, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100012908(*(v20 + 56) + 32 * v23, v28);

    sub_100020AE0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v29;
  }

  sub_100012908(*(v6 + 56) + 32 * v9, v28);

  sub_100012634(&qword_1000D2690, qword_1000951D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = NSUnderlyingErrorKey;
  v27 = NSMultipleUnderlyingErrorsKey;
  v12 = v29;
  v13 = sub_100082B18(v29);
  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      v3 = &stru_1000CE000;
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_10001F2B0(v15);
    v18 = v17;

    if (v1)
    {

      return;
    }

    ++v14;
    if (v18)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_10001F5D0(void *a1)
{
  v2 = a1;
  v3 = &stru_1000CE000;
  while (1)
  {
    v4 = v2;
    if (sub_10001FB8C(v4, v5))
    {
LABEL_24:

      return;
    }

    v6 = [v4 v3[40].name];
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v7 + 16))
    {

      goto LABEL_18;
    }

    v10 = sub_10007D370(v8, v9);
    v12 = v11;

    if (v12)
    {
      break;
    }

LABEL_18:
    v20 = [v4 v3[40].name];
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v21 + 16))
    {

LABEL_26:

      return;
    }

    v24 = sub_10007D370(v22, v23);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100012908(*(v21 + 56) + 32 * v24, v29);

    sub_100020AE0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v30;
  }

  sub_100012908(*(v7 + 56) + 32 * v10, v29);

  sub_100012634(&qword_1000D2690, qword_1000951D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v27 = NSUnderlyingErrorKey;
  v28 = NSMultipleUnderlyingErrorsKey;
  v13 = v30;
  v14 = sub_100082B18(v30);
  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {

      v3 = &stru_1000CE000;
      goto LABEL_18;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_10001F5D0(v16);
    v19 = v18;

    if (v1)
    {

      return;
    }

    ++v15;
    if (v19)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_10001F8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100020C08();
  }

  return v11 & 1;
}

uint64_t sub_10001F974(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  if ([v4 code] == a3)
  {
    v7 = [v4 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_100020C08();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10001FA58()
{
  if ([v0 ams_isUserCancelledError])
  {
    return 1;
  }

  if ([v0 ak_isUserCancelError])
  {
    return 1;
  }

  if (sub_10001F974(0xD00000000000001ELL, 0x800000010009F0F0, 0x3E9))
  {
    return 1;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_10001F974(v1, v2, 6);

  if (v3)
  {
    return 1;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_10001F974(v4, v5, 0x1FC);

  if (v6)
  {
    return 1;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_10001F974(v7, v8, 0x38B);

  if (v9)
  {
    return 1;
  }

  return sub_10001F974(0xD000000000000015, 0x800000010009F110, 0xB);
}

BOOL sub_10001FB8C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_10001F8E8(v3, v4);

  return (v5 & 1) != 0 && [v2 code] == -7005;
}

id sub_10001FBFC(char *a1, uint64_t a2)
{
  v5 = v2;
  v6 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100020C64();
    if (*&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_serverCorrelationID + 8])
    {
      sub_100020B70(&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_serverCorrelationID], v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249, v250, v251);
      v8 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100020B48(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v223, v227, v231, v235);

      v6 = v252;
    }

    else
    {
      sub_100020B24();
      v17 = a1;
      sub_10002090C(&v249);
      sub_10007D370(v4, v3);
      if (v18)
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v252 = _swiftEmptyDictionarySingleton;
        v20 = _swiftEmptyDictionarySingleton[3];
        sub_100012634(&qword_1000D1D90, &unk_100093630);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20);
        v6 = v252;
        sub_100020BB0();
        v21 = sub_100020BE4();
        v22 = sub_100012AD4(v21, &v242);
        sub_100020B94(v22, v23, &type metadata for String, v24, &protocol witness table for String);
      }

      else
      {
        v242 = 0u;
        v243 = 0u;
      }

      sub_10002090C(&v242);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100020C64();
    if (*&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_environment + 8])
    {
      sub_100020B70(&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_environment], v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249, v250, v251);

      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_100020B48(v25, v26, v27, v28, v29, v30, v31, v32, v224, v228, v232, v236);

      v6 = v252;
    }

    else
    {
      sub_100020B24();
      sub_10002090C(&v249);
      sub_100020C48();
      if (v33)
      {
        sub_100020CB0();
        v252 = v6;
        sub_100012634(&qword_1000D1D90, &unk_100093630);
        sub_100020C70();
        v6 = v252;
        sub_100020BB0();
        v34 = sub_100020BE4();
        v35 = sub_100012AD4(v34, &v242);
        sub_100020B94(v35, v36, &type metadata for String, v37, &protocol witness table for String);
      }

      else
      {
        v242 = 0u;
        v243 = 0u;
      }

      sub_10002090C(&v242);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100020C64();
    if (*&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_storefrontCountryCode + 8])
    {
      sub_100020B70(&a1[OBJC_IVAR____TtC22StoreKitUISceneService28StoreKitServiceErrorMetadata_storefrontCountryCode], v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249, v250, v251);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_100020B48(v38, v39, v40, v41, v42, v43, v44, v45, v225, v229, v233, v237);

      v6 = v252;
    }

    else
    {
      sub_100020B24();
      sub_10002090C(&v249);
      sub_100020C48();
      if (v46)
      {
        sub_100020CB0();
        v252 = v6;
        sub_100012634(&qword_1000D1D90, &unk_100093630);
        sub_100020C70();
        v6 = v252;
        sub_100020BB0();
        v47 = sub_100020BE4();
        v48 = sub_100012AD4(v47, &v242);
        sub_100020B94(v48, v49, &type metadata for String, v50, &protocol witness table for String);
      }

      else
      {
        v242 = 0u;
        v243 = 0u;
      }

      sub_10002090C(&v242);
    }
  }

  v51 = [v2 userInfo];
  v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100021A90(v53, v54, v52, &v249);

  if (v251)
  {
    v61 = sub_100020C2C(&v252, v55, v56, &type metadata for Int, v57, v58, v59, v60, v222, v226, v230, v234, v238, v239, v242, *(&v242 + 1), v243, *(&v243 + 1), v244, v245);
    if (v61)
    {
      v62 = 0;
      v63 = v252;
LABEL_23:
      v253 = 0;
      goto LABEL_36;
    }

    v252 = 0;
    v64 = v61 ^ 1;
  }

  else
  {
    sub_10002090C(&v249);
    v252 = 0;
    v64 = 1;
  }

  v253 = v64;
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100021A90(v65, v66, v6, &v249);

  if (!v251)
  {
    sub_10002090C(&v249);
LABEL_33:
    sub_100020B24();
    goto LABEL_34;
  }

  v67 = sub_100012634(&qword_1000D1D28, &unk_100093600);
  if ((sub_100020C2C(&v242, v68, v69, v67, v70, v71, v72, v73, v222, v226, v230, v234, v238, v239, v242, *(&v242 + 1), v243, *(&v243 + 1), v244, v245) & 1) == 0 || !v242)
  {
    goto LABEL_33;
  }

  sub_100021A90(0x546572756C696166, 0xEB00000000657079, v242, &v249);

  if (!v251)
  {
LABEL_34:
    sub_10002090C(&v249);
    goto LABEL_35;
  }

  if (sub_100020C2C(&v242, v74, v75, &type metadata for Int, v76, v77, v78, v79, v222, v226, v230, v234, v238, v239, v242, *(&v242 + 1), v243, *(&v243 + 1), v244, v245))
  {
    v62 = 0;
    v63 = v242;
    v252 = v242;
    goto LABEL_23;
  }

LABEL_35:
  v63 = 0;
  v252 = 0;
  v62 = 1;
  v253 = 1;
LABEL_36:
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v80;
  v89 = v81;
  if (v62)
  {
    sub_10007D370(v80, v81);
    if (v90)
    {
      v91 = sub_100020CB0();
      sub_100020BFC();
      sub_100012634(&qword_1000D1D90, &unk_100093630);
      sub_100020BF0();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v91, v6);
      v6 = v242;
      sub_100020BB0();
      v92 = sub_100020BE4();
      v93 = sub_100012AD4(v92, &v249);
      sub_100020B94(v93, v94, &type metadata for String, v95, &protocol witness table for String);
    }

    else
    {
      sub_100020B24();
    }

    sub_10002090C(&v249);
  }

  else
  {
    v251 = &type metadata for Int;
    *&v249 = v63;
    sub_100020BCC(v80, v81, v82, v83, v84, v85, v86, v87, v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100020B34();
    sub_100048A44(v96, v88, v89, v97);

    v6 = v239;
  }

  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = sub_10001F8E8(v98, v99);

  if (v100)
  {
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
    v104 = sub_100020A7C(v5);
    if (v105)
    {
      v251 = &type metadata for String;
      *&v249 = v104;
      *(&v249 + 1) = v105;
      sub_100020BCC(v104, v105, v106, v107, v108, v109, v110, v111, v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100020B34();
      sub_100048A44(v112, v101, v103, v113);

      v6 = v240;
    }

    else
    {
      v137 = sub_10007D370(v101, v103);
      if (v138)
      {
        v139 = v137;
        v140 = swift_isUniquelyReferenced_nonNull_native();
        sub_100020BFC();
        sub_100012634(&qword_1000D1D90, &unk_100093630);
        sub_100020BF0();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v140, v6);
        v6 = v242;

        sub_100012AD4((v6[7] + 32 * v139), &v249);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_100020B24();
      }

      sub_10002090C(&v249);
    }

    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v161 = v160;
    v162 = [v5 code];
    objc_allocWithZone(NSError);

    v163 = v159;
    v164 = v161;
    v165 = v162;
LABEL_59:
    v166 = v6;
LABEL_60:
    v115 = sub_100020974(v163, v164, v165, v166);
    goto LABEL_82;
  }

  sub_10001F2B0(v5);
  if ((v114 & 1) == 0)
  {
    v117 = AMSErrorDomain;
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = sub_10001F974(v118, v119, 0x131);

    if (v120)
    {
      if (v253)
      {
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;
        v124 = _convertErrorToNSError(_:)();
        v125 = ASDErrorWithSafeUserInfo();

        if (v125)
        {
          swift_getErrorValue();
          v251 = v230;
          v126 = sub_100012AE4(&v249);
          (*(*(v230 - 1) + 16))(v126, v226, v230);

          sub_100020BCC(v127, v128, v129, v130, v131, v132, v133, v134, v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100020B34();
          sub_100048A44(v135, v121, v123, v136);

LABEL_80:
          type metadata accessor for ASDError(0);
          v212 = 500;
          goto LABEL_81;
        }

LABEL_66:
        v181 = sub_10007D370(v121, v123);
        if (v182)
        {
          v183 = v181;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          sub_100020BFC();
          sub_100012634(&qword_1000D1D90, &unk_100093630);
          sub_100020BF0();
          v185 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v184, v6);
          sub_100020C90(v185, v186, v187, v188, v189, v190, v191, v192, v222, v226, v230, v234, v238, v239, v242);
          sub_100012AD4((v6[7] + 32 * v183), &v249);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_100020B24();
        }

        sub_10002090C(&v249);
        goto LABEL_80;
      }

      v167 = v252;
      if (v252 != 3705)
      {
        v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v169;
        v171 = sub_100020A7C(v5);
        if (v172)
        {
          v251 = &type metadata for String;
          *&v249 = v171;
          *(&v249 + 1) = v172;
          sub_100020BCC(v171, v172, v173, v174, v175, v176, v177, v178, v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100020B34();
          sub_100048A44(v179, v168, v170, v180);

          v6 = v241;
        }

        else
        {
          v199 = sub_10007D370(v168, v170);
          if (v200)
          {
            v201 = v199;
            v202 = swift_isUniquelyReferenced_nonNull_native();
            sub_100020BFC();
            sub_100012634(&qword_1000D1D90, &unk_100093630);
            sub_100020BF0();
            v203 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v202, v6);
            sub_100020C90(v203, v204, v205, v206, v207, v208, v209, v210, v222, v226, v230, v234, v238, v239, v242);
            sub_100012AD4((v6[7] + 32 * v201), &v249);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            sub_100020B24();
          }

          sub_10002090C(&v249);
        }

        v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v221 = v220;
        objc_allocWithZone(NSError);

        v163 = v219;
        v164 = v221;
        v165 = v167;
        goto LABEL_59;
      }
    }

    else
    {
      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v142;
      v143 = sub_10001F8E8(v141, v142);

      if ((v143 & 1) == 0)
      {
        v123 = _convertErrorToNSError(_:)();
        v115 = ASDErrorWithSafeUserInfo();

        if (v115)
        {
          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_66;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100020C64();
      v144 = _convertErrorToNSError(_:)();
      v145 = ASDErrorWithSafeUserInfo();

      if (v145)
      {
        swift_getErrorValue();
        v146 = v245;
        v147 = v246;
        v251 = v246;
        v148 = sub_100012AE4(&v249);
        (*(*(v147 - 1) + 16))(v148, v146, v147);

        sub_100020BCC(v149, v150, v151, v152, v153, v154, v155, v156, v222, v226, v230, v234, v238, v239, v242, v243, *(&v243 + 1), v244, v245, v246, v247, *v248, *&v248[8], v249);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100020B34();
        sub_100048A44(v157, v117, v121, v158);
      }

      else
      {
        sub_100020C48();
        if (v193)
        {
          v194 = sub_100020CB0();
          sub_100020BFC();
          sub_100012634(&qword_1000D1D90, &unk_100093630);
          sub_100020BF0();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v194, v6);
          sub_100020BB0();
          v195 = sub_100020BE4();
          v196 = sub_100012AD4(v195, &v249);
          sub_100020B94(v196, v197, &type metadata for String, v198, &protocol witness table for String);
        }

        else
        {
          sub_100020B24();
        }

        sub_10002090C(&v249);
      }

      v211 = [v5 code];
      if (v211 == 12)
      {
        type metadata accessor for ASDError(0);
        v212 = 512;
        goto LABEL_81;
      }

      if (v211 == 100)
      {
        sub_10001F5D0(v5);
        if (v214)
        {
          v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v217 = v216;
          v218 = objc_allocWithZone(NSError);
          v163 = v215;
          v164 = v217;
          v165 = -1004;
          v166 = 0;
          goto LABEL_60;
        }

        type metadata accessor for ASDError(0);
        v212 = 530;
LABEL_81:
        *&v242 = v212;
        sub_100020A24();

        _BridgedStoredNSError.init(_:userInfo:)();
        v115 = v249;
        goto LABEL_82;
      }

      if (v211 != 511)
      {
        goto LABEL_80;
      }
    }

    type metadata accessor for ASDError(0);
    v212 = 1052;
    goto LABEL_81;
  }

  sub_100018F34();
  v115 = swift_allocError();
  *v116 = 11;
LABEL_82:

  return v115;
}

uint64_t sub_10002090C(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D1D60, &qword_100093620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100020974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

unint64_t sub_100020A24()
{
  result = qword_1000D1F08;
  if (!qword_1000D1F08)
  {
    type metadata accessor for ASDError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D1F08);
  }

  return result;
}

uint64_t sub_100020A7C(void *a1)
{
  v1 = [a1 ams_message];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100020AE0()
{
  result = qword_1000D2688;
  if (!qword_1000D2688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D2688);
  }

  return result;
}

double sub_100020B24()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  return result;
}

_OWORD *sub_100020B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v15 - 112) = v12;

  return sub_100048A44(va, v14, v13, a1);
}

_OWORD *sub_100020B70@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  v22 = *a1;
  a19 = v20;
  *&a17 = v22;
  *(&a17 + 1) = v19;

  return sub_100012AD4(&a17, &a8);
}

uint64_t sub_100020B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100020BB0()
{
}

_OWORD *sub_100020BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24)
{

  return sub_100012AD4(&a24, &a15);
}

uint64_t sub_100020C08()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100020C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_100020C48()
{

  return sub_10007D370(v1, v0);
}

BOOL sub_100020C70()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_100020C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
}

uint64_t sub_100020CB0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

NSString sub_100020CC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000E4490 = result;
  return result;
}

id sub_100020D00()
{
  if (off_1000D1AB8 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v1 = qword_1000E4490;

  return v1;
}

void sub_100020D74(uint64_t a1)
{
  if (off_1000D1AB8 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v2 = qword_1000E4490;
  qword_1000E4490 = a1;
}

CFTypeID sub_100020DEC(__CFString *a1, uint64_t a2)
{
  type metadata accessor for AppDefaultsManager();
  sub_1000211A4(a1, a2);
  String._bridgeToObjectiveC()();
  sub_1000216E0();

  if (off_1000D1AB8 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v4 = CFPreferencesCopyAppValue(a1, qword_1000E4490);

  if (!v4)
  {
    return 0;
  }

  v5 = swift_unknownObjectRetain();
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  type metadata accessor for CFData(0);
  sub_1000216E0();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1000216EC(v7);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002170C();

  return v6;
}

void sub_100020F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppDefaultsManager();
  sub_1000211A4(a3, a4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();

  v8 = off_1000D1AB8;
  v12 = isa;
  if (v8 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v9 = sub_1000216D0();
  CFPreferencesSetAppValue(v9, v10, v11);

  CFPreferencesAppSynchronize(v8[146]);
}

uint64_t sub_1000210D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppDefaultsManager();
  sub_1000211A4(a1, a2);
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();

  if (off_1000D1AB8 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v7 = sub_1000216D0();
  CFPreferencesSetAppValue(v7, 0, v8);

  v9 = *(v5 + 1168);

  return CFPreferencesAppSynchronize(v9);
}

uint64_t sub_1000211A4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_10002EE34(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    if (qword_1000D1AF0 != -1)
    {
      swift_once();
    }

    v7 = 0x797A7A7978;
    if ((byte_1000E4578 & 1) == 0)
    {
      if (qword_1000D1AE8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v9, qword_1000E4560);
      v10 = static os_log_type_t.fault.getter();
      v11 = Logger.logObject.getter();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v12 = 136446466;
        *(v12 + 4) = sub_1000847A8(0, 0xE000000000000000, &v15);
        *(v12 + 12) = 2082;
        *(v12 + 14) = sub_1000847A8(0xD000000000000034, 0x800000010009F250, &v15);
        _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
        swift_arrayDestroy();
      }
    }

    v8 = 0xE500000000000000;
  }

  sub_10003262C(v7, v8, a1, a2);

  v13 = String.utf8CString.getter();

  sub_100016A44(v13);
  sub_1000216E0();

  v15 = v8;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

id sub_1000213F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100021448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_1000214A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2698 = result;
  return result;
}

CFTypeID sub_1000214DC()
{
  if (qword_1000D1AC0 != -1)
  {
    sub_1000216B0(&qword_1000D1AC0);
  }

  v0 = off_1000D1AB8;
  v1 = qword_1000D2698;
  if (v0 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v2 = CFPreferencesCopyAppValue(v1, qword_1000E4490);

  if (!v2)
  {
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  v4 = CFGetTypeID(v3);
  if (v4 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  type metadata accessor for CFData(0);
  sub_1000216E0();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000216EC(v5);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002170C();

  return v4;
}

void sub_1000215CC()
{
  v0.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (qword_1000D1AC0 != -1)
  {
    sub_1000216B0(&qword_1000D1AC0);
  }

  v1 = off_1000D1AB8;
  v2 = qword_1000D2698;
  v6 = v0.super.isa;
  if (v1 != -1)
  {
    sub_100021690(&off_1000D1AB8);
  }

  v3 = sub_1000216D0();
  CFPreferencesSetAppValue(v3, v4, v5);

  CFPreferencesAppSynchronize(*(v0.super.isa + 146));
}

uint64_t sub_100021690(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000216B0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000216EC(uint64_t a1)
{

  return _swift_dynamicCastUnknownClassUnconditional(a1, v1, 0, 0, 0);
}

uint64_t sub_10002170C()
{

  return swift_unknownObjectRelease_n();
}

uint64_t getEnumTagSinglePayload for StoreKitFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100021880);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}