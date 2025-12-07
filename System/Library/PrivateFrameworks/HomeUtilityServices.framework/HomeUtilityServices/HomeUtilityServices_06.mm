uint64_t sub_20DFF5CC4()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_20E008A24();

  (v2)[2](v2, 0, v6);
  _Block_release(v2);
  v7 = v0[1];

  return v7();
}

uint64_t UtilitySubscriptionService.verifyOTPForAccount(factor:oneTimePasscode:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_20E008D04();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFF5E54, 0, 0);
}

uint64_t sub_20DFF5E54()
{
  v1 = v0[10];
  v3 = v0[11];
  v2 = v0[12];
  v4 = (*(v0[9] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[13] = v6;

  sub_20E008CF4();
  v7 = sub_20E008CE4();
  v0[14] = v8;
  (*(v3 + 8))(v2, v1);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_20DFF5F84;
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];

  return sub_20DFEA928((v0 + 2), v12, v13, v10, v11, v5, v6, v7);
}

uint64_t sub_20DFF5F84()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20DFF628C;
  }

  else
  {

    v2 = sub_20DFF60A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DFF60A8()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];

    v4 = v0[1];

    return v4(v3, v2);
  }

  else
  {
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_27C8626C8);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "TAF Account Verification(OTP) failed | No authorization code.", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20DFF628C()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DFF64B8(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v5[6] = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_20DFF65B8;

  return UtilitySubscriptionService.verifyOTPForAccount(factor:oneTimePasscode:_:)(v12, v9, v11, v13);
}

uint64_t sub_20DFF65B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_20E008A24();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_20E0091C4();

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v5 + 40);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocationID:accessToken:siteID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_20DF6A53C;

  return sub_20DFF82A4(a1, a2, a3, a4, a7);
}

uint64_t sub_20DFF6A24(uint64_t a1, uint64_t a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v6[5] = v10;
  v12 = sub_20E0091D4();
  v14 = v13;
  v6[6] = v13;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_20DFF6B4C;

  return sub_20DFF82A4(v9, v11, v12, v14, v15);
}

uint64_t sub_20DFF6B4C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_20E008A24();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocationID:accessToken:zoneName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_20DF77B54;

  return sub_20DFF8478(a1, a2, a3, a4, a7);
}

uint64_t sub_20DFF6FCC(uint64_t a1, uint64_t a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v9 = sub_20E0091D4();
  v11 = v10;
  v6[5] = v10;
  v12 = sub_20E0091D4();
  v14 = v13;
  v6[6] = v13;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_20DFF9424;

  return sub_20DFF8478(v9, v11, v12, v14, v15);
}

uint64_t static UtilitySubscriptionService.resendHistoricalData(accessToken:subscriptionID:utilityID:start:end:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_task_alloc();
  *(v8 + 16) = v11;
  *v11 = v8;
  v11[1] = sub_20DFAE848;

  return (sub_20DFF87A4)(a7, a8);
}

uint64_t sub_20DFF7370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v10 = swift_task_alloc();
  v7[2] = v10;
  v11 = sub_20E008CD4();
  v7[3] = v11;
  v12 = *(v11 - 8);
  v7[4] = v12;
  v13 = swift_task_alloc();
  v7[5] = v13;
  v14 = swift_task_alloc();
  v7[6] = v14;
  v7[7] = _Block_copy(a7);
  sub_20E008C84();
  if (a5)
  {
    sub_20E008C84();
    (*(v12 + 32))(v10, v13, v11);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v12 + 56))(v10, v15, 1, v11);
  v16 = swift_task_alloc();
  v7[8] = v16;
  *v16 = v7;
  v16[1] = sub_20DFF7568;

  return (sub_20DFF87A4)(v14, v10);
}

uint64_t sub_20DFF7568(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[4];
  v11 = v5[3];
  sub_20DF66E28(v5[2], &qword_27C852A58, &qword_20E00F7A0);
  (*(v10 + 8))(v9, v11);
  if (v3)
  {
    v12 = sub_20E008A24();

    (*(v8 + 16))(v8, 0, v12);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[7]);

  v13 = v7[1];

  return v13();
}

uint64_t static UtilitySubscriptionService.revokeSubscription(accessToken:subscriptionID:utilityID:_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20DFAC2E4;

  return sub_20DFF87C0();
}

uint64_t sub_20DFF79D4(int a1, int a2, int a3, int a4, void *aBlock)
{
  *(v5 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_20DFF7A80;

  return sub_20DFF87C0();
}

uint64_t sub_20DFF7A80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_20E008A24();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_20DFF7BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_20DF6BD98;

  return v6();
}

uint64_t sub_20DFF7CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_20DF6BA84;

  return v7();
}

uint64_t sub_20DFF7DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_20DFC9618(a3, v23 - v10);
  v12 = sub_20E0094C4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20DF66E28(v11, &qword_27C8522B0, &qword_20E00B1F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_20E0094B4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_20E009484();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_20E009264() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);

    return v21;
  }

LABEL_8:
  sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_20DFF80B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DFF81AC;

  return v6(a1);
}

uint64_t sub_20DFF81AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20DFF82A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFF82CC, 0, 0);
}

uint64_t sub_20DFF82CC()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = (*(v5 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v8 = *v6;
  v7 = v6[1];
  v0[8] = v7;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_20DFAA97C;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return sub_20DF873C4(v14, v12, v13, v10, v8, v7, v11);
}

uint64_t sub_20DFF8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFF84A0, 0, 0);
}

uint64_t sub_20DFF84A0()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = (*(v5 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v8 = *v6;
  v7 = v6[1];
  v0[8] = v7;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_20DFF864C;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return sub_20DF873C4(v14, v12, v13, v10, v8, v7, v11);
}

uint64_t sub_20DFF864C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFF9430, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_20DFF87DC()
{
  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_2811249D0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "This API has been deprecated and use of this API will result in request failure.", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  type metadata accessor for NetworkError(0);
  sub_20DF960FC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_20DFF8938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF79D4(v2, v3, v4, v5, v6);
}

uint64_t sub_20DFF8A0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF6BD98;

  return sub_20DFF80B4(a1, v4);
}

uint64_t sub_20DFF8AC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF6BA84;

  return sub_20DFF80B4(a1, v4);
}

uint64_t sub_20DFF8B7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20DF6BD98;

  return sub_20DFF7370(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_20DFF8C64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF6FCC(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF8D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF6A24(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF8E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFF64B8(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_51Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20DFF8F34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BA84;

  return sub_20DFF596C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_20DFF9008()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFF54A8(v2, v3, v4, v5);
}

uint64_t sub_20DFF90D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFF9428(v2, v3, v4, v5);
}

uint64_t objectdestroy_111Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DFF91E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFF942C(v2, v3, v4, v5);
}

uint64_t sub_20DFF92B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF6BD98;

  return sub_20DFF9420(v2, v3);
}

uint64_t sub_20DFF9364()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF6BD98;

  return sub_20DFF941C(v2, v3);
}

Swift::String __swiftcall CLLocationCoordinate2D.geohash(length:)(Swift::Int length)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v7 = sub_20DFF96EC(length, v4, v3);
  v9 = v8;
  swift_setDeallocating();

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  v7 = sub_20DFF96EC(length, v5, v6);
  v9 = v8;
  swift_setDeallocating();

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_20DFFA158(countAndFlagsBits, object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:(v6 + v8) * 0.5 longitude:(v10 + v12) * 0.5];
  }

  swift_setDeallocating();

  v14 = object;
  result._internal = v13;
  result.super.isa = v14;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_20E009A34();
  MEMORY[0x20F32AC10](0);
  return sub_20E009A54();
}

