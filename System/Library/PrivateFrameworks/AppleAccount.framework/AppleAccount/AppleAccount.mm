id _AALogSystem(uint64_t a1)
{
  if (_AALogSystem_onceToken != -1)
  {
    _AALogSystem_cold_1();
  }

  v2 = _AALogSystem_log;

  return v2;
}

id _AAURLSessionCreateSession(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _AAURLSessionCreateSession_cold_1();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  _AAURLSessionCreateSession_cold_2();
LABEL_3:
  v10 = [[AAURLSessionContext alloc] initRequiringSigning:a3];
  v11 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v11 setWaitsForConnectivity:1];
  [v11 setTimeoutIntervalForResource:60.0];
  v12 = _AAURLSessionSharedCache(v4);
  [v11 setURLCache:v12];

  [v11 aa_registerProtocolClass:objc_opt_class()];
  [v11 set_appleIDContext:v10];
  v13 = [MEMORY[0x1E696ADC8] aa_operationQueueWithUnderlyingQueue:v9];
  v14 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v11 delegate:v7 delegateQueue:v13];

  return v14;
}

id _AAURLSessionSharedCache(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AAURLSessionSharedCache_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a1;
  if (_AAURLSessionSharedCache_onceToken != -1)
  {
    dispatch_once(&_AAURLSessionSharedCache_onceToken, block);
  }

  v1 = _AAURLSessionSharedCache_sharedCache;

  return v1;
}

uint64_t sub_1B6F6D140(uint64_t a1, int a2)
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

uint64_t sub_1B6F6D160(uint64_t result, int a2, int a3)
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

uint64_t sub_1B6F6D1D0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6F6D21C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6F6D25C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB980B20;
  return result;
}

uint64_t sub_1B6F6D2A8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB980B20 = v1;
  return result;
}

uint64_t sub_1B6F6D2F0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB980BF0;
  return result;
}

uint64_t sub_1B6F6D33C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB980BF0 = v1;
  return result;
}

uint64_t sub_1B6F6D384()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6F6D3C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6F6D3FC(mach_port_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t *a5, uint64_t *a6, unsigned int *a7)
{
  v19 = 1;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = __PAIR64__(a4, a2);
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x3Cu, 0x48u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v16 = 4294966988;
  }

  else if (msg.msgh_id == 1300)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v16 = 4294966996;
      if (v19 == 1 && msg.msgh_size == 64 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
      {
        v17 = v22;
        if (v22 == v25)
        {
          *a5 = v24;
          *a6 = v20;
          *a7 = v17;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v16 = 4294966996;
      if (HIDWORD(v20))
      {
        if (msg.msgh_remote_port)
        {
          v16 = 4294966996;
        }

        else
        {
          v16 = HIDWORD(v20);
        }
      }
    }

    else
    {
      v16 = 4294966996;
    }
  }

  else
  {
    v16 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v16;
}

uint64_t sub_1B6F6D5F8(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 1;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a2;
  v18 = a3;
  v19 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x44u, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id != 1301)
  {
    v9 = 4294966995;
    goto LABEL_18;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_18;
  }

  return v9;
}

uint64_t sub_1B6F6D778(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, int *a7)
{
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a2;
  v24 = a3;
  v25 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x44u, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (msg.msgh_id == 71)
  {
    v15 = 4294966988;
  }

  else if (msg.msgh_id == 1302)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v15 = 4294966996;
      if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
      {
        v16 = v21;
        if (v21 == v23)
        {
          *a6 = v19;
          *a7 = v16;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v15 = 4294966996;
      if (HIDWORD(v19))
      {
        if (msg.msgh_remote_port)
        {
          v15 = 4294966996;
        }

        else
        {
          v15 = HIDWORD(v19);
        }
      }
    }

    else
    {
      v15 = 4294966996;
    }
  }

  else
  {
    v15 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v15;
}

uint64_t sub_1B6F6D970(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E99E0];
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(&msg, 3, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v7;
  }

  if (v6)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v7;
  }

  else
  {
    if (msg.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      v7 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v7 = v11;
        if (!v11)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&msg);
    return v7;
  }
}

uint64_t sub_1B6F6DE04()
{
  result = (*(v3 + 8 * (v0 + 49)))(v2);
  *(v1 + 4) = 0;
  return result;
}

void sub_1B6F6DFB8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (801985777 * ((2 * (a1 & 0x3D6FE1E) - a1 + 2083062241) ^ 0x9B5855C0));
  v2 = *a1;
  v3 = *qword_1E7C9DBC0[v1 - 59];
  strcpy(v6, "com.apple.absd");
  v4 = qword_1E7C9DBC0[v1 ^ 0x39];
  v5 = *(v4 + 8 * ((((*(v4 + 8 * (v1 ^ 0x50)))(v3, v6, v2) == 0) * ((v1 + 24) ^ 0x3D)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B6F6E214()
{
  result = (*(v3 + 8 * (v4 + v0 + 6)))(*(v1 + 8 * (v0 ^ (v5 + 52))), nullsub_1);
  *v2 = -1793105400;
  return result;
}

uint64_t sub_1B6F6F310(mach_port_t a1, uint64_t a2, int a3, uint64_t *a4, int *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

uint64_t sub_1B6F6F918(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1E7C9DC40 + (byte_1B7072510[byte_1B70721F0[(-3 * (dword_1EB980DC0 ^ 0x8A ^ dword_1EB980DB0))] ^ 7] ^ (-3 * (dword_1EB980DC0 ^ 0x8A ^ dword_1EB980DB0))) + 11);
  v3 = *(v2 - 4);
  v4 = *(&off_1E7C9DC40 + (byte_1B7072764[(byte_1B707241C[(-3 * (v3 ^ dword_1EB980DB0 ^ 0x8A)) - 12] ^ 0xEA) - 4] ^ (-3 * (v3 ^ dword_1EB980DB0 ^ 0x8A))) - 188);
  v5 = v3 - &v12 + *v4;
  v6 = 1543604477 * (v5 - 0x45EA3381FA58338ALL);
  v7 = 1543604477 * (v5 ^ 0x45EA3381FA58338ALL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -3 * (*(v2 - 4) ^ 0x8A ^ v7);
  v8 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 + dword_1EB980DC0) ^ 0x8A)) ^ byte_1B7072760[byte_1B7072410[(-3 * ((dword_1EB980DB0 + dword_1EB980DC0) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v9 = (*&v8[8 * (v7 ^ byte_1B7072510[byte_1B70721F0[v7] ^ 7]) + 23824])(a2);
  v10 = *&v8[8 * (byte_1B7071AE8[(byte_1B7072660[(-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))] ^ 0xE2) - 8] ^ (-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))) + 22664];

  return v10(v9);
}

uint64_t sub_1B6F6FBA4()
{
  v0 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 - dword_1EB980DC8) ^ 0x8A)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * ((dword_1EB980DB0 - dword_1EB980DC8) ^ 0x8A))] ^ 0x78]) - 199);
  v1 = *(v0 - 4);
  v2 = *(&off_1E7C9DC40 + (byte_1B7071FF0[byte_1B7071CE0[(-3 * (v1 ^ dword_1EB980DB0 ^ 0x8A))] ^ 6] ^ (-3 * (v1 ^ dword_1EB980DB0 ^ 0x8A))) - 62);
  v3 = 1543604477 * ((*v2 + v1) ^ &v12 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v4 = *(v0 - 4);
  v5 = *(&off_1E7C9DC40 + ((-3 * (dword_1EB980DC8 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * (dword_1EB980DC8 ^ 0x8A ^ dword_1EB980DB0))] ^ 0x80]) - 241) - 12;
  (*&v5[8 * (byte_1B7071AE0[byte_1B7072660[(-3 * ((v3 - v4) ^ 0x8A))] ^ 0xEC] ^ (-3 * ((v3 - v4) ^ 0x8A))) + 22288])(**(&off_1E7C9DC40 + (byte_1B7071EF0[byte_1B7071BE0[(-3 * (v4 ^ 0x8A ^ v3))] ^ 0x90] ^ (-3 * (v4 ^ 0x8A ^ v3))) - 90));
  v6 = -3 * (*(v0 - 4) ^ 0x8A ^ *v2);
  (*&v5[8 * (byte_1B70720F8[(byte_1B7071DE8[v6 - 8] ^ 0xF0) - 8] ^ v6) + 23496])(**(&off_1E7C9DC40 + (v6 ^ byte_1B7071FF0[byte_1B7071CE0[v6] ^ 0x3F]) - 118));
  v7 = *(v0 - 4);
  v8 = *v2;
  v9 = **(&off_1E7C9DC40 + ((-3 * (v7 ^ 0x8A ^ v8)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * (v7 ^ 0x8A ^ v8))] ^ 0xA9]) - 98);
  v10 = *&v5[8 * ((-3 * ((v8 + v7) ^ 0x8A)) ^ byte_1B7071EF0[byte_1B7071BE0[(-3 * ((v8 + v7) ^ 0x8A))] ^ 0xC3]) + 23160];

  return v10(v9);
}

void sub_1B6F707C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1B6F70C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v20 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6F71234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6F756F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B6F75B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id getCDPCustodianRecoveryInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPCustodianRecoveryInfoClass_softClass;
  v7 = getCDPCustodianRecoveryInfoClass_softClass;
  if (!getCDPCustodianRecoveryInfoClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPCustodianRecoveryInfoClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getCDPCustodianRecoveryInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6F774D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6F77904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6F78190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCDPCustodianRecoveryInfoClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPCustodianRecoveryInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPCustodianRecoveryInfoClass_block_invoke_cold_1();
  }

  getCDPCustodianRecoveryInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreCDPLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CoreCDPLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7C9AEA8;
    v2 = 0;
    CoreCDPLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    CoreCDPLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoreCDPLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCDPStateControllerClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPStateControllerClass_block_invoke_cold_1();
  }

  getCDPStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCDPContextClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPContextClass_block_invoke_cold_1();
  }

  getCDPContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1B6F7F74C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1B6F8011C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6F87750(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B6F87F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v26 - 96));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6F8849C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F88B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F89228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F89908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id _AAErrorUnderlyingError(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = _AAErrorUnderlyingError(v4);
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v6;
}

void sub_1B6F8C3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 reason];
      [(NSMutableURLRequest(AppleAccount) *)v13 aa_setJSONBodyWithParameters:v10, va, v12];
    }

    objc_end_catch();
    JUMPOUT(0x1B6F8C3ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B6F8E090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 176), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6F8E7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  _Block_object_dispose((v31 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F8F06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_activity_scope_state_s state)
{
  _Block_object_dispose((v33 - 176), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F8F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_activity_scope_state_s state)
{
  _Block_object_dispose((v33 - 176), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F90174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F90844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F90F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F915F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F91CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F923AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F92AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F93104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F937E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v24 - 160), 8);
  os_activity_scope_leave((v24 - 176));
  _Unwind_Resume(a1);
}

void sub_1B6F94328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v32 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F94EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F952C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6F95C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F962E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F96928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F96F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  _Block_object_dispose((v27 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F975C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F97C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F98210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v22 - 112));
  _Unwind_Resume(a1);
}

void sub_1B6F986A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F98D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  _Block_object_dispose((v27 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F993C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1B6F9A518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B6FA5044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FA5624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B6FAB08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  os_activity_scope_leave(&state);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1B6FAE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FAEC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6FAEFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1B6FB832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCIContextClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIContextClass_block_invoke_cold_1();
  }

  getCIContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreImageLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CoreImageLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7C9BEB8;
    v2 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    CoreImageLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCIFilterClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIFilterClass_block_invoke_cold_1();
  }

  getCIFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FBF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v19 - 120));
  _Unwind_Resume(a1);
}

id _AADeviceListLogSystem(uint64_t a1)
{
  if (_AADeviceListLogSystem_onceToken != -1)
  {
    _AADeviceListLogSystem_cold_1();
  }

  v2 = _AADeviceListLogSystem_log;

  return v2;
}

id _AASignOutLogSystem(uint64_t a1)
{
  if (_AASignOutLogSystem_onceToken != -1)
  {
    _AASignOutLogSystem_cold_1();
  }

  v2 = _AASignOutLogSystem_log;

  return v2;
}

id _AASignpostLogSystem(uint64_t a1)
{
  if (_AASignpostLogSystem_onceToken != -1)
  {
    _AASignpostLogSystem_cold_1();
  }

  v2 = _AASignpostLogSystem_log;

  return v2;
}

