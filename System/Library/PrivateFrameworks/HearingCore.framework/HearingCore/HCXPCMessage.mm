@interface HCXPCMessage
+ (id)messageWithPayload:(id)payload;
+ (id)messageWithPayload:(id)payload xpcMessage:(id)message andClient:(id)client;
- (BOOL)hasEntitlement:(id)entitlement;
- (HCXPCClient)client;
- (HCXPCMessage)initWithPayload:(id)payload;
- (id)description;
- (id)replyMessageWithPayload:(id)payload;
- (void)dealloc;
@end

@implementation HCXPCMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = HCXPCMessage;
  v4 = [(HCXPCMessage *)&v11 description];
  error = [(HCXPCMessage *)self error];
  payload = [(HCXPCMessage *)self payload];
  error2 = [(HCXPCMessage *)self error];
  client = [(HCXPCMessage *)self client];
  v9 = [v3 stringWithFormat:@"%@ [%d | %@] {%@} - Client: %@", v4, error == 0, payload, error2, client];

  return v9;
}

- (HCXPCClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)dealloc
{
  [(HCXPCMessage *)self setPayload:0];
  [(HCXPCMessage *)self setError:0];
  [(HCXPCMessage *)self setXpcMessage:0];
  v3.receiver = self;
  v3.super_class = HCXPCMessage;
  [(HCXPCMessage *)&v3 dealloc];
}

+ (id)messageWithPayload:(id)payload xpcMessage:(id)message andClient:(id)client
{
  if (client)
  {
    clientCopy = client;
    messageCopy = message;
    payloadCopy = payload;
    v10 = [[HCXPCMessage alloc] initWithPayload:payloadCopy];

    [(HCXPCMessage *)v10 setXpcMessage:messageCopy];
    [(HCXPCMessage *)v10 setClient:clientCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)messageWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [objc_alloc(objc_opt_class()) initWithPayload:payloadCopy];

  return v4;
}

- (HCXPCMessage)initWithPayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = HCXPCMessage;
    v5 = [(HCXPCMessage *)&v7 init];
    self = v5;
    if (v5)
    {
      [(HCXPCMessage *)v5 setPayload:payloadCopy];
    }
  }

  return self;
}

- (id)replyMessageWithPayload:(id)payload
{
  payloadCopy = payload;
  xpcMessage = [(HCXPCMessage *)self xpcMessage];
  client = [(HCXPCMessage *)self client];
  v7 = [HCXPCMessage messageWithPayload:payloadCopy xpcMessage:xpcMessage andClient:client];

  return v7;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  client = [(HCXPCMessage *)self client];
  xpcConnection = [client xpcConnection];

  if (xpcConnection && (v16 = 0u, v17 = 0u, xpc_connection_get_audit_token(), memset(&cf, 0, sizeof(cf)), (v7 = SecTaskCreateWithAuditToken(0, &cf)) != 0))
  {
    v8 = v7;
    *cf.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, entitlementCopy, &cf);
    v10 = v9;
    if (*cf.val)
    {
      v11 = HCLogHearingAids(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(HCXPCMessage *)&cf hasEntitlement:v11];
      }

      CFRelease(*cf.val);
    }

    if (v10)
    {
      v12 = CFGetTypeID(v10);
      v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
      CFRelease(v10);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)hasEntitlement:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D952C000, a2, OS_LOG_TYPE_ERROR, "Unable to get entitlements for client task. Error: %@", &v3, 0xCu);
}

@end