uint64_t sub_20DFF96EC(uint64_t result, double a2, double a3)
{
  v3 = ceil(result * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v5 = result;
  v118 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  result = sub_20E009454();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 < 4)
  {
    v8 = 0;
    v9 = a2;
LABEL_12:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2;
  v10 = vdupq_lane_s64(*&a2, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v5;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = 90.0;
    v18 = -90.0;
    do
    {
      v19 = v17;
      v20 = v16;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_109;
        }

        v15 = v21 + 1;
        v22 = *(v6 + 32 + 8 * v21);
        v17 = (v19 + v18) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        if (v22 < v17)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_20DFFAE38(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_20DFFAE38((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        v27 = &v24[16 * v26];
        *(v27 + 4) = 49;
        *(v27 + 5) = 0xE100000000000000;
        v28 = v24;

        v16 = v28;
        v18 = (v19 + v18) * 0.5;
        v20 = v28;
        ++v21;
        if (v14 == v15)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_20DFFAE38(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_20DFFAE38((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = 48;
      *(v31 + 5) = 0xE100000000000000;
      v32 = v24;

      v16 = v32;
    }

    while (v14 - 1 != v21);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v116 = v16;

  if (!v118)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  result = sub_20E009454();
  v33 = result;
  *(result + 16) = v118;
  v34 = (result + 32);
  if (v118 < 4)
  {
    v35 = 0;
    v36 = a3;
LABEL_39:
    v40 = v118 - v35;
    do
    {
      *v34++ = v36;
      --v40;
    }

    while (v40);
    goto LABEL_41;
  }

  v35 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  v34 += v118 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = a3;
  v37 = vdupq_lane_s64(*&a3, 0);
  v38 = (result + 48);
  v39 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38[-1] = v37;
    *v38 = v37;
    v38 += 2;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v118)
  {
    goto LABEL_39;
  }

LABEL_41:
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    v44 = 180.0;
    v45 = -180.0;
LABEL_43:
    v46 = v44;
    v47 = v43;
    v48 = v42;
    while (v48 < *(v33 + 16))
    {
      v42 = v48 + 1;
      v49 = *(v33 + 32 + 8 * v48);
      v44 = (v46 + v45) * 0.5;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v47;
      if (v49 < v44)
      {
        if ((v50 & 1) == 0)
        {
          v43 = sub_20DFFAE38(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        if (v55 >= v54 >> 1)
        {
          v43 = sub_20DFFAE38((v54 > 1), v55 + 1, 1, v43);
        }

        *(v43 + 2) = v55 + 1;
        v56 = &v43[16 * v55];
        *(v56 + 4) = 48;
        *(v56 + 5) = 0xE100000000000000;

        if (v41 - 1 != v48)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v50 & 1) == 0)
      {
        v43 = sub_20DFFAE38(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_20DFFAE38((v51 > 1), v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v53 = &v43[16 * v52];
      *(v53 + 4) = 49;
      *(v53 + 5) = 0xE100000000000000;

      v45 = (v46 + v45) * 0.5;
      v47 = v43;
      ++v48;
      if (v41 == v42)
      {
        goto LABEL_59;
      }
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_59:

  v114 = *(v43 + 2);
  if (v114)
  {
    v57 = 0;
    v58 = v116 + 40;
    v59 = v43 + 40;
    v60 = MEMORY[0x277D84F90];
    while (v57 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v119 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
      result = swift_initStackObject();
      *(result + 16) = xmmword_20E00E010;
      *(result + 32) = v61;
      *(result + 40) = v62;
      if (v57 >= *(v116 + 2))
      {
        goto LABEL_111;
      }

      v63 = v43;
      v64 = v58;
      v65 = *(v58 - 1);
      v66 = *v58;
      *(result + 48) = v65;
      *(result + 56) = v66;
      v67 = *(v60 + 16);
      v68 = v67 + 2;
      if (__OFADD__(v67, 2))
      {
        goto LABEL_112;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v69 = *(v60 + 24) >> 1, v69 < v68))
      {
        if (v67 <= v68)
        {
          v70 = v67 + 2;
        }

        else
        {
          v70 = v67;
        }

        result = sub_20DFFAE38(result, v70, 1, v60);
        v60 = result;
        v69 = *(result + 24) >> 1;
      }

      v43 = v63;
      if (v69 - *(v60 + 16) < 2)
      {
        goto LABEL_113;
      }

      swift_arrayInitWithCopy();

      v71 = *(v60 + 16);
      v72 = __OFADD__(v71, 2);
      v73 = v71 + 2;
      if (v72)
      {
        goto LABEL_114;
      }

      ++v57;
      *(v60 + 16) = v73;
      v58 = v64 + 2;
      v59 = v119 + 2;
      if (v114 == v57)
      {
        goto LABEL_75;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_75:

  v117 = *(v60 + 16);
  if (v117)
  {
    v74 = 0;
    v75 = 0;
    v76 = v60 + 40;
    v77 = MEMORY[0x277D84F90];
    while (v75 < *(v60 + 16))
    {
      swift_bridgeObjectRetain_n();

      result = sub_20E009394();
      v79 = result;
      v81 = v80;
      if (v74 + 5 * (v75 / 5))
      {
        if (!*(v77 + 16))
        {
          goto LABEL_117;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v82 = v77;
        if (result)
        {
          v83 = *(v77 + 16);
          if (!v83)
          {
            goto LABEL_118;
          }
        }

        else
        {
          result = sub_20DFFC5A8(v77);
          v82 = result;
          v83 = *(result + 16);
          if (!v83)
          {
            goto LABEL_118;
          }
        }

        v84 = v83 - 1;
        v85 = &v82[16 * v84];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        *(v82 + 2) = v84;
        v120 = v87;
        v121 = v86;
        MEMORY[0x20F32A4B0](v79, v81);

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          v82 = sub_20DFFAE38((v88 > 1), v89 + 1, 1, v82);
        }

        *(v82 + 2) = v89 + 1;
        v78 = &v82[16 * v89];
        *(v78 + 4) = v120;
        *(v78 + 5) = v121;
        v77 = v82;
      }

      else
      {
        v90 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_20DFFAE38(0, *(v77 + 16) + 1, 1, v77);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_20DFFAE38((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[16 * v92];
        *(v93 + 4) = v79;
        *(v93 + 5) = v81;
        v77 = v90;
      }

      ++v75;
      --v74;
      v76 += 16;
      if (v117 == v75)
      {
        goto LABEL_94;
      }
    }

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

  v77 = MEMORY[0x277D84F90];
LABEL_94:

  v94 = *(v77 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = v77 + 40;
    v97 = MEMORY[0x277D84F90];
LABEL_96:
    v98 = (v96 + 16 * v95);
    v99 = v95;
    while (v99 < *(v77 + 16))
    {
      v100 = *(v98 - 1);
      v101 = *v98;

      v102 = sub_20DFFA9C8();
      if (v102[2])
      {
        v103 = sub_20DFB85D0(v100, v101);
        if (v104)
        {
          v105 = (v102[7] + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v77;
          if ((result & 1) == 0)
          {
            result = sub_20DFFB11C(0, *(v97 + 16) + 1, 1, v97);
            v97 = result;
          }

          v110 = *(v97 + 16);
          v109 = *(v97 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_20DFFB11C((v109 > 1), v110 + 1, 1, v97);
            v97 = result;
          }

          v95 = v99 + 1;
          *(v97 + 16) = v110 + 1;
          v111 = v97 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v77 = v108;
          if (v94 - 1 != v99)
          {
            goto LABEL_96;
          }

          goto LABEL_106;
        }
      }

      ++v99;

      v98 += 2;
      if (v94 == v99)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_116;
  }

LABEL_106:

  if ((v112 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535A8, &qword_20E0135E8);
    sub_20DFC4DDC(&qword_27C8535B0, &qword_27C8535A8, &qword_20E0135E8, MEMORY[0x277D83FB0]);
    return sub_20E009384();
  }

LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_20DFFA158(uint64_t a1, unint64_t a2)
{
  result = sub_20E0092B4();
  if (result)
  {
    v6 = result;
    v7 = sub_20DFFC684(result, 0, &qword_27C8535E0, &qword_20E013708);

    v8 = sub_20DFFC5BC(&v39, v7 + 4, v6, a1, a2);

    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v10 = v7[2];
  if (v10)
  {
    v43 = v2;
    v11 = 0;
    v12 = v7 + 5;
    while (v11 < v7[2])
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_20DFFA5C8();
      if (v15[2])
      {
        v16 = sub_20DFB8640(v14, v13);
        if (v17)
        {
          v18 = (v15[7] + 16 * v16);
          v19 = *v18;
          v20 = v18[1];

          MEMORY[0x20F32A4B0](v19, v20);
        }
      }

      ++v11;

      v12 += 2;
      if (v10 == v11)
      {
        v21 = v39;
        v9 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v21 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_20E0092B4() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_20DFFC700();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v21;
  v40 = v9;
  v41 = 0;
  v42 = v22;

  result = sub_20E009304();
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (!__OFADD__(v25, 1))
    {
      MEMORY[0x20F32A4A0](result, v24);

      result = sub_20E009304();
      v24 = v26;
      ++v25;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v27 = sub_20E009304();
  if (v28)
  {
    v29 = -90.0;
    v30 = 90.0;
    do
    {
      v32 = (v29 + v30) * 0.5;
      if (v27 == 49 && v28 == 0xE100000000000000)
      {
      }

      else
      {
        v31 = sub_20E009984();

        if ((v31 & 1) == 0)
        {
          v30 = (v29 + v30) * 0.5;
          v32 = v29;
        }
      }

      v27 = sub_20E009304();
      v29 = v32;
    }

    while (v28);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v33 = sub_20E009304();
  if (v34)
  {
    v35 = -180.0;
    v36 = 180.0;
    do
    {
      v38 = (v35 + v36) * 0.5;
      if (v33 == 49 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_20E009984();

        if ((v37 & 1) == 0)
        {
          v36 = (v35 + v36) * 0.5;
          v38 = v35;
        }
      }

      v33 = sub_20E009304();
      v35 = v38;
    }

    while (v34);
  }
}

void *sub_20DFFA5C8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_20DFFA624(0);
    *(v0 + 16) = v1;
  }

  return v1;
}

void *sub_20DFFA624(uint64_t a1)
{
  v1 = sub_20E009304();
  if (!v2)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_20DFFC830();
    v11 = sub_20E009374();
    v13 = v12;
    v14 = sub_20E0092B4();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_20E009454();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_20E0135D0;
        *(v19 - 1) = xmmword_20E0135D0;
        *v19 = xmmword_20E0135D0;
        v19[1] = xmmword_20E0135D0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0, MEMORY[0x277D83958]);
    v22 = sub_20E0091A4();
    v24 = v23;

    MEMORY[0x20F32A4B0](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_20DFB8640(v3, v4);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_20DFFBCC8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_20DFB8640(v3, v4);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_20DFFC41C();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v22;
      v8[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v6[6] + 16 * v26);
    *v34 = v3;
    v34[1] = v4;
    v35 = (v6[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v6[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v37;
LABEL_4:
    v3 = sub_20E009304();
    v4 = v9;
    v5 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20E0099D4();
  __break(1u);
  return result;
}

void *sub_20DFFA9C8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_20DFFAA24(0);
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_20DFFAA24(uint64_t a1)
{
  v1 = sub_20E009304();
  if (!v2)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  while (!__OFADD__(v5, 1))
  {
    v41 = v5 + 1;
    sub_20DFFC830();
    v10 = sub_20E009374();
    v12 = v11;
    v13 = sub_20E0092B4();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v3;
    if (v14)
    {
      v15 = sub_20E009454();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_20E0135D0;
        *(v18 - 1) = xmmword_20E0135D0;
        *v18 = xmmword_20E0135D0;
        v18[1] = xmmword_20E0135D0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0, MEMORY[0x277D83958]);
    v21 = sub_20E0091A4();
    v23 = v22;

    MEMORY[0x20F32A4B0](v10, v12);

    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_20DFB85D0(v21, v24);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_20DFFBA08(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_20DFB85D0(v21, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v34 = v42;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v39 = v26;
    sub_20DFFC2A4();
    v26 = v39;
    v34 = v42;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v34;
      v8[1] = v4;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v6[6] + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = (v6[7] + 16 * v26);
    *v36 = v34;
    v36[1] = v4;

    v37 = v6[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v38;
LABEL_4:
    v3 = sub_20E009304();
    v4 = v9;
    v5 = v41;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20E0099D4();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_20DFFAE38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
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

void *sub_20DFFAF44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535F8, &qword_20E013740);
  v10 = *(sub_20E0087E4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_20E0087E4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20DFFB11C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E0, &qword_20E013708);
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

void *sub_20DFFB228(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535F0, &unk_20E013730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20DFFB35C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535C8, "2c");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20DFFB490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v37 = v4;
  result = sub_20E009824();
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

      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
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

uint64_t sub_20DFFB750(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852590, &qword_20E00C118);
  v33 = v4;
  result = sub_20E009824();
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
        sub_20DF77A64(v24, v34);
      }

      else
      {
        sub_20DF6981C(v24, v34);
      }

      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
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
      result = sub_20DF77A64(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_20DFFBA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E8, &unk_20E013710);
  v37 = v4;
  result = sub_20E009824();
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

      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
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

uint64_t sub_20DFFBCC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535D8, &qword_20E013700);
  v37 = v4;
  result = sub_20E009824();
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

      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
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

void *sub_20DFFBF88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v2 = *v0;
  v3 = sub_20E009814();
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

void *sub_20DFFC100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852590, &qword_20E00C118);
  v2 = *v0;
  v3 = sub_20E009814();
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
        sub_20DF6981C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20DF77A64(v25, (*(v4 + 56) + v22));
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

void *sub_20DFFC2A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535E8, &unk_20E013710);
  v2 = *v0;
  v3 = sub_20E009814();
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

void *sub_20DFFC41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535D8, &qword_20E013700);
  v2 = *v0;
  v3 = sub_20E009814();
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

uint64_t sub_20DFFC5BC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_20E009304();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_20DFFC684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

unint64_t sub_20DFFC700()
{
  result = qword_27C8535B8;
  if (!qword_27C8535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535B8);
  }

  return result;
}

unint64_t sub_20DFFC758()
{
  result = qword_27C8535C0;
  if (!qword_27C8535C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535C0);
  }

  return result;
}

unint64_t sub_20DFFC830()
{
  result = qword_27C8535D0;
  if (!qword_27C8535D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8535D0);
  }

  return result;
}

uint64_t sub_20DFFC884(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20E0092C4();

    return sub_20E0093A4();
  }

  return result;
}

uint64_t sub_20DFFC920@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v60 = a1;
  v5 = sub_20E008A44();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v55 - v9;
  if (qword_2811230E0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = sub_20E009094();
  v59 = __swift_project_value_buffer(v10, qword_281124A00);
  v11 = sub_20E009074();
  v12 = sub_20E009524();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20DF62000, v11, v12, "Trying to locate geohash file in geohash-2 folder.", v13, 2u);
    MEMORY[0x20F32B3A0](v13, -1, -1);
  }

  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v15 = sub_20DFF96EC(8, a2, a3);
  v17 = v16;
  swift_setDeallocating();

  swift_bridgeObjectRetain_n();
  v18 = sub_20DFFC884(2, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x20F32A440](v18, v20, v22, v24);
  v27 = v26;

  v28 = sub_20E0092B4();

  if (v28 < 2)
  {
LABEL_11:

    v42 = sub_20E009074();
    v43 = sub_20E009544();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61[0] = v45;
      *v44 = 136315138;
      v46 = sub_20DF74468(v25, v27, v61);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_20DF62000, v42, v43, "Unable to locate matching geohash in geohash-2 Folder for : %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F32B3A0](v45, -1, -1);
      MEMORY[0x20F32B3A0](v44, -1, -1);
    }

    else
    {
    }

    v47 = sub_20E008AF4();
    return (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
  }

  else
  {
    v55 = v6;
    v56 = v5;
    while (1)
    {
      if (qword_281123098 != -1)
      {
        swift_once();
      }

      v61[0] = qword_2811249C0;
      v61[1] = *algn_2811249C8;

      MEMORY[0x20F32A4B0](v25, v27);
      MEMORY[0x20F32A4B0](47, 0xE100000000000000);
      MEMORY[0x20F32A4B0](v15, v17);
      MEMORY[0x20F32A4B0](0x6E6F736A2ELL, 0xE500000000000000);
      v29 = [objc_opt_self() defaultManager];
      v5 = sub_20E0091C4();
      v6 = [v29 fileExistsAtPath_];

      if (v6)
      {
        break;
      }

      v30 = sub_20E0092B4();
      v31 = __OFSUB__(v30, 1);
      v32 = v30 - 1;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }

      v33 = sub_20DFFC884(v32, v15, v17);
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v15 = MEMORY[0x20F32A440](v33, v35, v37, v39);
      v17 = v40;

      v41 = sub_20E0092B4();

      if (v41 <= 1)
      {
        goto LABEL_11;
      }
    }

    v49 = sub_20E009074();
    v50 = sub_20E009554();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20DF62000, v49, v50, "Located geohash file in geohash-2 folder.", v51, 2u);
      MEMORY[0x20F32B3A0](v51, -1, -1);
    }

    v52 = sub_20E008AF4();
    v53 = *(*(v52 - 8) + 56);
    v53(v57, 1, 1, v52);
    v55[13](v58, *MEMORY[0x277CC91D8], v56);
    v54 = v60;
    sub_20E008AD4();
    return (v53)(v54, 0, 1, v52);
  }
}

id sub_20DFFCF8C(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 1;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_20E0091C4();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v32];

  if (v4)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A00);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Path exists", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = sub_20E009074();
    v10 = sub_20E009544();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "Deleting existing file", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }

    v12 = sub_20E0091C4();
    v31 = 0;
    v13 = [v2 removeItemAtPath:v12 error:&v31];

    if (v13)
    {
      v14 = v31;
    }

    else
    {
      v15 = v31;
      v16 = sub_20E008A34();

      swift_willThrow();
    }
  }

  v17 = sub_20E0091C4();
  v31 = 0;
  v18 = [v2 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v31];

  if (v18)
  {
    v19 = v31;
  }

  else
  {
    v20 = v31;
    v21 = sub_20E008A34();

    swift_willThrow();
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v22 = sub_20E009094();
    __swift_project_value_buffer(v22, qword_281124A00);
    v23 = v21;
    v24 = sub_20E009074();
    v25 = sub_20E009544();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_20DF62000, v24, v25, "Unable to create GeoHash Directory! %@", v26, 0xCu);
      sub_20DF66E28(v27, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v27, -1, -1);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    else
    {
    }
  }

  return v18;
}

uint64_t sub_20DFFD394(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853600, &qword_20E013748);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853608, &qword_20E013750);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853610, &qword_20E013758);
  v24 = *(v7 - 8);
  v8 = v24;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853618, &qword_20E013760);
  sub_20E008E84();
  sub_20E0093A4();
  sub_20DFFD850();
  v26 = v13;
  sub_20E008E74();
  sub_20E008E94();
  v14 = *(v8 + 8);
  v14(v11, v7);

  v15 = v25;
  if ((*(v27 + 48))(v4, 1, v25) == 1)
  {
    sub_20DF66E28(v4, &qword_27C853600, &qword_20E013748);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_281124A00);
    v17 = sub_20E009074();
    v18 = sub_20E009544();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DF62000, v17, v18, "No Matching file name found in Geo Hash", v19, 2u);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    v14(v26, v7);
    return 0;
  }

  else
  {
    v21 = v27;
    (*(v27 + 32))(v6, v4, v15);
    swift_getKeyPath();
    sub_20E008EA4();

    v22 = MEMORY[0x20F32A440](v28, v29, v30, v31);

    (*(v21 + 8))(v6, v15);
    v14(v26, v7);
    return v22;
  }
}

unint64_t sub_20DFFD850()
{
  result = qword_27C853620;
  if (!qword_27C853620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853610, &qword_20E013758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853620);
  }

  return result;
}

char *sub_20DFFD8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_7:
    v14 = sub_20E009284();

    return v14;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_20DF749CC(0, v2, 0);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = *(v8 + v7);
      v10 = *(a2 + 32 + v7 % v6);
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_20DF749CC((v11 > 1), v13, 1);
        v13 = v12 + 1;
      }

      ++v7;
      *(v15 + 16) = v13;
      *(v15 + v12 + 32) = v10 ^ v9;
    }

    while (v2 != v7);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t NetworkError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_20E008E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DFECA28(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7270654420495041;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = *v8;
      v19 = 0xD00000000000003ELL;
      v20 = 0x800000020E017E30;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v14 = "LocalizedDescription ";
          v13 = 0xD000000000000027;
        }

        else
        {
          v14 = "trying to process the request.";
          v13 = 0xD000000000000024;
        }
      }

      else if (v12)
      {
        v14 = "e received from server.";
        v13 = 0xD000000000000032;
      }

      else
      {
        v13 = 0xD00000000000002BLL;
        v14 = "ponse from server.";
      }

      v17 = 0;
      v18 = 0xE000000000000000;
      sub_20E009714();

      v17 = 0xD000000000000015;
      v18 = 0x800000020E017EA0;
      MEMORY[0x20F32A4B0](v13, v14 | 0x8000000000000000);

      MEMORY[0x20F32A4B0](v17, v18);

      goto LABEL_27;
    case 2:
      v15 = *v8;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000035, 0x800000020E017DF0);
      v17 = v15;
      v16 = sub_20E009964();
      MEMORY[0x20F32A4B0](v16);

      MEMORY[0x20F32A4B0](46, 0xE100000000000000);
