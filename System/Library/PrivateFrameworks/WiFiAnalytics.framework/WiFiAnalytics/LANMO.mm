@interface LANMO
+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error;
+ (id)constraintsWithDhcpServerInfo:(id)info;
+ (id)predicateForLANsInNetwork:(id)network withError:(id *)error;
+ (id)predicateForLanContainingBSS:(id)s withError:(id *)error;
- (BOOL)isEnterprise;
- (BOOL)isPublic;
@end

@implementation LANMO

+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  v6 = [constraintsCopy objectForKeyedSubscript:@"ipv4NetworkSignature"];
  if (v6)
  {

LABEL_4:
    LOBYTE(error) = 1;
    goto LABEL_5;
  }

  v7 = [constraintsCopy objectForKeyedSubscript:@"ipv6NetworkSignature"];

  if (v7)
  {
    goto LABEL_4;
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [constraintsCopy objectForKeyedSubscript:@"ipv4NetworkSignature"];
    if (v10)
    {
      v11 = @"not nil";
    }

    else
    {
      v11 = @"nil";
    }

    v12 = [constraintsCopy objectForKeyedSubscript:@"ipv6NetworkSignature"];
    v19 = "+[LANMO verifyConstraints:withError:]";
    *buf = 136446978;
    if (v12)
    {
      v13 = @"not nil";
    }

    else
    {
      v13 = @"nil";
    }

    v20 = 1024;
    v21 = 24;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Neither ipv4 signature (%@) nor ipv6 signature (%@) were provided", buf, 0x26u);
  }

  if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v17 = @"WAErrorCodeLacksRequiredArgument";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v15];

    LOBYTE(error) = 0;
  }

LABEL_5:

  return error;
}

- (BOOL)isEnterprise
{
  bsses = [(LANMO *)self bsses];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.network.authFlags != nil && (SELF.network.authFlags & %u) != 0", 8];
  v4 = [WAUtil filterSet:bsses usingPredicate:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)isPublic
{
  bsses = [(LANMO *)self bsses];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.network.isPublic = YES"];
  v4 = [WAUtil filterSet:bsses usingPredicate:v3];
  v5 = [v4 count] != 0;

  return v5;
}

+ (id)constraintsWithDhcpServerInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_new();
  ipv4networkSignature = [infoCopy ipv4networkSignature];
  [v4 setValue:ipv4networkSignature forKey:@"ipv4NetworkSignature"];

  ipv6networkSignature = [infoCopy ipv6networkSignature];

  [v4 setValue:ipv6networkSignature forKey:@"ipv6NetworkSignature"];

  return v4;
}

+ (id)predicateForLANsInNetwork:(id)network withError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $b, $b.network == %@).@count > 0", networkCopy];
    error = LABEL_5:;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $b, $b.network.ssid == %@).@count > 0", networkCopy];
    goto LABEL_5;
  }

  if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A588];
    networkCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid network %@ (%@)", objc_opt_class(), networkCopy];
    v11[0] = networkCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v9];

    error = 0;
  }

LABEL_6:

  return error;
}

+ (id)predicateForLanContainingBSS:(id)s withError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  sCopy = s;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $bss, $bss == %@).@count > 0", sCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x1E696AE18];
      v7 = [BSSMO formattedMACAddressNotation:sCopy as:6];
      error = [v6 predicateWithFormat:@"SUBQUERY(bsses, $bss, $bss.bssid == %@).@count > 0", v7];
    }

    else if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A588];
      sCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid bss %@ (%@)", objc_opt_class(), sCopy];
      v13[0] = sCopy;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *error = [v8 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9038 userInfo:v10];

      error = 0;
    }
  }

  return error;
}

@end