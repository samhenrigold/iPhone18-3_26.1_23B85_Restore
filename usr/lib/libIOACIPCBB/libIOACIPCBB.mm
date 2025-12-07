void IOACIPCBBClass::~IOACIPCBBClass(IOACIPCBBClass *this)
{
  *this = &unk_2A1E5C268;
  IOACIPCClass::stop(this, 0);
  v2 = *(this + 23);
  if (v2)
  {
    _Block_release(v2);
    *(this + 23) = 0;
  }

  MEMORY[0x2A1C6D990](this);
}

{
  IOACIPCBBClass::~IOACIPCBBClass(this);

  JUMPOUT(0x29C277FF0);
}

uint64_t IOACIPCBBClass::openRing(mach_port_t *a1, int a2, int a3, void *a4)
{
  if (!a4)
  {
    return 3758097090;
  }

  IOACIPCClass::lock(a1);
  inputStruct[0] = a3;
  inputStruct[1] = a2;
  v14 = 0;
  v15 = 0;
  v12 = 32;
  v8 = a1[43];
  v9 = (*(*a1 + 224))(a1, 17);
  v10 = IOConnectCallStructMethod(v8, v9, inputStruct, 0x18uLL, a4, &v12);
  IOACIPCClass::unlock(a1);
  return v10;
}

uint64_t IOACIPCBBClass::closeRing(mach_port_t *a1, int a2, int a3)
{
  IOACIPCClass::lock(a1);
  inputStruct[0] = a3;
  inputStruct[1] = a2;
  v11 = 0;
  v12 = 0;
  v6 = a1[43];
  v7 = (*(*a1 + 224))(a1, 18);
  v8 = IOConnectCallStructMethod(v6, v7, inputStruct, 0x18uLL, 0, 0);
  IOACIPCClass::unlock(a1);
  return v8;
}

uint64_t IOACIPCBBClass::enableRingEvents(uint64_t a1, uint64_t a2)
{
  input = a2 != 0;
  IOACIPCClass::lock(a1);
  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 184);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 184) = 0;
  }

  if (a2)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN14IOACIPCBBClass16enableRingEventsEU13block_pointerFvvE_block_invoke;
    v9[3] = &unk_29EE82780;
    v9[4] = a2;
    *(a1 + 184) = _Block_copy(v9);
  }

  os_unfair_lock_unlock((a1 + 144));
  v5 = *(a1 + 172);
  v6 = (*(*a1 + 224))(a1, 19);
  v7 = IOConnectCallScalarMethod(v5, v6, &input, 1u, 0, 0);
  IOACIPCClass::unlock(a1);
  return v7;
}

uint64_t IOACIPCBBClass::readIndexArrays(mach_port_t *this)
{
  IOACIPCClass::lock(this);
  v2 = this[43];
  v3 = (*(*this + 224))(this, 20);
  v4 = IOConnectCallStructMethod(v2, v3, 0, 0, 0, 0);
  IOACIPCClass::unlock(this);
  return v4;
}

uint64_t IOACIPCBBClass::updateIndexArrays(mach_port_t *a1, const void *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  IOACIPCClass::lock(a1);
  v4 = a1[43];
  v5 = (*(*a1 + 224))(a1, 21);
  v6 = IOConnectCallStructMethod(v4, v5, a2, 0x68uLL, 0, 0);
  IOACIPCClass::unlock(a1);
  return v6;
}

uint64_t IOACIPCBBClass::mapUserMemory(mach_port_t *this, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  v4 = 3758097090;
  if (a2 && a3)
  {
    IOACIPCClass::lock(this);
    input[0] = a2;
    input[1] = a3;
    outputCnt = 1;
    v9 = this[43];
    v10 = (*(*this + 224))(this, 22);
    v4 = IOConnectCallScalarMethod(v9, v10, input, 2u, a4, &outputCnt);
    IOACIPCClass::unlock(this);
  }

  return v4;
}

