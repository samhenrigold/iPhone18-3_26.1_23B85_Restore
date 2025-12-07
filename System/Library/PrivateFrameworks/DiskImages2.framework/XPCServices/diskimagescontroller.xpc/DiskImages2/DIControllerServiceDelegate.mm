@interface DIControllerServiceDelegate
+ (BOOL)sendHandleToClient:(id)client clientConnection:(id)connection outError:(id *)error;
+ (BOOL)tryAttachWithParams:(id)params clientConnection:(id)connection outError:(id *)error;
- (BOOL)checkAttachEntitlementWithError:(id *)error;
- (BOOL)setupNewConnection:(id)connection;
- (id)convertWithParams:(id)params reply:(id)reply;
- (void)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage reply:(id)reply;
- (void)attachWithParams:(id)params reply:(id)reply;
- (void)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account reply:(id)reply;
- (void)dupWithStderrHandle:(id)handle reply:(id)reply;
- (void)enterSandbox;
- (void)keychainUnlockWithEncryptionUnlocker:(id)unlocker reply:(id)reply;
- (void)retrieveStatsWithParams:(id)params reply:(id)reply;
- (void)verifyWithParams:(id)params reply:(id)reply;
@end

@implementation DIControllerServiceDelegate

+ (BOOL)sendHandleToClient:(id)client clientConnection:(id)connection outError:(id *)error
{
  clientCopy = client;
  connectionCopy = connection;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100014204;
  v19 = sub_100014214;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001421C;
  v14[3] = &unk_100202A18;
  v14[4] = &v15;
  v9 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000143EC;
  v13[3] = &unk_100202A18;
  v13[4] = &v15;
  [v9 attachCompletedWithHandle:clientCopy reply:v13];
  v10 = v16[5];
  if (error && v10)
  {
    *error = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;

  _Block_object_dispose(&v15, 8);
  return v11;
}

+ (BOOL)tryAttachWithParams:(id)params clientConnection:(id)connection outError:(id *)error
{
  paramsCopy = params;
  connectionCopy = connection;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [[DIController2IO_XPCHandlerAttach alloc] initWithParams:paramsCopy];
    v52 = 0;
    v11 = [(DIController2IO_XPCHandlerAttach *)v10 runWithError:&v52];
    v12 = v52;
    if (v11)
    {
      v51 = v12;
      v13 = [DIControllerServiceDelegate sendHandleToClient:v11 clientConnection:connectionCopy outError:&v51];
      v14 = v51;

      v12 = v14;
      if ((v13 & 1) == 0)
      {
        break;
      }
    }

    [(DIBaseXPCHandler *)v10 closeConnection];
    if (!v12)
    {

      v43 = 1;
      goto LABEL_49;
    }

    if ([(DIController2IO_XPCHandlerAttach *)v12 code]== 155 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 151 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 4097 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 4099)
    {
      v15 = v9 + 1;
      if (v9 == 5)
      {
        goto LABEL_47;
      }

      if (v9)
      {
        v16 = *__error();
        v17 = sub_1000E044C();
        if (v17)
        {
          v50 = 0;
          v19 = sub_1000E03D8(v17, v18);
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          *buf = 68158210;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          *&buf[4] = 77;
          v54 = 2080;
          v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v56 = 2114;
          v57 = v12;
          LODWORD(v45) = 28;
          v22 = _os_log_send_and_compose_impl(v21, &v50, 0, 0, &_mh_execute_header, v19, 16, "%.*s: Connection attempt failed: %{public}@, retrying", buf, v45);

          if (v22)
          {
            fprintf(__stderrp, "%s\n", v22);
            free(v22);
          }
        }

        else
        {
          v30 = sub_1000E03D8(v17, v18);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x4D04100302;
            v54 = 2080;
            v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v56 = 2114;
            v57 = v12;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%.*s: Connection attempt failed: %{public}@, retrying", buf, 0x1Cu);
          }
        }

        *__error() = v16;
        usleep(0x7A120u);
        v8 = 0;
        v9 = v15;
      }

      else
      {
        v23 = *__error();
        v24 = sub_1000E044C();
        if (v24)
        {
          v50 = 0;
          v26 = sub_1000E03D8(v24, v25);
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          *buf = 68158210;
          if (v27)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          *&buf[4] = 77;
          v54 = 2080;
          v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v56 = 2114;
          v57 = v12;
          LODWORD(v45) = 28;
          v29 = _os_log_send_and_compose_impl(v28, &v50, 0, 0, &_mh_execute_header, v26, 0, "%.*s: First connection attempt failed: %{public}@, retrying", buf, v45);

          if (v29)
          {
            fprintf(__stderrp, "%s\n", v29);
            free(v29);
          }
        }

        else
        {
          v31 = sub_1000E03D8(v24, v25);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68158210;
            *&buf[4] = 77;
            v54 = 2080;
            v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v56 = 2114;
            v57 = v12;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%.*s: First connection attempt failed: %{public}@, retrying", buf, 0x1Cu);
          }
        }

        *__error() = v23;
        usleep(0x186A0u);
        v8 = 0;
        v9 = 1;
      }
    }

    else
    {
      if ([(DIController2IO_XPCHandlerAttach *)v12 code]!= 170)
      {
LABEL_47:
        v14 = v12;
        break;
      }

      v32 = v8 + 1;
      if (v8 == 34)
      {
        v14 = [DIError errorWithEnumValue:159 verboseInfo:@"Timeout waiting for a completion of an ongoing eject"];

        break;
      }

      if (!v8)
      {
        v33 = *__error();
        v34 = sub_1000E044C();
        if (v34)
        {
          v47 = v33;
          v50 = 0;
          v46 = sub_1000E03D8(v34, v35);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          inputURL = [paramsCopy inputURL];
          path = [inputURL path];
          *buf = 68158211;
          *&buf[4] = 77;
          v54 = 2080;
          v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v56 = 2113;
          v57 = path;
          LODWORD(v45) = 28;
          v39 = _os_log_send_and_compose_impl(v36, &v50, 0, 0, &_mh_execute_header, v46, 16, "%.*s: Waiting for completion of an ongoing eject of %{private}@", buf, v45);

          v33 = v47;
          if (v39)
          {
            fprintf(__stderrp, "%s\n", v39);
            free(v39);
          }
        }

        else
        {
          v40 = sub_1000E03D8(v34, v35);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v48 = v33;
            inputURL2 = [paramsCopy inputURL];
            path2 = [inputURL2 path];
            *buf = 68158211;
            *&buf[4] = 77;
            v54 = 2080;
            v55 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v56 = 2113;
            v57 = path2;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%.*s: Waiting for completion of an ongoing eject of %{private}@", buf, 0x1Cu);

            v33 = v48;
          }
        }

        *__error() = v33;
      }

      sleep(1u);
      v8 = v32;
    }
  }

  v43 = [DIError failWithInError:v14 outError:error];
  v10 = v14;
