@interface STExtractionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation STExtractionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  __chkstk_darwin(self, a2, listener, connection);
  v5 = v4;
  processIdentifier = [v5 processIdentifier];
  v7 = proc_pidpath(processIdentifier, buffer, 0x1000u);
  if (v7 < 1)
  {
    v10 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", processIdentifier];
  }

  else
  {
    v8 = [[NSString alloc] initWithBytes:buffer length:v7 encoding:4];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"%@ (pid %d)", lastPathComponent, processIdentifier];
  }

  [v5 processIdentifier];
  memset(buffer, 0, 32);
  if (v5)
  {
    objc_msgSend_auditToken(v5);
  }

  v11 = [v5 valueForEntitlement:@"com.apple.private.STRemoteExtractor.privileged"];
  bOOLValue = [v11 BOOLValue];

  v14 = sub_100000DA8(v13);
  v15 = v14;
  if (bOOLValue)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:

      v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionServiceProtocol];
      [v5 setExportedInterface:v18];

      v19 = [[STExtractionService alloc] initForClient:v10 connection:v5];
      [v5 setExportedObject:v19];
      v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionOriginatorProtocol];
      [v5 setRemoteObjectInterface:v20];

      [v19 setXpcConnection:v5];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100001524;
      v28[3] = &unk_100008370;
      v21 = v10;
      v29 = v21;
      v22 = v19;
      v30 = v22;
      [v5 setInterruptionHandler:v28];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100001608;
      v25[3] = &unk_100008370;
      v26 = v21;
      v27 = v22;
      v23 = v22;
      [v5 setInvalidationHandler:v25];
      [v5 resume];

      goto LABEL_27;
    }

    v16 = qos_class_self();
    if (v16 > 20)
    {
      switch(v16)
      {
        case 0x15:
          v17 = @"DEFAULT";
          goto LABEL_25;
        case 0x21:
          v17 = @"USER_INTERACTIVE";
          goto LABEL_25;
        case 0x19:
          v17 = @"USER_INITIATED";
          goto LABEL_25;
      }
    }

    else
    {
      switch(v16)
      {
        case 0:
          v17 = @"UNSPECIFIED";
          goto LABEL_25;
        case 9:
          v17 = @"BACKGROUND";
          goto LABEL_25;
        case 0x11:
          v17 = @"UTILITY";
LABEL_25:
          *buf = 136446722;
          v32 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
          v33 = 2112;
          v34 = v10;
          v35 = 2112;
          v36 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

          goto LABEL_26;
      }
    }

    v17 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v16];
    goto LABEL_25;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100003A1C(v10, v15);
  }

  [v5 invalidate];
LABEL_27:

  return bOOLValue;
}

@end