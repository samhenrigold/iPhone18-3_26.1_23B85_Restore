@interface SUUIDownloadOptions
- (BOOL)allowUnrestrictedCellularDownload;
- (BOOL)downloadOnly;
- (BOOL)isEqual:(id)equal;
- (BOOL)userUpdateTonight;
- (SUUIDescriptor)descriptor;
- (SUUIDownloadOptions)init;
- (SUUIDownloadOptions)initWithDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)downloadFeeAgreementStatus;
- (int64_t)termsAndConditionsAgreementStatus;
- (unint64_t)hash;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)download;
- (void)setDownloadFeeAgreementStatus:(int64_t)status;
- (void)setDownloadOnly:(BOOL)only;
- (void)setTermsAndConditionsAgreementStatus:(int64_t)status;
- (void)setUserUpdateTonight:(BOOL)tonight;
@end

@implementation SUUIDownloadOptions

- (BOOL)downloadOnly
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadOnly = selfCopy->_downloadOnly;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadOnly;
}

- (void)setDownloadOnly:(BOOL)only
{
  selfCopy = self;
  v5 = a2;
  onlyCopy = only;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_downloadOnly = onlyCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)userUpdateTonight
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  userUpdateTonight = selfCopy->_userUpdateTonight;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return userUpdateTonight;
}

- (void)setUserUpdateTonight:(BOOL)tonight
{
  selfCopy = self;
  v5 = a2;
  tonightCopy = tonight;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_userUpdateTonight = tonightCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (SUUIDescriptor)descriptor
{
  selfCopy = self;
  v4[2] = a2;
  v4[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](selfCopy->_descriptor);
  v9 = v4;
  os_unfair_lock_unlock(p_lock);
  v2 = v6;

  return v2;
}

- (int64_t)downloadFeeAgreementStatus
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadFeeAgreementStatus = selfCopy->_downloadFeeAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadFeeAgreementStatus;
}

- (void)setDownloadFeeAgreementStatus:(int64_t)status
{
  selfCopy = self;
  v5 = a2;
  statusCopy = status;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_downloadFeeAgreementStatus = statusCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (int64_t)termsAndConditionsAgreementStatus
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  termsAndConditionsAgreementStatus = selfCopy->_termsAndConditionsAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return termsAndConditionsAgreementStatus;
}

- (void)setTermsAndConditionsAgreementStatus:(int64_t)status
{
  selfCopy = self;
  v5 = a2;
  statusCopy = status;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_termsAndConditionsAgreementStatus = statusCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)allowUnrestrictedCellularDownload
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  allowUnrestrictedCellularDownload = selfCopy->_allowUnrestrictedCellularDownload;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return allowUnrestrictedCellularDownload;
}

- (void)setAllowUnrestrictedCellularDownload:(BOOL)download
{
  selfCopy = self;
  v5 = a2;
  downloadCopy = download;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_allowUnrestrictedCellularDownload = downloadCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (SUUIDownloadOptions)init
{
  exception = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Use the designated initializer" userInfo:0];
  v2 = exception;
  objc_exception_throw(exception);
}

- (SUUIDownloadOptions)initWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = SUUIDownloadOptions;
  selfCopy = [(SUUIDownloadOptions *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_descriptor, location[0]);
    selfCopy->_downloadOnly = 0;
    selfCopy->_userUpdateTonight = 0;
    selfCopy->_downloadFeeAgreementStatus = 2;
    selfCopy->_termsAndConditionsAgreementStatus = 2;
    selfCopy->_allowUnrestrictedCellularDownload = 0;
    selfCopy->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13 = a2;
  zoneCopy = zone;
  v11 = [objc_opt_class() allocWithZone:zone];
  if (v11)
  {
    v7 = MEMORY[0x277D82BE0](v11);
    descriptor = [(SUUIDownloadOptions *)selfCopy descriptor];
    v8 = [(SUUIDescriptor *)descriptor copyWithZone:zoneCopy];
    v3 = [v7 initWithDescriptor:?];
    v4 = v11;
    v11 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](descriptor);
    v10[0] = 2;
    p_lock = &selfCopy->_lock;
    v15 = 0;
    os_unfair_lock_lock_with_options();
    v10[1] = &selfCopy->_lock;
    v11[12] = selfCopy->_downloadOnly;
    v11[13] = selfCopy->_userUpdateTonight;
    *(v11 + 3) = selfCopy->_downloadFeeAgreementStatus;
    *(v11 + 4) = selfCopy->_termsAndConditionsAgreementStatus;
    v11[14] = selfCopy->_allowUnrestrictedCellularDownload;
    v17 = v10;
    switch(v10[0])
    {
      case 1:
        [v17[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v17[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v21 = 1;
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = MEMORY[0x277D82BE0](location[0]);
      v16[0] = 2;
      p_lock = &selfCopy->_lock;
      v24 = 0;
      os_unfair_lock_lock_with_options();
      v16[1] = p_lock;
      v14 = 2;
      v23 = (v17 + 8);
      v22 = 0;
      os_unfair_lock_lock_with_options();
      v15 = v23;
      v12 = 0;
      v10 = 0;
      downloadOnly = [(SUUIDownloadOptions *)selfCopy downloadOnly];
      v8 = 0;
      if (downloadOnly == [v17 downloadOnly])
      {
        userUpdateTonight = [(SUUIDownloadOptions *)selfCopy userUpdateTonight];
        v8 = 0;
        if (userUpdateTonight == [v17 userUpdateTonight])
        {
          downloadFeeAgreementStatus = [(SUUIDownloadOptions *)selfCopy downloadFeeAgreementStatus];
          v8 = 0;
          if (downloadFeeAgreementStatus == [v17 downloadFeeAgreementStatus])
          {
            termsAndConditionsAgreementStatus = [(SUUIDownloadOptions *)selfCopy termsAndConditionsAgreementStatus];
            v8 = 0;
            if (termsAndConditionsAgreementStatus == [v17 termsAndConditionsAgreementStatus])
            {
              allowUnrestrictedCellularDownload = [(SUUIDownloadOptions *)selfCopy allowUnrestrictedCellularDownload];
              v8 = 0;
              if (allowUnrestrictedCellularDownload == [v17 allowUnrestrictedCellularDownload])
              {
                descriptor = [(SUUIDownloadOptions *)selfCopy descriptor];
                v12 = 1;
                descriptor2 = [v17 descriptor];
                v10 = 1;
                v8 = [(SUUIDescriptor *)descriptor isEqual:?];
              }
            }
          }
        }
      }

      v21 = v8 & 1;
      if (v10)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v12)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      v18 = 1;
      v27 = &v14;
      os_unfair_lock_unlock(v15);
      if (v18 == 5)
      {
        v18 = 2;
      }

      v26 = v16;
      switch(v16[0])
      {
        case 1:
          [v26[1] unlock];
          break;
        case 2:
          os_unfair_lock_unlock(v26[1]);
          break;
        case 3:
          os_unfair_recursive_lock_unlock();
          break;
      }

      if (v18 == 2)
      {
        v18 = 0;
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      v21 = 0;
      v18 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (unint64_t)hash
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  v5 = [(SUUIDescriptor *)selfCopy->_descriptor hash]^ ((2 * selfCopy->_userUpdateTonight) | selfCopy->_downloadOnly | (4 * selfCopy->_allowUnrestrictedCellularDownload)) ^ (selfCopy->_downloadFeeAgreementStatus << 8) ^ (selfCopy->_termsAndConditionsAgreementStatus << 16);
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5;
}

@end