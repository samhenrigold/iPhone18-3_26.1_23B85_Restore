uint64_t sub_29EADE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v12;
  v8[39] = v13;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = sub_29EB1422C();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EADE340, 0, 0);
}

uint64_t sub_29EADE340()
{
  sub_29EB148FC();
  *(v0 + 344) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADE3D4, v2, v1);
}

uint64_t sub_29EADE3D4()
{
  v1 = *(v0 + 272);

  *(v0 + 352) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EADE474, 0, 0);
}

uint64_t sub_29EADE474()
{
  if (*(v0 + 352))
  {
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 280), *(v0 + 320));
    v1 = swift_task_alloc();
    *(v0 + 360) = v1;
    *v1 = v0;
    v1[1] = sub_29EADE808;
    v2 = *(v0 + 336);

    return (sub_29EAD1160)(1, v2);
  }

  else
  {
    sub_29EAAD474(*(v0 + 288), v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB68, &qword_29EB180D8);
    v4 = swift_dynamicCast();
    v5 = *(v0 + 296);
    if (v4)
    {
      sub_29EAADE9C((v0 + 224), v0 + 144);
      v6 = *(v0 + 168);
      v7 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), v6);
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[3];
      *(v0 + 112) = v5[2];
      *(v0 + 128) = v10;
      *(v0 + 80) = v8;
      *(v0 + 96) = v9;
      v24 = (*(v7 + 16) + **(v7 + 16));
      v11 = swift_task_alloc();
      *(v0 + 392) = v11;
      *v11 = v0;
      v11[1] = sub_29EADED24;
      v12 = v0 + 80;
      v13 = *(v0 + 280);
      v14 = v6;
      v15 = v7;
      v16 = v24;
    }

    else
    {
      v17 = *(v0 + 288);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      sub_29EABCCEC(v0 + 224, &qword_2A187AB70, &qword_29EB180E0);
      v18 = v17[3];
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v20 = *v5;
      v21 = v5[1];
      v22 = v5[3];
      *(v0 + 48) = v5[2];
      *(v0 + 64) = v22;
      *(v0 + 16) = v20;
      *(v0 + 32) = v21;
      v25 = (*(v19 + 16) + **(v19 + 16));
      v23 = swift_task_alloc();
      *(v0 + 376) = v23;
      *v23 = v0;
      v23[1] = sub_29EADEC10;
      v12 = v0 + 16;
      v13 = *(v0 + 280);
      v14 = v18;
      v15 = v19;
      v16 = v25;
    }

    return v16(v13, v12, v14, v15);
  }
}

uint64_t sub_29EADE808()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_29EADF0FC;
  }

  else
  {
    v2 = sub_29EADE91C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADE91C()
{

  sub_29EAAD474(*(v0 + 288), v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB58, &qword_29EB180B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB68, &qword_29EB180D8);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 296);
  if (v1)
  {
    sub_29EAADE9C((v0 + 224), v0 + 144);
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v3);
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[3];
    *(v0 + 112) = v2[2];
    *(v0 + 128) = v7;
    *(v0 + 80) = v5;
    *(v0 + 96) = v6;
    v22 = (*(v4 + 16) + **(v4 + 16));
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *v8 = v0;
    v8[1] = sub_29EADED24;
    v9 = v0 + 80;
    v10 = *(v0 + 280);
    v11 = v3;
    v12 = v4;
    v13 = v22;
  }

  else
  {
    v14 = *(v0 + 288);
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0;
    sub_29EABCCEC(v0 + 224, &qword_2A187AB70, &qword_29EB180E0);
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v17 = *v2;
    v18 = v2[1];
    v19 = v2[3];
    *(v0 + 48) = v2[2];
    *(v0 + 64) = v19;
    *(v0 + 16) = v17;
    *(v0 + 32) = v18;
    v23 = (*(v16 + 16) + **(v16 + 16));
    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    *v20 = v0;
    v20[1] = sub_29EADEC10;
    v9 = v0 + 16;
    v10 = *(v0 + 280);
    v11 = v15;
    v12 = v16;
    v13 = v23;
  }

  return v13(v10, v9, v11, v12);
}

uint64_t sub_29EADEC10()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_29EADF4B4;
  }

  else
  {
    v2 = sub_29EADEFB4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADED24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v7 = sub_29EADF2D8;
  }

  else
  {
    *(v6 + 408) = a2;
    *(v6 + 416) = a1;
    v7 = sub_29EADEE58;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EADEE58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[51];
  v1 = v0[52];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A4C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Completed importing resources", v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v7 = v0[38];
  v8 = v0[33];

  v7(v1, v2, 0);
  if (v8 >= 1)
  {
    sandbox_extension_release();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EADEFB4()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing resources", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[38];
  v6 = v0[33];

  v5(-1, -1, 0);
  if (v6 >= 1)
  {
    sandbox_extension_release();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EADF0FC()
{
  v1 = v0[33];

  if (v1 > 0)
  {
    sandbox_extension_release();
  }

  v2 = v0[46];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing resources %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[38];

  v12 = v2;
  v11(0, 0, v2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29EADF2D8()
{
  v1 = v0[33];
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  if (v1 > 0)
  {
    sandbox_extension_release();
  }

  v2 = v0[50];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = v2;
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Failed importing resources %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[38];

  v12 = v2;
  v11(0, 0, v2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29EADF4B4()
{
  if (v0[33] > 0)
  {
    sandbox_extension_release();
  }

  v1 = v0[48];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing resources %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = v0[38];

  v11 = v1;
  v10(0, 0, v1);

  v12 = v0[1];

  return v12();
}

id sub_29EADF6D4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, uint64_t, unint64_t, id, uint64_t, uint64_t))
{
  v27 = a9;
  v28 = sub_29EB1422C();
  v14 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a6);
  sub_29EB141DC();
  v18 = a4;
  v19 = a5;
  v20 = a1;
  v21 = sub_29EB142CC();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v25 = v27(v16, v21, v23, v19, a8, v24);

  sub_29EAAD010(v21, v23);

  (*(v14 + 8))(v16, v28);

  return v25;
}

uint64_t sub_29EADF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v10;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29EADF8B4, 0, 0);
}

uint64_t sub_29EADF8B4()
{
  sub_29EB148FC();
  *(v0 + 56) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EADF948, v2, v1);
}

uint64_t sub_29EADF948()
{

  return MEMORY[0x2A1C73D48](sub_29EADF9B0, 0, 0);
}

uint64_t sub_29EADF9B0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_29EADFADC;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_29EADFADC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_29EADFD28;
  }

  else
  {
    v2 = sub_29EADFBF0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EADFBF0()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing staged dataclass resources", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];

  v5(0);
  if (v6 >= 1)
  {
    sandbox_extension_release();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EADFD28()
{
  if (v0[2] >= 1)
  {
    sandbox_extension_release();
  }

  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing resources %@", v7, 0xCu);
    sub_29EABCCEC(v8, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[5];

  v13 = v11;
  v12(v11);

  v14 = v0[1];

  return v14();
}

id sub_29EADFEF0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, const void *a6)
{
  v9 = sub_29EB1422C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a6);
  sub_29EB141DC();
  v14 = a4;
  v15 = a1;
  v16 = sub_29EB142CC();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = sub_29EAE2C84(v12, v16, v18, sub_29EAE49AC, v19);

  sub_29EAAD010(v16, v18);

  (*(v10 + 8))(v12, v9);

  return v20;
}

id sub_29EAE007C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = *MEMORY[0x29EDCA1E8];
  v12 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EB1400C();
  v58 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v55 = &v53 - v18;
  v19 = *((v11 & v10) + 0x50);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &v53 - v21;
  v23 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 48);
  v66 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
  v67 = v23;
  v24 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 16);
  v25 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 32);
  v64 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v65 = v24;
  v68 = *(a2 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 64);
  v69 = v66;
  *v59 = v25;
  sub_29EACD6D0(&v64, &aBlock);
  sub_29EAE35C4(&v69, &aBlock);
  LOBYTE(v10) = sub_29EAE0780(v59, a1, a3, a4);

  if (v10)
  {
    sub_29EAE3620(&v64);
  }

  else
  {
    v54 = v14;
    if (qword_2A187A328 != -1)
    {
      swift_once();
    }

    v26 = sub_29EB1454C();
    v53 = __swift_project_value_buffer(v26, qword_2A187AA80);
    v27 = sub_29EB1452C();
    v28 = sub_29EB14A4C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = a1;
      v30 = a3;
      v31 = a4;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_29EAA5000, v27, v28, "Starting to import serialized data", v32, 2u);
      v33 = v32;
      a4 = v31;
      a3 = v30;
      a1 = v29;
      MEMORY[0x29EDA8150](v33, -1, -1);
    }

    (*(v20 + 16))(v22, &v5[*((*MEMORY[0x29EDCA1E8] & *v5) + 0x68)], v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB18, &qword_29EB18008);
    v34 = swift_dynamicCast();
    v35 = v54;
    if (v34)
    {
      sub_29EAADE9C(&aBlock, v59);
      v36 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
      v37 = sub_29EB1491C();
      v38 = v55;
      (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
      sub_29EAAD474(v59, &aBlock);
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = v5;
      *(v39 + 40) = a1;
      sub_29EAADE9C(&aBlock, v39 + 48);
      v40 = v64;
      *(v39 + 104) = v65;
      v41 = v67;
      *(v39 + 120) = v66;
      *(v39 + 136) = v41;
      v42 = v68;
      *(v39 + 88) = v40;
      *(v39 + 152) = v42;
      *(v39 + 160) = a3;
      *(v39 + 168) = a4;
      v43 = v5;
      v44 = a1;

      v45 = sub_29EAD3968(0, 0, v38, &unk_29EB18020, v39);
      v62 = sub_29EAE4974;
      v63 = v45;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v61 = sub_29EABE4EC;
      *(&v61 + 1) = &block_descriptor_5;
      v46 = _Block_copy(&aBlock);

      [v36 setCancellationHandler_];
      _Block_release(v46);

      __swift_destroy_boxed_opaque_existential_1(v59);
      return v36;
    }

    sub_29EAE3620(&v64);
    aBlock = 0u;
    v61 = 0u;
    v62 = 0;
    sub_29EABCCEC(&aBlock, &qword_2A187AB20, &qword_29EB18010);
    v48 = sub_29EB1452C();
    v49 = sub_29EB14A5C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_29EAA5000, v48, v49, "App Extension doesn't support serialized data importing", v50, 2u);
      MEMORY[0x29EDA8150](v50, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
    v51 = v56;
    sub_29EB1415C();
    v52 = sub_29EB13F9C();
    (*(v58 + 8))(v51, v35);
    a3(v52);
  }

  return 0;
}

uint64_t sub_29EAE0780(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v21 - v10;
  v12 = *a1;
  v13 = a1[1];
  result = os_variant_has_internal_content();
  if (result)
  {
    if (v12 == 0x6F697463656A6E49 && v13 == 0xE90000000000006ELL || (sub_29EB14EBC() & 1) != 0)
    {
      v15 = sub_29EB1491C();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
      sub_29EB148FC();
      v16 = v4;
      v17 = a2;

      v18 = sub_29EB148EC();
      v19 = swift_allocObject();
      v20 = MEMORY[0x29EDCA390];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v16;
      v19[5] = v17;
      v19[6] = a3;
      v19[7] = a4;
      sub_29EAD3968(0, 0, v11, &unk_29EB18098, v19);

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EAE093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v12;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v9 = sub_29EB14A0C();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAE0A18, 0, 0);
}

uint64_t sub_29EAE0A18()
{
  sub_29EB148FC();
  *(v0 + 168) = sub_29EB148EC();
  v2 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EAE0AAC, v2, v1);
}

uint64_t sub_29EAE0AAC()
{
  v1 = *(v0 + 88);

  *(v0 + 176) = *(v1 + *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60));

  return MEMORY[0x2A1C73D48](sub_29EAE0B4C, 0, 0);
}

uint64_t sub_29EAE0B4C()
{
  if (*(v0 + 176))
  {
    sub_29EB14A1C();
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_29EAE0D9C;
    v2 = *(v0 + 160);

    return (sub_29EAD20C8)(4, v2);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    sub_29EB14A1C();
    *(v0 + 16) = *v5;
    v8 = *(v5 + 16);
    v9 = *(v5 + 32);
    v10 = *(v5 + 48);
    *(v0 + 80) = *(v5 + 64);
    *(v0 + 48) = v9;
    *(v0 + 64) = v10;
    *(v0 + 32) = v8;
    v15 = (*(v7 + 16) + **(v7 + 16));
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    v12 = sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8], MEMORY[0x29EDB9DD0]);
    *v11 = v0;
    v11[1] = sub_29EAE1068;
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);

    return v15(v13, v0 + 16, v14, v12, v6, v7);
  }
}

uint64_t sub_29EAE0D9C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_29EAE130C;
  }

  else
  {
    v2 = sub_29EAE0EB0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAE0EB0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_29EB14A1C();
  *(v0 + 16) = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 48);
  *(v0 + 80) = *(v2 + 64);
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 32) = v5;
  v13 = (*(v4 + 16) + **(v4 + 16));
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  v9 = sub_29EAE414C(&qword_2A187AB28, MEMORY[0x29EDB9DC8], MEMORY[0x29EDB9DD0]);
  *v8 = v0;
  v8[1] = sub_29EAE1068;
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);

  return v13(v10, v0 + 16, v11, v9, v3, v4);
}

