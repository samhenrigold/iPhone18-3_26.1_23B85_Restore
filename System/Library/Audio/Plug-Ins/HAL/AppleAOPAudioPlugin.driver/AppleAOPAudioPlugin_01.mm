float CAVolumeCurve::ConvertDBToScalar(CAVolumeCurve *this, float a2)
{
  v3 = CAVolumeCurve::ConvertDBToRaw(this, a2);

  return CAVolumeCurve::ConvertRawToScalar(this, v3);
}

uint64_t CAVolumeCurve::ConvertScalarToRaw(CAVolumeCurve *this, float a2)
{
  v3 = 0.0;
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  v5 = fmaxf(a2, 0.0);
  MaximumRaw = CAVolumeCurve::GetMaximumRaw(this);
  if (*(this + 3))
  {
    v3 = *(*(this + 1) + 36);
  }

  v7 = fminf(v5, 1.0);
  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  v9 = *&MaximumDB - v3;
  if (*(this + 32) == 1 && v9 > 30.0)
  {
    v7 = powf(v7, *(this + 11) / *(this + 10));
  }

  v11 = llroundf(v7 * (MaximumRaw - v4));
  v12 = __OFADD__(v4, v11);
  v13 = v4 + v11;
  v14 = ((v4 | v11) >> 31) ^ 0x7FFFFFFF;
  if (v12)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

uint64_t CAVolumeCurve::ConvertScalarToDB(CAVolumeCurve *this, float a2)
{
  v3 = CAVolumeCurve::ConvertScalarToRaw(this, a2);

  return CAVolumeCurve::ConvertRawToDB(this, v3);
}

void **sub_1339C(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t *sub_13428(uint64_t a1, int *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_134F8(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_13550(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_13550(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_136EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_136EC(a1, *a2);
    sub_136EC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t BorealisOwlLog::SetLevel(uint64_t this)
{
  if (this <= 5)
  {
    BorealisOwlLog::mLogLevel = this;
  }

  return this;
}

void sub_13754(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = _sharedPlugin;
  _sharedPlugin = v1;
}

void sub_139CC(BorealisOwlLog *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  BorealisOwlLog::GetInstance(a1);
  BorealisOwlLog::VLog((&dword_0 + 2), a1, va, v9);
}

void sub_13D74(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = *(v1 + v3);
  if (v4)
  {
    IOObjectRelease(v4);
    *(v1 + v3) = 0;
  }

  v5 = *(v1 + 52);
  if (v5)
  {
    IOObjectRelease(v5);
    *(v1 + 52) = 0;
  }

  v6 = *(v1 + v2);
  if (v6)
  {
    IONotificationPortDestroy(v6);
    *(v1 + v2) = 0;
  }

  __cxa_rethrow();
}

void sub_13DE4(uint64_t a1, int a2)
{
  sub_1224("+-IOAudioServiceMatchingHandler()\n");
  v10 = qword_28A18;
  v7 = (*(qword_28A18[0] + 16))();
  v11 = v7;
  BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(v9, a2, 0);
  v3 = BorealisOwl_IOKitIterator::Next(v9);
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(&v8, v3);
  while (BorealisOwl_IOKitObject::IsValid(&v8))
  {
    if (BorealisOwl_IOKitObject::ConformsTo(&v8, "AppleAOPAudioController"))
    {
      v4 = +[AppleAOPAudioPlugin sharedPlugin];
      v5 = [[AppleAOPAudioDevice alloc] initWithDeviceUID:*(v4 + 80) withDeviceName:*(v4 + 88) withModelName:*(v4 + 96) withPlugin:v4 withIOObject:BorealisOwl_IOKitObject::CopyObject(&v8)];
      if (v5)
      {
        [v4 addIODevice:v5];
        [(AppleAOPAudioDevice *)v5 activate];
        sub_1224("  Added device %d\n", *(v4 + 8));
      }
    }

    v6 = BorealisOwl_IOKitIterator::Next(v9);
    BorealisOwl_IOKitObject::operator=(&v8, v6);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v8);
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(v9);
  if (v7)
  {
    (*(qword_28A18[0] + 24))();
  }
}

void sub_13FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, BorealisOwl_IOKitObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_140A0(uint64_t a1, int a2)
{
  sub_1224("+-IOVoiceTriggerServiceMatchingHandler()\n");
  v9 = qword_28A18;
  v3 = (*(qword_28A18[0] + 16))(qword_28A18);
  v10 = v3;
  BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(v8, a2, 0);
  v4 = BorealisOwl_IOKitIterator::Next(v8);
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(&v7, v4);
  while (BorealisOwl_IOKitObject::IsValid(&v7))
  {
    if (BorealisOwl_IOKitObject::ConformsTo(&v7, "AppleAOPVoiceTriggerController"))
    {
      v5 = +[AppleAOPAudioPlugin sharedPlugin];
      [v5 addVoiceTriggerService:&v7];
    }

    v6 = BorealisOwl_IOKitIterator::Next(v8);
    BorealisOwl_IOKitObject::operator=(&v7, v6);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v7);
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(v8);
  if (v3)
  {
    (*(qword_28A18[0] + 24))(qword_28A18);
  }
}

void sub_14468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_14494(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_837C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_14C10(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_147B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_B96C(va);

  _Unwind_Resume(a1);
}

void **sub_14AA8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_14BD4(v6, v10);
    }

    sub_837C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_14BD4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_14C10(a1, a2);
  }

  sub_837C();
}

void sub_14C10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_846C();
}

void sub_14C58()
{
  v0 = objc_autoreleasePoolPush();
  CADeprecated::CAMutex::CAMutex(qword_28A18, "IOServiceMutex");
  __cxa_atexit(CADeprecated::CAMutex::~CAMutex, qword_28A18, &dword_0);

  objc_autoreleasePoolPop(v0);
}

void AOPAudioDeviceHWManager::AOPAudioDeviceHWManager(AOPAudioDeviceHWManager *this, unsigned int a2)
{
  *this = off_24C08;
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject((this + 8), a2);
  *(this + 6) = 0;
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 23) = 0;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 136) = xmmword_1CF50;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 184) = xmmword_1CF60;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = xmmword_1CF70;
  *(this + 232) = xmmword_1CF60;
  *(this + 216) = 0u;
  v7[0] = off_24C28;
  v7[3] = v7;
  *(this + 248) = 0u;
  sub_175EC(this + 264, v7);
  sub_1771C(v7);
  v6[0] = off_24C70;
  v6[3] = v6;
  *(this + 37) = 0;
  *(this + 38) = 0;
  sub_17684(this + 312, v6);
  sub_1779C(v6);
  v5[0] = off_24CB8;
  v5[3] = v5;
  *(this + 43) = 0;
  *(this + 44) = 0;
  sub_17684(this + 360, v5);
  sub_1779C(v5);
  AOPAudioDeviceHWManager::_HW_Open(this);
  v3 = 0;
  v4 = 0;
  AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v3, &v4);
  *(this + 88) = v4 != 0;
  v3 = 0;
  v4 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v3, &v4))
  {
    *(this + 23) = v4;
  }

  v3 = 1;
  v4 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v3, &v4))
  {
    *(this + 24) = v4;
  }

  v3 = 2;
  v4 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v3, &v4))
  {
    *(this + 25) = v4;
  }
}