id _AAAccountStoreLogSystem(uint64_t a1)
{
  if (_AAAccountStoreLogSystem_onceToken != -1)
  {
    _AAAccountStoreLogSystem_cold_1();
  }

  v2 = _AAAccountStoreLogSystem_log;

  return v2;
}

id _AAAgeAttestationLogSystem(uint64_t a1)
{
  if (_AAAgeAttestationLogSystem_onceToken != -1)
  {
    _AAAgeAttestationLogSystem_cold_1();
  }

  v2 = _AAAgeAttestationLogSystem_log;

  return v2;
}

id _AAAgeMigrationLogSystem(uint64_t a1)
{
  if (_AAAgeMigrationLogSystem_onceToken != -1)
  {
    _AAAgeMigrationLogSystem_cold_1();
  }

  v2 = _AAAgeMigrationLogSystem_log;

  return v2;
}

os_signpost_id_t _AASignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _AASignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_AASignpostGetNanoseconds_onceToken != -1)
  {
    _AASignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _AASignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_1ED8C4A04;
  return (v4 / v5 * (v3 - a2));
}

void sub_1B6FC3B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FC9D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B6FCBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FCF3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1B6FD9F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SetupAssistantLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = SetupAssistantLibraryCore_frameworkLibrary;
  v6 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7C9C6B8;
    v8 = *off_1E7C9C6C8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    SetupAssistantLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B6FDCBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SetupAssistantLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v3 = 0;
  v0 = SetupAssistantLibraryCore(&v3);
  if (!v0)
  {
    SetupAssistantLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_ptr;
  v6 = getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_ptr;
  if (!getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v4[3] = dlsym(v1, "BYSetupAssistantIsRunningSilentTokenUpgrade");
    getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B6FDCDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SBYSetupAssistantIsRunningSilentTokenUpgrade()
{
  IsRunningSilentTokenUpgradeSymbolLoc = getBYSetupAssistantIsRunningSilentTokenUpgradeSymbolLoc();
  if (!IsRunningSilentTokenUpgradeSymbolLoc)
  {
    SBYSetupAssistantIsRunningSilentTokenUpgrade_cold_1();
  }

  return IsRunningSilentTokenUpgradeSymbolLoc();
}

uint64_t getBYSetupAssistantHasCompletedInitialRunSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
  v6 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
  if (!getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v4[3] = dlsym(v1, "BYSetupAssistantHasCompletedInitialRun");
    getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B6FDCF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SBYSetupAssistantHasCompletedInitialRun()
{
  HasCompletedInitialRunSymbolLoc = getBYSetupAssistantHasCompletedInitialRunSymbolLoc();
  if (!HasCompletedInitialRunSymbolLoc)
  {
    SBYSetupAssistantHasCompletedInitialRun_cold_1();
  }

  return HasCompletedInitialRunSymbolLoc();
}

id getBYFlowSkipControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBYFlowSkipControllerClass_softClass;
  v7 = getBYFlowSkipControllerClass_softClass;
  if (!getBYFlowSkipControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBYFlowSkipControllerClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getBYFlowSkipControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FDD09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
  }

  getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getBYFlowSkipIdentifierAppleIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYFlowSkipIdentifierAppleIDSymbolLoc_ptr;
  v6 = getBYFlowSkipIdentifierAppleIDSymbolLoc_ptr;
  if (!getBYFlowSkipIdentifierAppleIDSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v4[3] = dlsym(v1, "BYFlowSkipIdentifierAppleID");
    getBYFlowSkipIdentifierAppleIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B6FDD1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYFlowSkipIdentifierAppleIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierAppleIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBYFlowSkipIdentifierAppleID()
{
  BYFlowSkipIdentifierAppleIDSymbolLoc = getBYFlowSkipIdentifierAppleIDSymbolLoc();
  if (!BYFlowSkipIdentifierAppleIDSymbolLoc)
  {
    getBYFlowSkipIdentifierAppleID_cold_1();
  }

  v1 = *BYFlowSkipIdentifierAppleIDSymbolLoc;

  return v1;
}

id getCDPTermsInfoBackupControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPTermsInfoBackupControllerClass_softClass;
  v7 = getCDPTermsInfoBackupControllerClass_softClass;
  if (!getCDPTermsInfoBackupControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPTermsInfoBackupControllerClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getCDPTermsInfoBackupControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FDF124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCDPTermsInfoBackupControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreCDPLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7C9C7D8;
    v5 = 0;
    CoreCDPLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CoreCDPLibraryCore_frameworkLibrary_0)
  {
    __getCDPTermsInfoBackupControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CDPTermsInfoBackupController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPTermsInfoBackupControllerClass_block_invoke_cold_1();
  }

  getCDPTermsInfoBackupControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getBYLicenseAgreementClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary_0();
  result = objc_getClass("BYLicenseAgreement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYLicenseAgreementClass_block_invoke_cold_1();
  }

  getBYLicenseAgreementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SetupAssistantLibrary_0()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SetupAssistantLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7C9C7F0;
    v2 = 0;
    SetupAssistantLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SetupAssistantLibraryCore_frameworkLibrary_0)
  {
    SetupAssistantLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SetupAssistantLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getBYWarrantyClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary_0();
  result = objc_getClass("BYWarranty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYWarrantyClass_block_invoke_cold_1();
  }

  getBYWarrantyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B6FE17CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6FE5C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSCriterionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSCriterionClass_softClass;
  v7 = getMSCriterionClass_softClass;
  if (!getMSCriterionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSCriterionClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getMSCriterionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FE5D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSCriterionQualifierContains()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMSCriterionQualifierContainsSymbolLoc_ptr;
  v7 = getMSCriterionQualifierContainsSymbolLoc_ptr;
  if (!getMSCriterionQualifierContainsSymbolLoc_ptr)
  {
    v1 = MailServicesLibrary();
    v5[3] = dlsym(v1, "MSCriterionQualifierContains");
    getMSCriterionQualifierContainsSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMSCriterionQualifierContains_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FE5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSResultsKeyDateSent()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMSResultsKeyDateSentSymbolLoc_ptr;
  v7 = getMSResultsKeyDateSentSymbolLoc_ptr;
  if (!getMSResultsKeyDateSentSymbolLoc_ptr)
  {
    v1 = MailServicesLibrary();
    v5[3] = dlsym(v1, "MSResultsKeyDateSent");
    getMSResultsKeyDateSentSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMSResultsKeyDateSent_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FE5F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMSCriterionClass_block_invoke(uint64_t a1)
{
  MailServicesLibrary();
  result = objc_getClass("MSCriterion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSCriterionClass_block_invoke_cold_1();
  }

  getMSCriterionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MailServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MailServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MailServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C9CA08;
    v4 = 0;
    MailServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MailServicesLibraryCore_frameworkLibrary;
  if (!MailServicesLibraryCore_frameworkLibrary)
  {
    MailServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MailServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MailServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMSCriterionTypeSenderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSCriterionTypeSender");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSCriterionTypeSenderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMSCriterionQualifierContainsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSCriterionQualifierContains");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSCriterionQualifierContainsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMSCriterionTypeAnyRecipientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSCriterionTypeAnyRecipient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSCriterionTypeAnyRecipientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMSResultsKeySenderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSResultsKeySender");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSResultsKeySenderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMSResultsKeySubjectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSResultsKeySubject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSResultsKeySubjectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMSResultsKeyDateSentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MailServicesLibrary();
  result = dlsym(v2, "MSResultsKeyDateSent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSResultsKeyDateSentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMSSearchClass_block_invoke(uint64_t a1)
{
  MailServicesLibrary();
  result = objc_getClass("MSSearch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSSearchClass_block_invoke_cold_1();
  }

  getMSSearchClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B6FEABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFLFollowUpControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFLFollowUpControllerClass_softClass;
  v7 = getFLFollowUpControllerClass_softClass;
  if (!getFLFollowUpControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFLFollowUpControllerClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getFLFollowUpControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FEC1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLFollowUpActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFLFollowUpActionClass_softClass;
  v7 = getFLFollowUpActionClass_softClass;
  if (!getFLFollowUpActionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFLFollowUpActionClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getFLFollowUpActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FEC560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLFollowUpItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFLFollowUpItemClass_softClass;
  v7 = getFLFollowUpItemClass_softClass;
  if (!getFLFollowUpItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFLFollowUpItemClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getFLFollowUpItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FEC640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLGroupIdentifierAccount()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  v7 = getFLGroupIdentifierAccountSymbolLoc_ptr;
  if (!getFLGroupIdentifierAccountSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v5[3] = dlsym(v1, "FLGroupIdentifierAccount");
    getFLGroupIdentifierAccountSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getFLGroupIdentifierAccount_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FEC744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AAFollowUpControllerHandleSetupAssistantExited(__CFNotificationCenter *a1, const void *a2, const __CFString *a3, const void *a4)
{
  v8 = _AALogSystem(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Received SetupAssistantExited notification, re-posting VerifyTerms follow up!", buf, 2u);
  }

  v9 = objc_alloc_init(AAFollowUpController);
  v10 = AAFollowUpIdentifierVerifyTerms[0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___AAFollowUpControllerHandleSetupAssistantExited_block_invoke;
  v12[3] = &unk_1E7C9CCF0;
  v13 = v9;
  v11 = v9;
  [(AAFollowUpController *)v11 pendingFollowUpWithIdentifier:v10 completion:v12];
  CFNotificationCenterRemoveObserver(a1, a2, a3, a4);
}

id getFLFollowUpNotificationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFLFollowUpNotificationClass_softClass;
  v7 = getFLFollowUpNotificationClass_softClass;
  if (!getFLFollowUpNotificationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFLFollowUpNotificationClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getFLFollowUpNotificationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6FECE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLNotificationOptionForce()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFLNotificationOptionForceSymbolLoc_ptr;
  v7 = getFLNotificationOptionForceSymbolLoc_ptr;
  if (!getFLNotificationOptionForceSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v5[3] = dlsym(v1, "FLNotificationOptionForce");
    getFLNotificationOptionForceSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getFLNotificationOptionForce_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FECF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLNotificationOptionSpringboardAlert()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFLNotificationOptionSpringboardAlertSymbolLoc_ptr;
  v7 = getFLNotificationOptionSpringboardAlertSymbolLoc_ptr;
  if (!getFLNotificationOptionSpringboardAlertSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v5[3] = dlsym(v1, "FLNotificationOptionSpringboardAlert");
    getFLNotificationOptionSpringboardAlertSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getFLNotificationOptionSpringboardAlert_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FED068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLNotificationOptionLockscreen()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFLNotificationOptionLockscreenSymbolLoc_ptr;
  v7 = getFLNotificationOptionLockscreenSymbolLoc_ptr;
  if (!getFLNotificationOptionLockscreenSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v5[3] = dlsym(v1, "FLNotificationOptionLockscreen");
    getFLNotificationOptionLockscreenSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getFLNotificationOptionLockscreen_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FED870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFLNotificationOptionBannerAlert()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  v7 = getFLNotificationOptionBannerAlertSymbolLoc_ptr;
  if (!getFLNotificationOptionBannerAlertSymbolLoc_ptr)
  {
    v1 = CoreFollowUpLibrary();
    v5[3] = dlsym(v1, "FLNotificationOptionBannerAlert");
    getFLNotificationOptionBannerAlertSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getFLNotificationOptionBannerAlert_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B6FF15C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FF1F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF2428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF3970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF3E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF50F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FF570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFLFollowUpControllerClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpControllerClass_block_invoke_cold_1();
  }

  getFLFollowUpControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreFollowUpLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreFollowUpLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C9CCD0;
    v4 = 0;
    CoreFollowUpLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreFollowUpLibraryCore_frameworkLibrary;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    CoreFollowUpLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreFollowUpLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFLFollowUpActionClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpActionClass_block_invoke_cold_1();
  }

  getFLFollowUpActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFLFollowUpItemClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpItemClass_block_invoke_cold_1();
  }

  getFLFollowUpItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLGroupIdentifierAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLGroupIdentifierAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFLFollowUpNotificationClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpNotificationClass_block_invoke_cold_1();
  }

  getFLFollowUpNotificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionForceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLNotificationOptionForce");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionForceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionSpringboardAlertSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLNotificationOptionSpringboardAlert");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionSpringboardAlertSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionLockscreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLNotificationOptionLockscreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionLockscreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLNotificationOptionBannerAlertSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLNotificationOptionBannerAlert");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLNotificationOptionBannerAlertSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C9CD10;
    v6 = 0;
    CoreCDPLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = CoreCDPLibraryCore_frameworkLibrary_1;
  if (!CoreCDPLibraryCore_frameworkLibrary_1)
  {
    __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "kCDPRTCEventCategoryAccountDataAccessRecovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_1B6FF6B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AADeviceLocStringForKey(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = v1;
  if (_AADeviceModel_onceToken != -1)
  {
    AADeviceLocStringForKey_cold_1();
  }

  v4 = _AADeviceClassToKey_onceToken;
  v5 = _AADeviceModel_deviceModel;
  if (v4 != -1)
  {
    AADeviceLocStringForKey_cold_2();
  }

  v6 = [_AADeviceClassToKey_deviceMapping objectForKeyedSubscript:v5];

  v7 = @"DEFAULT";
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v8];

  v10 = [v2 localizedStringForKey:v9 value:0 table:@"Localizable"];

  return v10;
}

void sub_1B6FF8FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B6FFAB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6FFB768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACDPluginLoaderClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccountsDaemonLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccountsDaemonLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7C9CE40;
    v5 = 0;
    AccountsDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccountsDaemonLibraryCore_frameworkLibrary)
  {
    __getACDPluginLoaderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ACDPluginLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACDPluginLoaderClass_block_invoke_cold_1();
  }

  getACDPluginLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccountsDaemonLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccountsDaemonLibraryCore_frameworkLibrary = result;
  return result;
}

id AALocalizedStringForServiceType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698C218]])
  {
    v2 = @"SERVICE_TYPE_ICLOUD";
LABEL_11:
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v4 = [v3 localizedStringForKey:v2 value:0 table:@"Localizable"];

    goto LABEL_12;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E698C238]])
  {
    v2 = @"SERVICE_TYPE_STORE";
    goto LABEL_11;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E698C230]])
  {
    v2 = @"SERVICE_TYPE_IMESSAGE";
    goto LABEL_11;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E698C220]])
  {
    v2 = @"SERVICE_TYPE_FACETIME";
    goto LABEL_11;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E698C228]])
  {
    v2 = @"SERVICE_TYPE_GAMECENTER";
    goto LABEL_11;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

id _AANotificationQueue(uint64_t a1)
{
  if (_AANotificationQueue_onceToken != -1)
  {
    _AANotificationQueue_cold_1();
  }

  v2 = _AANotificationQueue_queue;

  return v2;
}

id _AANotificationHandlerMap(uint64_t a1)
{
  if (_AANotificationHandlerMap_onceToken != -1)
  {
    _AANotificationHandlerMap_cold_1();
  }

  v2 = _AANotificationHandlerMap_map;

  return v2;
}

void _AACFNotificationCallback(uint64_t a1, uint64_t a2)
{
  v4 = _AANotificationQueue(a1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___AACFNotificationCallback_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t IDSLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = IDSLibraryCore_frameworkLibrary;
  v6 = IDSLibraryCore_frameworkLibrary;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7C9D860;
    v8 = *off_1E7C9D870;
    v9 = 0;
    v4[3] = _sl_dlopen();
    IDSLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B7000FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  IDSLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IDSLibrary()
{
  v3 = 0;
  v0 = IDSLibraryCore(&v3);
  if (!v0)
  {
    IDSLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getIDSServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSServiceClass_softClass;
  v7 = getIDSServiceClass_softClass;
  if (!getIDSServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSServiceClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getIDSServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B7001190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSServiceClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSServiceClass_block_invoke_cold_1();
  }

  getIDSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSIDQueryControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSIDQueryControllerClass_softClass;
  v7 = getIDSIDQueryControllerClass_softClass;
  if (!getIDSIDQueryControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSIDQueryControllerClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getIDSIDQueryControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B70012C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSIDQueryControllerClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSIDQueryController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSIDQueryControllerClass_block_invoke_cold_1();
  }

  getIDSIDQueryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSServiceDelegatePropertiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSServiceDelegatePropertiesClass_softClass;
  v7 = getIDSServiceDelegatePropertiesClass_softClass;
  if (!getIDSServiceDelegatePropertiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSServiceDelegatePropertiesClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getIDSServiceDelegatePropertiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B7001400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSServiceDelegatePropertiesClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSServiceDelegateProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSServiceDelegatePropertiesClass_block_invoke_cold_1();
  }

  getIDSServiceDelegatePropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionExpectsPeerResponseKey");
    getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionExpectsPeerResponseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionExpectsPeerResponseKey()
{
  IDSSendMessageOptionExpectsPeerResponseKeySymbolLoc = getIDSSendMessageOptionExpectsPeerResponseKeySymbolLoc();
  if (!IDSSendMessageOptionExpectsPeerResponseKeySymbolLoc)
  {
    getIDSSendMessageOptionExpectsPeerResponseKey_cold_1();
  }

  v1 = *IDSSendMessageOptionExpectsPeerResponseKeySymbolLoc;

  return v1;
}

uint64_t getIDSSendMessageOptionFireAndForgetKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionFireAndForgetKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionFireAndForgetKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionFireAndForgetKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionFireAndForgetKey");
    getIDSSendMessageOptionFireAndForgetKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B70016B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionFireAndForgetKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionFireAndForgetKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionFireAndForgetKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionFireAndForgetKey()
{
  IDSSendMessageOptionFireAndForgetKeySymbolLoc = getIDSSendMessageOptionFireAndForgetKeySymbolLoc();
  if (!IDSSendMessageOptionFireAndForgetKeySymbolLoc)
  {
    getIDSSendMessageOptionFireAndForgetKey_cold_1();
  }

  v1 = *IDSSendMessageOptionFireAndForgetKeySymbolLoc;

  return v1;
}

uint64_t getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionRequireAllRegistrationPropertiesKey");
    getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionRequireAllRegistrationPropertiesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionRequireAllRegistrationPropertiesKey()
{
  IDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc = getIDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc();
  if (!IDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc)
  {
    getIDSSendMessageOptionRequireAllRegistrationPropertiesKey_cold_1();
  }

  v1 = *IDSSendMessageOptionRequireAllRegistrationPropertiesKeySymbolLoc;

  return v1;
}

uint64_t getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey");
    getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKey()
{
  IDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc = getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc();
  if (!IDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc)
  {
    getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKey_cold_1();
  }

  v1 = *IDSSendMessageOptionRequireLackOfRegistrationPropertiesKeySymbolLoc;

  return v1;
}

uint64_t getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionPeerResponseIdentifierKey");
    getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionPeerResponseIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionPeerResponseIdentifierKey()
{
  IDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc = getIDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc();
  if (!IDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc)
  {
    getIDSSendMessageOptionPeerResponseIdentifierKey_cold_1();
  }

  v1 = *IDSSendMessageOptionPeerResponseIdentifierKeySymbolLoc;

  return v1;
}

uint64_t getIDSSendMessageOptionFromIDKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSSendMessageOptionFromIDKeySymbolLoc_ptr;
  v6 = getIDSSendMessageOptionFromIDKeySymbolLoc_ptr;
  if (!getIDSSendMessageOptionFromIDKeySymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSSendMessageOptionFromIDKey");
    getIDSSendMessageOptionFromIDKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSSendMessageOptionFromIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSSendMessageOptionFromIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionFromIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSSendMessageOptionFromIDKey()
{
  IDSSendMessageOptionFromIDKeySymbolLoc = getIDSSendMessageOptionFromIDKeySymbolLoc();
  if (!IDSSendMessageOptionFromIDKeySymbolLoc)
  {
    getIDSSendMessageOptionFromIDKey_cold_1();
  }

  v1 = *IDSSendMessageOptionFromIDKeySymbolLoc;

  return v1;
}

uint64_t getIDSServiceNameiMessageSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIDSServiceNameiMessageSymbolLoc_ptr;
  v6 = getIDSServiceNameiMessageSymbolLoc_ptr;
  if (!getIDSServiceNameiMessageSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "IDSServiceNameiMessage");
    getIDSServiceNameiMessageSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSServiceNameiMessage()
{
  IDSServiceNameiMessageSymbolLoc = getIDSServiceNameiMessageSymbolLoc();
  if (!IDSServiceNameiMessageSymbolLoc)
  {
    getIDSServiceNameiMessage_cold_1();
  }

  v1 = *IDSServiceNameiMessageSymbolLoc;

  return v1;
}

uint64_t get_IDSCopyIDForEmailAddressSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_IDSCopyIDForEmailAddressSymbolLoc_ptr;
  v6 = get_IDSCopyIDForEmailAddressSymbolLoc_ptr;
  if (!get_IDSCopyIDForEmailAddressSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "_IDSCopyIDForEmailAddress");
    get_IDSCopyIDForEmailAddressSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7001F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SIDSCopyIDForEmailAddress(void *a1)
{
  v1 = a1;
  IDSCopyIDForEmailAddressSymbolLoc = get_IDSCopyIDForEmailAddressSymbolLoc();
  if (!IDSCopyIDForEmailAddressSymbolLoc)
  {
    _SIDSCopyIDForEmailAddress_cold_1();
  }

  v3 = IDSCopyIDForEmailAddressSymbolLoc(v1);

  return v3;
}

uint64_t get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  v6 = get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  if (!get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v4[3] = dlsym(v1, "_IDSCopyIDForPhoneNumberWithOptions");
    get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B70020D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SIDSCopyIDForPhoneNumberWithOptions(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  IDSCopyIDForPhoneNumberWithOptionsSymbolLoc = get_IDSCopyIDForPhoneNumberWithOptionsSymbolLoc();
  if (!IDSCopyIDForPhoneNumberWithOptionsSymbolLoc)
  {
    _SIDSCopyIDForPhoneNumberWithOptions_cold_1();
  }

  v8 = IDSCopyIDForPhoneNumberWithOptionsSymbolLoc(v5, v6, a3);

  return v8;
}

void sub_1B7002CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B7003AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7003EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ContactsLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = ContactsLibraryCore_frameworkLibrary;
  v6 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7C9DAC8;
    v8 = *off_1E7C9DAD8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ContactsLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B7005AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ContactsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v3 = 0;
  v0 = ContactsLibraryCore(&v3);
  if (!v0)
  {
    ContactsLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getCNContactClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactClass_softClass;
  v7 = getCNContactClass_softClass;
  if (!getCNContactClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getCNContactClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B7005CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactClass_block_invoke_cold_1();
  }

  getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNPhoneNumberClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNPhoneNumberClass_softClass;
  v7 = getCNPhoneNumberClass_softClass;
  if (!getCNPhoneNumberClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNPhoneNumberClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getCNPhoneNumberClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B7005DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNPhoneNumberClass_block_invoke_cold_1();
  }

  getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v7 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactStoreClass_block_invoke;
    v3[3] = &unk_1E7C9AE88;
    v3[4] = &v4;
    __getCNContactStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B7005F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactStoreClass_block_invoke_cold_1();
  }

  getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactIdentifierKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactIdentifierKeySymbolLoc_ptr;
  v6 = getCNContactIdentifierKeySymbolLoc_ptr;
  if (!getCNContactIdentifierKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactIdentifierKey()
{
  CNContactIdentifierKeySymbolLoc = getCNContactIdentifierKeySymbolLoc();
  if (!CNContactIdentifierKeySymbolLoc)
  {
    getCNContactIdentifierKey_cold_1();
  }

  v1 = *CNContactIdentifierKeySymbolLoc;

  return v1;
}

uint64_t getCNContactGivenNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactGivenNameKeySymbolLoc_ptr;
  v6 = getCNContactGivenNameKeySymbolLoc_ptr;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B70061D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactGivenNameKey()
{
  CNContactGivenNameKeySymbolLoc = getCNContactGivenNameKeySymbolLoc();
  if (!CNContactGivenNameKeySymbolLoc)
  {
    getCNContactGivenNameKey_cold_1();
  }

  v1 = *CNContactGivenNameKeySymbolLoc;

  return v1;
}

uint64_t getCNContactFamilyNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactFamilyNameKeySymbolLoc_ptr;
  v6 = getCNContactFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactFamilyNameKey()
{
  CNContactFamilyNameKeySymbolLoc = getCNContactFamilyNameKeySymbolLoc();
  if (!CNContactFamilyNameKeySymbolLoc)
  {
    getCNContactFamilyNameKey_cold_1();
  }

  v1 = *CNContactFamilyNameKeySymbolLoc;

  return v1;
}

uint64_t getCNContactThumbnailImageDataKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactThumbnailImageDataKeySymbolLoc_ptr;
  v6 = getCNContactThumbnailImageDataKeySymbolLoc_ptr;
  if (!getCNContactThumbnailImageDataKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactThumbnailImageDataKey");
    getCNContactThumbnailImageDataKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B70064B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactThumbnailImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactThumbnailImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactThumbnailImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactThumbnailImageDataKey()
{
  CNContactThumbnailImageDataKeySymbolLoc = getCNContactThumbnailImageDataKeySymbolLoc();
  if (!CNContactThumbnailImageDataKeySymbolLoc)
  {
    getCNContactThumbnailImageDataKey_cold_1();
  }

  v1 = *CNContactThumbnailImageDataKeySymbolLoc;

  return v1;
}

uint64_t getCNContactPhoneNumbersKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  v6 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactPhoneNumbersKey()
{
  CNContactPhoneNumbersKeySymbolLoc = getCNContactPhoneNumbersKeySymbolLoc();
  if (!CNContactPhoneNumbersKeySymbolLoc)
  {
    getCNContactPhoneNumbersKey_cold_1();
  }

  v1 = *CNContactPhoneNumbersKeySymbolLoc;

  return v1;
}

uint64_t getCNContactEmailAddressesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v6 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactEmailAddressesKey()
{
  CNContactEmailAddressesKeySymbolLoc = getCNContactEmailAddressesKeySymbolLoc();
  if (!CNContactEmailAddressesKeySymbolLoc)
  {
    getCNContactEmailAddressesKey_cold_1();
  }

  v1 = *CNContactEmailAddressesKeySymbolLoc;

  return v1;
}

uint64_t getCNContactNamePrefixKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactNamePrefixKeySymbolLoc_ptr;
  v6 = getCNContactNamePrefixKeySymbolLoc_ptr;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNamePrefixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNamePrefixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNamePrefixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactNamePrefixKey()
{
  CNContactNamePrefixKeySymbolLoc = getCNContactNamePrefixKeySymbolLoc();
  if (!CNContactNamePrefixKeySymbolLoc)
  {
    getCNContactNamePrefixKey_cold_1();
  }

  v1 = *CNContactNamePrefixKeySymbolLoc;

  return v1;
}

uint64_t getCNContactMiddleNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactMiddleNameKeySymbolLoc_ptr;
  v6 = getCNContactMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactMiddleNameKey()
{
  CNContactMiddleNameKeySymbolLoc = getCNContactMiddleNameKeySymbolLoc();
  if (!CNContactMiddleNameKeySymbolLoc)
  {
    getCNContactMiddleNameKey_cold_1();
  }

  v1 = *CNContactMiddleNameKeySymbolLoc;

  return v1;
}

uint64_t getCNContactNicknameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactNicknameKeySymbolLoc_ptr;
  v6 = getCNContactNicknameKeySymbolLoc_ptr;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactNicknameKey()
{
  CNContactNicknameKeySymbolLoc = getCNContactNicknameKeySymbolLoc();
  if (!CNContactNicknameKeySymbolLoc)
  {
    getCNContactNicknameKey_cold_1();
  }

  v1 = *CNContactNicknameKeySymbolLoc;

  return v1;
}

uint64_t getCNContactTypeKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactTypeKeySymbolLoc_ptr;
  v6 = getCNContactTypeKeySymbolLoc_ptr;
  if (!getCNContactTypeKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactTypeKey()
{
  CNContactTypeKeySymbolLoc = getCNContactTypeKeySymbolLoc();
  if (!CNContactTypeKeySymbolLoc)
  {
    getCNContactTypeKey_cold_1();
  }

  v1 = *CNContactTypeKeySymbolLoc;

  return v1;
}

uint64_t getCNContactImageDataKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactImageDataKeySymbolLoc_ptr;
  v6 = getCNContactImageDataKeySymbolLoc_ptr;
  if (!getCNContactImageDataKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactImageDataKey");
    getCNContactImageDataKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7006EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactImageDataKey()
{
  CNContactImageDataKeySymbolLoc = getCNContactImageDataKeySymbolLoc();
  if (!CNContactImageDataKeySymbolLoc)
  {
    getCNContactImageDataKey_cold_1();
  }

  v1 = *CNContactImageDataKeySymbolLoc;

  return v1;
}

uint64_t getCNContactCropRectKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactCropRectKeySymbolLoc_ptr;
  v6 = getCNContactCropRectKeySymbolLoc_ptr;
  if (!getCNContactCropRectKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactCropRectKey");
    getCNContactCropRectKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7007030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactCropRectKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactCropRectKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactCropRectKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactCropRectKey()
{
  CNContactCropRectKeySymbolLoc = getCNContactCropRectKeySymbolLoc();
  if (!CNContactCropRectKeySymbolLoc)
  {
    getCNContactCropRectKey_cold_1();
  }

  v1 = *CNContactCropRectKeySymbolLoc;

  return v1;
}

uint64_t getCNContactMemojiMetadataKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactMemojiMetadataKeySymbolLoc_ptr;
  v6 = getCNContactMemojiMetadataKeySymbolLoc_ptr;
  if (!getCNContactMemojiMetadataKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactMemojiMetadataKey");
    getCNContactMemojiMetadataKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B70071A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactMemojiMetadataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactMemojiMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMemojiMetadataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactMemojiMetadataKey()
{
  CNContactMemojiMetadataKeySymbolLoc = getCNContactMemojiMetadataKeySymbolLoc();
  if (!CNContactMemojiMetadataKeySymbolLoc)
  {
    getCNContactMemojiMetadataKey_cold_1();
  }

  v1 = *CNContactMemojiMetadataKeySymbolLoc;

  return v1;
}

void sub_1B70074A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCDPRTCClientTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreCDPLibrary_0();
  result = dlsym(v2, "kCDPRTCClientType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCDPRTCClientTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreCDPLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary_2)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreCDPLibraryCore_block_invoke_2;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C9DAF0;
    v4 = 0;
    CoreCDPLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = CoreCDPLibraryCore_frameworkLibrary_2;
  if (!CoreCDPLibraryCore_frameworkLibrary_2)
  {
    CoreCDPLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreCDPLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getkCDPRTCClientNameDNUSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreCDPLibrary_0();
  result = dlsym(v2, "kCDPRTCClientNameDNU");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCDPRTCClientNameDNUSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7007888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C9DB08;
    v6 = 0;
    CoreCDPLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v2 = CoreCDPLibraryCore_frameworkLibrary_3;
  if (!CoreCDPLibraryCore_frameworkLibrary_3)
  {
    __getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke_cold_1_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "kCDPRTCEventCategoryAccountDataAccessRecovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCDPRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary_3 = result;
  return result;
}

AADOBRepairStateUpdater __swiftcall AADOBRepairStateUpdater.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AADOBRepairStateUpdater()
{
  result = qword_1EB97F788;
  if (!qword_1EB97F788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB97F788);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7007C48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7007C68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B7007CB4(uint64_t a1, int a2)
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

uint64_t sub_1B7007CD4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7007D10(uint64_t a1)
{
  v2 = sub_1B7008224(&qword_1EB980928, type metadata accessor for AgeMigrationError, &unk_1B70707BC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B7007D7C(uint64_t a1)
{
  v2 = sub_1B7008224(&qword_1EB980928, type metadata accessor for AgeMigrationError, &unk_1B70707BC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B7007DEC(uint64_t a1)
{
  v2 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B7007E80(uint64_t a1)
{
  v2 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B7007EEC(uint64_t a1)
{
  v2 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B7007F58(void *a1, uint64_t a2)
{
  v4 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B700800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B7008088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7055A30();
  sub_1B7055810();
  return sub_1B7055A40();
}

void *sub_1B70080E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B7008158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7008224(&qword_1EB980960, type metadata accessor for AgeMigrationError, &unk_1B7070800);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B7008224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B70083A0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1B7008438()
{
  result = qword_1EB980950;
  if (!qword_1EB980950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980950);
  }

  return result;
}

uint64_t AAMisconfiguredAgePromptViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_title);

  return v1;
}

uint64_t AAMisconfiguredAgePromptViewModel.message.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_message);

  return v1;
}

uint64_t AAMisconfiguredAgePromptViewModel.primaryButtonText.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_primaryButtonText);

  return v1;
}

uint64_t AAMisconfiguredAgePromptViewModel.secondaryButtonText.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_secondaryButtonText);

  return v1;
}

uint64_t AAMisconfiguredAgePromptViewModel.cancelButtonText.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_cancelButtonText);

  return v1;
}

uint64_t AAMisconfiguredAgePromptViewModel.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_bundleID);

  return v1;
}

id sub_1B7008708(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1B7055820();

  return v3;
}

uint64_t AAMisconfiguredAgePromptViewModel.altDSID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_altDSID);

  return v1;
}

Swift::Void __swiftcall AAMisconfiguredAgePromptViewModel.encode(with:)(NSCoder with)
{
  v3 = [v1 title];
  if (!v3)
  {
    sub_1B7055830();
    v3 = sub_1B7055820();
  }

  v4 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 message];
  if (!v5)
  {
    sub_1B7055830();
    v5 = sub_1B7055820();
  }

  v6 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 primaryButtonText];
  if (!v7)
  {
    sub_1B7055830();
    v7 = sub_1B7055820();
  }

  v8 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = [v1 secondaryButtonText];
  if (!v9)
  {
    sub_1B7055830();
    v9 = sub_1B7055820();
  }

  v10 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v1 cancelButtonText];
  if (!v11)
  {
    sub_1B7055830();
    v11 = sub_1B7055820();
  }

  v12 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = [v1 bundleID];
  if (!v13)
  {
    sub_1B7055830();
    v13 = sub_1B7055820();
  }

  v14 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = [v1 altDSID];
  if (!v15)
  {
    sub_1B7055830();
    v15 = sub_1B7055820();
  }

  v16 = sub_1B7055820();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
}

id AAMisconfiguredAgePromptViewModel.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  sub_1B7009174(0);
  v3 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_title];
  *v3 = v4;
  *(v3 + 1) = v5;
  sub_1B7009174(1u);
  v6 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_message];
  *v6 = v7;
  *(v6 + 1) = v8;
  sub_1B7009174(2u);
  v9 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_primaryButtonText];
  *v9 = v10;
  *(v9 + 1) = v11;
  sub_1B7009174(3u);
  v12 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_secondaryButtonText];
  *v12 = v13;
  *(v12 + 1) = v14;
  sub_1B7009174(4u);
  v15 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_cancelButtonText];
  *v15 = v16;
  *(v15 + 1) = v17;
  sub_1B7009174(5u);
  v18 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_bundleID];
  *v18 = v19;
  *(v18 + 1) = v20;
  sub_1B7009174(6u);
  v21 = &v1[OBJC_IVAR___AAMisconfiguredAgePromptViewModel_altDSID];
  *v21 = v22;
  *(v21 + 1) = v23;
  v26.receiver = v1;
  v26.super_class = AAMisconfiguredAgePromptViewModel;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