uint64_t sub_29EAE1068()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 208) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_29EAE14D4;
  }

  else
  {
    v5 = sub_29EAE11D8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAE11D8()
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187AA80);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Completed importing serialized data", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = *(v0 + 120);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29EAE130C()
{

  v1 = v0[24];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing serialized data %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = v0[15];

  v11 = v1;
  v10(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EAE14D4()
{
  v1 = v0[26];
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187AA80);
  v3 = v1;
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_29EAA5000, v4, v5, "Failed importing serialized data %@", v6, 0xCu);
    sub_29EABCCEC(v7, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v10 = v0[15];

  v11 = v1;
  v10(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EAE1694(uint64_t a1, const char *a2)
{
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v3 = sub_29EB1454C();
  __swift_project_value_buffer(v3, qword_2A187AA80);
  v4 = sub_29EB1452C();
  v5 = sub_29EB14A5C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29EAA5000, v4, v5, a2, v6, 2u);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  return sub_29EB1492C();
}

id sub_29EAE17A8(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_29EAE007C(v10, v11, sub_29EAE49AC, v9);

  return v13;
}

uint64_t sub_29EAE1870(void *a1, void (*a2)(void))
{
  v21 = a2;
  v22[2] = *MEMORY[0x29EDCA608];
  v3 = sub_29EB1422C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrationDataContainer(0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = (&v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29EABFC80(v9);
  (*(v4 + 16))(v6, v9 + *(v7 + 28), v3);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_29EB141BC();
  v22[0] = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v22];

  if (v12)
  {
    v13 = v22[0];
  }

  else
  {
    v14 = v22[0];
    v15 = sub_29EB1417C();

    swift_willThrow();
  }

  sub_29EAFEF60(a1);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v17 = sub_29EB1454C();
  __swift_project_value_buffer(v17, qword_2A187AA80);
  v18 = sub_29EB1452C();
  v19 = sub_29EB14A4C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_29EAA5000, v18, v19, "Completed registering import status", v20, 2u);
    MEMORY[0x29EDA8150](v20, -1, -1);
  }

  v21(0);
  (*(v4 + 8))(v6, v3);
  sub_29EAE3568(v9);
  return 0;
}

id sub_29EAE1D38(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  v8 = a3;
  sub_29EAE1870(a3, sub_29EAE4660);

  return 0;
}

uint64_t sub_29EAE1DE0(void *a1)
{
  v2 = v1;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v4 = sub_29EB1454C();
  __swift_project_value_buffer(v4, qword_2A187AA80);
  v5 = sub_29EB1452C();
  v6 = sub_29EB14A4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29EAA5000, v5, v6, "Accepting connection", v7, 2u);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  [a1 setExportedObject_];
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_29EAE1F38(void *a1)
{
  sub_29EB148FC();
  sub_29EB148EC();
  sub_29EB1489C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29EAE4630();
}

id sub_29EAE2004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MigrationExtensionConfiguration(0, *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_29EAE2074(uint64_t *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *a1;
  v4 = *MEMORY[0x29EDCA1E8];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_29EAE2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_29EB14A0C();
  v7[6] = swift_task_alloc();
  sub_29EB148FC();
  v7[7] = sub_29EB148EC();
  v9 = sub_29EB1489C();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x2A1C73D48](sub_29EAE2238, v9, v8);
}

uint64_t sub_29EAE2238()
{
  v0[10] = sub_29EAE2580();
  sub_29EB14A1C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_29EAE2310;
  v2 = v0[6];

  return sub_29EAD2EE0(v2);
}

uint64_t sub_29EAE2310()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_29EAE24D8;
  }

  else
  {
    v5 = sub_29EAE244C;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29EAE244C()
{
  v1 = *(v0 + 32);

  v1(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAE24D8()
{
  v1 = v0[12];
  v2 = v0[4];

  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EAE2580()
{
  if (os_variant_has_internal_content())
  {
    v1 = MEMORY[0x29EDCA1E8];
    v2 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
    if (*(v0 + v2))
    {
      v3 = *(v0 + v2);
LABEL_6:

      return v3;
    }

    type metadata accessor for _t_MigrationInjectionManager();
    swift_allocObject();
    v4 = sub_29EAABAB8(MEMORY[0x29EDCA190]);
    if (v4)
    {
      v3 = v4;
      *(v0 + *((*v1 & *v0) + 0x60)) = v4;

      goto LABEL_6;
    }

    __break(1u);
  }

  result = sub_29EB14D2C();
  __break(1u);
  return result;
}

uint64_t sub_29EAE26A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EAE27A0;

  return v6(a1);
}

uint64_t sub_29EAE27A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_29EAE2898(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x29EDCA1E8];
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *MEMORY[0x29EDCA1E8] & *v1;
  v6 = *(v5 + 0x60);
  *&v1[v6] = 0;
  v7 = *((v4 & v2) + 0x50);
  (*(*(v7 - 8) + 16))(&v1[*((*v3 & *v1) + 0x68)], a1, v7);
  if (os_variant_has_internal_content())
  {
    type metadata accessor for _t_MigrationInjectionManager();
    *&v1[v6] = sub_29EAAC5E0();
  }

  v9 = type metadata accessor for MigrationExtensionConfiguration(0, v7, *(v5 + 88), v8);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_29EAE2A28(void (*a1)(void *))
{
  v2 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29EB1400C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A187AA80);
  v8 = sub_29EB1452C();
  v9 = sub_29EB14A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29EAA5000, v8, v9, "Starting to upload content", v10, 2u);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
  sub_29EB1415C();
  v11 = sub_29EB13F9C();
  (*(v4 + 8))(v6, v3);
  a1(v11);

  return 0;
}

void *sub_29EAE2C84(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v74 = a3;
  v75 = a5;
  v63 = a2;
  v83 = *MEMORY[0x29EDCA608];
  v9 = *v5;
  v10 = *MEMORY[0x29EDCA1E8];
  v68 = *MEMORY[0x29EDCA1E8] & v9;
  v11 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EB1400C();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB1422C();
  v67 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v64 = v16;
  v66 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v65 = &v60 - v19;
  v20 = *((v10 & v9) + 0x50);
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v23 = &v60 - v22;
  if (qword_2A187A328 != -1)
  {
    swift_once();
  }

  v24 = sub_29EB1454C();
  v69 = __swift_project_value_buffer(v24, qword_2A187AA80);
  v25 = sub_29EB1452C();
  v26 = sub_29EB14A4C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v6;
    v28 = v15;
    v29 = a1;
    v30 = a4;
    v31 = v20;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_29EAA5000, v25, v26, "Starting to import staged dataclass resources", v32, 2u);
    v33 = v32;
    v20 = v31;
    a4 = v30;
    a1 = v29;
    v15 = v28;
    v6 = v27;
    MEMORY[0x29EDA8150](v33, -1, -1);
  }

  (*(v21 + 16))(v23, v6 + *((*MEMORY[0x29EDCA1E8] & *v6) + 0x68), v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AC10, &qword_29EB181E0);
  if (swift_dynamicCast())
  {
    sub_29EAADE9C(&aBlock, v80);
    v34 = v74 >> 62;
    v62 = a4;
    v61 = v20;
    if ((v74 >> 62) > 1)
    {
      if (v34 != 2)
      {
        *(&aBlock + 6) = 0;
        *&aBlock = 0;
        goto LABEL_22;
      }

      v42 = *(v63 + 16);
      if (!sub_29EB140BC() || !__OFSUB__(v42, sub_29EB140DC()))
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v34)
    {
      *&aBlock = v63;
      DWORD2(aBlock) = v74;
      WORD6(aBlock) = WORD2(v74);
LABEL_22:
      v44 = sandbox_extension_consume();
      v45 = v81;
      v46 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v47 = (*(v46 + 24))(v45, v46);
      v48 = sub_29EB1491C();
      v49 = v65;
      (*(*(v48 - 8) + 56))(v65, 1, 1, v48);
      sub_29EAAD474(v80, &aBlock);
      v50 = v67;
      v51 = v66;
      (*(v67 + 16))(v66, a1, v15);
      v52 = (*(v50 + 80) + 104) & ~*(v50 + 80);
      v53 = (v64 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0;
      *(v54 + 4) = v61;
      *(v54 + 5) = *(v68 + 88);
      *(v54 + 6) = v44;
      *(v54 + 7) = v6;
      sub_29EAADE9C(&aBlock, (v54 + 64));
      (*(v50 + 32))(&v54[v52], v51, v15);
      v55 = &v54[v53];
      v56 = v75;
      *v55 = v62;
      *(v55 + 1) = v56;
      v57 = v6;

      v58 = sub_29EAD3968(0, 0, v49, &unk_29EB181F8, v54);
      v78 = sub_29EAE4978;
      v79 = v58;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v77 = sub_29EABE4EC;
      *(&v77 + 1) = &block_descriptor_114;
      v59 = _Block_copy(&aBlock);

      [v47 setCancellationHandler_];
      _Block_release(v59);

      __swift_destroy_boxed_opaque_existential_1(v80);
      return v47;
    }

    v43 = v63;
    if (v63 > v63 >> 32)
    {
      __break(1u);
    }

    else if (!sub_29EB140BC() || !__OFSUB__(v43, sub_29EB140DC()))
    {
LABEL_20:
      sub_29EB140CC();
      goto LABEL_22;
    }

    __break(1u);
  }

  v78 = 0;
  aBlock = 0u;
  v77 = 0u;
  sub_29EABCCEC(&aBlock, &qword_2A187AC18, &qword_29EB181E8);
  v35 = sub_29EB1452C();
  v36 = sub_29EB14A5C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_29EAA5000, v35, v36, "App Extension doesn't support resources importing", v37, 2u);
    MEMORY[0x29EDA8150](v37, -1, -1);
  }

  sub_29EB13FBC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE414C(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
  v38 = v70;
  v39 = v73;
  sub_29EB1415C();
  v40 = sub_29EB13F9C();
  (*(v72 + 8))(v38, v39);
  a4(v40);

  return 0;
}

uint64_t sub_29EAE3568(uint64_t a1)
{
  v2 = type metadata accessor for MigrationDataContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EAE3674()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2A1C733A0](v0, 176, 7);
}

uint64_t sub_29EAE36EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[20];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EAE093C(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 11), v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAE37E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EAE3854()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EAE388C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAB73B4;

  return sub_29EAE26A8(a1, v4);
}

uint64_t sub_29EAE3944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAAAE5C;

  return sub_29EAE26A8(a1, v4);
}

uint64_t sub_29EAE39FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29EAE3A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EAB73B4;

  return sub_29EAE2170(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_29EAE3B20()
{
  result = qword_2A187AB40;
  if (!qword_2A187AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187AB38, &qword_29EB180A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AB40);
  }

  return result;
}

unint64_t sub_29EAE3B84()
{
  result = qword_2A187AB50;
  if (!qword_2A187AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AB50);
  }

  return result;
}

