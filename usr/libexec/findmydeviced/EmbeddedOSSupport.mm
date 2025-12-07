@interface EmbeddedOSSupport
- (NSNumber)bioLockState;
- (id)disableBiometricID;
@end

@implementation EmbeddedOSSupport

- (NSNumber)bioLockState
{
  v2 = +[BiometricKit manager];
  v3 = [v2 identities:0];
  v22 = [v3 copy];

  v32 = 1;
  +[BKDeviceManager availableDevices];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v23 = *v29;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [BKDevice deviceWithDescriptor:*(*(&v28 + 1) + 8 * i) error:0, v20];
        v10 = v9;
        if (v9)
        {
          v11 = sub_100002880(v9);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v35 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking biometry device state - %@", buf, 0xCu);
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v12 = v22;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
LABEL_11:
            v16 = 0;
            while (1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v10 bioLockoutState:&v32 forUser:objc_msgSend(*(*(&v24 + 1) + 8 * v16) error:{"userID"), 0}])
              {
                v17 = [NSNumber numberWithInteger:v32];

                v7 = v17;
                if (v32 != 1)
                {
                  break;
                }
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
                v17 = v7;
                if (v14)
                {
                  goto LABEL_11;
                }

                break;
              }
            }
          }

          else
          {
            v17 = v7;
          }

          v7 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;

  return v18;
}

- (id)disableBiometricID
{
  v2 = sub_100002880(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling biometry devices...", buf, 2u);
  }

  if (objc_opt_class())
  {
    v3 = +[BKDeviceManager availableDevices];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v23;
      v20 = NSLocalizedDescriptionKey;
      v19 = NSUnderlyingErrorKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [BKDevice deviceWithDescriptor:*(*(&v22 + 1) + 8 * i) error:0, v19, v20];
          v10 = sub_100002880(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disabling biometry device - %@", buf, 0xCu);
          }

          if (v9)
          {
            v21 = v6;
            v12 = [v9 forceBioLockoutForAllUsersWithError:&v21];
            v13 = v21;

            v15 = sub_100002880(v14);
            v16 = v15;
            if (v12)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully disabled biometry", buf, 2u);
              }

              v6 = v13;
            }

            else
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v29 = v13;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error disabling biometry: %@", buf, 0xCu);
              }

              v26[0] = v20;
              v26[1] = v19;
              v27[0] = @"Couldn't disable biometry";
              v27[1] = v13;
              v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
              v6 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.EmbeddedOSSupport" code:3 userInfo:v16];
            }
          }

          else
          {
            v16 = sub_100002880(v11);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not a biometry capable device", buf, 2u);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v17 = sub_100002880(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10022EF78(v17);
    }

    v6 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.EmbeddedOSSupport" code:1 userInfo:0];
  }

  return v6;
}

@end