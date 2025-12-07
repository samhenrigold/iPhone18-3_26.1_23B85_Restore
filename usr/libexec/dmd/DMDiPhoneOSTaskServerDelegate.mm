@interface DMDiPhoneOSTaskServerDelegate
- (id)operationForRequest:(id)request targetUID:(unsigned int)d appleID:(id)iD transport:(id)transport error:(id *)error;
@end

@implementation DMDiPhoneOSTaskServerDelegate

- (id)operationForRequest:(id)request targetUID:(unsigned int)d appleID:(id)iD transport:(id)transport error:(id *)error
{
  v9 = *&d;
  iDCopy = iD;
  transportCopy = transport;
  v29.receiver = self;
  v29.super_class = DMDiPhoneOSTaskServerDelegate;
  v30 = 0;
  v14 = [(DMDTaskServerDelegate *)&v29 operationForRequest:request targetUID:v9 appleID:iDCopy transport:transportCopy error:&v30];
  v15 = v30;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  effectiveUserIdentifier = [transportCopy effectiveUserIdentifier];
  v17 = getuid();
  v18 = +[DMDAccountUtilities primaryAppleID];
  v19 = [iDCopy isEqualToString:v18];

  if (!effectiveUserIdentifier || effectiveUserIdentifier == v9)
  {
    v20 = iDCopy != 0;
    if (!((iDCopy == 0) | v19 & 1))
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v9 && !iDCopy)
    {
      v20 = 0;
      goto LABEL_20;
    }

    if (!iDCopy)
    {
      v20 = 0;
      goto LABEL_19;
    }

    if (effectiveUserIdentifier == v17)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v20 = 1;
    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v9 && !v20 && v17 != v9)
  {
    v20 = 0;
LABEL_19:
    v22 = DMFErrorWithCodeAndUserInfo();

    v15 = v22;
  }

LABEL_20:
  if (v9)
  {
    v23 = 1;
  }

  else
  {
    v23 = v20;
  }

  context = [v14 context];
  [context setRunAsUser:v23];

LABEL_24:
  if (error)
  {
    v25 = v15;
    *error = v15;
  }

  if (v15)
  {
    v26 = 0;
  }

  else
  {
    v26 = v14;
  }

  v27 = v26;

  return v26;
}

@end