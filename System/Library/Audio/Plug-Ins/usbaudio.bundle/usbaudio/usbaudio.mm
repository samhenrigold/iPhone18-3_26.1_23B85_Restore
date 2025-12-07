int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v3 - 8);
  qword_100179460 = 0xD000000000000013;
  *algn_100179468 = 0x800000010012A2F0;
  sub_100001A14();
  v4 = static OS_os_log.default.getter();
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("usbaudiod started", 17, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  qword_100179470 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  type metadata accessor for DriverPlugin();
  static DriverPlugin.registerActiveDriverInLoop()();
  dispatch_main();
}

unint64_t sub_100001A14()
{
  result = qword_100173C90;
  if (!qword_100173C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173C90);
  }

  return result;
}

uint64_t sub_100001AB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001AFC()
{
  result = qword_100173CA0;
  if (!qword_100173CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173CA0);
  }

  return result;
}

void sub_100001B50(uint64_t a1@<X8>)
{
  sub_100001A14();
  v2 = static OS_os_log.default.getter();
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("usbaudiod accepted XPC connection", 33, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  *(a1 + 24) = &type metadata for Bool;
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = 1;
}

uint64_t AUAGetBootArg(void *a1, uint64_t a2)
{
  v3 = [a1 cStringUsingEncoding:4];

  return _os_parse_boot_arg_int(v3, a2);
}

uint64_t IOUSBGetEndpointBurstSize_ValidatePtrs(signed int a1, IOUSBEndpointDescriptor *descriptor, uint64_t a3, uint64_t a4)
{
  v8 = IOUSBGetEndpointType(descriptor);
  result = IOUSBGetEndpointMaxPacketSize(a1, descriptor);
  v10 = 0;
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return (result + result * ((descriptor->wMaxPacketSize >> 11) & 3));
    }

    return v10;
  }

  if ((a1 - 5) < 2)
  {
    if (!v8)
    {
      return result;
    }

    if (v8 == 1)
    {
      if (!a3)
      {
        return result;
      }

      v11 = *(a3 + 3);
      if (a4 && v11 < 0)
      {
        return *(a4 + 4);
      }

LABEL_18:
      v12 = result + result * *(a3 + 2);
      return (v12 + v12 * (v11 & 3));
    }

LABEL_19:
    if (a3)
    {
      return result + result * *(a3 + 2);
    }

    return result;
  }

  if (a1 != 4)
  {
    return v10;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      if (!a3)
      {
        return result;
      }

      LOBYTE(v11) = *(a3 + 3);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  return result;
}

void *AudioDeviceRealtimeGetZeroTimestampBlock(void *a1)
{
  v1 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001EE4;
  v5[3] = &unk_100159C68;
  v5[4] = [v1 timestamps];
  v5[5] = [v1 seed];
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

uint64_t sub_100001EE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = atomic_load((v4 + 64));
  v6 = (v4 + 8 * v5);
  v7 = atomic_load(v6 + 4);
  *a3 = v7;
  v8 = atomic_load(v6);
  *a2 = v8;
  *a4 = *(a1 + 40);
  return 0;
}

void *AudioDeviceCreateGenericWillDoBlock(char a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001FB0;
  v4[3] = &unk_100159C88;
  v5 = a1;
  v1 = objc_retainBlock(v4);
  v2 = objc_retainBlock(v1);

  return v2;
}

uint64_t sub_100001FB0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = 1970171760;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 32);
      *a4 = 1;
    }
  }

  return result;
}

NSObject *CreateFixedPriorityDispatchQueue(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"%s.workloop", a1];
  inactive = dispatch_workloop_create_inactive([v3 UTF8String]);

  if (inactive)
  {
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
    v5 = dispatch_queue_attr_make_initially_inactive(0);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

    v7 = [NSString stringWithFormat:@"%s.queue", a1];
    v8 = dispatch_queue_create([v7 UTF8String], v6);

    if (v8)
    {
      dispatch_set_target_queue(v8, inactive);
      dispatch_activate(v8);
      v9 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100002148()
{
  v0 = objc_autoreleasePoolPush();
  dword_1001794B8 = 0;
  qword_1001794C0 = 0;

  objc_autoreleasePoolPop(v0);
}

char *AUAPeriodicEventRTImpl::AUAPeriodicEventRTImpl(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  *a1 = off_100159CB8;
  *(a1 + 2) = 0;
  *(a1 + 2) = a3;
  *(a1 + 3) = a4;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 21) = &stru_100167E00;
  *(a1 + 22) = 0;
  v12 = [v11 copy];
  v13 = *(a1 + 4);
  *(a1 + 4) = v12;

  objc_storeStrong(a1 + 21, a2);
  if (pthread_mutex_init((a1 + 40), 0))
  {
    __assert_rtn("AUAPeriodicEventRTImpl", "AUAPeriodicEventRT.mm", 102, "!error");
  }

  pthread_cond_init((a1 + 112), 0);
  if (pthread_attr_init(&v19))
  {
    v17 = "!error";
    v18 = 108;
    goto LABEL_10;
  }

  *(a1 + 2) = 1;
  v14 = os_workgroup_interval_create();
  v15 = *(a1 + 22);
  *(a1 + 22) = v14;

  if (!*(a1 + 22))
  {
    v17 = "_workgroup";
    v18 = 115;
    goto LABEL_10;
  }

  if (pthread_create(a1 + 13, &v19, AUAPeriodicEventRTImpl::eventThread, a1))
  {
    v17 = "!error";
    v18 = 119;
LABEL_10:
    __assert_rtn("AUAPeriodicEventRTImpl", "AUAPeriodicEventRT.mm", v18, v17);
  }

  pthread_attr_destroy(&v19);

  return a1;
}

uint64_t AUAPeriodicEventRTImpl::eventThread(AUAPeriodicEventRTImpl *this, void *a2)
{
  mach_timebase_info(&info);
  LODWORD(policy_info) = this->var3;
  HIDWORD(policy_info) = 3000000 * info.denom / info.numer;
  v21 = 4000000 * info.denom / info.numer;
  v22 = 0;
  v3 = mach_thread_self();
  if (thread_policy_set(v3, 2u, &policy_info, 4u))
  {
    sub_10011B904();
  }

  if (os_workgroup_join(this->var10, &this->var11))
  {
    sub_10011B930();
  }

  pthread_setname_np([this->var9 UTF8String]);
  while (1)
  {
    result = pthread_mutex_lock(&this->var5);
    var1 = this->var1;
    if (var1 != 1)
    {
      break;
    }

    this->var8 = 0;
    var6 = this->var6;
    if (var6 == pthread_self())
    {
      pthread_cond_wait(&this->var7, &this->var5);
    }

LABEL_6:
    pthread_mutex_unlock(&this->var5);
  }

  if (var1 == 2)
  {
    v7 = mach_absolute_time();
    var8 = this->var8;
    if (var8)
    {
      if (!this->var4)
      {
        var2 = this->var2;
        goto LABEL_29;
      }

      v9 = v7 + v21;
      v10 = v7;
      v11 = os_workgroup_interval_start(this->var10, v7 - 1, v9, 0);
      if (v11)
      {
        NSLog(@"Failed to start work interval: %d, start %llu deadline %llu\n", v11, v10, v9, policy_info);
      }

      this->var8 = (*(this->var4 + 2))();
      if (os_workgroup_interval_finish(this->var10, 0))
      {
        sub_10011B95C();
      }

      v12 = this->var8;
      if (v12 < mach_absolute_time())
      {
        do
        {
          var8 = this->var2;
          var2 = this->var8;
LABEL_29:
          v18 = var2 + var8;
LABEL_27:
          this->var8 = v18;
        }

        while (v18 < mach_absolute_time());
      }

      v13 = this->var8;
      v14 = mach_absolute_time();
      if ((atomic_load_explicit(&qword_100179668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100179668))
      {
        mach_timebase_info(&v24);
        qword_100179660 = v24.tv_sec;
        __cxa_guard_release(&qword_100179668);
      }

      v15 = v13 - v14;
      if (qword_100179660 != HIDWORD(qword_100179660))
      {
        v15 = v15 * qword_100179660 / HIDWORD(qword_100179660);
      }

      v16 = this->var6;
      if (v16 == pthread_self())
      {
        if (v15 >= 0x3B9ACA00)
        {
          v17 = v15 / 0x3B9ACA00;
          v15 %= 0x3B9ACA00uLL;
        }

        else
        {
          v17 = 0;
        }

        v24.tv_sec = v17;
        v24.tv_nsec = v15;
        pthread_cond_timedwait_relative_np(&this->var7, &this->var5, &v24);
      }

      goto LABEL_6;
    }

    v18 = this->var2 + v7;
    goto LABEL_27;
  }

  if (var1)
  {
    __break(1u);
  }

  else
  {
    pthread_mutex_unlock(&this->var5);
    os_workgroup_leave(this->var10, &this->var11);
    return 0;
  }

  return result;
}

void AUAPeriodicEventRTImpl::~AUAPeriodicEventRTImpl(AUAPeriodicEventRTImpl *this)
{
  this->var0 = off_100159CB8;
  p_var5 = &this->var5;
  pthread_mutex_lock(&this->var5);
  this->var1 = 0;
  pthread_cond_signal(&this->var7);
  pthread_mutex_unlock(p_var5);
  pthread_join(this->var6, 0);
  pthread_cond_destroy(&this->var7);
  pthread_mutex_destroy(p_var5);
}

{
  AUAPeriodicEventRTImpl::~AUAPeriodicEventRTImpl(this);

  operator delete();
}

void sub_100002BDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AUAPeriodicEventRT;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

BOOL controllerHasHardwareTimestamping(IOUSBHostObject *a1)
{
  v1 = a1;
  v5 = 0;
  v2 = [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0];
  usleep(0x1F4u);
  if ([(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]== v2 || (usleep(0x1F4u), [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]== v2))
  {

    return 0;
  }

  else
  {
    usleep(0x1F4u);
    v4 = [(IOUSBHostObject *)v1 referenceMicroframeWithTime:&v5 error:0]!= v2;

    return v4;
  }
}

void sub_100002E1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1001796A0);

  _Unwind_Resume(a1);
}

void sub_100002E9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = USBFrameTimeCorrelater;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_100003480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1000034DC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1000034F4(uint64_t a1)
{
  v2 = mach_absolute_time();
  ++*(*(*(a1 + 32) + 8) + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = a1 + 40;
    v6 = v2 - *(*(*(a1 + 40) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (v6 > *(*(*(a1 + 56) + 8) + 24))
      {
        v7 = 644;
LABEL_21:
        ++*&v4[v7];
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *(*(*(a1 + 40) + 8) + 24) = qword_100179678 + *(*(*(a1 + 40) + 8) + 24) - qword_100179688;
        goto LABEL_28;
      }

      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [WeakRetained updateTimestampsWithRetries:v8];
    if (!v9)
    {
      v7 = 640;
      goto LABEL_21;
    }

    v10 = mach_absolute_time();
    v11 = *(*(a1 + 64) + 8);
    v12 = 10 * qword_100179688;
    if (10 * qword_100179688 >= qword_100179688 + v6)
    {
      v12 = qword_100179688 + v6;
    }

    v13 = v11[5].i64[0];
    v11[3].i64[v13] = v12;
    if ((v13 + 1) <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v11[5].i64[0] = v14;
    v15 = vbslq_s8(vcgtq_u64(v11[3], v11[4]), v11[3], v11[4]);
    v16 = vextq_s8(v15, v15, 8uLL).u64[0];
    *(*(*(a1 + 56) + 8) + 24) = vbsl_s8(vcgtd_u64(v15.u64[0], v16), *v15.i8, v16);
    *(v4 + 76) = *(v4 + 75);
    *(v4 + 75) = *(*(*(a1 + 56) + 8) + 24);
    v17 = *(v4 + 77);
    if (v6 > v17)
    {
      v17 = v6;
    }

    *(v4 + 77) = v17;
    v18 = v10 - v2;
    if (v10 - v2 <= *(v4 + 78))
    {
      v18 = *(v4 + 78);
    }

    *(v4 + 78) = v18;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) > 4uLL;
    if (*(v4 + 25) < 5uLL)
    {
      v20 = *(*(*(a1 + 48) + 8) + 24);
      v22 = qword_100179678;
      v21 = qword_100179680;
      sub_100004348(v4 + 64, &v27);
      if (v20)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v28 / *&qword_100179670 * v23) - *(*(*(a1 + 56) + 8) + 24);
      v19 = qword_100179690;
      if (qword_100179690 >= v24)
      {
        v19 = v24;
      }
    }

    else
    {
      v19 = qword_100179690;
    }

    *(*(*v5 + 8) + 24) = &v9[v19];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 40) + 8) + 24) = qword_100179678 + mach_absolute_time();
    v5 = a1 + 40;
  }

LABEL_28:
  v25 = *(*(*v5 + 8) + 24);

  return v25;
}

void sub_100003C68(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_1001796B0);

  _Unwind_Resume(a1);
}

void sub_100003C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *&qword_100179670;
  v7 = (a1 + 192);
  sub_100004348((a1 + 192), &v21);
  if (v21.n128_u64[0])
  {
    v8 = v21.n128_u64[1] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = (a3 - v21.n128_u64[1]) / (a2 - v21.n128_u64[0]);
  *(a1 + 128) = v9 + *(a1 + 128);
  v11 = *(a1 + 136);
  v10 = *(a1 + 144);
  v12 = *(a1 + 8 * v10);
  *(a1 + 8 * v10) = v9;
  v13 = v10 + 1;
  *(a1 + 136) = v11 + 1;
  *(a1 + 144) = v13;
  if (v11 <= 0xF)
  {
    v14 = v13;
    if (v13 < 0x10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 128) = *(a1 + 128) - v12;
  v14 = 16.0;
  if (v13 >= 0x10)
  {
LABEL_9:
    *(a1 + 144) = 0;
  }

LABEL_10:
  v6 = *(a1 + 128) / v14;
LABEL_11:
  v15 = 0;
  while (1)
  {
    v16 = atomic_load(v7);
    if ((v16 & 1) == 0)
    {
      v17 = v16;
      atomic_compare_exchange_strong(v7, &v17, v16 | 1);
      if (v17 == v16)
      {
        break;
      }
    }

    if (++v15 == 100)
    {
      sched_yield();
      v15 = 0;
    }
  }

  v18 = v16 >> 2;
  v19 = v16 & 0xFFFFFFFC;
  v20 = a1 + (((v16 >> 2) & 3) << 6);
  atomic_store((2 * (v18 & 0x3FFFFFFF)) | 1, (v20 + 256));
  *(v20 + 264) = a2;
  *(v20 + 272) = a3;
  *(v20 + 280) = v6;
  __dmb(0xBu);
  atomic_store(2 * v18, (v20 + 256));
  atomic_store((v19 + 5) & 0xFFFFFFFC | 2, (a1 + 192));
}

void sub_100004254(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_1001796B0);

  _Unwind_Resume(a1);
}

__n128 sub_100004348@<Q0>(unsigned int *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = atomic_load(a1);
  if ((v3 & 2) != 0)
  {
    v6 = 0;
    v7 = a1 + 16;
    do
    {
      v8 = &v7[16 * (((v3 >> 2) - 1) & 3)];
      explicit = atomic_load_explicit(v8, memory_order_acquire);
      if (explicit & 1) != 0 && (v8 = &v7[16 * ((v3 >> 2) & 3 ^ 2)], explicit = atomic_load_explicit(v8, memory_order_acquire), (explicit))
      {
        if (++v6 == 100)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __dmb(9u);
        result = *(v8 + 2);
        *a2 = result;
        a2[1].n128_u64[0] = *(v8 + 3);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v8, memory_order_acquire))
        {
          return result;
        }

        if (++v6 == 100)
        {
LABEL_11:
          sched_yield();
          v6 = 0;
        }
      }

      v3 = atomic_load(a1);
    }

    while ((v3 & 2) != 0);
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  result.n128_u64[0] = qword_100179670;
  a2[1].n128_u64[0] = qword_100179670;
  return result;
}

