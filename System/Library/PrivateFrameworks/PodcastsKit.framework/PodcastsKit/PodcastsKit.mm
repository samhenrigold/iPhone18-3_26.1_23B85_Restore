uint64_t sub_25E9F2EA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD0F9C0;
  return result;
}

uint64_t sub_25E9F2EF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD0F9C0 = v1;
  return result;
}

uint64_t sub_25E9F2F38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E9F2F80@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD0FAE0;
  return result;
}

uint64_t sub_25E9F2FCC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD0FAE0 = v1;
  return result;
}

uint64_t sub_25E9F3014()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9F3050()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E9F30A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9F30DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E9F30EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E9F3108()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9F314C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E9F3194()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E9F31D4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E9F3224()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E9F326C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD0FC00;
  return result;
}

uint64_t sub_25E9F32B8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD0FC00 = v1;
  return result;
}

uint64_t sub_25E9F3300()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9F3338()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E9F3380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E9F33BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9F33F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E9F342C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25E9F3794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25E9F4010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_25E9F4154(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_25E9F43FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E9F45B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E9F55F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E9F5CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E9F6ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E9F70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E9F72F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E9FBA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_25E9FD438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E9FDD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25E9FEDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_25E9FEFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_25E9FFF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EA00108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25EA03E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EA042A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EA04AAC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EA05A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void POLogInitIfNeeded(uint64_t result, uint64_t a2)
{
  if (POLogInitIfNeeded_onceToken != -1)
  {
    POLogInitIfNeeded_cold_1();
  }
}

uint64_t __POLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(POLoggingSubsystem, POLoggingContextCommand);
  v1 = POLogContextCommand;
  POLogContextCommand = v0;

  POLogContextSync = os_log_create(POLoggingSubsystem, POLoggingContextCommand);

  return MEMORY[0x2821F96F8]();
}

void sub_25EA05F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_25EA09D68()
{
  v1 = *v0;
  sub_25EA1E928();
  MEMORY[0x25F8C5780](v1);
  return sub_25EA1E948();
}

uint64_t sub_25EA09DDC(uint64_t a1)
{
  v2 = *v1;
  sub_25EA1E928();
  MEMORY[0x25F8C5780](v2);
  return sub_25EA1E948();
}

unint64_t sub_25EA09E20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25EA0A0B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static SubscriptionControllerFactory.platformInstance()()
{
  if ([objc_opt_self() supportsBlueMoon])
  {
    type metadata accessor for MediaAPISubscriptionController();
    v0 = swift_allocObject();
    sub_25EA1E538();
    swift_allocObject();
    *(v0 + 16) = sub_25EA1E528();
    return v0;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for MediaRemoteSubscriptionController());

    return [v2 init];
  }
}

id SubscriptionControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SubscriptionControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SubscriptionControllerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SubscriptionControllerFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_DWORD *sub_25EA0A098@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_25EA0A0B4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25EA0A0EC()
{
  result = qword_27FD0F9A8;
  if (!qword_27FD0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0F9A8);
  }

  return result;
}

void type metadata accessor for MRMediaRemoteCommandHandlerStatus()
{
  if (!qword_27FD0F9B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FD0F9B0);
    }
  }
}

id StoreId.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___PKStoreId_underlyingStoreId];
  *v6 = a1;
  *(v6 + 1) = a2;
  if (a1 == 48 && a2 == 0xE100000000000000 || (sub_25EA1E908() & 1) != 0 || a1 == 0x3030303030303031 && a2 == 0xED00003030303030 || (sub_25EA1E908() & 1) != 0)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v8.receiver = v5;
    v8.super_class = v2;
    return objc_msgSendSuper2(&v8, sel_init);
  }
}

id StoreId.init(value:)(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR___PKStoreId_underlyingStoreId];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (a1 == 48 && a2 == 0xE100000000000000 || (sub_25EA1E908() & 1) != 0 || a1 == 0x3030303030303031 && a2 == 0xED00003030303030 || (sub_25EA1E908() & 1) != 0)
  {

    type metadata accessor for StoreId();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v7.receiver = v2;
    v7.super_class = type metadata accessor for StoreId();
    return objc_msgSendSuper2(&v7, sel_init);
  }
}

id StoreId.init(value:)(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  v3 = sub_25EA1E8F8();
  v5 = v4;
  v6 = &v2[OBJC_IVAR___PKStoreId_underlyingStoreId];
  *v6 = v3;
  v6[1] = v4;
  v7 = v3 == 48 && v4 == 0xE100000000000000;
  if (v7 || (v8 = v3, (sub_25EA1E908() & 1) != 0) || (v8 == 0x3030303030303031 ? (v9 = v5 == 0xED00003030303030) : (v9 = 0), v9 || (sub_25EA1E908() & 1) != 0))
  {

    type metadata accessor for StoreId();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = type metadata accessor for StoreId();
    return objc_msgSendSuper2(&v11, sel_init);
  }
}

id StoreId.init(value:)(void *a1)
{
  v3 = [a1 stringValue];
  v4 = sub_25EA1E648();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___PKStoreId_underlyingStoreId];
  *v7 = v4;
  v7[1] = v6;
  v8 = v4 == 48 && v6 == 0xE100000000000000;
  if (v8 || (sub_25EA1E908() & 1) != 0 || (v4 == 0x3030303030303031 ? (v9 = v6 == 0xED00003030303030) : (v9 = 0), v9 || (sub_25EA1E908() & 1) != 0))
  {

    type metadata accessor for StoreId();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v12.receiver = v1;
    v12.super_class = type metadata accessor for StoreId();
    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }
}

void sub_25EA0A620()
{
  v1 = *(v0 + OBJC_IVAR___PKStoreId_underlyingStoreId);
  v2 = *(v0 + OBJC_IVAR___PKStoreId_underlyingStoreId + 8);
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v28[0] = v1;
        v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v1 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v8 = 0;
              v18 = v28 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_70:
          __break(1u);
          return;
        }

        if (v1 != 45)
        {
          if (v3)
          {
            v8 = 0;
            v23 = v28;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v12 = v28 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = sub_25EA1E898();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v8 = 0;
              if (v6)
              {
                v15 = v6 + 1;
                while (1)
                {
                  v16 = *v15 - 48;
                  if (v16 > 9)
                  {
                    goto LABEL_61;
                  }

                  v17 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v8 = v17 + v16;
                  if (__OFADD__(v17, v16))
                  {
                    goto LABEL_61;
                  }

                  ++v15;
                  if (!--v3)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_53;
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v8 = 0;
            if (v6)
            {
              while (1)
              {
                v21 = *v6 - 48;
                if (v21 > 9)
                {
                  goto LABEL_61;
                }

                v22 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_61;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_53;
                }
              }
            }

            goto LABEL_53;
          }

LABEL_61:
          v8 = 0;
          LOBYTE(v3) = 1;
LABEL_62:
          v29 = v3;
          if (v3)
          {
            return;
          }

LABEL_65:
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          return;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_61;
                }

                v11 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v11 - v10;
                if (__OFSUB__(v11, v10))
                {
                  goto LABEL_61;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_53:
            LOBYTE(v3) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v8 = sub_25EA0B378(v1, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_65;
    }
  }
}

void sub_25EA0A9D0()
{
  v1 = v0 + OBJC_IVAR___PKStoreId_underlyingStoreId;
  v3 = *(v0 + OBJC_IVAR___PKStoreId_underlyingStoreId);
  v2 = *(v1 + 8);
  v4 = (HIBYTE(v2) & 0xF);
  v5 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {

      sub_25EA0B378(v3, v2, 10);

      return;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v33[0] = v3;
      v33[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v4)
        {
          if (--v4)
          {
            v22 = 0;
            v23 = v33 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        __break(1u);
        return;
      }

      if (v3 != 45)
      {
        if (v4)
        {
          v29 = 0;
          v30 = v33;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v4)
      {
        if (--v4)
        {
          v13 = 0;
          v14 = v33 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v4 = sub_25EA1E898();
      }

      v7 = *v4;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v17 = v5 - 1;
          if (v5 != 1)
          {
            v18 = 0;
            if (v4)
            {
              v19 = v4 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_61;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_61;
                }

                v18 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_61;
                }

                ++v19;
                if (!--v17)
                {
LABEL_53:
                  LOBYTE(v4) = 0;
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_61;
        }

        goto LABEL_68;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v26 = 0;
          if (v4)
          {
            while (1)
            {
              v27 = *v4 - 48;
              if (v27 > 9)
              {
                goto LABEL_61;
              }

              v28 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_61;
              }

              v26 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_61;
              }

              ++v4;
              if (!--v5)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_61:
        LOBYTE(v4) = 1;
        goto LABEL_62;
      }

      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (v4)
          {
            v10 = v4 + 1;
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_61;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_61;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_53;
              }
            }
          }

LABEL_62:
          v34 = v4;
          return;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }
}

uint64_t static StoreId.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD0F9C0 = a1;
  return result;
}

void sub_25EA0AE4C(void *a1)
{
  v2 = sub_25EA1E638();
  v3 = sub_25EA1E638();
  [a1 encodeObject:v2 forKey:v3];
}

id StoreId.init(coder:)(void *a1)
{
  v2 = v1;
  sub_25EA0B904();
  v4 = sub_25EA1E7C8();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 initWithString_];

    if (v6)
    {
    }
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id StoreId.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _s11PodcastsKit11ShowStoreIdC5valueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = &v6[OBJC_IVAR___PKStoreId_underlyingStoreId];
  *v7 = a1;
  *(v7 + 1) = a2;
  if (a1 == 48 && a2 == 0xE100000000000000 || (sub_25EA1E908() & 1) != 0 || a1 == 0x3030303030303031 && a2 == 0xED00003030303030 || (sub_25EA1E908() & 1) != 0)
  {

    type metadata accessor for StoreId();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v9.receiver = v6;
    v9.super_class = type metadata accessor for StoreId();
    return objc_msgSendSuper2(&v9, sel_init);
  }
}

id sub_25EA0B340(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unsigned __int8 *sub_25EA0B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25EA1E6D8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25EA0BA68(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25EA1E898();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_25EA0B904()
{
  result = qword_27FD0F9D0;
  if (!qword_27FD0F9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0F9D0);
  }

  return result;
}

uint64_t dispatch thunk of StoreId.__allocating_init(value:)()
{
  return (*(v0 + 88))();
}

{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_25EA0BA68(uint64_t a1, unint64_t a2)
{
  v2 = sub_25EA1E6E8();
  v6 = sub_25EA0BAE8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25EA0BAE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25EA1E808();
    if (!v9 || (v10 = v9, v11 = sub_25EA1BEC0(v9, 0), v12 = sub_25EA0BC40(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25EA1E668();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25EA1E668();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25EA1E898();
LABEL_4:

  return sub_25EA1E668();
}

unint64_t sub_25EA0BC40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25EA0BE60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25EA1E6B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25EA1E898();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25EA0BE60(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25EA1E698();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25EA0BE60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25EA1E6C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8C54F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_25EA0BF20()
{
  v1 = (v0 + OBJC_IVAR___PKEpisode_episodeUuid);
  if (!*(v0 + OBJC_IVAR___PKEpisode_episodeUuid + 8) && (sub_25EA0EFA4() & 1) != 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D3DB00]) init];
    if (*(v0 + OBJC_IVAR___PKEpisode_guid + 8))
    {

      v3 = sub_25EA1E638();
    }

    else
    {
      v3 = 0;
    }

    [v2 setEpisodeGuid_];

    if (*(*(v0 + OBJC_IVAR___PKEpisode_show) + OBJC_IVAR___PKShow_feedUrl + 8))
    {

      v4 = sub_25EA1E638();
    }

    else
    {
      v4 = 0;
    }

    [v2 setPodcastFeedUrl_];

    v5 = sub_25EA1E638();

    [v2 setPodcastTitle_];

    if (*(v0 + OBJC_IVAR___PKEpisode_streamUrl + 8))
    {
      v6 = sub_25EA1E638();
    }

    else
    {
      v6 = 0;
    }

    [v2 setStreamUrl_];

    if (*(v0 + OBJC_IVAR___PKEpisode_storeId))
    {
      sub_25EA0A9D0();
      [v2 setStoreTrackId_];
    }

    v16 = 0;
    v17 = 0;
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainOrPrivateContext];

    v10 = swift_allocObject();
    *(v10 + 16) = &v16;
    *(v10 + 24) = v2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_25EA0C3C8;
    *(v11 + 24) = v10;
    v15[4] = sub_25EA0C3D0;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_25EA14934;
    v15[3] = &block_descriptor;
    v12 = _Block_copy(v15);
    v13 = v2;

    [v9 performBlockAndWait_];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v14 = v17;
      *v1 = v16;
      v1[1] = v14;
    }
  }
}

uint64_t sub_25EA0C2B0(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 findEpisodeWithRequest_];

  if (v5)
  {
    v6 = [v5 uuid];

    if (v6)
    {
      v5 = sub_25EA1E648();
      v8 = v7;

      goto LABEL_6;
    }

    v5 = 0;
  }

  v8 = 0;
LABEL_6:
  *a1 = v5;
  a1[1] = v8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25EA0C41C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25EA0C8CC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25EA0C450(int a1, id a2, uint64_t (*a3)(uint64_t))
{
  if (!a2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    result = sub_25EA0C980(&v8);
    goto LABEL_12;
  }

  if ([a2 firstObject])
  {
    sub_25EA1E828();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && !v6)
  {
    if (!a3)
    {
      return result;
    }

    v5 = 0;
    return a3(v5);
  }

LABEL_12:
  if (!a3)
  {
    return result;
  }

  v5 = 1;
  return a3(v5);
}

void sub_25EA0C538(void *a1, void (*a2)(uint64_t, uint64_t, id))
{
  if (!a1)
  {
LABEL_14:
    if (a2)
    {
      a2(1, 2, 0);
    }

    return;
  }

  v12 = a1;
  v3 = [v12 handlerReturnStatuses];
  sub_25EA0CA30();
  v4 = sub_25EA1E718();

  if (v4 >> 62)
  {
    if (sub_25EA1E8B8())
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C56D0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 unsignedIntValue];
  v8 = [v12 error];
  v9 = [v12 error];
  sub_25EA1DA4C(v9, v7);

  if (a2)
  {
    v10 = [v12 error];
    v11 = sub_25EA1DA4C(v10, v7);

    a2(v11, v7, v8);
  }
}

id DurationSnapshot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DurationSnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25EA0C8CC(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25EA0C904()
{
  result = qword_27FD0FAC0;
  if (!qword_27FD0FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FAC0);
  }

  return result;
}

uint64_t sub_25EA0C980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAC8, &qword_25EA22620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25EA0CA30()
{
  result = qword_27FD0FAD0;
  if (!qword_27FD0FAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0FAD0);
  }

  return result;
}

