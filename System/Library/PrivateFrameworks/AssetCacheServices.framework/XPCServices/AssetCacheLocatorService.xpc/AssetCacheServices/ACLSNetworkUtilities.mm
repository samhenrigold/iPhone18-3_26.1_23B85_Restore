@interface ACLSNetworkUtilities
+ (BOOL)areDigestedIdentifiers:(id)identifiers equalToCleartextIdentifiers:(id)cleartextIdentifiers tag:(unsigned int)tag;
+ (BOOL)hasUsefulUSBEthernetInterface;
+ (BOOL)isAutomaticConfigMethod4:(id)method4;
+ (BOOL)isDigestedIdentifier:(id)identifier equalToCleartextIdentifier:(id)cleartextIdentifier tag:(unsigned int)tag;
+ (BOOL)isShareableInaddr4:(const in_addr *)inaddr4;
+ (BOOL)isShareableInaddr6:(const in6_addr *)inaddr6;
+ (BOOL)isUsefulInaddr6:(const in6_addr *)inaddr6;
+ (BOOL)isWiredNetworkInterfaceType:(id)type;
+ (BOOL)makeLocalAddresses:(id *)addresses andGatewayIdentifiers:(id *)identifiers tag:(unsigned int)tag;
+ (double)speedFromEthernetMediaSubType:(id)type;
+ (id)allActiveNetworkInterfaces;
+ (id)createNetworkInterface:(__SCNetworkInterface *)interface service:(__SCNetworkService *)service configInfo:(id)info;
+ (id)digestIdentifier:(id)identifier tag:(unsigned int)tag;
+ (id)digestIdentifiers:(id)identifiers tag:(unsigned int)tag;
+ (id)netmask4ContainingStartAddress:(id)address endAddress:(id)endAddress;
+ (id)serviceIDFromKey:(id)key;
+ (id)stringFromInaddr4:(const in_addr *)inaddr4;
+ (id)stringFromInaddr6:(const in6_addr *)inaddr6;
+ (id)stringFromSockaddrDL:(const sockaddr_dl *)l;
+ (id)stringFromSockaddrStorage:(const sockaddr_storage *)storage;
@end

@implementation ACLSNetworkUtilities

