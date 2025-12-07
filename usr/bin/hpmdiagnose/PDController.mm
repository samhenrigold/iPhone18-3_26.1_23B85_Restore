@interface PDController
+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client;
+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client VID:(unsigned int)d DID:(unsigned int)iD;
+ (id)knownPDControllers:(int64_t)controllers;
+ (id)pdControllerForAddress:(unsigned int)address userClient:(id)client;
+ (id)pdControllerForVID:(unsigned int)d DID:(unsigned int)iD address:(unsigned int)address userClient:(id)client;
- (PDController)initWithAddress:(unsigned __int8)address userClient:(id)client;
- (PDController)initWithAddress:(unsigned __int8)address userClient:(id)client VID:(unsigned int)d DID:(unsigned int)iD;
- (id)registerFormatter4CCWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterBCDVersionWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDIDWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDecimal16WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDecimal32MillisecondsWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDecimal32WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDecimal64WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterDecimal8WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterHex16WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterHex32WithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterHexDumpNarrowWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterHexDumpWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterRxVDMWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterUUIDWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterVIDWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (int)executeIECSCommand:(unsigned int)command;
- (int)executeIECSCommand:(unsigned int)command withData:(void *)data ofLength:(unint64_t)length;
- (int)printCommand:(unsigned int)command dataBuffer:(void *)buffer andLength:(unint64_t)length;
- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter;
- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter andData:(void *)data andLength:(unint64_t)length;
- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter andWriteData:(void *)data andWriteDataLength:(unint64_t)length;
- (int)printRegister:(unsigned __int8)register dataBuffer:(void *)buffer andLength:(unint64_t)length;
- (int)printRegister:(unsigned __int8)register withTitle:(id)title andFormatter:(SEL)formatter;
- (int)printRegister:(unsigned __int8)register withTitle:(id)title andFormatter:(SEL)formatter andData:(void *)data andLength:(unint64_t)length;
- (int)receiveVDM:(void *)m length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)receiveVDMAttention:(void *)attention length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)registerRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength;
- (int)registerReadRemote:(void *)remote ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength;
- (int)registerWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address;
- (int)registerWriteRemote:(void *)remote ofLength:(unint64_t)length atAddress:(unsigned int)address;
- (int)sendVDM:(void *)m length:(unint64_t)length sop:(int)sop;
- (int)stress:(unsigned int)stress;
- (int64_t)compare:(id)compare;
- (void)printRegisterTitle:(id)title andDescription:(id)description;
@end

@implementation PDController