void sub_1B7009174(unsigned __int8 a1)
{
  sub_1B7009AD8(0, &qword_1EB980AE8, 0x1E696AEC0);
  v2 = sub_1B70558F0();

  if (![v1 error])
  {
    v2 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980AF0, &qword_1B7070940);
    if (swift_dynamicCast())
    {

      return;
    }

    type metadata accessor for AgeMigrationError(0);
    sub_1B7010A90(MEMORY[0x1E69E7CC0]);
    sub_1B7009B20();
    sub_1B7055750();
  }

  swift_willThrow();
}

uint64_t AAMisconfiguredAgePromptViewModel.description.getter()
{
  v1 = v0;
  sub_1B7055930();
  MEMORY[0x1B8C9F4A0](0xD00000000000002BLL, 0x80000001B7070010);
  v2 = [v0 title];
  v3 = sub_1B7055830();
  v5 = v4;

  MEMORY[0x1B8C9F4A0](v3, v5);

  MEMORY[0x1B8C9F4A0](0x617373656D202D20, 0xEC000000203A6567);
  v6 = [v1 message];
  v7 = sub_1B7055830();
  v9 = v8;

  MEMORY[0x1B8C9F4A0](v7, v9);

  MEMORY[0x1B8C9F4A0](0xD000000000000015, 0x80000001B7070040);
  v10 = [v1 primaryButtonText];
  v11 = sub_1B7055830();
  v13 = v12;

  MEMORY[0x1B8C9F4A0](v11, v13);

  MEMORY[0x1B8C9F4A0](0xD000000000000017, 0x80000001B7070060);
  v14 = [v1 secondaryButtonText];
  v15 = sub_1B7055830();
  v17 = v16;

  MEMORY[0x1B8C9F4A0](v15, v17);

  MEMORY[0x1B8C9F4A0](0xD000000000000014, 0x80000001B7070080);
  v18 = [v1 cancelButtonText];
  v19 = sub_1B7055830();
  v21 = v20;

  MEMORY[0x1B8C9F4A0](v19, v21);

  MEMORY[0x1B8C9F4A0](0x6C646E7562202D20, 0xEC0000003A444965);
  v22 = [v1 bundleID];
  v23 = sub_1B7055830();
  v25 = v24;

  MEMORY[0x1B8C9F4A0](v23, v25);

  MEMORY[0x1B8C9F4A0](0x5344746C61202D20, 0xEB000000003A4449);
  v26 = [v1 altDSID];
  v27 = sub_1B7055830();
  v29 = v28;

  MEMORY[0x1B8C9F4B0](v27, v29);

  v30 = sub_1B70559D0();
  MEMORY[0x1B8C9F4A0](v30);

  return 0;
}

