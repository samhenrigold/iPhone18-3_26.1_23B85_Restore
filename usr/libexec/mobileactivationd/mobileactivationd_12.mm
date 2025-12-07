void __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s104s112s120r128r136r144r152r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v13 = *(a2 + 104);
  v14 = *(a2 + 112);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  _Block_object_assign((a1 + 136), *(a2 + 136), 8);
  _Block_object_assign((a1 + 144), *(a2 + 144), 8);
  v15 = *(a2 + 152);

  _Block_object_assign((a1 + 152), v15, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s104s112s120r128r136r144r152r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 152), 8);
  _Block_object_dispose(*(a1 + 144), 8);
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s104r112r120r128r136r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  v13 = *(a2 + 136);

  _Block_object_assign((a1 + 136), v13, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s104r112r120r128r136r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);

  v2 = *(a1 + 32);
}

id __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);

  return v11;
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void collection_activity_handler(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __collection_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v12 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
      v6 = copyMobileActivationSerialQueue(v5);
      dispatch_async(v6, v5);

      v7 = v12;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3254779904;
      v9[2] = __collection_activity_handler_block_invoke_3;
      v9[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v10 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v9);
      v8 = copyMobileActivationSerialQueue(v5);
      dispatch_async(v8, v5);

      v7 = v10;
    }
  }

  else
  {
    maLog("collection_activity_handler", 0, @"Invalid input.");
  }
}

void __collection_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.collection" UTF8String];

  scheduleXPCActivity(v2, v3, 0x1Eu, 1, 0x5000u, 0x1000u, &__block_literal_global_536);
}

void __collection_activity_handler_block_invoke_3(uint64_t a1)
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__5;
  v54 = __Block_byref_object_dispose__5;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5;
  v48 = __Block_byref_object_dispose__5;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__5;
  v38 = __Block_byref_object_dispose__5;
  v39 = 0;
  if (collectionAlreadyPerformed(*(a1 + 32)) || (v2 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v3 = isNSString(v2), v4 = v51[5], v51[5] = v3, v4, v2, use_hactivation()) || is_virtual_machine() || ![v51[5] isEqualToString:@"Activated"])
  {
    v12 = 0;
    goto LABEL_9;
  }

  v5 = data_ark_copy(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v6 = v45[5];
  v45[5] = v5;

  v7 = isNSNumber(v45[5]);
  v8 = v7 == 0;

  if (v8)
  {
    v11 = &off_1003FBD20;
    goto LABEL_11;
  }

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v45[5] unsignedLongLongValue] + 1);
  v10 = v45[5];
  v45[5] = v9;

  if ([v45[5] unsignedLongLongValue] > 6)
  {
    v11 = [NSNumber numberWithUnsignedInt:?];
LABEL_11:
    v13 = v45[5];
    v45[5] = v11;
  }

  data_ark_set(*(a1 + 32), 0, @"CollectionRetryAttempt", v45[5], 1);
  [v45[5] doubleValue];
  v15 = exp2(v14);
  *(v41 + 6) = (v15 * 60.0);
  v12 = data_ark_copy(*(a1 + 32), 0, @"InFieldCollectionInFlight");
  v16 = isNSNumber(v12);
  v17 = v16 == 0;

  if (v17)
  {

    v12 = &__kCFBooleanFalse;
  }

  v18 = [v12 BOOLValue];
  if (v18)
  {
    v19 = copyLoggingHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v41 + 6);
      *buf = 67109120;
      v57 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Collection request is in flight, rescheduling collection for %d seconds.", buf, 8u);
    }

    v21 = *(a1 + 32);
    v22 = [@"com.apple.mobileactivationd.collection" UTF8String];
    scheduleXPCActivity(v21, v22, *(v41 + 6), 1, 0x5000u, 0x1000u, &__block_literal_global_539);
  }

  else
  {
    v23 = copyLoggingHandle(v18);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Performing collection.", buf, 2u);
    }

    [@"com.apple.mobileactivationd.collection" UTF8String];
    v24 = os_transaction_create();
    v25 = v35[5];
    v35[5] = v24;

    v26 = *(a1 + 32);
    v27 = copy_current_process_name();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3254779904;
    v28[2] = __collection_activity_handler_block_invoke_540;
    v28[3] = &__block_descriptor_72_e8_32s40r48r56r64r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
    v29 = *(a1 + 32);
    v30 = &v50;
    v31 = &v40;
    v32 = &v44;
    v33 = &v34;
    performInFieldCollection(v26, 0, v27, v28);
  }

LABEL_9:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
}

void sub_10030D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void __collection_activity_handler_block_invoke_540(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __collection_activity_handler_block_invoke_2_541;
  block[3] = &__block_descriptor_104_e8_32s40s48s56s64r72r80r88r_e5_v8__0l;
  v12 = *(a1 + 32);
  v26 = a4;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v9;
  v13 = *(a1 + 56);
  v24 = *(a1 + 40);
  v25 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v18 = copyMobileActivationSerialQueue(v17);
  dispatch_async(v18, v17);
}

void __collection_activity_handler_block_invoke_2_541(uint64_t a1)
{
  if (collectionAlreadyPerformed(*(a1 + 32)) || (v2 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v3 = isNSString(v2), v4 = *(*(a1 + 64) + 8), v5 = *(v4 + 40), *(v4 + 40) = v3, v5, v2, ![*(*(*(a1 + 64) + 8) + 40) isEqualToString:@"Activated"]))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 96);
  if (v6 == 200)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"X-Apple-Invalid-Reason"];
    v19 = [*(a1 + 48) objectForKeyedSubscript:@"X-Apple-Retry-After"];
    v20 = isNSString(v6);
    v63 = v19;
    if (v20)
    {

      goto LABEL_17;
    }

    v26 = isNSNumber(v19);

    if (v26)
    {
LABEL_17:
      v27 = *(a1 + 96);
      v28 = *(a1 + 40);
      v29 = [NSHTTPURLResponse localizedStringForStatusCode:v27];
      v30 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5054, @"com.apple.MobileActivation.ServerErrorDomain", v27, v28, @"Server error: %ld (%@) / %@ / %@", v27, v29, v6, v63);

      v31 = *(a1 + 96);
      v32 = [NSHTTPURLResponse localizedStringForStatusCode:v31];
      v8 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5054, @"com.apple.MobileActivation.ErrorDomain", -6, v30, @"Server error: %ld (%@) / %@ / %@", v31, v32, v6, v63);

      v33 = v30;
      v15 = v63;

      v18 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    if (*(a1 + 56))
    {
      v50 = +[GestaltHlpr getSharedInstance];
      v9 = [v50 copyAnswer:@"BuildVersion"];

      v51 = isNSString(v9);
      if (v51)
      {
        v13 = [[MACollectionInterface alloc] initWithContext:*(a1 + 32)];
        if (v13)
        {
          v52 = *(a1 + 56);
          v66 = 0;
          v14 = [NSJSONSerialization JSONObjectWithData:v52 options:0 error:&v66];
          v53 = v66;
          v54 = v53;
          if (v14)
          {
            v12 = [v14 objectForKeyedSubscript:@"suinfo"];
            v55 = isNSString(v12);

            if (v55)
            {
              v11 = [[NSData alloc] initWithBase64EncodedString:v12 options:1];
              if (v11)
              {
                v65 = v54;
                v56 = [(MACollectionInterface *)v13 processSUInfo:v11 withError:&v65];
                v8 = v65;

                if (v56)
                {
                  data_ark_remove(*(a1 + 32), 0, @"PCRTToken");
                  v10 = [*(a1 + 48) objectForKeyedSubscript:@"x-iservice-token"];
                  v57 = isNSString(v10);

                  if (v57)
                  {
                    data_ark_set(*(a1 + 32), 0, @"PCRTToken", v10, 1);
                  }

                  data_ark_set(*(a1 + 32), 0, @"CollectionLastPerformed", v9, 1);
                  data_ark_remove(*(a1 + 32), 0, @"CollectionRetryAttempt");
                  v59 = copyLoggingHandle(v58);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Successfully performed collection.", buf, 2u);
                  }

                  v18 = 1;
                }

                else
                {
                  v60 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5094, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to process SUInfo: %@", v8);

                  v18 = 0;
                  v10 = 0;
                  v8 = v60;
                }
              }

              else
              {
                v8 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5089, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode SUInfo.");

                v18 = 0;
                v10 = 0;
              }
            }

            else
            {
              v8 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5083, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid SUInfo: %@", v12);

              v18 = 0;
              v10 = 0;
              v11 = 0;
            }
          }

          else
          {
            v8 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5077, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to deserialize JSON data: %@", v53);

            v18 = 0;
            v10 = 0;
            v11 = 0;
            v12 = 0;
          }

LABEL_49:
          v15 = v63;
          if (!v8)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }

        v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5071, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");
        v8 = v7;
        v18 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
LABEL_48:
        v14 = 0;
        goto LABEL_49;
      }

      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5065, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
      v8 = v7;
      v18 = 0;
    }

    else
    {
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5059, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Invalid server response.");
      v8 = v7;
      v18 = 0;
      v9 = 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_48;
  }

  if (v6)
  {
    if (v6 == -1)
    {
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5040, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Internal error.");
      v8 = v7;
    }

    else
    {
      v21 = *(a1 + 40);
      v22 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 96)];
      v23 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5046, @"com.apple.MobileActivation.ServerErrorDomain", v6, v21, @"Server error: %ld (%@)", v6, v22);

      v24 = *(a1 + 96);
      v25 = [NSHTTPURLResponse localizedStringForStatusCode:v24];
      v8 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5046, @"com.apple.MobileActivation.ErrorDomain", -6, v23, @"Server error: %ld (%@)", v24, v25);
    }

    v18 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v6 = 0;
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5043, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Network communication error.");
    v8 = v7;
    v18 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

LABEL_18:
  v61 = v18;
  v62 = v14;
  v34 = v13;
  v35 = v9;
  v36 = v6;
  v37 = v15;
  v38 = copyLoggingHandle(v7);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v8;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to perform collection: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 96))
  {
    v15 = v37;
    if ((mobileactivationErrorHasDomainAndErrorCode(v8, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFEALL) & 1) == 0)
    {
      writeSplunkLog(*(a1 + 32), 16, *(a1 + 96), "collection_activity_handler_block_invoke", 5120, 0, @"%@", v39, v8);
    }

    v6 = v36;
    v9 = v35;
    v13 = v34;
    v14 = v62;
    v18 = v61;
    if (*(a1 + 96) == 403)
    {
      *(*(*(a1 + 72) + 8) + 24) = 86400;
    }

LABEL_25:
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  v15 = v37;
  v6 = v36;
  v9 = v35;
  v13 = v34;
  v14 = v62;
  if (v61)
  {
    goto LABEL_8;
  }

LABEL_28:
  v64 = v15;
  v40 = data_ark_copy(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v41 = *(*(a1 + 80) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;

  v43 = isNSNumber(*(*(*(a1 + 80) + 8) + 40));
  if (!v43)
  {
    v44 = *(*(a1 + 80) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = &off_1003FBD20;
  }

  [*(*(*(a1 + 80) + 8) + 40) doubleValue];
  *(*(*(a1 + 72) + 8) + 24) = (exp2(v46) * 60.0);
  v48 = copyLoggingHandle(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 67109120;
    LODWORD(v68) = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Rescheduling collection for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.collection" UTF8String], *(*(*(a1 + 72) + 8) + 24), 1, 0x5000u, 0x1000u, &__block_literal_global_545);
  v15 = v64;
LABEL_8:
  v16 = *(*(a1 + 88) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r80r88r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  v8 = *(a2 + 88);

  _Block_object_assign((a1 + 88), v8, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64r72r80r88r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40r48r56r64r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v5 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v5, 8);
}

void __destroy_helper_block_e8_32s40r48r56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

void __ucrt_oob_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];

  scheduleXPCActivity(v2, v3, 5u, 1, 0x3000u, 0x1000u, &__block_literal_global_547);
}

void __ucrt_oob_activity_handler_block_invoke_3(uint64_t a1)
{
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__5;
  v122 = __Block_byref_object_dispose__5;
  v123 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy__5;
  v116 = __Block_byref_object_dispose__5;
  v117 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__5;
  v106 = __Block_byref_object_dispose__5;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__5;
  v100 = __Block_byref_object_dispose__5;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__5;
  v94 = __Block_byref_object_dispose__5;
  v95 = &__kCFBooleanFalse;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__5;
  v88 = __Block_byref_object_dispose__5;
  v89 = &__kCFBooleanFalse;
  v83 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v2 = data_ark_copy(*(a1 + 32), 0, @"UIKUpgradeRequired");
  v3 = v85[5];
  v85[5] = v2;

  v4 = isNSNumber(v85[5]);
  v5 = v4 == 0;

  if (v5)
  {
    v6 = v85[5];
    v85[5] = &__kCFBooleanFalse;
  }

  if ([v85[5] BOOLValue])
  {
    v7 = copyUCRT(*(a1 + 32), 0);
    v8 = v7;
    if (v7)
    {
      v78 = 0;
      v9 = deleteLegacyUIKIfMismatched(v7, &v83, &v78);
      v10 = v78;
      v11 = v10;
      if ((v9 & 1) == 0)
      {
        v12 = copyLoggingHandle(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __ucrt_oob_activity_handler_block_invoke_3_cold_1();
        }
      }

      if (v83 == 1)
      {
        maLog("ucrt_oob_activity_handler_block_invoke", 0, @"Legacy UIK purged.");
        if (certificatePublicKeyMatchesSystemPublicKey(2, 2, v8, 0))
        {
          v13 = v85[5];
          v85[5] = &__kCFBooleanFalse;

          data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = data_ark_copy(*(a1 + 32), 0, @"UCRTUpgradeRequired");
  v15 = v97[5];
  v97[5] = v14;

  v16 = isNSNumber(v97[5]);
  v17 = v16 == 0;

  if (v17)
  {
    v18 = v97[5];
    v97[5] = &__kCFBooleanFalse;
  }

  v19 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
  v20 = v91[5];
  v91[5] = v19;

  v21 = isNSNumber(v91[5]);
  v22 = v21 == 0;

  if (v22)
  {
    v23 = v91[5];
    v91[5] = &__kCFBooleanFalse;
  }

  if (ucrtOOBAlreadyPerformed(*(a1 + 32)) && ([v97[5] BOOLValue] & 1) == 0 && (objc_msgSend(v91[5], "BOOLValue") & 1) == 0 && !objc_msgSend(v85[5], "BOOLValue"))
  {
    goto LABEL_28;
  }

  v24 = data_ark_copy(*(a1 + 32), 0, @"ActivationState");
  v25 = isNSString(v24);
  v26 = v119[5];
  v119[5] = v25;

  if (use_hactivation() || is_virtual_machine() || ([v119[5] isEqualToString:@"Activated"] & 1) == 0)
  {
    data_ark_remove(*(a1 + 32), 0, @"UCRTUpgradeRequired");
    data_ark_remove(*(a1 + 32), 0, @"UCRTHealingRequired");
    data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
LABEL_28:
    v34 = 0;
    v35 = 0;
LABEL_29:
    v36 = 0;
    goto LABEL_30;
  }

  v27 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v28 = v113[5];
  v113[5] = v27;

  v29 = isNSNumber(v113[5]);
  v30 = v29 == 0;

  if (v30)
  {
    v33 = &off_1003FBD20;
  }

  else
  {
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v113[5] unsignedLongLongValue] + 1);
    v32 = v113[5];
    v113[5] = v31;

    if ([v113[5] unsignedLongLongValue] <= 6)
    {
      goto LABEL_35;
    }

    v33 = [NSNumber numberWithUnsignedInt:?];
  }

  v37 = v113[5];
  v113[5] = v33;

LABEL_35:
  data_ark_set(*(a1 + 32), 0, @"UCRTOOBRetryAttempt", v113[5], 1);
  [v113[5] doubleValue];
  v39 = exp2(v38);
  *(v109 + 6) = (v39 * 60.0);
  v35 = data_ark_copy(*(a1 + 32), 0, @"UCRTIssuanceInFlight");
  v40 = isNSNumber(v35);
  v41 = v40 == 0;

  if (v41)
  {

    v35 = &__kCFBooleanFalse;
  }

  v42 = [v35 BOOLValue];
  if (v42)
  {
    v43 = copyLoggingHandle(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(v109 + 6);
      *buf = 67109120;
      v127 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "UCRT request is in flight, rescheduling UCRT OOB for %d seconds.", buf, 8u);
    }

    v45 = *(a1 + 32);
    v46 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    v47 = &__block_literal_global_550;
LABEL_49:
    scheduleXPCActivity(v45, v46, *(v109 + 6), 1, 0x3000u, 0x1000u, v47);
    v34 = 0;
    goto LABEL_29;
  }

  v48 = collectionAlreadyPerformed(*(a1 + 32));
  if (!v48)
  {
    v54 = copyLoggingHandle(v48);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(v109 + 6);
      *buf = 67109120;
      v127 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Collection not performed yet. Rescheduling UCRT OOB for %d seconds.", buf, 8u);
    }

    v45 = *(a1 + 32);
    v46 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    v47 = &__block_literal_global_553;
    goto LABEL_49;
  }

  v77 = 0;
  v49 = ucrtHealingSupported(&v77);
  v50 = v77;
  if (v50)
  {
    v36 = v50;
    v51 = copyLoggingHandle(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      __ucrt_oob_activity_handler_block_invoke_3_cold_2();
    }

    v52 = *(a1 + 32);
    v53 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    scheduleXPCActivity(v52, v53, *(v109 + 6), 1, 0x3000u, 0x1000u, &__block_literal_global_556);
    v34 = 0;
    goto LABEL_30;
  }

  v56 = [v91[5] BOOLValue];
  if (v56)
  {
    if (v49)
    {
      v57 = 1;
LABEL_54:
      v58 = copyLoggingHandle(v56);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Performing UCRT OOB.", buf, 2u);
      }

      [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
      v59 = os_transaction_create();
      v60 = v103[5];
      v103[5] = v59;

      data_ark_set(*(a1 + 32), 0, @"UCRTIssuanceInFlight", &__kCFBooleanTrue, 0);
      v124 = @"UseCommittedUIK";
      v61 = [NSNumber numberWithInt:v57 ^ 1u];
      v125 = v61;
      v34 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];

      v62 = *(a1 + 32);
      v63 = copy_current_process_name();
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3254779904;
      v65[2] = __ucrt_oob_activity_handler_block_invoke_557;
      v65[3] = &__block_descriptor_106_e8_32s40r48r56r64r72r80r88r96r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
      v67 = &v84;
      v66 = *(a1 + 32);
      v68 = &v96;
      v69 = &v90;
      v70 = &v118;
      v75 = v57;
      v76 = v49;
      v71 = &v79;
      v72 = &v112;
      v73 = &v108;
      v74 = &v102;
      performUCRTOOB(v62, v57, v63, v34, v65);

      goto LABEL_29;
    }
  }

  else
  {
    v56 = [v85[5] BOOLValue];
    v57 = v56;
    if ((v49 | v56 ^ 1))
    {
      goto LABEL_54;
    }
  }

  v64 = copyLoggingHandle(v56);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "UCRT healing not supported.", buf, 2u);
  }

  data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
  v34 = 0;
  v36 = 0;
  *(v80 + 24) = 1;
LABEL_30:
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);

  _Block_object_dispose(&v118, 8);
}

void sub_10030EC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 240), 8);
  _Block_object_dispose((v48 - 208), 8);
  _Block_object_dispose((v48 - 160), 8);
  _Unwind_Resume(a1);
}

void __ucrt_oob_activity_handler_block_invoke_557(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3254779904;
  v20[2] = __ucrt_oob_activity_handler_block_invoke_2_558;
  v20[3] = &__block_descriptor_138_e8_32s40s48s56s64r72r80r88r96r104r112r120r_e5_v8__0l;
  v12 = *(a1 + 32);
  v25 = *(a1 + 40);
  v13 = v12;
  v14 = *(a1 + 64);
  v26 = *(a1 + 48);
  v21 = v13;
  v22 = v11;
  v31 = *(a1 + 104);
  v27 = v14;
  v23 = v9;
  v24 = v10;
  v28 = *(a1 + 80);
  v29 = *(a1 + 96);
  v30 = a4;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v20);
  v19 = copyMobileActivationSerialQueue(v18);
  dispatch_async(v19, v18);
}

void __ucrt_oob_activity_handler_block_invoke_2_558(uint64_t a1)
{
  v2 = data_ark_copy(*(a1 + 32), 0, @"UIKUpgradeRequired");
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = isNSNumber(*(*(*(a1 + 64) + 8) + 40));
  if (!v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = &__kCFBooleanFalse;
  }

  v8 = data_ark_copy(*(a1 + 32), 0, @"UCRTUpgradeRequired");
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = isNSNumber(*(*(*(a1 + 72) + 8) + 40));
  if (!v11)
  {
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = &__kCFBooleanFalse;
  }

  v14 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
  v15 = *(*(a1 + 80) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = isNSNumber(*(*(*(a1 + 80) + 8) + 40));
  if (!v17)
  {
    v18 = *(*(a1 + 80) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = &__kCFBooleanFalse;
  }

  if (ucrtOOBAlreadyPerformed(*(a1 + 32)) && ([*(*(*(a1 + 72) + 8) + 40) BOOLValue] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "BOOLValue") & 1) == 0 && !objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "BOOLValue") || (v20 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v21 = isNSString(v20), v22 = *(*(a1 + 88) + 8), v23 = *(v22 + 40), *(v22 + 40) = v21, v23, v20, !objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "isEqualToString:", @"Activated")))
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_48;
  }

  v24 = *(a1 + 128);
  if (v24 != 200)
  {
    if (!v24)
    {
      v32 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5398, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Network communication error.");
      v31 = v32;
LABEL_39:
      v26 = 0;
      v27 = 0;
LABEL_40:
      v28 = 0;
      v29 = 0;
LABEL_41:
      v42 = 0;
      v30 = 0;
      goto LABEL_42;
    }

    if (v24 == -1)
    {
      MobileActivationError = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5395, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Internal error.");
LABEL_37:
      v32 = MobileActivationError;
      v31 = v32;
      goto LABEL_38;
    }

    v43 = *(a1 + 40);
    v44 = [NSHTTPURLResponse localizedStringForStatusCode:v24];
    v45 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5401, @"com.apple.MobileActivation.ServerErrorDomain", v24, v43, @"Server error: %ld (%@)", v24, v44);

    v46 = *(a1 + 128);
    if (v46 == 403)
    {
      v47 = -5;
    }

    else
    {
      v47 = -6;
    }

    v48 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 128)];
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5401, @"com.apple.MobileActivation.ErrorDomain", v47, v45, @"Server error: %ld (%@)", v46, v48);

    v49 = *(a1 + 128);
    if (v49 == 500)
    {
      if (*(a1 + 136) != 1)
      {
        goto LABEL_38;
      }

      v65 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBForbiddenCount");
      v66 = isNSNumber(v65);

      if (v66)
      {
        v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v65 unsignedLongLongValue] + 1);
      }

      else
      {
        v24 = &off_1003FBD20;
      }

      v42 = 1;
      data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbiddenCount", v24, 1);
      v32 = [(NSNumber *)v24 unsignedLongLongValue];
      if (v32 < 0xB)
      {
        goto LABEL_39;
      }

      v32 = data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
    }

    else
    {
      if (v49 != 403)
      {
LABEL_38:
        v24 = 0;
        goto LABEL_39;
      }

      if ((*(a1 + 136) & 1) == 0 && *(a1 + 137) == 1)
      {
        v32 = data_ark_set(*(a1 + 32), 0, @"UCRTHealingRequired", &__kCFBooleanTrue, 1);
        goto LABEL_38;
      }

      v42 = 1;
      v32 = data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
      v24 = 0;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(*(*(a1 + 96) + 8) + 24) = 1;
    goto LABEL_42;
  }

  if (!*(a1 + 48))
  {
    MobileActivationError = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5440, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Invalid server response.");
    goto LABEL_37;
  }

  v27 = [*(a1 + 56) objectForKeyedSubscript:@"Date"];
  if (!v27)
  {
    v32 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5446, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve server response date.");
    v31 = v32;
    v24 = 0;
    v26 = 0;
    goto LABEL_40;
  }

  v33 = objc_alloc_init(NSDateFormatter);
  v29 = v33;
  if (!v33)
  {
    v32 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5452, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate date formatter.");
    v31 = v32;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_41;
  }

  v69 = 0;
  v28 = [v33 dateFromServerString:v27 withError:&v69];
  v34 = v69;
  if (!v28)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5458, @"com.apple.MobileActivation.ErrorDomain", -1, v34, @"Failed to convert date string.");

    v24 = 0;
    v26 = 0;
    goto LABEL_41;
  }

  v35 = +[GestaltHlpr getSharedInstance];
  v30 = [v35 copyAnswer:@"BuildVersion"];

  v36 = isNSString(v30);
  if (!v36)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5464, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");

    v24 = 0;
    v26 = 0;
LABEL_73:
    v42 = 0;
    goto LABEL_42;
  }

  v26 = objc_alloc_init(NSMutableDictionary);
  if (!v26)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5470, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

    v24 = 0;
    goto LABEL_73;
  }

  v37 = [NSNumber numberWithInt:*(a1 + 136) ^ 1u];
  [v26 setObject:v37 forKeyedSubscript:@"UseCommittedUIK"];

  [v26 setObject:v28 forKeyedSubscript:@"ServerResponseDate"];
  v38 = *(a1 + 32);
  v39 = *(a1 + 48);
  v68 = v34;
  LOBYTE(v37) = storeUCRT(v38, v39, v26, &v68);
  v31 = v68;

  if (v37)
  {
    data_ark_set(*(a1 + 32), 0, @"UCRTOOBLastPerformed", v30, 1);
    data_ark_remove(*(a1 + 32), 0, @"UCRTOOBForbiddenCount");
    data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
    v41 = copyLoggingHandle(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Successfully performed UCRT OOB.", buf, 2u);
    }

    v24 = 0;
    v42 = 1;
  }

  else
  {
    v67 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5480, @"com.apple.MobileActivation.ErrorDomain", -1, v31, @"Failed to store UCRT.");

    v24 = 0;
    v42 = 0;
    v31 = v67;
  }

  if (!v31)
  {
    goto LABEL_47;
  }

