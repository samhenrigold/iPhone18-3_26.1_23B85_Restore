id sub_100213A20(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"???? ERROR : 0x%lx!!!!", a1];
  }

  else
  {
    v2 = *(&off_10031BFE8 + a1 - 1);
  }

  return v2;
}

void sub_100213A94(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("configureRecoveryAllowed:");
      if (a2)
      {
        v10 = "Allowed";
      }

      else
      {
        v10 = "Disabled";
      }

      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(4, "%c[%{public}s %{public}s]:%i Recovery is %s", v11, ClassName, Name, 978, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v3);
      v16 = sel_getName("configureRecoveryAllowed:");
      *buf = 67110146;
      if (a2)
      {
        v17 = "Allowed";
      }

      else
      {
        v17 = "Disabled";
      }

      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      v24 = 1024;
      v25 = 978;
      v26 = 2080;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Recovery is %s", buf, 0x2Cu);
    }

    v3[104] = a2 ^ 1;
    objc_sync_exit(v3);
  }
}

void sub_100213C7C(uint64_t a1)
{
  if (a1)
  {
    if ((byte_10035DB91 & 1) == 0)
    {
      byte_10035DB91 = 1;
      v1 = *(a1 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100213D0C;
      block[3] = &unk_100315F30;
      block[4] = a1;
      dispatch_async(v1, block);
    }
  }
}

void sub_100213D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_firstUnlockOccured");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 671);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v28 = v10;
      v29 = 2082;
      v30 = object_getClassName(v1);
      v31 = 2082;
      v32 = sel_getName("_firstUnlockOccured");
      v33 = 1024;
      v34 = 671;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    if (MSUParsedToleratedFailureForStep())
    {
      v11 = v1;
      objc_sync_enter(v11);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(v11);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(v11);
        v26 = sel_getName("_checkMobileSoftwareUpdateFailure");
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i FF failure detected.", v17, v16, v26, 651);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = object_getClass(v11);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(v11);
        v22 = sel_getName("_checkMobileSoftwareUpdateFailure");
        *buf = 67109890;
        v28 = v20;
        v29 = 2082;
        v30 = v21;
        v31 = 2082;
        v32 = v22;
        v33 = 1024;
        v34 = 651;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FF failure detected.", buf, 0x22u);
      }

      sub_100210010(v11[11]);
      sub_100210010(v11[12]);
      v23 = v11[11];
      if (v23 && v23[6] == 1 || (v24 = v11[12]) != 0 && v24[6] == 1)
      {
        sub_1002116D4(v11);
      }

      objc_sync_exit(v11);
    }
  }
}

void sub_100214014(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  objc_sync_enter(v5);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(v5);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v5);
    Name = sel_getName("setRecoveryNeeded:controller:");
    v12 = sub_100213A20(a3);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i controller=%@, needed=%d", v13, ClassName, Name, 1004, v12, a2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(v5);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(v5);
    v18 = sel_getName("setRecoveryNeeded:controller:");
    v19 = sub_100213A20(a3);
    *buf = 67110402;
    v23 = v16;
    v24 = 2082;
    v25 = v17;
    v26 = 2082;
    v27 = v18;
    v28 = 1024;
    v29 = 1004;
    v30 = 2112;
    v31 = v19;
    v32 = 1024;
    v33 = a2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i controller=%@, needed=%d", buf, 0x32u);
  }

  if (a3 == 2)
  {
    v21 = sub_100210DD8(v5[12], a2);
    sub_10020FEB4(v5[12]);
    objc_sync_exit(v5);

    if (!v21)
    {
      return;
    }

    goto LABEL_16;
  }

  if (a3 != 1)
  {
    objc_sync_exit(v5);

    return;
  }

  v20 = sub_100210DD8(v5[11], a2);
  sub_10020FEB4(v5[11]);
  objc_sync_exit(v5);

  if (v20)
  {
LABEL_16:
    sub_1002116D4(v5);
  }
}

BOOL sub_100214280(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    __assert_rtn("[_NFFailForwardCoordinator shouldControllerStop:]", "_NFFailForwardCoordinator.m", 1026, "(controller == kRecoveryCoordinatorControllerPrimary) || (controller == kRecoveryCoordinatorControllerSecondary)");
  }

  v4 = 48;
  if (a2 == 1)
  {
    v4 = 24;
  }

  v5 = *&v3[v4] == 1;
  objc_sync_exit(v3);

  return v5;
}

void sub_100214310(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("didStop:");
      v10 = sub_100213A20(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i controller=%@", v11, ClassName, Name, 1045, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v3);
      v16 = sel_getName("didStop:");
      v17 = sub_100213A20(a2);
      *buf = 67110146;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v28 = 1024;
      v29 = 1045;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i controller=%@", buf, 0x2Cu);
    }

    if (a2 == 2)
    {
      v18 = v3 + 6;
      if (v3[6] != 1)
      {
        __assert_rtn("[_NFFailForwardCoordinator didStop:]", "_NFFailForwardCoordinator.m", 1052, "_secondaryDelegateState == kDelegateStateMustStop");
      }
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      v18 = v3 + 3;
      if (v3[3] != 1)
      {
        __assert_rtn("[_NFFailForwardCoordinator didStop:]", "_NFFailForwardCoordinator.m", 1048, "_primaryDelegateState == kDelegateStateMustStop");
      }
    }

    *v18 = 2;
LABEL_17:
    if (v3[3] == 1)
    {
      objc_sync_exit(v3);
    }

    else
    {
      v19 = v3[6];
      objc_sync_exit(v3);

      if (v19 != 1)
      {
        v20 = v3[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1002145F4;
        block[3] = &unk_100315F30;
        block[4] = v3;
        dispatch_async(v20, block);
      }
    }
  }
}

void sub_1002145F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(v1 + 80) stopTimer];
    v3 = *(v1 + 80);
    *(v1 + 80) = 0;

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = sub_100211748(v4);
      v6 = v4;
      objc_sync_enter(v6);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("_startRestoreProcess");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 604);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(v6);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v15;
        *v117 = 2082;
        *&v117[2] = object_getClassName(v6);
        *&v117[10] = 2082;
        *&v117[12] = sel_getName("_startRestoreProcess");
        *&v117[20] = 1024;
        *&v117[22] = 604;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v16 = *(v6 + 11);
      if (v16)
      {
        v17 = *(v16 + 48) == 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v6 + 12);
      if (v18)
      {
        v19 = *(v18 + 48) == 1;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v20) = v5 > 1 || v19;
      v21 = v17 | v5;
      v22 = v6[104];
      if (((v17 | v5) & 1) != 0 && *(v6 + 3) != 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v24 = v23;
          v25 = v21;
          v26 = v20;
          v27 = object_getClass(v6);
          if (class_isMetaClass(v27))
          {
            v20 = 43;
          }

          else
          {
            v20 = 45;
          }

          v28 = object_getClassName(v6);
          v29 = sel_getName("_startRestoreProcess");
          v30 = *(v6 + 3);
          if (v30 > 2)
          {
            v31 = @"???? ERROR !!!!";
          }

          else
          {
            v31 = *(&off_10031C000 + v30);
          }

          v24(3, "%c[%{public}s %{public}s]:%i Error unexpected primary delegate state: %@", v20, v28, v29, 614, v31);
          LODWORD(v20) = v26;
          v21 = v25;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v110 = v21;
          v33 = v20;
          v34 = object_getClass(v6);
          if (class_isMetaClass(v34))
          {
            v35 = 43;
          }

          else
          {
            v35 = 45;
          }

          v36 = object_getClassName(v6);
          v37 = sel_getName("_startRestoreProcess");
          v38 = *(v6 + 3);
          if (v38 > 2)
          {
            v39 = @"???? ERROR !!!!";
          }

          else
          {
            v39 = *(&off_10031C000 + v38);
          }

          *buf = 67110146;
          *&buf[4] = v35;
          *v117 = 2082;
          *&v117[2] = v36;
          *&v117[10] = 2082;
          *&v117[12] = v37;
          *&v117[20] = 1024;
          *&v117[22] = 614;
          *&v117[26] = 2112;
          *&v117[28] = v39;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error unexpected primary delegate state: %@", buf, 0x2Cu);
          LODWORD(v20) = v33;
          v21 = v110;
        }

        if (*(v6 + 3) != 2)
        {
          __assert_rtn("[_NFFailForwardCoordinator _startRestoreProcess]", "_NFFailForwardCoordinator.m", 615, "_primaryDelegateState == kDelegateStateDidStop");
        }
      }

      if (v20 && *(v6 + 6) != 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v40 = NFLogGetLogger();
        if (v40)
        {
          v41 = v40;
          v42 = v21;
          v43 = v20;
          v44 = object_getClass(v6);
          if (class_isMetaClass(v44))
          {
            v20 = 43;
          }

          else
          {
            v20 = 45;
          }

          v45 = object_getClassName(v6);
          v46 = sel_getName("_startRestoreProcess");
          v47 = *(v6 + 6);
          if (v47 > 2)
          {
            v48 = @"???? ERROR !!!!";
          }

          else
          {
            v48 = *(&off_10031C000 + v47);
          }

          v41(3, "%c[%{public}s %{public}s]:%i Error unexpected secondary delegate state: %@", v20, v45, v46, 619, v48);
          LOBYTE(v20) = v43;
          v21 = v42;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v111 = v21;
          v50 = v20;
          v51 = object_getClass(v6);
          if (class_isMetaClass(v51))
          {
            LODWORD(v20) = 43;
          }

          else
          {
            LODWORD(v20) = 45;
          }

          v52 = object_getClassName(v6);
          v53 = sel_getName("_startRestoreProcess");
          v54 = *(v6 + 6);
          if (v54 > 2)
          {
            v55 = @"???? ERROR !!!!";
          }

          else
          {
            v55 = *(&off_10031C000 + v54);
          }

          *buf = 67110146;
          *&buf[4] = v20;
          *v117 = 2082;
          *&v117[2] = v52;
          *&v117[10] = 2082;
          *&v117[12] = v53;
          *&v117[20] = 1024;
          *&v117[22] = 619;
          *&v117[26] = 2112;
          *&v117[28] = v55;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error unexpected secondary delegate state: %@", buf, 0x2Cu);
          LOBYTE(v20) = v50;
          v21 = v111;
        }

        if (*(v6 + 6) != 2)
        {
          __assert_rtn("[_NFFailForwardCoordinator _startRestoreProcess]", "_NFFailForwardCoordinator.m", 620, "_secondaryDelegateState == kDelegateStateDidStop");
        }
      }

      objc_sync_exit(v6);

      if (v17 || v19)
      {
        if (v22)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v57 = v56;
            v58 = object_getClass(v6);
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(v6);
            v107 = sel_getName("_startRestoreProcess");
            v61 = 45;
            if (v59)
            {
              v61 = 43;
            }

            v57(4, "%c[%{public}s %{public}s]:%i Warning : recovery is disabled", v61, v60, v107, 632);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = object_getClass(v6);
            if (class_isMetaClass(v63))
            {
              v64 = 43;
            }

            else
            {
              v64 = 45;
            }

            v65 = object_getClassName(v6);
            v66 = sel_getName("_startRestoreProcess");
            *buf = 67109890;
            *&buf[4] = v64;
            *v117 = 2082;
            *&v117[2] = v65;
            *&v117[10] = 2082;
            *&v117[12] = v66;
            *&v117[20] = 1024;
            *&v117[22] = 632;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Warning : recovery is disabled", buf, 0x22u);
          }

          v67 = 0;
        }

        else
        {
          if (!v17 && !v19)
          {
            __assert_rtn("[_NFFailForwardCoordinator _runPrimaryRestore:secondary:]", "_NFFailForwardCoordinator.m", 564, "primaryRestoreNeeded || secondaryRestoreNeeded");
          }

          v68 = v6;
          objc_sync_enter(v68);
          if (v17)
          {
            sub_1002101E8(*(v6 + 11));
          }

          if (v19)
          {
            sub_1002101E8(*(v6 + 12));
            v69 = &off_100339DF0;
          }

          else
          {
            v69 = 0;
          }

          objc_sync_exit(v68);

          sub_10022F438(NFDailyStatisticsCALogger, @"failForwardRestoreAttemptFailureCount");
          v70 = &off_100339DC8;
          if (v17 && v19)
          {
            v70 = &off_100339DA0;
          }

          if (v17)
          {
            v69 = v70;
          }

          v71 = objc_opt_new();
          v72 = [v71 runService:v69];
          if (!v72)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v94 = NFLogGetLogger();
            if (v94)
            {
              v95 = v94;
              v96 = object_getClass(v68);
              v97 = class_isMetaClass(v96);
              v98 = object_getClassName(v68);
              v109 = sel_getName("_runPrimaryRestore:secondary:");
              v99 = 45;
              if (v97)
              {
                v99 = 43;
              }

              v95(3, "%c[%{public}s %{public}s]:%i No status from restore service !", v99, v98, v109, 581);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v100 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = object_getClass(v68);
              if (class_isMetaClass(v101))
              {
                v102 = 43;
              }

              else
              {
                v102 = 45;
              }

              v103 = object_getClassName(v68);
              v104 = sel_getName("_runPrimaryRestore:secondary:");
              *buf = 67109890;
              *&buf[4] = v102;
              *v117 = 2082;
              *&v117[2] = v103;
              *&v117[10] = 2082;
              *&v117[12] = v104;
              *&v117[20] = 1024;
              *&v117[22] = 581;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No status from restore service !", buf, 0x22u);
            }

            __assert_rtn("[_NFFailForwardCoordinator _runPrimaryRestore:secondary:]", "_NFFailForwardCoordinator.m", 582, "restoreResult != nil");
          }

          v62 = v72;
          v73 = [v72 objectForKey:@"Error"];
          [v71 disconnect];
          v67 = v73;
          v74 = v68;
          objc_sync_enter(v74);
          if (v17)
          {
            sub_100210430(*(v6 + 11), v67);
          }

          if (v19)
          {
            sub_100210430(*(v6 + 12), v67);
          }

          objc_sync_exit(v74);

          v75 = NFSharedSignpostLog();
          if (os_signpost_enabled(v75))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RESTORE_NFCC", "success", buf, 2u);
          }
        }

        v76 = v67;
        v77 = v6;
        objc_sync_enter(v77);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v79 = v78;
          v80 = object_getClass(v77);
          v81 = class_isMetaClass(v80);
          v105 = object_getClassName(v77);
          v108 = sel_getName("_restoreCompleted:forPrimary:secondary:");
          v82 = 45;
          if (v81)
          {
            v82 = 43;
          }

          v79(6, "%c[%{public}s %{public}s]:%i Restore completed with status %@", v82, v105, v108, 492, v76);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v83 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = object_getClass(v77);
          if (class_isMetaClass(v84))
          {
            v85 = 43;
          }

          else
          {
            v85 = 45;
          }

          v86 = object_getClassName(v77);
          v87 = sel_getName("_restoreCompleted:forPrimary:secondary:");
          *buf = 67110146;
          *&buf[4] = v85;
          *v117 = 2082;
          *&v117[2] = v86;
          *&v117[10] = 2082;
          *&v117[12] = v87;
          *&v117[20] = 1024;
          *&v117[22] = 492;
          *&v117[26] = 2112;
          *&v117[28] = v76;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restore completed with status %@", buf, 0x2Cu);
        }

        WeakRetained = objc_loadWeakRetained(v77 + 1);
        v89 = WeakRetained;
        if (WeakRetained && *(v77 + 3) == 2)
        {
          *(v77 + 3) = 0;
          v90 = *(v77 + 2);
          *buf = _NSConcreteStackBlock;
          *v117 = 3221225472;
          *&v117[8] = sub_100211684;
          *&v117[16] = &unk_100315B38;
          *&v117[24] = WeakRetained;
          v118 = v21 & 1;
          *&v117[32] = v76;
          dispatch_async(v90, buf);
        }

        v91 = objc_loadWeakRetained(v77 + 4);
        v92 = v91;
        if (v91 && *(v77 + 6) == 2)
        {
          *(v77 + 6) = 0;
          v93 = *(v77 + 5);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002116AC;
          block[3] = &unk_100315B38;
          v113 = v91;
          v115 = v20;
          v114 = v76;
          dispatch_async(v93, block);
        }

        objc_sync_exit(v77);
        if (v76)
        {
          sub_1002116D4(v77);
        }
      }
    }
  }
}

uint64_t sub_100216084(void *a1)
{
  v7 = 0;
  v1 = sub_100217D44(a1, &v7);
  v2 = v7;
  if (v2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if (v1 != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i SW1SW2 error=0x%x", "_IsRAPDUSuccess", 59, v1);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_IsRAPDUSuccess";
      v10 = 1024;
      v11 = 59;
      v12 = 1024;
      v13 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i SW1SW2 error=0x%x", buf, 0x18u);
    }

    goto LABEL_9;
  }

  v3 = 1;
LABEL_10:

  return v3;
}

void *sub_100217D44(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 length] > 1)
  {
    a2 = (bswap32(*([v3 bytes] + objc_msgSend(v3, "length") - 2)) >> 16);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Invalid tag response", "_ParseSWFromRAPDUEX", 42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "_ParseSWFromRAPDUEX";
      v15 = 1024;
      v16 = 42;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid tag response", buf, 0x12u);
    }

    if (a2)
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v11 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Tag Error"];
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a2 = [v6 initWithDomain:v7 code:29 userInfo:v9];

      a2 = 0;
    }
  }

  return a2;
}

id sub_100218DB8(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 396);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100218E3C;
  v6[3] = &unk_100315EE0;
  v4 = a1[6];
  v6[4] = v2;
  v6[5] = v4;
  return [v3 hceReadWithHandle:v1 completion:v6];
}

void sub_100218E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", v16, ClassName, Name, 91);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(*(a1 + 32));
      v20 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v31 = v18;
      v32 = 2082;
      v33 = v19;
      v34 = 2082;
      v35 = v20;
      v36 = 1024;
      v37 = 91;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v7 = [*(a1 + 32) expressModeManager];
  if (v7)
  {
    v8 = v7[181];

    v9 = *(a1 + 32);
    if (v8 == 1)
    {
      v10 = [v9 expressModeManager];
      [v10 handleTransactionEndEvent:v5 atlData:v6 caData:0];
LABEL_14:

      goto LABEL_17;
    }
  }

  else
  {
    v9 = *(a1 + 32);
  }

  [v9 handleTransactionEndEvent:v5 atlData:v6];
LABEL_17:
  v21 = [v6 objectForKeyedSubscript:@"appletIdentifier"];
  if ([*(a1 + 32) isUnifiedAccessForHome:v21])
  {
    v22 = [v6 objectForKeyedSubscript:@"endPointIdentifier"];
    v23 = [v6 objectForKeyedSubscript:@"readerIdentifier"];
    v24 = objc_opt_new();
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v22 forKeyedSubscript:@"endPointIdentifier"];
      }
    }

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v21 forKeyedSubscript:@"appletIdentifier"];
      }
    }

    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 setObject:v23 forKeyedSubscript:@"readerIdentifier"];
      }
    }

    if (v5)
    {
      if ([v5 didError])
      {
        v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 didError]);
        [v24 setObject:v25 forKeyedSubscript:@"didError"];
      }

      else
      {
        [v24 setObject:&off_100336048 forKeyedSubscript:@"didError"];
      }
    }

    [v24 setObject:&off_100336060 forKeyedSubscript:@"isStepUp"];
    v26 = +[_NFHardwareManager sharedHardwareManager];
    v27 = +[NFSecureXPCEventPublisherManager sharedManager];
    v28 = [v27 homed];
    [v26 postEventForPublisher:v28 event:"com.apple.stockholm.forHome.transaction.end" additionalData:v24];
  }
}

