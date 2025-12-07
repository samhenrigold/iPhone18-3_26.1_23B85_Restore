id AppleTimeSyncAudioClockFactory(uint64_t a1, const void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleTimeSyncAudioClockFactory factory for AudioServerPlugin\n", buf, 2u);
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = +[ATSACCAPlugin sharedPlugin];
  v5 = [v4 driverRef];

  return v5;
}

uint64_t sub_1134(uint64_t a1)
{
  _sharedPlugin = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_12F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setupIOKitMatching];
  v3 = +[TSClockManager sharedClockManager];
  [v3 addClient:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_1648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_170C;
  v6[3] = &unk_C3B0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_170C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) propertyForKey:@"ClockIdentifier"];
      if (v4)
      {
        v5 = v4;
        [WeakRetained addClockWithIdentifier:{objc_msgSend(v4, "unsignedLongLongValue")}];
      }

      else
      {
        sub_6348();
      }
    }

    else
    {
      sub_6298();
    }
  }

  else
  {
    sub_63F8();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_17C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1884;
  v6[3] = &unk_C3B0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_1884(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) propertyForKey:@"ClockIdentifier"];
      if (v4)
      {
        v5 = v4;
        [WeakRetained removeClockWithIdentifier:objc_msgSend(v4 force:{"unsignedLongLongValue"), 1}];
      }

      else
      {
        sub_6558();
      }
    }

    else
    {
      sub_64A8();
    }
  }

  else
  {
    sub_6608();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_193C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 32) primeNotification];
  [*(*(a1 + 32) + 40) primeNotification];

  objc_autoreleasePoolPop(v2);
}

void sub_1A30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ATSAC interruption cleanup", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BCC;
  block[3] = &unk_C388;
  block[4] = v3;
  dispatch_sync(v4, block);
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 64));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1E58;
  v11[3] = &unk_C388;
  v11[4] = *(a1 + 32);
  [TSClockManager notifyWhenClockManagerIsAvailable:v11];
  objc_autoreleasePoolPop(v2);
}

void sub_1BCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1DC4;
  v18 = sub_1DD4;
  v19 = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DDC;
  block[3] = &unk_C400;
  block[4] = v3;
  block[5] = &v14;
  dispatch_sync(v4, block);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v15[5];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) removeClockWithIdentifier:objc_msgSend(*(*(&v9 + 1) + 8 * v8) force:{"unsignedLongLongValue", v9), 1}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_1D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) allKeys];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_1E58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setupIOKitMatching];
  v3 = +[TSClockManager sharedClockManager];
  [v3 addClient:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_1F40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSNumber numberWithLongLong:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [[ATSACCAClockDevice alloc] initWithClockIdentifier:*(a1 + 40) withPlugin:*(a1 + 32)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(ATSACCAClockDevice *)v4 objectID];
      v6 = *(a1 + 40);
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Creating device %@ (%u) for clock identifier 0x%016llx", &v8, 0x1Cu);
    }

    if (v4)
    {
      [*(*(a1 + 32) + 16) setObject:v4 forKeyedSubscript:v3];
      [*(a1 + 32) addClockDevice:v4];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = 134217984;
        v9 = v7;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not create clock device for clock identifier 0x%016llx\n", &v8, 0xCu);
      }

      v4 = 0;
    }
  }

  [(ATSACCAClockDevice *)v4 setReferenceCount:[(ATSACCAClockDevice *)v4 referenceCount]+ 1];

  objc_autoreleasePoolPop(v2);
}

void sub_2190(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSNumber numberWithLongLong:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    [v4 setReferenceCount:{objc_msgSend(v4, "referenceCount") - 1}];
    if (![v5 referenceCount] || *(a1 + 48) == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v5 objectID];
        v7 = *(a1 + 40);
        v8 = 138412802;
        v9 = v5;
        v10 = 1024;
        v11 = v6;
        v12 = 2048;
        v13 = v7;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Destroying device %@ (%u) for clock identifier 0x%016llx", &v8, 0x1Cu);
      }

      [*(a1 + 32) removeClockDevice:v5];
      [*(*(a1 + 32) + 16) removeObjectForKey:v3];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v3 unsignedLongLongValue];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Clock Device does not exist for clock identifier 0x%016llx\n", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2448(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 0x3Au);
}