LABEL_49:

  return v43;
}

- (BOOL)checkAttachEntitlementWithError:(id *)error
{
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.diskimages.attach"];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = *__error();
    v7 = sub_1000E044C();
    if (v7)
    {
      v17 = 0;
      v9 = sub_1000E03D8(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      *buf = 68157954;
      v19 = 63;
      v20 = 2080;
      v21 = "[DIControllerServiceDelegate checkAttachEntitlementWithError:]";
      LODWORD(v16) = 18;
      v11 = _os_log_send_and_compose_impl(v10, &v17, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Client is entitled to attach disk images", buf, v16);

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v15 = sub_1000E03D8(v7, v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v19 = 63;
        v20 = 2080;
        v21 = "[DIControllerServiceDelegate checkAttachEntitlementWithError:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Client is entitled to attach disk images", buf, 0x12u);
      }
    }

    *__error() = v6;
    v13 = 1;
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Missing entitlement: %@", @"com.apple.diskimages.attach"];
    v13 = [DIError failWithEnumValue:158 verboseInfo:v12 error:error];
  }

  return v13;
}

- (void)attachWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v17 = 0;
  v8 = [(DIControllerServiceDelegate *)self checkAttachEntitlementWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_100014204;
    v15[4] = sub_100014214;
    v16 = +[NSXPCConnection currentConnection];
    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000151D0;
    v11[3] = &unk_100202A40;
    v12 = paramsCopy;
    v14 = v15;
    v13 = replyCopy;
    dispatch_async(dispatchQueue, v11);

    _Block_object_dispose(v15, 8);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v9);
  }
}