uint64_t IOACIPCBBClass::unmapUserMemory(IOACIPCBBClass *this, uint64_t a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 3758097090;
  }

  v2 = a2;
  IOACIPCClass::lock(this);
  v7[0] = v2;
  LODWORD(v2) = *(this + 43);
  v4 = (*(*this + 224))(this, 23);
  v5 = IOConnectCallScalarMethod(v2, v4, v7, 1u, 0, 0);
  IOACIPCClass::unlock(this);
  return v5;
}

uint64_t IOACIPCBBClass::mapIndexArrays(mach_port_t *this, uint64_t a2, int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  v3 = 3758097090;
  if (a2 && a3 == 104)
  {
    IOACIPCClass::lock(this);
    input[0] = a2;
    input[1] = 104;
    v6 = this[43];
    v7 = (*(*this + 224))(this, 24);
    v3 = IOConnectCallScalarMethod(v6, v7, input, 2u, 0, 0);
    IOACIPCClass::unlock(this);
  }

  return v3;
}

uint64_t IOACIPCBBClass::unmapIndexArrays(mach_port_t *this)
{
  IOACIPCClass::lock(this);
  v2 = this[43];
  v3 = (*(*this + 224))(this, 25);
  v4 = IOConnectCallScalarMethod(v2, v3, 0, 0, 0, 0);
  IOACIPCClass::unlock(this);
  return v4;
}

uint64_t IOACIPCBBClass::timesyncAsync(IONotificationPortRef *this, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, void (*a6)(void *, int, void *), void *a7)
{
  v26 = *MEMORY[0x29EDCA608];
  IOACIPCClass::lock(this);
  if (this[12])
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v24 = v14;
    v25 = v14;
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    reference[1] = a6;
    v22 = a7;
    v15 = *(this + 43);
    v16 = (*(*this + 28))(this, 14);
    MachPort = IONotificationPortGetMachPort(this[12]);
    v18 = IOConnectCallAsyncScalarMethod(v15, v16, MachPort, reference, 3u, input, 4u, 0, 0);
    IOACIPCClass::unlock(this);
  }

  else
  {
    IOACIPCClass::unlock(this);
    return 3758097112;
  }

  return v18;
}

uint64_t IOACIPCBBClass::registerTimeEvent(IONotificationPortRef *this, unsigned int a2, void (*a3)(void *, int, void **, unsigned int), void *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  IOACIPCClass::lock(this);
  if (this[12])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v18 = v8;
    v19 = v8;
    input = a2;
    reference[1] = a3;
    v16 = a4;
    v9 = *(this + 43);
    v10 = (*(*this + 28))(this, 15);
    MachPort = IONotificationPortGetMachPort(this[12]);
    v12 = IOConnectCallAsyncScalarMethod(v9, v10, MachPort, reference, 3u, &input, 1u, 0, 0);
    IOACIPCClass::unlock(this);
  }

  else
  {
    IOACIPCClass::unlock(this);
    return 3758097112;
  }

  return v12;
}

uint64_t IOACIPCBBClass::deregisterTimeEvent(IONotificationPortRef *this, unsigned int a2, void (*a3)(void *, int), void *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  IOACIPCClass::lock(this);
  if (this[12])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v18 = v8;
    v19 = v8;
    input = a2;
    reference[1] = a3;
    v16 = a4;
    v9 = *(this + 43);
    v10 = (*(*this + 28))(this, 16);
    MachPort = IONotificationPortGetMachPort(this[12]);
    v12 = IOConnectCallAsyncScalarMethod(v9, v10, MachPort, reference, 3u, &input, 1u, 0, 0);
    IOACIPCClass::unlock(this);
  }

  else
  {
    IOACIPCClass::unlock(this);
    return 3758097112;
  }

  return v12;
}