LABEL_27:
      result = v19;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    case 4:
    case 8:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000033;
      break;
    case 12:
    case 19:
      result = 0xD00000000000003ALL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x6E49206E656B6F54;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD00000000000004FLL;
      break;
    case 18:
      return result;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000023, 0x800000020E017F90);
      sub_20E0097E4();
      MEMORY[0x20F32A4B0](46, 0xE100000000000000);
      v11 = v19;
      (*(v3 + 8))(v5, v2);
      result = v11;
      break;
  }

  return result;
}

unint64_t NetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000032;
  if (!*v0)
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_20DFFDF98()
{
  v1 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000032;
  if (!*v0)
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20DFFE050(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20DFFE0B0(void *a1)
{
  v2 = sub_20E009764();
  v90 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v84 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853650, &qword_20E013AC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v84 - v9;
  v11 = sub_20E009774();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v84 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v84 - v19);
  v93[0] = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v22 = swift_dynamicCast();
  v23 = *(v12 + 56);
  if (v22)
  {
    v89 = v2;
    v23(v10, 0, 1, v11);
    (*(v12 + 32))(v20, v10, v11);
    v24 = *(v12 + 16);
    v25 = v20;
    v24(v18);
    v26 = (*(v12 + 88))(v18, v11);
    if (v26 == *MEMORY[0x277D84160])
    {
      (*(v12 + 96))(v18, v11);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v27 = sub_20E009094();
      __swift_project_value_buffer(v27, qword_2811249D0);
      v28 = sub_20E009074();
      v29 = sub_20E009544();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_14;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v93[0] = v31;
      *v30 = 136315138;
      v32 = sub_20E009AC4();
      v34 = sub_20DF74468(v32, v33, v93);

      *(v30 + 4) = v34;
      v35 = "DecodingError.typeMismatch : %s";
LABEL_13:
      _os_log_impl(&dword_20DF62000, v28, v29, v35, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F32B3A0](v31, -1, -1);
      MEMORY[0x20F32B3A0](v30, -1, -1);
LABEL_14:

      (*(v12 + 8))(v20, v11);
      v40 = v89;
      v41 = v90;
      v42 = &unk_27C853668;
      v43 = &unk_20E013AE0;
LABEL_15:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      (*(v41 + 8))(v18 + *(v44 + 48), v40);
      goto LABEL_16;
    }

    if (v26 == *MEMORY[0x277D84170])
    {
      (*(v12 + 96))(v18, v11);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v36 = sub_20E009094();
      __swift_project_value_buffer(v36, qword_2811249D0);
      v28 = sub_20E009074();
      v29 = sub_20E009544();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_14;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v93[0] = v31;
      *v30 = 136315138;
      v37 = sub_20E009AC4();
      v39 = sub_20DF74468(v37, v38, v93);

      *(v30 + 4) = v39;
      v35 = "DecodingError.valueNotFound : %s";
      goto LABEL_13;
    }

    if (v26 == *MEMORY[0x277D84158])
    {
      (*(v12 + 96))(v18, v11);
      sub_20DFE4B08(v18, v93);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v48 = sub_20E009094();
      __swift_project_value_buffer(v48, qword_2811249D0);
      sub_20DFFF450(v93, v92);
      v49 = sub_20E009074();
      v50 = sub_20E009544();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v91 = v52;
        *v51 = 136315138;
        v88 = v25;
        __swift_project_boxed_opaque_existential_1(v92, v92[3]);
        v53 = sub_20E009A94();
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_0(v92);
        v56 = sub_20DF74468(v53, v55, &v91);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_20DF62000, v49, v50, "DecodingError.keyNotFound : %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x20F32B3A0](v52, -1, -1);
        MEMORY[0x20F32B3A0](v51, -1, -1);

        __swift_destroy_boxed_opaque_existential_0(v93);
        (*(v12 + 8))(v88, v11);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v93);
        (*(v12 + 8))(v20, v11);
        __swift_destroy_boxed_opaque_existential_0(v92);
      }

      v40 = v89;
      v41 = v90;
      v42 = &qword_27C853660;
      v43 = &qword_20E013D70;
      goto LABEL_15;
    }

    if (v26 == *MEMORY[0x277D84168])
    {
      (*(v12 + 96))(v18, v11);
      v57 = v89;
      v58 = v90;
      (*(v90 + 32))(v7, v18, v89);
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v59 = sub_20E009094();
      __swift_project_value_buffer(v59, qword_2811249D0);
      (*(v58 + 16))(v5, v7, v57);
      v60 = sub_20E009074();
      v61 = sub_20E009544();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v86 = v62;
        v88 = swift_slowAlloc();
        v93[0] = v88;
        *v62 = 136315138;
        v87 = v61;
        v63 = sub_20E009744();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853658, &unk_20E013AD0);
        v65 = v57;
        v85 = MEMORY[0x20F32A600](v63, v64);
        v67 = v66;

        v90 = *(v58 + 8);
        v68 = v5;
        v69 = v65;
        (v90)(v68, v65);
        v70 = sub_20DF74468(v85, v67, v93);

        v71 = v86;
        *(v86 + 1) = v70;
        v72 = v71;
        _os_log_impl(&dword_20DF62000, v60, v87, "DecodingError.dataCorrupted : %s", v71, 0xCu);
        v73 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x20F32B3A0](v73, -1, -1);
        MEMORY[0x20F32B3A0](v72, -1, -1);

        (v90)(v7, v69);
      }

      else
      {

        v83 = *(v58 + 8);
        v83(v5, v57);
        v83(v7, v57);
      }

      (*(v12 + 8))(v25, v11);
    }

    else
    {
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v74 = sub_20E009094();
      __swift_project_value_buffer(v74, qword_2811249D0);
      (v24)(v15, v20, v11);
      v75 = sub_20E009074();
      v76 = sub_20E009544();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v77 = 138412290;
        swift_allocError();
        v88 = v20;
        (v24)(v78, v15, v11);
        v79 = _swift_stdlib_bridgeErrorToNSError();
        v80 = *(v12 + 8);
        v80(v15, v11);
        *(v77 + 4) = v79;
        v81 = v90;
        *v90 = v79;
        _os_log_impl(&dword_20DF62000, v75, v76, "Uncaught DecodingError %@", v77, 0xCu);
        sub_20DF66E28(v81, &qword_27C8521E0, &unk_20E011080);
        MEMORY[0x20F32B3A0](v81, -1, -1);
        MEMORY[0x20F32B3A0](v77, -1, -1);

        v82 = v88;
      }

      else
      {

        v80 = *(v12 + 8);
        v80(v15, v11);
        v82 = v25;
      }

      v80(v82, v11);
      v80(v18, v11);
    }
  }

  else
  {
    v23(v10, 1, 1, v11);
    sub_20DF66E28(v10, &qword_27C853650, &qword_20E013AC8);
  }