id *sub_100219FE8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = NFDriverWrapper;
    v5 = objc_msgSendSuper2(&v26, "init");
    a1 = v5;
    if (v5)
    {
      v5[18] = 0;
      v5[19] = 0;
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = a1[3];
      a1[3] = v6;

      *(a1 + 176) = 0;
      v8 = objc_alloc_init(NFCoreTelephonyConnection);
      v9 = a1[14];
      a1[14] = v8;

      v10 = objc_alloc_init(NSLock);
      v11 = a1[9];
      a1[9] = v10;

      *(a1 + 175) = 0;
      objc_initWeak(&location, a1);
      v12 = [NFTimer alloc];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10021A200;
      v23[3] = &unk_100315F08;
      objc_copyWeak(&v24, &location);
      v13 = [v12 initWithCallback:v23 queue:v4];
      v14 = a1[10];
      a1[10] = v13;

      v15 = [NFTimer alloc];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10021A350;
      v21[3] = &unk_100315F08;
      objc_copyWeak(&v22, &location);
      v16 = [v15 initWithCallback:v21 queue:v4];
      v17 = a1[11];
      a1[11] = v16;

      objc_storeStrong(a1 + 17, a2);
      *(a1 + 174) = NFProductIsPhone() ^ 1;
      *(a1 + 173) = NFProductHasNFCRadio();
      v18 = objc_opt_new();
      v19 = a1[16];
      a1[16] = v18;

      *(a1 + 41) = 0;
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_10021A200(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.field.assertionTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Field assertion timeout.", "[NFDriverWrapper initWithQueue:]_block_invoke", 190);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFDriverWrapper initWithQueue:]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 190;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Field assertion timeout.", state, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100003678(WeakRetained);
}

void sub_10021A350(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.field.coalescingTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Field coalesing timer expired", "[NFDriverWrapper initWithQueue:]_block_invoke", 196);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFDriverWrapper initWithQueue:]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 196;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Field coalesing timer expired", state, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100003678(WeakRetained);
}

id sub_10021A4A0(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 40))
    {
      v7 = 0;
    }

    else
    {
      v33 = sub_10021B0D8(v6, v5);
      v7 = v33;
      if (v33)
      {
        if ([v33 code] == 58 && NFProductIsDevBoard())
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v35 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName("openSession:forType:");
            v39 = 45;
            if (isMetaClass)
            {
              v39 = 43;
            }

            v35(3, "%c[%{public}s %{public}s]:%i Hardware unavailable; please verify all hardware connections and power cycle system to retry", v39, ClassName, Name, 358);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = object_getClass(v6);
            if (class_isMetaClass(v41))
            {
              v42 = 43;
            }

            else
            {
              v42 = 45;
            }

            *buf = 67109890;
            v92 = v42;
            v93 = 2082;
            v94 = object_getClassName(v6);
            v95 = 2082;
            v96 = sel_getName("openSession:forType:");
            v97 = 1024;
            v98 = 358;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardware unavailable; please verify all hardware connections and power cycle system to retry", buf, 0x22u);
          }

          v6[32] = 3;
          v43 = [NSError alloc];
          v44 = [NSString stringWithUTF8String:"nfcd"];
          v103[0] = NSLocalizedDescriptionKey;
          v45 = [NSString stringWithUTF8String:"Unresponsive hardware"];
          v104[0] = v45;
          v104[1] = &off_100336090;
          v103[1] = @"Line";
          v103[2] = @"Method";
          v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
          v104[2] = v46;
          v103[3] = NSDebugDescriptionErrorKey;
          v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 360];
          v104[3] = v47;
          v48 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
          v49 = [v43 initWithDomain:v44 code:58 userInfo:v48];

          goto LABEL_58;
        }

        v8 = 0;
LABEL_5:
        v9 = v6[32];
        if (v9 == 1 || v9 == 4 && (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          if ([v7 code] == 56)
          {

            v7 = 0;
          }

          v16 = *(v6 + 40);
          if (!v16)
          {
            *(v6 + 169) = 0;
            sub_10021CAB4(v6);
            v16 = *(v6 + 40);
          }

          *(v6 + 40) = v16 + 1;
          v17 = [v6[16] objectForKey:v5];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v18 = NFLogGetLogger();
          v19 = v18;
          if (v17)
          {
            if (v18)
            {
              v20 = object_getClass(v6);
              v21 = class_isMetaClass(v20);
              v22 = object_getClassName(v6);
              v23 = sel_getName("openSession:forType:");
              v24 = [v6[16] objectForKeyedSubscript:v5];
              v25 = 45;
              if (v21)
              {
                v25 = 43;
              }

              v19(3, "%c[%{public}s %{public}s]:%i Owner %@ already has a session : %@", v25, v22, v23, 383, v5, v24);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v26 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = object_getClass(v6);
              if (class_isMetaClass(v27))
              {
                v28 = 43;
              }

              else
              {
                v28 = 45;
              }

              v29 = object_getClassName(v6);
              v30 = sel_getName("openSession:forType:");
              v31 = [v6[16] objectForKeyedSubscript:v5];
              *buf = 67110402;
              v92 = v28;
              v93 = 2082;
              v94 = v29;
              v95 = 2082;
              v96 = v30;
              v97 = 1024;
              v98 = 383;
              v99 = 2112;
              v100 = v5;
              v101 = 2112;
              v102 = v31;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %@ already has a session : %@", buf, 0x36u);
            }

            v11 = [v6[16] objectForKeyedSubscript:v5];
            v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intValue] + 1);
            [v6[16] setObject:v32 forKeyedSubscript:v5];
          }

          else
          {
            if (v18)
            {
              v53 = object_getClass(v6);
              v54 = class_isMetaClass(v53);
              v55 = object_getClassName(v6);
              v84 = sel_getName("openSession:forType:");
              v56 = 45;
              if (v54)
              {
                v56 = 43;
              }

              v19(6, "%c[%{public}s %{public}s]:%i Opening session on behalf of %@ with type %lu", v56, v55, v84, 387, v5, a3);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v57 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = object_getClass(v6);
              if (class_isMetaClass(v58))
              {
                v59 = 43;
              }

              else
              {
                v59 = 45;
              }

              *buf = 67110402;
              v92 = v59;
              v93 = 2082;
              v94 = object_getClassName(v6);
              v95 = 2082;
              v96 = sel_getName("openSession:forType:");
              v97 = 1024;
              v98 = 387;
              v99 = 2112;
              v100 = v5;
              v101 = 2048;
              v102 = a3;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Opening session on behalf of %@ with type %lu", buf, 0x36u);
            }

            v11 = [NSNumber numberWithInt:1];
            [v6[16] setObject:v11 forKeyedSubscript:v5];
          }

          goto LABEL_57;
        }

        if (*(v6 + 40))
        {
          if (v8)
          {
            v10 = [NSError alloc];
            v11 = [NSString stringWithUTF8String:"nfcd"];
            v87[0] = NSLocalizedDescriptionKey;
            v12 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
            v88[0] = v12;
            v88[1] = &off_1003360C0;
            v87[1] = @"Line";
            v87[2] = @"Method";
            v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
            v88[2] = v13;
            v87[3] = NSDebugDescriptionErrorKey;
            v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 409];
            v88[3] = v14;
            v15 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
            v7 = [v10 initWithDomain:v11 code:56 userInfo:v15];

LABEL_57:
            v7 = v7;
            v49 = v7;
LABEL_58:

            objc_sync_exit(v6);
            goto LABEL_59;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v66 = NFLogGetLogger();
          if (v66)
          {
            v67 = v66;
            v68 = object_getClass(v6);
            v69 = class_isMetaClass(v68);
            v81 = object_getClassName(v6);
            v85 = sel_getName("openSession:forType:");
            v70 = 45;
            if (v69)
            {
              v70 = 43;
            }

            v67(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v70, v81, v85, 408, "error == ((void*)0)");
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v71 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v72 = object_getClass(v6);
            if (class_isMetaClass(v72))
            {
              v73 = 43;
            }

            else
            {
              v73 = 45;
            }

            *buf = 67110146;
            v92 = v73;
            v93 = 2082;
            v94 = object_getClassName(v6);
            v95 = 2082;
            v96 = sel_getName("openSession:forType:");
            v97 = 1024;
            v98 = 408;
            v99 = 2080;
            v100 = "error == ((void*)0)";
LABEL_81:
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FAILED: %s", buf, 0x2Cu);
          }
        }

        else
        {
          if (!v8)
          {
            *(v6 + 169) = 1;
            if (v9 == 4)
            {
              NFDriverUnloadStackAndLeaveHWEnabled();
              NFDriverClose();
              v6[1] = 0;
            }

            v50 = [NSError alloc];
            v11 = [NSString stringWithUTF8String:"nfcd"];
            v51 = [v7 code];
            v89[0] = NSLocalizedDescriptionKey;
            if ([v7 code] > 75)
            {
              v52 = 76;
            }

            else
            {
              v52 = [v7 code];
            }

            v60 = [NSString stringWithUTF8String:off_10031C280[v52]];
            v90[0] = v60;
            v90[1] = v7;
            v89[1] = NSUnderlyingErrorKey;
            v89[2] = @"Line";
            v90[2] = &off_1003360A8;
            v89[3] = @"Method";
            v61 = [[NSString alloc] initWithFormat:@"%s", sel_getName("openSession:forType:")];
            v90[3] = v61;
            v89[4] = NSDebugDescriptionErrorKey;
            v62 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("openSession:forType:"), 405];
            v90[4] = v62;
            v63 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:5];
            v64 = [v50 initWithDomain:v11 code:v51 userInfo:v63];

            v7 = v64;
            goto LABEL_57;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v74 = NFLogGetLogger();
          if (v74)
          {
            v75 = v74;
            v76 = object_getClass(v6);
            v77 = class_isMetaClass(v76);
            v82 = object_getClassName(v6);
            v86 = sel_getName("openSession:forType:");
            v78 = 45;
            if (v77)
            {
              v78 = 43;
            }

            v75(3, "%c[%{public}s %{public}s]:%i FAILED: %s", v78, v82, v86, 395, "error != ((void*)0)");
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v71 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v79 = object_getClass(v6);
            if (class_isMetaClass(v79))
            {
              v80 = 43;
            }

            else
            {
              v80 = 45;
            }

            *buf = 67110146;
            v92 = v80;
            v93 = 2082;
            v94 = object_getClassName(v6);
            v95 = 2082;
            v96 = sel_getName("openSession:forType:");
            v97 = 1024;
            v98 = 395;
            v99 = 2080;
            v100 = "error != ((void*)0)";
            goto LABEL_81;
          }
        }

        abort();
      }
    }

    v8 = 1;
    goto LABEL_5;
  }

  v49 = 0;
LABEL_59:

  return v49;
}

id sub_10021B0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v6 = Logger;
    if (v4)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_openDriver:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Stack already opened !", v10, ClassName, Name, 1911);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(a1);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(a1);
        v15 = sel_getName("_openDriver:");
        *buf = 67109890;
        *&buf[4] = v13;
        *&buf[8] = 2082;
        *&buf[10] = v14;
        *&buf[18] = 2082;
        *&buf[20] = v15;
        *&buf[28] = 1024;
        *&buf[30] = 1911;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stack already opened !", buf, 0x22u);
      }

      if (*(a1 + 175) == 1)
      {
        v16 = [NSError alloc];
        v17 = [NSString stringWithUTF8String:"nfcd"];
        v159[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
        v160[0] = v18;
        v160[1] = &off_100336210;
        v159[1] = @"Line";
        v159[2] = @"Method";
        v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
        v160[2] = v19;
        v159[3] = NSDebugDescriptionErrorKey;
        v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1913];
        v160[3] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:4];
        v22 = [v16 initWithDomain:v17 code:56 userInfo:v21];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_97;
    }

    if (Logger)
    {
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v145 = object_getClassName(a1);
      v150 = sel_getName("_openDriver:");
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i starting stack requested by %@", v25, v145, v150, 1764, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(a1);
      v30 = sel_getName("_openDriver:");
      *buf = 67110146;
      *&buf[4] = v28;
      *&buf[8] = 2082;
      *&buf[10] = v29;
      *&buf[18] = 2082;
      *&buf[20] = v30;
      *&buf[28] = 1024;
      *&buf[30] = 1764;
      *&buf[34] = 2112;
      *&buf[36] = v3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i starting stack requested by %@", buf, 0x2Cu);
    }

    *(a1 + 170) = 0;
    *(a1 + 168) = 0;
    *(a1 + 164) = 0;
    *(a1 + 144) = 0;
    v31 = *(a1 + 104);
    *(a1 + 104) = 0;

    memset(buf, 0, 48);
    *buf = getenv("STOCKHOLM_DEVICE");
    *&buf[8] = getenv("HAMMERFEST_DEVICE");
    *&buf[24] = *(a1 + 248);
    v32 = *(a1 + 200);
    *&buf[32] = *(a1 + 180);
    *&buf[36] = v32;
    v33 = NFSharedSignpostLog();
    if (os_signpost_enabled(v33))
    {
      *v173 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", &unk_1002E8B7A, v173, 2u);
    }

    v34 = NFDriverOpen();
    *(a1 + 8) = v34;
    if (!v34)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(a1);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(a1);
        v57 = sel_getName("_openDriver:");
        v58 = *buf;
        v59 = *&buf[8];
        if (!*&buf[8])
        {
          v59 = "Unknown device";
        }

        if (!*buf)
        {
          v58 = v59;
        }

        v60 = 45;
        if (v55)
        {
          v60 = 43;
        }

        v53(3, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v60, v56, v57, 1774, v58);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(a1);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(a1);
        v65 = sel_getName("_openDriver:");
        v66 = *buf;
        v67 = *&buf[8];
        if (!*&buf[8])
        {
          v67 = "Unknown device";
        }

        if (!*buf)
        {
          v66 = v67;
        }

        *v173 = 67110146;
        *&v173[4] = v63;
        *&v173[8] = 2082;
        *&v173[10] = v64;
        *&v173[18] = 2082;
        *&v173[20] = v65;
        *&v173[28] = 1024;
        *&v173[30] = 1774;
        *&v173[34] = 2080;
        *&v173[36] = v66;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open device: %s", v173, 0x2Cu);
      }

      v68 = NFSharedSignpostLog();
      if (os_signpost_enabled(v68))
      {
        *v173 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", "open failure", v173, 2u);
      }

      *(a1 + 256) = 2;
      v69 = [NSError alloc];
      v70 = [NSString stringWithUTF8String:"nfcd"];
      v171[0] = NSLocalizedDescriptionKey;
      v71 = [NSString stringWithUTF8String:"Stack Error"];
      v172[0] = v71;
      v172[1] = &off_100336180;
      v171[1] = @"Line";
      v171[2] = @"Method";
      v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v172[2] = v72;
      v171[3] = NSDebugDescriptionErrorKey;
      v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1777];
      v172[3] = v73;
      v74 = [NSDictionary dictionaryWithObjects:v172 forKeys:v171 count:4];
      v93 = [v69 initWithDomain:v70 code:15 userInfo:v74];

      v94 = 0;
      goto LABEL_98;
    }

    v35 = NFSharedSignpostLog();
    if (os_signpost_enabled(v35))
    {
      *v173 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_OPEN", "success", v173, 2u);
    }

    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    NFDriverSetCallback();
    v36 = NFSharedSignpostLog();
    if (os_signpost_enabled(v36))
    {
      *v173 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", &unk_1002E8B7A, v173, 2u);
    }

    v37 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    v158 = v37;
    if (NFIsInternalBuild() && ([v37 objectForKey:@"fakeDriverInitResult"], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
    {
      Stack = [v37 integerForKey:@"fakeDriverInitResult"];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v41 = v40;
        v42 = object_getClass(a1);
        v43 = class_isMetaClass(v42);
        v44 = v3;
        v45 = object_getClassName(a1);
        v151 = sel_getName("_openDriver:");
        v46 = 45;
        if (v43)
        {
          v46 = 43;
        }

        v146 = v45;
        v3 = v44;
        v41(4, "%c[%{public}s %{public}s]:%i Faking driver init failure; error code=%d", v46, v146, v151, 1848, Stack);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(a1);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(a1);
        v51 = sel_getName("_openDriver:");
        *v173 = 67110146;
        *&v173[4] = v49;
        *&v173[8] = 2082;
        *&v173[10] = v50;
        *&v173[18] = 2082;
        *&v173[20] = v51;
        *&v173[28] = 1024;
        *&v173[30] = 1848;
        *&v173[34] = 1024;
        *&v173[36] = Stack;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Faking driver init failure; error code=%d", v173, 0x28u);
      }

      sleep(2u);
    }

    else
    {
      if ([v37 BOOLForKey:@"DisableFWCompatibilityCheck"])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v75 = NFLogGetLogger();
        if (v75)
        {
          v76 = v75;
          v77 = object_getClass(a1);
          v78 = class_isMetaClass(v77);
          v79 = v3;
          v80 = object_getClassName(a1);
          v152 = sel_getName("_openDriver:");
          v81 = 45;
          if (v78)
          {
            v81 = 43;
          }

          v147 = v80;
          v3 = v79;
          v76(4, "%c[%{public}s %{public}s]:%i Disabling FW compatibility check", v81, v147, v152, 1858);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v82 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = object_getClass(a1);
          if (class_isMetaClass(v83))
          {
            v84 = 43;
          }

          else
          {
            v84 = 45;
          }

          v85 = object_getClassName(a1);
          v86 = sel_getName("_openDriver:");
          *v173 = 67109890;
          *&v173[4] = v84;
          *&v173[8] = 2082;
          *&v173[10] = v85;
          *&v173[18] = 2082;
          *&v173[20] = v86;
          *&v173[28] = 1024;
          *&v173[30] = 1858;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Disabling FW compatibility check", v173, 0x22u);
        }
      }

      v87 = +[NFCALogger sharedCALogger];
      v88 = [v87 getTimestamp];
      Stack = NFDriverLoadStack();
      v89 = [v87 getDurationFrom:v88];
      if (Stack)
      {
        v90 = v89;
        v91 = Stack;
        v92 = 0;
      }

      else
      {
        memset(v173, 0, 44);
        NFDriverGetControllerInfo();
        v92 = [v87 getHardwareTypeForCA:*&v173[4]];
        v90 = v89;
        v91 = 0;
      }

      sub_1000603BC(NFHardwareEventCALogger, v90, v91, v92);
    }

    v95 = v158;
    if (!Stack)
    {
      v114 = NFSharedSignpostLog();
      if (os_signpost_enabled(v114))
      {
        *v173 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "success", v173, 2u);
      }

      v22 = 0;
      *(a1 + 256) = 1;
      *(a1 + 175) = 0;
      goto LABEL_96;
    }

    if (Stack == 24)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v96 = NFLogGetLogger();
      if (v96)
      {
        v97 = v96;
        v98 = object_getClass(a1);
        v99 = class_isMetaClass(v98);
        v100 = object_getClassName(a1);
        v153 = sel_getName("_openDriver:");
        v101 = 45;
        if (v99)
        {
          v101 = 43;
        }

        v97(3, "%c[%{public}s %{public}s]:%i Stack not loaded, NFCC is download mode", v101, v100, v153, 1900);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v103 = object_getClass(a1);
        if (class_isMetaClass(v103))
        {
          v104 = 43;
        }

        else
        {
          v104 = 45;
        }

        v105 = object_getClassName(a1);
        v106 = sel_getName("_openDriver:");
        *v173 = 67109890;
        *&v173[4] = v104;
        *&v173[8] = 2082;
        *&v173[10] = v105;
        *&v173[18] = 2082;
        *&v173[20] = v106;
        *&v173[28] = 1024;
        *&v173[30] = 1900;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stack not loaded, NFCC is download mode", v173, 0x22u);
      }

      v107 = NFSharedSignpostLog();
      if (os_signpost_enabled(v107))
      {
        *v173 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v107, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "limited", v173, 2u);
      }

      *(a1 + 256) = 4;
      *(a1 + 175) = 1;
      v108 = [NSError alloc];
      v109 = [NSString stringWithUTF8String:"nfcd"];
      v161[0] = NSLocalizedDescriptionKey;
      v110 = [NSString stringWithUTF8String:"NFCC is in Download mode. NCI not available."];
      v162[0] = v110;
      v162[1] = &off_1003361F8;
      v161[1] = @"Line";
      v161[2] = @"Method";
      v111 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v162[2] = v111;
      v161[3] = NSDebugDescriptionErrorKey;
      v112 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1904];
      v162[3] = v112;
      v113 = [NSDictionary dictionaryWithObjects:v162 forKeys:v161 count:4];
      v22 = [v108 initWithDomain:v109 code:56 userInfo:v113];

      v95 = v158;
