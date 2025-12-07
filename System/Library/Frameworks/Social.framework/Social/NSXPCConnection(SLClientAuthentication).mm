@interface NSXPCConnection(SLClientAuthentication)
- (const)sl_clientHasEntitlement:()SLClientAuthentication;
- (id)_clientBundleID;
- (id)sl_localizedClientName;
@end

@implementation NSXPCConnection(SLClientAuthentication)

- (const)sl_clientHasEntitlement:()SLClientAuthentication
{
  v5 = a3;
  v6 = [self valueForEntitlement:v5];
  v12 = v6;
  if (v6)
  {
    v13 = CFGetTypeID(v6);
    if (v13 == CFBooleanGetTypeID())
    {
      v12 = (CFBooleanGetValue(v12) != 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    _SLLog(v3, 3, @"Unable to get entitlement '%@'", v7, v8, v9, v10, v11, v5);
  }

  sl_localizedClientName = [self sl_localizedClientName];
  if (!sl_localizedClientName)
  {
    v20 = MEMORY[0x1E696AEC0];
    v25 = 648;
    dword_1EBF3D394 = [self processIdentifier];
    byte_1EBF3DB1B = 0;
    v21 = sysctl(getprocname_name, 4u, &getprocname_kp, &v25, 0, 0);
    if (byte_1EBF3DB1B)
    {
      v22 = &byte_1EBF3DB1B;
    }

    else
    {
      v22 = "exited?";
    }

    if (v21)
    {
      v23 = "?";
    }

    else
    {
      v23 = v22;
    }

    sl_localizedClientName = [v20 stringWithCString:v23 encoding:4];
  }

  _SLLog(v3, 6, @"Entitlement %@ verified for %@: %@", v14, v15, v16, v17, v18, v5);

  return v12;
}

- (id)sl_localizedClientName
{
  [self processIdentifier];
  v1 = SBSCopyDisplayIdentifiersForProcessID();
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1))
    {
      CFArrayGetValueAtIndex(v2, 0);
      v3 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_clientBundleID
{
  [self processIdentifier];
  v1 = SBSCopyBundleInfoValueForKeyAndProcessID();

  return v1;
}

@end