+ (BOOL)hasUsefulUSBEthernetInterface
{
  [self allActiveNetworkInterfaces];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isNCM] && (objc_msgSend(v6, "useful") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

+ (id)netmask4ContainingStartAddress:(id)address endAddress:(id)endAddress
{
  endAddressCopy = endAddress;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (inet_pton(2, [address UTF8String], v17 + 4) < 1 || inet_pton(2, objc_msgSend(endAddressCopy, "UTF8String"), v16 + 4) < 1)
  {
    goto LABEL_8;
  }

  v6 = 0;
  v7 = bswap32(HIDWORD(v16[0]) ^ HIDWORD(v17[0]));
  v8 = 0x80000000;
  do
  {
    v9 = v6;
    if (!v8)
    {
      break;
    }

    v6 |= v8;
    v10 = (v8 & v7) == 0;
    v8 >>= 1;
  }

  while (v10);
  *v14 = 0;
  v15 = 0;
  v13 = bswap32(v9);
  if (inet_ntop(2, &v13, v14, 0x10u))
  {
    v11 = [NSString stringWithUTF8String:v14];
  }

  else
  {
LABEL_8:
    v11 = &stru_100035770;
  }

  return v11;
}

+ (id)allActiveNetworkInterfaces
{
  v3 = objc_opt_new();
  v4 = SCPreferencesCreate(0, @"AssetCacheTetherator", 0);
  if (v4)
  {
    v65 = v4;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v5 = SCNetworkServiceCopyAll(v4);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
    if (!v6)
    {
      goto LABEL_104;
    }

    v7 = v6;
    v8 = 0;
    v85 = *v96;
    v75 = v5;
    v72 = v3;
    while (1)
    {
      v9 = 0;
      v81 = v7;
      do
      {
        if (*v96 != v85)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v95 + 1) + 8 * v9);
        v11 = SCNetworkServiceGetServiceID(v10);
        if (v11)
        {
          v86 = v11;
          if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
          {
            v12 = [NSMutableString stringWithFormat:@"service[%d] %@", v8, v11];
          }

          else
          {
            v12 = 0;
          }

          if (!SCNetworkServiceGetEnabled(v10))
          {
            [v12 appendFormat:@", network service disabled %@", v10];
            v21 = 0;
            BSDName = 0;
            goto LABEL_28;
          }

          Interface = SCNetworkServiceGetInterface(v10);
          [v12 appendFormat:@", if %@", Interface];
          v14 = SCNetworkInterfaceGetInterface(Interface);
          if (v14)
          {
            while (1)
            {
              v15 = v14;
              if (CFEqual(v14, kSCNetworkInterfaceIPv4))
              {
                break;
              }

              Interface = v15;
              [v12 appendFormat:@", if %@", v15];
              v14 = SCNetworkInterfaceGetInterface(v15);
              if (!v14)
              {
                goto LABEL_17;
              }
            }
          }

          if (Interface)
          {
LABEL_17:
            BSDName = SCNetworkInterfaceGetBSDName(Interface);
            [v12 appendFormat:@", bn %@", BSDName];
            if (!BSDName)
            {
              goto LABEL_26;
            }

            NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, BSDName, kSCEntNetLink);
            [v12 appendFormat:@", lk %@", NetworkInterfaceEntity];
            if (NetworkInterfaceEntity)
            {
              BSDName = SCDynamicStoreCreate(0, @"AssetCacheTetherator", 0, 0);
              [v12 appendFormat:@", ds %d", BSDName != 0];
              if (BSDName)
              {
                v18 = SCDynamicStoreCopyValue(BSDName, NetworkInterfaceEntity);
                if (v18)
                {
                  store = BSDName;
                  v74 = NetworkInterfaceEntity;
                  v19 = v18;
                  [v12 appendFormat:@", li %d", CFDictionaryGetCount(v18)];
                  v73 = v19;
                  Value = CFDictionaryGetValue(v19, kSCPropNetLinkActive);
                  [v12 appendFormat:@", la %@ %d", Value, Value == kCFBooleanTrue];
                  if (Value != kCFBooleanTrue)
                  {
                    goto LABEL_22;
                  }

                  v26 = SCNetworkServiceCopyProtocol(v10, kSCNetworkProtocolTypeIPv4);
                  v82 = v10;
                  if (!v26)
                  {
                    [v12 appendFormat:@", 4p %d", 0xFFFFFFFFLL];
                    goto LABEL_70;
                  }

                  v27 = v26;
                  [v12 appendFormat:@", 4p %d", SCNetworkProtocolGetEnabled(v26)];
                  v28 = SCNetworkProtocolGetConfiguration(v27);
                  if (!v28)
                  {
                    v29 = 0;
                    [v12 appendFormat:@", 4c %d", 0xFFFFFFFFLL];
                    goto LABEL_68;
                  }

                  v29 = v28;
                  [v12 appendFormat:@", 4c %d", objc_msgSend(v28, "count")];
                  if (!SCNetworkProtocolGetEnabled(v27))
                  {
                    goto LABEL_68;
                  }

                  v70 = v27;
                  v30 = [v29 objectForKey:kSCPropNetIPv4ConfigMethod];
                  [v12 appendFormat:@", 4m %@", v30];
                  v68 = v29;
                  if ([self isManualConfigMethod4:v30])
                  {
                    v66 = v30;
                    BSDName = [self createNetworkInterface:Interface service:v10 configInfo:v29];
                    goto LABEL_67;
                  }

                  if (![self isAutomaticConfigMethod4:v30] || (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4), objc_msgSend(v12, "appendFormat:", @", 4g %@", NetworkServiceEntity), !NetworkServiceEntity))
                  {

                    v27 = v70;
                    goto LABEL_68;
                  }

                  v66 = v30;
                  v32 = SCDynamicStoreCopyKeyList(store, NetworkServiceEntity);
                  v91 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v33 = v32;
                  v34 = [(__CFArray *)v33 countByEnumeratingWithState:&v91 objects:v108 count:16];
                  if (!v34)
                  {

                    v43 = v33;
                    goto LABEL_65;
                  }

                  v35 = v34;
                  obj = v33;
                  cf = NetworkServiceEntity;
                  selfCopy = self;
                  BSDName = 0;
                  v78 = *v92;
                  do
                  {
                    for (i = 0; i != v35; i = i + 1)
                    {
                      if (*v92 != v78)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v37 = *(*(&v91 + 1) + 8 * i);
                      v38 = [selfCopy serviceIDFromKey:v37];
                      if ([v38 isEqualToString:v86])
                      {
                        v39 = SCDynamicStoreCopyValue(store, v37);
                        v40 = v39;
                        if (v39)
                        {
                          v41 = [v39 count];
                        }

                        else
                        {
                          v41 = 0xFFFFFFFFLL;
                        }

                        [v12 appendFormat:@", 4d %d", v41];
                        v42 = [selfCopy createNetworkInterface:Interface service:v82 configInfo:v40];

                        if (!v42)
                        {
                          [v12 appendFormat:@", !4d %@", v40];
                        }

                        BSDName = v42;
                        v10 = v82;
                      }
                    }

                    v35 = [(__CFArray *)obj countByEnumeratingWithState:&v91 objects:v108 count:16];
                  }

                  while (v35);
                  v43 = obj;

                  self = selfCopy;
                  NetworkServiceEntity = cf;
                  if (!BSDName)
                  {
LABEL_65:
                    [v12 appendFormat:@", !4l %@", v43];
                    BSDName = 0;
                  }

                  CFRelease(NetworkServiceEntity);

                  v5 = v75;
LABEL_67:

                  v29 = v68;
                  v27 = v70;
                  if (!BSDName)
                  {
LABEL_68:
                    [v12 appendFormat:@", !4c %@, !4p %@", v29, v27];
                    BSDName = 0;
                  }

                  CFRelease(v27);

                  v3 = v72;
                  if (BSDName)
                  {
                    goto LABEL_102;
                  }

LABEL_70:
                  v44 = SCNetworkServiceCopyProtocol(v10, kSCNetworkProtocolTypeIPv6);
                  if (v44)
                  {
                    v45 = v44;
                    [v12 appendFormat:@", 6p %d", SCNetworkProtocolGetEnabled(v44)];
                    v46 = SCNetworkProtocolGetConfiguration(v45);
                    v47 = v46;
                    if (!v46)
                    {
                      [v12 appendFormat:@", 6c %d", 0xFFFFFFFFLL];
                      goto LABEL_100;
                    }

                    [v12 appendFormat:@", 6c %d", objc_msgSend(v46, "count")];
                    if (!SCNetworkProtocolGetEnabled(v45))
                    {
                      goto LABEL_100;
                    }

                    v48 = [v47 objectForKey:kSCPropNetIPv6ConfigMethod];
                    [v12 appendFormat:@", 6m %@", v48];
                    if ([self isManualConfigMethod6:v48])
                    {
                      v69 = v48;
                      v71 = v47;
                      BSDName = [self createNetworkInterface:Interface service:v10 configInfo:v47];
                      goto LABEL_99;
                    }

                    if (![self isAutomaticConfigMethod6:v48] || (v49 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6), objc_msgSend(v12, "appendFormat:", @", 6g %@", v49), !v49))
                    {

                      goto LABEL_100;
                    }

                    v69 = v48;
                    v71 = v47;
                    v67 = v49;
                    v50 = SCDynamicStoreCopyKeyList(store, v49);
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v51 = v50;
                    v84 = [(__CFArray *)v51 countByEnumeratingWithState:&v87 objects:v107 count:16];
                    if (!v84)
                    {

                      v60 = v51;
                      goto LABEL_97;
                    }

                    obja = v51;
                    cfa = v45;
                    BSDName = 0;
                    v79 = *v88;
                    do
                    {
                      for (j = 0; j != v84; j = j + 1)
                      {
                        if (*v88 != v79)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v53 = *(*(&v87 + 1) + 8 * j);
                        v54 = [self serviceIDFromKey:v53];
                        if ([v54 isEqualToString:v86])
                        {
                          v55 = SCDynamicStoreCopyValue(store, v53);
                          v56 = v55;
                          if (v55)
                          {
                            v57 = [v55 count];
                          }

                          else
                          {
                            v57 = 0xFFFFFFFFLL;
                          }

                          [v12 appendFormat:@", 6d %d", v57];
                          selfCopy2 = self;
                          v59 = [self createNetworkInterface:Interface service:v82 configInfo:v56];

                          if (!v59)
                          {
                            [v12 appendFormat:@", !6d %@", v56];
                          }

                          BSDName = v59;
                          self = selfCopy2;
                          v5 = v75;
                        }
                      }

                      v84 = [(__CFArray *)obja countByEnumeratingWithState:&v87 objects:v107 count:16];
                    }

                    while (v84);
                    v60 = obja;

                    v45 = cfa;
                    if (!BSDName)
                    {
LABEL_97:
                      [v12 appendFormat:@", !6l %@", v60];
                      BSDName = 0;
                    }

                    CFRelease(v67);

LABEL_99:
                    v47 = v71;
                    if (!BSDName)
                    {
LABEL_100:
                      [v12 appendFormat:@", !6c %@, !6p %@", v47, v45];
                      BSDName = 0;
                    }

                    CFRelease(v45);

                    v3 = v72;
                    if (BSDName)
                    {
LABEL_102:
                      CFRelease(v73);
                      v25 = store;
                      v7 = v81;
                      NetworkInterfaceEntity = v74;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    [v12 appendFormat:@", 6p %d", 0xFFFFFFFFLL];
                  }

LABEL_22:
                  [v12 appendFormat:@", !li %@", v73];
                  CFRelease(v73);
                  NetworkInterfaceEntity = v74;
                  BSDName = store;
                }

                else
                {
                  [v12 appendFormat:@", li %d", 0xFFFFFFFFLL];
                }

                [v12 appendFormat:@", !ds %@", BSDName];
                v25 = BSDName;
                BSDName = 0;
                v7 = v81;
LABEL_35:
                CFRelease(v25);
                CFRelease(NetworkInterfaceEntity);
                if (BSDName)
                {
                  [v3 addObject:BSDName];
                  v21 = 1;
                }

                else
                {
                  v21 = 0;
                }

LABEL_28:
                v22 = gLogHandle;
                if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
                {
                  v23 = v22;
                  v24 = currentQueueName();
                  *buf = 67109890;
                  v100 = 0;
                  v101 = 2080;
                  v102 = v24;
                  v103 = 1024;
                  v104 = v21;
                  v105 = 2112;
                  v106 = v12;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "#%08x [%s] allActiveNetworkInterfaces %d %@", buf, 0x22u);
                }

                v11 = v86;
                goto LABEL_31;
              }

              CFRelease(NetworkInterfaceEntity);
LABEL_26:
              v21 = 0;
LABEL_27:
              v7 = v81;
              goto LABEL_28;
            }
          }

          v21 = 0;
          BSDName = 0;
          goto LABEL_27;
        }

