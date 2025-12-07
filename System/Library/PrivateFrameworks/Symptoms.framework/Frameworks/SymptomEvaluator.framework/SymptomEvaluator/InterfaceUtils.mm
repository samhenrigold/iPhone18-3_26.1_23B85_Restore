@interface InterfaceUtils
+ (BOOL)interfaceIsDirectLink:(id)link;
+ (id)interfaceNameFromKey:(id)key;
+ (id)stringForInterfaceType:(int64_t)type;
+ (int64_t)interfaceTypeForString:(id)string;
@end

@implementation InterfaceUtils

+ (id)stringForInterfaceType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"Other";
  }

  else
  {
    return off_27898B160[type - 1];
  }
}

+ (int64_t)interfaceTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"WiFi"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Cellular"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"WiredEthernet"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Loopback"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)interfaceNameFromKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"/"];
  if ([v3 count] == 5)
  {
    v4 = [v3 objectAtIndex:3];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)interfaceIsDirectLink:(id)link
{
  v28 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  if (linkCopy)
  {
    v4 = _SCNetworkInterfaceCreateWithBSDName();
    if (v4)
    {
      if (_SCNetworkInterfaceIsThunderbolt())
      {
        v5 = otherLogHandle;
        v6 = 1;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = linkCopy;
          _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Found Thunderbolt DirectLink interface %@", buf, 0xCu);
        }

        goto LABEL_14;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(v4);
      if (InterfaceType)
      {
        v17 = InterfaceType;
        if (CFStringCompare(InterfaceType, *MEMORY[0x277CE1860], 0))
        {
          v18 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          *buf = 138412546;
          v25 = linkCopy;
          v26 = 2112;
          v27 = v17;
          v9 = "Interface %@ has non-Ethernet type %@";
          v10 = v18;
          goto LABEL_25;
        }

        FamilySubType = _SCNetworkInterfaceGetFamilySubType();
        if (FamilySubType)
        {
          valuePtr = 0;
          CFNumberGetValue(FamilySubType, kCFNumberSInt64Type, &valuePtr);
          if (valuePtr != 1)
          {
            v22 = otherLogHandle;
            if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_13;
            }

            *buf = 138412546;
            v25 = linkCopy;
            v26 = 2048;
            v27 = valuePtr;
            v9 = "Interface %@ has non-USB InterfaceSubFamily %llu";
            v10 = v22;
LABEL_25:
            v11 = OS_LOG_TYPE_INFO;
            v12 = 22;
            goto LABEL_12;
          }

          IOPath = _SCNetworkInterfaceGetIOPath();
          v8 = otherLogHandle;
          if (IOPath)
          {
            v21 = IOPath;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412547;
              v25 = linkCopy;
              v26 = 2117;
              v27 = v21;
              _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Interface %@ has IOPath %{sensitive}@", buf, 0x16u);
            }

            v6 = CFStringFind(v21, @"/AppleUSBNCMData@", 0).location != -1;
            goto LABEL_14;
          }

          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v25 = linkCopy;
          v9 = "IOPath for interface %@ is NULL";
        }

        else
        {
          v8 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v25 = linkCopy;
          v9 = "InterfaceSubType for %@ is NULL";
        }
      }

      else
      {
        v8 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        *buf = 138412290;
        v25 = linkCopy;
        v9 = "InterfaceType for %@ is NULL";
      }
    }

    else
    {
      v8 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        v6 = 0;
LABEL_14:
        v13 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v14 = " not";
          if (v6)
          {
            v14 = "";
          }

          *buf = 138412546;
          v25 = linkCopy;
          v26 = 2080;
          v27 = v14;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Interface %@ is%s a DirectLink interface", buf, 0x16u);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        goto LABEL_20;
      }

      *buf = 138412290;
      v25 = linkCopy;
      v9 = "Error obtaining SCNetworkInterface for %@";
    }

    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
LABEL_12:
    _os_log_impl(&dword_23255B000, v10, v11, v9, buf, v12);
    goto LABEL_13;
  }

  v7 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Ignoring interface with nil ifName", buf, 2u);
  }

  LOBYTE(v6) = 0;
LABEL_20:

  return v6;
}

@end