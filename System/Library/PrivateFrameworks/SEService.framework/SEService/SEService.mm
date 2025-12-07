uint64_t sub_1C7B9CE94@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1C7B9D264@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC262E80;
  return result;
}

uint64_t sub_1C7B9D2B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC262E80 = v1;
  return result;
}

uint64_t sub_1C7B9D300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C7C7D104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 48);
    v11 = (v10 >> 6) & 0xFFFFFF83 | (4 * ((v10 >> 1) & 0x1F));
    v12 = v11 ^ 0x7F;
    v13 = 128 - v11;
    if (v12 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

double sub_1C7B9D3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C7C7D104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    result = 0.0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
  }

  return result;
}

uint64_t sub_1C7B9D5B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C11648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7B9D5E8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC263ED0;
  return result;
}

uint64_t sub_1C7B9D634(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC263ED0 = v1;
  return result;
}

uint64_t sub_1C7B9E398@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC263F90;
  return result;
}

uint64_t sub_1C7B9E3E4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC263F90 = v1;
  return result;
}

uint64_t sub_1C7B9E42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264068, &unk_1C7C8EC80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C7B9E4E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C7B9E524()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C7B9E55C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C7B9E5A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C7B9E5DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C7B9E614()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C7B9E658()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C7B9E6A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C7B9E6D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C7B9E718()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C7B9E75C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C7B9E794()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C7B9E85C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2645A0;
  return result;
}

uint64_t sub_1C7B9E8A8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2645A0 = v1;
  return result;
}

uint64_t sub_1C7B9E900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2646F0;
  return result;
}

uint64_t sub_1C7B9E94C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2646F0 = v1;
  return result;
}

uint64_t sub_1C7B9E994@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0x80;
  return result;
}

uint64_t sub_1C7B9E9A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1C7B9EA08()
{
  v1 = 0x6567617375;
  v2 = 0x6E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x6544746567726174;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7B9EA88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C45914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7B9EAD8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC264F00;
  return result;
}

uint64_t sub_1C7B9EB24(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC264F00 = v1;
  return result;
}

uint64_t sub_1C7B9EB8C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC2650E0;
  return result;
}

uint64_t sub_1C7B9EBD8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC2650E0 = v1;
  return result;
}

uint64_t sub_1C7B9EC20@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC265140;
  return result;
}

uint64_t sub_1C7B9EC6C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC265140 = v1;
  return result;
}

uint64_t sub_1C7B9ED14@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC265141;
  return result;
}

uint64_t sub_1C7B9ED60(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC265141 = v1;
  return result;
}

uint64_t sub_1C7B9EDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C7C7D104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C7B9EE54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C7C7D104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C7B9EEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C7C7D104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C7B9EFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C7C7D104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C7B9F074@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC265660;
  return result;
}

uint64_t sub_1C7B9F0C0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC265660 = v1;
  return result;
}

uint64_t sub_1C7B9F108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

__n128 sub_1C7B9F2E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C7B9F3B8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t getEnumTagSinglePayload for InstanceInfoInternal.LifeCycleState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for InstanceInfoInternal.LifeCycleState(uint64_t result, int a2, int a3)
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

id SESEndPointListContainers(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = +[SESClient sharedClient];
  v8 = (v16 + 5);
  obj = v16[5];
  v9 = [(SESClient *)v7 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v8, obj);

  if (v9 && !v16[5])
  {
    v11 = [SEProxy withSession:v5 seid:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SESEndPointListContainers_block_invoke;
    v13[3] = &unk_1E82D0C38;
    v13[4] = &v21;
    v13[5] = &v15;
    [v9 listEndPointContainers:v11 reply:v13];

    if (a3)
    {
      *a3 = v16[5];
    }

    v10 = v22[5];
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      *a3 = v16[5];
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void sub_1C7B9FAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SESEndPointListContainers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C7BA003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBUserNotificationDismissOnLock()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSBUserNotificationDismissOnLockSymbolLoc_ptr;
  v9 = getSBUserNotificationDismissOnLockSymbolLoc_ptr;
  if (!getSBUserNotificationDismissOnLockSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSBUserNotificationDismissOnLockSymbolLoc_block_invoke;
    v5[3] = &unk_1E82D0DA0;
    v5[4] = &v6;
    __getSBUserNotificationDismissOnLockSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    getSBUserNotificationDismissOnLock_cold_1();
    v4 = v3;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = *v0;

  return v1;
}

uint64_t SpringBoardServicesLibraryCore(uint64_t a1)
{
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SpringBoardServicesLibraryCore_frameworkLibrary;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBUserNotificationDismissOnLockSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = SpringBoardServicesLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "SBUserNotificationDismissOnLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationDismissOnLockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SESLegacyKeyCreate(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v10 = +[SESClient sharedClient];
    v11 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:a4];
    v12 = v11;
    if (v11)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__0;
      v29 = __Block_byref_object_dispose__0;
      v30 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__0;
      v23 = __Block_byref_object_dispose__0;
      v24 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __SESLegacyKeyCreate_block_invoke;
      v18[3] = &unk_1E82D0DC8;
      v18[4] = &v19;
      v18[5] = &v25;
      [v11 createSELegacyKey:0 subjectIdentifier:v7 metaData:v8 localValidationList:v9 reply:v18];
      if (!v26[5] && !v20[5])
      {
        v13 = SESDefaultLogObject();
        v14 = SESCreateAndLogError();
        v15 = v20[5];
        v20[5] = v14;
      }

      if (a4)
      {
        *a4 = v20[5];
      }

      a4 = v26[5];
      _Block_object_dispose(&v19, 8);

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      a4 = 0;
    }
  }

  else if (a4)
  {
    v16 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

  return a4;
}

void sub_1C7BA1B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SESLegacyKeyCreate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id SESLegacyKeyDelete(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    v2 = +[SESClient sharedClient];
    v3 = v19;
    obj = v19[5];
    v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
    objc_storeStrong(v3 + 5, obj);

    if (v4)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __SESLegacyKeyDelete_block_invoke;
      v12[3] = &unk_1E82D0DF0;
      v12[4] = &v13;
      v12[5] = &v18;
      [v4 deleteSELegacyKey:0 keySlot:v1 reply:v12];
      v5 = v19;
      if ((v14[3] & 1) == 0 && !v19[5])
      {
        v6 = SESDefaultLogObject();
        v7 = SESCreateAndLogError();
        v8 = v19[5];
        v19[5] = v7;

        v5 = v19;
      }

      v9 = v5[5];
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v9 = v19[5];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
  }

  return v9;
}

void sub_1C7BA1E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void *SESLegacyKeySign(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = +[SESClient sharedClient];
    v15 = [(SESClient *)v14 synchronousRemoteObjectProxyWithError:a5];
    v16 = v15;
    if (v15)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__0;
      v33 = __Block_byref_object_dispose__0;
      v34 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__0;
      v27 = __Block_byref_object_dispose__0;
      v28 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __SESLegacyKeySign_block_invoke;
      v22[3] = &unk_1E82D0E18;
      v22[4] = &v23;
      v22[5] = &v29;
      [v15 signWithSELegacyKey:0 keySlot:v11 challenge:v10 metaData:v9 authorization:v13 reply:v22];
      if (!v30[5] && !v24[5])
      {
        v17 = SESDefaultLogObject();
        v18 = SESCreateAndLogError();
        v19 = v24[5];
        v24[5] = v18;
      }

      if (a5)
      {
        *a5 = v24[5];
      }

      a5 = v30[5];
      _Block_object_dispose(&v23, 8);

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      a5 = 0;
    }
  }

  else if (a5)
  {
    v20 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    a5 = 0;
  }

  return a5;
}

void sub_1C7BA2174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESLegacyKeySign_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *SESLegacyKeySignWithListenerEndpoint(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (v11 && v12 && v13 && v14 && v15)
  {
    v17 = +[SESClient sharedClient];
    v18 = [(SESClient *)v17 synchronousRemoteObjectProxyWithError:a6];
    if (v18)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__0;
      v37 = __Block_byref_object_dispose__0;
      v38 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__0;
      v31 = __Block_byref_object_dispose__0;
      v32 = 0;
      v19 = [SEProxy withEndpoint:v11];
      if (v19)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __SESLegacyKeySignWithListenerEndpoint_block_invoke;
        v26[3] = &unk_1E82D0E18;
        v26[4] = &v27;
        v26[5] = &v33;
        [v18 signWithSELegacyKey:v19 keySlot:v14 challenge:v13 metaData:v12 authorization:v16 reply:v26];
        if (!v34[5] && !v28[5])
        {
          v20 = SESDefaultLogObject();
          v21 = SESCreateAndLogError();
          v22 = v28[5];
          v28[5] = v21;
        }

        if (a6)
        {
          *a6 = v28[5];
        }

        a6 = v34[5];
      }

      else if (a6)
      {
        v24 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();

        a6 = 0;
      }

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v33, 8);
    }

    else
    {
      a6 = 0;
    }
  }

  else if (a6)
  {
    v23 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();

    a6 = 0;
  }

  return a6;
}

void sub_1C7BA2584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SESLegacyKeySignWithListenerEndpoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *_signPrecomputedDigestWithProxy(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (!v12 || !v13 || !v14)
  {
    if (!a6)
    {
      goto LABEL_18;
    }

LABEL_15:
    v22 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();

    a6 = 0;
    goto LABEL_18;
  }

  if ([v12 length] != 32)
  {
    if (!a6)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v16 = +[SESClient sharedClient];
  v17 = [(SESClient *)v16 synchronousRemoteObjectProxyWithError:a6];
  if (v17)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___signPrecomputedDigestWithProxy_block_invoke;
    v24[3] = &unk_1E82D0E18;
    v24[4] = &v25;
    v24[5] = &v31;
    [v17 signPrecomputedWithSELegacyKey:v11 keySlot:v13 metaData:v12 authorization:v15 authorizationType:v18 reply:v24];

    if (!v32[5] && !v26[5])
    {
      v19 = SESDefaultLogObject();
      v20 = SESCreateAndLogError();
      v21 = v26[5];
      v26[5] = v20;
    }

    if (a6)
    {
      *a6 = v26[5];
    }

    a6 = v32[5];
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    a6 = 0;
  }

LABEL_18:

  return a6;
}

void sub_1C7BA2974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESLegacyKeySignPrecomputedDigestWithListenerEndpoint(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = [SEProxy withEndpoint:a1];
    v13 = _signPrecomputedDigestWithProxy(v12, v11, v10, v9, 0, a5);
  }

  else
  {
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = _signPrecomputedDigestWithProxy(0, v12, v11, v10, 0, a5);
  }

  return v13;
}

id SESLegacyKeySignPrecomputedWithIDV(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = [SEProxy withEndpoint:a1];
    v13 = _signPrecomputedDigestWithProxy(v12, v11, v10, v9, 1, a5);
  }

  else
  {
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = _signPrecomputedDigestWithProxy(0, v12, v11, v10, 1, a5);
  }

  return v13;
}

id SESLegacyKeyGetOccupiedSlots(void *a1)
{
  v2 = +[SESClient sharedClient];
  v3 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:a1];
  v4 = v3;
  if (v3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SESLegacyKeyGetOccupiedSlots_block_invoke;
    v10[3] = &unk_1E82D0C38;
    v10[4] = &v11;
    v10[5] = &v17;
    [v3 getSELegacyKeyOccupiedSlots:0 reply:v10];
    if (!v18[5] && !v12[5])
    {
      v5 = SESDefaultLogObject();
      v6 = SESCreateAndLogError();
      v7 = v12[5];
      v12[5] = v6;
    }

    if (a1)
    {
      *a1 = v12[5];
    }

    v8 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1C7BA2D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void __SESLegacyKeyGetOccupiedSlots_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *SESLegacyKeyGetOccupiedSlotsWithListenerEndpoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[SESClient sharedClient];
  v5 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:a2];
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v6 = [SEProxy withEndpoint:v3];
    if (v6)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __SESLegacyKeyGetOccupiedSlotsWithListenerEndpoint_block_invoke;
      v12[3] = &unk_1E82D0C38;
      v12[4] = &v13;
      v12[5] = &v19;
      [v5 getSELegacyKeyOccupiedSlots:v6 reply:v12];
      if (!v20[5] && !v14[5])
      {
        v7 = SESDefaultLogObject();
        v8 = SESCreateAndLogError();
        v9 = v14[5];
        v14[5] = v8;
      }

      if (a2)
      {
        *a2 = v14[5];
      }

      a2 = v20[5];
    }

    else if (a2)
    {
      v10 = SESDefaultLogObject();
      *a2 = SESCreateAndLogError();

      a2 = 0;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void sub_1C7BA30BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESLegacyKeyGetOccupiedSlotsWithListenerEndpoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id extractACLsSet()
{
  v0 = SecAccessControlGetConstraints();
  v1 = [objc_alloc(MEMORY[0x1E69666D0]) initWithPropertyList:v0];
  v2 = [v1 data];

  return v2;
}

void *SESKeyCreateWithExtractedACLs(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = +[SESClient sharedClient];
    v5 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:a2];
    v6 = v5;
    if (v5)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__0;
      v23 = __Block_byref_object_dispose__0;
      v24 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__0;
      v17 = __Block_byref_object_dispose__0;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __SESKeyCreateWithExtractedACLs_block_invoke;
      v12[3] = &unk_1E82D0E40;
      v12[4] = &v13;
      v12[5] = &v19;
      [v5 createSEKey:0 extractedACLs:v3 reply:v12];
      if (!v20[5] && !v14[5])
      {
        v7 = SESDefaultLogObject();
        v8 = SESCreateAndLogError();
        v9 = v14[5];
        v14[5] = v8;
      }

      if (a2)
      {
        *a2 = v14[5];
      }

      a2 = v20[5];
      _Block_object_dispose(&v13, 8);

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      a2 = 0;
    }
  }

  else if (a2)
  {
    v10 = SESDefaultLogObject();
    *a2 = SESCreateAndLogError();

    a2 = 0;
  }

  return a2;
}