+ (id)knownPDControllers:(int64_t)controllers
{
  v21 = +[NSMutableArray array];
  v4 = +[AppleHPMUserClientManager sharedInstance];
  v5 = v4;
  if (v4)
  {
    userClientSet = [v4 userClientSet];
    if (userClientSet)
    {
      v7 = userClientSet;
      v20 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [userClientSet countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        ChildIterator = 0;
        v11 = *v27;
        controllersCopy = controllers;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            iterator = 0;
            if (!ChildIterator)
            {
              ChildIterator = IORegistryEntryGetChildIterator([v13 service], "IOService", &iterator);
              if (!ChildIterator)
              {
                v14 = IOIteratorNext(iterator);
                if (v14)
                {
                  v15 = v14;
                  do
                  {
                    if (IOObjectConformsTo(v15, "AppleHPMDevice"))
                    {
                      v24 = 0;
                      v23 = 0;
                      if (![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Address" outValue:&v24]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Vendor ID" outValue:&v23 + 4]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Device ID" outValue:&v23])
                      {
                        if (controllers < 0)
                        {
                          controllersCopy2 = HIDWORD(v23);
                        }

                        else
                        {
                          HIDWORD(v23) = controllers;
                          controllersCopy2 = controllers;
                        }

                        v17 = [PDController pdControllerForVID:controllersCopy2 DID:v23 address:v24 userClient:v13];
                        if (v17)
                        {
                          [v21 addObject:v17];
                        }

                        controllers = controllersCopy;
                      }
                    }

                    IOObjectRelease(v15);
                    v15 = IOIteratorNext(iterator);
                  }

                  while (v15);
                }

                if (iterator)
                {
                  IOObjectRelease(iterator);
                }

                ChildIterator = 0;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v9);
      }

      v5 = v20;
    }
  }

  v18 = [v21 sortedArrayUsingSelector:"compare:"];

  return v18;
}

+ (id)pdControllerForAddress:(unsigned int)address userClient:(id)client
{
  v4 = *&address;
  clientCopy = client;
  v8 = 0;
  v9 = 0;
  if ([clientCopy iecsReadCommandForDevice:v4 withAddress:0 buffer:&v9 + 4 length:4 flags:0 andOutReadLength:&v8] || (v8 = 0, objc_msgSend(clientCopy, "iecsReadCommandForDevice:withAddress:buffer:length:flags:andOutReadLength:", v4, 1, &v9, 4, 0, &v8)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [PDController pdControllerForVID:HIDWORD(v9) DID:v9 address:v4 userClient:clientCopy];
  }

  return v6;
}

+ (id)pdControllerForVID:(unsigned int)d DID:(unsigned int)iD address:(unsigned int)address userClient:(id)client
{
  addressCopy = address;
  v7 = *&iD;
  v8 = *&d;
  clientCopy = client;
  if (v8 == 40)
  {
    if (v7 > 389205247)
    {
      if (v7 == 826622785)
      {
        v11 = PDControllerType2;
        goto LABEL_14;
      }
    }

    else if ((v7 - 33628196) < 4)
    {
      v11 = PDControllerType5;
      goto LABEL_14;
    }

    v11 = PDControllerType4;
    goto LABEL_14;
  }

  if (v8 != 1426071497)
  {
    if (v8 == 2599)
    {
      [PDControllerType1 PDControllerType1WithDeviceAddress:addressCopy userClient:clientCopy];
    }

    else
    {
      [PDController createWithDeviceAddress:addressCopy userClient:clientCopy VID:v8 DID:v7];
    }
    v10 = ;
    goto LABEL_15;
  }

  v11 = PDControllerType6;
LABEL_14:
  v10 = [(__objc2_class *)v11 createWithDeviceAddress:addressCopy userClient:clientCopy];
LABEL_15:
  v12 = v10;

  return v12;
}

+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client VID:(unsigned int)d DID:(unsigned int)iD
{
  v6 = *&iD;
  v7 = *&d;
  addressCopy = address;
  clientCopy = client;
  v11 = [[self alloc] initWithAddress:addressCopy userClient:clientCopy VID:v7 DID:v6];

  return v11;
}

+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client
{
  addressCopy = address;
  clientCopy = client;
  v7 = [[self alloc] initWithAddress:addressCopy userClient:clientCopy];

  return v7;
}

- (PDController)initWithAddress:(unsigned __int8)address userClient:(id)client
{
  addressCopy = address;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = PDController;
  v7 = [(PDController *)&v12 init];
  v8 = v7;
  if (v7 && ([(PDController *)v7 setAddress:addressCopy], [(PDController *)v8 setUserClient:clientCopy], [(PDController *)v8 userClient], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v11 = 0;
    [(PDController *)v8 registerRead32:&v11 atAddress:1];
    [(PDController *)v8 setDid:v11];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (PDController)initWithAddress:(unsigned __int8)address userClient:(id)client VID:(unsigned int)d DID:(unsigned int)iD
{
  v6 = *&iD;
  v7 = *&d;
  addressCopy = address;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = PDController;
  v11 = [(PDController *)&v15 init];
  v12 = v11;
  if (!v11 || ([(PDController *)v11 setAddress:addressCopy], [(PDController *)v12 setVid:v7], [(PDController *)v12 setDid:v6], [(PDController *)v12 setUserClient:clientCopy], [(PDController *)v12 userClient], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {

    v12 = 0;
  }

  return v12;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = compareCopy;
      userClient = [(PDController *)self userClient];
      routerID = [userClient routerID];
      userClient2 = [v5 userClient];
      routerID2 = [userClient2 routerID];

      if (routerID > routerID2)
      {
LABEL_4:
        v10 = 1;
LABEL_9:

        goto LABEL_10;
      }

      userClient3 = [(PDController *)self userClient];
      routerID3 = [userClient3 routerID];
      userClient4 = [v5 userClient];
      routerID4 = [userClient4 routerID];

      if (routerID3 >= routerID4)
      {
        userClient5 = [(PDController *)self userClient];
        routeString = [userClient5 routeString];
        userClient6 = [v5 userClient];
        routeString2 = [userClient6 routeString];

        if (routeString > routeString2)
        {
          goto LABEL_4;
        }

        userClient7 = [(PDController *)self userClient];
        routeString3 = [userClient7 routeString];
        userClient8 = [v5 userClient];
        routeString4 = [userClient8 routeString];

        if (routeString3 >= routeString4)
        {
          address = [(PDController *)self address];
          if (address <= [v5 address])
          {
            address2 = [(PDController *)self address];
            if (address2 >= [v5 address])
            {
              v10 = 0;
            }

            else
            {
              v10 = -1;
            }

            goto LABEL_9;
          }

          goto LABEL_4;
        }
      }

      v10 = -1;
      goto LABEL_9;
    }

    v10 = [compareCopy compare:self];
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

- (int)registerRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength
{
  v7 = *&address;
  if ([(PDController *)self remote])
  {

    return [(PDController *)self registerReadRemote:read ofLength:length atAddress:v7 andOutReadLength:readLength];
  }

  else
  {
    userClient = [(PDController *)self userClient];
    v13 = [userClient iecsReadCommandForDevice:-[PDController address](self withAddress:"address") buffer:v7 length:read flags:length andOutReadLength:{0, readLength}];

    return v13;
  }
}

- (int)registerReadRemote:(void *)remote ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength
{
  v17 = 1229275987;
  v18 = 0;
  v11 = malloc_type_malloc(0x40uLL, 0x1853CEF8uLL);
  memset(v20, 0, sizeof(v20));
  v19 = (length << 24) | (address << 8) | 0x10000;
  userClient = [(PDController *)self userClient];
  LODWORD(v16) = 0;
  LODWORD(v15) = 0x400000;
  v13 = [userClient IECSAtomicCommand:1 cmdBuffer:&v17 dataBuffer:v20 extDataBuffer:&v19 returnDataBuffer:v11 returnExtDataBuffer:&v18 inputDataLength:v15 returnDataBufferLength:1 timeoutInSeconds:-[PDController address](self forDevice:"address") flags:v16];

  if (!v13)
  {
    if ((v18 & 0x7C0000) != 0)
    {
      if ([(PDController *)self remote_vid]== 1426071497)
      {
        v13 = 0;
      }

      else
      {
        printf("ERROR: fail code=0x%X\n", BYTE2(v18) & 0x7C);
        [(PDController *)self setRemote:0];
        v13 = -536870165;
      }
    }

    else
    {
      v13 = 0;
      *readLength = (v18 >> 24) & 0x7F;
    }
  }

  memcpy(remote, v11, length);
  if (!address)
  {
    [(PDController *)self setRemote_vid:*remote];
  }

  if (v11)
  {
    free(v11);
  }

  return v13;
}

- (int)registerWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address
{
  v5 = *&address;
  if ([(PDController *)self remote])
  {

    return [(PDController *)self registerWriteRemote:write ofLength:length atAddress:v5];
  }

  else
  {
    userClient = [(PDController *)self userClient];
    v11 = [userClient iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:v5 length:write flags:{length, 0}];

    return v11;
  }
}

- (int)registerWriteRemote:(void *)remote ofLength:(unint64_t)length atAddress:(unsigned int)address
{
  addressCopy = address;
  v19 = 1396917577;
  v9 = malloc_type_malloc(0x40uLL, 0x3EC852D2uLL);
  v20 = (length << 24) | (addressCopy << 8);
  if (!v9)
  {
    return -536870211;
  }

  v10 = v9;
  userClient = [(PDController *)self userClient];
  v12 = [userClient iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:19 length:&v20 flags:{length, 0}];

  if (!v12)
  {
    userClient2 = [(PDController *)self userClient];
    v12 = [userClient2 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:9 length:remote flags:{length, 0}];

    if (!v12)
    {
      userClient3 = [(PDController *)self userClient];
      [userClient3 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:8 length:&v19 flags:{4, 0}];

      v15 = 99;
      do
      {
        usleep(0x64u);
        userClient4 = [(PDController *)self userClient];
        v12 = [userClient4 iecsReadCommandForDevice:-[PDController address](self withAddress:"address") buffer:8 length:v10 flags:length andOutReadLength:{0, 0}];
      }

      while (*v10 == 73 && v15-- != 0);
    }
  }

  free(v10);
  return v12;
}

- (int)executeIECSCommand:(unsigned int)command
{
  v3 = *&command;
  v13 = 0;
  v5 = malloc_type_malloc(0x40uLL, 0xAB85E66uLL);
  if (![(PDController *)self remote])
  {
    userClient = [(PDController *)self userClient];
    v9 = [userClient iecsCommand:v3 forDevice:-[PDController address](self flags:{"address"), 0}];

    if (!v5)
    {
      return v9;
    }

LABEL_12:
    free(v5);
    return v9;
  }

  v12 = bswap32(v3);
  v6 = [(PDController *)self registerWriteRemote:&v12 ofLength:4 atAddress:8];
  if (!v6)
  {
    v7 = 99;
    do
    {
      usleep(0x64u);
      v6 = [(PDController *)self registerReadRemote:v5 ofLength:4 atAddress:8 andOutReadLength:&v13];
    }

    while (*v5 == v12 && v7-- != 0);
  }

  v9 = v6;
  if (v5)
  {
    goto LABEL_12;
  }

  return v9;
}

- (int)executeIECSCommand:(unsigned int)command withData:(void *)data ofLength:(unint64_t)length
{
  v7 = *&command;
  if ([(PDController *)self remote:0])
  {
    [(PDController *)self registerWriteRemote:&v10 ofLength:64 atAddress:9];
    result = [(PDController *)self registerWriteRemote:data ofLength:length atAddress:9];
    if (result)
    {
      return result;
    }
  }

  else
  {
    [(PDController *)self registerWrite:&v10 ofLength:64 atAddress:9];
    result = [(PDController *)self registerWrite:data ofLength:length atAddress:9];
    if (result)
    {
      return result;
    }
  }

  return [(PDController *)self executeIECSCommand:v7];
}

- (int)sendVDM:(void *)m length:(unint64_t)length sop:(int)sop
{
  v5 = *&sop;
  userClient = [(PDController *)self userClient];
  LODWORD(v5) = [userClient sendVDMForDevice:-[PDController address](self sop:"address") buffer:v5 length:m flags:{length, 0}];

  return v5;
}

- (int)receiveVDM:(void *)m length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  userClient = [(PDController *)self userClient];
  LODWORD(outLength) = [userClient receiveVDMForDevice:-[PDController address](self buffer:"address") length:m flags:length outSOP:0 outSequence:sop outLength:{sequence, outLength}];

  return outLength;
}

- (int)receiveVDMAttention:(void *)attention length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  userClient = [(PDController *)self userClient];
  LODWORD(outLength) = [userClient receiveVDMAttentionForDevice:-[PDController address](self buffer:"address") length:attention flags:length outSOP:0 outSequence:sop outLength:{sequence, outLength}];

  return outLength;
}

- (int)stress:(unsigned int)stress
{
  v5 = malloc_type_malloc(0x40uLL, 0x15E0A7B2uLL);
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x40uLL, 0xE54F4BA9uLL);
    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (v7)
    {
      if (stress)
      {
        v10 = 0;
        qmemcpy(v21, "/.-,+*)('&%$#! ?>=<;:9876543210", sizeof(v21));
        while (1)
        {
          printf("Stress cycle %d\n", v10);
          *v6 = v21[1];
          v6[1] = v21[0];
          v6[2] = xmmword_100015A10;
          v6[3] = xmmword_100015A20;
          v11 = [(PDController *)self registerWrite:v6 ofLength:64 atAddress:9];
          if (v11 || (v11 = [(PDController *)self registerRead:v7 ofLength:64 atAddress:9]) != 0)
          {
            v12 = v11;
            goto LABEL_20;
          }

          if (bcmp(v6, v7, 0x40uLL))
          {
            break;
          }

          if (stress == ++v10)
          {
            goto LABEL_9;
          }
        }

        printf("Mismatch on cycle %d\n", v10);
        puts("Write buffer:");
        v14 = [(PDController *)self registerFormatterHexDumpWithBuffer:v6 andLength:64];
        if ([v14 count])
        {
          v15 = 0;
          do
          {
            v16 = [v14 objectAtIndexedSubscript:v15];
            puts([v16 UTF8String]);

            ++v15;
          }

          while ([v14 count] > v15);
        }

        puts("Read buffer:");
        v17 = [(PDController *)self registerFormatterHexDumpWithBuffer:v7 andLength:64];
        if ([v17 count])
        {
          v18 = 0;
          do
          {
            v19 = [v17 objectAtIndexedSubscript:v18];
            puts([v19 UTF8String]);

            ++v18;
          }

          while ([v17 count] > v18);
        }

        v12 = -536870198;
      }

      else
      {
LABEL_9:
        v12 = 0;
      }

LABEL_20:
      objc_autoreleasePoolPop(v9);
      free(v6);
      v13 = v7;
    }

    else
    {
      v12 = -536870211;
      objc_autoreleasePoolPop(v8);
      v13 = v6;
    }

    free(v13);
  }

  else
  {
    v12 = -536870211;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v12;
}

- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter
{
  v6 = *&command;
  v8 = 3758097085;
  titleCopy = title;
  v10 = malloc_type_malloc(0x40uLL, 0x638CC53EuLL);
  if (!v10)
  {
    v11 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  v11 = malloc_type_malloc(0x40uLL, 0x74A9D259uLL);
  v20 = 0;
  if (!v11)
  {
LABEL_6:
    v19 = 0;
LABEL_7:
    v13 = [NSString stringWithFormat:@"Status = 0x%08x", v8];
    [(PDController *)self printCommand:v6 withTitle:titleCopy andDescription:v13];
    goto LABEL_8;
  }

  v12 = [(PDController *)self registerRead:v11 ofLength:64 atAddress:9 andOutReadLength:&v20];
  if (v12)
  {
    v8 = v12;
    goto LABEL_6;
  }

  v15 = [(PDController *)self executeIECSCommand:v6];
  v19 = 0;
  if (v15 || (v15 = [(PDController *)self registerRead:v10 ofLength:64 atAddress:9 andOutReadLength:&v19], v15))
  {
    v8 = v15;
    goto LABEL_7;
  }

  v16 = v19;
  if (v19 >= 0x40)
  {
    v16 = 64;
  }

  v19 = v16;
  v13 = off_100025A30(self, formatter, v10, 64, v11, 64);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v13;
    if ([v13 count])
    {
      if ([v13 count])
      {
        v17 = 0;
        do
        {
          v18 = [v13 objectAtIndexedSubscript:v17];
          if (v17)
          {
            [(PDController *)self printCommandDescription:v18];
          }

          else
          {
            [(PDController *)self printCommand:v6 withTitle:titleCopy andDescription:v18];
          }

          ++v17;
        }

        while ([v13 count] > v17);
      }
    }

    else
    {
      [(PDController *)self printCommand:v6 withTitle:titleCopy andDescription:&stru_10001C6C8];
    }
  }

  else
  {
    [(PDController *)self printCommand:v6 withTitle:titleCopy andDescription:v13];
  }

  LODWORD(v8) = 0;
LABEL_8:

  if (v10)
  {
    free(v10);
  }

  if (v11)
  {
    free(v11);
  }

  return v8;
}

- (int)printCommand:(unsigned int)command dataBuffer:(void *)buffer andLength:(unint64_t)length
{
  v7 = *&command;
  commandMap = [(PDController *)self commandMap];
  v10 = [NSNumber numberWithUnsignedInt:v7];
  v11 = [commandMap objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"title"];
    v13 = [v11 objectForKeyedSubscript:@"formatter"];
    v14 = NSSelectorFromString(v13);
  }

  else
  {
    v14 = "registerFormatterHexDumpWithBuffer:andLength:";
    v12 = &stru_10001C6C8;
  }

  v15 = malloc_type_malloc(length, 0x100004077774924uLL);
  bzero(v15, length);
  memcpy(v15, buffer, length);
  v16 = [(PDController *)self printCommand:v7 withTitle:v12 andFormatter:v14 andData:v15 andLength:length];
  free(v15);

  return v16;
}

- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter andData:(void *)data andLength:(unint64_t)length
{
  v10 = *&command;
  titleCopy = title;
  if (length >= 0x40)
  {
    lengthCopy = 64;
  }

  else
  {
    lengthCopy = length;
  }

  v14 = off_100025A30(self, formatter, data, 64, data, lengthCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    if ([v15 count])
    {
      if ([v15 count])
      {
        v16 = 0;
        do
        {
          v17 = [v15 objectAtIndexedSubscript:v16];
          if (v16)
          {
            [(PDController *)self printCommandDescription:v17];
          }

          else
          {
            [(PDController *)self printCommand:v10 withTitle:titleCopy andDescription:v17];
          }

          ++v16;
        }

        while ([v15 count] > v16);
      }
    }

    else
    {
      [(PDController *)self printCommand:v10 withTitle:titleCopy andDescription:&stru_10001C6C8];
    }
  }

  else
  {
    [(PDController *)self printCommand:v10 withTitle:titleCopy andDescription:v14];
  }

  return 0;
}

- (int)printCommand:(unsigned int)command withTitle:(id)title andFormatter:(SEL)formatter andWriteData:(void *)data andWriteDataLength:(unint64_t)length
{
  lengthCopy = length;
  commandCopy = command;
  titleCopy = title;
  v12 = malloc_type_malloc(0x40uLL, 0xB5863B51uLL);
  if (!v12)
  {
    v13 = 3758097085;
    goto LABEL_13;
  }

  WORD1(v18) = 64;
  LOWORD(v18) = lengthCopy;
  v13 = [(PDController *)self executeIECSAtomicCommand:1 cmdBuffer:&commandCopy dataBuffer:data extDataBuffer:0 returnDataBuffer:v12 returnExtDataBuffer:0 inputDataLength:v18 returnDataBufferLength:10 timeoutInSeconds:?];
  if (v13)
  {
LABEL_13:
    v14 = [NSString stringWithFormat:@"Status = 0x%08x", v13];
    goto LABEL_14;
  }

  v14 = off_100025A30(self, formatter, v12, 64, data, 64);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    [(PDController *)self printCommand:commandCopy withTitle:titleCopy andDescription:v14];
    goto LABEL_15;
  }

  v14 = v14;
  if ([v14 count])
  {
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        if (v15)
        {
          [(PDController *)self printCommandDescription:v16];
        }

        else
        {
          [(PDController *)self printCommand:commandCopy withTitle:titleCopy andDescription:v16];
        }

        ++v15;
      }

      while ([v14 count] > v15);
    }
  }

  else
  {
    [(PDController *)self printCommand:commandCopy withTitle:titleCopy andDescription:&stru_10001C6C8];
  }

LABEL_15:
  if (v12)
  {
    free(v12);
  }

  return v13;
}

- (int)printRegister:(unsigned __int8)register dataBuffer:(void *)buffer andLength:(unint64_t)length
{
  registerCopy = register;
  registerMap = [(PDController *)self registerMap];
  v10 = [NSNumber numberWithUnsignedChar:registerCopy];
  v11 = [registerMap objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"title"];
    v13 = [v11 objectForKeyedSubscript:@"formatter"];
    v14 = NSSelectorFromString(v13);
  }

  else
  {
    v14 = "registerFormatterHexDumpWithBuffer:andLength:";
    v12 = &stru_10001C6C8;
  }

  v15 = malloc_type_malloc(length, 0x100004077774924uLL);
  bzero(v15, length);
  memcpy(v15, buffer, length);
  v16 = [(PDController *)self printRegister:registerCopy withTitle:v12 andFormatter:v14 andData:v15 andLength:length];
  free(v15);

  return v16;
}