void sub_14F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1779C(va);
  sub_1779C(v9);
  sub_1771C(v8);
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(v7);
  _Unwind_Resume(a1);
}

BorealisOwl_IOKitObject *AOPAudioDeviceHWManager::_HW_Open(AOPAudioDeviceHWManager *this)
{
  sub_1224("+-DeviceHWManager::_HW_Open()\n");
  BorealisOwl_IOKitObject::OpenConnection((this + 8), 0, v2, v3, v4, v5, v6, v7);
  if (BorealisOwl_IOKitObject::CallMethod((this + 8), 0, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "_HW_Open", 130, "BorealisOwl_Device::_HW_Open: user client method failed");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18DEC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  AOPAudioDeviceHWManager::HW_AcquireRingBuffer(this);
  AOPAudioDeviceHWManager::HW_UpdateRingBufferDescription(this);
  v12 = 0;
  v11 = 1;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v11, &v12))
  {
    v8 = v12;
    *(this + 23) = v12;
    *(this + 24) = v8;
  }

  v12 = 0;
  v11 = 0;
  result = AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v11, &v12);
  *(this + 88) = v12 != 0;
  return result;
}

BOOL AOPAudioDeviceHWManager::HW_AudioGetControlValue(AOPAudioDeviceHWManager *this, int a2, int *a3)
{
  v7 = a2;
  v8 = 0;
  switch(a2)
  {
    case 2:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (result)
      {
        v6 = v8;
        *(this + 25) = v8;
        if (!a3)
        {
          return 1;
        }

        goto LABEL_9;
      }

      break;
    case 1:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (!result)
      {
        return result;
      }

      v6 = v8;
      *(this + 24) = v8;
      if (!a3)
      {
        return 1;
      }

LABEL_9:
      *a3 = v6;
      return 1;
    case 0:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (!result)
      {
        return result;
      }

      v6 = v8;
      *(this + 23) = v8;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_9;
    default:
      return 0;
  }

  return result;
}