void sub_100004424()
{
  v0 = objc_autoreleasePoolPush();
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v1 = 125000.0;
  }

  else
  {
    v1 = (125000 * HIDWORD(qword_100179698) / qword_100179698);
  }

  qword_100179670 = *&v1;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  v2 = 200000000;
  if (qword_100179698 != HIDWORD(qword_100179698))
  {
    v2 = 200000000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179678 = v2;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v3 = 2048000000;
  }

  else
  {
    v3 = 2048000000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179680 = v3;
  qword_100179690 = qword_100179678 + v3;
  if ((atomic_load_explicit(&qword_1001796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001796A0))
  {
    mach_timebase_info(&info);
    qword_100179698 = info;
    __cxa_guard_release(&qword_1001796A0);
  }

  if (qword_100179698 == HIDWORD(qword_100179698))
  {
    v4 = 50000;
  }

  else
  {
    v4 = 50000 * HIDWORD(qword_100179698) / qword_100179698;
  }

  qword_100179688 = v4;
  objc_autoreleasePoolPop(v0);
}

BOOL IsAUARTInputTransferBlockOkToEnqueue(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = mach_absolute_time() - v1;
  if (v1)
  {
    v3 = v2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  info = 0;
  mach_timebase_info(&info);
  if (info.numer != info.denom)
  {
    v2 = v2 * info.numer / info.denom;
  }

  return v2 > 0x7A1200;
}

unint64_t PrepareAUARTInputTransferBlock(unsigned int *a1, uint64_t a2)
{
  *(a1 + 5) = a2;
  *(a1 + 6) = -1;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0x7FFFFFFFLL;
  *(a1 + 9) = 0;
  result = memset(*(a1 + 3), a1[5], a1[4]);
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 4);
    v6 = a1[1];
    v7 = *(a1 + 1);
    if (v4 == 1)
    {
      v8 = 0;
LABEL_7:
      v12 = v6 * v8;
      v13 = v5 + 28 * v8 + 12;
      v14 = v4 - v8;
      do
      {
        *(v13 - 12) = 0;
        *(v13 - 8) = v6;
        *(v13 - 4) = v12;
        *v13 = -1;
        v12 += v6;
        *(v13 + 4) = v7;
        *(v13 + 12) = 0;
        v13 += 28;
        --v14;
      }

      while (v14);
      return result;
    }

    v9 = 0;
    v8 = v4 & 0xFFFFFFFE;
    v10 = v5 + 32;
    v11 = v8;
    do
    {
      *(v10 - 32) = 0;
      *(v10 - 28) = v6;
      result = v6 + v9;
      *v10 = v6;
      *(v10 + 4) = result;
      *(v10 - 24) = v9;
      *(v10 - 20) = -1;
      *(v10 + 8) = -1;
      *(v10 - 16) = v7;
      *(v10 - 8) = 0;
      *(v10 + 12) = v7;
      *(v10 + 20) = 0;
      v10 += 56;
      v9 += 2 * v6;
      v11 -= 2;
    }

    while (v11);
    if (v8 != v4)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t AUARecordBlockCompletion(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4, unsigned int a5, void *a6, _DWORD *a7)
{
  if (*a1 < a4)
  {
    *(a1 + 48) = a3;
    return 0;
  }

  LODWORD(v8) = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = a3 % a2;
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = a3 % a2;
  v14 = *a1 / a4;
  while (2)
  {
    v15 = 0;
    for (i = v12; i; --i)
    {
      v17 = *v10;
      if (*v10 == -536870169 || v17 == 0)
      {
        v19 = v10[3] / a5;
        if (!*a6)
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      if (v17 != -536870168)
      {
        break;
      }

      v19 = v10[1] / a5;
      if (!*a6)
      {
LABEL_19:
        v13 += v19;
        if (v13 >= a2)
        {
          *a6 = *(a1 + 40) + v9;
          *a7 = a2 - v11;
        }
      }

LABEL_9:
      v15 += v19;
      v10 += 7;
    }

    v8 = (v15 + v8);
    LODWORD(v11) = v11 + v15;
    if (++v9 < v14)
    {
      continue;
    }

    break;
  }

  *(a1 + 48) = a3;
  return v8;
}

void *AUARealtimeReadInputBlock(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x5810000000;
  v12[3] = &unk_100135581;
  v12[4] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = 0;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000049B0;
  v9[3] = &unk_100159D08;
  v9[4] = v12;
  v9[5] = a7;
  v10 = a2;
  v11 = a4;
  v7 = objc_retainBlock(v9);
  _Block_object_dispose(v12, 8);

  return v7;
}

uint64_t sub_1000049B0(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = 2003329396;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  v5 = *(a3 + 80);
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 56);
  v9 = *(v7 + 44);
  if (*(v7 + 80) != *(v8 + 80 * *(v7 + 72) + 48))
  {
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v8 + 48);
      do
      {
        v15 = *v13;
        v13 += 10;
        v14 = v15;
        if (v15 != -1 && v15 > v12)
        {
          v12 = v14;
          v11 = v10;
        }

        ++v10;
      }

      while (v9 != v10);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *(v8 + 80 * v11 + 68) = 1;
    *(v7 + 80) = v12;
    *(v7 + 72) = v11;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 56);
    LODWORD(v9) = *(v7 + 44);
  }

  v16 = *(v7 + 40);
  __dst = *(v7 + 64);
  v17 = *(v7 + 48);
  v18 = (v8 + 80 * *(v7 + 72));
  v20 = v18 + 15;
  v19 = v18[15];
  v21 = *v18;
  if (v19 >= v21)
  {
LABEL_54:
    v4 = 0;
    goto LABEL_55;
  }

  v62 = v5;
  v63 = a1;
  v65 = a4;
  v22 = v18[14];
  v23 = *(v18 + 6);
  v24 = -1;
  v64 = a2;
  v60 = v7;
  v61 = a2;
  v58 = v9;
  v59 = v8;
  while (2)
  {
    v25 = 0;
    v66 = *(v18 + 3);
    v26 = v22 + v23;
    while (1)
    {
      v27 = (*(v18 + 4) + 28 * v19);
      v28 = *v27;
      if ((*v27 + 536870169) >= 2 && v28 != 0)
      {
        v4 = 2003329396;
        v6 = v62;
        if (v28 == -536870911)
        {
          v42 = 1;
          a4 = v65;
          a2 = v64;
          a1 = v63;
          if (v24 == -1)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v42 = 0;
          a4 = v65;
          a2 = v64;
          a1 = v63;
          if (v24 == -1)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_51;
      }

      v30 = v27[3];
      if (v30 == -1)
      {
        ++v25;
        v42 = 1;
        if (v19 >= v21)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == -536870168;
      }

      v32 = v27[2];
      if (v31)
      {
        v33 = v27[1];
      }

      else
      {
        v33 = v27[3];
      }

      v34 = (v66 + v32);
      v35 = v26 % v17;
      v36 = v33 / v16;
      v37 = v17 - v35;
      if (v36 + v35 <= v17)
      {
        v37 = v36;
      }

      if (v36 + v35 >= v17)
      {
        v38 = v36 + v35 - v17;
      }

      else
      {
        v38 = 0;
      }

      v39 = v37 * v16;
      if (v37 * v16)
      {
        memcpy(&__dst[v16 * v35], v34, v37 * v16);
      }

      v40 = v38 * v16;
      if (v40)
      {
        memcpy(__dst, &v34[v39], v40);
      }

      v24 = v26 + v36;
      v41 = v18[14] + v36;
      v18[14] = v41;
      *v20 = ++v19;
      v21 = *v18;
      if (v19 == v21)
      {
        break;
      }

      v25 = 0;
      v26 += v36;
      v42 = 1;
      if (v19 >= v21)
      {
        goto LABEL_45;
      }

LABEL_41:
      if (v25 >= 2)
      {
        goto LABEL_45;
      }
    }

    *(v60 + 80) = *(v18 + 6) + v41;
    v43 = mach_absolute_time();
    v22 = 0;
    v19 = 0;
    *(v18 + 9) = v43;
    *(v60 + 72) = (*(v60 + 72) + 1) % v58;
    v18 = (v59 + 80 * *(v60 + 72));
    v18[15] = 0;
    v20 = v18 + 15;
    v18[14] = 0;
    v23 = *(v60 + 80);
    *(v18 + 6) = v23;
    v21 = *v18;
    if (v21)
    {
      continue;
    }

    break;
  }

  v42 = 1;
LABEL_45:
  v4 = 2003329396;
  a4 = v65;
  a2 = v64;
  v6 = v62;
  a1 = v63;
  if (v24 == -1)
  {
LABEL_53:
    if (!v42)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_51:
  v44 = v24 - (v6 + v61);
  v45 = v18[16];
  if (v45 <= v44 && v45 != 0x7FFFFFFF)
  {
    goto LABEL_53;
  }

  v18[16] = v44;
  if (v42)
  {
    goto LABEL_54;
  }

LABEL_55:
  v46 = *(a1 + 40);
  v47 = *(a1 + 48);
  v48 = *(a1 + 52);
  v49 = v6 % v48;
  v50 = v48 - v49;
  v51 = v49 + a2 >= v48;
  v52 = v49 + a2 - v48;
  if (v52 != 0 && v51)
  {
    v53 = v50;
  }

  else
  {
    v53 = a2;
  }

  if (!v51)
  {
    v52 = 0;
  }

  v54 = (v53 * v47);
  v55 = (v52 * v47);
  if (v54)
  {
    v56 = a4;
    memcpy(a4, &v46[v47 * v49], v54);
    a4 = v56;
  }

  if (v55)
  {
    memcpy(&a4[v54], v46, v55);
  }

  return v4;
}

uint64_t AUARealtimeCopyToRingBufferManualWrap515C(int a1, unint64_t a2, unsigned int a3, float32x4_t *a4, uint64_t a5, unsigned int a6, unsigned int a7, float a8)
{
  v8 = a6 * a1;
  v9 = (a5 + v8);
  v10 = a2 % a6;
  v11 = v10 + a3;
  v12 = a6 - v10;
  v13 = v10 + a3 - a6;
  if (v10 + a3 <= a6)
  {
    v12 = a3;
  }

  if (v11 < a6)
  {
    v13 = 0;
  }

  v14 = v12 * a1;
  v15 = (v13 * a1);
  if (!v14)
  {
    goto LABEL_55;
  }

  v16 = (v10 * a1);
  v17 = a5 + v16;
  v18 = v14 >> 2;
  if (((v12 * a1) & 4) != 0)
  {
    if (v14 > 0x1F)
    {
      v22 = 0;
      v21 = (v14 >> 2) & 0x3FFFFFF8;
      v23 = a4 + 1;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v21;
      do
      {
        v27 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v23, a8)), v24), v25), 8uLL);
        v28 = (v17 + 4 * v22);
        *v28 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v23[-1], a8)), v24), v25), 8uLL);
        v28[1] = v27;
        v22 += 8;
        v23 += 2;
        v26 -= 8;
      }

      while (v26);
      if (v18 == v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
    }

    do
    {
      v29 = (a4->f32[v21] * a8);
      if (v29 >= 0x7FFFFF)
      {
        v29 = 0x7FFFFF;
      }

      if (v29 <= -8388608)
      {
        v29 = -8388608;
      }

      *(v17 + 4 * v21++) = v29 << 8;
    }

    while (v18 > v21);
  }

  else
  {
    if (v14 < 4)
    {
      goto LABEL_28;
    }

    v19 = 2;
    if (v18 > 2)
    {
      v19 = v14 >> 2;
    }

    if (v14 <= 0x1B)
    {
      v20 = 0;
LABEL_26:
      v37 = &a4->f32[v20];
      do
      {
        v38 = *v37++;
        *(v17 + 4 * v20) = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(v38, a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
        v20 += 2;
      }

      while (v18 > v20);
      goto LABEL_28;
    }

    v30 = 0;
    v31 = ((v19 - 1) >> 1) + 1;
    v20 = 2 * (v31 & 0x7FFFFFFFFFFFFFFCLL);
    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v34 = v31 & 0x7FFFFFFFFFFFFFFCLL;
    v35 = a4;
    do
    {
      v105 = vld2q_f32(v35->f32);
      v35 += 2;
      v109.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v105.val[0], a8)), v32), v33), 8uLL);
      v109.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v105.val[1], a8)), v32), v33), 8uLL);
      v36 = (v17 + 8 * v30);
      vst2q_f32(v36, v109);
      v30 += 4;
      v34 -= 4;
    }

    while (v34);
    if (v31 != (v31 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  if (v16 >= a7)
  {
    goto LABEL_55;
  }

  v39 = a7 - v16;
  v40 = v9 + v16;
  if (v39 >= v14)
  {
    v41 = v14;
  }

  else
  {
    v41 = v39;
  }

  v42 = v41 >> 2;
  if ((v41 & 4) != 0)
  {
    if (v41 > 0x1F)
    {
      v46 = 0;
      v45 = (v41 >> 2) & 0x3FFFFFF8;
      v47 = a4 + 1;
      v48.i64[0] = 0x7F0000007FLL;
      v48.i64[1] = 0x7F0000007FLL;
      v49.i64[0] = 0x7F0000007FLL;
      v49.i64[1] = 0x7F0000007FLL;
      v50 = v45;
      do
      {
        v51 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v47, a8)), v48), v49), 8uLL);
        v52 = &v40[4 * v46];
        *v52 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v47[-1], a8)), v48), v49), 8uLL);
        v52[1] = v51;
        v46 += 8;
        v47 += 2;
        v50 -= 8;
      }

      while (v50);
      if (v42 == v45)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v45 = 0;
    }

    do
    {
      v53 = (a4->f32[v45] * a8);
      if (v53 >= 0x7FFFFF)
      {
        v53 = 0x7FFFFF;
      }

      if (v53 <= -8388608)
      {
        v53 = -8388608;
      }

      *&v40[4 * v45++] = v53 << 8;
    }

    while (v42 > v45);
  }

  else
  {
    if (v41 < 4)
    {
      goto LABEL_55;
    }

    if (v42 <= 2)
    {
      v43 = 2;
    }

    else
    {
      v43 = v41 >> 2;
    }

    if (v41 <= 0x1B)
    {
      v44 = 0;
LABEL_53:
      v61 = &a4->f32[v44];
      do
      {
        v62 = *v61++;
        *&v40[4 * v44] = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(v62, a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
        v44 += 2;
      }

      while (v42 > v44);
      goto LABEL_55;
    }

    v54 = 0;
    v55 = ((v43 - 1) >> 1) + 1;
    v44 = 2 * (v55 & 0x7FFFFFFFFFFFFFFCLL);
    v56.i64[0] = 0x7F0000007FLL;
    v56.i64[1] = 0x7F0000007FLL;
    v57.i64[0] = 0x7F0000007FLL;
    v57.i64[1] = 0x7F0000007FLL;
    v58 = v55 & 0x7FFFFFFFFFFFFFFCLL;
    v59 = a4;
    do
    {
      v106 = vld2q_f32(v59->f32);
      v59 += 2;
      v110.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v106.val[0], a8)), v56), v57), 8uLL);
      v110.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v106.val[1], a8)), v56), v57), 8uLL);
      v60 = &v40[8 * v54];
      vst2q_f32(v60, v110);
      v54 += 4;
      v58 -= 4;
    }

    while (v58);
    if (v55 != (v55 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_53;
    }
  }