- (int)printRegister:(unsigned __int8)register withTitle:(id)title andFormatter:(SEL)formatter andData:(void *)data andLength:(unint64_t)length
{
  registerCopy = register;
  titleCopy = title;
  if (length >= 0x40)
  {
    lengthCopy = 64;
  }

  else
  {
    lengthCopy = length;
  }

  v14 = off_100025A28(self, formatter, data, lengthCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    if ([v15 count])
    {
      if ([v15 count])
      {
        v16 = 0;
        do
        {
          v17 = [v15 objectAtIndexedSubscript:v16];
          if (v16)
          {
            [(PDController *)self printRegisterDescription:v17];
          }

          else
          {
            [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:v17];
          }

          ++v16;
        }

        while ([v15 count] > v16);
      }
    }

    else
    {
      [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:&stru_10001C6C8];
    }
  }

  else
  {
    [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:v14];
  }

  return 0;
}

- (int)printRegister:(unsigned __int8)register withTitle:(id)title andFormatter:(SEL)formatter
{
  registerCopy = register;
  titleCopy = title;
  v9 = malloc_type_malloc(0x40uLL, 0x7165179EuLL);
  v16 = 0;
  if (!v9)
  {
    v10 = 3758097085;
    goto LABEL_16;
  }

  v10 = [(PDController *)self registerRead:v9 ofLength:64 atAddress:registerCopy andOutReadLength:&v16];
  if (v10)
  {
LABEL_16:
    v12 = [NSString stringWithFormat:@"Status = 0x%08x\n", v10];
LABEL_17:
    [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:v12];
    goto LABEL_18;
  }

  if (v16 >= 0x40)
  {
    v11 = 64;
  }

  else
  {
    v11 = v16;
  }

  v16 = v11;
  v12 = off_100025A28(self, formatter, v9);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = v12;
  if ([v12 count])
  {
    if ([v12 count])
    {
      v13 = 0;
      do
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        if (v13)
        {
          [(PDController *)self printRegisterDescription:v14];
        }

        else
        {
          [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:v14];
        }

        ++v13;
      }

      while ([v12 count] > v13);
    }
  }

  else
  {
    [(PDController *)self printRegister:registerCopy withTitle:titleCopy andDescription:&stru_10001C6C8];
  }