uint64_t sub_2BD8(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(a1 + 32);
  v5 = atomic_load((v4 + 32));
  v6 = (*(v4 + 8) + 24 * v5);
  v7 = v6[1];
  v8 = v6[2];
  *a2 = *v6;
  *a3 = v7;
  *a4 = v8;
  return 0;
}

void sub_3184(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = mach_absolute_time();
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v3 - v5 <= *(a1 + 48))
  {
    v10 = *(v4 + 32);
    v54 = *(v4 + 56);
    v11 = *(v4 + 88);
    *(v4 + 32) = *(a1 + 56) + v10;
    v12 = &NSObject__properties;
    v53 = v2;
    if (v11 == 1)
    {
      v13 = v10;
      *(*(a1 + 32) + 24) += *(*(a1 + 32) + 80);
      v14 = *(a1 + 32);
      v15 = (v14[10] + v14[3] + *(a1 + 64));
      [v14 clockIdentifier];
      kdebug_trace();
LABEL_29:
      v35 = *(a1 + 32);
      v36 = v35[5];
      v35[5] = v36 + [v35 timestampPeriod];
      *(*(a1 + 32) + 56) = [*(*(a1 + 32) + 136) addTimestamp:*(*(a1 + 32) + 24)];
      *(*(a1 + 32) + 72) = *(*(a1 + 32) + 56) - v54;
      v37 = *(a1 + 32);
      v38 = v37[5];
      v39 = v37[7];
      v40 = v37[6];
      v37 += 19;
      v41 = v37 + 4;
      v42 = atomic_load(v37 + 4);
      v43 = (v42 + 1) % *v37;
      v44 = (v37[1] + 24 * v43);
      *v44 = v38;
      v44[1] = v39;
      v44[2] = v40;
      atomic_store(v43, v41);
      v45 = *(a1 + 32);
      v46 = *(v45 + v12[449].entrysize);
      LOWORD(v38) = *(v45 + 16);
      v47 = *(v45 + 24);
      v48 = *(v45 + 32);
      v49 = *(v45 + 40);
      v50 = *(v45 + 56);
      v51 = *(v45 + 88);
      v52 = *(v45 + 104);
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_3F80;
      v55[3] = &unk_C538;
      v55[4] = v45;
      v55[5] = v49;
      v55[6] = v50;
      v55[7] = v46;
      v56 = v38;
      v55[8] = v48;
      v55[9] = v47;
      v55[10] = v13;
      v55[11] = v5;
      v57 = v51;
      dispatch_async(v52, v55);
      [*(a1 + 32) clockIdentifier];
      kdebug_trace();
      *(*(a1 + 32) + 144) = v15;
      dispatch_source_set_timer(*(a1 + 40), *(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0);
      v2 = v53;
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = v10;
      *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32)];
      v15 = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) + *(a1 + 56) + 30000000];
      [*(a1 + 32) clockIdentifier];
