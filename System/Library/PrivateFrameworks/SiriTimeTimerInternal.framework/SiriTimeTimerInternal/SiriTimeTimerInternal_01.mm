uint64_t sub_26935ABCC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_26935AD20;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_269356A08(v4 + 16);
    v5 = sub_269354CA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26935AD20()
{
  v26 = v0;
  v1 = *(v0 + 120);
  sub_269356A08(v0 + 16);
  *(v0 + 56) = v1;
  v2 = (v0 + 56);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
    v5 = *(v0 + 96);
    if (v4 >= 0xA)
    {
      type metadata accessor for SiriTimerResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = v5;
      v6 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];
      sub_26934ADAC(v4);
    }

    else
    {
      v6 = sub_2693A08FC();

      sub_26934ADAC(v4);
    }
  }

  else
  {

    if (qword_28030CDE8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D0E8);
    v9 = v7;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 120);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      *(v0 + 72) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error resolving targetTimer for PauseTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    type metadata accessor for SiriTimerResolutionResult();
    v6 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_26935AFE8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5D98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5DA0;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5AC0, v14);
}

uint64_t sub_26935B170(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26935AA24(v6);
}

uint64_t sub_26935B234(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5D68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5D70;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5A90, v14);
}

uint64_t sub_26935B3BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26935B448, 0, 0);
}

uint64_t sub_26935B448()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_26935BFE8(v5, v4);
}

uint64_t sub_26935B544(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5D48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

uint64_t sub_26935B6CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26935B758, 0, 0);
}

uint64_t sub_26935B758()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26935B914(v3);
}

uint64_t type metadata accessor for PauseTimerIntentHandler(uint64_t a1)
{
  result = qword_28030D100;
  if (!qword_28030D100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26935B860()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935B6CC(v2, v3, v4);
}

uint64_t sub_26935B914(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26935B9D4, 0, 0);
}

uint64_t sub_26935B9D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;

    return sub_26939476C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v11 + 32) = [swift_getObjCClassFromMetadata() notRequired];

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_26935BC04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935B3BC(v2, v3, v4);
}

char *sub_26935BCB8(unint64_t *a1, char a2)
{
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 >= 5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 - 7 < 3)
  {
    if (qword_28030CDE8 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D0E8);
    sub_26934AD9C(v2);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    sub_26934ADAC(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19[0] = v7;
      *v6 = 136315138;
      sub_26934AD9C(v2);
      v8 = sub_2693B3760();
      v10 = sub_26934CA40(v8, v9, v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_26933F000, v4, v5, "Failed in PauseTimerIntent handling with an invalid, unhandled error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D63A640](v7, -1, -1);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

LABEL_10:
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 5;
LABEL_11:
    *&v11[v12] = v13;
    [v11 setUserActivity_];
    return v11;
  }

  if (v2 == 5)
  {
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 100;
    goto LABEL_11;
  }

  if (v2 == 6)
  {
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 101;
    goto LABEL_11;
  }

LABEL_16:
  v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
  v16 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  if (a2)
  {
    v17 = 103;
  }

  else
  {
    v17 = 102;
  }

  *&v11[v16] = v17;
  [v11 setUserActivity_];
  sub_26938B998(v2);
  type metadata accessor for SiriTimer();
  v18 = sub_2693B3800();

  [v11 setPausedTimers_];

  return v11;
}

uint64_t sub_26935BFE8(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for PauseTimerIntent();
  v2[6] = &protocol witness table for PauseTimerIntent;
  v2[2] = a1;
  v5 = a1;

  return MEMORY[0x2822009F8](sub_26935C0CC, 0, 0);
}

uint64_t sub_26935C0CC()
{
  v19 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_26935C3A8;

    return sub_26939476C();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_26935C3A8(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_26935C4A8, 0, 0);
}

uint64_t sub_26935C4A8()
{
  v44 = v0;
  v1 = *(v0 + 216);
  if (v1 >> 62)
  {
    if (!sub_2693B3C70())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_20;
  }

  v2 = [*(v0 + 160) targetingInfo];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 134218242;
    if (v1 >> 62)
    {
      v8 = sub_2693B3C70();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    *(v6 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_26934CA40(v15, v14, &v43);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_26933F000, v4, v5, "Filtering %ld targets using targeting info: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v17 = sub_26939E8D4(v3, *(v0 + 160), *(v0 + 216));

  if (!v17)
  {
    v35 = sub_2693B3610();
    v36 = sub_2693B39B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26933F000, v35, v36, "No valid device target found for target criteria", v37, 2u);
      MEMORY[0x26D63A640](v37, -1, -1);
    }

    v38 = *(v0 + 168);

    *(v38 + qword_280E266B8) = 1;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v21 = 136315138;
    v42 = v3;
    v22 = v18;
    v23 = v18;
    v24 = [v22 description];
    v25 = sub_2693B3750();
    v27 = v26;

    v18 = v23;
    v3 = v42;
    v28 = sub_26934CA40(v25, v27, &v43);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_26933F000, v19, v20, "Found valid device target: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D63A640](v41, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  v29 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v32 = *(v31 + 40);
  v33 = v18;
  v32(v17, v30, v31);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v34 = sub_2693B1D2C(v33);

LABEL_20:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39(v34);
}

uint64_t sub_26935C96C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_26935B170(v2, v3, v4);
}

uint64_t sub_26935CA20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935A960(v2, v3, v4);
}

uint64_t sub_26935CAD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_269359F58(v2, v3);
}

id sub_26935CB88(void *a1, void *a2)
{
  v3 = a1;
  v4 = SiriTimer.__allocating_init(mtTimer:)(v3);
  [v4 setDevice_];
  if (qword_280E26288 != -1)
  {
    swift_once();
  }

  v5 = sub_2693B3620();
  __swift_project_value_buffer(v5, qword_280E26290);
  v6 = v3;
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();

  v29 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = a2;
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_2693B3750();
    v15 = v14;

    v16 = sub_26934CA40(v13, v15, &v30);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_26933F000, v7, v8, "Converting MTTimer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v17 = v10;
    a2 = v28;
    MEMORY[0x26D63A640](v17, -1, -1);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  v18 = v4;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = sub_26935D3DC(v18);
    v25 = v24;

    v26 = sub_26934CA40(v23, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_26933F000, v19, v20, "To SiriTimer: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63A640](v22, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  else
  {
  }

  return v18;
}

uint64_t sub_26935CE54()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26290);
  v1 = __swift_project_value_buffer(v0, qword_280E26290);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SiriTimer.__allocating_init(mtTimer:)(void *a1)
{
  v3 = sub_2693B3170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2693B31C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v1);
  v12 = [a1 timerID];
  sub_2693B31A0();

  sub_2693B3180();
  (*(v8 + 8))(v10, v7);
  v13 = sub_2693B3740();

  v14 = sub_2693B3740();
  v15 = [v11 initWithIdentifier:v13 displayString:v14];

  v16 = v15;
  if ([a1 type] == 2 || (v17 = objc_msgSend(a1, sel_sound), v18 = objc_msgSend(v17, sel_isSilent), v17, (v18 & 1) == 0))
  {
    v20 = [a1 type];
    if (v20 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v20 == 1;
    }
  }

  else
  {
    v19 = 2;
  }

  [v16 setType_];
  v21 = [a1 state];
  if (v21 > 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_2693B5DF8[v21];
  }

  [v16 setState_];
  [a1 duration];
  v23 = sub_2693B3930();
  [v16 setDuration_];

  [a1 remainingTime];
  v24 = sub_2693B3930();
  [v16 setRemainingTime_];

  if ([a1 state] == 3)
  {
    v35 = [a1 nextTrigger];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 triggerDate];

      sub_2693B3150();
      v38 = sub_2693B3140();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v38 = 0;
    }

    [v16 setFireDate_];
  }

  else
  {
    [v16 setFireDate_];
  }

  v25 = [a1 title];
  if (!v25)
  {
    sub_2693B3750();
    goto LABEL_18;
  }

  v26 = v25;
  v27 = sub_2693B3750();
  v29 = v28;

  v30 = sub_2693B3750();
  if (!v29)
  {
LABEL_18:

LABEL_19:
    v32 = [a1 title];
    [v16 setLabel_];

LABEL_20:
    return v16;
  }

  if (v27 != v30 || v29 != v31)
  {
    v34 = sub_2693B3CE0();

    if (v34)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return v16;
}

uint64_t sub_26935D3DC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v5 = a1;
  v3 = sub_26935E1D0();
  return sub_269372CB0(&v5, ObjectType, v3);
}

uint64_t sub_26935D424@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2693B31C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 timerID];
  sub_2693B31A0();

  v13 = sub_2693B3180();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v22 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = v18 == v13 && v20 == v15;
      if (v23 || (sub_2693B3CE0() & 1) != 0 || ((v24 = sub_2693B37A0(), v26 = v25, , v24 == v13) ? (v27 = v26 == v15) : (v27 = 0), v27))
      {

LABEL_29:
        if (qword_280E26288 != -1)
        {
          swift_once();
        }

        v41 = sub_2693B3620();
        __swift_project_value_buffer(v41, qword_280E26290);

        v42 = sub_2693B3610();
        v43 = sub_2693B3990();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v137 = v45;
          *v44 = 136315138;
          v46 = sub_26934CA40(v13, v15, &v137);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_26933F000, v42, v43, "Timer identifier matched: MTTimer – %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x26D63A640](v45, -1, -1);
          MEMORY[0x26D63A640](v44, -1, -1);
        }

        else
        {
        }

        v96 = *MEMORY[0x277D618A8];
        v97 = sub_2693B3590();
        (*(*(v97 - 8) + 104))(a3, v96, v97);
        v98 = MEMORY[0x277D618C8];
        goto LABEL_76;
      }

      v28 = sub_2693B3CE0();

      if (v28)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_19:
    }
  }

  v29 = [a1 duration];
  if (v29)
  {
    v30 = v29;
    [v29 doubleValue];
    v32 = v31;
  }

  else
  {
    [objc_opt_self() defaultDuration];
    v32 = v33;
  }

  v34 = objc_opt_self();
  [v34 defaultDuration];
  if (v32 != v35)
  {
    [v4 duration];
    if (v32 != v36)
    {
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v99 = sub_2693B3620();
      __swift_project_value_buffer(v99, qword_280E26290);
      v100 = v4;
      v59 = sub_2693B3610();
      v101 = sub_2693B3990();

      if (!os_log_type_enabled(v59, v101))
      {
        goto LABEL_75;
      }

      v73 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v137 = v102;
      *v73 = 136315394;
      [v100 duration];
      v103 = sub_2693B3950();
      v105 = sub_26934CA40(v103, v104, &v137);

      *(v73 + 4) = v105;
      *(v73 + 12) = 2080;
      v106 = sub_2693B3950();
      v108 = sub_26934CA40(v106, v107, &v137);

      *(v73 + 14) = v108;
      v109 = "Duration time doesn't match: MTTimer – %s, SiriTimer - %s";
LABEL_72:
      _os_log_impl(&dword_26933F000, v59, v101, v109, v73, 0x16u);
      swift_arrayDestroy();
      v81 = v102;
LABEL_73:
      MEMORY[0x26D63A640](v81, -1, -1);
      v69 = v73;
      goto LABEL_74;
    }
  }

  if ((a2 & 1) == 0)
  {
    v37 = [a1 remainingTime];
    if (v37)
    {
      v38 = v37;
      [v37 doubleValue];
      v40 = v39;
    }

    else
    {
      [v34 defaultDuration];
      v40 = v47;
    }

    [v34 defaultDuration];
    if (v40 != v48)
    {
      [v4 remainingTime];
      if (v40 != v49)
      {
        if (qword_280E26288 != -1)
        {
          swift_once();
        }

        v110 = sub_2693B3620();
        __swift_project_value_buffer(v110, qword_280E26290);
        v111 = v4;
        v59 = sub_2693B3610();
        v101 = sub_2693B3990();

        if (!os_log_type_enabled(v59, v101))
        {
          goto LABEL_75;
        }

        v73 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v137 = v102;
        *v73 = 136315394;
        [v111 remainingTime];
        v112 = sub_2693B3950();
        v114 = sub_26934CA40(v112, v113, &v137);

        *(v73 + 4) = v114;
        *(v73 + 12) = 2080;
        v115 = sub_2693B3950();
        v117 = sub_26934CA40(v115, v116, &v137);

        *(v73 + 14) = v117;
        v109 = "Remaining time doesn't match: MTTimer – %s, SiriTimer - %s";
        goto LABEL_72;
      }
    }
  }

  v50 = [a1 state];
  if (!v50)
  {
    goto LABEL_41;
  }

  v51 = v50;
  v52 = [v4 state];
  if (v52 != 2)
  {
    if (v52 != 3)
    {
LABEL_49:
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v70 = sub_2693B3620();
      __swift_project_value_buffer(v70, qword_280E26290);
      v71 = v4;
      v59 = sub_2693B3610();
      v72 = sub_2693B3990();

      if (!os_log_type_enabled(v59, v72))
      {
        goto LABEL_75;
      }

      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v137 = v74;
      *v73 = 136315394;
      v139 = [v71 state];
      type metadata accessor for MTTimerState(0);
      v75 = sub_2693B3760();
      v77 = sub_26934CA40(v75, v76, &v137);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v139 = v51;
      v78 = sub_2693B3760();
      v80 = sub_26934CA40(v78, v79, &v137);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_26933F000, v59, v72, "State doesn't match: MTTimer – %s, SiriTimer - %s", v73, 0x16u);
      swift_arrayDestroy();
      v81 = v74;
      goto LABEL_73;
    }

    v52 = 1;
  }

  if (v51 != v52)
  {
    goto LABEL_49;
  }

LABEL_41:
  if ([a1 type])
  {
    v53 = [a1 type];
    if ([v4 type] == 2 || (v54 = objc_msgSend(v4, sel_sound), v55 = objc_msgSend(v54, sel_isSilent), v54, (v55 & 1) == 0))
    {
      v82 = [v4 type];
      v83 = v82 == 1;
      if (v82 == 2)
      {
        v83 = 2;
      }

      if (v53 != v83)
      {
        goto LABEL_45;
      }
    }

    else if (v53 != 2)
    {
LABEL_45:
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v56 = sub_2693B3620();
      __swift_project_value_buffer(v56, qword_280E26290);
      v57 = v4;
      v58 = a1;
      v59 = sub_2693B3610();
      v60 = sub_2693B3990();

      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_75;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v137 = v62;
      *v61 = 136315394;
      v139 = [v57 type];
      type metadata accessor for INTimerType(0);
      v63 = sub_2693B3760();
      v65 = sub_26934CA40(v63, v64, &v137);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v139 = [v58 type];
      v66 = sub_2693B3760();
      v68 = sub_26934CA40(v66, v67, &v137);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_26933F000, v59, v60, "Type doesn't match: MTTimer – %s, SiriTimer - %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v62, -1, -1);
      v69 = v61;
LABEL_74:
      MEMORY[0x26D63A640](v69, -1, -1);
LABEL_75:

      v98 = MEMORY[0x277D61898];
LABEL_76:
      v118 = *v98;
      v119 = sub_2693B35B0();
      return (*(*(v119 - 8) + 104))(a3, v118, v119);
    }
  }

  if (qword_280E26288 != -1)
  {
    swift_once();
  }

  v84 = sub_2693B3620();
  __swift_project_value_buffer(v84, qword_280E26290);
  v85 = v4;
  v86 = a1;
  v87 = sub_2693B3610();
  v88 = sub_2693B3990();

  if (os_log_type_enabled(v87, v88))
  {
    v136 = a3;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v139 = v90;
    *v89 = 136315394;
    v91 = [v86 label];
    if (v91)
    {
      v92 = v91;
      v93 = sub_2693B3750();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0;
    }

    v137 = v93;
    v138 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
    v121 = sub_2693B3760();
    v123 = sub_26934CA40(v121, v122, &v139);

    *(v89 + 4) = v123;
    *(v89 + 12) = 2080;
    v124 = [v85 title];
    if (v124)
    {
      v125 = v124;
      v126 = sub_2693B3750();
      v128 = v127;
    }

    else
    {
      v126 = 0;
      v128 = 0;
    }

    v137 = v126;
    v138 = v128;
    v129 = sub_2693B3760();
    v131 = sub_26934CA40(v129, v130, &v139);

    *(v89 + 14) = v131;
    _os_log_impl(&dword_26933F000, v87, v88, "Timer identifier checking labels: MTTimer – label: %s, title: %s", v89, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v90, -1, -1);
    MEMORY[0x26D63A640](v89, -1, -1);
  }

  else
  {
  }

  v132 = [v86 label];
  if (v132)
  {
    v133 = v132;
    sub_2693B3750();
  }

  v134 = [v85 title];
  if (v134)
  {
    v135 = v134;
    sub_2693B3750();
  }

  sub_2693B3570();
}

