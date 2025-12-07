@interface ASDCellularIdentity
+ (ASDCellularIdentity)nullIdentity;
+ (id)identityForSubscription:(id)subscription usingClient:(id)client error:(id *)error;
- (id)copyWithRoaming:(BOOL)roaming;
- (id)description;
- (id)initWithSIMIdentity:(char)identity roaming:(void *)roaming defaultsKey:;
- (id)initWithSIMIdentity:(uint64_t)identity roaming:;
@end

@implementation ASDCellularIdentity

+ (id)identityForSubscription:(id)subscription usingClient:(id)client error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  clientCopy = client;
  v9 = clientCopy;
  v10 = 0;
  if (!subscriptionCopy || !clientCopy || (v19 = 0, v11 = [clientCopy copySIMIdentity:subscriptionCopy error:&v19], v10 = v19, !v11) || (!objc_msgSend(v11, "length") ? (objc_msgSend(self, "nullIdentity"), nullIdentity = objc_claimAutoreleasedReturnValue()) : ((v18 = v10, objc_msgSend(v9, "getDataStatus:error:", subscriptionCopy, &v18), v12 = objc_claimAutoreleasedReturnValue(), v13 = v18, v10, !v12) ? (v14 = 0) : (v14 = objc_msgSend(v12, "inHomeCountry") ^ 1), nullIdentity = -[ASDCellularIdentity initWithSIMIdentity:roaming:]([ASDCellularIdentity alloc], v11, v14), v12, v10 = v13), v11, !nullIdentity))
  {
    v16 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1B8220000, v16, OS_LOG_TYPE_ERROR, "[Cellular] Returning 'null' identity after error occurred: %{public}@", buf, 0xCu);
    }

    nullIdentity = [self nullIdentity];
  }

  return nullIdentity;
}

- (id)initWithSIMIdentity:(uint64_t)identity roaming:
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  identityCopy = identity;
  v5 = a2;
  v6 = [v5 dataUsingEncoding:4];
  objc_opt_self();
  CC_MD5([v6 bytes], objc_msgSend(v6, "length"), md);
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v7 appendFormat:@"%02x", md[i]];
  }

  v9 = [v7 copy];

  v10 = [(ASDCellularIdentity *)self initWithSIMIdentity:v5 roaming:identityCopy defaultsKey:v9];
  v11 = v10;

  return v11;
}

- (id)initWithSIMIdentity:(char)identity roaming:(void *)roaming defaultsKey:
{
  v7 = a2;
  roamingCopy = roaming;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = ASDCellularIdentity;
    self = objc_msgSendSuper2(&v14, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = *(self + 3);
      *(self + 3) = v9;

      *(self + 8) = identity;
      v11 = [roamingCopy copy];
      v12 = *(self + 2);
      *(self + 2) = v11;
    }
  }

  return self;
}

+ (ASDCellularIdentity)nullIdentity
{
  v2 = [(ASDCellularIdentity *)[self alloc] initWithSIMIdentity:0 roaming:?];

  return v2;
}

- (id)copyWithRoaming:(BOOL)roaming
{
  v5 = [ASDCellularIdentity alloc];
  defaultsKey = self->_defaultsKey;
  simIdentity = self->_simIdentity;

  return [(ASDCellularIdentity *)v5 initWithSIMIdentity:roaming roaming:defaultsKey defaultsKey:?];
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ASDCellularIdentity %p; sim = %@; key = %@ }", self, self->_simIdentity, self->_defaultsKey];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ASDCellularIdentity %p; sim = <private>; key = %@ }", self, self->_defaultsKey, v5];
  }
  v3 = ;

  return v3;
}

@end