LABEL_42:
  v50 = copyLoggingHandle(v32);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = v31;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Failed to perform UCRT OOB: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 128) && (mobileactivationErrorHasDomainAndErrorCode(v31, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFEALL) & 1) == 0)
  {
    if (*(a1 + 136))
    {
      v52 = 31;
    }

    else
    {
      v52 = 15;
    }

    writeSplunkLog(*(a1 + 32), v52, *(a1 + 128), "ucrt_oob_activity_handler_block_invoke", 5500, 0, @"%@", v51, v31);
    if (v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_47:
    if (v42)
    {
LABEL_48:
      if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
      {
        data_ark_remove(*(a1 + 32), 0, @"UCRTUpgradeRequired");
        data_ark_remove(*(a1 + 32), 0, @"UCRTHealingRequired");
        data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
      }

      goto LABEL_59;
    }
  }

  v53 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v54 = *(*(a1 + 104) + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  v56 = isNSNumber(*(*(*(a1 + 104) + 8) + 40));
  if (!v56)
  {
    v57 = *(*(a1 + 104) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = &off_1003FBD20;
  }

  [*(*(*(a1 + 104) + 8) + 40) doubleValue];
  *(*(*(a1 + 112) + 8) + 24) = (exp2(v59) * 60.0);
  v61 = copyLoggingHandle(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(*(*(a1 + 112) + 8) + 24);
    *buf = 67109120;
    LODWORD(v71) = v62;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Rescheduling UCRT OOB for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String], *(*(*(a1 + 112) + 8) + 24), 1, 0x3000u, 0x1000u, &__block_literal_global_561);
LABEL_59:
  data_ark_set(*(a1 + 32), 0, @"UCRTIssuanceInFlight", &__kCFBooleanFalse, 0);
  v63 = *(*(a1 + 120) + 8);
  v64 = *(v63 + 40);
  *(v63 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r80r88r96r104r112r120r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  v8 = *(a2 + 120);

  _Block_object_assign((a1 + 120), v8, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64r72r80r88r96r104r112r120r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40r48r56r64r72r80r88r96r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  v5 = *(a2 + 96);

  _Block_object_assign((a1 + 96), v5, 8);
}

void __destroy_helper_block_e8_32s40r48r56r64r72r80r88r96r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

id copy_splunk_log_array(uint64_t a1, NSError **a2)
{
  v28 = objc_alloc_init(NSMutableArray);
  if (!v28)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_log_array", 6104, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate array.");
    goto LABEL_22;
  }

  v3 = copySortedSplunkFileList();
  if (!v3)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_log_array", 6110, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query splunk file list.");
LABEL_22:
    v6 = MobileActivationError;
    v20 = 0;
    v21 = 0;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v25 = v3;
  v26 = a2;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v3 reverseObjectEnumerator];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [NSData alloc];
        v30 = v6;
        v11 = [v10 initWithContentsOfFile:v9 options:0 error:&v30];
        v12 = v30;

        if (v11)
        {
          [v28 addObject:v11];
        }

        else
        {
          v14 = copyLoggingHandle(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v36 = v9;
            v37 = 2112;
            v38 = v12;
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
          }
        }

        v15 = +[NSFileManager defaultManager];
        v29 = v12;
        v16 = [(NSFileManager *)v15 removeItemAtPath:v9 error:&v29];
        v6 = v29;

        if ((v16 & 1) == 0)
        {
          v18 = copyLoggingHandle(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v36 = v9;
            v37 = 2112;
            v38 = v6;
            _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Failed to delete %@: %@", buf, 0x16u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v21 = v28;
  v20 = v25;
  a2 = v26;
  if (v26)
  {
LABEL_26:
    if (!v21)
    {
      v22 = v6;
      *a2 = v6;
    }
  }

LABEL_28:
  v23 = v21;

  return v21;
}

uint64_t perform_sydro_data_migration_tasks(void *a1, NSError **a2)
{
  v244 = a1;
  certificate = 0;
  v300 = 0;
  v299 = -1;
  v3 = preSydroDataMigrationCompleted(v244);
  if (v3)
  {
    v254 = 0;
    v236 = 0;
    v239 = 0;
    cf = 0;
    v262 = 0;
    v4 = 0;
    v224 = 0;
    v225 = 0;
    v232 = 0;
    v233 = 0;
    v229 = 0;
    v230 = 0;
    v5 = 0;
    v226 = 0;
    v227 = 0;
    v231 = 0;
    v247 = 0;
    v249 = 0;
    v234 = 0;
    v235 = 0;
    v220 = 0;
    v221 = 0;
    v240 = 0;
    v241 = 0;
    v251 = 0;
    v245 = 0;
    v246 = 0;
    v228 = 0;
    v6 = 0;
    v219 = 0;
    v222 = 0;
    v223 = 0;
    v242 = 0;
    v243 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    obj = 0;
    v13 = 1;
    goto LABEL_35;
  }

  v215 = a2;
  v14 = copy_ucrt_path(v3);
  v225 = v14;
  if (!v14)
  {
    v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1078, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy UCRT path.");
LABEL_28:
    v242 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  v15 = &_CTServerConnectionCopyPostponementStatus_ptr;
  v16 = +[NSFileManager defaultManager];
  v321 = NSFilePosixPermissions;
  v322 = &off_1003FBD38;
  v17 = [NSDictionary dictionaryWithObjects:&v322 forKeys:&v321 count:1];
  v298 = 0;
  v18 = [(NSFileManager *)v16 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:v17 error:&v298];
  v19 = v298;

  if ((v18 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("perform_sydro_data_migration_tasks", 1083, @"com.apple.MobileActivation.ErrorDomain", -1, v19, @"Failed to create %@.", v14);
LABEL_17:
    v29 = MobileActivationError;

    v242 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
LABEL_29:
    v218 = 0;
    goto LABEL_30;
  }

  v20 = [v14 stringByAppendingPathComponent:@"ucrt.pem"];
  if (!v20)
  {
    MobileActivationError = createMobileActivationError("perform_sydro_data_migration_tasks", 1089, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create UCRT file path.");
    goto LABEL_17;
  }

  v14 = v20;
  v297 = v19;
  load_certificate(&certificate, @"lockdown-identities", @"com.apple.mobileactivation.ucrt", &v299, &v297);
  v21 = v297;

  if (v299 != -25300 && v299)
  {
    v31 = createMobileActivationError("perform_sydro_data_migration_tasks", 1095, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to query keychain.");
    goto LABEL_26;
  }

  if (certificate)
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Migrating UCRT from the keychain.");
    v22 = SecCertificateCopyData(certificate);
    if (v22)
    {
      v23 = v22;
      v296 = v21;
      v24 = lockcrypto_create_pem(v22, "CERTIFICATE", &v296);
      v25 = v296;

      if (v24)
      {
        v295 = v25;
        v218 = v24;
        v26 = store_data(v14, v24, &v295);
        v27 = v295;

        if ((v26 & 1) == 0)
        {
          v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1115, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to store UCRT at %@.", v14);

          v242 = 0;
          v243 = 0;
          v12 = 0;
          v8 = 0;
          v222 = 0;
          v223 = 0;
          v221 = 0;
          v5 = 0;
          v42 = 0;
          v233 = 0;
          v224 = 0;
          v217 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v11 = 0;
          goto LABEL_31;
        }

        v294 = v27;
        v28 = delete_certificate(@"lockdown-identities", @"com.apple.mobileactivation.ucrt", &v294);
        v21 = v294;

        if (v28)
        {
          maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated UCRT from the keychain.");
          goto LABEL_20;
        }

        v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1120, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to delete UCRT.");

        v242 = 0;
        v12 = 0;
        v11 = 0;
LABEL_30:
        v8 = 0;
        v243 = 0;
        v222 = 0;
        v223 = 0;
        v221 = 0;
        v5 = 0;
        v42 = 0;
        v233 = 0;
        v224 = 0;
        v217 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
LABEL_31:
        v254 = v45;
        obj = v29;
        cf = v42;
        v262 = v43;
        v236 = v44;
        v245 = v14;
        if (v215)
        {
          v46 = v12;
          v47 = v5;
          v48 = v29;
          v5 = v47;
          v12 = v46;
          v13 = 0;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          v232 = 0;
          v226 = 0;
          v227 = 0;
          v247 = 0;
          v249 = 0;
          v234 = 0;
          v235 = 0;
          v219 = 0;
          v220 = 0;
          v239 = 0;
          v240 = 0;
          v251 = 0;
          v246 = 0;
          v241 = 0;
          v228 = 0;
          v6 = 0;
          v7 = 0;
          v49 = v29;
          v10 = 0;
          *v215 = v49;
        }

        else
        {
          v13 = 0;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          v232 = 0;
          v226 = 0;
          v227 = 0;
          v247 = 0;
          v249 = 0;
          v234 = 0;
          v235 = 0;
          v219 = 0;
          v220 = 0;
          v239 = 0;
          v240 = 0;
          v251 = 0;
          v246 = 0;
          v241 = 0;
          v228 = 0;
          v6 = 0;
          v7 = 0;
          v10 = 0;
        }

        v4 = v217;
        v9 = v218;
        goto LABEL_35;
      }

      v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1110, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Failed to create UCRT PEM data.");
      v41 = v25;
      goto LABEL_27;
    }

    v31 = createMobileActivationError("perform_sydro_data_migration_tasks", 1104, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy UCRT certificate data.");
LABEL_26:
    v29 = v31;
    v41 = v21;
LABEL_27:

    goto LABEL_28;
  }

  v218 = 0;
LABEL_20:
  v32 = v14;
  v33 = [NSData alloc];
  v304 = 0;
  v245 = v32;
  v34 = [v33 initWithContentsOfFile:v32 options:0 error:&v304];
  v35 = v304;
  if (!v34)
  {
    v38 = 0;
    goto LABEL_57;
  }

  v36 = SecCertificateCreateWithData(kCFAllocatorDefault, v34);
  if (v36)
  {
    v37 = v36;
    v303 = v35;
    v38 = lockcrypto_create_pem(v34, "CERTIFICATE", &v303);
    v39 = v303;

    if (v38)
    {
      v302 = v39;
      v40 = store_data(v245, v38, &v302);
      v35 = v302;

      if (v40)
      {
        CFRelease(v37);
LABEL_57:
        v56 = 1;
        v57 = v21;
        goto LABEL_65;
      }

      v57 = createMobileActivationError("convert_ucrt_from_der_to_pem", 218, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Failed to store UCRT at %@.", v245);
      v39 = v35;
    }

    else
    {
      v57 = createMobileActivationError("convert_ucrt_from_der_to_pem", 213, @"com.apple.MobileActivation.ErrorDomain", -1, v39, @"Failed to create UCRT PEM data.");
    }

    CFRelease(v37);
    v58 = v57;
    v56 = 0;
    v35 = v57;
  }

  else
  {
    v56 = 1;
    v57 = v21;
    v38 = v34;
  }

LABEL_65:

  v59 = v57;
  if ((v56 & 1) == 0)
  {
    v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1130, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to migrate UCRT from DER to PEM.");

    v242 = 0;
    v243 = 0;
    v12 = 0;
    v11 = 0;
    v8 = 0;
    v222 = 0;
    v223 = 0;
    v221 = 0;
    v5 = 0;
    v42 = 0;
    v233 = 0;
    v224 = 0;
    v217 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v14 = v245;
    goto LABEL_31;
  }

  v293 = v59;
  v214 = copy_keychain_data(@"lockdown-identities", @"com.apple.mobileactivationd.dcrt", &v299, &v293);
  v60 = v293;

  if (v299 != -25300 && v299)
  {
    v64 = createMobileActivationError("perform_sydro_data_migration_tasks", 1138, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to query keychain.");

    v242 = 0;
    v243 = 0;
    goto LABEL_123;
  }

  if (v214)
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Migrating DCRT from the keychain.");
    v319[0] = @"UseCommittedDAK";
    v319[1] = @"SkipCertificateValidation";
    v320[0] = &__kCFBooleanTrue;
    v320[1] = &__kCFBooleanTrue;
    v292 = v60;
    v243 = [NSDictionary dictionaryWithObjects:v320 forKeys:v319 count:2];
    v61 = storeDCRT(v244, v214, v243, &v292);
    v62 = v292;

    if ((v61 & 1) == 0)
    {
      v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1156, @"com.apple.MobileActivation.ErrorDomain", -1, v62, @"Failed to store DCRT.");

      v242 = 0;
      v12 = 0;
      v11 = 0;
      v222 = 0;
      v223 = 0;
      v221 = 0;
      v5 = 0;
      v42 = 0;
      v233 = 0;
      v224 = 0;
      v217 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
LABEL_124:
      v14 = v245;
LABEL_125:
      v8 = v214;
      goto LABEL_31;
    }

    v291 = v62;
    v63 = delete_keychain_data(@"lockdown-identities", @"com.apple.mobileactivationd.dcrt", &v291);
    v60 = v291;

    if (v63)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated DCRT from the keychain.");
      goto LABEL_75;
    }

    v64 = createMobileActivationError("perform_sydro_data_migration_tasks", 1161, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to delete DCRT.");

    v242 = 0;
LABEL_123:
    v11 = 0;
    v222 = 0;
    v223 = 0;
    v221 = 0;
    v5 = 0;
    v42 = 0;
    v233 = 0;
    v224 = 0;
    v217 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v29 = v64;
    v12 = 0;
    goto LABEL_124;
  }

  v243 = 0;
LABEL_75:
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v250 = [&off_1003FC320 countByEnumeratingWithState:&v287 objects:v318 count:16];
  v65 = 0;
  if (v250)
  {
    v262 = 0;
    v44 = 0;
    v45 = 0;
    v248 = *v288;
    do
    {
      v66 = 0;
      v67 = v45;
      do
      {
        if (*v288 != v248)
        {
          objc_enumerationMutation(&off_1003FC320);
        }

        v68 = *(*(&v287 + 1) + 8 * v66);
        v69 = [v15[326] defaultManager];
        cfa = v68;
        v45 = [v69 contentsOfDirectoryAtPath:v68 error:0];

        v70 = [v45 count];
        if (v70)
        {
          v252 = v66;
          v71 = copy_activation_records_directory_path(v70);

          v72 = v15;
          v73 = [v15[326] defaultManager];
          v316 = NSFilePosixPermissions;
          v317 = &off_1003FBD50;
          v74 = [NSDictionary dictionaryWithObjects:&v317 forKeys:&v316 count:1];
          v286 = v60;
          v75 = [v73 createDirectoryAtPath:v71 withIntermediateDirectories:1 attributes:v74 error:&v286];
          v76 = v286;

          if ((v75 & 1) == 0)
          {
            maLog("perform_sydro_data_migration_tasks", 0, @"Could not create path %@: %@", v71, v76);
          }

          v284 = 0u;
          v285 = 0u;
          v282 = 0u;
          v283 = 0u;
          v255 = v45;
          obja = v45;
          v77 = [obja countByEnumeratingWithState:&v282 objects:v315 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v283;
            do
            {
              v80 = 0;
              v81 = v262;
              v82 = v44;
              do
              {
                if (*v283 != v79)
                {
                  objc_enumerationMutation(obja);
                }

                v83 = *(*(&v282 + 1) + 8 * v80);
                v84 = [cfa stringByAppendingPathComponent:v83];

                v85 = [v71 stringByAppendingPathComponent:v83];
                maLog("perform_sydro_data_migration_tasks", 0, @"Migrating %@ to %@", v84, v85);
                v86 = [v72[326] defaultManager];
                v281 = v76;
                v262 = v85;
                LOBYTE(v85) = [v86 copyItemAtPath:v84 toPath:v85 error:&v281];
                v87 = v281;

                if ((v85 & 1) == 0)
                {
                  maLog("perform_sydro_data_migration_tasks", 0, @"Failed to copy %@: %@", v84, v87);
                }

                v88 = [v72[326] defaultManager];
                v280 = v87;
                v89 = [v88 removeItemAtPath:v84 error:&v280];
                v76 = v280;

                if ((v89 & 1) == 0)
                {
                  maLog("perform_sydro_data_migration_tasks", 0, @"Failed to delete %@: %@", v84, v76);
                }

                v80 = v80 + 1;
                v81 = v262;
                v82 = v84;
              }

              while (v78 != v80);
              v44 = v84;
              v78 = [obja countByEnumeratingWithState:&v282 objects:v315 count:16];
            }

            while (v78);
          }

          v60 = v76;
          v65 = v71;
          v15 = v72;
          v66 = v252;
          v45 = v255;
        }

        v66 = v66 + 1;
        v67 = v45;
      }

      while (v66 != v250);
      v250 = [&off_1003FC320 countByEnumeratingWithState:&v287 objects:v318 count:16];
    }

    while (v250);
  }

  else
  {
    v262 = 0;
    v44 = 0;
    v45 = 0;
  }

  v90 = [v15[326] defaultManager];
  v91 = [v90 fileExistsAtPath:@"/private/var/mobile/Library/mad/data_ark.plist"];

  if (v91)
  {
    v224 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/mobile/Library/mad/data_ark.plist"];
    v233 = [(NSDictionary *)v224 objectForKeyedSubscript:@"-LastActivated"];
    v92 = isNSString(v233);
    if (v92)
    {
      v93 = v92;
      v94 = data_ark_exists(v244, 0, @"LastActivated");

      if ((v94 & 1) == 0)
      {
        data_ark_set(v244, 0, @"LastActivated", v233, 1);
      }
    }

    v95 = [v15[326] defaultManager];
    v279 = v60;
    v96 = [v95 removeItemAtPath:@"/private/var/mobile/Library/mad/data_ark.plist" error:&v279];
    v97 = v279;

    if ((v96 & 1) == 0)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Failed to delete %@: %@", @"/private/var/mobile/Library/mad/data_ark.plist", v97);
    }

    v60 = v97;
  }

  else
  {
    v233 = 0;
    v224 = 0;
  }

  v98 = data_ark_copy(v244, 0, @"UIKLegacyMigrationCompleted");
  v99 = isNSNumber(v98);
  v217 = v65;
  v223 = v98;
  if (!v99 || (v100 = v99, v101 = [v98 BOOLValue], v100, (v101 & 1) == 0))
  {
    v278 = v60;
    v110 = copy_keychain_data(@"lockdown-identities", @"com.apple.mobileactivation.uik", &v299, &v278);
    v111 = v278;

    v242 = v110;
    if (v299 != -25300 && v299)
    {
      v161 = createMobileActivationError("perform_sydro_data_migration_tasks", 1224, @"com.apple.MobileActivation.ErrorDomain", -1, v111, @"Failed to copy UIK from keychain.");
    }

    else
    {
      if (!v110)
      {
        cf = 0;
        v213 = 0;
LABEL_151:
        v275 = v111;
        v212 = copy_keychain_item(@"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", 0, &v299, &v275);
        v60 = v275;

        if (v299 != -25300 && v299)
        {
          v173 = createMobileActivationError("perform_sydro_data_migration_tasks", 1266, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to copy UIK from keychain.");

          v11 = 0;
          v221 = 0;
          v222 = 0;
LABEL_166:
          v29 = v173;
LABEL_175:
          v14 = v245;
LABEL_176:
          v42 = cf;
          v43 = v262;
          v12 = v213;
          v8 = v214;
          v5 = v212;
          goto LABEL_31;
        }

        if (!v212)
        {
          v169 = 0;
          goto LABEL_169;
        }

        v274 = v60;
        v162 = security_create_external_representation(v212, 0, &v274);
        v163 = v274;

        if (v162)
        {
          v11 = copy_uik_path(v164);
          if (!v11)
          {
            v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1279, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve UIK path.");

            v221 = 0;
            v222 = 0;
            v242 = v162;
            goto LABEL_175;
          }

          v238 = v44;
          v165 = [v15[326] defaultManager];
          v311 = NSFilePosixPermissions;
          v312 = &off_1003FBD50;
          v166 = [NSDictionary dictionaryWithObjects:&v312 forKeys:&v311 count:1];
          v273 = v163;
          v167 = [v165 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:v166 error:&v273];
          v168 = v273;

          if (v167)
          {
            v169 = [v11 stringByAppendingPathComponent:@"uik.pem"];

            v272 = v168;
            v170 = store_data(v169, v162, &v272);
            v171 = v272;

            if (v170)
            {
              v271 = v171;
              v172 = delete_keychain_item(@"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", &v271);
              v60 = v271;

              if (v172)
              {
                v242 = v162;
                v44 = v238;
                v15 = &_CTServerConnectionCopyPostponementStatus_ptr;
LABEL_169:
                v103 = v244;
                data_ark_set(v244, 0, @"UIKLegacyMigrationCompleted", &__kCFBooleanTrue, 1);
                v211 = v169;
                v102 = v242;
                goto LABEL_111;
              }

              v178 = createMobileActivationError("perform_sydro_data_migration_tasks", 1296, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to delete UIK from keychain.");

              v221 = 0;
              v222 = 0;
              v29 = v178;
            }

            else
            {
              v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1291, @"com.apple.MobileActivation.ErrorDomain", -1, v171, @"Failed to store UIK.");

              v221 = 0;
              v222 = 0;
            }

            v242 = v162;
            v11 = v169;
          }

          else
          {
            v176 = createMobileActivationError("perform_sydro_data_migration_tasks", 1284, @"com.apple.MobileActivation.ErrorDomain", -1, v168, @"Failed to create %@.", v11);
            v177 = v168;
            v29 = v176;

            v221 = 0;
            v222 = 0;
            v242 = v162;
          }

          v14 = v245;
          v44 = v238;
          goto LABEL_176;
        }

        v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1273, @"com.apple.MobileActivation.ErrorDomain", -1, v163, @"Failed to encode UIK as data.");

        v242 = 0;
LABEL_174:
        v11 = 0;
        v221 = 0;
        v222 = 0;
        goto LABEL_175;
      }

      maLog("perform_sydro_data_migration_tasks", 0, @"Converting legacy UIK.");
      v112 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &v300);
      if (v112)
      {
        v313[0] = kSecAttrIsPermanent;
        v313[1] = kSecAttrTokenID;
        v314[0] = &__kCFBooleanFalse;
        v314[1] = kSecAttrTokenIDAppleKeyStore;
        v313[2] = kSecAttrTokenOID;
        v313[3] = kSecAttrAccessControl;
        v314[2] = v110;
        cf = v112;
        v314[3] = v112;
        v213 = [NSDictionary dictionaryWithObjects:v314 forKeys:v313 count:4];
        v113 = SecKeyCreateWithData(+[NSData data], v213, &v300);
        if (!v113)
        {
          v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1244, @"com.apple.MobileActivation.ErrorDomain", -1, v300, @"Failed to convert legacy UIK.");

          v11 = 0;
          v221 = 0;
          v222 = 0;
          v5 = 0;
          v14 = v245;
          v42 = cf;
          v43 = v262;
          v12 = v213;
          v8 = v214;
          goto LABEL_31;
        }

        v277 = v111;
        v212 = v113;
        v114 = store_keychain_item(v113, @"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", 0, &v277);
        v115 = v277;

        if (v114)
        {
          v276 = v115;
          v116 = delete_keychain_data(@"lockdown-identities", @"com.apple.mobileactivation.uik", &v276);
          v111 = v276;

          if (v116)
          {
            maLog("perform_sydro_data_migration_tasks", 0, @"Successfully converted legacy UIK.");
            CFRelease(v212);
            goto LABEL_151;
          }

          v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1254, @"com.apple.MobileActivation.ErrorDomain", -1, v111, @"Failed to delete UIK from keychain.");
          v175 = v111;
        }

        else
        {
          v174 = createMobileActivationError("perform_sydro_data_migration_tasks", 1249, @"com.apple.MobileActivation.ErrorDomain", -1, v115, @"Failed to store UIK.");
          v175 = v115;
          v29 = v174;
        }

        goto LABEL_174;
      }

      v161 = createMobileActivationError("perform_sydro_data_migration_tasks", 1233, @"com.apple.MobileActivation.ErrorDomain", -1, v300, @"Failed to create access control.");
    }

    v29 = v161;

    v12 = 0;
    v11 = 0;
    v221 = 0;
    v222 = 0;
    v5 = 0;
    v42 = 0;
    v14 = v245;
    v43 = v262;
    goto LABEL_125;
  }

  v102 = 0;
  v212 = 0;
  v213 = 0;
  v211 = 0;
  cf = 0;
  v103 = v244;
LABEL_111:
  v104 = data_ark_copy(v103, 0, @"MFIFactoryCertificatesMigrationCompleted");
  v105 = isNSNumber(v104);
  v242 = v102;
  v222 = v104;
  if (v105)
  {
    v106 = v105;
    v107 = [v104 BOOLValue];

    if (v107)
    {
      v227 = 0;
      v228 = 0;
      v240 = 0;
      v241 = 0;
      v246 = 0;
      v247 = 0;
      v108 = 0;
      v220 = 0;
      v221 = 0;
      v234 = 0;
      v235 = 0;
      v239 = 0;
      v249 = 0;
      v231 = 0;
      v232 = 0;
      v226 = 0;
      v229 = 0;
      v230 = 0;
      v109 = v244;
      goto LABEL_216;
    }
  }

  v270 = 0;
  v117 = copyRootCertificate(3, 0, &v270);
  v118 = v270;
  v119 = v118;
  if (!v117)
  {
    v29 = createMobileActivationError("perform_sydro_data_migration_tasks", 1315, @"com.apple.MobileActivation.ErrorDomain", -1, v118, @"Failed to load BAA root CA certificate.");

    v221 = 0;
    v14 = v245;
    v42 = cf;
    v43 = v262;
    v12 = v213;
    v8 = v214;
    v11 = v211;
    v5 = v212;
    goto LABEL_31;
  }

  v269 = v118;
  v221 = v117;
  v120 = lockcrypto_cert_from_pem_data(v117, &v269);
  v60 = v269;

  v11 = v211;
  if (!v120)
  {
    v173 = createMobileActivationError("perform_sydro_data_migration_tasks", 1321, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to create certificate from pem data.");

    goto LABEL_166;
  }

  v226 = v120;
  v121 = [v15[326] defaultManager];
  v122 = [v121 fileExistsAtPath:@"/private/var/hardware/factory/mfi"];

  if (!v122)
  {
    v227 = 0;
    v228 = 0;
    v240 = 0;
    v241 = 0;
    v246 = 0;
    v247 = 0;
    v249 = 0;
    v253 = 0;
    v234 = 0;
    v235 = 0;
    v239 = 0;
    v220 = 0;
    v231 = 0;
    v232 = 0;
    v229 = 0;
    v230 = 0;
    v109 = v244;
    goto LABEL_215;
  }

  v256 = v45;
  objb = v60;
  v237 = v44;
  v123 = 0;
  v124 = 0;
  v220 = 0;
  v209 = 0;
  v210 = 0;
  v216 = 0;
  v247 = 0;
  v253 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 1;
  protection = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  v207 = kSecAttrTokenIDAppleKeyStore;
  v206 = kSecAttrTokenOID;
  while (1)
  {
    v129 = v124;
    v241 = @"com.apple.mfiaccessory";

    v130 = [NSString stringWithFormat:@"%@%u", @"mfi-baa", v128];
    v246 = [NSString stringWithFormat:@"%@-rk-scrt", v130];

    v228 = v130;
    v131 = [NSString stringWithFormat:@"%@-combined-scrt", v130];

    v132 = [NSString stringWithFormat:@"/private/var/hardware/factory/mfi/mfi%u-cert.der", v128];
    v133 = [NSString stringWithFormat:@"/private/var/hardware/factory/mfi/mfi%u-key.der", v128];

    v234 = v132;
    v134 = [[NSData alloc] initWithContentsOfFile:v132];

    v227 = v133;
    v247 = v134;
    v253 = v131;
    if (!v134)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1338, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load %@.", v132);
      v249 = 0;
      v231 = 0;
      v232 = 0;
      v229 = 0;
      v230 = 0;
LABEL_191:
      v44 = v237;
      v146 = v213;
      goto LABEL_197;
    }

    v268 = objb;
    v135 = parseDERCertificatesFromChain(v134, &v268);
    v136 = v268;

    v125 = v246;
    if (!v135)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1344, @"com.apple.MobileActivation.ErrorDomain", -1, v136, @"Failed to parse certificate chain from data.");
      v220 = 0;
      v249 = 0;
      v231 = 0;
      v232 = 0;
      v229 = 0;
      v230 = 0;
      objb = v136;
      goto LABEL_191;
    }

    v137 = [(NSError *)v135 objectAtIndexedSubscript:0];
    v138 = SecCertificateCreateWithData(0, v137);

    v249 = v138;
    if (!v138)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1350, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create leaf certificate from data.");
      v249 = 0;
      v231 = 0;
      v232 = 0;
      v229 = 0;
      v230 = 0;
      objb = v136;
      v220 = v135;
      goto LABEL_191;
    }

    v139 = [(NSError *)v135 objectAtIndexedSubscript:1];
    v140 = SecCertificateCreateWithData(0, v139);

    v141 = v140;
    v142 = v135;
    if (!v141)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1356, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create intermediate certificate from data.");
      v231 = 0;
      v232 = 0;
      v229 = 0;
      v230 = 0;
      objb = v136;
LABEL_190:
      v220 = v142;
      goto LABEL_191;
    }

    v267 = v136;
    v231 = v141;
    v143 = evaluateAccessoryTrustWithCerts(v249, v141, v226, 0, 0, 0, &v267);
    v144 = v267;

    if ((v143 & 1) == 0)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1361, @"com.apple.MobileActivation.ErrorDomain", -1, v144, @"Failed to verify BAA certificate chain.");
LABEL_189:
      v232 = 0;
      v229 = 0;
      v230 = 0;
      goto LABEL_190;
    }

    v145 = [[NSData alloc] initWithContentsOfFile:v133];

    v126 = v241;
    if (!v145)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1369, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load %@.", v133);
      v216 = 0;
      goto LABEL_189;
    }

    v146 = v213;
    if (cf)
    {
      CFRelease(cf);
    }

    v147 = SecAccessControlCreateWithFlags(0, protection, 0x40000000uLL, &v300);
    if (!v147)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1376, @"com.apple.MobileActivation.ErrorDomain", -1, v300, @"Failed to create access control.");
      v232 = 0;
      v229 = 0;
      v230 = 0;
      cf = 0;
      goto LABEL_196;
    }

    v309[0] = kSecAttrIsPermanent;
    v309[1] = kSecAttrTokenID;
    v310[0] = &__kCFBooleanFalse;
    v310[1] = v207;
    v309[2] = v206;
    v309[3] = kSecAttrAccessControl;
    v310[2] = v145;
    cf = v147;
    v310[3] = v147;
    v148 = [NSDictionary dictionaryWithObjects:v310 forKeys:v309 count:4];

    v149 = SecKeyCreateWithData(+[NSData data], v148, &v300);
    if (!v149)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1388, @"com.apple.MobileActivation.ErrorDomain", -2, v300, @"Failed to convert RK data blob.");
      v232 = 0;
LABEL_195:
      v229 = 0;
      v230 = 0;
      v146 = v148;
LABEL_196:
      v216 = v145;
      v220 = v142;
      v44 = v237;
LABEL_197:
      v180 = v209;
      v179 = v210;
      goto LABEL_208;
    }

    v232 = v149;
    v150 = SecKeyCopyPublicKey(v149);
    if (!v150)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
      goto LABEL_195;
    }

    v230 = v150;
    v151 = SecKeyCopyExternalRepresentation(v150, &v300);

    if (!v151)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1400, @"com.apple.MobileActivation.ErrorDomain", -1, v300, @"Failed to copy RK public key buffer.");
      v229 = 0;
      v146 = v148;
      v180 = 0;
      v216 = v145;
      goto LABEL_200;
    }

    v152 = SecCertificateCopyKey(v249);
    if (!v152)
    {
      break;
    }

    v229 = v152;
    v153 = SecKeyCopyExternalRepresentation(v152, &v300);

    if (!v153)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1412, @"com.apple.MobileActivation.ErrorDomain", -1, v300, @"Failed to encode certificate public key as data.");
      v179 = 0;
      v182 = v151;
      v146 = v148;
      v216 = v145;
      v180 = v182;
LABEL_207:
      v220 = v142;
      v44 = v237;
      goto LABEL_208;
    }

    v239 = v153;
    v240 = v151;
    if (([(__CFData *)v151 isEqualToData:v153]& 1) == 0)
    {
      objb = v144;
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1419, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate public key does not match RK public key.");
      v146 = v148;
      v216 = v145;
LABEL_206:
      v179 = v239;
      v180 = v240;
      goto LABEL_207;
    }

    v235 = v145;
    v266 = v144;
    v154 = store_keychain_data(v247, v241, v253, &v266);
    v155 = v266;

    if ((v154 & 1) == 0)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1426, @"com.apple.MobileActivation.ErrorDomain", -1, v155, @"Failed to store leaf/intermediate certificates.");
      objb = v155;
LABEL_205:
      v146 = v148;
      v216 = v145;
      goto LABEL_206;
    }

    v265 = v155;
    v156 = store_keychain_item(v232, v241, v246, 0, &v265);
    objb = v265;

    v124 = v234;
    if ((v156 & 1) == 0)
    {
      v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1431, @"com.apple.MobileActivation.ErrorDomain", -1, objb, @"Failed to store reference key.");
      goto LABEL_205;
    }

    v157 = +[NSFileManager defaultManager];
    [(NSFileManager *)v157 removeItemAtPath:v234 error:0];

    v158 = +[NSFileManager defaultManager];
    v123 = v227;
    [(NSFileManager *)v158 removeItemAtPath:v227 error:0];

    CFRelease(v249);
    CFRelease(v231);
    CFRelease(v232);
    CFRelease(v230);
    CFRelease(v229);
    v128 = (v128 + 1);
    v220 = v142;
    v209 = v240;
    v210 = v239;
    v216 = v145;
    v213 = v148;
    v127 = v228;
    if (v128 == 5)
    {
      v220 = v142;
      v249 = 0;
      v231 = 0;
      v232 = 0;
      v229 = 0;
      v230 = 0;
      v146 = v148;
      v44 = v237;
      v45 = v256;
      v160 = objb;
      goto LABEL_209;
    }
  }

  objb = v144;
  v160 = createMobileActivationError("perform_sydro_data_migration_tasks", 1406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.");
  v229 = 0;
  v181 = v151;
  v146 = v148;
  v216 = v145;
  v180 = v181;
LABEL_200:
  v220 = v142;
  v44 = v237;
  v179 = v210;
LABEL_208:

  v235 = v216;
  v239 = v179;
  v240 = v180;
  v45 = v256;
LABEL_209:
  v213 = v146;
  if (v160)
  {
    v183 = copyLoggingHandle(v159);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
    {
      perform_sydro_data_migration_tasks_cold_1();
    }
  }

  else
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory MFi certs/key.");
  }

  v60 = 0;
  v109 = v244;
LABEL_215:
  data_ark_set(v109, 0, @"MFIFactoryCertificatesMigrationCompleted", &__kCFBooleanTrue, 1);
  v108 = v253;
LABEL_216:
  v184 = data_ark_copy(v109, 0, @"FactoryDCRTMigrationCompleted");
  v185 = isNSNumber(v184);
  v236 = v44;
  v251 = v108;
  v219 = v184;
  if (!v185 || (v186 = v185, v187 = [v184 BOOLValue], v186, (v187 & 1) == 0))
  {
    v8 = [[NSData alloc] initWithContentsOfFile:@"/private/var/hardware/dcrt/dcrt.der"];

    v12 = v213;
    if (v8)
    {
      v307 = @"UseCommittedDAK";
      v308 = &__kCFBooleanTrue;
      v189 = v60;
      v190 = [NSDictionary dictionaryWithObjects:&v308 forKeys:&v307 count:1];

      v264 = v189;
      v191 = storeDCRT(v244, v8, v190, &v264);
      v192 = v264;

      if ((v191 & 1) == 0)
      {
        v194 = copyLoggingHandle(v193);
        v11 = v211;
        if (os_log_type_enabled(v194, OS_LOG_TYPE_FAULT))
        {
          perform_sydro_data_migration_tasks_cold_2();
        }

        v192 = 0;
        goto LABEL_227;
      }

      maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory DCRT certs/key.");
    }

    else
    {
      v192 = v60;
      v190 = v243;
    }

    v11 = v211;
LABEL_227:
    v195 = +[NSFileManager defaultManager];
    [(NSFileManager *)v195 removeItemAtPath:@"/private/var/hardware/dcrt/dcrt.der" error:0];

    v188 = v244;
    data_ark_set(v244, 0, @"FactoryDCRTMigrationCompleted", &__kCFBooleanTrue, 1);
    obj = v192;
    v243 = v190;
    goto LABEL_228;
  }

  obj = v60;
  v12 = v213;
  v8 = v214;
  v188 = v244;
  v11 = v211;
LABEL_228:
  v254 = v45;
  v6 = data_ark_copy(v188, 0, @"FactorySDCRTMigrationCompleted");
  v196 = isNSNumber(v6);
  if (v196 && (v197 = v196, v198 = [v6 BOOLValue], v197, (v198 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSData alloc] initWithContentsOfFile:@"/private/var/hardware/sdcrt/sdcrt.der"];
    if (v7)
    {
      v305[0] = @"UseCommittedDAK";
      v305[1] = @"sdcrtAttestation";
      v306[0] = &__kCFBooleanTrue;
      v306[1] = &__kCFBooleanTrue;
      v199 = [NSDictionary dictionaryWithObjects:v306 forKeys:v305 count:2];

      v263 = obj;
      v200 = storeDCRT(v244, v7, v199, &v263);
      v201 = v263;

      if (v200)
      {
        maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory SDCRT certs/key.");
      }

      else
      {
        v203 = copyLoggingHandle(v202);
        if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
        {
          perform_sydro_data_migration_tasks_cold_3();
        }

        v201 = 0;
      }
    }

    else
    {
      v201 = obj;
      v199 = v243;
    }

    v204 = +[NSFileManager defaultManager];
    [(NSFileManager *)v204 removeItemAtPath:@"/private/var/hardware/sdcrt/sdcrt.der" error:0];

    data_ark_set(v244, 0, @"FactorySDCRTMigrationCompleted", &__kCFBooleanTrue, 1);
    obj = v201;
    v243 = v199;
  }

  v205 = certificate;
  v4 = v217;
  v9 = v218;
  if (certificate || (v205 = copyUCRT(v244, 0), (certificate = v205) != 0))
  {
    v10 = lockcrypto_query_certificate_properties(v205, @"1.2.840.113635.100.8.7", 0);
    if (!v10)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Existing UCRT does not contain the OID %@.", @"1.2.840.113635.100.8.7");
      v13 = 1;
      data_ark_set(v244, 0, @"UCRTUpgradeRequired", &__kCFBooleanTrue, 1);
      goto LABEL_245;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = 1;
LABEL_245:
  v5 = v212;
LABEL_35:
  if (certificate)
  {
    v50 = v6;
    v51 = v8;
    v52 = v11;
    v53 = v12;
    v54 = v5;
    CFRelease(certificate);
    v5 = v54;
    v12 = v53;
    v11 = v52;
    v8 = v51;
    v6 = v50;
  }

  certificate = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v300)
  {
    CFRelease(v300);
  }

  v300 = 0;
  if (v249)
  {
    CFRelease(v249);
  }

  if (v231)
  {
    CFRelease(v231);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (v232)
  {
    CFRelease(v232);
  }

  if (v230)
  {
    CFRelease(v230);
  }

  if (v229)
  {
    CFRelease(v229);
  }

  return v13;
}

