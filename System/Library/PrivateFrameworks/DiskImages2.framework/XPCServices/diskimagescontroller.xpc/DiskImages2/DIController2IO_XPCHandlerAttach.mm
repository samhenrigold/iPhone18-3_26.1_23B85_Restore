@interface DIController2IO_XPCHandlerAttach
- (BOOL)checkQuarantineWithFlags:(char *)flags buffer:(id *)buffer error:(id *)error;
- (BOOL)createDeviceWithError:(id *)error;
- (BOOL)disconnectFromDriverWithError:(id *)error;
- (BOOL)setupDriverWithError:(id *)error;
- (BOOL)updateFileBackingInfoWithRootDeviceEntryID:(unint64_t *)d error:(id *)error;
- (BOOL)updateQuarantineFlagWithHandlerArray:(id)array flags:(char *)flags buffer:(id *)buffer error:(id *)error;
- (DIController2IO_XPCHandlerAttach)initWithParams:(id)params;
- (id)launchIODaemonWithError:(id *)error;
- (id)runWithError:(id *)error;
- (unsigned)getInterconnectLocation;
- (void)setConnectionMode;
@end

@implementation DIController2IO_XPCHandlerAttach

- (DIController2IO_XPCHandlerAttach)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = DIController2IO_XPCHandlerAttach;
  v6 = [(DIController2IO_XPCHandlerBase *)&v9 initWithParams:paramsCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachParams, params);
    v7->_ucConnection = 0;
  }

  return v7;
}

- (id)launchIODaemonWithError:(id *)error
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000117F8;
  v33 = sub_100011808;
  v34 = 0;
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100011810;
  v26[3] = &unk_1002029E0;
  objc_copyWeak(&v27, &location);
  v26[4] = &v29;
  v5 = objc_retainBlock(v26);
  if ([(DIController2IO_XPCHandlerAttach *)self isNewDevice])
  {
    v6 = *__error();
    v7 = sub_1000E044C();
    if (v7)
    {
      v25 = 0;
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
      v36 = 60;
      v37 = 2080;
      v38 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
      LODWORD(v24) = 18;
      v11 = _os_log_send_and_compose_impl(v10, &v25, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Device created, attaching to the new device", buf, v24);

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v18 = sub_1000E03D8(v7, v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v36 = 60;
        v37 = 2080;
        v38 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Device created, attaching to the new device", buf, 0x12u);
      }
    }

    *__error() = v6;
    remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
    attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    [remoteProxy attachToNewDeviceWithParams:attachParams reply:v5];
  }

  else
  {
    v12 = *__error();
    v13 = sub_1000E044C();
    if (v13)
    {
      v25 = 0;
      v15 = sub_1000E03D8(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *buf = 68157954;
      v36 = 60;
      v37 = 2080;
      v38 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
      LODWORD(v24) = 18;
      v17 = _os_log_send_and_compose_impl(v16, &v25, 0, 0, &_mh_execute_header, v15, 0, "%.*s: Attaching to an existing device", buf, v24);

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v21 = sub_1000E03D8(v13, v14);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v36 = 60;
        v37 = 2080;
        v38 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%.*s: Attaching to an existing device", buf, 0x12u);
      }
    }

    *__error() = v12;
    remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
    attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    [remoteProxy attachToExistingDeviceWithParams:attachParams reply:v5];
  }

  if ([(DIBaseXPCHandler *)self completeCommandWithError:error])
  {
    v22 = v30[5];
  }

  else
  {
    v22 = 0;
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v29, 8);

  return v22;
}