- (void)dupWithStderrHandle:(id)handle reply:(id)reply
{
  replyCopy = reply;
  LODWORD(handle) = [handle fileDescriptor];
  v6 = fileno(__stderrp);
  if (dup2(handle, v6) < 0)
  {
    v13 = [DIError errorWithEnumValue:154 verboseInfo:@"Error duplicating stderr"];
  }

  else
  {
    v7 = *__error();
    v8 = sub_1000E044C();
    if (v8)
    {
      v16 = 0;
      v10 = sub_1000E03D8(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *buf = 68157954;
      v18 = 57;
      v19 = 2080;
      v20 = "[DIControllerServiceDelegate dupWithStderrHandle:reply:]";
      LODWORD(v15) = 18;
      v12 = _os_log_send_and_compose_impl(v11, &v16, 0, 0, &_mh_execute_header, v10, 0, "%.*s: stderr duplicated", buf, v15);

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v14 = sub_1000E03D8(v8, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v18 = 57;
        v19 = 2080;
        v20 = "[DIControllerServiceDelegate dupWithStderrHandle:reply:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: stderr duplicated", buf, 0x12u);
      }
    }

    v13 = 0;
    *__error() = v7;
  }

  replyCopy[2](replyCopy, v13);
}

- (id)convertWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v22 = 0;
  v8 = [paramsCopy validateDeserializationWithError:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = [[DIConvertManager alloc] initWithParams:paramsCopy];
    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10001560C;
    v18 = &unk_100202A68;
    v19 = v10;
    v20 = paramsCopy;
    v21 = replyCopy;
    v12 = v10;
    dispatch_async(dispatchQueue, &v15);

    v13 = [(DIConvertManager *)v12 progress:v15];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v9);
    v13 = [NSProgress progressWithTotalUnitCount:100];
  }

  return v13;
}

- (void)verifyWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000157B8;
  v11[3] = &unk_100202A90;
  v12 = paramsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)keychainUnlockWithEncryptionUnlocker:(id)unlocker reply:(id)reply
{
  unlockerCopy = unlocker;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000159B0;
  v11[3] = &unk_100202A90;
  v12 = unlockerCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = unlockerCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage reply:(id)reply
{
  frontendCopy = frontend;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015BC4;
  block[3] = &unk_100202AB8;
  v15 = replyCopy;
  usageCopy = usage;
  v14 = frontendCopy;
  v11 = replyCopy;
  v12 = frontendCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account reply:(id)reply
{
  creatorCopy = creator;
  accountCopy = account;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015DF8;
  block[3] = &unk_100202A68;
  v16 = creatorCopy;
  v17 = accountCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = accountCopy;
  v14 = creatorCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)retrieveStatsWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016008;
  v11[3] = &unk_100202A90;
  v12 = paramsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, v11);
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIControllerProtocol];
  [connectionCopy setExportedInterface:v5];

  [connectionCopy setExportedObject:self];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIController2ClientProtocol];
  [connectionCopy setRemoteObjectInterface:v6];

  [connectionCopy setInterruptionHandler:&stru_100202B20];
  [connectionCopy setInvalidationHandler:&stru_100202B40];

  return 1;
}

- (void)enterSandbox
{
  _set_user_dir_suffix();
  v3.receiver = self;
  v3.super_class = DIControllerServiceDelegate;
  [(DIBaseServiceDelegate *)&v3 enterSandbox];
}

@end