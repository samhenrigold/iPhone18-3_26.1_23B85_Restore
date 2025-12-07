@interface AppleLatticeServiceRef
- (AppleLatticeServiceRef)init;
- (BOOL)getInterfaceUpdateEvents:(id)events;
- (BOOL)setShuttingDown:(BOOL)down;
- (void)dealloc;
@end

@implementation AppleLatticeServiceRef

- (AppleLatticeServiceRef)init
{
  v3.receiver = self;
  v3.super_class = AppleLatticeServiceRef;
  if ([(AppleLatticeServiceRef *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)getInterfaceUpdateEvents:(id)events
{
  v40 = *MEMORY[0x29EDCA608];
  eventsCopy = events;
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke;
  v33[3] = &unk_29F3800A0;
  v5 = eventsCopy;
  v34 = v5;
  v6 = MEMORY[0x29EDA87F0](v33);
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke_2;
  v31[3] = &unk_29F3800A0;
  v7 = v5;
  v32 = v7;
  v8 = MEMORY[0x29EDA87F0](v31);
  ptr = self->_client.__ptr_;
  v10 = v8;
  v11 = MEMORY[0x29EDA87F0](v6);
  v12 = *(ptr + 3);
  *(ptr + 3) = v11;

  v13 = MEMORY[0x29EDA87F0](v10);
  v14 = *(ptr + 4);
  *(ptr + 4) = v13;

  v15 = IOServiceMatching("AppleLatticeDPDKService");
  v16 = *MEMORY[0x29EDBB110];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v15);
  v19 = MatchingService;
  if (MatchingService)
  {
    v20 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 2u, ptr);
    if (v20)
    {
    }

    else
    {
      v22 = dispatch_queue_create("connection_queue", 0);
      v23 = *(ptr + 2);
      *(ptr + 2) = v22;

      v24 = IONotificationPortCreate(v16);
      *(ptr + 1) = v24;
      IONotificationPortSetDispatchQueue(v24, *(ptr + 2));
      MachPort = IONotificationPortGetMachPort(*(ptr + 1));
      reference[0] = 0;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      *&v37 = ptr;
      v26 = IOConnectCallAsyncScalarMethod(*ptr, 0, MachPort, reference, 3u, 0, 0, 0, 0);
      v27 = *(ptr + 2);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN12_GLOBAL__N_113LatticeClient20registerNotificationEv_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = ptr;
      dispatch_async(v27, block);
      if (!v26)
      {
        v29 = 1;
        goto LABEL_9;
      }

      IOObjectRelease(*ptr);
      *ptr = 0;
    }

    IOObjectRelease(v19);
  }

  else
  {
  }

  NSLog(&cfstr_FailedToStartT.isa);
  v29 = 0;
LABEL_9:

  return v29;
}

void __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v22[9] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:128];
  for (i = 0; i != 128; ++i)
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 156 + i)];
    [v3 addObject:v5];
  }

  v22[0] = v3;
  v21[0] = @"externalId";
  v21[1] = @"macAddr";
  v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *(a2 + 418), *(a2 + 419), *(a2 + 420), *(a2 + 421), *(a2 + 422), *(a2 + 423)];
  v22[1] = v17;
  v21[2] = @"mtu";
  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 424)];
  v22[2] = v16;
  v21[3] = @"mapInKernel";
  v6 = [MEMORY[0x29EDBA070] numberWithBool:*(a2 + 428)];
  v22[3] = v6;
  v21[4] = @"offloads";
  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 426)];
  v22[4] = v7;
  v21[5] = @"slot";
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 427)];
  v22[5] = v8;
  v21[6] = @"isDelete";
  v9 = [MEMORY[0x29EDBA070] numberWithBool:*(a2 + 24)];
  v22[6] = v9;
  v21[7] = @"internalId";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 412) & 0x1FF];
  v22[7] = v10;
  v21[8] = @"portId";
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 416)];
  v22[8] = v11;
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:9];
  v13 = [v12 mutableCopy];

  if (*(a2 + 432))
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2 + 432];
    [v13 setObject:v14 forKeyedSubscript:@"bsdName"];
  }

  v19 = @"event";
  v20 = v13;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  (*(*(a1 + 32) + 16))();
}

void __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v6 = @"error";
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setShuttingDown:(BOOL)down
{
  ptr = self->_client.__ptr_;
  inputStruct = down;
  outputStruct = 0;
  outputStructCnt = 4;
  v4 = IOConnectCallStructMethod(*ptr, 4u, &inputStruct, 1uLL, &outputStruct, &outputStructCnt);
  v6 = v4;
  if (v4)
  {
  }

  return v6 == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppleLatticeServiceRef;
  [(AppleLatticeServiceRef *)&v3 dealloc];
}

@end