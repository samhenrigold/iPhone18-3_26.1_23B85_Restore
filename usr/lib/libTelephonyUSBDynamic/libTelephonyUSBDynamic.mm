BOOL _TelephonyUSBCreatePlugInInterface(io_service_t a1, const __CFUUID *a2, IOCFPlugInInterface ***a3, const char *a4, const void *a5)
{
  theScore = -1431655766;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = "???";
  }

  v10 = 5;
  while (1)
  {
    v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v12 = IOCreatePlugInInterfaceForService(a1, a2, v11, a3, &theScore);
    if (v12 != -536870210)
    {
      break;
    }

    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: No resources, trying again\n", v9, a5, "_TelephonyUSBCreatePlugInInterface");
    usleep(0x30D40u);
    if (!--v10)
    {
      return 0;
    }
  }

  if (!v12)
  {
    return *a3 != 0;
  }

  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to create plugin. ret = 0x%08x, iodev = %p\n", v9, a5, "_TelephonyUSBCreatePlugInInterface", v12, a3);
  return 0;
}

uint64_t TelephonyUSBIterateIterator(io_iterator_t a1, uint64_t a2)
{
  result = IOIteratorNext(a1);
  if (result)
  {
    v5 = result;
    do
    {
      (*(a2 + 16))(a2, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(a1);
      v5 = result;
    }

    while (result);
  }

  return result;
}

BOOL _TelephonyUSBAddNumberToDictionary<int>(void *a1, const void *a2, int a3)
{
  value = 0;
  v6 = CFGetAllocator(a1);
  LODWORD(valuePtr) = a3;
  v7 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  v8 = v7;
  if (v7)
  {
    v9 = value;
    value = v7;
    valuePtr = v9;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&valuePtr);
    CFDictionarySetValue(a1, a2, value);
  }

  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&value);
  return v8 != 0;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *TelephonyUSBRegisterForDevicesWithAllocator(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return Instance;
  }

  v14 = malloc(0x40uLL);
  Instance[2] = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *v14 = 0u;
  strncpy(v14 + 48, a6, 8uLL);
  v15[7] = a7;
  v15[4] = _Block_copy(a3);
  v15[5] = _Block_copy(a4);
  v16 = Instance[2];
  v17 = *(v16 + 56);
  *v16 = a2;
  v18 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  *(v16 + 16) = v18;
  v19 = MEMORY[0x29EDB8FC0];
  if (!v18)
  {
    goto LABEL_11;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v18);
  *(v16 + 8) = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_11;
  }

  CFRetain(RunLoopSource);
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Adding Source %p\n", (v16 + 48), v17, "_TelephonyUSBDeviceRegisterForDevicesInternal", *(v16 + 8));
  CFRunLoopAddSource(*v16, *(v16 + 8), *v19);
  CFRetain(a1);
  if (IOServiceAddMatchingNotification(*(v16 + 16), "IOServiceFirstMatch", a1, _TelephonyUSBDeviceRegistrationCheckDeviceAdded, v16, (v16 + 24)))
  {
    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to add added notfication, err = 0x%08x\n");
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  CFRetain(a1);
  if (IOServiceAddMatchingNotification(*(v16 + 16), "IOServiceTerminate", a1, _TelephonyUSBDeviceRegistrationCheckDeviceRemoved, v16, (v16 + 28)))
  {
    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to add removed notfication, err = 0x%08x\n");
    goto LABEL_11;
  }

  v21 = 1;
LABEL_12:
  v22 = Instance[2];
  v23 = *v22;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___TelephonyUSBDeviceRegistrationHandlePoll_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = v22;
  if (!v23)
  {
    ___TelephonyUSBDeviceRegistrationHandlePoll_block_invoke(block);
    if (v21)
    {
      return Instance;
    }

    goto LABEL_14;
  }

  CFRunLoopPerformBlock(v23, *v19, block);
  CFRunLoopWakeUp(v23);
  if ((v21 & 1) == 0)
  {
LABEL_14:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t TelephonyUSBDeviceCreateInterfaceWithAllocator(uint64_t a1, uint64_t a2, const char *a3, const void *a4)
{
  v6 = a1;
  if (qword_2A13A8BC8 != -1)
  {
    dispatch_once(&qword_2A13A8BC8, &__block_literal_global_18);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    v9 = (Instance + 16);
    *(Instance + 48) = 0u;
    strncpy((Instance + 48), a3, 8uLL);
    *(v8 + 56) = a4;
    interface = 0;
    v10 = _TelephonyUSBDeviceCreatePlugInInterface(v6, &interface, (v8 + 48), a4);
    v11 = interface;
    if (v10 && interface != 0)
    {
      QueryInterface = (*interface)->QueryInterface;
      v14 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu);
      v15 = CFUUIDGetUUIDBytes(v14);
      v16 = (QueryInterface)(v11, *&v15.byte0, *&v15.byte8, v8 + 24);
      IODestroyPlugInInterface(interface);
      v17 = *(v8 + 24);
      if (v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 == 0;
      }

      if (v18)
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to create a device interface. ret = 0x%08x, device = %p\n");
      }

      else if ((*(*v17 + 112))(v17, v8 + 22))
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to get product ID, ret = 0x%08x\n");
      }

      else
      {
        if (!(*(**(v8 + 24) + 104))(*(v8 + 24), v8 + 20))
        {
          _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Found device with Vendor ID 0x%08x, Product ID 0x%08x\n", (v8 + 48), a4, "_TelephonyUSBDeviceCreateInterfaceInternal", *(v8 + 20), *(v8 + 22));
          IOObjectRetain(v6);
          *v9 = v6;
          return v8;
        }

        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to get vendor ID, ret = 0x%08x\n");
      }
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

uint64_t TelephonyUSBDeviceRegisterForGeneralInterest(uint64_t a1, IONotificationPort *a2, const void *a3, const void *a4, const char *a5, const void *a6)
{
  result = malloc(0x10uLL);
  *(a1 + 40) = result;
  if (result)
  {
    v13 = result;
    *(result + 8) = a3;
    CFRetain(a3);
    *v13 = _Block_copy(a4);
    if (!a2)
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: notificationPort is NULL\n");
      return 0;
    }

    v14 = *(a1 + 40);
    if (!v14)
    {
      __TUAssertTrigger();
      v14 = *(a1 + 40);
    }

    v15 = IOServiceAddInterestNotification(a2, *(a1 + 16), "IOGeneralInterest", _TelephonyUSBDeviceHandleNotification, v14, (a1 + 32));
    v16 = "???";
    if (a5)
    {
      v16 = a5;
    }

    if (v15)
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: IOServiceAddInterestNotification failed, ret = 0x%08x\n");
      return 0;
    }

    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Registered for notifications\n", v16, a6, "_TelephonyUSBDeviceRegisterForGeneralInterestInternal");
    return 1;
  }

  return result;
}