id AAMisconfiguredAgePromptViewModel.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B70098F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B7009944(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1B70099A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1B70099B4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B7009A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980A08, &qword_1B7070930);
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

uint64_t sub_1B7009AD8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1B7009B20()
{
  result = qword_1EB980960;
  if (!qword_1EB980960)
  {
    type metadata accessor for AgeMigrationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980960);
  }

  return result;
}

id IdentityStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityStore.init()()
{
  type metadata accessor for IdentityDaemonConnection();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980AF8, &qword_1B7070950);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *&v0[OBJC_IVAR___AAIdentityStore_daemonConnection] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IdentityStore();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1B7009CE4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7009D04, 0, 0);
}

uint64_t sub_1B7009D04()
{
  v1 = v0[19];
  v2 = sub_1B700F244(nullsub_2, 0);
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7009E5C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980B08, &unk_1B7070960);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7009FA4;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 fetchIdentityFor:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7009E5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7009F3C, 0, 0);
}

uint64_t sub_1B7009F3C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7009FA4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1B700A190(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B700A254;

  return sub_1B7009CE4(v6);
}

uint64_t sub_1B700A254(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id IdentityStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B700A40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t dispatch thunk of IdentityStore.fetchIdentity(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B700A604;

  return v7(a1);
}

uint64_t sub_1B700A604(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B700A700()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B700A7B4;

  return sub_1B700A190(v2, v3, v4);
}

uint64_t sub_1B700A7B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B700A8A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B700B37C;

  return v6();
}

