@interface HRCDiagnosticExtension
- (BOOL)_callingHostIsDiagnostics:(id)diagnostics;
- (BOOL)_forceFlushLogs;
- (id)_collectFilesFrom:(const void *)from withFilter:(void *)filter skipNewest:(BOOL)newest;
- (id)_getHRCLP5s:(BOOL)p5s;
- (id)_getPalomaLogs;
- (id)attachmentsForParameters:(id)parameters;
- (void)_updateLimitedLogging:(id)logging enabled:(BOOL)enabled;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation HRCDiagnosticExtension

- (void)_updateLimitedLogging:(id)logging enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  loggingCopy = logging;
  v6 = sub_10000391C(loggingCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v16 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to update limited logging to: %{public,BOOL}d", buf, 8u);
  }

  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100000E2C;
  v12[3] = &unk_100008368;
  v14 = enabledCopy;
  v8 = v7;
  v13 = v8;
  [loggingCopy setAppleAudioAccessoryLimitedLogging:enabledCopy completion:v12];
  v9 = dispatch_time(0, 10000000000);
  v10 = dispatch_group_wait(v8, v9);
  if (v10)
  {
    v11 = sub_10000391C(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000039A4();
    }
  }
}

- (BOOL)_callingHostIsDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v4 = [diagnosticsCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 isEqualToString:@"com.apple.enhancedloggingd"];
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = sub_10000391C(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unexpected calling host: %{public}@", &v11, 0xCu);
    }
  }

  return v8;
}

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = sub_10000391C(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setupWithParameters: %{public}@", &buf, 0xCu);
  }

  v6 = [(HRCDiagnosticExtension *)self _callingHostIsDiagnostics:parametersCopy];
  if (v6)
  {
    v7 = objc_alloc_init(CBUserController);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x2020000000;
    v32 = 0;
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
    v9 = [v8 objectForKey:@"InitialLimitedLoggingState"];
    v10 = v9 == 0;

    if (v10)
    {
      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      v16 = sub_10000391C(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Querying limited logging state", v28, 2u);
      }

      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100001538;
      v25 = &unk_1000083B8;
      p_buf = &buf;
      v12 = v14;
      v26 = v12;
      [v7 appleAudioAccessoryLimitedLoggingWithCompletion:&v22];
      v17 = dispatch_time(0, 10000000000);
      v18 = dispatch_group_wait(v12, v17);
      if (v18)
      {
        v19 = sub_10000391C(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100003A5C();
        }

        goto LABEL_20;
      }

      v20 = sub_10000391C(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*(&buf + 1) + 24);
        *v28 = 67240192;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "storing initial limited logging state in defaults: %{public,BOOL}d", v28, 8u);
      }

      [v8 setBool:*(*(&buf + 1) + 24) forKey:{@"InitialLimitedLoggingState", v22, v23, v24, v25}];
    }

    else
    {
      v11 = [v8 BOOLForKey:@"InitialLimitedLoggingState"];
      *(*(&buf + 1) + 24) = v11;
      v12 = sub_10000391C(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(&buf + 1) + 24);
        *v28 = 67240192;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "initial limited logging state found in defaults: %{public,BOOL}d", v28, 8u);
      }
    }

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [(HRCDiagnosticExtension *)self _updateLimitedLogging:v7 enabled:1];
    }

LABEL_20:

    _Block_object_dispose(&buf, 8);
    goto LABEL_21;
  }

  v7 = sub_10000391C(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setup run outside of expected TL flow!", &buf, 2u);
  }

LABEL_21:
}