LABEL_28:
      kdebug_trace();
      *(*(a1 + 32) + 80) = *(*(a1 + 32) + 24) - v5;
      v34 = *(a1 + 32);
      v16 = *(v34 + 24);
      v17 = *(v34 + 80);
      goto LABEL_29;
    }

    v18 = TSNullgPTPClockIdentity;
    v74 = TSNullgPTPClockIdentity;
    v75 = TSNullgPTPClockIdentity;
    v73 = -1;
    v72 = -1;
    *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) grandmasterUsed:&v75 portNumber:&v73];
    v19 = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) + *(a1 + 56) + 30000000 grandmasterUsed:&v74 portNumber:&v72];
    v20 = v75;
    if (v75 == v74 && v73 == v72)
    {
      v15 = v19;
    }

    else
    {
      v21 = *(*(a1 + 32) + 104);
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_3B98;
      v69[3] = &unk_C4B0;
      v70 = v73;
      v69[4] = v75;
      v69[5] = v74;
      v71 = v72;
      dispatch_async(v21, v69);
      *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) grandmasterUsed:&v75 portNumber:&v73];
      v15 = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) + *(a1 + 56) + 30000000 grandmasterUsed:&v74 portNumber:&v72];
      v20 = v75;
      if (v75 != v74 || v73 != v72)
      {
        v22 = *(*(a1 + 32) + 104);
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_3C64;
        v66[3] = &unk_C4B0;
        v67 = v73;
        v66[4] = v75;
        v66[5] = v74;
        v68 = v72;
        dispatch_async(v22, v66);
        v20 = v75;
      }
    }

    if (v18 == v20)
    {
      *(*(a1 + 32) + 32) = *(a1 + 56) + v10;
      *(*(a1 + 32) + 24) = *(*(a1 + 32) + 80) + v5;
      v23 = *(a1 + 32);
      v15 = (v23[10] + v23[3] + *(a1 + 64));
      v24 = v23[13];
      v25 = &stru_C4F0;
    }

    else
    {
      v26 = *(a1 + 32);
      if (*(v26 + 8) == v20 && *(v26 + 16) == v73)
      {
        goto LABEL_27;
      }

      v65 = v18;
      v64 = -1;
      v27 = [*(v26 + 120) convertFromMachAbsoluteToDomainTime:v5 grandmasterUsed:&v65 portNumber:&v64];
      if (v18 != v65)
      {
        *(*(a1 + 32) + 32) = &v27[*(a1 + 56)];
        *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) grandmasterUsed:&v75 portNumber:&v73];
        v29 = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) + *(a1 + 56) + 30000000 grandmasterUsed:&v74 portNumber:&v72];
        v30 = v75;
        v31 = v73;
        if (v75 == v74 && v73 == v72)
        {
          v15 = v29;
        }

        else
        {
          v32 = *(*(a1 + 32) + 104);
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_3DE8;
          v61[3] = &unk_C4B0;
          v62 = v73;
          v61[4] = v75;
          v61[5] = v74;
          v63 = v72;
          dispatch_async(v32, v61);
          *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) grandmasterUsed:&v75 portNumber:&v73];
          v15 = [*(*(a1 + 32) + 120) convertFromDomainToMachAbsoluteTime:*(*(a1 + 32) + 32) + *(a1 + 56) + 30000000 grandmasterUsed:&v74 portNumber:&v72];
          v30 = v75;
          v31 = v73;
          if (v75 != v74 || v73 != v72)
          {
            v33 = *(*(a1 + 32) + 104);
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 3221225472;
            v58[2] = sub_3EB4;
            v58[3] = &unk_C4B0;
            v59 = v73;
            v58[4] = v75;
            v58[5] = v74;
            v60 = v72;
            dispatch_async(v33, v58);
            v30 = v75;
            v31 = v73;
          }
        }

        *(*(a1 + 32) + 8) = v30;
        *(*(a1 + 32) + 16) = v31;
        goto LABEL_27;
      }

      *(*(a1 + 32) + 32) = *(a1 + 56) + v10;
      *(*(a1 + 32) + 24) = *(*(a1 + 32) + 80) + v5;
      v28 = *(a1 + 32);
      v15 = (v28[10] + v28[3] + *(a1 + 64));
      v24 = v28[13];
      v25 = &stru_C510;
    }

    dispatch_async(v24, v25);
LABEL_27:
    v13 = v10;
    [*(a1 + 32) clockIdentifier];
    v12 = &NSObject__properties;
    goto LABEL_28;
  }

  v6 = v3;
  ++*(v4 + 48);
  [*(*(a1 + 32) + 120) updateCoreAudioReanchors:1];
  *(*(a1 + 32) + 64) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v9 = *(v7 + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AD8;
  block[3] = &unk_C490;
  block[4] = v6;
  block[5] = v8;
  dispatch_async(v9, block);
  [*(a1 + 32) initializeFirstTimestamp:*(a1 + 40)];
LABEL_30:
  objc_autoreleasePoolPop(v2);
}

void sub_3AD8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = 134218496;
    v5 = v2;
    v6 = 2048;
    v7 = v3;
    v8 = 2048;
    v9 = 2600000000;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Excedded reset limit %llu - %llu > %llu\n", &v4, 0x20u);
  }
}

void sub_3B98(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu\n", &v6, 0x22u);
  }
}

void sub_3C64(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu after retry\n", &v6, 0x22u);
  }
}