LABEL_31:
        v8 = (v8 + 1);

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v61 = [(__CFArray *)v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
      v7 = v61;
      if (!v61)
      {
LABEL_104:

        CFRelease(v65);
        break;
      }
    }
  }

  return v3;
}

+ (double)speedFromEthernetMediaSubType:(id)type
{
  typeCopy = type;
  uTF8String = [typeCopy UTF8String];
  if (uTF8String)
  {
    v10 = 0;
    v5 = strtod(uTF8String, &v10);
    v6 = v5;
    v7 = v5 <= 0.0 || v10 == 0;
    if (!v7 && *v10 == 71)
    {
      v6 = v5 * 1000.0;
    }
  }

  else
  {
    [typeCopy doubleValue];
    v6 = v8;
  }

  return v6;
}

+ (id)createNetworkInterface:(__SCNetworkInterface *)interface service:(__SCNetworkService *)service configInfo:(id)info
{
  infoCopy = info;
  v9 = objc_opt_new();
  [v9 setBsdName:SCNetworkInterfaceGetBSDName(interface)];
  [v9 setDeviceID:SCNetworkServiceGetServiceID(service)];
  [v9 setUserReadable:SCNetworkInterfaceGetLocalizedDisplayName(interface)];
  [v9 setInterfaceType:SCNetworkInterfaceGetInterfaceType(interface)];
  interfaceType = [v9 interfaceType];
  [v9 setWired:{objc_msgSend(self, "isWiredNetworkInterfaceType:", interfaceType)}];

  [v9 setLocationID:&off_1000375C8];
  [v9 setIsNCM:0];
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  if (IORegistryEntryID)
  {
    v12 = IORegistryEntryID;
    mainPort[0] = 0;
    if (!IOMainPort(0, mainPort))
    {
      v13 = mainPort[0];
      if (mainPort[0])
      {
        v14 = IORegistryEntryIDMatching(v12);
        MatchingService = IOServiceGetMatchingService(v13, v14);
        if (MatchingService)
        {
          v16 = MatchingService;
          v17 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"locationID", 0, 3u);
          if (v17)
          {
            v18 = v17;
            valuePtr = 0;
            CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
            v19 = [NSNumber numberWithUnsignedInt:valuePtr];
            [v9 setLocationID:v19];

            CFRelease(v18);
          }

          valuePtr = 0;
          if (!IORegistryEntryGetParentEntry(v16, "IOService", &valuePtr) && valuePtr)
          {
            [v9 setIsNCM:{IOObjectConformsTo(valuePtr, "AppleUSBDeviceNCMData") != 0}];
            IOObjectRelease(valuePtr);
          }

          IOObjectRelease(v16);
        }

        mach_port_deallocate(mach_task_self_, mainPort[0]);
      }
    }
  }

  if ([v9 wired])
  {
    *mainPort = 0;
    SCNetworkInterfaceCopyMediaOptions(interface, 0, mainPort, 0, 1u);
    if (*mainPort)
    {
      v20 = CFDictionaryGetValue(*mainPort, kSCPropNetEthernetMediaSubType);
      [self speedFromEthernetMediaSubType:v20];
      [v9 setSpeed:?];
      CFRelease(*mainPort);
    }
  }

  v21 = [infoCopy objectForKey:kSCPropNetIPv4Addresses];
  lastObject = [v21 lastObject];

  v23 = [infoCopy objectForKey:kSCPropNetIPv4SubnetMasks];
  lastObject2 = [v23 lastObject];

  v25 = [infoCopy objectForKey:kSCPropNetIPv6Addresses];
  lastObject3 = [v25 lastObject];

  v27 = [infoCopy objectForKey:kSCPropNetIPv6PrefixLength];

  lastObject4 = [v27 lastObject];

  [v9 setShareable:0];
  [v9 setUseful:0];
  if ([lastObject length] && objc_msgSend(lastObject2, "length"))
  {
    *mainPort = 0;
    v33[0] = 0;
    if (inet_pton(2, [lastObject UTF8String], &mainPort[1]) < 1)
    {
      goto LABEL_24;
    }

    [v9 setIpAddress:lastObject];
    [v9 setShareable:{objc_msgSend(self, "isShareableSockaddr4:", mainPort)}];
    v29 = [self isUsefulSockaddr4:mainPort];
    goto LABEL_23;
  }

  if ([lastObject3 length])
  {
    if (lastObject4)
    {
      *mainPort = 0;
      v33[0] = 0;
      v34 = 0;
      v33[1] = 0;
      if (inet_pton(30, [lastObject3 UTF8String], v33) >= 1)
      {
        [v9 setIpAddress:lastObject3];
        [v9 setShareable:{objc_msgSend(self, "isShareableSockaddr6:", mainPort)}];
        v29 = [self isUsefulSockaddr6:mainPort];
LABEL_23:
        [v9 setUseful:v29];
      }
    }
  }

