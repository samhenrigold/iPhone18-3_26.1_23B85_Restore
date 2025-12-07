@interface DIUserDataParams
- (BOOL)embedWithError:(id *)error;
- (BOOL)openExistingImageWithError:(id *)error;
- (BOOL)retrieveWithError:(id *)error;
- (DIUserDataParams)initWithCoder:(id)coder;
- (DIUserDataParams)initWithURL:(id)l error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIUserDataParams

- (DIUserDataParams)initWithURL:(id)l error:(id *)error
{
  v8.receiver = self;
  v8.super_class = DIUserDataParams;
  v4 = [(DIBaseParams *)&v8 initWithURL:l error:error];
  v5 = v4;
  if (v4)
  {
    userDict = v4->_userDict;
    v4->_userDict = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (DIUserDataParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DIUserDataParams;
  v5 = [(DIBaseParams *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userData"];
    if (v6)
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
      v16 = 0;
      v12 = [v7 unarchivedObjectOfClasses:v11 fromData:v6 error:&v16];
      v13 = v16;
      userDict = v5->_userDict;
      v5->_userDict = v12;

      if (v13)
      {
        [(DIBaseParams *)v5 setDeserializationError:v13];
      }
    }

    else
    {
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Failed serializing user dictionary"];
      [(DIBaseParams *)v5 setDeserializationError:v13];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DIUserDataParams;
  [(DIBaseParams *)&v18 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCAAB0];
  userDict = [(DIUserDataParams *)self userDict];
  v17 = 0;
  v7 = [v5 archivedDataWithRootObject:userDict requiringSecureCoding:0 error:&v17];
  v8 = v17;

  if (v8)
  {
    v9 = *__error();
    v10 = DIForwardLogs();
    if (v10)
    {
      v16 = 0;
      v12 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      *buf = 68158210;
      v20 = 36;
      v21 = 2080;
      v22 = "[DIUserDataParams encodeWithCoder:]";
      v23 = 2114;
      v24 = v8;
      v14 = _os_log_send_and_compose_impl(v13, &v16, 0, 0, &dword_248DE0000, v12, 16, "%.*s: Error encoding user dictionary: %{public}@", buf, 28);

      if (v14)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v20 = 36;
        v21 = 2080;
        v22 = "[DIUserDataParams encodeWithCoder:]";
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_ERROR, "%.*s: Error encoding user dictionary: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v9;
  }

  [coderCopy encodeObject:v7 forKey:@"userData"];
}

- (BOOL)retrieveWithError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  if (![(DIBaseParams *)self openExistingImageWithFlags:0 error:error])
  {
    return 0;
  }

  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v34 = 0;
    v8 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68158210;
    v36 = 38;
    v37 = 2080;
    v38 = "[DIUserDataParams retrieveWithError:]";
    v39 = 2114;
    selfCopy2 = self;
    v10 = _os_log_send_and_compose_impl(v9, &v34, 0, 0, &dword_248DE0000, v8, 0, "%.*s: entry: %{public}@", buf, 28);

    if (v10)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v12 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v36 = 38;
      v37 = 2080;
      v38 = "[DIUserDataParams retrieveWithError:]";
      v39 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  v13 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v13 connectWithError:error]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v13 fileMode:2 error:error])
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    [shadowChain shouldValidate];
    if (diskImageParamsXPC)
    {
      objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
    }

    else
    {
      v34 = 0;
    }

    (*(*v34 + 112))(&cf);
    v16 = cf;
    CFRetain(cf);
    [(DIUserDataParams *)self setUserDict:v16];

    v17 = *__error();
    v18 = DIForwardLogs();
    if (v18)
    {
      v32 = 0;
      v20 = getDIOSLog(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      userDict = [(DIUserDataParams *)self userDict];
      v23 = [userDict count];
      *buf = 68158210;
      v36 = 38;
      v37 = 2080;
      v38 = "[DIUserDataParams retrieveWithError:]";
      v39 = 1024;
      LODWORD(selfCopy2) = v23;
      LODWORD(v30) = 24;
      v24 = _os_log_send_and_compose_impl(v21, &v32, 0, 0, &dword_248DE0000, v20, 0, "%.*s: User data retrieving passed, %d value(s) found", buf, v30, v31);

      if (v24)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v24);
        free(v24);
      }
    }

    else
    {
      v25 = getDIOSLog(v18, v19);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        userDict2 = [(DIUserDataParams *)self userDict];
        v27 = [userDict2 count];
        *buf = 68158210;
        v36 = 38;
        v37 = 2080;
        v38 = "[DIUserDataParams retrieveWithError:]";
        v39 = 1024;
        LODWORD(selfCopy2) = v27;
        _os_log_impl(&dword_248DE0000, v25, OS_LOG_TYPE_DEFAULT, "%.*s: User data retrieving passed, %d value(s) found", buf, 0x18u);
      }
    }

    *__error() = v17;
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&cf);
    v28 = v34;
    v34 = 0;
    if (v28)
    {
      (*(*v28 + 16))(v28);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)embedWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  userDict = [(DIUserDataParams *)self userDict];
  if (!userDict || (-[DIUserDataParams userDict](self, "userDict"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, userDict, !v7))
  {
    v16 = @"userDict cannot be nil or empty";
    return [DIError failWithPOSIXCode:22 verboseInfo:v16 error:error];
  }

  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  if (diskImageParamsXPC)
  {
    objc_msgSend_backend(self);
    v9 = (*(**buf + 48))(*buf);
    if (*v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v39);
    }

    if ((v9 & 1) == 0)
    {
      v16 = @"The image was unlocked before setting userData";
      return [DIError failWithPOSIXCode:22 verboseInfo:v16 error:error];
    }
  }

  if (![(DIBaseParams *)self openExistingImageWithFlags:2 error:error])
  {
    return 0;
  }

  v10 = *__error();
  v11 = DIForwardLogs();
  if (v11)
  {
    v37 = 0;
    v13 = getDIOSLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *buf = 68158210;
    *&buf[4] = 35;
    *v39 = 2080;
    *&v39[2] = "[DIUserDataParams embedWithError:]";
    v40 = 2114;
    selfCopy2 = self;
    v15 = _os_log_send_and_compose_impl(v14, &v37, 0, 0, &dword_248DE0000, v13, 0, "%.*s: entry: %{public}@", buf, 28);

    if (v15)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v15);
      free(v15);
    }
  }

  else
  {
    v19 = getDIOSLog(v11, v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      *&buf[4] = 35;
      *v39 = 2080;
      *&v39[2] = "[DIUserDataParams embedWithError:]";
      v40 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v10;
  v20 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if (-[DIClient2Controller_XPCHandler connectWithError:](v20, "connectWithError:", error) && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v20, 4, error) && (-[DIBaseParams diskImageParamsXPC](self, "diskImageParamsXPC"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 lockBackendsWithError:error], v21, (v22 & 1) != 0))
  {
    diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    [shadowChain shouldValidate];
    if (diskImageParamsXPC2)
    {
      objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC2);
    }

    else
    {
      v37 = 0;
    }

    v25 = v37;
    userDict2 = [(DIUserDataParams *)self userDict];
    (*(*v25 + 120))(v25, userDict2);

    v27 = *__error();
    v28 = DIForwardLogs();
    if (v28)
    {
      v36 = 0;
      v30 = getDIOSLog(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      *buf = 68157954;
      *&buf[4] = 35;
      *v39 = 2080;
      *&v39[2] = "[DIUserDataParams embedWithError:]";
      LODWORD(v35) = 18;
      v32 = _os_log_send_and_compose_impl(v31, &v36, 0, 0, &dword_248DE0000, v30, 0, "%.*s: User data embedding passed", buf, v35);

      if (v32)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v32);
        free(v32);
      }
    }

    else
    {
      v33 = getDIOSLog(v28, v29);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 35;
        *v39 = 2080;
        *&v39[2] = "[DIUserDataParams embedWithError:]";
        _os_log_impl(&dword_248DE0000, v33, OS_LOG_TYPE_DEFAULT, "%.*s: User data embedding passed", buf, 0x12u);
      }
    }

    *__error() = v27;
    v34 = v37;
    v37 = 0;
    if (v34)
    {
      (*(*v34 + 16))(v34);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)openExistingImageWithError:(id *)error
{
  userDict = [(DIUserDataParams *)self userDict];
  LOBYTE(error) = -[DIBaseParams openExistingImageWithFlags:error:](self, "openExistingImageWithFlags:error:", 2 * ([userDict count] != 0), error);

  return error;
}

@end