uint64_t sub_29EAE3BD8()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2A1C733A0](v0, ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29EAE3D00(uint64_t a1)
{
  v3 = *(sub_29EB1422C() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EADE26C(a1, v11, v6, v7, v8, v1 + v4, v1 + v5, v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_29EAE3E84()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  return MEMORY[0x2A1C733A0](v0, ((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29EAE3FBC(uint64_t a1)
{
  v3 = *(sub_29EB1422C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v12 = v1[2];
  v8 = *(v1 + v5);
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EAB73B4;

  return sub_29EADC104(a1, v12, v7, v9, v1 + v4, v8, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_29EAE414C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EAE4194()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

uint64_t sub_29EAE4204(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAAAE5C;

  return sub_29EAD98E4(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4340()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 160, 7);
}

uint64_t sub_29EAE43B8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EAD77F8(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4500()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EAE4548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EAD3FF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAE4618(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29EAE4668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EAE46A0()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29EAE478C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29EB1422C() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29EAB73B4;

  return sub_29EADF884(a1, v7, v8, v9, v10, (v1 + 8), v1 + v6, v11);
}

uint64_t SerializedDataCompressionScheme.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_29EB14D8C();

  *a3 = v4 != 0;
  return result;
}

void sub_29EAE4A18(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v74 = a2;
  v63 = a3;
  v57 = sub_29EB1438C();
  v61 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29EB1437C();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EB1418C();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29EB1422C();
  v12 = *(v67 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v67);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v66 = &v53 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v64 = &v53 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v53 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = &v53 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v53 - v25;
  v69 = 0x736566696E616D2ELL;
  v70 = 0xE900000000000074;
  (*(v9 + 104))(v11, *MEMORY[0x29EDB9B10], v8);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v9 + 8))(v11, v8);
  v27 = sub_29EB1423C();
  if (v3)
  {
    (*(v12 + 8))(v26, v67);
  }

  else
  {
    v29 = v27;
    v30 = v28;
    v55 = v21;
    v56 = v24;
    v68 = a1;
    sub_29EB1405C();
    swift_allocObject();
    sub_29EB1404C();
    sub_29EAE90BC();
    sub_29EB1403C();
    v54 = *(v12 + 8);
    v54(v26, v67);

    sub_29EAAD010(v29, v30);
    v31 = v72;
    if (v72)
    {
      v32 = v71;
      v33 = v73;
      v34 = 1;
      while (1)
      {
        v35 = objc_autoreleasePoolPush();
        sub_29EAE6F98(v34, v32, v31, v33, v68, &v71);
        objc_autoreleasePoolPop(v35);
        if (v31 == v34)
        {
          break;
        }

        if (__CFADD__(v34++, 1))
        {
          __break(1u);
          objc_autoreleasePoolPop(v35);
          return;
        }
      }

      v53 = v12 + 8;
      v37 = *(v12 + 16);
      v38 = v66;
      if (v32)
      {
        v39 = v67;
        v37(v66, v68, v67);
        type metadata accessor for SerializedDataReader(0);
        v40 = swift_allocObject();
        *(v40 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
        v41 = v40 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest;
        *v41 = 1;
        *(v41 + 8) = v31;
        *(v41 + 16) = v33;
        *(v40 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_bufferSize) = 0x8000;
        *(v40 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) = v74 & 1;
        v42 = v65;
        v37(v65, v38, v39);
        *(v40 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
        *(v40 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
        v37((v40 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory), v42, v39);
        *(v40 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = 0;
        *(v40 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = 1;
        sub_29EAE5A28();
        v50 = v54;
        v54(v42, v39);
        v50(v38, v39);
        *v63 = v40;
      }

      else
      {
        v43 = v56;
        v44 = v67;
        v37(v56, v68, v67);
        type metadata accessor for CompressedSerializedDataReader(0);
        v45 = swift_allocObject();
        *(v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter) = 0;
        v46 = v55;
        v37(v55, v43, v44);
        *(v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
        v47 = v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest;
        *v47 = 0;
        *(v47 + 8) = v31;
        *(v47 + 16) = v33;
        v48 = v46;
        *(v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_bufferSize) = 0x8000;
        *(v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) = v74 & 1;
        v49 = v64;
        v37(v64, v48, v44);
        *(v45 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
        *(v45 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
        v37((v45 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory), v49, v44);
        *(v45 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = 0;
        *(v45 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = 0;
        sub_29EAE5A28();
        v51 = v54;
        v54(v49, v44);
        v51(v48, v44);
        (*(v58 + 104))(v60, *MEMORY[0x29EDC9800], v59);
        (*(v61 + 104))(v62, *MEMORY[0x29EDC9810], v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACE8, &qword_29EB185A0);
        swift_allocObject();

        v52 = sub_29EB1432C();
        v51(v56, v44);
        *(v45 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter) = v52;

        *v63 = v45;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29EAE52FC()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AC20);
  __swift_project_value_buffer(v0, qword_2A187AC20);
  return sub_29EB1453C();
}

uint64_t sub_29EAE538C()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAE53E8(uint64_t a1)
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAE5430@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_29EB14D8C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_29EAE5548(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACC0, &qword_29EB18578);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAE9830();
  sub_29EB14FFC();
  v15 = v8;
  v14 = 0;
  sub_29EAE9884();
  sub_29EB14E2C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_29EB14E7C();
  v12 = 2;
  sub_29EB14E7C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29EAE570C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACD8, &qword_29EB18580);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAE9830();
  sub_29EB14FEC();
  if (!v2)
  {
    v16 = 0;
    sub_29EAE98D8();
    sub_29EB14DBC();
    v9 = v17;
    v15 = 1;
    v11 = sub_29EB14E0C();
    v14 = 2;
    v12 = sub_29EB14E0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAE58F0()
{
  v1 = 0x756F436B6E756863;
  if (*v0 != 1)
  {
    v1 = 0x7A69536B6E756863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_29EAE5958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29EAE9D7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29EAE5980(uint64_t a1)
{
  v2 = sub_29EAE9830();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAE59BC(uint64_t a1)
{
  v2 = sub_29EAE9830();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29EAE5A28()
{
  v2 = sub_29EB1422C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = v11;
  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme))
    {
      v17 = v11;
      sub_29EB14E8C();
    }

    else
    {
      v19 = v11;
      v17 = sub_29EB14E8C();
      v18 = v12;
      MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
      MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    }

    sub_29EB141CC();

    sub_29EB141FC();
    (*(v3 + 8))(v8, v2);
    sub_29EB1471C();

    v13 = sub_29EB1456C();

    v14 = [objc_allocWithZone(MEMORY[0x29EDB9FB0]) initWithFileDescriptor:v13 closeOnDealloc:1];
LABEL_11:
    v16 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
    *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = v14;

    return;
  }

  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme))
  {
    v17 = v11;
    sub_29EB14E8C();
  }

  else
  {
    v19 = v11;
    v17 = sub_29EB14E8C();
    v18 = v15;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
  }

  sub_29EAE9B74();
  sub_29EB141CC();

  v14 = sub_29EB06AEC(v6);
  if (!v1)
  {
    goto LABEL_11;
  }
}

uint64_t sub_29EAE5D1C(uint64_t a1, char a2, char *a3)
{
  v5 = v4;
  v6 = v3;
  v34[1] = *MEMORY[0x29EDCA608];
  v10 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v31[1] = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29EB1400C();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) = 0;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle) = 0;
  v16 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v17 = sub_29EB1422C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6 + v16, a1, v17);
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting) = a2;
  *(v6 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme) = v15;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v31[0] = v4;
  v19 = a1;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = v19;
  sub_29EB141FC();
  v23 = sub_29EB1467C();

  LODWORD(v19) = [v21 fileExistsAtPath_];

  if (!v19)
  {
    v25 = [v20 defaultManager];
    v26 = sub_29EB141BC();
    v34[0] = 0;
    v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v34];

    a1 = v22;
    if (!v27)
    {
      v29 = v34[0];
      sub_29EB1417C();

      swift_willThrow();

      goto LABEL_9;
    }

    v28 = v34[0];
    v5 = v31[0];
LABEL_6:
    sub_29EAE5A28();
    if (v5)
    {
      (*(v18 + 8))(a1, v17);

      return v6;
    }

LABEL_9:
    (*(v18 + 8))(a1, v17);
    return v6;
  }

  sub_29EB13FDC();
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAE9ABC(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
  v24 = v33;
  sub_29EB1415C();
  sub_29EB13F9C();
  (*(v32 + 8))(v14, v24);
  swift_willThrow();

  (*(v18 + 8))(v22, v17);
  return v6;
}

uint64_t SerializedDataWriter.__allocating_init(chunkStageDirectory:compressionScheme:chunkSize:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_29EB1422C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  LOBYTE(a2) = *a2;
  *(v10 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize) = a3;
  (*(v7 + 16))(v9, a1, v6);
  v14 = a2;
  v11 = sub_29EAE5D1C(v9, 1, &v14);
  (*(v7 + 8))(a1, v6);
  return v11;
}

uint64_t SerializedDataWriter.init(chunkStageDirectory:compressionScheme:chunkSize:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_29EB1422C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  *(v3 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize) = a3;
  (*(v8 + 16))(v10, a1, v7);
  v14 = a2;
  v11 = sub_29EAE5D1C(v10, 1, &v14);
  (*(v8 + 8))(a1, v7);
  return v11;
}

uint64_t sub_29EAE637C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAE63A0, 0, 0);
}

void sub_29EAE63A0()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle;
  v3 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
  if (!v3)
  {
    goto LABEL_77;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize);
  v5 = [v3 offsetInFile];
  v6 = v4 - v5;
  if (v4 < v5)
  {
    goto LABEL_68;
  }

  v40 = v4;
  v8 = v0[4];
  v7 = v0[5];
  v9 = v7 >> 62;
  v10 = HIDWORD(v8);
  v42 = BYTE6(v7);
  if ((v7 >> 62) > 1)
  {
    if (v9 == 3)
    {
      goto LABEL_12;
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    LODWORD(v11) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v11 = v11;
  }

  if (v11 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_12:
  v15 = *(v1 + v2);
  if (!v15)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    v16 = v8 >> 32;
    v17 = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    __break(1u);
  }

  if (v9 == 3)
  {
    goto LABEL_22;
  }

  v17 = *(v8 + 16);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v16 = *(v8 + 24);
LABEL_20:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v16 < v17)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_22:
  v41 = v2;
  v18 = v15;
  v0[2] = sub_29EB1429C();
  v0[3] = v19;
  sub_29EAB708C();
  sub_29EB14A2C();
  sub_29EAAD010(v0[2], v0[3]);

  if (v9 > 1)
  {
    v21 = v2;
    if (v9 == 3)
    {
      goto LABEL_62;
    }

    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    v14 = __OFSUB__(v22, v23);
    v20 = v22 - v23;
    if (v14)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  else
  {
    v21 = v2;
    v20 = v42;
    if (v9)
    {
      LODWORD(v20) = v10 - v8;
      if (__OFSUB__(v10, v8))
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v20 = v20;
    }
  }

  if (v20 >= 1 && v6 < v20)
  {
    sub_29EAE5A28();
    v24 = v40;
    v25 = __OFSUB__(v10, v8);
    v39 = v25;
    v38 = v10 - v8;
    while (1)
    {
      v2 = v6 + v24;
      if (__CFADD__(v6, v24))
      {
        goto LABEL_69;
      }

      v26 = v42;
      if (v9)
      {
        if (v9 == 1)
        {
          v26 = v38;
          if (v39)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v28 = *(v8 + 16);
          v27 = *(v8 + 24);
          v14 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v14)
          {
            goto LABEL_71;
          }
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }

      if (v26 >= v2)
      {
        v29 = v2;
      }

      else
      {
        v29 = v26;
      }

      v15 = *(v1 + v21);
      if (!v15)
      {
        goto LABEL_76;
      }

      if (v29 < v6)
      {
        goto LABEL_70;
      }

      if (v9)
      {
        if (v9 == 2)
        {
          v30 = *(v8 + 16);
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v31 = *(v8 + 24);
        }

        else
        {
          v31 = v8 >> 32;
          v30 = v8;
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_16;
          }
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v31 < v30)
        {
          goto LABEL_67;
        }
      }

      v10 = v0[4];
      v32 = v15;
      v0[2] = sub_29EB1429C();
      v0[3] = v33;
      sub_29EB14A2C();
      sub_29EAAD010(v0[2], v0[3]);

      v21 = v41;
      v34 = v42;
      if (v9)
      {
        if (v9 == 2)
        {
          v36 = *(v8 + 16);
          v35 = *(v8 + 24);
          v14 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v14)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v34 = v38;
          if (v39)
          {
            goto LABEL_75;
          }
        }
      }

      if (v34 < 1 || v2 >= v34)
      {
        break;
      }

      sub_29EAE5A28();
      v24 = v40;
      v6 += v40;
    }
  }

LABEL_62:
  v37 = v0[1];

  v37();
}

uint64_t sub_29EAE6744()
{
  v1 = sub_29EB1418C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_29EB1422C();
  v5 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme);
  v8 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk);
  v9 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize);
  v20 = 0x736566696E616D2ELL;
  v21 = 0xE900000000000074;
  (*(v2 + 104))(v4, *MEMORY[0x29EDB9B10], v1);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v2 + 8))(v4, v1);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  LOBYTE(v20) = v18;
  v21 = v8;
  v22 = v9;
  sub_29EAE9068();
  v10 = v23;
  v11 = sub_29EB1406C();
  if (v10)
  {
    (*(v5 + 8))(v7, v19);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    v15 = v19;
    sub_29EB142DC();
    (*(v5 + 8))(v7, v15);
    sub_29EAAD010(v13, v14);
  }
}

uint64_t sub_29EAE69F0()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t static SerializedDataFactory.validateIntegrity(of:)(uint64_t a1)
{
  v2 = sub_29EB1418C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29EB1422C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v43 - v11;
  v43[3] = 0x736566696E616D2ELL;
  v43[4] = 0xE900000000000074;
  (*(v3 + 104))(v5, *MEMORY[0x29EDB9B10], v2);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v3 + 8))(v5, v2);
  v13 = sub_29EB1423C();
  v15 = v14;
  sub_29EB1405C();
  swift_allocObject();
  sub_29EB1404C();
  sub_29EAE90BC();
  sub_29EB1403C();
  v43[0] = v7;
  v16 = *(v7 + 8);
  v16(v12, v6);

  result = sub_29EAAD010(v13, v15);
  v18 = v45;
  if (v45)
  {
    v19 = v44;
    v20 = v46;
    v21 = 1;
    do
    {
      v22 = objc_autoreleasePoolPush();
      sub_29EAE6F98(v21, v19, v18, v20, a1, &v44);
      objc_autoreleasePoolPop(v22);
      if (v18 == v21)
      {
        return 1;
      }
    }

    while (!__CFADD__(v21++, 1));
    __break(1u);
    v24 = v44;
    objc_autoreleasePoolPop(v22);
    v25 = v43[0];
    if (qword_2A187A330 != -1)
    {
      swift_once();
    }

    v26 = sub_29EB1454C();
    __swift_project_value_buffer(v26, qword_2A187AC20);
    (*(v25 + 16))(v10, a1, v6);
    v27 = v24;
    v28 = sub_29EB1452C();
    v29 = sub_29EB14A5C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v10;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v30 = 136315394;
      v34 = sub_29EB141EC();
      v35 = v6;
      v36 = v34;
      v37 = v16;
      v39 = v38;
      v37(v31, v35);
      v40 = sub_29EABC674(v36, v39, &v44);

      *(v30 + 4) = v40;
      *(v30 + 12) = 2112;
      v41 = v24;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v42;
      *v32 = v42;
      _os_log_impl(&dword_29EAA5000, v28, v29, "Chunk stage directory at %s failed to validate - %@", v30, 0x16u);
      sub_29EABCCEC(v32, &qword_2A187A648, qword_29EB17EB0);
      MEMORY[0x29EDA8150](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x29EDA8150](v33, -1, -1);
      MEMORY[0x29EDA8150](v30, -1, -1);
    }

    else
    {

      v16(v10, v6);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EAE6F98(void *a1, char a2, void *a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v57 = a6;
  *&v58 = a5;
  v50 = a3;
  v51 = a4;
  v65 = *MEMORY[0x29EDCA608];
  v8 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EB1400C();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29EB1413C();
  v56 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB1418C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29EB1422C();
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  if (a2)
  {
    v63 = a1;
    v22 = sub_29EB14E8C();
    v24 = v23;
  }

  else
  {
    v62 = a1;
    v63 = sub_29EB14E8C();
    v64 = v25;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    v22 = v63;
    v24 = v64;
  }

  v63 = v22;
  v64 = v24;
  (*(v16 + 104))(v18, *MEMORY[0x29EDB9B10], v15);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v16 + 8))(v18, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A938, &qword_29EB18210);
  inited = swift_initStackObject();
  v58 = xmmword_29EB16460;
  *(inited + 16) = xmmword_29EB16460;
  v27 = *MEMORY[0x29EDB8D38];
  *(inited + 32) = *MEMORY[0x29EDB8D38];
  v28 = v27;
  sub_29EAE9110(inited);
  swift_setDeallocating();
  sub_29EAC0E74(inited + 32);
  v29 = v59;
  sub_29EB1419C();
  v30 = v29;
  if (v29)
  {
    (*(v60 + 8))(v21, v61);

LABEL_17:
    *v57 = v30;
    return result;
  }

  v32 = sub_29EB1412C();
  v34 = v33;
  (*(v56 + 8))(v14, v12);
  if ((v34 & 1) != 0 || v32 >= 1 && v32 > v51 || (v32 == v51 ? (v35 = v32 <= -1) : (v35 = 1), v35 && v49 != v50))
  {
    sub_29EB13FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AD00, &unk_29EB185B0);
    v36 = swift_initStackObject();
    *(v36 + 16) = v58;
    *(v36 + 32) = sub_29EB146AC();
    *(v36 + 40) = v37;
    v38 = v61;
    *(v36 + 72) = v61;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v36 + 48));
    v40 = v60;
    (*(v60 + 16))(boxed_opaque_existential_0, v21, v38);
    sub_29EAE99AC(v36);
    swift_setDeallocating();
    sub_29EABCCEC(v36 + 32, &qword_2A187A828, &unk_29EB17590);
    sub_29EAE9ABC(&qword_2A187A800, MEMORY[0x29EDB9860], MEMORY[0x29EDB9858]);
    v41 = v53;
    v42 = v55;
    sub_29EB1415C();
    v30 = sub_29EB13F9C();
    (*(v54 + 8))(v41, v42);
    swift_willThrow();
    result = (*(v40 + 8))(v21, v38);
    goto LABEL_17;
  }

  v43 = objc_opt_self();
  v44 = sub_29EB141BC();
  v63 = 0;
  LOBYTE(v43) = [v43 amk:v44 markPurgeableAtURL:0 purgeable:&v63 error:?];

  if ((v43 & 1) == 0)
  {
    v47 = v63;
    v30 = sub_29EB1417C();

    swift_willThrow();
    result = (*(v60 + 8))(v21, v61);
    goto LABEL_17;
  }

  v45 = *(v60 + 8);
  v46 = v63;
  return v45(v21, v61);
}

uint64_t static SerializedDataFactory.serializedDataByteCount(from:)(uint64_t a1)
{
  v52 = sub_29EB1402C();
  v54 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v53 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29EB1413C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v56 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EB1418C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29EB1422C();
  v68 = *(v62 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v62);
  v59 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v45 - v11;
  v63 = 0x736566696E616D2ELL;
  v64 = 0xE900000000000074;
  v13 = *(v6 + 104);
  v13(v8, *MEMORY[0x29EDB9B10], v5);
  v14 = sub_29EAAD404();
  v55 = a1;
  sub_29EB1421C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v16 = v61;
  v60 = sub_29EB1423C();
  v61 = v17;
  if (v16)
  {
    return (*(v68 + 8))(v12, v62);
  }

  v47 = v15;
  v48 = v14;
  v49 = v8;
  v50 = v13;
  v19 = v5;
  v20 = v68;
  sub_29EB1405C();
  swift_allocObject();
  sub_29EB1404C();
  sub_29EAE90BC();
  v22 = v60;
  v21 = v61;
  sub_29EB1403C();
  v51 = 0;
  v25 = *(v20 + 8);
  v24 = v20 + 8;
  v23 = v25;
  v25(v12, v62);

  result = sub_29EAAD010(v22, v21);
  if (!v66)
  {
    return 0;
  }

  if (!is_mul_ok(v67, v66 - 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = v66 - 1;
  v60 = v67;
  v61 = v23;
  v26 = v49;
  v45[3] = v65;
  v68 = v24;
  if (v65)
  {
    v65 = v66;
    v27 = sub_29EB14E8C();
    v29 = v28;
  }

  else
  {
    v63 = v66;
    v65 = sub_29EB14E8C();
    v66 = v30;
    MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
    MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
    v27 = v65;
    v29 = v66;
  }

  v65 = v27;
  v66 = v29;
  v31 = v19;
  v50(v26, *MEMORY[0x29EDB9B08], v19);
  v32 = v59;
  sub_29EB1421C();
  v47(v26, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A938, &qword_29EB18210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29EB16460;
  v34 = *MEMORY[0x29EDB8D38];
  *(inited + 32) = *MEMORY[0x29EDB8D38];
  v35 = v34;
  sub_29EAE9110(inited);
  swift_setDeallocating();
  sub_29EAC0E74(inited + 32);
  v36 = v56;
  v37 = v51;
  sub_29EB1419C();
  v39 = v57;
  v38 = v58;
  if (v37)
  {
    v61(v32, v62);
  }

  v40 = sub_29EB1412C();
  v42 = v41;
  (*(v39 + 8))(v36, v38);
  if (v42)
  {
    LODWORD(v65) = 2;
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAE9ABC(&qword_2A187A640, MEMORY[0x29EDB9870], MEMORY[0x29EDB9868]);
    v43 = v53;
    v44 = v52;
    sub_29EB1415C();
    sub_29EB1401C();
    (*(v54 + 8))(v43, v44);
    swift_willThrow();
    return (v61)(v32, v62);
  }

  result = (v61)(v32, v62);
  if (v40 < 0)
  {
    goto LABEL_17;
  }

  result = v60 * v46 + v40;
  if (__CFADD__(v60 * v46, v40))
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_29EAE7DAC(uint64_t a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk) < *(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_manifest + 8))
  {
    if (*(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_markChunksPurgeable) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
      if (!v4)
      {
        __break(1u);
        return;
      }

      v7[0] = 0;
      if (![objc_opt_self() amk:objc_msgSend(v4 markPurgeableAt:sel_fileDescriptor) purgeable:1 error:v7])
      {
        v6 = v7[0];
        sub_29EB1417C();

        swift_willThrow();
        return;
      }

      v5 = v7[0];
    }

    sub_29EAE5A28();
    if (!v2)
    {
      *(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) = 0;
      sub_29EAE7F04(a1);
    }
  }
}

void sub_29EAE7F04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk;
  if (*(v1 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2120SerializedDataReader_atEndOfCurrentChunk) == 1)
  {
    sub_29EAE7DAC(a1);
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle);
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = [v4 readDataOfLength_];
  v6 = sub_29EB142CC();
  v8 = v7;

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_18;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 >= 1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      if (HIDWORD(v6) - v6 >= 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      sub_29EAE7DAC(a1);
      sub_29EAAD010(v6, v8);
      return;
    }

    goto LABEL_26;
  }

  if (!BYTE6(v8))
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v9 == 2)
  {
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    v12 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v12)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (v16 < a1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v9 == 1)
    {
      if (!__OFSUB__(HIDWORD(v6), v6))
      {
        if (HIDWORD(v6) - v6 >= a1)
        {
          return;
        }

LABEL_24:
        *(v1 + v3) = 1;
        return;
      }

      goto LABEL_27;
    }

    if (BYTE6(v8) < a1)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_29EAE80B0()
{
  v0 = objc_autoreleasePoolPush();
  sub_29EAE7F04(0x8000);
  v2 = v1;
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_29EAE812C()
{
  v1 = sub_29EB1493C();
  v2 = (*(***(v0 + 16) + 256))(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  if (v3 >> 60 == 15)
  {
    v4 = *(v0 + 8);

    return v4(256);
  }

  v6 = *(v0 + 16);
  v8 = v6[1];
  v7 = v6[2];
  v6[1] = v2;
  v6[2] = v3;
  v9 = v2;
  v10 = v3;
  sub_29EAB0308(v2, v3);
  sub_29EAB0308(v9, v10);
  v11 = sub_29EAB6218(v8, v7);
  v6[3] = 0;
  v14 = v6[2];
  if (v14 >> 60 != 15)
  {
    v15 = v6[1];
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v16 != 2)
      {
LABEL_20:
        sub_29EAB6218(v15, v14);
        goto LABEL_21;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v17 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v14);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      return MEMORY[0x2A1C73D48](v11, v12, v13);
    }

    v17 = HIDWORD(v15) - v15;
LABEL_15:
    sub_29EAB0308(v15, v14);
LABEL_16:
    if (v17 >= 1)
    {
      v20 = sub_29EB142AC();
      sub_29EAB6218(v15, v14);
      v6[3] = 1;
      *(v0 + 57) = 0;
      *(v0 + 56) = v20;
      v11 = sub_29EAE83B8;
      v12 = 0;
      v13 = 0;

      return MEMORY[0x2A1C73D48](v11, v12, v13);
    }

    goto LABEL_20;
  }

LABEL_21:
  v21 = swift_task_alloc();
  *(v0 + 40) = v21;
  *v21 = v0;
  v21[1] = sub_29EAE8444;

  return sub_29EAE810C();
}

uint64_t sub_29EAE83B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_29EAB6218(v1, v2);
  sub_29EAB6218(v1, v2);
  v3 = *(v0 + 56) | (*(v0 + 57) << 8);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_29EAE8444(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_29EAE8574;
  }

  else
  {
    *(v4 + 57) = HIBYTE(a1) & 1;
    *(v4 + 56) = a1;
    v5 = sub_29EAE83B8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAE8574()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_29EAB6218(v1, v2);
  sub_29EAB6218(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EAE85EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAE860C, 0, 0);
}

void sub_29EAE860C()
{
  v1 = v0[3];
  v2 = v1[2];
  if (v2 >> 60 == 15)
  {
LABEL_18:
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = sub_29EAE87A8;

    sub_29EAE810C();
    return;
  }

  v3 = v1[1];
  v4 = v1[3];
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v4 < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_29EAB0308(v3, v2);
      if (v4 < v8)
      {
        goto LABEL_13;
      }

LABEL_17:
      sub_29EAB6218(v3, v2);
      goto LABEL_18;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v3) - v3;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (v4 >= BYTE6(v2))
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = sub_29EB142AC();
  sub_29EAB6218(v3, v2);
  v1[3] = v4 + 1;
  v10 = v0[2];
  *v10 = v9;
  v10[1] = 0;
  v11 = v0[1];

  v11();
}