LABEL_16:
  type metadata accessor for NetworkError(0);
  sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
  v45 = swift_allocError();
  *v46 = 1;
  swift_storeEnumTagMultiPayload();
  return v45;
}

uint64_t _s19HomeUtilityServices12NetworkErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E008E14();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkError(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853640, &qword_20E013AC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_20DFECA28(a1, &v27 - v18);
  sub_20DFECA28(a2, &v19[v20]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20DFECA28(v19, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v21 = *v13 == v19[v20];
      goto LABEL_26;
    case 2u:
      sub_20DFECA28(v19, v10);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      v21 = *v10 == *&v19[v20];
LABEL_26:
      v22 = v21;
      sub_20DFB2F60(v19);
      result = v22;
      break;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_33;
      }

LABEL_31:
      sub_20DFB2F60(v19);
      result = 1;
      break;
    default:
      sub_20DFECA28(v19, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v28 + 8))(v15, v4);
LABEL_33:
        sub_20DF66E28(v19, &qword_27C853640, &qword_20E013AC0);
        result = 0;
      }

      else
      {
        v24 = v28;
        (*(v28 + 32))(v6, &v19[v20], v4);
        sub_20DFFFE34(&qword_27C853648, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
        sub_20E0093B4();
        sub_20E0093B4();
        v25 = *(v24 + 8);
        v25(v6, v4);
        v26 = v30 == v29;
        v25(v15, v4);
        sub_20DFB2F60(v19);
        result = v26;
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for NetworkError(uint64_t a1)
{
  result = qword_2811231F0;
  if (!qword_2811231F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20DFFF268()
{
  result = qword_27C853628;
  if (!qword_27C853628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853628);
  }

  return result;
}

unint64_t sub_20DFFF2C0()
{
  result = qword_27C853630;
  if (!qword_27C853630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853630);
  }

  return result;
}

unint64_t sub_20DFFF318()
{
  result = qword_27C853638;
  if (!qword_27C853638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853638);
  }

  return result;
}

uint64_t sub_20DFFF3BC(uint64_t a1)
{
  result = sub_20E008E14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20DFFF450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20DFFF4B4(void *a1)
{
  v2 = sub_20E008E14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853670, &qword_20E013AE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_20E008E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v59 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v20 = swift_dynamicCast();
  v21 = *(v13 + 56);
  if (v20)
  {
    v55 = v16;
    v21(v11, 0, 1, v12);
    v57 = v13;
    (*(v13 + 32))(v18, v11, v12);
    v22 = sub_20DFFFE34(&qword_27C853678, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_20E008A14();
    sub_20E008DF4();
    sub_20DFFFE34(&qword_27C853648, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
    sub_20E0093B4();
    sub_20E0093B4();
    v23 = *(v3 + 8);
    v23(v6, v2);
    v23(v8, v2);
    if (v59 == v58)
    {
      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v24 = sub_20E009094();
      __swift_project_value_buffer(v24, qword_2811249D0);
      v25 = sub_20E009074();
      v26 = sub_20E009544();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20DF62000, v25, v26, "No Internet connection detected. Check your network connection.", v27, 2u);
        MEMORY[0x20F32B3A0](v27, -1, -1);
      }

      type metadata accessor for NetworkError(0);
      sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v28 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (*(v57 + 8))(v18, v12);
    }

    else
    {
      v54 = v22;
      v56 = v18;
      sub_20E008A14();
      sub_20E008DE4();
      sub_20E0093B4();
      sub_20E0093B4();
      v23(v6, v2);
      v23(v8, v2);
      if (v59 == v58)
      {
        v34 = v57;
        if (qword_2811230C8 != -1)
        {
          swift_once();
        }

        v35 = sub_20E009094();
        __swift_project_value_buffer(v35, qword_2811249D0);
        v36 = sub_20E009074();
        v37 = sub_20E009544();
        v38 = os_log_type_enabled(v36, v37);
        v39 = v56;
        if (v38)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_20DF62000, v36, v37, "Unable to find Host. if this DEV env, please check your VPN connection!", v40, 2u);
          MEMORY[0x20F32B3A0](v40, -1, -1);
        }

        type metadata accessor for NetworkError(0);
        sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        v28 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        (*(v34 + 8))(v39, v12);
      }

      else
      {
        v41 = v57;
        if (qword_2811230C8 != -1)
        {
          swift_once();
        }

        v42 = sub_20E009094();
        __swift_project_value_buffer(v42, qword_2811249D0);
        v43 = v55;
        (*(v41 + 16))(v55, v56, v12);
        v44 = sub_20E009074();
        v45 = sub_20E009544();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v53 = v44;
          v47 = v46;
          *v46 = 134217984;
          sub_20E008A14();
          v48 = sub_20E008E04();
          v23(v8, v2);
          v49 = *(v41 + 8);
          v49(v43, v12);
          *(v47 + 1) = v48;
          v50 = v53;
          _os_log_impl(&dword_20DF62000, v53, v45, "URLError error : %ld", v47, 0xCu);
          MEMORY[0x20F32B3A0](v47, -1, -1);
        }

        else
        {
          v49 = *(v41 + 8);
          v49(v43, v12);
          v50 = v44;
        }

        type metadata accessor for NetworkError(0);
        sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        v28 = swift_allocError();
        v51 = v56;
        sub_20E008A14();
        swift_storeEnumTagMultiPayload();
        v49(v51, v12);
      }
    }
  }

  else
  {
    v21(v11, 1, 1, v12);
    sub_20DF66E28(v11, &qword_27C853670, &qword_20E013AE8);
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_2811249D0);
    v30 = sub_20E009074();
    v31 = sub_20E009544();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Unknown Error", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFFFE34(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v28 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  return v28;
}