id sub_25EA0CAF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v22 = objc_allocWithZone(v14);
  v23 = &v22[OBJC_IVAR___PKEpisode_guid];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v22[OBJC_IVAR___PKEpisode_uuid];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v22[OBJC_IVAR___PKEpisode_episodeUuid];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v22[OBJC_IVAR___PKEpisode_title];
  *v26 = a1;
  v26[1] = a2;
  sub_25EA0D398(a3, &v22[OBJC_IVAR___PKEpisode_releaseDate]);
  v22[OBJC_IVAR___PKEpisode_isExplicit] = a4;
  *&v22[OBJC_IVAR___PKEpisode_duration] = a9;
  *&v22[OBJC_IVAR___PKEpisode_storeId] = a5;
  *&v22[OBJC_IVAR___PKEpisode_show] = a6;
  *v23 = a7;
  v23[1] = a8;
  *v24 = a10;
  v24[1] = a11;
  v27 = &v22[OBJC_IVAR___PKEpisode_streamUrl];
  *v27 = a12;
  v27[1] = a13;
  v34.receiver = v22;
  v34.super_class = v14;
  v28 = a5;
  v29 = a6;
  v30 = objc_msgSendSuper2(&v34, sel_init);
  sub_25EA0BF20();

  sub_25EA0D408(a3);
  return v30;
}

uint64_t static Episode.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD0FAE0 = a1;
  return result;
}

Swift::Void __swiftcall Episode.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_25EA1E638();
  v8 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  sub_25EA0D398(v2 + OBJC_IVAR___PKEpisode_releaseDate, v6);
  v9 = sub_25EA1E4D8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_25EA0D408(v6);
    v11 = 0.0;
  }

  else
  {
    sub_25EA1E4A8();
    v11 = v12;
    (*(v10 + 8))(v6, v9);
  }

  v13 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeDouble:v13 forKey:v11];

  v14 = *(v2 + OBJC_IVAR___PKEpisode_isExplicit);
  v15 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeBool:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR___PKEpisode_duration);
  v17 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeDouble:v17 forKey:v16];

  v18 = *(v2 + OBJC_IVAR___PKEpisode_storeId);
  v19 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = *(v2 + OBJC_IVAR___PKEpisode_show);
  v21 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  if (*(v2 + OBJC_IVAR___PKEpisode_guid + 8))
  {

    v22 = sub_25EA1E638();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR___PKEpisode_streamUrl + 8))
  {
    v24 = sub_25EA1E638();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();
}

uint64_t sub_25EA0D398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EA0D408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Episode.init(coder:)(void *a1)
{
  v3 = sub_25EA1E4D8();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EA0B904();
  v6 = sub_25EA1E7C8();
  if (v6)
  {
    v7 = v6;
    v32 = sub_25EA1E648();
    v34 = v8;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v9 = sub_25EA1E638();
  [a1 decodeDoubleForKey_];

  sub_25EA1E498();
  v10 = sub_25EA1E638();
  v31 = [a1 decodeBoolForKey_];

  v11 = sub_25EA1E638();
  [a1 decodeDoubleForKey_];
  v13 = v12;

  type metadata accessor for EpisodeStoreId();
  v33 = sub_25EA1E7C8();
  v14 = sub_25EA1E7C8();
  if (v14)
  {
    v15 = v14;
    sub_25EA1E648();
  }

  v16 = sub_25EA1E7C8();
  if (v16)
  {
    v17 = v16;
    sub_25EA1E648();
  }

  type metadata accessor for Show();
  v18 = sub_25EA1E7C8();
  if (v18)
  {
    v19 = v18;
    v20 = sub_25EA1E638();
    v32 = v3;
    v21 = v1;
    v22 = v20;

    v23 = sub_25EA1E488();
    v24 = sub_25EA1E638();

    v25 = sub_25EA1E638();

    v26 = v21;
    v27 = v33;
    v28 = [v26 initWithTitle:v22 releaseDate:v23 isExplicit:v31 duration:v33 storeId:v19 show:v24 guid:v13 uuid:0 streamUrl:v25];

    (*(v35 + 8))(v5, v32);
  }

  else
  {
    (*(v35 + 8))(v5, v3);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v28;
}

uint64_t Episode.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKEpisode_title);

  return v1;
}

void *Episode.storeId.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKEpisode_storeId);
  v2 = v1;
  return v1;
}

id sub_25EA0DC14(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_25EA1E638();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_25EA0DC8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_25EA1E648();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id Episode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Episode(uint64_t a1)
{
  result = qword_27FD0FAF8;
  if (!qword_27FD0FAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25EA0DE40(uint64_t a1)
{
  sub_25EA0DF34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25EA0DF34(uint64_t a1)
{
  if (!qword_27FD0FB08)
  {
    sub_25EA1E4D8();
    v1 = sub_25EA1E7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD0FB08);
    }
  }
}

id sub_25EA0DF8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  ObjectType = swift_getObjectType();
  v22 = &v14[OBJC_IVAR___PKEpisode_guid];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v14[OBJC_IVAR___PKEpisode_uuid];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v14[OBJC_IVAR___PKEpisode_episodeUuid];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v14[OBJC_IVAR___PKEpisode_title];
  *v25 = a1;
  v25[1] = a2;
  sub_25EA0D398(a3, &v14[OBJC_IVAR___PKEpisode_releaseDate]);
  v14[OBJC_IVAR___PKEpisode_isExplicit] = a4;
  *&v14[OBJC_IVAR___PKEpisode_duration] = a9;
  *&v14[OBJC_IVAR___PKEpisode_storeId] = a5;
  *&v14[OBJC_IVAR___PKEpisode_show] = a6;
  *v22 = a7;
  v22[1] = a8;
  *v23 = a10;
  v23[1] = a11;
  v26 = &v14[OBJC_IVAR___PKEpisode_streamUrl];
  *v26 = a12;
  v26[1] = a13;
  v34.receiver = v14;
  v34.super_class = ObjectType;
  v27 = a5;
  v28 = a6;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  sub_25EA0BF20();

  sub_25EA0D408(a3);
  return v29;
}

uint64_t sub_25EA0E174(int a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  type metadata accessor for StoreId();
  v10 = sub_25EA1E718();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  a7(v10, a6, v11);
}

void sub_25EA0E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4(0);
  v6 = sub_25EA1E708();
  if (a2)
  {
    v7 = sub_25EA1E3E8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a3 + 16))(a3, v6);
}

id sub_25EA0E2F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Catalog();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_25EA0E3F4()
{
  v1 = OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController;
  if (*(v0 + OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11PodcastsKit15CoreDataLibrary____lazy_storage___subscriptionController);
  }

  else
  {
    v2 = sub_25EA0E4A0();
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_25EA0E4A0()
{
  v0 = [objc_opt_self() isRunningOnTV];
  v1 = sub_25EA1E758();
  if (v0)
  {
    if (qword_27FD0F9A0 != -1)
    {
      swift_once();
    }

    v2 = qword_27FD10408;
    if (os_log_type_enabled(qword_27FD10408, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v17 = v4;
      *v3 = 136315138;
      type metadata accessor for MediaRemoteSubscriptionController();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB20, &unk_25EA22110);
      v5 = sub_25EA1E658();
      v7 = sub_25EA1BA80(v5, v6, &v17);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_25E9F0000, v2, v1, "BlueMoon is _not_ enabled. Using %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x25F8C63A0](v4, -1, -1);
      MEMORY[0x25F8C63A0](v3, -1, -1);
    }

    return [objc_allocWithZone(type metadata accessor for MediaRemoteSubscriptionController()) init];
  }

  else
  {
    if (qword_27FD0F9A0 != -1)
    {
      swift_once();
    }

    v9 = qword_27FD10408;
    if (os_log_type_enabled(qword_27FD10408, v1))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      type metadata accessor for MediaAPISubscriptionController();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB18, &qword_25EA22108);
      v12 = sub_25EA1E658();
      v14 = sub_25EA1BA80(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25E9F0000, v9, v1, "BlueMoon is enabled. Using %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x25F8C63A0](v11, -1, -1);
      MEMORY[0x25F8C63A0](v10, -1, -1);
    }

    type metadata accessor for MediaAPISubscriptionController();
    v15 = swift_allocObject();
    sub_25EA1E538();
    swift_allocObject();
    v16 = sub_25EA1E528();
    result = v15;
    v15[2] = v16;
  }

  return result;
}

void sub_25EA0E764(unint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = sub_25EA1E638();
  [a1 runQueryWithText_];

  v7 = [a1 episodeResults];
  if (!v7)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_25EA0EF28(0, &qword_27FD0FB28, 0x277D3DAF8);
  v9 = sub_25EA1E718();

  v31 = MEMORY[0x277D84F90];
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_34:
    v11 = sub_25EA1E8B8();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x25F8C56D0](v12, v9);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_31;
      }

      v13 = *(v9 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v16 = [objc_allocWithZone(type metadata accessor for Episode(0)) initFrom_];

    ++v12;
    if (v16)
    {
      MEMORY[0x25F8C5540]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      sub_25EA1E738();
      v29 = v31;
      v12 = v15;
    }
  }

  v17 = [a1 podcastResults];
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = v17;
  sub_25EA0EF28(0, &qword_27FD0FB30, 0x277D3DB38);
  a1 = sub_25EA1E718();

  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v9 = sub_25EA1E8B8();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v9 != v19)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x25F8C56D0](v19, a1);
    }

    else
    {
      if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v21 = *(a1 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_32;
    }

    v24 = sub_25EA125D8(v21);

    ++v19;
    if (v24)
    {
      MEMORY[0x25F8C5540]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      sub_25EA1E738();
      v20 = v31;
      v19 = v23;
    }
  }

  v25 = type metadata accessor for SearchResult();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR___PKSearchResult_episodes] = v29;
  *&v26[OBJC_IVAR___PKSearchResult_shows] = v20;
  v30.receiver = v26;
  v30.super_class = v25;
  v27 = objc_msgSendSuper2(&v30, sel_init);
  v28 = *a4;
  *a4 = v27;
}