unint64_t sub_26935E1D0()
{
  result = qword_280E26308;
  if (!qword_280E26308)
  {
    type metadata accessor for SiriTimer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E26308);
  }

  return result;
}

uint64_t sub_26935E298()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26250);
  v1 = __swift_project_value_buffer(v0, qword_280E26250);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double IntentTargetable.knownHomePodCount.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_2693B3420();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v8 = sub_2693B3400();
  (*(v5 + 8))(v7, v4);
  v9 = 1.0;
  if (v8)
  {
    v10 = (*(a2 + 16))(a1, a2);
    if (v10)
    {
      if (v10 >> 62)
      {
        v11 = sub_2693B3C70();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v11;
    }
  }

  return v9;
}

id SiriRemoteTimerTarget.__allocating_init(deviceNames:deviceReferenceNames:)(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v8 = v2;
    if (qword_280E26248 != -1)
    {
      swift_once();
    }

    v11 = sub_2693B3620();
    __swift_project_value_buffer(v11, qword_280E26250);

    v12 = sub_2693B3610();
    v13 = sub_2693B39B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D110, &qword_2693B5E20);
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v28 = a2;

      v19 = sub_2693B3760();
      v21 = sub_26934CA40(v19, v20, &v29);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26933F000, v12, v13, "SiriRemoteTimerTarget.init Using deviceName/reference name: %s/%s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v15, -1, -1);
      MEMORY[0x26D63A640](v14, -1, -1);
    }

    v22 = objc_allocWithZone(v8);
    v23 = sub_2693B3740();
    v24 = [v22 initWithIdentifier:0 displayString:v23];

    v7 = v24;
    if (a1)
    {
      v25 = sub_2693B3800();
    }

    else
    {
      v25 = 0;
    }

    [v7 setDeviceNames_];

    if (a2)
    {
      v26 = sub_2693B3800();
    }

    else
    {
      v26 = 0;
    }

    [v7 setRoomNames_];

    [v7 setDeviceType_];
  }

  else
  {
    if (qword_280E26248 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_280E26250);
    v4 = sub_2693B3610();
    v5 = sub_2693B39B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "SiriRemoteTimerTarget.init No targetable info found", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    return 0;
  }

  return v7;
}

id static SiriRemoteTimerTarget.testHomeEntertainmentRoomTarget()()
{
  type metadata accessor for SiriRemoteTimerTarget();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2693B3740();
  v2 = [v0 initWithIdentifier:0 displayString:v1];

  v3 = sub_2693B3800();
  [v2 setDeviceNames_];

  v4 = sub_2693B3800();
  [v2 setRoomNames_];

  return v2;
}

uint64_t sub_26935E944()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D118);
  v1 = __swift_project_value_buffer(v0, qword_28030D118);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26935EA94(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D138, &qword_2693B5F58);
  v2[30] = swift_task_alloc();
  v3 = sub_2693B3110();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26935EB8C, 0, 0);
}

uint64_t sub_26935EB8C()
{
  if (qword_28030CDF0 != -1)
  {
    swift_once();
  }

  v1 = v0[14].i64[0];
  v2 = sub_2693B3620();
  v0[17].i64[0] = __swift_project_value_buffer(v2, qword_28030D118);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14].i64[0];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_26933F000, v4, v5, "Handling dismiss timer intent %@.", v7, 0xCu);
    sub_26934B4F0(v8, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v10 = v0[14].i64[0];

  v11 = [v10 remoteExecutionId];
  if (v11)
  {
    v12 = v0[14].i64[0];
    v13 = v11;
    v14 = sub_2693B3750();
    v16 = v15;

    v0[17].i64[1] = v14;
    v0[18].i64[0] = v16;
    v17 = [v12 timerId];
    if (!v17)
    {

      goto LABEL_13;
    }

    v18 = v0[15].i64[1];
    v19 = v0[16].i64[0];
    v20 = v0[15].i64[0];
    v21 = v17;
    sub_2693B3750();

    sub_2693B3100();

    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      v22 = v0[15].i64[0];

      sub_26934B4F0(v22, &qword_28030D138, &qword_2693B5F58);
LABEL_13:
      v26 = sub_2693B3610();
      v27 = sub_2693B39A0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26933F000, v26, v27, "Failed to get a valid timerId or timerURL for SATimerDismiss command", v28, 2u);
        MEMORY[0x26D63A640](v28, -1, -1);
      }

      v29 = sub_2693B35D0();
      v30 = MEMORY[0x277D61908];
      v0[2].i64[1] = v29;
      v0[3].i64[0] = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0[1].i64);
      *boxed_opaque_existential_1 = 0xD000000000000010;
      boxed_opaque_existential_1[1] = 0x80000002693B8780;
      v32 = *MEMORY[0x277D61878];
      v33 = sub_2693B3560();
      (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, v32, v33);
      (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v29);
      sub_2693B34C0();
      __swift_destroy_boxed_opaque_existential_1(v0[1].i64);
      v34 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
      v35 = OBJC_IVAR___DismissTimerIntentResponse_code;
      swift_beginAccess();
      *&v34[v35] = 5;
      [v34 setUserActivity_];

      v36 = v0->i64[1];

      return v36(v34);
    }

    v38 = v0[16].i64[0];
    v37 = v0[16].i64[1];
    v39 = v0[15].i64[1];
    (*(v38 + 32))(v37, v0[15].i64[0], v39);
    v40 = [objc_allocWithZone(MEMORY[0x277D479D0]) init];
    v0[18].i64[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D140, &unk_2693B5F60);
    v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2693B5770;
    (*(v38 + 16))(v42 + v41, v37, v39);
    v43 = sub_2693B3800();

    [v40 setTimerIds_];

    sub_2693B3340();
    v44 = v0[5].i64[0];
    v45 = v0[5].i64[1];
    __swift_project_boxed_opaque_existential_1(&v0[3].i64[1], v44);
    v46 = swift_task_alloc();
    v0[19].i64[0] = v46;
    v47 = sub_2693608D8(0, &qword_28030D148, 0x277D471B0);
    *v46 = v0;
    v46[1] = sub_26935F230;

    return MEMORY[0x2821BB680](v40, v14, v16, v44, v47, v45);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[20].i64[0] = v23;
    v23[1] = vextq_s8(v0[14], v0[14], 8uLL);
    v24 = swift_task_alloc();
    v0[20].i64[1] = v24;
    v25 = type metadata accessor for DismissTimerIntentResponse();
    *v24 = v0;
    v24[1] = sub_26935F54C;

    return MEMORY[0x2822007B8](&v0[13], 0, 0, 0x6928656C646E6168, 0xEF293A746E65746ELL, sub_269360468, v23, v25);
  }
}

uint64_t sub_26935F230(void *a1)
{
  *(*v2 + 312) = v1;

  if (v1)
  {
    v4 = sub_26935F6D8;
  }

  else
  {

    v4 = sub_26935F34C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26935F34C()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[36];
  if (v3)
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_26934CA40(v5, v4, &v17);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_26933F000, v1, v2, "Execute SATimerDismiss on remote device %s succeeded!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v14 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v13[v14] = 4;
  [v13 setUserActivity_];

  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_26935F54C()
{

  return MEMORY[0x2822009F8](sub_26935F664, 0, 0);
}

uint64_t sub_26935F664()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26935F6D8()
{
  v30 = v0;
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v1;
  v3 = sub_2693B3610();
  v4 = sub_2693B39A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v7 = v0[35];
    v6 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = sub_26934CA40(v7, v6, &v29);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v0[27] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v12 = sub_2693B3760();
    v14 = sub_26934CA40(v12, v13, &v29);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_26933F000, v3, v4, "Execute SATimerDismiss on remote device %s failed with error %s!", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[39];
  v16 = v0[37];
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  v20 = sub_2693B35D0();
  v21 = MEMORY[0x277D61908];
  v0[15] = v20;
  v0[16] = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v23 = *MEMORY[0x277D618D0];
  v24 = sub_2693B35C0();
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, v23, v24);
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D61900], v20);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v25 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v26 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v25[v26] = 5;
  [v25 setUserActivity_];

  (*(v18 + 8))(v17, v19);

  v27 = v0[1];

  return v27(v25);
}

uint64_t sub_26935FA2C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-1] - v8;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager, v19);
  v10 = v20;
  v11 = v21;
  v18 = __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  (*(v7 + 32))(v13 + v12, v9, v6);
  v14 = *(v11 + 16);
  v15 = a3;
  v16 = a2;
  v14(sub_269360470, v13, v10, v11);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26935FBDC(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - v10;
  if (a1[8])
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v12 = sub_2693B3620();
    __swift_project_value_buffer(v12, qword_28030D118);
    v13 = sub_2693B3610();
    v14 = sub_2693B39A0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26933F000, v13, v14, "Search timers failed, return failure", v15, 2u);
      MEMORY[0x26D63A640](v15, -1, -1);
    }

    v16 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
    v17 = OBJC_IVAR___DismissTimerIntentResponse_code;
    swift_beginAccess();
    *&v16[v17] = 5;
    [v16 setUserActivity_];
    v41 = v16;
    return sub_2693B3900();
  }

  else
  {
    v19 = (*a1 + 40);
    v20 = *(*a1 + 16) + 1;
    while (--v20)
    {
      v21 = (v19 + 16);
      v22 = *v19;
      v19 += 16;
      if (v22)
      {
        v23 = v8;
        v24 = *(v21 - 3);
        v25 = [v24 identifier];
        if (v25)
        {
          v26 = v25;
          v27 = sub_2693B3750();
          v29 = v28;

LABEL_14:
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v23 = v8;
    v30 = [a2 timerId];
    if (v30)
    {
      v24 = v30;
      v27 = sub_2693B3750();
      v29 = v31;
      goto LABEL_14;
    }

LABEL_16:
    v27 = 0;
    v29 = 0;
LABEL_17:
    sub_26934489C(a3 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager, v38);
    v32 = v39;
    v33 = v40;
    v37[1] = __swift_project_boxed_opaque_existential_1(v38, v39);
    if (!v29)
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v34 = v23;
    (*(v9 + 16))(v11, a4, v23);
    v35 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v36 = swift_allocObject();
    (*(v9 + 32))(v36 + v35, v11, v34);
    (*(v33 + 8))(v27, v29, sub_2693604F0, v36, v32, v33);

    return __swift_destroy_boxed_opaque_existential_1(v38);
  }
}

uint64_t sub_26935FF80(uint64_t a1)
{
  if (*(a1 + 1))
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v1 = sub_2693B3620();
    __swift_project_value_buffer(v1, qword_28030D118);
    v2 = sub_2693B3610();
    v3 = sub_2693B39A0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Timer dismissed failed. We still return success code since the timer is highly likely not existed anymore.";
LABEL_10:
      _os_log_impl(&dword_26933F000, v2, v3, v5, v4, 2u);
      MEMORY[0x26D63A640](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_28030D118);
    v2 = sub_2693B3610();
    v3 = sub_2693B39B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Timer dismissed successfully";
      goto LABEL_10;
    }
  }

  v7 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v8 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  return sub_2693B3900();
}

uint64_t sub_2693602F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26935EA94(v6);
}

id sub_2693603EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissTimerIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269360470(_BYTE *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26935FBDC(a1, v4, v5, v6);
}

uint64_t sub_2693604F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);

  return sub_26935FF80(a1);
}

uint64_t sub_26936056C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693602F8(v2, v3, v4);
}

void sub_269360620(void *a1, uint64_t a2)
{
  v4 = [a1 remoteDeviceId];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_2693B3750();
  v8 = v7;

  v9 = [a1 skipConfirmation];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v10 = sub_2693B3A30();
  v11 = v10;
  if (!v9)
  {

    goto LABEL_9;
  }

  v12 = sub_2693B3A50();

  if ((v12 & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v19 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
    v20 = OBJC_IVAR___DismissTimerIntentResponse_code;
    swift_beginAccess();
    v21 = 4;
    goto LABEL_11;
  }

  if (qword_28030CDF0 != -1)
  {
    swift_once();
  }

  v13 = sub_2693B3620();
  __swift_project_value_buffer(v13, qword_28030D118);

  v14 = sub_2693B3610();
  v15 = sub_2693B39B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;
    v18 = sub_26934CA40(v6, v8, v22);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_26933F000, v14, v15, "DismissTimerIntentHandler returning needs confirm intent since the firing timer is on remote device %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D63A640](v17, -1, -1);
    MEMORY[0x26D63A640](v16, -1, -1);
  }

  else
  {
  }

  v19 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v20 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  v21 = 3;
LABEL_11:
  *&v19[v20] = v21;
  [v19 setUserActivity_];
  (*(a2 + 16))(a2, v19);
}

uint64_t sub_2693608D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_269360A48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_269360B0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2693B3620();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2693B34A0();
}

uint64_t sub_269360B6C()
{
  result = sub_2693B3490();
  qword_280E26338 = result;
  return result;
}

id static SiriTimeLog.timerExtensionOSLogObject.getter()
{
  if (qword_280E26330 != -1)
  {
    swift_once();
  }

  v1 = qword_280E26338;

  return v1;
}

uint64_t getEnumTagSinglePayload for SiriTimeLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriTimeLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
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
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_269360CF0()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E262B0);
  v1 = __swift_project_value_buffer(v0, qword_280E262B0);
  if (qword_280E26310 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26318);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static TimerIntentHandlerRouter.getIntentHandler(intent:)(void *a1)
{
  v2 = sub_2693B3420();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E262A8 != -1)
  {
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_280E262B0);
  v7 = a1;
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v32 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v31 = v3;
    v13 = v12;
    v34[0] = v12;
    *v11 = 136315138;
    v14 = v7;
    v15 = [v14 description];
    v16 = sub_2693B3750();
    v18 = v17;

    v19 = sub_26934CA40(v16, v18, v34);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_26933F000, v8, v9, "Matching intent to handler: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v20 = v13;
    v3 = v31;
    MEMORY[0x26D63A640](v20, -1, -1);
    v21 = v11;
    v2 = v32;
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  type metadata accessor for DismissTimerIntent();
  if (swift_dynamicCastClass())
  {
    v22 = [v7 _metadata];

    v23 = type metadata accessor for SiriDismissTimerManager();
    v24 = swift_allocObject();
    if (qword_28030CE20 != -1)
    {
      swift_once();
    }

    sub_26934489C(&qword_28030D2A0, v24 + 16);
    v34[3] = v23;
    v34[4] = &protocol witness table for SiriDismissTimerManager;
    v34[0] = v24;
    v25 = type metadata accessor for DismissTimerIntentHandler();
    v26 = objc_allocWithZone(v25);
    sub_26934489C(v34, v26 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager);
    v33.receiver = v26;
    v33.super_class = v25;
    v27 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return v27;
  }

  else
  {
    sub_2693B3410();
    v29 = sub_2693B33F0();
    (*(v3 + 8))(v5, v2);
    if (v29)
    {
      return sub_269361C58(v7);
    }

    else
    {
      return sub_269363234(v7);
    }
  }
}