BOOL TelephonyUSBDeviceIsValid(uint64_t a1)
{
  interface = 0;
  v1 = _TelephonyUSBDeviceCreatePlugInInterface(*(a1 + 16), &interface, (a1 + 48), *(a1 + 56));
  if (interface)
  {
    IODestroyPlugInInterface(interface);
  }

  return v1;
}

BOOL _TelephonyUSBDeviceCreatePlugInInterface(io_service_t a1, IOCFPlugInInterface ***a2, const char *a3, const void *a4)
{
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);

  return _TelephonyUSBCreatePlugInInterface(a1, v8, a2, a3, a4);
}

void _TelephonyUSBDeviceRegistrationHandleDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 24);
    if (v3)
    {
      IOObjectRelease(v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 28);
    if (v4)
    {
      IOObjectRelease(v4);
      *(v1 + 28) = 0;
    }

    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___TelephonyUSBDeviceRegistrationUnregisterForDevicesInternal_block_invoke;
    v14 = &__block_descriptor_tmp_7;
    v15 = v1;
    v5 = *v1;
    v6 = MEMORY[0x29EDB8FC0];
    if (*v1)
    {
      CFRunLoopPerformBlock(*v1, *MEMORY[0x29EDB8FC0], &block);
      CFRunLoopWakeUp(v5);
    }

    else
    {
      ___TelephonyUSBDeviceRegistrationUnregisterForDevicesInternal_block_invoke(&block);
    }

    v7 = *v1;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___TelephonyUSBDeviceRegistrationFreeCallbacks_block_invoke;
    v14 = &__block_descriptor_tmp_8;
    v15 = v1;
    if (v7)
    {
      CFRunLoopPerformBlock(v7, *v6, &block);
      CFRunLoopWakeUp(v7);
    }

    else
    {
      ___TelephonyUSBDeviceRegistrationFreeCallbacks_block_invoke(&block);
    }

    v8 = *v1;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___TelephonyUSBDeviceRegistrationHandleDestroy_block_invoke;
    v9[3] = &__block_descriptor_tmp_5;
    v9[4] = v1 + 48;
    v9[5] = v2;
    v10 = v1;
    if (v8)
    {
      CFRunLoopPerformBlock(v8, *v6, v9);
      CFRunLoopWakeUp(v8);
    }

    else
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", (v1 + 48), v2, "_TelephonyUSBDeviceRegistrationHandleDestroy_block_invoke");
      free(v10);
    }
  }
}