void sub_3D30(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "gPTP timestamp conversion failed\n", v1, 2u);
  }
}

void sub_3D8C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "gPTP timestamp conversion failed\n", v1, 2u);
  }
}

void sub_3DE8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu\n", &v6, 0x22u);
  }
}

void sub_3EB4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu after retry\n", &v6, 0x22u);
  }
}

void sub_3F80(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) clockIdentifier];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 96);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = v7 - *(a1 + 80);
    v10 = v8 - *(a1 + 88);
    v11 = "NO";
    if (*(a1 + 98))
    {
      v11 = "YES";
    }

    v12 = 134220290;
    v13 = v2;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v6;
    v20 = 1024;
    v21 = v5;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2080;
    v31 = v11;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: added audio timestamps (%llu, %llu) from 0x%016llx.%hu using time pair (%llu, %llu). {%lld, %lld} holdover %s\n", &v12, 0x62u);
  }
}

void sub_40B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 92) = [*(*(a1 + 32) + 120) lockState];
  v3 = *(a1 + 32);
  if (*(v3 + 92) == 2)
  {
    *(v3 + 88) = 0;
    [*(a1 + 32) initializeFirstTimestamp:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

double sub_4138(uint64_t a1)
{
  ++*(*(a1 + 32) + 48);
  [*(*(a1 + 32) + 120) updateCoreAudioReanchors:1];
  *(*(a1 + 32) + 64) = 0;
  v2 = (*(a1 + 32) + 152);

  return sub_41B8(v2);
}

double sub_41B8(void *a1)
{
  v2 = *a1;
  v5 = 0uLL;
  v6 = 0;
  sub_6088(&v7, v2, &v5);
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  result = *&v7;
  *(a1 + 1) = v7;
  a1[3] = v8;
  atomic_store(0, a1 + 4);
  return result;
}

double sub_4410(uint64_t a1)
{
  ++*(*(a1 + 32) + 48);
  *(*(a1 + 32) + 64) = 0;
  return sub_41B8((*(a1 + 32) + 152));
}

id sub_44C4(uint64_t a1)
{
  [*(a1 + 32) setSamplingRate:*(a1 + 40)];
  v2 = (*(a1 + 40) * 260.0 / 1000.0);
  v3 = *(a1 + 32);

  return [v3 setTimestampPeriod:v2];
}

void sub_45E4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_467C;
  block[3] = &unk_C5B0;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_467C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) description];
    v3 = 136315138;
    v4 = [v2 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "didChangeClockMasterForClock:%s\n", &v3, 0xCu);
  }
}

void sub_481C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_4924;
  v8 = &unk_C620;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  dispatch_async(v2, &v5);
  v3 = *(a1 + 32);
  if (*(a1 + 48) == 2)
  {
    *(v3 + 88) = 0;
    v4 = *(a1 + 32);
    if ((*(v4 + 64) & 1) == 0 && *(v4 + 128))
    {
      [v4 initializeFirstTimestamp:{v5, v6, v7, v8}];
    }
  }

  else
  {
    *(v3 + 88) = 1;
  }
}

void sub_4924(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) description];
    v4[0] = 67109378;
    v4[1] = v2;
    v5 = 2080;
    v6 = [v3 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "didChangeLockStateTo:%u forClock:%s\n", v4, 0x12u);
  }
}

void sub_4AC8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4B60;
  block[3] = &unk_C5B0;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_4B60(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) description];
    v3 = 136315138;
    v4 = [v2 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "didBeginClockGrandmasterChangeForClock:%s\n", &v3, 0xCu);
  }
}

void sub_4CF4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4D8C;
  block[3] = &unk_C5B0;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_4D8C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) description];
    v3 = 136315138;
    v4 = [v2 UTF8String];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "didEndClockGrandmasterChangeForClock:%s\n", &v3, 0xCu);
  }
}

void sub_5584(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu\n", &v6, 0x22u);
  }
}

void sub_5650(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu after retry\n", &v6, 0x22u);
  }
}

void sub_571C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu\n", &v6, 0x22u);
  }
}