id sub_269361120(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v80[3] = type metadata accessor for TimerManager();
  v80[4] = &off_2879EDD98;
  v15 = qword_280E266B8;
  a4[qword_280E266B8] = 0;
  v80[0] = a1;
  v16 = qword_280E266A8;
  a4[qword_280E266A8] = 1;
  v72 = qword_280E266B0;
  a4[qword_280E266B0] = 0;
  v71 = qword_280E266A0;
  a4[qword_280E266A0] = 1;
  v17 = &a4[qword_28030D540];
  sub_26934489C(v80, &a4[qword_28030D540]);
  v18 = qword_280E26A48;
  v19 = sub_2693B3480();
  v68 = *(v19 - 8);
  v69 = v19;
  (*(v68 + 16))(&a4[v18], a3);
  if (a2)
  {
    v67 = a3;
    v75 = a5(0);
    v76 = a6;
    *&v74 = a2;
    sub_2693436F0(&v74, v77);
    v20 = qword_280E262E8;
    v21 = a2;
    if (v20 != -1)
    {
      swift_once();
    }

    v66 = a8;
    v22 = sub_2693B3620();
    __swift_project_value_buffer(v22, qword_280E262F0);
    v23 = sub_2693B3610();
    v24 = sub_2693B39B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26933F000, v23, v24, "TimerIntentHandler.init(timerManager:intent) found targetable intent", v25, 2u);
      MEMORY[0x26D63A640](v25, -1, -1);
    }

    v26 = v78;
    v27 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v28 = (*(v27 + 16))(v26, v27);
    if (v28)
    {
      v29 = v28;

      v30 = sub_2693B3610();
      v31 = sub_2693B39B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        if (v29 >> 62)
        {
          v33 = sub_2693B3C70();
        }

        else
        {
          v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v32 + 4) = v33;

        _os_log_impl(&dword_26933F000, v30, v31, "TimerIntentHandler.init found previous list of targets: %ld targets", v32, 0xCu);
        MEMORY[0x26D63A640](v32, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      v39 = *(v17 + 3);
      v40 = *(v17 + 4);
      __swift_mutable_project_boxed_opaque_existential_1(v17, v39);
      (*(v40 + 16))(v29, v39, v40);
      swift_endAccess();
      v38 = 0;
      v37 = 1;
    }

    else
    {
      v34 = sub_2693B3610();
      v35 = sub_2693B39B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26933F000, v34, v35, "TimerIntentHandler.init found no previous targetable devices", v36, 2u);
        MEMORY[0x26D63A640](v36, -1, -1);
      }

      v37 = 0;
      v38 = 1;
    }

    a4[v72] = v37;
    a4[v71] = v38;
    v41 = v78;
    v42 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v43 = (*(v42 + 8))(v41, v42);
    if (v43)
    {
      v44 = v43;
      v45 = v43;
      v46 = sub_2693B3610();
      v47 = sub_2693B39B0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v74 = v64;
        *v48 = 136315138;
        v49 = v45;
        v50 = [v49 description];
        v51 = sub_2693B3750();
        v65 = v45;
        v53 = v52;

        v54 = sub_26934CA40(v51, v53, &v74);
        v45 = v65;

        *(v48 + 4) = v54;
        _os_log_impl(&dword_26933F000, v46, v47, "TimerIntentHandler.init found user device target: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x26D63A640](v64, -1, -1);
        MEMORY[0x26D63A640](v48, -1, -1);
      }

      a3 = v67;
      swift_beginAccess();
      v55 = *(v17 + 3);
      v56 = *(v17 + 4);
      __swift_mutable_project_boxed_opaque_existential_1(v17, v55);
      v57 = *(v56 + 40);
      v58 = v45;
      v57(v44, v55, v56);
      swift_endAccess();

      a4[v72] = 1;
      a4[v71] = 0;
    }

    else
    {
      v59 = sub_2693B3610();
      v60 = sub_2693B39B0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_26933F000, v59, v60, "TimerIntentHandler.init found no user device target", v61, 2u);
        MEMORY[0x26D63A640](v61, -1, -1);
      }

      a4[v15] = 0;
      a4[v16] = 1;
    }

    a8 = v66;
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v73.receiver = a4;
  v73.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v62 = objc_msgSendSuper2(&v73, sel_init);
  (*(v68 + 8))(a3, v69);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return v62;
}

id sub_2693617A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v13 = sub_2693B3480();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v33[3] = type metadata accessor for TimerManager();
  v33[4] = &off_2879EDD98;
  v33[0] = a1;
  sub_26934489C(v33, v32);
  v20 = *(v14 + 16);
  v20(v19, a3, v13);
  sub_26934489C(v32, v31);
  v20(v17, v19, v13);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_269361120(*v23, a2, v17, a4, a5, v28, v29, v30);
  v26 = *(v14 + 8);
  v26(a3, v13);
  v26(v19, v13);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v25;
}

id sub_269361A08(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_2693B3480();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = type metadata accessor for TimerManager();
  v22[4] = &off_2879EDD98;
  v22[0] = a1;
  v12 = &a4[qword_280E26A70];
  sub_2693B35E0();
  v13 = sub_2693B3440();
  v14 = MEMORY[0x277D61820];
  v12[3] = v13;
  v12[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2693B3430();
  sub_26934489C(v22, v21);
  (*(v9 + 16))(v11, a3, v8);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  MEMORY[0x28223BE20](v15);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_269361120(*v17, a2, v11, a4, type metadata accessor for CreateTimerIntent, &protocol witness table for CreateTimerIntent, &qword_28030D1C8, &unk_2693B6020);
  (*(v9 + 8))(a3, v8);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

id sub_269361C58(id a1)
{
  v2 = sub_2693B3480();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v168 = v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v165 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v165 - v9;
  v11 = sub_2693B3420();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v15 = sub_2693B3400();
  (*(v12 + 8))(v14, v11);
  v169 = a1;
  if (v15)
  {
    v173[0] = a1;
    sub_269363514();
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v177 = 0;
      v175 = 0u;
      v176 = 0u;
    }

    v178 = v175;
    v179 = v176;
    v180 = v177;
  }

  else
  {
    if (qword_280E262A8 != -1)
    {
      swift_once();
    }

    v17 = sub_2693B3620();
    __swift_project_value_buffer(v17, qword_280E262B0);
    v18 = a1;
    v19 = sub_2693B3610();
    v20 = sub_2693B39B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v178 = v167;
      *v21 = 136315138;
      v22 = [v18 typeName];
      v23 = sub_2693B3750();
      v24 = v8;
      v25 = v10;
      v26 = v2;
      v27 = v3;
      v29 = v28;

      v30 = sub_26934CA40(v23, v29, &v178);
      v3 = v27;
      v2 = v26;
      v10 = v25;
      v8 = v24;
      a1 = v169;

      *(v21 + 4) = v30;
      _os_log_impl(&dword_26933F000, v19, v20, "Intent is not a targetable intent: %s", v21, 0xCu);
      v31 = v167;
      __swift_destroy_boxed_opaque_existential_1(v167);
      MEMORY[0x26D63A640](v31, -1, -1);
      MEMORY[0x26D63A640](v21, -1, -1);
    }

    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  sub_2693634A4(&v178, &v175);
  v32 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    v33 = v177;
    __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
    v34 = (v33[2])(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v175);
  }

  else
  {
    sub_269356A08(&v175);
    v34 = 0;
  }

  sub_2693634A4(&v178, &v175);
  v35 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    v36 = v177;
    __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
    v37 = (v36[1])(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(&v175);
  }

  else
  {
    sub_269356A08(&v175);
    v37 = 0;
  }

  v38 = [a1 _metadata];
  if (v38 && (v39 = v38, v40 = [v38 endpointId], v39, v40))
  {
    v41 = sub_2693B3750();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = type metadata accessor for TimerManager();
  swift_allocObject();
  v45 = sub_2693668A4(v34, v37, v41, v43);
  *(&v176 + 1) = v44;
  v177 = &off_2879EDD98;
  *&v175 = v45;
  sub_2693B3470();
  type metadata accessor for DeleteTimerIntent();
  v46 = v169;
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    v48 = v47;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v49);
    v51 = v3;
    v52 = (v165 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v52;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v54;
    v55 = objc_allocWithZone(type metadata accessor for DeleteTimerIntentHandler(0));
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v56);
    v58 = v10;
    v59 = (v165 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59);
    v61 = *v59;
    v62 = v46;
    v63 = v8;
    v64 = v62;
    v65 = &protocol witness table for DeleteTimerIntent;
    v66 = &unk_28030D198;
    v67 = &unk_2693B5FF0;
    v68 = type metadata accessor for DeleteTimerIntent;
LABEL_28:
    v102 = sub_2693617A4(v61, v48, v63, v55, v68, v65, v66, v67);
LABEL_29:
    v103 = v102;

    (*(v51 + 8))(v58, v2);
    sub_269356A08(&v178);
    __swift_destroy_boxed_opaque_existential_1(v170);
    __swift_destroy_boxed_opaque_existential_1(v173);
    goto LABEL_30;
  }

  type metadata accessor for PauseTimerIntent();
  v69 = swift_dynamicCastClass();
  if (v69)
  {
    v48 = v69;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v70 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v70);
    v51 = v3;
    v72 = (v165 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    v74 = *v72;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v74;
    v55 = objc_allocWithZone(type metadata accessor for PauseTimerIntentHandler(0));
    v75 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v75);
    v58 = v10;
    v77 = (v165 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77);
    v61 = *v77;
    v79 = v46;
    v63 = v8;
    v64 = v79;
    v65 = &protocol witness table for PauseTimerIntent;
    v66 = &unk_28030D1A0;
    v67 = &unk_2693B5FF8;
    v68 = type metadata accessor for PauseTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for ResetTimerIntent();
  v80 = swift_dynamicCastClass();
  if (v80)
  {
    v48 = v80;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v81);
    v51 = v3;
    v83 = (v165 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))(v83);
    v85 = *v83;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v85;
    v55 = objc_allocWithZone(type metadata accessor for ResetTimerIntentHandler(0));
    v86 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v86);
    v58 = v10;
    v88 = (v165 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v89 + 16))(v88);
    v61 = *v88;
    v90 = v46;
    v63 = v8;
    v64 = v90;
    v65 = &protocol witness table for ResetTimerIntent;
    v66 = &unk_28030D1A8;
    v67 = &unk_2693B6000;
    v68 = type metadata accessor for ResetTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for ResumeTimerIntent();
  v91 = swift_dynamicCastClass();
  if (v91)
  {
    v48 = v91;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v92 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v92);
    v51 = v3;
    v94 = (v165 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94);
    v96 = *v94;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v96;
    v55 = objc_allocWithZone(type metadata accessor for ResumeTimerIntentHandler(0));
    v97 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v97);
    v58 = v10;
    v99 = (v165 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v100 + 16))(v99);
    v61 = *v99;
    v101 = v46;
    v63 = v8;
    v64 = v101;
    v65 = &protocol witness table for ResumeTimerIntent;
    v66 = &unk_28030D1B0;
    v67 = &unk_2693B6008;
    v68 = type metadata accessor for ResumeTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for SearchTimerIntent();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    v106 = v105;
    sub_26934489C(&v175, v173);
    v166 = *(v3 + 16);
    v166(v8, v10, v2);
    v107 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v167 = v165;
    MEMORY[0x28223BE20](v107);
    v109 = v3;
    v110 = (v165 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v111 + 16))(v110);
    v112 = *v110;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v112;
    v113 = objc_allocWithZone(type metadata accessor for SearchTimersIntentHandler(0));
    v114 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    v165[1] = v165;
    MEMORY[0x28223BE20](v114);
    v116 = (v165 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v117 + 16))(v116);
    v118 = *v116;
    v119 = v168;
    v166(v168, v8, v2);
    v120 = v169;
    v103 = sub_269361120(v118, v106, v119, v113, type metadata accessor for SearchTimerIntent, &protocol witness table for SearchTimerIntent, &qword_28030D1B8, &qword_2693B6010);

    v121 = *(v109 + 8);
    v121(v8, v2);
    v121(v10, v2);
    sub_269356A08(&v178);
    __swift_destroy_boxed_opaque_existential_1(v170);
    __swift_destroy_boxed_opaque_existential_1(v173);
    goto LABEL_30;
  }

  type metadata accessor for SetTimerAttributeIntent();
  v122 = swift_dynamicCastClass();
  if (v122)
  {
    v48 = v122;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v123 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v123);
    v51 = v3;
    v125 = (v165 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v126 + 16))(v125);
    v127 = *v125;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v127;
    v55 = objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentHandler(0));
    v128 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v128);
    v58 = v10;
    v130 = (v165 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v131 + 16))(v130);
    v61 = *v130;
    v132 = v46;
    v63 = v8;
    v64 = v132;
    v65 = &protocol witness table for SetTimerAttributeIntent;
    v66 = &unk_28030D1C0;
    v67 = &unk_2693B6018;
    v68 = type metadata accessor for SetTimerAttributeIntent;
    goto LABEL_28;
  }

  type metadata accessor for CreateTimerIntent();
  v133 = swift_dynamicCastClass();
  if (v133)
  {
    v134 = v133;
    sub_26934489C(&v175, v173);
    (*(v3 + 16))(v8, v10, v2);
    v135 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v168 = v165;
    MEMORY[0x28223BE20](v135);
    v51 = v3;
    v137 = (v165 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v138 + 16))(v137);
    v139 = *v137;
    v171 = v44;
    v172 = &off_2879EDD98;
    v170[0] = v139;
    v140 = objc_allocWithZone(type metadata accessor for CreateTimerIntentHandler(0));
    v141 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    MEMORY[0x28223BE20](v141);
    v58 = v10;
    v143 = (v165 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v144 + 16))(v143);
    v145 = *v143;
    v146 = v46;
    v147 = v8;
    v64 = v146;
    v102 = sub_269361A08(v145, v134, v147, v140);
    goto LABEL_29;
  }

  v148 = v8;
  if (qword_280E262A8 != -1)
  {
    swift_once();
  }

  v149 = sub_2693B3620();
  __swift_project_value_buffer(v149, qword_280E262B0);
  v150 = sub_2693B3610();
  v151 = sub_2693B39A0();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&dword_26933F000, v150, v151, "Intent is not expected. Using CreateTimer intent handler anyways.", v152, 2u);
    MEMORY[0x26D63A640](v152, -1, -1);
  }

  sub_26934489C(&v175, v173);
  (*(v3 + 16))(v148, v10, v2);
  v153 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  MEMORY[0x28223BE20](v153);
  v155 = (v165 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v156 + 16))(v155);
  v157 = *v155;
  v171 = v44;
  v172 = &off_2879EDD98;
  v170[0] = v157;
  v158 = objc_allocWithZone(type metadata accessor for CreateTimerIntentHandler(0));
  v159 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
  MEMORY[0x28223BE20](v159);
  v161 = v2;
  v162 = v3;
  v163 = (v165 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v164 + 16))(v163);
  v103 = sub_269361A08(*v163, 0, v148, v158);
  (*(v162 + 8))(v10, v161);
  sub_269356A08(&v178);
  __swift_destroy_boxed_opaque_existential_1(v170);
  __swift_destroy_boxed_opaque_existential_1(v173);
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(&v175);
  return v103;
}

id sub_269363234(uint64_t a1)
{
  type metadata accessor for CreateTimerIntent();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for DeleteTimerIntent();
    if (swift_dynamicCastClass())
    {
      v12[3] = type metadata accessor for SiriTimerManagerImpl();
      v12[4] = &protocol witness table for SiriTimerManagerImpl;
      v12[0] = swift_allocObject();
      v4 = type metadata accessor for DeleteTimerIntentHandlerSingle();
      v5 = objc_allocWithZone(v4);
      sub_26934489C(v12, v5 + OBJC_IVAR____TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle_siriTimerManager);
      v11.receiver = v5;
      v11.super_class = v4;
      v6 = objc_msgSendSuper2(&v11, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v6;
    }

    type metadata accessor for PauseTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for PauseTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for ResetTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for ResetTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for ResumeTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for ResumeTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for SearchTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for SearchForTimersIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for SetTimerAttributeIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for SetTimerAttributeIntentHandlerSingle();
      goto LABEL_3;
    }

    if (qword_280E262A8 != -1)
    {
      swift_once();
    }

    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_280E262B0);
    v8 = sub_2693B3610();
    v9 = sub_2693B39A0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26933F000, v8, v9, "Intent is not expected. Using CreateTimer intent handler anyways.", v10, 2u);
      MEMORY[0x26D63A640](v10, -1, -1);
    }
  }

  TimerIntentHandlerSingle = type metadata accessor for CreateTimerIntentHandlerSingle();
LABEL_3:
  v2 = objc_allocWithZone(TimerIntentHandlerSingle);

  return [v2 init];
}

uint64_t sub_2693634A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF78, &qword_2693B5880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269363514()
{
  result = qword_28030D190;
  if (!qword_28030D190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D190);
  }

  return result;
}

uint64_t sub_269363560()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D1D0);
  v1 = __swift_project_value_buffer(v0, qword_28030D1D0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269363628(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B60D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B60E0;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B60E8, v14);
}

uint64_t sub_2693637B0(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_26936381C, 0, 0);
}

uint64_t sub_26936381C()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v3 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2693638F8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_269363918, 0, 0);
}

uint64_t sub_269363918()
{
  v1 = v0[10];
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 == 0;
  v7 = v0[10];
  v8 = sub_26936558C(v2, v5, v6);
  v0[12] = v8;

  v9 = sub_26939ECE0(&unk_2879EC928);
  v0[13] = v9;
  v0[5] = type metadata accessor for ResetTimerIntent();
  v0[6] = &protocol witness table for ResetTimerIntent;
  v0[2] = v7;
  v10 = [v7 targetTimer];
  if (v10 && (v11 = v10, v12 = [v10 shouldMatchAny], v11, v12))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_269363AE4;

  return sub_2693917AC(v8, (v0 + 2), v13, v9);
}