void sub_1C7BA3434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESKeyCreateWithExtractedACLs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id SESKeyCreate(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = extractACLsSet();
    v4 = v3;
    if (v3)
    {
      v5 = SESKeyCreateWithExtractedACLs(v3, a2);
    }

    else
    {
      if (a2)
      {
        v6 = SESDefaultLogObject();
        *a2 = SESCreateAndLogError();
      }

      v5 = 0;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    v4 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a2 = v5 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void *SESKeyCreateWithSession(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    v9 = extractACLsSet();
    if (v9)
    {
      v10 = +[SESClient sharedClient];
      v11 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:a4];

      if (v11)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__0;
        v30 = __Block_byref_object_dispose__0;
        v31 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = __Block_byref_object_copy__0;
        v24 = __Block_byref_object_dispose__0;
        v25 = 0;
        v12 = [SEProxy withSession:v7 seid:v8];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __SESKeyCreateWithSession_block_invoke;
        v19[3] = &unk_1E82D0E40;
        v19[4] = &v20;
        v19[5] = &v26;
        [v11 createSEKey:v12 extractedACLs:v9 reply:v19];

        if (!v27[5] && !v21[5])
        {
          v13 = SESDefaultLogObject();
          v14 = SESCreateAndLogError();
          v15 = v21[5];
          v21[5] = v14;
        }

        if (a4)
        {
          *a4 = v21[5];
        }

        a4 = v27[5];
        _Block_object_dispose(&v20, 8);

        _Block_object_dispose(&v26, 8);
      }

      else
      {
        a4 = 0;
      }
    }

    else if (a4)
    {
      v17 = SESDefaultLogObject();
      *a4 = SESCreateAndLogError();

      a4 = 0;
    }
  }

  else if (a4)
  {
    v16 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

  return a4;
}

void sub_1C7BA38E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESKeyCreateWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void SESKeyDelete(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = +[SESClient sharedClient];
    v5 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:a2];

    if (v5)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__0;
      v18 = __Block_byref_object_dispose__0;
      v19 = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __SESKeyDelete_block_invoke;
      v9[3] = &unk_1E82D0DF0;
      v9[4] = &v10;
      v9[5] = &v14;
      [v5 deleteSEKey:0 keyData:v3 reply:v9];
      if ((v11[3] & 1) == 0 && !v15[5])
      {
        v6 = SESDefaultLogObject();
        v7 = SESCreateAndLogError();
        v8 = v15[5];
        v15[5] = v7;
      }

      if (a2)
      {
        *a2 = v15[5];
      }

      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(&v14, 8);
    }

    goto LABEL_11;
  }

  if (a2)
  {
    v5 = SESDefaultLogObject();
    *a2 = SESCreateAndLogError();
LABEL_11:
  }
}

void sub_1C7BA3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void SESKeyDeleteWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v9)
  {
    v10 = +[SESClient sharedClient];
    v11 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:a4];

    if (v11)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__0;
      v25 = __Block_byref_object_dispose__0;
      v26 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v12 = [SEProxy withSession:v7 seid:v8];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __SESKeyDeleteWithSession_block_invoke;
      v16[3] = &unk_1E82D0DF0;
      v16[4] = &v17;
      v16[5] = &v21;
      [v11 deleteSEKey:v12 keyData:v9 reply:v16];

      if ((v18[3] & 1) == 0 && !v22[5])
      {
        v13 = SESDefaultLogObject();
        v14 = SESCreateAndLogError();
        v15 = v22[5];
        v22[5] = v14;
      }

      if (a4)
      {
        *a4 = v22[5];
      }

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(&v21, 8);
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v11 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();
LABEL_11:
  }
}

void sub_1C7BA3E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESKeyPublicKey(uint64_t a1, uint64_t a2)
{
  v2 = [PTClassicKey withData:a1 error:a2];
  v3 = [v2 publicKey];

  return v3;
}

id SESKeyGetAccessControlConstraints(uint64_t a1, uint64_t a2)
{
  v2 = [PTClassicKey withData:a1 error:a2];
  v3 = [v2 accessControlConstraints];

  return v3;
}

void *SESKeySignData(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = +[SESClient sharedClient];
    v15 = [(SESClient *)v14 synchronousRemoteObjectProxyWithError:a5];

    if (v15)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__0;
      v32 = __Block_byref_object_dispose__0;
      v33 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__0;
      v26 = __Block_byref_object_dispose__0;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __SESKeySignData_block_invoke;
      v21[3] = &unk_1E82D0E40;
      v21[4] = &v28;
      v21[5] = &v22;
      [v15 signWithSEKey:0 keyData:v9 data:v10 algorithm:v11 laExternalizedContext:v13 reply:v21];
      if (!v29[5] && !v23[5])
      {
        v16 = SESDefaultLogObject();
        v17 = SESCreateAndLogError();
        v18 = v23[5];
        v23[5] = v17;
      }

      if (a5)
      {
        *a5 = v23[5];
      }

      a5 = v29[5];
      _Block_object_dispose(&v22, 8);

      _Block_object_dispose(&v28, 8);
    }

    else
    {
      a5 = 0;
    }
  }

  else if (a5)
  {
    v19 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    a5 = 0;
  }

  return a5;
}

void sub_1C7BA41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESKeySignData_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeySignDataWithSession(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (v13 && v14 && v15 && v16 && v17 && v18)
  {
    v20 = +[SESClient sharedClient];
    v21 = [(SESClient *)v20 synchronousRemoteObjectProxyWithError:a7];

    if (v21)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__0;
      v39 = __Block_byref_object_dispose__0;
      v40 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__0;
      v33 = __Block_byref_object_dispose__0;
      v34 = 0;
      v22 = [SEProxy withSession:v13 seid:v14];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __SESKeySignDataWithSession_block_invoke;
      v28[3] = &unk_1E82D0E40;
      v28[4] = &v35;
      v28[5] = &v29;
      [v21 signWithSEKey:v22 keyData:v15 data:v16 algorithm:v17 laExternalizedContext:v19 reply:v28];

      if (!v36[5] && !v30[5])
      {
        v23 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        v25 = v30[5];
        v30[5] = v24;
      }

      if (a7)
      {
        *a7 = v30[5];
      }

      a7 = v36[5];
      _Block_object_dispose(&v29, 8);

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      a7 = 0;
    }
  }

  else if (a7)
  {
    v26 = SESDefaultLogObject();
    *a7 = SESCreateAndLogError();

    a7 = 0;
  }

  return a7;
}

void sub_1C7BA4588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESKeySignDataWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *_SESKeySignPrecomputedDigest(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (v12 && v13 && v14 && v15)
  {
    v17 = +[SESClient sharedClient];
    v18 = [(SESClient *)v17 synchronousRemoteObjectProxyWithError:a6];

    if (v18)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__0;
      v29 = __Block_byref_object_dispose__0;
      v30 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___SESKeySignPrecomputedDigest_block_invoke;
      v24[3] = &unk_1E82D0E40;
      v24[4] = &v31;
      v24[5] = &v25;
      [v18 signPrecomputedDigest:v11 keyData:v12 digest:v13 algorithm:v14 laExternalizedContext:v16 reply:v24];
      if (!v32[5] && !v26[5])
      {
        v19 = SESDefaultLogObject();
        v20 = SESCreateAndLogError();
        v21 = v26[5];
        v26[5] = v20;
      }

      if (a6)
      {
        *a6 = v26[5];
      }

      a6 = v32[5];
      _Block_object_dispose(&v25, 8);

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      a6 = 0;
    }
  }

  else if (a6)
  {
    v22 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();

    a6 = 0;
  }

  return a6;
}

void sub_1C7BA4914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

id SESKeySignPrecomputedDigestWithSession(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [SEProxy withSession:a1 seid:a2];
  v18 = _SESKeySignPrecomputedDigest(v17, v16, v15, v14, v13, a7);

  return v18;
}

id SESKeySignPrecomputedDigestWithListenerEndpoint(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = [SEProxy withEndpoint:a1];
  v16 = _SESKeySignPrecomputedDigest(v15, v14, v13, v12, v11, a6);

  return v16;
}

void *SESKeyExchange(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = +[SESClient sharedClient];
    v15 = [(SESClient *)v14 synchronousRemoteObjectProxyWithError:a5];

    if (v15)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__0;
      v32 = __Block_byref_object_dispose__0;
      v33 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__0;
      v26 = __Block_byref_object_dispose__0;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __SESKeyExchange_block_invoke;
      v21[3] = &unk_1E82D0E40;
      v21[4] = &v28;
      v21[5] = &v22;
      [v15 sharedSecretWithSEKey:0 keyData:v9 publicKey:v10 algorithm:v11 laExternalizedContext:v13 reply:v21];
      if (!v29[5] && !v23[5])
      {
        v16 = SESDefaultLogObject();
        v17 = SESCreateAndLogError();
        v18 = v23[5];
        v23[5] = v17;
      }

      if (a5)
      {
        *a5 = v23[5];
      }

      a5 = v29[5];
      _Block_object_dispose(&v22, 8);

      _Block_object_dispose(&v28, 8);
    }

    else
    {
      a5 = 0;
    }
  }

  else if (a5)
  {
    v19 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    a5 = 0;
  }

  return a5;
}

void sub_1C7BA4D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESKeyExchange_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyExchangeWithSession(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (v15 && v16 && v17 && v18)
  {
    v20 = +[SESClient sharedClient];
    v21 = [(SESClient *)v20 synchronousRemoteObjectProxyWithError:a7];

    if (v21)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__0;
      v39 = __Block_byref_object_dispose__0;
      v40 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__0;
      v33 = __Block_byref_object_dispose__0;
      v34 = 0;
      v22 = [SEProxy withSession:"withSession:seid:" seid:?];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __SESKeyExchangeWithSession_block_invoke;
      v28[3] = &unk_1E82D0E40;
      v28[4] = &v35;
      v28[5] = &v29;
      [v21 sharedSecretWithSEKey:v22 keyData:v15 publicKey:v16 algorithm:v17 laExternalizedContext:v19 reply:v28];

      if (!v36[5] && !v30[5])
      {
        v23 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        v25 = v30[5];
        v30[5] = v24;
      }

      if (a7)
      {
        *a7 = v30[5];
      }

      a7 = v36[5];
      _Block_object_dispose(&v29, 8);

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      a7 = 0;
    }
  }

  else if (a7)
  {
    v26 = SESDefaultLogObject();
    *a7 = SESCreateAndLogError();

    a7 = 0;
  }

  return a7;
}

void sub_1C7BA513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESKeyExchangeWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESKeyEncryptData(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (v15 && v16 && v17 && v18 && v19)
  {
    v22 = +[SESClient sharedClient];
    v23 = [(SESClient *)v22 synchronousRemoteObjectProxyWithError:a8];

    if (v23)
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__0;
      v49 = __Block_byref_object_dispose__0;
      v50 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__0;
      v43 = __Block_byref_object_dispose__0;
      v44 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__0;
      v37 = __Block_byref_object_dispose__0;
      v38 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __SESKeyEncryptData_block_invoke;
      v32[3] = &unk_1E82D0E68;
      v32[4] = &v45;
      v32[5] = &v39;
      v32[6] = &v33;
      [v23 encryptWithSEKey:v15 plainText:v16 publicKey:v17 algorithm:v18 laExternalizedContext:v19 sharedInfo:v20 authenticationData:v21 reply:v32];
      v24 = v46[5];
      if (!v24)
      {
        if (v34[5])
        {
          v24 = 0;
        }

        else
        {
          v27 = SESDefaultLogObject();
          v31 = @"SESKeyEncryptData -> encryptWithSEKey";
          v28 = SESCreateAndLogError();
          v29 = v34[5];
          v34[5] = v28;

          v24 = v46[5];
        }
      }

      v26 = [v24 mutableCopy];
      [v26 appendData:v40[5]];
      if (a8)
      {
        *a8 = v34[5];
      }

      _Block_object_dispose(&v33, 8);

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v45, 8);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    if (a8)
    {
      v25 = SESDefaultLogObject();
      *a8 = SESCreateAndLogError();
    }

    v26 = 0;
  }

  return v26;
}