- (void)teardownWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = sub_10000391C(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "teardownWithParameters: %{public}@", &v16, 0xCu);
  }

  v6 = [(HRCDiagnosticExtension *)self _callingHostIsDiagnostics:parametersCopy];
  if (v6)
  {
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
    v8 = [v7 objectForKey:@"InitialLimitedLoggingState"];
    v9 = v8 == 0;

    if (v9)
    {
      v15 = sub_10000391C(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100003B14();
      }
    }

    else
    {
      v11 = [v7 BOOLForKey:@"InitialLimitedLoggingState"];
      v12 = v11;
      v13 = sub_10000391C(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67240192;
        LODWORD(v17) = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "initial limited logging state retrieved from defaults: %{public,BOOL}d", &v16, 8u);
      }

      if ((v12 & 1) == 0)
      {
        v14 = objc_alloc_init(CBUserController);
        [(HRCDiagnosticExtension *)self _updateLimitedLogging:v14 enabled:0];
      }

      [v7 removeObjectForKey:@"InitialLimitedLoggingState"];
    }
  }

  else
  {
    v7 = sub_10000391C(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "teardown run outside of expected TL flow!", &v16, 2u);
    }
  }
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = sub_10000391C(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", &v15, 0xCu);
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ((([v6 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.TapToRadar")) && (objc_msgSend(parametersCopy, "objectForKeyedSubscript:", @"DEExtensionAttachmentsParamConsentProvidedKey"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, (v8 & 1) == 0))
  {
    _getPalomaLogs = sub_10000391C(v9);
    if (os_log_type_enabled(_getPalomaLogs, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, _getPalomaLogs, OS_LOG_TYPE_DEFAULT, "consent not provided: returning an empty list of attachments", &v15, 2u);
    }

    v11 = &__NSArray0__struct;
  }

  else
  {
    _forceFlushLogs = [(HRCDiagnosticExtension *)self _forceFlushLogs];
    v11 = objc_opt_new();
    v12 = [(HRCDiagnosticExtension *)self _getHRCLP5s:_forceFlushLogs];
    [v11 addObjectsFromArray:v12];

    _getPalomaLogs = [(HRCDiagnosticExtension *)self _getPalomaLogs];
    [v11 addObjectsFromArray:_getPalomaLogs];
  }

  return v11;
}

- (BOOL)_forceFlushLogs
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.heartratecoordinator.diagnosticextension", v3);

  v27 = -1;
  out_token = -1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001EA4;
  handler[3] = &unk_1000083E0;
  v22 = &v23;
  v5 = v2;
  v21 = v5;
  notify_register_dispatch("com.apple.HeartRateCoordinator.logFlushFinshed", &out_token, v4, handler);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001EC4;
  v17[3] = &unk_1000083E0;
  v19 = &v23;
  v6 = v5;
  v18 = v6;
  notify_register_dispatch("com.apple.HeartRateCoordinator.logFlushNotNeeded", &v27, v4, v17);
  dispatch_group_enter(v6);
  v8 = sub_10000391C(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending flush command to daemon", &v16, 2u);
  }

  notify_post("com.apple.HeartRateCoordinator.logFlush");
  v9 = dispatch_time(0, 5000000000);
  v10 = dispatch_group_wait(v6, v9);
  v11 = v10;
  if (v10)
  {
    v12 = sub_10000391C(v10);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v16 = 0;
    v13 = "Failed to flush daemon logs";
  }

  else
  {
    v12 = sub_10000391C(0);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v16 = 0;
    v13 = "Successfully flushed daemon logs";
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 2u);
LABEL_9:

  if (out_token != -1)
  {
    notify_cancel(out_token);
  }

  if (v27 != -1)
  {
    notify_cancel(v27);
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v14 & 1;
}

- (id)_getHRCLP5s:(BOOL)p5s
{
  p5sCopy = p5s;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.heartratecoordinatord"];

  path = [v6 path];
  v11.__pn_.__r_.__value_.__r.__words[0] = [path cStringUsingEncoding:134217984];
  sub_10000311C(&v12, &v11);

  sub_10000311C(&__p.__pn_, &off_100008400);
  sub_10000206C(&v11, &__p, &v12);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  v8 = [(HRCDiagnosticExtension *)self _collectFilesFrom:&v11 withFilter:0 skipNewest:p5sCopy];
  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v8;
}

- (id)_getPalomaLogs
{
  sub_1000033A4(&__p, "/var/mobile/Library/Logs/Bluetooth/");
  if ((atomic_load_explicit(byte_10000C1B8, memory_order_acquire) & 1) == 0)
  {
    sub_100003B54();
  }

  v3 = [(HRCDiagnosticExtension *)self _collectFilesFrom:&__p withFilter:&qword_10000C1C0 skipNewest:0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

- (id)_collectFilesFrom:(const void *)from withFilter:(void *)filter skipNewest:(BOOL)newest
{
  newestCopy = newest;
  v42 = objc_opt_new();
  v8 = sub_10000391C(v42);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(from + 23) >= 0)
    {
      fromCopy = from;
    }

    else
    {
      fromCopy = *from;
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
    *(buf[0].__r_.__value_.__r.__words + 4) = fromCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attaching files from %{public}s", buf, 0xCu);
  }

  __ec.__val_ = 0;
  v10 = std::system_category();
  __ec.__cat_ = v10;
  v11 = std::__fs::filesystem::__status(from, &__ec);
  if (buf[0].__r_.__value_.__s.__data_[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v10;
    if (buf[0].__r_.__value_.__s.__data_[0] != 255)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      buf[0].__r_.__value_.__s.__data_[0] = 0;
      v50 = 0;
      std::__fs::filesystem::directory_iterator::directory_iterator(&v48, from, &__ec, none);
      ptr = v48.__imp_.__ptr_;
      cntrl = v48.__imp_.__cntrl_;
      if (v48.__imp_.__cntrl_)
      {
        atomic_fetch_add_explicit(&v48.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = v48.__imp_.__cntrl_;
        v44.__imp_.__ptr_ = ptr;
        v44.__imp_.__cntrl_ = cntrl;
        if (v48.__imp_.__cntrl_)
        {
          atomic_fetch_add_explicit(&v48.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100002B4C(v15);
        }
      }

      else
      {
        v44.__imp_.__ptr_ = v48.__imp_.__ptr_;
        v44.__imp_.__cntrl_ = 0;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        if (!v44.__imp_.__ptr_)
        {
LABEL_50:
          if (v44.__imp_.__cntrl_)
          {
            sub_100002B4C(v44.__imp_.__cntrl_);
          }

          if (v48.__imp_.__cntrl_)
          {
            sub_100002B4C(v48.__imp_.__cntrl_);
          }

          v32 = v51;
          v33 = v52;
          if (v51 != v52)
          {
            *&v12 = 138543362;
            v41 = v12;
            do
            {
              v34 = v32;
              if (*(v32 + 23) < 0)
              {
                v34 = *v32;
              }

              v36 = [NSString stringWithCString:v34 encoding:4, v41];
              if (newestCopy && v50 == 1 && (v35.__data_ = buf, v37 = sub_100002904(v32, v35)))
              {
                v38 = sub_10000391C(v37);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v48.__imp_.__ptr_) = v41;
                  *(&v48.__imp_.__ptr_ + 4) = v36;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Skipping newest file: %{public}@", &v48, 0xCu);
                }
              }

              else
              {
                v38 = [DEAttachmentItem attachmentWithPath:v36];
                v39 = sub_10000391C([v42 addObject:v38]);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v48.__imp_.__ptr_) = v41;
                  *(&v48.__imp_.__ptr_ + 4) = v36;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Attaching %{public}@", &v48, 0xCu);
                }
              }

              v32 += 80;
            }

            while (v32 != v33);
          }

          if (v50 == 1 && SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }

          buf[0].__r_.__value_.__r.__words[0] = &v51;
          sub_100003078(buf);
          goto LABEL_71;
        }

        v21 = std::__fs::filesystem::directory_iterator::__dereference(&v44);
        if (__ec.__val_)
        {
          v31 = sub_10000391C(v21);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            std::error_code::message(&v43, &__ec);
            sub_100003BCC(&v43);
          }

          goto LABEL_50;
        }

        v22 = v21;
        v23 = sub_100002BB8(&v21->__p_, &__ec);
        if (__ec.__val_ || v23 != 1)
        {
          break;
        }

        if (!filter)
        {
          goto LABEL_77;
        }

        v24 = *(filter + 3);
        if (!v24)
        {
          sub_1000038B4();
        }

        if ((*(*v24 + 48))(v24, v22))
        {
LABEL_77:
          sub_100002830(&v51, v22);
          if (newestCopy)
          {
            v25.__d_.__rep_ = std::__fs::filesystem::__last_write_time(v22, &__ec).__d_.__rep_;
            if (__ec.__val_)
            {
              v26 = sub_10000391C(*&v25.__d_.__rep_);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                std::error_code::message(&v43, &__ec);
                if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &v43;
                }

                else
                {
                  v27 = v43.__r_.__value_.__r.__words[0];
                }

                *v46 = 136446210;
                v47 = v27;
                v28 = v26;
                v29 = "Error getting last write time: %{public}s";
                goto LABEL_45;
              }

              goto LABEL_36;
            }

            if ((v20 & (__PAIR128__(v19, v18) >= v25.__d_.__rep_)) != 0)
            {
              v20 = 1;
            }

            else
            {
              sub_100002870(buf, v22);
              v20 = 1;
              v19 = *(&v25.__d_.__rep_ + 1);
              v18 = *&v25.__d_.__rep_;
            }
          }
        }

LABEL_37:
        std::__fs::filesystem::directory_iterator::__increment(&v44, 0);
      }

      if (!__ec.__val_)
      {
        goto LABEL_37;
      }

      v26 = sub_10000391C(v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v43, &__ec);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v43;
        }

        else
        {
          v30 = v43.__r_.__value_.__r.__words[0];
        }

        *v46 = 136446210;
        v47 = v30;
        v28 = v26;
        v29 = "Error checking if entry is a regular file: %{public}s";
LABEL_45:
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, v46, 0xCu);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }
      }

LABEL_36:

      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if (!__ec.__val_)
  {
LABEL_15:
    v17 = sub_10000391C(*&v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100003CA4();
    }

    goto LABEL_71;
  }

  v16 = sub_10000391C(*&v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    std::error_code::message(buf, &__ec);
    sub_100003C38(buf);
  }

LABEL_71:

  return v42;
}

@end