- (BOOL)setupDriverWithError:(id *)error
{
  v5 = [DIIOObject copyDiskImagesControllerWithError:?];
  v6 = v5;
  if (v5)
  {
    ioObj = [v5 ioObj];
    v8 = IOServiceOpen(ioObj, mach_task_self_, 0, &self->_ucConnection);
    if (v8)
    {
      v9 = [NSString stringWithFormat:@"IOServiceOpen failed. error=0x%x", v8];
      v10 = [DIError failWithEnumValue:153 verboseInfo:v9 error:error];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)disconnectFromDriverWithError:(id *)error
{
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v17 = 0;
    v8 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68157954;
    v19 = 66;
    v20 = 2080;
    v21 = "[DIController2IO_XPCHandlerAttach disconnectFromDriverWithError:]";
    LODWORD(v16) = 18;
    v10 = _os_log_send_and_compose_impl(v9, &v17, 0, 0, &_mh_execute_header, v8, 0, "%.*s: Closing IO service", buf, v16);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v19 = 66;
      v20 = 2080;
      v21 = "[DIController2IO_XPCHandlerAttach disconnectFromDriverWithError:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Closing IO service", buf, 0x12u);
    }
  }

  *__error() = v5;
  v12 = IOServiceClose(self->_ucConnection);
  self->_ucConnection = 0;
  if (!v12)
  {
    return 1;
  }

  v13 = [NSString stringWithFormat:@"IOServiceClose failed. error=0x%x", v12];
  v14 = [DIError failWithEnumValue:153 verboseInfo:v13 error:error];

  return v14;
}

- (BOOL)updateFileBackingInfoWithRootDeviceEntryID:(unint64_t *)d error:(id *)error
{
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS = [attachParams inputStatFS];
  if (!inputStatFS)
  {

    goto LABEL_14;
  }

  attachParams2 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS2 = [attachParams2 inputStatFS];
  mountedFrom = [inputStatFS2 mountedFrom];

  if (!mountedFrom)
  {
LABEL_14:
    *d = 0;
    v30 = *__error();
    v31 = sub_1000E044C();
    if (v31)
    {
      v42 = 0;
      v33 = sub_1000E03D8(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      *buf = 68157954;
      v44 = 85;
      v45 = 2080;
      v46 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
      LODWORD(v40) = 18;
      v35 = _os_log_send_and_compose_impl(v34, &v42, 0, 0, &_mh_execute_header, v33, 0, "%.*s: Disk image file is not backed by local storage, root device entry ID will be the disk image device itself", buf, v40);

      if (v35)
      {
        fprintf(__stderrp, "%s\n", v35);
        free(v35);
      }
    }

    else
    {
      v36 = sub_1000E03D8(v31, v32);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v44 = 85;
        v45 = 2080;
        v46 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image file is not backed by local storage, root device entry ID will be the disk image device itself", buf, 0x12u);
      }
    }

    *__error() = v30;
    return 1;
  }

  v12 = [DIIOMedia alloc];
  attachParams3 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS3 = [attachParams3 inputStatFS];
  mountedFrom2 = [inputStatFS3 mountedFrom];
  v16 = [(DIIOMedia *)v12 initWithDevName:mountedFrom2 error:error];

  if (v16)
  {
    v17 = [(DIIOMedia *)v16 copyBlockDeviceWithError:error];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 copyRootBlockDeviceWithError:error];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 registryEntryIDWithError:error];
        *d = v21;
        if (v21)
        {
          v22 = *__error();
          v23 = sub_1000E044C();
          if (v23)
          {
            v42 = 0;
            v25 = sub_1000E03D8(v23, v24);
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            v27 = *d;
            if (v26)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            *buf = 68158210;
            v44 = 85;
            v45 = 2080;
            v46 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
            v47 = 2048;
            v48 = v27;
            LODWORD(v40) = 28;
            v29 = _os_log_send_and_compose_impl(v28, &v42, 0, 0, &_mh_execute_header, v25, 0, "%.*s: Entry ID of root block storage device: 0x%llx", buf, v40, v41);

            if (v29)
            {
              fprintf(__stderrp, "%s\n", v29);
              free(v29);
            }
          }

          else
          {
            v38 = sub_1000E03D8(v23, v24);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = *d;
              *buf = 68158210;
              v44 = 85;
              v45 = 2080;
              v46 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
              v47 = 2048;
              v48 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%.*s: Entry ID of root block storage device: 0x%llx", buf, 0x1Cu);
            }
          }

          *__error() = v22;

          return 1;
        }
      }
    }
  }

  return 0;
}