LABEL_55:
  if (!v15)
  {
    goto LABEL_104;
  }

  v63 = v15 >> 2;
  v64 = a4 + v14;
  if ((v15 & 4) != 0)
  {
    if (v15 > 0x1F)
    {
      v68 = 0;
      v67 = (v15 >> 2) & 0x3FFFFFF8;
      v69 = (a5 + 16);
      v70.i64[0] = 0x7F0000007FLL;
      v70.i64[1] = 0x7F0000007FLL;
      v71.i64[0] = 0x7F0000007FLL;
      v71.i64[1] = 0x7F0000007FLL;
      v72 = v67;
      do
      {
        v73 = &v64[4 * v68];
        v74 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v73[1], a8)), v70), v71), 8uLL);
        v69[-1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v73, a8)), v70), v71), 8uLL);
        *v69 = v74;
        v68 += 8;
        v69 += 2;
        v72 -= 8;
      }

      while (v72);
      if (v63 == v67)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v67 = 0;
    }

    do
    {
      v75 = (*&v64[4 * v67] * a8);
      if (v75 >= 0x7FFFFF)
      {
        v75 = 0x7FFFFF;
      }

      if (v75 <= -8388608)
      {
        v75 = -8388608;
      }

      *(a5 + 4 * v67++) = v75 << 8;
    }

    while (v63 > v67);
  }

  else if (v15 >= 4)
  {
    v65 = 2;
    if (v63 > 2)
    {
      v65 = v15 >> 2;
    }

    if (v15 > 0x1B)
    {
      v76 = 0;
      v77 = ((v65 - 1) >> 1) + 1;
      v66 = 2 * (v77 & 0x7FFFFFFFFFFFFFFCLL);
      v78.i64[0] = 0x7F0000007FLL;
      v78.i64[1] = 0x7F0000007FLL;
      v79.i64[0] = 0x7F0000007FLL;
      v79.i64[1] = 0x7F0000007FLL;
      v80 = v77 & 0x7FFFFFFFFFFFFFFCLL;
      v81 = a5;
      do
      {
        v82 = &v64[8 * v76];
        v107 = vld2q_f32(v82);
        v111.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v107.val[0], a8)), v78), v79), 8uLL);
        v111.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v107.val[1], a8)), v78), v79), 8uLL);
        vst2q_f32(v81, v111);
        v81 += 8;
        v76 += 4;
        v80 -= 4;
      }

      while (v80);
      if (v77 == (v77 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v66 = 0;
    }

    v83 = (a5 + 4 * v66);
    do
    {
      *v83++ = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(*&v64[4 * v66], a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
      v66 += 2;
    }

    while (v63 > v66);
  }

LABEL_78:
  if (v15 >= a7)
  {
    v84 = a7;
  }

  else
  {
    v84 = v15;
  }

  v85 = v84 >> 2;
  if ((v84 & 4) != 0)
  {
    if (v84 > 0x1F)
    {
      v89 = 0;
      v88 = (v84 >> 2) & 0x3FFFFFF8;
      v90 = (v8 + a5 + 16);
      v91.i64[0] = 0x7F0000007FLL;
      v91.i64[1] = 0x7F0000007FLL;
      v92.i64[0] = 0x7F0000007FLL;
      v92.i64[1] = 0x7F0000007FLL;
      v93 = v88;
      do
      {
        v94 = &v64[4 * v89];
        v95 = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v94[1], a8)), v91), v92), 8uLL);
        v90[-1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(*v94, a8)), v91), v92), 8uLL);
        *v90 = v95;
        v89 += 8;
        v90 += 2;
        v93 -= 8;
      }

      while (v93);
      if (v85 == v88)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v88 = 0;
    }

    do
    {
      v96 = (*&v64[4 * v88] * a8);
      if (v96 >= 0x7FFFFF)
      {
        v96 = 0x7FFFFF;
      }

      if (v96 <= -8388608)
      {
        v96 = -8388608;
      }

      LODWORD(v9[v88++]) = v96 << 8;
    }

    while (v85 > v88);
  }

  else if (v84 >= 4)
  {
    if (v85 <= 2)
    {
      v86 = 2;
    }

    else
    {
      v86 = v84 >> 2;
    }

    if (v84 > 0x1B)
    {
      v97 = 0;
      v98 = ((v86 - 1) >> 1) + 1;
      v87 = 2 * (v98 & 0x7FFFFFFFFFFFFFFCLL);
      v99.i64[0] = 0x7F0000007FLL;
      v99.i64[1] = 0x7F0000007FLL;
      v100.i64[0] = 0x7F0000007FLL;
      v100.i64[1] = 0x7F0000007FLL;
      v101 = v98 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v102 = &v64[8 * v97];
        v108 = vld2q_f32(v102);
        v112.val[0] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v108.val[0], a8)), v99), v100), 8uLL);
        v112.val[1] = vshlq_n_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(v108.val[1], a8)), v99), v100), 8uLL);
        vst2q_f32(v9, v112);
        v9 += 8;
        v97 += 4;
        v101 -= 4;
      }

      while (v101);
      if (v98 == (v98 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_104;
      }
    }

    else
    {
      v87 = 0;
    }

    v103 = (a5 + v8 + 4 * v87);
    do
    {
      *v103++ = vshl_n_s32(vmax_s32(vmin_s32(vcvt_s32_f32(vmul_n_f32(*&v64[4 * v87], a8)), 0x7F0000007FLL), 0x7F0000007FLL), 8uLL);
      v87 += 2;
    }

    while (v85 > v87);
  }

LABEL_104:
  if (v11 < a6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

void *AUARealtimeWriteMixBlock(uint64_t a1, int a2, int a3, int a4, unint64_t a5, int a6)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x5010000000;
  v16 = 0u;
  v13[3] = &unk_100135581;
  v13[4] = a1;
  v14 = a2;
  v15 = a3;
  LODWORD(v16) = a4;
  v17 = a5;
  DWORD2(v17) = (__exp10((a6 & 0x1F) / -20.0) * 8388607.0);
  if (a6 < 0)
  {
    v7 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v8 = sub_10000554C;
  }

  else
  {
    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v8 = sub_1000055A4;
  }

  v7[2] = v8;
  v7[3] = &unk_100159D30;
  v7[4] = v13;
  v9 = objc_retainBlock(v7);
  _Block_object_dispose(v13, 8);

  return v9;
}

uint64_t sub_10000554C(uint64_t a1, unsigned int a2, uint64_t a3, float32x4_t *a4)
{
  if (a2 && a3 && a4)
  {
    v4 = *(*(a1 + 32) + 8);
    AUARealtimeCopyToRingBufferManualWrap515C(*(v4 + 40), *(a3 + 144), a2, a4, *(v4 + 64), *(v4 + 44), *(v4 + 48), *(v4 + 72));
  }

  return 0;
}

uint64_t sub_1000055A4(uint64_t a1, int a2, uint64_t a3, char *__src)
{
  if (a2 && a3 && __src)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 40);
    v8 = *(v5 + 44);
    v9 = *(v5 + 48);
    v10 = &v6[(v8 * v7)];
    v11 = *(a3 + 144) % v8;
    v12 = v11 + a2 >= v8;
    v13 = v11 + a2 - v8;
    if (v11 + a2 <= v8)
    {
      v14 = a2;
    }

    else
    {
      v14 = v8 - v11;
    }

    if (!v12)
    {
      v13 = 0;
    }

    v15 = v14 * v7;
    v16 = (v13 * v7);
    if (v14 * v7)
    {
      v17 = (v7 * v11);
      memcpy(&v6[v17], __src, (v14 * v7));
      if (v17 < v9)
      {
        if (v9 - v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v9 - v17;
        }

        memcpy(&v10[v17], __src, v18);
      }
    }

    if (v16)
    {
      v19 = &__src[v15];
      memcpy(v6, v19, v16);
      if (v16 >= v9)
      {
        v20 = v9;
      }

      else
      {
        v20 = v16;
      }

      memcpy(v10, v19, v20);
    }
  }

  return 0;
}

id sub_100005764(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = AUAPluginTrampoline;
  return objc_msgSendSuper2(&v3, "halInitializeWithPluginHost:", a2);
}

id sub_100005814(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v7 = [a1 ioDataWithCapacity:a2 error:&v18];
  if (v7)
  {
    v8 = v18;
    return v7;
  }

  v9 = v18;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 code];

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v18 = 0xD00000000000001BLL;
  v19 = 0x800000010012A9B0;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10011DE90;
  *(v12 + 56) = &type metadata for Int32;
  *(v12 + 64) = &protocol witness table for Int32;
  *(v12 + 32) = v11;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v10 = v18;
  v11 = v19;
  if (qword_100173CB8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v14 = sub_10000A1BC(v4, qword_1001794F0);
  sub_10000A2A4(v14, v6);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v15, qword_100179508);
  sub_100039F58(4, v6, v10, v11);

  sub_10000C9D0(v6);
  swift_willThrow();
  return v7;
}

uint64_t sub_100005AD4()
{

  return swift_deallocClassInstance();
}