void sub_1C7BA553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

void __SESKeyEncryptData_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void *SESKeyDecryptData(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a9;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  if (v17 && v18 && v19 && v20 && v21)
  {
    v33 = v23;
    v25 = v22;
    v26 = +[SESClient sharedClient];
    v27 = [(SESClient *)v26 synchronousRemoteObjectProxyWithError:a9];

    if (v27)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__0;
      v45 = __Block_byref_object_dispose__0;
      v46 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__0;
      v39 = __Block_byref_object_dispose__0;
      v40 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __SESKeyDecryptData_block_invoke;
      v34[3] = &unk_1E82D0E40;
      v34[4] = &v41;
      v34[5] = &v35;
      v22 = v25;
      [v27 decryptWithSEKey:v17 cipherText:v18 publicKey:v19 algorithm:v20 laExternalizedContext:v21 sharedInfo:v25 authenticationData:v33 authenticationTag:v24 reply:v34];
      if (!v42[5] && !v36[5])
      {
        v28 = SESDefaultLogObject();
        v29 = SESCreateAndLogError();
        v30 = v36[5];
        v36[5] = v29;
      }

      if (a9)
      {
        *a9 = v36[5];
      }

      v16 = v42[5];
      _Block_object_dispose(&v35, 8);

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v16 = 0;
      v22 = v25;
    }

    v23 = v33;
  }

  else if (a9)
  {
    v31 = SESDefaultLogObject();
    *a9 = SESCreateAndLogError();

    v16 = 0;
  }

  return v16;
}

void sub_1C7BA594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SESKeyDecryptData_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyRewrapData(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v20 = a1;
  v49 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v48 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v47 = a11;
  v28 = a12;
  v46 = v20;
  if (v20 && v49 && v21 && v22 && v24 && v25 && v26)
  {
    v29 = +[SESClient sharedClient];
    v30 = [(SESClient *)v29 synchronousRemoteObjectProxyWithError:a13];

    if (v30)
    {
      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy__0;
      v67 = __Block_byref_object_dispose__0;
      v68 = 0;
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__0;
      v61 = __Block_byref_object_dispose__0;
      v62 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__0;
      v55 = __Block_byref_object_dispose__0;
      v56 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __SESKeyRewrapData_block_invoke;
      v50[3] = &unk_1E82D0E68;
      v50[4] = &v63;
      v50[5] = &v57;
      v50[6] = &v51;
      [v30 rewrapWithSEKey:v46 cipherText:v49 publicKey:v21 decryptAlgorithm:v22 decryptSharedInfo:v23 encryptAlgorithm:v24 encryptSharedInfo:v48 certificate:v25 laExternalizedContext:v26 decryptAuthenticationData:v27 decryptAuthenticationTag:v47 encryptAuthenticationData:v28 reply:v50];
      v31 = v64[5];
      if (!v31)
      {
        if (v52[5])
        {
          v31 = 0;
        }

        else
        {
          v41 = SESDefaultLogObject();
          v45 = @"SESKeyRewrapData -> rewrapWithSEKey";
          v42 = SESCreateAndLogError();
          v43 = v52[5];
          v52[5] = v42;

          v31 = v64[5];
        }
      }

      v32 = [v31 mutableCopy];
      [v32 appendData:v58[5]];
      if (a13)
      {
        *a13 = v52[5];
      }

      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v63, 8);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = a13;
    if (a13)
    {
      SESDefaultLogObject();
      v33 = v28;
      v34 = v25;
      v35 = v26;
      v36 = v24;
      v37 = v22;
      v38 = v21;
      v40 = v39 = v27;
      *a13 = SESCreateAndLogError();

      v27 = v39;
      v21 = v38;
      v22 = v37;
      v24 = v36;
      v26 = v35;
      v25 = v34;
      v28 = v33;
      v32 = 0;
    }
  }

  return v32;
}

void sub_1C7BA5E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 184), 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

void __SESKeyRewrapData_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void *SESKeyAttestWithSEBAA(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11 && v12)
  {
    v16 = +[SESClient sharedClient];
    v17 = [(SESClient *)v16 synchronousRemoteObjectProxyWithError:a6];

    if (v17)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__0;
      v34 = __Block_byref_object_dispose__0;
      v35 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __SESKeyAttestWithSEBAA_block_invoke;
      v23[3] = &unk_1E82D0E40;
      v23[4] = &v30;
      v23[5] = &v24;
      [v17 createSEABAASCertificate:v11 subjectIdentifier:v12 nonce:v13 OIDs:v14 validityInterval:v15 reply:v23];
      if (!v31[5] && !v25[5])
      {
        v18 = SESDefaultLogObject();
        v19 = SESCreateAndLogError();
        v20 = v25[5];
        v25[5] = v19;
      }

      if (a6)
      {
        *a6 = v25[5];
      }

      a6 = v31[5];
      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      a6 = 0;
    }
  }

  else if (a6)
  {
    v21 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();

    a6 = 0;
  }

  return a6;
}

void sub_1C7BA61DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESKeyAttestWithSEBAA_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyCreateCertificate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (v15 && v16 && v17 && v18 && v19)
  {
    v22 = +[SESClient sharedClient];
    v23 = [(SESClient *)v22 synchronousRemoteObjectProxyWithError:a8];

    if (v23)
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__0;
      v40 = __Block_byref_object_dispose__0;
      v41 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__0;
      v34 = __Block_byref_object_dispose__0;
      v35 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __SESKeyCreateCertificate_block_invoke;
      v29[3] = &unk_1E82D0E40;
      v29[4] = &v36;
      v29[5] = &v30;
      [v23 createCertificateForKeyData:v15 withKeyData:v16 subjectIdentifier:v18 authorityIdentifier:v19 laExternalizedContext:v17 nonce:v20 OIDs:v21 reply:v29];
      if (!v37[5] && !v31[5])
      {
        v24 = SESDefaultLogObject();
        v25 = SESCreateAndLogError();
        v26 = v31[5];
        v31[5] = v25;
      }

      if (a8)
      {
        *a8 = v31[5];
      }

      a8 = v37[5];
      _Block_object_dispose(&v30, 8);

      _Block_object_dispose(&v36, 8);
    }

    else
    {
      a8 = 0;
    }
  }

  else if (a8)
  {
    v27 = SESDefaultLogObject();
    *a8 = SESCreateAndLogError();

    a8 = 0;
  }

  return a8;
}

void sub_1C7BA657C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESKeyCreateCertificate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyCreatePTAttestation(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (v9 && v10)
  {
    v13 = +[SESClient sharedClient];
    v14 = [(SESClient *)v13 synchronousRemoteObjectProxyWithError:a5];

    if (v14)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__0;
      v31 = __Block_byref_object_dispose__0;
      v32 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__0;
      v25 = __Block_byref_object_dispose__0;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __SESKeyCreatePTAttestation_block_invoke;
      v20[3] = &unk_1E82D0E40;
      v20[4] = &v27;
      v20[5] = &v21;
      [v14 createPTAttestation:0 keyData:v9 subjectIdentifier:v10 nonce:v11 OIDs:v12 reply:v20];
      if (!v28[5] && !v22[5])
      {
        v15 = SESDefaultLogObject();
        v16 = SESCreateAndLogError();
        v17 = v22[5];
        v22[5] = v16;
      }

      if (a5)
      {
        *a5 = v22[5];
      }

      a5 = v28[5];
      _Block_object_dispose(&v21, 8);

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      a5 = 0;
    }
  }

  else if (a5)
  {
    v18 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    a5 = 0;
  }

  return a5;
}

void sub_1C7BA68D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESKeyCreatePTAttestation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESKeyGetPTAttestationCASD(void *a1)
{
  v2 = +[SESClient sharedClient];
  v3 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:a1];

  if (v3)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SESKeyGetPTAttestationCASD_block_invoke;
    v9[3] = &unk_1E82D0E40;
    v9[4] = &v16;
    v9[5] = &v10;
    [v3 getCASDCertificate:0 reply:v9];
    if (!v17[5] && !v11[5])
    {
      v4 = SESDefaultLogObject();
      v5 = SESCreateAndLogError();
      v6 = v11[5];
      v11[5] = v5;
    }

    if (a1)
    {
      *a1 = v11[5];
    }

    v7 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1C7BA6B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void __SESKeyGetPTAttestationCASD_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyCreatePTAttestationWithSession(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v15 && v16)
  {
    v19 = +[SESClient sharedClient];
    v20 = [(SESClient *)v19 synchronousRemoteObjectProxyWithError:a7];

    if (v20)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__0;
      v38 = __Block_byref_object_dispose__0;
      v39 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__0;
      v32 = __Block_byref_object_dispose__0;
      v33 = 0;
      v21 = [SEProxy withSession:"withSession:seid:" seid:?];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __SESKeyCreatePTAttestationWithSession_block_invoke;
      v27[3] = &unk_1E82D0E40;
      v27[4] = &v34;
      v27[5] = &v28;
      [v20 createPTAttestation:v21 keyData:v15 subjectIdentifier:v16 nonce:v17 OIDs:v18 reply:v27];

      if (!v35[5] && !v29[5])
      {
        v22 = SESDefaultLogObject();
        v23 = SESCreateAndLogError();
        v24 = v29[5];
        v29[5] = v23;
      }

      if (a7)
      {
        *a7 = v29[5];
      }

      a7 = v35[5];
      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      a7 = 0;
    }
  }

  else if (a7)
  {
    v25 = SESDefaultLogObject();
    *a7 = SESCreateAndLogError();

    a7 = 0;
  }

  return a7;
}

void sub_1C7BA6F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESKeyCreatePTAttestationWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void *SESKeyUpdateACL(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = v8;
  if (v7 && a2 && v8)
  {
    v10 = extractACLsSet();
    if (v10)
    {
      v11 = +[SESClient sharedClient];
      v12 = [(SESClient *)v11 synchronousRemoteObjectProxyWithError:a4];

      if (v12)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__0;
        v30 = __Block_byref_object_dispose__0;
        v31 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = __Block_byref_object_copy__0;
        v24 = __Block_byref_object_dispose__0;
        v25 = 0;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __SESKeyUpdateACL_block_invoke;
        v19[3] = &unk_1E82D0E40;
        v19[4] = &v20;
        v19[5] = &v26;
        [v12 updateACLForSEKey:v7 extractedACLs:v10 laExternalizedContext:v9 reply:v19];
        if (!v27[5] && !v21[5])
        {
          v13 = SESDefaultLogObject();
          v14 = SESCreateAndLogError();
          v15 = v21[5];
          v21[5] = v14;
        }

        if (a4)
        {
          *a4 = v21[5];
        }

        a4 = v27[5];
        _Block_object_dispose(&v20, 8);

        _Block_object_dispose(&v26, 8);
      }

      else
      {
        a4 = 0;
      }
    }

    else if (a4)
    {
      v17 = SESDefaultLogObject();
      *a4 = SESCreateAndLogError();

      a4 = 0;
    }
  }

  else if (a4)
  {
    v16 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

  return a4;
}

void sub_1C7BA72B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESKeyUpdateACL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t SESKeyGetSupportedFeatures(void *a1)
{
  v2 = +[SESClient sharedClient];
  v3 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:a1];

  if (v3)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SESKeyGetSupportedFeatures_block_invoke;
    v9[3] = &unk_1E82D0E90;
    v9[4] = &v10;
    v9[5] = &v20;
    v9[6] = &v14;
    [v3 getSESKeySupportedFeatures:v9];
    if ((v11[3] & 1) == 0 && !v15[5])
    {
      v4 = SESDefaultLogObject();
      v5 = SESCreateAndLogError();
      v6 = v15[5];
      v15[5] = v5;
    }

    if (a1)
    {
      *a1 = v15[5];
    }

    v7 = v21[3];
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1C7BA7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void __SESKeyGetSupportedFeatures_block_invoke(void *a1, char a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

uint64_t SESKeyIsValid(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[SESClient sharedClient];
  v5 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:a2];

  if (v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SESKeyIsValid_block_invoke;
    v8[3] = &unk_1E82D0EB8;
    v8[4] = &v9;
    [v5 checkKeyValidity:v3 completion:v8];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C7BA7690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SESKeyDesignate(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = +[SESClient sharedClient];
  v10 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:a4];

  if (v10)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __SESKeyDesignate_block_invoke;
    v20[3] = &unk_1E82D0DF0;
    v20[4] = &v21;
    v20[5] = &v25;
    [v10 designateKey:v8 designation:v11 handoffToken:v7 completion:v20];

    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_DEFAULT, "Hello???", buf, 2u);
    }

    v13 = v26;
    if ((v22[3] & 1) == 0 && !v26[5])
    {
      v14 = SESDefaultLogObject();
      v15 = SESCreateAndLogError();
      v16 = v26[5];
      v26[5] = v15;

      v13 = v26;
    }

    if (a4)
    {
      *a4 = v13[5];
      v13 = v26;
    }

    v17 = v13[5] == 0;
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1C7BA7918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL SESKeyRemoveDesignation(uint64_t a1, void *a2)
{
  v4 = +[SESClient sharedClient];
  v5 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:a2];

  if (v5)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESKeyRemoveDesignation_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v13;
    v12[5] = &v17;
    [v5 designateKey:0 designation:v6 handoffToken:0 completion:v12];

    if ((v14[3] & 1) == 0)
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v18[5];
      v18[5] = v8;
    }

    v10 = v18[5] == 0;
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1C7BA7B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void ___signPrecomputedDigestWithProxy_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1C7BA7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BAAA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BACDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB2004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BB2850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB2B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB2F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB3338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB36F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BB87A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 120));
  objc_destroyWeak((v32 - 112));
  objc_sync_exit(v31);
  _Unwind_Resume(a1);
}