void sub_57E8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 50);
    v6 = 134218752;
    v7 = v3;
    v8 = 1024;
    v9 = v2;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mach and dispatch GM ID mismatch 0x%016llx.%hu != 0x%016llx.%hu after retry\n", &v6, 0x22u);
  }
}

void sub_58B4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) clockIdentifier];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 80);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = 134220290;
    v10 = v2;
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v6;
    v17 = 1024;
    v18 = v5;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = 0;
    v25 = 2048;
    v26 = 0;
    v27 = 2080;
    v28 = "NO";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: added audio timestamps (%llu, %llu) from 0x%016llx.%hu using time pair (%llu, %llu). {%llu, %llu} holdover %s\n", &v9, 0x62u);
  }
}

void sub_59C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) clockIdentifier];
    *buf = 134217984;
    v37 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Failed to get the initial timestamp, returned TSInvalidTime.\n", buf, 0xCu);
  }

  v4 = [*(a1 + 40) lockState];
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_C690 + v4);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) clockIdentifier];
    v7 = [(__CFString *)v5 UTF8String];
    *buf = 134218242;
    v37 = v6;
    v38 = 2080;
    *v39 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Clock lock state is %s\n", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v30 = 0;
    v8 = *(a1 + 40);
    v29 = 0;
    v9 = [v8 getMachAbsoluteRateRatioNumerator:&v35 denominator:&v34 machAnchor:&v33 andDomainAnchor:&v32 forGrandmasterIdentity:&v31 portNumber:&v30 withError:&v29];
    v10 = v29;
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = [*(a1 + 32) clockIdentifier];
        *buf = 134219520;
        v37 = v12;
        v38 = 2048;
        *v39 = v33;
        *&v39[8] = 2048;
        *&v39[10] = v32;
        v40 = 2048;
        v41 = v35;
        v42 = 2048;
        v43 = v34;
        v44 = 2048;
        v45 = v31;
        v46 = 1024;
        v47 = v30;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Mach anchor %llu domain anchor %llu numerator %llu denominator %llu grandmaster 0x%016llx.%hu\n", buf, 0x44u);
      }
    }

    else if (v11)
    {
      v18 = [*(a1 + 32) clockIdentifier];
      v19 = [v10 code];
      v20 = [v10 description];
      v21 = v20;
      v22 = [v20 UTF8String];
      *buf = 134218498;
      v37 = v18;
      v38 = 1024;
      *v39 = v19;
      *&v39[4] = 2080;
      *&v39[6] = v22;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Failed to get rate ratio and anchor with error 0x%08x %s\n", buf, 0x1Cu);
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v13 = *(a1 + 40);
    v28 = 0;
    v14 = [v13 getMachAbsoluteRateRatioNumerator:&v35 denominator:&v34 machAnchor:&v33 andDomainAnchor:&v32 withError:&v28];
    v15 = v28;
    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = [*(a1 + 32) clockIdentifier];
        *buf = 134219008;
        v37 = v17;
        v38 = 2048;
        *v39 = v33;
        *&v39[8] = 2048;
        *&v39[10] = v32;
        v40 = 2048;
        v41 = v35;
        v42 = 2048;
        v43 = v34;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Mach anchor %llu domain anchor %llu numerator %llu denominator %llu\n", buf, 0x34u);
      }
    }

    else if (v16)
    {
      v23 = [*(a1 + 32) clockIdentifier];
      v24 = [v15 code];
      v25 = [v15 description];
      v26 = v25;
      v27 = [v25 UTF8String];
      *buf = 134218498;
      v37 = v23;
      v38 = 1024;
      *v39 = v24;
      *&v39[4] = 2080;
      *&v39[6] = v27;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Failed to get rate ratio and anchor with error 0x%08x %s\n", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_5EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ATSACCAClockDevice;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *sub_6088(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_6118(a1, a2);
  }

  return a1;
}

void sub_60FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_6118(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_617C(a1, a2);
  }

  sub_6164();
}

void sub_617C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6264();
}

void sub_61D4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_6230(exception, a1);
}

std::logic_error *sub_6230(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_6264()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_6298()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void sub_6348()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void sub_63F8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void sub_64A8()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void sub_6558()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void sub_6608()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    sub_2410();
    sub_2434();
    sub_2448(&dword_0, &_os_log_default, v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}