LABEL_18:
  if (v9)
  {
    free(v9);
  }

  return v10;
}

- (void)printRegisterTitle:(id)title andDescription:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  uTF8String = [title UTF8String];
  uTF8String2 = [descriptionCopy UTF8String];

  printf("%s\t%s\n", uTF8String, uTF8String2);
}

- (id)registerFormatterDecimal8WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 1)
  {
    [NSString stringWithFormat:@"%d", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 1", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal16WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 2)
  {
    [NSString stringWithFormat:@"%d", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 2", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal32WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    [NSString stringWithFormat:@"%d", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal64WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 8)
  {
    [NSString stringWithFormat:@"%lld", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 8", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHex16WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 2)
  {
    [NSString stringWithFormat:@"0x%04x", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 2", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHex32WithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    [NSString stringWithFormat:@"0x%08x", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatter4CCWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    [NSString stringWithFormat:@"%c%c%c%c", *buffer, *(buffer + 1), *(buffer + 2), *(buffer + 3)];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length, v6, v7, v8];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterUUIDWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 16)
  {
    memset(out, 0, 37);
    uuid_unparse(buffer, out);
    [NSString stringWithFormat:@"%s", out];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHexDumpWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  v6 = +[NSMutableArray array];
  if (!length)
  {
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (!v8)
    {
      v8 = +[NSMutableString string];
      [(__CFString *)v8 appendFormat:@"0x%02llX\t", length];
      [(__CFString *)v8 appendString:@"0x"];
    }

    [(__CFString *)v8 appendFormat:@"%02X", *(buffer + v7++)];
  }

  while (length != v7);
  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v9 = 0;
    v8 = @"0x00";
  }

  [v6 addObject:v8];

  return v6;
}

- (id)registerFormatterHexDumpNarrowWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  v6 = +[NSMutableArray array];
  if (length)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v8)
      {
        v8 = +[NSMutableString string];
      }

      [v8 appendFormat:@"0x%02X ", *(buffer + v7++)];
      if ((v7 & 7) == 0 || v7 >= length)
      {
        [v6 addObject:v8];

        v8 = 0;
      }
    }

    while (length != v7);
  }

  else
  {
    v8 = 0;
  }

  return v6;
}

- (id)registerFormatterDecimal32MillisecondsWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    [NSString stringWithFormat:@"%d ms", *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterBCDVersionWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    [NSString stringWithFormat:@"%X.%X.%X", *(buffer + 1), *(buffer + 1), *buffer];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length, v6, v7];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterRxVDMWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  v6 = +[NSMutableString string];
  v7 = v6;
  if (length == 29)
  {
    v9 = *buffer;
    v8 = (buffer + 1);
    v10 = v9 & 7;
    [v6 appendFormat:@"seq=%d cnt=%d ", (v9 >> 5) & 3, v10];
    if (v10)
    {
      do
      {
        v11 = *v8++;
        [v7 appendFormat:@"0x%08X ", v11];
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    [v6 appendFormat:@"ERROR: length %lld != 29", length];
  }

  return v7;
}

- (id)registerFormatterVIDWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    if (*buffer == 40)
    {
      [NSString stringWithFormat:@"0x%08X (TI)", 40];
    }

    else if (*buffer == 2599)
    {
      [NSString stringWithFormat:@"0x%08X (Apple Inc.)", 2599];
    }

    else
    {
      [NSString stringWithFormat:@"0x%08X", *buffer];
    }
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDIDWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 4)
  {
    if (*buffer == 24)
    {
      [NSString stringWithFormat:@"0x%08X (PDControllerType1[USB-C])", 24];
    }

    else
    {
      [NSString stringWithFormat:@"0x%08X", *buffer];
    }
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }
  v4 = ;

  return v4;
}

@end