void sub_1C7BB8A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BB8C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SESEndPointAppletCleanup(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v6 = +[SESClient sharedClient];
    v7 = v25;
    obj = v25[5];
    v8 = [(SESClient *)v6 synchronousRemoteObjectProxyWithError:?];
    objc_storeStrong(v7 + 5, obj);

    if (v8 && !v25[5])
    {
      v12 = [SEProxy withSession:v3 seid:v5];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __SESEndPointAppletCleanup_block_invoke;
      v18[3] = &unk_1E82D0DF0;
      v18[4] = &v20;
      v18[5] = &v24;
      [v8 cleanupAppletsWithNoEndpoints:v12 reply:v18];

      v13 = v25;
      if ((v21[3] & 1) == 0 && !v25[5])
      {
        v14 = SESDefaultLogObject();
        v15 = SESCreateAndLogError();
        v16 = v25[5];
        v25[5] = v15;

        v13 = v25;
      }

      v10 = v13[5];
    }

    else
    {
      v9 = SESDefaultLogObject();
      v10 = SESCreateAndLogError();
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
  }

  return v10;
}

void sub_1C7BB8FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

id SESEndPointTSMDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__3;
    v27 = __Block_byref_object_dispose__3;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = 0;
    v8 = +[SESClient sharedClient];
    v9 = v24;
    obj = v24[5];
    v10 = [(SESClient *)v8 synchronousRemoteObjectProxyWithError:?];
    objc_storeStrong(v9 + 5, obj);

    if (v10 && !v24[5])
    {
      v13 = [SEProxy withSession:v5 seid:v7];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __SESEndPointTSMDictionary_block_invoke;
      v15[3] = &unk_1E82D1198;
      v15[4] = &v17;
      v15[5] = &v23;
      [v10 getSESEndpointTSMDictionary:v13 reply:v15];

      if (a3)
      {
        *a3 = v24[5];
      }

      v11 = v18[5];
    }

    else if (a3)
    {
      SESEnsureError();
      *a3 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    if (a3)
    {
      v12 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();
    }

    v11 = 0;
  }

  return v11;
}

void sub_1C7BB9288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointTSMDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void SESClientSetMachServiceName(void *result, uint64_t a2)
{
  if (result)
  {
    SESClientSetMachServiceName_cold_1(result);
  }
}

void SESPrivateLogSERProtocolDetails(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    Name = protocol_getName(v6);
    if (v7)
    {
      v9 = [v7 conformsToProtocol:v6];
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544386;
        *v25 = v5;
        *&v25[8] = 2050;
        *&v25[10] = v6;
        *&v25[18] = 2082;
        *&v25[20] = Name;
        v26 = 2114;
        v27 = v7;
        v28 = 1026;
        v29 = v9;
        _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] SERProto %{public}p/%{public}s candidate %{public}@ conforms %{public}d", buf, 0x30u);
      }

      outCount = 0;
      v11 = objc_opt_class();
      v12 = class_copyProtocolList(v11, &outCount);
      v13 = SESDefaultLogObject();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v25 = outCount;
          _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_INFO, "Candidate conforms to %u protocols:", buf, 8u);
        }

        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            v16 = SESDefaultLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = v12[i];
              v18 = protocol_getName(v17);
              *buf = 67109634;
              *v25 = i;
              *&v25[4] = 2048;
              *&v25[6] = v17;
              *&v25[14] = 2080;
              *&v25[16] = v18;
              _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_INFO, "    %u : protocol %p/%s", buf, 0x1Cu);
            }
          }
        }

        free(v12);
        goto LABEL_23;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Failed to class_copyProtocolList";
        v21 = v14;
        v22 = 2;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *v25 = v5;
        *&v25[8] = 2050;
        *&v25[10] = v6;
        *&v25[18] = 2082;
        *&v25[20] = Name;
        v20 = "[%{public}@] SERProto %{public}p/%{public}s";
        v21 = v14;
        v22 = 32;
LABEL_21:
        _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
      }
    }

    goto LABEL_23;
  }

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *v25 = v5;
    _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] SERProto nil protocol", buf, 0xCu);
  }

LABEL_23:
}

void sub_1C7BBA4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BBA868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBABF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBCE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_1C7BBD5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose((v20 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BBD98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBDD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBE4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBE828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BBEC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SESExternalProviderCredentialPresent()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced"];
  v1 = [v0 BOOLForKey:@"vienna.credential.present"];

  return v1;
}

uint64_t SESEndPointCAList(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = SESDefaultLogObject();
    *a1 = SESCreateAndLogError();
  }

  return 0;
}

uint64_t SESEndPointCreateCA(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = SESDefaultLogObject();
    *a3 = SESCreateAndLogError();
  }

  return 0;
}

uint64_t SESEndPointDeleteCA(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = SESDefaultLogObject();
    *a2 = SESCreateAndLogError();
  }

  return 0;
}

void sub_1C7BC1334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 64));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1C7BC1A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BC1DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BC2130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BC24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BC2860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BC2E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SESEndPointPreWarmForAlisha(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[SESClient sharedClient];
  v8 = 0;
  v6 = [(SESClient *)v5 remoteObjectProxyWithError:?];
  v7 = v8;
  if (v7)
  {
    v4[2](v4, v7);
  }

  else
  {
    [v6 preWarmAlisha:v3 reply:v4];
  }
}