void sub_100005C58(char *a1, char *a2, char *a3)
{
  v5 = v4;
  v87 = a3;
  v84 = a2;
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = "Unable to allocate ioData: ";
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  v88 = v3;
  v11 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v12 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v12, qword_100179508);
    sub_100039AA0(4, &a1[v11], 0xD00000000000001CLL, (v10 | 0x8000000000000000));
    type metadata accessor for AUAInputStream(0);
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      sub_10000CA2C();
      swift_allocError();
      *v38 = 1;
      *(v38 + 8) = 0;
      *(v38 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_41;
    }

    v14 = v13;
    *(v88 + 184) = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v39 = 1;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_41;
    }

    v16 = v88;
    *(v88 + 176) = Strong;
    v17 = Strong;
    v18 = a1;
    v19 = v17;
    *(v16 + 168) = AUAAudioDevice.streamingSampleManager.getter();
    v20 = v84;
    v21 = *&v84[OBJC_IVAR___AUAStreamFormat_altSetting];
    if (!v21)
    {
      sub_10000CA2C();
      swift_allocError();
      *v40 = 83;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0xE000000000000000;
      swift_willThrow();

      v41 = v87;
      goto LABEL_39;
    }

    v71 = v18;
    v73 = v19;
    v22 = v88;
    v23 = *(v88 + 176);

    v24 = [v23 timestampPeriod];
    v25 = *(v21 + 104);
    v22[11] = v25[14];
    v22[14] = v25[13];
    v22[13] = v25[12];
    v22[8] = v24;
    v26 = [v20 channelsPerFrame];
    v72 = v21;
    v27 = *(v21 + 40);
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (is_mul_ok(v26, v27))
    {
      v28 = v88;
      *(v88 + 96) = v26 * v27;
      *(v28 + 72) = 0;
      *(v28 + 80) = 0;
      *(v28 + 128) = 0;
      *(v28 + 136) = 0;
      *(v28 + 120) = 0;
      *(v28 + 144) = sub_1000B4B2C() & 1;
      v21 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
      sub_10000A2A4(v14 + OBJC_IVAR___AUAStream_logID, v28 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);
      if (qword_100173CF8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_8:
    v29 = *(qword_100179640 + 16);
    if (v29)
    {
      v30 = v24;
      v31 = v29;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 BOOLForKey:v32];

      if (v33)
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v89 = 0xD00000000000001DLL;
        v90 = 0x800000010012A9F0;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10011DE90;
        *(v34 + 56) = &type metadata for Int32;
        *(v34 + 64) = &protocol witness table for Int32;
        v83 = 127;
        *(v34 + 32) = 127;
        v35._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v35);

        v36 = v89;
        v37 = v90;
        sub_10000A2A4(v88 + v21, v9);
        sub_100039AA0(4, v9, v36, v37);

        sub_10000C9D0(v9);
      }

      else
      {
        v83 = 0;
      }

      v24 = v30;
    }

    else
    {
      v83 = 0;
    }

    v42 = *(v88 + 96);
    v43 = v73;
    if (!is_mul_ok(v24, v42))
    {
      break;
    }

    if (((v24 * v42) & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v44 = [objc_allocWithZone(NSMutableData) initWithLength:v24 * v42];
    a1 = v87;
    if (!v44)
    {
      goto LABEL_56;
    }

    v45 = v88;
    *(v88 + 48) = v44;
    *(v45 + 56) = [v44 mutableBytes];
    v46 = [objc_allocWithZone(NSMutableData) initWithLength:2560];
    if (!v46)
    {
      goto LABEL_57;
    }

    v47 = v88;
    *(v88 + 16) = v46;
    v82 = [v46 mutableBytes];
    *(v47 + 24) = v82;
    *(v47 + 32) = 32;
    v48 = v72;
    v49 = *(v72 + 104);
    v50 = v49[13];
    v9 = v49[14];
    v51 = v49[12];
    v52 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
    swift_beginAccess();
    if (v50 >= 9)
    {
      sub_10000CA2C();
      swift_allocError();
      *v53 = 105;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0xE000000000000000;
      swift_willThrow();

      v21 = v48;
LABEL_38:
      v69 = v88;

      v41 = *(v69 + 48);
LABEL_39:

      v70 = v88;

      if (v21)
      {
        sub_10000C9D0(v88 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);
      }

LABEL_41:
      type metadata accessor for AUAInputTransferManager(0);
      swift_deallocPartialClassInstance();
      return;
    }

    if (v51 >> 61)
    {
      goto LABEL_52;
    }

    if (!v50)
    {
      goto LABEL_53;
    }

    v54 = v43[v52];
    v91 = _swiftEmptyArrayStorage;
    v55 = 8 * v51 / v50;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (!is_mul_ok(v55, v9))
    {
      goto LABEL_54;
    }

    v10 = v55 * v9;
    if (((v55 * v9) & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v56 = 0;
    v80 = 28 * v55;
    v81 = !is_mul_ok(v55, 0x1CuLL);
    v57 = &kUSBHostMessageInterruptIsochFrame;
    if (!v54)
    {
      v57 = &kUSBHostMessageDefaultInterrupt;
    }

    v76 = *v57;
    v75 = -1;
    v74 = 0x7FFFFFFF;
    v78 = HIDWORD(v10);
    v79 = (v55 | v9) >> 32;
    v77 = v55 * v9;
    while (1)
    {
      v58 = sub_100005814(a1, v10);
      if (v5)
      {

        v21 = v72;

        goto LABEL_38;
      }

      if (v81)
      {
        break;
      }

      if (v80 < 0)
      {
        goto LABEL_43;
      }

      v59 = v58;
      v60 = sub_100005814(a1, v80);
      if (v79)
      {
        goto LABEL_44;
      }

      if (v78)
      {
        goto LABEL_45;
      }

      v61 = v60;
      v62 = v82;
      v85 = &v82[v56];
      v86 = 0;
      v63 = [v59 mutableBytes];
      v64 = [v61 mutableBytes];
      v65 = &v62[v56];
      v5 = v86;
      v66 = v76;
      v10 = v77;
      *v65 = v55;
      *(v65 + 1) = v9;
      *(v65 + 1) = v66;
      LODWORD(v66) = v83;
      *(v65 + 4) = v10;
      *(v65 + 5) = v66;
      *(v65 + 3) = v63;
      *(v65 + 4) = v64;
      v67 = v75;
      *(v65 + 5) = 0;
      *(v65 + 6) = v67;
      *(v65 + 7) = 0;
      *(v65 + 8) = v74;
      *(v65 + 9) = 0;
      type metadata accessor for AUATransferManagerInputTransferBlock();
      v68 = swift_allocObject();
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      *(v68 + 72) = 1;
      *(v68 + 16) = v11;
      *(v68 + 24) = v85;
      *(v68 + 32) = v59;
      *(v68 + 40) = v61;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a1 = v87;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v56 += 80;
      v11 = (v11 + 1);
      if (v56 == 2560)
      {

        *(v88 + 40) = v91;
        return;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_10000658C()
{

  v1 = v0 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;

  return sub_10000C9D0(v1);
}

id *sub_1000065EC()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  sub_10000A2A4(v0 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v3, 0xD00000000000001ELL, 0x800000010012AE60);
  sub_10000C9D0(v3);

  sub_10000C9D0(v0 + v4);
  return v0;
}

uint64_t sub_100006748(uint64_t a1)
{
  _StringGuts.grow(_:)(27);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v1 + v4, 0xD000000000000019, 0x800000010012AE40);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_100006864@<X0>(void *a1@<X8>)
{
  v5 = v1;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5[15];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (*(v2 + 48))
    {
      goto LABEL_24;
    }

LABEL_5:
    if (IsAUARTInputTransferBlockOkToEnqueue(*(v2 + 24)) || v5[17] <= 0xFuLL)
    {
      v13 = *(v2 + 24);
      v14 = *(v13 + 68);
      v55 = v7;
      if (v14)
      {
        v15 = *(v13 + 48);
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v57 = 0xD000000000000015;
        v58 = 0x800000010012ADF0;
        v56 = v15;
        v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v16);

        sub_100038CD8("AUAInputTransferManager_inputResync", 35, 2, v57, v58, v5 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);

        v13 = *(v2 + 24);
      }

      PrepareAUARTInputTransferBlock(v13, v5[9]);
      v57 = 0;
      v58 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v17._countAndFlagsBits = 0x7551736B636F6C62;
      v17._object = 0xED00002064657565;
      String.append(_:)(v17);
      v56 = v5[17];
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v56 = 32;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21._object = 0x800000010012AAA0;
      v21._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v21);
      v56 = v5[10];
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._object = 0x800000010012AAC0;
      v23._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v23);
      v56 = v5[9];
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x66736E617274202CLL;
      v25._object = 0xED00002044497265;
      String.append(_:)(v25);
      v56 = *(v2 + 16);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v4 = v57;
      v3 = v58;
      v7 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
      if (qword_100173CB0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_24:

    v46 = 0;
    v49 = 0;
    v48 = 0;
    v51 = 0;
    v50 = 0;
    goto LABEL_25;
  }

  v12 = v5[5];
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v12 + 8 * v11 + 32);

    if (*(v2 + 48))
    {
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_10:
  v27 = (v5 + v7);
  if (byte_1001794E8 != 1)
  {
    v54 = v4;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    v33 = type metadata accessor for LogID(0);
    v34 = v55;
    (*(v8 + 16))(v10, v27 + *(v33 + 20), v55);

    v27 = OSSignposter.logHandle.getter();
    v4 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      HIDWORD(v53) = v4;
      v4 = v36;
      v57 = v36;
      *v35 = 136446210;
      v37 = sub_100035760(v54, v3, &v57);

      *(v35 + 4) = v37;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, BYTE4(v53), v38, "AUAInputTransferManager_nextBlockToQueue", "%{public}s", v35, 0xCu);
      sub_10000CE78(v4);

      (*(v8 + 8))(v10, v55);
    }

    else
    {

      (*(v8 + 8))(v10, v34);
    }

    goto LABEL_18;
  }

  if (qword_100173CC0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v28 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v28, qword_100179508);
    v57 = StaticString.description.getter();
    v58 = v29;
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v4;
    v31._object = v3;
    String.append(_:)(v31);

    sub_100039AA0(4, v27, v57, v58);

LABEL_18:
    v39 = v5[9];
    v40 = __CFADD__(v39, 8);
    v41 = v39 + 8;
    if (v40)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v5[9] = v41;
    v42 = v5[15];
    v40 = __CFADD__(v42, 1);
    v43 = v42 + 1;
    if (v40)
    {
      goto LABEL_29;
    }

    v5[15] = v43 & 0x1F;
    v44 = v5[17];
    v40 = __CFADD__(v44, 1);
    v45 = v44 + 1;
    if (!v40)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v5[17] = v45;
  *(v2 + 48) = 1;
  v46 = *(v2 + 16);
  v47 = *(v2 + 24);
  v48 = *v47;
  v50 = *(v47 + 4);
  v49 = *(v47 + 5);
  v51 = *(v2 + 32);

LABEL_25:
  *a1 = v46;
  a1[1] = v49;
  a1[2] = v48;
  a1[3] = v51;
  a1[4] = v50;
  return result;
}

unint64_t sub_100006F18(uint64_t a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 1;
  v13 = 0;
  result = v3[16];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = a2;
  v6 = v3[5];
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  result = *(v7 + 24);
  if (*(result + 32) != a1)
  {

    return 0;
  }

  v8 = v3[17];
  v9 = v8 != 0;
  v10 = v8 - 1;
  if (!v9)
  {
    goto LABEL_16;
  }

  v3[17] = v10;
  if (v2 != -536870165)
  {
    sub_100007048(result, v3, &v13, v14);
  }

  *(v7 + 48) = 0;

  v11 = v3[16];
  v9 = __CFADD__(v11, 1);
  v12 = v11 + 1;
  if (!v9)
  {
    v3[16] = v12 & 0x1F;
    return v14[0];
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100007048(unsigned int *a1, uint64_t a2, BOOL *a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_49;
  }

  v7 = 0;
  v160 = *(a1 + 5);
  v8 = *(a1 + 4);
  v162 = OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID;
  while (1)
  {
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[3];
    if (*v8 > -536870166)
    {
      break;
    }

    if (v10 != -536870169)
    {
      if (v10 != -536870168)
      {
        goto LABEL_82;
      }

      aBlock = 0;
      v166 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v12 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
      if (*v12)
      {
        v13 = v12[1];
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 16);
        swift_unknownObjectRetain();
        v16 = v15(ObjectType, v13);
        swift_unknownObjectRelease();
        if (v16)
        {
          v17 = *&v16[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
          v18 = *&v16[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
        }

        else
        {
          v17 = 0x206E776F6E6B6E55;
          v18 = 0xEE00656369766564;
        }

        v4 = a2;
      }

      else
      {
        v17 = 0x206E776F6E6B6E55;
        v18 = 0xEE00656369766564;
      }

      v20._countAndFlagsBits = v17;
      v20._object = v18;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD00000000000002CLL;
      v21._object = 0x800000010012AD70;
      String.append(_:)(v21);
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0x74656C706D6F6320;
      v23._object = 0xEF20746E756F4365;
      String.append(_:)(v23);
      v164 = __PAIR64__(HIDWORD(v160), v11);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      sub_100038CD8("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + v162);

      if (v11)
      {
        goto LABEL_22;
      }

      v34 = *(v4 + 152);
      v26 = __CFADD__(v34, 1);
      v35 = v34 + 1;
      if (v26)
      {
        goto LABEL_118;
      }

      *(v4 + 152) = v35;
      v11 = v9;
      if (v35 >= 0x65)
      {
        aBlock = 0;
        v166 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v132 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
        if (*v132)
        {
          v133 = v132[1];
          v134 = swift_getObjectType();
          v135 = *(v133 + 16);
          swift_unknownObjectRetain();
          v136 = v135(v134, v133);
          swift_unknownObjectRelease();
          v137 = 0xEE00656369766564;
          v138 = 0x206E776F6E6B6E55;
          if (v136)
          {
            v138 = *&v136[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
            v137 = *&v136[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
          }
        }

        else
        {
          v137 = 0xEE00656369766564;
          v138 = 0x206E776F6E6B6E55;
        }

        v139._countAndFlagsBits = v138;
        v139._object = v137;
        String.append(_:)(v139);

        v140._countAndFlagsBits = 0x206B636F6C62203ALL;
        v140._object = 0xEE0020656D617266;
        String.append(_:)(v140);
        v164 = v160;
        v141._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v141);

        v142._countAndFlagsBits = 0xD000000000000013;
        v142._object = 0x800000010012ADA0;
        String.append(_:)(v142);
        sub_100038CF0("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + v162);
        goto LABEL_108;
      }
    }

LABEL_16:
    if (!v11)
    {
      v26 = __CFADD__(v7++, 1);
      if (v26)
      {
        goto LABEL_116;
      }

      goto LABEL_4;
    }

LABEL_22:
    v25 = *(v4 + 96);
    if (HIDWORD(v25))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (!v25)
    {
      goto LABEL_115;
    }

    if (v11 % v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v9 >= v11;
    }

    if (!v26)
    {
      aBlock = 0;
      v166 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v27 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
      if (*v27)
      {
        v28 = v27[1];
        v29 = swift_getObjectType();
        v30 = *(v28 + 16);
        swift_unknownObjectRetain();
        v31 = v30(v29, v28);
        swift_unknownObjectRelease();
        if (v31)
        {
          v32 = *&v31[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
          v33 = *&v31[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
        }

        else
        {
          v32 = 0x206E776F6E6B6E55;
          v33 = 0xEE00656369766564;
        }

        v4 = a2;
      }

      else
      {
        v32 = 0x206E776F6E6B6E55;
        v33 = 0xEE00656369766564;
      }

      v36._countAndFlagsBits = v32;
      v36._object = v33;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 0xD000000000000019;
      v37._object = 0x800000010012ABF0;
      String.append(_:)(v37);
      LODWORD(v164) = v11;
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      sub_100038CF0("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + v162);

      if (v11 != 1)
      {
        goto LABEL_109;
      }
    }

LABEL_4:
    v8 += 7;
    if (!--v6)
    {
      v5 = a1;
      if (!v7)
      {
        goto LABEL_49;
      }

      v39 = *(v4 + 160);
      v26 = __CFADD__(v39, v7);
      v40 = v39 + v7;
      if (!v26)
      {
        *(v4 + 160) = v40;
        aBlock = 0;
        v166 = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v41 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
        v42 = 0x206E776F6E6B6E55;
        if (*v41 && (v43 = v41[1], v44 = swift_getObjectType(), v45 = *(v43 + 16), swift_unknownObjectRetain(), v46 = v45(v44, v43), swift_unknownObjectRelease(), v46))
        {
          v42 = *&v46[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
          v47 = *&v46[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
        }

        else
        {
          v47 = 0xEE00656369766564;
        }

        v48._countAndFlagsBits = v42;
        v48._object = v47;
        String.append(_:)(v48);

        v49._countAndFlagsBits = 0xD00000000000001ALL;
        v49._object = 0x800000010012AC10;
        String.append(_:)(v49);
        v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v50);

        v51._countAndFlagsBits = 0x6576656963657220;
        v51._object = 0xEA00000000002064;
        String.append(_:)(v51);
        v164 = v7;
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        v53._countAndFlagsBits = 0xD000000000000021;
        v53._object = 0x800000010012AC30;
        String.append(_:)(v53);
        v164 = *(v4 + 160);
        v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v54);

        sub_100038CD8("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);

        v55 = *(v4 + 176);
        if (*(v55 + OBJC_IVAR___AUAAudioDevice_isAppleVID))
        {
          goto LABEL_109;
        }

        v56 = (v55 + OBJC_IVAR___AUAAudioDevice_function);
        v5 = a1;
        if (*v56)
        {
          v57 = v56[1];
          v58 = swift_getObjectType();
          v59 = *(v57 + 16);
          swift_unknownObjectRetain();
          v60 = v59(v58, v57);
          swift_unknownObjectRelease();
          if (v60)
          {
            v61 = sub_10000AB64(_swiftEmptyArrayStorage);
            sub_1000FC32C(0xD000000000000026, 0x800000010012AD40, v61);
          }
        }

LABEL_49:
        v62 = *(v5 + 5);
        v63 = *(v4 + 176);
        if (v62 < *(v63 + OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame))
        {
          aBlock = 0;
          v166 = 0xE000000000000000;
          _StringGuts.grow(_:)(62);
          v64 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
          if (*v64)
          {
            v65 = v5;
            v66 = v64[1];
            v67 = swift_getObjectType();
            v68 = *(v66 + 16);
            swift_unknownObjectRetain();
            v69 = v68(v67, v66);
            swift_unknownObjectRelease();
            v70 = 0xEE00656369766564;
            if (v69)
            {
              v72 = *&v69[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
              v71 = *&v69[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
            }

            else
            {
              v72 = 0x206E776F6E6B6E55;
              v71 = 0xEE00656369766564;
            }

            v5 = v65;
            v81 = 0x206E776F6E6B6E55;
          }

          else
          {
            v81 = 0x206E776F6E6B6E55;
            v72 = 0x206E776F6E6B6E55;
            v70 = 0xEE00656369766564;
            v71 = 0xEE00656369766564;
          }

          v104._countAndFlagsBits = v72;
          v104._object = v71;
          String.append(_:)(v104);

          v105 = "up ignoring input frame data ";
          v106 = 0xD00000000000003ALL;
LABEL_91:
          v108 = v105 | 0x8000000000000000;
          String.append(_:)(*&v106);
          v164 = *(v5 + 5);
          v109._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v109);

          sub_100038CD8("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);

LABEL_92:
          v110 = v5[16];
          if ((v110 & 0x80000000) != 0 && v110 != 0x7FFFFFFF)
          {
            aBlock = 0;
            v166 = 0xE000000000000000;
            _StringGuts.grow(_:)(20);
            v111 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
            if (*v111)
            {
              v112 = v111[1];
              v113 = swift_getObjectType();
              v114 = *(v112 + 16);
              swift_unknownObjectRetain();
              v115 = v114(v113, v112);
              swift_unknownObjectRelease();
              if (v115)
              {
                v81 = *&v115[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
                v70 = *&v115[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
              }

              v4 = a2;
            }

            v116._countAndFlagsBits = v81;
            v116._object = v70;
            String.append(_:)(v116);

            v117._object = 0x800000010012AC60;
            v117._countAndFlagsBits = 0xD000000000000010;
            String.append(_:)(v117);
            LODWORD(v164) = v110;
            v118._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v118);

            sub_100038CF0("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + OBJC_IVAR____TtC9AUASDCore23AUAInputTransferManager_logID);

            v119 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
            if (*v119)
            {
              v120 = v119[1];
              v121 = swift_getObjectType();
              v122 = *(v120 + 16);
              swift_unknownObjectRetain();
              v123 = v122(v121, v120);
              swift_unknownObjectRelease();
              if (v123)
              {
                sub_100001AB4(&unk_100177280, &unk_100120B70);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10011DE90;
                *(inited + 32) = 0xD000000000000011;
                *(inited + 40) = 0x800000010012ACB0;
                sub_10000CFF4();
                *(inited + 48) = NSNumber.init(integerLiteral:)([*(v4 + 176) inputSafetyOffset]);
                v125 = sub_10000AB64(inited);
                swift_setDeallocating();
                sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
                sub_1000FC32C(0xD000000000000023, 0x800000010012AC80, v125);
              }
            }
          }

          return;
        }

        if (*(v4 + 144) == 1)
        {
          *a3 = v62 < *(v63 + OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame);
          if (*(v4 + 168))
          {
            v73 = *(v5 + 4);
            v74 = *v5;

            v75 = sub_10002400C(0, v74, 0, _swiftEmptyArrayStorage);
            if (v74)
            {
              do
              {
                if ((*v73 + 536870169) < 2 || *v73 == 0)
                {
                  v77 = *(v4 + 96);
                  if (!v77)
                  {
                    goto LABEL_117;
                  }

                  v78 = v73[3];
                  if (v77 <= v78)
                  {
                    v80 = *(v75 + 2);
                    v79 = *(v75 + 3);
                    if (v80 >= v79 >> 1)
                    {
                      v75 = sub_10002400C((v79 > 1), v80 + 1, 1, v75);
                    }

                    *(v75 + 2) = v80 + 1;
                    *&v75[8 * v80 + 32] = v78 / v77;
                  }

                  v4 = a2;
                }

                v73 += 7;
                --v74;
              }

              while (v74);
            }

            sub_10005D044(v75, *(v4 + 104), *(v4 + 112));
          }
        }

        v70 = 0xEE00656369766564;
        v81 = 0x206E776F6E6B6E55;
        if (*a3)
        {
          aBlock = 0;
          v166 = 0xE000000000000000;
          _StringGuts.grow(_:)(49);
          v82 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
          if (*v82)
          {
            v83 = v5;
            v84 = v82[1];
            v85 = swift_getObjectType();
            v86 = *(v84 + 16);
            swift_unknownObjectRetain();
            v87 = v86(v85, v84);
            swift_unknownObjectRelease();
            if (v87)
            {
              v89 = *&v87[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
              v88 = *&v87[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
            }

            else
            {
              v89 = 0x206E776F6E6B6E55;
              v88 = 0xEE00656369766564;
            }

            v5 = v83;
            v81 = 0x206E776F6E6B6E55;
          }

          else
          {
            v89 = 0x206E776F6E6B6E55;
            v88 = 0xEE00656369766564;
          }

          v107._countAndFlagsBits = v89;
          v107._object = v88;
          String.append(_:)(v107);

          v105 = "inputSafetyOffset";
          v106 = 0xD00000000000002DLL;
          goto LABEL_91;
        }

        aBlock = 0;
        LODWORD(v164) = 0;
        v90 = *(v4 + 64);
        if (!HIDWORD(v90))
        {
          v91 = *(v4 + 104);
          if (!HIDWORD(v91))
          {
            v92 = *(v4 + 96);
            if (!HIDWORD(v92))
            {
              v93 = AUARecordBlockCompletion(v5, v90, *(v4 + 80), v91, v92, &aBlock, &v164);
              v94 = *(v4 + 80);
              v26 = __CFADD__(v94, v93);
              v95 = v94 + v93;
              if (!v26)
              {
                *(v4 + 80) = v95;
                if (aBlock)
                {
                  v96 = v164;
                  *a4 = aBlock;
                  *(a4 + 8) = v96;
                  *(a4 + 16) = 0;
                }

                goto LABEL_92;
              }

LABEL_123:
              __break(1u);
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }
  }

  if (v10 == -536870165 || v10 == 0)
  {
    goto LABEL_16;
  }

LABEL_82:
  aBlock = 0;
  v166 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v97 = (*(v4 + 176) + OBJC_IVAR___AUAAudioDevice_function);
  if (*v97)
  {
    v98 = v97[1];
    v99 = swift_getObjectType();
    v100 = *(v98 + 16);
    swift_unknownObjectRetain();
    v101 = v100(v99, v98);
    swift_unknownObjectRelease();
    v102 = 0xEE00656369766564;
    v103 = 0x206E776F6E6B6E55;
    if (v101)
    {
      v103 = *&v101[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
      v102 = *&v101[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
    }
  }

  else
  {
    v102 = 0xEE00656369766564;
    v103 = 0x206E776F6E6B6E55;
  }

  v126._countAndFlagsBits = v103;
  v126._object = v102;
  String.append(_:)(v126);

  v127._countAndFlagsBits = 0x206B636F6C62203ALL;
  v127._object = 0xEE0020656D617266;
  String.append(_:)(v127);
  v164 = v160;
  v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v128);

  v129._countAndFlagsBits = 0xD00000000000001BLL;
  v129._object = 0x800000010012AB50;
  String.append(_:)(v129);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_10011DE90;
  *(v130 + 56) = &type metadata for Int32;
  *(v130 + 64) = &protocol witness table for Int32;
  *(v130 + 32) = v10;
  v131._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v131);

  sub_100038CD8("AUAInputTransferManager_completeBlock", 37, 2, aBlock, v166, v4 + v162);
LABEL_108:

LABEL_109:
  v143 = *(v4 + 176);
  aBlock = 0xD00000000000002BLL;
  v166 = 0x800000010012AB70;
  v144 = v143;
  v145._countAndFlagsBits = 8236;
  v145._object = 0xE200000000000000;
  String.append(_:)(v145);
  v146._countAndFlagsBits = 0xD00000000000001FLL;
  v146._object = 0x800000010012ABA0;
  String.append(_:)(v146);
  v147._countAndFlagsBits = 2108704;
  v147._object = 0xE300000000000000;
  String.append(_:)(v147);
  v164 = 441;
  v148._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v148);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, 0xD00000000000002BLL, 0x800000010012AB70, &v144[OBJC_IVAR___AUAAudioDevice_logID]);

  v149 = *&v144[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  v150 = swift_allocObject();
  v150[2] = AUAError.init(_:message:);
  v150[3] = 0;
  aBlock = sub_10000CF5C;
  v166 = v150;
  v151 = *(v149 + 16);
  v152 = __chkstk_darwin(v150);
  __chkstk_darwin(v152);

  os_unfair_lock_lock(v151 + 4);
  sub_10000CF80(&v164);
  if (v159)
  {
    os_unfair_lock_unlock(v151 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v151 + 4);
    v153 = v164;

    if (v153)
    {
      v154 = swift_allocObject();
      *(v154 + 16) = v144;
      v169 = sub_10000CFD4;
      v170 = v154;
      aBlock = _NSConcreteStackBlock;
      v166 = 1107296256;
      v167 = sub_1000172D4;
      v168 = &unk_1001602D0;
      v155 = _Block_copy(&aBlock);
      v144 = v144;

      v163.receiver = v144;
      v163.super_class = type metadata accessor for AUAAudioDevice(0);
      objc_msgSendSuper2(&v163, "requestConfigurationChange:", v155);
      _Block_release(v155);
    }
  }
}

uint64_t sub_10000857C()
{

  return swift_deallocClassInstance();
}

void sub_1000085BC(char *a1, char *a2, void *a3)
{
  v5 = v3;
  v61 = a2;
  v8 = type metadata accessor for LogID(0);
  __chkstk_darwin(v8 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v11, qword_100179508);
  sub_100039AA0(4, &a1[v10], 0xD00000000000001DLL, 0x800000010012AA10);
  type metadata accessor for AUAOutputStream(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    sub_10000CA2C();
    swift_allocError();
    *v34 = 1;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_26:
    type metadata accessor for AUAOutputTransferManager(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v13 = v12;
  v58 = a3;
  *(v5 + 136) = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v35 = 1;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();

    v36 = v58;
LABEL_18:

    goto LABEL_26;
  }

  v15 = Strong;
  v56 = v4;
  *(v5 + 128) = Strong;
  v16 = v61;
  v17 = *&v61[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v17)
  {
    sub_10000CA2C();
    swift_allocError();
    *v40 = 83;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();

    v36 = *(v5 + 128);
    goto LABEL_18;
  }

  v54 = a1;
  v18 = v15;

  v19 = [v18 timestampPeriod];
  v20 = *(v17 + 104);
  *(v5 + 64) = v20[14];
  *(v5 + 88) = v20[13];
  *(v5 + 80) = v20[12];
  v55 = v19;
  *(v5 + 40) = v19;
  v21 = [v16 channelsPerFrame];
  v22 = *(v17 + 40);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v53 = v18;
  if (!is_mul_ok(v21, v22))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v5 + 72) = v21 * v22;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  v16 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  sub_10000A2A4(v13 + OBJC_IVAR___AUAStream_logID, v5 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID);
  v15 = v58;
  if (qword_100173CF8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v23 = *(qword_100179640 + 16);
  if (v23 && (v24 = v23, v25 = String._bridgeToObjectiveC()(), v26 = [v24 BOOLForKey:v25], v24, v25, v15 = v58, (v26 & 1) != 0))
  {
    *(v5 + 120) = 63;
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v59 = 0xD00000000000001ELL;
    v60 = 0x800000010012AA30;
    v27 = *(v5 + 120);
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10011DE90;
    *(v28 + 56) = &type metadata for Int32;
    *(v28 + 64) = &protocol witness table for Int32;
    *(v28 + 32) = v27;
    v29._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v29);

    v30 = v59;
    v31 = v60;
    v32 = v16 + v5;
    v33 = v57;
    sub_10000A2A4(v32, v57);
    sub_100039AA0(4, v33, v30, v31);

    sub_10000C9D0(v33);
  }

  else
  {
    *(v5 + 120) = 0;
  }

  v37 = *(v17 + 104);
  v38 = *(v37 + 104);
  if (v38 >= 9)
  {
    sub_10000CA2C();
    swift_allocError();
    *v39 = 105;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_25:

    sub_10000C9D0(v5 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID);
    goto LABEL_26;
  }

  v41 = *(v37 + 96);
  if (v41 >> 61)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (!v38)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v42 = *(v5 + 72);
  if (!is_mul_ok(v55, v42))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v43 = v55 * v42;
  v44 = *(v5 + 64);
  v45 = v43 + v44;
  if (__CFADD__(v43, v44))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v45 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = v56;
  v47 = sub_100005814(v15, v43 + v44);
  if (v46)
  {
    goto LABEL_25;
  }

  *(v5 + 24) = v47;
  v48 = 8 * v41 / v38;
  v49 = [v47 mutableBytes];
  *(v5 + 32) = v49;
  memset(v49, *(v5 + 120), v45);
  if (!HIDWORD(v48))
  {
    v50 = *(v5 + 24);
    v51 = v58;
    v52 = sub_10000CCE0(v58, v50, v48);

    *(v5 + 16) = v52;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100008C6C()
{

  v1 = v0 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;

  return sub_10000C9D0(v1);
}

id *sub_100008CBC()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  sub_10000A2A4(v0 + OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v3, 0xD00000000000001FLL, 0x800000010012AB00);
  sub_10000C9D0(v3);

  sub_10000C9D0(v0 + v4);
  return v0;
}

uint64_t sub_100008E00(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void *sub_100008E5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  if (!is_mul_ok(v1, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1 * v2;
  v4 = *(v0 + 64);
  v5 = v3 + v4;
  if (__CFADD__(v3, v4))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    return memset(*(v0 + 32), *(v0 + 120), v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008EA4(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(4, v1 + v4, 0xD00000000000001ALL, 0x800000010012AAE0);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_100008FC0@<X0>(void *a1@<X8>)
{
  v7 = v1;
  v9 = type metadata accessor for OSSignpostID();
  result = __chkstk_darwin(v9);
  if (*(v1 + 14) <= 7uLL)
  {
    v14 = *(v1 + 12);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

    v4 = *(v1 + 2);
    v6 = v4 & 0xC000000000000001;
    v81 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v82 = v12;
    v80 = v13;
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_70;
    }

    if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    else
    {

      {
        v16 = *(i + 32);

        v18 = *(*(v7 + 17) + OBJC_IVAR___AUAOutputStream_sampleManager);
        v19 = *(v18 + 96);
        v20 = v19 == 1;
        if (v19 == 1)
        {
          v3 = v78;
          v5 = *(v18 + 88);
          __chkstk_darwin(v17);
          *&v78[-16] = sub_10000CEC4;
          *&v78[-8] = v18;

          os_unfair_lock_lock((v5 + 16));
          v2 = 0;
          sub_10000CEE0(&v84);
          os_unfair_lock_unlock((v5 + 16));

          v21 = v84;

          v20 = v21 == v16;
          if (v21 < v16)
          {
            goto LABEL_8;
          }

          v27 = *(v7 + 12);
          if ((v27 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v2 = 0;
          v27 = *(v7 + 12);
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (v6)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v4 = *(v4 + 8 * v27 + 32);
        }

        *(v4 + 64) = *(v7 + 6);
        v6 = *(v7 + 7);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 72) = v6;
        *(v4 + 96) = 1;
        v5 = *(*(v7 + 17) + OBJC_IVAR___AUAOutputStream_sampleManager);
        v28 = *(v4 + 32);

        v1 = sub_10005BDBC(v28);

        v29 = *(v7 + 5);
        if (!v29)
        {
          break;
        }

        v30 = *(v7 + 10);
        if (!v30)
        {
          goto LABEL_73;
        }

        if (v30 > v28)
        {

          v3 = 0;
          goto LABEL_18;
        }

        v3 = 0;
        v45 = 0;
        v46 = 0;
        v47 = v6 % v29;
        v48 = v28 / v30;
        while (v46 < v48)
        {
          v49 = 0;
          v50 = v46 + 1;
          v51 = *(v7 + 9);
          v52 = *(v4 + 48) + 28 * v45 + 12;
          v53 = v30;
          do
          {
            if (v45 >= *(v1 + 2))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v54 = *&v1[8 * v45 + 32];
            if (!is_mul_ok(v54, v51))
            {
              goto LABEL_57;
            }

            v55 = v6 % v29;
            if (!is_mul_ok(v6 % v29, v51))
            {
              goto LABEL_58;
            }

            *(v52 - 12) = 0;
            if ((v54 * v51) >> 32)
            {
              goto LABEL_59;
            }

            *(v52 - 8) = v54 * v51;
            if ((v55 * v51) >> 32)
            {
              goto LABEL_60;
            }

            *(v52 - 4) = v55 * v51;
            *v52 = 0;
            *(v52 + 4) = 3758117128;
            *(v52 + 12) = 0;
            if (*(v4 + 96) == 1)
            {
              v56 = __CFADD__(v55, v54);
              v57 = v55 + v54;
              if (v56)
              {
                goto LABEL_63;
              }

              if (v57 >= v29)
              {
                v58 = *(v7 + 6);
                v56 = __CFADD__(v58, v46);
                v59 = v58 + v46;
                if (v56)
                {
                  goto LABEL_64;
                }

                if (v29 < v47)
                {
                  goto LABEL_65;
                }

                *(v4 + 80) = v59;
                *(v4 + 88) = v29 - v47;
                *(v4 + 96) = 0;
              }
            }

            v56 = __CFADD__(v6, v54);
            v6 += v54;
            if (v56)
            {
              goto LABEL_61;
            }

            v56 = __CFADD__(v49, v54);
            v49 += v54;
            if (v56)
            {
              goto LABEL_62;
            }

            ++v45;
            v52 += 28;
            --v53;
          }

          while (v53);
          v56 = __CFADD__(v47, v49);
          v47 += v49;
          if (v56)
          {
            goto LABEL_67;
          }

          v56 = __CFADD__(v3, v49);
          v3 += v49;
          if (v56)
          {
            goto LABEL_68;
          }

          ++v46;
          if (v50 == v48)
          {

LABEL_18:
            v84 = 0;
            v85 = 0xE000000000000000;
            _StringGuts.grow(_:)(75);
            v31._countAndFlagsBits = 0x7551736B636F6C62;
            v31._object = 0xED00002064657565;
            String.append(_:)(v31);
            v83 = *(v7 + 14);
            v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v32);

            v33._countAndFlagsBits = 47;
            v33._object = 0xE100000000000000;
            String.append(_:)(v33);
            v83 = 8;
            v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v34);

            v35._object = 0x800000010012AAA0;
            v35._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v35);
            v83 = *(v7 + 7);
            v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v36);

            v37._object = 0x800000010012AAC0;
            v37._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v37);
            v83 = *(v7 + 6);
            v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v38);

            v39._countAndFlagsBits = 0x66736E617274202CLL;
            v39._object = 0xED00002044497265;
            String.append(_:)(v39);
            v83 = *(v4 + 16);
            v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v40);

            v6 = v84;
            v2 = v85;
            v1 = OBJC_IVAR____TtC9AUASDCore24AUAOutputTransferManager_logID;
            if (qword_100173CB0 == -1)
            {
LABEL_19:
              v5 = &v1[v7];
              v20 = qword_100173CC0 == -1;
              if (byte_1001794E8)
              {
                if (qword_100173CC0 != -1)
                {
                  goto LABEL_80;
                }

                goto LABEL_21;
              }

LABEL_45:
              if (!v20)
              {
                swift_once();
              }

              v60 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v60, qword_100179508);
              v61 = type metadata accessor for LogID(0);
              v62 = v80;
              (*(v80 + 16))(v81, v5 + *(v61 + 20), v82);

              v5 = OSSignposter.logHandle.getter();
              v63 = static os_signpost_type_t.event.getter();

              if (OS_os_log.signpostsEnabled.getter())
              {
                v64 = v6;
                v6 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v79 = v63;
                v66 = v65;
                v84 = v65;
                *v6 = 136446210;
                v67 = sub_100035760(v64, v2, &v84);

                *(v6 + 4) = v67;
                v68 = v81;
                v69 = OSSignpostID.rawValue.getter();
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v79, v69, "AUAOutputTransferManager_nextBlockToQueue", "%{public}s", v6, 0xCu);
                sub_10000CE78(v66);

                (*(v62 + 8))(v68, v82);
              }

              else
              {

                (*(v62 + 8))(v81, v82);
              }

              while (2)
              {
                v70 = *(v7 + 6);
                v56 = __CFADD__(v70, 8);
                v71 = v70 + 8;
                if (v56)
                {
                  __break(1u);
                }

                else
                {
                  *(v7 + 6) = v71;
                  v72 = *(v7 + 12);
                  v56 = __CFADD__(v72, 1);
                  v73 = v72 + 1;
                  if (!v56)
                  {
                    *(v7 + 12) = v73 & 7;
                    v74 = *(v7 + 7);
                    v56 = __CFADD__(v74, v3);
                    v75 = &v3[v74];
                    if (!v56)
                    {
                      *(v7 + 7) = v75;
                      v76 = *(v7 + 14);
                      v56 = __CFADD__(v76, 1);
                      v77 = v76 + 1;
                      if (!v56)
                      {
                        *(v7 + 14) = v77;
                        *(v4 + 56) = 1;
                        v22 = *(v4 + 16);
                        v23 = *(v4 + 64);
                        v24 = *(v4 + 32);
                        v26 = *(v4 + 48);
                        v25 = *(v4 + 24);

                        goto LABEL_55;
                      }

                      goto LABEL_78;
                    }

LABEL_77:
                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    swift_once();
LABEL_21:
                    v41 = type metadata accessor for AUALog(0);
                    sub_10000A1BC(v41, qword_100179508);
                    v84 = StaticString.description.getter();
                    v85 = v42;
                    v43._countAndFlagsBits = 32;
                    v43._object = 0xE100000000000000;
                    String.append(_:)(v43);
                    v44._countAndFlagsBits = v6;
                    v44._object = v2;
                    String.append(_:)(v44);

                    v2 = v85;
                    sub_100039AA0(4, v5, v84, v85);

                    continue;
                  }
                }

                break;
              }

              __break(1u);
              goto LABEL_77;
            }

LABEL_74:
            swift_once();
            goto LABEL_19;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_8:
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_55:
  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v26;
  return result;
}

unint64_t sub_10000988C(uint64_t a1, int a2)
{
  result = *(v2 + 104);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = a2;
  v6 = *(v2 + 16);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_19:
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = result;
    goto LABEL_5;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  v8 = *(v7 + 48);
  if (v8 != a1)
  {

    return 0;
  }

  v9 = *(v2 + 112);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    goto LABEL_21;
  }

  *(v2 + 112) = v11;
  if (v3 == -536870165)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v7 + 80);
    v13 = *(v7 + 32);
    v14 = *(v2 + 120);
    v15 = [*(v7 + 24) mutableBytes];
    if (v13)
    {
      v16 = v15;
      v17 = (v8 + 8);
      do
      {
        memset(&v16[*v17], v14, *(v17 - 1));
        v17 += 7;
        --v13;
      }

      while (v13);
    }

    if (*(*(v2 + 136) + OBJC_IVAR___AUAOutputStream_explicitFeedback))
    {

      sub_1000B7860();
    }
  }

  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 56) = 0;

  v18 = *(v2 + 104);
  v10 = __CFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v10)
  {
    *(v2 + 104) = v19 & 7;
    return v12;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_100009A38()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(v0 + 128) + OBJC_IVAR___AUAAudioDevice_function);
  if (!*v5)
  {
    goto LABEL_16;
  }

  v6 = v5[1];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);
  swift_unknownObjectRetain();
  v9 = v8(ObjectType, v6);
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (!v10 || !sub_1000AA808(0x21u, v10))
  {
    goto LABEL_15;
  }

  v11 = (*(v0 + 128) + OBJC_IVAR___AUAAudioDevice_function);
  if (!*v11)
  {
LABEL_26:

    v15 = 0x80000000;
    goto LABEL_17;
  }

  v12 = v11[1];
  v13 = swift_getObjectType();
  v14 = *(v12 + 112);
  swift_unknownObjectRetain();
  if (!v14(v13, v12) || (, ![*(v0 + 128) isHidden]))
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  if (qword_100173CF8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v15 = -2147483636;
    v16 = *(qword_100179640 + 16);
    if (!v16)
    {
      goto LABEL_30;
    }

    v35 = qword_100179640;
    v17 = v16;
    v34 = "debugFillOutBuffers";
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 objectForKey:v18];

    if (!v19)
    {

      memset(v36, 0, sizeof(v36));
      sub_10000D040(v36, &unk_100174A20, &unk_100120170);
      goto LABEL_30;
    }

    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_10000D040(v36, &unk_100174A20, &unk_100120170);
    v20 = *(v35 + 16);
    if (!v20)
    {
      LOBYTE(v23) = 0;
LABEL_29:
      v15 = v23 & 0x1F | 0x80000000;
LABEL_30:

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 integerForKey:v22];

    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!HIDWORD(v23))
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_15:

LABEL_16:
    v15 = 0;
LABEL_17:
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    *&v36[0] = 0xD000000000000016;
    *(&v36[0] + 1) = 0x800000010012AA50;
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10011DE90;
    *(v24 + 56) = &type metadata for UInt32;
    *(v24 + 64) = &protocol witness table for UInt32;
    *(v24 + 32) = v15;
    v25._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v25);

    v9 = *(&v36[0] + 1);
    v26 = *&v36[0];
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v27 = sub_10000A1BC(v2, qword_1001794F0);
    sub_10000A2A4(v27, v4);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v28, qword_100179508);
    sub_100039AA0(3, v4, v26, v9);

    sub_10000C9D0(v4);
    v29 = OSSignpostID.rawValue.getter();
    v30 = v1[9];
    if (HIDWORD(v30))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v31 = v1[5];
    if (HIDWORD(v31))
    {
      goto LABEL_32;
    }

    v32 = v1[8];
    if (!HIDWORD(v32))
    {
      v33 = AUARealtimeWriteMixBlock(v29, v30, v31, v32, v1[4], v15);
      *(swift_allocObject() + 16) = v33;
      return;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  __break(1u);
}

uint64_t variable initialization expression of AUAAudioDevice.configChangedHandlers()
{
  sub_100001AB4(&qword_100173D08, &qword_10011DF88);
  v0 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t variable initialization expression of ActiveClockSource.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0xD000000000000011, 0x800000010012A5D0, v3, a1);
}

uint64_t variable initialization expression of ActiveClockSelector.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0xD000000000000013, 0x800000010012A5F0, v3, a1);
}

uint64_t sub_10000A1BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of AUASampleManager.feedbackSamplesLock()
{
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of AUASampleManager.logID@<X0>(uint64_t a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);

  return sub_10000A2A4(v3, a1);
}

uint64_t sub_10000A2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double variable initialization expression of ControlInterface.interruptEP@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t variable initialization expression of USBDevice.logID@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogID(0);
  v3 = sub_10000A1BC(v2, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v4, qword_100179508);
  return sub_100039740(0x6369766544425355, 0xE900000000000065, v3, a1);
}

BOOL sub_10000A464(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10000A494@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10000A4C0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_10000A5CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10000A5F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A66C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000A6CC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10000D84C(a1);

  *a2 = v3;
  return result;
}

void *sub_10000A718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_10001D194(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = v5;
    v13[1] = v6;
    v13[2] = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_10001D194(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10000A844(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100174A70, &qword_1001201B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001AB4(&qword_100174A78, &qword_1001201C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D0B8(v9, v5, &qword_100174A70, &qword_1001201B8);
      v11 = *v5;
      result = sub_10001D1DC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Logger();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A40, &qword_100120188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v16, &qword_100174A48, &qword_100120190);
      v5 = v16;
      v6 = v17;
      result = sub_10001D11C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&unk_1001749C0, &qword_100120118);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001D11C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v13, &qword_1001749E0, &qword_100120130);
      v5 = v13;
      v6 = v14;
      result = sub_10001D11C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CE28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A18, &qword_100120168);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10001D260(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749E8, &qword_100120138);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001D11C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A10, &qword_100120160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001D11C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B0C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100001AB4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10001D11C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_1001749F0, &unk_100120140);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, v13, &qword_1001749F8, &qword_100121B40);
      result = sub_10001D2A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000CE28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A60, &qword_100124B10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10001EF4C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 2 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000B450(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10000B59C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B5D4(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10000B6BC(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000B6D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B6F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

__n128 sub_10000B734(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B75C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000B770(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B790(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10000B7D0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000B7F8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

__n128 sub_10000B820(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_10000B834(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 23))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B854(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 23) = v3;
  return result;
}

uint64_t sub_10000B8A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B8C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10000B918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t sub_10000B978(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioClassRange16bit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioClassRange16bit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

__n128 sub_10000B9EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD *sub_10000BA0C(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10000BA20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BA40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 7) = v3;
  return result;
}

uint64_t sub_10000BAAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BACC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

__n128 sub_10000BBC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_10000BBD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BBF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AUAZTSWrap(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s9AUASDCore10AUAZTSWrapVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AUAZTSWrap(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000BC9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000BCB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 80))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10000BCFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_10000BD98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BDB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000BE30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000BED0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

void *sub_10000BF20(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

__n128 sub_10000BF48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_10000BF70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_10000BFAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 22))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BFCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 22) = v3;
  return result;
}

__n128 sub_10000C010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C024(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C044(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 36) = v3;
  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 14))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C0D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 14) = v3;
  return result;
}

__n128 sub_10000C128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000C13C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C15C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClockRateRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClockRateRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioClassRange32bit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioClassRange32bit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10000C414(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C434(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 11) = v3;
  return result;
}

__n128 sub_10000C568(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_10000C57C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C59C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 19) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for USBDescriptorControl(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ADC4ClusterDescriptorSegment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000C8A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C8C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10000C9D0(uint64_t a1)
{
  v2 = type metadata accessor for LogID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CA2C()
{
  result = qword_1001749D0;
  if (!qword_1001749D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001749D0);
  }

  return result;
}

void *sub_10000CA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001AB4(&qword_100174A68, &qword_1001201B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  v7 = sub_10001D324(v4 | (v5 << 8));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 48);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 2 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 16;
    v4 = *v11;
    v5 = v11[1];
    v17 = *(v11 + 1);

    v9 = sub_10001D324(v4 | (v5 << 8));
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10000CBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001AB4(&qword_100174A50, &qword_100120198);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D0B8(v4, &v13, &qword_100174A58, &unk_1001201A0);
      v5 = v13;
      v6 = v14;
      result = sub_10001D11C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D0A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10000CCE0(void *a1, void *a2, unsigned int a3)
{
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v8 = 28 * a3;
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v8;
    while (1)
    {
      v11 = sub_100005814(a1, v10);
      if (v3)
      {
        break;
      }

      v12 = v11;
      type metadata accessor for AUATransferManagerOutputTransferBlock();
      v13 = swift_allocObject();
      *(v13 + 56) = 0;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 1;
      *(v13 + 16) = v9;
      *(v13 + 32) = a3;
      *(v13 + 24) = a2;
      *(v13 + 40) = v12;
      v14 = a2;
      *(v13 + 48) = [v12 mutableBytes];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (++v9 == 8)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  return result;
}

_OWORD *sub_10000CE28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000CE38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CE78(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_10000CEE0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10000CF24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CF9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CFF4()
{
  result = qword_100174A30;
  if (!qword_100174A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174A30);
  }

  return result;
}

uint64_t sub_10000D040(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001AB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D0A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000D0B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001AB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for AudioClassRange8bit(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for AudioClassRange8bit(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

__n128 sub_10000D22C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D240(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D260(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_10000D3F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D410(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 34) = v3;
  return result;
}

__n128 sub_10000D468(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D4C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D57C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000D5D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10000D610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 224) = v3;
  return result;
}

uint64_t sub_10000D72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D84C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_10000D8A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioClassRange32bit(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10000D908(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_10000D978(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10000DA30(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DA9C(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 sub_10000DB5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_10000DBAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10000DCC0(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AUANullInputStream();
  result = objc_msgSendSuper2(&v10, "initWithDirection:withPlugin:", 1768845428, a1);
  if (result)
  {
    v4 = result;
    [v4 setStartingChannel:1];
    [v4 setTerminalType:1835623282];
    result = [objc_allocWithZone(ASDStreamFormat) initWithSampleRate:1 numChannels:1 commonPCMFormat:1 isInterleaved:48000.0];
    if (result)
    {
      v5 = result;
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100120A20;
      *(v6 + 32) = v5;
      sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
      v7 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setPhysicalFormats:isa];

      v9 = v7;
      [v4 setPhysicalFormat:v9];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DE90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10000DED0()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v6 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v6, v5);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v7, qword_100179508);
  sub_100039AA0(4, v5, 0xD000000000000027, 0x800000010012BA20);
  sub_10000C9D0(v5);
  [*(v1 + 16) stop];

  return swift_deallocClassInstance();
}

uint64_t AUAAudioDevice.functionProtocol.getter()
{
  v1 = v0 + OBJC_IVAR___AUAAudioDevice_function;
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function);
  if (v2)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 40))(ObjectType, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 8);
}

uint64_t AUAAudioDevice.lowestLatencyEnabled.getter()
{
  v1 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AUAAudioDevice.lowestLatencyEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t AUAAudioDevice.streamingSampleManager.getter()
{
  result = AUAAudioDevice.outputAUAStreams()();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v4 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    if (sub_1000B817C() == 1)
    {
      v3 = *&v2[OBJC_IVAR___AUAOutputStream_sampleManager];

      return v3;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_10000E2BC(Swift::Int a1, unint64_t a2, Swift::Int a3, Swift::Int a4, unint64_t a5)
{
  v6 = v5;
  v279 = a5;
  v268 = a4;
  v272 = a3;
  v267 = type metadata accessor for Logger();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v270 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for LogID(0);
  v10 = __chkstk_darwin(v261);
  v251 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v257 = &v250 - v13;
  v14 = __chkstk_darwin(v12);
  v258 = &v250 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v250 - v17;
  __chkstk_darwin(v16);
  v265 = (&v250 - v19);
  *(v5 + OBJC_IVAR___AUAAudioDevice_extraLockDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_lockDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_curZTSSeed) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession) = 0;
  v20 = OBJC_IVAR___AUAAudioDevice_timestampStream;
  *(v5 + OBJC_IVAR___AUAAudioDevice_timestampStream) = 0;
  v21 = OBJC_IVAR___AUAAudioDevice_configChangedHandlers;
  sub_100001AB4(&qword_100173D08, &qword_10011DF88);
  v22 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v22 + 16) = v23;
  *(v22 + 24) = _swiftEmptyArrayStorage;
  v278 = v21;
  *&v21[v6] = v22;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSMach) = 0;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS) = 0;
  v24 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  *(v6 + OBJC_IVAR___AUAAudioDevice_asdInputStreams) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR___AUAAudioDevice_asdOutputStreams) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled) = 0;
  ObjectType = swift_getObjectType();
  v26 = *(a2 + 16);
  v264 = ObjectType;
  v271 = a2;
  v27 = v26(ObjectType, a2);
  if (!v27)
  {

    sub_10000CA2C();
    swift_allocError();
    *v55 = 7;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for AUAAudioDevice(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v28 = v27;
  v263 = v6;
  v274 = a1;
  v29 = v279;
  if (v279 >> 62)
  {
    goto LABEL_47;
  }

  v30 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v31 = _swiftEmptyArrayStorage;
  v262 = v18;
  if (v30)
  {
    v32 = v29;
    v281 = _swiftEmptyArrayStorage;
    sub_1000467E4(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      goto LABEL_131;
    }

    v278 = v28;
    v33 = 0;
    v31 = v281;
    v34 = v32;
    v35 = v32 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v34 + 8 * v33 + 32);
      }

      LOBYTE(v285) = *(*(v36 + 32) + 2);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;

      v281 = v31;
      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000467E4((v40 > 1), v41 + 1, 1);
        v31 = v281;
      }

      ++v33;
      v31[2] = v41 + 1;
      v42 = &v31[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 = v279;
    }

    while (v30 != v33);
    v28 = v278;
  }

  v281 = v31;
  sub_100001AB4(&qword_100174F18, &qword_100120B68);
  sub_10001EB60(&qword_100174F20, &qword_100174F18, &qword_100120B68, &protocol conformance descriptor for [A]);
  v43 = BidirectionalCollection<>.joined(separator:)();
  a1 = v44;

  v45 = USBDevice.locationID.getter();
  if ((v45 & &_mh_execute_header) != 0)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  LODWORD(v281) = v46;
  sub_10001E938();
  v47 = String.init<A>(_:radix:uppercase:)();
  v49 = v48;
  v50 = v28;
  v51 = [v50 serialNumber];
  v260 = v47;
  if (v51)
  {
    v52 = v51;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
  }

  else
  {

    v54 = v49;
  }

  v56 = [v50 manufacturerName];
  v255 = v49;
  if (v56)
  {
    v57 = v56;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v58;
  }

  else
  {
    v28 = 0x800000010012B350;
    v18 = 0xD000000000000014;
  }

  v281 = 0;
  v282 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v281 = 0xD000000000000014;
  v256 = 0x800000010012B370;
  v282 = 0x800000010012B370;
  v59._countAndFlagsBits = v18;
  v59._object = v28;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 58;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  v62 = *&v50[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
  v61 = *&v50[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];
  v252 = &v50[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];

  v63._countAndFlagsBits = v62;
  v63._object = v61;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 58;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65._countAndFlagsBits = v47;
  v65._object = v54;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 58;
  v66._object = 0xE100000000000000;
  String.append(_:)(v66);
  v273 = v43;
  v67._countAndFlagsBits = v43;
  v67._object = a1;
  String.append(_:)(v67);
  v275 = v281;
  v24 = v282;
  v278 = v50;
  v68 = [v278 plugin];
  if (!v68)
  {
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v221 = mach_absolute_time();
    v173 = v221 >= v61;
    v127 = v221 - v61;
    if (!v173)
    {
      goto LABEL_147;
    }

    if (qword_100173D00 != -1)
    {
      goto LABEL_148;
    }

    goto LABEL_141;
  }

  v69 = v68;
  v61 = [v68 audioDevices];

  if (!v61)
  {
    goto LABEL_136;
  }

  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v269 = v28;
  v253 = v18;
  v254 = a1;
  if (v70 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (!a1)
    {
LABEL_49:

      goto LABEL_50;
    }
  }

  else
  {
    a1 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_49;
    }
  }

  v71 = 0;
  v277 = (v70 & 0xC000000000000001);
  v29 = &v286;
  *&v276 = v70 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v277)
    {
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v71 >= *(v276 + 16))
      {
        goto LABEL_46;
      }

      v72 = *(v70 + 8 * v71 + 32);
    }

    v73 = v72;
    v74 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v91 = v29;
      v92 = _CocoaArrayWrapper.endIndex.getter();
      v29 = v91;
      v30 = v92;
      goto LABEL_4;
    }

    v75 = [v72 deviceUID];
    if (!v75)
    {

      goto LABEL_30;
    }

    v76 = v75;
    v18 = v24;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = v77;
    v24 = v18;
    if (v80 == v275 && v79 == v18)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_44;
    }

LABEL_30:
    ++v71;
    if (v74 == a1)
    {
      goto LABEL_49;
    }
  }

LABEL_44:

  v281 = 0;
  v282 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v281 = 0xD000000000000014;
  v282 = v256;
  v82._countAndFlagsBits = v253;
  v82._object = v269;
  String.append(_:)(v82);
  v83._countAndFlagsBits = 58;
  v83._object = 0xE100000000000000;
  String.append(_:)(v83);
  v85 = *v252;
  v84 = v252[1];

  v86._countAndFlagsBits = v85;
  v86._object = v84;
  String.append(_:)(v86);

  v87._countAndFlagsBits = 58;
  v87._object = 0xE100000000000000;
  String.append(_:)(v87);
  v88._countAndFlagsBits = v260;
  v88._object = v255;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 58;
  v89._object = 0xE100000000000000;
  String.append(_:)(v89);
  v90._countAndFlagsBits = v273;
  v90._object = v254;
  String.append(_:)(v90);

  v275 = v281;
  v24 = v282;
LABEL_50:
  v93 = v274;
  a1 = v272;
  inited = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  if (qword_100173CC0 != -1)
  {
    goto LABEL_125;
  }

LABEL_51:
  v95 = type metadata accessor for AUALog(0);
  v96 = sub_10000A1BC(v95, qword_100179508);
  v97 = v278;
  v98 = (v278 + inited);
  v99 = v265;
  v260 = v96;
  sub_100039740(0x6F69647541415541, 0xEE00656369766544, v98, v265);
  v100 = v263;
  sub_10001E98C(v99, v263 + OBJC_IVAR___AUAAudioDevice_logID);
  v101 = *&v97[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v101 && sub_1000AA808(0x12u, v101))
  {
    v102 = 10000;
  }

  else
  {
    v102 = 667000;
  }

  v103 = v271;
  *(v100 + OBJC_IVAR___AUAAudioDevice_formatChangeIOStartDelay_us) = v102;
  v277 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  *(v100 + OBJC_IVAR___AUAAudioDevice_isAppleVID) = *(*&v97[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor] + 8) == 1452;
  v104 = (v100 + OBJC_IVAR___AUAAudioDevice_function);
  *v104 = v93;
  v104[1] = v103;
  v105 = (v100 + OBJC_IVAR___AUAAudioDevice_clock);
  v106 = v268;
  *v105 = a1;
  v105[1] = v106;
  v107 = swift_getObjectType();
  v108 = *(v106 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v109 = v108(v107, v106);
  v256 = v24;
  if (v109)
  {
    v252 = v109;
    v110 = *(v109 + 16);
    if (!v110)
    {
LABEL_65:

      a1 = v272;
      goto LABEL_66;
    }

    v273 = "his is an iPhone";
    v24 = (v252 + 6);
    v276 = xmmword_100120A30;
    while (1)
    {
      v112 = *(v24 - 2);
      a1 = *(v24 - 1);
      if (v112 != a1)
      {
        v93 = *v24;
        sub_100001AB4(&unk_100177280, &unk_100120B70);
        inited = swift_initStackObject();
        *(inited + 16) = v276;
        *(inited + 32) = 0x6E6F6973726556;
        *(inited + 40) = 0xE700000000000000;
        sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
        *(inited + 48) = NSNumber.init(integerLiteral:)(*(*&v277[v278] + 12));
        *(inited + 56) = 0x6E694D65676E6172;
        *(inited + 64) = 0xE800000000000000;
        if (v112 < 0)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          swift_once();
          goto LABEL_51;
        }

        *(inited + 72) = NSNumber.init(integerLiteral:)(v112);
        *(inited + 80) = 0x78614D65676E6172;
        *(inited + 88) = 0xE800000000000000;
        if (a1 < 0)
        {
          goto LABEL_124;
        }

        *(inited + 96) = NSNumber.init(integerLiteral:)(a1);
        *(inited + 104) = 0x73655265676E6172;
        *(inited + 112) = 0xEF6E6F6974756C6FLL;
        if (v93 < 0)
        {
          __break(1u);
          goto LABEL_65;
        }

        *(inited + 120) = NSNumber.init(integerLiteral:)(v93);
        v111 = sub_10000AB64(inited);
        swift_setDeallocating();
        sub_100001AB4(&qword_100174A38, &qword_100120180);
        swift_arrayDestroy();
        sub_1000FC32C(0xD000000000000027, v273 | 0x8000000000000000, v111);
      }

      v24 += 24;
      if (!--v110)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_66:
  v113 = [v278 serialNumber];
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0xE000000000000000;
  }

  v30 = v259;
  v118 = v264;
  v119 = v263;
  v120 = (v263 + OBJC_IVAR___AUAAudioDevice_serialNumber);
  *v120 = v115;
  v120[1] = v117;
  v28 = v278;
  v121 = *(v278 + OBJC_IVAR____TtC9AUASDCore9USBDevice_timeCorrelater);
  *(v119 + OBJC_IVAR___AUAAudioDevice_timeCorrelater) = v121;
  v122 = objc_allocWithZone(AUALocklessTimestamp);
  v123 = v121;
  v124 = [v122 init];
  *(v119 + OBJC_IVAR___AUAAudioDevice_timestamp) = v124;
  *(v119 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces) = v279;

  v61 = String._bridgeToObjectiveC()();
  v125 = [v28 plugin];

  v126 = type metadata accessor for AUAAudioDevice(0);
  v284.receiver = v119;
  v284.super_class = v126;
  v24 = objc_msgSendSuper2(&v284, "initWithDeviceUID:withPlugin:", v61, v125);

  if (!v24)
  {
    goto LABEL_137;
  }

  v127 = v271;
  v128 = (*(v271 + 88))(v118, v271);
  if (!v128)
  {

    goto LABEL_83;
  }

  if (*(v128 + 32))
  {
    v281 = 0x4B4C4E554D454D48;
    sub_1000A1940(&v281, &v282, v128, &v285);
    if (v30)
    {

      v30 = 0;
      goto LABEL_79;
    }

    v30 = 0;
  }

  v129 = sub_1000A1ABC();
  v130 = v30;
  if (!v30)
  {
    v203 = v129;
    v204 = MobileGestalt_get_current_device();
    if (!v204)
    {
      goto LABEL_145;
    }

    v205 = v204;

    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (v203)
    {
      if (deviceClassNumber == 1)
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v207 = sub_10000A1BC(v261, qword_1001794F0);
        v208 = v265;
        sub_10000A2A4(v207, v265);
        sub_100039AA0(1, v208, 0xD000000000000030, 0x800000010012B470);
        sub_10000C9D0(v208);
LABEL_119:
        v148 = "ut is not responding correctly";
        if (qword_100173CB8 != -1)
        {
          goto LABEL_134;
        }

        goto LABEL_120;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v209 = sub_10000A1BC(v261, qword_1001794F0);
      v210 = v265;
      sub_10000A2A4(v209, v265);
      sub_100039AA0(1, v210, 0xD000000000000035, 0x800000010012B430);
      sub_10000C9D0(v210);
      sub_1000A1EA4(0);
    }

    if (deviceClassNumber == 9)
    {
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  while (2)
  {
    v30 = 0;
LABEL_79:
    v281 = 0;
    v282 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v131 = [v24 deviceName];
    if (v131)
    {
      v132 = v131;
      v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;
    }

    else
    {
      v135 = 0xEE00656369766564;
      v133 = 0x206E776F6E6B6E55;
    }

    v136._countAndFlagsBits = v133;
    v136._object = v135;
    String.append(_:)(v136);

    v137._countAndFlagsBits = 0xD00000000000003ELL;
    v137._object = 0x800000010012B3D0;
    String.append(_:)(v137);
    v138 = v281;
    v139 = v282;
    v140 = v265;
    sub_10000A2A4(&v24[OBJC_IVAR___AUAAudioDevice_logID], v265);
    sub_100039F58(1, v140, v138, v139);

    sub_10000C9D0(v140);
    v127 = v271;
    v118 = v264;
    (*(v271 + 96))(0, v264, v271);

LABEL_83:
    v141 = (*(v127 + 112))(v118, v127);
    v18 = v262;
    if (v141)
    {
      v142 = v141;
      [v24 addCustomProperty:*(v141 + 32)];
      [v24 addCustomProperty:v142[6]];
      [v24 addCustomProperty:v142[5]];
      [v24 addCustomProperty:v142[7]];
      if (qword_100173CF8 != -1)
      {
LABEL_131:
        swift_once();
      }

      v143 = *(qword_100179640 + 16);
      if (v143)
      {
        v144 = v143;
        v145 = String._bridgeToObjectiveC()();
        v146 = [v144 BOOLForKey:v145];

        if (v146)
        {

          goto LABEL_88;
        }
      }

      [v24 setHidden:1];
      v147 = v278;
      [v278 setAcquirable:1];
    }

    else
    {
LABEL_88:
      v147 = v278;
    }

    sub_10000A2A4(&v24[OBJC_IVAR___AUAAudioDevice_logID], v18);
    v28 = v147;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v278 = v24;

    *&v276 = mach_absolute_time();
    v130 = v260;
    v148 = *(*v260 + 16);
    __chkstk_darwin(v276);
    *(&v250 - 2) = sub_10001E9F0;
    *(&v250 - 1) = v149;
    v265 = v149;

    os_unfair_lock_lock((v148 + 16));
    sub_10001EA0C(&v281);
    v275 = v30;
    if (v30)
    {
      goto LABEL_155;
    }

    os_unfair_lock_unlock((v148 + 16));
    v273 = v281;
    v150 = v282;
    LODWORD(v264) = v283;

    isa = v130[1].isa;
    v24 = v258;
    if (!*(isa + 2))
    {
      __break(1u);
      goto LABEL_127;
    }

    v152 = sub_10001D1DC(1);
    if ((v153 & 1) == 0)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    (*(v266 + 16))(v270, *(isa + 7) + *(v266 + 72) * v152, v267);
    v281 = StaticString.description.getter();
    v282 = v154;
    v155._countAndFlagsBits = 32;
    v155._object = 0xE100000000000000;
    String.append(_:)(v155);
    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    String.append(_:)(v156);
    v157 = v281;
    v158 = v282;
    sub_10000A2A4(v18, v24);

    v130 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    v160 = os_log_type_enabled(v130, v159);
    v279 = v150;
    v277 = v28;
    if (v160)
    {
      v161 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v285 = v263;
      *v161 = 136446210;
      v281 = 2113069;
      v282 = 0xE300000000000000;
      LODWORD(v260) = v159;
      v162._countAndFlagsBits = v273;
      v162._object = v150;
      String.append(_:)(v162);
      v163 = &v24[*(v261 + 24)];
      v164 = *v163;
      v165 = v163[1];

      v166._countAndFlagsBits = v164;
      v166._object = v165;
      a1 = v272;
      String.append(_:)(v166);

      v167._countAndFlagsBits = v157;
      v167._object = v158;
      String.append(_:)(v167);

      v168 = v281;
      v169 = v282;
      sub_10000C9D0(v24);
      v170 = sub_100035760(v168, v169, &v285);

      *(v161 + 4) = v170;
      _os_log_impl(&_mh_execute_header, v130, v260, "%{public}s", v161, 0xCu);
      sub_10000CE78(v263);
      v18 = v262;

      v28 = v277;
    }

    else
    {

      sub_10000C9D0(v24);
    }

    v150 = v257;
    v61 = v276;
    v171 = v275;
    v24 = v278;
    sub_100010864(v28, v278, v274, v271, v253, v269, a1, v268);
    a1 = v171;
    if (v171)
    {
      goto LABEL_138;
    }

    v172 = mach_absolute_time();
    v173 = v172 >= v61;
    v148 = v172 - v61;
    if (v173)
    {
      if (qword_100173D00 != -1)
      {
        goto LABEL_129;
      }
    }

    else
    {
LABEL_128:
      __break(1u);
LABEL_129:
      swift_once();
    }

    if (qword_100179650 == HIDWORD(qword_100179650))
    {
      goto LABEL_104;
    }

    if (!is_mul_ok(v148, qword_100179650))
    {
      __break(1u);
      goto LABEL_133;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_133:
      __break(1u);
LABEL_134:
      swift_once();
LABEL_120:
      v211 = sub_10000A1BC(v261, qword_1001794F0);
      v212 = v265;
      sub_10000A2A4(v211, v265);
      sub_100039AA0(1, v212, 0xD000000000000017, (v148 | 0x8000000000000000));
      sub_10000C9D0(v212);
      sub_1000A23E4();
      if (v130)
      {
        continue;
      }

LABEL_121:
      sub_1000A21EC();
      v30 = 0;
      v214 = sub_1000852D0(v213);
      v215 = type metadata accessor for AUAReadOnlyCustomDictionaryProperty();
      v216 = objc_allocWithZone(v215);
      *&v216[OBJC_IVAR____TtC9AUASDCore35AUAReadOnlyCustomDictionaryProperty_dictionary] = v214;
      v217 = objc_allocWithZone(ASDPropertyAddress);
      v127 = v214;
      v218 = [v217 initWithSelector:1751474532 scope:1735159650 element:0];
      v280.receiver = v216;
      v280.super_class = v215;
      v219 = objc_msgSendSuper2(&v280, "initWithAddress:propertyDataType:qualifierDataType:", v218, 1886155636, 0);

      if (!v219)
      {
        while (1)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          swift_once();
LABEL_141:
          v222 = qword_100179650;
          v223 = HIDWORD(qword_100179650);
          if (qword_100179650 == HIDWORD(qword_100179650))
          {
            break;
          }

          if (!is_mul_ok(v127, qword_100179650))
          {
            __break(1u);
LABEL_150:
            v127 = v127 * v222 / v223;
            break;
          }

          if (HIDWORD(qword_100179650))
          {
            goto LABEL_150;
          }

          __break(1u);
LABEL_145:
          __break(1u);
        }

        v281 = 0;
        v282 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v224._countAndFlagsBits = StaticString.description.getter();
        String.append(_:)(v224);

        v225._countAndFlagsBits = 0x203A524F52524520;
        v225._object = 0xE800000000000000;
        String.append(_:)(v225);
        v285 = a1;
        sub_100001AB4(&qword_100177270, &qword_100120A40);
        _print_unlocked<A, B>(_:_:)();
        v226._countAndFlagsBits = 23328;
        v226._object = 0xE200000000000000;
        String.append(_:)(v226);
        v285 = v127 / 0x3E8;
        v227._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v227);

        v228._countAndFlagsBits = 1567847712;
        v228._object = 0xE400000000000000;
        String.append(_:)(v228);
        v229 = v281;
        v230 = v282;
        sub_10000A2A4(v262, v251);

        v231 = Logger.logObject.getter();
        v232 = static os_log_type_t.default.getter();

        LODWORD(v275) = v232;
        *&v276 = v231;
        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          v285 = v274;
          *v233 = 136446210;
          v281 = 11580;
          v282 = 0xE200000000000000;
          v234._countAndFlagsBits = v273;
          v234._object = v279;
          String.append(_:)(v234);
          v235 = v251;
          v236 = (v251 + *(v261 + 24));
          v237 = *v236;
          v238 = v236[1];

          v239._countAndFlagsBits = v237;
          v239._object = v238;
          String.append(_:)(v239);

          v240._countAndFlagsBits = v229;
          v240._object = v230;
          String.append(_:)(v240);

          v241 = v281;
          v242 = v282;
          sub_10000C9D0(v235);
          v243 = sub_100035760(v241, v242, &v285);

          *(v233 + 4) = v243;
          v244 = v276;
          _os_log_impl(&_mh_execute_header, v276, v275, "%{public}s", v233, 0xCu);
          sub_10000CE78(v274);
        }

        else
        {

          v245 = sub_10000C9D0(v251);
        }

        v148 = v265[2];
        v246 = __chkstk_darwin(v245);
        *(&v250 - 2) = v247;
        *(&v250 - 2) = v264;
        __chkstk_darwin(v246);
        *(&v250 - 2) = sub_10001EA28;
        *(&v250 - 1) = v248;

        os_unfair_lock_lock((v148 + 16));
        sub_10001EA48(v249);
        goto LABEL_156;
      }

      v220 = v219;
      [v220 setSettable:0];

      [v24 addCustomProperty:v220];

      v127 = v271;
      v118 = v264;
      goto LABEL_83;
    }

    break;
  }

  v148 = v148 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_104:
  *&v276 = a1;
  v281 = StaticString.description.getter();
  v282 = v174;
  v175._countAndFlagsBits = 23328;
  v175._object = 0xE200000000000000;
  String.append(_:)(v175);
  v285 = v148 / 0x3E8;
  v176._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v176);

  v177._countAndFlagsBits = 1567847712;
  v177._object = 0xE400000000000000;
  String.append(_:)(v177);
  v178 = v281;
  v179 = v282;
  sub_10000A2A4(v18, v150);
  v180 = v279;

  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v275 = v178;
    v185 = v184;
    v285 = v184;
    *v183 = 136446210;
    v281 = 2108732;
    v282 = 0xE300000000000000;
    v186._countAndFlagsBits = v273;
    v186._object = v180;
    String.append(_:)(v186);
    v187 = &v150[*(v261 + 24)];
    v188 = v150;
    v189 = *v187;
    v190 = v187[1];

    v191._countAndFlagsBits = v189;
    v191._object = v190;
    String.append(_:)(v191);
    v24 = v278;

    v192._countAndFlagsBits = v275;
    v192._object = v179;
    String.append(_:)(v192);

    v193 = v281;
    v194 = v282;
    sub_10000C9D0(v188);
    v195 = sub_100035760(v193, v194, &v285);

    *(v183 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v181, v182, "%{public}s", v183, 0xCu);
    sub_10000CE78(v185);

    v18 = v262;
  }

  else
  {

    v196 = sub_10000C9D0(v150);
  }

  v28 = v256;
  v148 = v265[2];
  v197 = __chkstk_darwin(v196);
  *(&v250 - 2) = v198;
  *(&v250 - 2) = v264;
  __chkstk_darwin(v197);
  *(&v250 - 2) = sub_10001EF68;
  *(&v250 - 1) = v199;

  os_unfair_lock_lock((v148 + 16));
  v200 = v276;
  sub_10001F004(v201);
  if (!v200)
  {
    os_unfair_lock_unlock((v148 + 16));

    (*(v266 + 8))(v270, v267);
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    v202 = v277;

    sub_10000C9D0(v18);

    return;
  }

LABEL_155:
  os_unfair_lock_unlock((v148 + 16));
  __break(1u);
LABEL_156:
  os_unfair_lock_unlock((v148 + 16));

  swift_willThrow();
  (*(v266 + 8))(v270, v267);

  __break(1u);
}

uint64_t sub_10001073C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100010864(char *a1, char *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v198 = a7;
  v199 = a8;
  v206 = a5;
  v207 = a6;
  v203 = a3;
  v205 = a2;
  v191 = type metadata accessor for LogID(0);
  __chkstk_darwin(v191);
  v192 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CharacterSet();
  p_type = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = a1;
  v16 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v16 && sub_1000AA808(0x1Bu, v16))
  {
    usleep(0x16E360u);
  }

  v197 = v16;
  AUAAudioDevice.createStreams()();
  v210 = AUAAudioDevice.inputAUAStreams()();
  v211 = AUAAudioDevice.outputAUAStreams()();
  ObjectType = swift_getObjectType();
  v18 = *(a4 + 32);
  v202 = ObjectType;
  v19 = v18(ObjectType, a4);
  v196 = v8;
  if (v19 >> 62)
  {
    goto LABEL_161;
  }

  v208 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v20 = v211 >> 62;
  if (v211 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v210 >> 62;
  if (!(v210 >> 62))
  {
    v23 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v21 + v23;
    if (!__OFADD__(v21, v23))
    {
      goto LABEL_10;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    swift_once();
    goto LABEL_61;
  }

  v189 = _CocoaArrayWrapper.endIndex.getter();
  v24 = v21 + v189;
  if (__OFADD__(v21, v189))
  {
    goto LABEL_165;
  }

LABEL_10:
  v204 = v22;
  v25 = (*(a4 + 24))(v202, a4);
  v26 = *(v25 + 176);
  v27 = *(v25 + 184);

  v201 = a4;
  if (v27)
  {
    v209 = v26;
    v216 = v26;
    v217 = v27;
    static CharacterSet.whitespaces.getter();
    sub_10001EA64();
    v26 = StringProtocol.trimmingCharacters(in:)();
    v29 = v28;
    v30 = *(p_type + 8);
    p_type += 8;
    v30(v15, v12);

    v31 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v31 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v205;
      v33 = v209;
      goto LABEL_18;
    }

    v33 = 0;
    v27 = 0;
  }

  else
  {
    v33 = 0;
  }

  v32 = v205;
LABEL_18:
  v34 = 0;
  if (v208 == v24)
  {
    v35 = 0;
    if (v24 >= 2)
    {

      v34 = v33;
      v35 = v27;
    }
  }

  else
  {
    v35 = 0;
  }

  v226 = v34;
  v227 = v35;
  if (![v32 hasOutput])
  {
    goto LABEL_32;
  }

  v36 = v211;
  if (v20)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v211;
    if (!v37)
    {
      goto LABEL_32;
    }
  }

  else if (!*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_170;
    }

    v38 = *(v36 + 32);
  }

  v39 = v38;
  v12 = [v38 streamName];

  if (v12)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    goto LABEL_33;
  }