LABEL_24:

  return v9;
}

+ (BOOL)isShareableInaddr4:(const in_addr *)inaddr4
{
  if (inaddr4->s_addr == 10)
  {
    return 1;
  }

  v3 = bswap32(inaddr4->s_addr);
  if (v3 >> 20 == 2753)
  {
    return 1;
  }

  v5 = v3 & 0xFFFF0000;
  return v5 == -1062731776 || v5 == -1442971648;
}

+ (BOOL)isShareableInaddr6:(const in6_addr *)inaddr6
{
  if (inaddr6->__u6_addr32[0] || inaddr6->__u6_addr32[1])
  {
    return 1;
  }

  if (!inaddr6->__u6_addr32[2] && !inaddr6->__u6_addr32[3])
  {
    return 0;
  }

  if (inaddr6->__u6_addr32[2])
  {
    return 1;
  }

  return inaddr6->__u6_addr32[3] != 0x1000000;
}

+ (BOOL)isUsefulInaddr6:(const in6_addr *)inaddr6
{
  if (inaddr6->__u6_addr32[0])
  {
    return inaddr6->__u6_addr32[0] != 254 || (inaddr6->__u6_addr32[0] & 0xC000) != 0x8000;
  }

  else
  {
    return inaddr6->__u6_addr32[1] || (inaddr6->__u6_addr32[2] || inaddr6->__u6_addr32[3]) && (inaddr6->__u6_addr32[2] || inaddr6->__u6_addr32[3] != 0x1000000);
  }
}

+ (BOOL)isAutomaticConfigMethod4:(id)method4
{
  method4Copy = method4;
  v4 = [NSSet setWithObjects:kSCValNetIPv4ConfigMethodDHCP, kSCValNetIPv4ConfigMethodINFORM, kSCValNetIPv4ConfigMethodBOOTP, kSCValNetIPv4ConfigMethodPPP, 0];
  v5 = [v4 containsObject:method4Copy];

  return v5;
}