uint64_t sub_269363AE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_269363C38;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_269356A08(v4 + 16);
    v5 = sub_269354CA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269363C38()
{
  v23 = v0;
  v1 = *(v0 + 120);
  sub_269356A08(v0 + 16);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 96);

    v4 = *(v0 + 64);
    v5 = sub_2693A08FC();

    sub_26934ADAC(v4);
  }

  else
  {

    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 120);
    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_28030D1D0);
    v8 = v6;
    v9 = sub_2693B3610();
    v10 = sub_2693B39A0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 120);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      *(v0 + 72) = v11;
      v14 = v11;
      v15 = sub_2693B3760();
      v17 = sub_26934CA40(v15, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26933F000, v9, v10, "Unknown error resolving targetTimer for ResetTimerIntent: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D63A640](v13, -1, -1);
      MEMORY[0x26D63A640](v12, -1, -1);
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    type metadata accessor for SiriTimerResolutionResult();
    v5 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_269363EAC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B60B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5AE0;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5DD0, v14);
}

uint64_t sub_269364034(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_2693638F8(v6);
}

uint64_t sub_2693640F8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6098;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5DA0;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5AC0, v14);
}

uint64_t sub_269364280(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26936430C, 0, 0);
}

uint64_t sub_26936430C()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_269365920(v5, v4);
}

uint64_t sub_269364408(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6078;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5D70;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5A90, v14);
}

uint64_t sub_269364590(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26936461C, 0, 0);
}

uint64_t sub_26936461C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26936529C(v3);
}

uint64_t sub_2693646D0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2693646F0, 0, 0);
}

uint64_t sub_2693646F0()
{
  v1 = *(v0 + 64);
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 64);
  v7 = sub_26936558C(v2, v5, v4 == 0);
  *(v0 + 80) = v7;

  v8 = [v6 targetTimer];
  if (v8 && (v9 = v8, v10 = [v8 shouldMatchAny], v9, v10))
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 64);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_2693648A0;
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = MEMORY[0x277D84FA0];

  return sub_26937FF18(v7, v11, 1, v16, v14, v15);
}

uint64_t sub_2693648A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = sub_269364A70;
  }

  else
  {
    *(v4 + 104) = a1;
    v6 = sub_2693649E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2693649E8()
{
  v1 = v0[10];
  v2 = sub_269364D18(v0[13], v1);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_269364A70()
{
  v24 = v0;
  v1 = *(v0 + 96);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 80);

    v23 = *(v0 + 48);
    v4 = v23;
    v5 = sub_2693662A4(&v23);

    sub_26934ADAC(v4);
  }

  else
  {

    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_28030D1D0);
    v8 = v6;
    v9 = sub_2693B3610();
    v10 = sub_2693B39A0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v0 + 56) = v11;
      v14 = v11;
      v15 = sub_2693B3760();
      v17 = sub_26934CA40(v15, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26933F000, v9, v10, "Unknown error handling ResetTimerIntent: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D63A640](v13, -1, -1);
      MEMORY[0x26D63A640](v12, -1, -1);
    }

    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v5 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v20 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v5[v20] = 5;
    [v5 setUserActivity_];
  }

  v21 = *(v0 + 8);

  return v21(v5);
}

char *sub_269364D18(unint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v5 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v4[v5] = 4;
  [v4 setUserActivity_];
  if (a1 >> 62)
  {
    v6 = sub_2693B3C70();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_12:
    type metadata accessor for SiriTimer();
    v14 = sub_2693B3800();

    [v4 setResetTimers_];

    return v4;
  }

  result = sub_2693B3C20();
  if ((v6 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SiriTimer();
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D639EB0](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [a2 device];
      if (!v11)
      {
        v12 = (v15 + qword_28030D540);
        swift_beginAccess();
        v11 = *(*__swift_project_boxed_opaque_existential_1(v12, v12[3]) + 24);
        v13 = v11;
      }

      ++v8;
      sub_26935CB88(v10, v11);
      sub_2693B3C00();
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
    }

    while (v6 != v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_269364F48(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B6058;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

uint64_t sub_2693650D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_2693646D0(v6);
}

uint64_t type metadata accessor for ResetTimerIntentHandler(uint64_t a1)
{
  result = qword_28030D1E8;
  if (!qword_28030D1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693651E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693650D0(v2, v3, v4);
}

uint64_t sub_26936529C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936535C, 0, 0);
}

uint64_t sub_26936535C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_280E262F0);
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAllTargetableDevices() Resolving all targetable devices", v9, 2u);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_269349074;

    return sub_269394998();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];

    v13 = v1[1];

    return v13(v12);
  }
}

id sub_26936558C(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = a2;
    }

    v4 = a1;
    v5 = [v4 label];
    if (v5)
    {
      v6 = sub_2693B3750();
      v8 = v7;
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = [v4 duration];
    if (v12 && (v30 = 0.0, v31 = 1, v13 = v12, MEMORY[0x26D639C20](v12, &v30), v13, (v31 & 1) == 0))
    {
      v15 = v30;
    }

    else
    {
      [objc_opt_self() defaultDuration];
      v15 = v14;
    }

    v16 = [v4 type];
    if (v8)
    {
      v17 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v17 = v9;
      }

      if (v17)
      {
        [objc_opt_self() defaultDuration];
        if (v15 == v18)
        {
          v16 = (2 * ([v4 type] == 2));
        }
      }
    }

    type metadata accessor for SiriTimer();
    v19 = [v4 identifier];
    if (v19)
    {
      v20 = v19;
      sub_2693B3750();

      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = sub_2693B3740();
    }

    else
    {
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = 0;
    }

    v23 = sub_2693B3740();

    v11 = [v21 initWithIdentifier:v22 displayString:v23];

    if (v8)
    {

      [v11 setLabel_];
    }

    v24 = sub_2693B3930();
    [v11 setDuration_];

    v25 = [v4 remainingTime];
    [v11 setRemainingTime_];

    [v11 setState_];
    [v11 setType_];
    v26 = [v4 shouldMatchAny];
    [v11 setShouldMatchAny_];

    v27 = [v4 shouldMatchRemote];
    [v11 setShouldMatchRemote_];

    v28 = [v4 device];
    [v11 setDevice_];
  }

  else
  {
    type metadata accessor for SiriTimer();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2693B3740();
    v11 = [v10 initWithIdentifier:0 displayString:v4];
  }

  return v11;
}

uint64_t sub_269365920(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for ResetTimerIntent();
  v2[6] = &protocol witness table for ResetTimerIntent;
  v2[2] = a1;
  v5 = a1;

  return MEMORY[0x2822009F8](sub_269365A04, 0, 0);
}

uint64_t sub_269365A04(uint64_t a1)
{
  v20 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  sub_2693B3410();
  v5 = sub_2693B3400();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    v1[25] = __swift_project_value_buffer(v6, qword_280E262F0);
    sub_26934489C((v1 + 2), (v1 + 7));
    v7 = sub_2693B3610();
    v8 = sub_2693B39B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      sub_26934489C((v1 + 7), (v1 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v11 = sub_2693B3760();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      v14 = sub_26934CA40(v11, v13, &v19);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26933F000, v7, v8, "resolveAssociatedDeviceTarget(for:) %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D63A640](v10, -1, -1);
      MEMORY[0x26D63A640](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
    }

    v18 = swift_task_alloc();
    v1[26] = v18;
    *v18 = v1;
    v18[1] = sub_269365CE0;

    return sub_269394998();
  }

  else
  {
    *(v1[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v16 = v1[1];

    return v16(v15);
  }
}

uint64_t sub_269365CE0(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269365DE0, 0, 0);
}

uint64_t sub_269365DE0()
{
  v44 = v0;
  v1 = *(v0 + 216);
  if (v1 >> 62)
  {
    if (!sub_2693B3C70())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_20;
  }

  v2 = [*(v0 + 160) targetingInfo];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 134218242;
    if (v1 >> 62)
    {
      v8 = sub_2693B3C70();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    *(v6 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_2693B3750();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_26934CA40(v15, v14, &v43);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_26933F000, v4, v5, "Filtering %ld targets using targeting info: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  else
  {
  }

  v17 = sub_26939E908(v3, *(v0 + 160), *(v0 + 216));

  if (!v17)
  {
    v35 = sub_2693B3610();
    v36 = sub_2693B39B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26933F000, v35, v36, "No valid device target found for target criteria", v37, 2u);
      MEMORY[0x26D63A640](v37, -1, -1);
    }

    v38 = *(v0 + 168);

    *(v38 + qword_280E266B8) = 1;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v21 = 136315138;
    v42 = v3;
    v22 = v18;
    v23 = v18;
    v24 = [v22 description];
    v25 = sub_2693B3750();
    v27 = v26;

    v18 = v23;
    v3 = v42;
    v28 = sub_26934CA40(v25, v27, &v43);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_26933F000, v19, v20, "Found valid device target: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D63A640](v41, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  v29 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v32 = *(v31 + 40);
  v33 = v18;
  v32(v17, v30, v31);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v34 = sub_2693B1D2C(v33);

LABEL_20:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39(v34);
}

char *sub_2693662A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 5)
  {
LABEL_8:
    v10 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v11 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    v12 = 5;
    goto LABEL_9;
  }

  if (v1 - 7 < 3)
  {
    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v2 = sub_2693B3620();
    __swift_project_value_buffer(v2, qword_28030D1D0);
    sub_26934AD9C(v1);
    v3 = sub_2693B3610();
    v4 = sub_2693B39A0();
    sub_26934ADAC(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v1;
      v15[0] = v6;
      *v5 = 136315138;
      sub_26934AD9C(v1);
      v7 = sub_2693B3760();
      v9 = sub_26934CA40(v7, v8, v15);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_26933F000, v3, v4, "Failed in SetTimerAttributeIntent handling with an invalid, unhandled error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x26D63A640](v6, -1, -1);
      MEMORY[0x26D63A640](v5, -1, -1);
    }

    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v11 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  if (v1 == 6)
  {
    v12 = 101;
  }

  else
  {
    v12 = 100;
  }

LABEL_9:
  *&v10[v11] = v12;
  [v10 setUserActivity_];
  return v10;
}

uint64_t sub_269366508()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269364590(v2, v3, v4);
}

uint64_t sub_2693665BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269364280(v2, v3, v4);
}

uint64_t sub_269366670()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269364034(v2, v3, v4);
}

uint64_t sub_269366724()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_269344F9C;

  return sub_2693637B0(v2, v3);
}

uint64_t sub_2693667DC()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26270);
  v1 = __swift_project_value_buffer(v0, qword_280E26270);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_2693668A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0x409F400000000000;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  if (a4)
  {
    v5 = a2;

    v6 = sub_2693B3740();
  }

  else
  {
    v5 = a2;
    v6 = 0;
  }

  v7 = [objc_opt_self() timerManagerWithEndpointUUIDString_];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  v4[6] = v8;
  return v4;
}

uint64_t sub_269366980(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2693669A0, 0, 0);
}

uint64_t sub_2693669A0()
{
  v17 = v0;
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_26939ECE0(&unk_2879EC530);
  }

  *(v0 + 48) = v1;
  v2 = qword_280E26268;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_280E26270);

  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = *(v6 + 16);
    if (v9)
    {
      if (v9 >> 62)
      {
        v10 = sub_2693B3C70();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v10 = 0;
    }

    *(v0 + 16) = v10;
    *(v0 + 24) = v9 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D210, &unk_2693B61A0);
    v11 = sub_2693B3760();
    v13 = sub_26934CA40(v11, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_26933F000, v4, v5, "allHostTimers: Searching for timers on %s devices", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  *(v0 + 56) = *(*(v0 + 40) + 16);

  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_269366C18;

  return sub_26936FA6C();
}

uint64_t sub_269366C18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_269366E1C;
  }

  else
  {

    v4 = sub_269366D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269366D3C()
{
  if (sub_2693995BC(*(v0 + 72)))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 72);

    return v1(v2);
  }

  else
  {

    sub_26934B0F0();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_269366E1C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_269366E88(uint64_t a1, void *a2, void *a3)
{
  v66 = a3;
  v69 = a2;
  v72 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);
  v67 = *(v65 - 8);
  v71 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v68 = &v52 - v3;
  v4 = sub_2693B3620();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2693B33A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2693B33D0();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D617D8], v8);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_280E26270);
  (*(v5 + 16))(v7, v17, v4);
  mach_absolute_time();
  sub_2693B33E0();
  result = [v69 timers];
  v69 = result;
  if (result)
  {
    v19 = v70;
    v20 = *(v70 + 16);
    v63 = v70 + 16;
    v64 = v20;
    v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v12;
    v20(v53, v16, v12);
    v23 = v67;
    v22 = v68;
    v24 = *(v67 + 16);
    v60 = v16;
    v61 = v67 + 16;
    v62 = v24;
    v25 = v65;
    v24(v68, v72, v65);
    v26 = *(v19 + 80);
    v27 = v19;
    v28 = (v26 + 16) & ~v26;
    v59 = v28 + v13;
    v57 = v28;
    v29 = (v28 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v23 + 80);
    v31 = (v30 + v29 + 8) & ~v30;
    v58 = v26 | v30;
    v32 = swift_allocObject();
    v54 = v21;
    v56 = *(v27 + 32);
    v33 = v32 + v28;
    v34 = v53;
    v56(v33, v53, v21);
    *(v32 + v29) = v66;
    v67 = *(v23 + 32);
    v35 = v22;
    v36 = v22;
    v37 = v25;
    (v67)(v32 + v31, v35, v25);
    v77 = sub_2693702A0;
    v78 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v55 = &v75;
    v75 = sub_269378A84;
    v76 = &block_descriptor_41_0;
    v38 = _Block_copy(&aBlock);

    v39 = v69;
    v66 = [v69 addSuccessBlock_];
    _Block_release(v38);

    v40 = v34;
    v41 = v60;
    v42 = v54;
    v64(v34, v60, v54);
    v43 = v36;
    v44 = v36;
    v45 = v37;
    v62(v44, v72, v37);
    v46 = (v59 + v30) & ~v30;
    v47 = swift_allocObject();
    v48 = v42;
    v56(v47 + v57, v40, v42);
    (v67)(v47 + v46, v43, v45);
    v77 = sub_269370390;
    v78 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_269373AD8;
    v76 = &block_descriptor_47;
    v49 = _Block_copy(&aBlock);

    v50 = v66;
    v51 = [v66 addFailureBlock_];
    _Block_release(v49);

    return (*(v70 + 8))(v41, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269367518(uint64_t a1)
{
  sub_2693B33C0();
  sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
  sub_2693B3810();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E26270);
  v2 = sub_2693B3610();
  v3 = sub_2693B39A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "Error casting input timers to MT objects", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  sub_2693A83E8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);
  return sub_2693B3900();
}

uint64_t sub_269367778(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269367820, 0, 0);
}

uint64_t sub_269367820()
{
  v42 = v0;
  v1 = *(*(v0 + 72) + 48);
  *(v0 + 96) = v1;
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    *(v0 + 104) = v2;
    v3 = v1;
    if (v2)
    {
      v4 = v3;
      v5 = *(v0 + 64);
      v6 = [v2 sound];
      if (v6)
      {
        v14 = v6;
        v15 = [v6 isSilent];

        if (v15)
        {

          goto LABEL_6;
        }

        v31 = swift_task_alloc();
        *(v0 + 112) = v31;
        *(v31 + 16) = v4;
        v32 = swift_task_alloc();
        *(v0 + 120) = v32;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D250, &qword_2693B6200);
        *v32 = v0;
        v32[1] = sub_269367E10;
        v11 = sub_269370EB4;
        v9 = 0x72656D6954646461;
        v10 = 0xEC000000293A5F28;
        v6 = (v0 + 56);
        v7 = 0;
        v8 = 0;
        v12 = v31;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2822007B8](v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_6:
    v16 = *(v0 + 96);
    v17 = *(v0 + 64);
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = sub_269368084;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0x72656D6954646461, 0xEC000000293A5F28, sub_269370EAC, v18, v20);
  }

  v21 = sub_2693B35D0();
  v22 = MEMORY[0x277D61908];
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v24 = *MEMORY[0x277D61880];
  v25 = sub_2693B3560();
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, v24, v25);
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v21);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 80);
  v26 = *(v0 + 88);
  v28 = sub_2693B3620();
  v29 = __swift_project_value_buffer(v28, qword_280E26270);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v26, v29, v28);
  (*(v30 + 56))(v26, 0, 1, v28);
  sub_26936F690(v26, v27);
  if ((*(v30 + 48))(v27, 1, v28) == 1)
  {
    sub_26934B4F0(*(v0 + 80), &qword_28030D200, &qword_2693B6178);
  }

  else
  {
    v33 = sub_2693B3610();
    v34 = sub_2693B39A0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136315650;
      v37 = sub_2693B3BB0();
      v39 = sub_26934CA40(v37, v38, &v41);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2048;
      *(v35 + 14) = 285;
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v41);
      _os_log_impl(&dword_26933F000, v33, v34, "FatalError at %s:%lu - %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v36, -1, -1);
      MEMORY[0x26D63A640](v35, -1, -1);
    }

    (*(v30 + 8))(*(v0 + 80), v28);
  }

  sub_2693B3330();
  return sub_2693B3C50();
}