void __register_xpc_activities_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    factory_activation_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __register_xpc_activities_block_invoke_771(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_11;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_771_cold_1();
    }
  }

  v6 = xpc_activity_copy_criteria(v3);
  if (!v6 || xpc_activity_get_state(v3) == 2)
  {
    collection_activity_handler(*(a1 + 32), v6 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_772(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_11;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_772_cold_1();
    }
  }

  v6 = xpc_activity_copy_criteria(v3);
  if (!v6 || xpc_activity_get_state(v3) == 2)
  {
    ucrt_oob_activity_handler(*(a1 + 32), v6 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_773(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_13;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_773_cold_1();
    }
  }

  if (device_supports_dcrt_oob())
  {
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || xpc_dictionary_get_BOOL(v6, XPC_ACTIVITY_REPEATING) || xpc_activity_get_state(v3) == 2)
    {
      dcrt_oob_activity_handler(*(a1 + 32), 0, v7 == 0);
    }
  }

LABEL_13:
}

void __register_xpc_activities_block_invoke_774(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_13;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_774_cold_1();
    }
  }

  if (device_supports_dcrt_oob())
  {
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || xpc_dictionary_get_BOOL(v6, XPC_ACTIVITY_REPEATING) || xpc_activity_get_state(v3) == 2)
    {
      dcrt_oob_activity_handler(*(a1 + 32), 1, v7 == 0);
    }
  }

LABEL_13:
}

void __register_xpc_activities_block_invoke_775(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_775_cold_1();
    }
  }

  if (device_supports_dcrt_oob() && xpc_activity_get_state(v3) == 2)
  {
    dcrt_oob_load_spreading_activity_handler(*(a1 + 32), 0);
  }

LABEL_10:
}

void __register_xpc_activities_block_invoke_776(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_776_cold_1();
    }
  }

  if (device_supports_dcrt_oob() && xpc_activity_get_state(v3) == 2)
  {
    dcrt_oob_load_spreading_activity_handler(*(a1 + 32), 1);
  }

LABEL_10:
}

void __register_xpc_activities_block_invoke_777(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_11;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_777_cold_1();
    }
  }

  v6 = xpc_activity_copy_criteria(v3);
  if (!v6 || xpc_activity_get_state(v3) == 2)
  {
    splunk_activity_handler(*(a1 + 32), v6 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_778(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_778_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    splunk_daily_stats_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __register_xpc_activities_block_invoke_779(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_779_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    splunk_roll_uuid_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __performInFieldCollection_block_invoke(uint64_t a1)
{
  v69 = -1;
  if (!*(a1 + 56))
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 872, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v60 = 0;
    v61 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v59 = 0;
LABEL_22:
    v58 = 0;
    v22 = 0;
    goto LABEL_23;
  }

  v2 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v3 = isNSNumber(v2);

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v4 doubleValue];
    if (v5 <= 0.0)
    {
      v59 = v4;
      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 879, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v4);
      v60 = 0;
LABEL_20:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
  }

  v59 = v4;
  if (is_product_cellular())
  {
    v15 = *(a1 + 40);
    v68 = 0;
    v14 = copy_baseband_request_info(v15, 0, &v68);
    v16 = v68;

    if (!v14)
    {
      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 889, @"com.apple.MobileActivation.ErrorDomain", -22, v16, @"Failed to copy baseband info.");

      v60 = 0;
      v61 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [[MACollectionInterface alloc] initWithContext:*(a1 + 40)];
  v9 = v17;
  if (!v17)
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 897, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");

    v60 = 0;
    v7 = 0;
    v8 = 0;
LABEL_21:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v61 = 0;
    v14 = 0;
    goto LABEL_22;
  }

  v60 = v17;
  if (![(MACollectionInterface *)v17 collectionLibraryLoaded])
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 902, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection library not loaded.");

    goto LABEL_20;
  }

  v18 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v19 = isNSNumber(v18);

  if (!v19)
  {
    v61 = 0;
    v57 = 0;
LABEL_28:
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"];
    v26 = isNSNumber(v25);

    if (v26)
    {
      v27 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"];
      v58 = v27;
      if (is_product_cellular() && [v27 BOOLValue])
      {
        v66 = v16;
        v10 = copyCellularProxyDictionary(0, &v66);
        v28 = v66;

        if (!v10)
        {
          v6 = createMobileActivationError("performInFieldCollection_block_invoke", 924, @"com.apple.MobileActivation.ErrorDomain", -2, v28, @"Failed to query cellular network proxy info.");

          v7 = 0;
          v8 = 0;
          v9 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v61 = 0;
LABEL_64:
          v14 = 0;
          goto LABEL_65;
        }

        v55 = 1;
        v16 = v28;
        v61 = v10;
LABEL_35:
        v29 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyHost"];
        v30 = isNSString(v29);
        if (v30)
        {
          v31 = v30;
          v32 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];
          v33 = isNSNumber(v32);

          if (!v33)
          {
            v9 = v60;
LABEL_40:
            if (is_internal_build())
            {
              v36 = [NSUserDefaults alloc];
              v13 = [v36 persistentDomainForName:@"com.apple.mobileactivationd"];

              v37 = [v13 objectForKeyedSubscript:@"UseReverseProxy"];
              v38 = isNSNumber(v37);
              if (v38)
              {
                v39 = v38;
                v40 = [v13 objectForKeyedSubscript:@"UseReverseProxy"];
                v41 = [v40 BOOLValue];

                if (v41)
                {
                  if (v61)
                  {
                    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 940, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Cannot set both '%@' override and '%@'/'%@' option.", @"UseReverseProxy", @"UseCellularBootstrapProxy", @"UseCellularOTAProxy");

                    v7 = 0;
                    goto LABEL_60;
                  }

                  v61 = copyReverseProxyDictionary(0, 0, 0);
                }

                v9 = v60;
              }

              else
              {
              }
            }

            else
            {
              v13 = 0;
            }

            v65 = v16;
            v7 = [(MACollectionInterface *)v9 copyIngestData:&v65];
            v42 = v65;

            if (v7)
            {
              v64 = v42;
              v8 = [(MACollectionInterface *)v9 copyIngestHeaders:v7 withError:&v64];
              v43 = v64;

              if (v8)
              {
                v44 = [NSMutableURLRequest alloc];
                v45 = +[MACollectionInterface copyIngestURL];
                LODWORD(v46) = NETWORK_TIMEOUT_SECONDS;
                v9 = [v44 initWithURL:v45 cachePolicy:0 timeoutInterval:v46];

                if (v9)
                {
                  v47 = +[GestaltHlpr getSharedInstance];
                  v14 = [v47 copyAnswer:@"UniqueDeviceID"];

                  v48 = isNSString(v14);
                  if (v48)
                  {
                    v12 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 48)];
                    if (v12)
                    {
                      v53 = v43;
                      [(MACollectionInterface *)v9 setAllHTTPHeaderFields:v8];
                      [(MACollectionInterface *)v9 setValue:v12 forHTTPHeaderField:@"User-Agent"];
                      [(MACollectionInterface *)v9 setValue:v14 forHTTPHeaderField:@"x-jmet-deviceid"];
                      [(MACollectionInterface *)v9 setHTTPMethod:@"POST"];
                      [(MACollectionInterface *)v9 setHTTPBody:v7];
                      if (v59)
                      {
                        [v59 doubleValue];
                        [(MACollectionInterface *)v9 setTimeoutInterval:?];
                      }

                      v49 = formatURLRequest(v9);
                      v50 = copy_log_directory_path(v49);
                      v51 = [v50 stringByAppendingPathComponent:@"collection_oob_request.txt"];
                      [(NSMutableString *)v49 writeToFile:v51 atomically:0 encoding:4 error:0];

                      v62 = v53;
                      v63 = 0;
                      v11 = talkToServerWithError(v9, 0, v55, v61, &v63, &v69, &v62);
                      v10 = v63;
                      v6 = v62;

                      v56 = formatURLResponse(v11, v69, v10);
                      v54 = copy_log_directory_path(v56);
                      v52 = [v54 stringByAppendingPathComponent:@"collection_oob_response.txt"];
                      [(NSMutableString *)v56 writeToFile:v52 atomically:0 encoding:4 error:0];
                    }

                    else
                    {
                      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 981, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");

                      v10 = 0;
                      v11 = 0;
                    }
                  }

                  else
                  {
                    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");

                    v10 = 0;
                    v11 = 0;
                    v12 = 0;
                  }

                  goto LABEL_65;
                }

                v6 = createMobileActivationError("performInFieldCollection_block_invoke", 968, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");

                goto LABEL_63;
              }

              v6 = createMobileActivationError("performInFieldCollection_block_invoke", 958, @"com.apple.MobileActivation.ErrorDomain", -1, v43, @"Failed to copy ingest headers.");

LABEL_62:
              v9 = 0;
LABEL_63:
              v10 = 0;
              v11 = 0;
              v12 = 0;
              goto LABEL_64;
            }

            v6 = createMobileActivationError("performInFieldCollection_block_invoke", 952, @"com.apple.MobileActivation.ErrorDomain", -1, v42, @"Failed to copy ingest data.");

LABEL_60:
            v8 = 0;
            goto LABEL_62;
          }

          v70[0] = @"SOCKSProxyHost";
          v29 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyHost"];
          v71[0] = v29;
          v70[1] = @"SOCKSProxyPort";
          v34 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];
          v71[1] = v34;
          v35 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];

          v61 = v35;
          v9 = v60;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v58 = 0;
    }

    v55 = 0;
    goto LABEL_35;
  }

  v20 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v57 = v20;
  if (!is_product_cellular() || ![v20 BOOLValue])
  {
    v61 = 0;
    goto LABEL_28;
  }

  v67 = v16;
  v11 = copyCellularProxyDictionary(1, &v67);
  v21 = v67;

  v61 = v11;
  if (v11)
  {
    v16 = v21;
    goto LABEL_28;
  }

  v6 = createMobileActivationError("performInFieldCollection_block_invoke", 911, @"com.apple.MobileActivation.ErrorDomain", -2, v21, @"Failed to query cellular network proxy info.");

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v13 = 0;
  v61 = 0;
  v14 = 0;
  v58 = 0;
LABEL_65:
  v22 = v57;
LABEL_23:
  v23 = *(a1 + 56);
  if (v23)
  {
    v24 = v22;
    (*(v23 + 16))(v23, v11, v10, v69, v6);
    v22 = v24;
  }
}

void ___performUCRTHealingOOB_block_invoke(uint64_t a1)
{
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__5;
  v111 = __Block_byref_object_dispose__5;
  v112 = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__5;
  v105[4] = __Block_byref_object_dispose__5;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__5;
  v103 = __Block_byref_object_dispose__5;
  v104 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__5;
  v97 = __Block_byref_object_dispose__5;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = -1;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 56))
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 507, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v9 = 0;
    v13 = 0;
    v23 = 0;
    v5 = 0;
    v3 = 0;
LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v2 = [NSUserDefaults alloc];
  v3 = [v2 persistentDomainForName:@"com.apple.mobileactivationd"];

  v4 = [*(a1 + 48) objectForKeyedSubscript:@"PromptForCredentials"];
  v5 = v4;
  if (v4)
  {
    v6 = isNSNumber(v4);
    v7 = v6 == 0;

    if (v7)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 515, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"PromptForCredentials");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      v9 = 0;
LABEL_23:
      v13 = 0;
      goto LABEL_39;
    }
  }

  v8 = [*(a1 + 48) objectForKeyedSubscript:@"ActivationLockUsername"];
  v9 = v8;
  if (v8)
  {
    v10 = isNSString(v8);
    v11 = v10 == 0;

    if (v11)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 521, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"ActivationLockUsername");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      goto LABEL_23;
    }
  }

  v12 = [*(a1 + 48) objectForKeyedSubscript:@"ActivationLockPET"];
  v13 = v12;
  if (v12)
  {
    v14 = isNSString(v12);
    v15 = v14 == 0;

    if (v15)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 527, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"ActivationLockPET");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      goto LABEL_39;
    }
  }

  v16 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v17 = isNSNumber(v16);

  if (v17)
  {
    v18 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v18 doubleValue];
    if (v19 <= 0.0)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 534, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v18);
      v21 = 0;
      v22 = 0;
LABEL_39:
      v23 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
  }

  v29 = [*(a1 + 48) objectForKeyedSubscript:@"UseCommittedUIK"];
  v23 = v29;
  if (v29)
  {
    v30 = isNSNumber(v29);
    v31 = v30 == 0;

    if (v31)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 541, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid option (%@).", @"UseCommittedUIK");
      goto LABEL_42;
    }
  }

  if (([v23 BOOLValue] & 1) == 0)
  {
    v36 = aks_system_key_operate(2, 1, 0, 0, v32, v33, v34, v35, v50, location, v54, v60, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
    if (v36)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 548, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to bump UIK: 0x%08x", v36);
LABEL_42:
      v21 = 0;
      v22 = 0;
      goto LABEL_14;
    }
  }

  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = v108;
  obj = v108[5];
  v24 = create_ucrt_info(v37, v38, &obj);
  objc_storeStrong(v39 + 5, obj);
  if (!v24)
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 555, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to create UCRT info.");
    goto LABEL_42;
  }

  v40 = v108;
  v83 = v108[5];
  ReferenceKeyBlob = createReferenceKeyBlob(0, 1, 0, &v83);
  objc_storeStrong(v40 + 5, v83);
  v86[3] = ReferenceKeyBlob;
  v42 = v108 + 5;
  if (!ReferenceKeyBlob)
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 561, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to create reference key.");
LABEL_47:
    v20 = MobileActivationError;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v82 = v108[5];
  v21 = security_create_external_representation(ReferenceKeyBlob, 0, &v82);
  objc_storeStrong(v42, v82);
  if (!v21)
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 567, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK as data.");
    goto LABEL_47;
  }

  v114[0] = @"Validity";
  v114[1] = @"scrtAttestation";
  v115[0] = &off_1003FBD68;
  v115[1] = &__kCFBooleanTrue;
  v43 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
  v44 = [NSMutableDictionary dictionaryWithDictionary:v43];
  v45 = v43;
  v22 = v44;

  if (v18)
  {
    [(NSMutableDictionary *)v22 setObject:v18 forKeyedSubscript:@"NetworkTimeoutInterval"];
  }

  v55 = [NSMutableArray alloc];
  v113[0] = @"1.2.840.113635.100.8.3";
  v113[1] = @"1.2.840.113635.100.10.1";
  v113[2] = @"1.2.840.113635.100.8.4";
  v113[3] = @"1.2.840.113635.100.8.5";
  v113[4] = @"1.2.840.113635.100.8.7";
  v61 = [NSArray arrayWithObjects:v113 count:5];
  v56 = [v55 initWithArray:v61];
  [(NSMutableDictionary *)v22 setObject:v56 forKeyedSubscript:@"OIDSToInclude"];

  v57 = v108 + 5;
  v81 = v108[5];
  IsEnabled = FindMyDeviceIsEnabled(&v81);
  objc_storeStrong(v57, v81);
  if (IsEnabled || (v46 = v108[5]) == 0)
  {
    v48 = [v5 BOOLValue];
    locationa = v108 + 5;
    v80 = v108[5];
    v58 = copyTokenForActivationLock(v9, v13, v48, 0, &v80);
    objc_storeStrong(locationa, v80);
    if (v58 != 0 || !IsEnabled)
    {
      v49 = v108[5];
      v108[5] = 0;

      locationb = *(a1 + 40);
      v63 = *(a1 + 32);
      v64 = _NSConcreteStackBlock;
      v65 = 3254779904;
      v66 = ___performUCRTHealingOOB_block_invoke_2;
      v67 = &__block_descriptor_128_e8_32s40s48s56s64s72bs80r88r96r104r112r120r_e34_v24__0__NSDictionary_8__NSError_16l;
      v74 = &v107;
      v59 = v58;
      v68 = v59;
      v24 = v24;
      v69 = v24;
      v75 = &v85;
      v76 = v105;
      v70 = *(a1 + 40);
      v18 = v18;
      v71 = v18;
      v3 = v3;
      v72 = v3;
      v77 = &v93;
      v78 = &v99;
      v79 = &v89;
      v73 = *(a1 + 56);
      issueClientCertificateWithReferenceKey(v63, locationb, v21, 0, v22, &v64);

      goto LABEL_20;
    }

    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 595, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to retrieve auth token.");
  }

  else
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 589, @"com.apple.MobileActivation.ErrorDomain", -1, v46, @"Failed to query FindMy state.");
  }

LABEL_15:
  v25 = v108[5];
  v108[5] = v20;

  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, v94[5], v100[5], v90[3], v108[5]);
  }

  v27 = v86;
  v28 = v86[3];
  if (v28)
  {
    CFRelease(v28);
    v27 = v86;
  }

  v27[3] = 0;
LABEL_20:

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(v105, 8);

  _Block_object_dispose(&v107, 8);
}

void sub_100314C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v53 - 216), 8);
  _Unwind_Resume(a1);
}

void ___performUCRTHealingOOB_block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = ___performUCRTHealingOOB_block_invoke_3;
  v16[3] = &__block_descriptor_144_e8_32s40s48s56s64s72s80s88bs96r104r112r120r128r136r_e5_v8__0l;
  v23 = *(a1 + 80);
  v17 = v6;
  v18 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = *(a1 + 88);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *v19 = v13;
  *v20 = v12;
  v21 = *(a1 + 64);
  v25 = *(a1 + 104);
  v26 = *(a1 + 120);
  v22 = *(a1 + 72);
  v14 = v5;
  v15 = v6;
  dispatch_async(v7, v16);
}

void ___performUCRTHealingOOB_block_invoke_3(uint64_t a1)
{
  error = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v2);
    v3 = 0;
LABEL_27:
    v12 = 0;
LABEL_28:
    v15 = 0;
LABEL_29:
    v22 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
LABEL_30:
    v26 = 0;
    v24 = 0;
    goto LABEL_31;
  }

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"RKCertification"];
  v4 = isNSArray(v3);
  if (!v4 || [v3 count] != 2)
  {
    goto LABEL_25;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = isNSData(v5);
  if (!v6)
  {

LABEL_25:
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v3 objectAtIndexedSubscript:1];
  v9 = isNSData(v8);

  if (!v9)
  {
LABEL_26:
    v31 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 626, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve BAA certificates.");
    v32 = *(*(a1 + 96) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    goto LABEL_27;
  }

  v10 = [v3 objectAtIndexedSubscript:0];
  v11 = *(*(a1 + 96) + 8);
  obj = *(v11 + 40);
  v12 = lockcrypto_create_pem(v10, "CERTIFICATE", &obj);
  objc_storeStrong((v11 + 40), obj);

  if (!v12)
  {
    v37 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 632, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Failed to create PEM.");
    v38 = *(*(a1 + 96) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    goto LABEL_28;
  }

  v13 = [v3 objectAtIndexedSubscript:1];
  v14 = *(*(a1 + 96) + 8);
  v100 = *(v14 + 40);
  v15 = lockcrypto_create_pem(v13, "CERTIFICATE", &v100);
  objc_storeStrong((v14 + 40), v100);

  if (!v15)
  {
    v40 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 638, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Failed to create PEM.");
    v41 = *(*(a1 + 96) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    goto LABEL_29;
  }

  v16 = +[GestaltHlpr getSharedInstance];
  v17 = [v16 copyAnswer:@"UniqueDeviceID"];

  v18 = isNSString(v17);
  if (!v18)
  {
    v43 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 644, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
    v44 = *(*(a1 + 96) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    v22 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (!v19)
  {
    v46 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 650, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v47 = *(*(a1 + 96) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

    v22 = 0;
    v18 = 0;
    goto LABEL_30;
  }

  [v19 setObject:v17 forKeyedSubscript:@"UniqueDeviceID"];
  [v20 setObject:*(a1 + 48) forKeyedSubscript:@"ActivationLockToken"];
  [v20 setObject:*(a1 + 56) forKeyedSubscript:@"UCRTRequestInfo"];
  v21 = *(*(a1 + 96) + 8);
  v99 = 0;
  v18 = [NSPropertyListSerialization dataWithPropertyList:v20 format:100 options:0 error:&v99];
  objc_storeStrong((v21 + 40), v99);
  if (!v18)
  {
    v49 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 660, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Could not convert dictionary to xml data.");
    v50 = *(*(a1 + 96) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

    v22 = 0;
    goto LABEL_30;
  }

  v22 = SecKeyCreateSignature(*(*(*(a1 + 104) + 8) + 24), kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v18, &error);
  if (!v22)
  {
    v52 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 666, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.");
    v53 = *(*(a1 + 96) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;

    goto LABEL_30;
  }

  v23 = objc_alloc_init(NSMutableData);
  v24 = v23;
  if (!v23)
  {
    v55 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 672, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
    v56 = *(*(a1 + 96) + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;

    v26 = 0;
    goto LABEL_31;
  }

  [v23 appendData:v12];
  v25 = [@"\n" dataUsingEncoding:4];
  [v24 appendData:v25];

  [v24 appendData:v15];
  v103[0] = @"UCRTRequestInfoXML";
  v103[1] = @"BAACertification";
  v104[0] = v18;
  v104[1] = v24;
  v103[2] = @"BAASignature";
  v104[2] = v22;
  v26 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
  v27 = *(*(a1 + 112) + 8);
  v28 = *(v27 + 40);
  locationb = (v27 + 40);
  v93 = (*(*(a1 + 96) + 8) + 40);
  v97 = *v93;
  v98 = v28;
  v78 = createXMLRequest(v26, &v98, &v97);
  objc_storeStrong(locationb, v98);
  objc_storeStrong(v93, v97);
  if (v78)
  {
    v29 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 64)];
    if (v29)
    {
      locationc = *(*(*(a1 + 112) + 8) + 40);
      v94 = v29;
      v79 = [NSURL URLWithString:@"https://albert.apple.com/deviceservices/ucertVend"];
      [locationc setURL:v79];

      [*(*(*(a1 + 112) + 8) + 40) setValue:v94 forHTTPHeaderField:@"User-Agent"];
      [*(*(*(a1 + 112) + 8) + 40) setValue:v17 forHTTPHeaderField:@"x-jmet-deviceid"];
      v30 = *(a1 + 72);
      if (v30)
      {
        locationd = *(*(*(a1 + 112) + 8) + 40);
        [v30 doubleValue];
        [locationd setTimeoutInterval:?];
      }

      if (is_internal_build())
      {
        locatione = [*(a1 + 80) objectForKeyedSubscript:?];
        v80 = isNSString(locatione);

        if (v80)
        {
          locationf = *(*(*(a1 + 112) + 8) + 40);
          v81 = [*(a1 + 80) objectForKeyedSubscript:@"UCRTOOBHealOverrideURL"];
          v73 = [NSURL URLWithString:v81];
          [locationf setURL:v73];
        }

        location = [*(a1 + 80) objectForKeyedSubscript:?];
        v82 = isNSNumber(location);
        if (v82)
        {
          v69 = [*(a1 + 80) objectForKeyedSubscript:@"UseReverseProxy"];
          v74 = [v69 BOOLValue];

          if (v74)
          {
            locationa = copyReverseProxyDictionary(0, 0, 0);
LABEL_50:
            v83 = formatURLRequest(*(*(*(a1 + 112) + 8) + 40));
            v75 = copy_log_directory_path(v83);
            v70 = [v75 stringByAppendingPathComponent:@"ucrt_oob_request.txt"];
            [(NSMutableString *)v83 writeToFile:v70 atomically:0 encoding:4 error:0];

            v63 = *(*(*(a1 + 112) + 8) + 40);
            v64 = *(*(a1 + 128) + 8);
            v65 = *(v64 + 40);
            v76 = (v64 + 40);
            v66 = *(*(a1 + 136) + 8);
            v84 = (*(*(a1 + 96) + 8) + 40);
            v95 = *v84;
            v96 = v65;
            v71 = talkToServerWithError(v63, 0, 0, locationa, &v96, (v66 + 24), &v95);
            objc_storeStrong(v76, v96);
            objc_storeStrong(v84, v95);
            v67 = *(*(a1 + 120) + 8);
            v68 = *(v67 + 40);
            *(v67 + 40) = v71;

            v85 = formatURLResponse(*(*(*(a1 + 120) + 8) + 40), *(*(*(a1 + 136) + 8) + 24), *(*(*(a1 + 128) + 8) + 40));
            v77 = copy_log_directory_path(v85);
            v72 = [v77 stringByAppendingPathComponent:@"ucrt_oob_response.txt"];
            [(NSMutableString *)v85 writeToFile:v72 atomically:0 encoding:4 error:0];

            v62 = locationa;
            goto LABEL_51;
          }
        }

        else
        {
        }
      }

      locationa = 0;
      goto LABEL_50;
    }

    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 691, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 685, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create request.");
  }

  v59 = MobileActivationError;
  v60 = *(*(a1 + 96) + 8);
  v61 = *(v60 + 40);
  *(v60 + 40) = v59;
  v62 = v61;
LABEL_51:

LABEL_31:
  v34 = *(a1 + 88);
  if (v34)
  {
    (*(v34 + 16))(v34, *(*(*(a1 + 120) + 8) + 40), *(*(*(a1 + 128) + 8) + 40), *(*(*(a1 + 136) + 8) + 24), *(*(*(a1 + 96) + 8) + 40));
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v35 = *(*(a1 + 104) + 8);
  v36 = *(v35 + 24);
  if (v36)
  {
    CFRelease(v36);
    v35 = *(*(a1 + 104) + 8);
  }

  *(v35 + 24) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88b96r104r112r120r128r136r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  _Block_object_assign((a1 + 88), *(a2 + 88), 7);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  v11 = *(a2 + 136);

  _Block_object_assign((a1 + 136), v11, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96r104r112r120r128r136r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64s72b80r88r96r104r112r120r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  _Block_object_assign((a1 + 72), *(a2 + 72), 7);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  v9 = *(a2 + 120);

  _Block_object_assign((a1 + 120), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80r88r96r104r112r120r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);

  v2 = *(a1 + 32);
}

void ___performUCRTOOB_block_invoke(uint64_t a1)
{
  v52 = -1;
  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 56))
  {
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 760, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v6 = 0;
    v45 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  if (is_product_cellular())
  {
    v2 = *(a1 + 32);
    v51 = 0;
    v3 = copy_baseband_request_info(v2, 0, &v51);
    v4 = v51;

    if (!v3)
    {
      v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 769, @"com.apple.MobileActivation.ErrorDomain", -22, v4, @"Failed to copy baseband info.");

      v6 = 0;
      v45 = 0;
LABEL_8:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = [NSUserDefaults alloc];
  v15 = [v14 persistentDomainForName:@"com.apple.mobileactivationd"];

  v16 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v17 = isNSNumber(v16);

  if (v17)
  {
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v12 doubleValue];
    if (v18 <= 0.0)
    {
      v3 = v15;
      v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 780, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v12);

      v6 = 0;
      v45 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v44 = v12;
  }

  else
  {
    v44 = 0;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v50 = v4;
  v21 = create_ucrt_info(v19, v20, &v50);
  v22 = v50;

  if (!v21)
  {
    v3 = v15;
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 787, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to create UCRT info.");

    v6 = 0;
    v45 = 0;
LABEL_32:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_40;
  }

  v48 = v22;
  v49 = 0;
  v23 = createXMLRequest(v21, &v49, &v48);
  v6 = v49;
  v24 = v48;

  v45 = v21;
  if ((v23 & 1) == 0)
  {
    v3 = v15;
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 792, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create request.");

    goto LABEL_32;
  }

  v25 = +[GestaltHlpr getSharedInstance];
  v11 = [v25 copyAnswer:@"UniqueDeviceID"];

  v9 = isNSString(v11);
  if (v9)
  {
    v9 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 40)];
    if (v9)
    {
      v26 = [NSURL URLWithString:@"https://tbsc.apple.com/oob/vend"];
      [v6 setURL:v26];

      [v6 setValue:v9 forHTTPHeaderField:@"User-Agent"];
      [v6 setValue:v11 forHTTPHeaderField:@"x-jmet-deviceid"];
      if (v44)
      {
        [v44 doubleValue];
        [v6 setTimeoutInterval:?];
      }

      if (is_internal_build())
      {
        v27 = [v15 objectForKeyedSubscript:@"UCRTOOBOverrideURL"];
        v28 = isNSString(v27);

        if (v28)
        {
          v29 = [v15 objectForKeyedSubscript:@"UCRTOOBOverrideURL"];
          v30 = [NSURL URLWithString:v29];
          [v6 setURL:v30];
        }

        v31 = [v15 objectForKeyedSubscript:@"UseReverseProxy"];
        v32 = isNSNumber(v31);
        if (v32)
        {
          v33 = v32;
          v3 = v15;
          v34 = [v15 objectForKeyedSubscript:@"UseReverseProxy"];
          v35 = [v34 BOOLValue];

          if (v35)
          {
            v10 = copyReverseProxyDictionary(0, 0, 0);
LABEL_39:
            v37 = formatURLRequest(v6);
            v38 = copy_log_directory_path(v37);
            v39 = [v38 stringByAppendingPathComponent:@"ucrt_oob_request.txt"];
            [(NSMutableString *)v37 writeToFile:v39 atomically:0 encoding:4 error:0];

            v46 = v24;
            v47 = 0;
            v8 = talkToServerWithError(v6, 0, 0, v10, &v47, &v52, &v46);
            v7 = v47;
            v5 = v46;

            v42 = formatURLResponse(v8, v52, v7);
            v43 = copy_log_directory_path(v42);
            v40 = [v43 stringByAppendingPathComponent:@"ucrt_oob_response.txt"];
            [NSMutableString writeToFile:v42 atomically:"writeToFile:atomically:encoding:error:" encoding:? error:?];

            goto LABEL_40;
          }
        }

        else
        {
          v3 = v15;
        }
      }

      else
      {
        v3 = v15;
      }

      v10 = 0;
      goto LABEL_39;
    }

    v3 = v15;
    MobileActivationError = createMobileActivationError("_performUCRTOOB_block_invoke", 804, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.", v41);
  }

  else
  {
    v3 = v15;
    MobileActivationError = createMobileActivationError("_performUCRTOOB_block_invoke", 798, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
  }

  v5 = MobileActivationError;

  v7 = 0;
  v8 = 0;
  v10 = 0;
LABEL_40:
  v12 = v44;
LABEL_9:
  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v8, v7, v52, v5);
  }
}

Class __getMSDKManagedDeviceClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!MobileStoreDemoKitLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __MobileStoreDemoKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_1003D18D0;
    v5 = 0;
    MobileStoreDemoKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileStoreDemoKitLibraryCore_frameworkLibrary)
  {
    __getMSDKManagedDeviceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MSDKManagedDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSDKManagedDeviceClass_block_invoke_cold_1();
  }

  getMSDKManagedDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileStoreDemoKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileStoreDemoKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __performDCRTOOB_block_invoke(uint64_t a1)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  cf = 0;
  if (!*(a1 + 32) || !*(a1 + 40))
  {
    v16 = createMobileActivationError("performDCRTOOB_block_invoke", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v10 = 0;
    v15 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 48))
  {
    v2 = @"SDAK";
  }

  else
  {
    v2 = @"DAK";
  }

  if (*(a1 + 48))
  {
    v3 = 10;
  }

  else
  {
    v3 = 9;
  }

  v40 = 0;
  v4 = libaks_system_key_operate(v3, 1, &v40);
  v5 = v40;
  v6 = v5;
  if (v4)
  {
    v39 = v5;
    is_legacy = security_committed_uik_is_legacy(&v39);
    v8 = v39;

    if (v8)
    {
      v9 = is_legacy;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      v16 = createMobileActivationError("performDCRTOOB_block_invoke", 393, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query legacy UIK support.");
      v10 = 0;
      goto LABEL_27;
    }

    v38 = v8;
    v10 = libaks_system_key_collection(v3, 3, is_legacy, 0, &v38);
    v6 = v38;

    if (v10)
    {
      v37 = v6;
      v11 = libaks_system_key_get_public(v3, 3, &v37);
      v8 = v37;

      if (v11)
      {
        v12 = SecAccessControlCreate();
        if (v12)
        {
          v13 = kSecAttrAccessibleUntilReboot;
          if (SecAccessControlSetProtection())
          {
            v36 = v8;
            ReferenceKeyBlob = createReferenceKeyBlob(v12, 0, 0, &v36);
            v6 = v36;

            v43[3] = ReferenceKeyBlob;
            if (ReferenceKeyBlob)
            {
              v35 = v6;
              v15 = security_create_external_representation(ReferenceKeyBlob, 0, &v35);
              v16 = v35;

              if (v15)
              {
                v17 = objc_alloc_init(NSMutableDictionary);
                if (v17)
                {
                  v18 = copy_required_dcrt_oids();
                  [v17 setObject:v18 forKeyedSubscript:@"OIDSToInclude"];

                  [v17 setObject:v10 forKeyedSubscript:@"ClientAttestationData"];
                  [v17 setObject:v11 forKeyedSubscript:@"ClientAttestationPublicKey"];
                  v19 = [NSNumber numberWithBool:is_legacy];
                  [v17 setObject:v19 forKeyedSubscript:@"scrtAttestation"];

                  if (*(a1 + 48) == 1)
                  {
                    v20 = [NSNumber numberWithUnsignedInt:2];
                  }

                  else
                  {
                    v20 = [NSNumber numberWithUnsignedInt:0];
                  }

                  v28 = v20;
                  [v17 setObject:v20 forKeyedSubscript:@"CertType"];

                  v29 = *(a1 + 32);
                  v30 = copy_calling_process_name();
                  if (*(a1 + 48))
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  v32[0] = _NSConcreteStackBlock;
                  v32[1] = 3254779904;
                  v32[2] = __performDCRTOOB_block_invoke_2;
                  v32[3] = &__block_descriptor_48_e8_32bs40r_e34_v24__0__NSDictionary_8__NSError_16l;
                  v33 = *(a1 + 40);
                  v34 = &v42;
                  issueClientCertificateWithReferenceKey(v29, v30, v15, v31, v17, v32);

LABEL_35:
                  CFRelease(v12);
                  v25 = v17;
                  goto LABEL_36;
                }

                v27 = createMobileActivationError("performDCRTOOB_block_invoke", 445, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
              }

              else
              {
                v27 = createMobileActivationError("performDCRTOOB_block_invoke", 437, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to encode RK as data.");
                v15 = 0;
              }

              v6 = v16;
              v16 = v27;
            }

            else
            {
              v16 = createMobileActivationError("performDCRTOOB_block_invoke", 431, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to create reference key.");
              v15 = 0;
            }

            goto LABEL_29;
          }

          v16 = createMobileActivationError("performDCRTOOB_block_invoke", 425, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to set ACL protection to %@.", v13);
          v15 = 0;
        }

        else
        {
          v16 = createMobileActivationError("performDCRTOOB_block_invoke", 420, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to create access control.");
          v15 = 0;
          v12 = 0;
        }

        goto LABEL_28;
      }

      v16 = createMobileActivationError("performDCRTOOB_block_invoke", 411, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query %@ public key.", v2);
LABEL_27:
      v15 = 0;
      v12 = 0;
      v11 = 0;
LABEL_28:
      v6 = v8;
      goto LABEL_29;
    }

    v26 = "UIK";
    if (is_legacy)
    {
      v26 = "SIK";
    }

    v21 = createMobileActivationError("performDCRTOOB_block_invoke", 403, @"com.apple.MobileActivation.ErrorDomain", -11, v6, @"Failed to attest %@ to %s.", v2, v26);
  }

  else
  {
    v21 = createMobileActivationError("performDCRTOOB_block_invoke", 381, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to bump %@.", v2);
  }

  v16 = v21;
  v10 = 0;
  v15 = 0;
  v12 = 0;
  v11 = 0;
LABEL_29:

LABEL_30:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, 0, v16);
  }

  v23 = v43;
  v24 = v43[3];
  if (v24)
  {
    CFRelease(v24);
    v23 = v43;
  }

  v17 = 0;
  v25 = 0;
  v23[3] = 0;
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v42, 8);
}

void sub_100316E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __performDCRTOOB_block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    CFRelease(v9);
    v8 = *(*(a1 + 40) + 8);
  }

  *(v8 + 24) = 0;
}

void __copy_helper_block_e8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

id copySplunkDeviceIdentifiers(void *a1, NSError **a2)
{
  v2 = a1;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__6;
  v76 = __Block_byref_object_dispose__6;
  v77 = 0;
  v3 = copySplunkUUIDQueue(v2);
  if (v3)
  {
    block = _NSConcreteStackBlock;
    v62 = 3254779904;
    v63 = __copySplunkLogUUID_block_invoke;
    v64 = &__block_descriptor_48_e8_32s40r_e5_v8__0l;
    v65 = v2;
    v66 = &v72;
    dispatch_sync(v3, &block);

    v60 = v73[5];
  }

  else
  {
    v4 = copyLoggingHandle(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }

    v60 = 0;
  }

  _Block_object_dispose(&v72, 8);

  if (!v60)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 165, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"uuidString");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v59 = 0;
LABEL_30:
    v35 = 0;
LABEL_31:
    v45 = v44;

    v46 = 0;
    v47 = 1;
    goto LABEL_32;
  }

  v5 = +[GestaltHlpr getSharedInstance];
  v59 = [v5 copyAnswer:@"DeviceClass"];

  v6 = isNSString(v59);
  v7 = v6 == 0;

  if (v7)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 171, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"DeviceClass");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_30;
  }

  v8 = +[GestaltHlpr getSharedInstance];
  v57 = [v8 copyAnswer:@"DeviceVariant"];

  v9 = isNSString(v57);
  v10 = v9 == 0;

  if (v10)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 177, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"DeviceVariant");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_30;
  }

  v11 = +[GestaltHlpr getSharedInstance];
  v56 = [v11 copyAnswer:@"HWModelStr"];

  v12 = isNSString(v56);
  v13 = v12 == 0;

  if (v13)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 183, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"HWModelStr");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_30;
  }

  v14 = +[GestaltHlpr getSharedInstance];
  v55 = [v14 copyAnswer:@"ProductType"];

  v15 = isNSString(v55);
  v16 = v15 == 0;

  if (v16)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 189, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"ProductType");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    goto LABEL_30;
  }

  v17 = +[GestaltHlpr getSharedInstance];
  v54 = [v17 copyAnswer:@"BuildVersion"];

  v18 = isNSString(v54);
  v19 = v18 == 0;

  if (v19)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 195, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"BuildVersion");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    goto LABEL_30;
  }

  v20 = +[GestaltHlpr getSharedInstance];
  v21 = [v20 copyAnswer:@"ProductVersion"];

  v22 = isNSString(v21);
  v23 = v22 == 0;

  if (v23)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 201, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"ProductVersion");
    v25 = 0;