void AOPAudioDeviceHWManager::~AOPAudioDeviceHWManager(AOPAudioDeviceHWManager *this)
{
  *this = off_24C08;
  AOPAudioDeviceHWManager::_HW_Close(this);
  sub_1779C(this + 360);
  sub_1779C(this + 312);
  sub_1771C(this + 264);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject((this + 8));
}

{
  AOPAudioDeviceHWManager::~AOPAudioDeviceHWManager(this);

  operator delete();
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::_HW_Close(AOPAudioDeviceHWManager *this)
{
  sub_1224("+-DeviceHWManager::_HW_Close() {%p, %p}\n", *(this + 10), *(this + 7));
  AOPAudioDeviceHWManager::HW_ReleaseRingBuffer(this);
  BorealisOwl_IOKitObject::CallMethod((this + 8), 1u, 0, 0, 0, 0, 0, 0, 0, 0);
  BorealisOwl_IOKitObject::CloseConnection((this + 8));

  return AOPAudioDeviceHWManager::_CloseVTService(this);
}

void AOPAudioDeviceHWManager::HW_AddVoiceTriggerSupport(AOPAudioDeviceHWManager *this, BorealisOwl_IOKitObject *a2)
{
  if (*(this + 6))
  {
    AOPAudioDeviceHWManager::_CloseVTService(this);
  }

  operator new();
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::_CloseVTService(AOPAudioDeviceHWManager *this)
{
  v1 = this;
  if (*(this + 6) && (sub_1224("+-DeviceHWManager::_CloseVTService()\n"), (this = *(v1 + 6)) != 0))
  {
    BorealisOwl_IOKitObject::CallMethod(this, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    BorealisOwl_IOKitObject::CloseConnection(*(v1 + 6));
    this = *(v1 + 6);
    *(v1 + 6) = 0;
    if (this)
    {
      v2 = *(*this + 8);

      return v2();
    }
  }

  else
  {
    *(v1 + 6) = 0;
  }

  return this;
}

uint64_t AOPAudioDeviceHWManager::HW_CopyDeviceUID(AOPAudioDeviceHWManager *this, unsigned int a2, uint64_t a3, const __CFString **a4)
{
  v5 = 0;
  BorealisOwl_IOKitObject::CopyProperty_CFString(this, @"device UID", &v5, a4);
  return v5;
}

mach_vm_address_t AOPAudioDeviceHWManager::HW_AcquireRingBuffer(AOPAudioDeviceHWManager *this)
{
  v5 = 0;
  v2 = BorealisOwl_IOKitObject::MapMemory((this + 8), 0, 1u, &v5);
  *(this + 10) = v2;
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18F10();
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 560947818;
  }

  result = BorealisOwl_IOKitObject::MapMemory((this + 8), 1u, 1u, this + 16);
  *(this + 7) = result;
  if (!result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18ECC();
    }

    goto LABEL_8;
  }

  return result;
}

void AOPAudioDeviceHWManager::HW_ReleaseRingBuffer(AOPAudioDeviceHWManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    BorealisOwl_IOKitObject::ReleaseMemory((this + 8), v2, 0);
    *(this + 10) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    BorealisOwl_IOKitObject::ReleaseMemory((this + 8), v3, 1u);
    *(this + 7) = 0;
  }
}