void *IOACIPCBBClass::copyNotificationHandler(IOACIPCBBClass *this, int a2, void *a3)
{
  if (a2 != -469794304)
  {
    return MEMORY[0x2A1C6D928](this);
  }

  result = *(this + 23);
  if (result)
  {
    return _Block_copy(result);
  }

  return result;
}

uint64_t IOACIPCBBControlClass::hostSleepEntryExit(mach_port_t *this, unsigned int a2)
{
  IOACIPCControlClass::lock(this);
  input = a2;
  v4 = IOConnectCallScalarMethod(this[42], 6u, &input, 1u, 0, 0);
  IOACIPCControlClass::unlock(this);
  return v4;
}

void IOACIPCBBNetCfgClass::AppleCellularDataPlaneNotification(IOACIPCBBNetCfgClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v19 = *MEMORY[0x29EDCA608];
  v8 = *(this + 2);
  if ((v8 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AppleCellularDataPlaneNotification";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = v6;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: AppleCellularDataPlane Notification received: 0x%x\n", buf, 0x12u);
  }

  if (v6 != -469794512)
  {
    if (v6 == -536870896)
    {
      if ((v8 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315138;
        *&buf[1] = "AppleCellularDataPlaneNotification";
        _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: AppleCellularDataPlane terminated\n", buf, 0xCu);
      }

      (*(*this + 24))(this, a2, a3, a4, a5);
    }

    return;
  }

  if ((v8 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AppleCellularDataPlaneNotification";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = v5;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: AppleCellularDataPlane Offloading Request Received, rule-id: %u\n", buf, 0x12u);
  }

  memset(buf, 0, 60);
  pthread_mutex_lock((this + 16));
  if (!*(this + 14))
  {
LABEL_21:
    pthread_mutex_unlock((this + 16));
    return;
  }

  if ((v8 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "AppleCellularDataPlaneNotification";
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Retrieving Filter Rule Data, rule-id: %u\n", &v12, 0x12u);
  }

  FilterRule = IOACIPCBBNetCfgClass::getFilterRule(this, v5, buf);
  if (FilterRule)
  {
    if (v8)
    {
      v10 = FilterRule;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "AppleCellularDataPlaneNotification";
        v14 = 1024;
        v15 = v5;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: ERROR: AppleCellularDataPlane Offloading Request has no Data, rule-id: %u, result: 0x%x\n", &v12, 0x18u);
      }
    }

    goto LABEL_21;
  }

  v11 = _Block_copy(*(this + 14));
  pthread_mutex_unlock((this + 16));
  if (v11)
  {
    v11[2](v11, buf);
    _Block_release(v11);
  }
}

uint64_t IOACIPCBBNetCfgClass::getFilterRule(uint64_t a1, unsigned int a2, void *a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 3758097090;
  }

  input[0] = a2;
  if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "getFilterRule";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Requesting FilterRule data (rule-id = %u)\n", buf, 0x12u);
  }

  pthread_mutex_lock((a1 + 16));
  v8 = 60;
  v6 = IOConnectCallMethod(*(a1 + 84), 8u, input, 1u, 0, 0, 0, 0, a3, &v8);
  pthread_mutex_unlock((a1 + 16));
  if (v6 && (*(a1 + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "getFilterRule";
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Requesting FilterRule data failed (0x%x)\n", buf, 0x12u);
  }

  return v6;
}

void IOACIPCBBNetCfgClass::IOACIPCBBNetCfgClass(IOACIPCBBNetCfgClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E5C380;
  *(this + 2) = 1;
  *(this + 10) = 0;
  *(this + 120) = 0;
  v5.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v5.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_settype(&v5, 2);
  pthread_mutex_init((this + 16), &v5);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("IOACIPCBBNetCfgClass", v2);
  *(this + 11) = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C277FD0](exception, "Unable to allocate DispatchQueue");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }
}