LABEL_29:
    v41 = 0;
    v37 = 0;
    v29 = 0;
    goto LABEL_30;
  }

  v24 = +[GestaltHlpr getSharedInstance];
  v25 = [v24 copyAnswer:@"SigningFuse"];

  v26 = isNSNumber(v25);
  v27 = v26 == 0;

  if (v27)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 207, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"SigningFuse");
    goto LABEL_29;
  }

  v28 = +[GestaltHlpr getSharedInstance];
  v29 = [v28 copyAnswer:@"ReleaseType"];

  v30 = isNSString(v29);
  v31 = v30 == 0;

  if (v31)
  {

    v29 = @"Customer";
  }

  v32 = [NSMutableDictionary alloc];
  block = @"deviceClass";
  v62 = @"deviceVariant";
  v72 = v59;
  v73 = v57;
  v63 = @"hardwareModel";
  v64 = @"productType";
  v74 = v56;
  v75 = v55;
  v65 = @"buildVersion";
  v66 = @"productVersion";
  v76 = v54;
  v77 = v21;
  v67 = @"releaseType";
  v68 = @"productionFused";
  v78 = v29;
  v79 = v25;
  v80 = v60;
  v69 = @"uuidString";
  v70 = @"hactivationEnabled";
  v33 = [NSNumber numberWithBool:use_hactivation()];
  v81 = v33;
  v71 = @"diagnosticsCheckEnabled";
  v82 = &__kCFBooleanTrue;
  v34 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&block count:11];
  v35 = [v32 initWithDictionary:v34];

  if (!has_internal_diagnostics() && !is_internal_build())
  {
    v37 = 0;
    v41 = 0;
    goto LABEL_43;
  }

  v36 = +[GestaltHlpr getSharedInstance];
  v37 = [v36 copyAnswer:@"SerialNumber"];

  v38 = isNSString(v37);
  v39 = v38 == 0;

  if (v39)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 233, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"SerialNumber");
    v41 = 0;
    goto LABEL_31;
  }

  [v35 setObject:v37 forKeyedSubscript:@"serialNumber"];
  v40 = +[GestaltHlpr getSharedInstance];
  v41 = [v40 copyAnswer:@"UniqueDeviceID"];

  v42 = isNSString(v41);
  v43 = v42 == 0;

  if (v43)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 241, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
    goto LABEL_31;
  }

  [v35 setObject:v41 forKeyedSubscript:@"uniqueDeviceID"];
LABEL_43:
  v46 = v35;
  v44 = 0;
  if (!v46)
  {
    v35 = 0;
    goto LABEL_31;
  }

  v35 = v46;
  v47 = 0;
LABEL_32:
  v48 = v46;

  v49 = v44;
  if (v47)
  {
    v50 = createAndLogError("copySplunkDeviceIdentifiers", 925, @"com.apple.MobileActivation.ErrorDomain", -1, v49, @"Failed to query splunk identifier info.");

    v51 = 0;
    v49 = v50;
  }

  else
  {
    v51 = v48;
  }

  if (a2 && !v51)
  {
    v52 = v49;
    *a2 = v49;
  }

  return v51;
}

void sub_100317A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id copySplunkDailyStatistics(void *a1, NSError **a2)
{
  v2 = a1;
  v104 = data_ark_copy(v2, 0, @"ActivationState");
  v3 = copy_ucrt_path(v104);
  v4 = [v3 stringByAppendingPathComponent:@"ucrt.pem"];

  if (!v4)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_daily_statistics_info", 392, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create UCRT file path.");
LABEL_31:
    v27 = MobileActivationError;
    v28 = 0;
    v102 = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v10 = 0;
    goto LABEL_32;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [(NSFileManager *)v5 fileExistsAtPath:v4];

  if (v6)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  v9 = copy_dcrt_path(v7);
  v10 = [v9 stringByAppendingPathComponent:@"dcrt.der"];

  if (!v10)
  {
    v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create DCRT file path.");
    v28 = 0;
    v102 = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
LABEL_32:
    v95 = 0;
LABEL_33:
    v56 = v27;
    v57 = 0;
    v58 = v27;
    goto LABEL_34;
  }

  v11 = +[NSFileManager defaultManager];
  v12 = [(NSFileManager *)v11 fileExistsAtPath:v10];

  if (v12)
  {
    v14 = &__kCFBooleanTrue;
  }

  else
  {
    v14 = &__kCFBooleanFalse;
  }

  v15 = copy_dcrt_path(v13);
  v16 = [v15 stringByAppendingPathComponent:@"sdcrt.der"];

  if (!v16)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_daily_statistics_info", 420, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create SDCRT file path.");
    goto LABEL_31;
  }

  v93 = v8;
  v17 = +[NSFileManager defaultManager];
  v18 = [(NSFileManager *)v17 fileExistsAtPath:v16];

  if (v18)
  {
    v20 = &__kCFBooleanTrue;
  }

  else
  {
    v20 = &__kCFBooleanFalse;
  }

  v91 = v20;
  v21 = copy_suinfo_directory_path(v19);
  v22 = [v21 stringByAppendingPathComponent:@"psc.sui"];

  v95 = v22;
  v96 = v16;
  v92 = v14;
  if (v22 && (v23 = +[NSFileManager defaultManager], v24 = [(NSFileManager *)v23 fileExistsAtPath:v22 isDirectory:0], v23, (v24 & 1) != 0))
  {
    v25 = &__kCFBooleanTrue;
  }

  else
  {
    v25 = &__kCFBooleanFalse;
  }

  v90 = v25;
  v103 = data_ark_copy(v2, 0, @"CollectionLastPerformed");
  v32 = data_ark_copy(v2, 0, @"UCRTOOBLastPerformed");
  v102 = isNSString(v32);

  v33 = data_ark_copy(v2, 0, @"DCRTOOBLastPerformed");
  v101 = isNSString(v33);

  v34 = data_ark_copy(v2, 0, @"SDCRTOOBLastPerformed");
  v100 = isNSString(v34);

  v35 = data_ark_copy(v2, 0, @"LastActivated");
  v99 = isNSString(v35);

  v36 = data_ark_copy(v2, 0, @"UCRTHealingRequired");
  v37 = isNSNumber(v36);

  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = &__kCFBooleanFalse;
  }

  v98 = v38;
  v39 = data_ark_copy(v2, 0, @"UIKUpgradeRequired");
  v40 = isNSNumber(v39);

  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = &__kCFBooleanFalse;
  }

  v97 = v41;
  [@"com.apple.mobileactivationd" UTF8String];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    v107 = 0;
    v67 = hasPrimaryICloudAccount(&v107);
    v68 = v107;
    v69 = [NSNumber numberWithBool:v67];
    v29 = v69;
    if (v68)
    {
      v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 554, @"com.apple.MobileActivation.ErrorDomain", -1, v68, @"Failed to query primary iCloud account state.");

      v28 = 0;
      v30 = 0;
LABEL_48:
      v31 = 0;
LABEL_49:
      v10 = 0;
      goto LABEL_33;
    }

    if ([(NSNumber *)v69 BOOLValue])
    {
      v106 = 0;
      IsHSA2 = primaryICloudAccountIsHSA2(&v106);
      v72 = v106;
      v30 = [NSNumber numberWithBool:IsHSA2];
      if (v72)
      {
        v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 563, @"com.apple.MobileActivation.ErrorDomain", -1, v72, @"Failed to query primary iCloud account security state.");

        v28 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v30 = 0;
    }

    v105 = 0;
    IsEnabled = FindMyDeviceIsEnabled(&v105);
    v77 = v105;
    v31 = [NSNumber numberWithBool:IsEnabled];
    if (!v77)
    {
      goto LABEL_26;
    }

    v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 572, @"com.apple.MobileActivation.ErrorDomain", -1, v77, @"Failed to query FindMy state.");

    v28 = 0;
    goto LABEL_49;
  }

LABEL_26:
  v10 = [NSNumber numberWithBool:is_dsp_device()];
  v42 = v2;
  v43 = copy_activation_record(v42);
  v88 = v43;
  v89 = v42;
  v87 = v29;
  if (!v43)
  {
    v86 = 0;
    v70 = 0;
LABEL_55:
    v53 = 0;
LABEL_56:
    v73 = v70;
    v28 = 0;
    v74 = 1;
    v75 = v70;
    goto LABEL_63;
  }

  v108 = 0;
  v44 = v43;
  v45 = extract_account_token(v43, &v108);
  v46 = v108;
  v47 = v46;
  v85 = v45;
  if (!v45)
  {
    v70 = createMobileActivationError("copy_splunk_activation_validation_info", 301, @"com.apple.MobileActivation.ErrorDomain", -1, v46, @"Failed to extract account token.");

    v86 = 0;
    goto LABEL_55;
  }

  v84 = v46;
  v111[0] = @"UseEnhancedValidation";
  v111[1] = @"SkipUCRTValidation";
  v112[0] = &__kCFBooleanTrue;
  v112[1] = &__kCFBooleanTrue;
  v111[2] = @"SkipActivationRandomnessCheck";
  v112[2] = &__kCFBooleanTrue;
  v48 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:3];
  v109[0] = @"activationRecordValid";
  v86 = v48;
  v83 = [NSNumber numberWithBool:verify_activation_record(v42, v44, v48, 0)];
  v110[0] = v83;
  v109[1] = @"activationRecordContainsUCRT";
  v49 = [v44 objectForKey:@"UniqueDeviceCertificate"];
  v50 = v49 != 0;

  v82 = [NSNumber numberWithBool:v50];
  v110[1] = v82;
  v109[2] = @"activationRecordProductTypeValid";
  v81 = NSNumber;
  v51 = v85;
  v52 = is_product_cellular();
  v53 = v51;
  v54 = [v53 objectForKey:@"ActivationTicket"];
  if (v54)
  {
    v55 = 1;
  }

  else
  {
    v78 = [v53 objectForKey:@"WildcardTicket"];
    v55 = v78 != 0;
  }

  v79 = [NSNumber numberWithBool:v52 ^ v55 ^ 1u];
  v110[2] = v79;
  v28 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];

  if (!v28)
  {
    v70 = v84;
    goto LABEL_56;
  }

  v74 = 0;
  v75 = 0;
  v70 = v84;
LABEL_63:

  v58 = v75;
  if (v74)
  {
    v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 584, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to create activation validation info.");

    v28 = 0;
    v29 = v87;
    goto LABEL_33;
  }

  v80 = objc_alloc_init(NSMutableDictionary);
  v29 = v87;
  if (!v80)
  {
    v27 = createMobileActivationError("copy_splunk_daily_statistics_info", 591, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

    goto LABEL_33;
  }

  v57 = v80;
  if (v104)
  {
    [v80 setObject:v104 forKeyedSubscript:@"activationState"];
  }

  [v57 setObject:v93 forKeyedSubscript:{@"ucrtAvailable", v81}];
  [v57 setObject:v90 forKeyedSubscript:@"pcrtAvailable"];
  [v57 setObject:v92 forKeyedSubscript:@"dcrtAvailable"];
  [v57 setObject:v91 forKeyedSubscript:@"sdcrtAvailable"];
  if (v103)
  {
    [v57 setObject:v103 forKeyedSubscript:@"collectionLastPerformedBuild"];
  }

  if (v102)
  {
    [v57 setObject:v102 forKeyedSubscript:@"ucrtOOBLastPerformedBuild"];
  }

  if (v101)
  {
    [v57 setObject:v101 forKeyedSubscript:@"dcrtOOBLastPerformedBuild"];
  }

  if (v100)
  {
    [v57 setObject:v100 forKeyedSubscript:@"sdcrtOOBLastPerformedBuild"];
  }

  if (v99)
  {
    [v57 setObject:v99 forKeyedSubscript:@"activationLastPerformedBuild"];
  }

  [v57 setObject:v98 forKeyedSubscript:@"ucrtHealingRequired"];
  [v57 setObject:v97 forKeyedSubscript:@"uikUpgradeRequired"];
  if (v87)
  {
    [v57 setObject:v87 forKeyedSubscript:@"iCloudEnabled"];
  }

  if (v30)
  {
    [v57 setObject:v30 forKeyedSubscript:@"iCloudHSA2Enabled"];
  }

  if (v31)
  {
    [v57 setObject:v31 forKeyedSubscript:@"findMyEnabled"];
  }

  if (v10)
  {
    [v57 setObject:v10 forKeyedSubscript:@"DSPDevice"];
  }

  [v57 addEntriesFromDictionary:v28];
  v27 = 0;
LABEL_34:

  v59 = v27;
  if (!v57)
  {
    v63 = createAndLogError("copySplunkDailyStatistics", 979, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to query daily splunk info.", v81);
LABEL_39:
    v64 = v63;

    if (a2)
    {
      v65 = v64;
      v62 = 0;
      *a2 = v64;
    }

    else
    {
      v62 = 0;
    }

    v59 = v64;
    goto LABEL_43;
  }

  v60 = objc_alloc_init(NSMutableDictionary);
  if (!v60)
  {
    v63 = createAndLogError("copySplunkDailyStatistics", 1008, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v81);
    goto LABEL_39;
  }

  v61 = v60;
  [v60 addEntriesFromDictionary:v57];
  v62 = v61;
LABEL_43:

  return v62;
}

id copySortedSplunkFileList()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = v0;
  if (v0)
  {
    v2 = copy_splunk_directory_path(v0);
    v3 = copy_sorted_file_list(v2);

    if (v3)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = v3;
      v4 = v3;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v18 + 1) + 8 * i);
            v10 = isNSURL(v9);
            if (v10)
            {
              v11 = v10;
              v12 = [v9 pathExtension];
              v13 = [v12 isEqualToString:@"splunklog"];

              if (v13)
              {
                v14 = [v9 path];
                [v1 addObject:v14];
              }
            }
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v6);
      }

      v3 = v17;
    }

    v15 = v1;
  }

  return v1;
}

void writeSplunkLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v15 = a1;
  v16 = a6;
  v17 = a7;
  v31 = 0;
  v18 = DiagnosticLogSubmissionEnabled();
  if (v18)
  {
    v19 = copySplunkQueue(v18);
    if (v19)
    {
      v20 = v19;
      if (v17)
      {
        v31 = &a9;
        v21 = [[NSMutableString alloc] initWithFormat:v17 arguments:&a9];
      }

      else
      {
        v21 = 0;
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3254779904;
      v23[2] = __writeSplunkLog_block_invoke;
      v23[3] = &__block_descriptor_84_e8_32s40s48s_e5_v8__0l;
      v24 = v15;
      v27 = a2;
      v28 = a3;
      v30 = a5;
      v25 = v16;
      v26 = v21;
      v29 = a4;
      v22 = v21;
      dispatch_async(v20, v23);
    }

    else
    {
      v20 = copyLoggingHandle(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }
}

id copySplunkQueue(uint64_t a1)
{
  if (copySplunkQueue_onceToken != -1)
  {
    copySplunkQueue_cold_1();
  }

  v2 = copySplunkQueue_splunkQueue;

  return v2;
}

void __writeSplunkLog_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    v4 = copyLoggingHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_14();
    }

    goto LABEL_59;
  }

  v3 = copy_splunk_directory_path(a1);
  if (!v3)
  {
    v4 = copyLoggingHandle(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_13();
    }

    goto LABEL_59;
  }

  v4 = v3;
  v5 = +[NSFileManager defaultManager];
  v144 = NSFilePosixPermissions;
  v145 = &off_1003FBD80;
  v6 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
  v136 = 0;
  v7 = [(NSFileManager *)v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v6 error:&v136];
  v8 = v136;

  if ((v7 & 1) == 0)
  {
    v33 = copyLoggingHandle(v9);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_1();
    }

    v34 = v33;
    goto LABEL_57;
  }

  v10 = +[NSDate date];
  [(NSDate *)v10 timeIntervalSince1970];
  v12 = [NSNumber numberWithLong:1000 * v11];

  v13 = objc_alloc_init(NSMutableDictionary);
  if (!v13)
  {
    v35 = copyLoggingHandle(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_12();
    }

    v34 = v12;
    goto LABEL_57;
  }

  v14 = v13;
  v15 = *(a1 + 32);
  v135 = v8;
  v16 = copySplunkDeviceIdentifiers(v15, &v135);
  v17 = v135;

  if (!v16)
  {
    v36 = copyLoggingHandle(v18);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_11();
    }

    v37 = v17;
    goto LABEL_58;
  }

  if (*(a1 + 40))
  {
    [v14 addEntriesFromDictionary:?];
  }

  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_is_darwinos())
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v134 = v17;
    v38 = hasPrimaryICloudAccount(&v134);
    v8 = v134;

    v39 = [NSNumber numberWithBool:v38];
    v21 = v39;
    if (v8)
    {
      v40 = copyLoggingHandle(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_2();
      }

      v41 = v40;
      goto LABEL_56;
    }

    if ([(NSNumber *)v39 BOOLValue])
    {
      v133 = 0;
      IsHSA2 = primaryICloudAccountIsHSA2(&v133);
      v8 = v133;
      v44 = [NSNumber numberWithBool:IsHSA2];
      v117 = v44;
      if (v8)
      {
        v45 = copyLoggingHandle(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_3();
        }

        p_super = v45;
        goto LABEL_55;
      }
    }

    else
    {
      v117 = 0;
    }

    v132 = 0;
    IsEnabled = FindMyDeviceIsEnabled(&v132);
    v8 = v132;
    v54 = [NSNumber numberWithBool:IsEnabled];
    v19 = v54;
    if (v8)
    {
      v42 = copyLoggingHandle(v54);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_4();
      }

      goto LABEL_53;
    }

    v17 = 0;
    v20 = v117;
  }

  [v14 setObject:v21 forKeyedSubscript:@"iCloudEnabled"];
  v117 = v20;
  [v14 setObject:v20 forKeyedSubscript:@"iCloudHSA2Enabled"];
  [v14 setObject:v19 forKeyedSubscript:@"findMyEnabled"];
  [v14 addEntriesFromDictionary:v16];
  v22 = [(NSNumber *)v12 stringValue];
  [v14 setObject:v22 forKeyedSubscript:@"eventTime"];

  v23 = [NSNumber numberWithInteger:*(a1 + 56)];
  [v14 setObject:v23 forKeyedSubscript:@"splunkErrorCategory"];

  v24 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v14 setObject:v24 forKeyedSubscript:@"spiErrorCode"];

  [v14 setObject:@"1068.42.2" forKeyedSubscript:@"projectVersion"];
  v25 = [NSNumber numberWithInt:*(a1 + 80)];
  [v14 setObject:v25 forKeyedSubscript:@"lineNumber"];

  v116 = a1;
  v26 = *(a1 + 48);
  if (v26)
  {
    [v14 setObject:v26 forKeyedSubscript:@"errorString"];
  }

  if (*(a1 + 72))
  {
    v27 = [NSString stringWithUTF8String:?];
    [v14 setObject:v27 forKeyedSubscript:@"functionName"];
  }

  v131 = 0;
  v28 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:&v131];
  v8 = v131;

  if (!v28)
  {
    v42 = copyLoggingHandle(v29);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_10();
    }

LABEL_53:
    v32 = v42;
LABEL_54:

    p_super = &v19->super.super;
LABEL_55:

    v41 = &v117->super.super;
LABEL_56:

    v34 = v16;
LABEL_57:

    v37 = v8;
LABEL_58:

    goto LABEL_59;
  }

  v30 = [(NSData *)v28 length];
  if (v30 > 0x100000)
  {
    v31 = copyLoggingHandle(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_9(v28, v31);
    }

    v32 = v28;
    goto LABEL_54;
  }

  v113 = v28;
  v47 = copySortedSplunkFileList();
  v114 = v19;
  v108 = v47;
  v109 = v21;
  if (v47)
  {
    v48 = [[NSMutableArray alloc] initWithArray:v47];
    v49 = [v48 count];
    if (v49 >= 0x15)
    {
      do
      {
        v50 = copyLoggingHandle(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_5(v142, v48, &v143, v50);
        }

        v51 = +[NSFileManager defaultManager];
        v52 = [v48 lastObject];
        [(NSFileManager *)v51 removeItemAtPath:v52 error:0];

        [v48 removeLastObject];
        v49 = [v48 count];
      }

      while (v49 > 0x14);
    }
  }

  else
  {
    v48 = 0;
  }

  v110 = v12;
  v111 = v16;
  v115 = v14;
  v112 = v4;
  v130 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  obj = v48;
  v55 = [obj countByEnumeratingWithState:&v127 objects:v141 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = 0;
    v58 = *v128;
LABEL_63:
    v59 = 0;
    while (1)
    {
      v60 = v57;
      if (*v128 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(*(&v127 + 1) + 8 * v59);
      v62 = +[NSFileManager defaultManager];
      v126 = v8;
      v57 = [(NSFileManager *)v62 attributesOfItemAtPath:v61 error:&v126];
      v63 = v126;

      if (v57)
      {
        v65 = [(NSDictionary *)v57 objectForKeyedSubscript:NSFileSize];
        v66 = isNSNumber(v65);

        if (v66)
        {
          v68 = [NSData alloc];
          v125 = v63;
          v69 = [v68 initWithContentsOfFile:v61 options:0 error:&v125];
          v70 = v125;

          if (v69)
          {
            v123 = 0;
            v72 = [NSPropertyListSerialization propertyListWithData:v69 options:0 format:0 error:&v123];
            v8 = v123;

            v73 = isNSArray(v72);
            if (v73)
            {
              v74 = v73;
              v75 = [v72 count];

              if (v75 < 0x3E9)
              {
                v85 = [(NSDictionary *)v57 objectForKeyedSubscript:NSFileSize];
                v86 = [v85 integerValue];

                v87 = [NSMutableArray arrayWithArray:v72];
                v88 = v61;

                if (v87 && [(NSMutableArray *)v87 count]!= 1000 && [(NSData *)v113 length]+ v86 <= 0x100000)
                {
                  [(NSMutableArray *)v87 addObject:v115];
                  goto LABEL_96;
                }

                goto LABEL_95;
              }
            }

            v76 = copyLoggingHandle(v73);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v138 = v61;
              v139 = 2112;
              v140 = v8;
              _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "Invalid splunk file (%@): %@", buf, 0x16u);
            }

            v77 = +[NSFileManager defaultManager];
            [(NSFileManager *)v77 removeItemAtPath:0 error:0];

            v78 = v72;
          }

          else
          {
            v83 = copyLoggingHandle(v71);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v138 = v61;
              v139 = 2112;
              v140 = v70;
              _os_log_fault_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
            }

            v69 = +[NSFileManager defaultManager];
            v124 = v70;
            [(NSFileManager *)v69 removeItemAtPath:v61 error:&v124];
            v8 = v124;
            v78 = v70;
          }

          goto LABEL_83;
        }

        v79 = copyLoggingHandle(v67);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v138 = v61;
          v80 = v79;
          v81 = "Failed to retrieve size of %@.";
          v82 = 12;
          goto LABEL_86;
        }
      }

      else
      {
        v79 = copyLoggingHandle(v64);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v138 = v61;
          v139 = 2112;
          v140 = v63;
          v80 = v79;
          v81 = "Failed to retrieve attributes for %@: (%@)";
          v82 = 22;
LABEL_86:
          _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, v81, buf, v82);
        }
      }

      v69 = +[NSFileManager defaultManager];
      [(NSFileManager *)v69 removeItemAtPath:v61 error:0];
      v8 = v63;
LABEL_83:

      if (v56 == ++v59)
      {
        v84 = [obj countByEnumeratingWithState:&v127 objects:v141 count:16];
        v56 = v84;
        if (v84)
        {
          goto LABEL_63;
        }

        goto LABEL_94;
      }
    }
  }

  v57 = 0;
LABEL_94:

  v87 = 0;
  v88 = 0;