uint64_t sub_269367E10()
{

  return MEMORY[0x2822009F8](sub_269367F28, 0, 0);
}

uint64_t sub_269367F28()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if ([*(v0 + 56) isSilent])
    {
    }

    else
    {
      v2 = *(v0 + 104);
      v3 = *(v0 + 64);
      v1 = v1;
      [v2 setSound_];
    }
  }

  else
  {
    v1 = *(v0 + 64);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_269368084;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0x72656D6954646461, 0xEC000000293A5F28, sub_269370EAC, v6, v8);
}

uint64_t sub_269368084()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_269368218;
  }

  else
  {

    v2 = sub_2693681A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2693681A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269368218()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2693682A4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = [a2 latestDuration];
  if (v8)
  {
    v9 = v8;
    v20 = *(v5 + 16);
    v20(v7, a1, v4);
    v19 = a1;
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v18 = *(v5 + 32);
    v18(v11 + v10, v7, v4);
    v25 = sub_269370EBC;
    v26 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2693685E4;
    v24 = &block_descriptor_87;
    v12 = _Block_copy(&aBlock);

    v17 = [v9 addSuccessBlock_];
    _Block_release(v12);

    v20(v7, v19, v4);
    v13 = swift_allocObject();
    v18(v13 + v10, v7, v4);
    v25 = sub_269370FCC;
    v26 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_269373AD8;
    v24 = &block_descriptor_93;
    v14 = _Block_copy(&aBlock);

    v15 = v17;
    v16 = [v17 addFailureBlock_];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269368584(void *a1)
{
  [a1 sound];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  return sub_2693B3900();
}

void sub_2693685E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_26936864C(uint64_t a1, void *a2, char *a3)
{
  v55 = a3;
  v59 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v58 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v43 - v6;
  v7 = sub_2693B3620();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2693B33A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2693B33D0();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D617D0], v11);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_280E26270);
  (*(v8 + 16))(v10, v20, v7);
  mach_absolute_time();
  sub_2693B33E0();
  result = [a2 addTimer_];
  v51 = result;
  if (result)
  {
    v22 = v56;
    v23 = *(v56 + 16);
    v49 = v56 + 16;
    v50 = v23;
    v24 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v24;
    v23(v24, v19, v57);
    v25 = v53;
    v48 = *(v53 + 16);
    v26 = v54;
    v27 = v52;
    v48();
    v28 = *(v22 + 80);
    v55 = v19;
    v29 = (v28 + 16) & ~v28;
    v30 = *(v25 + 80);
    v46 = v29;
    v31 = (v16 + v30 + v29) & ~v30;
    v47 = v28 | v30;
    v32 = swift_allocObject();
    v45 = *(v22 + 32);
    v33 = v32 + v29;
    v34 = v57;
    v45(v33, v24, v57);
    v53 = *(v25 + 32);
    v35 = v26;
    (v53)(v32 + v31, v26, v27);
    v64 = sub_269371064;
    v65 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_269378A84;
    v63 = &block_descriptor_99;
    v36 = _Block_copy(&aBlock);

    v37 = v51;
    v44 = [v51 addSuccessBlock_];
    _Block_release(v36);

    v38 = v43;
    v50(v43, v55, v34);
    (v48)(v35, v59, v27);
    v39 = swift_allocObject();
    v45(v39 + v46, v38, v34);
    (v53)(v39 + v31, v35, v27);
    v64 = sub_2693712C4;
    v65 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_269373AD8;
    v63 = &block_descriptor_105;
    v40 = _Block_copy(&aBlock);

    v41 = v44;
    v42 = [v44 addFailureBlock_];
    _Block_release(v40);

    return (*(v56 + 8))(v55, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269368C60(uint64_t a1)
{
  sub_2693B33C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_269368CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_2693B33C0();
  v14[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2693B38F0();
  v9 = sub_2693B35D0();
  v14[3] = v9;
  v14[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v11 = *MEMORY[0x277D61838];
  v12 = sub_2693B34B0();
  (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, v11, v12);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v9);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_269368DE0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v3 = sub_2693B3620();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_2693B33A0();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = sub_2693B33D0();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269368F9C, 0, 0);
}

uint64_t sub_269368F9C()
{
  v78 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[15];
  v7 = swift_allocObject();
  v0[27] = v7;
  v69 = v7;
  *(v7 + 16) = v1;
  v71 = (v7 + 16);
  v76 = *(v6 + 48);
  v8 = swift_allocBox();
  v10 = v9;
  v68 = v8;
  v0[28] = v8;
  (*(v5 + 104))(v3, *MEMORY[0x277D617C8], v4);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = v0[25];
  v11 = v0[26];
  v74 = v0[24];
  v13 = v0[20];
  v70 = v0;
  v14 = v0[14];
  v66 = (v0[19] + 16);
  v67 = __swift_project_value_buffer(v0[18], qword_280E26270);
  v65 = *v66;
  (*v66)(v13);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v12 + 32))(v10, v11, v74);
  if (v14 >> 62)
  {
    v10 = sub_2693B3C70();
    if (v10)
    {
LABEL_4:
      v15 = 0;
      v64 = (v2 - 9);
      v75 = v14 & 0xC000000000000001;
      v73 = v14 & 0xFFFFFFFFFFFFFF8;
      v72 = v0[14] + 32;
      while (1)
      {
        if (v75)
        {
          v16 = MEMORY[0x26D639EB0](v15, v70[14]);
        }

        else
        {
          if (v15 >= *(v73 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(v72 + 8 * v15);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v16 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v19 = v2[1];
        [v19 setState_];
        if (!v76)
        {
          v36 = v70[18];
          v37 = v70[19];
          v38 = v70[16];
          v39 = v70[17];
          v40 = sub_2693B35D0();
          v41 = MEMORY[0x277D61908];
          v70[5] = v40;
          v70[6] = v41;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
          v43 = *MEMORY[0x277D61880];
          v44 = sub_2693B3560();
          (*(*(v44 - 8) + 104))(boxed_opaque_existential_1, v43, v44);
          (*(*(v40 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v40);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v64);
          (v65)(v39, v67, v36);
          (*(v37 + 56))(v39, 0, 1, v36);
          sub_26936F690(v39, v38);
          if ((*(v37 + 48))(v38, 1, v36) == 1)
          {
            sub_26934B4F0(v70[16], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v45 = sub_2693B3610();
            v46 = sub_2693B39A0();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v77[0] = v48;
              *v47 = 136315650;
              v49 = sub_2693B3BB0();
              v51 = sub_26934CA40(v49, v50, v77);

              *(v47 + 4) = v51;
              *(v47 + 12) = 2048;
              *(v47 + 14) = 337;
              *(v47 + 22) = 2080;
              *(v47 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v77);
              _os_log_impl(&dword_26933F000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v48, -1, -1);
              MEMORY[0x26D63A640](v47, -1, -1);
            }

            (*(v70[19] + 8))(v70[16], v70[18]);
          }

          sub_2693B3330();
          return sub_2693B3C50();
        }

        v20 = v19;
        v21 = v76;
        v22 = [v21 updateTimer_];
        if (!v22)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29);
        }

        MEMORY[0x26D639AD0]();
        v0 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0 >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v30 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v15;
        if (v18 == v10)
        {
          goto LABEL_33;
        }
      }

      v31 = sub_2693B3610();
      v32 = sub_2693B39A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26933F000, v31, v32, "Failed to cast fetched timer as mutable timer!", v33, 2u);
        MEMORY[0x26D63A640](v33, -1, -1);
      }

      sub_26934B0F0();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();

      v35 = v70;
      goto LABEL_40;
    }
  }

  else
  {
    v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_33:
  v53 = sub_26936C730(v30);

  if (!v53)
  {
    v59 = sub_2693B3610();
    v60 = sub_2693B39A0();
    v35 = v70;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26933F000, v59, v60, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v61, 2u);
      MEMORY[0x26D63A640](v61, -1, -1);
    }

    sub_26934B0F0();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();
LABEL_40:

    v63 = v35[1];

    return v63();
  }

  v54 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v55 = sub_2693B3800();

  v56 = [v54 combineAllFutures:v55 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v70[29] = v56;
  swift_unknownObjectRelease();

  v57 = swift_task_alloc();
  v70[30] = v57;
  v57[2] = v56;
  v57[3] = v68;
  v57[4] = v69;
  v58 = swift_task_alloc();
  v70[31] = v58;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v58 = v70;
  v58[1] = sub_2693699A4;
  v25 = 0xD000000000000019;
  v27 = sub_2693713F0;
  v22 = v70 + 13;
  v26 = 0x80000002693B8B10;
  v23 = 0;
  v24 = 0;
  v28 = v57;

  return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_2693699A4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_269371420;
  }

  else
  {

    v2 = sub_2693713E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269369AC0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v3 = sub_2693B3620();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_2693B33A0();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = sub_2693B33D0();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269369C7C, 0, 0);
}

uint64_t sub_269369C7C()
{
  v78 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[15];
  v7 = swift_allocObject();
  v0[27] = v7;
  v69 = v7;
  *(v7 + 16) = v1;
  v71 = (v7 + 16);
  v76 = *(v6 + 48);
  v8 = swift_allocBox();
  v10 = v9;
  v68 = v8;
  v0[28] = v8;
  (*(v5 + 104))(v3, *MEMORY[0x277D617C8], v4);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = v0[25];
  v11 = v0[26];
  v74 = v0[24];
  v13 = v0[20];
  v70 = v0;
  v14 = v0[14];
  v66 = (v0[19] + 16);
  v67 = __swift_project_value_buffer(v0[18], qword_280E26270);
  v65 = *v66;
  (*v66)(v13);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v12 + 32))(v10, v11, v74);
  if (v14 >> 62)
  {
    v10 = sub_2693B3C70();
    if (v10)
    {
LABEL_4:
      v15 = 0;
      v64 = (v2 - 9);
      v75 = v14 & 0xC000000000000001;
      v73 = v14 & 0xFFFFFFFFFFFFFF8;
      v72 = v0[14] + 32;
      while (1)
      {
        if (v75)
        {
          v16 = MEMORY[0x26D639EB0](v15, v70[14]);
        }

        else
        {
          if (v15 >= *(v73 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(v72 + 8 * v15);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v16 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v19 = v2[1];
        [v19 setState_];
        if (!v76)
        {
          v36 = v70[18];
          v37 = v70[19];
          v38 = v70[16];
          v39 = v70[17];
          v40 = sub_2693B35D0();
          v41 = MEMORY[0x277D61908];
          v70[5] = v40;
          v70[6] = v41;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
          v43 = *MEMORY[0x277D61880];
          v44 = sub_2693B3560();
          (*(*(v44 - 8) + 104))(boxed_opaque_existential_1, v43, v44);
          (*(*(v40 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v40);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v64);
          (v65)(v39, v67, v36);
          (*(v37 + 56))(v39, 0, 1, v36);
          sub_26936F690(v39, v38);
          if ((*(v37 + 48))(v38, 1, v36) == 1)
          {
            sub_26934B4F0(v70[16], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v45 = sub_2693B3610();
            v46 = sub_2693B39A0();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v77[0] = v48;
              *v47 = 136315650;
              v49 = sub_2693B3BB0();
              v51 = sub_26934CA40(v49, v50, v77);

              *(v47 + 4) = v51;
              *(v47 + 12) = 2048;
              *(v47 + 14) = 337;
              *(v47 + 22) = 2080;
              *(v47 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v77);
              _os_log_impl(&dword_26933F000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v48, -1, -1);
              MEMORY[0x26D63A640](v47, -1, -1);
            }

            (*(v70[19] + 8))(v70[16], v70[18]);
          }

          sub_2693B3330();
          return sub_2693B3C50();
        }

        v20 = v19;
        v21 = v76;
        v22 = [v21 updateTimer_];
        if (!v22)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29);
        }

        MEMORY[0x26D639AD0]();
        v0 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0 >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v30 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v15;
        if (v18 == v10)
        {
          goto LABEL_33;
        }
      }

      v31 = sub_2693B3610();
      v32 = sub_2693B39A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26933F000, v31, v32, "Failed to cast fetched timer as mutable timer!", v33, 2u);
        MEMORY[0x26D63A640](v33, -1, -1);
      }

      sub_26934B0F0();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();

      v35 = v70;
      goto LABEL_40;
    }
  }

  else
  {
    v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_33:
  v53 = sub_26936C730(v30);

  if (!v53)
  {
    v59 = sub_2693B3610();
    v60 = sub_2693B39A0();
    v35 = v70;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26933F000, v59, v60, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v61, 2u);
      MEMORY[0x26D63A640](v61, -1, -1);
    }

    sub_26934B0F0();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();
LABEL_40:

    v63 = v35[1];

    return v63();
  }

  v54 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v55 = sub_2693B3800();

  v56 = [v54 combineAllFutures:v55 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v70[29] = v56;
  swift_unknownObjectRelease();

  v57 = swift_task_alloc();
  v70[30] = v57;
  v57[2] = v56;
  v57[3] = v68;
  v57[4] = v69;
  v58 = swift_task_alloc();
  v70[31] = v58;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v58 = v70;
  v58[1] = sub_26936A684;
  v25 = 0xD000000000000019;
  v27 = sub_2693713F0;
  v22 = v70 + 13;
  v26 = 0x80000002693B8B10;
  v23 = 0;
  v24 = 0;
  v28 = v57;

  return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_26936A684()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_26936A86C;
  }

  else
  {

    v2 = sub_26936A7A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26936A7A0()
{

  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26936A86C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26936A930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_2693B3620();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_2693B33A0();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_2693B33D0();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936AAF0, 0, 0);
}

uint64_t sub_26936AAF0()
{
  v84 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[15];
  v7 = swift_allocObject();
  v0[28] = v7;
  v77 = v7;
  *(v7 + 16) = v1;
  v78 = (v7 + 16);
  v80 = *(v6 + 48);
  v8 = swift_allocBox();
  v82 = v9;
  v76 = v8;
  v0[29] = v8;
  (*(v5 + 104))(v3, *MEMORY[0x277D617C8], v4);
  if (qword_280E26268 != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v13 = v0[21];
  v81 = v0;
  v14 = v0[14];
  v74 = (v0[20] + 16);
  v75 = __swift_project_value_buffer(v0[19], qword_280E26270);
  v73 = *v74;
  (*v74)(v13);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v11 + 32))(v82, v10, v12);
  if (v14 >> 62)
  {
    v15 = sub_2693B3C70();
    if (v15)
    {
LABEL_4:
      v16 = 0;
      v72 = (v2 - 9);
      v79 = v0[14] + 32;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v0 = v81;
          v17 = MEMORY[0x26D639EB0](v16, v81[14]);
        }

        else
        {
          v0 = v81;
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v17 = *(v79 + 8 * v16);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v82 = v16;
        [v17 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v20 = v0[16];
        v21 = v0[12];
        [v21 setState_];
        v22 = [v20 toTimer];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 duration];

          if (v24)
          {
            [v24 doubleValue];
            v26 = v25;

            [v21 setDuration_];
          }
        }

        [v21 setState_];
        if (!v80)
        {
          v43 = v0[19];
          v44 = v0[20];
          v45 = v0[17];
          v46 = v0[18];
          v47 = sub_2693B35D0();
          v48 = MEMORY[0x277D61908];
          v0[5] = v47;
          v0[6] = v48;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
          v50 = *MEMORY[0x277D61880];
          v51 = sub_2693B3560();
          (*(*(v51 - 8) + 104))(boxed_opaque_existential_1, v50, v51);
          (*(*(v47 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v47);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v72);
          (v73)(v46, v75, v43);
          (*(v44 + 56))(v46, 0, 1, v43);
          sub_26936F690(v46, v45);
          if ((*(v44 + 48))(v45, 1, v43) == 1)
          {
            sub_26934B4F0(v0[17], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v52 = sub_2693B3610();
            v53 = sub_2693B39A0();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v83[0] = v55;
              *v54 = 136315650;
              v56 = sub_2693B3BB0();
              v58 = sub_26934CA40(v56, v57, v83);

              *(v54 + 4) = v58;
              *(v54 + 12) = 2048;
              *(v54 + 14) = 337;
              *(v54 + 22) = 2080;
              *(v54 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v83);
              _os_log_impl(&dword_26933F000, v52, v53, "FatalError at %s:%lu - %s", v54, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v55, -1, -1);
              MEMORY[0x26D63A640](v54, -1, -1);
            }

            (*(v0[20] + 8))(v0[17], v0[19]);
          }

          v59 = v0[16];
          sub_2693B3330();

          return sub_2693B3C50();
        }

        v27 = v21;
        v28 = v80;
        v29 = [v28 updateTimer_];
        if (!v29)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v29, v30, v31, v32, v33, v34, v35, v36);
        }

        MEMORY[0x26D639AD0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v37 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v16 = v82 + 1;
        if (v19 == v15)
        {
          goto LABEL_36;
        }
      }

      v38 = sub_2693B3610();
      v39 = sub_2693B39A0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_26933F000, v38, v39, "Failed to cast fetched timer as mutable timer!", v40, 2u);
        MEMORY[0x26D63A640](v40, -1, -1);
      }

      v41 = v0[16];

      sub_26934B0F0();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();

      goto LABEL_43;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_36:
  v61 = sub_26936C730(v37);

  if (!v61)
  {
    v67 = sub_2693B3610();
    v68 = sub_2693B39A0();
    v0 = v81;
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26933F000, v67, v68, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v69, 2u);
      MEMORY[0x26D63A640](v69, -1, -1);
    }

    v41 = v81[16];

    sub_26934B0F0();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();