void IOACIPCBBNetCfgClass::~IOACIPCBBNetCfgClass(IOACIPCBBNetCfgClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = &unk_2A1E5C380;
  *this = &unk_2A1E5C380;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "~IOACIPCBBNetCfgClass";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: \n", &v4, 0xCu);
    v2 = *this;
  }

  v2[3](this);
  v3 = *(this + 11);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global);
    dispatch_release(*(this + 11));
    *(this + 11) = 0;
  }

  pthread_mutex_destroy((this + 16));
}

{
  IOACIPCBBNetCfgClass::~IOACIPCBBNetCfgClass(this);

  JUMPOUT(0x29C277FF0);
}

void sub_2979A2A30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL IOACIPCBBNetCfgClass::start(IOACIPCBBNetCfgClass *this, const __CFDictionary *a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  existing = -1431655766;
  pthread_mutex_lock((this + 16));
  if (*(this + 20))
  {
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "start";
      _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Service already available\n", buf, 0xCu);
    }

    v6 = 1;
    goto LABEL_6;
  }

  CFRetain(a2);
  if (IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], a2, &existing))
  {
    v6 = 0;
    goto LABEL_11;
  }

  v8 = IOIteratorNext(existing);
  v6 = v8 != 0;
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = MEMORY[0x29EDCA988];
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v9, @"sim-context", v10, 0);
    if (!CFProperty)
    {
      if ((*(this + 8) & 2) != 0 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "start";
        _os_log_impl(&dword_2979A1000, v11, OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: IOService has no SIM context assigned\n", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v13 = CFProperty;
    v14 = CFGetTypeID(CFProperty);
    if (v14 != CFNumberGetTypeID())
    {
      if ((*(this + 8) & 1) == 0 || !os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      v22 = "start";
      v17 = v11;
      v18 = "IOACIPCBBNetCfgClass::%s: ERROR: SIM context wrong type\n";
      goto LABEL_31;
    }

    valuePtr = -21846;
    Value = CFNumberGetValue(v13, kCFNumberSInt16Type, &valuePtr);
    v16 = *(this + 2);
    if (Value)
    {
      break;
    }

    if ((v16 & 1) == 0 || !os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 136315138;
    v22 = "start";
    v17 = v11;
    v18 = "IOACIPCBBNetCfgClass::%s: ERROR: unable to read SIM context\n";
LABEL_31:
    _os_log_impl(&dword_2979A1000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_32:
    CFRelease(v13);
LABEL_33:
    v9 = IOIteratorNext(existing);
    v6 = v9 != 0;
    if (!v9)
    {
      goto LABEL_34;
    }
  }

  if ((v16 & 2) != 0 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "start";
    v23 = 1024;
    v24 = valuePtr;
    _os_log_impl(&dword_2979A1000, v11, OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: SIM context: %d\n", buf, 0x12u);
  }

  if (valuePtr != a3)
  {
    goto LABEL_32;
  }

  *(this + 20) = v9;
  IOObjectRetain(v9);
  IOACIPCBBNetCfgClass::setNotificationPort(this);
  if (*(this + 24))
  {
    IOACIPCBBNetCfgClass::start();
  }

  if (IOServiceAddInterestNotification(*(this + 13), *(this + 20), "IOGeneralInterest", IOACIPCBBNetCfgClass::AppleCellularDataPlaneNotification, this, this + 24))
  {
    IOACIPCBBNetCfgClass::start();
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "start";
    v23 = 1024;
    v24 = valuePtr;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Service selected with sim-context: %d\n", buf, 0x12u);
  }

  CFRelease(v13);
LABEL_34:
  IOObjectRelease(existing);
LABEL_6:
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "start";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: --done\n", buf, 0xCu);
  }

LABEL_11:
  pthread_mutex_unlock((this + 16));
  return v6;
}

void IOACIPCBBNetCfgClass::setNotificationPort(IOACIPCBBNetCfgClass *this)
{
  if (!*(this + 13))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 13) = v2;
    if (!v2)
    {
      IOACIPCBBNetCfgClass::setNotificationPort();
    }

    v3 = *(this + 11);
    if (v3)
    {

      IONotificationPortSetDispatchQueue(v2, v3);
    }
  }
}

uint64_t IOACIPCBBNetCfgClass::stop(IOACIPCBBNetCfgClass *this)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "stop";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: \n", &v7, 0xCu);
  }

  IOACIPCBBNetCfgClass::close_nl(this);
  v2 = *(this + 20);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 20) = 0;
  }

  v3 = *(this + 24);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 24) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(this + 13) = 0;
  }

  v5 = *(this + 14);
  if (v5)
  {
    _Block_release(v5);
    *(this + 14) = 0;
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "stop";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: --done\n", &v7, 0xCu);
  }

  pthread_mutex_unlock((this + 16));
  return 1;
}