uint64_t sub_29EAE87A8(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    v6 = *(v4 + 16);
    *v6 = a1;
    v6[1] = HIBYTE(a1) & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_29EAE88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_29EAE897C;

  return sub_29EAE8AB0(a2, a3);
}

uint64_t sub_29EAE897C(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    **(v4 + 24) = v1;
  }

  else
  {
    v7 = *(v4 + 16);
    *v7 = a1;
    v7[1] = HIBYTE(a1) & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_29EAE8AB0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAE8AD4, 0, 0);
}

void sub_29EAE8AD4()
{
  v1 = v0[5];
  v2 = v1[2];
  if (v2 >> 60 == 15)
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_29EAE8C68;

    sub_29EAE810C();
    return;
  }

  v3 = v1[1];
  v4 = v1[3];
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v4 < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_29EAB0308(v3, v2);
      if (v4 < v8)
      {
        goto LABEL_13;
      }

LABEL_17:
      sub_29EAB6218(v3, v2);
      goto LABEL_18;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v3) - v3;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (v4 >= BYTE6(v2))
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = sub_29EB142AC();
  sub_29EAB6218(v3, v2);
  v1[3] = v4 + 1;
  v10 = v0[1];

  v10(v9);
}

uint64_t sub_29EAE8C68(__int16 a1)
{
  v4 = *v2;
  v4[7] = v1;

  if (v1)
  {
    if (v4[3])
    {
      swift_getObjectType();
      v5 = sub_29EB1489C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2A1C73D48](sub_29EAE8DDC, v5, v7);
  }

  else
  {
    v8 = v4[1];

    return v8(a1 & 0x1FF);
  }
}

uint64_t sub_29EAE8DDC()
{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A578, &qword_29EB16AF0);
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _s15AppMigrationKit20SerializedDataWriterCfD_0()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

double sub_29EAE8F18@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = 0.0;
  *(a1 + 8) = xmmword_29EB16E90;
  *(a1 + 24) = 0;
  return result;
}

void sub_29EAE8F34()
{
  if (*(v0 + OBJC_IVAR____TtC15AppMigrationKitP33_2F3911092D7FAA8ACAC9A262407A4E2130CompressedSerializedDataReader_filter))
  {

    sub_29EB1431C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EAE8FAC()
{
  v1 = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  v2 = sub_29EB1422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

unint64_t sub_29EAE9068()
{
  result = qword_2A187AC38;
  if (!qword_2A187AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC38);
  }

  return result;
}

unint64_t sub_29EAE90BC()
{
  result = qword_2A187AC40;
  if (!qword_2A187AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC40);
  }

  return result;
}

uint64_t sub_29EAE9110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ACF8, &qword_29EB185A8);
    v3 = sub_29EB14C0C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_29EB146AC();
      sub_29EB14F8C();
      v27 = v7;
      sub_29EB1473C();
      v8 = sub_29EB14FAC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_29EB146AC();
        v18 = v17;
        if (v16 == sub_29EB146AC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_29EB14EBC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29EAE9308()
{
  result = qword_2A187AC48;
  if (!qword_2A187AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AC48);
  }

  return result;
}

uint64_t sub_29EAE9394(uint64_t a1)
{
  result = sub_29EB1422C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SerializedDataWriter.write(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 208) + **(*v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29EAAAE5C;

  return v8(a1, a2);
}

uint64_t sub_29EAE9740(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29EAE97D0()
{
  result = qword_2A187ACB8;
  if (!qword_2A187ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACB8);
  }

  return result;
}

unint64_t sub_29EAE9830()
{
  result = qword_2A187ACC8;
  if (!qword_2A187ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACC8);
  }

  return result;
}

unint64_t sub_29EAE9884()
{
  result = qword_2A187ACD0;
  if (!qword_2A187ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACD0);
  }

  return result;
}

unint64_t sub_29EAE98D8()
{
  result = qword_2A187ACE0;
  if (!qword_2A187ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACE0);
  }

  return result;
}

void sub_29EAE992C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29EAE7F04(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

unint64_t sub_29EAE9958()
{
  result = qword_2A187ACF0;
  if (!qword_2A187ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ACF0);
  }

  return result;
}

unint64_t sub_29EAE99AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A820, &qword_29EB185C0);
    v3 = sub_29EB14D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EAE9B04(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29EABC4C0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EABD7E0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EAE9ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EAE9B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A828, &unk_29EB17590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EAE9B74()
{
  result = qword_2A187AD08;
  if (!qword_2A187AD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187AD08);
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

uint64_t sub_29EAE9BDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29EAE9C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EAE9C78()
{
  result = qword_2A187AD10;
  if (!qword_2A187AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD10);
  }

  return result;
}

unint64_t sub_29EAE9CD0()
{
  result = qword_2A187AD18;
  if (!qword_2A187AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD18);
  }

  return result;
}

unint64_t sub_29EAE9D28()
{
  result = qword_2A187AD20;
  if (!qword_2A187AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AD20);
  }

  return result;
}

uint64_t sub_29EAE9D7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029EB1B850 == a2 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436B6E756863 && a2 == 0xEA0000000000746ELL || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69536B6E756863 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v5 = sub_29EB14EBC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SerializedDataImportRequest.sourceAppIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t SerializedDataImportRequest.sourceVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 SerializedDataImportRequest.init(sourceAppIdentifier:sourceVersion:estimatedByteCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v8;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  return result;
}

void sub_29EAE9FA4(void *a1)
{
  v3 = (v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v5 = *(v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest);
  v4 = *(v1 + OBJC_IVAR___AMKSerializedDataImportRequest_serializedDataImportRequest + 8);
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v10 = type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier];
  *v12 = v5;
  *(v12 + 1) = v4;
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v9;
  *(v12 + 5) = v8;
  v19.receiver = v11;
  v19.super_class = v10;

  v13 = objc_msgSendSuper2(&v19, sel_init);
  v14 = sub_29EB1467C();
  [a1 encodeObject:v13 forKey:{v14, v19.receiver, v19.super_class}];

  v15 = sub_29EB1467C();
  v16 = sub_29EB1467C();
  [a1 encodeObject:v15 forKey:v16];

  v17 = sub_29EB1498C();
  v18 = sub_29EB1467C();
  [a1 encodeObject:v17 forKey:v18];
}

id SerializedDataImportRequest.XPCHelper.init(coder:)(void *a1)
{
  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v3 = v2;
    sub_29EABD730(0, &qword_2A187B080, 0x29EDBA0F8);
    v4 = sub_29EB14B3C();
    if (v4)
    {
      v7 = 0;
      v5 = v4;
      sub_29EB1469C();
    }
  }

  type metadata accessor for SerializedDataImportRequest.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id SerializedDataImportRequest.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SerializedDataImportRequest.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializedDataImportRequest.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29EAEA51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAEA564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SerializedDataImporting.importSerializedData<A>(from:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_29EAAAE5C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DataclassSerializedDataImporting.importSerializedData<A>(from:importRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_29EACCD1C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MigrationContentUploading.uploadContent(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EAAAE5C;

  return v9(a1, a2, a3);
}

unint64_t sub_29EAEAA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB16E50;
  v1 = sub_29EAC3B58();
  *(v0 + 32) = &type metadata for _t_ArchiveRandomFiles;
  *(v0 + 40) = v1;
  result = sub_29EAC3ACC();
  *(v0 + 48) = &type metadata for _t_ArchiveRepeatedFiles;
  *(v0 + 56) = result;
  qword_2A18812F8 = v0;
  return result;
}

double static _t_ArchiveRandomFiles.example.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ArchiveRandomFiles;
  *(a1 + 32) = sub_29EAC3B58();
  *&result = 100;
  *a1 = xmmword_29EB188D0;
  *(a1 + 16) = 1000;
  return result;
}

AppMigrationKit::_t_ArchiveRandomFiles __swiftcall _t_ArchiveRandomFiles.init(count:delay:size:)(Swift::Int count, Swift::Int delay, Swift::Int size)
{
  *v3 = count;
  v3[1] = delay;
  v3[2] = size;
  result.size = size;
  result.delay = delay;
  result.count = count;
  return result;
}

uint64_t sub_29EAEAB50(uint64_t a1)
{
  v2 = sub_29EAEF598();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAEAB8C(uint64_t a1)
{
  v2 = sub_29EAEF598();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ArchiveRandomFiles.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADB0, &qword_29EB188E0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF598();
  sub_29EB14FFC();
  v13 = 0;
  sub_29EB14E5C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_29EB14E5C();
  v11 = 2;
  sub_29EB14E5C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t _t_ArchiveRandomFiles.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADC0, &qword_29EB188E8);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF598();
  sub_29EB14FEC();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_29EB14DEC();
    v16 = 1;
    v14 = sub_29EB14DEC();
    v15 = 2;
    v11 = sub_29EB14DEC();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAEAF44(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB73B4;

  return sub_29EAEB00C(a1, v4, v5, v6);
}

uint64_t sub_29EAEB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a2;
  v4[16] = a3;
  v4[14] = a1;
  v8 = sub_29EB14CFC();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = sub_29EB14D0C();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = sub_29EB1418C();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v11 = sub_29EB1422C();
  v4[27] = v11;
  v4[28] = *(v11 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;

  return MEMORY[0x2A1C73D48](sub_29EAEB24C, 0, 0);
}

uint64_t sub_29EAEB24C()
{
  if (*(v0 + 120) < 1)
  {
    __break(1u);
  }

  v1 = objc_opt_self();
  v2 = *MEMORY[0x29EDB9B10];
  *(v0 + 60) = v2;
  *(v0 + 248) = v1;
  *(v0 + 256) = 1;
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v17 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  _s15AppMigrationKit19_t_StreamRandomDataV8generate5index10Foundation0F0VSi_tF_0();
  *(v0 + 264) = v8;
  *(v0 + 272) = v9;
  v10 = [v1 defaultManager];
  v11 = [v10 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 96) = 1;
  *(v0 + 64) = sub_29EB14E8C();
  *(v0 + 72) = v12;
  (*(v5 + 104))(v6, v2, v7);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v5 + 8))(v6, v7);

  v13 = *(v4 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v17);
  sub_29EB142DC();
  v14 = swift_task_alloc();
  *(v0 + 296) = v14;
  *v14 = v0;
  v14[1] = sub_29EAEB578;
  v15 = *(v0 + 240);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v15, 0, 0);
}

uint64_t sub_29EAEB578()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_29EAEBFC0;
  }

  else
  {
    v2 = sub_29EAEB6B8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAEB6B8(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = 1000000000000000000 * v4;
  v7 = ((v4 >> 63) & 0xF21F494C589C0000) + ((v4 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v1 + 80) = v6;
  *(v1 + 88) = v7;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  v8 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440], MEMORY[0x29EDCA448]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430], MEMORY[0x29EDCA438]);
  sub_29EB14D1C();
  v9 = *(v3 + 8);
  *(v1 + 312) = v9;
  *(v1 + 320) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v5);
  v10 = swift_task_alloc();
  *(v1 + 328) = v10;
  *v10 = v1;
  v10[1] = sub_29EAEB8C0;
  v12 = *(v1 + 160);
  v11 = *(v1 + 168);

  return MEMORY[0x2A1C73C90](v12, v1 + 40, v11, v8);
}