+ (BOOL)isWiredNetworkInterfaceType:(id)type
{
  typeCopy = type;
  v8[0] = kSCNetworkInterfaceTypeBond;
  v8[1] = kSCNetworkInterfaceTypeEthernet;
  v8[2] = kSCNetworkInterfaceTypeFireWire;
  v4 = [NSArray arrayWithObjects:v8 count:3];
  v5 = v4;
  if (typeCopy)
  {
    v6 = [v4 containsObject:typeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serviceIDFromKey:(id)key
{
  v3 = [NSScanner scannerWithString:key];
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"/"];
  if ([v3 scanUpToString:@"/Network/Service/" intoString:0] && objc_msgSend(v3, "scanString:intoString:", @"/Network/Service/", 0))
  {
    v9 = 0;
    v5 = [v3 scanUpToCharactersFromSet:v4 intoString:&v9];
    v6 = v9;
    v7 = v6;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)stringFromInaddr4:(const in_addr *)inaddr4
{
  *v5 = 0;
  v6 = 0;
  v3 = inet_ntop(2, inaddr4, v5, 0x10u);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v5];
  }

  return v3;
}

+ (id)stringFromInaddr6:(const in6_addr *)inaddr6
{
  memset(v5, 0, 46);
  v3 = inet_ntop(30, inaddr6, v5, 0x2Eu);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v5];
  }

  return v3;
}

+ (id)stringFromSockaddrDL:(const sockaddr_dl *)l
{
  if (l->sdl_type == 6 && l->sdl_alen == 6)
  {
    v4 = [self stringFromMacAddr:&l->sdl_data[l->sdl_nlen]];
  }

  else
  {
    v5 = [NSMutableString stringWithFormat:@"<type=%#x>", l->sdl_type];
    v4 = v5;
    if (l->sdl_nlen)
    {
      [v5 appendFormat:@"%.*s", l->sdl_nlen, l->sdl_data];
    }

    else
    {
      [v5 appendString:@"<unknown>"];
    }

    if (l->sdl_alen)
    {
      v6 = 0;
      v7 = &l->sdl_data[l->sdl_nlen];
      v8 = @":";
      do
      {
        [v4 appendString:v8];
        [v4 appendFormat:@"%02x", v7[v6++]];
        v8 = @"-";
      }

      while (v6 < l->sdl_alen);
    }
  }

  return v4;
}

+ (id)stringFromSockaddrStorage:(const sockaddr_storage *)storage
{
  ss_family = storage->ss_family;
  if (ss_family == 30)
  {
    v4 = [self stringFromSockaddr6:?];
  }

  else if (ss_family == 18)
  {
    v4 = [self stringFromSockaddrDL:?];
  }

  else
  {
    if (ss_family == 2)
    {
      [self stringFromSockaddr4:?];
    }

    else
    {
      [NSString stringWithFormat:@"(family=%u)", storage->ss_family];
    }
    v4 = ;
  }

  return v4;
}

+ (BOOL)makeLocalAddresses:(id *)addresses andGatewayIdentifiers:(id *)identifiers tag:(unsigned int)tag
{
  v9 = gLogHandle;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FB78(tag, v9);
  }

  *v124 = xmmword_100026E10;
  v125 = 7;
  size = 0;
  if (sysctl(v124, 6u, 0, &size, 0, 0) || (v14 = malloc_type_malloc(size, 0xFD32828FuLL)) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v15 = v14;
  if (sysctl(v124, 6u, v14, &size, 0, 0) || size < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16 = v15;
    goto LABEL_8;
  }

  selfCopy = self;
  addressesCopy = addresses;
  identifiersCopy = identifiers;
  tagCopy = tag;
  v97 = 0;
  v22 = 0;
  v93 = 0;
  v23 = &v15[size];
  v98 = 0;
  v90 = v15;
  do
  {
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = [NSMutableString stringWithFormat:@"sa_family=%d, rtm_addrs=%#x, rtm_flags=%#x", v15[93], *(v15 + 3), *(v15 + 2)];
    }

    else
    {
      v24 = 0;
    }

    v25 = v15[93];
    v26 = v25 == 2 || v25 == 30;
    if (!v26)
    {
      v40 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v59 = v40;
        v60 = currentQueueName();
        LODWORD(buf[0]) = 67109635;
        HIDWORD(buf[0]) = tagCopy;
        LOWORD(buf[1]) = 2080;
        *(&buf[1] + 2) = v60;
        WORD1(buf[2]) = 2113;
        *(&buf[2] + 4) = v24;
        _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: %{private}@", buf, 0x1Cu);
      }

      goto LABEL_57;
    }

    v27 = v15 + 92;
    bzero(buf, 0x400uLL);
    v28 = 0;
    v29 = 0;
    while (((*(v15 + 3) >> v29) & 1) == 0)
    {
LABEL_43:
      ++v29;
      v28 += 16;
      if (v28 == 128)
      {
        goto LABEL_47;
      }
    }

    v30 = *v27;
    if (&v27[v30] <= v23 && v30 <= 0x80 && &v27[v30] <= &v15[*v15])
    {
      memcpy(&buf[v28], v27, *v27);
      if (v28 == 32)
      {
        v121[121] = BYTE1(buf[0]);
      }

      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v32 = off_100034AA8[v29];
        v33 = *v27;
        v34 = [selfCopy stringFromSockaddrStorage:&buf[v28]];
        [v24 appendFormat:@", %s=[%u]%@", v32, v33, v34];
      }

      v35 = *v27;
      v36 = ((v35 - 1) & 0xFFFFFFFC) + 4;
      v26 = v35 == 0;
      v37 = 4;
      if (!v26)
      {
        v37 = v36;
      }

      v27 += v37;
      goto LABEL_43;
    }

    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [v24 appendFormat:@", skipping %s (sa=%p + len=%d = %p, lim=%p, msg=%p)", off_100034AA8[v29], v27, v30, &v27[v30], v23, &v15[*v15]];
    }