id sub_25EA0EBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataLibrary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_25EA0EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MTTextQuery) init];
  [v8 setFetchLimit_];
  v9 = type metadata accessor for SearchResult();
  v10 = objc_allocWithZone(v9);
  v11 = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR___PKSearchResult_episodes] = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR___PKSearchResult_shows] = v11;
  v22.receiver = v10;
  v22.super_class = v9;
  v23 = objc_msgSendSuper2(&v22, sel_init);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = &v23;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_25EA0EF04;
  *(v15 + 24) = v14;
  aBlock[4] = sub_25EA0C3D0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA14934;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);
  v17 = v8;

  [v13 performBlockAndWait_];

  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v18 = *(a4 + 16);
    v19 = v23;
    v18(a4, v19, 0);

    v20 = v23;
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25EA0EF28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25EA0EFA4()
{
  if (![objc_opt_self() supportsLocalLibrary])
  {
    sub_25EA1E768();
    if (qword_27FD0F998 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if ([objc_opt_self() canExtensionOpenDatabase])
  {
    return 1;
  }

  sub_25EA1E768();
  if (qword_27FD0F998 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  sub_25EA1E5A8();
  return 0;
}

id sub_25EA0F128(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  (a4)(0, a2);

  v4 = sub_25EA1E708();

  return v4;
}

id SearchResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_25EA0F3E0(int a1, int a2, void *aBlock, uint64_t (*a4)(void))
{
  v5 = _Block_copy(aBlock);
  sub_25EA0F674(v5, a4);

  _Block_release(v5);
}

void sub_25EA0F440(void (*a1)(id, void), uint64_t a2, uint64_t (*a3)(void))
{
  if ([objc_opt_self() supportsLocalLibrary])
  {
    [objc_opt_self() createDatabaseIfNeeded];
  }

  else
  {
    sub_25EA1E768();
    if (qword_27FD0F998 != -1)
    {
      swift_once();
    }

    sub_25EA1E5A8();
  }

  v5 = [objc_allocWithZone(a3(0)) init];
  a1(v5, 0);
}

id Provider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Provider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Provider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Provider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Provider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_25EA0F674(uint64_t a1, uint64_t (*a2)(void))
{
  if ([objc_opt_self() supportsLocalLibrary])
  {
    [objc_opt_self() createDatabaseIfNeeded];
  }

  else
  {
    sub_25EA1E768();
    if (qword_27FD0F998 != -1)
    {
      swift_once();
    }

    sub_25EA1E5A8();
  }

  v4 = [objc_allocWithZone(a2(0)) init];
  (*(a1 + 16))(a1, v4, 0);
}

void sub_25EA0F790(char *a1)
{
  v2 = v1;
  sub_25EA0FF00();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = *(v1 + OBJC_IVAR___PKEpisode_show);
  if (*(v4 + OBJC_IVAR___PKShow_uuid + 8))
  {

    v5 = sub_25EA1E638();
  }

  else
  {
    v5 = 0;
  }

  if (*(v4 + OBJC_IVAR___PKShow_feedUrl + 8))
  {

    v6 = sub_25EA1E638();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + OBJC_IVAR___PKShow_storeId);
  if (v7)
  {
    v8 = v7;
    sub_25EA0A9D0();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (*(v2 + OBJC_IVAR___PKEpisode_uuid + 8))
  {

    v11 = sub_25EA1E638();
  }

  else
  {
    v11 = 0;
  }

  if (*(v2 + OBJC_IVAR___PKEpisode_guid + 8))
  {

    v12 = sub_25EA1E638();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v2 + OBJC_IVAR___PKEpisode_storeId);
  if (v13)
  {
    sub_25EA0A9D0();
    v13 = v14;
  }

  sub_25EA1E648();
  v15 = sub_25EA1E638();

  v16 = [v3 universalPlaybackQueueIdentifierForPodcastUuid:v5 podcastFeedUrl:v6 podcastStoreId:v10 episodeUuid:v11 episodeGuid:v12 episodeStoreId:v13 sampPlaybackOrder:v15];

  if (v16)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

void sub_25EA0FA2C(char *a1)
{
  v2 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  if (*(v1 + OBJC_IVAR___PKShow_uuid + 8))
  {
    v3 = sub_25EA1E638();
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + OBJC_IVAR___PKShow_feedUrl + 8))
  {
    v4 = sub_25EA1E638();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + OBJC_IVAR___PKShow_storeId);
  if (v5)
  {
    sub_25EA0A9D0();
    v5 = v6;
  }

  sub_25EA1E648();
  v7 = sub_25EA1E638();

  v8 = [v2 universalPlaybackQueueIdentifierForPodcastUuid:v3 podcastFeedUrl:v4 podcastStoreId:v5 sampPlaybackOrder:v7];

  if (v8)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

void sub_25EA0FB98()
{
  v0 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];

  v1 = sub_25EA1E638();

  v2 = [v0 localPlaybackQueueIdentifierForStationUuid_];

  if (v2)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

void sub_25EA0FC7C(char *a1)
{
  v1 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  v2 = sub_25EA1E638();
  sub_25EA1E648();
  v3 = sub_25EA1E638();

  v4 = [v1 playbackQueueIdentifierForPodcastAdamId:v2 sampPlaybackOrder:v3];

  if (v4)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

void sub_25EA0FD78()
{
  v0 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  v1 = sub_25EA1E638();
  v2 = [v0 playbackQueueIdentifierForEpisodeAdamId_];

  if (v2)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

void sub_25EA0FE48(char *a1)
{
  v1 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  sub_25EA1E648();
  v2 = sub_25EA1E638();

  v3 = [v1 playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder_];

  if (v3)
  {
    sub_25EA1E648();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25EA0FF00()
{
  result = qword_27FD0FB48;
  if (!qword_27FD0FB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0FB48);
  }

  return result;
}

uint64_t PlaybackOrder.hashValue.getter()
{
  v1 = *v0;
  sub_25EA1E928();
  MEMORY[0x25F8C5780](v1);
  return sub_25EA1E948();
}

uint64_t sub_25EA0FFE8()
{
  v1 = *v0;
  sub_25EA1E928();
  MEMORY[0x25F8C5780](v1);
  return sub_25EA1E948();
}

uint64_t sub_25EA1005C(uint64_t a1)
{
  v2 = *v1;
  sub_25EA1E928();
  MEMORY[0x25F8C5780](v2);
  return sub_25EA1E948();
}

unint64_t sub_25EA100A4()
{
  result = qword_27FD0FB50;
  if (!qword_27FD0FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FB50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackOrder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25EA1026C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB60, &qword_25EA222D0);
    v2 = sub_25EA1E8E8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_25EA11D10(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_25EA11D10(v29, v30);
    result = sub_25EA1E848();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_25EA11D10(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25EA10534(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB60, &qword_25EA222D0);
    v2 = sub_25EA1E8E8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_25EA11D20(*(a1 + 48) + 40 * v13, &v35);
    sub_25EA11E24(*(a1 + 56) + 32 * v13, v37 + 8);
    v33[0] = v37[0];
    v33[1] = v37[1];
    v34 = v38;
    v32[2] = v35;
    v32[3] = v36;
    v21 = v35;
    v23 = v36;
    v25 = *&v37[0];
    sub_25EA11D10((v33 + 8), v27);
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_25EA11D10(v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_25EA11D10(v31, v32);
    result = sub_25EA1E848();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v24;
    *(v11 + 32) = v26;
    result = sub_25EA11D10(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25EA108DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  *&v23 = 46;
  *(&v23 + 1) = 0xE100000000000000;
  sub_25EA11DD0();
  v6 = sub_25EA1E818();
  result = sub_25EA10534(a3);
  v8 = result;
  v9 = *(v6 + 16);
  if (v9)
  {
    v21 = a4;
    v10 = 0;
    v11 = v6 + 16 * v9;
    v12 = (v6 + 40);
    while (1)
    {
      v13 = *(v6 + 16);
      if (v10 >= v13)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (v9 > v13)
      {
        goto LABEL_32;
      }

      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = v14 == *(v11 + 16) && v15 == *(v11 + 24);
      if (v16 || (sub_25EA1E908() & 1) != 0)
      {

        if (!v8)
        {

          *v21 = 0u;
          v21[1] = 0u;
          return result;
        }

        *&v23 = v14;
        *(&v23 + 1) = v15;
        sub_25EA1E868();
        a4 = v21;
        if (*(v8 + 16))
        {
          v19 = sub_25EA10C04(v22);
          if (v20)
          {
            sub_25EA11E24(*(v8 + 56) + 32 * v19, v21);
            sub_25EA11D7C(v22);
          }
        }

        result = sub_25EA11D7C(v22);
        goto LABEL_28;
      }

      if (!v8)
      {
        goto LABEL_18;
      }

      *&v23 = v14;
      *(&v23 + 1) = v15;

      sub_25EA1E868();
      if (!*(v8 + 16))
      {
        break;
      }

      v17 = sub_25EA10C04(v22);
      if ((v18 & 1) == 0)
      {
        break;
      }

      sub_25EA11E24(*(v8 + 56) + 32 * v17, &v23);
      sub_25EA11D7C(v22);

      if (*(&v24 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
        result = swift_dynamicCast();
        if (result)
        {
          v8 = v22[0];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_20;
      }

LABEL_19:
      result = sub_25EA11C48(&v23, &qword_27FD0FAC8, &qword_25EA22620);
      v8 = 0;
LABEL_20:
      ++v10;
      v12 += 2;
      if (v9 == v10)
      {

        a4 = v21;
        goto LABEL_28;
      }
    }

    sub_25EA11D7C(v22);
LABEL_18:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_19;
  }

LABEL_28:
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

unint64_t sub_25EA10B8C(uint64_t a1, uint64_t a2)
{
  sub_25EA1E928();
  sub_25EA1E678();
  v4 = sub_25EA1E948();

  return sub_25EA10C48(a1, a2, v4);
}

unint64_t sub_25EA10C04(uint64_t a1)
{
  v2 = sub_25EA1E848();

  return sub_25EA10D00(a1, v2);
}

unint64_t sub_25EA10C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25EA1E908())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25EA10D00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25EA11D20(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8C56A0](v9, a1);
      sub_25EA11D7C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25EA10DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB60, &qword_25EA222D0);
    v3 = sub_25EA1E8E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25EA11CA8(v4, v13, &qword_27FD0FB68, &qword_25EA222D8);
      result = sub_25EA10C04(v13);
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
      result = sub_25EA11D10(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EA10F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB78, &qword_25EA222E0);
    v3 = sub_25EA1E8E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25EA10B8C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25EA11008(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;

      sub_25EA108DC(0x7475626972747461, 0xEF656D616E2E7365, v5, &v30);
      if (v31)
      {
        if (swift_dynamicCast())
        {
          v6 = v28;
          v26 = v27;
          goto LABEL_8;
        }
      }

      else
      {
        sub_25EA11C48(&v30, &qword_27FD0FAC8, &qword_25EA22620);
      }

      v26 = 0;
      v6 = 0xE000000000000000;
LABEL_8:
      v25 = v6;
      sub_25EA108DC(0xD00000000000001FLL, 0x800000025EA24570, v5, &v30);
      if (v31)
      {
        if (swift_dynamicCast())
        {
          v8 = v27;
          v7 = v28;
          goto LABEL_13;
        }
      }

      else
      {
        sub_25EA11C48(&v30, &qword_27FD0FAC8, &qword_25EA22620);
      }

      v8 = 0;
      v7 = 0xE000000000000000;
LABEL_13:
      sub_25EA108DC(0xD000000000000012, 0x800000025EA24590, v5, &v30);
      if (v31)
      {
        if (swift_dynamicCast())
        {
          v9 = v27;
          v10 = v28;
          goto LABEL_18;
        }
      }

      else
      {
        sub_25EA11C48(&v30, &qword_27FD0FAC8, &qword_25EA22620);
      }

      v9 = 0;
      v10 = 0xE000000000000000;
LABEL_18:
      sub_25EA108DC(25705, 0xE200000000000000, v5, &v30);
      if (v31)
      {
        if (swift_dynamicCast())
        {
          v11 = v27;
          v12 = v28;
          goto LABEL_23;
        }
      }

      else
      {
        sub_25EA11C48(&v30, &qword_27FD0FAC8, &qword_25EA22620);
      }

      v11 = 0;
      v12 = 0xE000000000000000;
LABEL_23:
      v13 = objc_allocWithZone(type metadata accessor for ShowStoreId());
      v14 = StoreId.init(value:)(v11, v12);
      sub_25EA108DC(0xD000000000000012, 0x800000025EA245B0, v5, &v30);
      if (!v31)
      {
        sub_25EA11C48(&v30, &qword_27FD0FAC8, &qword_25EA22620);
LABEL_27:
        v15 = sub_25EA10DC8(MEMORY[0x277D84F90]);
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_27;
      }

      v15 = v27;
LABEL_28:
      v16 = type metadata accessor for Show();
      v17 = objc_allocWithZone(v16);
      v18 = &v17[OBJC_IVAR___PKShow_podcastUuid];
      *v18 = 0;
      *(v18 + 1) = 0;
      v19 = &v17[OBJC_IVAR___PKShow_title];
      *v19 = v26;
      *(v19 + 1) = v25;
      v20 = &v17[OBJC_IVAR___PKShow_descriptionText];
      *v20 = v8;
      *(v20 + 1) = v7;
      v21 = &v17[OBJC_IVAR___PKShow_feedUrl];
      *v21 = v9;
      *(v21 + 1) = v10;
      *&v17[OBJC_IVAR___PKShow_storeId] = v14;
      v22 = &v17[OBJC_IVAR___PKShow_uuid];
      *v22 = 0;
      *(v22 + 1) = 0;
      *&v17[OBJC_IVAR___PKShow_artworkDictionary] = v15;
      v29.receiver = v17;
      v29.super_class = v16;
      v23 = v14;
      v24 = objc_msgSendSuper2(&v29, sel_init);
      sub_25EA14C60();

      MEMORY[0x25F8C5540]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      sub_25EA1E738();
      if (!--v3)
      {
        return v32;
      }
    }
  }

  return result;
}

id sub_25EA11454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  sub_25EA108DC(0xD00000000000001ALL, 0x800000025EA244C0, a1, &v55);
  if (v56)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FB58, &qword_25EA222C8);
    if (swift_dynamicCast())
    {
      v11 = v52;
      goto LABEL_6;
    }
  }

  else
  {
    sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_6:
  v12 = sub_25EA11008(v11);

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_41:

    return 0;
  }

  result = sub_25EA1E8B8();
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x25F8C56D0](0, v12);
LABEL_11:
    v15 = v14;

    sub_25EA108DC(0x7475626972747461, 0xEF656D616E2E7365, a1, &v55);
    if (v56)
    {
      if (swift_dynamicCast())
      {
        v16 = v52;
        v17 = v53;
        goto LABEL_16;
      }
    }

    else
    {
      sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
LABEL_16:
    sub_25EA108DC(0xD00000000000001ALL, 0x800000025EA244E0, a1, &v55);
    v50 = v17;
    v51 = v15;
    if (v56)
    {
      swift_dynamicCast();
    }

    else
    {
      sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v19 = sub_25EA1E638();
    [v18 setDateFormat_];

    v20 = sub_25EA1E638();

    v49 = v18;
    v21 = [v18 dateFromString_];

    if (v21)
    {
      sub_25EA1E4B8();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_25EA1E4D8();
    (*(*(v23 - 8) + 56))(v8, v22, 1, v23);
    sub_25EA11BD8(v8, v10);
    sub_25EA108DC(0xD000000000000018, 0x800000025EA24520, a1, &v55);
    if (v56)
    {
      if ((swift_dynamicCast() & 1) != 0 && v52 == 0x746963696C707865 && v53 == 0xE800000000000000)
      {

        v48 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v48 = sub_25EA1E908();

LABEL_29:
    sub_25EA108DC(0xD000000000000021, 0x800000025EA24540, a1, &v55);
    v24 = v16;
    if (v56)
    {
      sub_25EA0CA30();
      if (swift_dynamicCast())
      {
        v25 = v52;
        goto LABEL_34;
      }
    }

    else
    {
      sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_34:
    [v25 doubleValue];
    v27 = v26 / 1000.0;
    sub_25EA108DC(25705, 0xE200000000000000, a1, &v55);
    v47 = v25;
    if (v56)
    {
      if (swift_dynamicCast())
      {
        v28 = v52;
        v29 = v53;
LABEL_39:
        v30 = objc_allocWithZone(type metadata accessor for EpisodeStoreId());
        v31 = StoreId.init(value:)(v28, v29);
        sub_25EA11CA8(v10, v5, &qword_27FD0FAE8, &qword_25EA22018);
        v32 = type metadata accessor for Episode(0);
        v33 = objc_allocWithZone(v32);
        v34 = v10;
        v35 = v5;
        v36 = &v33[OBJC_IVAR___PKEpisode_guid];
        *v36 = 0;
        v36[1] = 0;
        v37 = &v33[OBJC_IVAR___PKEpisode_uuid];
        *v37 = 0;
        v37[1] = 0;
        v38 = &v33[OBJC_IVAR___PKEpisode_episodeUuid];
        *v38 = 0;
        v38[1] = 0;
        v39 = &v33[OBJC_IVAR___PKEpisode_title];
        v40 = v50;
        *v39 = v24;
        v39[1] = v40;
        sub_25EA11CA8(v35, &v33[OBJC_IVAR___PKEpisode_releaseDate], &qword_27FD0FAE8, &qword_25EA22018);
        v33[OBJC_IVAR___PKEpisode_isExplicit] = v48 & 1;
        *&v33[OBJC_IVAR___PKEpisode_duration] = v27;
        *&v33[OBJC_IVAR___PKEpisode_storeId] = v31;
        v41 = v51;
        *&v33[OBJC_IVAR___PKEpisode_show] = v51;
        *v36 = 0;
        v36[1] = 0;
        *v37 = 0;
        v37[1] = 0;
        v42 = &v33[OBJC_IVAR___PKEpisode_streamUrl];
        *v42 = 0;
        v42[1] = 0;
        v54.receiver = v33;
        v54.super_class = v32;
        v43 = v31;
        v44 = v41;
        v45 = objc_msgSendSuper2(&v54, sel_init);
        sub_25EA0BF20();

        sub_25EA11C48(v35, &qword_27FD0FAE8, &qword_25EA22018);
        sub_25EA11C48(v34, &qword_27FD0FAE8, &qword_25EA22018);
        return v45;
      }
    }

    else
    {
      sub_25EA11C48(&v55, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_39;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EA11BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EA11C48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25EA11CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_25EA11D10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25EA11DD0()
{
  result = qword_27FD0FB70;
  if (!qword_27FD0FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FB70);
  }

  return result;
}

uint64_t sub_25EA11E24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25EA11E80(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v1)
    {
      return v2;
    }

    if (v1 >= v3)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = sub_25EA11454(v5);

    ++v1;
    if (v6)
    {
      MEMORY[0x25F8C5540](result);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      result = sub_25EA1E738();
      v2 = v7;
      v1 = v4;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_25EA11F78(void *a1)
{
  v2 = v1;
  v4 = sub_25EA1E4D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 title];
  if (v8)
  {
    v9 = v8;
    sub_25EA1E648();
  }

  [a1 pubDate];
  sub_25EA1E498();
  v10 = [a1 isExplicit];
  [a1 duration];
  v12 = v11;
  v13 = [a1 storeTrackId];
  v14 = objc_allocWithZone(type metadata accessor for EpisodeStoreId());
  v15 = StoreId.init(value:)(v13);
  v16 = [a1 podcast];
  if (v16)
  {
    LODWORD(v34) = v10;
    v17 = v16;
    v18 = sub_25EA125D8(v17);

    if (v18)
    {
      v32 = [a1 guid];
      v19 = [a1 uuid];
      v33 = v4;
      v30 = v19;
      v20 = [a1 enclosureURL];
      v21 = sub_25EA1E638();
      v31 = v7;
      v22 = v21;

      v23 = v15;
      v24 = sub_25EA1E488();
      v25 = v30;
      v26 = v2;
      v27 = v32;
      v34 = [v26 initWithTitle:v22 releaseDate:v24 isExplicit:v34 duration:v23 storeId:v18 show:v32 guid:v12 uuid:v30 streamUrl:v20];

      (*(v5 + 8))(v31, v33);
      return v34;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_25EA12318()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D3DB00]) init];
  if (*(v0 + OBJC_IVAR___PKEpisode_guid + 8))
  {

    v2 = sub_25EA1E638();
  }

  else
  {
    v2 = 0;
  }

  [v1 setEpisodeGuid_];

  if (*(v0 + OBJC_IVAR___PKEpisode_uuid + 8))
  {

    v3 = sub_25EA1E638();
  }

  else
  {
    v3 = 0;
  }

  [v1 setUuid_];

  if (*(*(v0 + OBJC_IVAR___PKEpisode_show) + OBJC_IVAR___PKShow_feedUrl + 8))
  {

    v4 = sub_25EA1E638();
  }

  else
  {
    v4 = 0;
  }

  [v1 setPodcastFeedUrl_];

  v5 = sub_25EA1E638();
  [v1 setEpisodeTitle_];

  v6 = sub_25EA1E638();

  [v1 setPodcastTitle_];

  if (*(v0 + OBJC_IVAR___PKEpisode_streamUrl + 8))
  {
    v7 = sub_25EA1E638();
  }

  else
  {
    v7 = 0;
  }

  [v1 setStreamUrl_];

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 findEpisodeWithRequest_];

  return v9;
}

id sub_25EA125D8(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_25EA1E648();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [a1 itemDescription];
  if (v7)
  {
    v8 = v7;
    v9 = sub_25EA1E648();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [a1 feedURL];
  if (v12)
  {
    v13 = v12;
    v14 = sub_25EA1E648();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 storeCollectionId];
  v18 = objc_allocWithZone(type metadata accessor for ShowStoreId());
  v19 = StoreId.init(value:)(v17);
  v20 = [a1 uuid];
  if (v20)
  {
    v21 = v20;
    v22 = sub_25EA1E648();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = type metadata accessor for Show();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR___PKShow_podcastUuid];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v26[OBJC_IVAR___PKShow_title];
  *v28 = v4;
  v28[1] = v6;
  v29 = &v26[OBJC_IVAR___PKShow_descriptionText];
  *v29 = v9;
  v29[1] = v11;
  v30 = &v26[OBJC_IVAR___PKShow_feedUrl];
  *v30 = v14;
  v30[1] = v16;
  *&v26[OBJC_IVAR___PKShow_storeId] = v19;
  v31 = &v26[OBJC_IVAR___PKShow_uuid];
  *v31 = v22;
  v31[1] = v24;
  *&v26[OBJC_IVAR___PKShow_artworkDictionary] = 0;
  v35.receiver = v26;
  v35.super_class = v25;
  v32 = v19;
  v33 = objc_msgSendSuper2(&v35, sel_init);
  sub_25EA14C60();

  return v33;
}

uint64_t SiriContext.assetInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_assetInfo);

  return v1;
}

uint64_t SiriContext.requesterSharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_requesterSharedUserId);

  return v1;
}

uint64_t SiriContext.sharedUserIdFromPlayableITunesAccount.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount);

  return v1;
}

uint64_t SiriContext.originatingOutputDeviceUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID);

  return v1;
}

uint64_t SiriContext.referenceId.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_referenceId);

  return v1;
}

id SiriContext.init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___PKSiriContext_assetInfo];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v8 = a3;
  v8[1] = a4;
  v9 = &v6[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v9 = a5;
  v9[1] = a6;
  *&v6[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = 0;
  *&v6[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = 0;
  v10 = &v6[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v6[OBJC_IVAR___PKSiriContext_referenceId];
  *v11 = 0;
  v11[1] = 0;
  v6[OBJC_IVAR___PKSiriContext_playbackOrder] = 0;
  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriContext();
  return objc_msgSendSuper2(&v13, sel_init);
}

id SiriContext.__allocating_init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:referenceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___PKSiriContext_assetInfo];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v21 = a5;
  v21[1] = a6;
  *&v18[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v18[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = 0;
  v22 = &v18[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v18[OBJC_IVAR___PKSiriContext_referenceId];
  *v23 = a8;
  v23[1] = a9;
  v18[OBJC_IVAR___PKSiriContext_playbackOrder] = 0;
  v25.receiver = v18;
  v25.super_class = v9;
  return objc_msgSendSuper2(&v25, sel_init);
}

id SiriContext.init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:referenceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR___PKSiriContext_assetInfo];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v9[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v12 = a5;
  v12[1] = a6;
  *&v9[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v9[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = 0;
  v13 = &v9[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v9[OBJC_IVAR___PKSiriContext_referenceId];
  *v14 = a8;
  v14[1] = a9;
  v9[OBJC_IVAR___PKSiriContext_playbackOrder] = 0;
  v16.receiver = v9;
  v16.super_class = type metadata accessor for SiriContext();
  return objc_msgSendSuper2(&v16, sel_init);
}

id SiriContext.__allocating_init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:referenceId:playbackOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = *a10;
  v20 = &v18[OBJC_IVAR___PKSiriContext_assetInfo];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v18[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v18[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v22 = a5;
  v22[1] = a6;
  *&v18[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v18[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = 0;
  v23 = &v18[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v18[OBJC_IVAR___PKSiriContext_referenceId];
  *v24 = a8;
  v24[1] = a9;
  v18[OBJC_IVAR___PKSiriContext_playbackOrder] = v19;
  v27.receiver = v18;
  v27.super_class = v10;
  return objc_msgSendSuper2(&v27, sel_init);
}

id SiriContext.init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:referenceId:playbackOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v11 = *a10;
  v12 = &v10[OBJC_IVAR___PKSiriContext_assetInfo];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v10[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v10[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v14 = a5;
  v14[1] = a6;
  *&v10[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v10[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = 0;
  v15 = &v10[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v10[OBJC_IVAR___PKSiriContext_referenceId];
  *v16 = a8;
  v16[1] = a9;
  v10[OBJC_IVAR___PKSiriContext_playbackOrder] = v11;
  v18.receiver = v10;
  v18.super_class = type metadata accessor for SiriContext();
  return objc_msgSendSuper2(&v18, sel_init);
}

id SiriContext.__allocating_init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:decodedRouteUIDs:originatingOutputDeviceUID:referenceId:playbackOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13)
{
  v20 = objc_allocWithZone(v13);
  v21 = *a13;
  v22 = &v20[OBJC_IVAR___PKSiriContext_assetInfo];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v20[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v20[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v24 = a5;
  v24[1] = a6;
  *&v20[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v20[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = a8;
  v25 = &v20[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v25 = a9;
  v25[1] = a10;
  v26 = &v20[OBJC_IVAR___PKSiriContext_referenceId];
  *v26 = a11;
  v26[1] = a12;
  if (v21 == 3)
  {
    LOBYTE(v21) = 0;
  }

  v20[OBJC_IVAR___PKSiriContext_playbackOrder] = v21;
  v30.receiver = v20;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init, a7, a11, a8, a12);
}

id SiriContext.init(assetInfo:requesterSharedUserId:sharedUserIdFromPlayableITunesAccount:hashedRouteUIDs:decodedRouteUIDs:originatingOutputDeviceUID:referenceId:playbackOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13)
{
  v14 = *a13;
  v15 = &v13[OBJC_IVAR___PKSiriContext_assetInfo];
  *v15 = a1;
  v15[1] = a2;
  v16 = &v13[OBJC_IVAR___PKSiriContext_requesterSharedUserId];
  *v16 = a3;
  v16[1] = a4;
  v17 = &v13[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount];
  *v17 = a5;
  v17[1] = a6;
  *&v13[OBJC_IVAR___PKSiriContext_hashedRouteUIDs] = a7;
  *&v13[OBJC_IVAR___PKSiriContext_decodedRouteUIDs] = a8;
  v18 = &v13[OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID];
  *v18 = a9;
  v18[1] = a10;
  v19 = &v13[OBJC_IVAR___PKSiriContext_referenceId];
  *v19 = a11;
  v19[1] = a12;
  if (v14 == 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  v13[OBJC_IVAR___PKSiriContext_playbackOrder] = v20;
  v22.receiver = v13;
  v22.super_class = type metadata accessor for SiriContext();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_25EA12FEC()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_requesterSharedUserId + 8);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR___PKSiriContext_requesterSharedUserId) == qword_27FD0FB80 && v1 == off_27FD0FB88)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_25EA1E908() ^ 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_25EA13050()
{
  v1 = *(v0 + OBJC_IVAR___PKSiriContext_requesterSharedUserId);
  v2 = *(v0 + OBJC_IVAR___PKSiriContext_requesterSharedUserId + 8);
  if (v2)
  {
    v3 = v1 == qword_27FD0FB80 && v2 == off_27FD0FB88;
    if (v3 || (sub_25EA1E908() & 1) != 0)
    {
      return 0;
    }
  }

  return v1;
}

id SiriContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25EA13338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void sub_25EA1352C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v43 = a2;
  v8 = sub_25EA1E4D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PKPlayerManifest_siriContext;
  v13 = *(a1 + OBJC_IVAR___PKPlayerManifest_siriContext);
  if (v13)
  {
    v14 = (v13 + OBJC_IVAR___PKSiriContext_referenceId);
    v16 = *v14;
    v15 = v14[1];
    if (v15)
    {
      swift_bridgeObjectRetain_n();
      sub_25EA1E4C8();
      sub_25EA1E478();
      v18 = v17;
      (*(v9 + 8))(v11, v8);
      v19 = (v5 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextTuple);
      *v19 = v16;
      v19[1] = v15;
      v19[2] = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_25EA13E0C(a1 + OBJC_IVAR___PKPlayerManifest_playableContent, aBlock);
  v20 = v45;
  v21 = v46;
  __swift_project_boxed_opaque_existential_1(aBlock, v45);
  v22 = *(a1 + v12);
  if (v22)
  {
    LOBYTE(v22) = *(v22 + OBJC_IVAR___PKSiriContext_playbackOrder);
  }

  v48 = v22;
  (*(v21 + 1))(&v48, v20, v21);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v41 = sub_25EA1E638();

  v23 = *(a1 + v12);
  if (!v23)
  {
    v24 = 0;
    v25 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_20;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_assetInfo + 8))
  {

    v40 = sub_25EA1E638();

    v23 = *(a1 + v12);
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
      v39 = 0;
LABEL_20:
      v26 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v40 = 0;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_hashedRouteUIDs))
  {

    v39 = sub_25EA1E708();

    v23 = *(a1 + v12);
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v39 = 0;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_decodedRouteUIDs))
  {

    v25 = sub_25EA1E708();

    v23 = *(a1 + v12);
    if (!v23)
    {
      v24 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v25 = 0;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_originatingOutputDeviceUID + 8))
  {

    v26 = sub_25EA1E638();

    v23 = *(a1 + v12);
    if (!v23)
    {
      v24 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_requesterSharedUserId + 8))
  {

    v24 = sub_25EA1E638();

    v23 = *(a1 + v12);
    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
  }

  if (*(v23 + OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount + 8))
  {

    v27 = sub_25EA1E638();

    if (v15)
    {
      goto LABEL_22;
    }

LABEL_34:
    v28 = 0;
    goto LABEL_35;
  }

LABEL_21:
  v27 = 0;
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_22:
  v28 = sub_25EA1E638();

LABEL_35:
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  v31 = a3;
  v32 = v42;
  *(v30 + 24) = v42;
  v46 = sub_25EA13EB4;
  v47 = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA13CB4;
  v45 = &block_descriptor_1;
  v33 = _Block_copy(aBlock);
  sub_25E9F30DC(v31, v32);

  LOBYTE(v38) = 1;
  v34 = v29;
  v36 = v40;
  v35 = v41;
  v37 = v39;
  [v34 performPodcastsPlaybackRequestWithIdentifier:v41 assetInfo:v40 hashedRouteUIDs:v39 decodedRouteUIDs:v25 originatingOutputDeviceUID:v26 startPlaying:v43 & 1 requesterSharedUserId:v24 sharedUserIdFromPlayableITunesAccount:v27 context:v28 allowsFallback:v38 completion:v33];
  _Block_release(v33);
}

void sub_25EA13A4C(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t, id))
{
  v6 = sub_25EA1DA4C(a2, a1);
  if (a3)
  {
    a3(v6, a1, a2);
  }

  if (a1)
  {
    if (qword_27FD0F990 != -1)
    {
      swift_once();
    }

    v7 = sub_25EA1E5D8();
    __swift_project_value_buffer(v7, qword_27FD103E8);
    v8 = a2;
    oslog = sub_25EA1E5B8();
    v9 = sub_25EA1E768();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315650;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBD0, qword_25EA22320);
      v13 = sub_25EA1E658();
      v15 = sub_25EA1BA80(v13, v14, &v23);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      type metadata accessor for MRMediaRemoteCommandHandlerStatus();
      v16 = sub_25EA1E658();
      v18 = sub_25EA1BA80(v16, v17, &v23);

      *(v10 + 14) = v18;
      *(v10 + 22) = 2080;
      v19 = sub_25EA1E658();
      v21 = sub_25EA1BA80(v19, v20, &v23);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_25E9F0000, oslog, v9, "SetQueue encountered MPC error: %s. MRStatus: %s. Resolved Status: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8C63A0](v11, -1, -1);
      MEMORY[0x25F8C63A0](v10, -1, -1);
    }

    else
    {
    }
  }
}

void sub_25EA13CB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25EA13E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25EA13F4C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_25EA13FD0(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for MediaRemoteSubscriptionController()) init];
  qword_27FD0FBD8 = result;
  return result;
}

id static MediaRemoteSubscriptionController.sharedInstance.getter()
{
  if (qword_27FD0F988 != -1)
  {
    swift_once();
  }

  v1 = qword_27FD0FBD8;

  return v1;
}

void sub_25EA14164(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  v9 = sub_25EA1E638();
  v10 = [v8 playbackQueueIdentifierForSubscribeToPodcast_];

  if (a2)
  {
    if (*&a2[OBJC_IVAR___PKSiriContext_assetInfo + 8])
    {
      v11 = sub_25EA1E638();
    }

    else
    {
      v11 = 0;
    }

    if (*&a2[OBJC_IVAR___PKSiriContext_requesterSharedUserId + 8])
    {
      v12 = sub_25EA1E638();
    }

    else
    {
      v12 = 0;
    }

    if (*&a2[OBJC_IVAR___PKSiriContext_sharedUserIdFromPlayableITunesAccount + 8])
    {
      a2 = sub_25EA1E638();
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a3;
  v14[4] = a4;
  v17[4] = sub_25EA14904;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_25EA1438C;
  v17[3] = &block_descriptor_2;
  v15 = _Block_copy(v17);
  v16 = v4;

  [v13 setQueueWithPlaybackRequestIdentifier:v10 assetInfo:v11 requesterSharedUserId:v12 sharedUserIdFromPlayableITunesAccount:a2 mrCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_25EA1438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25EA144C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(MTPlaybackIdentifierUtil) init];
  sub_25EA1E408();
  v8 = sub_25EA1E638();

  v9 = [v7 playbackQueueIdentifierForSubscribeToPodcastFeedUrl_];

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a2;
  v11[4] = a3;
  v14[4] = sub_25EA1466C;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_25EA1438C;
  v14[3] = &block_descriptor_6;
  v12 = _Block_copy(v14);
  v13 = v4;

  [v10 setQueueWithPlaybackRequestIdentifier:v9 mrCompletion:v12];
  _Block_release(v12);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25EA1466C(unsigned int a1)
{
  if (a1 >= 3)
  {
    if (a1 == 401)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = qword_25EA22400[a1];
  }

  return (*(v1 + 24))(v2);
}

id MediaRemoteSubscriptionController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediaRemoteSubscriptionController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dispatch thunk of MediaRemoteSubscriptionController.subscribe(to:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

void Show.fetchRecentEpisodes(limit:offset:limitToLibraryEpisodes:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  if ((sub_25EA0EFA4() & 1) == 0)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_9:
    a4(v18, 0);
    return;
  }

  sub_25EA14C60();
  if (!*(v5 + OBJC_IVAR___PKShow_podcastUuid + 8))
  {
    sub_25EA1E768();
    if (qword_27FD0F998 != -1)
    {
      swift_once();
    }

    v19 = MEMORY[0x277D84F90];
    sub_25EA1E5A8();
    v18 = v19;
    goto LABEL_9;
  }

  v11 = objc_opt_self();

  v12 = [v11 sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];
  v15 = objc_opt_self();
  v16 = sub_25EA1E638();

  if (a3)
  {
    v17 = [v15 predicateForEpisodesOnUnplayedTabOnPodcastUuid:v16 ctx:v13];
  }

  else
  {
    v17 = [v15 predicateForEpisodesInFeedForPodcastUuid_];
  }

  v20 = v17;

  [v14 setPredicate_];
  [v14 setFetchLimit_];
  [v14 setFetchOffset_];
  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = a4;
  v21[5] = a5;
  v25[4] = sub_25EA15D78;
  v25[5] = v21;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_25EA15090;
  v25[3] = &block_descriptor_3;
  v22 = _Block_copy(v25);
  v23 = v13;
  v24 = v14;

  [v23 performBlock_];
  _Block_release(v22);
}

void sub_25EA14C60()
{
  v1 = (v0 + OBJC_IVAR___PKShow_podcastUuid);
  if (!*(v0 + OBJC_IVAR___PKShow_podcastUuid + 8) && (sub_25EA0EFA4() & 1) != 0)
  {
    v2 = *(v0 + OBJC_IVAR___PKShow_feedUrl + 8);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR___PKShow_feedUrl);
      v12 = 0;
      v13 = 0;
      v4 = objc_opt_self();

      v5 = [v4 sharedInstance];
      v6 = [v5 mainOrPrivateContext];

      v7 = swift_allocObject();
      v7[2] = &v12;
      v7[3] = v3;
      v7[4] = v2;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_25EA15EA4;
      *(v8 + 24) = v7;
      v11[4] = sub_25EA15EC0;
      v11[5] = v8;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_25EA14934;
      v11[3] = &block_descriptor_39;
      v9 = _Block_copy(v11);

      [v6 performBlockAndWait_];

      _Block_release(v9);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
      }

      else
      {
        v10 = v13;
        *v1 = v12;
        v1[1] = v10;
      }
    }
  }
}

uint64_t sub_25EA14E6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  sub_25EA15E58();
  v4 = sub_25EA1E7B8();
  v5 = v4;
  v15 = MEMORY[0x277D84F90];
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_19:
    v7 = sub_25EA1E8B8();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8C56D0](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v12 = [objc_allocWithZone(type metadata accessor for Episode(0)) initFrom_];

    ++v8;
    if (v12)
    {
      MEMORY[0x25F8C5540]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      sub_25EA1E738();
      v14 = v15;
      v8 = v11;
    }
  }

  a3(v14, 0);
}

uint64_t sub_25EA15090(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t Show.isInLibrary.getter()
{
  if ((sub_25EA0EFA4() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];

  v11 = 0;
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_25EA15D9C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_25EA15DA8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA14934;
  aBlock[3] = &block_descriptor_9_0;
  v5 = _Block_copy(aBlock);
  v6 = v0;
  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v5);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_25EA152C8(uint64_t a1, void *a2, BOOL *a3)
{
  if (*(a1 + OBJC_IVAR___PKShow_uuid + 8))
  {
    v5 = sub_25EA1E638();
    v6 = [a2 podcastForUuid_];

    *a3 = v6 != 0;
  }
}

void Show.artworkUrl(for:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBE0, &qword_25EA22418);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  if (*(v3 + OBJC_IVAR___PKShow_artworkDictionary))
  {
    v10 = objc_allocWithZone(MEMORY[0x277CEE520]);
    v11 = sub_25EA1E618();
    v12 = [v10 initWithArtworkDictionary_];

    if (a3 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (a3 < 9.22337204e18)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            v13 = [v12 URLWithHeight:a3 width:a2 cropStyle:0 format:0];
            if (v13)
            {
              v14 = v13;
              sub_25EA1E428();

              v15 = sub_25EA1E448();
              (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
            }

            else
            {

              v25 = sub_25EA1E448();
              (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
            }

            sub_25EA15DDC(v9, a1);
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  v29 = 0;
  v30 = 0;
  v16 = *(v3 + OBJC_IVAR___PKShow_podcastUuid + 8);
  if (!v16)
  {
    v26 = sub_25EA1E448();
    (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    return;
  }

  v17 = *(v3 + OBJC_IVAR___PKShow_podcastUuid);
  v18 = objc_opt_self();

  v19 = [v18 sharedInstance];
  v20 = [v19 mainOrPrivateContext];

  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = &v29;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25EA15DD0;
  *(v22 + 24) = v21;
  aBlock[4] = sub_25EA15EC0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA14934;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  [v24 performBlockAndWait_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    goto LABEL_24;
  }

  if (v30)
  {

    sub_25EA1E438();
  }

  else
  {
    v27 = sub_25EA1E448();
    (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
  }
}

uint64_t sub_25EA157F4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_25EA1E638();
  v7 = [a1 podcastForUuid_];

  if (v7)
  {
    v8 = [v7 imageURL];
    if (v8)
    {
      v9 = v8;
      v10 = sub_25EA1E648();
      v12 = v11;

      goto LABEL_6;
    }
  }

  v10 = 0;
  v12 = 0;
LABEL_6:
  *a4 = v10;
  a4[1] = v12;
}

uint64_t Show.isSubscribed.getter()
{
  if ((sub_25EA0EFA4() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];

  v11 = 0;
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_25EA15E4C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_25EA15EC0;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA14934;
  aBlock[3] = &block_descriptor_29;
  v5 = _Block_copy(aBlock);
  v6 = v0;
  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v5);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_25EA15BF0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  if (*(a1 + OBJC_IVAR___PKShow_uuid + 8))
  {
    v5 = sub_25EA1E638();
    v6 = [a2 podcastForUuid_];

    if (v6)
    {
      v7 = [v6 subscribed];
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
  }
}

uint64_t sub_25EA15C8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = sub_25EA1E638();
  v6 = [v4 findPodcastWithFeedUrl_];

  if (v6)
  {
    v7 = [v6 uuid];

    if (v7)
    {
      v6 = sub_25EA1E648();
      v9 = v8;

      goto LABEL_6;
    }

    v6 = 0;
  }

  v9 = 0;
LABEL_6:
  *a1 = v6;
  a1[1] = v9;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25EA15DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBE0, &qword_25EA22418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25EA15E58()
{
  result = qword_27FD0FB28;
  if (!qword_27FD0FB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0FB28);
  }

  return result;
}

id sub_25EA15F04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25EA15F74()
{
  v0 = sub_25EA1E5D8();
  __swift_allocate_value_buffer(v0, qword_27FD103E8);
  __swift_project_value_buffer(v0, qword_27FD103E8);
  return sub_25EA1E5C8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_25EA16058()
{
  sub_25EA16124();
  result = sub_25EA1E7E8();
  qword_27FD10400 = result;
  return result;
}

uint64_t sub_25EA160BC()
{
  sub_25EA16124();
  result = sub_25EA1E7E8();
  qword_27FD10408 = result;
  return result;
}

unint64_t sub_25EA16124()
{
  result = qword_27FD0FBF0;
  if (!qword_27FD0FBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0FBF0);
  }

  return result;
}

uint64_t static Show.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD0FC00 = a1;
  return result;
}

Swift::Void __swiftcall Show.encode(with:)(NSCoder with)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25EA1E638();
  v4 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_25EA1E638();
  v6 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___PKShow_storeId);
  v8 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR___PKShow_feedUrl + 8))
  {
    v9 = sub_25EA1E638();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_25EA1E638();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___PKShow_artworkDictionary))
  {
    v11 = objc_opt_self();
    v12 = sub_25EA1E618();
    v22[0] = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v22];

    v14 = v22[0];
    if (v13)
    {
      v15 = sub_25EA1E468();
      v17 = v16;

      sub_25EA166A8(v15, v17);
      v18 = sub_25EA1E458();
      sub_25EA16654(v15, v17);
    }

    else
    {
      v19 = v14;
      v20 = sub_25EA1E3F8();

      swift_willThrow();
      v18 = 0;
      v15 = 0;
      v17 = 0xF000000000000000;
    }

    v21 = sub_25EA1E638();
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v21];
    swift_unknownObjectRelease();

    sub_25EA16640(v15, v17);
  }
}

uint64_t sub_25EA16640(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25EA16654(result, a2);
  }

  return result;
}

uint64_t sub_25EA16654(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25EA166A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id Show.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_25EA0EF28(0, &qword_27FD0F9D0, 0x277CCACA8);
  v4 = sub_25EA1E7C8();
  if (v4)
  {
    v5 = v4;
    v6 = sub_25EA1E648();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_25EA1E7C8();
  if (v9)
  {
    v10 = v9;
    v11 = sub_25EA1E648();
    v38 = v12;
    v39 = v11;
  }

  else
  {
    v38 = 0xE000000000000000;
    v39 = 0;
  }

  type metadata accessor for ShowStoreId();
  v13 = sub_25EA1E7C8();
  v14 = sub_25EA1E7C8();
  if (v14)
  {
    v15 = v14;
    v16 = sub_25EA1E648();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_25EA0EF28(0, &qword_27FD0FC38, 0x277CBEA90);
  v19 = sub_25EA1E7C8();
  if (v19)
  {
    v35 = v8;
    v36 = v6;
    v37 = ObjectType;
    v20 = v19;
    v21 = sub_25EA1E468();
    v23 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC50, qword_25EA22470);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25EA22460;
    *(v24 + 32) = sub_25EA0EF28(0, &qword_27FD0FC58, 0x277CBEA60);
    *(v24 + 40) = sub_25EA0EF28(0, &unk_27FD0FC60, 0x277CBEAC0);
    *(v24 + 48) = sub_25EA0EF28(0, &qword_27FD0FAD0, 0x277CCABB0);
    *(v24 + 56) = v3;
    sub_25EA0EF28(0, &unk_27FD0FC70, 0x277CCAAC8);
    sub_25EA1E788();
    sub_25EA16654(v21, v23);

    if (*(&v42 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
      if (swift_dynamicCast())
      {
        v25 = v40;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      sub_25EA0C980(&v41);
      v25 = 0;
    }

    v6 = v36;
    ObjectType = v37;
    v8 = v35;
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(ObjectType);
  v27 = &v26[OBJC_IVAR___PKShow_podcastUuid];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v26[OBJC_IVAR___PKShow_title];
  *v28 = v6;
  v28[1] = v8;
  v29 = &v26[OBJC_IVAR___PKShow_descriptionText];
  *v29 = v39;
  *(v29 + 1) = v38;
  v30 = &v26[OBJC_IVAR___PKShow_feedUrl];
  *v30 = v16;
  v30[1] = v18;
  *&v26[OBJC_IVAR___PKShow_storeId] = v13;
  v31 = &v26[OBJC_IVAR___PKShow_uuid];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v26[OBJC_IVAR___PKShow_artworkDictionary] = v25;
  v43.receiver = v26;
  v43.super_class = ObjectType;
  v32 = v13;
  v33 = objc_msgSendSuper2(&v43, sel_init);
  sub_25EA14C60();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t Show.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKShow_title);

  return v1;
}

id sub_25EA16C10(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_25EA1E638();

  return v3;
}

uint64_t Show.descriptionText.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKShow_descriptionText);

  return v1;
}

void *Show.storeId.getter()
{
  v1 = *(v0 + OBJC_IVAR___PKShow_storeId);
  v2 = v1;
  return v1;
}

id Show.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlayerManifest.manifest(for:)(void *a1)
{
  return sub_25EA16E90(a1, type metadata accessor for Episode, &off_2870B0720);
}

{
  return sub_25EA16E90(a1, type metadata accessor for Show, &off_2870B0730);
}

id sub_25EA16F0C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v9 = sub_25EA176BC(a3, 0, 0, 0, v8, a4, a5);

  return v9;
}

id static PlayerManifest.manifestForPlayMyPodcasts(siriContext:)(void *a1)
{
  type metadata accessor for GenericPlayPodcasts();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v4 = a1;
  return sub_25EA176BC(v2, 0, 0, a1, v3, type metadata accessor for GenericPlayPodcasts, &off_2870B0760);
}

id static PlayerManifest.manifest(for:siriContext:)(void *a1, void *a2)
{
  return sub_25EA1733C(a1, a2, type metadata accessor for EpisodeStoreId, &off_2870B0750);
}

{
  return sub_25EA1733C(a1, a2, type metadata accessor for ShowStoreId, &off_2870B0740);
}

id static PlayerManifest.manifest(for:siriContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Station();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___PKStation_id];
  *v8 = a1;
  *(v8 + 1) = a2;
  v13.receiver = v7;
  v13.super_class = v6;

  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v11 = a3;
  return sub_25EA176BC(v9, 0, 0, a3, v10, type metadata accessor for Station, &off_2870B0770);
}

id static PlayerManifest.manifest(for:assetInfo:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_25EA1746C(a1, a2, a3, type metadata accessor for EpisodeStoreId, &off_2870B0750);
}

{
  return sub_25EA1746C(a1, a2, a3, type metadata accessor for ShowStoreId, &off_2870B0740);
}

id sub_25EA1733C(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v9 = a2;
  return sub_25EA176BC(a1, 0, 0, a2, v8, a3, a4);
}

id sub_25EA173C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v11 = a3;
  v12 = a4;
  v13 = sub_25EA176BC(v11, 0, 0, a4, v10, a5, a6);

  return v13;
}

id sub_25EA1746C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = objc_allocWithZone(type metadata accessor for PlayerManifest());

  return sub_25EA176BC(a1, a2, a3, 0, v10, a4, a5);
}

id sub_25EA17500(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (a4)
  {
    v9 = sub_25EA1E648();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v13 = sub_25EA176BC(a3, v9, v11, 0, v12, a5, a6);

  return v13;
}

id PlayerManifest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayerManifest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerManifest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25EA176BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v18[3] = a6(0);
  v18[4] = a7;
  v18[0] = a1;
  v13 = &a5[OBJC_IVAR___PKPlayerManifest_assetInfo];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___PKPlayerManifest_siriContext;
  *&a5[OBJC_IVAR___PKPlayerManifest_siriContext] = 0;
  sub_25EA13E0C(v18, &a5[OBJC_IVAR___PKPlayerManifest_playableContent]);
  *v13 = a2;
  *(v13 + 1) = a3;
  *&a5[v14] = a4;
  v17.receiver = a5;
  v17.super_class = type metadata accessor for PlayerManifest();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v15;
}

id _s11PodcastsKit14PlayerManifestC19manifestForShowUuid_11siriContextACSS_AA04SiriJ0CSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Show();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___PKShow_podcastUuid];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR___PKShow_title];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v7[OBJC_IVAR___PKShow_descriptionText];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v7[OBJC_IVAR___PKShow_feedUrl];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v7[OBJC_IVAR___PKShow_storeId] = 0;
  v12 = &v7[OBJC_IVAR___PKShow_uuid];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v7[OBJC_IVAR___PKShow_artworkDictionary] = 0;
  v18.receiver = v7;
  v18.super_class = v6;

  v13 = objc_msgSendSuper2(&v18, sel_init);
  sub_25EA14C60();
  v14 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v15 = a3;
  v16 = sub_25EA176BC(v13, 0, 0, a3, v14, type metadata accessor for Show, &off_2870B0730);

  return v16;
}

uint64_t sub_25EA178F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = sub_25EA1E558();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25EA1E758();
  if (qword_27FD0F9A0 != -1)
  {
    swift_once();
  }

  v11 = qword_27FD10408;
  if (os_log_type_enabled(qword_27FD10408, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_25EA1BA80(*&a1[OBJC_IVAR___PKStoreId_underlyingStoreId], *&a1[OBJC_IVAR___PKStoreId_underlyingStoreId + 8], &v24);
    _os_log_impl(&dword_25E9F0000, v11, v10, "Received request to follow show %{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F8C63A0](v13, -1, -1);
    MEMORY[0x25F8C63A0](v12, -1, -1);
  }

  sub_25EA1E598();
  v14 = sub_25EA1E568();
  if (a2)
  {
    v15 = *(a2 + OBJC_IVAR___PKSiriContext_requesterSharedUserId + 8);
    if (!v15 || (*(a2 + OBJC_IVAR___PKSiriContext_requesterSharedUserId) == qword_27FD0FB80 ? (v16 = v15 == off_27FD0FB88) : (v16 = 0), !v16 && (sub_25EA1E908() & 1) == 0))
    {
    }
  }

  sub_25EA1E548();
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = a1;
  v17[4] = v22;
  v17[5] = a4;
  v18 = a1;
  v19 = v14;

  sub_25EA1E518();

  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_25EA17CAC(uint64_t a1, char *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v57 = a3;
  v58 = a2;
  v6 = sub_25EA1E508();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_25EA1E4F8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FCA0, &qword_25EA22540);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  sub_25EA187C4(a1, &v55 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v13, v23, v6);
    v24 = sub_25EA1E768();
    v25 = v13;
    if (qword_27FD0F9A0 != -1)
    {
      swift_once();
    }

    v26 = qword_27FD10408;
    v27 = *(v7 + 16);
    v28 = v56;
    v27(v56, v25, v6);
    if (os_log_type_enabled(v26, v24))
    {
      v29 = swift_slowAlloc();
      LODWORD(v57) = v24;
      v30 = v29;
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136446210;
      v27(v55, v28, v6);
      v32 = sub_25EA1E658();
      v58 = v25;
      v34 = v33;
      v35 = *(v7 + 8);
      v35(v28, v6);
      v36 = sub_25EA1BA80(v32, v34, &v62);
      v25 = v58;

      *(v30 + 4) = v36;
      _os_log_impl(&dword_25E9F0000, v26, v57, "Error resolving user: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F8C63A0](v31, -1, -1);
      MEMORY[0x25F8C63A0](v30, -1, -1);
    }

    else
    {
      v35 = *(v7 + 8);
      v35(v28, v6);
    }

    v59(3);
    return (v35)(v25, v6);
  }

  else
  {
    (*(v15 + 32))(v20, v23, v14);
    v37 = sub_25EA1E768();
    v38 = v14;
    v39 = v20;
    if (qword_27FD0F9A0 != -1)
    {
      swift_once();
    }

    v40 = qword_27FD10408;
    (*(v15 + 16))(v18, v39, v14);
    if (os_log_type_enabled(v40, v37))
    {
      v41 = swift_slowAlloc();
      v56 = v39;
      v42 = v41;
      v43 = swift_slowAlloc();
      LODWORD(v55) = v37;
      v44 = v43;
      v62 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v61 = sub_25EA1E4E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FCA8, &qword_25EA22548);
      v45 = sub_25EA1E658();
      v47 = v46;
      v48 = *(v15 + 8);
      v48(v18, v38);
      v49 = sub_25EA1BA80(v45, v47, &v62);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_25E9F0000, v40, v55, "Using account: %{private,mask.hash}s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F8C63A0](v44, -1, -1);
      v50 = v42;
      v39 = v56;
      MEMORY[0x25F8C63A0](v50, -1, -1);
    }

    else
    {
      v48 = *(v15 + 8);
      v48(v18, v38);
    }

    v52 = v39;
    v53 = sub_25EA1E4E8();
    v54 = swift_allocObject();
    *(v54 + 16) = v59;
    *(v54 + 24) = v60;

    sub_25EA1E578();

    return (v48)(v52, v38);
  }
}

void sub_25EA18300(void *a1, void (*a2)(uint64_t))
{
  if (a1 && (v18 = a1, v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FDB0, &unk_25EA22550), sub_25EA1883C(), (swift_dynamicCast() & 1) != 0))
  {
    v4 = [v17 code];
    sub_25EA1E598();
    if (v4 == sub_25EA1E588())
    {
      v5 = 1;
    }

    else
    {
      v6 = sub_25EA1E768();
      if (qword_27FD0F9A0 != -1)
      {
        swift_once();
      }

      v7 = qword_27FD10408;
      if (os_log_type_enabled(qword_27FD10408, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v18 = v9;
        *v8 = 136446210;
        v10 = v17;
        v11 = [v10 description];
        v12 = sub_25EA1E648();
        v16 = v6;
        v14 = v13;

        v15 = sub_25EA1BA80(v12, v14, &v18);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_25E9F0000, v7, v16, "Unknown error following %{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x25F8C63A0](v9, -1, -1);
        MEMORY[0x25F8C63A0](v8, -1, -1);
      }

      v5 = 4;
    }

    a2(v5);
  }

  else
  {
    sub_25EA1E758();
    if (qword_27FD0F9A0 != -1)
    {
      swift_once();
    }

    sub_25EA1E5A8();
    a2(0);
  }
}

uint64_t sub_25EA18748()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25EA187C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FCA0, &qword_25EA22540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25EA1883C()
{
  result = qword_27FD0FCB0;
  if (!qword_27FD0FCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0FCB0);
  }

  return result;
}