LABEL_43:

    v71 = v0[1];

    return v71();
  }

  v62 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v63 = sub_2693B3800();

  v64 = [v62 combineAllFutures:v63 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v81[30] = v64;
  swift_unknownObjectRelease();

  v65 = swift_task_alloc();
  v81[31] = v65;
  v65[2] = v64;
  v65[3] = v76;
  v65[4] = v77;
  v66 = swift_task_alloc();
  v81[32] = v66;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v66 = v81;
  v66[1] = sub_26936B59C;
  v32 = 0xD000000000000019;
  v34 = sub_2693713F0;
  v29 = v81 + 13;
  v33 = 0x80000002693B8B10;
  v30 = 0;
  v31 = 0;
  v35 = v65;

  return MEMORY[0x2822008A0](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_26936B59C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_26936B78C;
  }

  else
  {

    v2 = sub_26936B6B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26936B6B8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26936B78C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26936B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 280) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v6 = sub_2693B3620();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  v7 = sub_2693B33A0();
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();
  v8 = sub_2693B33D0();
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936BA1C, 0, 0);
}

uint64_t sub_26936BA1C()
{
  v80 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[15];
  v7 = swift_allocObject();
  v0[29] = v7;
  v71 = v7;
  *(v7 + 16) = v1;
  v73 = (v7 + 16);
  v77 = *(v6 + 48);
  v8 = swift_allocBox();
  v76 = v9;
  v70 = v8;
  v0[30] = v8;
  (*(v5 + 104))(v3, *MEMORY[0x277D617C8], v4);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  v13 = v0[22];
  v78 = v0;
  v14 = v0[14];
  v68 = (v0[21] + 16);
  v69 = __swift_project_value_buffer(v0[20], qword_280E26270);
  v67 = *v68;
  (*v68)(v13);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v11 + 32))(v76, v10, v12);
  if (v14 >> 62)
  {
    v15 = sub_2693B3C70();
    if (v15)
    {
LABEL_4:
      v16 = 0;
      v66 = (v2 - 9);
      v72 = *(v0 + 280);
      v75 = v14 & 0xFFFFFFFFFFFFFF8;
      v76 = v14 & 0xC000000000000001;
      v74 = v0[14] + 32;
      while (1)
      {
        if (v76)
        {
          v0 = v78;
          v17 = MEMORY[0x26D639EB0](v16, v78[14]);
        }

        else
        {
          v0 = v78;
          if (v16 >= *(v75 + 16))
          {
            goto LABEL_29;
          }

          v17 = *(v74 + 8 * v16);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v17 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v20 = v0[12];
        sub_26939BD60(v20, v0[16], v0[17], v72 & 1);
        if (!v77)
        {
          v37 = v78[20];
          v38 = v78[21];
          v39 = v78[18];
          v40 = v78[19];
          v41 = sub_2693B35D0();
          v42 = MEMORY[0x277D61908];
          v78[5] = v41;
          v78[6] = v42;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
          v44 = *MEMORY[0x277D61880];
          v45 = sub_2693B3560();
          (*(*(v45 - 8) + 104))(boxed_opaque_existential_1, v44, v45);
          (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v41);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v66);
          (v67)(v40, v69, v37);
          (*(v38 + 56))(v40, 0, 1, v37);
          sub_26936F690(v40, v39);
          if ((*(v38 + 48))(v39, 1, v37) == 1)
          {
            sub_26934B4F0(v78[18], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v46 = sub_2693B3610();
            v47 = sub_2693B39A0();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v79[0] = v49;
              *v48 = 136315650;
              v50 = sub_2693B3BB0();
              v52 = sub_26934CA40(v50, v51, v79);

              *(v48 + 4) = v52;
              *(v48 + 12) = 2048;
              *(v48 + 14) = 337;
              *(v48 + 22) = 2080;
              *(v48 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v79);
              _os_log_impl(&dword_26933F000, v46, v47, "FatalError at %s:%lu - %s", v48, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v49, -1, -1);
              MEMORY[0x26D63A640](v48, -1, -1);
            }

            (*(v78[21] + 8))(v78[18], v78[20]);
          }

          v53 = v78[16];
          sub_2693B3330();

          return sub_2693B3C50();
        }

        v21 = v20;
        v22 = v77;
        v23 = [v22 updateTimer_];
        if (!v23)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v23, v24, v25, v26, v27, v28, v29, v30);
        }

        MEMORY[0x26D639AD0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v31 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v16;
        if (v19 == v15)
        {
          goto LABEL_33;
        }
      }

      v32 = sub_2693B3610();
      v33 = sub_2693B39A0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_26933F000, v32, v33, "Failed to cast fetched timer as mutable timer!", v34, 2u);
        MEMORY[0x26D63A640](v34, -1, -1);
      }

      v35 = v0[16];

      sub_26934B0F0();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();

      goto LABEL_40;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_33:
  v55 = sub_26936C730(v31);

  if (!v55)
  {
    v61 = sub_2693B3610();
    v62 = sub_2693B39A0();
    v0 = v78;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26933F000, v61, v62, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v63, 2u);
      MEMORY[0x26D63A640](v63, -1, -1);
    }

    v35 = v78[16];

    sub_26934B0F0();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
LABEL_40:

    v65 = v0[1];

    return v65();
  }

  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v57 = sub_2693B3800();

  v58 = [v56 combineAllFutures:v57 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v78[31] = v58;
  swift_unknownObjectRelease();

  v59 = swift_task_alloc();
  v78[32] = v59;
  v59[2] = v58;
  v59[3] = v70;
  v59[4] = v71;
  v60 = swift_task_alloc();
  v78[33] = v60;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v60 = v78;
  v60[1] = sub_26936C474;
  v26 = 0xD000000000000019;
  v28 = sub_269370C4C;
  v23 = v78 + 13;
  v27 = 0x80000002693B8B10;
  v24 = 0;
  v25 = 0;
  v29 = v59;

  return MEMORY[0x2822008A0](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_26936C474()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_26936C664;
  }

  else
  {

    v2 = sub_26936C590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26936C590()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26936C664()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26936C730(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    result = sub_2693B3C20();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return v8;
  }

  sub_2693B3C70();
  sub_2693B3C20();
  result = sub_2693B3C70();
  v3 = result;
  if (!result)
  {
    return v8;
  }

LABEL_3:
  if (v3 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        MEMORY[0x26D639EB0](v4++, a1);
        sub_2693B3C00();
        sub_2693B3C30();
        sub_2693B3C40();
        sub_2693B3C10();
      }

      while (v3 != v4);
    }

    else
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6;
        sub_2693B3C00();
        sub_2693B3C30();
        sub_2693B3C40();
        sub_2693B3C10();
        --v3;
      }

      while (v3);
    }

    return v8;
  }

  __break(1u);
  return result;
}

void sub_26936C880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock - v11;
  (*(v9 + 16))(&aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v23 = sub_269370C58;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269378A84;
  v22 = &block_descriptor_59;
  v15 = _Block_copy(&aBlock);

  v16 = [a2 addSuccessBlock_];
  _Block_release(v15);
  v23 = sub_269370D04;
  v24 = a3;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269373AD8;
  v22 = &block_descriptor_62;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 addFailureBlock_];
  _Block_release(v17);
}

uint64_t sub_26936CB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2693B33D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  sub_2693B33C0();
  (*(v6 + 8))(v8, v5);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v10 = sub_2693B3620();
  __swift_project_value_buffer(v10, qword_280E26270);
  v11 = sub_2693B3610();
  v12 = sub_2693B3990();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26933F000, v11, v12, "UpdateTimerIntentHandler: allUpdateFuture success block called", v13, 2u);
    MEMORY[0x26D63A640](v13, -1, -1);
  }

  swift_beginAccess();
  v16 = *(a4 + 16);
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D230, &qword_2693B61D0);
  sub_269353B24(&qword_28030D238, &qword_28030CF60, &qword_2693B61C0, MEMORY[0x277D83970]);
  sub_269353B24(&qword_28030D240, &qword_28030D230, &qword_2693B61D0, &unk_2693B6920);
  v16 = sub_2693B37E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8);
  return sub_2693B3900();
}

uint64_t sub_26936CDDC(void *a1, uint64_t a2)
{
  v3 = sub_2693B33D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  sub_2693B33C0();
  (*(v4 + 8))(v6, v3);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v8 = sub_2693B3620();
  __swift_project_value_buffer(v8, qword_280E26270);
  v9 = a1;
  v10 = sub_2693B3610();
  v11 = sub_2693B3990();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[1] = a1;
    v24[0] = v13;
    *v12 = 136315138;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v15 = sub_2693B3760();
    v17 = sub_26934CA40(v15, v16, v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26933F000, v10, v11, "UpdateTimerIntentHandler: allUpdateFuture failure block called: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v18 = sub_2693B35D0();
  v24[3] = v18;
  v24[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v20 = *MEMORY[0x277D61838];
  v21 = sub_2693B34B0();
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, v20, v21);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v18);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_26936D0F4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = sub_2693B3520();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2693B3620();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_2693B33A0();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936D2BC, 0, 0);
}

uint64_t sub_26936D2BC()
{
  v40 = v0;
  v1 = *(v0[8] + 48);
  v0[21] = v1;
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    (*(v5 + 104))(v2, *MEMORY[0x277D617E0], v4);
    sub_2693B33D0();
    v38 = swift_allocBox();
    v0[22] = v38;
    (*(v5 + 16))(v3, v2, v4);
    v6 = qword_280E26268;
    v37 = v1;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[13];
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v36 = v0[7];
    v13 = __swift_project_value_buffer(v10, qword_280E26270);
    (*(v7 + 16))(v8, v13, v10);
    mach_absolute_time();
    sub_2693B33E0();
    *v9 = sub_2693B3390();
    v9[1] = v14;
    (*(v11 + 104))(v9, *MEMORY[0x277D61848], v12);
    sub_2693B33B0();
    (*(v11 + 8))(v9, v12);
    v15 = swift_task_alloc();
    v0[23] = v15;
    v15[2] = v37;
    v15[3] = v36;
    v15[4] = v38;
    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_26936D878;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, 0, 0, 0x695465766F6D6572, 0xEF293A5F2872656DLL, sub_269370D0C, v15, v17);
  }

  else
  {
    v18 = sub_2693B35D0();
    v19 = MEMORY[0x277D61908];
    v0[5] = v18;
    v0[6] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v21 = *MEMORY[0x277D61880];
    v22 = sub_2693B3560();
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
    (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v18);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280E26268 != -1)
    {
      swift_once();
    }

    v23 = v0[14];
    v24 = v0[15];
    v26 = v0[9];
    v25 = v0[10];
    v27 = __swift_project_value_buffer(v23, qword_280E26270);
    (*(v24 + 16))(v25, v27, v23);
    (*(v24 + 56))(v25, 0, 1, v23);
    sub_26936F690(v25, v26);
    if ((*(v24 + 48))(v26, 1, v23) == 1)
    {
      sub_26934B4F0(v0[9], &qword_28030D200, &qword_2693B6178);
    }

    else
    {
      v28 = sub_2693B3610();
      v29 = sub_2693B39A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315650;
        v32 = sub_2693B3BB0();
        v34 = sub_26934CA40(v32, v33, &v39);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2048;
        *(v30 + 14) = 467;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v39);
        _os_log_impl(&dword_26933F000, v28, v29, "FatalError at %s:%lu - %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v31, -1, -1);
        MEMORY[0x26D63A640](v30, -1, -1);
      }

      (*(v0[15] + 8))(v0[9], v0[14]);
    }

    sub_2693B3330();
    return sub_2693B3C50();
  }
}