LABEL_32:
  v26 = 0;
  v41 = 0;
LABEL_33:
  v228 = v26;
  v229 = v41;
  if (![v205 hasInput])
  {
    goto LABEL_43;
  }

  v42 = v210;
  if (v204)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v210;
    if (v43)
    {
      goto LABEL_38;
    }

LABEL_43:
    v46 = 0;
    a4 = 0;
    goto LABEL_44;
  }

  if (!*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_38:
  if ((v42 & 0xC000000000000001) == 0)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v42 + 32);
      goto LABEL_41;
    }

LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
  v45 = v44;
  v12 = [v44 streamName];

  if (!v12)
  {
    goto LABEL_43;
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v47;

LABEL_44:
  v230 = v46;
  v231 = a4;
  v208 = v27;
  v209 = v33;
  v232 = v33;
  v233 = v27;

  v48 = 0;
  active = ActiveFunction.deviceName.getter(v202, v201);
  v235 = v49;
  v236 = 0;
  v237 = 0;
  v15 = 6;
  p_type = v225;
  v50 = _swiftEmptyArrayStorage;
LABEL_45:
  if (v48 <= 6)
  {
    v51 = 6;
  }

  else
  {
    v51 = v48;
  }

  v52 = v51 + 1;
  v53 = 16 * v48 + 40;
  while (v48 != 6)
  {
    if (v52 == ++v48)
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      v208 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_6;
    }

    v54 = v53 + 16;
    a4 = *&v225[v53];
    v53 += 16;
    if (a4)
    {
      v55 = *(v224 + v54);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100024068(0, *(v50 + 2) + 1, 1, v50);
      }

      v57 = *(v50 + 2);
      v56 = *(v50 + 3);
      v12 = (v57 + 1);
      if (v57 >= v56 >> 1)
      {
        v50 = sub_100024068((v56 > 1), v57 + 1, 1, v50);
      }

      *(v50 + 2) = v12;
      v58 = &v50[16 * v57];
      *(v58 + 4) = v55;
      *(v58 + 5) = a4;
      goto LABEL_45;
    }
  }

  p_type = sub_100001AB4(&qword_100177290, &qword_100120B80);
  swift_arrayDestroy();
  if (*(v50 + 2))
  {
    v15 = *(v50 + 4);
    v20 = *(v50 + 5);
  }

  else
  {

    v20 = 0x800000010012B570;
    v15 = 0xD000000000000010;
  }

  v24 = v205;
  if (qword_100173CF8 != -1)
  {
    goto LABEL_166;
  }