void sub_25EA1888C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_25EA18964(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = [objc_allocWithZone(MTMediaTask) initWithType_];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25EA1E8B8())
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8C56D0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = *&v11[OBJC_IVAR___PKStoreId_underlyingStoreId];
      v15 = *&v11[OBJC_IVAR___PKStoreId_underlyingStoreId + 8];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_25EA1B8F0(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_25EA1B8F0((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      ++v9;
      if (v13 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v19 = sub_25EA1E708();

  [v25 setIdentifiers_];

  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v25;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA191D8;
  aBlock[3] = a7;
  v21 = _Block_copy(aBlock);

  v22 = v25;

  [v22 perform_];
  _Block_release(v21);
}

uint64_t sub_25EA18BE4(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!result)
  {
    return a3(MEMORY[0x277D84F90], a2);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  while (v7 != v5)
  {
    if (v5 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v10 = sub_25EA11454(v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x25F8C5540](result);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EA1E728();
      }

      result = sub_25EA1E738();
      v6 = v11;
      v5 = v8;
    }
  }

  a3(v6, a2);
}

uint64_t sub_25EA18D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return (a3)(MEMORY[0x277D84F90], a2);
  }

  v3 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

  v27 = a3;
  v5 = (a1 + 32);
  v28 = a2;
  do
  {
    v6 = *v5;

    sub_25EA108DC(0x7475626972747461, 0xEF656D616E2E7365, v6, &v34);
    if (v35)
    {
      if (swift_dynamicCast())
      {
        v7 = v32;
        v30 = v31;
        goto LABEL_9;
      }
    }

    else
    {
      sub_25EA11C48(&v34, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v30 = 0;
    v7 = 0xE000000000000000;
LABEL_9:
    v29 = v7;
    sub_25EA108DC(0xD00000000000001FLL, 0x800000025EA24570, v6, &v34);
    if (v35)
    {
      if (swift_dynamicCast())
      {
        v9 = v31;
        v8 = v32;
        goto LABEL_14;
      }
    }

    else
    {
      sub_25EA11C48(&v34, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v9 = 0;
    v8 = 0xE000000000000000;
LABEL_14:
    sub_25EA108DC(0xD000000000000012, 0x800000025EA24590, v6, &v34);
    if (v35)
    {
      if (swift_dynamicCast())
      {
        v10 = v31;
        v11 = v32;
        goto LABEL_19;
      }
    }

    else
    {
      sub_25EA11C48(&v34, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v10 = 0;
    v11 = 0xE000000000000000;
LABEL_19:
    sub_25EA108DC(25705, 0xE200000000000000, v6, &v34);
    if (v35)
    {
      if (swift_dynamicCast())
      {
        v12 = v31;
        v13 = v32;
        goto LABEL_24;
      }
    }

    else
    {
      sub_25EA11C48(&v34, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v12 = 0;
    v13 = 0xE000000000000000;
LABEL_24:
    v14 = objc_allocWithZone(type metadata accessor for ShowStoreId());
    v15 = StoreId.init(value:)(v12, v13);
    sub_25EA108DC(0xD000000000000012, 0x800000025EA245B0, v6, &v34);
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
      if (swift_dynamicCast())
      {
        v16 = v31;
        goto LABEL_29;
      }
    }

    else
    {
      sub_25EA11C48(&v34, &qword_27FD0FAC8, &qword_25EA22620);
    }

    v16 = sub_25EA10DC8(MEMORY[0x277D84F90]);
LABEL_29:
    v17 = type metadata accessor for Show();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___PKShow_podcastUuid];
    *v19 = 0;
    *(v19 + 1) = 0;
    v20 = &v18[OBJC_IVAR___PKShow_title];
    *v20 = v30;
    *(v20 + 1) = v29;
    v21 = &v18[OBJC_IVAR___PKShow_descriptionText];
    *v21 = v9;
    *(v21 + 1) = v8;
    v22 = &v18[OBJC_IVAR___PKShow_feedUrl];
    *v22 = v10;
    *(v22 + 1) = v11;
    *&v18[OBJC_IVAR___PKShow_storeId] = v15;
    v23 = &v18[OBJC_IVAR___PKShow_uuid];
    *v23 = 0;
    *(v23 + 1) = 0;
    *&v18[OBJC_IVAR___PKShow_artworkDictionary] = v16;
    v33.receiver = v18;
    v33.super_class = v17;
    v24 = v15;
    v25 = objc_msgSendSuper2(&v33, sel_init);
    sub_25EA14C60();

    MEMORY[0x25F8C5540]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25EA1E728();
    }

    sub_25EA1E738();
    ++v5;
    --v4;
  }

  while (v4);
  v3 = v36;
  a3 = v27;
  a2 = v28;
LABEL_33:
  (a3)(v3, a2);
}

uint64_t sub_25EA191D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
    v4 = sub_25EA1E718();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_25EA19278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_25EA1E3E8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

id sub_25EA192F8()
{
  *&v0[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode] = 0;
  v1 = &v0[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextExpirationTime] = 0x405E000000000000;
  v2 = &v0[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextTuple];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v3 = &v0[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277CD6038]) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ProxyPlayerController();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_25EA1A854();

  return v5;
}

void sub_25EA19474(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode);
  if (v4)
  {
    if (a1)
    {
      type metadata accessor for Episode(0);
      v5 = v4;
      v6 = a1;
      v7 = sub_25EA1E7D8();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_27FD0F990 != -1)
  {
    swift_once();
  }

  v8 = sub_25EA1E5D8();
  __swift_project_value_buffer(v8, qword_27FD103E8);
  v9 = sub_25EA1E5B8();
  v10 = sub_25EA1E778();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25E9F0000, v9, v10, "PlayerController: Current item changed, invoking playerResponseHandler", v11, 2u);
    MEMORY[0x25F8C63A0](v11, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler;
  v13 = *(v2 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler);
  if (v13)
  {
    v14 = *(v12 + 8);

    v13(v15);

    sub_25E9F30EC(v13, v14);
  }
}

id sub_25EA1964C()
{
  result = [*(v0 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (result)
  {
    v2 = result;
    v3 = [result tracklist];

    v4 = [v3 playingItem];
    if (v4)
    {
      [v4 duration];
      v5 = v12;
      v6 = v13;
      v7 = v14;
      v8 = v15;

      v9 = type metadata accessor for DurationSnapshot();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR___PKDurationSnapshot_snapshotTime] = v5;
      *&v10[OBJC_IVAR___PKDurationSnapshot_rate] = v8;
      *&v10[OBJC_IVAR___PKDurationSnapshot_elapsedDuration] = v7;
      *&v10[OBJC_IVAR___PKDurationSnapshot_duration] = v6;
      v11.receiver = v10;
      v11.super_class = v9;
      return objc_msgSendSuper2(&v11, sel_init);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25EA1993C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_25EA1E4D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextTuple);
  v14 = *(v4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextTuple + 8);
  if (v14)
  {
    v15 = *v13;
    v16 = v13[2] + *(v4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_contextExpirationTime);

    sub_25EA1E4C8();
    sub_25EA1E478();
    v18 = v17;
    (*(v10 + 8))(v12, v9);
    if (v18 >= v16)
    {

      v15 = 0.0;
      v14 = 0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  a4(a3, *&v15, v14, a1, a2);
}

uint64_t sub_25EA19B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_25EA19CF4(uint64_t a1, uint64_t a2, double a3)
{
  v7 = [*(v3 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v7 tracklist];

  v10 = [v9 playingItem];
  if (v10)
  {
    v11 = [v10 seekCommand];

    if (v11)
    {
      v10 = [v11 changePositionToElapsedInterval_];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_5:
    v10 = 0;
  }

LABEL_6:
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[4] = sub_25EA1DA48;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_25EA1B15C;
  v15[3] = &block_descriptor_83;
  v14 = _Block_copy(v15);
  sub_25E9F30DC(a1, a2);

  [v12 performRequest:v10 completion:v14];
  _Block_release(v14);
}

void sub_25EA1A0B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [*(v6 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (v12 && (v13 = v12, v14 = [v12 tracklist], v13, v15 = objc_msgSend(v14, sel_playingItem), v14, v15) && (v16 = objc_msgSend(v15, sel_seekCommand), v15, v16))
  {
    a3();
    v17 = [v16 jumpByInterval_];
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v21[4] = a5;
  v21[5] = v19;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_25EA1B15C;
  v21[3] = a6;
  v20 = _Block_copy(v21);
  sub_25E9F30DC(a1, a2);

  [v18 performRequest:v17 completion:v20];
  _Block_release(v20);
}

void sub_25EA1A374()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 tracklist];

  v4 = [v3 playingItem];
  if (!v4)
  {
    return;
  }

  v5 = [v4 seekCommand];

  if (!v5)
  {
    return;
  }

  v6 = [v5 preferredForwardJumpIntervals];
  swift_unknownObjectRelease();
  sub_25EA0EF28(0, &qword_27FD0FAD0, 0x277CCABB0);
  v7 = sub_25EA1E718();

  if (v7 >> 62)
  {
    if (sub_25EA1E8B8())
    {
      goto LABEL_6;
    }

LABEL_11:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8C56D0](0, v7);
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_9:
    v9 = v8;

    [v9 doubleValue];

    return;
  }

  __break(1u);
}

void sub_25EA1A548()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 tracklist];

  v4 = [v3 playingItem];
  if (!v4)
  {
    return;
  }

  v5 = [v4 seekCommand];

  if (!v5)
  {
    return;
  }

  v6 = [v5 preferredBackwardJumpIntervals];
  swift_unknownObjectRelease();
  sub_25EA0EF28(0, &qword_27FD0FAD0, 0x277CCABB0);
  v7 = sub_25EA1E718();

  if (v7 >> 62)
  {
    if (sub_25EA1E8B8())
    {
      goto LABEL_6;
    }

LABEL_11:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8C56D0](0, v7);
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_9:
    v9 = v8;

    [v9 doubleValue];

    return;
  }

  __break(1u);
}

void sub_25EA1A854()
{
  v52 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
  v0 = sub_25EA1E638();
  [v52 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FD90, &qword_25EA225F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EA22560;
  v50 = inited;
  *(inited + 32) = sub_25EA1E648();
  v51 = inited + 32;
  *(inited + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FD68, &qword_25EA225E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25EA22570;
  *(v3 + 32) = sub_25EA1E648();
  *(v3 + 40) = v4;
  *(v3 + 48) = sub_25EA1E648();
  *(v3 + 56) = v5;
  *(v3 + 64) = sub_25EA1E648();
  *(v3 + 72) = v6;
  *(v3 + 80) = sub_25EA1E648();
  *(v3 + 88) = v7;
  *(v3 + 96) = sub_25EA1E648();
  *(v3 + 104) = v8;
  *(v3 + 112) = sub_25EA1E648();
  *(v3 + 120) = v9;
  *(v3 + 128) = sub_25EA1E648();
  *(v3 + 136) = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_25EA22580;
  *(v11 + 32) = sub_25EA1E648();
  *(v11 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25EA22560;
  *(v13 + 32) = sub_25EA1E648();
  *(v13 + 40) = v14;
  sub_25EA10F04(MEMORY[0x277D84F90]);
  v15 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v16 = sub_25EA1E708();

  sub_25EA0EF28(0, &qword_27FD0FD98, 0x277CD6018);
  v17 = sub_25EA1E618();

  v18 = [v15 initWithProperties:v16 relationships:v17];

  *(v11 + 48) = v18;
  *(v11 + 56) = sub_25EA1E648();
  *(v11 + 64) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25EA22590;
  *(v20 + 32) = sub_25EA1E648();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_25EA1E648();
  *(v20 + 56) = v22;
  *(v20 + 64) = sub_25EA1E648();
  *(v20 + 72) = v23;
  *(v20 + 80) = sub_25EA1E648();
  *(v20 + 88) = v24;
  *(v20 + 96) = sub_25EA1E648();
  *(v20 + 104) = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_25EA22560;
  *(v26 + 32) = sub_25EA1E648();
  *(v26 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25EA22560;
  *(v28 + 32) = sub_25EA1E648();
  *(v28 + 40) = v29;
  v30 = sub_25EA1E708();

  v31 = [objc_opt_self() propertySetWithProperties_];

  *(v26 + 48) = v31;
  sub_25EA10F04(v26);
  swift_setDeallocating();
  sub_25EA11C48(v26 + 32, &unk_27FD0FDA0, &unk_25EA22600);
  v32 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v33 = sub_25EA1E708();

  v34 = sub_25EA1E618();

  v35 = [v32 initWithProperties:v33 relationships:v34];

  *(v11 + 72) = v35;
  sub_25EA10F04(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0FDA0, &unk_25EA22600);
  swift_arrayDestroy();
  v36 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v37 = sub_25EA1E708();

  v38 = sub_25EA1E618();

  v39 = [v36 initWithProperties:v37 relationships:v38];

  *(v50 + 48) = v39;
  sub_25EA10F04(v50);
  swift_setDeallocating();
  sub_25EA11C48(v51, &unk_27FD0FDA0, &unk_25EA22600);
  v40 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v41 = sub_25EA1E708();
  v42 = sub_25EA1E618();

  v43 = [v40 &selRef_mediaApiClientIdentifier + 5];

  v44 = v43;
  [v52 setPlayingItemProperties_];
  [v52 setQueueItemProperties_];

  v45 = *(v53 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController);
  [v45 setRequest_];
  v46 = [v45 request];
  v47 = sub_25EA1E638();
  v48 = sub_25EA1E638();
  v49 = [objc_opt_self() pathWithRoute:0 bundleID:v47 playerID:v48];

  [v46 setPlayerPath_];
  [v45 setDelegate_];
  [v45 beginAutomaticResponseLoading];
}

uint64_t sub_25EA1AF9C(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result)
  {
    v3 = result;
    v4 = result;
    if (qword_27FD0F990 != -1)
    {
      swift_once();
    }

    v5 = sub_25EA1E5D8();
    __swift_project_value_buffer(v5, qword_27FD103E8);
    v6 = v3;
    v7 = sub_25EA1E5B8();
    v8 = sub_25EA1E768();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FDB0, &unk_25EA22550);
      v12 = sub_25EA1E658();
      v14 = sub_25EA1BA80(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25E9F0000, v7, v8, "Player command failed: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x25F8C63A0](v10, -1, -1);
      MEMORY[0x25F8C63A0](v9, -1, -1);
    }

    else
    {
    }

    result = 1;
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_25EA1B164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_25EA1B1D4()
{
  result = [*(v0 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController) response];
  if (result)
  {
    v2 = result;
    v3 = [result tracklist];

    v4 = [v3 playingItem];
    if (v4)
    {
      v5 = [v4 metadataObject];

      if (v5)
      {
        v6 = [v5 flattenedGenericObject];

        if (v6)
        {
          v7 = [v6 anyObject];

          if (v7)
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_25EA1B2F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxyPlayerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25EA1B3D0(void (*a1)(void), uint64_t a2, char *a3)
{
  a1();
  v4 = [*&a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_requestResponseController] response];
  if (v4 && (v5 = v4, v6 = [v4 tracklist], v5, v7 = objc_msgSend(v6, sel_playingItem), v6, v7))
  {
    v8 = [v7 contentItemIdentifier];

    v9 = sub_25EA1E648();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = &a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier];
  v13 = *&a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier];
  v14 = *&a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier + 8];
  *v12 = v9;
  *(v12 + 1) = v11;
  if (v14)
  {
    if (v11)
    {
      v15 = v13 == v9 && v14 == v11;
      if (v15 || (sub_25EA1E908() & 1) != 0)
      {

        goto LABEL_15;
      }
    }
  }

  else if (!v11)
  {
    goto LABEL_15;
  }

  v16 = sub_25EA1B1D4();

  v17 = a3;
  sub_25EA1CBB8(v16, v9, v11, v17);

  swift_bridgeObjectRelease_n();

LABEL_15:
  v18 = &a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler];
  v19 = *&a3[OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler];
  if (v19)
  {
    v20 = *(v18 + 1);

    v19(v21);

    sub_25E9F30EC(v19, v20);
  }
}

void sub_25EA1B648(uint64_t a1, void **a2)
{
  v3 = [objc_opt_self() findEpisodeFromModelObject_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(type metadata accessor for Episode(0)) initFrom_];

    v6 = *a2;
    *a2 = v5;
  }
}

void sub_25EA1B6EC(unint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v5 = a1;
  v6 = sub_25EA1E8B8();
  a1 = v5;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8C56D0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a1 + 32);
  }

LABEL_8:
  v7 = v4;
  a3();
}

void sub_25EA1B834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25EA1E3E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25EA1B8A4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_25EA1B8F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FD68, &qword_25EA225E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25EA1BA24(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25EA1BA80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25EA1BA80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25EA1BB4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25EA11E24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25EA1BB4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25EA1BC58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25EA1E898();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25EA1BC58(uint64_t a1, unint64_t a2)
{
  v3 = sub_25EA1BCA4(a1, a2);
  sub_25EA1BDD4(&unk_2870B0538);
  return v3;
}

void *sub_25EA1BCA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25EA1BEC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25EA1E898();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25EA1E688();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25EA1BEC0(v10, 0);
        result = sub_25EA1E878();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25EA1BDD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25EA1BF34(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25EA1BEC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FDB8, &qword_25EA22610);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25EA1BF34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FDB8, &qword_25EA22610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_25EA1C028(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25EA1C038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0FDC0, &qword_25EA22618);
  v37 = v4;
  result = sub_25EA1E8D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25EA1E928();
      sub_25EA1E678();
      result = sub_25EA1E948();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25EA1C2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25EA10B8C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25EA1C038(v18, a5 & 1);
      v13 = sub_25EA10B8C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25EA1E918();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25EA1C480();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_25EA1C480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0FDC0, &qword_25EA22618);
  v2 = *v0;
  v3 = sub_25EA1E8C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_25EA1C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MRNowPlayingClientCreate();
  v9 = sub_25EA1E638();
  v10 = sub_25EA1E638();
  MRNowPlayingPlayerCreate();

  MRNowPlayingPlayerPathCreate();
  v11 = MEMORY[0x277D84F98];
  if (!a3)
  {
    goto LABEL_4;
  }

  if (*MEMORY[0x277D27D08])
  {
    v12 = sub_25EA1E648();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v11;
    sub_25EA1C2F8(a2, a3, v12, v14, isUniquelyReferenced_nonNull_native);

LABEL_4:
    v16 = sub_25EA1E618();

    sub_25EA0EF28(0, &qword_27FD0FD70, 0x277D85C78);
    v17 = sub_25EA1E798();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v20[4] = sub_25EA1D97C;
    v20[5] = v18;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_25EA1888C;
    v20[3] = &block_descriptor_89;
    v19 = _Block_copy(v20);
    sub_25E9F30DC(a4, a5);

    MRMediaRemoteSendCommandToPlayer();
    _Block_release(v19);

    return;
  }

  __break(1u);
}

void sub_25EA1C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D27958]) initWithBundleIdentifier_];
  v10 = objc_allocWithZone(MEMORY[0x277D279E0]);
  v11 = v9;
  v12 = sub_25EA1E638();
  v13 = sub_25EA1E638();
  v14 = [v10 initWithIdentifier:v12 displayName:v13];

  v15 = [objc_allocWithZone(MEMORY[0x277D279E8]) initWithOrigin:0 client:v11 player:v14];
  v16 = MEMORY[0x277D84F98];
  if (!a3)
  {
    goto LABEL_4;
  }

  if (*MEMORY[0x277D27D08])
  {
    v17 = sub_25EA1E648();
    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v16;
    sub_25EA1C2F8(a2, a3, v17, v19, isUniquelyReferenced_nonNull_native);

LABEL_4:
    sub_25EA1026C(v16);

    v21 = sub_25EA1E618();

    sub_25EA0EF28(0, &qword_27FD0FD70, 0x277D85C78);
    v22 = v15;
    v23 = sub_25EA1E798();
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v26[4] = sub_25EA1D984;
    v26[5] = v24;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_25EA18904;
    v26[3] = &block_descriptor_95;
    v25 = _Block_copy(v26);
    sub_25E9F30DC(a4, a5);

    MRMediaRemoteSendCommandToPlayerWithResult();

    _Block_release(v25);
    return;
  }

  __break(1u);
}

void sub_25EA1CAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier);
  v6 = *(a4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController__currentContentItemIdentifier + 8);
  if (!a3)
  {
    if (v6)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v7 = *v5 == a2 && v6 == a3;
    if (v7 || (v8 = a1, v9 = sub_25EA1E908(), a1 = v8, (v9 & 1) != 0))
    {
LABEL_8:
      v11 = *(a4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode);
      *(a4 + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode) = a1;
      v10 = a1;
      sub_25EA19474(v11);
    }
  }
}

void sub_25EA1CBB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  if (a1)
  {

    v9 = a4;
    v10 = a1;
    if (sub_25EA0EFA4())
    {
      v39 = 0;
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainOrPrivateContext];

      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = &v39;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_25EA1DA14;
      *(v14 + 24) = v13;
      aBlock[4] = sub_25EA1DA18;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25EA14934;
      aBlock[3] = &block_descriptor_63;
      v15 = _Block_copy(aBlock);
      v16 = v10;

      [v12 performBlockAndWait_];

      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
        return;
      }

      v17 = v39;
      if (v39)
      {
        v18 = v39;
        sub_25EA1CAFC(v17, a2, a3, v9);

        v19 = v39;
      }

      else
      {
        v19 = 0;
      }

      v24 = sub_25EA1DA14;
    }

    else
    {
      v24 = 0;
      v13 = 0;
    }

    v25 = [v10 identifiers];
    v26 = [v25 storeAdamID];

    v27 = objc_allocWithZone(type metadata accessor for StoreId());
    v28 = StoreId.init(value:)(v26);
    if (v28)
    {
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0FD58, &qword_25EA225D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EA225A0;
      *(inited + 32) = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_25EA1D968;
      *(v31 + 24) = v8;
      v32 = v29;

      sub_25EA18964(inited, sub_25EA1DA0C, v31, 1, &unk_2870B0E00, sub_25EA1D590, &block_descriptor_36);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v33 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v34 = sub_25EA1E638();
      v35 = [v33 initWithDomain:v34 code:102 userInfo:0];

      v36 = v35;
      sub_25EA1CAFC(0, a2, a3, v9);
    }

    sub_25E9F30EC(v24, v13);
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

    v21 = a4;
    v22 = sub_25EA1E638();
    v23 = [v20 initWithDomain:v22 code:101 userInfo:0];

    v37 = v23;
    sub_25EA1CAFC(0, a2, a3, v21);
  }
}