uint64_t sub_29EAEB8C0()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    (*(v2 + 312))(*(v2 + 160), *(v2 + 136));
    v3 = sub_29EAEBE9C;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = *(v2 + 184);
    v6 = *(v2 + 168);
    (*(v2 + 312))(*(v2 + 160), *(v2 + 136));
    (*(v5 + 8))(v4, v6);
    v3 = sub_29EAEBA4C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAEBA4C()
{
  v1 = [*(v0 + 248) defaultManager];
  v2 = sub_29EB141BC();
  *(v0 + 104) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 104];

  v4 = *(v0 + 104);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  if (v3)
  {
    v7 = v4;
    sub_29EAAD010(v6, v5);
    v8 = *(v0 + 336);
  }

  else
  {
    v9 = v4;
    v10 = sub_29EB1417C();

    swift_willThrow();
    sub_29EAAD010(v6, v5);

    v8 = 0;
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 120);
  (*(v0 + 280))(*(v0 + 240), *(v0 + 216));
  if (v11 == v12)
  {

    v13 = *(v0 + 8);
LABEL_9:

    return v13();
  }

  v14 = *(v0 + 256);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  *(v0 + 256) = v15;
  v32 = *(v0 + 60);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v34 = *(v0 + 216);
  v20 = *(v0 + 200);
  v31 = *(v0 + 192);
  _s15AppMigrationKit19_t_StreamRandomDataV8generate5index10Foundation0F0VSi_tF_0();
  v33 = v21;
  v23 = v22;
  *(v0 + 264) = v21;
  *(v0 + 272) = v22;
  v24 = [v16 defaultManager];
  v25 = [v24 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 96) = v15;
  *(v0 + 64) = sub_29EB14E8C();
  *(v0 + 72) = v26;
  (*(v20 + 104))(v19, v32, v31);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v20 + 8))(v19, v31);

  v27 = *(v17 + 8);
  *(v0 + 280) = v27;
  *(v0 + 288) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v18, v34);
  sub_29EB142DC();
  if (v8)
  {
    v27(*(v0 + 240), *(v0 + 216));
    sub_29EAAD010(v33, v23);

    v13 = *(v0 + 8);
    goto LABEL_9;
  }

  v29 = swift_task_alloc();
  *(v0 + 296) = v29;
  *v29 = v0;
  v29[1] = sub_29EAEB578;
  v30 = *(v0 + 240);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v30, 0, 0);
}

uint64_t sub_29EAEBE9C()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_29EAEF3C8();
  sub_29EAAD010(v2, v3);
  v1(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EAEBFC0()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[27];
  sub_29EAEF3C8();
  sub_29EAAD010(v2, v3);
  v1(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EAEC0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_29EB14CFC();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = sub_29EB14D0C();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = sub_29EB1418C();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_29EB1422C();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAEC2EC, 0, 0);
}

uint64_t sub_29EAEC2EC()
{
  if (*(v0 + 96) < 1)
  {
    __break(1u);
  }

  v1 = objc_opt_self();
  v2 = *MEMORY[0x29EDB9B10];
  *(v0 + 36) = v2;
  *(v0 + 240) = v1;
  *(v0 + 248) = 1;
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v15 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = [v1 defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = 1;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v10;
  (*(v5 + 104))(v6, v2, v7);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v5 + 8))(v6, v7);

  v11 = *(v4 + 8);
  *(v0 + 256) = v11;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v15);
  sub_29EB142DC();
  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  *v12 = v0;
  v12[1] = sub_29EAEC5EC;
  v13 = *(v0 + 232);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v13, 0, 0);
}

uint64_t sub_29EAEC5EC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_29EAECFC8;
  }

  else
  {
    v2 = sub_29EAEC72C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAEC72C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v4 = *(v1 + 128);
  v5 = *(v1 + 104);
  v6 = 1000000000000000000 * v5;
  v7 = ((v5 >> 63) & 0xF21F494C589C0000) + ((v5 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  v8 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440], MEMORY[0x29EDCA448]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430], MEMORY[0x29EDCA438]);
  sub_29EB14D1C();
  v9 = *(v3 + 8);
  *(v1 + 288) = v9;
  *(v1 + 296) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = swift_task_alloc();
  *(v1 + 304) = v10;
  *v10 = v1;
  v10[1] = sub_29EAEC938;
  v12 = *(v1 + 152);
  v11 = *(v1 + 160);

  return MEMORY[0x2A1C73C90](v12, v1 + 16, v11, v8);
}

uint64_t sub_29EAEC938()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    (*(v2 + 288))(*(v2 + 152), *(v2 + 128));
    v3 = sub_29EAECEB8;
  }

  else
  {
    v5 = *(v2 + 168);
    v4 = *(v2 + 176);
    v6 = *(v2 + 160);
    (*(v2 + 288))(*(v2 + 152), *(v2 + 128));
    (*(v5 + 8))(v4, v6);
    v3 = sub_29EAECAC4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAECAC4()
{
  v1 = [*(v0 + 240) defaultManager];
  v2 = sub_29EB141BC();
  *(v0 + 80) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 80];

  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = *(v0 + 312);
    v6 = v4;
  }

  else
  {
    v7 = v4;
    v8 = sub_29EB1417C();

    swift_willThrow();
    v5 = 0;
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 96);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));
  if (v9 == v10)
  {

    v11 = *(v0 + 8);
LABEL_9:

    return v11();
  }

  v12 = *(v0 + 248);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  *(v0 + 248) = v13;
  v26 = *(v0 + 36);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v28 = v5;
  v17 = *(v0 + 184);
  v18 = *(v0 + 192);
  v27 = *(v0 + 208);
  v19 = [*(v0 + 240) defaultManager];
  v20 = [v19 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = v13;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v21;
  (*(v18 + 104))(v16, v26, v17);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v18 + 8))(v16, v17);

  v22 = *(v14 + 8);
  *(v0 + 256) = v22;
  *(v0 + 264) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v15, v27);
  sub_29EB142DC();
  if (v28)
  {
    (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

    v11 = *(v0 + 8);
    goto LABEL_9;
  }

  v24 = swift_task_alloc();
  *(v0 + 272) = v24;
  *v24 = v0;
  v24[1] = sub_29EAEC5EC;
  v25 = *(v0 + 232);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v25, 0, 0);
}

uint64_t sub_29EAECEB8()
{
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  sub_29EAEF3C8();
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAECFC8()
{
  sub_29EAEF3C8();
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _t_ResourceFileCreator.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_29EB14CFC();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_29EB14D0C();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_29EB1418C();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = sub_29EB1422C();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAED2D8, 0, 0);
}

uint64_t sub_29EAED2D8()
{
  v1 = (*(*(v0 + 104) + 16))(*(v0 + 96));
  *(v0 + 232) = v1;
  if (v1 < 1)
  {
    __break(1u);
  }

  v2 = *(v0 + 104);
  *(v0 + 240) = *(v2 + 32);
  *(v0 + 248) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x5DE1000000000000;
  v3 = objc_opt_self();
  v4 = *MEMORY[0x29EDB9B10];
  *(v0 + 36) = v4;
  *(v0 + 256) = v3;
  *(v0 + 264) = 1;
  v5 = *(v0 + 216);
  v6 = *(v0 + 208);
  v18 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  *(v0 + 272) = (*(v0 + 240))(1, *(v0 + 96), *(v0 + 104));
  *(v0 + 280) = v10;
  v11 = [v3 defaultManager];
  v12 = [v11 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = 1;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v13;
  (*(v7 + 104))(v8, v4, v9);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v7 + 8))(v8, v9);

  v14 = *(v6 + 8);
  *(v0 + 288) = v14;
  *(v0 + 296) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v5, v18);
  sub_29EB142DC();
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_29EAED630;
  v16 = *(v0 + 224);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v16, 0, 0);
}

uint64_t sub_29EAED630()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_29EAEE090;
  }

  else
  {
    v2 = sub_29EAED770;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAED770()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = (*(*(v0 + 104) + 24))(*(v0 + 96));
  v5 = 1000000000000000000 * v4;
  v6 = ((v4 >> 63) & 0xF21F494C589C0000) + ((v4 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v7 = sub_29EAEF5EC(&qword_2A187A680, MEMORY[0x29EDCA440], MEMORY[0x29EDCA448]);
  sub_29EB14F0C();
  sub_29EAEF5EC(&qword_2A187A688, MEMORY[0x29EDCA430], MEMORY[0x29EDCA438]);
  sub_29EB14D1C();
  v8 = *(v2 + 8);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_29EAED998;
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);

  return MEMORY[0x2A1C73C90](v11, v0 + 16, v10, v7);
}

uint64_t sub_29EAED998()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    (*(v2 + 320))(*(v2 + 144), *(v2 + 120));
    v3 = sub_29EAEDF6C;
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 320))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = sub_29EAEDB24;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAEDB24()
{
  v1 = [*(v0 + 256) defaultManager];
  v2 = sub_29EB141BC();
  *(v0 + 80) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 80];

  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = *(v0 + 344);
    v6 = v4;
  }

  else
  {
    v7 = v4;
    v8 = sub_29EB1417C();

    swift_willThrow();
    v5 = 0;
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 264);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 200);
  sub_29EAAD010(*(v0 + 272), *(v0 + 280));
  v9(v11, v13);
  if (v10 == v12)
  {

    v14 = *(v0 + 8);
LABEL_9:

    return v14();
  }

  v15 = *(v0 + 264);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  *(v0 + 264) = v16;
  v33 = *(v0 + 36);
  v17 = *(v0 + 256);
  v18 = *(v0 + 216);
  v35 = v5;
  v19 = *(v0 + 208);
  v34 = *(v0 + 200);
  v20 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v32 = (*(v0 + 240))(v16, *(v0 + 96), *(v0 + 104));
  v24 = v23;
  *(v0 + 272) = v32;
  *(v0 + 280) = v23;
  v25 = [v17 defaultManager];
  v26 = [v25 temporaryDirectory];

  sub_29EB141DC();
  *(v0 + 72) = v16;
  *(v0 + 40) = sub_29EB14E8C();
  *(v0 + 48) = v27;
  (*(v20 + 104))(v21, v33, v22);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v20 + 8))(v21, v22);

  v28 = *(v19 + 8);
  *(v0 + 288) = v28;
  *(v0 + 296) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v18, v34);
  sub_29EB142DC();
  if (v35)
  {
    v28(*(v0 + 224), *(v0 + 200));
    sub_29EAAD010(v32, v24);

    v14 = *(v0 + 8);
    goto LABEL_9;
  }

  v30 = swift_task_alloc();
  *(v0 + 304) = v30;
  *v30 = v0;
  v30[1] = sub_29EAED630;
  v31 = *(v0 + 224);

  return ResourcesArchiver.appendItem(at:pathInArchive:)(v31, 0, 0);
}

uint64_t sub_29EAEDF6C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[28];
  v5 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_29EAEF3C8();
  sub_29EAAD010(v2, v3);
  v1(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EAEE090()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[28];
  v5 = v0[25];
  sub_29EAEF3C8();
  sub_29EAAD010(v2, v3);
  v1(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EAEE19C(char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *a1;
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return sub_29EAEE274(v8, v4, v5, v6, v7);
}

uint64_t sub_29EAEE274(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE29C, 0, 0);
}

uint64_t sub_29EAEE29C()
{
  if (*(v0 + 56) > 2u || *(v0 + 56))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_29EAB3444;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_29EAEB00C(v7, v6, v4, v5);
}

uint64_t sub_29EAEE488(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 64) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE4B4, 0, 0);
}

uint64_t sub_29EAEE4B4()
{
  if (*(v0 + 64) > 2u || *(v0 + 64))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_29EAEE6A4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return sub_29EAEC0CC(v8, v6, v7, v4, v5);
}

uint64_t sub_29EAEE6A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _t_ExportResourcesInjectionMessage.perform(operation:options:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EAEE7C4, 0, 0);
}

uint64_t sub_29EAEE7C4()
{
  if (*(v0 + 56) > 2u || *(v0 + 56))
  {
    v1 = sub_29EB14EBC();

    if ((v1 & 1) == 0)
    {
      return sub_29EB14D2C();
    }
  }

  else
  {
  }

  v7 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_29EAB73B8;
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return v7(v6, v5, v4);
}

double sub_29EAEEA14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *&result = 100;
  *a3 = xmmword_29EB188D0;
  *(a3 + 16) = 1000;
  return result;
}

uint64_t _t_ArchiveRepeatedFiles.data.getter()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t _t_ArchiveRepeatedFiles.generate(index:)()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t static _t_ArchiveRepeatedFiles.example.getter@<X0>(uint64_t *a1@<X8>)
{
  v7[3] = &type metadata for _t_Hang;
  v7[4] = sub_29EAEF634();
  v7[5] = sub_29EAEF688();
  LOBYTE(v7[0]) = 0;
  a1[3] = &type metadata for _t_ArchiveRepeatedFiles;
  a1[4] = sub_29EAC3ACC();
  v2 = swift_allocObject();
  *a1 = v2;
  __swift_project_boxed_opaque_existential_1(v7, &type metadata for _t_Hang);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  v3 = sub_29EB1406C();
  v5 = v4;

  *(v2 + 16) = xmmword_29EB188D0;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t _t_ArchiveRepeatedFiles.init(count:delay:object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_29EB1408C();
  swift_allocObject();
  sub_29EB1407C();
  v9 = sub_29EB1406C();
  v11 = v10;

  if (!v4)
  {
    *a4 = a1;
    a4[1] = a2;
    a4[2] = v9;
    a4[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t _t_ArchiveRepeatedFiles.init(count:delay:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_29EAEECD4()
{
  v1 = 0x79616C6564;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_29EAEED20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29EAEFEF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29EAEED48(uint64_t a1)
{
  v2 = sub_29EAEF714();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAEED84(uint64_t a1)
{
  v2 = sub_29EAEF714();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ArchiveRepeatedFiles.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADD8, &qword_29EB18900);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF714();
  sub_29EB14FFC();
  LOBYTE(v17) = 0;
  sub_29EB14E5C();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    LOBYTE(v17) = 1;
    sub_29EB14E5C();
    v17 = v11;
    v18 = v12;
    v19 = 2;
    sub_29EAB0308(v11, v12);
    sub_29EAB6324();
    sub_29EB14E6C();
    sub_29EAAD010(v17, v18);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _t_ArchiveRepeatedFiles.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187ADE8, &qword_29EB18908);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAEF714();
  sub_29EB14FEC();
  if (!v2)
  {
    LOBYTE(v13) = 0;
    v9 = sub_29EB14DEC();
    LOBYTE(v13) = 1;
    v11 = sub_29EB14DEC();
    v14 = 2;
    sub_29EAB6378();
    sub_29EB14DFC();
    (*(v6 + 8))(v8, v5);
    v12 = v13;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAEF1B0()
{
  v1 = *(v0 + 16);
  sub_29EAB0308(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_29EAEF1E4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EAB73B4;

  return sub_29EAEC0CC(a1, v4, v5, v7, v6);
}

uint64_t sub_29EAEF2B4(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = *a1;
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_29EAB73B4;

  return sub_29EAEE488(v9, v4, v5, v6, v8, v7);
}

void sub_29EAEF3C8()
{
  v7[1] = *MEMORY[0x29EDCA608];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_29EB141BC();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_29EB1417C();

    swift_willThrow();
  }
}

uint64_t sub_29EAEF4E8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A720, &unk_29EB17418);
  v10 = sub_29EAF0004();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_29EAB5BA8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_29EAEF598()
{
  result = qword_2A187ADB8;
  if (!qword_2A187ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADB8);
  }

  return result;
}

uint64_t sub_29EAEF5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29EAEF634()
{
  result = qword_2A187ADC8;
  if (!qword_2A187ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADC8);
  }

  return result;
}

unint64_t sub_29EAEF688()
{
  result = qword_2A187ADD0;
  if (!qword_2A187ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADD0);
  }

  return result;
}

uint64_t sub_29EAEF6DC()
{
  sub_29EAAD010(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

unint64_t sub_29EAEF714()
{
  result = qword_2A187ADE0;
  if (!qword_2A187ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADE0);
  }

  return result;
}

unint64_t sub_29EAEF768(uint64_t a1)
{
  result = sub_29EAEF790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF790()
{
  result = qword_2A187ADF0;
  if (!qword_2A187ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADF0);
  }

  return result;
}

unint64_t sub_29EAEF7E4(uint64_t a1)
{
  result = sub_29EAC3B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF838()
{
  result = qword_2A187ADF8;
  if (!qword_2A187ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187ADF8);
  }

  return result;
}

unint64_t sub_29EAEF88C()
{
  result = qword_2A187AE00;
  if (!qword_2A187AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE00);
  }

  return result;
}

unint64_t sub_29EAEF8E0(uint64_t a1)
{
  result = sub_29EAEF908();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAEF908()
{
  result = qword_2A187AE08;
  if (!qword_2A187AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE08);
  }

  return result;
}

unint64_t sub_29EAEF95C(uint64_t a1)
{
  result = sub_29EAC3ACC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EAEF9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAEF9EC()
{
  result = qword_2A187AE10;
  if (!qword_2A187AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE10);
  }

  return result;
}

unint64_t sub_29EAEFA40()
{
  result = qword_2A187AE18;
  if (!qword_2A187AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE18);
  }

  return result;
}

uint64_t sub_29EAEFAA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29EAEFAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of _t_ExportResourcesInjectionMessage.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EAAAE5C;

  return v9(a1, a2, a3);
}

unint64_t sub_29EAEFCE8()
{
  result = qword_2A187AE20;
  if (!qword_2A187AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE20);
  }

  return result;
}

