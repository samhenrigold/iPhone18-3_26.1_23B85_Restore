@interface IMSPIHandle
- (BOOL)isBusiness;
- (BOOL)isEqual:(id)equal;
- (IMSPIHandle)initWithAddress:(id)address countryCode:(id)code isMe:(BOOL)me;
- (NSString)businessName;
- (NSString)cnContactID;
- (NSString)displayName;
- (id)description;
- (id)handle;
- (unint64_t)hash;
@end

@implementation IMSPIHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  address = [(IMSPIHandle *)self address];
  businessName = [(IMSPIHandle *)self businessName];
  v6 = [v3 stringWithFormat:@"IMSPIHandle: %p [Address: %@  Business Name: %@]", self, address, businessName];

  return v6;
}

- (NSString)businessName
{
  address = [(IMSPIHandle *)self address];
  if (MEMORY[0x1AC56C3A0]())
  {
    v3 = [MEMORY[0x1E69A7F28] placeholderNameForBrandURI:address];
    v4 = dispatch_semaphore_create(0);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1A8259CB0;
    v23 = sub_1A825AF84;
    v24 = 0;
    v5 = +[IMHandleRegistrar sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83CFD48;
    v16[3] = &unk_1E7811E08;
    v18 = &v19;
    v6 = v4;
    v17 = v6;
    v7 = [v5 businessNameForUID:address updateHandler:v16];

    v8 = [v7 length];
    v9 = v7;
    if (!v8)
    {
      v10 = dispatch_time(0, 3000000000);
      if (dispatch_semaphore_wait(v6, v10) && IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Business name lookup timed out", v15, 2u);
        }
      }

      if (![v20[5] length])
      {
        goto LABEL_11;
      }

      v9 = v20[5];
    }

    v12 = v9;

    v3 = v12;
LABEL_11:
    v13 = v3;

    _Block_object_dispose(&v19, 8);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (IMSPIHandle)initWithAddress:(id)address countryCode:(id)code isMe:(BOOL)me
{
  addressCopy = address;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = IMSPIHandle;
  v11 = [(IMSPIHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_address, address);
    objc_storeStrong(&v12->_countryCode, code);
    v12->_isMe = me;
  }

  return v12;
}

- (BOOL)isBusiness
{
  address = [(IMSPIHandle *)self address];
  v3 = MEMORY[0x1AC56C3A0]();

  return v3;
}

- (id)handle
{
  if (!self->_haveFetchedIMHandle)
  {
    v3 = +[IMServiceImpl iMessageService];
    v4 = IMPreferredAccountForService(v3);

    if (v4)
    {
      v5 = IMStripFormattingFromAddress();
      v6 = [v4 existingIMHandleWithID:v5];
      imHandle = self->_imHandle;
      self->_imHandle = v6;

      self->_haveFetchedIMHandle = 1;
    }
  }

  v8 = self->_imHandle;

  return v8;
}

- (NSString)displayName
{
  businessName = [(IMSPIHandle *)self businessName];
  if (![businessName length])
  {
    v4 = [(IMHandle *)self->_imHandle displayNameForChat:0];

    businessName = v4;
  }

  return businessName;
}

- (NSString)cnContactID
{
  handle = [(IMSPIHandle *)self handle];
  v3 = handle;
  if (handle)
  {
    v4 = [handle cnContactWithKeys:MEMORY[0x1E695E0F0]];
    identifier = [v4 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = self->_address;
      address = [(IMSPIHandle *)v5 address];
      LODWORD(address) = [(NSString *)address isEqualToString:address];

      if (address)
      {
        isMe = self->_isMe;
        v9 = isMe != ![(IMSPIHandle *)v5 isMe];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMe];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end