uint64_t IOACIPCBBNetCfgClass::close_nl(IOACIPCBBNetCfgClass *this)
{
  if (*(this + 120) != 1)
  {
    return 0;
  }

  *(this + 120) = 0;
  v2 = IOConnectCallScalarMethod(*(this + 21), 1u, 0, 0, 0, 0);
  v3 = *(this + 21);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 21) = 0;
  }

  return v2;
}

void IOACIPCBBNetCfgClass::clearNotificationPort(IOACIPCBBNetCfgClass *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(this + 13) = 0;
  }
}

uint64_t IOACIPCBBNetCfgClass::open(IOACIPCBBNetCfgClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "open";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: \n", &v4, 0xCu);
  }

  v2 = IOACIPCBBNetCfgClass::open_nl(this);
  pthread_mutex_unlock((this + 16));
  return v2;
}

uint64_t IOACIPCBBNetCfgClass::open_nl(IOACIPCBBNetCfgClass *this)
{
  v14 = *MEMORY[0x29EDCA608];
  outputCnt = 0;
  v8 = 0;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "open_nl";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: \n", buf, 0xCu);
  }

  if (*(this + 120) == 1)
  {
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "open_nl";
      _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: is open\n", buf, 0xCu);
    }

    return 0;
  }

  v3 = *(this + 20);
  if (v3)
  {
    v4 = IOServiceOpen(v3, *MEMORY[0x29EDCA6B0], 0, this + 21);
    if (v4)
    {
      v2 = v4;
      if ((*(this + 8) & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        return v2;
      }

      *buf = 136315394;
      v11 = "open_nl";
      v12 = 1024;
      v13 = v2;
      v5 = MEMORY[0x29EDCA988];
      v6 = "IOACIPCBBNetCfgClass::%s: open failed: 0x%x\n";
LABEL_22:
      _os_log_impl(&dword_2979A1000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
      return v2;
    }

    v2 = IOConnectCallScalarMethod(*(this + 21), 0, &v8, 1u, 0, &outputCnt);
    if (!v2)
    {
      *(this + 120) = 1;
      return v2;
    }

    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "open_nl";
      v12 = 1024;
      v13 = v2;
      v5 = MEMORY[0x29EDCA988];
      v6 = "IOACIPCBBNetCfgClass::%s: kACDPNetCfgUserClientOpen failed: 0x%x\n";
      goto LABEL_22;
    }
  }

  else
  {
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "open_nl";
      _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: no service\n", buf, 0xCu);
    }

    return 3758096385;
  }

  return v2;
}

uint64_t IOACIPCBBNetCfgClass::close(IOACIPCBBNetCfgClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "close";
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: \n", &v4, 0xCu);
  }

  v2 = IOACIPCBBNetCfgClass::close_nl(this);
  pthread_mutex_unlock((this + 16));
  return v2;
}