LABEL_95:
  v89 = v88;
  v90 = v87;
  v91 = [NSString alloc];
  v92 = copy_splunk_directory_path(v91);
  v93 = +[NSUUID UUID];
  v94 = [(NSUUID *)v93 UUIDString];
  v88 = [v91 initWithFormat:@"%@/%@.splunklog", v92, v94];

  v87 = [[NSMutableArray alloc] initWithObjects:{v115, 0}];
  if (v87)
  {
LABEL_96:
    v122 = 0;
    v96 = [NSPropertyListSerialization dataWithPropertyList:v87 format:200 options:0 error:&v122];
    v97 = v122;

    if (v96)
    {
      v121 = v97;
      v99 = store_data(v88, v96, &v121);
      v100 = v121;

      if (v99)
      {
        v102 = [@"com.apple.mobileactivationd.splunklogging" UTF8String];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3254779904;
        handler[2] = __writeSplunkLog_block_invoke_45;
        handler[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v120 = *(v116 + 32);
        xpc_activity_register(v102, XPC_ACTIVITY_CHECK_IN, handler);

        v103 = v113;
      }

      else
      {
        v107 = copyLoggingHandle(v101);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_6();
        }

        v103 = v113;
      }

      v105 = v100;
    }

    else
    {
      v106 = copyLoggingHandle(v98);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_7();
      }

      v105 = v97;
    }
  }

  else
  {
    v104 = copyLoggingHandle(v95);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_8();
    }

    v105 = v8;
  }

  v4 = v112;
LABEL_59:
}

void __writeSplunkLog_block_invoke_45(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    if (v4)
    {
      goto LABEL_11;
    }

    v5 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_45_cold_1();
    }
  }

  v6 = xpc_activity_copy_criteria(v3);
  if (!v6 || xpc_activity_get_state(v3) == 2)
  {
    splunk_activity_handler(*(a1 + 32), v6 == 0);
  }

LABEL_11:
}

void splunk_activity_handler(void *a1, int a2)
{
  v3 = a1;
  v4 = copySplunkQueue(v3);
  if (v4)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __splunk_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v12 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
      dispatch_async(v4, v5);
      v6 = v12;
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3254779904;
      v8[2] = __splunk_activity_handler_block_invoke_51;
      v8[3] = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
      v9 = v3;
      v7 = v4;
      v10 = v7;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v8);
      dispatch_async(v7, v5);

      v6 = v9;
    }
  }

  else
  {
    v5 = copyLoggingHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }
  }
}

void __splunk_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"SplunkRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.splunklogging" UTF8String];

  scheduleXPCActivity(v2, v3, 5u, 1, 0x400u, 0x400u, &__block_literal_global_6);
}

void __splunk_activity_handler_block_invoke_51(uint64_t a1)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__6;
  v45 = __Block_byref_object_dispose__6;
  v46 = 0;
  v2 = copySortedSplunkFileList();
  v27 = v2;
  if (!v2)
  {
    v22 = 0;
    v4 = 0;
    goto LABEL_24;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [v2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (!v4)
  {
LABEL_18:
    v22 = 0;
    v23 = 0;
LABEL_22:

    goto LABEL_25;
  }

  v5 = *v38;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v38 != v5)
    {
      objc_enumerationMutation(v3);
    }

    v7 = *(*(&v37 + 1) + 8 * v6);
    v8 = [NSData alloc];
    v9 = v42 + 5;
    obj = v42[5];
    v10 = [v8 initWithContentsOfFile:v7 options:0 error:&obj];
    objc_storeStrong(v9, obj);
    if (!v10)
    {
      v19 = copyLoggingHandle(v11);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v21 = v42[5];
        *buf = 138412546;
        v48 = v7;
        v49 = 2112;
        v50 = v21;
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
      }

      v13 = +[NSFileManager defaultManager];
      [(NSFileManager *)v13 removeItemAtPath:v7 error:0];
      goto LABEL_16;
    }

    v12 = v42;
    v35 = 0;
    v13 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v35];
    objc_storeStrong(v12 + 5, v35);
    v14 = isNSArray(v13);
    v15 = v14;
    if (v14)
    {
      v16 = [(NSFileManager *)v13 count]> 0x3E8;

      if (!v16)
      {
        break;
      }
    }

    v17 = copyLoggingHandle(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v20 = v42[5];
      *buf = 138412546;
      v48 = v7;
      v49 = 2112;
      v50 = v20;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Invalid splunk file (%@): %@", buf, 0x16u);
    }

    v18 = +[NSFileManager defaultManager];
    [(NSFileManager *)v18 removeItemAtPath:v7 error:0];

LABEL_16:
    if (v4 == ++v6)
    {
      v4 = [v3 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  v4 = v7;

  if (v13)
  {
    v24 = [v4 stringByAppendingString:@".inflight"];
    v25 = +[NSFileManager defaultManager];
    [(NSFileManager *)v25 moveItemAtPath:v4 toPath:v24 error:0];

    v26 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __splunk_activity_handler_block_invoke_55;
    block[3] = &__block_descriptor_80_e8_32s40s48s56s64s72r_e5_v8__0l;
    v22 = v24;
    v29 = v22;
    v23 = v13;
    v30 = v23;
    v4 = v4;
    v31 = v4;
    v34 = &v41;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    dispatch_async(v26, block);

    v3 = v29;
    goto LABEL_22;
  }

  v22 = 0;
LABEL_24:
  v23 = 0;
LABEL_25:
  _Block_object_dispose(&v41, 8);
}

void sub_10031A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __splunk_activity_handler_block_invoke_55(uint64_t a1)
{
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__6;
  v77 = __Block_byref_object_dispose__6;
  v78 = 0;
  v2 = copyLoggingHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing splunk logging (%@).", buf, 0xCu);
  }

  [@"com.apple.mobileactivationd.splunklogging" UTF8String];
  v4 = os_transaction_create();
  v5 = v74[5];
  v74[5] = v4;

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3254779904;
  v65 = __splunk_activity_handler_block_invoke_56;
  v66 = &__block_descriptor_80_e8_32s40s48s56s64r72r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
  v67 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v68 = v8;
  v71 = v9;
  v69 = *(a1 + 56);
  v72 = &v73;
  v70 = *(a1 + 64);
  v10 = v7;
  v11 = v64;
  v81 = 0;
  if (!v10)
  {
    v17 = createMobileActivationError("performSplunkPost", 761, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v62 = 0;
    v63 = 0;
    goto LABEL_24;
  }

  if (!is_internal_build())
  {
    v62 = 0;
    v63 = 0;
    goto LABEL_12;
  }

  v12 = [NSUserDefaults alloc];
  v63 = [v12 persistentDomainForName:@"com.apple.mobileactivationd"];

  v13 = [v63 objectForKeyedSubscript:@"UseReverseProxy"];
  v14 = isNSNumber(v13);
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = [v63 objectForKeyedSubscript:@"UseReverseProxy"];
  v16 = [v15 BOOLValue];

  if (!v16)
  {
LABEL_11:
    v62 = 0;
    goto LABEL_12;
  }

  v62 = copyReverseProxyDictionary(0, 0, 0);
LABEL_12:
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = v18;
  if (v18)
  {
    [v18 setObject:v10 forKeyedSubscript:@"events"];
    v20 = +[NSDate date];
    [(NSDate *)v20 timeIntervalSince1970];
    v22 = [NSNumber numberWithLong:1000 * v21];
    [v19 setObject:v22 forKeyedSubscript:@"postTime"];

    v80 = 0;
    v23 = [NSJSONSerialization dataWithJSONObject:v19 options:0 error:&v80];
    v24 = v80;
    v25 = v24;
    if (v23)
    {
      v26 = [NSMutableURLRequest alloc];
      v27 = [NSURL URLWithString:@"https://init.itunes.apple.com/bag.xml?ix=5"];
      LODWORD(v28) = NETWORK_TIMEOUT_SECONDS;
      v29 = [v26 initWithURL:v27 cachePolicy:0 timeoutInterval:v28];

      if (!v29)
      {
        v17 = createMobileActivationError("performSplunkPost", 795, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
        v30 = 0;
        v47 = 0;
        v29 = 0;
LABEL_43:
        v48 = 0;
        goto LABEL_44;
      }

      [v29 setValue:? forHTTPHeaderField:?];
      v79 = v25;
      v30 = talkToServerWithError(v29, 0, 0, v62, 0, 0, &v79);
      v60 = v79;

      if (v30)
      {
        *buf = 0;
        v59 = [NSPropertyListSerialization propertyListWithData:v30 options:0 format:0 error:buf];
        v31 = *buf;
        v32 = isNSDictionary(v59);
        v33 = v32 == 0;

        if (v33)
        {
          v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 704, @"com.apple.MobileActivation.ErrorDomain", -1, v31, @"Failed to create dictionary from data.");
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
        }

        else
        {
          v58 = [v59 objectForKey:@"bag"];
          v34 = isNSData(v58);
          v35 = v34 == 0;

          if (v35)
          {
            v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 710, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'bag' key.");
            v55 = 0;
            v56 = 0;
            v57 = 0;
          }

          else
          {
            v82 = 0;
            v57 = [NSPropertyListSerialization propertyListWithData:v58 options:0 format:0 error:&v82];
            v36 = v82;

            v37 = isNSDictionary(v57);
            v38 = v37 == 0;

            if (v38)
            {
              v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 719, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"Failed to create dictionary from data.");
              v55 = 0;
              v56 = 0;
            }

            else
            {
              v56 = [v57 objectForKeyedSubscript:@"metrics"];
              v39 = isNSDictionary(v56);
              v40 = v39 == 0;

              if (v40)
              {
                v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 725, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'metrics' key.");
                v55 = 0;
              }

              else
              {
                v41 = [v56 objectForKey:@"metricsUrl"];
                v42 = isNSString(v41);
                v55 = v41;
                LODWORD(v41) = v42 == 0;

                if (!v41)
                {
                  v43 = v55;
                  if (v43)
                  {
                    v44 = v43;
                    v45 = 0;
                    v55 = v43;
                    v46 = v60;
LABEL_36:

                    v25 = v46;
                    if (v45)
                    {
                      MobileActivationError = createMobileActivationError("performSplunkPost", 809, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Failed to retrieve Splunk base URL from iTunes storebag.");
                    }

                    else
                    {
                      v48 = [v44 stringByAppendingPathComponent:@"2/xp_coreos_mobile_activation"];

                      if (v48)
                      {
                        v61 = objc_alloc_init(NSMutableURLRequest);

                        if (v61)
                        {
                          [v61 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
                          v52 = [NSString stringWithFormat:@"application/json"];
                          [v61 setValue:v52 forHTTPHeaderField:@"Content-Type"];

                          [v61 setHTTPMethod:@"POST"];
                          [v61 setHTTPBody:v23];
                          v53 = [NSURL URLWithString:v48];
                          [v61 setURL:v53];

                          v82 = v25;
                          *buf = 0;
                          v54 = talkToServerWithError(v61, 0, 0, v62, buf, &v81, &v82);
                          v47 = *buf;
                          v17 = v82;

                          v25 = v30;
                          v30 = v54;
                          v29 = v61;
                        }

                        else
                        {
                          v17 = createMobileActivationError("performSplunkPost", 823, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
                          v47 = 0;
                          v29 = 0;
                        }

                        goto LABEL_44;
                      }

                      MobileActivationError = createMobileActivationError("performSplunkPost", 815, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create Splunk URL.");
                    }

                    v17 = MobileActivationError;
                    v47 = 0;
                    goto LABEL_43;
                  }

                  v55 = 0;
LABEL_35:
                  v50 = v36;
                  v44 = 0;
                  v45 = 1;
                  v46 = v36;
                  goto LABEL_36;
                }

                v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 731, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'metricsURL' key.");
              }
            }

            v31 = v36;
          }
        }

        v36 = v49;
        goto LABEL_35;
      }

      v17 = createMobileActivationError("performSplunkPost", 803, @"com.apple.MobileActivation.ErrorDomain", -6, v60, @"iTunes storebag request failed.");
      v30 = 0;
      v47 = 0;
      v48 = 0;
      v25 = v60;
    }

    else
    {
      v17 = createMobileActivationError("performSplunkPost", 785, @"com.apple.MobileActivation.ErrorDomain", -1, v24, @"Failed to serialize data: %@", v24);
      v30 = 0;
      v47 = 0;
      v29 = 0;
      v48 = 0;
      v23 = 0;
    }

LABEL_44:

    goto LABEL_45;
  }

  v17 = createMobileActivationError("performSplunkPost", 776, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create post dictionary.");
LABEL_24:
  v30 = 0;
  v47 = 0;
  v29 = 0;
  v48 = 0;
  v23 = 0;
  v19 = 0;
LABEL_45:
  v65(v11, v30, v47, v81, v17);

  _Block_object_dispose(&v73, 8);
}

void sub_10031B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __splunk_activity_handler_block_invoke_56(uint64_t a1, int a2, int a3, uint64_t a4, id a5)
{
  v7 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __splunk_activity_handler_block_invoke_2_57;
  block[3] = &__block_descriptor_88_e8_32s40s48s56s64r72r_e5_v8__0l;
  v20 = a4;
  v14 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18 = *(a1 + 64);
  v15 = v8;
  v16 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 72);
  v17 = v9;
  v19 = v10;
  v11 = v7;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  dispatch_async(*(a1 + 56), v12);
}

void __splunk_activity_handler_block_invoke_2_57(uint64_t a1)
{
  if (isRunningInRecovery())
  {
    v2 = 2;
  }

  else
  {
    v2 = 6;
  }

  v3 = *(a1 + 80);
  if ((v3 - 200) >= 0x64)
  {
    if ((v3 - 300) >= 0xC8)
    {
      v15 = +[NSFileManager defaultManager];
      [(NSFileManager *)v15 moveItemAtPath:*(a1 + 32) toPath:*(a1 + 40) error:0];

      v16 = *(a1 + 80);
      v17 = *(a1 + 48);
      v18 = [NSHTTPURLResponse localizedStringForStatusCode:v16];
      v19 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1484, @"com.apple.MobileActivation.ServerErrorDomain", v16, v17, @"Server error: %ld (%@)", v16, v18);

      v20 = *(a1 + 80);
      v21 = [NSHTTPURLResponse localizedStringForStatusCode:v20];
      v22 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1484, @"com.apple.MobileActivation.ErrorDomain", -6, v19, @"Server error: %ld (%@)", v20, v21);

      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      goto LABEL_11;
    }

    v4 = *(a1 + 48);
    v5 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 80)];
    v6 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1489, @"com.apple.MobileActivation.ServerErrorDomain", v3, v4, @"Server error: %ld (%@)", v3, v5);

    v7 = *(a1 + 80);
    v8 = [NSHTTPURLResponse localizedStringForStatusCode:v7];
    v9 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1489, @"com.apple.MobileActivation.ErrorDomain", -5, v6, @"Server error: %ld (%@)", v7, v8);

    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v13 = copyLoggingHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __splunk_activity_handler_block_invoke_2_57_cold_1(a1, a1 + 64, v13);
    }
  }

  v14 = +[NSFileManager defaultManager];
  [(NSFileManager *)v14 removeItemAtPath:*(a1 + 32) error:0];

  data_ark_remove(*(a1 + 56), 0, @"SplunkRetryAttempt");
LABEL_11:
  v25 = copySortedSplunkFileList();
  v26 = v25;
  if (!v25)
  {
    goto LABEL_24;
  }

  v25 = [v25 count];
  if (!v25)
  {
    goto LABEL_24;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v27 = data_ark_copy(*(a1 + 56), 0, @"SplunkRetryAttempt");
    v28 = isNSNumber(v27);

    if (v28)
    {
      v29 = [NSNumber numberWithLongLong:[(NSNumber *)v27 longLongValue]+ 1];

      if ([(NSNumber *)v29 unsignedLongLongValue]<= v2)
      {
LABEL_20:
        data_ark_set(*(a1 + 56), 0, @"SplunkRetryAttempt", v29, 1);
        [(NSNumber *)v29 doubleValue];
        v30 = (exp2(v31) * 60.0);

        goto LABEL_21;
      }

      v27 = v29;
      v29 = [NSNumber numberWithUnsignedInt:v2];
    }

    else
    {
      v29 = &off_1003FBD98;
    }

    goto LABEL_20;
  }

  v30 = 5;
LABEL_21:
  v32 = copyLoggingHandle(v25);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v37 = v30;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Rescheduling splunk logging for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 56), [@"com.apple.mobileactivationd.splunklogging" UTF8String], v30, 1, 0x400u, 0x400u, &__block_literal_global_66);
LABEL_24:
  v33 = copyLoggingHandle(v25);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Successfully performed splunk logging.", buf, 2u);
  }

  v34 = *(*(a1 + 72) + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v8 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v8, 8);
}

void __copy_helper_block_e8_32s40s48s56s64s72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);

  v2 = *(a1 + 32);
}

void splunk_daily_stats_activity_handler(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = copySplunkQueue(v1);
    if (v3)
    {
      v4 = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __splunk_daily_stats_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v7 = v2;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);

      dispatch_async(v4, v5);
    }

    else
    {
      v5 = copyLoggingHandle(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }

  else
  {
    v5 = copyLoggingHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }
}

void __splunk_daily_stats_activity_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = copySplunkDailyStatistics(v2, &v9);
  v4 = v9;
  v6 = v4;
  if (!v3)
  {
    v7 = copyLoggingHandle(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __splunk_daily_stats_activity_handler_block_invoke_cold_1();
    }
  }

  writeSplunkLog(*(a1 + 32), 25, -1, "splunk_daily_stats_activity_handler_block_invoke", 1571, v3, 0, v5, v8);
}

void splunk_roll_uuid_activity_handler(void *a1)
{
  v1 = a1;
  v2 = v1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  if (v1)
  {
    v3 = copySplunkQueue(v1);
    if (v3)
    {
      v4 = v3;
      [@"com.apple.mobileactivationd.splunklogging.rollidentifier" UTF8String];
      v5 = os_transaction_create();
      v6 = v13[5];
      v13[5] = v5;

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3254779904;
      v8[2] = __splunk_roll_uuid_activity_handler_block_invoke;
      v8[3] = &__block_descriptor_48_e8_32s40r_e5_v8__0l;
      v9 = v2;
      v10 = &v12;
      v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v8);

      dispatch_async(v4, v7);
    }

    else
    {
      v7 = copyLoggingHandle(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }

  else
  {
    v7 = copyLoggingHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }

  _Block_object_dispose(&v12, 8);
}

void sub_10031BCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __splunk_roll_uuid_activity_handler_block_invoke(uint64_t a1)
{
  rollSplunkLogUUID(*(a1 + 32));
  v3 = copyLoggingHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully rolled splunk logging UUID.", v6, 2u);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void rollSplunkLogUUID(void *a1)
{
  v1 = a1;
  v2 = copySplunkUUIDQueue(v1);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __rollSplunkLogUUID_block_invoke;
    block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v5 = v1;
    dispatch_async(v2, block);
    v3 = v5;
  }

  else
  {
    v3 = copyLoggingHandle(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }
  }
}

id copySplunkUUIDQueue(uint64_t a1)
{
  if (copySplunkUUIDQueue_onceToken != -1)
  {
    copySplunkUUIDQueue_cold_1();
  }

  v2 = copySplunkUUIDQueue_splunkQueue;

  return v2;
}

void __rollSplunkLogUUID_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSUUID UUID];
  v3 = [(NSUUID *)v2 UUIDString];
  data_ark_set(v1, 0, @"uuidString", v3, 1);
}