LABEL_96:

LABEL_97:
      v94 = v22;
      v93 = v94;
LABEL_98:

      goto LABEL_99;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v116 = NFLogGetLogger();
    if (v116)
    {
      v117 = v116;
      v118 = object_getClass(a1);
      v119 = class_isMetaClass(v118);
      v120 = v3;
      v121 = object_getClassName(a1);
      v154 = sel_getName("_openDriver:");
      v122 = 45;
      if (v119)
      {
        v122 = 43;
      }

      v148 = v121;
      v3 = v120;
      v117(3, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v122, v148, v154, 1877, Stack);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v123 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v124 = object_getClass(a1);
      if (class_isMetaClass(v124))
      {
        v125 = 43;
      }

      else
      {
        v125 = 45;
      }

      v126 = object_getClassName(a1);
      v127 = sel_getName("_openDriver:");
      *v173 = 67110146;
      *&v173[4] = v125;
      *&v173[8] = 2082;
      *&v173[10] = v126;
      *&v173[18] = 2082;
      *&v173[20] = v127;
      *&v173[28] = 1024;
      *&v173[30] = 1877;
      *&v173[34] = 1024;
      *&v173[36] = Stack;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start stack : %d", v173, 0x28u);
    }

    v128 = NFSharedSignpostLog();
    if (os_signpost_enabled(v128))
    {
      *v173 = 67109120;
      *&v173[4] = Stack;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DRIVER_LOAD_STACK", "failure (%d)", v173, 8u);
    }

    sub_10022F438(NFDailyStatisticsCALogger, @"loadStackErrorCount");
    *(a1 + 256) = 2;
    v157 = v3;
    if ((Stack & 0xFFFFFFFE) == 0x10)
    {
      sub_100199974(NFBugCapture, @"NFC controller in bad state", @"NFC controller in bad state", 0);
      v155 = [NSError alloc];
      v129 = [NSString stringWithUTF8String:"nfcd"];
      v169[0] = NSLocalizedDescriptionKey;
      v130 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      v170[0] = v130;
      v170[1] = &off_100336198;
      v169[1] = @"Line";
      v169[2] = @"Method";
      v131 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v170[2] = v131;
      v169[3] = NSDebugDescriptionErrorKey;
      v132 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1884];
      v170[3] = v132;
      v133 = [NSDictionary dictionaryWithObjects:v170 forKeys:v169 count:4];
      v134 = [v155 initWithDomain:v129 code:58 userInfo:v133];

      [NFExceptionsCALogger postAnalyticsSEFailureEvent:4 context:@"NFC controller in bad state" error:v134];
LABEL_122:
      NFDriverClose();
      *(a1 + 8) = 0;
      v94 = v134;

      v3 = v157;
      v93 = v94;
      goto LABEL_98;
    }

    v156 = [NSError alloc];
    v135 = [NSString stringWithUTF8String:"nfcd"];
    if (Stack == 14)
    {
      v165[0] = NSLocalizedDescriptionKey;
      v136 = [NSString stringWithUTF8String:"Bad firmware"];
      v166[0] = v136;
      v166[1] = &off_1003361C8;
      v165[1] = @"Line";
      v165[2] = @"Method";
      v137 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v166[2] = v137;
      v165[3] = NSDebugDescriptionErrorKey;
      v138 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1891];
      v166[3] = v138;
      v139 = v166;
      v140 = v165;
    }

    else
    {
      if (Stack != 2)
      {
        v163[0] = NSLocalizedDescriptionKey;
        v136 = [NSString stringWithUTF8String:"Stack Error"];
        v164[0] = v136;
        v164[1] = &off_1003361E0;
        v163[1] = @"Line";
        v163[2] = @"Method";
        v137 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
        v164[2] = v137;
        v163[3] = NSDebugDescriptionErrorKey;
        v138 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1893];
        v164[3] = v138;
        v141 = [NSDictionary dictionaryWithObjects:v164 forKeys:v163 count:4];
        v142 = v156;
        v143 = v135;
        v144 = 15;
        goto LABEL_121;
      }

      v167[0] = NSLocalizedDescriptionKey;
      v136 = [NSString stringWithUTF8String:"Bad firmware"];
      v168[0] = v136;
      v168[1] = &off_1003361B0;
      v167[1] = @"Line";
      v167[2] = @"Method";
      v137 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_openDriver:")];
      v168[2] = v137;
      v167[3] = NSDebugDescriptionErrorKey;
      v138 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_openDriver:"), 1889];
      v168[3] = v138;
      v139 = v168;
      v140 = v167;
    }

    v141 = [NSDictionary dictionaryWithObjects:v139 forKeys:v140 count:4];
    v142 = v156;
    v143 = v135;
    v144 = 55;
LABEL_121:
    v134 = [v142 initWithDomain:v143 code:v144 userInfo:v141];

    goto LABEL_122;
  }

  v93 = 0;
LABEL_99:

  return v93;
}

void sub_10021CAB4(uint64_t a1)
{
  if (a1)
  {
    if (NFProductHasThermistor())
    {
      v2 = objc_opt_new();
      v3 = *(a1 + 48);
      *(a1 + 48) = v2;

      v4 = sub_1001E6C10(*(a1 + 48));
      objc_initWeak(&location, a1);
      v5 = [NFTimer alloc];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10022442C;
      v15 = &unk_1003161B0;
      objc_copyWeak(v17, &location);
      v16 = a1;
      v17[1] = "_openDriverFinalizer";
      v6 = [v5 initWithCallback:&v12 queue:*(a1 + 136)];
      v7 = *(a1 + 96);
      *(a1 + 96) = v6;

      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }

    [*(a1 + 208) handleStackLoad];
    [*(a1 + 56) stackLoaded:*(a1 + 136)];
    v8 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
    v9 = *(a1 + 40);
    *(a1 + 40) = v8;

    if ((*(a1 + 250) & 2) != 0)
    {
      [*(a1 + 232) bytes];
      [*(a1 + 232) length];
      NFDriverSetChipscope();
    }

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    if (NFIsInternalBuild())
    {
      v11 = [v10 objectForKey:@"smbLogEnabled"];

      if (v11)
      {
        if ([v10 BOOLForKey:@"smbLogEnabled"])
        {
          NFDriverEnableSMBLogging();
        }
      }
    }
  }
}

void sub_10021CC94(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [*(v4 + 16) objectForKey:v3];
    v6 = v5;
    if (v5 && [v5 intValue])
    {
      v7 = [v6 intValue];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      v9 = Logger;
      if (v7 == 1)
      {
        if (Logger)
        {
          Class = object_getClass(v4);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v4);
          Name = sel_getName("closeSession:");
          v12 = 45;
          if (isMetaClass)
          {
            v12 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", v12, ClassName, Name, 430, v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = object_getClass(v4);
          if (class_isMetaClass(v14))
          {
            v15 = 43;
          }

          else
          {
            v15 = 45;
          }

          *buf = 67110146;
          v59 = v15;
          v60 = 2082;
          v61 = object_getClassName(v4);
          v62 = 2082;
          v63 = sel_getName("closeSession:");
          v64 = 1024;
          v65 = 430;
          v66 = 2114;
          v67 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing session on behalf of %{public}@", buf, 0x2Cu);
        }

        [*(v4 + 16) removeObjectForKey:v3];
      }

      else
      {
        if (Logger)
        {
          v44 = object_getClass(v4);
          v45 = class_isMetaClass(v44);
          v55 = object_getClassName(v4);
          v57 = sel_getName("closeSession:");
          v46 = 45;
          if (v45)
          {
            v46 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", v46, v55, v57, 433, v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = object_getClass(v4);
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          *buf = 67110146;
          v59 = v49;
          v60 = 2082;
          v61 = object_getClassName(v4);
          v62 = 2082;
          v63 = sel_getName("closeSession:");
          v64 = 1024;
          v65 = 433;
          v66 = 2114;
          v67 = v3;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Decrementing session on behalf of %{public}@", buf, 0x2Cu);
        }

        v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] - 1);
        [*(v4 + 16) setObject:v50 forKeyedSubscript:v3];
      }

      v51 = *(v4 + 40);
      if (v51 <= 0)
      {
        v53 = +[NSAssertionHandler currentHandler];
        [v53 handleFailureInMethod:"closeSession:" object:v4 file:@"NFDriverWrapper.m" lineNumber:437 description:@"Session over released"];

        v51 = *(v4 + 40);
      }

      v52 = v51 - 1;
      *(v4 + 40) = v52;
      if (!v52)
      {
        *(v4 + 169) = 1;
        sub_10021D4E8(v4, 0);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(v4);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(v4);
        v21 = sel_getName("closeSession:");
        v22 = [*(v4 + 16) objectForKeyedSubscript:v3];
        v23 = 45;
        if (v19)
        {
          v23 = 43;
        }

        v17(3, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", v23, v20, v21, 423, v3, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v4);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(v4);
        v28 = sel_getName("closeSession:");
        v29 = [*(v4 + 16) objectForKeyedSubscript:v3];
        *buf = 67110402;
        v59 = v26;
        v60 = 2082;
        v61 = v27;
        v62 = 2082;
        v63 = v28;
        v64 = 1024;
        v65 = 423;
        v66 = 2114;
        v67 = v3;
        v68 = 2114;
        v69 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Owner %{public}@ does not have a session : %{public}@", buf, 0x36u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(v4);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(v4);
        v35 = sel_getName("closeSession:");
        v36 = 45;
        if (v33)
        {
          v36 = 43;
        }

        v31(3, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", v36, v34, v35, 424, *(v4 + 16));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = object_getClass(v4);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        v40 = object_getClassName(v4);
        v41 = sel_getName("closeSession:");
        v42 = *(v4 + 16);
        *buf = 67110146;
        v59 = v39;
        v60 = 2082;
        v61 = v40;
        v62 = 2082;
        v63 = v41;
        v64 = 1024;
        v65 = 424;
        v66 = 2114;
        v67 = v42;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session Owners: %{public}@", buf, 0x2Cu);
      }

      if (NFIsInternalBuild())
      {
        v43 = +[NSAssertionHandler currentHandler];
        [v43 handleFailureInMethod:"closeSession:" object:v4 file:@"NFDriverWrapper.m" lineNumber:426 description:@"driver session not held"];
      }
    }

    objc_sync_exit(v4);
  }
}

void sub_10021D334(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("stopNow");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Closing driver now !", v7, ClassName, Name, 452);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v14 = v10;
      v15 = 2082;
      v16 = object_getClassName(a1);
      v17 = 2082;
      v18 = sel_getName("stopNow");
      v19 = 1024;
      v20 = 452;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Closing driver now !", buf, 0x22u);
    }

    v11 = a1;
    objc_sync_enter(v11);
    v11[169] = 1;
    sub_10021D4E8(v11, 1);
    objc_sync_exit(v11);
  }
}

void sub_10021D4E8(uint64_t a1, char a2)
{
  if (a1 && *(a1 + 8))
  {
    kdebug_trace();
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRIVER_CLOSE", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_closeDriver:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i stopping stack", v10, ClassName, Name, 2008);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(a1);
      v15 = sel_getName("_closeDriver:");
      *buf = 67109890;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      v27 = 2082;
      v28 = v15;
      v29 = 1024;
      v30 = 2008;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i stopping stack", buf, 0x22u);
    }

    [*(a1 + 80) stopTimer];
    [*(a1 + 88) stopTimer];
    [*(a1 + 96) stopTimer];
    v16 = *(a1 + 96);
    *(a1 + 96) = 0;

    if ((a2 & 1) == 0)
    {
      [*(a1 + 56) stackUnloaded];
      v17 = *(a1 + 56);
      *(a1 + 56) = 0;

      sub_100003678(a1);
      [*(a1 + 208) handleStackUnload];
      v18 = sub_1001E6E54(*(a1 + 48));
      v19 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    NFDriverUnloadStackAndLeaveHWEnabled();
    NFDriverClose();
    *(a1 + 8) = 0;
    v20 = *(a1 + 40);
    *(a1 + 40) = 0;

    v21 = *(a1 + 120);
    *(a1 + 120) = 0;
  }
}

BOOL sub_10021D78C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 objectForKeyedSubscript:@"atx"];
    v6 = [v5 unsignedIntValue];

    v7 = *(a1 + 200);
    v8 = v7 != v6;
    if (v7 != v6)
    {
      *(a1 + 200) = v6;
    }

    v9 = [v4 objectForKeyedSubscript:@"chipscope"];
    v10 = *(a1 + 232);
    if (!v10 && v9 || v10 && !v9 || v10 && v9 && ([v10 isEqualToData:v9] & 1) == 0)
    {
      objc_storeStrong((a1 + 232), v9);
      v8 = 1;
    }

    v11 = [v4 objectForKeyedSubscript:@"flags"];
    v12 = [v11 unsignedLongValue];

    if (*(a1 + 248) != v12)
    {
      *(a1 + 248) = v12;
      v8 = 1;
    }

    v13 = [v4 objectForKeyedSubscript:@"pollPeriod"];
    v14 = [v13 unsignedIntValue];

    if (*(a1 + 180) != v14)
    {
      *(a1 + 180) = v14;
      v8 = 1;
    }

    v15 = [v4 objectForKeyedSubscript:@"multiTagPollPeriod"];
    v16 = [v15 unsignedIntValue];

    if (*(a1 + 184) != v16)
    {
      *(a1 + 184) = v16;
      v8 = 1;
    }

    v17 = [v4 objectForKeyedSubscript:@"multiTagPollRetries"];
    v18 = [v17 unsignedIntValue];

    if (*(a1 + 188) != v18)
    {
      *(a1 + 188) = v18;
      v8 = 1;
    }

    v19 = [v4 objectForKeyedSubscript:@"typeATagDataRate"];
    v20 = [v19 unsignedIntValue];

    if (*(a1 + 64) != v20)
    {
      *(a1 + 64) = v20;
      v8 = 1;
    }

    v21 = [v4 objectForKeyedSubscript:@"ntag5DataRate"];
    v22 = [v21 unsignedIntValue];

    if (*(a1 + 192) != v22)
    {
      *(a1 + 192) = v22;
      v8 = 1;
    }

    v23 = [v4 objectForKeyedSubscript:@"ntag5T1"];
    v24 = [v23 unsignedIntValue];

    if (*(a1 + 196) != v24)
    {
      *(a1 + 196) = v24;
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10021D9F4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if ((v1[169] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("restartDriver");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i re-starting the driver..", v7, ClassName, Name, 530);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v29 = v10;
      v30 = 2082;
      v31 = object_getClassName(v1);
      v32 = 2082;
      v33 = sel_getName("restartDriver");
      v34 = 1024;
      v35 = 530;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i re-starting the driver..", buf, 0x22u);
    }

    sub_10021D4E8(v1, 0);
    v11 = sub_10021B0D8(v1, @"restart");
    if (v11)
    {
      v12 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v14 = v13;
        v15 = object_getClass(v1);
        v16 = class_isMetaClass(v15);
        v25 = object_getClassName(v1);
        v27 = sel_getName("restartDriver");
        v17 = 45;
        if (v16)
        {
          v17 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", v17, v25, v27, 534, v12);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(v1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(v1);
        v22 = sel_getName("restartDriver");
        *buf = 67110146;
        v29 = v20;
        v30 = 2082;
        v31 = v21;
        v32 = 2082;
        v33 = v22;
        v34 = 1024;
        v35 = 534;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", buf, 0x2Cu);
      }

      NFDriverSimulateCrash();
      v23 = 0;
      goto LABEL_25;
    }

    sub_10021CAB4(v1);
  }

  v23 = 1;
LABEL_25:
  objc_sync_exit(v1);

  return v23;
}

uint64_t sub_10021DD20(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (v4[169])
    {
      v5 = 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v4);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v4);
        Name = sel_getName("runActionWithoutMiddleware:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i re-starting the driver..", v11, ClassName, Name, 552);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v4);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v32 = v14;
        v33 = 2082;
        v34 = object_getClassName(v4);
        v35 = 2082;
        v36 = sel_getName("runActionWithoutMiddleware:");
        v37 = 1024;
        v38 = 552;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i re-starting the driver..", buf, 0x22u);
      }

      sub_10021D4E8(v4, 0);
      v5 = v3[2](v3);
      v15 = sub_10021B0D8(v4, @"restart");
      if (v15)
      {
        v16 = v15;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(v4);
          v20 = class_isMetaClass(v19);
          v28 = object_getClassName(v4);
          v30 = sel_getName("runActionWithoutMiddleware:");
          v21 = 45;
          if (v20)
          {
            v21 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", v21, v28, v30, 560, v16);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = object_getClass(v4);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          v25 = object_getClassName(v4);
          v26 = sel_getName("runActionWithoutMiddleware:");
          *buf = 67110146;
          v32 = v24;
          v33 = 2082;
          v34 = v25;
          v35 = 2082;
          v36 = v26;
          v37 = 1024;
          v38 = 560;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to re-start the driver! error=%@", buf, 0x2Cu);
        }

        NFDriverSimulateCrash();
        v5 = 0;
      }

      else
      {
        sub_10021CAB4(v4);
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10021E074(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 72) lock];
    v2 = *(a1 + 104);
    [*(a1 + 72) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10021E0D0(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 72) lock];
    v2 = *(a1 + 170);
    [*(a1 + 80) stopTimer];
    [*(a1 + 88) stopTimer];
    [*(a1 + 72) unlock];
    if (v2 == 1)
    {
      v3 = *(a1 + 136);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_10021E188;
      v4[3] = &unk_100315F58;
      v4[4] = a1;
      v4[5] = "_resetFieldState";
      dispatch_async(v3, v4);
    }
  }
}

void sub_10021E188(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Forcing field exit on state reset", v7, ClassName, Name, 739);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 1024;
    v21 = 739;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing field exit on state reset", buf, 0x22u);
  }

  sub_100003678(*(a1 + 32));
}

void sub_10021E30C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 224);
    v3 = a2;
    [v2 driverRequestService:v3];
  }
}

uint64_t sub_10021E364(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("restartDiscovery");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1565);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(a1);
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = object_getClassName(a1);
    v19 = 2082;
    v20 = sel_getName("restartDiscovery");
    v21 = 1024;
    v22 = 1565;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = a1;
  objc_sync_enter(v11);
  if (v11[169])
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100220BD0(v11, 1);
  }

  objc_sync_exit(v11);

  return v12;
}