uint64_t sub_1B700A990()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B700B37C;

  return sub_1B700A8A8(v2, v3, v4);
}

uint64_t sub_1B700AA50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B700A7B4;

  return v7();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B700AB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B700B37C;

  return sub_1B700AA50(a1, v4, v5, v6);
}

uint64_t sub_1B700AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980B10, &qword_1B70709A0);
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1B700AF00(a3, v22 - v9);
  v11 = sub_1B70558A0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B700AF70(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B7055890();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1B7055880();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1B7055840() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1B700AF70(a3);

    return v20;
  }

LABEL_8:
  sub_1B700AF70(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1B700AF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980B10, &qword_1B70709A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B700AF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980B10, &qword_1B70709A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B700AFD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B700B0D0;

  return v6(a1);
}

uint64_t sub_1B700B0D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B700B1C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B700B37C;

  return sub_1B700AFD8(a1, v4);
}

uint64_t sub_1B700B280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B700A7B4;

  return sub_1B700AFD8(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t Identity.identifier.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR___AAIdentity_identifier;
  v5 = sub_1B70557C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *Identity.avatar.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAIdentity_avatar);
  v2 = v1;
  return v1;
}

id Identity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Identity.__allocating_init(identifier:avatar:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___AAIdentity_identifier;
  v7 = sub_1B70557C0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___AAIdentity_avatar] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id Identity.init(identifier:avatar:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___AAIdentity_identifier;
  v6 = sub_1B70557C0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___AAIdentity_avatar] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for Identity(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for Identity(uint64_t a1)
{
  result = qword_1EB97F760;
  if (!qword_1EB97F760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B700B834(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726174617661;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x726174617661;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B70559E0();
  }

  return v8 & 1;
}

uint64_t sub_1B700B8DC()
{
  sub_1B7055A30();
  sub_1B7055850();

  return sub_1B7055A40();
}

uint64_t sub_1B700B960(uint64_t a1)
{
  sub_1B7055850();
}

uint64_t sub_1B700B9D0()
{
  sub_1B7055A30();
  sub_1B7055850();

  return sub_1B7055A40();
}

uint64_t sub_1B700BA50@<X0>(char *a2@<X8>)
{
  v3 = sub_1B7055980();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B700BAB0(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x726174617661;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B700BAF0()
{
  if (*v0)
  {
    return 0x726174617661;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1B700BB2C@<X0>(char *a3@<X8>)
{
  v4 = sub_1B7055980();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1B700BBA8(uint64_t a1)
{
  v2 = sub_1B700CA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B700BBE4(uint64_t a1)
{
  v2 = sub_1B700CA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Identity.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB980B20 = a1;
  return result;
}

id Identity.__allocating_init(coder:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1B70557C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v3);
  sub_1B700C9C8();
  result = sub_1B70558F0();
  if (result)
  {
    v11 = result;
    sub_1B70557B0();

    (*(v6 + 32))(&v9[OBJC_IVAR___AAIdentity_identifier], v8, v5);
    type metadata accessor for Identity.Avatar(0);
    *&v9[OBJC_IVAR___AAIdentity_avatar] = sub_1B70558F0();
    v13.receiver = v9;
    v13.super_class = v3;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Identity.init(coder:)(void *a1, uint64_t a2)
{
  v3 = sub_1B700C868(a1, a2);

  return v3;
}

void sub_1B700BF74(void *a1)
{
  v2 = v1;
  v4 = sub_1B70557A0();
  v5 = sub_1B7055820();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___AAIdentity_avatar);
  v7 = sub_1B7055820();
  [a1 encodeObject:v6 forKey:v7];
}

id Identity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Identity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B700C1F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980B30, &qword_1B70709F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B700CA14();
  sub_1B7055A60();
  v12 = 0;
  sub_1B70557C0();
  sub_1B700CA68(&qword_1EB980B40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B70559C0();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___AAIdentity_avatar);
    v10[15] = 1;
    type metadata accessor for Identity.Avatar(0);
    sub_1B700CA68(&qword_1EB980B48, type metadata accessor for Identity.Avatar, &protocol conformance descriptor for Identity.Avatar);
    sub_1B70559B0();
  }

  return (*(v6 + 8))(v8, v5);
}

char *Identity.init(from:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v19 = sub_1B70557C0();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980B50, &qword_1B70709F8);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B700CA14();
  sub_1B7055A50();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for Identity(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v8;
    v11 = v17;
    LOBYTE(v22) = 0;
    sub_1B700CA68(&qword_1EB980B58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v12 = v18;
    sub_1B70559A0();
    (*(v11 + 32))(v2 + OBJC_IVAR___AAIdentity_identifier, v7, v19);
    type metadata accessor for Identity.Avatar(0);
    v21 = 1;
    sub_1B700CA68(&unk_1EB980B60, type metadata accessor for Identity.Avatar, &protocol conformance descriptor for Identity.Avatar);
    sub_1B7055990();
    *(v2 + OBJC_IVAR___AAIdentity_avatar) = v22;
    v14 = type metadata accessor for Identity(0);
    v20.receiver = v2;
    v20.super_class = v14;
    v4 = objc_msgSendSuper2(&v20, sel_init);
    (*(v16 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

char *sub_1B700C7EC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Identity(0));
  result = Identity.init(from:)(a1, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B700C868(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B70557C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B700C9C8();
  result = sub_1B70558F0();
  if (result)
  {
    v8 = result;
    sub_1B70557B0();

    (*(v4 + 32))(&v2[OBJC_IVAR___AAIdentity_identifier], v6, v3);
    type metadata accessor for Identity.Avatar(0);
    *&v2[OBJC_IVAR___AAIdentity_avatar] = sub_1B70558F0();
    v9 = type metadata accessor for Identity(0);
    v10.receiver = v2;
    v10.super_class = v9;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B700C9C8()
{
  result = qword_1EB980C60;
  if (!qword_1EB980C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB980C60);
  }

  return result;
}

unint64_t sub_1B700CA14()
{
  result = qword_1EB980B38;
  if (!qword_1EB980B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980B38);
  }

  return result;
}

uint64_t sub_1B700CA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B700CAB8(uint64_t a1, uint64_t a2)
{
  result = sub_1B70557C0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Identity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Identity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B700CDA8()
{
  result = qword_1EB980BD0;
  if (!qword_1EB980BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980BD0);
  }

  return result;
}

unint64_t sub_1B700CE00()
{
  result = qword_1EB980BD8;
  if (!qword_1EB980BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980BD8);
  }

  return result;
}

unint64_t sub_1B700CE58()
{
  result = qword_1EB980BE0;
  if (!qword_1EB980BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980BE0);
  }

  return result;
}

uint64_t Identity.Avatar.identifier.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR___AAIdentityAvatar_identifier;
  v5 = sub_1B70557C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Identity.Avatar.imageData.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAIdentityAvatar_imageData);
  sub_1B700D0EC(v1, *(v0 + OBJC_IVAR___AAIdentityAvatar_imageData + 8));
  return v1;
}

uint64_t sub_1B700D0EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B700D100(result, a2);
  }

  return result;
}

uint64_t sub_1B700D100(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 Identity.Avatar.cropRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___AAIdentityAvatar_cropRect + 32);
  result = *(v1 + OBJC_IVAR___AAIdentityAvatar_cropRect);
  v4 = *(v1 + OBJC_IVAR___AAIdentityAvatar_cropRect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id Identity.Avatar.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Identity.Avatar.__allocating_init(identifier:imageData:cropRect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___AAIdentityAvatar_identifier;
  v11 = sub_1B70557C0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  v13 = &v9[OBJC_IVAR___AAIdentityAvatar_imageData];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v9[OBJC_IVAR___AAIdentityAvatar_cropRect];
  v14[32] = *(a4 + 32);
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 1) = v15;
  v18.receiver = v9;
  v18.super_class = v4;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v12 + 8))(a1, v11);
  return v16;
}

id Identity.Avatar.init(identifier:imageData:cropRect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___AAIdentityAvatar_identifier;
  v10 = sub_1B70557C0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a1, v10);
  v12 = &v4[OBJC_IVAR___AAIdentityAvatar_imageData];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v4[OBJC_IVAR___AAIdentityAvatar_cropRect];
  v13[32] = *(a4 + 32);
  v14 = *(a4 + 16);
  *v13 = *a4;
  *(v13 + 1) = v14;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for Identity.Avatar(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a1, v10);
  return v15;
}

uint64_t type metadata accessor for Identity.Avatar(uint64_t a1)
{
  result = qword_1EB97F778;
  if (!qword_1EB97F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B700D4D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461446567616D69;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 0x74636552706F7263;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x7461446567616D69;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 0x74636552706F7263;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B70559E0();
  }

  return v11 & 1;
}

uint64_t sub_1B700D5DC()
{
  sub_1B7055A30();
  sub_1B7055850();

  return sub_1B7055A40();
}

uint64_t sub_1B700D688(uint64_t a1)
{
  sub_1B7055850();
}

uint64_t sub_1B700D720()
{
  sub_1B7055A30();
  sub_1B7055850();

  return sub_1B7055A40();
}

unint64_t sub_1B700D7C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B700EA00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B700D7F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE900000000000061;
  v5 = 0x7461446567616D69;
  if (v2 != 1)
  {
    v5 = 0x74636552706F7263;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B700D860()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x74636552706F7263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1B700D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B700EA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B700D8F8(uint64_t a1)
{
  v2 = sub_1B700EC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B700D934(uint64_t a1)
{
  v2 = sub_1B700EC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Identity.Avatar.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB980BF0 = a1;
  return result;
}

id Identity.Avatar.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = sub_1B700EA4C(a1, v4);

  return v5;
}

id Identity.Avatar.init(coder:)(void *a1, uint64_t a2)
{
  v3 = sub_1B700EA4C(a1, a2);

  return v3;
}

void sub_1B700DB88(void *a1)
{
  v2 = v1;
  v4 = sub_1B70557A0();
  v5 = sub_1B7055820();
  [a1 encodeObject:v4 forKey:v5];

  if (*(v2 + OBJC_IVAR___AAIdentityAvatar_imageData + 8) >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1B7055780();
  }

  v7 = sub_1B7055820();
  [a1 encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR___AAIdentityAvatar_cropRect + 32))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B70558D0();
  }

  v9 = sub_1B7055820();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id Identity.Avatar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Identity.Avatar(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B700DE20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980BF8, &qword_1B7070BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B700EC78();
  sub_1B7055A60();
  LOBYTE(v13[0]) = 0;
  sub_1B70557C0();
  sub_1B700EDDC(&qword_1EB980B40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B70559C0();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR___AAIdentityAvatar_imageData + 8);
    *&v13[0] = *(v3 + OBJC_IVAR___AAIdentityAvatar_imageData);
    *(&v13[0] + 1) = v9;
    v15 = 1;
    sub_1B700D0EC(*&v13[0], v9);
    sub_1B700ECCC();
    sub_1B70559B0();
    sub_1B700ED20(*&v13[0], *(&v13[0] + 1));
    v10 = *(v3 + OBJC_IVAR___AAIdentityAvatar_cropRect + 32);
    v11 = *(v3 + OBJC_IVAR___AAIdentityAvatar_cropRect + 16);
    v13[0] = *(v3 + OBJC_IVAR___AAIdentityAvatar_cropRect);
    v13[1] = v11;
    v14 = v10;
    v15 = 2;
    type metadata accessor for CGRect(0);
    sub_1B700EDDC(&qword_1EB980C18, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1B70559B0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *Identity.Avatar.init(from:)(void *a1, uint64_t a2)
{
  v4 = sub_1B70557C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980C20, &qword_1B7070BE8);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v20 - v9;
  v11 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_1B700EC78();
  sub_1B7055A50();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
    v19 = v23;
    type metadata accessor for Identity.Avatar(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1B700EDDC(&qword_1EB980B58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B70559A0();
    v13 = *(v5 + 32);
    v14 = v23;
    v13(v23 + OBJC_IVAR___AAIdentityAvatar_identifier, v7, v4);
    v28 = 1;
    sub_1B700ED88();
    sub_1B7055990();
    *&v14[OBJC_IVAR___AAIdentityAvatar_imageData] = v25;
    type metadata accessor for CGRect(0);
    v28 = 2;
    sub_1B700EDDC(&unk_1EB980C38, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1B7055990();
    v15 = v27;
    v16 = &v14[OBJC_IVAR___AAIdentityAvatar_cropRect];
    v17 = v26;
    *v16 = v25;
    *(v16 + 1) = v17;
    v16[32] = v15;
    v18 = type metadata accessor for Identity.Avatar(0);
    v24.receiver = v14;
    v24.super_class = v18;
    v19 = objc_msgSendSuper2(&v24, sel_init);
    (*(v8 + 8))(v10, v21);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return v19;
}

void *sub_1B700E510@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Identity.Avatar(0));
  result = Identity.Avatar.init(from:)(a1, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Identity.Avatar.cropRectValue.getter()
{
  if (*(v0 + OBJC_IVAR___AAIdentityAvatar_cropRect + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B70558D0();
  }
}

id Identity.Avatar.__allocating_init(identifier:imageData:cropRect:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_1B70557A0();
  if (a3 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7055780();
    sub_1B700ED20(a2, a3);
  }

  v12 = [objc_allocWithZone(v5) initWithIdentifier:v10 imageData:v11 cropRect:a4];

  v13 = sub_1B70557C0();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id Identity.Avatar.init(identifier:imageData:cropRect:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a2;
  v24 = a3;
  v6 = sub_1B70557C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v25 = a1;
  v10(v9, a1, v6);
  v11 = 1;
  if (a4)
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 1;
    MEMORY[0x1B8C9F520](a4, &v26);
    v21 = v27;
    v22 = v26;
    v11 = v28;
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
  }

  v12 = type metadata accessor for Identity.Avatar(0);
  v13 = objc_allocWithZone(v12);
  v10(&v13[OBJC_IVAR___AAIdentityAvatar_identifier], v9, v6);
  v14 = &v13[OBJC_IVAR___AAIdentityAvatar_imageData];
  v15 = v24;
  *v14 = v23;
  v14[1] = v15;
  v16 = &v13[OBJC_IVAR___AAIdentityAvatar_cropRect];
  v17 = v21;
  *v16 = v22;
  *(v16 + 1) = v17;
  v16[32] = v11;
  v29.receiver = v13;
  v29.super_class = v12;
  v18 = objc_msgSendSuper2(&v29, sel_init);

  v19 = *(v7 + 8);
  v19(v25, v6);
  v19(v9, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

unint64_t sub_1B700EA00(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7055980();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1B700EA4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1B70557C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7009AD8(0, &qword_1EB980C60, 0x1E696AFB0);
  result = sub_1B70558F0();
  if (result)
  {
    v9 = result;
    sub_1B70557B0();

    (*(v5 + 32))(&v2[OBJC_IVAR___AAIdentityAvatar_identifier], v7, v4);
    sub_1B7009AD8(0, &qword_1EB980C68, 0x1E695DEF0);
    v10 = sub_1B70558F0();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B7055790();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = &v2[OBJC_IVAR___AAIdentityAvatar_imageData];
    *v15 = v12;
    v15[1] = v14;
    sub_1B7009AD8(0, &unk_1EB980C70, 0x1E696B098);
    v16 = sub_1B70558F0();
    v17 = 1;
    v18 = 0uLL;
    if (v16)
    {
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 1;
      v19 = v16;
      MEMORY[0x1B8C9F520](v16, &v23);

      v18 = v23;
      v20 = v24;
      v17 = v25;
    }

    else
    {
      v20 = 0uLL;
    }

    v21 = &v3[OBJC_IVAR___AAIdentityAvatar_cropRect];
    *v21 = v18;
    *(v21 + 1) = v20;
    v21[32] = v17;
    v22 = type metadata accessor for Identity.Avatar(0);
    v26.receiver = v3;
    v26.super_class = v22;
    return objc_msgSendSuper2(&v26, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B700EC78()
{
  result = qword_1EB980C00;
  if (!qword_1EB980C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C00);
  }

  return result;
}

unint64_t sub_1B700ECCC()
{
  result = qword_1EB980C10;
  if (!qword_1EB980C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C10);
  }

  return result;
}

uint64_t sub_1B700ED20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B700ED34(a1, a2);
  }

  return a1;
}

uint64_t sub_1B700ED34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1B700ED88()
{
  result = qword_1EB980C30;
  if (!qword_1EB980C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C30);
  }

  return result;
}

uint64_t sub_1B700EDDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B700EE2C(uint64_t a1, uint64_t a2)
{
  result = sub_1B70557C0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of Identity.Avatar.__allocating_init(identifier:imageData:cropRect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  v6 = *(a4 + 32);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, a3, v9);
}

uint64_t _s6AvatarC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6AvatarC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B700F140()
{
  result = qword_1EB980C48;
  if (!qword_1EB980C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C48);
  }

  return result;
}

unint64_t sub_1B700F198()
{
  result = qword_1EB980C50;
  if (!qword_1EB980C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C50);
  }

  return result;
}

unint64_t sub_1B700F1F0()
{
  result = qword_1EB980C58;
  if (!qword_1EB980C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980C58);
  }

  return result;
}

void *sub_1B700F244(uint64_t a1, uint64_t a2)
{
  result = sub_1B700F480();
  if (result)
  {
    v5 = result;
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B700F370;
    aBlock[3] = &block_descriptor_0;
    v6 = _Block_copy(aBlock);
    v7 = v5;

    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_1B7055910();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980C80, &qword_1B7070E28);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B700F370(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B700F3D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B700F41C()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B700F480()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  if (!*(v0 + 24))
  {
    v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v3 = sub_1B7055820();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v6 = v4;

    if (v6)
    {
      if (qword_1EB9808D0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [v6 setRemoteObjectInterface_];
    }

    v7 = *(v0 + 24);
    if (v7 && (v8 = swift_allocObject(), swift_weakInit(), v21 = nullsub_2, v22 = v8, aBlock = MEMORY[0x1E69E9820], v18 = 1107296256, v19 = sub_1B700F3D8, v20 = &block_descriptor_10, v9 = _Block_copy(&aBlock), v10 = v7, , [v10 setInterruptionHandler_], _Block_release(v9), v10, (v11 = *(v0 + 24)) != 0))
    {
      v12 = swift_allocObject();
      swift_weakInit();
      v21 = nullsub_2;
      v22 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_1B700F3D8;
      v20 = &block_descriptor_14;
      v13 = _Block_copy(&aBlock);
      v14 = v11;

      [v14 setInvalidationHandler_];
      _Block_release(v13);

      v15 = *(v0 + 24);
    }

    else
    {
      v15 = 0;
    }

    [v15 activate];
  }

  os_unfair_lock_unlock(v1 + 4);
  return *(v0 + 24);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B700F784()
{
  v0 = objc_opt_self();
  v1 = &unk_1F2F45410;
  v2 = [v0 interfaceWithProtocol_];

  qword_1EB980C88 = v2;
}

id static IdentityDaemonInterface.exportedInterface.getter()
{
  if (qword_1EB9808D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB980C88;

  return v0;
}

void static IdentityDaemonInterface.exportedInterface.setter(uint64_t a1)
{
  if (qword_1EB9808D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB980C88;
  qword_1EB980C88 = a1;
}

uint64_t (*static IdentityDaemonInterface.exportedInterface.modify(uint64_t a1))()
{
  if (qword_1EB9808D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1B700F978@<X0>(void *a1@<X8>)
{
  if (qword_1EB9808D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB980C88;
  *a1 = qword_1EB980C88;

  return v2;
}

void sub_1B700FA04(id *a1)
{
  v1 = qword_1EB9808D0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EB980C88;
  qword_1EB980C88 = v2;
}

id IdentityDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityDaemonInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityDaemonInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentityDaemonInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityDaemonInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B700FC4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B70557F0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_1B70557E0();
}

uint64_t sub_1B700FCF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B70557F0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

void sub_1B700FDF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1B700FE60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980D50, &qword_1B7070E78);
    v2 = sub_1B7055970();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B700A40C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1B70112EC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1B70112EC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1B70112EC(v31, v32);
    result = sub_1B7055920();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1B70112EC(v32, (*(v2 + 56) + 32 * v10));
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

void sub_1B70101B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B7055760();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

AAAgeMigrationFlowPresenter __swiftcall AAAgeMigrationFlowPresenter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._remoteAlertHandle = v4;
  result.super._remoteListener = v3;
  result.super.presentationCompletion = v2;
  result.super.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for AAAgeMigrationFlowPresenter()
{
  result = qword_1EB980D48;
  if (!qword_1EB980D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB980D48);
  }

  return result;
}

unint64_t sub_1B7010314(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B70559E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B70103CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1B7055A30();
  sub_1B7055850();
  v5 = sub_1B7055A40();

  return a3(a1, a2, v5);
}

uint64_t sub_1B7010450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980D58, &qword_1B7070E80);
  v33 = v4;
  result = sub_1B7055960();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B70112EC(v24, v34);
      }

      else
      {
        sub_1B700A40C(v24, v34);
      }

      sub_1B7055A30();
      sub_1B7055850();
      result = sub_1B7055A40();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B70112EC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1B7010708(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B70103CC(a2, a3, sub_1B7010314);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B70108EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B7010450(v16, a4 & 1);
    v11 = sub_1B70103CC(a2, a3, sub_1B7010314);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B70559F0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1B70112EC(a1, v22);
  }

  else
  {
    sub_1B7010880(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B7010880(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B70112EC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1B70108EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980D58, &qword_1B7070E80);
  v2 = *v0;
  v3 = sub_1B7055950();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B700A40C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B70112EC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B7010A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980D58, &qword_1B7070E80);
    v3 = sub_1B7055970();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B70112FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B70103CC(v13, v14, sub_1B7010314);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B70112EC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7010BB4(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v59 = sub_1B70112CC;
  v60 = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v57 = sub_1B700FDF4;
  v58 = &block_descriptor_1;
  v7 = _Block_copy(&aBlock);
  _Block_copy(a3);

  [a2 setPresentationCompletion_];
  _Block_release(v7);
  v8 = sub_1B7010A90(MEMORY[0x1E69E7CC0]);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    type metadata accessor for AAMisconfiguredAgePromptViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();
    v12 = NSStringFromClass(ObjCClassFromMetadata);
    v13 = sub_1B7055830();
    v15 = v14;

    v58 = MEMORY[0x1E69E6158];
    *&aBlock = v13;
    *(&aBlock + 1) = v15;
    sub_1B70112EC(&aBlock, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B7010708(v55, 0x7079546C65646F6DLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    if (qword_1EB9808E8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B70557F0();
    __swift_project_value_buffer(v17, qword_1EB980CD0);
    swift_unknownObjectRetain();
    v18 = sub_1B70557D0();
    v19 = sub_1B70558C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a3;
      v21 = a2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v10;
      *v23 = v10;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1B6F6A000, v18, v19, "modelType: %@", v22, 0xCu);
      sub_1B7009A28(v23);
      MEMORY[0x1B8CA03F0](v23, -1, -1);
      v24 = v22;
      a2 = v21;
      a3 = v20;
      MEMORY[0x1B8CA03F0](v24, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v36 = objc_opt_self();
    *&aBlock = 0;
    v37 = [v36 archivedDataWithRootObject:a1 requiringSecureCoding:0 error:&aBlock];
    v38 = aBlock;
    if (v37)
    {
      v39 = sub_1B7055790();
      v41 = v40;

      v58 = MEMORY[0x1E6969080];
      *&aBlock = v39;
      *(&aBlock + 1) = v41;
      sub_1B70112EC(&aBlock, v55);
      sub_1B700D100(v39, v41);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B7010708(v55, 0x7461446C65646F6DLL, 0xE900000000000061, v42);
      sub_1B700ED34(v39, v41);
      sub_1B700FE60(v8);

      v43 = sub_1B7055800();

      [a2 launchProcessWithUserInfo_];
    }

    else
    {
      v44 = v38;

      v45 = sub_1B7055770();

      swift_willThrow();
      v46 = v45;
      v47 = sub_1B70557D0();
      v48 = sub_1B70558B0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v45;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_1B6F6A000, v47, v48, "Error encoding modelData: %@", v49, 0xCu);
        sub_1B7009A28(v50);
        MEMORY[0x1B8CA03F0](v50, -1, -1);
        MEMORY[0x1B8CA03F0](v49, -1, -1);
      }

      v53 = v45;
      v54 = sub_1B7055760();
      (a3)[2](a3, v54);
    }
  }

  else
  {

    type metadata accessor for AgeMigrationError(0);
    *&v55[0] = 5002;
    sub_1B7010A90(MEMORY[0x1E69E7CC0]);
    sub_1B7009B20();
    sub_1B7055750();
    v25 = aBlock;
    if (qword_1EB9808E8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B70557F0();
    __swift_project_value_buffer(v26, qword_1EB980CD0);
    v27 = v25;
    v28 = sub_1B70557D0();
    v29 = sub_1B70558B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v27;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1B6F6A000, v28, v29, "modelType is nil sending back error: %@", v30, 0xCu);
      sub_1B7009A28(v31);
      MEMORY[0x1B8CA03F0](v31, -1, -1);
      MEMORY[0x1B8CA03F0](v30, -1, -1);
    }

    v34 = v27;
    v35 = sub_1B7055760();
    (a3)[2](a3, v35);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_1B70112EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B70112FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980D60, &qword_1B7070E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IW1PcFszqNK(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = qword_1E7C9DBC0[((-15 * (dword_1EB980D88 ^ 0x34 ^ dword_1EB980D70)) ^ byte_1B70710B0[byte_1B70719B0[(-15 * (dword_1EB980D88 ^ 0x34 ^ dword_1EB980D70))] ^ 0xE7]) - 156];
  v2 = qword_1E7C9DBC0[((-15 * ((dword_1EB980D70 + *v1) ^ 0x34)) ^ byte_1B70716B0[byte_1B70713B0[(-15 * ((dword_1EB980D70 + *v1) ^ 0x34))] ^ 0x6F]) - 157];
  v3 = (*(v2 - 4) - *v1) ^ &v9;
  *v1 = 618829553 * (v3 - 0x36690F2252B96534);
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = qword_1E7C9DBC0[((-15 * ((dword_1EB980D70 + dword_1EB980D88) ^ 0x34)) ^ byte_1B70717B0[byte_1B70714B0[(-15 * ((dword_1EB980D70 + dword_1EB980D88) ^ 0x34))] ^ 0xD1]) - 162];
  v5 = *(v4 + 72);
  v6 = 1402727023 * (((v10 | 0x27DEB680A9B42913) - v10 + (v10 & 0xD821497F564BD6E8)) ^ 0x50B504743F2B62FBLL);
  v10[0] = -1850172192 - v6;
  v11 = a1;
  v12 = v5 - v6;
  v7 = -15 * (*v1 ^ 0x34 ^ *(v2 - 4));
  (*(v4 + 8 * ((byte_1B70711BC[(byte_1B7070EBC[v7 - 12] ^ 0xF8) - 12] ^ v7) - 109)))(v10);
  return v10[1];
}

uint64_t Be81a395Bf0(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = qword_1E7C9DBC0[((-15 * ((dword_1EB980D70 - dword_1EB980D90) ^ 0x34)) ^ byte_1B70717B0[byte_1B70714B0[(-15 * ((dword_1EB980D70 - dword_1EB980D90) ^ 0x34))] ^ 0x68]) - 161];
  v2 = qword_1E7C9DBC0[((-15 * ((dword_1EB980D70 + *v1) ^ 0x34)) ^ byte_1B7070FB0[byte_1B70718B0[(-15 * ((dword_1EB980D70 + *v1) ^ 0x34))] ^ 0x49]) - 156];
  v3 = *v1 - &v9 + *(v2 - 4);
  *v1 = 618829553 * v3 - 0x36690F2252B96534;
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = qword_1E7C9DBC0[((-15 * ((dword_1EB980D70 - dword_1EB980D90) ^ 0x34)) ^ byte_1B70711B0[byte_1B7070EB0[(-15 * ((dword_1EB980D70 - dword_1EB980D90) ^ 0x34))] ^ 0x43]) - 161];
  v5 = 1402727023 * (((v10 | 0x7C6B3F64920E76B7) - v10 + (v10 & 0x8394C09B6DF18948)) ^ 0xB008D9004913D5FLL);
  v6 = *(v4 + 56) - v5;
  v10[0] = -1850172192 - v5;
  v11 = a1;
  v12 = v6;
  v7 = -15 * ((*(v2 - 4) + *v1) ^ 0x34);
  (*(v4 + 8 * ((byte_1B70715B0[byte_1B70712BC[v7 - 12] ^ 0xF5] ^ v7) - 110)))(v10);
  return v10[1];
}

void nDYmeMqvWb(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a3 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7011820(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = *(v3 + 240);
  v12 = v8;
  v11 = 1646140907 * ((((2 * &v10) | 0x3988BEFC) - &v10 - 482631550) ^ 0x9DCFCC13) - 1458603509;
  (*(v3 + 792))(&v10);
  v8[0] = *(v3 + 224);
  v8[1] = a1;
  v8[2] = a2;
  v9 = a3 - ((2 * a3) & 0xC11FE834) - 527436774;
  v12 = v8;
  v11 = 1646140907 * ((-971957249 - (&v10 | 0xC6111BFF) + (&v10 | 0x39EEE400)) ^ 0xB8E5776D) - 1458603509;
  (*(v3 + 792))(&v10);
  return (v10 - 1247915629);
}

void KxmB0CKvgWt(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B70119C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((((&v16 | 0xE5FBA1E6) ^ 0xFFFFFFFE) - (~&v16 | 0x1A045E19)) ^ 0x9B0FCD74) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 120);
  v12[1] = a1;
  v13 = (a2 ^ 0xEBCFBCFF) + 1056145346 + ((2 * a2) & 0xD79F79FE);
  v12[2] = a3;
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * ((&v16 & 0x300CA9DE | ~(&v16 | 0x300CA9DE)) ^ 0x4EF8C54C) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void t1BoNctgaUu66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7011B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((&v16 - 367535318 - 2 * (&v16 & 0xEA17DB2A)) ^ 0x6B1C4847) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 168);
  v12[1] = a1;
  v12[2] = a2;
  v13 = (a3 ^ 0xF9DE9AFF) + 1878779883 + ((2 * a3) & 0xF3BD35FE);
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * (((&v16 | 0x4D50755D) - &v16 + (&v16 & 0xB2AF8AA0)) ^ 0xCC5BE630) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void aslgmuibau()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7C9DC40 + ((-3 * (dword_1EB980DD8 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7072510[byte_1B70721F0[(-3 * (dword_1EB980DD8 ^ 0x8A ^ dword_1EB980DB0))] ^ 7]) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_1E7C9DC40 + (byte_1B7071EF8[(byte_1B7071BEC[(-3 * (v1 ^ dword_1EB980DB0 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_1EB980DB0 ^ 0x8A))) - 58);
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 - dword_1EB980DD8) ^ 0x8A)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * ((dword_1EB980DB0 - dword_1EB980DD8) ^ 0x8A))] ^ 0xE2]) - 111) - 12;
  v7 = *&v6[8 * ((60 * ((*&v6[8 * (byte_1B7071AE8[(byte_1B7072660[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 21576])(24, 0x1010040E2407E0ALL) != 0)) | 0x682)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7011ED8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_1B7012028()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_1B70120BC()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B70125E8()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_1B7012A70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))(a1);
}

uint64_t sub_1B7012AB8()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_1B7012F44@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_1B7012FA0()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_1B7013140@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_1B70134E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v34 + 8 * (v33 ^ 0xEFC)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v34 + 8 * (v33 ^ 0xECB)))();
  v43 = (*(v34 + 8 * (v33 ^ 0xEF5)))(a12, 0);
  return (*(v34 + 8 * ((19 * (((v33 + 1) ^ (v43 == 0)) & 1)) ^ v33)))(v43, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1B701360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, *(&off_1E7C9DC40 + v35 - 2212) - 12, a3, a4, a5, a6, a7, a8);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == *(&off_1E7C9DC40 + v35 - 2202) - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1B7013700()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_1B70137B0()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_1B7013848()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_1B7013900()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_1B7013978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41, a2, a3, a4, a5);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1B70142E4@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_1B701432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(**(&off_1E7C9DC40 + (v21 ^ 0x478)), *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20, a6, a7, a8);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_1B7014470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20, a6, a7, a8);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_1B7014A88@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_1B7014ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v54 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v54 - 0x1729FABDC6538B0), a2, a3, a4, a5);
  *(v54 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  JUMPOUT(0x1B7014B40);
}

uint64_t sub_1B7014D74(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_1B7014E6C(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1B7014F3C(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_1B7014F88(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_1B7014FBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  JUMPOUT(0x1B7015150);
}

uint64_t sub_1B701547C()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_1B7015590(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x1B70155BCLL);
}

void fm23w5mn5o()
{
  v0 = *(&off_1E7C9DC40 + ((-3 * (qword_1EB980DA8 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * (qword_1EB980DA8 ^ 0x8A ^ dword_1EB980DB0))] ^ 0x8E]) - 41);
  v1 = 1543604477 * ((*v0 + qword_1EB980DA8) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_1EB980DA8 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7015728()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_1B7015774()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_1B7015854@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_1B70158AC@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B701599C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_1EB981E98 == 0)) ^ 0x215u)))();
}