LABEL_61:
  v59 = *(qword_100179640 + 16);
  if (v59 && (v60 = v59, v61 = String._bridgeToObjectiveC()(), v62 = [v60 BOOLForKey:v61], v60, v24 = v205, v61, (v62 & 1) != 0))
  {
    v63 = 0xE100000000000000;
    v64 = 46;
  }

  else
  {
    v64 = 0;
    v63 = 0xE000000000000000;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v66 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v193 = v15;
  v194 = v20;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v66 localizedStringForKey:v67 value:0 table:0];

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  v216 = v64;
  v217 = v63;

  v72._countAndFlagsBits = v69;
  v72._object = v71;
  String.append(_:)(v72);

  v73 = String._bridgeToObjectiveC()();

  [v24 setDeviceName:v73];

  v74 = v200;
  v75 = [v200 modelName];
  if (!v75)
  {
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v76 = v75;
  [v24 setModelName:v75];

  v223 = v209;
  v224[0] = v208;
  v77 = *&v74[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v77)
  {
    goto LABEL_74;
  }

  v78 = v77;
  v79 = [v78 deviceDescriptor];
  if (!v79 || (v80 = v79[15], !v80))
  {
LABEL_73:

LABEL_74:
    v84 = 0;
    v85 = 0;
    goto LABEL_75;
  }

  v81 = v196;
  v82 = sub_1000F8280(v80);
  if (!v81)
  {
    v196 = 0;
    if (v83)
    {
      v216 = v82;
      v217 = v83;
      v214 = 0;
      v215 = 0xE100000000000000;
      v212 = 0;
      v213 = 0xE000000000000000;
      sub_10001EA64();
      v84 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v85 = v86;

      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v84 = 0;
  v85 = 0;
  v196 = 0;
LABEL_75:
  v87 = 0;
  v224[1] = v84;
  v224[2] = v85;
  v88 = _swiftEmptyArrayStorage;
LABEL_76:
  v89 = &v224[2 * v87];
  while (++v87 != 3)
  {
    v90 = v89 + 2;
    v91 = *v89;
    v89 += 2;
    if (v91)
    {
      v92 = *(v90 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_100024068(0, *(v88 + 2) + 1, 1, v88);
      }

      v94 = *(v88 + 2);
      v93 = *(v88 + 3);
      if (v94 >= v93 >> 1)
      {
        v88 = sub_100024068((v93 > 1), v94 + 1, 1, v88);
      }

      *(v88 + 2) = v94 + 1;
      v95 = &v88[16 * v94];
      *(v95 + 4) = v92;
      *(v95 + 5) = v91;
      goto LABEL_76;
    }
  }

  swift_arrayDestroy();
  if (*(v88 + 2))
  {
    v97 = *(v88 + 4);
    v96 = *(v88 + 5);
  }

  else
  {

    v96 = 0x800000010012B550;
    v97 = 0xD000000000000018;
  }

  v216 = v97;
  v217 = v96;

  v98._countAndFlagsBits = 58;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99 = [v200 modelUID];
  if (!v99)
  {
    goto LABEL_173;
  }

  v100 = v99;

  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  v104._countAndFlagsBits = v101;
  v104._object = v103;
  String.append(_:)(v104);

  v105 = String._bridgeToObjectiveC()();

  v106 = v205;
  [v205 setModelUID:v105];

  v107 = String._bridgeToObjectiveC()();
  [v106 setManufacturerName:v107];

  [v106 setCanBeDefaultInputDevice:{objc_msgSend(v106, "hasInput")}];
  [v106 setCanBeDefaultOutputDevice:{objc_msgSend(v106, "hasOutput")}];
  [v106 setCanBeDefaultSystemDevice:1];
  [v106 setCanChangeDeviceName:0];
  v108 = (*(v201 + 16))(v202);
  if (v108)
  {
    v109 = v108;
    v110 = *(v108 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v110)
    {
      a4 = sub_1000AA808(0x20u, v110);
    }

    else
    {
      a4 = 0;
    }
  }

  else
  {
    a4 = 0;
  }

  [v205 setSupportsHeySiri:a4 & 1];
  v111 = swift_getObjectType();
  v112 = *(v199 + 40);
  v195 = v111;
  v113 = v112();
  if (v113)
  {
    v12 = v113;
    v208 = *(v113 + 16);
    if (v208)
    {
      v15 = 0;
      v207 = v113 + 32;
      v211 = _swiftEmptyArrayStorage;
      v204 = v113;
      while (1)
      {
        if (v15 >= v12[2])
        {
          goto LABEL_156;
        }

        v114 = ClockRateRange.asdSampleRateRanges.getter(*(v207 + 24 * v15), *(v207 + 24 * v15 + 8), *(v207 + 24 * v15 + 16));
        p_type = v114;
        v115 = v114 >> 62;
        v116 = v114 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v117 = v211 >> 62;
        if (v211 >> 62)
        {
          v133 = _CocoaArrayWrapper.endIndex.getter();
          v119 = v133 + v116;
          if (__OFADD__(v133, v116))
          {
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }
        }

        else
        {
          v118 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v119 = v118 + v116;
          if (__OFADD__(v118, v116))
          {
            goto LABEL_128;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v210 = v116;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v117)
        {
          goto LABEL_109;
        }

LABEL_110:
        v211 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v121 = v211 & 0xFFFFFFFFFFFFFF8;
LABEL_111:
        a4 = *(v121 + 16);
        v122 = *(v121 + 24);
        if (v115)
        {
          v124 = v121;
          v125 = _CocoaArrayWrapper.endIndex.getter();
          v121 = v124;
          v123 = v125;
          if (!v125)
          {
LABEL_97:

            if (v210 > 0)
            {
              goto LABEL_157;
            }

            goto LABEL_98;
          }
        }

        else
        {
          v123 = *((p_type & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v123)
          {
            goto LABEL_97;
          }
        }

        if (((v122 >> 1) - a4) < v210)
        {
          goto LABEL_158;
        }

        a4 = v121 + 8 * a4 + 32;
        v209 = v15;
        v206 = v121;
        if (v115)
        {
          if (v123 < 1)
          {
            goto LABEL_160;
          }

          sub_10001EB60(&qword_100174F48, &qword_100174F40, &qword_100120B88, &protocol conformance descriptor for [A]);
          for (i = 0; i != v123; ++i)
          {
            sub_100001AB4(&qword_100174F40, &qword_100120B88);
            v127 = sub_10001D8F4(&v216, i, p_type);
            v129 = *v128;
            (v127)(&v216, 0);
            *(a4 + 8 * i) = v129;
          }
        }

        else
        {
          sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
          swift_arrayInitWithCopy();
        }

        if (v210 <= 0)
        {
          v12 = v204;
          v15 = v209;
        }

        else
        {
          v130 = *(v206 + 16);
          v131 = __OFADD__(v130, v210);
          v132 = v130 + v210;
          v12 = v204;
          v15 = v209;
          if (v131)
          {
            goto LABEL_159;
          }

          *(v206 + 16) = v132;
        }

LABEL_98:
        if (++v15 == v208)
        {
          goto LABEL_130;
        }
      }

      if (!v117)
      {
        v121 = v211 & 0xFFFFFFFFFFFFFF8;
        if (v119 <= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_111;
        }

        goto LABEL_110;
      }

LABEL_109:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_110;
    }

LABEL_129:
    v211 = _swiftEmptyArrayStorage;
LABEL_130:

    sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v205 setSamplingRateRanges:isa];
  }

  v135 = (*(v199 + 16))(v195);
  v136 = 0.0;
  if ((v137 & 1) == 0)
  {
    v136 = v135;
    if (v197)
    {
      if (v135 == 44100 && sub_1000AA808(1u, v197))
      {
        v136 = 48000.0;
      }
    }
  }

  v216 = 0;
  v217 = 0xE000000000000000;
  v138._countAndFlagsBits = 0x3A6574615277656ELL;
  v138._object = 0xE900000000000020;
  String.append(_:)(v138);
  Double.write<A>(to:)();
  v140 = v216;
  v139 = v217;
  v141 = OBJC_IVAR___AUAAudioDevice_logID;
  v142 = qword_100173CC0;
  v143 = v205;
  v144 = v205;
  if (v142 != -1)
  {
    swift_once();
  }

  v145 = type metadata accessor for AUALog(0);
  v209 = sub_10000A1BC(v145, qword_100179508);
  v146 = v196;
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v143[v141], v140, v139, v209, v136, v144);
  v210 = v146;

  [v144 setTransportType:1970496032];
  v211 = v144;
  v147 = v201;
  v148 = v202;
  v149 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{(*(v201 + 40))(v202, v201)}];
  v150 = type metadata accessor for AUACustomNumberProperty();
  v151 = objc_allocWithZone(v150);
  *&v151[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v149;
  v152 = objc_allocWithZone(ASDPropertyAddress);
  v153 = v149;
  v154 = [v152 initWithSelector:1967211587 scope:1735159650 element:0];
  v222.receiver = v151;
  v222.super_class = v150;
  v155 = objc_msgSendSuper2(&v222, "initWithAddress:propertyDataType:qualifierDataType:", v154, 1886155636, 0);

  if (!v155)
  {
    goto LABEL_174;
  }

  v156 = v155;
  [v156 setSettable:0];

  [v211 addCustomProperty:v156];
  v157 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{(*(v147 + 48))(v148, v147)}];
  v158 = objc_allocWithZone(v150);
  *&v158[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v157;
  v159 = objc_allocWithZone(ASDPropertyAddress);
  v160 = v157;
  v161 = [v159 initWithSelector:1967212099 scope:1735159650 element:0];
  v221.receiver = v158;
  v221.super_class = v150;
  v162 = objc_msgSendSuper2(&v221, "initWithAddress:propertyDataType:qualifierDataType:", v161, 1886155636, 0);

  if (!v162)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v163 = v162;
  [v163 setSettable:0];

  v164 = v211;
  [v211 addCustomProperty:v163];

  v165 = USBDevice.locationID.getter();
  if ((v165 & &_mh_execute_header) != 0)
  {
    v166 = 0;
  }

  else
  {
    v166 = v165;
  }

  v167 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v166];
  v168 = objc_allocWithZone(v150);
  *&v168[OBJC_IVAR____TtC9AUASDCore23AUACustomNumberProperty_number] = v167;
  v169 = objc_allocWithZone(ASDPropertyAddress);
  v170 = v167;
  v171 = [v169 initWithSelector:1818446148 scope:1735159650 element:0];
  v220.receiver = v168;
  v220.super_class = v150;
  v172 = objc_msgSendSuper2(&v220, "initWithAddress:propertyDataType:qualifierDataType:", v171, 1886155636, 0);

  if (!v172)
  {
    goto LABEL_176;
  }

  v173 = v172;
  [v173 setSettable:0];

  [v164 addCustomProperty:v173];
  v24 = type metadata accessor for AUACustomBooleanProperty();
  v174 = objc_allocWithZone(v24);
  v174[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
  v175 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967215440 scope:1735159650 element:0];
  v219.receiver = v174;
  v219.super_class = v24;
  v176 = objc_msgSendSuper2(&v219, "initWithAddress:propertyDataType:qualifierDataType:", v175, 1886155636, 0);

  if (v176)
  {
    [v176 setSettable:0];
    p_type = &stru_10016FFF0.type;
    [v164 addCustomProperty:v176];

    v177 = v197;
    v20 = v193;
    v27 = v194;
    if (!v197)
    {
      goto LABEL_154;
    }

    if (!sub_1000AA808(0x1Au, v197))
    {
LABEL_149:
      if (sub_1000AA808(0x23u, v177))
      {
        v216 = 0;
        v217 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);

        v216 = 0xD000000000000028;
        v217 = 0x800000010012B4F0;
        v181._countAndFlagsBits = v20;
        v181._object = v27;
        String.append(_:)(v181);

        v182 = v216;
        v183 = v217;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v184 = sub_10000A1BC(v191, qword_1001794F0);
        v185 = v192;
        sub_10000A2A4(v184, v192);
        sub_100039AA0(1, v185, v182, v183);

        sub_10000C9D0(v185);
        v186 = objc_allocWithZone(v24);
        v186[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
        v187 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967211588 scope:1735159650 element:0];
        v218.receiver = v186;
        v218.super_class = v24;
        v188 = objc_msgSendSuper2(&v218, "initWithAddress:propertyDataType:qualifierDataType:", v187, 1886155636, 0);

        if (v188)
        {
          [v188 setSettable:0];
          [v164 *(p_type + 4000)];

          return;
        }

        goto LABEL_178;
      }

LABEL_154:

      return;
    }

    v33 = v164;
    v216 = 0;
    v217 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v216 = 0xD000000000000020;
    v217 = 0x800000010012B520;
    v178._countAndFlagsBits = v20;
    v178._object = v27;
    String.append(_:)(v178);
    v26 = v216;
    v12 = v217;
    if (qword_100173CB8 == -1)
    {
LABEL_148:
      v179 = sub_10000A1BC(v191, qword_1001794F0);
      v180 = v192;
      sub_10000A2A4(v179, v192);
      sub_100039AA0(1, v180, v26, v12);

      sub_10000C9D0(v180);
      v164 = v33;
      [v33 setWantsDisplayRouting:1];
      v177 = v197;
      goto LABEL_149;
    }

LABEL_171:
    swift_once();
    goto LABEL_148;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
}