LABEL_47:
    v38 = gLogHandle;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v46 = currentQueueName();
      *v103 = 67109635;
      v104 = tagCopy;
      v105 = 2080;
      v106 = v46;
      v107 = 2113;
      *v108 = v24;
      _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: %{private}@", v103, 0x1Cu);
    }

    v39 = __n_1;
    if (BYTE1(buf[0]) == __n_1)
    {
      if (BYTE1(buf[0]) == 30)
      {
        if (vmaxv_u16(vmovn_s32(vtstq_s32(*&buf[1], *&buf[1]))))
        {
          goto LABEL_98;
        }

        if (vmaxv_u16(vmovn_s32(vtstq_s32(v123, v123))))
        {
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (BYTE1(buf[0]) == 2)
      {
        if (HIDWORD(buf[0]))
        {
          goto LABEL_98;
        }

        if (!v122)
        {
          goto LABEL_61;
        }

LABEL_60:
        if (v121[120])
        {
          goto LABEL_98;
        }

LABEL_61:
        if (v98 >= v93)
        {
          v42 = 2 * v93;
          if (!v93)
          {
            v42 = 10;
          }

          v93 = v42;
          v22 = malloc_type_realloc(v22, 272 * v42, 0x10000406C200A1FuLL);
        }

        v43 = &v22[272 * v98];
        *(v43 + 15) = 0u;
        *(v43 + 16) = 0u;
        *(v43 + 13) = 0u;
        *(v43 + 14) = 0u;
        *(v43 + 11) = 0u;
        *(v43 + 12) = 0u;
        *(v43 + 9) = 0u;
        *(v43 + 10) = 0u;
        *(v43 + 7) = 0u;
        *(v43 + 8) = 0u;
        *(v43 + 5) = 0u;
        *(v43 + 6) = 0u;
        *(v43 + 3) = 0u;
        *(v43 + 4) = 0u;
        *(v43 + 1) = 0u;
        *(v43 + 2) = 0u;
        *v43 = 0u;
        *v43 = *(v15 + 2);
        memcpy(v43 + 136, &__n, __n);
        v44 = gLogHandle;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v61 = currentQueueName();
          v62 = *v43;
          v63 = [selfCopy stringFromSockaddrStorage:v43 + 136];
          *v103 = 67110147;
          v104 = tagCopy;
          v105 = 2080;
          v106 = v61;
          v107 = 2048;
          *v108 = v98;
          *&v108[8] = 1024;
          *&v108[10] = v62;
          v109 = 2113;
          v110 = v63;
          _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: defaultAddresses[%ld]: ifindex=%d gwaddr=%{private}@", v103, 0x2Cu);
        }

        ++v98;

        v39 = __n_1;
      }

      else
      {
        v39 = BYTE1(buf[0]);
      }
    }

    if ((v15[9] & 4) == 0)
    {
      goto LABEL_98;
    }

    if (v39 != 18)
    {
      goto LABEL_98;
    }

    v45 = &v121[__n_5];
    if (!(*v45 | *(v45 + 2)))
    {
      goto LABEL_98;
    }

    if (!(v97 & 1 | (__n_6 != 6)))
    {
      if (*v45 ^ 2 | *(v45 + 2))
      {
        v97 = 0;
      }

      else
      {
        v47 = gLogHandle;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v64 = currentQueueName();
          *v103 = 67109378;
          v104 = tagCopy;
          v105 = 2080;
          v106 = v64;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#%08x [%s] makeLocalAddresses: denied access to MAC address", v103, 0x12u);
        }

        v97 = 1;
      }
    }

    if (v98 < 1)
    {
      goto LABEL_98;
    }

    v48 = 0;
    while (2)
    {
      v49 = v22[v48 + 270];
      if ((v49 & 2) != 0)
      {
        goto LABEL_97;
      }

      v50 = v22[v48 + 137];
      if (v50 == 2 && BYTE1(buf[0]) == 2)
      {
        if (*&v22[v48 + 140] == HIDWORD(buf[0]))
        {
          break;
        }

        goto LABEL_97;
      }

      v52 = v50 == 30 && BYTE1(buf[0]) == 30;
      if (!v52 || (*&v22[v48 + 144] == buf[1] ? (v53 = *&v22[v48 + 152] == buf[2]) : (v53 = 0), !v53))
      {
LABEL_97:
        v48 += 272;
        if (&v22[v48] >= &v22[272 * v98])
        {
          goto LABEL_98;
        }

        continue;
      }

      break;
    }

    v54 = &v22[v48];
    v55 = &v121[__n_5];
    v56 = *v55;
    *(v54 + 134) = *(v55 + 2);
    *(v54 + 66) = v56;
    v54[270] = v49 | 2;
    v24 = gLogHandle;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v57 = currentQueueName();
      v58 = [selfCopy stringFromMacAddr:v54 + 264];
      *v103 = 67109891;
      v104 = tagCopy;
      v105 = 2080;
      v106 = v57;
      v107 = 1024;
      *v108 = -252645135 * (v48 >> 4);
      *&v108[4] = 2113;
      *&v108[6] = v58;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: defaultAddresses[%d]: gwmac=%{private}@", v103, 0x22u);
    }

LABEL_57:

LABEL_98:
    v15 += *v15;
  }

  while (v15 < v23);
  free(v90);
  v95 = v22;
  if (!v98)
  {
    goto LABEL_166;
  }

  v101 = 0;
  if (getifaddrs(&v101))
  {
    v101 = 0;
  }

  v65 = selfCopy;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v66 = v101;
    if (v101)
    {
      v67 = 0uLL;
      do
      {
        if (v66->ifa_name && v66->ifa_addr)
        {
          v115 = v67;
          v116 = v67;
          v113 = v67;
          v114 = v67;
          *&buf[4] = v67;
          v112 = v67;
          *buf = v67;
          *&buf[2] = v67;
          __memcpy_chk();
          ifa_name = v66->ifa_name;
          ifa_flags = v66->ifa_flags;
          v70 = [v65 stringFromSockaddrStorage:buf];
          v71 = [NSMutableString stringWithFormat:@"ifa_name=%s, ifa_flags=%#x, ifa_addr=%@", ifa_name, ifa_flags, v70];

          v65 = selfCopy;
          if (v66->ifa_netmask)
          {
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v112 = 0u;
            memset(buf, 0, sizeof(buf));
            __memcpy_chk();
            v72 = [selfCopy stringFromSockaddrStorage:buf];
            [v71 appendFormat:@", ifa_netmask=%@", v72];
          }

          if (v66->ifa_dstaddr)
          {
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v112 = 0u;
            memset(buf, 0, sizeof(buf));
            __memcpy_chk();
            v73 = [selfCopy stringFromSockaddrStorage:buf];
            [v71 appendFormat:@", ifa_dstaddr=%@", v73];
          }

          v74 = gLogHandle;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v75 = currentQueueName();
            *v103 = 67109634;
            v104 = tagCopy;
            v105 = 2080;
            v106 = v75;
            v107 = 2112;
            *v108 = v71;
            _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: %@", v103, 0x1Cu);
          }

          v67 = 0uLL;
        }

        v66 = v66->ifa_next;
      }

      while (v66);
    }
  }

  v99 = &v95[272 * v98];
  if (v98 < 1)
  {
    goto LABEL_141;
  }

  v76 = v95;
  while (2)
  {
    if ((v76[270] & 2) == 0)
    {
      goto LABEL_136;
    }

    if (!if_indextoname(*v76, v103))
    {
      goto LABEL_135;
    }

    v77 = v101;
    if (!v101)
    {
      goto LABEL_135;
    }

    while (2)
    {
      v78 = v77->ifa_name;
      if (!v78)
      {
        goto LABEL_134;
      }

      ifa_addr = v77->ifa_addr;
      if (!ifa_addr)
      {
        goto LABEL_134;
      }

      if (strcmp(v78, v103))
      {
        goto LABEL_134;
      }

      sa_family = ifa_addr->sa_family;
      if (sa_family != v76[137])
      {
        goto LABEL_134;
      }

      if (sa_family != 30)
      {
        if (sa_family == 2 && ifa_addr->sa_len == 16)
        {
          buf[0] = 0;
          buf[1] = 0;
          __memcpy_chk();
          if ([selfCopy isUsefulSockaddr4:buf])
          {
            break;
          }
        }

        goto LABEL_134;
      }

      if (ifa_addr->sa_len != 28 || (memset(buf, 0, 28), __memcpy_chk(), ![selfCopy isUsefulSockaddr6:buf]))
      {
LABEL_134:
        v77 = v77->ifa_next;
        if (!v77)
        {
          goto LABEL_135;
        }

        continue;
      }

      break;
    }

    memcpy(v76 + 8, v77->ifa_addr, v77->ifa_addr->sa_len);
    v76[270] |= 1u;
    v81 = gLogHandle;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v94 = currentQueueName();
      v82 = [selfCopy stringFromSockaddrStorage:v76 + 8];
      LODWORD(buf[0]) = 67109890;
      HIDWORD(buf[0]) = tagCopy;
      LOWORD(buf[1]) = 2080;
      *(&buf[1] + 2) = v94;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = -252645135 * ((v76 - v95) >> 4);
      LOWORD(buf[3]) = 2112;
      *(&buf[3] + 2) = v82;
      _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses: defaultAddresses[%d]: ifaddr=%@", buf, 0x22u);
    }

LABEL_135:
    v65 = selfCopy;
LABEL_136:
    v76 += 272;
    if (v76 < v99)
    {
      continue;
    }

    break;
  }