id SESEndPointListWithSession(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v24 + 5);
  obj = v24[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  v12 = v24[5];
  if (v12)
  {
    v13 = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  else
  {
    if (v7)
    {
      v14 = v8 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = [SEProxy withSession:v7 seid:v8];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SESEndPointListWithSession_block_invoke;
    v21[3] = &unk_1E82D0C38;
    v21[4] = &v29;
    v21[5] = &v23;
    [v11 listEndPointsWithProxy:v16 mandatoryReconciliation:a3 reply:v21];
    if (v15)
    {
    }

    if (!v30[5] && !v24[5])
    {
      v17 = SESDefaultLogObject();
      v18 = SESCreateAndLogError();
      v19 = v24[5];
      v24[5] = v18;
    }

    if (a4)
    {
      *a4 = v24[5];
    }

    v13 = v30[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

void sub_1C7BC3720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SESEndPointListWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointFilterDigitalCarKeys(void *a1, void *a2)
{
  v3 = a1;
  v14 = 0;
  v4 = SESEndPointListWithSession(0, 0, 1, &v14);
  v5 = v14;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = v5;
      v8 = 0;
      *a2 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [v4 filterMap:&__block_literal_global_7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndPointFilterDigitalCarKeys_block_invoke_2;
    v12[3] = &unk_1E82D14E0;
    v13 = v9;
    v10 = v9;
    v8 = [v3 filter:v12];
  }

  return v8;
}

id __SESEndPointFilterDigitalCarKeys_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 endPointType] == 1)
  {
    v3 = [v2 revocationAttestation];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [v2 publicKeyIdentifier];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __SESEndPointFilterDigitalCarKeys_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hexStringAsData];
  v4 = [v2 containsObject:v3];

  return v4;
}

id SESEndPointCreateForAlishaWithSession(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = a5;
  v44 = a6;
  v43 = a7;
  v42 = a8;
  v41 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__8;
  v62 = __Block_byref_object_dispose__8;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__8;
  v56 = __Block_byref_object_dispose__8;
  v57 = 0;
  v29 = +[SESClient sharedClient];
  v30 = v53;
  v51 = v53[5];
  v31 = [(SESClient *)v29 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v30 + 5, v51);

  v32 = v53[5];
  if (v32)
  {
    v33 = 0;
    if (a16)
    {
      *a16 = v32;
    }
  }

  else
  {
    if (v49)
    {
      v34 = v48 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = !v34;
    if (v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = [SEProxy withSession:"withSession:seid:" seid:?];
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __SESEndPointCreateForAlishaWithSession_block_invoke;
    v50[3] = &unk_1E82D1508;
    v50[4] = &v58;
    v50[5] = &v52;
    [v31 createAlishaEndpointWithProxy:v36 identifier:v47 authorityIdentifier:v46 subjectIdentifier:v45 configuration:v44 readerIdentifier:v43 readerPublicKey:v42 readerInformation:v41 startDate:v23 endDate:v24 keyIdentifier:v25 authorizedKeys:v26 confidentialMailBoxSize:v27 privateMailBoxSize:v28 reply:v50];
    if (v35)
    {
    }

    if (!v59[5] && !v53[5])
    {
      v37 = SESDefaultLogObject();
      v38 = SESCreateAndLogError();
      v39 = v53[5];
      v53[5] = v38;
    }

    if (a16)
    {
      *a16 = v53[5];
    }

    v33 = v59[5];
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v33;
}

void sub_1C7BC3DC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointCreateForAlishaWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateForHydraWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v25 + 5);
  obj = v25[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v25[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    if (v7)
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v7 seid:v8];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointCreateForHydraWithSession_block_invoke;
    v22[3] = &unk_1E82D1508;
    v22[4] = &v30;
    v22[5] = &v24;
    [v12 createHydraEndpointWithProxy:v17 serverParams:v9 reply:v22];
    if (v16)
    {
    }

    if (!v31[5] && !v25[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v25[5];
      v25[5] = v19;
    }

    if (a4)
    {
      *a4 = v25[5];
    }

    v14 = v31[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void sub_1C7BC412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESEndPointCreateForHydraWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateForLyonHydraWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v25 + 5);
  obj = v25[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v25[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    if (v7)
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v7 seid:v8];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointCreateForLyonHydraWithSession_block_invoke;
    v22[3] = &unk_1E82D1508;
    v22[4] = &v30;
    v22[5] = &v24;
    [v12 createLyonHydraEndpointWithProxy:v17 serverParams:v9 reply:v22];
    if (v16)
    {
    }

    if (!v31[5] && !v25[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v25[5];
      v25[5] = v19;
    }

    if (a4)
    {
      *a4 = v25[5];
    }

    v14 = v31[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void sub_1C7BC448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESEndPointCreateForLyonHydraWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateForHomeWithSession(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8;
  v37 = __Block_byref_object_dispose__8;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v13 = +[SESClient sharedClient];
  v14 = (v28 + 5);
  obj = v28[5];
  v15 = [(SESClient *)v13 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v14, obj);

  v16 = v28[5];
  if (v16)
  {
    v17 = 0;
    if (a5)
    {
      *a5 = v16;
    }
  }

  else
  {
    if (v9)
    {
      v18 = v10 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = [SEProxy withSession:v9 seid:v10];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __SESEndPointCreateForHomeWithSession_block_invoke;
    v25[3] = &unk_1E82D1508;
    v25[4] = &v33;
    v25[5] = &v27;
    [v15 createLocalEndpointWithProxy:v20 readerIdentifier:v11 readerPublicKey:v12 reply:v25];
    if (v19)
    {
    }

    if (!v34[5] && !v28[5])
    {
      v21 = SESDefaultLogObject();
      v22 = SESCreateAndLogError();
      v23 = v28[5];
      v28[5] = v22;
    }

    if (a5)
    {
      *a5 = v28[5];
    }

    v17 = v34[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

void sub_1C7BC4804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESEndPointCreateForHomeWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateForLyonWithSession(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__8;
  v43 = __Block_byref_object_dispose__8;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8;
  v37 = __Block_byref_object_dispose__8;
  v38 = 0;
  v19 = +[SESClient sharedClient];
  v20 = (v34 + 5);
  obj = v34[5];
  v21 = [(SESClient *)v19 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v20, obj);

  v22 = v34[5];
  if (v22)
  {
    v23 = 0;
    if (a7)
    {
      *a7 = v22;
    }
  }

  else
  {
    if (v13)
    {
      v24 = v14 == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = [SEProxy withSession:v13 seid:v14];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __SESEndPointCreateForLyonWithSession_block_invoke;
    v31[3] = &unk_1E82D1508;
    v31[4] = &v39;
    v31[5] = &v33;
    [v21 createLyonEndpointWithProxy:v26 readerGroupIdentifier:v15 readerPublicKey:v16 homeUUID:v18 privateMailboxSize:v17 reply:v31];
    if (v25)
    {
    }

    if (!v40[5] && !v34[5])
    {
      v27 = SESDefaultLogObject();
      v28 = SESCreateAndLogError();
      v29 = v34[5];
      v34[5] = v28;
    }

    if (a7)
    {
      *a7 = v34[5];
    }

    v23 = v40[5];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v23;
}

void sub_1C7BC4BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointCreateForLyonWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointRevoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__8;
  v38 = __Block_byref_object_dispose__8;
  v39 = 0;
  v10 = +[SESClient sharedClient];
  v11 = v35;
  obj = v35[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11 + 5, obj);

  v13 = v35[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__8;
    v31 = __Block_byref_object_dispose__8;
    v32 = 0;
    v15 = getEndpointQueue(0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SESEndPointRevoke_block_invoke;
    block[3] = &unk_1E82D1530;
    v21 = v12;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    v25 = &v27;
    v26 = &v34;
    dispatch_sync(v15, block);

    if (!v28[5] && !v35[5])
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
      v18 = v35[5];
      v35[5] = v17;
    }

    if (a4)
    {
      *a4 = v35[5];
    }

    v14 = v28[5];

    _Block_object_dispose(&v27, 8);
  }

  _Block_object_dispose(&v34, 8);

  return v14;
}

void sub_1C7BC4FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 128), 8);
  _Unwind_Resume(a1);
}

id getEndpointQueue(uint64_t a1)
{
  if (getEndpointQueue_onceToken != -1)
  {
    getEndpointQueue_cold_1();
  }

  v2 = getEndpointQueue_endpointQueue;

  return v2;
}

uint64_t __SESEndPointRevoke_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SESEndPointRevoke_block_invoke_2;
  v6[3] = &unk_1E82D0E40;
  v7 = *(a1 + 64);
  return [v2 revokeEndPointWithIdentifier:v1 nonce:v3 metaData:v4 reply:v6];
}

void __SESEndPointRevoke_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id updateLyonCredentialDocumentStatusWithSession(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = 0;
  v18 = +[SESClient sharedClient];
  v19 = (v38 + 5);
  obj = v38[5];
  v20 = [(SESClient *)v18 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v19, obj);

  v21 = v38[5];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    if (v13)
    {
      v23 = v14 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = [SEProxy withSession:v13 seid:v14];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __updateLyonCredentialDocumentStatusWithSession_block_invoke;
    v31[3] = &unk_1E82D0DF0;
    v31[4] = &v32;
    v31[5] = &v37;
    [v20 updateLyonCredentialDocumentStatusWithProxy:v25 endpointIdentifier:v15 accessDocumentPresent:a4 accessDocumentSignedTimestamp:v16 revocationDocumentPresent:a6 revocationDocumentSignedTimestamp:v17 reply:v31];
    if (v24)
    {
    }

    v26 = v38;
    if ((v33[3] & 1) == 0 && !v38[5])
    {
      v27 = SESDefaultLogObject();
      v28 = SESCreateAndLogError();
      v29 = v38[5];
      v38[5] = v28;

      v26 = v38;
    }

    v22 = v26[5];
    _Block_object_dispose(&v32, 8);
  }

  _Block_object_dispose(&v37, 8);

  return v22;
}

void sub_1C7BC5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL SESEndPointRemoteTerminationRequestFromTSM(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__8;
  v46 = __Block_byref_object_dispose__8;
  v47 = 0;
  v16 = +[SESClient sharedClient];
  v17 = v43;
  obj = v43[5];
  v18 = [(SESClient *)v16 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v17 + 5, obj);

  v19 = v43[5];
  if (v19)
  {
    v20 = 0;
    if (a6)
    {
      *a6 = v19;
    }
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__8;
    v39 = __Block_byref_object_dispose__8;
    v40 = 0;
    v21 = getEndpointQueue(0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SESEndPointRemoteTerminationRequestFromTSM_block_invoke;
    block[3] = &unk_1E82D1558;
    v27 = v18;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = &v35;
    v34 = &v42;
    dispatch_sync(v21, block);

    if (!v36[5] && !v43[5])
    {
      v22 = SESDefaultLogObject();
      v23 = SESCreateAndLogError();
      v24 = v43[5];
      v43[5] = v23;
    }

    if (a6)
    {
      *a6 = v43[5];
    }

    v20 = v36[5] != 0;

    _Block_object_dispose(&v35, 8);
  }

  _Block_object_dispose(&v42, 8);
  return v20;
}

void sub_1C7BC5758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 144), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointRemoteTerminationRequestFromTSM_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [SEProxy withSession:*(a1 + 40) seid:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SESEndPointRemoteTerminationRequestFromTSM_block_invoke_2;
  v7[3] = &unk_1E82D0E40;
  v8 = *(a1 + 80);
  [v2 remoteTerminationRequestWithProxy:v3 remoteTerminationRequest:v4 publicKeyIdentifier:v5 taskID:v6 reply:v7];
}

void __SESEndPointRemoteTerminationRequestFromTSM_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

BOOL SESEndPointDelete(void *a1, void *a2)
{
  v3 = a1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v4 = +[SESClient sharedClient];
  v5 = (v21 + 5);
  obj = v21[5];
  v6 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v5, obj);

  v7 = v21[5];
  if (v7)
  {
    v8 = 0;
    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __SESEndPointDelete_block_invoke;
    v14[3] = &unk_1E82D0DF0;
    v14[4] = &v15;
    v14[5] = &v20;
    [v6 deleteEndPointWithProxy:0 identifier:v3 mustBeTerminated:0 reply:v14];
    v9 = v21;
    if ((v16[3] & 1) == 0 && !v21[5])
    {
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v12 = v21[5];
      v21[5] = v11;

      v9 = v21;
    }

    if (a2)
    {
      *a2 = v9[5];
      v9 = v21;
    }

    v8 = v9[5] == 0;
    _Block_object_dispose(&v15, 8);
  }

  _Block_object_dispose(&v20, 8);
  return v8;
}

void sub_1C7BC5ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL _SESEndPointDeleteWithSession(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v30 + 5);
  obj = v30[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  v15 = v30[5];
  if (v15)
  {
    v16 = 0;
    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v17 = [SEProxy withSession:v9 seid:v10];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___SESEndPointDeleteWithSession_block_invoke;
    v23[3] = &unk_1E82D0DF0;
    v23[4] = &v24;
    v23[5] = &v29;
    [v14 deleteEndPointWithProxy:v17 identifier:v11 mustBeTerminated:a4 ^ 1u reply:v23];

    v18 = v30;
    if ((v25[3] & 1) == 0 && !v30[5])
    {
      v19 = SESDefaultLogObject();
      v20 = SESCreateAndLogError();
      v21 = v30[5];
      v30[5] = v20;

      v18 = v30;
    }

    if (a5)
    {
      *a5 = v18[5];
      v18 = v30;
    }

    v16 = v18[5] == 0;
    _Block_object_dispose(&v24, 8);
  }

  _Block_object_dispose(&v29, 8);
  return v16;
}

void sub_1C7BC5D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndPointUpdate(uint64_t a1, uint64_t a2)
{
  v2 = SESDefaultLogObject();
  v3 = SESCreateAndLogError();

  return v3;
}

id SESEndPointUpdateWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v5 = +[SESClient sharedClient];
  v6 = v29;
  obj = v29[5];
  v7 = [(SESClient *)v5 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v6 + 5, obj);

  v9 = v29[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = getEndpointQueue(v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SESEndPointUpdateWithBlock_block_invoke;
    block[3] = &unk_1E82D15A8;
    v18 = v7;
    v21 = &v28;
    v19 = v3;
    v20 = v4;
    v22 = &v24;
    dispatch_sync(v11, block);

    v12 = v29;
    if ((v25[3] & 1) == 0 && !v29[5])
    {
      v13 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      v15 = v29[5];
      v29[5] = v14;

      v12 = v29;
    }

    v10 = v12[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v10;
}

void sub_1C7BC60A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointUpdateWithBlock_block_invoke(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__8;
  v20[4] = __Block_byref_object_dispose__8;
  v21 = 0;
  v2 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __SESEndPointUpdateWithBlock_block_invoke_2;
  v19[3] = &unk_1E82D0C38;
  v3 = *(a1 + 56);
  v19[4] = v20;
  v19[5] = v3;
  [v2 listEndPointsWithProxy:0 mandatoryReconciliation:1 reply:v19];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v4 = [*(a1 + 40) hexStringAsData];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __SESEndPointUpdateWithBlock_block_invoke_3;
    v17 = &unk_1E82D1580;
    v5 = v4;
    v18 = v5;
    v6 = Find();
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
      v7 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __SESEndPointUpdateWithBlock_block_invoke_4;
      v12[3] = &unk_1E82D0DF0;
      v13 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
      [v7 updateEndpoint:v6 reply:v12];
    }

    else
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  _Block_object_dispose(v20, 8);
}

void __SESEndPointUpdateWithBlock_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __SESEndPointUpdateWithBlock_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 publicKeyIdentifier];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

BOOL SESEndPointConfigureWithProxy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v18 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__8;
  v63 = __Block_byref_object_dispose__8;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v24 = +[SESClient sharedClient];
  v25 = v60;
  obj = v60[5];
  v26 = [(SESClient *)v24 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v25 + 5, obj);

  v27 = v60[5];
  if (v27)
  {
    v28 = v18;
    v29 = 0;
    if (a11)
    {
      *a11 = v27;
    }
  }

  else
  {
    v30 = getEndpointQueue(0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SESEndPointConfigureWithProxy_block_invoke;
    block[3] = &unk_1E82D16E8;
    v41 = v26;
    v28 = v18;
    v42 = v18;
    v43 = v39;
    v44 = v38;
    v45 = v37;
    v46 = v19;
    v47 = v36;
    v48 = v21;
    v49 = v20;
    v50 = v22;
    v51 = v23;
    v52 = &v55;
    v53 = &v59;
    dispatch_sync(v30, block);

    v31 = v60;
    if ((v56[3] & 1) == 0 && !v60[5])
    {
      v32 = SESDefaultLogObject();
      v33 = SESCreateAndLogError();
      v34 = v60[5];
      v60[5] = v33;

      v31 = v60;
      v28 = v18;
    }

    if (a11)
    {
      *a11 = v31[5];
      v31 = v60;
    }

    v29 = v31[5] == 0;
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  return v29;
}

void sub_1C7BC6800(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

BOOL SESEndPointConfigureMailBoxesWithSession(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 && a2)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [SEProxy withSession:a1 seid:a2];
    v15 = SESEndPointConfigureWithProxy(v14, v13, v12, v11, 0, 0, 0, 0, 0, 0, a6);
  }

  else
  {
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = SESEndPointConfigureWithProxy(0, v14, v13, v12, 0, 0, 0, 0, 0, 0, a6);
  }

  return v15;
}

BOOL SESEndPointConfigureNFCExpressInLPM(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v20 = v9 != 0;
    v21 = 1024;
    v22 = v10 != 0;
    _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_INFO, "session %d seid %d", buf, 0xEu);
  }

  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = [SEProxy withSession:v9 seid:v10];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v17 = SESEndPointConfigureWithProxy(v15, v11, 0, 0, 0, 0, 0, 0, 0, v16, a5);

  if (v14)
  {
  }

  return v17;
}

BOOL SESEndPointEnableVolatileVisibilityOnContactless(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:1];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, v5, 0, 0, 0, 0, a2);

  return v6;
}

BOOL SESEndPointDisableVolatileVisibilityOnContactless(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:0];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, v5, 0, 0, 0, 0, a2);

  return v6;
}

BOOL SESEndPointEnablePersistentVisibilityOnContactless(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:1];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, v5, 0, 0, 0, 0, 0, a2);

  return v6;
}

BOOL SESEndPointDisablePersistentVisibilityOnContactless(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:0];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, v5, 0, 0, 0, 0, 0, a2);

  return v6;
}

BOOL SESEndPointEnableVolatileVisibilityOnWired(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:1];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, 0, 0, v5, 0, 0, a2);

  return v6;
}

BOOL SESEndPointDisableVolatileVisibilityOnWired(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:0];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, 0, 0, v5, 0, 0, a2);

  return v6;
}

BOOL SESEndPointEnablePersistentVisibilityOnWired(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:1];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, 0, v5, 0, 0, 0, a2);

  return v6;
}

BOOL SESEndPointDisablePersistentVisibilityOnWired(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithBool:0];
  v6 = SESEndPointConfigureWithProxy(0, v4, 0, 0, 0, 0, v5, 0, 0, 0, a2);

  return v6;
}

