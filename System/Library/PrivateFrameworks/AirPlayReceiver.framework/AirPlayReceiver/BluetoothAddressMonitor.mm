@interface BluetoothAddressMonitor
- (BluetoothAddressMonitor)initWithSystemInfo:(OpaqueAPReceiverSystemInfo *)info queue:(id)queue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BluetoothAddressMonitor

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    nonConnectableAdvertisingAddress = [(CBPeripheralManager *)self->_cbManager nonConnectableAdvertisingAddress];
    if (nonConnectableAdvertisingAddress)
    {
      CFRetain(v8);
      v10 = nonConnectableAdvertisingAddress;
      queue = self->_queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __74__BluetoothAddressMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v12[3] = &unk_278C60A58;
      v12[4] = nonConnectableAdvertisingAddress;
      v12[5] = v8;
      dispatch_async(queue, v12);
    }

    CFRelease(v8);
  }

  else
  {
  }
}

void __74__BluetoothAddressMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 720);
  if (v4 != v3)
  {
    v5 = !v3 || v4 == 0;
    if (v5 || !CFEqual(v4, v3))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        v6 = IsAppleInternalBuild();
        v7 = IsAppleInternalBuild();
        v8 = *(v2 + 720);
        if (v8)
        {
          BytePtr = CFDataGetBytePtr(v8);
        }

        else
        {
          BytePtr = 0;
        }

        v10 = IsAppleInternalBuild();
        v11 = IsAppleInternalBuild();
        if (v3)
        {
          v12 = CFDataGetBytePtr(v3);
        }

        else
        {
          v12 = 0;
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleBluetoothAddressChange(APReceiverSystemInfoRef, CFDataRef)", 33554482, "Bluetooth address changed%?s%?.6a%?s%?.6a\n", v6, ": ", v7, BytePtr, v10, " -> ", v11, v12);
      }

      v13 = *(v2 + 720);
      if (v3)
      {
        CFRetain(v3);
      }

      *(v2 + 720) = v3;
      if (v13)
      {
        CFRelease(v13);
      }

      sysInfo_updateAdvertiserInfoAndNotify(v2, @"BluetoothAddressChanged", 0);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetValue(Mutable, @"NonUrgent", *MEMORY[0x277CBED28]);
        sysInfo_updateAdvertiserInfoAndNotify(v2, @"AdvertisingParameterChanged", v15);
        CFRelease(v15);
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  CFRelease(*(a1 + 40));
  v16 = *(a1 + 32);
}

- (BluetoothAddressMonitor)initWithSystemInfo:(OpaqueAPReceiverSystemInfo *)info queue:(id)queue
{
  v9.receiver = self;
  v9.super_class = BluetoothAddressMonitor;
  v5 = [(BluetoothAddressMonitor *)&v9 init];
  if (v5)
  {
    v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v5->_systemInfoWeak = v6;
    if (v6 && (v5->_queue = queue) != 0)
    {
      dispatch_retain(queue);
      v7 = objc_opt_new();
      v5->_cbManager = v7;
      [(CBPeripheralManager *)v7 addObserver:v5 forKeyPath:@"advertisingAddress" options:5 context:0];
    }

    else
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  self->_cbManager = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  systemInfoWeak = self->_systemInfoWeak;
  if (systemInfoWeak)
  {
    CFRelease(systemInfoWeak);
    self->_systemInfoWeak = 0;
  }

  v5.receiver = self;
  v5.super_class = BluetoothAddressMonitor;
  [(BluetoothAddressMonitor *)&v5 dealloc];
}

@end