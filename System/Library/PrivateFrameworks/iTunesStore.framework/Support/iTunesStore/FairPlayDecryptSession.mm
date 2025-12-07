@interface FairPlayDecryptSession
- (FairPlayDecryptSession)initWithDPInfo:(id)info;
- (id)decryptBytes:(id)bytes error:(id *)error;
- (id)identifier;
- (void)dealloc;
@end

@implementation FairPlayDecryptSession

- (FairPlayDecryptSession)initWithDPInfo:(id)info
{
  v4 = [(FairPlayDecryptSession *)self init];
  if (v4)
  {
    if ([info length])
    {
      v4->_dpInfo = info;
      v4->_identifier = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.fairplay.decryptfile.%@", -[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")];
    }

    else
    {
      v5 = +[SSLogConfig sharedDaemonConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v7) = shouldLog | 2;
      }

      else
      {
        LODWORD(v7) = shouldLog;
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v7;
      }

      else
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v12 = 138412290;
        v13 = objc_opt_class();
        v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@] No DPInfo provided", &v12, 12);
        if (v9)
        {
          v10 = v9;
          [NSString stringWithCString:v9 encoding:4];
          free(v10);
          SSFileLog();
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    sub_1000B280C(decryptSession);
    self->_decryptSession = 0;
  }

  v4.receiver = self;
  v4.super_class = FairPlayDecryptSession;
  [(FairPlayDecryptSession *)&v4 dealloc];
}

- (id)decryptBytes:(id)bytes error:(id *)error
{
  v26 = 0;
  p_decryptSession = &self->_decryptSession;
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    goto LABEL_17;
  }

  if (!sub_1000B277C(self->_dpInfo, p_decryptSession))
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v27 = 138412290;
      v28 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not begin decrypt", &v27, 12);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v24 = v15;
        SSFileLog();
      }
    }

    if (error)
    {
      *error = ISError();
    }
  }

  self->_dpInfo = 0;
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
LABEL_17:
    if ((sub_1000B282C(decryptSession, bytes, &v26) & 1) == 0)
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog2;
      }

      oSLogObject2 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        v27 = 138412290;
        v28 = v20;
        LODWORD(v25) = 12;
        v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Decrypt failed", &v27, v25);
        if (v21)
        {
          v22 = v21;
          [NSString stringWithCString:v21 encoding:4];
          free(v22);
          SSFileLog();
        }
      }

      if (error)
      {
        *error = ISError();
      }
    }
  }

  return v26;
}

- (id)identifier
{
  v2 = self->_identifier;

  return v2;
}

@end