void *sub_10021E530(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:*(v1 + 169)];
    [v2 setObject:v3 forKeyedSubscript:@"isClosing"];

    v4 = [NSNumber numberWithBool:*(v1 + 170)];
    [v2 setObject:v4 forKeyedSubscript:@"FieldON"];

    v5 = [NSNumber numberWithBool:*(v1 + 168)];
    [v2 setObject:v5 forKeyedSubscript:@"TechnologySent"];

    v6 = v1[7];
    if (v6)
    {
      v7 = [v6 state];
      [v2 setObject:v7 forKeyedSubscript:@"Reader Policy"];
    }

    else
    {
      [v2 setObject:&stru_10031EA18 forKeyedSubscript:@"Reader Policy"];
    }

    v8 = [[NSDictionary alloc] initWithDictionary:v1[16]];
    [v2 setObject:v8 forKeyedSubscript:@"driverSessionOpened"];

    v9 = [NSNumber numberWithInt:*(v1 + 40)];
    [v2 setObject:v9 forKeyedSubscript:@"driverSessionCount"];

    v1 = [[NSDictionary alloc] initWithDictionary:v2];
  }

  return v1;
}

uint64_t sub_10021E6CC(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if (!*(v3 + 1))
  {
    v104 = +[NSAssertionHandler currentHandler];
    [v104 handleFailureInMethod:"getControllerInfo:" object:v3 file:@"NFDriverWrapper.m" lineNumber:1179 description:@"driver not open"];
  }

  v126 = 0u;
  memset(v127, 0, 28);
  ControllerInfo = NFDriverGetControllerInfo();
  if ((ControllerInfo & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("getControllerInfo:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Failed to get info", v11, ClassName, Name, 1183);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v133 = v14;
      v134 = 2082;
      v135 = object_getClassName(v3);
      v136 = 2082;
      v137 = sel_getName("getControllerInfo:");
      v138 = 1024;
      v139 = 1183;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
    }

    goto LABEL_100;
  }

  v123 = ControllerInfo;
  v122 = a2;
  if ((NF_isFeatureSupported() & 1) == 0)
  {
    v15 = v3;
    objc_sync_enter(v15);
    if (v15[169] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(v15);
        v19 = class_isMetaClass(v18);
        v20 = object_getClassName(v15);
        v107 = sel_getName("isHostWakeCapable:");
        v21 = 45;
        if (v19)
        {
          v21 = 43;
        }

        v17(6, "%c[%{public}s %{public}s]:%i Driver is closed", v21, v20, v107, 2144);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = object_getClass(v15);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        *buf = 67109890;
        v133 = v24;
        v134 = 2082;
        v135 = object_getClassName(v15);
        v136 = 2082;
        v137 = sel_getName("isHostWakeCapable:");
        v138 = 1024;
        v139 = 2144;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Driver is closed", buf, 0x22u);
      }

      v25 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v130[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Aborted"];
      v131[0] = v27;
      v131[1] = &off_100336240;
      v130[1] = @"Line";
      v130[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("isHostWakeCapable:")];
      v131[2] = v28;
      v130[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("isHostWakeCapable:"), 2145];
      v131[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:4];
      v31 = v25;
      v32 = v26;
      v33 = 3;
    }

    else
    {
      if (*(v3 + 1))
      {
        IsHostWakeCapable = NFDriverIsHostWakeCapable();
        objc_sync_exit(v15);

        v34 = 0;
LABEL_56:

        goto LABEL_58;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(v15);
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(v15);
        v40 = sel_getName("isHostWakeCapable:");
        if (*(v3 + 1))
        {
          v41 = "open";
        }

        else
        {
          v41 = "closed";
        }

        v42 = 45;
        if (v38)
        {
          v42 = 43;
        }

        v36(6, "%c[%{public}s %{public}s]:%i Driver is %s", v42, v39, v40, 2151, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = object_getClass(v15);
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        v46 = object_getClassName(v15);
        v47 = sel_getName("isHostWakeCapable:");
        if (*(v3 + 1))
        {
          v48 = "open";
        }

        else
        {
          v48 = "closed";
        }

        *buf = 67110146;
        v133 = v45;
        v134 = 2082;
        v135 = v46;
        v136 = 2082;
        v137 = v47;
        v138 = 1024;
        v139 = 2151;
        v140 = 2080;
        v141 = v48;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Driver is %s", buf, 0x2Cu);
      }

      v49 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v128[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Invalid State"];
      v129[0] = v27;
      v129[1] = &off_100336258;
      v128[1] = @"Line";
      v128[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("isHostWakeCapable:")];
      v129[2] = v28;
      v128[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("isHostWakeCapable:"), 2152];
      v129[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:4];
      v31 = v49;
      v32 = v26;
      v33 = 12;
    }

    v50 = [v31 initWithDomain:v32 code:v33 userInfo:v30];

    objc_sync_exit(v15);
    if (!v50)
    {
      IsHostWakeCapable = 0;
      goto LABEL_58;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(v15);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(v15);
      v108 = sel_getName("getControllerInfo:");
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Error querying wake capability", v56, v55, v108, 1191);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v57 = object_getClass(v15);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(v15);
      v60 = sel_getName("getControllerInfo:");
      *buf = 67109890;
      v133 = v58;
      v134 = 2082;
      v135 = v59;
      v136 = 2082;
      v137 = v60;
      v138 = 1024;
      v139 = 1191;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error querying wake capability", buf, 0x22u);
    }

    IsHostWakeCapable = 0;
    goto LABEL_56;
  }

  IsHostWakeCapable = 1;
LABEL_58:
  v119 = [NFHardwareControllerInfo alloc];
  v124[0] = @"siliconVersion";
  v12 = [NSNumber numberWithUnsignedInt:v126];
  v125[0] = v12;
  v124[1] = @"siliconName";
  v121 = [NSNumber numberWithUnsignedInt:DWORD1(v126)];
  v125[1] = v121;
  v124[2] = @"ROMVersion";
  v120 = [NSNumber numberWithUnsignedInt:DWORD2(v126)];
  v125[2] = v120;
  v124[3] = @"firmwareVersion";
  v61 = [NSNumber numberWithUnsignedInt:HIDWORD(v126)];
  v125[3] = v61;
  v124[4] = @"firmwareRevision";
  v118 = [NSNumber numberWithUnsignedInt:v127[0]];
  v125[4] = v118;
  v124[5] = @"middlewareVersion";
  v117 = [NSNumber numberWithUnsignedInt:v127[1]];
  v125[5] = v117;
  v124[6] = @"hasAntenna";
  v116 = [NSNumber numberWithBool:v3[173]];
  v125[6] = v116;
  v124[7] = @"hasMFW";
  v115 = [NSNumber numberWithBool:*(*(v3 + 1) + 58)];
  v125[7] = v115;
  v124[8] = @"hasHLMSupport";
  v114 = [NSNumber numberWithBool:*(*(v3 + 1) + 64)];
  v125[8] = v114;
  v124[9] = @"hasLPEMSupport";
  v113 = [NSNumber numberWithInt:sub_1001A9C94(v3)];
  v125[9] = v113;
  v124[10] = @"hasCarKeySupport";
  if (v3[173] != 1)
  {
    goto LABEL_62;
  }

  if (!NFProductIsPhone())
  {
    IsWatch = NFProductIsWatch();
    if (DWORD1(v126) > 7)
    {
      v62 = IsWatch;
    }

    else
    {
      v62 = 0;
    }

    goto LABEL_66;
  }

  if (DWORD1(v126) >= 8)
  {
    v62 = sub_1001A9C94(v3);
  }

  else
  {
LABEL_62:
    v62 = 0;
  }

LABEL_66:
  v64 = [NSNumber numberWithInt:v62];
  v125[10] = v64;
  v124[11] = @"hasReaderModeSupport";
  v65 = +[NSUserDefaults standardUserDefaults];
  v66 = [v65 BOOLForKey:@"ReaderMode"];

  if (v66)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(v3);
      v70 = class_isMetaClass(v69);
      v71 = v61;
      v72 = IsHostWakeCapable;
      v73 = object_getClassName(v3);
      v109 = sel_getName("_supportsReaderMode");
      v74 = 45;
      if (v70)
      {
        v74 = 43;
      }

      v105 = v73;
      IsHostWakeCapable = v72;
      v61 = v71;
      v68(4, "%c[%{public}s %{public}s]:%i Defaults override for reader mode", v74, v105, v109, 1472);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = object_getClass(v3);
      if (class_isMetaClass(v76))
      {
        v77 = 43;
      }

      else
      {
        v77 = 45;
      }

      v78 = v61;
      v79 = IsHostWakeCapable;
      v80 = object_getClassName(v3);
      v81 = sel_getName("_supportsReaderMode");
      *buf = 67109890;
      v133 = v77;
      v134 = 2082;
      v135 = v80;
      IsHostWakeCapable = v79;
      v61 = v78;
      v136 = 2082;
      v137 = v81;
      v138 = 1024;
      v139 = 1472;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Defaults override for reader mode", buf, 0x22u);
    }

    LOBYTE(v75) = 1;
  }

  else
  {
    LODWORD(v75) = NFProductSupportsNFCReader();
    if (NFIsInternalBuild() && v3[173] != v75)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFLogGetLogger();
      if (v82)
      {
        log = v82;
        v83 = object_getClass(v3);
        v84 = IsHostWakeCapable;
        v85 = class_isMetaClass(v83);
        v86 = object_getClassName(v3);
        v87 = sel_getName("_supportsReaderMode");
        v88 = @"NO";
        if (v3[173])
        {
          v89 = @"YES";
        }

        else
        {
          v89 = @"NO";
        }

        if (v75)
        {
          v88 = @"YES";
        }

        v110 = v89;
        v90 = !v85;
        IsHostWakeCapable = v84;
        v91 = 45;
        if (!v90)
        {
          v91 = 43;
        }

        (log)(3, "%c[%{public}s %{public}s]:%i DeviceSupportsNFC result does not match!!! hasAntenna=%{public}@,  expected=%{public}@", v91, v86, v87, 1500, v110, v88);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v92 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = object_getClass(v3);
        loga = v92;
        if (class_isMetaClass(v93))
        {
          v94 = 43;
        }

        else
        {
          v94 = 45;
        }

        v95 = IsHostWakeCapable;
        v96 = object_getClassName(v3);
        v97 = sel_getName("_supportsReaderMode");
        v98 = @"NO";
        if (v3[173])
        {
          v99 = @"YES";
        }

        else
        {
          v99 = @"NO";
        }

        *buf = 67110402;
        if (v75)
        {
          v98 = @"YES";
        }

        v133 = v94;
        v92 = loga;
        v134 = 2082;
        v135 = v96;
        IsHostWakeCapable = v95;
        v136 = 2082;
        v137 = v97;
        v138 = 1024;
        v139 = 1500;
        v140 = 2114;
        v141 = v99;
        v142 = 2114;
        v143 = v98;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i DeviceSupportsNFC result does not match!!! hasAntenna=%{public}@,  expected=%{public}@", buf, 0x36u);
      }

      LOBYTE(v75) = v3[173];
    }
  }

  v100 = [NSNumber numberWithInt:v75 & 1];
  v125[11] = v100;
  v124[12] = @"poweredRunDuringSleep";
  v101 = [NSNumber numberWithBool:IsHostWakeCapable];
  v125[12] = v101;
  v102 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:13];
  *v122 = [(NFHardwareControllerInfo *)v119 initWithDictionary:v102];

  ControllerInfo = v123;
LABEL_100:

  objc_sync_exit(v3);
  return ControllerInfo;
}

unint64_t sub_10021F57C(unint64_t result)
{
  if (result >= 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Returning NFSecureElementRoutingOff because of invalid mode.", "[NFDriverWrapper _asSecureElementRouting:]", 1230);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v4 = "[NFDriverWrapper _asSecureElementRouting:]";
      v5 = 1024;
      v6 = 1230;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Returning NFSecureElementRoutingOff because of invalid mode.", buf, 0x12u);
    }

    return 0;
  }

  return result;
}

id sub_10021F67C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setRouting:");
      if ([v3 fdOn])
      {
        v10 = "yes";
      }

      else
      {
        v10 = "no";
      }

      v128 = v10;
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i FieldDetect=%s : Routing %{public}@", v11, ClassName, Name, 1256, v128, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(a1);
      v16 = sel_getName("setRouting:");
      *buf = 67110402;
      if ([v3 fdOn])
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      v142 = v14;
      v143 = 2082;
      v144 = v15;
      v145 = 2082;
      v146 = v16;
      v147 = 1024;
      v148 = 1256;
      v149 = 2080;
      v150 = v17;
      v151 = 2114;
      v152 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FieldDetect=%s : Routing %{public}@", buf, 0x36u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(a1);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(a1);
      v23 = sel_getName("setRouting:");
      v24 = 45;
      if (v21)
      {
        v24 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i current routing: %{public}@", v24, v22, v23, 1257, a1[15]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(a1);
      v29 = sel_getName("setRouting:");
      v30 = a1[15];
      *buf = 67110146;
      v142 = v27;
      v143 = 2082;
      v144 = v28;
      v145 = 2082;
      v146 = v29;
      v147 = 1024;
      v148 = 1257;
      v149 = 2114;
      v150 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i current routing: %{public}@", buf, 0x2Cu);
    }

    v31 = [v3 fdOn];
    v32 = [v3 wantsCardEmulation];
    v33 = [v3 pollingType];
    v34 = [v3 wantsExpress];
    v35 = [v3 wantsSEReader];
    v36 = a1;
    objc_sync_enter(v36);
    if (*(v36 + 169) == 1)
    {
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v139[0] = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Aborted"];
      v140[0] = v39;
      v140[1] = &off_100336108;
      v139[1] = @"Line";
      v139[2] = @"Method";
      v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
      v140[2] = v40;
      v139[3] = NSDebugDescriptionErrorKey;
      v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1271];
      v140[3] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:4];
      v43 = v37;
      v44 = v38;
      v45 = 3;
LABEL_135:
      v108 = [v43 initWithDomain:v44 code:v45 userInfo:v42];

      goto LABEL_136;
    }

    if (!v36[1])
    {
      v123 = +[NSAssertionHandler currentHandler];
      [v123 handleFailureInMethod:"setRouting:" object:v36 file:@"NFDriverWrapper.m" lineNumber:1274 description:@"driver not open"];
    }

    v46 = v36[15];
    if (v46 && sub_10004B630(v46, v3) && (v31 == [v36[15] fdOn] || objc_msgSend(v3, "fieldDetectType") == 3))
    {
      v47 = NFSharedSignpostLog();
      if (os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfigInDriverWrapper", "No changes necessary", buf, 2u);
      }

      goto LABEL_122;
    }

    v133 = v35;
    if ([v3 pollingType] == 1 || objc_msgSend(v3, "pollingType") == 2)
    {
      sub_1001E0DA4(v36, [v3 polling], objc_msgSend(v3, "tagDiscoveryConfig"));
    }

    [v36[9] lock];
    v48 = *(v36 + 170);
    *(v36 + 41) = 1;
    [v36[9] unlock];
    if ([v3 embeddedMode] == 1)
    {
      v49 = 0.0;
      if (v48)
      {
        if (*(v36 + 176))
        {
          v49 = 1.0;
        }

        else
        {
          v49 = 0.5;
        }
      }

      goto LABEL_62;
    }

    if ([v3 embeddedMode] == 2)
    {
      if (v48)
      {
        v49 = 0.5;
      }

      else
      {
        v49 = 0.0;
      }
    }

    else
    {
      v49 = 0.0;
      if ([v3 embeddedMode] || *(v36 + 32) != 1)
      {
        goto LABEL_62;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(v36);
        v129 = class_isMetaClass(v52);
        log = object_getClassName(v36);
        v124 = sel_getName("setRouting:");
        v53 = 45;
        if (v129)
        {
          v53 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i Resetting applet state", v53, log, v124, 1324);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = object_getClass(v36);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v130 = v56;
        loga = v54;
        v57 = object_getClassName(v36);
        v58 = sel_getName("setRouting:");
        *buf = 67109890;
        v142 = v130;
        v143 = 2082;
        v144 = v57;
        v54 = loga;
        v145 = 2082;
        v146 = v58;
        v147 = 1024;
        v148 = 1324;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting applet state", buf, 0x22u);
      }
    }

    *(v36 + 32) = 0;
LABEL_62:
    v59 = [v3 hostMode] == 2;
    v60 = 0.5;
    if ((v59 & v48 & (v49 == 0.0)) == 0)
    {
      v60 = v49;
    }

    if ((v48 & (v60 == 0.0)) != 0)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = v60;
    }

    if ((v32 | v34))
    {
      *(v36[1] + 59) = sub_100207B18(v36[14], 0);
    }

    if (v32)
    {
      [v3 cardEmulationType];
    }

    if (v33)
    {
      if (v33 == 3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFLogGetLogger();
        if (v62)
        {
          v63 = v62;
          v64 = object_getClass(v36);
          v65 = class_isMetaClass(v64);
          v66 = object_getClassName(v36);
          v125 = sel_getName("setRouting:");
          v67 = 45;
          if (v65)
          {
            v67 = 43;
          }

          v63(6, "%c[%{public}s %{public}s]:%i MultiTag Detection enabled", v67, v66, v125, 1362);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v68 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = object_getClass(v36);
          if (class_isMetaClass(v69))
          {
            v70 = 43;
          }

          else
          {
            v70 = 45;
          }

          v71 = object_getClassName(v36);
          v72 = sel_getName("setRouting:");
          *buf = 67109890;
          v142 = v70;
          v143 = 2082;
          v144 = v71;
          v145 = 2082;
          v146 = v72;
          v147 = 1024;
          v148 = 1362;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MultiTag Detection enabled", buf, 0x22u);
        }
      }

      sub_1001E0E74(v36, [v3 pollingDuration]);
      if ([v36[7] readerModeProtectionActive])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v73 = NFLogGetLogger();
        if (v73)
        {
          v74 = v73;
          v75 = object_getClass(v36);
          v76 = class_isMetaClass(v75);
          v77 = object_getClassName(v36);
          v78 = sel_getName("setRouting:");
          v79 = [v36[7] state];
          v80 = 45;
          if (v76)
          {
            v80 = 43;
          }

          v74(4, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active. state=%@", v80, v77, v78, 1369, v79);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = object_getClass(v36);
          if (class_isMetaClass(v82))
          {
            v83 = 43;
          }

          else
          {
            v83 = 45;
          }

          v84 = object_getClassName(v36);
          v85 = sel_getName("setRouting:");
          v86 = [v36[7] state];
          *buf = 67110146;
          v142 = v83;
          v143 = 2082;
          v144 = v84;
          v145 = 2082;
          v146 = v85;
          v147 = 1024;
          v148 = 1369;
          v149 = 2112;
          v150 = v86;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Denying reader mode, protection active. state=%@", buf, 0x2Cu);
        }

        v87 = [NSError alloc];
        v38 = [NSString stringWithUTF8String:"nfcd"];
        v137[0] = NSLocalizedDescriptionKey;
        v39 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
        v138[0] = v39;
        v138[1] = &off_100336120;
        v137[1] = @"Line";
        v137[2] = @"Method";
        v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
        v138[2] = v40;
        v137[3] = NSDebugDescriptionErrorKey;
        v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1370];
        v138[3] = v41;
        v42 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:4];
        v43 = v87;
        v44 = v38;
        v45 = 47;
        goto LABEL_135;
      }
    }

    else
    {
      sub_1001E0E74(v36, 0);
      sub_1001E6EFC(v36[6], 0);
      if ([v36[7] readerModeStoppedShouldCooloffRun])
      {
        v88 = sub_10021A4A0(v36, @"Cooloff", 1uLL);
      }
    }

    v89 = [v3 lpcdEcpFrame];

    if (v89)
    {
      v90 = [v3 lpcdEcpFrame];
      [v90 bytes];
      v91 = [v3 lpcdEcpFrame];
      [v91 length];
      NFDataCreateWithBytes();
    }

    v92 = v3;
    [v92 wantsExpress];
    [v92 wantsIsoDepToHost];
    sub_10021F57C([v92 embeddedMode]);
    v93 = [v92 hostMode];

    sub_10021F57C(v93);
    v94 = NFSharedSignpostLog();
    if (os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v94, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "NFDriverSetConfiguration", buf, 2u);
    }

    v95 = mach_absolute_time();
    if ((NFDriverSetConfiguration() & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFLogGetLogger();
      if (v109)
      {
        v110 = v109;
        v111 = object_getClass(v36);
        v112 = class_isMetaClass(v111);
        v113 = object_getClassName(v36);
        v127 = sel_getName("setRouting:");
        v114 = 45;
        if (v112)
        {
          v114 = 43;
        }

        v110(3, "%c[%{public}s %{public}s]:%i Failed to set configuration", v114, v113, v127, 1403);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v116 = object_getClass(v36);
        if (class_isMetaClass(v116))
        {
          v117 = 43;
        }

        else
        {
          v117 = 45;
        }

        v118 = object_getClassName(v36);
        v119 = sel_getName("setRouting:");
        *buf = 67109890;
        v142 = v117;
        v143 = 2082;
        v144 = v118;
        v145 = 2082;
        v146 = v119;
        v147 = 1024;
        v148 = 1403;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set configuration", buf, 0x22u);
      }

      v120 = NFSharedSignpostLog();
      if (os_signpost_enabled(v120))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "Error in NFDriverSetConfiguration", buf, 2u);
      }

      NFDataRelease();
      v121 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v135[0] = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Stack Error"];
      v136[0] = v39;
      v136[1] = &off_100336138;
      v135[1] = @"Line";
      v135[2] = @"Method";
      v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setRouting:")];
      v136[2] = v40;
      v135[3] = NSDebugDescriptionErrorKey;
      v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setRouting:"), 1406];
      v136[3] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4];
      v43 = v121;
      v44 = v38;
      v45 = 15;
      goto LABEL_135;
    }

    NFDataRelease();
    objc_storeStrong(v36 + 15, a2);
    v96 = NFSharedSignpostLog();
    if (os_signpost_enabled(v96))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SET_SE_ROUTING", "NFDriverSetConfiguration", buf, 2u);
    }

    if (v133 && *(v36 + 32) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v97 = NFLogGetLogger();
      if (v97)
      {
        v98 = v97;
        v99 = object_getClass(v36);
        v100 = class_isMetaClass(v99);
        v101 = object_getClassName(v36);
        v126 = sel_getName("setRouting:");
        v102 = 45;
        if (v100)
        {
          v102 = 43;
        }

        v98(6, "%c[%{public}s %{public}s]:%i Reader starting and Applet is ready.", v102, v101, v126, 1413);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = object_getClass(v36);
        if (class_isMetaClass(v104))
        {
          v105 = 43;
        }

        else
        {
          v105 = 45;
        }

        v106 = object_getClassName(v36);
        v107 = sel_getName("setRouting:");
        *buf = 67109890;
        v142 = v105;
        v143 = 2082;
        v144 = v106;
        v145 = 2082;
        v146 = v107;
        v147 = 1024;
        v148 = 1413;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader starting and Applet is ready.", buf, 0x22u);
      }
    }

    if (v61 != 0.0)
    {
      [v36[9] lock];
      if (*(v36 + 170) == 1 && v95 > v36[19])
      {
        if (*(v36 + 41) == 1)
        {
          [v36[11] startTimer:v61];
        }

        *(v36 + 41) = 0;
      }

      [v36[9] unlock];
    }