uint64_t sub_26936D878()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26936DA90;
  }

  else
  {
    v2 = sub_26936D9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26936D9A8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26936DA90()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_26936DB78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v27 = [a2 removeTimer_];
  if (v27)
  {
    v26 = *(v9 + 16);
    v26(v12, a1, v8);
    v25 = a1;
    v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    v24 = *(v9 + 32);
    v24(v14 + v13, v12, v8);
    v32 = sub_269370D18;
    v33 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v23[1] = &v30;
    v30 = sub_269378A84;
    v31 = &block_descriptor_72;
    v15 = _Block_copy(&aBlock);
    v23[0] = v10;
    v16 = a4;
    v17 = v15;

    v18 = v27;
    v19 = [v27 addSuccessBlock_];
    _Block_release(v17);

    v26(v12, v25, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v24(v20 + v13, v12, v8);
    v32 = sub_269370E00;
    v33 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_269373AD8;
    v31 = &block_descriptor_78;
    v21 = _Block_copy(&aBlock);

    v22 = [v19 addFailureBlock_];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26936DE98(uint64_t a1, uint64_t a2)
{
  v2 = sub_2693B33D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  sub_2693B33C0();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_26936DFC8(void *a1, uint64_t a2)
{
  v3 = sub_2693B33D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  sub_2693B33C0();
  (*(v4 + 8))(v6, v3);
  v14[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  sub_2693B38F0();
  v9 = sub_2693B35D0();
  v14[3] = v9;
  v14[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v11 = *MEMORY[0x277D61838];
  v12 = sub_2693B34B0();
  (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, v11, v12);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v9);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26936E1D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v92 = a3;
  v89 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v84 = *(v4 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v80 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v79 = &v76 - v9;
  v10 = sub_2693B3620();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2693B33A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2693B33D0();
  v88 = *(v91 - 8);
  v18 = MEMORY[0x28223BE20](v91);
  v82 = v19;
  v83 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  (*(v15 + 104))(v17, *MEMORY[0x277D617E0], v14);
  if (qword_280E26268 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v10, qword_280E26270);
    v23 = v11;
    v24 = *(v11 + 16);
    v24(v13, v22, v10);
    mach_absolute_time();
    sub_2693B33E0();
    v25 = *(a2 + 48);
    if (!v25)
    {
      goto LABEL_28;
    }

    v23 = v92;
    v81 = v22;
    a2 = v92 >> 62 ? sub_2693B3C70() : *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = MEMORY[0x277D84F90];
    v85 = v4;
    v90 = v21;
    if (!a2)
    {
      break;
    }

    aBlock = MEMORY[0x277D84F90];
    v10 = v25;
    sub_2693B3C20();
    if (a2 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v60 = v22;
      v61 = sub_2693B35D0();
      v96 = v61;
      v97 = MEMORY[0x277D61908];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v63 = *MEMORY[0x277D61880];
      v64 = sub_2693B3560();
      (*(*(v64 - 8) + 104))(boxed_opaque_existential_1, v63, v64);
      (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v61);
      sub_2693B34C0();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v65 = v79;
      v24(v79, v60, v10);
      (*(v23 + 56))(v65, 0, 1, v10);
      v66 = v65;
      v67 = v80;
      sub_26936F690(v66, v80);
      v68 = v23;
      if ((*(v23 + 48))(v67, 1, v10) == 1)
      {
        sub_26934B4F0(v80, &qword_28030D200, &qword_2693B6178);
      }

      else
      {
        v69 = sub_2693B3610();
        v70 = sub_2693B39A0();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          aBlock = v72;
          *v71 = 136315650;
          v73 = sub_2693B3BB0();
          v75 = sub_26934CA40(v73, v74, &aBlock);

          *(v71 + 4) = v75;
          *(v71 + 12) = 2048;
          *(v71 + 14) = 496;
          *(v71 + 22) = 2080;
          *(v71 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &aBlock);
          _os_log_impl(&dword_26933F000, v69, v70, "FatalError at %s:%lu - %s", v71, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D63A640](v72, -1, -1);
          MEMORY[0x26D63A640](v71, -1, -1);
        }

        (*(v68 + 8))(v80, v10);
      }

      sub_2693B3330();
      result = sub_2693B3C50();
      __break(1u);
      return result;
    }

    v13 = 0;
    v11 = v23 & 0xC000000000000001;
    v4 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = &property descriptor for SearchTimerIntent.targetingInfo;
    while (1)
    {
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11)
      {
        v26 = MEMORY[0x26D639EB0](v13, v92);
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_23;
        }

        v26 = *(v92 + 8 * v13 + 32);
      }

      v27 = v26;
      v28 = [v10 removeTimer_];
      if (!v28)
      {
        goto LABEL_27;
      }

      v22 = v28;

      sub_2693B3C00();
      v21 = *(aBlock + 16);
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
      ++v13;
      if (v23 == a2)
      {

        v22 = aBlock;
        v29 = v85;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v29 = v4;
LABEL_17:
  v30 = sub_26936C730(v22);

  if (v30)
  {
    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
    v32 = sub_2693B3800();

    v92 = [v31 combineAllFutures:v32 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];

    swift_unknownObjectRelease();
    v33 = v88;
    v81 = *(v88 + 16);
    v34 = v83;
    v81(v83, v90, v91);
    v35 = v84;
    v80 = *(v84 + 16);
    (v80)(v87, v89, v29);
    v36 = *(v33 + 80);
    v37 = v33;
    v38 = *(v35 + 80);
    v39 = (v36 + 16) & ~v36;
    v79 = v39;
    v40 = (v82 + v38 + v39) & ~v38;
    v82 = v36 | v38;
    v41 = swift_allocObject();
    v78 = *(v37 + 32);
    v42 = v34;
    v78(v41 + v39, v34, v91);
    v84 = *(v35 + 32);
    v43 = v87;
    (v84)(v41 + v40, v87, v29);
    v97 = sub_26936F700;
    v98 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v95 = sub_269378A84;
    v96 = &block_descriptor_0;
    v44 = _Block_copy(&aBlock);

    v77 = [v92 addSuccessBlock_];
    _Block_release(v44);
    v45 = v42;
    v46 = v42;
    v47 = v91;
    v81(v46, v90, v91);
    v48 = v85;
    (v80)(v43, v89, v85);
    v49 = swift_allocObject();
    v78(&v79[v49], v45, v47);
    (v84)(v49 + v40, v43, v48);
    v97 = sub_26936F730;
    v98 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v95 = sub_269373AD8;
    v96 = &block_descriptor_31;
    v50 = _Block_copy(&aBlock);

    v51 = v77;
    v52 = [v77 addFailureBlock_];
    _Block_release(v50);

    return (*(v88 + 8))(v90, v47);
  }

  else
  {
    v54 = sub_2693B3610();
    v55 = sub_2693B39A0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26933F000, v54, v55, "Failed to cast expected NAFuture<NANoResult> to NAFuture<AnyObject> when deleting timers!", v56, 2u);
      MEMORY[0x26D63A640](v56, -1, -1);
    }

    v57 = v90;
    sub_2693B33C0();
    sub_26934B0F0();
    v58 = swift_allocError();
    *v59 = 0;
    aBlock = v58;
    sub_2693B38F0();
    return (*(v88 + 8))(v57, v91);
  }
}

uint64_t sub_26936EDC4(uint64_t a1)
{
  sub_2693B33C0();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v1 = sub_2693B3620();
  __swift_project_value_buffer(v1, qword_280E26270);
  v2 = sub_2693B3610();
  v3 = sub_2693B39B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26933F000, v2, v3, "DeleteTimerIntentHandler success deleting all timers", v4, 2u);
    MEMORY[0x26D63A640](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_26936EEC8(void *a1)
{
  sub_2693B33C0();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E26270);
  v3 = a1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "DeleteTimerIntentHandler error deleting all timers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v12 = sub_2693B30D0();
  sub_2693A7BF4(v12, v22);

  v13 = v22[0];
  if (v22[0] == 10)
  {
    v22[0] = a1;
    v14 = a1;
  }

  else
  {
    sub_26934B0F0();
    v15 = swift_allocError();
    *v16 = v13;
    v22[0] = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  sub_2693B38F0();
  v17 = sub_2693B35D0();
  v22[3] = v17;
  v22[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v19 = *MEMORY[0x277D61838];
  v20 = sub_2693B34B0();
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v19, v20);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v17);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26936F190()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26936F228(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_26936F24C, 0, 0);
}

uint64_t sub_26936F24C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_26936F33C;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000010, 0x80000002693B8A00, sub_26936F4D4, v1, v3);
}

uint64_t sub_26936F33C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26936F470;
  }

  else
  {

    v2 = sub_26936F458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26936F470()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_26936F4DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D248, &qword_2693B61E8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_26936F610(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D639EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2693713EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_26936F690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_26936F748(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D639EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26936F7C8;
  }

  __break(1u);
  return result;
}

char *sub_26936F7D0(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v25 = (MEMORY[0x277D84F90] + 32);
LABEL_4:
  v6 = *(v1 + 2);
  if (v3 == v6)
  {
    goto LABEL_38;
  }

  if (v3 >= v6)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v7 = *&v4[8 * v3];

    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 >> 62)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_9:
    ++v3;
    v8 = *(v1 + 2);
    if (v3 == v8)
    {
      goto LABEL_38;
    }

    if (v3 >= v8)
    {
      goto LABEL_42;
    }
  }

  result = sub_2693B3C70();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = 0;
  ++v3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    while (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v7 + 8 * v9 + 32);
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_37;
      }

LABEL_20:
      if (!v2)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = result;
        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v17 = v16 >> 3;
        v14[2] = v13;
        v14[3] = (2 * (v16 >> 3)) | 1;
        v18 = (v14 + 4);
        v19 = v5[3] >> 1;
        if (v5[2])
        {
          v20 = v5 + 4;
          if (v14 != v5 || v18 >= v20 + 8 * v19)
          {
            memmove(v14 + 4, v20, 8 * v19);
          }

          v5[2] = 0;
        }

        v25 = (v18 + 8 * v19);
        v2 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v5 = v14;
        result = v24;
      }

      v10 = __OFSUB__(v2--, 1);
      if (v10)
      {
        goto LABEL_45;
      }

      *v25++ = result;
      if (v7 >> 62)
      {
        result = sub_2693B3C70();
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

LABEL_35:
  result = MEMORY[0x26D639EB0](v9, v7);
  v10 = __OFADD__(v9++, 1);
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v21 = v5[3];
  if (v21 < 2)
  {
    return v5;
  }

  v22 = v21 >> 1;
  v10 = __OFSUB__(v22, v2);
  v23 = v22 - v2;
  if (!v10)
  {
    v5[2] = v23;
    return v5;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_26936FA6C()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936FB14, 0, 0);
}

uint64_t sub_26936FB14()
{
  v31 = v0;
  v1 = *(v0[8] + 48);
  v0[11] = v1;
  if (v1)
  {
    v2 = qword_280E26268;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E26270);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "TimerManager allTimers() with mtTimerManager", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = v0[8];

    v9 = swift_task_alloc();
    v0[12] = v9;
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[13] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF48, &qword_2693B6A70);
    *v10 = v0;
    v10[1] = sub_26937006C;

    return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD00000000000001CLL, 0x80000002693B8AF0, sub_269370298, v9, v11);
  }

  else
  {
    v12 = sub_2693B35D0();
    v13 = MEMORY[0x277D61908];
    v0[5] = v12;
    v0[6] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v15 = *MEMORY[0x277D61880];
    v16 = sub_2693B3560();
    (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, v15, v16);
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v12);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280E26268 != -1)
    {
      swift_once();
    }

    v18 = v0[9];
    v17 = v0[10];
    v19 = sub_2693B3620();
    v20 = __swift_project_value_buffer(v19, qword_280E26270);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v17, v20, v19);
    (*(v21 + 56))(v17, 0, 1, v19);
    sub_26936F690(v17, v18);
    if ((*(v21 + 48))(v18, 1, v19) == 1)
    {
      sub_26934B4F0(v0[9], &qword_28030D200, &qword_2693B6178);
    }

    else
    {
      v22 = sub_2693B3610();
      v23 = sub_2693B39A0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315650;
        v26 = sub_2693B3BB0();
        v28 = sub_26934CA40(v26, v27, &v30);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2048;
        *(v24 + 14) = 208;
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v30);
        _os_log_impl(&dword_26933F000, v22, v23, "FatalError at %s:%lu - %s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v25, -1, -1);
        MEMORY[0x26D63A640](v24, -1, -1);
      }

      (*(v21 + 8))(v0[9], v19);
    }

    sub_2693B3330();
    return sub_2693B3C50();
  }
}

uint64_t sub_26937006C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_269370210;
  }

  else
  {

    v2 = sub_269370188;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269370188()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269370210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2693702A0(uint64_t a1)
{
  sub_2693B33D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);

  return sub_269367518(a1);
}

uint64_t sub_2693703C4()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x26D639AD0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2693B3850();
    }

    sub_2693B3870();

    v6 = *v2;
  }

  else
  {
    if (*(v3 + 16))
    {
      v6 = *(v3 + 16);
    }

    else
    {
      v6 = v1;
    }
  }

  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2693704FC;

  return sub_26936FA6C();
}

uint64_t sub_2693704FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {

    v4 = sub_2693707D8;
  }

  else
  {
    v4 = sub_269370618;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269370618()
{
  v1 = *(v0 + 48);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26936F4DC(0, *(v8 + 2) + 1, 1, v8);
          v8 = result;
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          result = sub_26936F4DC((v11 > 1), v12 + 1, 1, v8);
          v8 = result;
        }

        v4 &= v4 - 1;
        *(v8 + 2) = v12 + 1;
        *&v8[8 * v12 + 32] = v10;
      }

      while (v4);
    }
  }

  v13 = sub_26936F7D0(v8);

  v14 = *(v0 + 8);

  return v14(v13);
}