unint64_t sub_29EAEFD40()
{
  result = qword_2A187AE28;
  if (!qword_2A187AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE28);
  }

  return result;
}

unint64_t sub_29EAEFD98()
{
  result = qword_2A187AE30;
  if (!qword_2A187AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE30);
  }

  return result;
}

unint64_t sub_29EAEFDF0()
{
  result = qword_2A187AE38;
  if (!qword_2A187AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE38);
  }

  return result;
}

unint64_t sub_29EAEFE48()
{
  result = qword_2A187AE40;
  if (!qword_2A187AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE40);
  }

  return result;
}

unint64_t sub_29EAEFEA0()
{
  result = qword_2A187AE48;
  if (!qword_2A187AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE48);
  }

  return result;
}

uint64_t sub_29EAEFEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29EB14EBC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_29EAF0004()
{
  result = qword_2A187A728;
  if (!qword_2A187A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A720, &unk_29EB17418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A728);
  }

  return result;
}

uint64_t MigrationPlatform.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_29EAF00AC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_29EAF00B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_29EAF00C4()
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAF0118(uint64_t a1)
{
  sub_29EB14F8C();
  sub_29EB1473C();
  return sub_29EB14FAC();
}

uint64_t sub_29EAF0210(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EB14EBC();
  }
}

unint64_t sub_29EAF0274()
{
  result = qword_2A187AE50;
  if (!qword_2A187AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE50);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29EAF02D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAF031C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EAF0368()
{
  result = qword_2A187AE58;
  if (!qword_2A187AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE58);
  }

  return result;
}

uint64_t sub_29EAF03C0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAF03E0, 0, 0);
}

uint64_t sub_29EAF03E0()
{
  v1 = 0xD000000000000055;
  *(v0 + 40) = 0xD000000000000055;
  v2 = 0x800000029EB1BDC0;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v3 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v3);
    v2 = v4;
  }

  *(v0 + 88) = v2;
  v5 = *(v0 + 80);
  v6 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = sub_29EAF097C;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_29EAF05A0;
  v9 = *(v0 + 72);

  return sub_29EAC59E4(v9, v1, v2, 0, v6, sub_29EACDDD4, v7);
}

uint64_t sub_29EAF05A0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF0738, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_29EAF0738()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_29EAF079C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_29EAF2D98;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_36;
  v13 = _Block_copy(aBlock);

  v14 = [a1 preflightExportWithCompletion_];
  _Block_release(v13);
  return v14;
}

void sub_29EAF0984(char *a1, void *a2)
{
  v4 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29EB1400C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v30[0] = a2;
    v10 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
    sub_29EB148BC();
    return;
  }

  if (!a1)
  {
    v18 = v7;
    sub_29EB13FAC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    sub_29EB1415C();
    v19 = sub_29EB13F9C();
    (*(v6 + 8))(v9, v18);
    *&v30[0] = v19;
    goto LABEL_3;
  }

  v11 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 48];
  v13 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  v12 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 16];
  v28[2] = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 32];
  v28[3] = v11;
  v28[0] = v13;
  v28[1] = v12;
  v14 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 112];
  v16 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 64];
  v15 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 80];
  v28[6] = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 96];
  v28[7] = v14;
  v28[4] = v16;
  v28[5] = v15;
  v24 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 64];
  v25 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 80];
  v26 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 96];
  v27 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 112];
  v20 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
  v21 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 16];
  v22 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 32];
  v23 = *&a1[OBJC_IVAR___AMKPreflightInfo_preflightInfo + 48];
  v17 = a1;
  sub_29EAB83AC(v28, v30);
  sub_29EAB7ACC(&v20, v30);
  v29[4] = v24;
  v29[5] = v25;
  v29[6] = v26;
  v29[7] = v27;
  v29[0] = v20;
  v29[1] = v21;
  v29[2] = v22;
  v29[3] = v23;
  sub_29EACD61C(v29);
  v24 = v30[4];
  v25 = v30[5];
  v26 = v30[6];
  v27 = v30[7];
  v20 = v30[0];
  v21 = v30[1];
  v22 = v30[2];
  v23 = v30[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  sub_29EB148CC();
}

uint64_t sub_29EAF0C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v7 + 400) = a4;
  *(v7 + 408) = a6;
  *(v7 + 384) = a1;
  *(v7 + 392) = a2;
  v8 = *a3;
  *(v7 + 416) = v6;
  *(v7 + 424) = v8;
  *(v7 + 432) = *(a3 + 1);
  *(v7 + 345) = *a5;
  return MEMORY[0x2A1C73D48](sub_29EAF0C74, 0, 0);
}

uint64_t sub_29EAF0C74()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 345);
  v3 = *(v0 + 424);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = swift_task_alloc();
  *(v0 + 448) = v6;
  v7 = *(v0 + 432);
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v7;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  v8 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v9 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v9);
    v8 = v10;
  }

  *(v0 + 456) = v8;
  v11 = *(v0 + 392);
  v12 = swift_task_alloc();
  *(v0 + 464) = v12;
  *(v12 + 16) = sub_29EAF2188;
  *(v12 + 24) = v6;
  v13 = swift_task_alloc();
  *(v0 + 472) = v13;
  *v13 = v0;
  v13[1] = sub_29EAF0E34;
  v14 = *(v0 + 408);

  return sub_29EAC6340(v0 + 16, v1, v8, v11, v14, sub_29EACC2AC, v12);
}

uint64_t sub_29EAF0E34()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_29EAF1000;
  }

  else
  {
    v2 = sub_29EAF0F58;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF0F58()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 64) = *(v0 + 80);
  *(v1 + 80) = v3;
  *(v1 + 32) = v5;
  *(v1 + 48) = v4;
  v7 = *(v0 + 128);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  *(v1 + 144) = *(v0 + 160);
  *(v1 + 112) = v7;
  *(v1 + 128) = v6;
  *(v1 + 96) = v8;
  v9 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v9;

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_29EAF1000()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 384);
  sub_29EAF21C8(v0 + 176);
  v3 = *(v0 + 192);
  *v2 = *(v0 + 176);
  *(v2 + 16) = v3;
  v4 = *(v0 + 208);
  v5 = *(v0 + 224);
  v6 = *(v0 + 256);
  *(v2 + 64) = *(v0 + 240);
  *(v2 + 80) = v6;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v7 = *(v0 + 272);
  v8 = *(v0 + 288);
  v9 = *(v0 + 304);
  *(v2 + 144) = *(v0 + 320);
  *(v2 + 112) = v8;
  *(v2 + 128) = v9;
  *(v2 + 96) = v7;

  v10 = *(v0 + 8);

  return v10(v1);
}

id sub_29EAF10BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v29 = a3;
  v30 = a7;
  v28 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v19 = a4;
  *(v19 + 1) = a5;
  *(v19 + 2) = a6;
  v32.receiver = v18;
  v32.super_class = v17;

  v20 = objc_msgSendSuper2(&v32, sel_init);
  v21 = 0;
  if ((a8 & 1) == 0)
  {
    v21 = sub_29EB1467C();
  }

  (*(v14 + 16))(v16, a2, v13);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  (*(v14 + 32))(v23 + v22, v16, v13);
  aBlock[4] = sub_29EAF2E70;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_30;
  v24 = _Block_copy(aBlock);

  v25 = [v28 exportSerializedDataTo:v29 request:v20 estimatedSize:v30 compressionScheme:v21 completion:v24];
  _Block_release(v24);

  return v25;
}

void sub_29EAF1320(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_29EAF13AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 416) = a6;
  *(v8 + 424) = a7;
  *(v8 + 400) = a4;
  *(v8 + 408) = a5;
  *(v8 + 384) = a1;
  *(v8 + 392) = a2;
  v9 = *a3;
  *(v8 + 432) = v7;
  *(v8 + 440) = v9;
  *(v8 + 448) = *(a3 + 1);
  return MEMORY[0x2A1C73D48](sub_29EAF13E4, 0, 0);
}

uint64_t sub_29EAF13E4()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v15 = *(v0 + 400);
  v4 = *(v0 + 392);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  v6 = *(v0 + 448);
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v15;
  *(v5 + 64) = v3;
  v7 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v8 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v8);
    v7 = v9;
  }

  *(v0 + 472) = v7;
  v10 = *(v0 + 392);
  v11 = swift_task_alloc();
  *(v0 + 480) = v11;
  *(v11 + 16) = sub_29EAF21FC;
  *(v11 + 24) = v5;
  v12 = swift_task_alloc();
  *(v0 + 488) = v12;
  *v12 = v0;
  v12[1] = sub_29EAF15B4;
  v13 = *(v0 + 424);

  return sub_29EAC6340(v0 + 16, v1, v7, v10, v13, sub_29EACDDD4, v11);
}

uint64_t sub_29EAF15B4()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_29EAF1780;
  }

  else
  {
    v2 = sub_29EAF16D8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF16D8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 64) = *(v0 + 80);
  *(v1 + 80) = v3;
  *(v1 + 32) = v5;
  *(v1 + 48) = v4;
  v7 = *(v0 + 128);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  *(v1 + 144) = *(v0 + 160);
  *(v1 + 112) = v7;
  *(v1 + 128) = v6;
  *(v1 + 96) = v8;
  v9 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v9;

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_29EAF1780()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 384);
  sub_29EAF21C8(v0 + 176);
  v3 = *(v0 + 192);
  *v2 = *(v0 + 176);
  *(v2 + 16) = v3;
  v4 = *(v0 + 208);
  v5 = *(v0 + 224);
  v6 = *(v0 + 256);
  *(v2 + 64) = *(v0 + 240);
  *(v2 + 80) = v6;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v7 = *(v0 + 272);
  v8 = *(v0 + 288);
  v9 = *(v0 + 304);
  *(v2 + 144) = *(v0 + 320);
  *(v2 + 112) = v8;
  *(v2 + 128) = v9;
  *(v2 + 96) = v7;

  v10 = *(v0 + 8);

  return v10(v1);
}

id sub_29EAF183C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a7;
  v30 = a8;
  v27 = a3;
  v28 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v27 - v16;
  v18 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v20 = a4;
  *(v20 + 1) = a5;
  *(v20 + 2) = a6;
  v32.receiver = v19;
  v32.super_class = v18;

  v21 = objc_msgSendSuper2(&v32, sel_init);
  (*(v15 + 16))(v17, a2, v14);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  (*(v15 + 32))(v23 + v22, v17, v14);
  aBlock[4] = sub_29EAF2C6C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF2E6C;
  aBlock[3] = &block_descriptor_24;
  v24 = _Block_copy(aBlock);

  v25 = [a1 exportResourcesTo:v27 request:v21 estimatedSize:v29 archiveFormat:v30 archiveCompressionScheme:v28 completion:v24];
  _Block_release(v24);

  return v25;
}

uint64_t sub_29EAF1A80(uint64_t a1, void *a2)
{
  v4 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29EB1400C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    memmove(&v25, (a1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics), 0x98uLL);
    nullsub_1();
  }

  else
  {
    if (!a2)
    {
      v12 = v7;
      sub_29EAF21C8(&v25);
      sub_29EB13FAC();
      sub_29EABCE10(MEMORY[0x29EDCA190]);
      sub_29EACD300();
      sub_29EB1415C();
      v13 = sub_29EB13F9C();
      (*(v6 + 8))(v9, v12);
      v20 = v31;
      v21 = v32;
      v22 = v33;
      v16 = v27;
      v17 = v28;
      v18 = v29;
      v19 = v30;
      v14 = v25;
      v15 = v26;
      v23 = v34;
      v24 = v13;
      goto LABEL_6;
    }

    sub_29EAF21C8(&v25);
  }

  v20 = v31;
  v21 = v32;
  v22 = v33;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v14 = v25;
  v15 = v26;
  v23 = v34;
  v24 = a2;
  v10 = a2;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA50, &qword_29EB17EF8);
  return sub_29EB148CC();
}

uint64_t sub_29EAF1CC0(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EAAAE5C;

  return sub_29EAF2230(a1);
}

id sub_29EAF1D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = aBlock - v12;
  v14 = type metadata accessor for RawMigrationRequest.XPCHelper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AMKRawMigrationRequest_request];
  *v16 = a3;
  *(v16 + 1) = a4;
  *(v16 + 2) = a5;
  v24.receiver = v15;
  v24.super_class = v14;

  v17 = objc_msgSendSuper2(&v24, sel_init);
  (*(v11 + 16))(v13, a2, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v13, v10);
  aBlock[4] = sub_29EAF2BC4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  v21 = [a1 uploadContentWithRequest:v17 completion:v20];
  _Block_release(v20);

  return v21;
}

uint64_t ExportExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_29EB1446C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_allocObject();

  return MEMORY[0x2A1C73D48](sub_29EACBBDC, 0, 0);
}

uint64_t ExportExtensionController.init(identity:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29EB1446C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EACBF70, 0, 0);
}

uint64_t ExportExtensionController.__deallocating_deinit()
{
  v0 = ExtensionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

double sub_29EAF21C8(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_29EAF2230(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2A1C73D48](sub_29EAF225C, 0, 0);
}

uint64_t sub_29EAF225C()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 88);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v0 + 56) = 40;
  v5 = 0x800000029EB1BDC0;
  *(v0 + 40) = 0xD000000000000055;
  *(v0 + 48) = 0x800000029EB1BDC0;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v6 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v6);
    v5 = v7;
  }

  *(v0 + 112) = v5;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 120) = v8;
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = sub_29EAF2BA4;
  *(v9 + 24) = v3;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_29EAF243C;

  return sub_29EAC6CEC(v10, v1, v5, 0, v8, sub_29EACDDD4, v9);
}

uint64_t sub_29EAF243C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_29EAF25B4;
  }

  else
  {

    v3 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAF25B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ExportExtensionController(uint64_t a1)
{
  result = qword_2A187AE60;
  if (!qword_2A187AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ExportExtensionController.preflightExport()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EAAAE5C;

  return v6(a1);
}

uint64_t dispatch thunk of ExportExtensionController.exportSerializedData(to:request:estimatedSize:compressionScheme:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 128) + **(*v6 + 128));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_29EAB0544;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ExportExtensionController.exportResources(to:request:estimatedSize:archiveFormat:archiveCompressionScheme:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 136) + **(*v7 + 136));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_29EAB0010;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ExportExtensionController.uploadContent(request:progress:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_29EAB73B4;

  return v8(a1, a2);
}