LABEL_122:
    v108 = 0;
LABEL_136:
    objc_sync_exit(v36);

    goto LABEL_137;
  }

  v108 = 0;
LABEL_137:

  return v108;
}

void sub_1002208E4(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    if ((v5[169] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v5);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v5);
        Name = sel_getName("setExpressConfig:updateLPEMConfig:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i 0x%04x", v10, ClassName, Name, 1443, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v5);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67110146;
        v29 = v13;
        v30 = 2082;
        v31 = object_getClassName(v5);
        v32 = 2082;
        v33 = sel_getName("setExpressConfig:updateLPEMConfig:");
        v34 = 1024;
        v35 = 1443;
        v36 = 1024;
        v37 = a2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i 0x%04x", buf, 0x28u);
      }

      NFDriverSetExpressConfig();
      if (a3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v15 = v14;
          v16 = object_getClass(v5);
          v17 = class_isMetaClass(v16);
          v18 = object_getClassName(v5);
          v27 = sel_getName("setExpressConfig:updateLPEMConfig:");
          v19 = 45;
          if (v17)
          {
            v19 = 43;
          }

          v15(6, "%c[%{public}s %{public}s]:%i Updating the express config", v19, v18, v27, 1446);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = object_getClass(v5);
          if (class_isMetaClass(v21))
          {
            v22 = 43;
          }

          else
          {
            v22 = 45;
          }

          v23 = object_getClassName(v5);
          v24 = sel_getName("setExpressConfig:updateLPEMConfig:");
          *buf = 67109890;
          v29 = v22;
          v30 = 2082;
          v31 = v23;
          v32 = 2082;
          v33 = v24;
          v34 = 1024;
          v35 = 1446;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating the express config", buf, 0x22u);
        }

        NFDriverSetHeadlessMode();
      }
    }

    objc_sync_exit(v5);
  }
}

uint64_t sub_100220BD0(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 8) + 32))
  {
    v3 = [*(a1 + 56) readerModeProtectionActive];
  }

  else
  {
    v3 = 0;
  }

  sub_1001E6EFC(*(a1 + 48), 0);
  if ([*(a1 + 56) readerModeStoppedShouldCooloffRun])
  {
    v3 = 1;
    v4 = sub_10021A4A0(a1, @"Cooloff", 1uLL);
  }

  [*(a1 + 72) lock];
  v5 = *(a1 + 170);
  if (v5 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_restartDiscoveryWithReconfig:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Restarting field coalescing timer", v11, ClassName, Name, 1539);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v32 = v14;
      v33 = 2082;
      v34 = object_getClassName(a1);
      v35 = 2082;
      v36 = sel_getName("_restartDiscoveryWithReconfig:");
      v37 = 1024;
      v38 = 1539;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting field coalescing timer", buf, 0x22u);
    }

    [*(a1 + 88) stopTimer];
    [*(a1 + 88) startTimer:0.5];
  }

  [*(a1 + 72) unlock];
  restarted = NFDriverRestartDiscovery();
  if ((v3 & restarted) == 1)
  {
    v16 = 1;
    sub_1001E6EFC(*(a1 + 48), 1);
    [*(a1 + 56) triggerBurnoutTimer];
  }

  else
  {
    v16 = restarted;
    if (((restarted | v5 ^ 1) & 1) == 0)
    {
      [*(a1 + 72) lock];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(a1);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(a1);
        v30 = sel_getName("_restartDiscoveryWithReconfig:");
        v22 = 45;
        if (v20)
        {
          v22 = 43;
        }

        v18(4, "%c[%{public}s %{public}s]:%i Stopping coalescing timer as restart discovery failed", v22, v21, v30, 1555);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = object_getClass(a1);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        v26 = object_getClassName(a1);
        v27 = sel_getName("_restartDiscoveryWithReconfig:");
        *buf = 67109890;
        v32 = v25;
        v33 = 2082;
        v34 = v26;
        v35 = 2082;
        v36 = v27;
        v37 = 1024;
        v38 = 1555;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stopping coalescing timer as restart discovery failed", buf, 0x22u);
      }

      [*(a1 + 88) stopTimer];
      [*(a1 + 72) unlock];
      return 0;
    }
  }

  return v16;
}

uint64_t sub_100220F6C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("resumeDiscovery");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1577);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(a1);
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = object_getClassName(a1);
    v19 = 2082;
    v20 = sel_getName("resumeDiscovery");
    v21 = 1024;
    v22 = 1577;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = a1;
  objc_sync_enter(v11);
  if (v11[169])
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100220BD0(v11, 0);
  }

  objc_sync_exit(v11);

  return v12;
}

id sub_100221138(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getDieID");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 1589);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v10;
      v17 = 2082;
      v18 = object_getClassName(a1);
      v19 = 2082;
      v20 = sel_getName("getDieID");
      v21 = 1024;
      v22 = 1589;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v11 = a1;
    objc_sync_enter(v11);
    if (v11[169])
    {
      v12 = 0;
    }

    else
    {
      *buf = 0;
      v12 = 0;
      if (NFDriverReadDieID() && *buf)
      {
        v13 = [NSData alloc];
        v12 = [v13 initWithBytesNoCopy:*buf length:0];
      }
    }

    objc_sync_exit(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *sub_100221348(void *a1, void *a2)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getUniqueFDRKey:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 1612);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(a1);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v36 = v12;
      v37 = 2082;
      v38 = object_getClassName(a1);
      v39 = 2082;
      v40 = sel_getName("getUniqueFDRKey:");
      v41 = 1024;
      v42 = 1612;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v13 = a1;
    objc_sync_enter(v13);
    if (v13[169] == 1)
    {
      if (a2)
      {
        v14 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v33[0] = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithUTF8String:"Aborted"];
        v34[0] = v16;
        v34[1] = &off_100336150;
        v33[1] = @"Line";
        v33[2] = @"Method";
        v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getUniqueFDRKey:")];
        v34[2] = v17;
        v33[3] = NSDebugDescriptionErrorKey;
        v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getUniqueFDRKey:"), 1616];
        v34[3] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
        *a2 = [v14 initWithDomain:v15 code:3 userInfo:v19];

LABEL_27:
        a2 = 0;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 0;
      }

      *buf = 0;
      UniqueFDRKey = NFDriverGetUniqueFDRKey();
      if (UniqueFDRKey)
      {
        v21 = *buf == 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = !v21;
      if (a2 && v22)
      {
        v23 = [NSError alloc];
        v24 = [NSString stringWithUTF8String:"nfcd"];
        v31[0] = NSLocalizedDescriptionKey;
        v25 = [NSString stringWithUTF8String:"Stack Error"];
        v32[0] = v25;
        v32[1] = &off_100336168;
        v31[1] = @"Line";
        v31[2] = @"Method";
        v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getUniqueFDRKey:")];
        v32[2] = v26;
        v31[3] = NSDebugDescriptionErrorKey;
        v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getUniqueFDRKey:"), 1625];
        v32[3] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
        *a2 = [v23 initWithDomain:v24 code:15 userInfo:v28];
      }

      if (!UniqueFDRKey)
      {
        goto LABEL_27;
      }

      a2 = [[NSString alloc] initWithUTF8String:UniqueFDRKey];
      free(UniqueFDRKey);
    }

    objc_sync_exit(v13);

    goto LABEL_29;
  }

  a2 = 0;
LABEL_29:

  return a2;
}

id sub_1002217FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (v3[169])
    {
      v4 = 0;
    }

    else
    {
      v4 = NFDriverCopyAndClearAssertion();
    }

    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_100221884(id *result, _BYTE *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    [result[9] lock];
    if (a2)
    {
      *a2 = *(v5 + 170);
    }

    if (a3)
    {
      *a3 = v5[13];
    }

    v6 = v5[9];

    return [v6 unlock];
  }

  return result;
}

id sub_1002218F4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    objc_sync_enter(v2);
    if (v2[169] == 1)
    {
      v3 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v13 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:"Aborted"];
      v14 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v7 = [v3 initWithDomain:ErrorCode code:3 userInfo:v6];
    }

    else
    {
      if (!NFDriverGetSWIOTemperature())
      {
        v7 = 0;
        goto LABEL_7;
      }

      ErrorCode = NFDriverCreateErrorCode();
      v8 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v11[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Stack Error"];
      v11[1] = NSUnderlyingErrorKey;
      v12[0] = v6;
      v12[1] = ErrorCode;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v7 = [v8 initWithDomain:v5 code:15 userInfo:v9];
    }

LABEL_7:
    objc_sync_exit(v2);

    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

void sub_100221B00(void *a1, double a2)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v4 = obj;
    if ((*(obj + 169) & 1) == 0)
    {
      v5 = obj[6];
      if (v5)
      {
        v6 = a2;
        v7 = sub_1001E70A0(v5, v6, v3);
        v4 = obj;
      }
    }

    objc_sync_exit(v4);
  }
}

void sub_100221B80(uint64_t a1, uint64_t a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC hw reset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v4, &v5);
  os_activity_scope_leave(&v5);

  if (a1)
  {
    [*(a1 + 208) handleHardwareReset:a2];
  }
}

void sub_100221C00(uint64_t a1, void *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC SE aid select", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);
  os_activity_scope_leave(&v9);

  v5 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  if (a1)
  {
    v6 = *(a1 + 208);
    v7 = v5;
    v8 = [v7 NF_asHexString];
    [v6 handleSelectEvent:v8];
  }
}

void sub_100221CC8(uint64_t a1, void *a2, void *a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE txn", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v6, state);
  os_activity_scope_leave(state);

  if (a2)
  {
    a2 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  }

  if (a3)
  {
    v7 = [[NSData alloc] initWithBytes:*a3 length:a3[1]];
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = v7;
  v10 = v9;
  if (a1)
  {
    if ([v9 length] == 2)
    {
      v11 = [v10 bytes];
      v12 = *v11;
      v13 = v11[1];
      if ((v13 - 12) < 0xFFFFFFFE || (v12 - 5) <= 0xFFFFFFFD)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Unexpected eventID=0x%x, eventType=0x%x", "ExtractProhibitTimerEvent", 116, v13, v12);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *state = 136446978;
          *&state[4] = "ExtractProhibitTimerEvent";
          *&state[12] = 1024;
          *&state[14] = 116;
          v34 = 1024;
          *v35 = v13;
          *&v35[4] = 1024;
          *&v35[6] = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected eventID=0x%x, eventType=0x%x", state, 0x1Eu);
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFLogGetLogger();
        if (v12 == 3)
        {
          if (v13 == 11)
          {
            if (v14)
            {
              v14(5, "%s:%i ProhibitTimer.Host.Start", "ExtractProhibitTimerEvent", 124);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v15 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136446466;
              *&state[4] = "ExtractProhibitTimerEvent";
              *&state[12] = 1024;
              *&state[14] = 124;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.Host.Start", state, 0x12u);
            }

            v16 = 2;
          }

          else
          {
            if (v14)
            {
              v14(5, "%s:%i ProhibitTimer.SE.Start", "ExtractProhibitTimerEvent", 127);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v15 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *state = 136446466;
              *&state[4] = "ExtractProhibitTimerEvent";
              *&state[12] = 1024;
              *&state[14] = 127;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.SE.Start", state, 0x12u);
            }

            v16 = 0;
          }
        }

        else if (v13 == 11)
        {
          if (v14)
          {
            v14(5, "%s:%i ProhibitTimer.Host.End", "ExtractProhibitTimerEvent", 132);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *state = 136446466;
            *&state[4] = "ExtractProhibitTimerEvent";
            *&state[12] = 1024;
            *&state[14] = 132;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.Host.End", state, 0x12u);
          }

          v16 = 3;
        }

        else
        {
          if (v14)
          {
            v14(5, "%s:%i ProhibitTimer.SE.End", "ExtractProhibitTimerEvent", 135);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *state = 136446466;
            *&state[4] = "ExtractProhibitTimerEvent";
            *&state[12] = 1024;
            *&state[14] = 135;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ProhibitTimer.SE.End", state, 0x12u);
          }

          v16 = 1;
        }

        [*(a1 + 208) handleReaderModeProhibitTimerEvent:v16];
      }
    }

    v19 = [[NSData alloc] initWithBytes:&unk_100297C20 length:9];
    v20 = [v8 isEqual:v19];

    if ((v20 & 1) != 0 || *(a1 + 177) != 1)
    {
      [*(a1 + 216) decodeSecureElementTransaction:v8 event:v10];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("driverSecureElementTransaction:event:");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Routing SE transaction event to active session", v26, ClassName, Name, 952);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(a1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(a1);
        v31 = sel_getName("driverSecureElementTransaction:event:");
        *state = 67109890;
        *&state[4] = v29;
        *&state[8] = 2082;
        *&state[10] = v30;
        v34 = 2082;
        *v35 = v31;
        *&v35[8] = 1024;
        v36 = 952;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing SE transaction event to active session", state, 0x22u);
      }

      [*(a1 + 208) handleSecureElementTransactionData:v10 appletIdentifier:v8];
    }
  }
}

void sub_1002222F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE restricted mode enter", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementEnteredRestrictedMode:a2 os:a3];
  }
}

void sub_100222378(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE restricted mode exit", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementEnteredRestrictedModeExit:a2 os:a3];
  }
}

void sub_100222400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE removed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementRemoved:a2 withReason:a3];
    if (a3 == 33)
    {
      sub_100199974(NFBugCapture, @"Secure Element crashed", @"Secure Element crashed. Reason: 0x21", 0);
      [NFExceptionsCALogger postAnalyticsSEFailureEvent:1 context:@"Secure Element crashed. Reason: 0x21" error:0];
    }
  }
}

void sub_1002224CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC SE OS reset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v6, &v7);
  os_activity_scope_leave(&v7);

  if (a1)
  {
    [*(a1 + 208) handleSecureElementOSReset:a2 withReason:a3];
  }
}

void sub_100222554(id *a1, void *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "NFCC HCE dev detected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);
  os_activity_scope_leave(&v8);

  if (a1)
  {
    v5 = objc_opt_new();
    v7 = v5;
    if (v5)
    {
      objc_setProperty_atomic(v5, v6, a1, 8);
      v7[2] = a2;
    }

    [a1[28] handleHostCardReaderDetected:v7];
  }
}

void sub_100222600(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "NFCC RF tech ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = sub_1002259CC(a1, a2, a3, v4, 0);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (a1)
    {
      if (*(a1 + 169) == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("driverDidReceiveTechnologyEvent:");
          v17 = 45;
          if (isMetaClass)
          {
            v17 = 43;
          }

          v13(3, "%c[%{public}s %{public}s]:%i Driver session is closed", v17, ClassName, Name, 901);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = object_getClass(a1);
          if (class_isMetaClass(v19))
          {
            v20 = 43;
          }

          else
          {
            v20 = 45;
          }

          v21 = object_getClassName(a1);
          v22 = sel_getName("driverDidReceiveTechnologyEvent:");
          *state = 67109890;
          *&state[4] = v20;
          *&state[8] = 2082;
          *&state[10] = v21;
          v25 = 2082;
          v26 = v22;
          v27 = 1024;
          v28 = 901;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Driver session is closed", state, 0x22u);
        }
      }

      else
      {
        [*(a1 + 72) lock];
        objc_storeStrong((a1 + 104), v10);
        if (*(a1 + 168))
        {
          [*(a1 + 72) unlock];
          [*(a1 + 208) handleFilteredFieldNotification:*(a1 + 104)];
        }

        else
        {
          *(a1 + 168) = 1;
          [*(a1 + 72) unlock];
          [*(a1 + 208) handleFieldNotification:*(a1 + 104)];
        }
      }
    }
  }
}

void sub_10022286C(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC SE end of operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    *(a1 + 171) = 1;
    [*(a1 + 208) handleSecureElementEndOfOperation];
  }
}

void sub_1002228E4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC SE RAPDU sent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    *(a1 + 172) = 1;
  }
}

void sub_100222954(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC PLL unlocked", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    sub_10022F438(NFDailyStatisticsCALogger, @"pllUnlock");
  }
}

void sub_1002229D0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3)
  {
    v8 = "NFCC tags detected";
  }

  else
  {
    v8 = "NFCC 0 tag detected";
  }

  v9 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v9, &v10);
  os_activity_scope_leave(&v10);

  sub_1001979AC(a1, a2, a3, a4);
}