unint64_t sub_2693707F0(unint64_t a1, uint64_t a2)
{
  v4 = sub_2693B3420();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v8 = sub_2693B3400();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_2693B3410();
    v10 = sub_2693B33F0();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {

      return a1;
    }
  }

  v42[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_52:
    v11 = sub_2693B3C70();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
    v26 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_28;
  }

  v12 = 0;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = a1 & 0xC000000000000001;
  do
  {
    if (v41)
    {
      v13 = MEMORY[0x26D639EB0](v12, a1);
    }

    else
    {
      if (v12 >= *(v40 + 16))
      {
        goto LABEL_49;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v16 = a1;
    v17 = [v13 title];
    if (!v17)
    {
      sub_2693B3750();
LABEL_22:

      goto LABEL_23;
    }

    v18 = v17;
    v19 = sub_2693B3750();
    v21 = v20;

    v22 = sub_2693B3750();
    if (!v21)
    {
      goto LABEL_22;
    }

    if (v19 == v22 && v21 == v23)
    {

      goto LABEL_8;
    }

    v25 = sub_2693B3CE0();

    if (v25)
    {

      goto LABEL_8;
    }

LABEL_23:
    sub_2693B3C00();
    sub_2693B3C30();
    sub_2693B3C40();
    sub_2693B3C10();
LABEL_8:
    ++v12;
    a1 = v16;
  }

  while (v15 != v11);
  v26 = v42[0];
  v43 = MEMORY[0x277D84F90];
  if ((v42[0] & 0x8000000000000000) != 0)
  {
LABEL_53:
    v27 = sub_2693B3C70();
    if (!v27)
    {
      goto LABEL_54;
    }

LABEL_30:
    v28 = 0;
    a1 = v26 & 0xC000000000000001;
    v29 = a2 + 56;
    while (1)
    {
      if (a1)
      {
        v30 = MEMORY[0x26D639EB0](v28, v26);
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_51;
        }

        v30 = *(v26 + 32 + 8 * v28);
      }

      v31 = v30;
      if (__OFADD__(v28++, 1))
      {
        goto LABEL_50;
      }

      v33 = [v30 state];
      if (*(a2 + 16) && (v34 = v33, sub_2693B3DB0(), MEMORY[0x26D63A0A0](v34), v35 = sub_2693B3DD0(), v36 = -1 << *(a2 + 32), v37 = v35 & ~v36, ((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        while (*(*(a2 + 48) + 8 * v37) != v34)
        {
          v37 = (v37 + 1) & v38;
          if (((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
LABEL_41:
        if (([v31 isFiring] & 1) == 0 || objc_msgSend(v31, sel_type) == 2)
        {

          if (v28 == v27)
          {
            goto LABEL_46;
          }

          continue;
        }
      }

      sub_2693B3C00();
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
      if (v28 == v27)
      {
LABEL_46:
        a1 = v43;
        goto LABEL_55;
      }
    }
  }

LABEL_28:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_53;
  }

  v27 = *(v26 + 16);
  if (v27)
  {
    goto LABEL_30;
  }

LABEL_54:
  a1 = MEMORY[0x277D84F90];
LABEL_55:

  return a1;
}

uint64_t sub_269370C58(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26936CB14(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_68Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269370E18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_269370EBC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);

  return sub_269368584(a1);
}

uint64_t objectdestroy_83Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269370FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  return sub_2693B3900();
}

uint64_t sub_26937107C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_2693B33D0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_2693B33D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2693712D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_2693B33D0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  return sub_269368CA8(a1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_269371428()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D260);
  v1 = __swift_project_value_buffer(v0, qword_28030D260);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693714F0()
{
  v0 = sub_2693B31C0();
  __swift_allocate_value_buffer(v0, qword_280E26A50);
  __swift_project_value_buffer(v0, qword_280E26A50);
  return sub_2693B31B0();
}

BOOL SiriDevice.isEqual(_:)(uint64_t a1)
{
  sub_269373298(a1, v80);
  if (!v81)
  {
    sub_269373308(v80);
    return 0;
  }

  type metadata accessor for SiriDevice();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v1;
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_28030D260);
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26933F000, v4, v5, "☔️ SiriDevice isEqual Check", v6, 2u);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v7 = v2;
  v8 = [v2 roomName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2693B3750();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v79 roomName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2693B3750();
    v17 = v16;

    if (v12)
    {
      if (!v17)
      {
        goto LABEL_88;
      }

      if (v10 == v15 && v12 == v17)
      {
      }

      else
      {
        v18 = sub_2693B3CE0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_90;
    }
  }

  else if (v12)
  {
    goto LABEL_88;
  }

  v19 = [v7 deviceName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2693B3750();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v79 deviceName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2693B3750();
    v28 = v27;

    if (v23)
    {
      if (!v28)
      {
        goto LABEL_88;
      }

      if (v21 == v26 && v23 == v28)
      {
      }

      else
      {
        v29 = sub_2693B3CE0();

        if ((v29 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_90;
    }
  }

  else if (v23)
  {
    goto LABEL_88;
  }

  v30 = [v7 assistantId];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2693B3750();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v79 assistantId];
  if (v35)
  {
    v36 = v35;
    v37 = sub_2693B3750();
    v39 = v38;

    if (v34)
    {
      if (!v39)
      {
        goto LABEL_88;
      }

      if (v32 == v37 && v34 == v39)
      {
      }

      else
      {
        v40 = sub_2693B3CE0();

        if ((v40 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v39)
    {
      goto LABEL_90;
    }
  }

  else if (v34)
  {
    goto LABEL_88;
  }

  v41 = [v7 accessoryId];
  if (v41)
  {
    v42 = v41;
    v43 = sub_2693B3750();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [v79 accessoryId];
  if (v46)
  {
    v47 = v46;
    v48 = sub_2693B3750();
    v50 = v49;

    if (v45)
    {
      if (!v50)
      {
        goto LABEL_88;
      }

      if (v43 == v48 && v45 == v50)
      {
      }

      else
      {
        v51 = sub_2693B3CE0();

        if ((v51 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v50)
    {
      goto LABEL_90;
    }
  }

  else if (v45)
  {
    goto LABEL_88;
  }

  v52 = [v7 homeID];
  if (v52)
  {
    v53 = v52;
    v54 = sub_2693B3750();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = [v79 homeID];
  if (!v57)
  {
    if (v56)
    {
      goto LABEL_88;
    }

    goto LABEL_78;
  }

  v58 = v57;
  v59 = sub_2693B3750();
  v61 = v60;

  if (!v56)
  {
    if (!v61)
    {
      goto LABEL_78;
    }

LABEL_90:

    goto LABEL_91;
  }

  if (!v61)
  {
    goto LABEL_88;
  }

  if (v54 == v59 && v56 == v61)
  {
  }

  else
  {
    v62 = sub_2693B3CE0();

    if ((v62 & 1) == 0)
    {
      goto LABEL_91;
    }
  }

LABEL_78:
  v63 = [v7 accessoryType];
  if (v63)
  {
    v64 = v63;
    v65 = sub_2693B3750();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = [v79 accessoryType];
  if (!v68)
  {
    if (!v67)
    {
      goto LABEL_94;
    }

LABEL_88:

    return 0;
  }

  v69 = v68;
  v70 = sub_2693B3750();
  v72 = v71;

  if (!v67)
  {
    if (!v72)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

  if (!v72)
  {
    goto LABEL_88;
  }

  if (v65 == v70 && v67 == v72)
  {

    goto LABEL_94;
  }

  v74 = sub_2693B3CE0();

  if ((v74 & 1) == 0)
  {
LABEL_91:

    return 0;
  }

LABEL_94:
  v75 = [v7 isRespondingDevice];
  v76 = [v79 isRespondingDevice];
  v77 = v76;
  if (!v75)
  {

    if (!v77)
    {
      return 1;
    }

    return 0;
  }

  if (!v76)
  {

    goto LABEL_91;
  }

  sub_269373370();
  v78 = sub_2693B3A50();

  return (v78 & 1) != 0;
}

id sub_269371C94(void *a1)
{
  v2 = v1;
  v4 = sub_2693B31C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = [a1 uniqueIdentifier];
  sub_2693B31A0();

  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v11 = sub_2693B3620();
  v12 = __swift_project_value_buffer(v11, qword_28030D260);
  v13 = a1;
  v65 = v12;
  v14 = sub_2693B3610();
  v15 = sub_2693B39B0();

  v16 = os_log_type_enabled(v14, v15);
  v67 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v64 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v63 = v5;
    v20 = v19;
    v68 = v19;
    *v18 = 136315138;
    v21 = v13;
    v22 = [v21 description];
    v23 = v2;
    v24 = sub_2693B3750();
    v26 = v25;

    v27 = v24;
    v2 = v23;
    v28 = sub_26934CA40(v27, v26, &v68);

    *(v18 + 4) = v28;
    _os_log_impl(&dword_26933F000, v14, v15, "Creating SiriDevice from accessory: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v29 = v20;
    v5 = v63;
    MEMORY[0x26D63A640](v29, -1, -1);
    v30 = v18;
    v4 = v64;
    MEMORY[0x26D63A640](v30, -1, -1);
  }

  v31 = objc_allocWithZone(v2);
  sub_2693B3180();
  v32 = sub_2693B3740();

  v33 = sub_2693B3740();
  v34 = [v31 initWithIdentifier:v32 displayString:v33];

  v35 = v34;
  v36 = [v13 name];
  if (!v36)
  {
    sub_2693B3750();
    v36 = sub_2693B3740();
  }

  [v35 setDeviceName_];

  v37 = [v13 room];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 name];

    if (!v39)
    {
      sub_2693B3750();
      v39 = sub_2693B3740();
    }
  }

  else
  {
    v39 = 0;
  }

  [v35 setRoomName_];

  sub_2693B3180();
  v40 = sub_2693B3740();

  [v35 setAccessoryId_];

  v41 = [v13 assistantIdentifier];
  [v35 setAssistantId_];

  v42 = [v13 home];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 uniqueIdentifier];

    v45 = v66;
    sub_2693B31A0();

    sub_2693B3180();
    (*(v5 + 8))(v45, v4);
    v46 = sub_2693B3740();
  }

  else
  {
    v46 = 0;
    v45 = v66;
  }

  [v35 setHomeID_];

  v47 = [v13 category];
  v48 = [v47 categoryType];

  if (!v48)
  {
    sub_2693B3750();
    v48 = sub_2693B3740();
  }

  [v35 setAccessoryType_];

  v49 = [v13 room];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 uniqueIdentifier];

    sub_2693B31A0();
    sub_2693B3180();
    (*(v5 + 8))(v45, v4);
    v52 = sub_2693B3740();
  }

  else
  {
    v52 = 0;
  }

  [v35 setRoomID_];

  v53 = v35;
  v54 = sub_2693B3610();
  v55 = sub_2693B39B0();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    *v56 = 136315138;
    v58 = sub_26937238C(v53);
    v60 = v59;

    v61 = sub_26934CA40(v58, v60, &v68);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_26933F000, v54, v55, "SiriDevice.init(accessory:) %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x26D63A640](v57, -1, -1);
    MEMORY[0x26D63A640](v56, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v67, v4);
  return v53;
}

uint64_t sub_26937238C(uint64_t a1)
{
  swift_getObjectType();
  sub_2693733BC();
  return sub_2693B3CB0();
}

void sub_2693723DC()
{
  type metadata accessor for SiriDevice();
  if (qword_280E266C0 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B31C0();
  __swift_project_value_buffer(v0, qword_280E26A50);
  sub_2693B3180();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_2693B3740();

  v3 = sub_2693B3740();
  v4 = [v1 initWithIdentifier:v2 displayString:v3];

  sub_269373370();
  v5 = sub_2693B3A20();
  [v4 setIsRespondingDevice_];

  qword_280E26A68 = v4;
}

void *sub_2693724F4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v84[3] = a4;
  v84[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v83 = 0;
  v10 = [a1 roomNames];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2693B3820();

    v13 = *(v12 + 16);
    if (v13)
    {
      v82 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v13, 0);
      v14 = v82;
      v15 = v12 + 40;
      do
      {
        v16 = sub_2693B3770();
        v82 = v14;
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          v21 = v16;
          v22 = v17;
          sub_26939D4BC((v18 > 1), v19 + 1, 1);
          v17 = v22;
          v16 = v21;
          v14 = v82;
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v15 += 16;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = [a1 deviceNames];
  if (v23)
  {
    v24 = v23;
    v25 = sub_2693B3820();

    v26 = *(v25 + 16);
    if (v26)
    {
      v80 = 0;
      v82 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v26, 0);
      v27 = v82;
      v28 = v25 + 40;
      do
      {
        v29 = sub_2693B3770();
        v82 = v27;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v79 = v29;
          v34 = a3;
          v35 = v30;
          sub_26939D4BC((v31 > 1), v32 + 1, 1);
          v30 = v35;
          a3 = v34;
          v29 = v79;
          v27 = v82;
        }

        v27[2] = v32 + 1;
        v33 = &v27[2 * v32];
        v33[4] = v29;
        v33[5] = v30;
        v28 += 16;
        --v26;
      }

      while (v26);

      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
      if (!v14)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v27 = 0;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (*(v14 + 16))
  {
    goto LABEL_24;
  }

LABEL_22:
  if (v27)
  {
    if (v27[2])
    {
LABEL_24:
      if (qword_28030CE10 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  if (a3 >> 62)
  {
    v14 = sub_2693B3C70();
    if (v14)
    {
LABEL_34:
      a1 = 0;
      v61 = a3 & 0xC000000000000001;
      v62 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v61)
        {
          v64 = a3;
          v65 = MEMORY[0x26D639EB0](a1, a3);
        }

        else
        {
          if (a1 >= *(v62 + 16))
          {
            goto LABEL_46;
          }

          v64 = a3;
          v65 = *(a3 + 8 * a1 + 32);
        }

        v50 = v65;
        a3 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v27 = [v65 isRespondingDevice];
        sub_269373370();
        v66 = sub_2693B3A30();
        v67 = v66;
        if (v27)
        {
          v68 = sub_2693B3A50();

          if (v68)
          {
            [v50 setTargetMatchType_];
            goto LABEL_50;
          }
        }

        else
        {
        }

        ++a1;
        v63 = a3 == v14;
        a3 = v64;
        if (v63)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_25:
      v36 = sub_2693B3620();
      v37 = __swift_project_value_buffer(v36, qword_28030D260);
      v38 = a1;
      v39 = sub_2693B3610();
      v40 = sub_2693B39B0();

      if (os_log_type_enabled(v39, v40))
      {
        v79 = v37;
        v41 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v82 = v78;
        *v41 = 136315138;
        v42 = v38;
        v77 = v40;
        v43 = v38;
        v44 = [v42 description];
        v45 = sub_2693B3750();
        v80 = a3;
        v47 = v46;

        v38 = v43;
        v48 = sub_26934CA40(v45, v47, &v82);
        a3 = v80;

        *(v41 + 4) = v48;
        _os_log_impl(&dword_26933F000, v39, v77, "Matching against targetingInfo: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x26D63A640](v78, -1, -1);
        MEMORY[0x26D63A640](v41, -1, -1);
      }

      MEMORY[0x28223BE20](v49);
      v76[2] = v14;
      v76[3] = &v83;
      v76[4] = v27;
      v76[5] = v84;
      v76[6] = v38;
      v50 = sub_2693965F4(sub_269373414, v76, a3);

      if (v50)
      {
        [v50 setTargetMatchType_];
      }

      v51 = v50;
      v52 = sub_2693B3610();
      v53 = sub_2693B39B0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v81 = v50;
        v82 = v55;
        *v54 = 136315138;
        v56 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
        v57 = sub_2693B3760();
        v59 = sub_26934CA40(v57, v58, &v82);

        *(v54 + 4) = v59;
        v60 = "Matched device: %s";
LABEL_54:
        _os_log_impl(&dword_26933F000, v52, v53, v60, v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x26D63A640](v55, -1, -1);
        MEMORY[0x26D63A640](v54, -1, -1);
        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_34;
    }
  }

LABEL_49:
  v50 = 0;
LABEL_50:
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v69 = sub_2693B3620();
  __swift_project_value_buffer(v69, qword_28030D260);
  v70 = v50;
  v52 = sub_2693B3610();
  v53 = sub_2693B39B0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v81 = v50;
    v82 = v55;
    *v54 = 136315138;
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
    v72 = sub_2693B3760();
    v74 = sub_26934CA40(v72, v73, &v82);

    *(v54 + 4) = v74;
    v60 = "No targeting info – using local device as target: %s";
    goto LABEL_54;
  }

LABEL_55:

  __swift_destroy_boxed_opaque_existential_1(v84);
  return v50;
}

uint64_t _s21SiriTimeTimerInternal0A6DeviceC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = [a1 roomName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2693B3750();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 roomName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2693B3750();
    v13 = v12;

    if (v8)
    {
      if (!v13)
      {
        goto LABEL_86;
      }

      if (v6 == v11 && v8 == v13)
      {
      }

      else
      {
        v15 = sub_2693B3CE0();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_86;
    }
  }

  else if (v8)
  {
    goto LABEL_86;
  }

  v16 = [a1 deviceName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2693B3750();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a2 deviceName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2693B3750();
    v25 = v24;

    if (v20)
    {
      if (!v25)
      {
        goto LABEL_86;
      }

      if (v18 == v23 && v20 == v25)
      {
      }

      else
      {
        v26 = sub_2693B3CE0();

        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v25)
    {
      goto LABEL_86;
    }
  }

  else if (v20)
  {
    goto LABEL_86;
  }

  v27 = [a1 assistantId];
  if (v27)
  {
    v28 = v27;
    v29 = sub_2693B3750();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a2 assistantId];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2693B3750();
    v36 = v35;

    if (v31)
    {
      if (!v36)
      {
        goto LABEL_86;
      }

      if (v29 == v34 && v31 == v36)
      {
      }

      else
      {
        v37 = sub_2693B3CE0();

        if ((v37 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v36)
    {
      goto LABEL_86;
    }
  }

  else if (v31)
  {
    goto LABEL_86;
  }

  v38 = [a1 accessoryId];
  if (v38)
  {
    v39 = v38;
    v40 = sub_2693B3750();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = [a2 accessoryId];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2693B3750();
    v47 = v46;

    if (v42)
    {
      if (!v47)
      {
        goto LABEL_86;
      }

      if (v40 == v45 && v42 == v47)
      {
      }

      else
      {
        v48 = sub_2693B3CE0();

        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v47)
    {
      goto LABEL_86;
    }
  }

  else if (v42)
  {
    goto LABEL_86;
  }

  v49 = [a1 homeID];
  if (v49)
  {
    v50 = v49;
    v51 = sub_2693B3750();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = [a2 homeID];
  if (v54)
  {
    v55 = v54;
    v56 = sub_2693B3750();
    v58 = v57;

    if (v53)
    {
      if (!v58)
      {
        goto LABEL_86;
      }

      if (v51 == v56 && v53 == v58)
      {
      }

      else
      {
        v59 = sub_2693B3CE0();

        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v58)
    {
      goto LABEL_86;
    }
  }

  else if (v53)
  {
    goto LABEL_86;
  }

  v60 = [a1 accessoryType];
  if (v60)
  {
    v61 = v60;
    v62 = sub_2693B3750();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = [a2 accessoryType];
  if (!v65)
  {
    if (!v64)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  v66 = v65;
  v67 = sub_2693B3750();
  v69 = v68;

  if (!v64)
  {
    if (!v69)
    {
      goto LABEL_89;
    }

LABEL_86:

    return 0;
  }

  if (!v69)
  {
    goto LABEL_86;
  }

  if (v62 == v67 && v64 == v69)
  {
  }

  else
  {
    v71 = sub_2693B3CE0();

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_89:
  v72 = [a1 isRespondingDevice];
  v73 = [a2 isRespondingDevice];
  v74 = v73;
  if (v72)
  {
    if (v73)
    {
      sub_269373370();
      v75 = sub_2693B3A50();

      if (v75)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v73)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_269373298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D278, &qword_2693B6228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269373308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D278, &qword_2693B6228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269373370()
{
  result = qword_280E261B8;
  if (!qword_280E261B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E261B8);
  }

  return result;
}

unint64_t sub_2693733BC()
{
  result = qword_28030D280;
  if (!qword_28030D280)
  {
    type metadata accessor for SiriDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D280);
  }

  return result;
}

void sub_26937343C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v34 = v10;
  v31 = v8;
  v32 = v4;
  while (v7)
  {
    v36 = v12;
LABEL_13:
    v16 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v17 = *(*(v3 + 48) + v16);
    v18 = *(*(v3 + 56) + v16);
    v38 = MEMORY[0x277D84F90];
    if (v18 >> 62)
    {
      v19 = sub_2693B3C70();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v17;

    v37 = v19;
    if (v19)
    {
      v33 = v7;
      v20 = 0;
      v21 = v19;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D639EB0](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v22 = *(v18 + 32 + 8 * v20);
        }

        v23 = v22;
        if (__OFADD__(v20++, 1))
        {
          break;
        }

        v25 = [v22 state];
        if (*(a2 + 16))
        {
          v26 = v25;
          sub_2693B3DB0();
          MEMORY[0x26D63A0A0](v26);
          v27 = sub_2693B3DD0();
          v28 = -1 << *(a2 + 32);
          v29 = v27 & ~v28;
          if ((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (*(*(a2 + 48) + 8 * v29) != v26)
            {
              v29 = (v29 + 1) & v30;
              if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            sub_2693B3C00();
            sub_2693B3C30();
            sub_2693B3C40();
            sub_2693B3C10();
          }

          else
          {
LABEL_28:
          }

          v21 = v37;
        }

        else
        {
        }

        if (v20 == v21)
        {
          v13 = v38;
          v7 = v33;
          v3 = v34;
          v8 = v31;
          v4 = v32;
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v13 = MEMORY[0x277D84F90];
    v3 = v34;
LABEL_6:
    v7 &= v7 - 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26939D1C8(v13, v35, isUniquelyReferenced_nonNull_native);

    v12 = v36;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v15);
    ++v11;
    if (v7)
    {
      v36 = v12;
      v11 = v15;
      goto LABEL_13;
    }
  }

LABEL_37:
  __break(1u);
}