uint64_t sub_20DFFFE34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DFFFE98()
{
  v22 = *MEMORY[0x277D85DE8];
  sub_20E008774();
  swift_allocObject();
  sub_20E008764();
  v1 = v0[2];
  v2 = v0[4];
  v20 = v0[3];
  v21 = v2;
  v3 = *v0;
  v18 = v0[1];
  v19 = v1;
  *(&v17 + 1) = *(&v3 + 1);
  sub_20E003B14();
  v5 = sub_20E008754();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_20E008B64();
  *&v17 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:4 error:&v17];

  v11 = v17;
  if (v10)
  {
    sub_20E009654();
    sub_20DF67FFC(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    v13 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v5, v7);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (!*(&v18 + 1))
  {
    return 0;
  }

  sub_20DF77A64(v15, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20E0000C8(uint64_t a1, uint64_t a2)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

uint64_t sub_20E00012C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E003A6C();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_20E000178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E009A34();
  sub_20E009184();
  return sub_20E009A54();
}

unint64_t sub_20E0001D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20E003150(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_20E00020C(uint64_t a1)
{
  v2 = sub_20E003A6C();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_20E000248(uint64_t a1)
{
  v2 = sub_20E003A6C();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_20E0002A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E003A6C();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_20E0002F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853738, &qword_20E014010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003ED8();
  sub_20E009A84();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853728, &qword_20E014008);
  sub_20E003F2C(&qword_27C853740, sub_20E003B14, MEMORY[0x277D83948]);
  sub_20E009944();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20E000498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F74636166 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E000520(uint64_t a1)
{
  v2 = sub_20E003ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E00055C(uint64_t a1)
{
  v2 = sub_20E003ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20E000598@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20E003354(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20E0005EC()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E0006AC(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20E000758(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20E000814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20E003508(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20E000844(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74616E6974736564;
  if (*v1 != 2)
  {
    v5 = 0x736B6E696C5FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7954726F74636166;
    v2 = 0xEA00000000006570;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_20E0008C0()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x736B6E696C5FLL;
  }

  if (*v0)
  {
    v1 = 0x7954726F74636166;
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

unint64_t sub_20E000938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E003508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E000960(uint64_t a1)
{
  v2 = sub_20E003908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E00099C(uint64_t a1)
{
  v2 = sub_20E003908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E0009D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8536C0, &qword_20E013D60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003908();
  sub_20E009A84();
  LOBYTE(v12) = 0;
  sub_20E009914();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_20E009914();
    LOBYTE(v12) = 2;
    sub_20E009914();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v11[15] = 3;
    sub_20E003A18();
    sub_20E009904();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20E000BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853710, &qword_20E013FF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003E84();
  sub_20E009A84();
  v14 = 0;
  sub_20E009914();
  if (!v5)
  {
    v13 = 1;
    sub_20E009914();
  }

  return (*(v8 + 8))(v10, v7);
}

__n128 sub_20E000D6C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20E003554(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_20E000DD0()
{
  if (*v0)
  {
    return 1684956531;
  }

  else
  {
    return 0x796669726576;
  }
}

uint64_t sub_20E000E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796669726576 && a2 == 0xE600000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E000ED8(uint64_t a1)
{
  v2 = sub_20E003E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E000F14(uint64_t a1)
{
  v2 = sub_20E003E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E000F50@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20E003CA0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_20E000FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v5[48] = a2;
  v5[49] = a3;
  v5[47] = a1;
  v6 = sub_20E009764();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v7 = sub_20E009774();
  v5[55] = v7;
  v5[56] = *(v7 - 8);
  v5[57] = swift_task_alloc();
  v8 = sub_20E008CD4();
  v5[58] = v8;
  v5[59] = *(v8 - 8);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v5[63] = swift_task_alloc();
  v9 = sub_20E008714();
  v5[64] = v9;
  v5[65] = *(v9 - 8);
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E0011CC, 0, 0);
}

uint64_t sub_20E0011CC()
{
  v18 = v0;
  if (os_variant_has_internal_diagnostics() && (v1 = sub_20E0091C4(), v2 = sub_20E0091C4(), v3 = CFPreferencesCopyAppValue(v1, v2), v2, v1, v3) && (v0[45] = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v0[46];
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C8626C8);

    v6 = sub_20E009074();
    v7 = sub_20E009554();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = sub_20E009174();
      v12 = sub_20DF74468(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20DF62000, v6, v7, "Overriding Account Lookup fields with: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F32B3A0](v9, -1, -1);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }
  }

  else
  {
    v4 = v0[48];
  }

  v0[67] = v4;
  v13 = swift_task_alloc();
  v0[68] = v13;
  *v13 = v0;
  v13[1] = sub_20E001474;
  v14 = v0[63];
  v15 = v0[47];

  return sub_20E0063AC(v14, v15, v4);
}

uint64_t sub_20E001474()
{

  return MEMORY[0x2822009F8](sub_20E00158C, 0, 0);
}

uint64_t sub_20E00158C()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to create request URL for TAF Authorization.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v1 + 32))(v0[66], v3, v2);
    sub_20DFDF8DC(0xD00000000000001ALL, 0x800000020E018060, 0xD000000000000021, 0x800000020E018080);
    sub_20E008CC4();
    v11 = swift_task_alloc();
    v0[69] = v11;
    *v11 = v0;
    v11[1] = sub_20E001864;
    v12 = v0[66];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20E001864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = a3;
  v5[73] = v3;

  if (v3)
  {
    v6 = sub_20E002FCC;
  }

  else
  {
    v6 = sub_20E001984;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20E001984()
{
  v173 = v0;
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
  v5 = v0[58];
  v6 = (v0[47] + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v167 = v6[1];
  v168 = *v6;

  v7 = sub_20DFE0F98();
  v9 = v8;
  (*(v3 + 16))(v2, v1, v5);

  sub_20E008C94();
  sub_20E008BB4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v4, v5);
  v12(v2, v5);
  v13 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_97;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v166 = v12;
  v0 = v171;
  v15 = *(v171 + 400);
  v14 = *(v171 + 408);
  *(v171 + 176) = v168;
  *(v171 + 184) = v167;
  *(v171 + 192) = v7;
  *(v171 + 200) = v9;
  *(v171 + 208) = v15;
  *(v171 + 216) = v14;
  *(v171 + 224) = 0;
  *(v171 + 232) = v13;
  sub_20E004C78();
  sub_20DFEC91C(v171 + 176);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    if (qword_27C852070 == -1)
    {
LABEL_15:
      v34 = sub_20E009094();
      __swift_project_value_buffer(v34, qword_27C8626B0);
      v35 = sub_20E009074();
      v36 = sub_20E009544();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_20DF62000, v35, v36, "Unable to process Authorization response from Utility.", v37, 2u);
        MEMORY[0x20F32B3A0](v37, -1, -1);
      }

      v27 = v0[72];
      v38 = v0[71];
      v39 = v0[70];
      v30 = v0[62];
      v31 = v0[58];

      type metadata accessor for NetworkError(0);
      sub_20DF960FC();
      v32 = swift_allocError();
      *v40 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v39, v38);
      goto LABEL_66;
    }

LABEL_99:
    swift_once();
    goto LABEL_15;
  }

  v17 = v16;
  v18 = *(v171 + 528);
  v19 = *(v171 + 496);
  v20 = *(v171 + 392);
  v21 = *(v171 + 576);
  sub_20DFDFFF8(0xD00000000000001ALL, 0x800000020E0180B0, [v17 statusCode], &unk_28252DEC0);
  sub_20DFC6D90(v18, [v17 statusCode], v168, v167, v19, v20);
  v22 = [v17 statusCode];
  if (v22 > 408)
  {
    if (v22 > 428)
    {
      if (v22 == 429)
      {
        if (qword_27C852078 != -1)
        {
          swift_once();
        }

        v85 = sub_20E009094();
        __swift_project_value_buffer(v85, qword_27C8626C8);
        v86 = sub_20E009074();
        v87 = sub_20E009544();
        v0 = v171;
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_20DF62000, v86, v87, "Too Many Request | User requested to authorize multiple times from the same account.", v88, 2u);
          MEMORY[0x20F32B3A0](v88, -1, -1);
        }

        v27 = *(v171 + 576);
        v28 = *(v171 + 568);
        v29 = *(v171 + 560);
        v30 = *(v171 + 496);
        v31 = *(v171 + 464);

        sub_20DFEC8C8();
        v32 = swift_allocError();
        v46 = 5;
      }

      else
      {
        if (v22 != 500)
        {
          goto LABEL_73;
        }

        if (qword_27C852078 != -1)
        {
          swift_once();
        }

        v51 = sub_20E009094();
        __swift_project_value_buffer(v51, qword_27C8626C8);
        v52 = sub_20E009074();
        v53 = sub_20E009544();
        v0 = v171;
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_20DF62000, v52, v53, "Internal Server Error", v54, 2u);
          MEMORY[0x20F32B3A0](v54, -1, -1);
        }

        v27 = *(v171 + 576);
        v28 = *(v171 + 568);
        v29 = *(v171 + 560);
        v30 = *(v171 + 496);
        v31 = *(v171 + 464);

        sub_20DFEC8C8();
        v32 = swift_allocError();
        v46 = 6;
      }
    }

    else if (v22 == 409)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v77 = sub_20E009094();
      __swift_project_value_buffer(v77, qword_27C8626C8);
      v78 = sub_20E009074();
      v79 = sub_20E009544();
      v0 = v171;
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_20DF62000, v78, v79, "User Conflict | User must authenticate using OAuth.", v80, 2u);
        MEMORY[0x20F32B3A0](v80, -1, -1);
      }

      v27 = *(v171 + 576);
      v28 = *(v171 + 568);
      v29 = *(v171 + 560);
      v30 = *(v171 + 496);
      v31 = *(v171 + 464);

      sub_20DFEC8C8();
      v32 = swift_allocError();
      v46 = 3;
    }

    else
    {
      if (v22 != 412)
      {
        goto LABEL_73;
      }

      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v41 = sub_20E009094();
      __swift_project_value_buffer(v41, qword_27C8626C8);
      v42 = sub_20E009074();
      v43 = sub_20E009544();
      v0 = v171;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_20DF62000, v42, v43, "No Verification Factor | User does not have a verification factor on record.", v44, 2u);
        MEMORY[0x20F32B3A0](v44, -1, -1);
      }

      v27 = *(v171 + 576);
      v28 = *(v171 + 568);
      v29 = *(v171 + 560);
      v30 = *(v171 + 496);
      v31 = *(v171 + 464);

      sub_20DFEC8C8();
      v32 = swift_allocError();
      v46 = 4;
    }

LABEL_64:
    *v45 = v46;
LABEL_65:
    swift_willThrow();
    sub_20DF67FFC(v29, v28);

LABEL_66:
    v166(v30, v31);
LABEL_67:
    v0[40] = v32;
    v89 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v90 = swift_dynamicCast();
    v91 = v0[66];
    v92 = v0[65];
    v93 = v0[64];
    if (v90)
    {
      v94 = v0[41];
      sub_20DFEC8C8();
      swift_allocError();
      *v95 = v94;
    }

    else
    {
      sub_20DFFF4B4(v32);
    }

    swift_willThrow();

    (*(v92 + 8))(v91, v93);

    v96 = v0[1];

    return v96();
  }

  if (v22 > 400)
  {
    if (v22 == 401)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v81 = sub_20E009094();
      __swift_project_value_buffer(v81, qword_27C8626C8);
      v82 = sub_20E009074();
      v83 = sub_20E009544();
      v0 = v171;
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_20DF62000, v82, v83, "UnAuthorized | PAT Validation Failed | Check request", v84, 2u);
        MEMORY[0x20F32B3A0](v84, -1, -1);
      }

      v27 = *(v171 + 576);
      v28 = *(v171 + 568);
      v29 = *(v171 + 560);
      v30 = *(v171 + 496);
      v31 = *(v171 + 464);

      sub_20DFEC8C8();
      v32 = swift_allocError();
      v46 = 1;
    }

    else
    {
      if (v22 != 404)
      {
        goto LABEL_73;
      }

      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v47 = sub_20E009094();
      __swift_project_value_buffer(v47, qword_27C8626C8);
      v48 = sub_20E009074();
      v49 = sub_20E009544();
      v0 = v171;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_20DF62000, v48, v49, "Lookup Failed | User Account Not Found", v50, 2u);
        MEMORY[0x20F32B3A0](v50, -1, -1);
      }

      v27 = *(v171 + 576);
      v28 = *(v171 + 568);
      v29 = *(v171 + 560);
      v30 = *(v171 + 496);
      v31 = *(v171 + 464);

      sub_20DFEC8C8();
      v32 = swift_allocError();
      v46 = 2;
    }

    goto LABEL_64;
  }

  if (v22 != 300)
  {
    if (v22 == 400)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v23 = sub_20E009094();
      __swift_project_value_buffer(v23, qword_27C8626C8);
      v24 = sub_20E009074();
      v25 = sub_20E009544();
      v0 = v171;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20DF62000, v24, v25, "BAD REQUEST | Check request", v26, 2u);
        MEMORY[0x20F32B3A0](v26, -1, -1);
      }

      v27 = *(v171 + 576);
      v28 = *(v171 + 568);
      v29 = *(v171 + 560);
      v30 = *(v171 + 496);
      v31 = *(v171 + 464);

      sub_20DFEC8C8();
      v32 = swift_allocError();
      *v33 = 0;
      goto LABEL_65;
    }