void __copySplunkLogUUID_block_invoke(uint64_t a1)
{
  if ((data_ark_exists(*(a1 + 32), 0, @"uuidString") & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = +[NSUUID UUID];
    v4 = [(NSUUID *)v3 UUIDString];
    data_ark_set(v2, 0, @"uuidString", v4, 1);
  }

  v5 = data_ark_copy(*(a1 + 32), 0, @"uuidString");
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __copySplunkQueue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.splunk", v1);
  v3 = copySplunkQueue_splunkQueue;
  copySplunkQueue_splunkQueue = v2;
}

void __copySplunkUUIDQueue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.splunk.uuid", v1);
  v3 = copySplunkUUIDQueue_splunkQueue;
  copySplunkUUIDQueue_splunkQueue = v2;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id copyRootCertificate(uint64_t a1, int a2, NSError **a3)
{
  switch(a1)
  {
    case 1:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGjCCAaGgAwIBAgIIO0EdkA1/e+swCgYIKoZIzj0EAwMwUzEnMCUGA1UEAwwe\nQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290IENBMRMwEQYDVQQKDApBcHBsZSBJ\nbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTE3MDQxOTIxNDE1NloXDTMyMDMy\nMjAwMDAwMFowUzEnMCUGA1UEAwweQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290\nIENBMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMHYw\nEAYHKoZIzj0CAQYFK4EEACIDYgAE639EEPCGvFOPAbzd5eGJM46/I+N1rpRhPBc2\n+hvNC5vlVyv1hVNPSTIcF0sLPgCeEEQqGIZsUPO48ECh03YzXUT86015HwktM439\nbWGKGE/VRepW8S8EDRLh6+83XZ9do0IwQDAPBgNVHRMBAf8EBTADAQH/MB0GA1Ud\nDgQWBBSD5aMhnrB0w/lhkP2XTiMQdqSj8jAOBgNVHQ8BAf8EBAMCAQYwCgYIKoZI\nzj0EAwMDZwAwZAIwQol5uLqv1SXY9G1wHSx2EYIULFlLssYTnTwbSlZPj2yF9cgk\n7xJO8bw6nTklgnHhAjBgMvsir7UEVzw7uxn8y3GGf9KSCFV5scySrYDZnJhETYlc\nyPYSFsZIerKNPP6v28Y=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAUCRTRootCAPEMLen;
      v7 = &BAAUCRTRootCAPEMLen;
      goto LABEL_47;
    case 2:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB/zCCAYWgAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwRTEZMBcGA1UEAwwQ\nVEVTVCBTRVAgUk9PVCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwK\nQ2FsaWZvcm5pYTAeFw0xNzAzMTcxNzQ4MzBaFw0zMjAzMTcxNzQ4MzBaMEUxGTAX\nBgNVBAMMEFRFU1QgU0VQIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzAR\nBgNVBAgMCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUrgQQAIgNiAARPM4laW0B+\nfOrILxB1SgluOqUops+ps7POnbPvuhEZq3A+/zMJpvuA9r81okf3hb2irmpUAuvd\npbjz1pDf73/8VC/uMSJsWXEc39kpm2j6DwBOIxJ++OwnhEU7pf0gCQ6jQjBAMB0G\nA1UdDgQWBBRWyfg8mg8Ak5e1SZm7V0WL85j2NDAPBgNVHRMBAf8EBTADAQH/MA4G\nA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAwNoADBlAjEAiOkQ9WnIfqiQXIKRjOhu\neWd+RPxKGQt1XmVQZGiNDwIu6SVQ0UVDGZg4ywsotyLNAjAOQgMucccaDYgsmELm\nYpYzgzyReDQx/ajwQdc97/unxkOWYP/5TPptimsc9E0u9bU=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICIDCCAaWgAwIBAgIIePhG1bNbWBcwCgYIKoZIzj0EAwMwVTEpMCcGA1UEAwwg\nQmFzaWMgQXR0ZXN0YXRpb24gU3lzdGVtIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxl\nIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwNDIwMDAyMjA5WhcNMzIw\nMzIyMDAwMDAwWjBVMSkwJwYDVQQDDCBCYXNpYyBBdHRlc3RhdGlvbiBTeXN0ZW0g\nUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5p\nYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABN7OnRlUVkOVlHTw7UF9qForIhvM8pLL\nWTrHm6Be42c3LZFIM2RNT5FZZDkIgQfYLS6vsRpfrhEMKIHIWomtyuCxp2c/AIxu\nwEml4f2d8IktTRcNHwqKzUgzPJV3CyKh2KNCMEAwDwYDVR0TAQH/BAUwAwEB/zAd\nBgNVHQ4EFgQU/tHRwggHA9W5PDSyu/18OpklG48wDgYDVR0PAQH/BAQDAgEGMAoG\nCCqGSM49BAMDA2kAMGYCMQCmU03bvMmBE4X03P8MdpxEE/LpNcRmsnktIav8tpNh\nGmo4mv2FyZKKvaJtO2OhIrwCMQDxMBcXge5NpWx/VBcFTj2Tb2VxQ8zMKbWapLE/\nHPN4kbBaiIIUl52drBlQjS/c3P8=\n-----END CERTIFICATE-----\n";
      }

      v6 = &QABAASCRTRootCAPEMLen;
      v7 = &BAASCRTRootCAPEMLen;
      goto LABEL_47;
    case 3:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAZqgAwIBAgIUfK8gpf3d6f7acICzvf5MBWnAVEYwCgYIKoZIzj0EAwIw\nVzErMCkGA1UEAwwiQXBwbGUgQWNjZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTET\nMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAgFw0yMDA5\nMTYxODI5MzRaGA8yMDUwMDkxNDAwMDAwMFowVzErMCkGA1UEAwwiQXBwbGUgQWNj\nZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTETMBEGA1UECgwKQXBwbGUgSW5jLjET\nMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABMGo\nQSB6dmrLAhjkTUVAoAC1RwaOmEmEk7SYEnnm6aBw9HZZQt5pkncuTXxvL6NDvx4D\n8Wn3frxp+UOTgEalb0ajQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAZD\nZup+SdTmXls49aokHuK+fHKjMA4GA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAgNI\nADBFAiEA4HcCYv5+W+1/HOy1v1cYVozNEW4+2WvR84Japg8rabkCIDP9zynWiR60\nO06J60wrt0rQfBOPnoeY1+ydbP2g8Tiy\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAMFiRootCAPEMLen;
      v7 = &BAAMFiRootCAPEMLen;
      goto LABEL_47;
    case 4:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBgzCCASkCFDjx/NbFt/axSboRZlQvaFKmOM9cMAoGCCqGSM49BAMCMEQxGDAW\nBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTAeFw0yMjEyMjAyMjQ5MjNaFw0zMjEyMTcyMjQ5MjNa\nMEQxGDAWBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5j\nLjETMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IA\nBFEzB9BX594q7qqyNgDRIB2qQm6uhylOPgS3zX6kVNpCe+IGeuYGVKu+n0oVoUEq\nah/zwVwo9xZPJycEbHBhGlAwCgYIKoZIzj0EAwIDSAAwRQIhAJxxz1ciDUVxdnIz\n34ondjHZD90U6Pzvu9abpIU1TsJxAiAKxVubHXInckv6HidbV1J2RghMPdxOyKnw\nZR6YEAfSMQ==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICLDCCAbOgAwIBAgIUfj+NzqI5TD5k+plnCuu7oXn/1NYwCgYIKoZIzj0EAwMw\nVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0YXRpb24gVk0gUm9vdCBDQSAtIEcxMRMw\nEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTIyMTEx\nNzE5MjQ0NloXDTQ3MTExNzAwMDAwMFowVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0\nYXRpb24gVk0gUm9vdCBDQSAtIEcxMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEh+bXFjhVZxpY\nSW1tUJhQc7Mesr7Ua/2EIJDhZnq1eUV666b7j8V1apF7zQdcVc1GHqBMRfeagBk0\nktB5PgRQ4hFX3OAbfjSVnmuPVuHznBbS/1f/ABuTlJJjO592E9JVo0IwQDAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTHKW8b5x+bDXk9PC/lPsufj3wUEzAOBgNV\nHQ8BAf8EBAMCAQYwCgYIKoZIzj0EAwMDZwAwZAIwXsNPIuolYDriFDkULrsZy81O\nyAk4v7Y4f1p86Ox2J7g4xdGIwAyLw/JNRKGoHGpVAjBk20GA6ZvKKoO+HvE9v2xu\nwiVPsqk37xSmgK+RHJDMMy+hrhJVsCsBzeYpI9Cz4sI=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAVMRootCAPEMLen;
      v7 = &BAAVMRootCAPEMLen;
      goto LABEL_47;
    case 5:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9jCCAXwCFGyFzDAIXLHwUcHOxFEzhqQrOQOPMAoGCCqGSM49BAMDMF8xMzAx\nBgNVBAMMKkJhc2ljIEF0dGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBH\nMTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAeFw0y\nMzAxMTkyMTEzNTFaFw0zMzAxMTYyMTEzNTFaMF8xMzAxBgNVBAMMKkJhc2ljIEF0\ndGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBw\nbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAi\nA2IABOnVQFqNs86j5R5dAcjUlpotBUkO2q3+udEnqwkzzcrptPz6FIp5GQagMCQk\nwDgzXTe3jUqDkGxMNUjLt6DkzbwX7SrHhvIf9RlTXmlgrCUUrR21089VP+FZu8sD\n38l7PTAKBggqhkjOPQQDAwNoADBlAjEA7qwslEakgN0e+27DzPtrOqbud2pXVdRP\nqGFmLcklmZWHF1UIn6JlD1TNLVHQlCr3AjBkSmV+m5D/pJVRvg4ewQq+9oeyuYg8\nJHQGGaubDFMjZXhJ3NXrLHmIWDRQW2lgChA=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICODCCAb2gAwIBAgIUW5y5rEfNQCu9iSCmlQjrP1Rz/tAwCgYIKoZIzj0EAwMw\nWzEvMC0GA1UEAwwmQmFzaWMgQXR0ZXN0YXRpb24gU0VQIEFwcCBSb290IENBIC0g\nRzExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcN\nMjIwOTEyMTc1OTM0WhcNNDcwOTEyMDAwMDAwWjBbMS8wLQYDVQQDDCZCYXNpYyBB\ndHRlc3RhdGlvbiBTRVAgQXBwIFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBwbGUg\nSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IA\nBAXaHBhlPwzGbPrirq+GvLIVTB4ym+88OQOB2Aq3ZuWIDz2DV9EWt7/3tpHL276X\nWE4ObPymHzrbl5aNpIzjm9W0tgiZRWw8l3YEuoz56dh3sZqVdDxszB3CQw1KX+62\nYaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUywowhXlxUMVVx846sCHP\nXQIrUR4wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49BAMDA2kAMGYCMQC/AZhw1x8+\nXBPQw3lTl2A4SxY5UvCMjyseU9uUD0qgFDYlvUzH0qi8KB5BZled0cYCMQClhMgI\nrl3Txh1EJBb5yoWhvs8Gy+qkov9/SIDIEGpmZ7OUngbjN5zheCyJio90Xig=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAASMFiOSRootCAPEMLen;
      v7 = &BAAASMFiOSRootCAPEMLen;
      goto LABEL_47;
    case 6:
      v8 = *"&\b";
      v5 = "-----BEGIN CERTIFICATE-----\nMIIF2DCCA8CgAwIBAgIBADANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRSLUNBMS1ST09ULUNNIDg2\nQkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5QTE1RTVGQjM2MDNCQ0U2\nOTA1MDczRUMwNjBBM0YwHhcNMTQwNjExMjEwODM5WhcNNDQwNjExMjEwODM5WjB9\nMQswCQYDVQQGEwJVUzETMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRS\nLUNBMS1ST09ULUNNIDg2QkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5\nQTE1RTVGQjM2MDNCQ0U2OTA1MDczRUMwNjBBM0YwggIiMA0GCSqGSIb3DQEBAQUA\nA4ICDwAwggIKAoICAQDRSE8a8Xl+OFgz07qfQf610WJgBhQUMqYqLME8yNW6HRAo\nZmRJCZhKzJCW7W77utpo/QZqCs/Tmc8yAuyw06MlLdb/EaFbIJhnd8KvhNO2aBn1\n0zTF3BrKu/iBj4Cb31nzd+P3BAyIIhnNfqnJ1YDGrXDHApFKs96bRNYfFj/cm55e\n+5ZaVAE4pGq3I45pO1HMEObvysFnbEw4R5EZ8BsyNaSe+EEprYZQqjfGciVZn+WD\nnP0g1TONgE8yAplaud+0QQIcLxE82toZqnAEErojrXbb9KYiW6OH+w8p8ITKrA0a\nbyud5ZwU8x2dwJngg2P53vzdaEPgl+oEWm5uTtOBS5kGh9N0Ky3N094qn6Y9OmLD\neXsYXGE3Q91AZ6Ps+0cmZYAMvnlTMh6h6TRgIG6kUi/7fIn6umQHgavSMP+XWNET\nCzbwE7YZnTnhMlW3Oaey40bKDgxZAgVAVKt+qf/B9Exb074GqicYr5RH3MmYYqVo\nbHZTPkeKykUxUJoNm/jRoyXQnStl0uBclShH3ORMOHL6MeQMSGIEIVbD6AJz3rIX\n7nidx3ePUeA7QVV/vhL09DU4Q5KKQsbgl4qSGzxA87ClUGworLaWa+AUE+MP5NLJ\ntSlsY4+Fl3VLq51AJA2oeOwF6KCTRTZWG56anqaSrEU0UKsWgQ6ys+9153eGTwID\nAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4E\nFgQUESXWmKVwOl5LaoSB35L33xPje14wHwYDVR0jBBgwFoAUESXWmKVwOl5LaoSB\n35L33xPje14wDQYJKoZIhvcNAQELBQADggIBAJcISq7FqhBfFRpgEAiedVPPzff5\nrU2uNQLpApMb3A6jFSostHTwypA//pc0PbTPTi5t2CcF14Gznqt4Gf1Ej75C+fgK\nQoWjcgYPCXkK+6KkTW8EMLsL+n8ZL1tqdOuJCOBTRBTU3Lbwon5uYF98CdBlPIam\nZqDEbEiwrp/I5uBMkut1P2sftxu5ysu3+A1bGMDI5T84sXbG0eJU6zmx1p/WUHAc\nHZy9/S7Ad5vJRMQrWx4JDdLvJ+1PXqdJtZUkp4TNPchxA9OzGsatVJJ5T/5EVDuL\nQgLaZNiWeAC19+clUREnS247RjLNIZZq0hj2Rk5zO6sSyt8vM+kJZrTVdGaSk++l\nOFWzSdo0Ev/izPkuL/cH146YZS1UWZJI61mdvbvvxqqQaoTmviuMDqDoCZ7crLu3\nLRoS6/+w+xir5s6hmAF8D6FzAkVmeAroyd6Hclk6CnhlcQP5GxjTQjA2YGe/9X54\n30qL4fjiDwdLYqxyL5J28/yxt068aoVaukoRAgiGoZouyieTV9DabenxYBOygijS\n4G4RVf4qVnQ7wGkQokhz4WIkMr4C4ydWU3GhSuM3T9Tx9ASscch/oLMczDMLKYMe\n3sdtc60+gxrctSq/B3E/5nddDj9vQ7BdRWcvJ+n/ESsXgwk5z15YZUwU/qW0j5rD\n4bPy9nox5DLds+/l\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 7:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBtDCCAVqgAwIBAgIBJzAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMTgzOVoXDTI2MDQyMDIyMTgzOVowSDEcMBoGA1UE\nAwwTU0VQIFJvb3QgQ0EgKExvY2FsKTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABLbmMPmv\nubyAcSjOqIvq+HkYPAn68WV+DopU/kfpNtEo0y0kjdxYGyuiaKC3LPqBmgM8pHlJ\npP81SMyx900L5YyjNTAzMA8GA1UdEwEB/wQFMAMBAf8wCwYDVR0PBAQDAgEGMBMG\nCSqGSIb3Y2QGLAQGFgR1Y3J0MAoGCCqGSM49BAMCA0gAMEUCIQCz/HH34JCprRWh\nsrjvjvb0vUjLY22yA/3uJS0zZ2LRGgIgahGt0ZuEvMzPDnG9n8wRXEOB46xu7zDy\nrXK+zQjBPMY=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTRootCAPEMLen;
      goto LABEL_41;
    case 8:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICXjCCAeWgAwIBAgIJAO5ey/a/ZXo9MAoGCCqGSM49BAMDMGQxNzA1BgNVBAMT\nLmltZzQgdGVzdCBzZWNwMzg0cjEgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkx\nFDASBgNVBAoTC0FwcGxlLCBJbmMuMRMwEQYDVQQIEwpDYWxpZm9ybmlhMB4XDTE1\nMDgyNzA0MTk1MloXDTI1MDgyNDA0MTk1MlowZDE3MDUGA1UEAxMuaW1nNCB0ZXN0\nIHNlY3AzODRyMSBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eTEUMBIGA1UEChML\nQXBwbGUsIEluYy4xEzARBgNVBAgTCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUr\ngQQAIgNiAARmiQLNit/MHLEymNygtXRdYvZ2V9ujKbG78XPHs815eRetxfbAe0SU\n3LOKQ0xvpm77RUDARHdFyNzRSkKxTY2iBUGOapBwlwzfZlUmJU4JRXE9ATRwYNco\nKfVcrL0BFnejYzBhMB0GA1UdDgQWBBTFrjb8IhN7kz3HMYTxcqKeXtGm5DAPBgNV\nHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFMWuNvwiE3uTPccxhPFyop5e0abkMA4G\nA1UdDwEB/wQEAwIBhjAKBggqhkjOPQQDAwNnADBkAjB5ryjJQJlO6BD0fqejchDc\nHB9su7+GoJMD5Kv9hoDeDlCTYoxE1fUp/36BAM3Ph/4CMB+QED5D9Nf7Fas99Xst\nxQ+EdLq74wvw/0YFQlsLVUH3UAnFE1uWnmwHkDZYF1EkcA==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTRootCAP384PEMLen;
LABEL_41:
      v7 = &UCRTRootCAPEMLen;
      goto LABEL_47;
    case 9:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBtjCCAVugAwIBAgIBJTAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMDMwMloXDTI2MDQyMDIyMDMwMlowSTETMBEGA1UE\nCAwKQ2FsaWZvcm5pYTETMBEGA1UECgwKQXBwbGUgSW5jLjEdMBsGA1UEAwwUdWNy\ndCBWZW5kaW5nIFNlcnZpY2UwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQooWKn\nj4PQnKhSGEpmJok/4CSDeG6fIk6A4vCDtuC5T2twqSmM0VWT3SY5B8QKMAspxnnT\nfxPmUJ+d2vhNPocFozUwMzAPBgNVHRMBAf8EBTADAQH/MAsGA1UdDwQEAwIBBjAT\nBgkqhkiG92NkBiwEBhYEdWNydDAKBggqhkjOPQQDAgNJADBGAiEAq6YVB2GvW4uu\nb17G+wTS/pehuM8tHLOH6RfJzUarkpUCIQDViFsKmYnrNx3yi9whnCHUE2SqvdRK\nYFSjST8cXO8B2g==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICFzCCAZygAwIBAgIIOcUqQ8IC/hswCgYIKoZIzj0EAwIwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTYwNDI1MjM0NTQ3WhcNMjkwNjI0MjE0MzI0WjBFMRMwEQYDVQQI\nDApDYWxpZm9ybmlhMRMwEQYDVQQKDApBcHBsZSBJbmMuMRkwFwYDVQQDDBBGRFJE\nQy1VQ1JULVNVQkNBMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEaDc2O/MruYvP\nVPaUbKR7RRzn66B14/8KoUMsEDb7nHkGEMX6eC+0gStGHe4HYMrLyWcap1tDFYmE\nDykGQ3uM2aN7MHkwHQYDVR0OBBYEFLSqOkOtG+V+zgoMOBq10hnLlTWzMA8GA1Ud\nEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUWO/WvsWCsFTNGKaEraL2e3s6f88wDgYD\nVR0PAQH/BAQDAgEGMBYGCSqGSIb3Y2QGLAEB/wQGFgR1Y3J0MAoGCCqGSM49BAMC\nA2kAMGYCMQDf5zNiiKN/Jqms1w+3CDYkESOPieJMpEkLe9a0UjWXEBDL0VEsq/Cd\nE3aKXkc6R10CMQDS4MiWiymY+Rxkvy/hicDDQqI/BL+N3LHqzJZUuw2Sx0afDX7B\n6LyKk+sLq4urkMY=\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTSubCAPEMLen;
      v7 = &UCRTSubCAPEMLen;
      goto LABEL_47;
    case 10:
      v8 = 1115;
      v5 = "-----BEGIN CERTIFICATE-----\nMIIDCjCCAnOgAwIBAgIJAKLEjm9wthY+MA0GCSqGSIb3DQEBBQUAMGIxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjAeFw0x\nMTA2MjMxOTA1NDNaFw0xOTA5MDkxOTA1NDNaMGIxCzAJBgNVBAYTAlVTMQswCQYD\nVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJbmMu\nMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjCBnzANBgkqhkiG9w0BAQEF\nAAOBjQAwgYkCgYEAyckOSUo0WP7JAPTWXeVyEfeJ7JUm1cVzL4hURR/Kr9PR8x1g\nptLaxWVcni+9D6eHmn9FxmmQFXRbIQCs5/qj4PhFZLC3c77wvi/8OL2EwSIOq9MN\nHpm0P0jh/0e8AxJZS98gPfz6YF58H1/Vi5yYlM7zsGPdXaUiQokAbTcyXZUCAwEA\nAaOBxzCBxDAdBgNVHQ4EFgQUMSXJGuBw9hqPqJDExjgE206NyD4wgZQGA1UdIwSB\njDCBiYAUMSXJGuBw9hqPqJDExjgE206NyD6hZqRkMGIxCzAJBgNVBAYTAlVTMQsw\nCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJ\nbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcoIJAKLEjm9wthY+MAwG\nA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAqrgiRsSNB4ubv2ZDUqH7p1a1\nHca1vMmXZy1bTBXTbxoNJ/tHnkBZrQHoRq31931Sd6CDLnN/8h+Zpcg7C40vKMBu\nnJ4gaPVrPZlv36rrW/xNf6ZLETt0Q8VM554/P2QfT4aU/2v2rFb/orAqsKSW6wtJ\n9WmL1qAfmVJAPdcwYbY=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 11:
      v8 = 1143;
      v5 = "-----BEGIN CERTIFICATE-----\nMIIDHzCCAoigAwIBAgIJAK/qJPz+p+3XMA0GCSqGSIb3DQEBBQUAMGkxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxFjAUBgNVBAMTDVJhcHRvciBEZXZp\nY2UwHhcNMTEwNjIzMTkwNjE3WhcNMTkwOTA5MTkwNjE3WjBpMQswCQYDVQQGEwJV\nUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzETMBEGA1UEChMKQXBw\nbGUgSW5jLjEMMAoGA1UECxMDRVRTMRYwFAYDVQQDEw1SYXB0b3IgRGV2aWNlMIGf\nMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOPR58emAZ3QBW6U3tZXmTjELxK495\nJavHz3yZm1lX1z7K9tmbqcmUuEXpBbxHtgEkTTmwZQIgM3f6asTn8CKln8kq7aYj\nAWbSNOCy35hLDCy+hCN9hi++3LqqHiuQ9whVAvyrqpX7xPfgGwheIgpp/sPoPbZF\nx5EiwPt7/uHzfQIDAQABo4HOMIHLMB0GA1UdDgQWBBSWWwNRWUp2XVKrcZ8yKR4r\nZh/4wDCBmwYDVR0jBIGTMIGQgBSWWwNRWUp2XVKrcZ8yKR4rZh/4wKFtpGswaTEL\nMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRIwEAYDVQQHEwlDdXBlcnRpbm8xEzAR\nBgNVBAoTCkFwcGxlIEluYy4xDDAKBgNVBAsTA0VUUzEWMBQGA1UEAxMNUmFwdG9y\nIERldmljZYIJAK/qJPz+p+3XMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQAD\ngYEAP2PMyy+666s+vDH4mLhFb2ZUFUM/nyxnLbjEyxgxR5Z5iZ/H0BEp7s59Matv\ndO0dzhP1+khkcM6opicPG3Vu5eDI0odn41m7LDj6Z3lgrxFTKIm/Ghc7c7c0qdWA\nYLTvijBQsDqsY1YoAXr+80ReSSouJgkNvljBAoPFPpoK2xQ=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 12:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "Certificate:\n"
             "    Data:\n"
             "        Version: 3 (0x2)\n"
             "        Serial Number: 1 (0x1)\n"
             "        Signature Algorithm: sha1WithRSAEncryption\n"
             "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
             "        Validity\n"
             "            Not Before: Mar 21 06:20:50 2007 GMT\n"
             "            Not After : Mar 12 06:20:50 2022 GMT\n"
             "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Device CA\n"
             "        Subject Public Key Info:\n"
             "            Public Key Algorithm: rsaEncryption\n"
             "            RSA Public Key: (1024 bit)\n"
             "                Modulus (1024 bit):\n"
             "                    00:d7:60:52:2a:fa:93:52:dc:db:ae:92:6b:d6:ac:\n"
             "                    59:17:1f:9a:20:ed:34:ae:c2:15:e8:e3:f0:3b:63:\n"
             "                    84:d8:6d:8d:02:65:74:e6:62:18:27:d1:fc:78:c3:\n"
             "                    2f:36:83:39:91:9f:3d:32:e0:95:7f:90:3b:ab:47:\n"
             "                    be:f1:47:85:8c:5d:ab:1c:5c:bb:10:69:47:56:b8:\n"
             "                    15:bf:34:4a:f0:49:6e:8a:35:4a:4f:47:bb:3e:ea:\n"
             "                    cc:df:2e:f4:b8:96:16:94:dd:38:f6:f0:82:cf:26:\n"
             "                    fd:67:a1:73:01:43:d8:25:bd:02:2c:82:89:7c:70:\n"
             "                    01:68:c2:8a:85:60:84:77:83\n"
             "                Exponent: 65537 (0x10001)\n"
             "        X509v3 extensions:\n"
             "            X509v3 Key Usage: critical\n"
             "                Digital Signature, Certificate Sign, CRL Sign\n"
             "            X509v3 Basic Constraints: critical\n"
             "                CA:TRUE\n"
             "            X509v3 Subject Key Identifier:\n"
             "                38:05:20:A9:3F:C6:79:F4:EC:9A:6F:7F:47:02:5E:6E:A4:79:11:F5\n"
             "            X509v3 Authority Key Identifier:\n"
             "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
             "\n"
             "            X509v3 CRL Distribution Points:\n"
             "                URI:http://www.apple.com/appleca/iphone.crl\n"
             "\n"
             "    Signature Algorithm: sha1WithRSAEncryption\n"
             "        8d:be:6b:c8:4e:80:9e:78:86:0c:09:d0:6e:ed:c1:dc:30:f7:\n"
             "        29:4b:20:4e:2c:6c:b3:24:72:fd:ce:24:34:60:95:30:d7:32:\n"
             "        61:31:e5:d4:d5:63:aa:3f:89:81:f6:44:ab:71:d0:bc:17:db:\n"
             "        ab:bc:ec:bb:a4:40:6a:e7:e4:57:c6:28:6f:11:72:fc:0c:51:\n"
             "        07:31:db:40:54:ee:b5:e6:1e:e3:dc:9b:f9:3c:6a:ba:d8:c3:\n"
             "        20:f1:dd:49:cb:3a:a6:29:cd:52:f9:f3:f3:18:5e:dd:82:83:\n"
             "        b8:e8:4e:94:10:7a:1e:11:a0:63:4d:8e:60:4a:1d:45:72:4d:\n"
             "        a0:ac:1f:b0:98:8b:b4:33:5a:85:60:cf:7f:89:35:62:65:d1:\n"
             "        1b:48:a4:ec:ca:60:1a:9d:a6:d1:b9:3d:f3:64:a4:67:d1:a5:\n"
             "        1b:b6:d9:e7:65:75:cb:af:2f:7a:db:d8:a1:f4:f3:09:bf:9a:\n"
             "        99:1a:34:a6:ed:1f:82:84:0b:b6:a8:68:5d:ec:49:d4:b3:34:\n"
             "        84:af:cb:a4:d9:00:f0:bc:07:6c:17:e7:95:bb:c3:3d:d9:bb:\n"
             "        6a:13:1d:34:bd:2f:c1:9a:f1:4d:67:5f:56:33:90:b2:ef:ff:\n"
             "        27:da:19:60:55:b0:78:c2:8c:34:5b:61:3a:e1:ec:61:92:8b:\n"
             "        2f:04:9a:c6\n"
             "-----BEGIN CERTIFICATE-----\n"
             "MIIDeDCCAmCgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
             "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
             "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
             "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
             "MFowYTELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
             "DEFwcGxlIGlQaG9uZTEmMCQGA1UEAxQdW1RFU1RdIEFwcGxlIGlQaG9uZSBEZXZp\n"
             "Y2UgQ0EwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBANdgUir6k1Lc266Sa9as\n"
             "WRcfmiDtNK7CFejj8DtjhNhtjQJldOZiGCfR/HjDLzaDOZGfPTLglX+QO6tHvvFH\n"
             "hYxdqxxcuxBpR1a4Fb80SvBJboo1Sk9Huz7qzN8u9LiWFpTdOPbwgs8m/WehcwFD\n"
             "2CW9AiyCiXxwAWjCioVghHeDAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8G\n"
             "A1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFDgFIKk/xnn07Jpvf0cCXm6keRH1MB8G\n"
             "A1UdIwQYMBaAFEWiTKmKW0onXoWmTQUcJ0Slh3YXMDgGA1UdHwQxMC8wLaAroCmG\n"
             "J2h0dHA6Ly93d3cuYXBwbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG\n"
             "9w0BAQUFAAOCAQEAjb5ryE6AnniGDAnQbu3B3DD3KUsgTixssyRy/c4kNGCVMNcy\n"
             "YTHl1NVjqj+JgfZEq3HQvBfbq7zsu6RAaufkV8YobxFy/AxRBzHbQFTuteYe49yb\n"
             "+TxqutjDIPHdScs6pinNUvnz8xhe3YKDuOhOlBB6HhGgY02OYEodRXJNoKwfsJiL\n"
             "tDNahWDPf4k1YmXRG0ik7MpgGp2m0bk982SkZ9GlG7bZ52V1y68vetvYofTzCb+a\n"
             "mRo0pu0fgoQLtqhoXexJ1LM0hK/LpNkA8LwHbBfnlbvDPdm7ahMdNL0vwZrxTWdf\n"
             "VjOQsu//J9oZYFWweMKMNFthOuHsYZKLLwSaxg==\n"
             "-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "Bag Attributes\n    localKeyID: 7C 29 15 15 12 C9 CF F6 15 2B 5B 25 70 3D A7 9A 98 14 36 06\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Device CA\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDaTCCAlGgAwIBAgIBATANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU0NDZaFw0xNDA0MTYyMjU0NDZaMFoxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxHzAdBgNVBAMTFkFwcGxlIGlQaG9uZSBEZXZpY2UgQ0EwgZ8wDQYJKoZI\nhvcNAQEBBQADgY0AMIGJAoGBAPGUSsnquloYYK3Lok1NTlQZaRdZB2bLl+hmmkdf\nRq5nerVKc1SxywT2vTa4DFU4ioSDMVJl+TPhl3ecK0wmsCU/6TKqewh0lOzBSzgd\nZ04IUpRai1mjXNeT9KD+VYW7TEaXXm6yd0UvZ1y8Cxi/WblshvcqdXbSGXH0KWO5\nJQuvAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8w\nHQYDVR0OBBYEFLL+ISNEhpVqedWBJo5zENinTI50MB8GA1UdIwQYMBaAFOc0Ki4i\n3jlga7SUzneDYS8xoHw1MDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly93d3cuYXBw\nbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG9w0BAQUFAAOCAQEAd13P\nZ3pMViukVHe9WUg8Hum+0I/0kHKvjhwVd/IMwGlXyU7DhUYWdja2X/zqj7W24Aq5\n7dEKm3fqqxK5XCFVGY5HI0cRsdENyTP7lxSiiTRYj2mlPedheCn+k6T5y0U4Xr40\nFXwWb2nWqCF1AgIudhgvVbxlvqcxUm8Zz7yDeJ0JFovXQhyO5fLUHRLCQFssAbf8\nB4i8rYYsBUhYTspVJcxVpIIltkYpdIRSIARA49HNvKK4hzjzMS/OhKQpVKw+OCEZ\nxptCVeN2pjbdt9uzi175oVo/u6B2ArKAW17u6XEHIdDMOe7cb33peVI6TD15W4MI\npyQPbp8orlXe+tA8JA==\n-----END CERTIFICATE-----";
      }

      v6 = &QAIphoneDeviceCAPEMLen;
      v7 = &iPhoneDeviceCAPEMLen;
      goto LABEL_47;
    case 13:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "Certificate:\n"
             "    Data:\n"
             "        Version: 3 (0x2)\n"
             "        Serial Number: 2 (0x2)\n"
             "        Signature Algorithm: sha1WithRSAEncryption\n"
             "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
             "        Validity\n"
             "            Not Before: Mar 21 06:20:50 2007 GMT\n"
             "            Not After : Mar 12 06:20:50 2022 GMT\n"
             "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Activation\n"
             "        Subject Public Key Info:\n"
             "            Public Key Algorithm: rsaEncryption\n"
             "            RSA Public Key: (1024 bit)\n"
             "                Modulus (1024 bit):\n"
             "                    00:b3:62:65:ec:48:dd:dd:ed:44:d4:f1:fe:fb:c2:\n"
             "                    6f:42:d0:82:09:03:00:a6:01:e8:b1:07:09:26:5b:\n"
             "                    12:65:db:7f:51:15:ef:4f:45:b3:8f:ce:4d:16:1d:\n"
             "                    38:84:01:10:57:4e:8c:71:e1:5e:de:67:14:75:da:\n"
             "                    48:9a:4c:6f:f0:45:65:66:e8:9c:b5:a2:4c:f4:53:\n"
             "                    c1:ec:98:62:90:b0:94:be:12:f2:a0:ac:5c:77:16:\n"
             "                    07:73:72:5a:97:ba:50:4e:67:30:52:1e:f0:30:4e:\n"
             "                    8f:b2:a4:d3:d1:fa:f8:66:79:87:91:2f:a1:ef:4e:\n"
             "                    e6:41:8d:94:18:29:e0:f2:cf\n"
             "                Exponent: 65537 (0x10001)\n"
             "        X509v3 extensions:\n"
             "            X509v3 Key Usage: critical\n"
             "                Digital Signature\n"
             "            X509v3 Basic Constraints: critical\n"
             "                CA:FALSE\n"
             "            X509v3 Subject Key Identifier:\n"
             "                C0:6F:3A:4A:1B:ED:51:DD:9D:A3:4B:C0:41:F6:6A:11:F9:AB:8B:F1\n"
             "            X509v3 Authority Key Identifier:\n"
             "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
             "\n"
             "            X509v3 CRL Distribution Points:\n"
             "                URI:http://www.apple.com/appleca/iphone.crl\n"
             "\n"
             "    Signature Algorithm: sha1WithRSAEncryption\n"
             "        0e:4f:55:00:9d:1e:4c:75:28:e8:79:bb:db:5c:5c:cc:45:93:\n"
             "        46:d3:3b:14:00:2d:5b:b0:8c:2e:15:3e:19:60:43:25:59:7f:\n"
             "        7b:3a:b2:7c:cf:c2:96:dd:b0:d7:70:5a:8e:28:c4:cc:32:2c:\n"
             "        f4:c2:43:e3:e1:1f:b3:b1:df:ec:86:dd:43:93:45:60:a1:53:\n"
             "        05:ba:6a:70:43:44:11:a1:9e:dd:c1:71:8b:cb:30:cd:d3:15:\n"
             "        21:e0:27:30:35:8a:76:8e:c2:23:fb:44:22:bd:96:f6:aa:55:\n"
             "        bf:4d:11:b1:0e:c4:7f:cf:86:8d:f8:30:dd:80:48:5d:9e:41:\n"
             "        4e:e0:29:96:25:cc:d6:4a:0d:47:05:87:c4:61:f6:b0:1e:1a:\n"
             "        da:48:56:a3:c1:c1:56:95:b3:4e:84:82:1b:a5:4d:d3:d0:5d:\n"
             "        60:cf:fd:e5:75:3c:91:13:e2:e4:f1:60:4a:58:93:de:3f:e9:\n"
             "        3c:bf:da:c9:f6:ef:9b:9e:b1:6e:78:9e:81:f6:e7:4c:09:b3:\n"
             "        1c:87:25:bf:8f:6e:3f:d6:03:53:1e:09:a3:5b:00:4b:9e:98:\n"
             "        fb:ae:13:86:e4:47:6a:1a:44:f8:15:c8:fb:30:c7:bd:b0:e8:\n"
             "        8c:ac:2d:73:08:af:ed:b2:e8:f5:6d:a1:e2:d9:45:de:d5:b9:\n"
             "        98:89:16:72\n"
             "-----BEGIN CERTIFICATE-----\n"
             "MIIDdjCCAl6gAwIBAgIBAjANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
             "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
             "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
             "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
             "MFowYjELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
             "DEFwcGxlIGlQaG9uZTEnMCUGA1UEAxQeW1RFU1RdIEFwcGxlIGlQaG9uZSBBY3Rp\n"
             "dmF0aW9uMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzYmXsSN3d7UTU8f77\n"
             "wm9C0IIJAwCmAeixBwkmWxJl239RFe9PRbOPzk0WHTiEARBXToxx4V7eZxR12kia\n"
             "TG/wRWVm6Jy1okz0U8HsmGKQsJS+EvKgrFx3FgdzclqXulBOZzBSHvAwTo+ypNPR\n"
             "+vhmeYeRL6HvTuZBjZQYKeDyzwIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAM\n"
             "BgNVHRMBAf8EAjAAMB0GA1UdDgQWBBTAbzpKG+1R3Z2jS8BB9moR+auL8TAfBgNV\n"
             "HSMEGDAWgBRFokypiltKJ16Fpk0FHCdEpYd2FzA4BgNVHR8EMTAvMC2gK6Aphido\n"
             "dHRwOi8vd3d3LmFwcGxlLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcN\n"
             "AQEFBQADggEBAA5PVQCdHkx1KOh5u9tcXMxFk0bTOxQALVuwjC4VPhlgQyVZf3s6\n"
             "snzPwpbdsNdwWo4oxMwyLPTCQ+PhH7Ox3+yG3UOTRWChUwW6anBDRBGhnt3BcYvL\n"
             "MM3TFSHgJzA1inaOwiP7RCK9lvaqVb9NEbEOxH/Pho34MN2ASF2eQU7gKZYlzNZK\n"
             "DUcFh8Rh9rAeGtpIVqPBwVaVs06EghulTdPQXWDP/eV1PJET4uTxYEpYk94/6Ty/\n"
             "2sn275uesW54noH250wJsxyHJb+Pbj/WA1MeCaNbAEuemPuuE4bkR2oaRPgVyPsw\n"
             "x72w6IysLXMIr+2y6PVtoeLZRd7VuZiJFnI=\n"
             "-----END CERTIFICATE-----\n";
      }

      else
      {
        v5 = "Bag Attributes\n    localKeyID: 75 60 9A FA 74 F6 E1 90 9C 00 2D 77 E5 10 D6 1C B3 E5 1F 4B\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Activation\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDZzCCAk+gAwIBAgIBAjANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU1MDJaFw0xNDA0MTYyMjU1MDJaMFsxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxIDAeBgNVBAMTF0FwcGxlIGlQaG9uZSBBY3RpdmF0aW9uMIGfMA0GCSqG\nSIb3DQEBAQUAA4GNADCBiQKBgQDFAXzRImArmoiHfbS2oPcqAfbEv0d1jk7GbnX7\n+4YUlyIfprzBVdlmz2JHYv1+04IzJtL7cL97UI7fk0i0OMY0al8a+JPQa4Ug611T\nbqEt+njAmAkge3HXWDBdAXD9MhkC7T/9o77zOQ1oli4cUdzlnYWfzmW0PduOxuve\nAeYY4wIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMB0G\nA1UdDgQWBBShoNL+t7Rz/psUaq/NPXNPH+/WlDAfBgNVHSMEGDAWgBTnNCouIt45\nYGu0lM53g2EvMaB8NTA4BgNVHR8EMTAvMC2gK6AphidodHRwOi8vd3d3LmFwcGxl\nLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcNAQEFBQADggEBAF9qmrUN\ndA+FROYGP7pWcYTAK+pLyOf9zOaE7aeVI885V8Y/BKHhlwAo+zEkiOU3FbEPCS9V\ntS18ZBcwD/+d5ZQTMFknhcUJwdPqqjnm9LqTfH/x4pw8ONHRDzxHdp96gOV3A4+8\nabkoASfcYqvIRypXnbur3bRRhTzAs4VILS6jTyFYymZeSewtBubmmigo1kCQiZGc\n76c5feDAyHb2bzEqtvx3WprljtS46QT5CR6YelinZnio32jAzRYTxtS6r3JsvZDi\nJ07+EHcmfGdpxwgO+7btW1pFar0ZjF9/jYKKnOYNyvCrwszhafbSYwzAG5EJoXFB\n4d+piWHUDcPxtcc=\n-----END CERTIFICATE-----";
      }

      v6 = &QAIphoneActivationPEMLen;
      v7 = &iPhoneActivationPEMLen;
LABEL_47:
      if (v4)
      {
        v6 = v7;
      }

      v8 = *v6;
      goto LABEL_51;
    case 14:
      v8 = 4721;
      v5 = iPhoneCAPEM;
      goto LABEL_51;
    default:
      v11 = createMobileActivationError("copyRootCertificate", 118, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid certificate type: %d", a1);
      if (v11)
      {
        goto LABEL_54;
      }

      v8 = 0;
      v5 = 0;
LABEL_51:
      v9 = [[NSData alloc] initWithBytesNoCopy:v5 length:v8 freeWhenDone:0];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
      }

      else
      {
        v11 = createMobileActivationError("copyRootCertificate", 128, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
LABEL_54:
        if (a3)
        {
          v11 = v11;
          v10 = 0;
          *a3 = v11;
        }

        else
        {
          v10 = 0;
        }
      }

      return v10;
  }
}

id copy_system_container_path(uint64_t a1)
{
  if (copy_system_container_path_onceToken != -1)
  {
    copy_system_container_path_cold_1();
  }

  v2 = copy_system_container_path_retval;

  return v2;
}

void __copy_system_container_path_block_invoke(id a1)
{
  v1 = container_system_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [NSString stringWithUTF8String:v1];
    v4 = copy_system_container_path_retval;
    copy_system_container_path_retval = v3;

    free(v2);
  }
}

NSString *copy_group_container_path(uint64_t a1)
{
  if (a1 && (v1 = container_system_group_path_for_identifier()) != 0)
  {
    v2 = v1;
    v3 = [NSString stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id copy_regulatory_images_directory_path(uint64_t a1)
{
  if (copy_regulatory_images_directory_path_onceToken != -1)
  {
    copy_regulatory_images_directory_path_cold_1();
  }

  v2 = copy_regulatory_images_directory_path_retval;

  return v2;
}

void __copy_regulatory_images_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.regulatory_images" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/RegulatoryImages"];
    v4 = copy_regulatory_images_directory_path_retval;
    copy_regulatory_images_directory_path_retval = v3;
  }
}

id copy_suinfo_directory_path(uint64_t a1)
{
  if (copy_suinfo_directory_path_onceToken != -1)
  {
    copy_suinfo_directory_path_cold_1();
  }

  v2 = copy_suinfo_directory_path_retval;

  return v2;
}

void __copy_suinfo_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.pisco.suinfo" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ProvenanceV2"];
    v4 = copy_suinfo_directory_path_retval;
    copy_suinfo_directory_path_retval = v3;
  }
}

id copy_software_update_log_directory_path(uint64_t a1)
{
  if (copy_software_update_log_directory_path_onceToken != -1)
  {
    copy_software_update_log_directory_path_cold_1();
  }

  v2 = copy_software_update_log_directory_path_retval;

  return v2;
}

void __copy_software_update_log_directory_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"logs"];
  v2 = copy_software_update_log_directory_path_retval;
  copy_software_update_log_directory_path_retval = v1;
}

id copy_software_update_splunk_directory_path(uint64_t a1)
{
  if (copy_software_update_splunk_directory_path_onceToken != -1)
  {
    copy_software_update_splunk_directory_path_cold_1();
  }

  v2 = copy_software_update_splunk_directory_path_retval;

  return v2;
}

void __copy_software_update_splunk_directory_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"splunk"];
  v2 = copy_software_update_splunk_directory_path_retval;
  copy_software_update_splunk_directory_path_retval = v1;
}

id copy_uik_path(uint64_t a1)
{
  if (copy_uik_path_onceToken != -1)
  {
    copy_uik_path_cold_1();
  }

  v2 = copy_uik_path_retval;

  return v2;
}

void __copy_uik_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/uik"];
    v4 = copy_uik_path_retval;
    copy_uik_path_retval = v3;
  }
}

id copy_software_update_ucrt_directory_path(uint64_t a1)
{
  if (copy_software_update_ucrt_directory_path_onceToken != -1)
  {
    copy_software_update_ucrt_directory_path_cold_1();
  }

  v2 = copy_software_update_ucrt_directory_path_retval;

  return v2;
}