- (unsigned)getInterconnectLocation
{
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputURL = [attachParams inputURL];
  scheme = [inputURL scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"file"])
  {
    v6 = 1;
  }

  else if ([lowercaseString isEqualToString:@"ram"])
  {
    v6 = 2;
  }

  else if ([lowercaseString isEqualToString:@"http"])
  {
    v6 = 3;
  }

  else if ([lowercaseString isEqualToString:@"https"])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)updateQuarantineFlagWithHandlerArray:(id)array flags:(char *)flags buffer:(id *)buffer error:(id *)error
{
  arrayCopy = array;
  v10 = arrayCopy;
  if (arrayCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = arrayCopy;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 getFileInfoWithError:error];
          *buffer = v16;
          if (!v16 && ([v15 isQuarantined] & 1) != 0)
          {
            v17 = 0;
            goto LABEL_25;
          }

          if ([v15 isQuarantined])
          {
            v18 = *__error();
            v19 = sub_1000E044C();
            if (v19)
            {
              v27 = 0;
              v21 = sub_1000E03D8(v19, v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              *buf = 68157954;
              v33 = 92;
              v34 = 2080;
              v35 = "[DIController2IO_XPCHandlerAttach updateQuarantineFlagWithHandlerArray:flags:buffer:error:]";
              LODWORD(v26) = 18;
              v23 = _os_log_send_and_compose_impl(v22, &v27, 0, 0, &_mh_execute_header, v21, 0, "%.*s: Attaching a quarantined image", buf, v26);

              if (v23)
              {
                fprintf(__stderrp, "%s\n", v23);
                free(v23);
              }
            }

            else
            {
              v24 = sub_1000E03D8(v19, v20);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v33 = 92;
                v34 = 2080;
                v35 = "[DIController2IO_XPCHandlerAttach updateQuarantineFlagWithHandlerArray:flags:buffer:error:]";
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%.*s: Attaching a quarantined image", buf, 0x12u);
              }
            }

            *__error() = v18;
            *flags |= 2u;
            goto LABEL_24;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
    v17 = 1;
LABEL_25:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)checkQuarantineWithFlags:(char *)flags buffer:(id *)buffer error:(id *)error
{
  v6 = +[NSMutableArray array];
  v7 = [QuarantineFileHandler alloc];
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  v9 = attachParams;
  if (attachParams)
  {
    objc_msgSend_backend(attachParams);
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v10 = [(QuarantineFileHandler *)v7 initWithBackend:&v41 error:error];
  if (v42)
  {
    sub_10000367C(v42);
  }

  if (!v10)
  {
LABEL_34:
    v26 = 0;
    goto LABEL_35;
  }

  [v6 addObject:v10];
  attachParams2 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  shadowChain = [attachParams2 shadowChain];
  if (shadowChain)
  {

LABEL_10:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    attachParams3 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    shadowChain2 = [attachParams3 shadowChain];
    nodes = [shadowChain2 nodes];

    v19 = [nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v19)
    {
      v20 = *v38;
      while (2)
      {
        v21 = 0;
        v22 = v10;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(nodes);
          }

          fileBackend = [*(*(&v37 + 1) + 8 * v21) fileBackend];
          v24 = fileBackend;
          if (fileBackend)
          {
            objc_msgSend_backend(fileBackend);
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

          sub_10019A824(&v33, &v35);
          if (v34)
          {
            sub_10000367C(v34);
          }

          v25 = [QuarantineFileHandler alloc];
          v31 = v35;
          v32 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = [(QuarantineFileHandler *)v25 initWithBackend:&v31 error:error];

          if (v32)
          {
            sub_10000367C(v32);
          }

          if (!v10)
          {
            if (v36)
            {
              sub_10000367C(v36);
            }

            v10 = 0;
            goto LABEL_34;
          }

          [v6 addObject:v10];
          if (v36)
          {
            sub_10000367C(v36);
          }

          v21 = v21 + 1;
          v22 = v10;
        }

        while (v19 != v21);
        v19 = [nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_30;
  }

  attachParams4 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  shadowChain3 = [attachParams4 shadowChain];
  isEmpty = [shadowChain3 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v26 = [(DIController2IO_XPCHandlerAttach *)self updateQuarantineFlagWithHandlerArray:v6 flags:flags buffer:buffer error:error];
LABEL_35:

  return v26;
}

- (BOOL)createDeviceWithError:(id *)error
{
  v3 = __chkstk_darwin(self, a2, error);
  v143 = v4;
  v5 = v3;
  outputStructCnt = 12;
  attachParams = [v3 attachParams];
  autoMount = [attachParams autoMount];

  v145 = autoMount != 0;
  v144 = 0;
  v8 = [v5 checkQuarantineWithFlags:&v145 buffer:&v144 error:v143];
  v142 = v144;
  if (!v8)
  {
    goto LABEL_113;
  }

  getInterconnectLocation = [v5 getInterconnectLocation];
  attachParams2 = [v5 attachParams];
  if ([attachParams2 emulateExternalDisk])
  {
    v11 = os_variant_allows_internal_security_policies();

    if (v11)
    {
      v12 = *__error();
      v13 = sub_1000E044C();
      if (v13)
      {
        v154 = 0;
        v15 = sub_1000E03D8(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        buf[0].st_dev = 68157954;
        *&buf[0].st_mode = 58;
        LOWORD(buf[0].st_ino) = 2080;
        *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
        LODWORD(v130) = 18;
        v17 = _os_log_send_and_compose_impl(v16, &v154, 0, 0, &_mh_execute_header, v15, 0, "%.*s: [Apple Internal] Creating an emulated external disk", buf, v130);

        if (v17)
        {
          fprintf(__stderrp, "%s\n", v17);
          free(v17);
        }
      }

      else
      {
        v18 = sub_1000E03D8(v13, v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: [Apple Internal] Creating an emulated external disk", buf, 0x12u);
        }
      }

      *__error() = v12;
      getInterconnectLocation = 4;
    }
  }

  else
  {
  }

  attachParams3 = [v5 attachParams];
  diskImageParamsXPC = [attachParams3 diskImageParamsXPC];
  numBlocks = [diskImageParamsXPC numBlocks];

  attachParams4 = [v5 attachParams];
  diskImageParamsXPC2 = [attachParams4 diskImageParamsXPC];
  shadowChain = [diskImageParamsXPC2 shadowChain];
  isEmpty = [shadowChain isEmpty];

  if ((isEmpty & 1) == 0)
  {
    attachParams5 = [v5 attachParams];
    diskImageParamsXPC3 = [attachParams5 diskImageParamsXPC];
    shadowChain2 = [diskImageParamsXPC3 shadowChain];
    topDiskImageNumBlocks = [shadowChain2 topDiskImageNumBlocks];

    if (topDiskImageNumBlocks > 0)
    {
      numBlocks = topDiskImageNumBlocks;
    }
  }

  memset(v159, 0, 448);
  v158 = 0u;
  v157 = 0u;
  v156 = 0u;
  v154 = 9;
  v155 = numBlocks;
  attachParams6 = [v5 attachParams];
  diskImageParamsXPC4 = [attachParams6 diskImageParamsXPC];
  LODWORD(v156) = [diskImageParamsXPC4 blockSize];
  attachParams7 = [v5 attachParams];
  diskImageParamsXPC5 = [attachParams7 diskImageParamsXPC];
  isWritableFormat = [diskImageParamsXPC5 isWritableFormat];
  if (isWritableFormat)
  {
    v31 = 0;
  }

  else
  {
    attachParams8 = [v5 attachParams];
    shadowChain3 = [attachParams8 shadowChain];
    activeShadowURL = [shadowChain3 activeShadowURL];
    v31 = activeShadowURL == 0;
  }

  BYTE4(v156) = v31;
  attachParams9 = [v5 attachParams];
  *(&v156 + 5) = [attachParams9 hasUnlockedBackend];
  BYTE7(v156) = getInterconnectLocation;
  attachParams10 = [v5 attachParams];
  v136 = getuid();
  v33 = getgid();
  hasUnlockedBackend = [attachParams10 hasUnlockedBackend];
  st_gid = v33;
  if ((getInterconnectLocation & 0xFE) == 2)
  {
    v36 = 1;
  }

  else
  {
    v36 = hasUnlockedBackend;
  }

  if (v36)
  {
    v37 = 384;
    goto LABEL_86;
  }

  if (getInterconnectLocation != 1)
  {
    v37 = 416;
    goto LABEL_86;
  }

  shadowChain4 = [attachParams10 shadowChain];
  activeShadowURL2 = [shadowChain4 activeShadowURL];
  if (activeShadowURL2)
  {
    shadowChain5 = [attachParams10 shadowChain];
    nodes = [shadowChain5 nodes];
    lastObject = [nodes lastObject];
    fileBackend = [lastObject fileBackend];
    v43 = fileBackend;
    if (fileBackend)
    {
      objc_msgSend_backend(fileBackend);
    }

    else
    {
      *&buf[0].st_dev = 0;
      buf[0].st_ino = 0;
    }

    sub_10019A824(buf, &v150);
    if (buf[0].st_ino)
    {
      sub_10000367C(buf[0].st_ino);
    }

    v44 = shadowChain4;
  }

  else
  {
    if (attachParams10)
    {
      objc_msgSend_backend(attachParams10);
    }

    else
    {
      *&buf[0].st_dev = 0;
      buf[0].st_ino = 0;
    }

    sub_10019A824(buf, &v150);
    if (buf[0].st_ino)
    {
      sub_10000367C(buf[0].st_ino);
    }

    v44 = shadowChain4;
  }

  v45 = v150;
  v46 = v151;
  *&buf[0].st_dev = v150;
  buf[0].st_ino = v151;
  if (v151)
  {
    atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    if (!v45)
    {
      st_ino = buf[0].st_ino;
      if (!buf[0].st_ino)
      {
        goto LABEL_47;
      }

LABEL_46:
      atomic_fetch_add_explicit((st_ino + 8), 1uLL, memory_order_relaxed);
      goto LABEL_47;
    }

    st_ino = buf[0].st_ino;
    if (v47)
    {
      break;
    }

    if (buf[0].st_ino)
    {
      goto LABEL_46;
    }

LABEL_47:
    if (v46)
    {
      sub_10000367C(v46);
    }

    sub_10019AD28(buf, v161);
    v49 = *v161;
    *v161 = 0;
    *&v161[8] = 0;
    v50 = buf[0].st_ino;
    *&buf[0].st_dev = v49;
    if (v50)
    {
      sub_10000367C(v50);
      v51 = *&buf[0].st_dev;
      if (*&v161[8])
      {
        sub_10000367C(*&v161[8]);
        if (v51 == v45)
        {
          goto LABEL_60;
        }

        v45 = *&buf[0].st_dev;
        v46 = st_ino;
      }

      else
      {
        v46 = st_ino;
        v52 = *&buf[0].st_dev == v45;
        v45 = *&buf[0].st_dev;
        if (v52)
        {
LABEL_60:
          v53 = 0;
          v54 = 0;
          v46 = st_ino;
          goto LABEL_64;
        }
      }
    }

    else
    {
      v46 = st_ino;
      v52 = v49 == v45;
      v45 = v49;
      if (v52)
      {
        goto LABEL_60;
      }
    }
  }

  v53 = v47;
  if (buf[0].st_ino)
  {
    atomic_fetch_add_explicit((buf[0].st_ino + 8), 1uLL, memory_order_relaxed);
    v54 = st_ino;
  }

  else
  {
    v54 = 0;
  }

LABEL_64:
  if (v46)
  {
    sub_10000367C(v46);
  }

  if (buf[0].st_ino)
  {
    sub_10000367C(buf[0].st_ino);
  }

  if (v53)
  {
    v55 = (**v53)(v53);
    if (fstat(v55, buf))
    {
      v56 = *__error();
      v57 = sub_1000E044C();
      if (v57)
      {
        v149 = 0;
        v59 = sub_1000E03D8(v57, v58);
        v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
        v61 = *__error();
        if (v60)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        *v161 = 68158210;
        *&v161[4] = 97;
        *&v161[8] = 2080;
        *&v161[10] = "DIDevicePermissions calculateDevicePermissions(DIAttachParams *__strong, kDIInterconnectLocation)";
        v162 = 1024;
        v163 = v61;
        LODWORD(v130) = 24;
        v63 = _os_log_send_and_compose_impl(v62, &v149, 0, 0, &_mh_execute_header, v59, 0, "%.*s: fstat failed with errno %d", v161, v130, v131);

        if (v63)
        {
          fprintf(__stderrp, "%s\n", v63);
          free(v63);
        }
      }

      else
      {
        v64 = sub_1000E03D8(v57, v58);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *__error();
          *v161 = 68158210;
          *&v161[4] = 97;
          *&v161[8] = 2080;
          *&v161[10] = "DIDevicePermissions calculateDevicePermissions(DIAttachParams *__strong, kDIInterconnectLocation)";
          v162 = 1024;
          v163 = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%.*s: fstat failed with errno %d", v161, 0x18u);
        }
      }

      *__error() = v56;
      v37 = 384;
    }

    else
    {
      st_gid = buf[0].st_gid;
      v37 = buf[0].st_mode & 0x1A0;
    }
  }

  else
  {
    v37 = 416;
  }

  if (v54)
  {
    sub_10000367C(v54);
  }

  if (v151)
  {
    sub_10000367C(v151);
  }

LABEL_86:

  *(&v156 + 1) = v37 | (v136 << 32);
  *&v157 = st_gid;
  bzero(&v157 + 8, 0x818uLL);

  if ((isWritableFormat & 1) == 0)
  {
  }

  attachParams11 = [v5 attachParams];
  instanceID = [attachParams11 instanceID];
  [instanceID getUUIDBytes:&v157 + 8];

  v68 = *__error();
  v69 = sub_1000E044C();
  if (v69)
  {
    *v161 = 0;
    v71 = sub_1000E03D8(v69, v70);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v73 = v155;
    v74 = v156;
    v75 = [[NSUUID alloc] initWithUUIDBytes:&v157 + 8];
    buf[0].st_dev = 68158978;
    *&buf[0].st_mode = 58;
    LOWORD(buf[0].st_ino) = 2080;
    *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
    HIWORD(buf[0].st_uid) = 2048;
    *&buf[0].st_gid = v73;
    *(&buf[0].st_rdev + 2) = 1024;
    *(&buf[0].st_rdev + 6) = v74;
    WORD1(buf[0].st_atimespec.tv_sec) = 2114;
    *(&buf[0].st_atimespec.tv_sec + 4) = v75;
    WORD2(buf[0].st_atimespec.tv_nsec) = 1024;
    *(&buf[0].st_atimespec.tv_nsec + 6) = 9;
    LODWORD(v130) = 50;
    v76 = _os_log_send_and_compose_impl(v72, v161, 0, 0, &_mh_execute_header, v71, 0, "%.*s: Creating device with %llu blocks of %u bytes, instance ID %{public}@, ABI version %d", buf, v130);

    if (v76)
    {
      fprintf(__stderrp, "%s\n", v76);
      free(v76);
    }
  }

  else
  {
    v77 = sub_1000E03D8(v69, v70);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = v155;
      v79 = v156;
      v80 = [[NSUUID alloc] initWithUUIDBytes:&v157 + 8];
      buf[0].st_dev = 68158978;
      *&buf[0].st_mode = 58;
      LOWORD(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
      HIWORD(buf[0].st_uid) = 2048;
      *&buf[0].st_gid = v78;
      *(&buf[0].st_rdev + 2) = 1024;
      *(&buf[0].st_rdev + 6) = v79;
      WORD1(buf[0].st_atimespec.tv_sec) = 2114;
      *(&buf[0].st_atimespec.tv_sec + 4) = v80;
      WORD2(buf[0].st_atimespec.tv_nsec) = 1024;
      *(&buf[0].st_atimespec.tv_nsec + 6) = 9;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%.*s: Creating device with %llu blocks of %u bytes, instance ID %{public}@, ABI version %d", buf, 0x32u);
    }
  }

  *__error() = v68;
  attachParams12 = [v5 attachParams];
  inputURL = [attachParams12 inputURL];
  v83 = [DIAttachParams copyWithURL:inputURL outURLStr:v159 maxLen:1024 error:v143];

  if ((v83 & 1) == 0)
  {
    goto LABEL_112;
  }

  attachParams13 = [v5 attachParams];
  shadowChain6 = [attachParams13 shadowChain];
  activeShadowURL3 = [shadowChain6 activeShadowURL];
  if (activeShadowURL3)
  {
    attachParams14 = [v5 attachParams];
    shadowChain7 = [attachParams14 shadowChain];
    activeShadowURL4 = [shadowChain7 activeShadowURL];
    v90 = [DIAttachParams copyWithURL:activeShadowURL4 outURLStr:&v160 maxLen:1024 error:v143];

    if ((v90 & 1) == 0)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  attachParams15 = [v5 attachParams];
  inputURL2 = [attachParams15 inputURL];
  isFileURL = [inputURL2 isFileURL];

  if (!isFileURL || ([v5 updateFileBackingInfoWithRootDeviceEntryID:&v158 + 8 error:v143] & 1) != 0)
  {
    attachParams16 = [v5 attachParams];
    suppressSsdFlags = [attachParams16 suppressSsdFlags];

    if ((suppressSsdFlags & 1) == 0)
    {
      attachParams17 = [v5 attachParams];
      v97 = [attachParams17 isDeviceSolidStateWithRegistryEntryID:*(&v158 + 1)];

      if (v97)
      {
        HIBYTE(v154) |= 1u;
        v98 = *__error();
        v99 = sub_1000E044C();
        if (v99)
        {
          *v161 = 0;
          v101 = sub_1000E03D8(v99, v100);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = 3;
          }

          else
          {
            v102 = 2;
          }

          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          LODWORD(v130) = 18;
          v103 = _os_log_send_and_compose_impl(v102, v161, 0, 0, &_mh_execute_header, v101, 0, "%.*s: Device will be marked as solid state", buf, v130);

          if (v103)
          {
            fprintf(__stderrp, "%s\n", v103);
            free(v103);
          }
        }

        else
        {
          v105 = sub_1000E03D8(v99, v100);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].st_dev = 68157954;
            *&buf[0].st_mode = 58;
            LOWORD(buf[0].st_ino) = 2080;
            *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%.*s: Device will be marked as solid state", buf, 0x12u);
          }
        }

        *__error() = v98;
      }

      attachParams18 = [v5 attachParams];
      v107 = [attachParams18 isDeviceHighThroughputWithRegistryEntryID:*(&v158 + 1)];

      if (v107)
      {
        HIBYTE(v154) |= 2u;
        v108 = *__error();
        v109 = sub_1000E044C();
        if (v109)
        {
          *v161 = 0;
          v111 = sub_1000E03D8(v109, v110);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 3;
          }

          else
          {
            v112 = 2;
          }

          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          LODWORD(v130) = 18;
          v113 = _os_log_send_and_compose_impl(v112, v161, 0, 0, &_mh_execute_header, v111, 0, "%.*s: Device will be marked as high throughput", buf, v130);

          if (v113)
          {
            fprintf(__stderrp, "%s\n", v113);
            free(v113);
          }
        }

        else
        {
          v114 = sub_1000E03D8(v109, v110);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].st_dev = 68157954;
            *&buf[0].st_mode = 58;
            LOWORD(buf[0].st_ino) = 2080;
            *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%.*s: Device will be marked as high throughput", buf, 0x12u);
          }
        }

        *__error() = v108;
      }
    }

    v115 = IOConnectCallStructMethod([v5 ucConnection], 0, &v154, 0x840uLL, &outputStruct, &outputStructCnt);
    if (v115)
    {
      v115 = [NSString stringWithFormat:@"Create device call failed, error=0x%x", v115];
      LOBYTE(v8) = [DIError failWithEnumValue:153 verboseInfo:v115 error:v143];
    }

    else
    {
      [v5 setIsNewDevice:v148 != 0];
      v117 = outputStruct;
      attachParams19 = [v5 attachParams];
      [attachParams19 setRegEntryID:v117];

      v119 = *__error();
      v120 = sub_1000E044C();
      if (v120)
      {
        *v161 = 0;
        v122 = sub_1000E03D8(v120, v121);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v123 = 3;
        }

        else
        {
          v123 = 2;
        }

        buf[0].st_dev = 68158210;
        *&buf[0].st_mode = 58;
        LOWORD(buf[0].st_ino) = 2080;
        *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
        HIWORD(buf[0].st_uid) = 2048;
        *&buf[0].st_gid = outputStruct;
        LODWORD(v130) = 28;
        v124 = _os_log_send_and_compose_impl(v123, v161, 0, 0, &_mh_execute_header, v122, 0, "%.*s: Device registry entry ID: 0x%llx", buf, v130, v131);

        if (v124)
        {
          fprintf(__stderrp, "%s\n", v124);
          free(v124);
        }
      }

      else
      {
        v125 = sub_1000E03D8(v120, v121);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].st_dev = 68158210;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          HIWORD(buf[0].st_uid) = 2048;
          *&buf[0].st_gid = outputStruct;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "%.*s: Device registry entry ID: 0x%llx", buf, 0x1Cu);
        }
      }

      *__error() = v119;
      isNewDevice = [v5 isNewDevice];
      if (v142)
      {
        v127 = isNewDevice;
      }

      else
      {
        v127 = 0;
      }

      if (v127 == 1 && [v142 length] && (bzero(buf, 0x1060uLL), v153 = objc_msgSend(v142, "length"), objc_msgSend(v142, "getBytes:length:", buf, objc_msgSend(v142, "length")), v128 = IOConnectCallStructMethod(objc_msgSend(v5, "ucConnection"), 1u, buf, 0x1062uLL, 0, 0), v128))
      {
        v128 = [NSString stringWithFormat:@"Failed to quarantine device, error=0x%x", v128];
        LOBYTE(v8) = [DIError failWithEnumValue:153 verboseInfo:v128 error:v143];
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  else
  {
LABEL_112:
    LOBYTE(v8) = 0;
  }

LABEL_113:

  return v8;
}