void sub_100222A74(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC express txn", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    [*(a1 + 224) driverExpressModeExited];
  }
}

void sub_100222AE4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = _os_activity_create(&_mh_execute_header, "NFCC typeF request service ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v6, &v8);
  os_activity_scope_leave(&v8);

  if (a2)
  {
    v7 = [[NSData alloc] initWithBytes:a2 length:a3];
    sub_10021E30C(a1, v7);
  }

  else
  {
    sub_10021E30C(a1, 0);
  }
}

void sub_100222B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _os_activity_create(&_mh_execute_header, "NFCC RSSI ntf", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v10, &v11);
  os_activity_scope_leave(&v11);

  if (a1)
  {
    [*(a1 + 216) driverRSSIStatsWithTotalSamples:a2 avgRSSI:a3 maxRSSI:a4 minRSSI:a5];
  }
}

void sub_100222C38(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a5;
  v10 = _os_activity_create(&_mh_execute_header, "NFCC express txn/w RF", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v10, state);
  os_activity_scope_leave(state);

  v11 = a1;
  v12 = sub_1002259CC(v11, a3, a4, v5, 1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if (!v11)
    {
LABEL_59:

      goto LABEL_60;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v11);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v11);
      Name = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i expressType: %d RfTech:%{public}@", v20, ClassName, Name, 845, a2, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(v11);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(v11);
      v25 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
      *state = 67110402;
      *&state[4] = v23;
      *&state[8] = 2082;
      *&state[10] = v24;
      v79 = 2082;
      v80 = v25;
      v81 = 1024;
      v82 = 845;
      v83 = 1024;
      v84 = a2;
      v85 = 2114;
      v86 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressType: %d RfTech:%{public}@", state, 0x32u);
    }

    objc_storeStrong(v11 + 13, v13);
    if (a2 <= 1)
    {
      if (!a2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v28 = v27;
          v29 = object_getClass(v11);
          v30 = class_isMetaClass(v29);
          v31 = object_getClassName(v11);
          v74 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
          v32 = 45;
          if (v30)
          {
            v32 = 43;
          }

          v28(4, "%c[%{public}s %{public}s]:%i Ignoring Express type None", v32, v31, v74, 881);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v34 = object_getClass(v11);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(v11);
        v37 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v35;
        *&state[8] = 2082;
        *&state[10] = v36;
        v79 = 2082;
        v80 = v37;
        v81 = 1024;
        v82 = 881;
        v38 = "%c[%{public}s %{public}s]:%i Ignoring Express type None";
        goto LABEL_56;
      }

      if (a2 != 1)
      {
LABEL_34:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(v11);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(v11);
          v75 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(4, "%c[%{public}s %{public}s]:%i Unknown express type", v44, v43, v75, 884);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v45 = object_getClass(v11);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(v11);
        v48 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v46;
        *&state[8] = 2082;
        *&state[10] = v47;
        v79 = 2082;
        v80 = v48;
        v81 = 1024;
        v82 = 884;
        v38 = "%c[%{public}s %{public}s]:%i Unknown express type";
        goto LABEL_56;
      }

      if ([v14 typeFSystemCode] == 768)
      {
        v26 = 1;
        goto LABEL_24;
      }

      if ([v14 typeFSystemCode] == 2176)
      {
        v26 = 5;
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(v11);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(v11);
        v66 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v77 = [v14 typeFSystemCode];
        v67 = 45;
        if (v64)
        {
          v67 = 43;
        }

        v62(4, "%c[%{public}s %{public}s]:%i Type-F express entered for unknown system code 0x%x?", v67, v65, v66, 863, v77);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v68 = object_getClass(v11);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(v11);
        v71 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v72 = [v14 typeFSystemCode];
        *state = 67110146;
        *&state[4] = v69;
        *&state[8] = 2082;
        *&state[10] = v70;
        v79 = 2082;
        v80 = v71;
        v81 = 1024;
        v82 = 863;
        v83 = 1024;
        v84 = v72;
        v38 = "%c[%{public}s %{public}s]:%i Type-F express entered for unknown system code 0x%x?";
        v59 = v33;
        v60 = 40;
        goto LABEL_57;
      }
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 4)
        {
          v26 = 3;
          goto LABEL_24;
        }

        if (a2 == 32)
        {
          v26 = 6;
LABEL_24:
          [v11[28] driverExpressModeEntered:v26];
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 4;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 2;
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(v11);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(v11);
        v76 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(4, "%c[%{public}s %{public}s]:%i VAS express entered but field is non-ECP?", v54, v53, v76, 877);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v55 = object_getClass(v11);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v57 = object_getClassName(v11);
        v58 = sel_getName("driverDidReceiveExpressStartRfTech:withNotification:");
        *state = 67109890;
        *&state[4] = v56;
        *&state[8] = 2082;
        *&state[10] = v57;
        v79 = 2082;
        v80 = v58;
        v81 = 1024;
        v82 = 877;
        v38 = "%c[%{public}s %{public}s]:%i VAS express entered but field is non-ECP?";
LABEL_56:
        v59 = v33;
        v60 = 34;
LABEL_57:
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, v38, state, v60);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

LABEL_60:
}

void sub_100223370(uint64_t a1, int a2, _UNKNOWN **a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    v3 = a2 - 1;
    if (a2 - 1) < 7 && ((0x7Bu >> v3))
    {
      a3 = (&off_10031C4E8)[v3];
LABEL_18:
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:a3];
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (a2 > 3)
  {
    a3 = &off_100339E68;
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (a2 != 4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2 == 1)
  {
LABEL_17:
    a3 = &off_100339E90;
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v5 = *(a1 + 56);
      v6 = 0;
      goto LABEL_36;
    }

LABEL_19:
    v7 = +[NSDate now];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 integerForKey:@"lowTemperatureCount"];
    v10 = [v8 objectForKey:@"lastLowTemperatureDate"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        [v7 timeIntervalSinceDate:v11];
        if (v12 >= 0.0)
        {
LABEL_24:
          [v8 setInteger:v9 + 1 forKey:@"lowTemperatureCount"];
          [v8 setObject:v7 forKey:@"lastLowTemperatureDate"];
          [v8 synchronize];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            *v14 = 0;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "NFC Controller low temp", v14, 2u);
          }

          if (NFIsInternalBuild())
          {
            sub_100199974(NFBugCapture, @"NFC controller Low Temp", @"NFC controller low temp", 0);
            [NFExceptionsCALogger postAnalyticsSEFailureEvent:2 context:@"NFC controller low temp" error:0];
          }

          else if (v9 < 9 || v11 && ([v7 timeIntervalSinceDate:v11], v13 > 30.0))
          {
            sleep(1u);
            exit(-1);
          }

          return;
        }
      }
    }

    v11 = 0;
    goto LABEL_24;
  }

  [*(a1 + 96) startTimer:5.0];
  if (([*(a1 + 120) wantsReader] & 1) == 0 && !objc_msgSend(*(a1 + 120), "wantsSEReader"))
  {
    a3 = &off_100339E68;
    goto LABEL_18;
  }

  v5 = *(a1 + 56);
  v6 = 4;
LABEL_36:

  [v5 thermalStateChanged:v6];
}

uint64_t sub_100223640(void *a1, void *a2)
{
  v3 = [[NSData alloc] initWithBytes:*a2 length:a2[1]];
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    sub_1001EB93C(a1, v3);
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1002236A8(uint64_t a1, int a2, int a3, int a4)
{
  if (a2)
  {
    if (a4)
    {
      v8 = "NFCC SE reader started (ISODEP)";
    }

    else
    {
      v8 = "NFCC SE reader started";
    }
  }

  else if (a4)
  {
    v8 = "NFCC SE reader stopped (ISODEP)";
  }

  else
  {
    v8 = "NFCC SE reader stopped";
  }

  v9 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if (a1)
  {
    v10 = @"B";
    if (a3 != 2)
    {
      v10 = @"Unknown";
    }

    if (a3 == 1)
    {
      v10 = @"A";
    }

    v85[0] = @"Polling";
    v85[1] = @"Protocol";
    v11 = @"isoDep";
    if (!a4)
    {
      v11 = @"Unknown";
    }

    v86[0] = v10;
    v86[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
    if (a2)
    {
      if (a3)
      {
        *(a1 + 32) = 1;
        if (*(*(a1 + 8) + 62) == 1)
        {
          v13 = [*(a1 + 56) readerModeProtectionActive];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          v15 = Logger;
          if (v13)
          {
            if (Logger)
            {
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              v19 = 45;
              if (isMetaClass)
              {
                v19 = 43;
              }

              v15(6, "%c[%{public}s %{public}s]:%i Request to start eSE reader mode while thermal protection active. Dropping.", v19, ClassName, Name, 1056);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = object_getClass(a1);
              if (class_isMetaClass(v21))
              {
                v22 = 43;
              }

              else
              {
                v22 = 45;
              }

              v23 = object_getClassName(a1);
              v24 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              LODWORD(state) = 67109890;
              HIDWORD(state) = v22;
              *state_8 = 2082;
              *&state_8[2] = v23;
              *&state_8[10] = 2082;
              *&state_8[12] = v24;
              *&state_8[20] = 1024;
              *&state_8[22] = 1056;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Request to start eSE reader mode while thermal protection active. Dropping.", &state, 0x22u);
            }

            v81 = @"Error";
            v25 = [NSError alloc];
            v26 = [NSString stringWithUTF8String:"nfcd"];
            v80[0] = NSLocalizedDescriptionKey;
            v27 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
            state = v27;
            *state_8 = &off_1003360F0;
            v80[1] = @"Line";
            v80[2] = @"Method";
            v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("driverSecureElementReaderMode:polling:isoDep:")];
            *&state_8[8] = v28;
            v80[3] = NSDebugDescriptionErrorKey;
            v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("driverSecureElementReaderMode:polling:isoDep:"), 1058];
            *&state_8[16] = v29;
            v30 = [NSDictionary dictionaryWithObjects:&state forKeys:v80 count:4];
            v31 = [v25 initWithDomain:v26 code:47 userInfo:v30];
            v82 = v31;
            v32 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];

            v12 = v32;
          }

          else
          {
            if (Logger)
            {
              v66 = object_getClass(a1);
              v67 = class_isMetaClass(v66);
              v68 = object_getClassName(a1);
              v79 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              v69 = 45;
              if (v67)
              {
                v69 = 43;
              }

              v15(6, "%c[%{public}s %{public}s]:%i Starting RF reader", v69, v68, v79, 1061);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v70 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = object_getClass(a1);
              if (class_isMetaClass(v71))
              {
                v72 = 43;
              }

              else
              {
                v72 = 45;
              }

              v73 = object_getClassName(a1);
              v74 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
              LODWORD(state) = 67109890;
              HIDWORD(state) = v72;
              *state_8 = 2082;
              *&state_8[2] = v73;
              *&state_8[10] = 2082;
              *&state_8[12] = v74;
              *&state_8[20] = 1024;
              *&state_8[22] = 1061;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting RF reader", &state, 0x22u);
            }

            sub_10021E364(a1);
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v55 = NFLogGetLogger();
          if (v55)
          {
            v56 = v55;
            v57 = object_getClass(a1);
            v58 = class_isMetaClass(v57);
            v59 = object_getClassName(a1);
            v78 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
            v60 = 45;
            if (v58)
            {
              v60 = 43;
            }

            v56(6, "%c[%{public}s %{public}s]:%i Applet requested RF reader", v60, v59, v78, 1069);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v61 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = object_getClass(a1);
            if (class_isMetaClass(v62))
            {
              v63 = 43;
            }

            else
            {
              v63 = 45;
            }

            v64 = object_getClassName(a1);
            v65 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
            LODWORD(state) = 67109890;
            HIDWORD(state) = v63;
            *state_8 = 2082;
            *&state_8[2] = v64;
            *&state_8[10] = 2082;
            *&state_8[12] = v65;
            *&state_8[20] = 1024;
            *&state_8[22] = 1069;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet requested RF reader", &state, 0x22u);
          }
        }

        [*(a1 + 208) handleSecureElementReaderModeStarted:v12];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(a1);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(a1);
          v77 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(6, "%c[%{public}s %{public}s]:%i SE reader ready", v49, v48, v77, 1048);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = object_getClass(a1);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(a1);
          v54 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
          LODWORD(state) = 67109890;
          HIDWORD(state) = v52;
          *state_8 = 2082;
          *&state_8[2] = v53;
          *&state_8[10] = 2082;
          *&state_8[12] = v54;
          *&state_8[20] = 1024;
          *&state_8[22] = 1048;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SE reader ready", &state, 0x22u);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(a1);
        v76 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i Ended reader mode", v38, v37, v76, 1075);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = object_getClass(a1);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(a1);
        v43 = sel_getName("driverSecureElementReaderMode:polling:isoDep:");
        LODWORD(state) = 67109890;
        HIDWORD(state) = v41;
        *state_8 = 2082;
        *&state_8[2] = v42;
        *&state_8[10] = 2082;
        *&state_8[12] = v43;
        *&state_8[20] = 1024;
        *&state_8[22] = 1075;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ended reader mode", &state, 0x22u);
      }

      *(a1 + 32) = 0;
      [*(a1 + 208) handleSecureElementReaderModeEnded:v12];
    }
  }
}

void sub_100223F40(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC tag removed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_semaphore_signal(v3);
    }
  }
}

void sub_100223FB4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "NFCC HCE dev target lost", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  sub_1001982E8(a1);
}

void sub_100224020(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "TXLDO Error", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    if (NFIsInternalBuild())
    {
      sub_100199974(NFBugCapture, @"LDO Error detected", @"LDO Error detected", 0);
      [NFExceptionsCALogger postAnalyticsSEFailureEvent:3 context:@"LDO Error detected" error:0];
    }
  }
}

void sub_1002240C8(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Erase counter exceeded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  if (a1)
  {
    [*(a1 + 208) handleEraseCounterExceeded];
  }
}

void sub_100224138(uint64_t a1, unsigned int *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "SPMI Error occurred", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  if (a1)
  {
    v5 = [[NSString alloc] initWithFormat:@"Error Status: 0x%04x, Parity: 0x%08X", *(a2 + 2), *a2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v5;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "SPMI Error Interrupt received: %@", &state, 0xCu);
    }

    v6 = *a2;
    if (*a2)
    {
      LODWORD(v7) = 0;
      do
      {
        v7 = (v6 & 1) + v7;
        v8 = v6 > 1;
        v6 >>= 1;
      }

      while (v8);
    }

    else
    {
      v7 = 0;
    }

    sub_10022F438(NFDailyStatisticsCALogger, @"spmiErrorCount");
    [NFExceptionsCALogger postAnalyticsHardwareFault:0 errorStatus:*(a2 + 2) parityErrorCount:v7];
    if (NFIsInternalBuild())
    {
      v9 = [[NSString alloc] initWithFormat:@"SPMI Error Interrupt: %@", v5];
      v10 = objc_opt_new();
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 fileExistsAtPath:@"/dev/nfc.log"];

      if (v12)
      {
        v13 = +[NSFileManager defaultManager];
        [v13 copyItemAtPath:@"/dev/nfc.log" toPath:@"var/tmp/nfc.log" error:0];

        [v10 setObject:@"var/tmp/nfc.log" forKeyedSubscript:@"Attachments"];
      }

      sub_100199700(NFBugCapture, v9, @"Purple Stockholm", 0, @"Hardware fault", &stru_10031EA18, v10);
    }
  }
}

void sub_100224390(uint64_t a1, void *a2)
{
  v4 = _os_activity_create(&_mh_execute_header, "MFG command notification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v4, &v6);
  os_activity_scope_leave(&v6);

  if (a1)
  {
    v5 = [NSData dataWithBytes:*a2 length:a2[1]];
    [*(a1 + 208) handlMFWNotification:v5];
  }
}

void sub_10022442C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained[7] thermalPressureCritical])
  {
    v21 = 0.0;
    v4 = sub_1002218F4(v3, &v21);
    if (!v4)
    {
      v6 = v3[6];
      if (v6)
      {
        v7 = v21;
        v8 = sub_1001E70A0(v6, v7, v5);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v10 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 48));
          v14 = 45;
          if (isMetaClass)
          {
            v14 = 43;
          }

          v10(6, "%c[%{public}s %{public}s]:%i Requesting temperature", v14, ClassName, Name, 1936);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v16))
          {
            v17 = 43;
          }

          else
          {
            v17 = 45;
          }

          v18 = object_getClassName(*(a1 + 32));
          v19 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v23 = v17;
          v24 = 2082;
          v25 = v18;
          v26 = 2082;
          v27 = v19;
          v28 = 1024;
          v29 = 1936;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting temperature", buf, 0x22u);
        }
      }
    }

    [v3[12] startTimer:5.0];
  }
}

void sub_100224618(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = sub_10006841C([NFThermalMonitor alloc], v3);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100224714;
    v9[3] = &unk_100315F58;
    v9[4] = a1;
    v9[5] = "setPowerConsumptionMonitor:";
    sub_100068AE0(v4, v9);
    ShouldUseLookbackRestrictor = NFPlatformShouldUseLookbackRestrictor();
    v6 = &off_100314CD8;
    if (!ShouldUseLookbackRestrictor)
    {
      v6 = off_100314CD0;
    }

    v7 = [objc_alloc(*v6) initWithThermalMonitor:v4 delegate:a1];
    v8 = *(a1 + 56);
    *(a1 + 56) = v7;
  }
}

void sub_100224714(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Requesting temperature polling", v7, ClassName, Name, 1969);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 1024;
    v22 = 1969;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting temperature polling", buf, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    [*(v13 + 96) startTimer:5.0];
  }
}

id sub_1002248A4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 1))
    {
      *(v3 + 178) = v2;
      NFDriverPreventReset();
      v4 = 0;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("setPreventReset:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i No driver !", v10, ClassName, Name, 2133);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(v3);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v25 = v13;
        v26 = 2082;
        v27 = object_getClassName(v3);
        v28 = 2082;
        v29 = sel_getName("setPreventReset:");
        v30 = 1024;
        v31 = 2133;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No driver !", buf, 0x22u);
      }

      v14 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithUTF8String:"Invalid State"];
      v23[0] = v16;
      v23[1] = &off_100336228;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setPreventReset:")];
      v23[2] = v17;
      v22[3] = NSDebugDescriptionErrorKey;
      v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setPreventReset:"), 2134];
      v23[3] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      v4 = [v14 initWithDomain:v15 code:12 userInfo:v19];
    }

    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100224BB8(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2)
    {
      v4 = 0;
      *a2 = NFDriverSupportsSecureTimersInOFF();
    }

    else
    {
      v5 = [NSError alloc];
      v6 = [NSString stringWithUTF8String:"nfcd"];
      v12[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v13[0] = v7;
      v13[1] = &off_100336270;
      v12[1] = @"Line";
      v12[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsSecureTimersInOFF:")];
      v13[2] = v8;
      v12[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsSecureTimersInOFF:"), 2166];
      v13[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
      v4 = [v5 initWithDomain:v6 code:10 userInfo:v10];
    }

    objc_sync_exit(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_100225100(id *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (v3)
    {
      if ([v3 readerModeProtectionActive])
      {
        [v2[7] expectedBurnoutTime];
      }

      else
      {
        [NSNumber numberWithInt:0];
      }
      a1 = ;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("expectedBurnoutProtectionTime:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Error : no policy defined..", v10, ClassName, Name, 2207);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(v2);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v25 = v13;
        v26 = 2082;
        v27 = object_getClassName(v2);
        v28 = 2082;
        v29 = sel_getName("expectedBurnoutProtectionTime:");
        v30 = 1024;
        v31 = 2207;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no policy defined..", buf, 0x22u);
      }

      if (a2)
      {
        v14 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        v22[0] = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithUTF8String:"Invalid State"];
        v23[0] = v16;
        v23[1] = &off_100336288;
        v22[1] = @"Line";
        v22[2] = @"Method";
        v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName("expectedBurnoutProtectionTime:")];
        v23[2] = v17;
        v22[3] = NSDebugDescriptionErrorKey;
        v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("expectedBurnoutProtectionTime:"), 2208];
        v23[3] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
        *a2 = [v14 initWithDomain:v15 code:12 userInfo:v19];
      }

      a1 = 0;
    }
  }

  return a1;
}