void __copy_software_update_ucrt_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ucrt"];
    v4 = copy_software_update_ucrt_directory_path_retval;
    copy_software_update_ucrt_directory_path_retval = v3;
  }
}

id copy_activation_records_directory_path(uint64_t a1)
{
  if (copy_activation_records_directory_path_onceToken != -1)
  {
    copy_activation_records_directory_path_cold_1();
  }

  v2 = copy_activation_records_directory_path_retval;

  return v2;
}

void __copy_activation_records_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/activation_records"];
    v4 = copy_activation_records_directory_path_retval;
    copy_activation_records_directory_path_retval = v3;
  }
}

id copy_ucrt_path(uint64_t a1)
{
  if (copy_ucrt_path_onceToken != -1)
  {
    copy_ucrt_path_cold_1();
  }

  v2 = copy_ucrt_path_retval;

  return v2;
}

void __copy_ucrt_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ucrt"];
    v4 = copy_ucrt_path_retval;
    copy_ucrt_path_retval = v3;
  }
}

id copy_dcrt_path(uint64_t a1)
{
  if (copy_dcrt_path_onceToken != -1)
  {
    copy_dcrt_path_cold_1();
  }

  v2 = copy_dcrt_path_retval;

  return v2;
}

void __copy_dcrt_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"dcrt"];
  v2 = copy_dcrt_path_retval;
  copy_dcrt_path_retval = v1;
}

id copy_legacy_dcrt_path(uint64_t a1)
{
  if (copy_legacy_dcrt_path_onceToken != -1)
  {
    copy_legacy_dcrt_path_cold_1();
  }

  v2 = copy_legacy_dcrt_path_retval;

  return v2;
}

void __copy_legacy_dcrt_path_block_invoke(id a1)
{
  v1 = copy_system_container_path(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/dcrt"];
    v4 = copy_legacy_dcrt_path_retval;
    copy_legacy_dcrt_path_retval = v3;
  }
}

id copy_data_ark_directory_path(uint64_t a1)
{
  if (copy_data_ark_directory_path_onceToken != -1)
  {
    copy_data_ark_directory_path_cold_1();
  }

  v2 = copy_data_ark_directory_path_retval;

  return v2;
}

void __copy_data_ark_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/internal"];
    v4 = copy_data_ark_directory_path_retval;
    copy_data_ark_directory_path_retval = v3;
  }
}

id copy_log_directory_path(uint64_t a1)
{
  if (copy_log_directory_path_onceToken != -1)
  {
    copy_log_directory_path_cold_1();
  }

  v2 = copy_log_directory_path_retval;

  return v2;
}

void __copy_log_directory_path_block_invoke(id a1)
{
  v1 = copy_log_directory_path_retval;
  copy_log_directory_path_retval = @"/private/var/mobile/Library/Logs/mobileactivationd";
}

id copy_splunk_directory_path(uint64_t a1)
{
  if (copy_splunk_directory_path_onceToken != -1)
  {
    copy_splunk_directory_path_cold_1();
  }

  v2 = copy_splunk_directory_path_retval;

  return v2;
}

void __copy_splunk_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/splunk"];
    v4 = copy_splunk_directory_path_retval;
    copy_splunk_directory_path_retval = v3;
  }
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    do
    {
      v9 = [v5 domain];
      if ([v9 isEqualToString:v7])
      {
        v10 = [v5 code];

        if (v10 == a3)
        {
          v8 = 1;
          goto LABEL_9;
        }
      }

      else
      {
      }

      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v5 = v12;
    }

    while (v12);
    v8 = 0;
  }

LABEL_9:

  return v8;
}