- (id)runWithError:(id *)error
{
  if (![(DIController2IO_XPCHandlerAttach *)self setupDriverWithError:?])
  {
    v11 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_13;
  }

  if (!-[DIController2IO_XPCHandlerAttach createDeviceWithError:](self, "createDeviceWithError:", error) || -[DIController2IO_XPCHandlerAttach isNewDevice](self, "isNewDevice") && (-[DIController2IO_XPCHandlerAttach attachParams](self, "attachParams"), v5 = objc_claimAutoreleasedReturnValue(), [v5 diskImageParamsXPC], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "lockWritableBackendsWithError:", error), v6, v5, (v7 & 1) == 0) || !-[DIBaseXPCHandler connectWithError:](self, "connectWithError:", error) || (v8 = -[DIController2IO_XPCHandlerAttach launchIODaemonWithError:](self, "launchIODaemonWithError:", error)) == 0)
  {
    [(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:0];
    v11 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  handleRefCount = [attachParams handleRefCount];

  if (!handleRefCount)
  {
    [(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:0];
    goto LABEL_15;
  }

  if ([(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:error])
  {
LABEL_15:
    v11 = v8;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)setConnectionMode
{
  v2.receiver = self;
  v2.super_class = DIController2IO_XPCHandlerAttach;
  [(DIController2IO_XPCHandlerBase *)&v2 setConnectionMode];
}

@end