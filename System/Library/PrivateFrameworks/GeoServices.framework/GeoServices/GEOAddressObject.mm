@interface GEOAddressObject
+ (id)libraryVersion;
- (id)aboveDoorShortAddress;
- (id)address;
- (id)phoneticLocaleIdentifier;
- (id)shortAddress;
- (id)spokenAddress;
- (void)dealloc;
@end

@implementation GEOAddressObject

+ (id)libraryVersion
{
  v2 = MEMORY[0x1E696AEC0];
  addr_obj::getVersion(__p);
  v3 = [NSString stringWithStdString:v2 copy:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

- (id)address
{
  v17 = *MEMORY[0x1E69E9840];
  ptr = self->_pimpl->_addrObjPtr.__ptr_;
  if (ptr)
  {
    (*(*ptr + 24))(buf);
    addr_obj::Localization::getDisplayLanguage(buf);
    v5 = *(v4 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 8);
    }

    if (v5)
    {
      addr_obj::Localization::getDisplayLanguage(buf);
      v7 = _protobufCPPDataToObjC<GEOAddress>(v6);
    }

    else
    {
      v10 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = NSStringFromSelector(a2);
        *v13 = 138477827;
        v14 = v11;
        _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "%{private}@ could not get a GEOAddress", v13, 0xCu);
      }

      v7 = 0;
    }

    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The AO has not been created prior to calling %s", "-[GEOAddressObject address]"];
    v9 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_18660C000, v9, OS_LOG_TYPE_ERROR, "%{public}@@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)spokenAddress
{
  v10 = *MEMORY[0x1E69E9840];
  ptr = self->_pimpl->_addrObjPtr.__ptr_;
  v3 = MEMORY[0x1E696AEC0];
  if (ptr)
  {
    (*(*ptr + 40))(__p);
    v4 = [NSString stringWithStdString:v3 copy:__p];
    if (v9 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The AO has not been created prior to calling %s", "-[GEOAddressObject spokenAddress]"];
    v6 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *__p = 138543362;
      *&__p[4] = v5;
      _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "%{public}@@", __p, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)phoneticLocaleIdentifier
{
  v12 = *MEMORY[0x1E69E9840];
  ptr = self->_pimpl->_addrObjPtr.__ptr_;
  v3 = MEMORY[0x1E696AEC0];
  if (ptr)
  {
    v4 = (*(*ptr + 152))(ptr, a2);
    PhoneticLocale = addr_obj::Localization::getPhoneticLocale(v4);
    v6 = [NSString stringWithStdString:v3 copy:PhoneticLocale];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The AO has not been created prior to calling %s", "-[GEOAddressObject phoneticLocaleIdentifier]"];
    v8 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_18660C000, v8, OS_LOG_TYPE_ERROR, "%{public}@@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  knownAccuracy = self->_knownAccuracy;
  if (knownAccuracy)
  {
    MEMORY[0x18CFD1E40](knownAccuracy, 0x1000C4052888210);
    self->_knownAccuracy = 0;
  }

  v4.receiver = self;
  v4.super_class = GEOAddressObject;
  [(GEOAddressObject *)&v4 dealloc];
}

- (id)shortAddress
{
  v10 = *MEMORY[0x1E69E9840];
  ptr = self->_pimpl->_addrObjPtr.__ptr_;
  v3 = MEMORY[0x1E696AEC0];
  if (ptr)
  {
    (*(*ptr + 88))(__p);
    v4 = [NSString stringWithStdString:v3 copy:__p];
    if (v9 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The AO has not been created prior to calling %s", "-[GEOAddressObject shortAddress]"];
    v6 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *__p = 138543362;
      *&__p[4] = v5;
      _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "%{public}@@", __p, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)aboveDoorShortAddress
{
  v10 = *MEMORY[0x1E69E9840];
  ptr = self->_pimpl->_addrObjPtr.__ptr_;
  v3 = MEMORY[0x1E696AEC0];
  if (ptr)
  {
    (*(*ptr + 104))(__p);
    v4 = [NSString stringWithStdString:v3 copy:__p];
    if (v9 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The AO has not been created prior to calling %s", "-[GEOAddressObject aboveDoorShortAddress]"];
    v6 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *__p = 138543362;
      *&__p[4] = v5;
      _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "%{public}@@", __p, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end