uint64_t _TelephonyUSBDeviceRegistrationCheckDeviceAdded(uint64_t a1)
{
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (a1 + 48), *(a1 + 56), "_TelephonyUSBDeviceRegistrationCheckDeviceAdded", *(a1 + 8));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t _TelephonyUSBDeviceRegistrationCheckDeviceRemoved(uint64_t a1)
{
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (a1 + 48), *(a1 + 56), "_TelephonyUSBDeviceRegistrationCheckDeviceRemoved", *(a1 + 8));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t _TelephonyUSBDeviceHandleDestroy(uint64_t a1)
{
  v2 = (a1 + 48);
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", (a1 + 48), *(a1 + 56), "_TelephonyUSBDeviceHandleDestroy");
  v3 = *(a1 + 32);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___TelephonyUSBDeviceFreeCallbacks_block_invoke;
    block[3] = &__block_descriptor_tmp_21;
    block[4] = v4;
    if (v5)
    {
      CFRunLoopPerformBlock(v5, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(v5);
    }

    else
    {
      ___TelephonyUSBDeviceFreeCallbacks_block_invoke(block);
    }

    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = (*(*v6 + 24))(v6);
    *(a1 + 24) = 0;
    if (v8)
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to release device, ret = 0x%08x\n", v2, v7, "_TelephonyUSBDeviceFreeInterfaceInternal", v8);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t _TelephonyUSBDeviceHandleNotification(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

void *TelephonyUSBRegisterForInterfacesWithAllocator(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const char *a6, const void *a7)
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v14 = malloc(0x40uLL);
    Instance[2] = v14;
    if (v14)
    {
      v15 = v14;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      *v14 = 0u;
      strncpy(v14 + 48, a6, 8uLL);
      *(v15 + 7) = a7;
    }

    else
    {
      CFRelease(Instance);
      Instance = 0;
    }
  }

  v16 = "???";
  if (a6)
  {
    v16 = a6;
  }

  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", v16, a7, "TelephonyUSBRegisterForInterfacesWithAllocator");
  if (!Instance)
  {
    return Instance;
  }

  v17 = Instance[2];
  *(v17 + 32) = _Block_copy(a3);
  *(v17 + 40) = _Block_copy(a4);
  v18 = Instance[2];
  v19 = *(v18 + 56);
  *v18 = a2;
  v20 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  *(v18 + 16) = v20;
  v21 = MEMORY[0x29EDB8FC0];
  if (v20)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v20);
    *(v18 + 8) = RunLoopSource;
    if (RunLoopSource)
    {
      CFRetain(RunLoopSource);
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Adding Source %p\n", (v18 + 48), v19, "_TelephonyUSBInterfaceRegisterForInterfacesInternal", *(v18 + 8));
      CFRunLoopAddSource(*v18, *(v18 + 8), *v21);
      CFRetain(a1);
      if (IOServiceAddMatchingNotification(*(v18 + 16), "IOServiceFirstMatch", a1, _TelephonyUSBInterfaceRegistrationCheckInterfacesAdded, v18, (v18 + 24)))
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to add added notfication, err = 0x%08x\n");
      }

      else
      {
        CFRetain(a1);
        if (!IOServiceAddMatchingNotification(*(v18 + 16), "IOServiceTerminate", a1, _TelephonyUSBInterfaceRegistrationCheckInterfacesRemoved, v18, (v18 + 28)))
        {
          v23 = 1;
          goto LABEL_17;
        }

        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to add removed notfication, err = 0x%08x\n");
      }
    }
  }

  v23 = 0;