LABEL_73:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v0 = v171;
    v98 = *(v171 + 576);
    v99 = sub_20E009094();
    __swift_project_value_buffer(v99, qword_27C8626C8);
    v100 = v98;
    v101 = sub_20E009074();
    v102 = sub_20E009544();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = *(v171 + 576);
      v104 = swift_slowAlloc();
      *v104 = 134217984;
      *(v104 + 4) = [v17 statusCode];

      _os_log_impl(&dword_20DF62000, v101, v102, "Request failed : Status Code %ld", v104, 0xCu);
      MEMORY[0x20F32B3A0](v104, -1, -1);
      v105 = *(v171 + 576);
    }

    else
    {

      v105 = *(v171 + 576);
      v101 = v105;
    }

    v106 = *(v171 + 568);
    v107 = *(v171 + 560);
    v169 = *(v171 + 496);
    v108 = *(v171 + 464);

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    v32 = swift_allocError();
    *v109 = [v17 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v107, v106);

    v166(v169, v108);
    goto LABEL_67;
  }

  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v55 = sub_20E009094();
  __swift_project_value_buffer(v55, qword_27C8626C8);
  v56 = sub_20E009074();
  v57 = sub_20E009554();
  v0 = v171;
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_20DF62000, v56, v57, "Account Lookup Response received", v58, 2u);
    MEMORY[0x20F32B3A0](v58, -1, -1);
  }

  v59 = *(v171 + 584);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20E003AC0();
  sub_20E008724();
  if (v59)
  {
    v60 = v59;

    *(v171 + 344) = v59;
    v61 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    if (swift_dynamicCast())
    {
      v62 = (*(*(v171 + 448) + 88))(*(v171 + 456), *(v171 + 440));
      v64 = *(v171 + 448);
      v63 = *(v171 + 456);
      v65 = *(v171 + 440);
      if (v62 == *MEMORY[0x277D84158])
      {
        v66 = *(v171 + 432);
        v67 = *(v171 + 424);
        v68 = *(v171 + 416);

        (*(v64 + 96))(v63, v65);
        v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853660, &qword_20E013D70) + 48);
        sub_20DFE4B08(v63, v171 + 240);
        (*(v67 + 32))(v66, v63 + v69, v68);
        __swift_project_boxed_opaque_existential_1((v171 + 240), *(v171 + 264));
        v70 = sub_20E009A94();
        MEMORY[0x20F32A4B0](v70);

        sub_20E009714();

        v172[0] = 0x6E756F6620746F6ELL;
        v172[1] = 0xAE00209380E22064;
        v71 = sub_20E009754();
        MEMORY[0x20F32A4B0](v71);

        MEMORY[0x20F32A4B0](0x6E756F6620746F6ELL, 0xAE00209380E22064);

        v72 = sub_20E009074();
        v73 = sub_20E009544();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v172[0] = v75;
          *v74 = 136315138;
          v76 = sub_20DF74468(0xD00000000000001FLL, 0x800000020E0180D0, v172);

          *(v74 + 4) = v76;
          _os_log_impl(&dword_20DF62000, v72, v73, "%s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x20F32B3A0](v75, -1, -1);
          MEMORY[0x20F32B3A0](v74, -1, -1);
        }

        else
        {
        }

        v158 = *(v171 + 576);
        v159 = *(v171 + 568);
        v160 = *(v171 + 560);
        v170 = *(v171 + 496);
        v161 = *(v171 + 464);
        v162 = *(v171 + 432);
        v163 = *(v171 + 424);
        v164 = *(v171 + 416);
        type metadata accessor for NetworkError(0);
        sub_20DF960FC();
        v32 = swift_allocError();
        *v165 = 1;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v160, v159);

        v0 = v171;
        (*(v163 + 8))(v162, v164);
        v166(v170, v161);
        __swift_destroy_boxed_opaque_existential_0((v171 + 240));

        goto LABEL_67;
      }

      (*(v64 + 8))(*(v171 + 456), *(v171 + 440));
    }

    v132 = sub_20E009074();
    v133 = sub_20E009544();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_20DF62000, v132, v133, "Error while decoding response from server", v134, 2u);
      MEMORY[0x20F32B3A0](v134, -1, -1);
    }

    v135 = v60;
    v136 = sub_20E009074();
    v137 = sub_20E009544();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v172[0] = v139;
      *v138 = 136315138;
      swift_getErrorValue();
      v140 = sub_20E0099E4();
      v142 = sub_20DF74468(v140, v141, v172);

      *(v138 + 4) = v142;
      _os_log_impl(&dword_20DF62000, v136, v137, "%s", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x20F32B3A0](v139, -1, -1);
      MEMORY[0x20F32B3A0](v138, -1, -1);
    }

    v143 = *(v171 + 576);
    v144 = *(v171 + 568);
    v145 = *(v171 + 560);
    v146 = *(v171 + 496);
    v147 = *(v171 + 464);
    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    v32 = swift_allocError();
    *v148 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v145, v144);

    v166(v146, v147);
    goto LABEL_67;
  }

  v110 = *(v171 + 336);
  v111 = *(v110 + 16);
  if (v111)
  {
    v172[0] = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v112 = type metadata accessor for TAFVerificationFactor();
    v113 = v111 - 1;
    for (i = 32; ; i += 80)
    {
      *(v171 + 16) = *(v110 + i);
      v115 = *(v110 + i + 16);
      v116 = *(v110 + i + 32);
      v117 = *(v110 + i + 64);
      *(v171 + 64) = *(v110 + i + 48);
      *(v171 + 80) = v117;
      *(v171 + 32) = v115;
      *(v171 + 48) = v116;
      v118 = objc_allocWithZone(v112);
      v119 = &v118[OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor];
      *v119 = *(v171 + 16);
      v120 = *(v171 + 32);
      v121 = *(v171 + 48);
      v122 = *(v171 + 80);
      *(v119 + 3) = *(v171 + 64);
      *(v119 + 4) = v122;
      *(v119 + 1) = v120;
      *(v119 + 2) = v121;
      sub_20E0039B0(v171 + 16, v171 + 96);
      *(v171 + 304) = v118;
      *(v171 + 312) = v112;
      objc_msgSendSuper2((v171 + 304), sel_init);
      sub_20E009794();
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (!v113)
      {
        break;
      }

      --v113;
    }

    v0 = v171;
    v123 = *(v171 + 576);
    v124 = *(v171 + 568);
    v125 = *(v171 + 560);
    v126 = *(v171 + 528);
    v127 = *(v171 + 520);
    v128 = *(v171 + 512);
    v129 = *(v171 + 496);
    v130 = *(v171 + 464);

    sub_20DF67FFC(v125, v124);

    v166(v129, v130);
    (*(v127 + 8))(v126, v128);
    v131 = v172[0];
  }

  else
  {
    v149 = *(v171 + 576);
    v150 = *(v171 + 568);
    v151 = *(v171 + 560);
    v152 = *(v171 + 528);
    v153 = *(v171 + 520);
    v154 = *(v171 + 512);
    v155 = *(v171 + 496);
    v156 = *(v171 + 464);

    sub_20DF67FFC(v151, v150);

    v166(v155, v156);
    (*(v153 + 8))(v152, v154);
    v131 = MEMORY[0x277D84F90];
  }

  v157 = v0[1];

  return v157(v131);
}

uint64_t sub_20E002FCC()
{
  (*(v0[59] + 8))(v0[62], v0[58]);
  v1 = v0[73];
  v0[40] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[64];
  if (v3)
  {
    v7 = v0[41];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

unint64_t sub_20E003150(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20E003164()
{
  result = qword_27C853680;
  if (!qword_27C853680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853680);
  }

  return result;
}

unint64_t sub_20E0031BC()
{
  result = qword_27C853688;
  if (!qword_27C853688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853688);
  }

  return result;
}

unint64_t sub_20E003214()
{
  result = qword_27C853690;
  if (!qword_27C853690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853690);
  }

  return result;
}

unint64_t sub_20E00326C()
{
  result = qword_27C853698;
  if (!qword_27C853698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853698);
  }

  return result;
}

unint64_t sub_20E0032C4()
{
  result = qword_27C8536A0;
  if (!qword_27C8536A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices25TAFAuthorizationEndpointsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_20E003354(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853718, &qword_20E014000);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003ED8();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853728, &qword_20E014008);
    sub_20E003F2C(&qword_27C853730, sub_20DF75740, MEMORY[0x277D83978]);
    sub_20E0098C4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_20E003508(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E003554@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8536A8, &qword_20E013D58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003908();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_20E009894();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_20E009894();
  v29 = v12;
  v27 = v11;
  LOBYTE(v36[0]) = 2;
  v26 = sub_20E009894();
  v28 = v13;
  v39 = 3;
  sub_20E00395C();
  sub_20E009884();
  (*(v6 + 8))(v8, v5);
  v24 = *(&v37 + 1);
  v25 = v37;
  v22 = *(&v38 + 1);
  v23 = v38;
  *&v31 = v9;
  v14 = v30;
  *(&v31 + 1) = v30;
  v15 = v27;
  *&v32 = v27;
  v16 = v29;
  v17 = v26;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  v18 = v28;
  *(&v33 + 1) = v28;
  v34 = v37;
  v35 = v38;
  sub_20E0039B0(&v31, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v9;
  v36[1] = v14;
  v36[2] = v15;
  v36[3] = v16;
  v36[4] = v17;
  v36[5] = v18;
  v36[6] = v25;
  v36[7] = v24;
  v36[8] = v23;
  v36[9] = v22;
  result = sub_20E0039E8(v36);
  v20 = v34;
  a2[2] = v33;
  a2[3] = v20;
  a2[4] = v35;
  v21 = v32;
  *a2 = v31;
  a2[1] = v21;
  return result;
}

unint64_t sub_20E003908()
{
  result = qword_27C8536B0;
  if (!qword_27C8536B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536B0);
  }

  return result;
}

unint64_t sub_20E00395C()
{
  result = qword_27C8536B8;
  if (!qword_27C8536B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536B8);
  }

  return result;
}

unint64_t sub_20E003A18()
{
  result = qword_27C8536C8;
  if (!qword_27C8536C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536C8);
  }

  return result;
}

unint64_t sub_20E003A6C()
{
  result = qword_27C8536D0;
  if (!qword_27C8536D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536D0);
  }

  return result;
}

unint64_t sub_20E003AC0()
{
  result = qword_27C8536D8;
  if (!qword_27C8536D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536D8);
  }

  return result;
}

unint64_t sub_20E003B14()
{
  result = qword_27C8536E0;
  if (!qword_27C8536E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536E0);
  }

  return result;
}

unint64_t sub_20E003B9C()
{
  result = qword_27C8536E8;
  if (!qword_27C8536E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536E8);
  }

  return result;
}

unint64_t sub_20E003BF4()
{
  result = qword_27C8536F0;
  if (!qword_27C8536F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536F0);
  }

  return result;
}

unint64_t sub_20E003C4C()
{
  result = qword_27C8536F8;
  if (!qword_27C8536F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8536F8);
  }

  return result;
}

uint64_t sub_20E003CA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853700, &qword_20E013FF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E003E84();
  sub_20E009A74();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_20E009894();
    v10 = 1;
    sub_20E009894();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_20E003E84()
{
  result = qword_27C853708;
  if (!qword_27C853708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853708);
  }

  return result;
}

unint64_t sub_20E003ED8()
{
  result = qword_27C853720;
  if (!qword_27C853720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853720);
  }

  return result;
}

uint64_t sub_20E003F2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853728, &qword_20E014008);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E003FC8()
{
  result = qword_27C853748;
  if (!qword_27C853748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853748);
  }

  return result;
}

unint64_t sub_20E004020()
{
  result = qword_27C853750;
  if (!qword_27C853750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853750);
  }

  return result;
}

unint64_t sub_20E004078()
{
  result = qword_27C853758;
  if (!qword_27C853758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853758);
  }

  return result;
}

unint64_t sub_20E0040D0()
{
  result = qword_27C853760;
  if (!qword_27C853760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853760);
  }

  return result;
}

unint64_t sub_20E004128()
{
  result = qword_27C853768;
  if (!qword_27C853768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853768);
  }

  return result;
}

unint64_t sub_20E004180()
{
  result = qword_27C853770;
  if (!qword_27C853770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853770);
  }

  return result;
}