uint64_t sub_1B7015A38()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_1B7015B40@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B7015C34(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B701A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v50 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117, a4, a5, a6, a7, a8, "com.apple.adid", &unk_1EB981EE4, &unk_1EB981EE8, a12, a13, a14, a15, a16, a17, a18, &unk_1EB981EEC, a20, a21, a22, a23, &unk_1EB981EF0, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, &unk_1EB981E90, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1B701AAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_1B701AD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0, a3, a4, a5, a6, a7, a8);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1B701AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_1B701AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B701AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35, a2, a3, a4, a5, a6, a7, a8);
  *a35 = 0;
  return sub_1B701AD14(v37, v38, 551906117);
}

void sub_1B701B01C()
{
  v3 = (((v0 + 276668541) & 0xEF8258EA ^ 0x2B2) - 460) | 0x103;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1B701F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62, a2, a3, a4, a5, a6, a7, a8);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_1B701FAD8()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x1B701FB44);
}

uint64_t sub_1B701FB98()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_1B701FC38()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

uint64_t sub_1B701FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7C9DC40 + ((-3 * (dword_1EB980DB8 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7071FF0[byte_1B7071CE0[(-3 * (dword_1EB980DB8 ^ 0x8A ^ dword_1EB980DB0))] ^ 0xE6]) - 36);
  v1 = -3 * (*v0 ^ dword_1EB980DB0 ^ 0x8A);
  v2 = *(&off_1E7C9DC40 + (byte_1B70720F8[(byte_1B7071DE8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 + dword_1EB980DB8) ^ 0x8A)) ^ byte_1B7072760[byte_1B7072410[(-3 * ((dword_1EB980DB0 + dword_1EB980DB8) ^ 0x8A))] ^ 0xEA]) - 199) - 12;
  v7 = *&v6[8 * ((225 * ((*&v6[8 * (byte_1B7072764[(byte_1B707241C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 21912])(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B701FF5C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_1B702009C()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_1B7020138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  *(v17 + v9 + ((v16 - 687) ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B7020648()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_1B7020804@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_1B7020920@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B70209F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33, a2, a3, a4, a5, a6, a7, a8);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_1B7020A64(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x1B7020AACLL);
}

uint64_t sub_1B7020BA8()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_1B7020C28@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_1B70210E8()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_1B7021594@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_1B702166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = (v44 - 160 + v41);
  *v45 = *(v42 + 12);
  v45[1] = 1862975980;
  v45[2] = 1862975973;
  return (*(v43 + 8 * (((((v45 == 0) ^ (v40 - 120)) & 1) * ((v40 - 577) ^ 0x176)) ^ v40)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v42 + 12);
}

uint64_t sub_1B702170C()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_1B702179C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = *v42;
  v48 = *a8;
  v49 = *a8 - 1862975969;
  *(*v42 + v49) = 0;
  *(v47 + v49 + 1) = 0;
  *(v47 + v48 + (v46 ^ 0x90F53574)) = 0;
  *(v47 + v49 + 3) = 11;
  *a8 += 4;
  v50 = *v42 + (*a41 - 1862975969);
  return (*(v44 + 8 * (((a40 <= v50) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v50, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_1B7021874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  HIDWORD(a43) = -45007;
  HIDWORD(a45) = -45007;
  return (*(v46 + 8 * (v45 ^ 0x5F5)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1B7021908@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

uint64_t sub_1B7021AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45, a2, a3, a4, a5, a6, a7);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_1B7021CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v40 + 8 * (v41 + 306)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v40 + 8 * (v41 ^ 0x1C1)))();
  v50 = (*(v40 + 8 * (v41 + 315)))(*(v39 + 8 * (v41 - 2649)), 0);
  return (*(v40 + 8 * (((v50 == 0) * ((((v41 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v41)))(v50, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1B7021DF8(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_1B7021ED4()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_1B7021F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_1B7022050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_1B70220F4()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_1B7022178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  v27 = (v22 + 63928535) & 0xFC3089EF;
  *(v26 - 256) = v23;
  v28 = (*(v25 + 8 * (v27 ^ 0x2CD)))(v23, v24, va, a4, a5, a6, a7, a8);
  *(v26 - 248) = v28;
  return (*(v25 + 8 * (((v28 == 0) * (((v27 - 1939) ^ 0xFFFFF92F) + v27 - 599)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11);
}

uint64_t sub_1B7022278(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_1B7022304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v25);
}

uint64_t sub_1B702280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = v48 + 1475;
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731, a2, a3, a4, a5, a6, a7, a8);
  (*(v50 + 8 * (v51 + 1053)))(a47);
  (*(v50 + 8 * (v51 + 1053)))(a48);
  return (*(v50 + 8 * (((a46 == 0) * ((((v51 - 1839001745) & 0x6D9CEFDB) + 85) ^ v51 ^ 0x1AB)) | v51)))();
}

void sub_1B7022898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1B7022904);
}

uint64_t sub_1B70229F8@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_1B7022A5C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

uint64_t sub_1B7023090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20, a2, a3, a4, a5, a6, a7, a8);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_1B70230C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731), a2, a3, a4, a5, a6, a7, a8);
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  JUMPOUT(0x1B7023120);
}

uint64_t sub_1B70232F0(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_1B7023518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1B7023714);
}

uint64_t sub_1B7023A10@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_1B7023B14(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x1B7023B50);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7C9DC40 + (byte_1B7071FF0[byte_1B7071CE0[(-3 * ((dword_1EB980DB0 - dword_1EB980D98) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_1EB980DB0 - dword_1EB980D98) ^ 0x8A))) - 53);
  v1 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 + *v0) ^ 0x8A)) ^ byte_1B7071FF0[byte_1B7071CE0[(-3 * ((dword_1EB980DB0 + *v0) ^ 0x8A))] ^ 6]) - 62);
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 + dword_1EB980D98) ^ 0x8A)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * ((dword_1EB980DB0 + dword_1EB980D98) ^ 0x8A))] ^ 0xEC]) - 178) - 12;
  v6 = *&v5[8 * ((32 * ((*&v5[8 * (byte_1B7072764[(byte_1B707241C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 22784])(24, 0x1010040E2407E0ALL) == 0)) | 0xACA)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7023D80(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7C9DC40 + ((-3 * (dword_1EB980DA0 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7071EF0[byte_1B7071BE0[(-3 * (dword_1EB980DA0 ^ 0x8A ^ dword_1EB980DB0))] ^ 0x42]) - 166);
  v1 = *(v0 - 4);
  v2 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 - v1) ^ 0x8A)) ^ byte_1B7071AE0[byte_1B7072660[(-3 * ((dword_1EB980DB0 - v1) ^ 0x8A))] ^ 0x8E]) - 41);
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 - dword_1EB980DA0) ^ 0x8A)) ^ byte_1B7072510[byte_1B70721F0[(-3 * ((dword_1EB980DB0 - dword_1EB980DA0) ^ 0x8A))] ^ 7]) - 6) - 12;
  v7 = (*&v6[8 * (byte_1B7071AE8[(byte_1B7072660[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 21744])(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B7028754(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

void fy34trz2st()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7C9DC40 + ((-3 * (dword_1EB980DD0 ^ 0x8A ^ dword_1EB980DB0)) ^ byte_1B7072760[byte_1B7072410[(-3 * (dword_1EB980DD0 ^ 0x8A ^ dword_1EB980DB0))] ^ 0xEA]) - 198);
  v1 = -3 * ((dword_1EB980DB0 + *v0) ^ 0x8A);
  v2 = *(&off_1E7C9DC40 + (byte_1B70720F8[(byte_1B7071DE8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20);
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = *(&off_1E7C9DC40 + ((-3 * ((dword_1EB980DB0 - dword_1EB980DD0) ^ 0x8A)) ^ byte_1B7072760[byte_1B7072410[(-3 * ((dword_1EB980DB0 - dword_1EB980DD0) ^ 0x8A))] ^ 0xB0]) - 90) - 12;
  v7 = *&v6[8 * ((29 * ((*&v6[8 * (byte_1B7071FF4[(byte_1B7071CE0[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 23120])(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CD)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B702C608(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_1B702FA8C@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B702FCE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_1B702FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1B702FEF8()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_1B7030480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1B7030514@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_1B7030A2C()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_1B7030ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1B7030C14@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_1B7030D00@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1B7030DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6), a2, a3, a4, a5);
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_1B7030FF0()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_1B7031080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1B7031644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v56 = (v55 - 240 + v51);
  *v56 = *(v53 - 0x2B7CC17BA9FDC7DALL);
  v56[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v56[2] = 1917268408;
  return (*(v54 + 8 * (((v56 != 0) | (4 * (v56 != 0))) ^ v52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v53 - 0x2B7CC17BA9FDC7DALL);
}

uint64_t sub_1B703174C()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_1B70317F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v59 = *v48 + 4;
  *v48 = v59;
  v60 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v59 - 1917268404);
  return (*(v53 + 8 * ((8 * (a18 <= v60)) | (16 * (a18 <= v60)) | v58)))(v60, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1B7031E14()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_1B7031E78@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1B7031ED0()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_1B7031F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = (v50 + 146) | 0x849;
  v54 = (*(v52 + 8 * (v50 + 2460)))(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v51 + 64) = 0;
  *(v51 + 76) = 0;
  *(v51 + 40) = 0;
  (*(v52 + 8 * (v53 ^ 0x15D)))(v54);
  (*(v52 + 8 * (v53 + 218)))();
  v63 = (*(v52 + 8 * (v53 + 212)))(a16, 0);
  return (*(v52 + 8 * (((v63 == 0) * (((v53 - 1709) | 0x140) - 1353)) ^ v53)))(v63, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1B703212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, *(&off_1E7C9DC40 + (v52 ^ 0x2FF)) - 12, a3, a4, a5, a6, a7, a8);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == *(&off_1E7C9DC40 + v52 - 727) - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1B7032230()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_1B70322E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_1B703238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_1B7032448()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_1B70324BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58, a2, a3, a4, a5);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1B7032EF4@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_1B7032F58()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_1B7032F90()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_1B7032FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  *(v33 + 76) = 0;
  *(v33 + 40) = 0;
  v36 = (*(v35 + 8 * (v32 ^ 0xD56)))(**(v34 + 8 * (v32 ^ 0x631)), *(v30 - 0x2B7CC17BA9FDC7E6), *(v30 - 0x2B7CC17BA9FDC7DALL) + ((v32 - v31 + 1383) ^ 0x37C3572Du), &a27, va, a6, a7, a8);
  return (*(v35 + 8 * ((15 * ((v36 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v36) & 0xF9FEDD78) != v32 - 1929764732)) ^ v32)))();
}

uint64_t sub_1B7033208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31, a6, a7, a8);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B7033D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

void sub_1B70340A0(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *(v9 + a1) = v8;
  *(v12 - 244) = 0;
  *a8 = (*(v11 + 8 * (a2 ^ 0xB19)))(v10, 0x100004077774924);
  JUMPOUT(0x1B7034180);
}

uint64_t sub_1B70341F0()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_1B7034290(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_1B703448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B70345AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL, a2, a3, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_1B70346B8(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  JUMPOUT(0x1B7034724);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_1F2EEE8A0[40 * ((*(&unk_1F2EEE8AC + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1B7034DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31, a2, a3, a4, a5, a6, a7, a8);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_1B7034F70()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_1B7035008@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_1B70354AC()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_1B703550C()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_1B70359C4()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1B7035A18()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_1B7035BDC@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_1B7035F98()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1B7035FEC()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_1B7036198@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_1B7036524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 144) = (*(v15 + 8 * (v16 ^ 0x25E)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v15 + 8 * (v16 ^ 0x269)))();
  v17 = (*(v15 + 8 * (v16 ^ 0x257)))(a14, 0);
  *(v14 + 152) = v17;
  return (*(v15 + 8 * (((v17 == 0) * (125 * (v16 ^ 0x9D9) - 2327)) | v16)))(4294922293, v17);
}

uint64_t sub_1B70365E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0, a4, a5, a6, a7, a8);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_1B7036640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, *(&off_1E7C9DC40 + v46 - 1629) - 12, a3, a4, a5, a6, a7, a8);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == *(&off_1E7C9DC40 + (v46 ^ 0x675)) - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1B7036748()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_1B70367D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_1B7036880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11, a3, a4, a5, a6, a7, a8);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_1B7036958()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_1B70369BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51, a2, a3, a4, a5, a6, a7, a8);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1B7037248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(**(&off_1E7C9DC40 + (v26 ^ 0xEB)), *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24, a6, a7, a8);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1B70373AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24, a6, a7, a8);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_1B70377D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1B70379E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26, a2, a3, a4, a5, a6, a7, a8);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(**(&off_1E7C9DC40 + ((4 * (v25 ^ 0x5A5)) ^ 0x102)), a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_1B7037A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v29 - 0x78520B45E1B54CDELL), a2, a3, a4, a5, a6, a7, a8);
  *(v29 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  JUMPOUT(0x1B7037A8CLL);
}

uint64_t sub_1B7037D00@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_1B7037DF8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1B7037EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  JUMPOUT(0x1B70380D0);
}