LABEL_17:
  v24 = Instance[2];
  v25 = *v24;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___TelephonyUSBInterfaceRegistrationHandlePoll_block_invoke;
  block[3] = &__block_descriptor_tmp_18;
  block[4] = v24;
  if (!v25)
  {
    ___TelephonyUSBInterfaceRegistrationHandlePoll_block_invoke(block);
    if (v23)
    {
      return Instance;
    }

    goto LABEL_19;
  }

  CFRunLoopPerformBlock(v25, *v21, block);
  CFRunLoopWakeUp(v25);
  if ((v23 & 1) == 0)
  {
LABEL_19:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t TelephonyUSBInterfaceCreateInterfaceWithAllocator(uint64_t a1, uint64_t a2, const char *a3, const void *a4)
{
  v6 = a1;
  if (qword_2A13A8BE8 != -1)
  {
    dispatch_once(&qword_2A13A8BE8, &__block_literal_global_21);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    strncpy((Instance + 44), a3, 8uLL);
    *(v8 + 24) = -1;
    *(v8 + 56) = a4;
    v9 = "???";
    if (a3)
    {
      v9 = a3;
    }

    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", v9, a4, "TelephonyUSBInterfaceCreateInterfaceWithAllocator");
    interface = 0;
    v10 = *(v8 + 56);
    if (_TelephonyUSBInterfaceCreatePlugInInterface(v6, &interface, (v8 + 44), v10))
    {
      v11 = interface;
      QueryInterface = (*interface)->QueryInterface;
      v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x56u, 0x30u, 0x1Du, 0xF2u, 0x72u, 0xDEu, 0x40u, 0x4Bu, 0x91u, 0xEDu, 0xEDu, 0x30u, 0xBFu, 0x70u, 0x51u, 0x21u);
      v14 = CFUUIDGetUUIDBytes(v13);
      LODWORD(v11) = (QueryInterface)(v11, *&v14.byte0, *&v14.byte8, v8 + 32);
      IODestroyPlugInInterface(interface);
      v15 = *(v8 + 32);
      if (v11 || !v15)
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to create a Interface interface. ret = 0x%08x, Interface = %p\n");
      }

      else if ((*(*v15 + 112))(v15, v8 + 22))
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to get product ID, ret = 0x%08x\n");
      }

      else if ((*(**(v8 + 32) + 104))(*(v8 + 32), v8 + 20))
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to get vendor ID, ret = 0x%08x\n");
      }

      else
      {
        if (!(*(**(v8 + 32) + 136))(*(v8 + 32), v8 + 24))
        {
          _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Found Interface with Vendor ID 0x%08x, Product ID 0x%08x, Interface Number %u\n", (v8 + 44), v10, "_TelephonyUSBInterfaceCreateInterfaceInternal", *(v8 + 20), *(v8 + 22), *(v8 + 24));
          IOObjectRetain(v6);
          *(v8 + 16) = v6;
          return v8;
        }

        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to get interface number, ret = 0x%08x\n");
      }
    }

    CFRelease(v8);
    return 0;
  }

  else
  {
    v16 = "???";
    if (a3)
    {
      v16 = a3;
    }

    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", v16, a4, "TelephonyUSBInterfaceCreateInterfaceWithAllocator");
  }

  return v8;
}

BOOL TelephonyUSBInterfaceOpen(uint64_t a1, const char *a2, const void *a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "???";
  }

  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Opening IOUSBInterfaceInterface\n", v5, a3, "TelephonyUSBInterfaceOpen");
  v6 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Unable to open interface number %u, ret = 0x%08x\n", v5, a3, "TelephonyUSBInterfaceOpen", *(a1 + 24), v6);
  }

  else
  {
    *(a1 + 25) = 1;
  }

  return v7 == 0;
}