uint64_t sub_20E004210()
{
  v20 = *MEMORY[0x277D85DE8];
  sub_20E008774();
  swift_allocObject();
  sub_20E008764();
  v1 = v0[1];
  v16 = *v0;
  v17 = v1;
  v2 = v0[3];
  v18 = v0[2];
  v19 = v2;
  sub_20E004F5C();
  v4 = sub_20E008754();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_20E008B64();
  *&v16 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:&v16];

  v10 = v16;
  if (v9)
  {
    sub_20E009654();
    sub_20DF67FFC(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v4, v6);

    v16 = 0u;
    v17 = 0u;
  }

  v14[0] = v16;
  v14[1] = v17;
  if (!*(&v17 + 1))
  {
    return 0;
  }

  sub_20DF77A64(v14, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853788, &qword_20E014268);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

id sub_20E0043F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_20E004F10();
    v4 = sub_20E009154();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_20E004484(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853798, &qword_20E014328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E005044();
  sub_20E009A84();
  v10[15] = 0;
  sub_20E009914();
  if (!v2)
  {
    v10[14] = 1;
    sub_20E009914();
    v10[13] = 2;
    sub_20E009914();
    v10[12] = *(v3 + 48);
    v10[11] = 3;
    sub_20E005098();
    sub_20E009944();
    v10[10] = 4;
    sub_20E009934();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20E0046A4()
{
  v1 = *v0;
  v2 = 0x497974696C697475;
  v3 = 0x74616C6572726F63;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4974736575716572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E004744@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E0050EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E00476C(uint64_t a1)
{
  v2 = sub_20E005044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E0047A8(uint64_t a1)
{
  v2 = sub_20E005044();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20E0047E4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20E0052B4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_20E004840(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65646F43646E6573;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x6F43796669726576;
  if (v3 == 1)
  {
    v5 = 0x65646F43646E6573;
  }

  else
  {
    v4 = 0xEA00000000006564;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000020E014A50;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6F43796669726576;
    v8 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x800000020E014A50;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20E004944()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20E0049F0(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20E004A88(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20E004B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20E005854(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20E004B60(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65646F43646E6573;
  if (v2 != 1)
  {
    v4 = 0x6F43796669726576;
    v3 = 0xEA00000000006564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000020E014A50;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_20E004C78()
{
  v0 = sub_20E004210();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  if (qword_27C8520B8 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_27C862788);

  v3 = sub_20E009074();
  v4 = sub_20E009554();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20DF74468(0xD00000000000002ELL, 0x800000020E018110, v13);
    *(v5 + 12) = 2080;
    sub_20E004F10();
    v7 = sub_20E009174();
    v9 = sub_20DF74468(v7, v8, v13);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20DF62000, v3, v4, "Sending analytics event for [%s]: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F32B3A0](v6, -1, -1);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v10 = sub_20E0091C4();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v13[4] = sub_20E004EF0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20E0043F8;
  v13[3] = &block_descriptor_2;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20E004F10()
{
  result = qword_27C853778;
  if (!qword_27C853778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C853778);
  }

  return result;
}

unint64_t sub_20E004F5C()
{
  result = qword_27C853780;
  if (!qword_27C853780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853780);
  }

  return result;
}

unint64_t sub_20E004FC0(uint64_t a1)
{
  *(a1 + 8) = sub_20E004FF0();
  result = sub_20E004F5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20E004FF0()
{
  result = qword_27C853790;
  if (!qword_27C853790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853790);
  }

  return result;
}

unint64_t sub_20E005044()
{
  result = qword_27C8537A0;
  if (!qword_27C8537A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537A0);
  }

  return result;
}

unint64_t sub_20E005098()
{
  result = qword_27C8537A8;
  if (!qword_27C8537A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537A8);
  }

  return result;
}

uint64_t sub_20E0050EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x497974696C697475 && a2 == 0xE900000000000044;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000044 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20E0052B4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8537B0, &qword_20E014330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E005044();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = sub_20E009894();
  v26 = v10;
  LOBYTE(v31[0]) = 1;
  v11 = sub_20E009894();
  v25 = v12;
  v23 = v11;
  LOBYTE(v31[0]) = 2;
  v22 = sub_20E009894();
  v24 = v13;
  LOBYTE(v27) = 3;
  sub_20E0055F4();
  sub_20E0098C4();
  v34 = LOBYTE(v31[0]);
  v35 = 4;
  v14 = sub_20E0098B4();
  (*(v6 + 8))(v8, v5);
  v16 = v25;
  v15 = v26;
  *&v27 = v9;
  *(&v27 + 1) = v26;
  v17 = v23;
  *&v28 = v23;
  *(&v28 + 1) = v25;
  v18 = v24;
  *&v29 = v22;
  *(&v29 + 1) = v24;
  LOBYTE(v30) = v34;
  *(&v30 + 1) = v14;
  sub_20E005648(&v27, v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31[0] = v9;
  v31[1] = v15;
  v31[2] = v17;
  v31[3] = v16;
  v31[4] = v22;
  v31[5] = v18;
  v32 = v34;
  v33 = v14;
  result = sub_20DFEC91C(v31);
  v20 = v28;
  *a2 = v27;
  a2[1] = v20;
  v21 = v30;
  a2[2] = v29;
  a2[3] = v21;
  return result;
}

unint64_t sub_20E0055F4()
{
  result = qword_27C8537B8;
  if (!qword_27C8537B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537B8);
  }

  return result;
}

unint64_t sub_20E0056A4()
{
  result = qword_27C8537C0;
  if (!qword_27C8537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537C0);
  }

  return result;
}

unint64_t sub_20E0056FC()
{
  result = qword_27C8537C8;
  if (!qword_27C8537C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537C8);
  }

  return result;
}

unint64_t sub_20E005754()
{
  result = qword_27C8537D0;
  if (!qword_27C8537D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537D0);
  }

  return result;
}

unint64_t sub_20E0057AC()
{
  result = qword_27C8537D8;
  if (!qword_27C8537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537D8);
  }

  return result;
}

unint64_t sub_20E005800()
{
  result = qword_27C8537E0;
  if (!qword_27C8537E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8537E0);
  }

  return result;
}

unint64_t sub_20E005854(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20E0058A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v45 = MEMORY[0x277D84F90];
  sub_20DF74A4C(0, v1, 0);
  v2 = v45;
  v4 = v3 + 64;
  v5 = sub_20E009674();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
  v36 = v3;
  v8 = 0;
  v32 = v3 + 72;
  v33 = v1;
  v34 = v6;
  v35 = v3 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v38 = 1 << v5;
    v39 = v5 >> 6;
    v37 = v8;
    v40 = v5;
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = (*(v3 + 56) + 16 * v5);
    v41 = *v9;
    v42 = v9[1];
    v43 = *v10;
    v44 = v10[1];
    v11 = sub_20E009834();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    result = sub_20DFB85D0(0x6D614E646C656966, 0xE900000000000065);
    if (v12)
    {
      goto LABEL_25;
    }

    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v11[6] + 16 * result);
    *v13 = 0x6D614E646C656966;
    v13[1] = 0xE900000000000065;
    v14 = (v11[7] + 16 * result);
    *v14 = v41;
    v14[1] = v42;
    v15 = v11[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_26;
    }

    v11[2] = v17;

    result = sub_20DFB85D0(0x65756C6176, 0xE500000000000000);
    if (v18)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v11[6] + 16 * result);
    *v19 = 0x65756C6176;
    v19[1] = 0xE500000000000000;
    v20 = (v11[7] + 16 * result);
    *v20 = v43;
    v20[1] = v44;
    v21 = v11[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_26;
    }

    v11[2] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayDestroy();

    v24 = *(v45 + 16);
    v23 = *(v45 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_20DF74A4C((v23 > 1), v24 + 1, 1);
    }

    *(v45 + 16) = v24 + 1;
    *(v45 + 8 * v24 + 32) = v11;
    v3 = v36;
    v5 = 1 << *(v36 + 32);
    result = v40;
    if (v40 >= v5)
    {
      goto LABEL_30;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v39);
    if ((v25 & v38) == 0)
    {
      goto LABEL_31;
    }

    LODWORD(v6) = v34;
    if (v34 != *(v36 + 36))
    {
      goto LABEL_32;
    }

    v26 = v25 & (-2 << (v40 & 0x3F));
    if (v26)
    {
      v5 = __clz(__rbit64(v26)) | v40 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v39 << 6;
      v28 = v39 + 1;
      v29 = (v32 + 8 * v39);
      while (v28 < (v5 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_20E00721C(v40, v34, 0);
          v5 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_20E00721C(v40, v34, 0);
    }

LABEL_4:
    v8 = v37 + 1;
    if (v37 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20E005CA0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_20E008714();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = *(v8 + 16);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10();
  v11 = sub_20DFE7E38();
  if (v11 == 1)
  {
    goto LABEL_4;
  }

  v12 = sub_20E009984();

  if (v12)
  {
    goto LABEL_6;
  }

  if (v11)
  {
    v13 = sub_20E009984();

    if ((v13 & 1) == 0)
    {
      if (qword_27C852078 != -1)
      {
        swift_once();
      }

      v35 = sub_20E009094();
      __swift_project_value_buffer(v35, qword_27C8626C8);
      v36 = sub_20E009074();
      v37 = sub_20E009554();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v47 = v39;
        *v38 = 136315138;
        v40 = 1953654115;
        if (v11 != 2)
        {
          v40 = 1685025392;
        }

        if (v11 == 1)
        {
          v41 = 7759204;
        }

        else
        {
          v41 = v40;
        }

        if (v11 == 1)
        {
          v42 = 0xE300000000000000;
        }

        else
        {
          v42 = 0xE400000000000000;
        }

        v43 = sub_20DF74468(v41, v42, &v47);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_20DF62000, v36, v37, "No HMAC Auth headers required in current env %s.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x20F32B3A0](v39, -1, -1);
        MEMORY[0x20F32B3A0](v38, -1, -1);
      }

      v28 = v46;
      if ((a1 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
LABEL_4:
  }

LABEL_6:
  v45 = a1;
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v14 = sub_20E009094();
  __swift_project_value_buffer(v14, qword_27C8626C8);
  v15 = sub_20E009074();
  v16 = sub_20E009554();
  if (os_log_type_enabled(v15, v16))
  {
    v44 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v17 = 136315138;
    v19 = 0xE300000000000000;
    v20 = 1953654115;
    if (v11 != 2)
    {
      v20 = 1685025392;
    }

    v21 = 7759204;
    if (!v11)
    {
      v21 = 0x6E7265746E496171;
      v19 = 0xEA00000000006C61;
    }

    if (v11 <= 1u)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v11 <= 1u)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = sub_20DF74468(v22, v23, &v47);

    *(v17 + 4) = v24;
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x20F32B3A0](v18, -1, -1);
    MEMORY[0x20F32B3A0](v17, -1, -1);

    a2 = v44;
  }

  else
  {
  }

  v25 = sub_20E009074();
  v26 = sub_20E009554();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v46;
  if (v27)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_20DF62000, v25, v26, "Adding HMAC headers.", v29, 2u);
    MEMORY[0x20F32B3A0](v29, -1, -1);
  }

  sub_20DFEE628(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 8))(v28, v7);
    (*(v8 + 32))(v28, v6, v7);
    if ((v45 & 1) == 0)
    {
LABEL_29:
      (*(v8 + 32))(a2, v28, v7);
      v33 = 0;
      return (*(v8 + 56))(a2, v33, 1, v7);
    }

LABEL_28:
    sub_20E008704();
    goto LABEL_29;
  }

  sub_20DF66E28(v6, &qword_27C8520C8, &qword_20E010830);
  v30 = sub_20E009074();
  v31 = sub_20E009544();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20DF62000, v30, v31, "Unable to sign with HMAC headers.", v32, 2u);
    MEMORY[0x20F32B3A0](v32, -1, -1);
  }

  (*(v8 + 8))(v28, v7);
  v33 = 1;
  return (*(v8 + 56))(a2, v33, 1, v7);
}