double sub_10022541C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1[7];
  if (!v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("expectedAllowedReaderTime:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no policy defined..", v11, ClassName, Name, 2227);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v25 = v14;
      v26 = 2082;
      v27 = object_getClassName(a1);
      v28 = 2082;
      v29 = sel_getName("expectedAllowedReaderTime:");
      v30 = 1024;
      v31 = 2227;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no policy defined..", buf, 0x22u);
    }

    if (a2)
    {
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v22[0] = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Invalid State"];
      v23[0] = v17;
      v23[1] = &off_1003362A0;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName("expectedAllowedReaderTime:")];
      v23[2] = v18;
      v22[3] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("expectedAllowedReaderTime:"), 2228];
      v23[3] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
      *a2 = [v15 initWithDomain:v16 code:12 userInfo:v20];
    }

    return 0.0;
  }

  [v3 maxReaderTime];
  return result;
}

void sub_10022573C(id *a1)
{
  if (a1 && [a1[7] readerModeProtectionActive])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelCooloff");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Cancelling cooloff session.", v7, ClassName, Name, 2243);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v13 = v10;
      v14 = 2082;
      v15 = object_getClassName(a1);
      v16 = 2082;
      v17 = sel_getName("cancelCooloff");
      v18 = 1024;
      v19 = 2243;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cancelling cooloff session.", buf, 0x22u);
    }

    sub_10021CC94(a1, @"Cooloff");
  }
}

id sub_1002259CC(id *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a2;
  if ((a2 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a5)
    {
      v11 = "express ";
    }

    else
    {
      v11 = "";
    }

    Logger(4, "%s:%i RF Error found on %sFD (A=%d, B=%d, F=%d, V=%d)", "_NFDriverWrapperProccessRFTechDetectionInfo", 2342, v11, v8 & 1, (v8 >> 1) & 1, (v8 >> 2) & 1, (v8 >> 3) & 1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (a5)
    {
      v13 = "express ";
    }

    else
    {
      v13 = "";
    }

    *buf = 136447746;
    *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
    *&v56[8] = 1024;
    *&v56[10] = 2342;
    v57 = 2080;
    *v58 = v13;
    *&v58[8] = 1024;
    *v59 = v8 & 1;
    *&v59[4] = 1024;
    *v60 = (v8 >> 1) & 1;
    *&v60[4] = 1024;
    v61 = (v8 >> 2) & 1;
    v62 = 1024;
    v63 = (v8 >> 3) & 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i RF Error found on %sFD (A=%d, B=%d, F=%d, V=%d)", buf, 0x34u);
  }

  v5 = a4;
  v6 = a3;
  if (a5)
  {
LABEL_13:
    v14 = objc_opt_new();
    v15 = v14;
    if ((v8 & 8) != 0 && v6 && v5)
    {
      if (*v6 != 106)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v32(3, "%s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", "_NFDriverWrapperProccessRFTechDetectionInfo", 2386, *v6);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v33 = *v6;
          *buf = 136446722;
          *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
          *&v56[8] = 1024;
          *&v56[10] = 2386;
          v57 = 1024;
          *v58 = v33;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Houston we have a problem! Payload corrupted without RF errors being set. vData[0] = 0x%X", buf, 0x18u);
        }

        v21 = 0;
        goto LABEL_43;
      }

      [v14 appendBytes:v6 length:v5];
    }

    v16 = ((v8 << 29) >> 31) & HIWORD(a2);
    v53[0] = @"FieldTechnology";
    v17 = [NSNumber numberWithUnsignedInt:v8 & 0xF];
    v54[0] = v17;
    v53[1] = @"SystemCode";
    v18 = [NSNumber numberWithUnsignedShort:v16];
    v53[2] = @"ECPData";
    v54[1] = v18;
    v54[2] = v15;
    v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];

    v20 = [NFFieldNotification notificationWithDictionary:v19];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v30(3, "%s:%i Error creating field notification", "_NFDriverWrapperProccessRFTechDetectionInfo", 2412);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
        *&v56[8] = 1024;
        *&v56[10] = 2412;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Error creating field notification", buf, 0x12u);
      }
    }

LABEL_43:
    goto LABEL_66;
  }

  if ((v8 & 8) != 0)
  {
    if (!a3 || a4 < 2 || *a3 != 106)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v34(3, "%s:%i ECP payload corrupted.", "_NFDriverWrapperProccessRFTechDetectionInfo", 2364);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      *&v56[8] = 1024;
      *&v56[10] = 2364;
      v27 = "%{public}s:%i ECP payload corrupted.";
      v28 = v25;
      v29 = 18;
LABEL_48:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_49:

      goto LABEL_50;
    }

    v23 = a3[1];
    if (v23 == 1)
    {
      goto LABEL_13;
    }

    if (v23 == 2)
    {
      if (a4 >= 5 && (a3[2] & 0xF) + 5 == a4)
      {
        goto LABEL_13;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i vDataLen %d does not match with payload length %d + %d bytes of ECP2HeaderLength", "_NFDriverWrapperProccessRFTechDetectionInfo", 2359, a4, a3[2] & 0xF, 5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v26 = a3[2] & 0xF;
      *buf = 136447234;
      *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
      *&v56[8] = 1024;
      *&v56[10] = 2359;
      v57 = 1024;
      *v58 = a4;
      *&v58[4] = 1024;
      *&v58[6] = v26;
      *v59 = 1024;
      *&v59[2] = 5;
      v27 = "%{public}s:%i vDataLen %d does not match with payload length %d + %d bytes of ECP2HeaderLength";
      v28 = v25;
      v29 = 36;
      goto LABEL_48;
    }
  }

LABEL_50:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFLogGetLogger();
  if (v35)
  {
    v35(3, "%s:%i RF Error found (A=%d, B=%d, F=%d, V=%d). Restart Discovery", "_NFDriverWrapperProccessRFTechDetectionInfo", 2370, v8 & 1, (v8 >> 1) & 1, (v8 >> 2) & 1, (v8 >> 3) & 1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136447490;
    *v56 = "_NFDriverWrapperProccessRFTechDetectionInfo";
    *&v56[8] = 1024;
    *&v56[10] = 2370;
    v57 = 1024;
    *v58 = v8 & 1;
    *&v58[4] = 1024;
    *&v58[6] = (v8 >> 1) & 1;
    *v59 = 1024;
    *&v59[2] = (v8 >> 2) & 1;
    *v60 = 1024;
    *&v60[2] = (v8 >> 3) & 1;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i RF Error found (A=%d, B=%d, F=%d, V=%d). Restart Discovery", buf, 0x2Au);
  }

  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("driverRestartDiscovery");
      v42 = 45;
      if (isMetaClass)
      {
        v42 = 43;
      }

      v38(6, "%c[%{public}s %{public}s]:%i Restarting Discovery", v42, ClassName, Name, 749);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = object_getClass(a1);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(a1);
      v47 = sel_getName("driverRestartDiscovery");
      *buf = 67109890;
      *v56 = v45;
      *&v56[4] = 2082;
      *&v56[6] = v46;
      v57 = 2082;
      *v58 = v47;
      *&v58[8] = 1024;
      *v59 = 749;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting Discovery", buf, 0x22u);
    }

    [a1[26] handleRestartDiscovery];
  }

  v21 = 0;
LABEL_66:

  return v21;
}

id sub_1002261A0(uint64_t a1)
{
  objc_opt_self();
  if (qword_10035DAF8 != -1)
  {
    dispatch_once(&qword_10035DAF8, &stru_10031C520);
  }

  v1 = qword_10035DAF0;

  return v1;
}

void sub_1002261F8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10035DAF0;
  qword_10035DAF0 = v1;

  _objc_release_x1(v1, v2);
}

_BYTE *sub_100226978(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1002287C0(a1, 0);
    sub_100228858(v2);
    a1 = sub_1002275C8(v2, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_1002269CC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_100226F00(a1);
    sub_100228CE0(v2);
    a1 = sub_1002275C8(v2, v3);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100226A20(void *a1)
{
  existing = 0;
  v2 = IOServiceNameMatching("AppleDialogSPMIPMU");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing);
  if (MatchingServices)
  {
    v4 = MatchingServices;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("copyPMUService");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Error retrieving services : %d", v9, ClassName, Name, 433, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(a1);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(a1);
      v14 = sel_getName("copyPMUService");
      *buf = 67110146;
      *v38 = v12;
      *&v38[4] = 2082;
      *&v38[6] = v13;
      v39 = 2082;
      v40 = v14;
      v41 = 1024;
      v42 = 433;
      v43 = 1024;
      LODWORD(v44) = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error retrieving services : %d", buf, 0x28u);
    }

    return 0;
  }

  v16 = existing;
  if (!existing)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v33 = object_getClassName(a1);
      v35 = sel_getName("copyPMUService");
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v25, v33, v35, 438, "AppleDialogSPMIPMU");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(a1);
      v30 = sel_getName("copyPMUService");
      *buf = 67110146;
      *v38 = v28;
      *&v38[4] = 2082;
      *&v38[6] = v29;
      v39 = 2082;
      v40 = v30;
      v41 = 1024;
      v42 = 438;
      v43 = 2080;
      v44 = "AppleDialogSPMIPMU";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
    }

    return 0;
  }

  do
  {
    if (!IOIteratorIsValid(v16))
    {
      break;
    }

    v17 = IOIteratorNext(existing);
    v15 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v17, @"IOPMUPrimary", 0, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      goto LABEL_34;
    }

    IOObjectRelease(v15);
    v16 = existing;
  }

  while (existing);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Invalid iterator", "[NFHeadlessModeController copyPMUService]", 445);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *v38 = "[NFHeadlessModeController copyPMUService]";
    *&v38[8] = 1024;
    *&v38[10] = 445;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", buf, 0x12u);
  }

  v15 = 0;
LABEL_34:
  IOObjectRelease(existing);
  return v15;
}

void sub_100226E30(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"has-applelpm", 0, 0);
    IOObjectRelease(v2);
    if (CFProperty)
    {
      v4 = CFGetTypeID(CFProperty);
      if (v4 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(CFProperty);
        CFDataGetLength(CFProperty);
        __memcpy_chk();
      }

      CFRelease(CFProperty);
      byte_10035DAE8 = 0;
    }
  }
}

uint64_t sub_100226F00(void *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("print");
      v8 = +[NSLocale currentLocale];
      v9 = [v8 objectForKey:NSLocaleIdentifier];
      v10 = +[NSLocale currentLocale];
      v11 = [v10 objectForKey:NSLocaleLanguageCode];
      v12 = +[NSLocale preferredLanguages];
      v13 = 43;
      if (!isMetaClass)
      {
        v13 = 45;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Locale code = %{public}@, Language code = %{public}@, Preferred : %{public}@", v13, ClassName, Name, 395, v9, v11, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(v1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v41 = v16;
      v17 = object_getClassName(v1);
      v18 = sel_getName("print");
      v19 = +[NSLocale currentLocale];
      v20 = [v19 objectForKey:NSLocaleIdentifier];
      v21 = +[NSLocale currentLocale];
      v22 = [v21 objectForKey:NSLocaleLanguageCode];
      v23 = +[NSLocale preferredLanguages];
      *buf = 67110658;
      v43 = v41;
      v44 = 2082;
      v45 = v17;
      v46 = 2082;
      v47 = v18;
      v48 = 1024;
      v49 = 395;
      v50 = 2114;
      v51 = v20;
      v52 = 2114;
      v53 = v22;
      v54 = 2114;
      v55 = v23;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Locale code = %{public}@, Language code = %{public}@, Preferred : %{public}@", buf, 0x40u);
    }

    if (qword_10035DB00 != -1)
    {
      dispatch_once(&qword_10035DB00, &stru_10031C540);
    }

    if (byte_10035DAE8)
    {
      v24 = &off_1003391B0;
    }

    else
    {
      v24 = &off_1003391C8;
    }

    v25 = +[NSLocale preferredLanguages];
    v26 = [NSBundle preferredLocalizationsFromArray:v24 forPreferences:v25];

    if (v26)
    {
      v27 = [v26 firstObject];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v1);
        v31 = class_isMetaClass(v30);
        v39 = object_getClassName(v1);
        v40 = sel_getName("getIndexFromLocale");
        v32 = 45;
        if (v31)
        {
          v32 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i Best match: %{public}@", v32, v39, v40, 377, v27);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = object_getClass(v1);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(v1);
        v37 = sel_getName("getIndexFromLocale");
        *buf = 67110146;
        v43 = v35;
        v44 = 2082;
        v45 = v36;
        v46 = 2082;
        v47 = v37;
        v48 = 1024;
        v49 = 377;
        v50 = 2114;
        v51 = v27;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Best match: %{public}@", buf, 0x2Cu);
      }

      v1 = [v24 indexOfObject:v27];
      if (v1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        LOBYTE(v1) = v1 + 1;
      }
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1;
}

id sub_1002273D8(void *a1)
{
  v2 = sub_100226A20(a1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"IOPMUBootLPMCtrl", 0, 0);
    IOObjectRelease(v3);
    if (CFProperty)
    {
      v5 = CFProperty;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getLPMControl");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v10, ClassName, Name, 477, "AppleDialogSPMIPMU");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67110146;
      v18 = v13;
      v19 = 2082;
      v20 = object_getClassName(a1);
      v21 = 2082;
      v22 = sel_getName("getLPMControl");
      v23 = 1024;
      v24 = 477;
      v25 = 2080;
      v26 = "AppleDialogSPMIPMU";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
    }

    v5 = 0;
  }

  return v5;
}

id sub_1002275C8(id a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    valuePtr = 0;
    v4 = sub_100226A20(a1);
    if (!v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("pushIndexToPMU:");
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v23, ClassName, Name, 503, "AppleDialogSPMIPMU");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v2);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67110146;
        *&buf[4] = v26;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(v2);
        *&buf[18] = 2082;
        *&v179 = sel_getName("pushIndexToPMU:");
        WORD4(v179) = 1024;
        *(&v179 + 10) = 503;
        HIWORD(v179) = 2080;
        v180[0] = "AppleDialogSPMIPMU";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
      }

      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v162 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithUTF8String:"Unknown Error"];
      v163 = v29;
      v30 = &v163;
      v31 = &v162;
      goto LABEL_92;
    }

    v155 = v4;
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOPMUBootLPMCtrl", 0, 0);
    v6 = CFProperty;
    if (!CFProperty || (v7 = CFGetTypeID(CFProperty), v7 != CFDictionaryGetTypeID()))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v9 = v8;
        v10 = object_getClass(v2);
        v11 = class_isMetaClass(v10);
        v141 = object_getClassName(v2);
        v146 = sel_getName("pushIndexToPMU:");
        v12 = 45;
        if (v11)
        {
          v12 = 43;
        }

        v9(4, "%c[%{public}s %{public}s]:%i Failed to fetch property: %s.", v12, v141, v146, 509, "IOPMUBootLPMCtrl");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(v2);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67110146;
        *&buf[4] = v15;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(v2);
        *&buf[18] = 2082;
        *&v179 = sel_getName("pushIndexToPMU:");
        WORD4(v179) = 1024;
        *(&v179 + 10) = 509;
        HIWORD(v179) = 2080;
        v180[0] = "IOPMUBootLPMCtrl";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to fetch property: %s.", buf, 0x2Cu);
      }
    }

    v16 = *(v2 + 4);
    if ((v16 & 0xF) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v16 >> 4) & 1;
    }

    v154 = v17;
    if (v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 4, v6);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 4, 0, 0);
    }

    v32 = MutableCopy;
    if ((v16 & 3) != 0 || (v16 & 0x1C) == 0)
    {
      v44 = a2;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(v2);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(v2);
        v148 = sel_getName("pushIndexToPMU:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i Overriding image index to 0 since no express.", v38, v37, v148, 533);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = object_getClass(v2);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v2);
        v43 = sel_getName("pushIndexToPMU:");
        *buf = 67109890;
        *&buf[4] = v41;
        *&buf[8] = 2082;
        *&buf[10] = v42;
        *&buf[18] = 2082;
        *&v179 = v43;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 533;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding image index to 0 since no express.", buf, 0x22u);
      }

      v44 = 0;
    }

    valuePtr = v44;
    v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"imgIdx", v45);
    CFRelease(v45);
    if ((v16 & 4) != 0)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0;
    }

    valuePtr = v46;
    v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"imgIdxFindMy", v47);
    CFRelease(v47);
    valuePtr = v154;
    v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm0", v48);
    CFRelease(v48);
    valuePtr = (v16 & 2) >> 1;
    v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm1", v49);
    CFRelease(v49);
    valuePtr = (v16 & 4) >> 2;
    v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm2", v50);
    CFRelease(v50);
    valuePtr = (v16 >> 3) & 1;
    v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm3", v51);
    CFRelease(v51);
    valuePtr = (v16 >> 4) & 1;
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v32, @"lpm4", v52);
    CFRelease(v52);
    v53 = [(__CFDictionary *)v32 isEqualToDictionary:v6];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    v55 = v54;
    if (v53)
    {
      if (v54)
      {
        v56 = object_getClass(v2);
        v57 = class_isMetaClass(v56);
        v58 = object_getClassName(v2);
        v59 = sel_getName("pushIndexToPMU:");
        if (v6)
        {
          v60 = v6;
        }

        else
        {
          v60 = @"NULL";
        }

        v61 = 45;
        if (v57)
        {
          v61 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i No change to LPEM : %{public}@", v61, v58, v59, 574, v60);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = object_getClass(v2);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(v2);
        v66 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        if (v6)
        {
          v67 = v6;
        }

        else
        {
          v67 = @"NULL";
        }

        *&buf[4] = v64;
        *&buf[8] = 2082;
        *&buf[10] = v65;
        *&buf[18] = 2082;
        *&v179 = v66;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 574;
        HIWORD(v179) = 2114;
        v180[0] = v67;
        v68 = "%c[%{public}s %{public}s]:%i No change to LPEM : %{public}@";
        v69 = v62;
        v70 = 44;
LABEL_78:
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v68, buf, v70);
      }
    }

    else
    {
      if (v54)
      {
        v71 = object_getClass(v2);
        v72 = class_isMetaClass(v71);
        v73 = object_getClassName(v2);
        v74 = sel_getName("pushIndexToPMU:");
        if (v6)
        {
          v75 = v6;
        }

        else
        {
          v75 = @"nil";
        }

        v153 = v75;
        v76 = 45;
        if (v72)
        {
          v76 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i Changing new LPM control %{public}@ -> %{public}@", v76, v73, v74, 576, v153, v32);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(v2);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(v2);
        v80 = sel_getName("pushIndexToPMU:");
        *buf = 67110402;
        if (v6)
        {
          v81 = v6;
        }

        else
        {
          v81 = @"nil";
        }

        *&buf[4] = v78;
        *&buf[8] = 2082;
        *&buf[10] = v79;
        *&buf[18] = 2082;
        *&v179 = v80;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 576;
        HIWORD(v179) = 2114;
        v180[0] = v81;
        LOWORD(v180[1]) = 2114;
        *(&v180[1] + 2) = v32;
        v68 = "%c[%{public}s %{public}s]:%i Changing new LPM control %{public}@ -> %{public}@";
        v69 = v62;
        v70 = 54;
        goto LABEL_78;
      }
    }

    v82 = v155;

    if (v6)
    {
      CFRelease(v6);
    }

    v83 = IORegistryEntrySetCFProperty(v155, @"IOPMUBootLPMCtrl", v32);
    if (v83)
    {
      v84 = v83;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(v2);
        v88 = class_isMetaClass(v87);
        v143 = object_getClassName(v2);
        v149 = sel_getName("pushIndexToPMU:");
        v89 = 45;
        if (v88)
        {
          v89 = 43;
        }

        v86(3, "%c[%{public}s %{public}s]:%i Failed to set dictionary : 0x%x", v89, v143, v149, 585, v84);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(v2);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(v2);
        v94 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        *&buf[4] = v92;
        v82 = v155;
        *&buf[8] = 2082;
        *&buf[10] = v93;
        *&buf[18] = 2082;
        *&v179 = v94;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 585;
        HIWORD(v179) = 1024;
        LODWORD(v180[0]) = v84;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set dictionary : 0x%x", buf, 0x28u);
      }

      CFRelease(v32);
      IOObjectRelease(v82);
      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v160 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithUTF8String:"Unknown Error"];
      v161 = v29;
      v30 = &v161;
      v31 = &v160;