LABEL_141:
  if (v101)
  {
    freeifaddrs(v101);
  }

  if (v98 < 1)
  {
LABEL_166:
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    tag = tagCopy;
    addresses = addressesCopy;
    identifiers = identifiersCopy;
    goto LABEL_167;
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v83 = v95 + 264;
  while (2)
  {
    if (v83[6])
    {
      v84 = *(v83 - 255);
      if (v84 == 30)
      {
        if (!v11)
        {
          v11 = [NSMutableArray arrayWithCapacity:v98];
        }

        v85 = [v65 stringFromSockaddr6:v83 - 256];
        v86 = v11;
LABEL_154:
        [v86 addObject:v85];
      }

      else if (v84 == 2)
      {
        if (!v10)
        {
          v10 = [NSMutableArray arrayWithCapacity:v98];
        }

        v85 = [v65 stringFromSockaddr4:v83 - 256];
        v86 = v10;
        goto LABEL_154;
      }
    }

    if ((v83[6] & 2) != 0)
    {
      v87 = [v65 stringFromMacAddr:v83];
      if (v12)
      {
        if ([v13 containsObject:v87])
        {
LABEL_161:

          goto LABEL_162;
        }
      }

      else
      {
        v12 = [NSMutableArray arrayWithCapacity:v98];
        v88 = [NSMutableSet setWithCapacity:v98];

        v13 = v88;
        v65 = selfCopy;
      }

      [v12 addObject:v87];
      [v13 addObject:v87];
      goto LABEL_161;
    }

LABEL_162:
    v89 = v83 + 8;
    v83 += 272;
    if (v89 < v99)
    {
      continue;
    }

    break;
  }

  tag = tagCopy;
  addresses = addressesCopy;
  identifiers = identifiersCopy;
  if (v11)
  {
    if (v10)
    {
      [v10 addObjectsFromArray:v11];
    }

    else
    {
      v11 = v11;
      v10 = v11;
    }
  }

LABEL_167:
  v16 = v95;
  if (v95)
  {
LABEL_8:
    free(v16);
  }

LABEL_9:
  if (addresses)
  {
    *addresses = [v10 copy];
  }

  if (identifiers)
  {
    *identifiers = [v12 copy];
  }

  v17 = gLogHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = currentQueueName();
    v19 = [v12 count];
    LODWORD(buf[0]) = 67110147;
    HIDWORD(buf[0]) = tag;
    LOWORD(buf[1]) = 2080;
    *(&buf[1] + 2) = v18;
    WORD1(buf[2]) = 2112;
    *(&buf[2] + 4) = v10;
    WORD2(buf[3]) = 2048;
    *(&buf[3] + 6) = v19;
    HIWORD(buf[4]) = 2113;
    buf[5] = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#%08x [%s] makeLocalAddresses -> localAddresses=%@ gatewayIdentifiers=[%ld]%{private}@", buf, 0x30u);
  }

  if ([v10 count])
  {
    v20 = [v12 count] != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)digestIdentifier:(id)identifier tag:(unsigned int)tag
{
  identifierCopy = identifier;
  arc4random_buf(__buf, 0x20uLL);
  CCHmac(2u, [identifierCopy UTF8String], objc_msgSend(identifierCopy, "length"), __buf, 0x20uLL, macOut);
  v6 = [NSData dataWithBytes:macOut length:32];
  v7 = [NSData dataWithBytes:__buf length:32];
  v8 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    *buf = 67111171;
    tagCopy = tag;
    v16 = 2080;
    v17 = currentQueueName();
    v18 = 2113;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = @"digest";
    v22 = 1040;
    v23 = [v6 length];
    v24 = 2096;
    bytes = [v6 bytes];
    v26 = 2112;
    v27 = @"key";
    v28 = 1040;
    v29 = [v7 length];
    v30 = 2096;
    bytes2 = [v7 bytes];
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#%08x [%s] digestIdentifier:%{private}@ -> %@=%.*P, %@=%.*P", buf, 0x50u);
  }

  v12[0] = @"digest";
  v12[1] = @"key";
  v13[0] = v6;
  v13[1] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v9;
}

+ (id)digestIdentifiers:(id)identifiers tag:(unsigned int)tag
{
  v4 = *&tag;
  identifiersCopy = identifiers;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [identifiersCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [self digestIdentifier:*(*(&v15 + 1) + 8 * i) tag:{v4, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (BOOL)isDigestedIdentifier:(id)identifier equalToCleartextIdentifier:(id)cleartextIdentifier tag:(unsigned int)tag
{
  cleartextIdentifierCopy = cleartextIdentifier;
  identifierCopy = identifier;
  v9 = [identifierCopy objectForKey:@"digest"];
  v10 = [identifierCopy objectForKey:@"key"];

  if ([v9 length] == 32 && objc_msgSend(v10, "length") == 32)
  {
    CCHmac(2u, [cleartextIdentifierCopy UTF8String], objc_msgSend(cleartextIdentifierCopy, "length"), objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), macOut);
    [v9 bytes];
    v11 = cc_cmp_safe();
    v12 = v11 == 0;
    v13 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v13;
      *buf = 67111427;
      tagCopy = tag;
      v18 = 2080;
      v19 = currentQueueName();
      v20 = 2112;
      v21 = @"digest";
      v22 = 1040;
      v23 = [v9 length];
      v24 = 2096;
      bytes = [v9 bytes];
      v26 = 2112;
      v27 = @"key";
      v28 = 1040;
      v29 = [v10 length];
      v30 = 2096;
      bytes2 = [v10 bytes];
      v32 = 2113;
      v33 = cleartextIdentifierCopy;
      v34 = 1024;
      v35 = v11 == 0;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#%08x [%s] isDigestedIdentifier:%@=%.*P,%@=%.*P equalToCleartextIdentifier:%{private}@ -> %{BOOL}d", buf, 0x56u);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)areDigestedIdentifiers:(id)identifiers equalToCleartextIdentifiers:(id)cleartextIdentifiers tag:(unsigned int)tag
{
  v5 = *&tag;
  identifiersCopy = identifiers;
  cleartextIdentifiersCopy = cleartextIdentifiers;
  v10 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v10;
    v19[0] = 67110147;
    v19[1] = v5;
    v20 = 2080;
    v21 = currentQueueName();
    v22 = 2112;
    v23 = identifiersCopy;
    v24 = 2048;
    v25 = [cleartextIdentifiersCopy count];
    v26 = 2113;
    v27 = cleartextIdentifiersCopy;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#%08x [%s] areDigestedIdentifiers:%@ equalToCleartextIdentifiers:[%ld]%{private}@", v19, 0x30u);
  }

  v11 = [identifiersCopy count];
  if (v11 == [cleartextIdentifiersCopy count])
  {
    if ([identifiersCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [identifiersCopy objectAtIndex:v12];
        v14 = [cleartextIdentifiersCopy objectAtIndex:v12];
        v15 = [self isDigestedIdentifier:v13 equalToCleartextIdentifier:v14 tag:v5];

        if ((v15 & 1) == 0)
        {
          break;
        }

        ++v12;
      }

      while (v12 < [identifiersCopy count]);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FC14(v16, v15, v5);
  }

  return v15;
}

@end