uint64_t AOPAudioDeviceHWManager::HW_EnableListening(AOPAudioDeviceHWManager *this)
{
  *v3 = xmmword_1CF80;
  result = BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, v3, 2u, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    sub_8C70("AOPAudioDeviceHWManager::HW_EnableListening: user client method failed");
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

BOOL AOPAudioDeviceHWManager::HW_AudioSetControlValue(AOPAudioDeviceHWManager *this, unsigned int a2, unsigned int a3)
{
  v5 = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3 || a2 == 5)
      {
        v7 = a2;
        v8 = a3;
        return BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0) == 0;
      }

      return v5;
    }

    v7 = 2;
    v8 = a3;
    if (!BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      *(this + 25) = a3;
      return 1;
    }

    return 0;
  }

  if (!a2)
  {
    v7 = 0;
    v8 = a3;
    if (!BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      *(this + 23) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v5 = 1;
    v7 = 1;
    v8 = a3;
    if (BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      v5 = 0;
      *(this + 24) = a3;
    }
  }

  return v5;
}

BOOL AOPAudioDeviceHWManager::_HW_AudioGetControlValue(AOPAudioDeviceHWManager *this, unint64_t *a2, unint64_t *a3)
{
  *a3 = 0;
  v6 = 1;
  v4 = BorealisOwl_IOKitObject::CallMethod((this + 8), 4u, a2, 1u, 0, 0, a3, &v6, 0, 0);
  if (v4)
  {
    sub_8C70("DeviceHWManager::_HW_AudioGetControlValue(inControlID: %llu) failing\n", *a2);
  }

  return v4 == 0;
}

void sub_159EC(BorealisOwlLog *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  BorealisOwlLog::GetInstance(a1);
  BorealisOwlLog::VLog((&dword_0 + 1), " DeviceHWManager::HW_VoiceTriggerGetControlValue(), unrecognized control ID. \n", va, v8);
}

BOOL AOPAudioDeviceHWManager::_HW_AudioSetControlValue(AOPAudioDeviceHWManager *this, unsigned int a2, unsigned int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, v4, 2u, 0, 0, 0, 0, 0, 0) == 0;
}

uint64_t AOPAudioDeviceHWManager::HW_GetVoiceTriggerData(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_191C8();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v5 = 1937010544;
LABEL_10:
    exception[2] = v5;
  }

  v6 = 160;
  result = BorealisOwl_IOKitObject::CallMethod(v2, 4u, 0, 0, 0, 0, 0, 0, outputStruct, &v6);
  if (result)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "HW_GetVoiceTriggerData", 384, "AOPAudioDeviceHWManager::_HW_GetVoiceTriggerData: user client method failed");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19158();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v5 = 1852797029;
    goto LABEL_10;
  }

  return result;
}

uint64_t AOPAudioDeviceHWManager::HW_IsVoiceTriggerEnabled(AOPAudioDeviceHWManager *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    Object = BorealisOwl_IOKitObject::GetObject(v1);
    v7 = 0;
    if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"voice trigger enabled", &v7, v3) & 1) == 0)
    {
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "HW_IsVoiceTriggerEnabled", 479, "AOPAudioDeviceHWManager::HW_IsVoiceTriggerEnabled() failed to get registry key");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1927C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }

    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AOPAudioDeviceHWManager::HW_GetIsIORunning(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v5 = 0;
  if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"listening enabled", &v5, v2) & 1) == 0)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "HW_GetIsIORunning", 494, "AOPAudioDeviceHWManager::HW_GetIsIORunning() failed to get registry key");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_192EC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v5;
}