uint64_t sub_29EAF2BC4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);

  return sub_29EACBA94(a1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAF2CF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

void sub_29EAF2D98(char *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA58, &qword_29EB19010);

  sub_29EAF0984(a1, a2);
}

uint64_t sub_29EAF2E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAF2EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EAF2F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_29EB14C2C();
    MEMORY[0x29EDA6DF0](a1, a2);
    MEMORY[0x29EDA6DF0](0xD000000000000014, 0x800000029EB1C4D0);
    swift_getErrorValue();
    sub_29EB14EAC();
    return 0;
  }

  else
  {
  }

  return a1;
}

unint64_t sub_29EAF2FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB190D0;
  v1 = sub_29EAC3A78();
  *(v0 + 32) = &type metadata for _t_Sleep;
  *(v0 + 40) = v1;
  v2 = sub_29EAC3A24();
  *(v0 + 48) = &type metadata for _t_Hang;
  *(v0 + 56) = v2;
  v3 = sub_29EAC39D0();
  *(v0 + 64) = &type metadata for _t_FatalError;
  *(v0 + 72) = v3;
  v4 = sub_29EAC397C();
  *(v0 + 80) = &type metadata for _t_ThrowsPosixError;
  *(v0 + 88) = v4;
  result = sub_29EAC3928();
  *(v0 + 96) = &type metadata for _t_ThrowsGenericError;
  *(v0 + 104) = result;
  qword_2A1881300 = v0;
  return result;
}

uint64_t _t_Sleep.perform()()
{
  v1 = sub_29EB14D0C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAF3144, 0, 0);
}

uint64_t sub_29EAF3144(uint64_t a1)
{
  sub_29EB14F2C();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_29EAF3214;

  return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
}

uint64_t sub_29EAF3214()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;
  *(v5 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF33BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_29EAF33BC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t static _t_Sleep.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_Sleep;
  result = sub_29EAC3A78();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_29EAF3474(uint64_t a1)
{
  v2 = sub_29EAF5B70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF34B0(uint64_t a1)
{
  v2 = sub_29EAF5B70();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF3574()
{
  v1 = sub_29EB14D0C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAF3630, 0, 0);
}

uint64_t sub_29EAF3630(uint64_t a1)
{
  sub_29EB14F2C();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_29EAF3700;

  return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
}

uint64_t sub_29EAF3700()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;
  *(v5 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAF6D68, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_29EAF38A8(_BYTE *a1)
{
  v4 = sub_29EB14D0C();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 56) = *a1;
  *(v2 + 57) = *v1;

  return MEMORY[0x2A1C73D48](sub_29EAF3978, 0, 0);
}

uint64_t sub_29EAF3978()
{
  if (sub_29EAB0548(*(v0 + 56), *(v0 + 57)))
  {
    sub_29EB14F2C();
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_29EAF3700;

    return sub_29EAB56F0(0x9983494C589C0000, 232830643, 0, 0, 1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t _t_GenericInjectionMessage.perform(operation:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EAF3AC4, 0, 0);
}

uint64_t sub_29EAF3AC4()
{
  v9 = v0;
  v1 = *(v0 + 48);
  (*(*(v0 + 24) + 16))(&v8, *(v0 + 16));
  if (sub_29EAB0548(v1, v8))
  {
    v7 = (*(*(v0 + 24) + 24) + **(*(v0 + 24) + 24));
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_29EAF3C44;
    v3 = *(v0 + 24);
    v4 = *(v0 + 16);

    return v7(v4, v3);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_29EAF3C44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EAF3D84()
{
  sleep(0xFFFFFFFF);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t static _t_Hang.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_Hang;
  result = sub_29EAC3A24();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_29EAF3E60(uint64_t a1)
{
  v2 = sub_29EAF5C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF3E9C(uint64_t a1)
{
  v2 = sub_29EAF5C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF3F88(_BYTE *a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 17) = *v1;
  return MEMORY[0x2A1C73D48](sub_29EAF3FB4, 0, 0);
}

uint64_t sub_29EAF3FB4()
{
  if (sub_29EAB0548(*(v0 + 16), *(v0 + 17)))
  {
    sleep(0xFFFFFFFF);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAF4028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 0;
  return result;
}

unint64_t static _t_FatalError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_FatalError;
  result = sub_29EAC39D0();
  *(a1 + 32) = result;
  *a1 = 5;
  return result;
}

uint64_t sub_29EAF4154()
{
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](0);
  return sub_29EB14FAC();
}

uint64_t sub_29EAF4198(uint64_t a1)
{
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](0);
  return sub_29EB14FAC();
}

uint64_t sub_29EAF41D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EB14EBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EAF4268(uint64_t a1)
{
  v2 = sub_29EAF5CC0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF42A4(uint64_t a1)
{
  v2 = sub_29EAF5CC0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EAF4324(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v13 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_29EB14FFC();
  v14 = v11;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_29EAF44B8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
{
  v14 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_29EB14FEC();
  if (!v6)
  {
    v12 = v14;
    sub_29EAF5C18();
    sub_29EB14DFC();
    (*(v15 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF464C(_BYTE *a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 17) = *v1;
  return MEMORY[0x2A1C73D48](sub_29EAF4678, 0, 0);
}

uint64_t sub_29EAF4678()
{
  if (sub_29EAB0548(*(v0 + 16), *(v0 + 17)))
  {
    return sub_29EB14D2C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAF473C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 5;
  return result;
}

uint64_t _t_ThrowsPosixError.perform()()
{
  v2 = sub_29EB1402C();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 44) = *(v0 + 4);

  return MEMORY[0x2A1C73D48](sub_29EAF4904, 0, 0);
}

uint64_t sub_29EAF4904()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 40) = *(v0 + 44);
  sub_29EABCE10(MEMORY[0x29EDCA190]);
  sub_29EAF5D14();
  sub_29EB1415C();
  sub_29EB1401C();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

unint64_t static _t_ThrowsPosixError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ThrowsPosixError;
  result = sub_29EAC397C();
  *(a1 + 32) = result;
  *a1 = 2;
  *(a1 + 4) = 2;
  return result;
}

_BYTE *_t_ThrowsPosixError.init(operation:code:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t sub_29EAF4A4C()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_29EAF4A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29EB14EBC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EB14EBC();

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

uint64_t sub_29EAF4B74(uint64_t a1)
{
  v2 = sub_29EAF5D6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF4BB0(uint64_t a1)
{
  v2 = sub_29EAF5D6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ThrowsPosixError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEC8, &qword_29EB19138);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5D6C();
  sub_29EB14FFC();
  v15 = v8;
  v14 = 0;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    sub_29EAF5DC0();
    sub_29EB14E6C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _t_ThrowsPosixError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEE0, &qword_29EB19140);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5D6C();
  sub_29EB14FEC();
  if (!v2)
  {
    v15 = 0;
    sub_29EAF5C18();
    sub_29EB14DFC();
    v9 = v16;
    v14 = 1;
    sub_29EAF5E14();
    sub_29EB14DFC();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    *(a2 + 4) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF4F60()
{
  v2 = sub_29EB1402C();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 44) = *(v0 + 4);

  return MEMORY[0x2A1C73D48](sub_29EAF4904, 0, 0);
}

uint64_t sub_29EAF5024(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 40) = *a1;
  v4 = *v2;
  *(v3 + 41) = *v2;
  v5 = *(v2 + 1);
  *(v3 + 32) = v4;
  *(v3 + 36) = v5;
  return MEMORY[0x2A1C73D48](sub_29EAF5060, 0, 0);
}

uint64_t sub_29EAF5060()
{
  if (sub_29EAB0548(*(v0 + 40), *(v0 + 41)))
  {
    v1 = sub_29EAF6CA4();
    v6 = (*(v1 + 24) + **(v1 + 24));
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_29EAF51C4;
    v3 = *(v0 + 16);

    return v6(v3, v1);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_29EAF51C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EAF52B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 2;
  *(a3 + 4) = 2;
  return result;
}

uint64_t _t_ThrowsGenericError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t _t_ThrowsGenericError.perform()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 24) = v2;

  return MEMORY[0x2A1C73D48](sub_29EAF53A8, 0, 0);
}

uint64_t sub_29EAF53A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_29EABCDBC();
  swift_allocError();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = 0;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

unint64_t static _t_ThrowsGenericError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ThrowsGenericError;
  result = sub_29EAC3928();
  *(a1 + 32) = result;
  *a1 = 1;
  strcpy((a1 + 8), "Error thrown");
  *(a1 + 21) = 0;
  *(a1 + 22) = -5120;
  return result;
}

AppMigrationKit::_t_ThrowsGenericError __swiftcall _t_ThrowsGenericError.init(operation:message:)(AppMigrationKit::_t_MigrationInjectionOperation operation, Swift::String message)
{
  *v2 = *operation;
  *(v2 + 8) = message;
  result.message = message;
  result.operation = operation;
  return result;
}

uint64_t sub_29EAF54A8()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_29EAF54E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29EB14EBC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EB14EBC();

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

uint64_t sub_29EAF55CC(uint64_t a1)
{
  v2 = sub_29EAF5E68();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF5608(uint64_t a1)
{
  v2 = sub_29EAF5E68();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ThrowsGenericError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEF0, &qword_29EB19150);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5E68();
  sub_29EB14FFC();
  v14 = v8;
  v13 = 0;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  if (!v2)
  {
    v12 = 1;
    sub_29EB14E3C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _t_ThrowsGenericError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AF00, &unk_29EB19158);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5E68();
  sub_29EB14FEC();
  if (!v2)
  {
    v16 = 0;
    sub_29EAF5C18();
    sub_29EB14DFC();
    v9 = v17;
    v15 = 1;
    v11 = sub_29EB14DCC();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF59A8()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 24) = v2;

  return MEMORY[0x2A1C73D48](sub_29EAF6D98, 0, 0);
}

uint64_t sub_29EAF5A18(_BYTE *a1)
{
  *(v2 + 32) = *a1;
  *(v2 + 33) = *v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *(v1 + 8);
  *(v2 + 24) = v3;
  return MEMORY[0x2A1C73D48](sub_29EAF5A4C, 0, 0);
}

uint64_t sub_29EAF5A4C()
{
  if (sub_29EAB0548(*(v0 + 32), *(v0 + 33)))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    sub_29EABCDBC();

    swift_allocError();
    *v3 = v2;
    v3[1] = v1;
    v3[2] = 0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EAF5B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 1;
  strcpy((a3 + 8), "Error thrown");
  *(a3 + 21) = 0;
  *(a3 + 22) = -5120;
  return result;
}

unint64_t sub_29EAF5B70()
{
  result = qword_2A187AE78;
  if (!qword_2A187AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE78);
  }

  return result;
}

unint64_t sub_29EAF5BC4()
{
  result = qword_2A187AE80;
  if (!qword_2A187AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE80);
  }

  return result;
}

unint64_t sub_29EAF5C18()
{
  result = qword_2A187AE90;
  if (!qword_2A187AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE90);
  }

  return result;
}

unint64_t sub_29EAF5C6C()
{
  result = qword_2A187AEA0;
  if (!qword_2A187AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEA0);
  }

  return result;
}

unint64_t sub_29EAF5CC0()
{
  result = qword_2A187AEB8;
  if (!qword_2A187AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEB8);
  }

  return result;
}

unint64_t sub_29EAF5D14()
{
  result = qword_2A187A640;
  if (!qword_2A187A640)
  {
    sub_29EB1402C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A640);
  }

  return result;
}

unint64_t sub_29EAF5D6C()
{
  result = qword_2A187AED0;
  if (!qword_2A187AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AED0);
  }

  return result;
}

unint64_t sub_29EAF5DC0()
{
  result = qword_2A187AED8;
  if (!qword_2A187AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AED8);
  }

  return result;
}

unint64_t sub_29EAF5E14()
{
  result = qword_2A187AEE8;
  if (!qword_2A187AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEE8);
  }

  return result;
}

unint64_t sub_29EAF5E68()
{
  result = qword_2A187AEF8;
  if (!qword_2A187AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEF8);
  }

  return result;
}

unint64_t sub_29EAF5EBC(uint64_t a1)
{
  result = sub_29EAC3A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF5F10()
{
  result = qword_2A187AF08;
  if (!qword_2A187AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF08);
  }

  return result;
}

unint64_t sub_29EAF5F64()
{
  result = qword_2A187AF10;
  if (!qword_2A187AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF10);
  }

  return result;
}

unint64_t sub_29EAF5FB8(uint64_t a1)
{
  result = sub_29EAC3A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF600C(uint64_t a1)
{
  result = sub_29EAC39D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF6060()
{
  result = qword_2A187AF18;
  if (!qword_2A187AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF18);
  }

  return result;
}

unint64_t sub_29EAF60B4()
{
  result = qword_2A187AF20;
  if (!qword_2A187AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF20);
  }

  return result;
}

unint64_t sub_29EAF6108(uint64_t a1)
{
  result = sub_29EAC397C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF615C()
{
  result = qword_2A187AF28;
  if (!qword_2A187AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF28);
  }

  return result;
}

unint64_t sub_29EAF61B0()
{
  result = qword_2A187AF30;
  if (!qword_2A187AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF30);
  }

  return result;
}

unint64_t sub_29EAF6204(uint64_t a1)
{
  result = sub_29EAC3928();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EAF6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAF6294()
{
  result = qword_2A187AF38;
  if (!qword_2A187AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF38);
  }

  return result;
}

unint64_t sub_29EAF62E8()
{
  result = qword_2A187AF40;
  if (!qword_2A187AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _t_ThrowsPosixError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[8])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _t_ThrowsPosixError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_29EAF6414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAF645C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of _t_GenericInjectionMessage.perform()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EAAAE5C;

  return v7(a1, a2);
}

uint64_t getEnumTagSinglePayload for AppContentMetrics.MetricType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppContentMetrics.MetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29EAF6780()
{
  result = qword_2A187AF48;
  if (!qword_2A187AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF48);
  }

  return result;
}

unint64_t sub_29EAF67D8()
{
  result = qword_2A187AF50;
  if (!qword_2A187AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF50);
  }

  return result;
}

unint64_t sub_29EAF6830()
{
  result = qword_2A187AF58;
  if (!qword_2A187AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF58);
  }

  return result;
}

unint64_t sub_29EAF6888()
{
  result = qword_2A187AF60;
  if (!qword_2A187AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF60);
  }

  return result;
}

unint64_t sub_29EAF68E0()
{
  result = qword_2A187AF68;
  if (!qword_2A187AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF68);
  }

  return result;
}

unint64_t sub_29EAF6938()
{
  result = qword_2A187AF70;
  if (!qword_2A187AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF70);
  }

  return result;
}

unint64_t sub_29EAF6990()
{
  result = qword_2A187AF78;
  if (!qword_2A187AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF78);
  }

  return result;
}

unint64_t sub_29EAF69E8()
{
  result = qword_2A187AF80;
  if (!qword_2A187AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF80);
  }

  return result;
}

unint64_t sub_29EAF6A40()
{
  result = qword_2A187AF88;
  if (!qword_2A187AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF88);
  }

  return result;
}

unint64_t sub_29EAF6A98()
{
  result = qword_2A187AF90;
  if (!qword_2A187AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF90);
  }

  return result;
}

unint64_t sub_29EAF6AF0()
{
  result = qword_2A187AF98;
  if (!qword_2A187AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF98);
  }

  return result;
}

unint64_t sub_29EAF6B48()
{
  result = qword_2A187AFA0;
  if (!qword_2A187AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFA0);
  }

  return result;
}