uint64_t sub_20E0063AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_20E008D04();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_20E008714();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v3[12] = swift_task_alloc();
  v6 = sub_20E008AF4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E006598, 0, 0);
}

uint64_t sub_20E006598()
{
  v1 = (v0[4] + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v0[17] = v4;
  v5 = v1[18];
  v0[18] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = xmmword_20E00AB50;
  v7 = v1[25];
  *(v6 + 32) = v1[24];
  *(v6 + 40) = v7;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  sub_20E008AC4();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[12];

    sub_20DF66E28(v12, &qword_27C8520D0, &qword_20E00AB70);
LABEL_8:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v13 = sub_20E009094();
    __swift_project_value_buffer(v13, qword_27C8626C8);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Unable to generate TAF Authorization URL", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }

    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[3];

    (*(v18 + 56))(v19, 1, 1, v17);
LABEL_13:

    v20 = v0[1];

    return v20();
  }

  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  v22 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v22 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_27C8626C8);
    v25 = sub_20E009074();
    v26 = sub_20E009544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Unable to generate TAF Authorization URL | UtilityConfiguration contains empty ClientID", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v28 = v0[16];
    v29 = v0[13];
    v30 = v0[14];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[3];

    (*(v30 + 8))(v28, v29);
    (*(v32 + 56))(v33, 1, 1, v31);
    goto LABEL_13;
  }

  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_20E0069FC;

  return sub_20DFC1D5C(v6, 0);
}

uint64_t sub_20E0069FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {

    v5 = sub_20E006FFC;
  }

  else
  {
    v5 = sub_20E006B5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20E006B5C()
{
  v1 = *(v0 + 40);
  sub_20DFC4A54(*(v0 + 152));

  sub_20E0058A0(v1);
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  v3 = sub_20E009414();

  *(v0 + 16) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    v35 = *(v0 + 80);
    v36 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v34 = *(v0 + 24);
    v14 = sub_20E008B84();
    v32 = v15;
    v33 = v14;

    (*(v9 + 16))(v6, v7, v8);
    sub_20E0086B4();
    sub_20E008CF4();
    sub_20E008CE4();
    (*(v13 + 8))(v11, v12);
    sub_20E009254();

    sub_20E0086D4();

    MEMORY[0x20F32A4B0](v30, v31);

    sub_20E0086D4();

    sub_20E0086D4();
    sub_20E008694();
    sub_20DF67FA8(v33, v32);
    sub_20E0086F4();
    sub_20E005CA0(1, v34);
    sub_20DF67FFC(v33, v32);
    (*(v35 + 8))(v10, v36);
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v16 = v5;

    v17 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v18 = sub_20E009094();
    __swift_project_value_buffer(v18, qword_27C8626C8);
    v19 = sub_20E009074();
    v20 = sub_20E009544();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20DF62000, v19, v20, "Unable to encode TAF Authorization fields", v21, 2u);
      MEMORY[0x20F32B3A0](v21, -1, -1);
    }

    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);
    v27 = *(v0 + 24);

    (*(v24 + 8))(v22, v23);
    (*(v26 + 56))(v27, 1, 1, v25);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_20E006FFC()
{
  v13 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20DF74468(0xD000000000000045, 0x800000020E018160, v12);
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to generate Private Access Token. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F32B3A0](v9, -1, -1);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  (*(v0[10] + 56))(v0[3], 1, 1, v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20E00721C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void static UtilityPeakPeriodsController.generateMockUtilityPeakPeriods(start:)(uint64_t *a2@<X8>)
{
  v90 = sub_20E008DB4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E008CD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v78 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v78 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v78 - v14;
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v16 = sub_20E009094();
  __swift_project_value_buffer(v16, qword_281124A48);
  v17 = sub_20E009074();
  v18 = sub_20E009554();
  v19 = os_log_type_enabled(v17, v18);
  v79 = a2;
  if (v19)
  {
    v20 = v11;
    v21 = v5;
    v22 = v4;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20DF62000, v17, v18, "Generating Mock Data for Utility Peak", v23, 2u);
    v24 = v23;
    v4 = v22;
    v5 = v21;
    v11 = v20;
    a2 = v79;
    MEMORY[0x20F32B3A0](v24, -1, -1);
  }

  sub_20E008C24();
  v87 = sub_20E007C40(v15);
  v26 = v25;
  v27 = *(v5 + 8);
  v84 = v5 + 8;
  v27(v15, v4);
  if (v26)
  {
    v28 = sub_20E009074();
    v29 = sub_20E009544();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20DF62000, v28, v29, "Mock Service unable to calculate end date properly.", v30, 2u);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

    a2[10] = 0;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }

  else
  {
    v91 = MEMORY[0x277D84F90];
    v31 = v88;
    sub_20E008D94();
    v32 = v78;
    sub_20E008D64();
    (*(v89 + 8))(v31, v90);
    sub_20E008C24();
    (*(v5 + 16))(v8, v32, v4);
    v33 = sub_20E008C44();
    v83 = v27;
    if (v33)
    {
      v81 = (v5 + 32);
      v80 = xmmword_20E00D800;
      v82 = v11;
      do
      {
        v34 = sub_20DFE30F8();
        v35 = sub_20E008C34();
        v36 = [v34 stringFromDate_];

        v90 = sub_20E0091D4();
        v89 = v37;

        sub_20E008C24();
        v38 = v83;
        v83(v8, v4);
        v39 = *v81;
        (*v81)(v8, v15, v4);
        v40 = v39;
        v41 = sub_20DFE30F8();
        v42 = sub_20E008C34();
        v43 = [v41 stringFromDate_];

        v88 = sub_20E0091D4();
        v87 = v44;

        sub_20E008C24();
        v38(v8, v4);
        v45 = v40;
        v40(v8, v15, v4);
        v46 = sub_20DFE30F8();
        v47 = sub_20E008C34();
        v48 = [v46 stringFromDate_];

        v86 = sub_20E0091D4();
        v85 = v49;

        sub_20E008C24();
        v38(v8, v4);
        v45(v8, v15, v4);
        v50 = v45;
        v51 = sub_20DFE30F8();
        v52 = sub_20E008C34();
        v53 = [v51 stringFromDate_];

        v54 = sub_20E0091D4();
        v56 = v55;

        sub_20E008C24();
        v38(v8, v4);
        v50(v8, v15, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535C8, "2c");
        inited = swift_initStackObject();
        *(inited + 16) = v80;
        v58 = v89;
        *(inited + 32) = v90;
        *(inited + 40) = v58;
        strcpy((inited + 48), "superOffPeak");
        *(inited + 61) = 0;
        *(inited + 62) = -5120;
        *(inited + 64) = 0;
        v59 = v87;
        *(inited + 72) = v88;
        *(inited + 80) = v59;
        *(inited + 88) = 0x6B61655066666FLL;
        *(inited + 96) = 0xE700000000000000;
        v60 = v86;
        *(inited + 104) = 1;
        *(inited + 112) = v60;
        v11 = v82;
        *(inited + 120) = v85;
        *(inited + 128) = 0x6B6165506E6FLL;
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = 2;
        *(inited + 152) = v54;
        *(inited + 160) = v56;
        *(inited + 168) = 0x6B61655066666FLL;
        *(inited + 176) = 0xE700000000000000;
        *(inited + 184) = 1;
        sub_20E007B48(inited);
      }

      while ((sub_20E008C44() & 1) != 0);
    }

    v61 = sub_20DFE30F8();
    v62 = v78;
    v63 = sub_20E008C34();
    v64 = [v61 stringFromDate_];

    v65 = sub_20E0091D4();
    v90 = v66;

    v67 = sub_20DFE30F8();
    v68 = sub_20E008C34();
    v69 = [v67 stringFromDate_];

    v70 = sub_20E0091D4();
    v72 = v71;

    v73 = v91;
    v74 = v8;
    v75 = v83;
    v83(v74, v4);
    v75(v11, v4);
    v75(v62, v4);
    v76 = v79;
    v77 = v90;
    *v79 = v65;
    v76[1] = v77;
    v76[2] = v70;
    v76[3] = v72;
    v76[4] = v73;
    *(v76 + 5) = xmmword_20E014570;
    *(v76 + 7) = xmmword_20E014580;
    *(v76 + 9) = xmmword_20E014590;
  }
}

char *sub_20E007B48(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20DFFB35C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20E007C40(uint64_t a1)
{
  v1 = sub_20E008DA4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_20E008D44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20E008DB4();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9810], v8);
  sub_20E008D54();
  (*(v9 + 8))(v11, v8);
  v15 = *(v2 + 104);
  v15(v7, *MEMORY[0x277CC9968], v1);
  v15(v5, *MEMORY[0x277CC9998], v1);
  v16 = sub_20E008D84();
  v18 = v17;
  LOBYTE(v9) = v19;
  v20 = *(v2 + 8);
  v20(v5, v1);
  v20(v7, v1);
  (*(v12 + 8))(v14, v23);
  result = 0;
  if ((v9 & 1) == 0)
  {
    result = v18 - v16;
    if (__OFSUB__(v18, v16))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20E007FC8()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_281124A00);
  __swift_project_value_buffer(v0, qword_281124A00);

  return sub_20E009084();
}

uint64_t sub_20E008054()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_281124A18);
  __swift_project_value_buffer(v0, qword_281124A18);

  return sub_20E009084();
}

uint64_t sub_20E008174()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626B0);
  __swift_project_value_buffer(v0, qword_27C8626B0);

  return sub_20E009084();
}

uint64_t sub_20E008200()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626C8);
  __swift_project_value_buffer(v0, qword_27C8626C8);

  return sub_20E009084();
}

uint64_t sub_20E00828C()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626E0);
  __swift_project_value_buffer(v0, qword_27C8626E0);

  return sub_20E009084();
}

uint64_t sub_20E008318()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8626F8);
  __swift_project_value_buffer(v0, qword_27C8626F8);

  return sub_20E009084();
}

uint64_t sub_20E0083CC()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C862728);
  __swift_project_value_buffer(v0, qword_27C862728);

  return sub_20E009084();
}

uint64_t sub_20E008484()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C862758);
  __swift_project_value_buffer(v0, qword_27C862758);

  return sub_20E009084();
}

uint64_t sub_20E008560(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E009094();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_20E009084();
}

uint64_t sub_20E0085E8()
{
  v0 = sub_20E009094();
  __swift_allocate_value_buffer(v0, qword_27C8627A0);
  __swift_project_value_buffer(v0, qword_27C8627A0);

  return sub_20E009084();
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}