uint64_t AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  if (BorealisOwl_IOKitObject::HasProperty(Object, @"listening on gesture supported", v3))
  {
    v4 = BorealisOwl_IOKitObject::GetObject((this + 8));
    var11[0] = 0;
    if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(v4, @"listening on gesture supported", var11, v5) & 1) == 0)
    {
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "HW_HasPropertyEnableListeningOnGesture", 621, "AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture() failed to get registry key");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1966C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }

    v6 = var11[0];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v5 = 0;
  if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"listening on gesture enabled", &v5, v2) & 1) == 0)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", "HW_IsListeningOnGestureEnabled", 635, "AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled() failed to get registry key");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_196DC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v5;
}

uint64_t *AOPAudioDeviceHWManager::_GetHWDescription(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v19);
  v3 = *(this + 6);
  if (v3)
  {
    IsConnectionOpen = BorealisOwl_IOKitObject::IsConnectionOpen(v3);
    if (!IsConnectionOpen)
    {
      BorealisOwl_IOKitObject::OpenConnection(*(this + 6), 0, v4, v5, v6, v7, v8, v9);
    }

    sub_C0F4(&v19, "  VoiceTriggerEnable:  ", 23);
    v23 = 0;
    v24 = 0;
    AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v23, &v24);
    *(this + 88) = v24 != 0;
    v11 = std::ostream::operator<<();
    sub_C0F4(v11, "\n", 1);
    if (!IsConnectionOpen)
    {
      BorealisOwl_IOKitObject::CloseConnection(*(this + 6));
    }
  }

  v25 = 0;
  v26 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v25, &v26))
  {
    *(this + 23) = v26;
    sub_C0F4(&v19, "  kControlEnabledChannelMask:  ", 31);
    v12 = std::ostream::operator<<();
    sub_C0F4(v12, "\n", 1);
  }

  v25 = 1;
  v26 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v25, &v26))
  {
    *(this + 24) = v26;
    sub_C0F4(&v19, "  kControlActiveChannelMask:   ", 31);
    v13 = std::ostream::operator<<();
    sub_C0F4(v13, "\n", 1);
  }

  sub_C0F4(&v19, "  listening enabled:                          ", 46);
  AOPAudioDeviceHWManager::HW_GetIsIORunning(this);
  v14 = std::ostream::operator<<();
  sub_C0F4(v14, "\n", 1);
  HasPropertyEnableListeningOnGesture = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(this);
  sub_C0F4(&v19, "  has listening on gesture:                   ", 46);
  v16 = std::ostream::operator<<();
  sub_C0F4(v16, "\n", 1);
  if (HasPropertyEnableListeningOnGesture)
  {
    sub_C0F4(&v19, "  listening on gesture enabled:               ", 46);
    AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled(this);
    v17 = std::ostream::operator<<();
    sub_C0F4(v17, "\n", 1);
  }

  std::stringbuf::str();
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1626C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_begin_catch(a1);
  v3 = sub_C0F4(va, "  <exception thrown in HW_VoiceTriggerGetControlValue", 53);
  sub_C0F4(v3, "\n", 1);
  __cxa_end_catch();
  JUMPOUT(0x15FF0);
}

void sub_1629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_end_catch();
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16304(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t *AOPAudioDeviceHWManager::RingBufferDescription::DumpToString()
{
  sub_B67C(&v7);
  sub_C0F4(&v7, "  mBuffer:                  ", 28);
  v2 = std::ostream::operator<<();
  sub_C0F4(v2, "\n", 1);
  sub_C0F4(&v7, "  mSizeBytes:               ", 28);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "\n", 1);
  sub_C0F4(&v7, "  mSafetyOffsetFrames:      ", 28);
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, "\n", 1);
  sub_C0F4(&v7, "  mZeroTimeStampWrapFrames: ", 28);
  v5 = std::ostream::operator<<();
  sub_C0F4(v5, "\n", 1);
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_16304(va);
  _Unwind_Resume(a1);
}

