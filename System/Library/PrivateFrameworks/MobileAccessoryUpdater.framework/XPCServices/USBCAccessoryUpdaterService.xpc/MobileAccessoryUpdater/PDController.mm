@interface PDController
+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client;
+ (id)knownPDControllers;
+ (id)pdControllerForAddress:(unsigned int)address userClient:(id)client;
+ (id)pdControllerForVID:(unsigned int)d DID:(unsigned int)iD address:(unsigned int)address userClient:(id)client;
- (PDController)initWithAddress:(unsigned __int8)address userClient:(id)client;
- (int)executeIECSAtomicCommand:(unsigned __int8)command cmdBuffer:(void *)buffer dataBuffer:(void *)dataBuffer extDataBuffer:(void *)extDataBuffer returnDataBuffer:(void *)returnDataBuffer returnExtDataBuffer:(void *)returnExtDataBuffer inputDataLength:(unsigned __int16)length returnDataBufferLength:(unsigned __int16)self0 timeoutInSeconds:(unint64_t)self1;
- (int)executeIECSCommand:(unsigned int)command;
- (int)receiveVDM:(void *)m length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)receiveVDMAttention:(void *)attention length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)registerRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength;
- (int)registerWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address;
- (int)sendVDM:(void *)m length:(unint64_t)length sop:(int)sop;
@end

@implementation PDController

+ (id)knownPDControllers
{
  v20 = +[NSMutableArray array];
  v2 = +[AppleHPMUserClientManager sharedInstance];
  v3 = v2;
  if (v2)
  {
    userClientSet = [v2 userClientSet];
    v5 = [userClientSet copy];

    if (v5)
    {
      v19 = v3;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        ChildIterator = 0;
        v10 = "IOService";
        v11 = *v26;
        v21 = v6;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            iterator = 0;
            if (!ChildIterator)
            {
              ChildIterator = IORegistryEntryGetChildIterator([v13 service], v10, &iterator);
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
                      v23 = 0;
                      v22 = 0;
                      if (![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Address" outValue:&v23]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Vendor ID" outValue:&v22 + 4]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Device ID" outValue:&v22])
                      {
                        v16 = v10;
                        v17 = [PDController pdControllerForVID:HIDWORD(v22) DID:v22 address:v23 userClient:v13];
                        if (v17)
                        {
                          [v20 addObject:v17];
                        }

                        v10 = v16;
                        v6 = v21;
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

          v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v8);
      }

      v3 = v19;
    }
  }

  return v20;
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
  v6 = off_1000242E0;
  if (d != 40)
  {
    v6 = off_1000242E8;
  }

  v7 = [(__objc2_class *)*v6 createWithDeviceAddress:address userClient:client];

  return v7;
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
  v11.receiver = self;
  v11.super_class = PDController;
  v7 = [(PDController *)&v11 init];
  v8 = v7;
  if (!v7 || ([(PDController *)v7 setAddress:addressCopy], [(PDController *)v8 setUserClient:clientCopy], [(PDController *)v8 userClient], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {

    v8 = 0;
  }

  return v8;
}

- (int)registerRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength
{
  addressCopy = address;
  userClient = [(PDController *)self userClient];
  LODWORD(readLength) = [userClient iecsReadCommandForDevice:-[PDController address](self withAddress:"address") buffer:addressCopy length:read flags:length andOutReadLength:{0, readLength}];

  return readLength;
}

- (int)registerWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address
{
  addressCopy = address;
  userClient = [(PDController *)self userClient];
  v10 = [userClient iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:addressCopy length:write flags:{length, 0}];

  return v10;
}

- (int)executeIECSCommand:(unsigned int)command
{
  v3 = *&command;
  userClient = [(PDController *)self userClient];
  LODWORD(v3) = [userClient iecsCommand:v3 forDevice:-[PDController address](self flags:{"address"), 0}];

  return v3;
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

- (int)executeIECSAtomicCommand:(unsigned __int8)command cmdBuffer:(void *)buffer dataBuffer:(void *)dataBuffer extDataBuffer:(void *)extDataBuffer returnDataBuffer:(void *)returnDataBuffer returnExtDataBuffer:(void *)returnExtDataBuffer inputDataLength:(unsigned __int16)length returnDataBufferLength:(unsigned __int16)self0 timeoutInSeconds:(unint64_t)self1
{
  commandCopy = command;
  if ([(PDController *)self remote])
  {
    return -536870201;
  }

  userClient = [(PDController *)self userClient];
  LODWORD(v22) = 0;
  LODWORD(v21) = __PAIR32__(bufferLength, length);
  v20 = [userClient iecsAtomicCommand:commandCopy cmdBuffer:buffer dataBuffer:dataBuffer extDataBuffer:extDataBuffer returnDataBuffer:returnDataBuffer returnExtDataBuffer:returnExtDataBuffer inputDataLength:v21 returnDataBufferLength:seconds timeoutInSeconds:-[PDController address](self forDevice:"address") flags:v22];

  return v20;
}

@end