unint64_t sub_29EAF6BA0()
{
  result = qword_2A187AFA8;
  if (!qword_2A187AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFA8);
  }

  return result;
}

unint64_t sub_29EAF6BF8()
{
  result = qword_2A187AFB0;
  if (!qword_2A187AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFB0);
  }

  return result;
}

unint64_t sub_29EAF6C50()
{
  result = qword_2A187AFB8;
  if (!qword_2A187AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFB8);
  }

  return result;
}

unint64_t sub_29EAF6CA4()
{
  result = qword_2A187AFC0;
  if (!qword_2A187AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFC0);
  }

  return result;
}

unint64_t sub_29EAF6CF8()
{
  result = qword_2A187AFC8;
  if (!qword_2A187AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFC8);
  }

  return result;
}

void sub_29EAF6D9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29EAF6E0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_29EAF6E78()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AFD0);
  __swift_project_value_buffer(v0, qword_2A187AFD0);
  type metadata accessor for MigrationStagedDataController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B010, &unk_29EB19CC0);
  sub_29EB146FC();
  return sub_29EB1453C();
}

uint64_t MigrationStagedDataController.__allocating_init(dataclass:)()
{
  v0 = swift_allocObject();
  MigrationStagedDataController.init(dataclass:)();
  return v0;
}

uint64_t MigrationStagedDataController.init(dataclass:)()
{
  v1 = objc_allocWithZone(MEMORY[0x29EDBA170]);
  v2 = sub_29EB1467C();
  v3 = [v1 initWithServiceName_];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  *(v0 + 16) = v3;
  return v0;
}

uint64_t MigrationStagedDataController.deinit()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t MigrationStagedDataController.__deallocating_deinit()
{
  [*(v0 + 16) invalidate];

  return MEMORY[0x2A1C73398](v0, 24, 7);
}

uint64_t sub_29EAF70F8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_29EAF71F0;
  v4 = MEMORY[0x29EDC9A98];

  return MEMORY[0x2A1C73C80](v0 + 6, 0, 0, 0xD000000000000010, 0x800000029EB1C570, sub_29EAF7900, v2, v4);
}

uint64_t sub_29EAF71F0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_29EAF7328;
  }

  else
  {

    v2 = sub_29EAF730C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF7328()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_29EAF7390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EB1400C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v36 - v11;
  v13 = *(a2 + 16);
  v14 = *(v10 + 16);
  v42 = a1;
  v36 = v14;
  v14(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = *(v10 + 32);
  v17(v16 + v15, v12, v9);
  v48 = sub_29EAFB148;
  v49 = v16;
  aBlock = MEMORY[0x29EDCA5F8];
  v45 = 1107296256;
  v46 = sub_29EAF6D9C;
  v47 = &block_descriptor_64;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v21 = v43;
    v36(v12, v42, v9);
    v22 = swift_allocObject();
    v17(v22 + v15, v12, v9);
    v48 = sub_29EAFB15C;
    v49 = v22;
    aBlock = MEMORY[0x29EDCA5F8];
    v45 = 1107296256;
    v46 = sub_29EAF798C;
    v47 = &block_descriptor_70_0;
    v23 = _Block_copy(&aBlock);

    [v21 getHasAvailableDataWithDataclass:v37 completion:v23];
    _Block_release(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v25 = sub_29EB1454C();
    __swift_project_value_buffer(v25, qword_2A187AFD0);
    v26 = sub_29EB1452C();
    v27 = sub_29EB14A5C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v20;
      aBlock = v29;
      *v28 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v30 = sub_29EB146FC();
      v32 = sub_29EABC674(v30, v31, &aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29EAA5000, v26, v27, "Connection does not conform to %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x29EDA8150](v29, -1, -1);
      MEMORY[0x29EDA8150](v28, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v33 = v38;
    v34 = v41;
    sub_29EB1415C();
    v35 = sub_29EB13F9C();
    (*(v40 + 8))(v33, v34);
    aBlock = v35;
    return sub_29EB148BC();
  }
}

uint64_t sub_29EAF7908(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
    return sub_29EB148CC();
  }
}

void sub_29EAF798C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t MigrationStagedDataController.importAvailableData(progressBlock:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF7A28, 0, 0);
}

uint64_t sub_29EAF7A28()
{
  v1 = 0xD000000000000053;
  v2 = *(v0 + 88);
  v3 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v0 + 112) = v3;
  if (v2)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = type metadata accessor for ProgressObserver();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_observationBlock];
    *v8 = v5;
    v8[1] = v4;
    *&v7[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress] = v3;
    sub_29EAF88A0(v5, v4);
    v9 = v3;
    sub_29EAF88A0(v5, v4);
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    v10 = v9;
    v11 = objc_msgSendSuper2((v0 + 72), sel_init);
    v12 = sub_29EB1467C();
    [v10 addObserver:v11 forKeyPath:v12 options:0 context:0];

    sub_29EAFAB14(v5, v4);
    v13 = v11;
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 120) = v11;
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  v15 = 0x800000029EB1C590;
  *(v0 + 40) = 0xD000000000000053;
  *(v0 + 48) = 0x800000029EB1C590;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v16 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v16);
    v15 = v17;
  }

  *(v0 + 136) = v15;
  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  *v18 = v0;
  v18[1] = sub_29EAF7CBC;

  return sub_29EAF81BC(v18, v1, v15, v3, sub_29EAF80D8, v14);
}

uint64_t sub_29EAF7CBC()
{
  v2 = *(*v1 + 120);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_29EAF7E90;
  }

  else
  {
    v3 = sub_29EAF7E28;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAF7E28()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAF7E90()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

id sub_29EAF7EF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_29EAFB0B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_58;
  v14 = _Block_copy(aBlock);
  v15 = a4;

  v16 = [a1 importAvailableDataWithDataclass:a3 completion:v14];
  _Block_release(v14);
  return v16;
}

uint64_t sub_29EAF80E0(id a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress);
    v5 = sub_29EB1467C();
    [v3 removeObserver:a2 forKeyPath:v5];
  }

  if (a1)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148CC();
  }
}

uint64_t sub_29EAF81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  return MEMORY[0x2A1C73D48](sub_29EAF81E4, 0, 0);
}

uint64_t sub_29EAF81E4()
{
  v19 = v0;
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  *(v0 + 64) = __swift_project_value_buffer(v1, qword_2A187AFD0);

  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_29EABC674(v5, v4, &v18);
    _os_log_impl(&dword_29EAA5000, v2, v3, "Starting to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x29EDA8150](v7, -1, -1);
    MEMORY[0x29EDA8150](v6, -1, -1);
  }

  v8 = *(v0 + 56);
  v10 = *(v0 + 24);
  v9 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  v13 = *(v0 + 40);
  *(v12 + 16) = v8;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  *(v12 + 40) = v13;
  *(v12 + 56) = v9;
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v14[2] = v9;
  v14[3] = v11;
  v14[4] = v10;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_29EAF8430;
  v16 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v15, &unk_29EB19CD8, v12, sub_29EAFAE78, v14, 0, 0, v16);
}

uint64_t sub_29EAF8430()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_29EAF86DC;
  }

  else
  {

    v2 = sub_29EAF8554;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF8554()
{
  v13 = v0;

  v1 = sub_29EB1452C();
  v2 = sub_29EB14A4C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_29EABC674(v4, v3, &v12);
    *(v5 + 12) = 2080;
    v7 = sub_29EB146FC();
    v9 = sub_29EABC674(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_29EAA5000, v1, v2, "Finished %s -- %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v6, -1, -1);
    MEMORY[0x29EDA8150](v5, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_29EAF86DC()
{
  v16 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A5C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_29EABC674(v7, v6, &v15);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Failed to %s -- %@", v8, 0x16u);
    sub_29EAAE590(v9);
    MEMORY[0x29EDA8150](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x29EDA8150](v10, -1, -1);
    MEMORY[0x29EDA8150](v8, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_29EAF88A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t MigrationStagedDataController.stageMigrationData(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAF88D0, 0, 0);
}

uint64_t sub_29EAF88D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v1[2].i64[0] = 0;
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_29EAF89C4;
  v3 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v2, 0, 0, 0xD000000000000018, 0x800000029EB1C610, sub_29EAFAB24, v1, v3);
}

uint64_t sub_29EAF89C4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_29EAF33BC;
  }

  else
  {

    v2 = sub_29EAC3E4C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF8AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a3;
  v6 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EB1400C();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v41 - v13;
  v15 = *(a2 + 16);
  v16 = *(v12 + 16);
  v49 = a1;
  v42 = v16;
  v16(v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v19 = *(v12 + 32);
  v48 = v11;
  v41 = v19;
  v19(v18 + v17, v14, v11);
  v55 = sub_29EAFAD10;
  v56 = v18;
  aBlock = MEMORY[0x29EDCA5F8];
  v52 = 1107296256;
  v53 = sub_29EAF6D9C;
  v54 = &block_descriptor_35;
  v20 = _Block_copy(&aBlock);

  v21 = [v15 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v23 = v50;
    v46 = sub_29EAADFF0();
    v47 = v34;
    v35 = sub_29EB141BC();
    v36 = sub_29EB142BC();
    v37 = v48;
    v42(v14, v49, v48);
    v38 = swift_allocObject();
    v41(v38 + v17, v14, v37);
    v55 = sub_29EACDDD8;
    v56 = v38;
    aBlock = MEMORY[0x29EDCA5F8];
    v52 = 1107296256;
    v53 = sub_29EAF6E0C;
    v54 = &block_descriptor_41;
    v39 = _Block_copy(&aBlock);

    [v23 stageMigrationDataWithDataclass:v43 url:v35 sandboxExtension:v36 completion:v39];
    swift_unknownObjectRelease();
    _Block_release(v39);

    return sub_29EAAD010(v46, v47);
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v24 = sub_29EB1454C();
    __swift_project_value_buffer(v24, qword_2A187AFD0);
    v25 = sub_29EB1452C();
    v26 = sub_29EB14A5C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v22;
      aBlock = v28;
      *v27 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v29 = sub_29EB146FC();
      v31 = sub_29EABC674(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29EAA5000, v25, v26, "Connection does not conform to %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x29EDA8150](v28, -1, -1);
      MEMORY[0x29EDA8150](v27, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v32 = v47;
    sub_29EB1415C();
    v33 = sub_29EB13F9C();
    (*(v46 + 8))(v10, v32);
    aBlock = v33;
    return sub_29EB148BC();
  }
}

uint64_t sub_29EAF90B8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A187AFD0);
  v8 = a1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed getting available data -- %@", v11, 0xCu);
    sub_29EAAE590(v12);
    MEMORY[0x29EDA8150](v12, -1, -1);
    MEMORY[0x29EDA8150](v11, -1, -1);
  }

  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_29EB148BC();
}

uint64_t MigrationStagedDataController.importAvailableData(targetBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF925C, 0, 0);
}

uint64_t sub_29EAF925C()
{
  v1 = 0xD000000000000053;
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = 0;
  *(v0 + 40) = 0xD000000000000053;
  v5 = 0x800000029EB1C590;
  *(v0 + 48) = 0x800000029EB1C590;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v6 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v6);
    v5 = v7;
  }

  *(v0 + 104) = v5;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 112) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_29EAF9410;

  return sub_29EAF81BC(v9, v1, v5, v8, sub_29EAFAB30, v4);
}

uint64_t sub_29EAF9410()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_29EAF9540;
  }

  else
  {

    v3 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAF9540()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29EAF95B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = aBlock - v10;
  v12 = sub_29EB1467C();
  (*(v9 + 16))(v11, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_29EACD6C4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_29;
  v15 = _Block_copy(aBlock);

  v16 = [a1 importAvailableDataWithTargetBundleID:v12 dataclass:a5 completion:v15];
  _Block_release(v15);

  return v16;
}

uint64_t static MigrationStagedDataController.clearConsentChecks(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2A1C73D48](sub_29EAF97C8, 0, 0);
}

uint64_t sub_29EAF97C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(MEMORY[0x29EDBA170]);
  v4 = sub_29EB1467C();
  v5 = [v3 initWithServiceName_];
  v0[4] = v5;

  v6 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_task_alloc();
  v0[5] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_29EAF9974;
  v9 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD00000000000001DLL, 0x800000029EB1C630, sub_29EAFAB3C, v7, v9);
}

uint64_t sub_29EAF9974()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_29EAF9AF4;
  }

  else
  {

    v2 = sub_29EAF9A90;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29EAF9A90()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAF9AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_29EAF9B60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v18[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v18 - v8;
  v19 = *(v7 + 16);
  v19(v18 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v18[0] = *(v7 + 32);
  (v18[0])(v11 + v10, v9, v6);
  v27 = sub_29EAFAC7C;
  v28 = v11;
  aBlock = MEMORY[0x29EDCA5F8];
  v24 = 1107296256;
  v25 = sub_29EAF6D9C;
  v26 = &block_descriptor_7;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  swift_dynamicCast();
  v14 = v22;
  v15 = sub_29EB1467C();
  v19(v9, v20, v6);
  v16 = swift_allocObject();
  (v18[0])(v16 + v10, v9, v6);
  v27 = sub_29EACDDD8;
  v28 = v16;
  aBlock = MEMORY[0x29EDCA5F8];
  v24 = 1107296256;
  v25 = sub_29EAF6E0C;
  v26 = &block_descriptor_23;
  v17 = _Block_copy(&aBlock);

  [v14 clearConsentChecksWithBundleID:v15 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t sub_29EAF9E70(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148BC();
}

uint64_t sub_29EAF9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF9EEC, 0, 0);
}

uint64_t sub_29EAF9EEC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_29EAF9FF4;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v7, 0, 0, 0xD000000000000053, 0x800000029EB1C590, sub_29EAFAE84, v3, v8);
}

uint64_t sub_29EAF9FF4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAFA130, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_29EAFA130()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_29EAFA194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7)
{
  v44 = a7;
  v45 = a6;
  v46 = a5;
  v11 = sub_29EB13FFC();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29EB1400C();
  v49 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v43 - v17;
  v19 = *(a2 + 16);
  (*(v16 + 16))(&v43 - v17, a1, v15);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v43 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v16 + 32))(v21 + v20, v18, v15);
  aBlock[4] = sub_29EAFAF64;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_52;
  v22 = _Block_copy(aBlock);

  v23 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v22);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v25 = v46(v50, a1);
    if (v25)
    {
      v26 = v25;
      v27 = v44;
      [v44 addChild:v25 withPendingUnitCount:{objc_msgSend(v44, sel_totalUnitCount)}];
      if ([v27 isCancelled])
      {
        if (qword_2A187A348 != -1)
        {
          swift_once();
        }

        v28 = sub_29EB1454C();
        __swift_project_value_buffer(v28, qword_2A187AFD0);

        v29 = sub_29EB1452C();
        v30 = sub_29EB14A5C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_29EABC674(v43, a4, aBlock);
          _os_log_impl(&dword_29EAA5000, v29, v30, "Parent progress of %s is already cancelled. Immediately cancelling child", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x29EDA8150](v32, -1, -1);
          MEMORY[0x29EDA8150](v31, -1, -1);
        }

        [v26 cancel];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v33 = sub_29EB1454C();
    __swift_project_value_buffer(v33, qword_2A187AFD0);
    v34 = sub_29EB1452C();
    v35 = sub_29EB14A5C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v24;
      aBlock[0] = v37;
      *v36 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v38 = sub_29EB146FC();
      v40 = sub_29EABC674(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29EAA5000, v34, v35, "Connection does not conform to %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x29EDA8150](v37, -1, -1);
      MEMORY[0x29EDA8150](v36, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v41 = v47;
    sub_29EB1415C();
    v42 = sub_29EB13F9C();
    (*(v49 + 8))(v14, v41);
    aBlock[0] = v42;
    sub_29EB148BC();
  }
}