void sub_25EA1D098(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (a1)
  {
    _Block_copy(a2);
    v5 = a1;
    if (sub_25EA0EFA4())
    {
      v33 = 0;
      v6 = [objc_opt_self() sharedInstance];
      v7 = [v6 mainOrPrivateContext];

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = &v33;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_25EA1D570;
      *(v9 + 24) = v8;
      aBlock[4] = sub_25EA0C3D0;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25EA14934;
      aBlock[3] = &block_descriptor_4;
      v10 = _Block_copy(aBlock);
      v11 = v5;

      [v7 performBlockAndWait_];

      _Block_release(v10);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
        return;
      }

      if (v33)
      {
        (a2)[2](a2, v33, 0);
        v12 = v33;
      }

      else
      {
        v12 = 0;
      }

      v17 = sub_25EA1D570;
    }

    else
    {
      v17 = 0;
      v8 = 0;
    }

    v18 = [v5 identifiers];
    v19 = [v18 storeAdamID];

    v20 = objc_allocWithZone(type metadata accessor for StoreId());
    v21 = StoreId.init(value:)(v19);
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0FD58, &qword_25EA225D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EA225A0;
      *(inited + 32) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_25EA1D560;
      *(v24 + 24) = v4;
      v25 = v22;

      sub_25EA18964(inited, sub_25EA1D568, v24, 1, &unk_2870B0E00, sub_25EA1D590, &block_descriptor_36);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v27 = sub_25EA1E638();
      v28 = [v26 initWithDomain:v27 code:102 userInfo:0];

      v29 = v28;
      v30 = sub_25EA1E3E8();
      (a2)[2](a2, 0, v30);
    }

    sub_25E9F30EC(v17, v8);
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    _Block_copy(a2);
    v14 = sub_25EA1E638();
    v15 = [v13 initWithDomain:v14 code:101 userInfo:0];

    v16 = v15;
    v31 = sub_25EA1E3E8();
    (a2)[2](a2, 0, v31);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25EA1D5B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25EA1E5E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25EA1E608();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EA0EF28(0, &qword_27FD0FD70, 0x277D85C78);
  v12 = sub_25EA1E798();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_25EA1D858;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EA15090;
  aBlock[3] = &block_descriptor_45;
  v14 = _Block_copy(aBlock);

  v15 = v2;

  sub_25EA1E5F8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25EA1D864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FD80, &qword_25EA225F0);
  sub_25EA1D8BC();
  sub_25EA1E838();
  MEMORY[0x25F8C55F0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

unint64_t sub_25EA1D864()
{
  result = qword_27FD0FD78;
  if (!qword_27FD0FD78)
  {
    sub_25EA1E5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FD78);
  }

  return result;
}