void *operator<<(void *a1, void *a2)
{
  sub_C0F4(a1, "  mInitialSampleTime: ", 22);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "\n", 1);
  sub_C0F4(a1, "  mFrameTimeDelta:    ", 22);
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, "\n", 1);
  sub_C0F4(a1, "  mSampleTime:        ", 22);
  v5 = std::ostream::operator<<();
  sub_C0F4(v5, "\n", 1);
  sub_C0F4(a1, "  mHostTime:          ", 22);
  v6 = std::ostream::operator<<();
  sub_C0F4(v6, "\n", 1);
  return a1;
}

uint64_t *AOPAudioDeviceHWManager::_DumpDebugSnapshots(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v34);
  v3 = sub_C0F4(&v34, "DriverStatusInitial                     ", 40);
  v4 = sub_C0F4(v3, "\n", 1);
  v5 = *(this + 120);
  *v29 = *(this + 104);
  v30 = v5;
  v31 = *(this + 136);
  sub_16B8C(v29);
  if (v33 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v33 >= 0)
  {
    v7 = HIBYTE(v33);
  }

  else
  {
    v7 = __p[1];
  }

  sub_C0F4(v4, v6, v7);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_C0F4(&v34, "DriverStatusCurrent                     ", 40);
  v9 = sub_C0F4(v8, "\n", 1);
  v10 = *(this + 168);
  *v29 = *(this + 152);
  v30 = v10;
  v31 = *(this + 184);
  sub_16B8C(v29);
  if (v33 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v33 >= 0)
  {
    v12 = HIBYTE(v33);
  }

  else
  {
    v12 = __p[1];
  }

  sub_C0F4(v9, v11, v12);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = sub_C0F4(&v34, "SampleTimeInitial                       ", 40);
  *__p = *(this + 200);
  v33 = *(this + 27);
  sub_16D30(__p);
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v14 = v29;
  }

  else
  {
    v14 = v29[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v15 = BYTE7(v30);
  }

  else
  {
    v15 = v29[1];
  }

  sub_C0F4(v13, v14, v15);
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v16 = sub_C0F4(&v34, "SampleTimeCurrent                       ", 40);
  *__p = *(this + 14);
  v33 = *(this + 30);
  sub_16D30(__p);
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v17 = v29;
  }

  else
  {
    v17 = v29[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v18 = BYTE7(v30);
  }

  else
  {
    v18 = v29[1];
  }

  sub_C0F4(v16, v17, v18);
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v19 = sub_C0F4(&v34, "ChecksumVerifier                        ", 40);
  sub_16EE4(*(this + 31), *(this + 32));
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v20 = v29;
  }

  else
  {
    v20 = v29[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v21 = BYTE7(v30);
  }

  else
  {
    v21 = v29[1];
  }

  sub_C0F4(v19, v20, v21);
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v22 = sub_C0F4(&v34, "OOBOver                                 ", 40);
  sub_16EE4(*(this + 37), *(this + 38));
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v24 = BYTE7(v30);
  }

  else
  {
    v24 = v29[1];
  }

  sub_C0F4(v22, v23, v24);
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v25 = sub_C0F4(&v34, "OOBUnder                                ", 40);
  sub_16EE4(*(this + 43), *(this + 44));
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v26 = v29;
  }

  else
  {
    v26 = v29[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v27 = BYTE7(v30);
  }

  else
  {
    v27 = v29[1];
  }

  sub_C0F4(v25, v26, v27);
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  std::stringbuf::str();
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  std::locale::~locale(v36);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_16304(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_16B8C(__int128 *a1)
{
  sub_B67C(&v6);
  v2 = *a1;
  v5[1] = a1[1];
  v5[0] = v2;
  operator<<(&v6, v5);
  sub_C0F4(&v6, "  updates:            ", 22);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "\n", 1);
  std::stringbuf::str();
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16D30(uint64_t a1)
{
  sub_B67C(&v3);
  sub_C0F4(&v3, "[", 1);
  v1 = std::ostream::operator<<();
  sub_C0F4(v1, ", updates: ", 11);
  std::ostream::operator<<();
  sub_C0F4(&v3, "]\n", 2);
  std::stringbuf::str();
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16EE4(uint64_t a1, uint64_t a2)
{
  sub_B67C(&v5);
  sub_C0F4(&v5, "[passes: ", 9);
  v2 = std::ostream::operator<<();
  sub_C0F4(v2, "/", 1);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "]\n", 2);
  std::stringbuf::str();
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t *AOPAudioDeviceHWManager::_DumpDriverStatus(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v9);
  if (*(this + 10))
  {
    v3 = sub_C0F4(&v9, "DriverStatus:                           ", 40);
    v4 = sub_C0F4(v3, "\n", 1);
    v5 = operator<<(v4, *(this + 10));
  }

  else
  {
    v6 = sub_C0F4(&v9, "DriverStatus:                           ", 40);
    v7 = sub_C0F4(v6, "\n", 1);
    v5 = sub_C0F4(v7, "<null>", 6);
  }

  sub_C0F4(v5, "\n", 1);
  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t *AOPAudioDeviceHWManager::HW_DumpDriverState(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v22);
  v2 = sub_C0F4(&v22, "InputRingBuffer:                      \n", 39);
  AOPAudioDeviceHWManager::RingBufferDescription::DumpToString();
  if ((v21 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v21 & 0x80u) == 0)
  {
    v4 = v21;
  }

  else
  {
    v4 = v20;
  }

  v5 = sub_C0F4(v2, p_p, v4);
  sub_C0F4(v5, "\n", 1);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  AOPAudioDeviceHWManager::_DumpDriverStatus(this);
  if ((v21 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v20;
  }

  sub_C0F4(&v22, v6, v7);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  sub_C0F4(&v22, "mVoiceTriggerEnabled:                   ", 40);
  v8 = std::ostream::operator<<();
  sub_C0F4(v8, "\n", 1);
  sub_C0F4(&v22, "mEnabledChannelMask:                    ", 40);
  v9 = std::ostream::operator<<();
  sub_C0F4(v9, "\n", 1);
  sub_C0F4(&v22, "mActiveChannelMask:                     ", 40);
  v10 = std::ostream::operator<<();
  sub_C0F4(v10, "\n", 1);
  sub_C0F4(&v22, "mInputSampleRate:                       ", 40);
  v11 = std::ostream::operator<<();
  sub_C0F4(v11, "\n", 1);
  v12 = sub_C0F4(&v22, "_HW_ description:                     \n", 39);
  AOPAudioDeviceHWManager::_GetHWDescription(this);
  if ((v21 & 0x80u) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p;
  }

  if ((v21 & 0x80u) == 0)
  {
    v14 = v21;
  }

  else
  {
    v14 = v20;
  }

  v15 = sub_C0F4(v12, v13, v14);
  sub_C0F4(v15, "\n", 1);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  AOPAudioDeviceHWManager::_DumpDebugSnapshots(this);
  if ((v21 & 0x80u) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if ((v21 & 0x80u) == 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = v20;
  }

  sub_C0F4(&v22, v16, v17);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_175A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_16304(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_175EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_17684(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1771C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1779C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL VoiceTriggerFileLoggingIsEnabled(void)
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (!Value)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Second Pass Audio Logging Enabled", @"com.apple.voicetrigger", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue <= 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL PowerWakeFileLoggingIsEnabled(void)
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (!Value)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Log AOP Audio On Wake", @"com.apple.voicetrigger", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue <= 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

unint64_t GetOrCreateAudioLogDirectory@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_28A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28A88))
  {
    qword_28A80 = sub_17BD0();
    __cxa_guard_release(&qword_28A88);
  }

  v2 = qword_28A80;
  result = strlen(qword_28A80);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_C484();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memmove(a1, v2, result);
  }

  *(a1 + v4) = 0;
  return result;
}

const char *sub_17BD0()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/" isDirectory:0];

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    syslog(3, "dir doesn't exist }\n");
    v3 = +[NSFileManager defaultManager];
    v7 = 0;
    v4 = [v3 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/" withIntermediateDirectories:1 attributes:0 error:&v7];
    v2 = v7;

    if ((v4 & 1) == 0)
    {
      syslog(3, "could not create }\n");
      v5 = "/tmp";
      goto LABEL_6;
    }
  }

  v5 = "/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/";
LABEL_6:

  return v5;
}

void CACFMachPort::CACFMachPort(CACFMachPort *this, void (__cdecl *a2)(CFMachPortRef, void *, CFIndex, void *), void *a3)
{
  *this = &off_24D00;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 24) = 1;
  context.version = 1;
  context.info = a3;
  memset(&context.retain, 0, 24);
  v5 = CFMachPortCreate(0, a2, &context, 0);
  *v4 = v5;
  if (!v5)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_198CC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(0, v5, 0);
  *(this + 2) = RunLoopSource;
  if (!RunLoopSource)
  {
    CFMachPortInvalidate(*v4);
    CFRelease(*v4);
    *v4 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFMachPort::CACFMachPort(s): couldn't create the CFRunLoopSource", v16, 2u);
    }

    goto LABEL_8;
  }
}