uint64_t IOACIPCBBNetCfgClass::addNetIf(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 3758097090;
  }

  if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = a2[2];
    v8 = a2[3];
    *buf = 136315906;
    v13 = "addNetIf";
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Adding Network Interface (id = %u, prioUL = %u, rss = %u)\n", buf, 0x1Eu);
  }

  pthread_mutex_lock((a1 + 16));
  v11 = 478;
  v9 = IOConnectCallMethod(*(a1 + 84), 2u, 0, 0, a2, 0x1CuLL, 0, 0, a3, &v11);
  pthread_mutex_unlock((a1 + 16));
  if (v9 && (*(a1 + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "addNetIf";
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Adding Network Interface failed (0x%x)\n", buf, 0x12u);
  }

  return v9;
}

uint64_t IOACIPCBBNetCfgClass::removeNetIf(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v6[0] = a2;
  v4 = IOConnectCallScalarMethod(*(this + 21), 3u, v6, 1u, 0, 0);
  pthread_mutex_unlock((this + 16));
  return v4;
}

uint64_t IOACIPCBBNetCfgClass::stopNetIfRx(IOACIPCBBNetCfgClass *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v9[3] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IOConnectCallScalarMethod(*(this + 21), 5u, v9, 3u, 0, 0);
  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::startNetIfRx(IOACIPCBBNetCfgClass *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v9[3] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IOConnectCallScalarMethod(*(this + 21), 4u, v9, 3u, 0, 0);
  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::stopNetIfTx(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v5[0] = a2;
  IOConnectCallScalarMethod(*(this + 21), 7u, v5, 1u, 0, 0);
  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::startNetIfTx(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v5[0] = a2;
  IOConnectCallScalarMethod(*(this + 21), 6u, v5, 1u, 0, 0);
  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::registerFilterRuleCallBack(IOACIPCBBNetCfgClass *this, const void *a2)
{
  if (a2)
  {
    pthread_mutex_lock((this + 16));
    v4 = *(this + 14);
    if (v4)
    {
      _Block_release(v4);
      *(this + 14) = 0;
    }

    *(this + 14) = _Block_copy(a2);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    IOACIPCBBNetCfgClass::unregisterFilterRuleCallBack(this);
  }

  return 0;
}

uint64_t IOACIPCBBNetCfgClass::unregisterFilterRuleCallBack(IOACIPCBBNetCfgClass *this)
{
  pthread_mutex_lock((this + 16));
  v2 = *(this + 14);
  if (v2)
  {
    _Block_release(v2);
    *(this + 14) = 0;
  }

  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::completeFilterRule(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "completeFilterRule";
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Completing FilterRule (rule-id = %u)\n", &v6, 0x12u);
  }

  v4 = IOConnectCallScalarMethod(*(this + 21), 9u, input, 1u, 0, 0);
  pthread_mutex_unlock((this + 16));
  if (v4 && (*(this + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "completeFilterRule";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: FilterRule was completed after Timeout or Baseband was reset meanwhile (0x%x)\n", &v6, 0x12u);
  }

  return v4;
}

uint64_t IOACIPCBBNetCfgClass::cancelFilterRuleCompletion(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "cancelFilterRuleCompletion";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Cancelling FilterRule Completion (rule-id = %u)\n", &v5, 0x12u);
  }

  IOConnectCallScalarMethod(*(this + 21), 0xAu, input, 1u, 0, 0);
  return pthread_mutex_unlock((this + 16));
}

uint64_t IOACIPCBBNetCfgClass::testOffload(IOACIPCBBNetCfgClass *this, unsigned int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "testOffload";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_2979A1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCBBNetCfgClass::%s: Testing Offload FilterRule (interface-id = %u)\n", &v5, 0x12u);
  }

  return IOConnectCallScalarMethod(*(this + 21), 0xBu, input, 1u, 0, 0);
}

void IOACIPCBBNetCfgClass::start()
{
  __assert_rtn("start", "IOACIPCBBNetCfgClass.cpp", 192, "!fNotificationObject");
}

{
  __assert_rtn("start", "IOACIPCBBNetCfgClass.cpp", 198, "kr == KERN_SUCCESS");
}

void operator delete()
{
    ;
  }
}