unint64_t sub_25EA1D8BC()
{
  result = qword_27FD0FD88;
  if (!qword_27FD0FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0FD80, &qword_25EA225F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FD88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_32Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_25EA1DA4C(id a1, int a2)
{
  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v3 = 2;
      if (!a1)
      {
        return v3;
      }

LABEL_19:
      v7 = a1;
      if (v3 == 1)
      {
LABEL_20:
        v8 = objc_opt_self();
        v9 = sub_25EA1E3E8();
        v10 = [v8 errorIsMaxStreamCount_];

        if (v10)
        {

          v3 = 6;
        }

        else
        {
          v11 = sub_25EA1E3E8();
          v12 = [v8 errorIsNoNetwork_];

          if (v12)
          {

            v3 = 7;
          }

          else
          {
            v13 = sub_25EA1E3E8();
            v14 = [v8 errorIsApplicationRequiresPreflight_];

            if (v14)
            {
              v3 = 8;
            }

            else
            {
              v3 = 1;
            }
          }
        }

LABEL_27:
        v15 = a1;
        v16 = sub_25EA1E3E8();
        sub_25EA1DC34();
        v18 = v17;

        if (v18)
        {
          return 4;
        }

        return v3;
      }

LABEL_17:

      goto LABEL_27;
    }

    if (a2 == 20)
    {
      v3 = 3;
      if (!a1)
      {
        return v3;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a1)
      {
        return 0;
      }

      v4 = objc_opt_self();
      v5 = a1;
      v6 = sub_25EA1E3E8();
      LODWORD(v4) = [v4 assistantErrorIsInformational_];

      v3 = v4 ^ 1;
      if (v3 == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (a2 == 1)
    {
      v3 = 4;
      if (!a1)
      {
        return v3;
      }

      goto LABEL_19;
    }
  }

  if (a2 == 104)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  if (a1)
  {
    goto LABEL_19;
  }

  return v3;
}

void sub_25EA1DC34()
{
  v1 = v0;
  v2 = [v0 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FDB0, &unk_25EA22550);
  sub_25EA1E718();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FE30, &qword_25EA22628);
  sub_25EA1DDF0();
  LOBYTE(v2) = sub_25EA1E748();

  if (v2)
  {
    v3 = [v1 underlyingErrors];
    v4 = sub_25EA1E718();

    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);
      v6 = v5;

      v7 = sub_25EA1E3E8();

      sub_25EA1DC34();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = [v1 domain];
    v9 = sub_25EA1E648();
    v11 = v10;

    if (v9 == 0xD00000000000002DLL && 0x800000025EA24C00 == v11)
    {
    }

    else
    {
      sub_25EA1E908();
    }
  }
}

unint64_t sub_25EA1DDF0()
{
  result = qword_27FD0FE38;
  if (!qword_27FD0FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0FE30, &qword_25EA22628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0FE38);
  }

  return result;
}