uint64_t load_identity(CFTypeRef *a1, id a2, void *a3, void *a4, OSStatus *a5, NSError **a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!a1 || !v12)
  {
    v21 = createMobileActivationError("load_identity", 57, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v22 = 0;
    v15 = 0;
    v20 = -1;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v25[0] = kSecAttrLabel;
  v25[1] = kSecClass;
  v26[0] = v12;
  v26[1] = kSecClassIdentity;
  v25[2] = kSecReturnRef;
  v25[3] = kSecUseDataProtectionKeychain;
  v26[2] = &__kCFBooleanTrue;
  v26[3] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
  v15 = [(NSDictionary *)v14 mutableCopy];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v13)
  {
    v16 = [v13 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
    v17 = isNSNumber(v16);

    if (v17)
    {
      v18 = [v13 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
      [v15 setObject:v18 forKeyedSubscript:kSecUseSystemKeychain];
    }
  }

  v19 = SecItemCopyMatching(v15, a1);
  v20 = v19;
  if (v19)
  {
    v21 = createMobileActivationError("load_identity", 88, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy identity: %d", v19);
    v22 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a5 = v20;
    goto LABEL_13;
  }

  v21 = 0;
  v22 = 1;
  if (a5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v21 = v21;
    *a6 = v21;
  }

  return v22;
}

uint64_t delete_identity(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    v16 = createMobileActivationError("delete_identity", 116, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v11 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v19[0] = kSecAttrLabel;
  v19[1] = kSecClass;
  v20[0] = v8;
  v20[1] = kSecClassIdentity;
  v19[2] = kSecReturnRef;
  v19[3] = kSecUseDataProtectionKeychain;
  v20[2] = &__kCFBooleanTrue;
  v20[3] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v11 = [(NSDictionary *)v10 mutableCopy];

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v9)
  {
    v12 = [v9 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
    v13 = isNSNumber(v12);

    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
      [v11 setObject:v14 forKeyedSubscript:kSecUseSystemKeychain];
    }
  }

  v15 = SecItemDelete(v11);
  v16 = 0;
  v17 = 1;
  if (v15 != -25300 && v15)
  {
    v16 = createMobileActivationError("delete_identity", 146, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing identity: %d", v15);
    if (!a4)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = v16;
    v17 = 0;
    *a4 = v16;
  }

LABEL_13:

  return v17;
}

uint64_t store_identity(uint64_t a1, id a2, void *a3, void *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1 && v10)
  {
    v24 = 0;
    v12 = delete_identity(v9, v10, v11, &v24);
    v13 = v24;
    if (v12)
    {
      v25[0] = kSecAttrLabel;
      v25[1] = kSecValueRef;
      v26[0] = v10;
      v26[1] = a1;
      v25[2] = kSecUseDataProtectionKeychain;
      v25[3] = kSecAttrAccessible;
      v26[2] = &__kCFBooleanTrue;
      v26[3] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
      v15 = [(NSDictionary *)v14 mutableCopy];

      if (v9)
      {
        [v15 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
      }

      if (v11)
      {
        v16 = [v11 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
        v17 = isNSNumber(v16);

        if (v17)
        {
          v18 = [v11 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
          [v15 setObject:v18 forKeyedSubscript:kSecUseSystemKeychain];
        }
      }

      v19 = SecItemAdd(v15, 0);
      if (!v19)
      {
        v22 = 1;
        goto LABEL_17;
      }

      v20 = createMobileActivationError("store_identity", 206, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add identity to keychain: %d", v19);
    }

    else
    {
      v20 = createMobileActivationError("store_identity", 176, @"com.apple.MobileActivation.ErrorDomain", -1, v13, @"Failed to delete existing identity.");

      v15 = 0;
    }

    v13 = v20;
    if (!a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = createMobileActivationError("store_identity", 171, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v15 = 0;
    if (!a5)
    {
LABEL_15:
      v22 = 0;
      goto LABEL_17;
    }
  }

  v21 = v13;
  v22 = 0;
  *a5 = v13;
LABEL_17:

  return v22;
}

uint64_t load_certificate(CFTypeRef *a1, id a2, void *a3, int *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  result = 0;
  if (!v10)
  {
    v16 = createMobileActivationError("load_certificate", 231, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid inputs.");
    v17 = 0;
    v13 = 0;
    v15 = -1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22[0] = kSecAttrLabel;
  v22[1] = kSecClass;
  v23[0] = v10;
  v23[1] = kSecClassCertificate;
  v22[2] = kSecReturnRef;
  v22[3] = kSecUseDataProtectionKeychain;
  v23[2] = &__kCFBooleanTrue;
  v23[3] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v13 = [(NSDictionary *)v12 mutableCopy];

  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v14 = SecItemCopyMatching(v13, &result);
  if (v14)
  {
    v15 = v14;
    v16 = createMobileActivationError("load_certificate", 253, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate (%@): %d", v11, v14);
    v17 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v15;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0;
  if (a1)
  {
    *a1 = CFRetain(result);
  }

  v17 = 1;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v16;
    *a5 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v17;
}

uint64_t delete_certificate(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v11 = createMobileActivationError("delete_certificate", 287, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v14[0] = kSecAttrLabel;
  v14[1] = kSecClass;
  v15[0] = v6;
  v15[1] = kSecClassCertificate;
  v14[2] = kSecReturnRef;
  v14[3] = kSecUseDataProtectionKeychain;
  v15[2] = &__kCFBooleanTrue;
  v15[3] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  v11 = 0;
  v12 = 1;
  if (v10 != -25300 && v10)
  {
    v11 = createMobileActivationError("delete_certificate", 309, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing certificate (%@): %d", v7, v10);
    if (!a3)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v11 = v11;
    v12 = 0;
    *a3 = v11;
  }

LABEL_10:

  return v12;
}

uint64_t store_certificate(uint64_t a1, id a2, void *a3, int a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  result = 0;
  if (!a1 || !v10)
  {
    v13 = createMobileActivationError("store_certificate", 334, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_11:
    v15 = 0;
    if (!a5)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

LABEL_12:
    v19 = v13;
    v20 = 0;
    *a5 = v13;
    goto LABEL_20;
  }

  v24 = 0;
  v12 = delete_certificate(v9, v10, &v24);
  v13 = v24;
  if (!v12)
  {
    goto LABEL_11;
  }

  v26[0] = kSecAttrLabel;
  v26[1] = kSecClass;
  v27[0] = v11;
  v27[1] = kSecClassCertificate;
  v26[2] = kSecReturnRef;
  v26[3] = kSecValueRef;
  v27[2] = &__kCFBooleanTrue;
  v27[3] = a1;
  v26[4] = kSecUseDataProtectionKeychain;
  v27[4] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v15 = [(NSDictionary *)v14 mutableCopy];

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v16 = SecItemAdd(v15, 0);
  if (v16 == -25299 && a4)
  {
    [v15 removeObjectForKey:kSecAttrLabel];
    v17 = SecItemCopyMatching(v15, &result);
    if (v17)
    {
      MobileActivationError = createMobileActivationError("store_certificate", 368, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query duplicate certificate: %d", v17);
      goto LABEL_18;
    }

    v21 = SecItemDelete(v15);
    if (v21)
    {
      MobileActivationError = createMobileActivationError("store_certificate", 378, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to delete duplicate certificate: %d", v21);
      goto LABEL_18;
    }

    [v15 setObject:v11 forKeyedSubscript:kSecAttrLabel];
    v16 = SecItemAdd(v15, 0);
  }

  if (v16)
  {
    MobileActivationError = createMobileActivationError("store_certificate", 392, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add certificate (%@) to keychain: %d", v11, v16);
LABEL_18:
    v22 = MobileActivationError;

    v13 = v22;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v20 = 1;
LABEL_20:
  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v20;
}

uint64_t update_certificate(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v8 && v9)
  {
    v17[0] = kSecAttrLabel;
    v17[1] = kSecClass;
    v18[0] = v8;
    v18[1] = kSecClassCertificate;
    v17[2] = kSecUseDataProtectionKeychain;
    v18[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v12 = [(NSDictionary *)v11 mutableCopy];

    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v13 = SecItemUpdate(v12, v10);
    if (!v13)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v14 = createMobileActivationError("update_certificate", 440, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v13);
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v14 = v14;
    v15 = 0;
    *a4 = v14;
    goto LABEL_11;
  }

  v14 = createMobileActivationError("update_certificate", 419, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v12 = 0;
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = 0;
LABEL_11:

  return v15;
}

uint64_t store_pem_as_identity(void *a1, void *a2, void *a3, void *a4, void *a5, NSError **a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11 && v12 && v14)
  {
    v24 = 0;
    v16 = lockcrypto_identity_from_pem_data(v12, v11, &v24);
    v17 = v24;
    v18 = v17;
    if (v16)
    {
      v23 = v17;
      v19 = store_identity(v16, v13, v14, v15, &v23);
      v20 = v23;

      if (!a6)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v20 = createMobileActivationError("store_pem_as_identity", 469, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to create identity from pem data");
  }

  else
  {
    v20 = createMobileActivationError("store_pem_as_identity", 463, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid inputs.");
    v16 = 0;
  }

  v19 = 0;
  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((v19 & 1) == 0)
  {
    v21 = v20;
    *a6 = v20;
  }

LABEL_12:
  if (v16)
  {
    CFRelease(v16);
  }

  return v19;
}

uint64_t store_pem_as_certificate(void *a1, void *a2, void *a3, int a4, NSError **a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  if (!v9 || !v11)
  {
    v17 = createMobileActivationError("store_pem_as_certificate", 499, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid inputs.");
    v13 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v24 = 0;
  v13 = lockcrypto_cert_from_pem_data(v9, &v24);
  v14 = v24;
  v15 = v14;
  if (!v13)
  {
    v17 = createMobileActivationError("store_pem_as_certificate", 505, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to create certificate from pem data.");

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v23 = v14;
  v16 = store_certificate(v13, v10, v12, a4, &v23);
  v17 = v23;

  if (v16)
  {
    v18 = 1;
LABEL_11:
    CFRelease(v13);
    v20 = v18;
    goto LABEL_12;
  }

  v22 = createMobileActivationError("store_pem_as_certificate", 511, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to store certificate.");

  v17 = v22;
  if (a5)
  {
LABEL_9:
    v19 = v17;
    *a5 = v17;
  }

LABEL_10:
  v18 = 0;
  v20 = 0;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v20;
}

CFTypeRef copy_keychain_item(void *a1, void *a2, void *a3, OSStatus *a4, NSError **a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  result = 0;
  if (!v10)
  {
    v16 = createMobileActivationError("copy_keychain_item", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v17 = 0;
    v18 = -1;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v27 = a5;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
    if (v13)
    {
      v14 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      getLAContextClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v13 = 0;
      }
    }

    v19 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
    v20 = isNSString(v19);

    if (v20)
    {
      v21 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = 0;
LABEL_13:
  v29[0] = kSecAttrLabel;
  v29[1] = kSecClass;
  v30[0] = v10;
  v30[1] = kSecClassKey;
  v29[2] = kSecReturnRef;
  v29[3] = kSecUseDataProtectionKeychain;
  v30[2] = &__kCFBooleanTrue;
  v30[3] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v23 = [(NSDictionary *)v22 mutableCopy];

  if (v9)
  {
    [v23 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v13)
  {
    [v23 setObject:v13 forKeyedSubscript:kSecUseAuthenticationContext];
  }

  if (v21)
  {
    [v23 setObject:v21 forKeyedSubscript:kSecUseAuthenticationUI];
  }

  v24 = SecItemCopyMatching(v23, &result);
  v18 = v24;
  if (v24)
  {
    v16 = createMobileActivationError("copy_keychain_item", 586, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v10, v24);

    v17 = 0;
  }

  else
  {
    v17 = result;
    result = 0;

    v16 = 0;
  }

  a5 = v27;
  if (a4)
  {
LABEL_23:
    *a4 = v18;
  }

LABEL_24:
  if (a5 && !v17)
  {
    v25 = v16;
    *a5 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v17;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3254779904;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10031E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t delete_keychain_item(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v13 = createMobileActivationError("delete_keychain_item", 617, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v9 = 0;
    if (!a3)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v15[0] = kSecAttrLabel;
  v15[1] = kSecClass;
  v16[0] = v6;
  v16[1] = kSecClassKey;
  v15[2] = kSecUseDataProtectionKeychain;
  v16[2] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  if (v10 != -25300 && v10 != 0)
  {
    v13 = createMobileActivationError("delete_keychain_item", 638, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v7, v10);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = v13;
    v12 = 0;
    *a3 = v13;
    goto LABEL_14;
  }

  v13 = 0;
  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t store_keychain_item(uint64_t a1, id a2, void *a3, void *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a1 && v10)
  {
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      if (v13 && (v14 = v13, v15 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"], getLAContextClass(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, v14, (isKindOfClass & 1) != 0))
      {
        v17 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v17 = 0;
      }

      v23 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
      v24 = isNSString(v23);

      if (v24)
      {
        v20 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = 0;
LABEL_14:
    v30 = 0;
    v25 = delete_keychain_item(v9, v10, &v30);
    v18 = v30;
    if (v25)
    {
      v31[0] = kSecAttrLabel;
      v31[1] = kSecClass;
      v32[0] = v10;
      v32[1] = kSecClassKey;
      v31[2] = kSecValueRef;
      v31[3] = kSecUseDataProtectionKeychain;
      v32[2] = a1;
      v32[3] = &__kCFBooleanTrue;
      v31[4] = kSecAttrAccessible;
      v32[4] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v26 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
      v19 = [(NSDictionary *)v26 mutableCopy];

      if (v9)
      {
        [v19 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
      }

      if (v17)
      {
        [v19 setObject:v17 forKeyedSubscript:kSecUseAuthenticationContext];
      }

      if (v20)
      {
        [v19 setObject:v20 forKeyedSubscript:kSecUseAuthenticationUI];
      }

      v27 = SecItemAdd(v19, 0);
      if (!v27)
      {
        v22 = 1;
        goto LABEL_27;
      }

      v28 = createMobileActivationError("store_keychain_item", 717, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v10, v27);
    }

    else
    {
      v28 = createMobileActivationError("store_keychain_item", 684, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to delete existing keychain item.");

      v19 = 0;
    }

    v18 = v28;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v18 = createMobileActivationError("store_keychain_item", 667, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v19 = 0;
  v17 = 0;
  v20 = 0;
  if (!a5)
  {
LABEL_25:
    v22 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v21 = v18;
  v22 = 0;
  *a5 = v18;
LABEL_27:

  return v22;
}

uint64_t update_keychain_item(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v8 && v9)
  {
    v17[0] = kSecAttrLabel;
    v17[1] = kSecClass;
    v18[0] = v8;
    v18[1] = kSecClassKey;
    v17[2] = kSecUseDataProtectionKeychain;
    v18[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v12 = [(NSDictionary *)v11 mutableCopy];

    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v13 = SecItemUpdate(v12, v10);
    if (!v13)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v14 = createMobileActivationError("update_keychain_item", 763, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v13);
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v14 = v14;
    v15 = 0;
    *a4 = v14;
    goto LABEL_11;
  }

  v14 = createMobileActivationError("update_keychain_item", 742, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v12 = 0;
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = 0;
LABEL_11:

  return v15;
}

id copy_keychain_data(void *a1, void *a2, OSStatus *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  result = 0;
  if (v8)
  {
    v20[0] = kSecAttrLabel;
    v20[1] = kSecClass;
    v21[0] = v8;
    v21[1] = kSecClassGenericPassword;
    v20[2] = kSecReturnData;
    v20[3] = kSecUseDataProtectionKeychain;
    v21[2] = &__kCFBooleanTrue;
    v21[3] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemCopyMatching(v11, &result);
    v13 = v12;
    if (v12)
    {
      v14 = createMobileActivationError("copy_keychain_data", 810, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v9, v12);
      v15 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
      v15 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = createMobileActivationError("copy_keychain_data", 788, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  v15 = 0;
  v11 = 0;
  v13 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v13;
  }

LABEL_9:
  if (a4 && !v15)
  {
    v16 = v14;
    *a4 = v14;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v17 = v15;

  return v17;
}

id copy_keychain_data_attributes(void *a1, void *a2, OSStatus *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  result = 0;
  if (v8)
  {
    v20[0] = kSecAttrLabel;
    v20[1] = kSecClass;
    v21[0] = v8;
    v21[1] = kSecClassGenericPassword;
    v20[2] = kSecReturnAttributes;
    v20[3] = kSecUseDataProtectionKeychain;
    v21[2] = &__kCFBooleanTrue;
    v21[3] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemCopyMatching(v11, &result);
    v13 = v12;
    if (v12)
    {
      v14 = createMobileActivationError("copy_keychain_data_attributes", 864, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v9, v12);
      v15 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
      v15 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = createMobileActivationError("copy_keychain_data_attributes", 842, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  v15 = 0;
  v11 = 0;
  v13 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v13;
  }

LABEL_9:
  if (a4 && !v15)
  {
    v16 = v14;
    *a4 = v14;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v17 = v15;

  return v17;
}

uint64_t delete_keychain_data(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v13 = createMobileActivationError("delete_keychain_data", 895, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v9 = 0;
    if (!a3)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v15[0] = kSecAttrLabel;
  v15[1] = kSecClass;
  v16[0] = v6;
  v16[1] = kSecClassGenericPassword;
  v15[2] = kSecUseDataProtectionKeychain;
  v16[2] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  if (v10 != -25300 && v10 != 0)
  {
    v13 = createMobileActivationError("delete_keychain_data", 916, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v7, v10);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = v13;
    v12 = 0;
    *a3 = v13;
    goto LABEL_14;
  }

  v13 = 0;
  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t store_keychain_data(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v7 && v9)
  {
    v20 = 0;
    v11 = delete_keychain_data(v8, v9, &v20);
    v12 = v20;
    if (v11)
    {
      v21[0] = kSecAttrLabel;
      v21[1] = kSecClass;
      v22[0] = v10;
      v22[1] = kSecClassGenericPassword;
      v21[2] = kSecValueData;
      v21[3] = kSecUseDataProtectionKeychain;
      v22[2] = v7;
      v22[3] = &__kCFBooleanTrue;
      v21[4] = kSecAttrService;
      v21[5] = kSecAttrAccount;
      v22[4] = @"com.apple.mobileactivationd";
      v22[5] = v10;
      v21[6] = kSecAttrAccessible;
      v22[6] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:7];
      v14 = [(NSDictionary *)v13 mutableCopy];

      if (v8)
      {
        [v14 setObject:v8 forKeyedSubscript:kSecAttrAccessGroup];
      }

      v15 = SecItemAdd(v14, 0);
      if (!v15)
      {
        v18 = 1;
        goto LABEL_14;
      }

      v16 = createMobileActivationError("store_keychain_data", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v10, v15);
    }

    else
    {
      v16 = createMobileActivationError("store_keychain_data", 946, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to delete existing keychain item.");

      v14 = 0;
    }

    v12 = v16;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = createMobileActivationError("store_keychain_data", 941, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v14 = 0;
    if (!a4)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_14;
    }
  }

  v17 = v12;
  v18 = 0;
  *a4 = v12;
LABEL_14:

  return v18;
}

uint64_t update_keychain_data(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    v16[0] = kSecAttrLabel;
    v16[1] = kSecClass;
    v17[0] = v8;
    v17[1] = kSecClassGenericPassword;
    v16[2] = kSecUseDataProtectionKeychain;
    v16[3] = kSecAttrService;
    v17[2] = &__kCFBooleanTrue;
    v17[3] = @"com.apple.mobileactivationd";
    v16[4] = kSecAttrAccount;
    v17[4] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemUpdate(v11, v9);
    if (!v12)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_10;
    }

    v13 = createMobileActivationError("update_keychain_data", 1022, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v12);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_10;
  }

  v13 = createMobileActivationError("update_keychain_data", 999, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v11 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = v13;
  v14 = 0;
  *a4 = v13;
LABEL_10:

  return v14;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_1003D1D68;
    v5 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    __getLAContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL networkReachable(NSError **a1)
{
  v2 = +[NetworkProvider sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v5 = createMobileActivationError("networkReachable", 87, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate network provider.");
    v4 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = [(NetworkProvider *)v2 networkReachable];
  v5 = 0;
  if (a1)
  {
LABEL_3:
    v5 = v5;
    *a1 = v5;
  }

LABEL_4:

  return v4;
}

NSArray *copy_required_dcrt_oids()
{
  v2[0] = @"1.2.840.113635.100.8.4";
  v2[1] = @"1.2.840.113635.100.8.12";
  v2[2] = @"1.2.840.113635.100.8.5";
  v2[3] = @"1.2.840.113635.100.8.7";
  v0 = [NSArray arrayWithObjects:v2 count:4];

  return v0;
}

NSArray *copy_critical_dcrt_oids()
{
  v2[0] = @"1.2.840.113635.100.8.4";
  v2[1] = @"1.2.840.113635.100.8.5";
  v0 = [NSArray arrayWithObjects:v2 count:2];

  return v0;
}

NSMutableSet *copy_supported_baa_oids()
{
  v0 = [NSMutableSet setWithObjects:@"1.2.840.113635.100.10.1", @"1.2.840.113635.100.10.2", @"1.2.840.113635.100.8.1", @"1.2.840.113635.100.8.2", @"1.2.840.113635.100.8.3", @"1.2.840.113635.100.8.4", @"1.2.840.113635.100.8.5", @"1.2.840.113635.100.8.6", @"1.2.840.113635.100.8.7", @"1.2.840.113635.100.8.12", @"1.2.840.113635.100.6.71.1", @"1.2.840.113635.100.6.71.2", @"1.2.840.113635.100.6.71.3", @"1.2.840.113635.100.8.9.4", @"1.2.840.113635.100.8.10.4", 0];
  if (is_virtual_machine())
  {
    v1 = [NSSet setWithObjects:@"1.2.840.113635.100.10.1", 0];
    [(NSMutableSet *)v0 minusSet:v1];
  }

  return v0;
}

CFTypeRef createReferenceKeyBlob(const void *a1, char a2, id a3, NSError **a4)
{
  v7 = a3;
  v8 = kSecAttrKeyTypeECSECPrimeRandom;
  error = 0;
  if (v7 && (v9 = [v7 objectForKeyedSubscript:@"KeySizeInBits"], v10 = isNSNumber(v9), v10, v9, v10))
  {
    v11 = [v7 objectForKeyedSubscript:@"KeySizeInBits"];
    if (([v11 isEqualToNumber:&off_1003FBDB0] & 1) == 0 && (objc_msgSend(v11, "isEqualToNumber:", &off_1003FBDC8) & 1) == 0)
    {
      v12 = createMobileActivationError("createReferenceKeyBlob", 73, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unsupported size (%@)", @"KeySizeInBits", v11);
      v13 = 0;
LABEL_20:
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v18 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v11 = &off_1003FBDB0;
  }

  v14 = +[GestaltHlpr getSharedInstance];
  v13 = [v14 copyAnswer:@"HasPKA"];

  v15 = isNSNumber(v13);
  if (!v15)
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 84, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve PKA state.");
    goto LABEL_20;
  }

  if ([v13 BOOLValue] && (a2 & 1) == 0)
  {
    v16 = kSecAttrKeyTypeECSECPrimeRandomPKA;

    v8 = v16;
  }

  if (a1)
  {
    v17 = CFRetain(a1);
    if (v17)
    {
      v18 = v17;
      goto LABEL_23;
    }
  }

  v19 = isRunningInRecovery();
  if ((v19 & 1) != 0 || isRunningInDiagnosticsMode(v19, v20))
  {
    v18 = SecAccessControlCreate();
    if (!v18)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 104, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
      goto LABEL_29;
    }

    v21 = kSecAttrAccessibleUntilReboot;
    if ((SecAccessControlSetProtection() & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 109, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v21);
LABEL_29:
      v12 = MobileActivationError;
      v23 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
    if (!v18)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 115, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control (%@).", kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate);
      goto LABEL_29;
    }
  }

LABEL_23:
  v26 = objc_alloc_init(NSMutableDictionary);
  v23 = v26;
  if (!v26)
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to alloc dictionary.");
LABEL_30:
    v24 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  [v26 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPermanent];
  [v23 setObject:kSecAttrTokenIDAppleKeyStore forKeyedSubscript:kSecAttrTokenID];
  [v23 setObject:v8 forKeyedSubscript:kSecAttrKeyType];
  [v23 setObject:v18 forKeyedSubscript:kSecAttrAccessControl];
  [v23 setObject:v11 forKeyedSubscript:kSecAttrKeySizeInBits];
  v27 = SecKeyCreateRandomKey(v23, &error);
  v25 = v27;
  if (v27)
  {
    v24 = CFRetain(v27);
    v12 = 0;
  }

  else
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 141, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create ref key.");
    v24 = 0;
  }

LABEL_31:
  if (a4 && !v24)
  {
    v28 = v12;
    *a4 = v12;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v24;
}

id create_baa_info(__SecKey *a1, id a2, NSError **a3)
{
  v4 = a2;
  error = 0;
  v5 = [NSMutableArray alloc];
  v243[0] = @"1.2.840.113635.100.8.4";
  v243[1] = @"1.2.840.113635.100.8.5";
  v243[2] = @"1.2.840.113635.100.8.7";
  v6 = [NSArray arrayWithObjects:v243 count:3];
  v7 = [v5 initWithArray:v6];

  v8 = [NSNumber numberWithUnsignedInt:0];
  v221 = v4;
  if (!v4)
  {
    v193 = 0;
    v189 = 0;
    v191 = 0;
    v25 = 0;
    v212 = 0;
    v26 = 0;
    v27 = 0;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v28 = 0;
    v29 = 1;
    v207 = &off_1003FBDF8;
    v217 = 0;
    v218 = &off_1003FBDF8;
    v208 = &off_1003FBDE0;
    goto LABEL_25;
  }

  v9 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
  v10 = isNSArray(v9);

  v184 = v8;
  if (v10)
  {
    key = a1;
    v219 = v7;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v11 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
    v12 = [v11 countByEnumeratingWithState:&v235 objects:v242 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v236;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v236 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = isNSString(*(*(&v235 + 1) + 8 * i));

          if (!v16)
          {
            v40 = [v221 objectForKeyedSubscript:@"OIDSToInclude"];
            v35 = createMobileActivationError("create_baa_info", 244, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid options (%@): %@", @"OIDSToInclude", v40);

            v195 = 0;
            v37 = 0;
            v198 = 0;
            v199 = 0;
            v201 = 0;
            v202 = 0;
            v215 = 0;
            v216 = 0;
            v197 = 0;
            v203 = 0;
            v204 = 0;
            v200 = 0;
            v214 = 0;
            v210 = 0;
            v211 = 0;
            v205 = 0;
            v206 = 0;
            v38 = 0;
            v25 = 0;
            goto LABEL_31;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v235 objects:v242 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = [NSMutableArray alloc];
    v18 = [v221 objectForKeyedSubscript:@"OIDSToInclude"];
    v7 = [v17 initWithArray:v18];

    if (is_virtual_machine())
    {
      v19 = copy_unsupported_virtual_machine_oids();
      v20 = [(NSSet *)v19 allObjects];
      [v7 removeObjectsInArray:v20];
    }

    v8 = v184;
    a1 = key;
  }

  if (([v7 containsObject:@"1.2.840.113635.100.8.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.7") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.1") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.3"))
  {
    v21 = [v7 containsObject:@"1.2.840.113635.100.8.1"];
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v219 = v7;
  v191 = [v7 containsObject:@"1.2.840.113635.100.8.7"];
  v189 = v21;
  v193 = v22;
  if (([v7 containsObject:@"1.2.840.113635.100.8.2"] & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.11.1"))
  {
    v23 = [v221 objectForKeyedSubscript:@"nonce"];
    v24 = isNSData(v23);
    if (v24)
    {
    }

    else
    {
      v52 = [v221 objectForKeyedSubscript:@"AppSpecificData"];
      v25 = isNSData(v52);

      if (!v25)
      {
        v35 = createMobileActivationError("create_baa_info", 281, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing one of the required options: %@ / %@", @"nonce", @"AppSpecificData");
        v195 = 0;
        v37 = 0;
        v198 = 0;
        v199 = 0;
        v201 = 0;
        v202 = 0;
        v215 = 0;
        v216 = 0;
        v197 = 0;
        v203 = 0;
        v204 = 0;
        v200 = 0;
        v214 = 0;
        v210 = 0;
        v211 = 0;
        v205 = 0;
        v206 = 0;
        v38 = 0;
        v16 = 0;
LABEL_31:
        v39 = 0;
        v212 = 0;
        v213 = 0;
        v217 = 0;
        keya = 0;
        v190 = 0;
        v196 = 0;
        v209 = 0;
        v41 = 0;
        v42 = 0;
        v192 = 0;
        v194 = 0;
        v34 = v184;
        goto LABEL_118;
      }
    }

    v53 = [v221 objectForKeyedSubscript:@"nonce"];
    v54 = [v221 objectForKeyedSubscript:@"AppSpecificData"];
    v55 = v54;
    v215 = v53;
    if (v54)
    {
      v39 = isNSData(v54);

      v8 = v184;
      if (!v39)
      {
        v214 = v55;
        v34 = v184;
        v35 = createMobileActivationError("create_baa_info", 290, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@).", @"AppSpecificData");
        v195 = 0;
        v37 = 0;
        v198 = 0;
        v199 = 0;
        v201 = 0;
        v202 = 0;
        v216 = 0;
        v197 = 0;
        v203 = 0;
LABEL_65:
        v200 = 0;
        v204 = 0;
        v205 = 0;
        v210 = 0;
        v211 = 0;
        v206 = 0;
        v38 = 0;
        v16 = 0;
        v25 = 0;
LABEL_117:
        v212 = 0;
        v213 = 0;
        v217 = 0;
        keya = 0;
        v190 = 0;
        v196 = 0;
        v209 = 0;
        v41 = 0;
        v42 = 0;
        v192 = 0;
        v194 = 0;
LABEL_118:
        v218 = &off_1003FBDF8;
        v207 = &off_1003FBDF8;
        v208 = &off_1003FBDE0;
        goto LABEL_119;
      }

      if ([v55 length] >= 0x41)
      {
        v214 = v55;
        v56 = createMobileActivationError("create_baa_info", 295, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"AppSpecificData", [v55 length]);
        v34 = v184;
LABEL_113:
        v35 = v56;
LABEL_114:
        v195 = 0;
        v37 = 0;
        v198 = 0;
        v199 = 0;
        v201 = 0;
        v202 = 0;
        v216 = 0;
        v197 = 0;
        v203 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      v8 = v184;
    }
  }

  else
  {
    v215 = 0;
    v55 = 0;
  }

  v59 = [v221 objectForKeyedSubscript:@"CertType"];
  v60 = isNSNumber(v59);

  v214 = v55;
  if (v60)
  {
    v61 = [v221 objectForKeyedSubscript:@"CertType"];
    v62 = v8;
    v8 = v61;

    v63 = [NSNumber numberWithUnsignedInt:0];
    if ([(NSNumber *)v8 isEqualToNumber:v63])
    {
LABEL_62:

      goto LABEL_69;
    }

    v64 = [NSNumber numberWithUnsignedInt:1];
    if ([(NSNumber *)v8 isEqualToNumber:v64])
    {

      goto LABEL_62;
    }

    v67 = [NSNumber numberWithUnsignedInt:2];
    v68 = [(NSNumber *)v8 isEqualToNumber:v67];

    if ((v68 & 1) == 0)
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 305, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"CertType", v8);
      goto LABEL_112;
    }
  }

LABEL_69:
  v69 = [NSNumber numberWithUnsignedInt:1];
  v70 = [(NSNumber *)v8 isEqualToNumber:v69];

  if (v70)
  {
    if (!device_supports_mfi_certificates())
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 312, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type not supported on this platform: %@", v8);
      goto LABEL_112;
    }

    if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) == 0)
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 317, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required OID for certificate type (%@): %@", v8, @"1.2.840.113635.100.6.71.1");
LABEL_112:
      v56 = MobileActivationError;
      goto LABEL_113;
    }
  }

  else if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.3"))
  {
    v34 = v8;
    MobileActivationError = createMobileActivationError("create_baa_info", 324, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid OID(s) for requested certificate type: %@", v8);
    goto LABEL_112;
  }

  if ([v7 containsObject:@"1.2.840.113635.100.6.71.1"] && (v72 = objc_msgSend(v221, "objectForKeyedSubscript:", @"MFiProperties"), v73 = isNSData(v72), v73, v72, v73))
  {
    v74 = [v221 objectForKeyedSubscript:@"MFiProperties"];
    v75 = [v74 length];

    if (v75 != 32)
    {
      v34 = v8;
      v122 = [v221 objectForKeyedSubscript:@"MFiProperties"];
      v35 = createMobileActivationError("create_baa_info", 332, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiProperties", [v122 length]);

      goto LABEL_114;
    }

    v203 = [v221 objectForKeyedSubscript:@"MFiProperties"];
  }

  else
  {
    v203 = 0;
  }

  if (![v7 containsObject:@"1.2.840.113635.100.6.71.2"])
  {
    v38 = 0;
    v115 = 0;
    goto LABEL_130;
  }

  v101 = [v221 objectForKeyedSubscript:@"MFiPPUID"];
  v39 = isNSString(v101);

  if (!v39)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 342, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", @"MFiPPUID");
    v195 = 0;
    v37 = 0;
    v198 = 0;
    v199 = 0;
    v201 = 0;
    v202 = 0;
    v216 = 0;
    v197 = 0;
    goto LABEL_65;
  }

  v102 = [v221 objectForKeyedSubscript:@"MFiPPUID"];
  v103 = [v102 length];

  if (v103 >= 0x25)
  {
    v34 = v8;
    v104 = [v221 objectForKeyedSubscript:@"MFiPPUID"];
    v35 = createMobileActivationError("create_baa_info", 347, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiPPUID", [v104 length]);

    v195 = 0;
    v37 = 0;
    v198 = 0;
    v199 = 0;
    v201 = 0;
    v202 = 0;
    v216 = 0;
    v197 = 0;
LABEL_115:
    v200 = 0;
    v204 = 0;
    v205 = 0;
    v210 = 0;
    v206 = 0;
    v38 = 0;
LABEL_116:
    v16 = 0;
    v211 = 0;
    v25 = 0;
    v39 = 0;
    goto LABEL_117;
  }

  v123 = [v221 objectForKeyedSubscript:@"MFiPPUID"];
  v38 = [v123 stringByPaddingToLength:36 withString:&stru_1003F4CD8 startingAtIndex:0];

  if (!v38)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 356, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to pad string.");
    v195 = 0;
    v37 = 0;
    v198 = 0;
    v199 = 0;
    v201 = 0;
    v202 = 0;
    v216 = 0;
    v197 = 0;
    v200 = 0;
    v204 = 0;
    v205 = 0;
    v210 = 0;
    v206 = 0;
    goto LABEL_116;
  }

  v115 = [v38 dataUsingEncoding:4];
  if (!v115)
  {
    v34 = v8;
    v197 = v38;
    v35 = createMobileActivationError("create_baa_info", 362, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to convert string to data.");
    v195 = 0;
    v37 = 0;
    v198 = 0;
    v199 = 0;
    goto LABEL_150;
  }

LABEL_130:
  v198 = v115;
  v197 = v38;
  if (![v7 containsObject:@"1.2.840.113635.100.6.71.3"])
  {
    v202 = 0;
    goto LABEL_154;
  }

  v116 = [v221 objectForKeyedSubscript:@"MFiData"];
  v39 = isNSData(v116);

  if (!v39)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", @"MFiData");
    v195 = 0;
    v37 = 0;
    v199 = 0;
    v201 = 0;
    v202 = 0;
    v216 = 0;
    goto LABEL_65;
  }

  v117 = [v221 objectForKeyedSubscript:@"MFiData"];
  v118 = [v117 length];

  if (v118 >= 0x4B0)
  {
    v34 = v8;
    v119 = [v221 objectForKeyedSubscript:@"MFiData"];
    v35 = createMobileActivationError("create_baa_info", 374, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiData", [v119 length]);

    v195 = 0;
    v37 = 0;
    v199 = 0;
LABEL_150:
    v201 = 0;
    v202 = 0;
    v216 = 0;
    goto LABEL_115;
  }

  v202 = [v221 objectForKeyedSubscript:@"MFiData"];
LABEL_154:
  v124 = [v221 objectForKeyedSubscript:@"UseRKSigningInterface"];
  v125 = isNSNumber(v124);

  if (v125)
  {
    v126 = [v221 objectForKeyedSubscript:@"UseRKSigningInterface"];
    v28 = [v126 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  v127 = [v221 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
  v128 = isNSNumber(v127);

  if (v128)
  {
    v129 = [v221 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v29 = [v129 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  v130 = [v221 objectForKeyedSubscript:@"Validity"];
  v131 = isNSNumber(v130);

  if (v131)
  {
    v132 = [v221 objectForKeyedSubscript:@"Validity"];
    v208 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v132 unsignedIntegerValue]);
  }

  else
  {
    v208 = &off_1003FBDE0;
  }

  v133 = [v221 objectForKeyedSubscript:@"CACert"];
  v134 = isNSNumber(v133);

  if (v134)
  {
    v135 = [v221 objectForKeyedSubscript:@"CACert"];
    v207 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v135 unsignedIntegerValue]);
  }

  else
  {
    v207 = &off_1003FBDF8;
  }

  v136 = [v221 objectForKeyedSubscript:@"scrtAttestation"];
  v137 = isNSNumber(v136);

  if (v137)
  {
    v138 = [v221 objectForKeyedSubscript:@"scrtAttestation"];
    v218 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v138 unsignedIntegerValue]);
  }

  else
  {
    v218 = &off_1003FBDF8;
  }

  v139 = [v221 objectForKeyedSubscript:@"ClientAttestationData"];
  v140 = isNSData(v139);

  if (!v140)
  {
    v25 = 0;
    v217 = 0;
LABEL_174:
    v212 = 0;
    goto LABEL_175;
  }

  v141 = [v221 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v25 = isNSData(v141);

  if (!v25)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 411, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", @"ClientAttestationPublicKey");
    v195 = 0;
    v37 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v216 = 0;
    v217 = 0;
    v204 = 0;
    v205 = 0;
    v210 = 0;
    v211 = 0;
    v206 = 0;
    v38 = 0;
    v16 = 0;
    v39 = 0;
    v212 = 0;
    goto LABEL_83;
  }

  v25 = [v221 objectForKeyedSubscript:@"ClientAttestationData"];
  v217 = [v221 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v142 = [v221 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
  v143 = isNSData(v142);

  if (!v143)
  {
    goto LABEL_174;
  }

  v212 = [v221 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
LABEL_175:
  v144 = [v221 objectForKeyedSubscript:@"AppID"];
  v145 = isNSString(v144);

  if (v145)
  {
    v200 = [v221 objectForKeyedSubscript:@"AppID"];
  }

  else
  {
    v200 = 0;
  }

  v146 = [v221 objectForKeyedSubscript:@"LiveImage4Manifest"];
  v147 = isNSData(v146);

  if (v147)
  {
    v201 = [v221 objectForKeyedSubscript:@"LiveImage4Manifest"];
  }

  else
  {
    v201 = 0;
  }

  v148 = [v221 objectForKeyedSubscript:@"RepairImage4Manifest"];
  v149 = isNSData(v148);

  if (v149)
  {
    v199 = [v221 objectForKeyedSubscript:@"RepairImage4Manifest"];
  }

  else
  {
    v199 = 0;
  }

  v27 = v214;
  v26 = v215;
LABEL_25:
  v219 = v7;
  v214 = v27;
  v215 = v26;
  if (is_virtual_machine())
  {
    v30 = v8;
    v31 = a1;
    v234 = 0;
    v32 = vm_copy_host_certificate(0, &v234);
    v33 = v234;
    v216 = v32;
    if (!v32)
    {
      v213 = v25;
      v35 = createMobileActivationError("create_baa_info", 440, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to copy VM host certificate.");

      v195 = 0;
      v196 = 0;
      v37 = 0;
      v216 = 0;
      v204 = 0;
      v205 = 0;
      v210 = 0;
      v211 = 0;
      v206 = 0;
      v38 = 0;
      v16 = 0;
      v25 = 0;
      v39 = 0;
      keya = 0;
      v190 = 0;
      v209 = 0;
      v41 = 0;
      v42 = 0;
      v192 = 0;
      v194 = 0;
      v34 = v30;
      goto LABEL_119;
    }

    a1 = v31;
    v8 = v30;
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v216 = 0;
    v33 = 0;
    if (!a1)
    {
LABEL_28:
      v213 = v25;
      v34 = v8;
      v35 = createMobileActivationError("create_baa_info", 472, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
      v36 = v33;
LABEL_29:

      v195 = 0;
      v37 = 0;
      v204 = 0;
      v205 = 0;
      v210 = 0;
      v211 = 0;
      v206 = 0;
      v38 = 0;
      v16 = 0;
      v25 = 0;
      v39 = 0;
LABEL_84:
      keya = 0;
      v190 = 0;
      v196 = 0;
      v209 = 0;
      v41 = 0;
      v42 = 0;
      v192 = 0;
      v194 = 0;
      goto LABEL_119;
    }
  }

  if (v25)
  {
    v43 = 0;
  }

  else
  {
    v43 = v28;
  }

  if (v43 != 1)
  {
    v183 = 0;
    v185 = v8;
    v180 = 0;
    v182 = 0;
LABEL_53:
    v213 = v25;
    v230 = v33;
    v231 = 0;
    v57 = security_copy_system_key(0, &v231, &v230);
    v181 = v231;
    v58 = v230;

    if (!v57)
    {
      v35 = createMobileActivationError("create_baa_info", 524, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy SIK attestation key.");

      v192 = 0;
      v194 = 0;
      v42 = 0;
      v41 = 0;
      v209 = 0;
      v210 = 0;
      keya = 0;
      v190 = 0;
      v195 = 0;
      v196 = 0;
      v25 = 0;
      v211 = 0;
      v16 = 0;
      v38 = 0;
      v205 = 0;
      v206 = 0;
      v204 = 0;
      v65 = 0;
      v66 = v180;
      v39 = v181;
      goto LABEL_197;
    }

    v39 = v181;
    if ([(NSNumber *)v218 BOOLValue])
    {
      v25 = 0;
      v179 = 0;
    }

    else
    {
      v228 = v58;
      v229 = 0;
      v76 = v58;
      v77 = security_copy_system_key(2, &v229, &v228);
      v25 = v229;
      v78 = v228;

      v179 = v77;
      if (!v77)
      {
        v121 = v57;
        v35 = createMobileActivationError("create_baa_info", 533, @"com.apple.MobileActivation.ErrorDomain", -1, v78, @"Failed to copy UIK attestation key.");

        CFRelease(v121);
        v192 = 0;
        v194 = 0;
        v42 = 0;
        v41 = 0;
        v209 = 0;
        v210 = 0;
        keya = 0;
        v190 = 0;
        v195 = 0;
        v196 = 0;
        v211 = 0;
        v16 = 0;
        v38 = 0;
        v205 = 0;
        v206 = 0;
        v204 = 0;
        v65 = 0;
        v66 = v180;
        goto LABEL_197;
      }

      v58 = v78;
    }

    cf = v57;
    v178 = objc_alloc_init(NSMutableDictionary);
    if (v178)
    {
      if (-[NSNumber BOOLValue](v218, "BOOLValue") || (v79 = +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v80 = copy_ucrt_path(v79), v81 = [v80 stringByAppendingPathComponent:@"ucrt.pem"], v82 = -[NSFileManager fileExistsAtPath:](v79, "fileExistsAtPath:", v81), v81, v80, v79, (v82 & 1) != 0))
      {
        v83 = +[GestaltHlpr getSharedInstance];
        v16 = [v83 copyAnswer:@"UniqueChipID"];

        v41 = isNSNumber(v16);
        if (v41)
        {
          keyb = a1;
          v84 = +[GestaltHlpr getSharedInstance];
          v85 = [v84 copyAnswer:@"ChipID"];

          v176 = v85;
          v41 = isNSNumber(v85);

          if (!v41)
          {
            v35 = createMobileActivationError("create_baa_info", 562, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"ChipID");

            v192 = 0;
            v194 = 0;
            v209 = 0;
            v210 = 0;
            keya = 0;
            v190 = 0;
            v195 = 0;
            v196 = 0;
            v211 = 0;
            v205 = 0;
            v206 = 0;
            v204 = 0;
            v65 = 0;
            v39 = v181;
LABEL_193:
            v42 = v178;
LABEL_194:
            v38 = v176;
LABEL_195:
            v66 = v180;
            CFRelease(cf);
            if (v179)
            {
              CFRelease(v179);
            }

LABEL_197:
            if (v66)
            {
              CFRelease(v66);
            }

            v150 = v182;
            if (!v182)
            {
              goto LABEL_201;
            }

            goto LABEL_200;
          }

          v175 = v16;
          v86 = +[GestaltHlpr getSharedInstance];
          v87 = [v86 copyAnswer:@"BoardId"];

          v206 = v87;
          v41 = isNSNumber(v87);

          if (v41)
          {
            v88 = +[GestaltHlpr getSharedInstance];
            v89 = [v88 copyAnswer:@"SecurityDomain"];

            v205 = v89;
            v41 = isNSNumber(v89);

            if (v41)
            {
              v90 = +[GestaltHlpr getSharedInstance];
              v91 = [v90 copyAnswer:@"SerialNumber"];

              v65 = isNSString(v91);
              v210 = v91;
              if (v65)
              {
                if (![v91 length])
                {
                  v92 = [(NSNumber *)v218 BOOLValue];
                  if (v92)
                  {
                    if (isRunningInDiagnosticsMode(v92, v93))
                    {

                      v210 = 0;
                    }
                  }
                }

                v94 = +[GestaltHlpr getSharedInstance];
                v95 = [v94 copyAnswer:@"BuildVersion"];

                v65 = isNSString(v95);
                v204 = v95;
                if (v65)
                {
                  v96 = SecKeyCopyPublicKey(keyb);
                  if (v96)
                  {
                    v65 = v96;
                    v211 = SecKeyCopyExternalRepresentation(v96, &error);
                    if (v211)
                    {
                      if (v212)
                      {
                        v227 = v58;
                        v97 = &v227;
                        v98 = &v227;
                        v99 = keyb;
                        v100 = 7;
                      }

                      else
                      {
                        if ([(NSNumber *)v218 BOOLValue])
                        {
                          v100 = 0;
                        }

                        else
                        {
                          v100 = 2;
                        }

                        v226 = v58;
                        v97 = &v226;
                        v98 = &v226;
                        v99 = keyb;
                      }

                      v151 = security_create_system_key_attestation(v99, v100, v215, v98);
                      v152 = *v97;

                      if (v151)
                      {
                        v153 = @"RKCertification";
                        if (v213)
                        {
                          [v178 setObject:v213 forKeyedSubscript:@"RKCertification"];
                          [v178 setObject:v151 forKeyedSubscript:@"RKSigning"];
                          v153 = @"RKSigningPub";
                          v154 = v178;
                          v155 = v211;
                        }

                        else
                        {
                          v154 = v178;
                          v155 = v151;
                        }

                        [v154 setObject:v155 forKeyedSubscript:v153];
                        v156 = [NSMutableDictionary alloc];
                        v240[0] = @"UniqueChipID";
                        v240[1] = @"ChipID";
                        v241[0] = v175;
                        v241[1] = v176;
                        v240[2] = @"BoardId";
                        v240[3] = @"SecurityDomain";
                        v241[2] = v206;
                        v241[3] = v205;
                        v240[4] = @"OsBuildVersion";
                        v240[5] = @"scrtAttestation";
                        v241[4] = v204;
                        v241[5] = v218;
                        v240[6] = @"CertType";
                        v240[7] = @"Validity";
                        v241[6] = v185;
                        v241[7] = v208;
                        v240[8] = @"CACert";
                        v240[9] = @"OIDSToInclude";
                        v241[8] = v207;
                        v241[9] = v7;
                        v240[10] = @"SIKPub";
                        v39 = v181;
                        v241[10] = v181;
                        v157 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:11];
                        v158 = [v156 initWithDictionary:v157];
                        v159 = v157;
                        v160 = v158;

                        if (v210)
                        {
                          [v160 setObject:v210 forKeyedSubscript:@"SerialNumber"];
                        }

                        if (v213)
                        {
                          [v160 setObject:v217 forKeyedSubscript:@"RKCertificationPub"];
                          [v160 setObject:v211 forKeyedSubscript:@"RKSigningPub"];
                          if (v212)
                          {
                            [v160 setObject:v212 forKeyedSubscript:@"DirectAttestationCertificate"];
                          }
                        }

                        else
                        {
                          [v160 setObject:v211 forKeyedSubscript:@"RKCertificationPub"];
                        }

                        if (v216)
                        {
                          [v160 setObject:v216 forKeyedSubscript:@"VMHostIdentityCertificate"];
                        }

                        if (v25)
                        {
                          [v160 setObject:v25 forKeyedSubscript:@"UIKPub"];
                        }

                        if (v214)
                        {
                          [v160 setObject:v214 forKeyedSubscript:@"AppSpecificData"];
                        }

                        v161 = copy_trusted_local_policy_hash();

                        v209 = v160;
                        v196 = v151;
                        if (v161)
                        {
                          v225 = v152;
                          v162 = copyPersonalizedFirmwareData(9, &v225);
                          v163 = v225;

                          if (!v162)
                          {
                            v35 = createMobileActivationError("create_baa_info", 710, @"com.apple.MobileActivation.ErrorDomain", -1, v163, @"Failed to load cryptex1 local policy.");

                            v192 = 0;
                            v194 = 0;
                            v41 = 0;
                            keya = 0;
                            v190 = 0;
                            v195 = 0;
                            goto LABEL_192;
                          }

                          [v209 setObject:v162 forKeyedSubscript:@"LocalPolicy"];
                          v152 = v163;
                        }

                        else
                        {
                          v162 = 0;
                        }

                        v195 = v162;
                        if (!v193)
                        {
                          v194 = 0;
                          goto LABEL_239;
                        }

                        v224 = v152;
                        v164 = copyPersonalizedFirmwareData(2, &v224);
                        v165 = v224;

                        if (v164)
                        {
                          v194 = v164;
                          [v209 setObject:? forKeyedSubscript:?];
                          v166 = copy_sfr_manifest();
                          [v209 setObject:v166 forKeyedSubscript:@"FWImage4Manifest"];

                          v152 = v165;
LABEL_239:
                          v167 = v191;
                          if (!v161)
                          {
                            v167 = 0;
                          }

                          if (v167 != 1)
                          {
                            v192 = 0;
                            v42 = v178;
                            v170 = v209;
LABEL_245:
                            if (v200)
                            {
                              [v170 setObject:v200 forKeyedSubscript:@"AppID"];
                            }

                            if (v203)
                            {
                              [v170 setObject:v203 forKeyedSubscript:@"MFiProperties"];
                            }

                            if (v198)
                            {
                              [v170 setObject:v198 forKeyedSubscript:@"MFiPPUID"];
                            }

                            if (v202)
                            {
                              [v170 setObject:v202 forKeyedSubscript:@"MFiData"];
                            }

                            if (v201)
                            {
                              [v170 setObject:v201 forKeyedSubscript:@"LiveImage4Manifest"];
                            }

                            if (v199)
                            {
                              [v170 setObject:v199 forKeyedSubscript:@"RepairImage4Manifest"];
                            }

                            v222 = 0;
                            v171 = [NSPropertyListSerialization dataWithPropertyList:v170 format:100 options:0 error:&v222];
                            v35 = v222;

                            if (v171)
                            {
                              [v42 setObject:v171 forKeyedSubscript:@"RKProperties"];
                              v190 = v171;
                              v172 = SecKeyCreateSignature(keyb, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v171, &error);
                              if (v172)
                              {
                                keya = v172;
                                [v42 setObject:v172 forKeyedSubscript:@"RKPropertiesSignature"];
                                v41 = v42;
LABEL_266:
                                v16 = v175;
                                goto LABEL_194;
                              }

                              v173 = createMobileActivationError("create_baa_info", 841, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.");

                              v41 = 0;
                            }

                            else
                            {
                              v173 = createMobileActivationError("create_baa_info", 830, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Could not convert dictionary to xml data.");

                              v41 = 0;
                              v190 = 0;
                            }

                            keya = 0;
                            v35 = v173;
                            goto LABEL_266;
                          }

                          v223 = v152;
                          v168 = copyPersonalizedFirmwareData(10, &v223);
                          v169 = v223;

                          if (v168)
                          {
                            v170 = v209;
                            v192 = v168;
                            [v209 setObject:v168 forKeyedSubscript:@"Cryptex1Image4Manifest"];
                            v152 = v169;
                            v42 = v178;
                            goto LABEL_245;
                          }

                          v35 = createMobileActivationError("create_baa_info", 791, @"com.apple.MobileActivation.ErrorDomain", -1, v169, @"Failed to load cryptex1 manifest.");

                          v190 = 0;
                          v192 = 0;
                          v41 = 0;
                          keya = 0;
                          goto LABEL_192;
                        }

                        if (v189)
                        {
                          v174 = createMobileActivationError("create_baa_info", 725, @"com.apple.MobileActivation.ErrorDomain", -1, v165, @"Failed to load boot manifest.");
                        }

                        else
                        {
                          v174 = createMobileActivationError("create_baa_info", 745, @"com.apple.MobileActivation.ErrorDomain", -1, v165, @"Failed to load boot manifest.");
                        }

                        v35 = v174;

                        v192 = 0;
                        v194 = 0;
                        v41 = 0;
                        keya = 0;
                        v190 = 0;
                        goto LABEL_191;
                      }

                      v35 = createMobileActivationError("create_baa_info", 622, @"com.apple.MobileActivation.ErrorDomain", -1, v152, @"Failed to create reference key attestation (nonce: %@).", v215);

                      v192 = 0;
                      v194 = 0;
                      v41 = 0;
                      v209 = 0;
                      keya = 0;
                      v190 = 0;
                      v196 = 0;
                    }

                    else
                    {
                      v35 = createMobileActivationError("create_baa_info", 609, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK public key as data.");

                      v192 = 0;
                      v194 = 0;
                      v41 = 0;
                      v209 = 0;
                      keya = 0;
                      v190 = 0;
                      v196 = 0;
                      v211 = 0;
                    }
                  }

                  else
                  {
                    v35 = createMobileActivationError("create_baa_info", 603, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");

                    v192 = 0;
                    v194 = 0;
                    v41 = 0;
                    v209 = 0;
                    keya = 0;
                    v190 = 0;
                    v196 = 0;
                    v211 = 0;
                    v65 = 0;
                  }

                  v195 = 0;
                  v39 = v181;
                  goto LABEL_192;
                }

                v35 = createMobileActivationError("create_baa_info", 594, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to retrieve %@.", @"BuildVersion");

                v192 = 0;
                v194 = 0;
                v41 = 0;
                v209 = 0;
                keya = 0;
                v190 = 0;
                v196 = 0;
                v211 = 0;
              }

              else
              {
                v35 = createMobileActivationError("create_baa_info", 580, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"SerialNumber");

                v192 = 0;
                v194 = 0;
                v41 = 0;
                v209 = 0;
                keya = 0;
                v190 = 0;
                v196 = 0;
                v211 = 0;
                v204 = 0;
              }

LABEL_190:
              v195 = 0;
LABEL_191:
              v39 = v181;
LABEL_192:
              v16 = v175;
              goto LABEL_193;
            }

            v35 = createMobileActivationError("create_baa_info", 574, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"SecurityDomain");

            v192 = 0;
            v194 = 0;
            v209 = 0;
            keya = 0;
            v190 = 0;
            v196 = 0;
            v211 = 0;
          }

          else
          {
            v35 = createMobileActivationError("create_baa_info", 568, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"BoardId");

            v192 = 0;
            v194 = 0;
            v209 = 0;
            keya = 0;
            v190 = 0;
            v196 = 0;
            v211 = 0;
            v205 = 0;
          }

          v210 = 0;
          v204 = 0;
          v65 = 0;
          goto LABEL_190;
        }

        v35 = createMobileActivationError("create_baa_info", 556, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"UniqueChipID");

        v192 = 0;
        v194 = 0;
        v209 = 0;
        v210 = 0;
        keya = 0;
        v190 = 0;
        v195 = 0;
        v196 = 0;
        v211 = 0;
        v38 = 0;
        v205 = 0;
        v206 = 0;
        v204 = 0;
        v65 = 0;
        v39 = v181;
      }

      else
      {
        v35 = createMobileActivationError("create_baa_info", 548, @"com.apple.MobileActivation.ErrorDomain", -4, 0, @"UCRT is unavailable.");

        v192 = 0;
        v194 = 0;
        v41 = 0;
        v209 = 0;
        v210 = 0;
        keya = 0;
        v190 = 0;
        v195 = 0;
        v196 = 0;
        v211 = 0;
        v16 = 0;
        v38 = 0;
        v205 = 0;
        v206 = 0;
        v204 = 0;
        v65 = 0;
        v39 = v181;
      }
    }

    else
    {
      v35 = createMobileActivationError("create_baa_info", 541, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

      v192 = 0;
      v194 = 0;
      v41 = 0;
      v209 = 0;
      v210 = 0;
      keya = 0;
      v190 = 0;
      v195 = 0;
      v196 = 0;
      v211 = 0;
      v16 = 0;
      v38 = 0;
      v205 = 0;
      v206 = 0;
      v204 = 0;
      v65 = 0;
    }

    v42 = v178;
    goto LABEL_195;
  }

  if ([(NSNumber *)v218 BOOLValue])
  {
    v44 = 0;
  }

  else
  {
    v44 = 2;
  }

  v233 = v33;
  v25 = security_create_system_key_attestation(a1, v44, v26, &v233);
  v45 = v233;

  if (!v25)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 482, @"com.apple.MobileActivation.ErrorDomain", -1, v45, @"Failed to create reference key attestation.");

    v195 = 0;
    v37 = 0;
    v204 = 0;
    v205 = 0;
    v210 = 0;
    v211 = 0;
    v206 = 0;
    v38 = 0;
    v16 = 0;
    v39 = 0;
LABEL_83:
    v213 = 0;
    goto LABEL_84;
  }

  v46 = SecKeyCopyPublicKey(a1);
  v213 = v25;
  if (!v46)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 488, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
    v36 = v45;
    goto LABEL_29;
  }

  v182 = v46;
  v47 = SecKeyCopyExternalRepresentation(v46, &error);

  v185 = v8;
  if (!v47)
  {
    v120 = createMobileActivationError("create_baa_info", 494, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.");
LABEL_140:
    v35 = v120;
    v183 = 0;
    goto LABEL_187;
  }

  v48 = SecAccessControlCreate();
  if (!v48)
  {
    v120 = createMobileActivationError("create_baa_info", 502, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
    goto LABEL_140;
  }

  v49 = kSecAttrAccessibleUntilReboot;
  v50 = v48;
  v183 = v48;
  if (SecAccessControlSetProtection())
  {
    v232 = v45;
    ReferenceKeyBlob = createReferenceKeyBlob(v50, v29, v221, &v232);
    v33 = v232;

    if (ReferenceKeyBlob)
    {
      v217 = v47;
      v180 = ReferenceKeyBlob;
      a1 = ReferenceKeyBlob;
      goto LABEL_53;
    }

    v35 = createMobileActivationError("create_baa_info", 513, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to create reference key.");
    v45 = v33;
  }

  else
  {
    v35 = createMobileActivationError("create_baa_info", 507, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v49);
  }

LABEL_187:

  v192 = 0;
  v194 = 0;
  v42 = 0;
  v41 = 0;
  v209 = 0;
  v210 = 0;
  keya = 0;
  v190 = 0;
  v195 = 0;
  v196 = 0;
  v39 = 0;
  v25 = 0;
  v211 = 0;
  v16 = 0;
  v38 = 0;
  v205 = 0;
  v206 = 0;
  v204 = 0;
  v217 = v47;
  v65 = 0;
  v150 = v182;
LABEL_200:
  CFRelease(v150);
LABEL_201:
  if (v65)
  {
    CFRelease(v65);
  }

  v37 = v183;
  v34 = v185;
LABEL_119:
  if (error)
  {
    v105 = v38;
    v106 = v42;
    v107 = v16;
    v108 = v35;
    v109 = v25;
    v110 = v39;
    v111 = v37;
    CFRelease(error);
    v37 = v111;
    v39 = v110;
    v25 = v109;
    v35 = v108;
    v16 = v107;
    v42 = v106;
    v38 = v105;
  }

  error = 0;
  if (v37)
  {
    CFRelease(v37);
  }

  if (a3 && !v41)
  {
    v112 = v35;
    *a3 = v35;
  }

  v113 = v41;

  return v113;
}