void *SESEndPointConfigureKeySlot(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length] && objc_msgSend(v6, "length") < 9)
  {
    a3 = SESEndPointConfigureWithProxy(0, v5, 0, 0, 0, 0, 0, 0, v6, 0, a3);
  }

  else if (a3)
  {
    v7 = SESDefaultLogObject();
    *a3 = SESCreateAndLogError();

    a3 = 0;
  }

  return a3;
}

BOOL SESEndPointSetPrivateDataWithSession(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if ((v11 != 0) == (v12 != 0))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__8;
    v39 = __Block_byref_object_dispose__8;
    v40 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v17 = +[SESClient sharedClient];
    v18 = (v36 + 5);
    obj = v36[5];
    v19 = [(SESClient *)v17 synchronousRemoteObjectProxyWithError:?];
    objc_storeStrong(v18, obj);

    v20 = v36[5];
    if (v20)
    {
      v16 = 0;
      if (a6)
      {
        *a6 = v20;
      }
    }

    else
    {
      if (v11)
      {
        v21 = v12 == 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = !v21;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = [SEProxy withSession:v11 seid:v12];
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __SESEndPointSetPrivateDataWithSession_block_invoke;
      v29[3] = &unk_1E82D0DF0;
      v29[4] = &v31;
      v29[5] = &v35;
      [v19 setPrivateDataWithProxy:v23 identifier:v13 privateData:v14 privateDataOffset:a5 reply:v29];
      if (v22)
      {
      }

      v24 = v36;
      if ((v32[3] & 1) == 0 && !v36[5])
      {
        v25 = SESDefaultLogObject();
        v26 = SESCreateAndLogError();
        v27 = v36[5];
        v36[5] = v26;

        v24 = v36;
      }

      if (a6)
      {
        *a6 = v24[5];
        v24 = v36;
      }

      v16 = v24[5] == 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  else
  {
    if (a6)
    {
      v15 = SESDefaultLogObject();
      *a6 = SESCreateAndLogError();
    }

    v16 = 0;
  }

  return v16;
}

void sub_1C7BC736C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndPointGetPrivateDataWithSession(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if ((v11 != 0) == (v12 != 0))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__8;
    v39 = __Block_byref_object_dispose__8;
    v40 = 0;
    v16 = +[SESClient sharedClient];
    v17 = (v36 + 5);
    obj = v36[5];
    v18 = [(SESClient *)v16 synchronousRemoteObjectProxyWithError:?];
    objc_storeStrong(v17, obj);

    v19 = v36[5];
    if (v19)
    {
      v15 = 0;
      if (a6)
      {
        *a6 = v19;
      }
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__8;
      v32 = __Block_byref_object_dispose__8;
      v33 = 0;
      if (v11)
      {
        v20 = v12 == 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = !v20;
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = [SEProxy withSession:v11 seid:v12];
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __SESEndPointGetPrivateDataWithSession_block_invoke;
      v27[3] = &unk_1E82D0E40;
      v27[4] = &v28;
      v27[5] = &v35;
      [v18 getPrivateDataWithProxy:v22 identifier:v13 privateDataOffset:a4 privateDataLength:a5 reply:v27];
      if (v21)
      {
      }

      if (!v29[5] && !v36[5])
      {
        v23 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        v25 = v36[5];
        v36[5] = v24;
      }

      if (a6)
      {
        *a6 = v36[5];
      }

      v15 = v29[5];
      _Block_object_dispose(&v28, 8);
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    if (a6)
    {
      v14 = SESDefaultLogObject();
      *a6 = SESCreateAndLogError();
    }

    v15 = 0;
  }

  return v15;
}

void sub_1C7BC7704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointGetPrivateDataWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateEncryptionKeyWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v31 + 5);
  obj = v31[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v31[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    if (v8)
    {
      v15 = v9 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v8 seid:v9];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointCreateEncryptionKeyWithSession_block_invoke;
    v22[3] = &unk_1E82D0E40;
    v22[4] = &v24;
    v22[5] = &v30;
    [v12 createEncryptionKeyEndPointWithProxy:v17 identifier:v7 reply:v22];
    if (v16)
    {
    }

    if (!v25[5] && !v31[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v31[5];
      v31[5] = v19;
    }

    if (a4)
    {
      *a4 = v31[5];
    }

    v14 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void sub_1C7BC7A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESEndPointCreateEncryptionKeyWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

BOOL SESEndPointSetConfidentialDataWithOffset(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v29 + 5);
  obj = v29[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  v15 = v29[5];
  if (v15)
  {
    v16 = 0;
    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointSetConfidentialDataWithOffset_block_invoke;
    v22[3] = &unk_1E82D0DF0;
    v22[4] = &v24;
    v22[5] = &v28;
    [v14 setConfidentialDataEndPointWithIdentifier:v9 senderEphemeralPublicKey:v10 encryptedData:v11 offset:a4 reply:v22];
    v17 = v29;
    if ((v25[3] & 1) == 0 && !v29[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v29[5];
      v29[5] = v19;

      v17 = v29;
    }

    if (a5)
    {
      *a5 = v17[5];
      v17 = v29;
    }

    v16 = v17[5] == 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void sub_1C7BC7D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL SESEndPointUpdateHydraMailboxes(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__8;
  v36 = __Block_byref_object_dispose__8;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v13 = +[SESClient sharedClient];
  v14 = (v33 + 5);
  obj = v33[5];
  v15 = [(SESClient *)v13 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v14, obj);

  v16 = v33[5];
  if (v16)
  {
    v17 = 0;
    if (a5)
    {
      *a5 = v16;
    }
  }

  else
  {
    if (v10)
    {
      v18 = v11 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = [SEProxy withSession:v10 seid:v11];
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __SESEndPointUpdateHydraMailboxes_block_invoke;
    v26[3] = &unk_1E82D0DF0;
    v26[4] = &v28;
    v26[5] = &v32;
    [v15 updateHydraMailboxesWithProxy:v20 identifier:v9 encryptedSEBlob:v12 reply:v26];
    if (v19)
    {
    }

    v21 = v33;
    if ((v29[3] & 1) == 0 && !v33[5])
    {
      v22 = SESDefaultLogObject();
      v23 = SESCreateAndLogError();
      v24 = v33[5];
      v33[5] = v23;

      v21 = v33;
    }

    if (a5)
    {
      *a5 = v21[5];
      v21 = v33;
    }

    v17 = v21[5] == 0;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

void sub_1C7BC803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndPointSignDataWithAuth(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v28 + 5);
  obj = v28[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SESEndPointSignDataWithAuth_block_invoke;
    v19[3] = &unk_1E82D15D0;
    v19[4] = &v21;
    v19[5] = &v27;
    [v12 signatureWithEndPointIdentifier:v7 metaDataHash:v8 authorization:v9 reply:v19];
    if (!v22[5] && !v28[5])
    {
      v15 = SESDefaultLogObject();
      v16 = SESCreateAndLogError();
      v17 = v28[5];
      v28[5] = v16;
    }

    if (a4)
    {
      *a4 = v28[5];
    }

    v14 = v22[5];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void sub_1C7BC831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void __SESEndPointSignDataWithAuth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointSignISO18013DataWithAuth(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v7 = +[SESClient sharedClient];
  v8 = v25;
  obj = v25[5];
  v9 = [(SESClient *)v7 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v8 + 5, obj);

  v10 = v25[5];
  if (v10)
  {
    v11 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __SESEndPointSignISO18013DataWithAuth_block_invoke;
    v16[3] = &unk_1E82D15D0;
    v16[4] = &v18;
    v16[5] = &v24;
    [v9 signatureISO18013WithEndPointIdentifier:v5 toBeSigned:v6 reply:v16];
    if (!v19[5] && !v25[5])
    {
      v12 = SESDefaultLogObject();
      v13 = SESCreateAndLogError();
      v14 = v25[5];
      v25[5] = v13;
    }

    if (a3)
    {
      *a3 = v25[5];
    }

    v11 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void sub_1C7BC8628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointSignISO18013DataWithAuth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCreateAuthorizationID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v7 = +[SESClient sharedClient];
  v8 = v25;
  obj = v25[5];
  v9 = [(SESClient *)v7 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v8 + 5, obj);

  v10 = v25[5];
  if (v10)
  {
    v11 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __SESEndPointCreateAuthorizationID_block_invoke;
    v16[3] = &unk_1E82D15F8;
    v16[4] = &v18;
    v16[5] = &v24;
    [v9 createEndPointAuthorizationID:v5 userAuth:v6 reply:v16];
    if (!v19[5] && !v25[5])
    {
      v12 = SESDefaultLogObject();
      v13 = SESCreateAndLogError();
      v14 = v25[5];
      v25[5] = v13;
    }

    if (a3)
    {
      *a3 = v25[5];
    }

    v11 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void sub_1C7BC8934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointCreateAuthorizationID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointListAuthorizations(void *a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v20;
  obj = v20[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v20[5];
  if (v5)
  {
    v6 = 0;
    if (a1)
    {
      *a1 = v5;
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SESEndPointListAuthorizations_block_invoke;
    v11[3] = &unk_1E82D0C38;
    v11[4] = &v13;
    v11[5] = &v19;
    [v4 listEndPointAuthorizations:v11];
    if (!v14[5] && !v20[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v20[5];
      v20[5] = v8;
    }

    if (a1)
    {
      *a1 = v20[5];
    }

    v6 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

void sub_1C7BC8C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointListAuthorizations_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointDeleteAuthorizationID(void *a1)
{
  v1 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v19;
  obj = v19[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v19[5];
  if (!v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndPointDeleteAuthorizationID_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v4 deleteEndPointAuthorizationID:v1 reply:v12];
    v6 = v19;
    if ((v15[3] & 1) == 0 && !v19[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v19[5];
      v19[5] = v8;

      v6 = v19;
    }

    v5 = v6[5];
  }

  v10 = v5;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void sub_1C7BC8EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id SESEndPointAuthorizeWithAuth(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, __int16 a7, __int16 a8, void *a9, void *a10, void *a11)
{
  HIWORD(v12) = a8;
  LOWORD(v12) = a7;
  return SESEndPointAuthorizeWithSession(0, 0, 1u, a1, a2, a3, a4, a5, a6, 0, v12, a9, a10, a11);
}

id SESEndPointAuthorizeWithSession(void *a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, int a11, void *a12, void *a13, void *a14)
{
  v43 = a1;
  v20 = a2;
  v21 = a4;
  v42 = a5;
  v47 = a6;
  v46 = a7;
  v45 = a8;
  v44 = a9;
  v22 = a10;
  v23 = a12;
  v24 = a13;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__8;
  v60 = __Block_byref_object_dispose__8;
  v61 = 0;
  v25 = +[SESClient sharedClient];
  v26 = v57;
  v55 = v57[5];
  v27 = [(SESClient *)v25 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v26 + 5, v55);

  v28 = v57[5];
  if (v28)
  {
    v29 = v43;
    v30 = v20;
    v31 = 0;
    if (a14)
    {
      *a14 = v28;
    }

    v34 = v42;
  }

  else
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__8;
    v53 = __Block_byref_object_dispose__8;
    v54 = 0;
    v29 = v43;
    v30 = v20;
    if (v43)
    {
      v32 = v20 == 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = !v32;
    if (v32)
    {
      v35 = 0;
      v34 = v42;
    }

    else
    {
      [SEProxy withSession:v43 seid:v20];
      v35 = v34 = v42;
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __SESEndPointAuthorizeWithSession_block_invoke;
    v48[3] = &unk_1E82D1620;
    v48[4] = &v49;
    v48[5] = &v56;
    LODWORD(v40) = a11;
    [v27 authorizeEndPointWithProxy:v35 version:a3 identifier:v21 externalCA:v34 instanceCA:v47 endpointCertificate:v46 encryptionKeyAttestation:v45 bindingAttestation:v44 bindingAttestationToken:v22 confidentialDataOffset:v40 confidentialDataLength:v23 metaData:v24 authorizationID:v48 reply:?];
    if (v33)
    {
    }

    if (!v50[5] && !v57[5])
    {
      v36 = SESDefaultLogObject();
      v37 = SESCreateAndLogError();
      v38 = v57[5];
      v57[5] = v37;
    }

    if (a14)
    {
      *a14 = v57[5];
    }

    v31 = v50[5];
    _Block_object_dispose(&v49, 8);
  }

  _Block_object_dispose(&v56, 8);

  return v31;
}

void sub_1C7BC9318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

id SESEndPointAuthorizeWithAuthEx(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, __int16 a8, __int16 a9, void *a10, void *a11, void *a12)
{
  HIWORD(v13) = a9;
  LOWORD(v13) = a8;
  return SESEndPointAuthorizeWithSession(0, 0, 1u, a1, a2, a3, a4, a5, a6, a7, v13, a10, a11, a12);
}

id SESEndpointPreAuthorizeWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = +[SESClient sharedClient];
  v12 = (v31 + 5);
  obj = v31[5];
  v13 = [(SESClient *)v11 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v12, obj);

  v14 = v31[5];
  if (!v14)
  {
    if (v7)
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v7 seid:v8];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __SESEndpointPreAuthorizeWithSession_block_invoke;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v26;
    v24[5] = &v30;
    [v13 preAuthorizeEndpointWithProxy:v17 keyIdentifier:v9 bindingAttestation:v10 reply:v24];
    if (v16)
    {
    }

    v18 = v31;
    if ((v27[3] & 1) == 0 && !v31[5])
    {
      v19 = SESDefaultLogObject();
      v20 = SESCreateAndLogError();
      v21 = v31[5];
      v31[5] = v20;

      v18 = v31;
    }

    v14 = v18[5];
  }

  v22 = v14;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v22;
}

void sub_1C7BC9620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointAuthorizeWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointPrivacyEncryption(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v7 = +[SESClient sharedClient];
  v8 = v25;
  obj = v25[5];
  v9 = [(SESClient *)v7 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v8 + 5, obj);

  v10 = v25[5];
  if (v10)
  {
    v11 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __SESEndPointPrivacyEncryption_block_invoke;
    v16[3] = &unk_1E82D1648;
    v16[4] = &v18;
    v16[5] = &v24;
    [v9 privacyEncryptDataWithEndPoint:v5 data:v6 reply:v16];
    if (!v19[5] && !v25[5])
    {
      v12 = SESDefaultLogObject();
      v13 = SESCreateAndLogError();
      v14 = v25[5];
      v25[5] = v13;
    }

    if (a3)
    {
      *a3 = v25[5];
    }

    v11 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void sub_1C7BC994C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointPrivacyEncryption_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointPrivacyDecryption(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  if (!v7 || !v8 || !v9)
  {
    if (!a4)
    {
      v15 = 0;
      goto LABEL_18;
    }

    v13 = SESDefaultLogObject();
    v16 = [v8 asHexString];
    v21 = [v10 asHexString];
    *a4 = SESCreateAndLogError();

LABEL_9:
    v15 = 0;
    goto LABEL_17;
  }

  v11 = +[SESClient sharedClient];
  v12 = (v31 + 5);
  obj = v31[5];
  v13 = [(SESClient *)v11 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v12, obj);

  v14 = v31[5];
  if (!v14)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointPrivacyDecryption_block_invoke;
    v22[3] = &unk_1E82D0E40;
    v22[4] = &v24;
    v22[5] = &v30;
    [v13 privacyDecryptDataWithEndPoint:v7 data:v8 ephemeralPublicKey:v10 reply:v22];
    if (!v25[5] && !v31[5])
    {
      v17 = SESDefaultLogObject();
      v18 = SESCreateAndLogError();
      v19 = v31[5];
      v31[5] = v18;
    }

    if (a4)
    {
      *a4 = v31[5];
    }

    v15 = v25[5];
    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v15 = 0;
  *a4 = v14;
LABEL_17:

LABEL_18:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v15;
}

void sub_1C7BC9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointPrivacyDecryption_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointGetInvitations(void *a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v20;
  obj = v20[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v20[5];
  if (v5)
  {
    v6 = 0;
    if (a1)
    {
      *a1 = v5;
    }
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__8;
    v16 = __Block_byref_object_dispose__8;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SESEndPointGetInvitations_block_invoke;
    v11[3] = &unk_1E82D0C38;
    v11[4] = &v19;
    v11[5] = &v12;
    [v4 getInvitations:v11];
    if (!v13[5] && !v20[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v20[5];
      v20[5] = v8;
    }

    if (a1)
    {
      *a1 = v20[5];
    }

    v6 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  _Block_object_dispose(&v19, 8);

  return v6;
}

void sub_1C7BC9FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndPointGetInvitations_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id SESEndPointGetInvitationWithId(void *a1, void *a2)
{
  v3 = a1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v4 = +[SESClient sharedClient];
  v5 = (v22 + 5);
  obj = v22[5];
  v6 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v5, obj);

  v7 = v22[5];
  if (v7)
  {
    v8 = 0;
    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SESEndPointGetInvitationWithId_block_invoke;
    v13[3] = &unk_1E82D0E40;
    v13[4] = &v21;
    v13[5] = &v14;
    [v6 getInvitationWithId:v3 reply:v13];
    if (!v15[5] && !v22[5])
    {
      v9 = SESDefaultLogObject();
      v10 = SESCreateAndLogError();
      v11 = v22[5];
      v22[5] = v10;
    }

    if (a2)
    {
      *a2 = v22[5];
    }

    v8 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v21, 8);

  return v8;
}

void sub_1C7BCA2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointGetInvitationWithId_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id SESEndPointAddInvitationWithId(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[SESClient sharedClient];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(SESClient *)v5 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v6, obj);

  v8 = v22[5];
  if (!v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SESEndPointAddInvitationWithId_block_invoke;
    v15[3] = &unk_1E82D0DF0;
    v15[4] = &v17;
    v15[5] = &v21;
    [v7 addInvitationWithId:v3 data:v4 reply:v15];
    v9 = v22;
    if ((v18[3] & 1) == 0 && !v22[5])
    {
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v12 = v22[5];
      v22[5] = v11;

      v9 = v22;
    }

    v8 = v9[5];
  }

  v13 = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1C7BCA59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndPointDeleteInvitationWithId(void *a1)
{
  v1 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v19;
  obj = v19[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v19[5];
  if (!v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndPointDeleteInvitationWithId_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v4 deleteInvitationWithId:v1 reply:v12];
    v6 = v19;
    if ((v15[3] & 1) == 0 && !v19[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v19[5];
      v19[5] = v8;

      v6 = v19;
    }

    v5 = v6[5];
  }

  v10 = v5;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void sub_1C7BCA7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id SESEndPointGetEndpointIdWithUuid(void *a1, void *a2)
{
  v3 = a1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v4 = +[SESClient sharedClient];
  v5 = (v22 + 5);
  obj = v22[5];
  v6 = [(SESClient *)v4 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v5, obj);

  v7 = v22[5];
  if (v7)
  {
    v8 = 0;
    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SESEndPointGetEndpointIdWithUuid_block_invoke;
    v13[3] = &unk_1E82D1670;
    v13[4] = &v14;
    v13[5] = &v21;
    [v6 getEndpointIdWithUuid:v3 reply:v13];
    if (!v15[5] && !v22[5])
    {
      v9 = SESDefaultLogObject();
      v10 = SESCreateAndLogError();
      v11 = v22[5];
      v22[5] = v10;
    }

    if (a2)
    {
      *a2 = v22[5];
    }

    v8 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v21, 8);

  return v8;
}

void sub_1C7BCAA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointGetEndpointIdWithUuid_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointAddEndpointIdWithUuid(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[SESClient sharedClient];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(SESClient *)v5 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v6, obj);

  v8 = v22[5];
  if (!v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SESEndPointAddEndpointIdWithUuid_block_invoke;
    v15[3] = &unk_1E82D0DF0;
    v15[4] = &v17;
    v15[5] = &v21;
    [v7 addEndpointId:v3 withUuid:v4 reply:v15];
    v9 = v22;
    if ((v18[3] & 1) == 0 && !v22[5])
    {
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v12 = v22[5];
      v22[5] = v11;

      v9 = v22;
    }

    v8 = v9[5];
  }

  v13 = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1C7BCAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndPointDeleteEndpointIdWithUuid(void *a1)
{
  v1 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v19;
  obj = v19[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v19[5];
  if (!v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndPointDeleteEndpointIdWithUuid_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v4 deleteEndpointIdWithUuid:v1 reply:v12];
    v6 = v19;
    if ((v15[3] & 1) == 0 && !v19[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v19[5];
      v19[5] = v8;

      v6 = v19;
    }

    v5 = v6[5];
  }

  v10 = v5;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void sub_1C7BCAF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id SESEndpointGetBindingAttestationRequestWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v31 + 5);
  obj = v31[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v31[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__8;
    v27 = __Block_byref_object_dispose__8;
    v28 = 0;
    if (v7)
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v7 seid:v8];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndpointGetBindingAttestationRequestWithSession_block_invoke;
    v22[3] = &unk_1E82D1698;
    v22[4] = &v23;
    v22[5] = &v30;
    [v12 getEndpointBindingAttestationRequestWithProxy:v17 authorityIdentifier:v9 reply:v22];
    if (v16)
    {
    }

    if (!v24[5] && !v31[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v31[5];
      v31[5] = v19;
    }

    if (a4)
    {
      *a4 = v31[5];
    }

    v14 = v24[5];
    _Block_object_dispose(&v23, 8);
  }

  _Block_object_dispose(&v30, 8);

  return v14;
}

void sub_1C7BCB250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndpointGetBindingAttestationRequestWithSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointIsCarKeySupported(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v28 + 5);
  obj = v28[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SESEndPointIsCarKeySupported_block_invoke;
    v19[3] = &unk_1E82D1068;
    v19[4] = &v20;
    v19[5] = &v27;
    [v12 isCarKeySupported:v7 brand:v8 uuid:v9 reply:v19];
    if (!v21[5] && !v28[5])
    {
      v15 = SESDefaultLogObject();
      v16 = SESCreateAndLogError();
      v17 = v28[5];
      v28[5] = v16;
    }

    if (a4)
    {
      *a4 = v28[5];
    }

    v14 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v27, 8);

  return v14;
}

void sub_1C7BCB584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointIsCarKeySupported_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointIsSharingEnabled(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v28 + 5);
  obj = v28[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SESEndPointIsSharingEnabled_block_invoke;
    v19[3] = &unk_1E82D1068;
    v19[4] = &v20;
    v19[5] = &v27;
    [v12 isSharingEnabledForManufacturer:v7 brand:v8 uuid:v9 reply:v19];
    if (!v21[5] && !v28[5])
    {
      v15 = SESDefaultLogObject();
      v16 = SESCreateAndLogError();
      v17 = v28[5];
      v28[5] = v16;
    }

    if (a4)
    {
      *a4 = v28[5];
    }

    v14 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v27, 8);

  return v14;
}

void sub_1C7BCB8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointIsSharingEnabled_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointCarKeyDowngradeVersionSetting(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v28 + 5);
  obj = v28[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SESEndPointCarKeyDowngradeVersionSetting_block_invoke;
    v19[3] = &unk_1E82D1068;
    v19[4] = &v20;
    v19[5] = &v27;
    [v12 carKeyDowngradeVersionSetting:v7 brand:v8 uuid:v9 reply:v19];
    if (!v21[5] && !v28[5])
    {
      v15 = SESDefaultLogObject();
      v16 = SESCreateAndLogError();
      v17 = v28[5];
      v28[5] = v16;
    }

    if (a4)
    {
      *a4 = v28[5];
    }

    v14 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v27, 8);

  return v14;
}

void sub_1C7BCBBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointCarKeyDowngradeVersionSetting_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointTriggerHeadUnitPairing(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[SESClient sharedClient];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(SESClient *)v5 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v6, obj);

  v8 = v22[5];
  if (!v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SESEndPointTriggerHeadUnitPairing_block_invoke;
    v15[3] = &unk_1E82D0DF0;
    v15[4] = &v17;
    v15[5] = &v21;
    [v7 triggerHeadUnitPairing:v3 data:v4 reply:v15];
    v9 = v22;
    if ((v18[3] & 1) == 0 && !v22[5])
    {
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v12 = v22[5];
      v22[5] = v11;

      v9 = v22;
    }

    v8 = v9[5];
  }

  v13 = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1C7BCBEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndpointSendDeviceIntent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[SESClient sharedClient];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(SESClient *)v5 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v6, obj);

  v8 = v22[5];
  if (!v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SESEndpointSendDeviceIntent_block_invoke;
    v15[3] = &unk_1E82D0DF0;
    v15[4] = &v17;
    v15[5] = &v21;
    [v7 sendDeviceIntentWithConfidence:v3 keyIdentifier:v4 reply:v15];
    v9 = v22;
    if ((v18[3] & 1) == 0 && !v22[5])
    {
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v12 = v22[5];
      v22[5] = v11;

      v9 = v22;
    }

    v8 = v9[5];
  }

  v13 = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1C7BCC0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndpointConvertWithSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = +[SESClient sharedClient];
  v12 = (v31 + 5);
  obj = v31[5];
  v13 = [(SESClient *)v11 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v12, obj);

  v14 = v31[5];
  if (!v14)
  {
    if (v7)
    {
      v15 = v8 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [SEProxy withSession:v7 seid:v8];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __SESEndpointConvertWithSession_block_invoke;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v26;
    v24[5] = &v30;
    [v13 convertEndpointWithProxy:v17 keyIdentifier:v9 notBeforeDate:v10 reply:v24];
    if (v16)
    {
    }

    v18 = v31;
    if ((v27[3] & 1) == 0 && !v31[5])
    {
      v19 = SESDefaultLogObject();
      v20 = SESCreateAndLogError();
      v21 = v31[5];
      v31[5] = v20;

      v18 = v31;
    }

    v14 = v18[5];
  }

  v22 = v14;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v22;
}

void sub_1C7BCC3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SESEndpointNotifyTracked(void *a1)
{
  v1 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v19;
  obj = v19[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v19[5];
  if (!v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndpointNotifyTracked_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v4 notifyEndpointTracked:v1 reply:v12];
    v6 = v19;
    if ((v15[3] & 1) == 0 && !v19[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v19[5];
      v19[5] = v8;

      v6 = v19;
    }

    v5 = v6[5];
  }

  v10 = v5;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void sub_1C7BCC5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id SESEndpointNotifyPassAdded(void *a1)
{
  v1 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v19;
  obj = v19[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v19[5];
  if (!v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SESEndpointNotifyPassAdded_block_invoke;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v4 notifyPassAdded:v1 reply:v12];
    v6 = v19;
    if ((v15[3] & 1) == 0 && !v19[5])
    {
      v7 = SESDefaultLogObject();
      v8 = SESCreateAndLogError();
      v9 = v19[5];
      v19[5] = v8;

      v6 = v19;
    }

    v5 = v6[5];
  }

  v10 = v5;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void sub_1C7BCC808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id SESEndpointgetSupportedAliroVersions(void *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v2 = +[SESClient sharedClient];
  v3 = v22;
  obj = v22[5];
  v4 = [(SESClient *)v2 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v3 + 5, obj);

  v5 = v22[5];
  if (v5)
  {
    v6 = 0;
    if (a1)
    {
      *a1 = v5;
    }
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SESEndpointgetSupportedAliroVersions_block_invoke;
    v13[3] = &unk_1E82D16C0;
    v13[4] = &v14;
    v13[5] = &v21;
    [v4 getSupportedAliroVersionsWithReply:v13];
    v7 = v22;
    if (!v15[5] && !v22[5])
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = v22[5];
      v22[5] = v9;

      v7 = v22;
    }

    v11 = v7[5];
    if (v11)
    {
      v6 = 0;
      if (a1)
      {
        *a1 = v11;
      }
    }

    else
    {
      v6 = v15[5];
    }

    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v21, 8);

  return v6;
}

void sub_1C7BCCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void __SESEndpointgetSupportedAliroVersions_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

SESKeyPair *SESEndPointCreateKeyPair(void *a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = *MEMORY[0x1E697AD78];
  v3 = *MEMORY[0x1E697AD50];
  v16[0] = *MEMORY[0x1E697AD68];
  v16[1] = v3;
  v17[0] = v2;
  v17[1] = &unk_1F4762EC0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v5 = SecKeyCreateRandomKey(v4, &error);
  v6 = v5;
  v7 = error;
  if (!error && v5)
  {
    v8 = SecKeyCopyExternalRepresentation(v5, &error);
    v9 = v8;
    v7 = error;
    if (error || !v8)
    {
      if (a1)
      {
        v11 = SESDefaultLogObject();
LABEL_14:
        SESCreateAndLogError();
        *a1 = v13 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      if ([(__CFData *)v8 length]== 97)
      {
        v10 = [SESKeyPair alloc];
        v11 = [v9 subdataWithRange:{0, 65}];
        v12 = [v9 subdataWithRange:{65, 32}];
        v13 = [(SESKeyPair *)v10 initWithPublicKey:v11 secretKey:v12];

LABEL_15:
        goto LABEL_17;
      }

      if (a1)
      {
        v11 = SESDefaultLogObject();
        [v9 length];
        goto LABEL_14;
      }
    }

    v13 = 0;
    goto LABEL_17;
  }

  if (!a1)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v9 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a1 = v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

id SESEndPointPrivacyEncryptionWithManufacturer(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  v13 = +[SESClient sharedClient];
  v14 = (v31 + 5);
  obj = v31[5];
  v15 = [(SESClient *)v13 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v14, obj);

  v16 = v31[5];
  if (v16)
  {
    v17 = 0;
    if (a5)
    {
      *a5 = v16;
    }
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__8;
    v27 = __Block_byref_object_dispose__8;
    v28 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SESEndPointPrivacyEncryptionWithManufacturer_block_invoke;
    v22[3] = &unk_1E82D1648;
    v22[4] = &v23;
    v22[5] = &v30;
    [v15 privacyEncryptDataWithManufacturer:v9 environment:v10 region:v11 data:v12 reply:v22];
    if (!v24[5] && !v31[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v31[5];
      v31[5] = v19;
    }

    if (a5)
    {
      *a5 = v31[5];
    }

    v17 = v24[5];
    _Block_object_dispose(&v23, 8);
  }

  _Block_object_dispose(&v30, 8);

  return v17;
}

void sub_1C7BCD13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointPrivacyEncryptionWithManufacturer_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id SESEndPointPrivacyDecryptionWithKeyPair(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v10 = +[SESClient sharedClient];
  v11 = (v30 + 5);
  obj = v30[5];
  v12 = [(SESClient *)v10 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v11, obj);

  v13 = v30[5];
  if (v13)
  {
    v14 = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__8;
    v26 = __Block_byref_object_dispose__8;
    v27 = 0;
    v15 = [v7 publicKey];
    v16 = [v7 secretKey];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SESEndPointPrivacyDecryptionWithKeyPair_block_invoke;
    v21[3] = &unk_1E82D0E40;
    v21[4] = &v22;
    v21[5] = &v29;
    [v12 privacyDecryptDataWithKeyPair:v15 secretKey:v16 data:v8 ephemeralPublicKey:v9 reply:v21];

    if (!v23[5] && !v30[5])
    {
      v17 = SESDefaultLogObject();
      v18 = SESCreateAndLogError();
      v19 = v30[5];
      v30[5] = v18;
    }

    if (a4)
    {
      *a4 = v30[5];
    }

    v14 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v29, 8);

  return v14;
}

void sub_1C7BCD4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __SESEndPointPrivacyDecryptionWithKeyPair_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __getEndpointQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.seservice.endpoint", attr);
  v2 = getEndpointQueue_endpointQueue;
  getEndpointQueue_endpointQueue = v1;
}

uint64_t __SESEndPointConfigureWithProxy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SESEndPointConfigureWithProxy_block_invoke_2;
  v12[3] = &unk_1E82D0DF0;
  v13 = *(a1 + 120);
  return [v2 configureEndpointWithProxy:v1 identifier:v3 privateData:v4 confidentialData:v5 contactlessVolatileVisibility:v6 contactlessPersistentVisibility:v7 wiredVolatileVisibility:v8 wiredPersistentVisibility:v9 keySlot:v10 nfcExpressOnlyInLPM:v12 reply:?];
}

void sub_1C7BCD980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BCDCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BCDF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BCE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BCE58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

id SESKeyGetDesignatedKeys()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.designatedkeys"];
  v1 = [v0 arrayForKey:@"keys"];
  v2 = v1;
  v3 = MEMORY[0x1E695E0F0];
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [v4 filterMap:&__block_literal_global_9];

  return v5;
}

const void *SESDesignatedKeyCopyAccessControlForBioBoundCredentials()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = SESKeyGetDesignatedKeys();
  v1 = [v0 find:&__block_literal_global_512];

  if (v1)
  {
    v2 = [v1 assetACL];
    v18 = 0;
    v3 = [PTClassicMicro getACLfromAssetACL:v2 error:&v18];
    v4 = v18;

    if (v3)
    {
      v5 = [MEMORY[0x1E69666D0] recordFromData:v3];
      v6 = [v5 propertyList];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = SecAccessControlCreate();
        v8 = 0;

        if (v7)
        {
          SecAccessControlSetConstraints();
          v9 = SESDefaultLogObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = CFCopyDescription(v7);
            *buf = 138412290;
            v20 = v10;
            v11 = v10;
            _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_ERROR, "OUT %@", buf, 0xCu);
          }
        }

        else
        {
          v9 = SESDefaultLogObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = 0;
            _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_ERROR, "Couldn't create SecAccessControl : %@", buf, 0xCu);
          }
        }

        goto LABEL_18;
      }

      v12 = SESDefaultLogObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v13 = [v3 asHexString];
      *buf = 138412290;
      v20 = v13;
      v14 = "Corrupt ACL in designated key : %@";
      v15 = v12;
      v16 = 12;
    }

    else
    {
      v6 = SESDefaultLogObject();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v7 = 0;
        v8 = v4;
LABEL_18:

        goto LABEL_19;
      }

      v12 = [v1 assetACL];
      v13 = [v12 asHexString];
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v13;
      v14 = "Corrupt assetACL in designated key : %@ : %@";
      v15 = v6;
      v16 = 22;
    }

    _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);

LABEL_13:
    goto LABEL_14;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

void SESDesignatedKeyCommit(void *a1)
{
  v1 = MEMORY[0x1E695E000];
  v2 = a1;
  v4 = [[v1 alloc] initWithSuiteName:@"com.apple.seserviced.designatedkeys"];
  v3 = [v2 ses_map:&__block_literal_global_518];

  [v4 setObject:v3 forKey:@"keys"];
  _CFPreferencesFlushCachesForIdentifier();
}

void sub_1C7BCF87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7BCFC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BCFFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD03A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD07C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD0B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD1038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD2030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C7BD2E68(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v7 = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
  result = 0;
  switch(v5)
  {
    case 1:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83468;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83448;
        return v9[v4];
      }

      return result;
    case 2:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C836A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83688;
        return v9[v4];
      }

      return result;
    case 3:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83668;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83648;
        return v9[v4];
      }

      return result;
    case 4:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83508;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C834E8;
        return v9[v4];
      }

      return result;
    case 5:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83828;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83808;
        return v9[v4];
      }

      return result;
    case 6:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C835C8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83588;
        }

        else
        {
          v9 = &unk_1C7C835A8;
        }

        return v9[v4];
      }

      return result;
    case 8:
      if (v7 < 4)
      {
        return 0;
      }

      v9 = &unk_1C7C83488;
      return v9[v4];
    case 9:
    case 10:
    case 11:
    case 12:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83368;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C83348;
      return v9[v4];
    case 13:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C836E8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C836C8;
      return v9[v4];
    case 14:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C837A8;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83768;
        }

        else
        {
          v9 = &unk_1C7C83788;
        }
      }

      return v9[v4];
    case 15:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C834C8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C834A8;
      return v9[v4];
    case 16:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83608;
        }

        else
        {
          v9 = &unk_1C7C83628;
        }
      }

      else
      {
        if (v7 < 2)
        {
          return 0;
        }

        v9 = &unk_1C7C835E8;
      }

      return v9[v4];
    case 17:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83328;
        return v9[v4];
      }

      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C83308;
      return v9[v4];
    case 18:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83568;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83528;
        }

        else
        {
          v9 = &unk_1C7C83548;
        }
      }

      return v9[v4];
    case 19:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83728;
        }

        else
        {
          v9 = &unk_1C7C83748;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (v7 - 1 >= 2)
        {
          return result;
        }

        v9 = &unk_1C7C83708;
      }

      return v9[v4];
    case 20:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C833A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C83388;
      return v9[v4];
    case 21:
      v10 = 1 << v7;
      if ((v10 & 6) != 0)
      {
        v9 = &unk_1C7C832C8;
      }

      else
      {
        result = 0;
        if ((v10 & 9) != 0)
        {
          return result;
        }

        v9 = &unk_1C7C832E8;
      }

      return v9[v4];
    case 22:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v11 = 65;
        if (v4 != 3)
        {
          v11 = 0;
        }

        v12 = v4 == 0;
        v13 = 27952;
        goto LABEL_91;
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return result;
      }

      if (v7 == 1)
      {
        v11 = 65;
        if (v4 != 3)
        {
          v11 = 0;
        }

        v12 = v4 == 0;
        v13 = -28772;
LABEL_91:
        v14 = v13 | 0x10000u;
        if (v12)
        {
          return v14;
        }

        else
        {
          return v11;
        }
      }

      v15 = 65;
      if (v4 != 3)
      {
        v15 = 0;
      }

      if (v4)
      {
        return v15;
      }

      else
      {
        return 105880;
      }

    case 24:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83408;
        }

        else
        {
          v9 = &unk_1C7C83428;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C833C8;
        }

        else
        {
          v9 = &unk_1C7C833E8;
        }
      }

      return v9[v4];
    case 25:
      if (v7 - 3 >= 3)
      {
        if (v7 < 2)
        {
          return 0;
        }

        v9 = &unk_1C7C837C8;
      }

      else
      {
        v9 = &unk_1C7C837E8;
      }

      return v9[v4];
    default:
      return result;
  }
}