LABEL_92:
      v95 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
      v2 = [v27 initWithDomain:v28 code:6 userInfo:v95];

LABEL_93:
      goto LABEL_94;
    }

    v28 = sub_1002273D8(v2);
    if (([v28 isEqualToDictionary:v32] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v97 = NFLogGetLogger();
      if (v97)
      {
        v98 = v97;
        v99 = object_getClass(v2);
        v100 = class_isMetaClass(v99);
        v144 = object_getClassName(v2);
        v150 = sel_getName("pushIndexToPMU:");
        v101 = 45;
        if (v100)
        {
          v101 = 43;
        }

        v98(3, "%c[%{public}s %{public}s]:%i Read back of LPM control error : %{public}@", v101, v144, v150, 593, v28);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v103 = object_getClass(v2);
        if (class_isMetaClass(v103))
        {
          v104 = 43;
        }

        else
        {
          v104 = 45;
        }

        v105 = object_getClassName(v2);
        v106 = sel_getName("pushIndexToPMU:");
        *buf = 67110146;
        *&buf[4] = v104;
        v82 = v155;
        *&buf[8] = 2082;
        *&buf[10] = v105;
        *&buf[18] = 2082;
        *&v179 = v106;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 593;
        HIWORD(v179) = 2114;
        v180[0] = v28;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Read back of LPM control error : %{public}@", buf, 0x2Cu);
      }
    }

    CFRelease(v32);
    IOObjectRelease(v82);
    if (!NFProductHasB0LPKey())
    {
      v2 = 0;
      goto LABEL_93;
    }

    if ((v16 & 2) != 0)
    {
      v107 = 3;
    }

    else
    {
      if ((v16 & 5) != 5)
      {
        v108 = (v16 & 5) != 0;
        v107 = (v16 & 5) != 0;
        goto LABEL_116;
      }

      v107 = 2;
    }

    v108 = 1;
LABEL_116:
    if (v108 && (*(v2 + 10) & 1) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFLogGetLogger();
      if (v109)
      {
        v110 = v109;
        v111 = object_getClass(v2);
        v112 = class_isMetaClass(v111);
        v113 = object_getClassName(v2);
        v151 = sel_getName("pushIndexToPMU:");
        v114 = 45;
        if (v112)
        {
          v114 = 43;
        }

        v110(6, "%c[%{public}s %{public}s]:%i SMC value has been overwritten", v114, v113, v151, 613);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = object_getClass(v2);
        if (class_isMetaClass(v116))
        {
          v117 = 43;
        }

        else
        {
          v117 = 45;
        }

        v118 = object_getClassName(v2);
        v119 = sel_getName("pushIndexToPMU:");
        *buf = 67109890;
        *&buf[4] = v117;
        *&buf[8] = 2082;
        *&buf[10] = v118;
        *&buf[18] = 2082;
        *&v179 = v119;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 613;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SMC value has been overwritten", buf, 0x22u);
      }

      v107 = 1;
    }

    connect = 0;
    v120 = IOServiceMatching("AppleSMC");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v120);
    if (!MatchingService || (v122 = MatchingService, v123 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect), IOObjectRelease(v122), v123) || !connect || IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0))
    {
      connect = 0;
    }

    else if (connect)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v128 = NFLogGetLogger();
      if (v128)
      {
        v129 = v128;
        v130 = object_getClass(v2);
        v131 = class_isMetaClass(v130);
        v145 = object_getClassName(v2);
        v152 = sel_getName("pushB0LPToSMC:");
        v132 = 45;
        if (v131)
        {
          v132 = 43;
        }

        v129(6, "%c[%{public}s %{public}s]:%i Setting B0LP to %d", v132, v145, v152, 411, v107);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v133 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = object_getClass(v2);
        if (class_isMetaClass(v134))
        {
          v135 = 43;
        }

        else
        {
          v135 = 45;
        }

        v136 = object_getClassName(v2);
        v137 = sel_getName("pushB0LPToSMC:");
        *buf = 67110146;
        *&buf[4] = v135;
        *&buf[8] = 2082;
        *&buf[10] = v136;
        *&buf[18] = 2082;
        *&v179 = v137;
        WORD4(v179) = 1024;
        *(&v179 + 10) = 411;
        HIWORD(v179) = 1024;
        LODWORD(v180[0]) = v107;
        _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting B0LP to %d", buf, 0x28u);
      }

      outputStructCnt = 80;
      memset(v180, 0, 44);
      v179 = 0u;
      *&buf[4] = 0u;
      memset(outputStruct, 0, sizeof(outputStruct));
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      strcpy(v159, "B0LP");
      BYTE6(v180[0]) = 6;
      *buf = 1110461520;
      DWORD2(v179) = 2;
      WORD2(v180[1]) = v107;
      v138 = IOConnectCallStructMethod(connect, 2u, buf, 0x50uLL, outputStruct, &outputStructCnt);
      if (!v138 && !BYTE8(v175))
      {
        goto LABEL_154;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v139 = NFLogGetLogger();
      if (v139)
      {
        v139(3, "%s:%i Write failed for key '%s' (0x%X, 0x%X)\n", "_writeSMCKey", 131, v159, v138, BYTE8(v175));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v140 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        *v164 = 136447234;
        v165 = "_writeSMCKey";
        v166 = 1024;
        v167 = 131;
        v168 = 2080;
        v169 = v159;
        v170 = 1024;
        v171 = v138;
        v172 = 1024;
        v173 = BYTE8(v175);
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%{public}s:%i Write failed for key '%s' (0x%X, 0x%X)\n", v164, 0x28u);
      }

      if (!v138)
      {
LABEL_154:
        v2 = 0;
        goto LABEL_132;
      }
    }

    v124 = [NSError alloc];
    v125 = [NSString stringWithUTF8String:"nfcd"];
    *&outputStruct[0] = NSLocalizedDescriptionKey;
    v126 = [NSString stringWithUTF8String:"Unknown Error"];
    *buf = v126;
    v127 = [NSDictionary dictionaryWithObjects:buf forKeys:outputStruct count:1];
    v2 = [v124 initWithDomain:v125 code:6 userInfo:v127];

LABEL_132:
    if (connect && !IOConnectCallScalarMethod(connect, 1u, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
    }

    goto LABEL_93;
  }

LABEL_94:

  return v2;
}

void sub_1002287C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 32) = a2;
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:*(a1 + 32) forKey:@"HeadlessFeatures"];
    v3 = +[NSDate now];
    [v3 timeIntervalSince1970];
    [v4 setDouble:@"HeadlessFeaturesSetTime" forKey:?];
  }
}

void sub_100228858(_BYTE *a1)
{
  if (a1 && a1[11] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelRTCTimer");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Cancelling RTC timer", v7, ClassName, Name, 829);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v47 = v10;
      v48 = 2082;
      v49 = object_getClassName(a1);
      v50 = 2082;
      v51 = sel_getName("cancelRTCTimer");
      v52 = 1024;
      v53 = 829;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cancelling RTC timer", buf, 0x22u);
    }

    v40 = a1;

    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = IOPMCopyScheduledPowerEvents();
    v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      v39 = v11;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [[NSString alloc] initWithUTF8String:"time"];
          v18 = [v16 objectForKey:v17];

          v19 = [[NSString alloc] initWithUTF8String:"scheduledby"];
          v20 = [v16 objectForKey:v19];

          v21 = [[NSString alloc] initWithUTF8String:"eventtype"];
          v22 = [v16 objectForKey:v21];

          if ([v20 isEqualToString:@"com.apple.nfcd.headless"])
          {
            v23 = [[NSString alloc] initWithUTF8String:"poweron"];
            v24 = [v22 isEqualToString:v23];

            if (v24)
            {
              if (IOPMCancelScheduledPowerEvent(v18, @"com.apple.nfcd.headless", @"poweron"))
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v25 = NFLogGetLogger();
                if (v25)
                {
                  v26 = v25;
                  v27 = object_getClass(v40);
                  v28 = class_isMetaClass(v27);
                  v29 = object_getClassName(v40);
                  v38 = sel_getName("cancelRTCTimer");
                  v30 = 45;
                  if (v28)
                  {
                    v30 = 43;
                  }

                  v36 = v29;
                  v11 = v39;
                  v26(3, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", v30, v36, v38, 840);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v31 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = object_getClass(v40);
                  if (class_isMetaClass(v32))
                  {
                    v33 = 43;
                  }

                  else
                  {
                    v33 = 45;
                  }

                  v34 = object_getClassName(v40);
                  v35 = sel_getName("cancelRTCTimer");
                  *buf = 67109890;
                  v47 = v33;
                  v11 = v39;
                  v48 = 2082;
                  v49 = v34;
                  v50 = 2082;
                  v51 = v35;
                  v52 = 1024;
                  v53 = 840;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", buf, 0x22u);
                }
              }
            }
          }
        }

        v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v13);
    }

    [v40[2] stopTimer];
  }
}

void sub_100228CE0(uint64_t val)
{
  if (val && *(val + 11) == 1)
  {
    if (!*(val + 16))
    {
      objc_initWeak(&location, val);
      v2 = [NFTimer alloc];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100229980;
      v6[3] = &unk_100315F08;
      objc_copyWeak(&v7, &location);
      v3 = dispatch_get_global_queue(0, 0);
      v4 = [v2 initSleepTimerWithCallback:v6 queue:v3];
      v5 = *(val + 16);
      *(val + 16) = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }

    sub_100229698(val);
  }
}

BOOL sub_100228DE4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = v3[4];
  v5 = v4 != a2;
  if (v4 != a2)
  {
    sub_1002287C0(v3, a2);
    v6 = sub_1002269CC(v3);
  }

  objc_sync_exit(v3);

  return v5;
}

BOOL sub_100228E60(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = *(v3 + 4);
  v5 = v4 != (v4 | a2);
  if (v4 != (v4 | a2))
  {
    sub_1002287C0(v3, v4 | a2);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("addHeadlessModeFeature:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Adding LPEM feature %d changed the feature set", v10, ClassName, Name, 675, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(v3);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67110146;
      v31 = v13;
      v32 = 2082;
      v33 = object_getClassName(v3);
      v34 = 2082;
      v35 = sel_getName("addHeadlessModeFeature:");
      v36 = 1024;
      v37 = 675;
      v38 = 1024;
      v39 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Adding LPEM feature %d changed the feature set", buf, 0x28u);
    }

    v14 = sub_1002269CC(v3);
  }

  if (*(v3 + 9) == 1)
  {
    *(v3 + 9) = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(v3);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(v3);
      v29 = sel_getName("addHeadlessModeFeature:");
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", v20, v19, v29, 684);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(v3);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(v3);
      v25 = sel_getName("addHeadlessModeFeature:");
      *buf = 67109890;
      v31 = v23;
      v32 = 2082;
      v33 = v24;
      v34 = 2082;
      v35 = v25;
      v36 = 1024;
      v37 = 684;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", buf, 0x22u);
    }

    v5 = 1;
  }

  objc_sync_exit(v3);

  return v5;
}

BOOL sub_100229170(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = *(v3 + 4);
  v5 = v4 & ~a2;
  v6 = v4 != v5;
  if (v4 != v5)
  {
    sub_1002287C0(v3, v5);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("removeHeadlessModeFeature:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Removing LPEM feature %d changed the feature set", v11, ClassName, Name, 701, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67110146;
      v32 = v14;
      v33 = 2082;
      v34 = object_getClassName(v3);
      v35 = 2082;
      v36 = sel_getName("removeHeadlessModeFeature:");
      v37 = 1024;
      v38 = 701;
      v39 = 1024;
      v40 = a2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing LPEM feature %d changed the feature set", buf, 0x28u);
    }

    v15 = sub_1002269CC(v3);
  }

  if (*(v3 + 9) == 1)
  {
    *(v3 + 9) = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(v3);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(v3);
      v30 = sel_getName("removeHeadlessModeFeature:");
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", v21, v20, v30, 710);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(v3);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(v3);
      v26 = sel_getName("removeHeadlessModeFeature:");
      *buf = 67109890;
      v32 = v24;
      v33 = 2082;
      v34 = v25;
      v35 = 2082;
      v36 = v26;
      v37 = 1024;
      v38 = 710;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i First time setting LPEM, reported as change", buf, 0x22u);
    }

    v6 = 1;
  }

  objc_sync_exit(v3);

  return v6;
}

void sub_100229480(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      v2 = objc_opt_new();
      objc_initWeak(&location, a1);
      [v2 setUnderlyingQueue:*(a1 + 24)];
      v3 = +[NSNotificationCenter defaultCenter];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1002295A0;
      v5[3] = &unk_10031C568;
      objc_copyWeak(&v6, &location);
      v4 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v2 usingBlock:v5];

      *(a1 + 8) = 1;
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1002295A0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "headless locale changed", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v2, &v6);
  os_activity_scope_leave(&v6);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[4])
  {
    v5 = sub_1002269CC(WeakRetained);
  }
}

void sub_100229630(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      v2 = +[NSNotificationCenter defaultCenter];
      [v2 removeObserver:a1 name:NSCurrentLocaleDidChangeNotification object:0];

      *(a1 + 8) = 0;
    }
  }
}

void sub_100229698(id *a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
  [a1[2] startTimer:1200.0];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("headlessTimerLogic");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Setting RTC timer", v8, ClassName, Name, 777);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(a1);
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    *buf = 67109890;
    v26 = v11;
    v27 = 2082;
    v28 = object_getClassName(a1);
    v29 = 2082;
    v30 = sel_getName("headlessTimerLogic");
    v31 = 1024;
    v32 = 777;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting RTC timer", buf, 0x22u);
  }

  if (IOPMSchedulePowerEvent(v2, @"com.apple.nfcd.headless", @"poweron"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = object_getClass(a1);
      v15 = class_isMetaClass(v14);
      v16 = object_getClassName(a1);
      v24 = sel_getName("headlessTimerLogic");
      v17 = 45;
      if (v15)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", v17, v16, v24, 781);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(a1);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(a1);
      v22 = sel_getName("headlessTimerLogic");
      *buf = 67109890;
      v26 = v20;
      v27 = 2082;
      v28 = v21;
      v29 = 2082;
      v30 = v22;
      v31 = 1024;
      v32 = 781;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set RTC timer", buf, 0x22u);
    }
  }
}

void sub_100229980(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.rtc.kickTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100228858(WeakRetained);
    sub_100229698(v4);
  }
}

void *sub_100229A08(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:*(v1 + 8)];
    [v2 setObject:v3 forKeyedSubscript:@"registered"];

    v4 = v1[2];
    if (v4)
    {
      v5 = [v4 description];
      [v2 setObject:v5 forKeyedSubscript:@"timer"];
    }

    else
    {
      [v2 setObject:@"nil" forKeyedSubscript:@"timer"];
    }

    v6 = [NSNumber numberWithUnsignedInteger:v1[4]];
    [v2 setObject:v6 forKeyedSubscript:@"features"];

    v7 = sub_1002273D8(v1);
    [v2 setObject:v7 forKeyedSubscript:@"PMU"];

    v8 = [NSNumber numberWithBool:*(v1 + 11)];
    [v2 setObject:v8 forKeyedSubscript:@"Requires SCC timer"];

    v1 = [[NSDictionary alloc] initWithDictionary:v2];
  }

  return v1;
}

BOOL sub_100229BB0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  if (a2)
  {
    *a2 = 0;
  }

  v4 = SSEIsFeatureSupported();
  v5 = v4;
  if (v4 > -11)
  {
    if (!v4)
    {
      return v5 == 0;
    }

    if (v4 != -10)
    {
      goto LABEL_28;
    }
  }

  else if (v4 != -19)
  {
    if (v4 == -17)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("supportsEntanglement:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Feature support check not supported", v11, ClassName, Name, 38);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(v3);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v51 = v14;
        v52 = 2082;
        v53 = object_getClassName(v3);
        v54 = 2082;
        v55 = sel_getName("supportsEntanglement:");
        v56 = 1024;
        v57 = 38;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check not supported", buf, 0x22u);
      }

      goto LABEL_40;
    }

LABEL_28:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(v3);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(v3);
      v45 = sel_getName("supportsEntanglement:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Feature support check failed : %d", v36, v35, v45, 35, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(v3);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      *buf = 67110146;
      v51 = v39;
      v52 = 2082;
      v53 = object_getClassName(v3);
      v54 = 2082;
      v55 = sel_getName("supportsEntanglement:");
      v56 = 1024;
      v57 = 35;
      v58 = 1024;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check failed : %d", buf, 0x28u);
    }

    if (a2)
    {
      v40 = [NSError alloc];
      v12 = [NSString stringWithUTF8String:"nfcd"];
      v46[0] = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:"Security Not Initialized"];
      v47[0] = v24;
      v47[1] = &off_1003362D0;
      v46[1] = @"Line";
      v46[2] = @"Method";
      v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsEntanglement:")];
      v47[2] = v25;
      v46[3] = NSDebugDescriptionErrorKey;
      v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsEntanglement:"), 36];
      v47[3] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];
      v28 = v40;
      v29 = v12;
      v30 = 27;
      goto LABEL_39;
    }

    return v5 == 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(v3);
    v18 = class_isMetaClass(v17);
    v42 = object_getClassName(v3);
    v44 = sel_getName("supportsEntanglement:");
    v19 = 45;
    if (v18)
    {
      v19 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Feature support check not allowed : %d", v19, v42, v44, 32, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = object_getClass(v3);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    *buf = 67110146;
    v51 = v22;
    v52 = 2082;
    v53 = object_getClassName(v3);
    v54 = 2082;
    v55 = sel_getName("supportsEntanglement:");
    v56 = 1024;
    v57 = 32;
    v58 = 1024;
    v59 = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Feature support check not allowed : %d", buf, 0x28u);
  }

  if (a2)
  {
    v23 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v48[0] = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Keychain locked"];
    v49[0] = v24;
    v49[1] = &off_1003362B8;
    v48[1] = @"Line";
    v48[2] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName("supportsEntanglement:")];
    v49[2] = v25;
    v48[3] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("supportsEntanglement:"), 33];
    v49[3] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
    v28 = v23;
    v29 = v12;
    v30 = 41;
LABEL_39:
    *a2 = [v28 initWithDomain:v29 code:v30 userInfo:v27];

LABEL_40:
  }

  return v5 == 0;
}