void CACFMachPort::CACFMachPort(CACFMachPort *this, mach_port_t a2, CFMachPortCallBack callout, void (__cdecl *a4)(CFMachPortRef, void *), void *a5)
{
  *this = &off_24D00;
  *(this + 1) = 0;
  v7 = (this + 8);
  *(this + 2) = 0;
  *(this + 24) = 0;
  context.version = 1;
  context.info = a5;
  memset(&context.retain, 0, 24);
  if (a2)
  {
    v8 = CFMachPortCreateWithPort(0, a2, callout, &context, 0);
    *v7 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_6;
    }

    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_19908(v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  v11 = CFMachPortCreate(0, callout, &context, 0);
  *v7 = v11;
  if (!v11)
  {
    v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      sub_19944(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_18;
  }

  v9 = v11;
  v10 = 1;
LABEL_6:
  *(this + 24) = v10;
  RunLoopSource = CFMachPortCreateRunLoopSource(0, v9, 0);
  *(this + 2) = RunLoopSource;
  if (!RunLoopSource)
  {
    if (*(this + 24) == 1)
    {
      CFMachPortInvalidate(*v7);
    }

    CFRelease(*v7);
    *v7 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFMachPort::CACFMachPort: couldn't create the CFRunLoopSource", v30, 2u);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    CFMachPortSetInvalidationCallBack(*v7, a4);
  }
}

void CACFMachPort::~CACFMachPort(CACFMachPort *this)
{
  *this = &off_24D00;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (*(this + 24) == 1)
    {
      CFMachPortInvalidate(v3);
      v3 = *(this + 1);
    }

    CFRelease(v3);
  }
}

{
  CACFMachPort::~CACFMachPort(this);

  operator delete();
}

uint64_t CACFMachPort::ReceiveMessage(CFMachPortRef *this, mach_msg_size_t a2, mach_msg_header_t *a3, mach_msg_timeout_t a4)
{
  Port = CFMachPortGetPort(this[1]);
  *&a3->msgh_bits = 0;
  a3->msgh_remote_port = 0;
  a3->msgh_local_port = Port;
  *&a3->msgh_voucher_port = 0;
  if (a4)
  {
    v8 = 258;
  }

  else
  {
    v8 = 2;
  }

  return mach_msg(a3, v8, 0, a2, Port, a4, 0);
}

id AppleAOPAudioPluginFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = +[AppleAOPAudioPlugin sharedPlugin];
  v5 = [v4 driverRef];

  return v5;
}

void sub_18710(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2080;
  v4 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", v2, 0x12u);
}

void sub_189D0(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CADispatchQueue::RemoveMachPortReceiver: deallocating the send right failed, Error: 0x%X", v1, 8u);
}

void sub_18A50(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CADispatchQueue::RemoveMachPortReceiver: deallocating the receive right failed, Error: 0x%X", v1, 8u);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}