BOOL TelephonyUSBInterfaceIsValid(uint64_t a1)
{
  v1 = (a1 + 44);
  v2 = *(a1 + 56);
  interface = 0;
  v3 = _TelephonyUSBInterfaceCreatePlugInInterface(*(a1 + 16), &interface, (a1 + 44), v2);
  if (interface)
  {
    IODestroyPlugInInterface(interface);
  }

  if (!v3)
  {
    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: valid = 0\n", v1, v2, "TelephonyUSBInterfaceIsValid");
  }

  return v3;
}

BOOL _TelephonyUSBInterfaceCreatePlugInInterface(io_service_t a1, IOCFPlugInInterface ***a2, const char *a3, const void *a4)
{
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);

  return _TelephonyUSBCreatePlugInInterface(a1, v8, a2, a3, a4);
}

void _TelephonyUSBInterfaceRegistrationHandleDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 24);
    if (v3)
    {
      IOObjectRelease(v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 28);
    if (v4)
    {
      IOObjectRelease(v4);
      *(v1 + 28) = 0;
    }

    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal_block_invoke;
    v14 = &__block_descriptor_tmp_10;
    v15 = v1;
    v5 = *v1;
    v6 = MEMORY[0x29EDB8FC0];
    if (*v1)
    {
      CFRunLoopPerformBlock(*v1, *MEMORY[0x29EDB8FC0], &block);
      CFRunLoopWakeUp(v5);
    }

    else
    {
      ___TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal_block_invoke(&block);
    }

    v7 = *v1;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___TelephonyUSBInterfaceRegistrationFreeCallbacks_block_invoke;
    v14 = &__block_descriptor_tmp_11;
    v15 = v1;
    if (v7)
    {
      CFRunLoopPerformBlock(v7, *v6, &block);
      CFRunLoopWakeUp(v7);
    }

    else
    {
      ___TelephonyUSBInterfaceRegistrationFreeCallbacks_block_invoke(&block);
    }

    v8 = *v1;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___TelephonyUSBInterfaceRegistrationHandleDestroy_block_invoke;
    v9[3] = &__block_descriptor_tmp_8_0;
    v9[4] = v1 + 48;
    v9[5] = v2;
    v10 = v1;
    if (v8)
    {
      CFRunLoopPerformBlock(v8, *v6, v9);
      CFRunLoopWakeUp(v8);
    }

    else
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", (v1 + 48), v2, "_TelephonyUSBInterfaceRegistrationHandleDestroy_block_invoke");
      free(v10);
    }
  }
}

uint64_t _TelephonyUSBInterfaceRegistrationCheckInterfacesAdded(uint64_t a1)
{
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (a1 + 48), *(a1 + 56), "_TelephonyUSBInterfaceRegistrationCheckInterfacesAdded", *(a1 + 8));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t _TelephonyUSBInterfaceRegistrationCheckInterfacesRemoved(uint64_t a1)
{
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (a1 + 48), *(a1 + 56), "_TelephonyUSBInterfaceRegistrationCheckInterfacesRemoved", *(a1 + 8));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t _TelephonyUSBInterfaceHandleDestroy(uint64_t a1)
{
  v2 = (a1 + 44);
  result = _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", (a1 + 44), *(a1 + 56), "_TelephonyUSBInterfaceHandleDestroy");
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(a1 + 25) == 1)
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Closing IOUSBInterfaceInterface\n", v2, *(a1 + 56), "_TelephonyUSBInterfaceFreeInterfaceInternal");
      v6 = (*(*v5 + 72))(v5);
      if (v6)
      {
        _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Failed to close interface, ret = 0x%08x\n", v2, v4, "_TelephonyUSBInterfaceFreeInterfaceInternal", v6);
      }
    }

    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Releasing IOUSBInterfaceInterface\n", v2, v4, "_TelephonyUSBInterfaceFreeInterfaceInternal");
    result = (*(*v5 + 24))(v5);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 16))
  {
    _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Releasing io_service_t\n", v2, v4, "_TelephonyUSBInterfaceFreeInterfaceInternal");
    result = IOObjectRelease(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}