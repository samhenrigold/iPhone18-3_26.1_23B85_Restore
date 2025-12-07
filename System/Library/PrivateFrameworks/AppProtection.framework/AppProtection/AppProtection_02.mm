uint64_t sub_185AF2CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v8 = xpc_copy_entitlement_for_token();
  if (!v8)
  {
LABEL_5:
    v12 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = MEMORY[0x1865FE700]();
  if (v10 != sub_185B67BAC())
  {
    v11 = MEMORY[0x1865FE700](v9);
    if (v11 == sub_185B67B9C())
    {
      value = xpc_BOOL_get_value(v9);
      swift_unknownObjectRelease();
      return value;
    }

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if (qword_1EA8CC3A8 != -1)
  {
    swift_once();
  }

  v18 = off_1EA8CCF68;
  if (*(off_1EA8CCF68 + 2) && (v19 = sub_185AC9F40(a5, a6), (v20 & 1) != 0))
  {
    v21 = *(v18[7] + 8 * v19);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v33 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  *(v13 + 24) = &v33;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_185AF30A0;
  *(v27 + 24) = v13;
  aBlock[4] = sub_185AF30A8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AEECE8;
  aBlock[3] = &block_descriptor_5;
  v28 = _Block_copy(aBlock);

  xpc_array_apply(v9, v28);
  swift_unknownObjectRelease();
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v33 == 1)
  {

    return 1;
  }

  v12 = sub_185AF30A0;
LABEL_6:
  v14 = xpc_copy_entitlement_for_token();
  if (!v14)
  {
LABEL_9:
    sub_185AE20B8(v12, v13);
    return 0;
  }

  v15 = v14;
  v16 = MEMORY[0x1865FE700]();
  if (v16 != sub_185B67BCC())
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v22 = swift_unknownObjectRetain();
  v23 = MEMORY[0x1865FE700](v22);
  if (v23 != sub_185B67BCC())
  {
    goto LABEL_31;
  }

  if (!xpc_string_get_string_ptr(v15))
  {
    __break(1u);
LABEL_31:
    result = sub_185B6842C();
    __break(1u);
    return result;
  }

  v24 = sub_185B67F1C();
  v26 = v25;
  swift_unknownObjectRelease();
  if (v24 == 0xD000000000000015 && 0x8000000185B743E0 == v26)
  {

    swift_unknownObjectRelease();
    sub_185AE20B8(v12, v13);
    return 1;
  }

  else
  {
    v31 = sub_185B6859C();

    swift_unknownObjectRelease();
    sub_185AE20B8(v12, v13);
    return (v31 & 1) != 0;
  }
}

uint64_t sub_185AF30D4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_185B6859C() & 1;
  }
}

uint64_t sub_185AF3194(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67C9C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_185B67CDC();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC8];
  if (qword_1EA8CC3A8 != -1)
  {
    swift_once();
  }

  v11 = off_1EA8CCF68;
  v12 = [a1 bundleIdentifier];
  v13 = sub_185B67E4C();
  v15 = v14;

  if (v11[2])
  {
    v16 = sub_185AC9F40(v13, v15);
    v18 = v17;

    if (v18)
    {
      v19 = *(v11[7] + 8 * v16);

      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v20 = MEMORY[0x1E69E7CC0];
  v21 = *(v19 + 16);
  v22 = &off_185B6A000;
  if (v21)
  {
    v40 = a2;
    v41 = a3;
    v23 = objc_opt_self();
    v39 = v19;
    v24 = (v19 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      dispatch_group_enter(v9);
      v27 = [v23 sharedManager];
      v28 = sub_185B67E1C();
      v29 = swift_allocObject();
      v29[2] = v10;
      v29[3] = v25;
      v29[4] = v26;
      v29[5] = v9;
      v53 = sub_185AF36E4;
      v54 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v50 = 1107296256;
      v51 = sub_185AF1458;
      v52 = &block_descriptor_52;
      v30 = _Block_copy(&aBlock);

      v31 = v9;

      [v27 accessingRecordsForTCCService:v28 completion:v30];
      _Block_release(v30);

      v24 += 2;
      --v21;
    }

    while (v21);

    a2 = v40;
    a3 = v41;
    v20 = MEMORY[0x1E69E7CC0];
    v22 = &off_185B6A000;
  }

  else
  {
  }

  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v32 = sub_185B680FC();
  v33 = swift_allocObject();
  v33[2] = v10;
  v33[3] = a2;
  v33[4] = a3;
  v53 = sub_185AF36F0;
  v54 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v50 = *(v22 + 482);
  v51 = sub_185ACA0E8;
  v52 = &block_descriptor_58_0;
  v34 = _Block_copy(&aBlock);

  v35 = v42;
  sub_185B67CBC();
  v48 = v20;
  sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  v36 = v44;
  v37 = v47;
  sub_185B682CC();
  sub_185B680CC();
  _Block_release(v34);

  (*(v46 + 8))(v36, v37);
  (*(v43 + 8))(v35, v45);
}

uint64_t sub_185AF371C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t objectdestroy_12Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t sub_185AF3800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_185AF38B0()
{
  type metadata accessor for APDeviceKeyBagManager();
  swift_allocObject();
  result = sub_185AF38EC();
  qword_1EA8D2300 = result;
  return result;
}

void *sub_185AF38EC()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v23 = sub_185B680EC();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCFB8, &unk_185B6C8C0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v6;
  sub_185AC7294();
  sub_185B67CBC();
  aBlock[0] = v7;
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  v8 = v0;
  sub_185B682CC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v23);
  v9 = sub_185B6813C();
  *(v8 + 24) = v9;
  out_token = 0;
  v10 = *MEMORY[0x1E69B1A70];
  aBlock[4] = sub_185ACEAE0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACEA8C;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  v13 = notify_register_dispatch(v10, &out_token, v12, v11);
  _Block_release(v11);

  if (!v13)
  {
    return v8;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  __swift_project_value_buffer(v14, qword_1ED6F5130);
  v15 = sub_185B67B6C();
  v16 = sub_185B6809C();
  if (!os_log_type_enabled(v15, v16))
  {
LABEL_8:

    return v8;
  }

  v17 = swift_slowAlloc();
  result = swift_slowAlloc();
  aBlock[0] = result;
  *v17 = 136315394;
  if (v10)
  {
    v19 = result;
    result = MEMORY[0x1865FCF30](v10);
    if (v20)
    {
      v21 = sub_185ACB2C4(result, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v13;
      _os_log_impl(&dword_185AC1000, v15, v16, "could not register for %s: %u", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF3D6C()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_185AF3DD8()
{
  result = [objc_allocWithZone(type metadata accessor for APVisionOSDummyServer()) init];
  v1 = result;
  v2 = *&result[OBJC_IVAR___APVisionOSDummyServer_serviceInfo];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *&result[OBJC_IVAR___APVisionOSDummyServer_serviceQueue];
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 4;

      v8 = v6;
      v9 = v7;
      [v8 _setQueue_];
      [v8 setDelegate_];
      [v8 resume];

      --v3;
    }

    while (v3);
  }

  qword_1EA8D2350 = v1;
  return result;
}

uint64_t sub_185AF3F24()
{
  v0 = APGetReadServiceName();
  v1 = sub_185B67E4C();
  v3 = v2;

  v55 = v1;
  v56 = v3;
  v57[0] = APGetReadServiceInterface();
  v4 = APGetWriteServiceName();
  v5 = sub_185B67E4C();
  v7 = v6;

  v57[1] = v5;
  v57[2] = v7;
  v57[3] = APGetWriteServiceInterface(v8);
  v9 = APGetGuardServiceName();
  v10 = sub_185B67E4C();
  v12 = v11;

  v57[4] = v10;
  v57[5] = v12;
  v57[6] = APGetGuardServiceInterface(v13);
  v14 = APGetMaintenanceServiceName();
  v15 = sub_185B67E4C();
  v17 = v16;

  v57[7] = v15;
  v57[8] = v17;
  v57[9] = APGetMaintenanceServiceInterface(v18);
  v19 = APGetExtensionMonitorServiceName();
  v20 = sub_185B67E4C();
  v22 = v21;

  v57[10] = v20;
  v57[11] = v22;
  v57[12] = APGetExtensionMonitorServiceInterface(v23);
  v24 = APGetExtensionInfoServiceName();
  v25 = sub_185B67E4C();
  v27 = v26;

  v57[13] = v25;
  v57[14] = v27;
  v57[15] = APGetExtensionInfoServiceInterface(v28);
  v29 = APGetViewSubjectMonitorServiceName();
  v30 = sub_185B67E4C();
  v32 = v31;

  v57[16] = v30;
  v57[17] = v32;
  v57[18] = APGetViewSubjectMonitorServiceInterface(v33);
  v34 = APGetViewSubjectInfoServiceName();
  v35 = sub_185B67E4C();
  v37 = v36;

  v57[19] = v35;
  v57[20] = v37;
  v57[21] = APGetViewSubjectInfoServiceInterface(v38);
  v52 = MEMORY[0x1E69E7CC0];
  sub_185B4EA0C(0, 8, 0);
  v39 = v52;
  v40 = objc_opt_self();
  for (i = 0; i != 24; i += 3)
  {
    v43 = *&v54[i * 8 + 32];
    v42 = v57[i - 1];
    v44 = v57[i];

    v45 = v44;
    v46 = [v40 anonymousListener];
    v53 = v39;
    v48 = *(v39 + 16);
    v47 = *(v39 + 24);
    if (v48 >= v47 >> 1)
    {
      v50 = v46;
      sub_185B4EA0C((v47 > 1), v48 + 1, 1);
      v46 = v50;
      v39 = v53;
    }

    *(v39 + 16) = v48 + 1;
    v49 = (v39 + 32 * v48);
    v49[4] = v43;
    v49[5] = v42;
    v49[6] = v46;
    v49[7] = v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFE0, &unk_185B6C990);
  swift_arrayDestroy();
  return v39;
}

uint64_t sub_185AF4204(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___APVisionOSDummyServer_serviceInfo);
  v6 = (v5 + 56);
  v7 = *(v5 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      return 0;
    }

    v8 = *(v6 - 3);
    v9 = *(v6 - 1);
    v10 = *v6;
    if (v8 == a1 && *(v6 - 2) == a2)
    {
      break;
    }

    v6 += 4;
    if (sub_185B6859C())
    {
      goto LABEL_11;
    }
  }

  v8 = a1;
LABEL_11:

  v12 = v9;
  v13 = v10;
  return v8;
}

void sub_185AF42D0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___APVisionOSDummyServer_serviceInfo);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 56);
    while (v4 < *(v2 + 16))
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_185ADF590(0, &qword_1EA8CB620, 0x1E69E58C0);

      v8 = v6;
      v9 = v7;
      if ((sub_185B6828C() & 1) == 0)
      {

        ++v4;
        v5 += 4;
        if (v3 != v4)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

BOOL sub_185AF4498(uint64_t a1, void *a2)
{
  sub_185AF42D0(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v4;
    v9 = v5;
    [a2 _setQueue_];
    [a2 setExportedObject_];
    [a2 setExportedInterface_];
    [a2 resume];
  }

  return v7 != 0;
}

id sub_185AF45AC()
{
  v1 = v0;
  v12 = sub_185B680EC();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = OBJC_IVAR___APVisionOSDummyServer_serviceQueue;
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *&v0[v11] = sub_185B6813C();
  v7 = OBJC_IVAR___APVisionOSDummyServer_serviceInfo;
  *&v1[v7] = sub_185AF3F24();
  v8 = type metadata accessor for APVisionOSDummyServer();
  v13.receiver = v1;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_185AF4820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APVisionOSDummyServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_185AF4A5C(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a6(v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_185AF4D48(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

uint64_t sub_185AF4E90(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a4);
  sub_185B67ADC();
  v9[2](v9, 0);
  _Block_release(v9);
  return (*(v6 + 8))(v8, v5);
}

void sub_185AF5054(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);

  _Block_release(v3);
}

uint64_t sub_185AF52E8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a4);
  sub_185B67ADC();
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v10 = sub_185B6825C();
  v9[2](v9, v10, 0);
  _Block_release(v9);

  return (*(v6 + 8))(v8, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_185AF5620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_185AF5668(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_185AF56B8(uint64_t a1)
{
  v2 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 97;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = v4;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x8000000185B755F0;
  v6 = v2;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_185B67D7C();

  v9 = [v7 initWithDomain:v6 code:-4 userInfo:v8];

  v10 = sub_185B6791C();
  (*(a1 + 16))(a1, v10);
}

void sub_185AF5858(uint64_t a1)
{
  v2 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 101;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = v4;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x8000000185B755C0;
  v6 = v2;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_185B67D7C();

  v9 = [v7 initWithDomain:v6 code:-4 userInfo:v8];

  v10 = sub_185B6791C();
  (*(a1 + 16))(a1, v10);
}

void sub_185AF59F8(uint64_t a1)
{
  v2 = [objc_allocWithZone(APClientState) init];
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_185B530AC(MEMORY[0x1E69E7CC0]);
  v5 = objc_allocWithZone(APStateDump);
  v6 = _s17AccessListWrapperCMa();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses] = v3;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = _s19AssertionMapWrapperCMa();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions] = v4;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  v12 = [v5 initWithState:v2 accesses:v8 authAssertions:v11 dtoEnabled:0];

  (*(a1 + 16))(a1, v12, 0);
}

void sub_185AF5EA8(void *a1, int a2, int a3, void *aBlock, void (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a1;
  a5();
  _Block_release(v7);
  _Block_release(v7);
}

id sub_185AF5F24(uint64_t a1)
{
  result = APGetViewSubjectInfoServiceInterface(a1);
  qword_1EA8D2358 = result;
  return result;
}

id sub_185AF6004()
{
  if (qword_1EA8CC3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2358;

  return v0;
}

id sub_185AF60A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185AF6130@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APViewSubjectInfoService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection24APViewSubjectInfoService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185AF61AC(void *a1)
{
  v2 = type metadata accessor for APViewSubjectInfoClient();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF467748;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_connection] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_185AF628C(uint64_t a1)
{
  result = sub_185AF62D0(&qword_1EA8CBAC8, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185AF62D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APViewSubjectInfoClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185AF6310(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_185B67AFC();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = *(a5 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_connection);
  _Block_copy(a6);
  LODWORD(v14) = [v14 processIdentifier];
  v15 = a5 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v15 + 8);
  v18 = a1;
  v19 = v26;
  sub_185B1DEAC(v18, v26, v11, v14, Strong, v17, v31);
  swift_unknownObjectRelease();
  sub_185ACF5CC(v11, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (*(&v31[0] + 1))
  {
    v32[2] = v31[2];
    v32[3] = v31[3];
    v32[4] = v31[4];
    v32[5] = v31[5];
    v32[0] = v31[0];
    v32[1] = v31[1];
    v13(v11, 1, 1, v12);
    v20 = sub_185B1E6B4(v18, v19, v11, v24, v25);
    v22 = v21;
    sub_185ACF5CC(v11, &unk_1EA8CD9A0, &unk_185B6C2C0);
    memset(v27, 0, sizeof(v27));
    LOBYTE(v28) = -2;
    *(&v28 + 1) = v20;
    *&v29 = v22;
    WORD4(v29) = 1;
    v30 = v32[0];
    v33[2] = v28;
    v33[3] = v29;
    memset(v33, 0, 32);
    v33[4] = v32[0];
    _Block_copy(a6);

    sub_185AFFF40(v33, v32, a6);
    _Block_release(a6);
    sub_185AF6A24(v27);
    sub_185AF6A78(v32);
  }

  else
  {
    sub_185ACF5CC(v31, &qword_1EA8CD008, &unk_185B6CA30);
    a6[2](a6, 1, 0);
  }

  _Block_release(a6);
}

uint64_t sub_185AF65A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v11, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_185AC66F8(v11, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 64))(0xD000000000000013, 0x8000000185B75730, v6, v7);
    (*(a2 + 16))(a2, (v8 & 1) == 0, 0);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = *(a2 + 16);

    return v10(a2, 1, 0);
  }
}

void sub_185AF66D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v7 = sub_185AD006C(0xD000000000000013, 0x8000000185B75730, 0);
  if (v7)
  {
    v13 = v7;
    v14 = [v7 localizedName];
    sub_185B67E4C();

    v15 = sub_185B67E1C();
    (*(a3 + 16))(a3);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1EA8D2278);

    v9 = sub_185B67B6C();
    v10 = sub_185B680AC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_185ACB2C4(a1, a2, &v16);
      _os_log_impl(&dword_185AC1000, v9, v10, "no containing bundle record for viewSubject %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1865FE2F0](v12, -1, -1);
      MEMORY[0x1865FE2F0](v11, -1, -1);
    }

    v15 = sub_185B67E1C();
    (*(a3 + 16))(a3);
  }
}

void sub_185AF6910(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v10, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = (*(v7 + 24))(v6, v7);
    sub_185AC3A7C(0xD000000000000013, 0x8000000185B75730, v8);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v9 = sub_185B67FBC();
  (*(a2 + 16))(a2, v9, 0);
}

const char *AppProtectionFeatures.feature.getter()
{
  if (*v0)
  {
    return "no_passcode_fallback";
  }

  else
  {
    return "protected_apps";
  }
}

uint64_t AppProtectionFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v1);
  return sub_185B686AC();
}

unint64_t sub_185AF6B9C(uint64_t a1)
{
  v2 = sub_185B682FC();

  return sub_185AF6F64(a1, v2);
}

unint64_t sub_185AF6BE0(uint64_t a1, uint64_t a2)
{
  sub_185B67E4C();
  sub_185B6866C();
  sub_185B67EEC();
  v3 = sub_185B686AC();

  return sub_185AF7088(a1, v3);
}

unint64_t sub_185AF6C74(char a1)
{
  sub_185B6866C();
  MEMORY[0x1865FD6D0](a1 & 1);
  v2 = sub_185B686AC();

  return sub_185AF718C(a1 & 1, v2);
}

uint64_t getEnumTagSinglePayload for AppProtectionFeatures(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppProtectionFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_185AF6E20(uint64_t a1)
{
  sub_185B67AFC();
  sub_185ACA328(&qword_1EA8CD490, MEMORY[0x1E69695B8]);
  v2 = sub_185B67DAC();

  return sub_185AF71FC(a1, v2);
}

unint64_t sub_185AF6EA4(uint64_t a1)
{
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  v2 = sub_185B686AC();

  return sub_185AF73A8(a1, v2);
}

unint64_t sub_185AF6F20(uint64_t a1)
{
  v2 = sub_185B6865C();

  return sub_185AC9178(a1, v2);
}

unint64_t sub_185AF6F64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_185AF702C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865FD360](v9, a1);
      sub_185AD851C(v9);
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

unint64_t sub_185AF7088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_185B67E4C();
      v8 = v7;
      if (v6 == sub_185B67E4C() && v8 == v9)
      {
        break;
      }

      v11 = sub_185B6859C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_185AF718C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_185AF71FC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_185ACA328(&qword_1ED6F45C0, MEMORY[0x1E69695C8]);
      v15 = sub_185B67DEC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_185AF73A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_185AF7460(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185AF96B0(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3C8BC(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3C8BC((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF970C(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56BB4(v9, v13);
      return sub_185AF9768(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185AF96B0(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185AF9768(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185AF96B0(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF97BC(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9818(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185AF9768(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF767C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185ACEDC4(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3CB40(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3CB40((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF959C(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56BE8(v9, v13);
      return sub_185ACED70(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185ACEDC4(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185ACED70(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185ACEDC4(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF95F8(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9654(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185ACED70(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF7898(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185AF948C(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3CC7C(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3CC7C((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF94F4(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56D04(v9, v13);
      return sub_185AF94C4(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185AF948C(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185AF94C4(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185AF948C(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF952C(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9564(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185AF94C4(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF7AB4()
{
  sub_185B6836C();

  v0 = sub_185B6856C();
  MEMORY[0x1865FCF60](v0);

  MEMORY[0x1865FCF60](32, 0xE100000000000000);
  v1 = sub_185B6856C();
  MEMORY[0x1865FCF60](v1);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0x5668746957646950;
}

uint64_t sub_185AF7BE8()
{
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  return sub_185B686AC();
}

uint64_t sub_185AF7C80(uint64_t a1)
{
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  return sub_185B686AC();
}

uint64_t sub_185AF7CD8(unint64_t a1, void *a2, uint64_t (**a3)(uint64_t a1), uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a4;
  v6 = a1;
  v30 = HIDWORD(a1);
  v31 = a3;
  v34 = sub_185B67C9C();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_185B67CDC();
  v37 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B6817C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 48) = 0;
  v29 = sub_185ADF590(0, &qword_1EA8CB640, 0x1E69E9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD028, &qword_185B6CCD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_185B6BB70;
  sub_185B6816C();
  aBlock = v14;
  sub_185AF907C(&qword_1EA8CD030, MEMORY[0x1E69E80C0], MEMORY[0x1E69E80C8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD038, &unk_185B6CCD8);
  sub_185AC73B8(&unk_1EA8CD040, &qword_1EA8CD038, &unk_185B6CCD8);
  sub_185B682CC();
  v15 = sub_185B6819C();
  (*(v11 + 8))(v13, v10);
  *(v5 + 16) = v15;
  v17 = v30;
  v16 = v31;
  *(v5 + 24) = v6;
  *(v5 + 28) = v17;
  v18 = v36;
  *(v5 + 32) = v16;
  *(v5 + 40) = v18;
  swift_getObjectType();
  v19 = swift_allocObject();
  swift_weakInit();
  v43 = sub_185AF906C;
  v44 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v31 = &v41;
  v41 = sub_185ACA0E8;
  v42 = &block_descriptor_7;
  v20 = _Block_copy(&aBlock);

  v21 = v32;
  sub_185B67CBC();
  sub_185AF8640();
  sub_185B681BC();
  _Block_release(v20);
  v22 = *(v38 + 8);
  v38 += 8;
  v30 = v22;
  v23 = v34;
  v22(v8, v34);
  v24 = *(v37 + 8);
  v37 += 8;
  v29 = v24;
  v25 = v33;
  v24(v21, v33);

  swift_getObjectType();
  v26 = swift_allocObject();
  swift_weakInit();

  v43 = sub_185AF9074;
  v44 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_185ACA0E8;
  v42 = &block_descriptor_37_0;
  v27 = _Block_copy(&aBlock);

  sub_185B67CBC();
  sub_185AF8640();
  sub_185B681AC();
  _Block_release(v27);

  v30(v8, v23);
  v29(v21, v25);

  return v5;
}

uint64_t sub_185AF8268(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v3 = sub_185B67B8C();
    __swift_project_value_buffer(v3, qword_1EA8D2278);

    v4 = sub_185B67B6C();
    v5 = sub_185B680AC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      v8 = sub_185AF7AB4();
      v10 = sub_185ACB2C4(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_185AC1000, v4, v5, "reg handler for %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1865FE2F0](v7, -1, -1);
      MEMORY[0x1865FE2F0](v6, -1, -1);
    }

    if ((sub_185AF9188(*(v2 + 24)) & 1) == 0 && *(v2 + 48) == 1 && (*(v2 + 49) & 1) == 0)
    {
      *(v2 + 49) = 1;
      (*(v2 + 32))(v2);
    }
  }

  return result;
}

uint64_t sub_185AF8428(uint64_t a1)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v1 = sub_185B67B8C();
  __swift_project_value_buffer(v1, qword_1EA8D2278);

  v2 = sub_185B67B6C();
  v3 = sub_185B680AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v7 = Strong;
    if (Strong)
    {
      v8 = *(Strong + 24);
    }

    else
    {
      v8 = 0;
    }

    v13[1] = v8;
    v14 = v7 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD050, &unk_185B6CCE8);
    v9 = sub_185B67EBC();
    v11 = sub_185ACB2C4(v9, v10, v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_185AC1000, v2, v3, "target died for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1865FE2F0](v5, -1, -1);
    MEMORY[0x1865FE2F0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == 1 && (*(result + 49) & 1) == 0)
    {
      *(result + 49) = 1;
      (*(result + 32))();
    }
  }

  return result;
}

uint64_t sub_185AF8640()
{
  sub_185B67C9C();
  sub_185AF907C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  return sub_185B682CC();
}

void sub_185AF8718()
{
  *(v0 + 48) = 1;
  swift_getObjectType();
  sub_185B681DC();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v1 = sub_185B67B8C();
  __swift_project_value_buffer(v1, qword_1EA8D2278);

  oslog = sub_185B67B6C();
  v2 = sub_185B680AC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_185AF7AB4();
    v7 = sub_185ACB2C4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_185AC1000, oslog, v2, "started watching for death %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x1865FE2F0](v4, -1, -1);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }
}

uint64_t sub_185AF8894()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_185B681CC();
  swift_unknownObjectRelease();
  if ((*(v0 + 48) & 1) == 0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_185B681DC();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 50, 7);
}

void sub_185AF8998(unint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 8);
  sub_185AF8C64(&v3[4], a1, v1, &v19);
  os_unfair_lock_unlock(v3 + 8);
  if (v19)
  {
    sub_185AF8718();
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v5 = sub_185B680AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = sub_185AF7AB4();
      v10 = sub_185ACB2C4(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_185AC1000, oslog, v5, "started monitoring %s for death", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1865FE2F0](v7, -1, -1);
      MEMORY[0x1865FE2F0](v6, -1, -1);

      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67B8C();
    __swift_project_value_buffer(v11, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v12 = sub_185B680AC();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_185AF7AB4();
      v17 = sub_185ACB2C4(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_185AC1000, oslog, v12, "already monitoring %s for death", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1865FE2F0](v14, -1, -1);
      MEMORY[0x1865FE2F0](v13, -1, -1);
      goto LABEL_10;
    }
  }

LABEL_10:
}

unint64_t sub_185AF8C64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*(a1 + 8) + 16) && (result = sub_185AF6EA4(a2), (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(a3 + 16);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2;
    type metadata accessor for PidWatch();
    swift_allocObject();
    v10 = sub_185AF7CD8(a2, v11, sub_185AF9064, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + 8);
    result = sub_185B5222C(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 8) = v15;
  }

  *a4 = v10;
  return result;
}

uint64_t sub_185AF8D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 24);
    os_unfair_lock_lock((v6 + 32));
    v7 = sub_185ACEC50(*(v6 + 16), sub_185AF948C, sub_185AF94C4, sub_185B3CDC0);
    os_unfair_lock_unlock((v6 + 32));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = type metadata accessor for DispatchDeathMonitor();
      v10 = (v7 + 40);
      do
      {
        v11 = *v10;
        ObjectType = swift_getObjectType();
        v14[3] = v9;
        v14[4] = &off_1EF4678E8;
        v14[0] = v5;
        v13 = *(v11 + 8);
        swift_unknownObjectRetain();

        v13(a3, v14, ObjectType, v11);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        v10 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_185AF8F04()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for PidWithVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PidWithVersion(uint64_t result, int a2, int a3)
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

unint64_t sub_185AF8FEC()
{
  result = qword_1EA8CD018;
  if (!qword_1EA8CD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD018);
  }

  return result;
}

uint64_t sub_185AF907C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_185AF90C4(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_185B6792C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_185AF9188(uint64_t a1)
{
  sub_185ADF590(0, &unk_1EA8CD390, 0x1E69C75D0);
  v2 = sub_185B6863C();
  v3 = sub_185AF90C4(v2);

  [v3 auditToken];
  if (audit_token_to_pidversion(&v9) == HIDWORD(a1))
  {

    return 1;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1EA8D2278);
    v6 = sub_185B67B6C();
    v7 = sub_185B6808C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_185AC1000, v6, v7, "pid %d recycled when checking existence", v8, 8u);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_185AF988C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v105 = a2;
  v106 = a3;
  v103 = a1;
  v108 = sub_185B67B5C();
  v5 = *(v108 - 8);
  v6 = MEMORY[0x1EEE9AC00](v108);
  v101 = v7;
  v102 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v100 - v9;
  v11 = APDefaultAuthenticationLog(v8);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  v13 = __swift_project_value_buffer(v12, qword_1EA8D2278);
  sub_185B03ED8(v3, &v123);
  sub_185B03ED8(v3, &v119);
  sub_185B03ED8(v3, v116);
  sub_185B03ED8(v3, v114);
  sub_185B03ED8(v3, v112);
  sub_185B03ED8(v3, v110);
  v14 = sub_185B67B6C();
  v15 = sub_185B680AC();
  v16 = os_log_type_enabled(v14, v15);
  v107 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v109 = v18;
    *v17 = 136447490;
    v100 = v13;
    v19 = v123;

    sub_185AF6A78(&v123);
    v20 = sub_185ACB2C4(v19, *(&v19 + 1), &v109);

    *(v17 + 4) = v20;
    *(v17 + 12) = 1024;
    v21 = v122 != 0;
    sub_185AF6A78(&v119);
    *(v17 + 14) = v21;
    v104 = v5;
    *(v17 + 18) = 2082;
    if (v118)
    {
      v22 = v117;
    }

    else
    {
      v22 = 0x676E6968746F6E28;
    }

    if (v118)
    {
      v23 = v118;
    }

    else
    {
      v23 = 0xE900000000000029;
    }

    sub_185AF6A78(v116);
    v24 = sub_185ACB2C4(v22, v23, &v109);

    *(v17 + 20) = v24;
    *(v17 + 28) = 1024;
    LODWORD(v24) = v115;
    sub_185AF6A78(v114);
    *(v17 + 30) = v24;
    *(v17 + 34) = 2082;
    if (v113)
    {
      v25 = 0xD000000000000024;
    }

    else
    {
      v25 = 0xD00000000000001FLL;
    }

    if (v113)
    {
      v26 = "ice";
    }

    else
    {
      v26 = ".afterAuthentication";
    }

    sub_185AF6A78(v112);
    v27 = sub_185ACB2C4(v25, v26 | 0x8000000000000000, &v109);

    *(v17 + 36) = v27;
    *(v17 + 44) = 2082;
    v5 = v104;
    if (v111)
    {
      v28 = 0xD000000000000023;
    }

    else
    {
      v28 = 0xD000000000000018;
    }

    if (v111)
    {
      v29 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v29 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v110);
    v30 = sub_185ACB2C4(v28, v29 | 0x8000000000000000, &v109);
    v10 = v107;

    *(v17 + 46) = v30;
    _os_log_impl(&dword_185AC1000, v14, v15, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v17, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v18, -1, -1);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  else
  {
    sub_185AF6A78(v114);
    sub_185AF6A78(&v119);

    sub_185AF6A78(v110);
    sub_185AF6A78(v112);
    sub_185AF6A78(v116);
    sub_185AF6A78(&v123);
  }

  v31 = *(v4 + 89);
  v32 = *v4;
  v33 = *(v4 + 8);
  if (sub_185AFA92C(*v4, v33, (v4 + 48), v31) || (v34 = *(v4 + 24)) != 0 && sub_185AFA92C(*(v4 + 16), v34, (v4 + 48), v31))
  {
    v35 = *(v4 + 72);
    v36 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v35);
    if ((*(v36 + 64))(v32, v33, v35, v36))
    {
      v37 = sub_185B67B6C();
      v38 = sub_185B680AC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_185AC1000, v37, v38, "have cached authentication.", v39, 2u);
        MEMORY[0x1865FE2F0](v39, -1, -1);
      }

      v40 = *(v4 + 40);
      if (!v40)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    sub_185B03ED8(v4, &v123);
    v49 = v103;
    sub_185B03F10(v103, &v119);
    v50 = sub_185B67B6C();
    v51 = sub_185B680AC();
    sub_185AF6A24(v49);
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v112[0] = v53;
      *v52 = 136446466;
      if (BYTE8(v128))
      {
        v54 = 0xD000000000000024;
      }

      else
      {
        v54 = 0xD00000000000001FLL;
      }

      v104 = v5;
      if (BYTE8(v128))
      {
        v55 = "ice";
      }

      else
      {
        v55 = ".afterAuthentication";
      }

      sub_185AF6A78(&v123);
      v56 = sub_185ACB2C4(v54, v55 | 0x8000000000000000, v112);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      v57 = *(v49 + 16);
      v119 = *v49;
      v120 = v57;
      v121 = *(v49 + 32);
      v58 = *(v49 + 16);
      v116[0] = *v49;
      v116[1] = v58;
      LOBYTE(v117) = *(v49 + 32);
      sub_185AD04BC(&v119, v114, &qword_1EA8CD080, &unk_185B6CDF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
      v59 = sub_185B67EBC();
      v61 = sub_185ACB2C4(v59, v60, v112);

      *(v52 + 14) = v61;
      v5 = v104;
      _os_log_impl(&dword_185AC1000, v50, v51, "Begin auth with completion policy %{public}s, bind target: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      v62 = v53;
      v10 = v107;
      MEMORY[0x1865FE2F0](v62, -1, -1);
      MEMORY[0x1865FE2F0](v52, -1, -1);

      if ((*(v4 + 88) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {

      sub_185AF6A78(&v123);
      if ((*(v4 + 88) & 1) == 0)
      {
LABEL_43:
        v63 = *(v4 + 40);
        if (v63)
        {
          v64 = *(v4 + 32);
          v65 = *(v4 + 72);
          v66 = *(v4 + 80);
          __swift_project_boxed_opaque_existential_1((v4 + 48), v65);
          (*(v66 + 152))(v64, v63, 1, v105, v106, v65, v66);
        }

        else
        {
          v105(0);
        }

        v86 = v102;
        v87 = v108;
        (*(v5 + 16))(v102, v10, v108);
        sub_185B03ED8(v4, &v123);
        v88 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v89 = (v101 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v73 = swift_allocObject();
        (*(v5 + 32))(v73 + v88, v86, v87);
        v90 = (v73 + v89);
        v91 = v126;
        v90[2] = v125;
        v90[3] = v91;
        v92 = v128;
        v90[4] = v127;
        v90[5] = v92;
        v93 = v124;
        *v90 = v123;
        v90[1] = v93;
        v81 = sub_185B0779C;
        goto LABEL_55;
      }
    }

    v67 = *(v5 + 16);
    v68 = v102;
    v69 = v5;
    v70 = v108;
    v67(v102, v10, v108);
    sub_185B03ED8(v4, &v123);
    v71 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v72 = (v101 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v74 = v70;
    v5 = v69;
    (*(v69 + 32))(v73 + v71, v68, v74);
    v75 = (v73 + v72);
    v76 = v126;
    v75[2] = v125;
    v75[3] = v76;
    v77 = v128;
    v75[4] = v127;
    v75[5] = v77;
    v78 = v124;
    *v75 = v123;
    v75[1] = v78;
    v79 = (v73 + ((v72 + 103) & 0xFFFFFFFFFFFFFFF8));
    v80 = v106;
    *v79 = v105;
    v79[1] = v80;

    v81 = sub_185B07798;
LABEL_55:
    v94 = v81;

    v95 = sub_185B6820C();
    v96 = APDefaultAuthenticationLog(v95);
    sub_185B67B3C();

    v97 = *(v4 + 72);
    v98 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v97);
    (*(v98 + 72))(v103, v94, v73, v97, v98);

    return (*(v5 + 8))(v10, v108);
  }

  sub_185B03ED8(v4, &v123);
  sub_185B03ED8(v4, &v119);
  v41 = sub_185B67B6C();
  v42 = sub_185B680AC();
  if (os_log_type_enabled(v41, v42))
  {
    v104 = v5;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v114[0] = v44;
    *v43 = 136446466;
    v45 = v123;

    sub_185AF6A78(&v123);
    v46 = sub_185ACB2C4(v45, *(&v45 + 1), v114);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2082;
    if (*(&v120 + 1))
    {
      *&v116[0] = 1684955424;
      *(&v116[0] + 1) = 0xE400000000000000;
      MEMORY[0x1865FCF60](v120);

      MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

      v47 = *(&v116[0] + 1);
      v48 = *&v116[0];
    }

    else
    {
      v47 = 0xE200000000000000;
      v48 = 29545;
    }

    sub_185AF6A78(&v119);
    v82 = sub_185ACB2C4(v48, v47, v114);

    *(v43 + 14) = v82;
    _os_log_impl(&dword_185AC1000, v41, v42, "%{public}s %{public}s not locked. Unshielding.", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v44, -1, -1);
    MEMORY[0x1865FE2F0](v43, -1, -1);

    v5 = v104;
  }

  else
  {

    sub_185AF6A78(&v123);
    sub_185AF6A78(&v119);
  }

  v40 = *(v4 + 40);
  v10 = v107;
  if (!v40)
  {
    goto LABEL_52;
  }

LABEL_51:
  v83 = *(v4 + 32);
  v84 = *(v4 + 72);
  v85 = *(v4 + 80);
  __swift_project_boxed_opaque_existential_1((v4 + 48), v84);
  (*(v85 + 152))(v83, v40, 0, nullsub_1, 0, v84, v85);
LABEL_52:
  v105(0);
  return (*(v5 + 8))(v10, v108);
}

BOOL sub_185AFA488(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == 0xD000000000000030 && 0x8000000185B75960 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v6 = a3[3];
    v7 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v6);
    v8 = (*(v7 + 24))(v6, v7);
LABEL_5:
    v9 = *(v8 + 16);

    return v9 != 0;
  }

  if (a1 == 0xD000000000000030 && 0x8000000185B759A0 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    v8 = (*(v12 + 16))(v11, v12);
    goto LABEL_5;
  }

  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = sub_185AC3A7C(a1, a2, v15);

  return v16 & 1;
}

id sub_185AFA60C()
{
  v1 = [v0 infoDictionary];
  v2 = sub_185B67E1C();
  sub_185ADF590(0, &qword_1EA8CD090, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_185ADF590(0, &qword_1EA8CD098, 0x1E696AEC0);
  v4 = [v1 objectForKey:v2 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = sub_185B67E1C();
      v6 = [v8 containsObject_];

      return v6;
    }
  }

  else
  {
    sub_185ACF5CC(v11, &qword_1EA8CC830, &unk_185B6BEB0);
  }

  return 0;
}

id sub_185AFA79C()
{
  v1 = [v0 entitlements];
  v2 = sub_185B67E1C();
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_185AD093C(v9, &v10);
    swift_dynamicCast();
    v4 = [v6 BOOLValue];
  }

  else
  {
    sub_185ACF5CC(v9, &qword_1EA8CC830, &unk_185B6BEB0);
    return 0;
  }

  return v4;
}

unint64_t sub_185AFA8F0()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

BOOL sub_185AFA92C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a1 == 0xD000000000000030 && 0x8000000185B75960 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v8 = a3[3];
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v8);
    v10 = (*(v9 + 24))(v8, v9);
LABEL_5:
    v11 = *(v10 + 16);

    return v11 != 0;
  }

  if (a1 == 0xD000000000000030 && 0x8000000185B759A0 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    v10 = (*(v14 + 16))(v13, v14);
    goto LABEL_5;
  }

  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = (*(v19 + 40))(v18, v19);
  v21 = sub_185ACB848(v20, v17);
  if ((a4 & 1) == 0)
  {

    v22 = a3[3];
    v23 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v22);
    v21 = (*(v23 + 24))(v22, v23);
  }

  v24 = sub_185AC3A7C(a1, a2, v21);

  return v24 & 1;
}

unint64_t sub_185AFAB30()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void sub_185AFAB6C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_185B681FC();
  v7 = APDefaultAuthenticationLog(v6);
  sub_185B67B3C();

  v8 = a4[5];
  if (a1)
  {
    if (v8)
    {
      v9 = a4[4];
      v10 = a4[9];
      v11 = a4[10];
      __swift_project_boxed_opaque_existential_1(a4 + 6, v10);
      (*(v11 + 152))(v9, v8, 0, nullsub_1, 0, v10, v11);
    }
  }

  else if (v8)
  {
    v12 = a4[4];
    v13 = a4[9];
    v14 = a4[10];
    __swift_project_boxed_opaque_existential_1(a4 + 6, v13);
    (*(v14 + 160))(v12, v8, 1, nullsub_1, 0, v13, v14);
  }
}

uint64_t sub_185AFACB4(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_185B681FC();
  v10 = APDefaultAuthenticationLog(v9);
  sub_185B67B3C();

  v11 = a4[5];
  if (a1)
  {
    if (v11)
    {
      v12 = a4[4];
      v13 = a4[9];
      v14 = a4[10];
      __swift_project_boxed_opaque_existential_1(a4 + 6, v13);
      (*(v14 + 152))(v12, v11, 0, nullsub_1, 0, v13, v14);
    }

    a2 = 0;
  }

  else if (v11)
  {
    v15 = a4[4];
    v16 = a4[9];
    v17 = a4[10];
    __swift_project_boxed_opaque_existential_1(a4 + 6, v16);
    (*(v17 + 160))(v15, v11, 1, nullsub_1, 0, v16, v17);
  }

  return a5(a2);
}

uint64_t sub_185AFAE1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = HIDWORD(a3);
  v92 = HIDWORD(a4);
  v91 = HIDWORD(a5);
  v95 = HIDWORD(a6);
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v16 = sub_185B2EC58(a3, a4, a5, a6);
  v34 = v16;
  if (v16)
  {
    v88 = v15;
    v35 = a8[3];
    v36 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v35);
    if (((*(v36 + 96))(a3, a4, v98, v99, a1, a2, v35, v36) & 1) == 0)
    {
      v27 = v95;
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v45 = sub_185B67B8C();
      __swift_project_value_buffer(v45, qword_1EA8D2278);

      v46 = sub_185B67B6C();
      v47 = sub_185B680AC();

      if (os_log_type_enabled(v46, v47))
      {
        v15 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v104[0] = v48;
        *v15 = 67109378;
        atoken.val[0] = v96;
        atoken.val[1] = v88;
        atoken.val[2] = v97;
        atoken.val[3] = v92;
        atoken.val[4] = v98;
        atoken.val[5] = v91;
        atoken.val[6] = v99;
        atoken.val[7] = v95;
        *(v15 + 4) = audit_token_to_pid(&atoken);
        *(v15 + 8) = 2080;
        v49 = sub_185ACB2C4(a1, a2, v104);

        *(v15 + 10) = v49;
        v27 = v95;
        _os_log_impl(&dword_185AC1000, v46, v47, "Should not guard and track %d; access allowed to %s by entitlement", v15, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x1865FE2F0](v48, -1, -1);
        v50 = v15;
        LODWORD(v15) = v88;
        MEMORY[0x1865FE2F0](v50, -1, -1);

        v23 = v92;
        v22 = v91;
LABEL_30:
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        goto LABEL_57;
      }

      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      LODWORD(v15) = v88;
LABEL_56:
      v22 = v91;
      v23 = v92;
      goto LABEL_57;
    }

    objc_opt_self();
    v27 = v95;
    if (swift_dynamicCastObjCClass())
    {
      v37 = v34;
      LODWORD(v15) = v88;
      log = v37;
      if (sub_185AFA60C())
      {

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v38 = sub_185B67B8C();
        __swift_project_value_buffer(v38, qword_1EA8D2278);

        v39 = sub_185B67B6C();
        v40 = sub_185B680AC();

        if (os_log_type_enabled(v39, v40))
        {
          v15 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v104[0] = v41;
          *v15 = 67109378;
          atoken.val[0] = v96;
          atoken.val[1] = v88;
          v42 = v91;
          v23 = v92;
          atoken.val[2] = v97;
          atoken.val[3] = v92;
          atoken.val[4] = v98;
          atoken.val[5] = v91;
          atoken.val[6] = v99;
          atoken.val[7] = v95;
          *(v15 + 4) = audit_token_to_pid(&atoken);
          *(v15 + 8) = 2082;
          v43 = sub_185ACB2C4(a1, a2, v104);

          *(v15 + 10) = v43;
          v27 = v95;
          v44 = "Pid %d is a bundled executable but looks hidden, will allow access to %{public}s";
LABEL_29:
          _os_log_impl(&dword_185AC1000, v39, v40, v44, v15, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x1865FE2F0](v41, -1, -1);
          v59 = v15;
          LODWORD(v15) = v88;
          MEMORY[0x1865FE2F0](v59, -1, -1);

          v22 = v42;
          goto LABEL_30;
        }

LABEL_31:

        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        goto LABEL_56;
      }

      if (sub_185AFA79C())
      {

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v57 = sub_185B67B8C();
        __swift_project_value_buffer(v57, qword_1EA8D2278);

        v39 = sub_185B67B6C();
        v40 = sub_185B680AC();

        if (os_log_type_enabled(v39, v40))
        {
          v15 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v104[0] = v41;
          *v15 = 67109378;
          atoken.val[0] = v96;
          atoken.val[1] = v88;
          v42 = v91;
          v23 = v92;
          atoken.val[2] = v97;
          atoken.val[3] = v92;
          atoken.val[4] = v98;
          atoken.val[5] = v91;
          atoken.val[6] = v99;
          atoken.val[7] = v95;
          *(v15 + 4) = audit_token_to_pid(&atoken);
          *(v15 + 8) = 2082;
          v58 = sub_185ACB2C4(a1, a2, v104);

          *(v15 + 10) = v58;
          v27 = v95;
          v44 = "Pid %d is a system shell, will allow access to %{public}s";
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v60 = [v37 bundleIdentifier];
      v61 = v37;
      v62 = v60;

      if (v62)
      {
        v84 = sub_185B67E4C();
        v55 = v63;

        sub_185ADF8F0(a8, v104);
        if (v55)
        {

          v56 = 0;
LABEL_54:
          *atoken.val = a1;
          *&atoken.val[2] = a2;
          *&atoken.val[4] = 0;
          *&atoken.val[6] = 0;
          v77 = v84;
          goto LABEL_55;
        }
      }

      else
      {
        sub_185ADF8F0(a8, v104);
        v84 = 0;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v78 = sub_185B67B8C();
      __swift_project_value_buffer(v78, qword_1EA8D2278);
      v79 = sub_185B67B6C();
      v80 = sub_185B6809C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_185AC1000, v79, v80, "can't complete after shielding when we're not shielding; setting completionPolicy to afterAuthentication", v81, 2u);
        v82 = v81;
        v27 = v95;
        MEMORY[0x1865FE2F0](v82, -1, -1);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_54;
    }

    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    LODWORD(v15) = v88;
    if (v51)
    {
      v52 = [v51 bundleIdentifier];
      if (v52)
      {
        v53 = v52;
        loga = sub_185B67E4C();
        v55 = v54;

        sub_185ADF8F0(a8, v104);
        if (v55)
        {

          v56 = 0;
LABEL_45:
          v27 = v95;
          *atoken.val = a1;
          *&atoken.val[2] = a2;
          *&atoken.val[4] = 0;
          *&atoken.val[6] = 0;
          v77 = loga;
LABEL_55:
          *&v101 = v77;
          *(&v101 + 1) = v55;
          sub_185AC66F8(v104, v102);
          WORD4(v103) = v56;
          HIDWORD(v103) = a7;
          v28 = *atoken.val;
          v29 = *&atoken.val[4];
          v30 = v101;
          v31 = v102[0];
          v32 = v102[1];
          v33 = v103;
          goto LABEL_56;
        }
      }

      else
      {
        sub_185ADF8F0(a8, v104);
        loga = 0;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v73 = sub_185B67B8C();
      __swift_project_value_buffer(v73, qword_1EA8D2278);
      v74 = sub_185B67B6C();
      v75 = sub_185B6809C();
      if (os_log_type_enabled(v74, v75))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_185AC1000, v74, v75, "can't complete after shielding when we're not shielding; setting completionPolicy to afterAuthentication", v15, 2u);
        v76 = v15;
        LODWORD(v15) = v88;
        MEMORY[0x1865FE2F0](v76, -1, -1);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_45;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v64 = sub_185B67B8C();
    __swift_project_value_buffer(v64, qword_1EA8D2278);

    v65 = v34;
    v66 = sub_185B67B6C();
    v67 = sub_185B6808C();

    logb = v66;
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *atoken.val = v70;
      *v68 = 138412546;
      *(v68 + 4) = v65;
      *v69 = v34;
      *(v68 + 12) = 2082;
      v71 = v65;
      v72 = sub_185ACB2C4(a1, a2, &atoken);

      *(v68 + 14) = v72;
      _os_log_impl(&dword_185AC1000, logb, v67, "Record: %@ is neither an application nor extension. This should not be possible. Will allow access to %{public}s", v68, 0x16u);
      sub_185ACF5CC(v69, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x1865FE2F0](v70, -1, -1);
      MEMORY[0x1865FE2F0](v68, -1, -1);
    }

    else
    {
    }

    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v25 = a8;
    v27 = v95;
    LODWORD(v15) = v88;
    v22 = v91;
    v23 = v92;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1EA8D2278);

    v18 = sub_185B67B6C();
    v19 = sub_185B680AC();

    if (!os_log_type_enabled(v18, v19))
    {

      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v22 = v91;
      v23 = v92;
      v27 = v95;
LABEL_57:
      v25 = a8;
      goto LABEL_58;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v104[0] = v21;
    *v20 = 67109378;
    atoken.val[0] = v96;
    atoken.val[1] = v15;
    v22 = v91;
    v23 = v92;
    atoken.val[2] = v97;
    atoken.val[3] = v92;
    atoken.val[4] = v98;
    atoken.val[5] = v91;
    atoken.val[6] = v99;
    atoken.val[7] = v95;
    *(v20 + 4) = audit_token_to_pid(&atoken);
    *(v20 + 8) = 2082;
    v24 = sub_185ACB2C4(a1, a2, v104);

    *(v20 + 10) = v24;
    v25 = a8;
    _os_log_impl(&dword_185AC1000, v18, v19, "Pid %d is not a bundled executable that we recognize, will allow access to %{public}s", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x1865FE2F0](v21, -1, -1);
    v26 = v20;
    v27 = v95;
    MEMORY[0x1865FE2F0](v26, -1, -1);

    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

LABEL_58:
  *a9 = v28;
  *(a9 + 16) = v29;
  *(a9 + 32) = v30;
  *(a9 + 48) = v31;
  *(a9 + 64) = v32;
  *(a9 + 80) = v33;
  *(a9 + 96) = a10;
  *(a9 + 104) = v96;
  *(a9 + 108) = v15;
  *(a9 + 112) = v97;
  *(a9 + 116) = v23;
  *(a9 + 120) = v98;
  *(a9 + 124) = v22;
  *(a9 + 128) = v99;
  *(a9 + 132) = v27;
  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

void sub_185AFBA68(int a1, uint64_t a2, unint64_t a3, void *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11, __int16 a12, void (*a13)(void), uint64_t a14)
{
  v70 = a8;
  v71 = a7;
  v72 = a6;
  v66 = a1;
  v18 = sub_185B67B1C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v65[1] = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_185B67E0C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65[0] = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v69 = a11;
  v68 = a10;
  v67 = a9;
  v22 = sub_185B67B8C();
  v23 = __swift_project_value_buffer(v22, qword_1EA8D2278);
  sub_185B06EF0(a4, v78);

  v24 = sub_185B67B6C();
  v25 = sub_185B680AC();

  v26 = os_log_type_enabled(v24, v25);
  v65[2] = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v65[3] = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    *&v77[0] = v29;
    *v28 = 67109890;
    *(v28 + 4) = v66;
    *(v28 + 8) = 2082;
    *(v28 + 10) = sub_185ACB2C4(a2, a3, v77);
    *(v28 + 18) = 2080;
    v30 = APDataSetAccessGrantReason.description.getter(v79);
    v32 = v31;
    sub_185B06EBC(v78);
    v33 = sub_185ACB2C4(v30, v32, v77);

    *(v28 + 20) = v33;
    *(v28 + 28) = 1024;
    *(v28 + 30) = a5;
    _os_log_impl(&dword_185AC1000, v24, v25, "mark %d as accessing %{public}s for reason %s monitoring %d", v28, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v29, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  else
  {

    sub_185B06EBC(v78);
  }

  v34 = v72;
  v35 = v72[9];
  v36 = v72[10];
  __swift_project_boxed_opaque_existential_1(v72 + 6, v35);
  v38 = *v34;
  v37 = v34[1];
  (*(v36 + 104))(a4[13], a4[14], a4[15], a4[16], v38, v37, a4[12], v71, v70, v67, v68, v69, v35, v36, v65[0]);
  v70 = v38;
  v71 = v37;
  v69 = a14;
  v68 = a13;
  v39 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v40 = sub_185AD006C(v38, v37, 0);
  if (v40)
  {
    v55 = v40;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    sub_185B67EAC();
    if (sub_185B67EFC() > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_185B6BB70;
      v67 = v55;
      v59 = [v55 localizedName];
      v60 = sub_185B67E4C();
      v62 = v61;

      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = sub_185B06CBC();
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      v47 = sub_185B67E7C();
      v48 = v63;

      goto LABEL_11;
    }
  }

  else
  {
    sub_185B03ED8(v72, v77);
    v41 = sub_185B67B6C();
    v42 = sub_185B6808C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v73[0] = v44;
      *v43 = 136446210;
      v45 = v77[0];

      sub_185AF6A78(v77);
      v46 = sub_185ACB2C4(v45, *(&v45 + 1), v73);

      *(v43 + 4) = v46;
      _os_log_impl(&dword_185AC1000, v41, v42, "could not fetch bundle record for %{public}s to generate authentication description", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x1865FE2F0](v44, -1, -1);
      MEMORY[0x1865FE2F0](v43, -1, -1);
    }

    else
    {

      sub_185AF6A78(v77);
    }
  }

  v47 = 0;
  v48 = 0;
LABEL_11:
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v64 = sub_185B2EC58(a4[13], a4[14], a4[15], a4[16]);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v68(0);
  }

  else
  {
    v67 = v48;

    v49 = v72[9];
    v50 = v72[10];
    __swift_project_boxed_opaque_existential_1(v72 + 6, v49);
    v51 = (*(v50 + 16))(v49, v50);
    v53 = v70;
    v52 = v71;
    LOBYTE(v49) = sub_185AC3A7C(v70, v71, v51);

    v54 = *(a4 + 15);
    v73[0] = *(a4 + 13);
    v73[1] = v54;
    LOBYTE(v74) = v49 & 1;
    *(&v74 + 1) = v47;
    *&v75 = v67;
    WORD4(v75) = a12 & 0x101;
    *&v76 = v53;
    *(&v76 + 1) = v52;
    v77[3] = v75;
    v77[4] = v76;
    v77[1] = v54;
    v77[2] = v74;
    v77[0] = v73[0];

    sub_185AF988C(v77, v68, v69);
    sub_185AF6A24(v73);
  }
}

uint64_t sub_185AFC30C(void *a1, char a2, int a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7, uint64_t (*a8)(void))
{
  if (a2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);

    sub_185B06F30(a1, 1);
    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    sub_185B06F3C(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = a4;
      v20 = v18;
      v36 = v18;
      *v16 = 67109634;
      *(v16 + 4) = a3;
      *(v16 + 8) = 2082;
      *(v16 + 10) = sub_185ACB2C4(v19, a5, &v36);
      *(v16 + 18) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 20) = v22;
      *v17 = v22;
      _os_log_impl(&dword_185AC1000, v14, v15, "could not check if %d was entitled to access %{public}s: %@", v16, 0x1Cu);
      sub_185ACF5CC(v17, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    v23 = a1;
    return a6(v23);
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v31 = sub_185B67B8C();
    __swift_project_value_buffer(v31, qword_1EA8D2278);

    v32 = sub_185B67B6C();
    v33 = sub_185B680AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v34 = 67109378;
      *(v34 + 4) = a3;
      *(v34 + 8) = 2082;
      *(v34 + 10) = sub_185ACB2C4(a4, a5, &v36);
      _os_log_impl(&dword_185AC1000, v32, v33, "%d was not entitled to access %{public}s -> no auth necessary. ", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1865FE2F0](v35, -1, -1);
      MEMORY[0x1865FE2F0](v34, -1, -1);
    }

    v23 = 0;
    return a6(v23);
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v25 = sub_185B67B8C();
  __swift_project_value_buffer(v25, qword_1EA8D2278);

  v26 = sub_185B67B6C();
  v27 = sub_185B680AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 67109378;
    *(v28 + 4) = a3;
    *(v28 + 8) = 2082;
    *(v28 + 10) = sub_185ACB2C4(a4, a5, &v36);
    _os_log_impl(&dword_185AC1000, v26, v27, "%d was entitled to access %{public}s -> do auth", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x1865FE2F0](v29, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  return a8();
}

id sub_185AFC74C(uint64_t a1)
{
  result = APGetGuardServiceInterface(a1);
  qword_1EA8D2320 = result;
  return result;
}

void sub_185AFC774(void (*a1)(id), uint64_t a2, void (*a3)(void *))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v18);
    swift_unknownObjectRelease();
    sub_185AC66F8(v18, v19);
    a3(v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v6 = sub_185B67B8C();
    __swift_project_value_buffer(v6, qword_1EA8D2278);
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_185AC1000, v7, v8, "No policy for guard!", v9, 2u);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    v10 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v12 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v13 = MEMORY[0x1E69E6158];
    *(inited + 72) = v12;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v13;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v14 = v10;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_185B67D7C();

    v17 = [v15 initWithDomain:v14 code:6 userInfo:v16];

    a1(v17);
  }
}

uint64_t sub_185AFCA24(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v35 = a6;
  v34 = a5;
  v33 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = *&a4[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  [v12 auditToken];
  v13 = v37[0];
  v14 = v37[1];
  v16 = v37[2];
  v15 = v37[3];
  v17 = [v12 processIdentifier];
  sub_185ADF8F0(v33, v36);
  v33 = a2;
  sub_185AFAE1C(a2, a3, v13, v14, v16, v15, v17, v36, v37, 0x7FFFFFFFFFFFFFFFLL);
  [v12 auditToken];
  v32 = v36[0];
  v18 = v36[2];
  v31 = v36[1];
  v19 = v36[3];
  v20 = sub_185B67AFC();
  v21 = 1;
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v22 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v23 = *&a4[v22];
  if (*(v23 + 16))
  {

    v24 = v33;
    v25 = sub_185AC9F40(v33, a3);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      v21 = v27 < 1;
    }

    else
    {
    }
  }

  else
  {
    v24 = v33;
  }

  v28 = a4;
  v29 = v35;

  sub_185B0410C(v32, v31, v18, v19, v11, 1, v21, v37, v28, v24, a3, v34, v29, qword_1EF468088, &unk_1EF4680B0, sub_185B07788, &unk_1EF4680D8, sub_185B07778, sub_185B077A0, sub_185B00C18);

  sub_185ACF5CC(v11, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v37);
}

uint64_t sub_185AFCD8C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, char *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v43 = a8;
  v42 = a7;
  v41 = a6;
  v40 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  v19 = *&a5[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  LODWORD(v19) = [v19 processIdentifier];
  sub_185ADF8F0(v40, v44);
  v40 = a2;
  v20 = a2;
  v21 = a3;
  v22 = v19;
  v23 = v14;
  sub_185AFAE1C(v20, a3, v15, v16, v17, v18, v22, v44, v45, v41);
  v24 = a4[1];
  v41 = *a4;
  v26 = a4[2];
  v25 = a4[3];
  v27 = sub_185B67AFC();
  v28 = 1;
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v29 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v30 = *&a5[v29];
  if (*(v30 + 16))
  {

    v31 = v40;
    v32 = sub_185AC9F40(v40, v21);
    if (v33)
    {
      v34 = *(*(v30 + 56) + 8 * v32);

      v28 = v34 < 1;
    }

    else
    {
    }
  }

  else
  {
    v31 = v40;
  }

  v35 = v21;
  v36 = a5;
  v37 = v43;

  sub_185B0410C(v41, v24, v26, v25, v23, 1, v28, v45, v36, v31, v35, v42, v37, qword_1EF467F48, &unk_1EF467F70, sub_185B07788, &unk_1EF467F98, sub_185B07778, sub_185B077A0, sub_185B018B8);

  sub_185ACF5CC(v23, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v45);
}

void sub_185AFD150(void *a1, void (*a2)(id, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_185AFA488(a4, a5, a1))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 64))(a4, a5, v9, v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a2(v12, 0);
}

uint64_t sub_185AFD258(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, char *a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v43 = a8;
  v39 = a7;
  v42 = a6;
  v41 = a1;
  v44 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v17 = *a4;
  v16 = a4[1];
  v18 = a4[2];
  v19 = a4[3];
  v20 = *&a5[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  v21 = [v20 processIdentifier];
  sub_185ADF8F0(v41, v45);
  v40 = a2;
  v22 = a2;
  v23 = a3;
  sub_185AFAE1C(v22, a3, v17, v16, v18, v19, v21, v45, v46, v42);
  [v20 auditToken];
  v42 = v45[0];
  v24 = v45[2];
  v41 = v45[1];
  v25 = v45[3];
  v26 = sub_185B67AFC();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, v39, v26);
  v28 = 1;
  (*(v27 + 56))(v15, 0, 1, v26);
  v29 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v30 = *&a5[v29];
  if (*(v30 + 16))
  {

    v31 = v40;
    v32 = sub_185AC9F40(v40, v23);
    if (v33)
    {
      v34 = *(*(v30 + 56) + 8 * v32);

      v28 = v34 < 1;
    }

    else
    {
    }
  }

  else
  {
    v31 = v40;
  }

  v35 = a5;
  v36 = v44;

  sub_185B0410C(v42, v41, v24, v25, v15, 0, v28, v46, v35, v31, v23, v43, v36, qword_1EF467E08, &unk_1EF467E30, sub_185B06EEC, &unk_1EF467E58, sub_185B06F28, sub_185B06F2C, sub_185B02558);

  sub_185ACF5CC(v15, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v46);
}

uint64_t sub_185AFD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1)
  {
    sub_185AFECAC(a3, a4);
  }

  else
  {
    sub_185AFEE10(a3, a4);
  }

  return a5(a1);
}

uint64_t sub_185AFD794(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v32 = a5;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1EA8D2278);
  v14 = *(v10 + 16);
  v31 = a3;
  v14(v12, a3, v9);
  v15 = a2;
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 67109378;
    *(v19 + 4) = [*&v15[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection] processIdentifier];

    *(v19 + 8) = 2082;
    v21 = sub_185B67AAC();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = sub_185ACB2C4(v21, v23, &v33);

    *(v19 + 10) = v24;
    _os_log_impl(&dword_185AC1000, v16, v17, "pid %d ending transaction with uuid %{public}s", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1865FE2F0](v20, -1, -1);
    v25 = v19;
    a4 = v30;
    MEMORY[0x1865FE2F0](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 112))(v31, v26, v27);
  return a4(0);
}

uint64_t sub_185AFDC10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v8 = sub_185B67B5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = APDefaultAuthenticationLog(v13);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v17 = sub_185B67B8C();
  __swift_project_value_buffer(v17, qword_1EA8D2278);
  v18 = a2;
  v19 = sub_185B67B6C();
  v20 = sub_185B680AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = [*(&v18->isa + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier];

    _os_log_impl(&dword_185AC1000, v19, v20, "pid %d authenticating unconditionally", v21, 8u);
    MEMORY[0x1865FE2F0](v21, -1, -1);
  }

  else
  {

    v19 = v18;
  }

  (*(v9 + 16))(v12, v15, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v22, v12, v8);
  v25 = (v24 + v23);
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;

  v27 = sub_185B6820C();
  v28 = APDefaultAuthenticationLog(v27);
  sub_185B67B3C();

  memset(v37, 0, sizeof(v37));
  LOBYTE(v38) = -2;
  *(&v38 + 1) = v35;
  *&v39 = v36;
  WORD4(v39) = 0;
  v40 = 0uLL;
  v41[2] = v38;
  v41[3] = v39;
  v41[4] = 0uLL;
  memset(v41, 0, 32);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = *(v30 + 72);

  v31(v41, sub_185B06DCC, v24, v29, v30);
  sub_185AF6A24(v37);

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_185AFDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = sub_185B681FC();
  v8 = APDefaultAuthenticationLog(v7);
  sub_185B67B3C();

  return a4(a1, a2);
}

uint64_t sub_185AFE0F4(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v12 = sub_185AD006C(a2, a3, 1);
  v35 = a6;
  if (!v12)
  {
    goto LABEL_2;
  }

  v27 = v12;
  v28 = [v12 identities];

  sub_185ADF590(0, &qword_1EA8CD088, 0x1E69635D8);
  v29 = sub_185B67F6C();

  if (v29 >> 62)
  {
    result = sub_185B6844C();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_20:

LABEL_2:
    v13 = 0;
    goto LABEL_3;
  }

LABEL_9:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1865FD3E0](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v31 = *(v29 + 32);
  }

  v13 = v31;

LABEL_3:
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = sub_185AC3A7C(a2, a3, v16);

  v18 = *&a4[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];
  v19 = v13;
  LODWORD(v18) = [v18 processIdentifier];
  sub_185ADF8F0(a1, v46);
  v43[0] = a2;
  v43[1] = a3;
  v44 = 0u;
  v45 = 0u;
  v46[20] = 257;
  v47 = v18;
  v20 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v21 = *&a4[v20];
  v22 = *(v21 + 16);

  if (!v22)
  {
LABEL_14:
    v26 = 1;
    goto LABEL_15;
  }

  v23 = sub_185AC9F40(a2, a3);
  if ((v24 & 1) == 0)
  {

    goto LABEL_14;
  }

  v25 = *(*(v21 + 56) + 8 * v23);

  v26 = v25 < 1;
LABEL_15:
  *&v38[0] = v13;
  *(&v38[0] + 1) = (v13 != 0) & v17;
  if (v13)
  {
    v32 = 0x80;
  }

  else
  {
    v32 = -2;
  }

  v38[1] = 0uLL;
  LOBYTE(v39) = v32;
  v40 = 0;
  *&v41 = 0;
  BYTE8(v41) = 1;
  BYTE9(v41) = v26;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  v48[3] = v41;
  v48[4] = v42;
  v48[1] = 0uLL;
  v48[2] = v39;
  v48[0] = v38[0];
  sub_185ADF8F0(a1, v37);
  v33 = swift_allocObject();
  sub_185AC66F8(v37, (v33 + 2));
  v33[7] = a2;
  v33[8] = a3;
  v33[9] = a4;
  v33[10] = a5;
  v33[11] = v35;
  swift_bridgeObjectRetain_n();
  v34 = a4;

  sub_185AF988C(v48, sub_185B06C90, v33);

  sub_185AF6A24(v38);

  return sub_185AF6A78(v43);
}

uint64_t sub_185AFE474(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_185B67E4C();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_185AFE5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a8;
  v61 = a6;
  v62 = a7;
  v14 = *a5;
  v56 = a5[1];
  v57 = v14;
  v15 = sub_185B67B1C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v53.i8[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_185B67E0C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v59.i64[0] = a4;
  LODWORD(a4) = [*(a4 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier];
  sub_185ADF8F0(a1, v71);
  v68[0] = a2;
  v68[1] = a3;
  v69 = 0u;
  v70 = 0u;
  v71[20] = 1;
  v72 = a4;
  v19 = a1[3];
  v18 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = *(v18 + 16);

  v21 = v19;
  v22 = a2;
  v23 = v20(v21, v18);
  v24 = sub_185AC3A7C(a2, a3, v23);

  v25 = (a5[2].i8[0] & 1) == 0;
  if (a5[2].i8[0])
  {
    v26 = -2;
  }

  else
  {
    v26 = v24 & 1;
  }

  v55 = v26;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = -1;
  }

  v28 = vdupq_n_s64(v27);
  if (v62)
  {
    v29 = v62;
    v30 = v59.i64[0];
  }

  else
  {
    v53 = v28;
    sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);

    v31 = a3;
    v32 = sub_185B245BC(a2, a3, 1);
    v30 = v59.i64[0];
    if (v32)
    {
      v33 = v32;
      sub_185B67DFC();
      type metadata accessor for APSettingsManager(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v35 = [objc_opt_self() bundleForClass_];
      sub_185B67B0C();
      v61 = sub_185B67EAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_185B6BB70;
      v37 = [v33 localizedName];
      v38 = sub_185B67E4C();
      v40 = v39;

      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_185B06CBC();
      *(v36 + 32) = v38;
      *(v36 + 40) = v40;
      v22 = a2;
      v61 = sub_185B67E7C();
      v29 = v41;
    }

    else
    {
      v29 = 0;
    }

    v28 = v53;
    a3 = v31;
  }

  v59 = vbicq_s8(v56, v28);
  v57 = vbicq_s8(v57, v28);
  v42 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v43 = *&v30[v42];
  v44 = *(v43 + 16);

  if (!v44)
  {
    goto LABEL_17;
  }

  v45 = sub_185AC9F40(v22, a3);
  if ((v46 & 1) == 0)
  {

LABEL_17:
    v48 = 1;
    goto LABEL_18;
  }

  v47 = *(*(v43 + 56) + 8 * v45);

  v48 = v47 < 1;
LABEL_18:
  v64[0] = v57;
  v64[1] = v59;
  v65.i8[0] = v55;
  v65.i64[1] = v61;
  v66.i64[0] = v29;
  v66.i8[8] = 0;
  v66.i8[9] = v48;
  v67.i64[0] = v22;
  v67.i64[1] = a3;
  v73[2] = v65;
  v73[3] = v66;
  v73[4] = v67;
  v73[0] = v57;
  v73[1] = v59;
  sub_185ADF8F0(v58, v63);
  v49 = swift_allocObject();
  sub_185AC66F8(v63, (v49 + 2));
  v49[7] = v22;
  v49[8] = a3;
  v50 = v60;
  v49[9] = v30;
  v49[10] = v50;
  v49[11] = a9;
  swift_bridgeObjectRetain_n();
  v51 = v30;

  sub_185AF988C(v73, sub_185B06C90, v49);

  sub_185AF6A24(v64);
  return sub_185AF6A78(v68);
}

uint64_t sub_185AFEA9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  if (a1)
  {
    (*(v15 + 160))(a3, a4, 1, a9, 0, v14, v15);
    sub_185AFECAC(a3, a4);
  }

  else
  {
    (*(v15 + 152))(a3, a4, 0, a8, 0, v14, v15);
    sub_185AFEE10(a3, a4);
  }

  return a6(a1);
}

uint64_t sub_185AFEBA8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_185AFECAC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  v22 = v9;
  *(v4 + v7) = 0x8000000000000000;
  v10 = sub_185AC9F40(a1, a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_185B4F8E8(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_185AC9F40(a1, a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_185B685DC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + v7) = v9;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v10;
  sub_185B50B70(v10, a1, a2, 0, v9);

  v10 = v4;
LABEL_8:
  while (1)
  {
    v17 = v9[7];
    v18 = *(v17 + 8 * v10);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v14)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v21 = v10;
    sub_185B51254();
    v10 = v21;
    v9 = v22;
    *(v4 + v7) = v22;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v17 + 8 * v10) = v19;
  return swift_endAccess();
}

uint64_t sub_185AFEE10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v7 = sub_185AC9F40(a1, a2);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v6);
    v13 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185B51254();
      v11 = v13;
    }

    sub_185B3D81C(v9, v11);
    *(v3 + v6) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_185AFEED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  sub_185B3E1A0(a3, a4);
  swift_endAccess();
  return a5(0);
}

uint64_t sub_185AFF048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  return (*(v14 + 168))(a2, a3, [*(a4 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier], a5, a6, a7, v13, v14);
}

uint64_t sub_185AFF280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v10 + 32))(v15 + v13, v12, v9);
  v16 = (v15 + v14);
  *v16 = v22;
  v16[1] = a5;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = *(v18 + 176);

  v19(a3, sub_185B05BFC, v15, v17, v18);
}

uint64_t sub_185AFF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = sub_185B2ED60(a3);
    v11 = v10;
    swift_endAccess();
    sub_185AE20B8(v9, v11);
  }

  return a4(a1);
}

void sub_185AFF688(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 200))(a2, v9, v10))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_185B05BBC;
    *(v12 + 24) = v11;
    v13 = OBJC_IVAR____TtC13AppProtection13APGuardClient_uuidToInvalidationBlockMap;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a3 + v13);
    *(a3 + v13) = 0x8000000000000000;
    sub_185B526C4(sub_185B05BC4, v12, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + v13) = v16;
    swift_endAccess();
  }

  else
  {
    v15 = sub_185AD0148(0xFuLL, 0xD000000000000031, 0x8000000185B75A40, 601, 0xD00000000000002BLL, 0x8000000185B75A80);
    a4();
  }
}

void sub_185AFF9A0()
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);
  oslog = sub_185B67B6C();
  v1 = sub_185B6808C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v1, "Couldn't cleanup assertions with policy", v2, 2u);
    MEMORY[0x1865FE2F0](v2, -1, -1);
  }
}

uint64_t sub_185AFFA88(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 192))([*(a2 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier], v3, v4);
}

id sub_185AFFC20()
{
  if (qword_1EA8CBEA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2320;

  return v0;
}

id sub_185AFFCC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185AFFD80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APGuardService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection14APGuardService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185AFFDFC(void *a1)
{
  v2 = type metadata accessor for APGuardClient();
  v3 = objc_allocWithZone(v2);
  v4 = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC13AppProtection13APGuardClient_uuidToInvalidationBlockMap] = v4;
  *&v3[OBJC_IVAR____TtC13AppProtection13APGuardClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF467A50;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection] = a1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_185AFFEB4(uint64_t a1)
{
  result = sub_185AFFEF8(&qword_1EA8CBE88, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185AFFEF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APGuardClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185AFFF40(__int128 *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v114 = sub_185B67B5C();
  v116 = *(v114 - 8);
  v6 = MEMORY[0x1EEE9AC00](v114);
  v107 = v7;
  v108 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v106 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_185ACA0F0;
  *(v11 + 24) = v10;
  v115 = v11;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v113 = v10;

  v13 = APDefaultAuthenticationLog(v12);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  v15 = __swift_project_value_buffer(v14, qword_1EA8D2278);
  sub_185B03ED8(a2, &v131);
  sub_185B03ED8(a2, &v127);
  sub_185B03ED8(a2, v124);
  sub_185B03ED8(a2, v122);
  sub_185B03ED8(a2, v120);
  sub_185B03ED8(a2, v118);
  v112 = v15;
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v111 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v117 = v20;
    *v19 = 136447490;
    v21 = v131;

    sub_185AF6A78(&v131);
    v22 = sub_185ACB2C4(v21, *(&v21 + 1), &v117);

    *(v19 + 4) = v22;
    v109 = a3;
    v110 = v9;
    *(v19 + 12) = 1024;
    v23 = v130 != 0;
    sub_185AF6A78(&v127);
    *(v19 + 14) = v23;
    *(v19 + 18) = 2082;
    if (v126)
    {
      v24 = v125;
    }

    else
    {
      v24 = 0x676E6968746F6E28;
    }

    if (v126)
    {
      v25 = v126;
    }

    else
    {
      v25 = 0xE900000000000029;
    }

    sub_185AF6A78(v124);
    v26 = sub_185ACB2C4(v24, v25, &v117);

    *(v19 + 20) = v26;
    *(v19 + 28) = 1024;
    LODWORD(v26) = v123;
    sub_185AF6A78(v122);
    *(v19 + 30) = v26;
    *(v19 + 34) = 2082;
    if (v121)
    {
      v27 = 0xD000000000000024;
    }

    else
    {
      v27 = 0xD00000000000001FLL;
    }

    if (v121)
    {
      v28 = "ice";
    }

    else
    {
      v28 = ".afterAuthentication";
    }

    sub_185AF6A78(v120);
    v29 = sub_185ACB2C4(v27, v28 | 0x8000000000000000, &v117);
    a3 = v109;

    *(v19 + 36) = v29;
    *(v19 + 44) = 2082;
    if (v119)
    {
      v30 = 0xD000000000000023;
    }

    else
    {
      v30 = 0xD000000000000018;
    }

    if (v119)
    {
      v31 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v31 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v118);
    v32 = sub_185ACB2C4(v30, v31 | 0x8000000000000000, &v117);
    v9 = v110;

    *(v19 + 46) = v32;
    _os_log_impl(&dword_185AC1000, v16, v17, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v19, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v20, -1, -1);
    v33 = v19;
    a1 = v111;
    MEMORY[0x1865FE2F0](v33, -1, -1);
  }

  else
  {
    sub_185AF6A78(v122);
    sub_185AF6A78(&v127);

    sub_185AF6A78(v118);
    sub_185AF6A78(v120);
    sub_185AF6A78(v124);
    sub_185AF6A78(&v131);
  }

  v34 = *(a2 + 89);
  v35 = *a2;
  v36 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v36, (a2 + 48), v34))
  {
    v37 = *(a2 + 24);
    if (!v37 || !sub_185AFA92C(*(a2 + 16), v37, (a2 + 48), v34))
    {
      sub_185B03ED8(a2, &v131);
      sub_185B03ED8(a2, &v127);
      v46 = sub_185B67B6C();
      v47 = sub_185B680AC();
      if (os_log_type_enabled(v46, v47))
      {
        v110 = v9;
        v48 = a3;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v122[0] = v50;
        *v49 = 136446466;
        v51 = v131;

        sub_185AF6A78(&v131);
        v52 = sub_185ACB2C4(v51, *(&v51 + 1), v122);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        if (*(&v128 + 1))
        {
          *&v124[0] = 1684955424;
          *(&v124[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v128);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v53 = *(&v124[0] + 1);
          v54 = *&v124[0];
        }

        else
        {
          v53 = 0xE200000000000000;
          v54 = 29545;
        }

        sub_185AF6A78(&v127);
        v89 = sub_185ACB2C4(v54, v53, v122);

        *(v49 + 14) = v89;
        _os_log_impl(&dword_185AC1000, v46, v47, "%{public}s %{public}s not locked. Unshielding.", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v50, -1, -1);
        MEMORY[0x1865FE2F0](v49, -1, -1);

        a3 = v48;
        v9 = v110;
      }

      else
      {

        sub_185AF6A78(&v131);
        sub_185AF6A78(&v127);
      }

      v45 = *(a2 + 40);
      v43 = v114;
      if (!v45)
      {
        goto LABEL_53;
      }

LABEL_52:
      v90 = *(a2 + 32);
      v91 = *(a2 + 72);
      v92 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v91);
      (*(v92 + 152))(v90, v45, 0, nullsub_1, 0, v91, v92);
LABEL_53:
      a3[2](a3, 1, 0);
      goto LABEL_57;
    }
  }

  v38 = *(a2 + 72);
  v39 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v38);
  if ((*(v39 + 64))(v35, v36, v38, v39))
  {
    v40 = sub_185B67B6C();
    v41 = sub_185B680AC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v114;
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_185AC1000, v40, v41, "have cached authentication.", v44, 2u);
      MEMORY[0x1865FE2F0](v44, -1, -1);
    }

    v45 = *(a2 + 40);
    if (!v45)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v131);
  sub_185B03F10(a1, &v127);
  v55 = sub_185B67B6C();
  v56 = sub_185B680AC();
  sub_185AF6A24(a1);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v109 = a3;
    v112 = v58;
    v120[0] = v58;
    *v57 = 136446466;
    if (BYTE8(v136))
    {
      v59 = 0xD000000000000024;
    }

    else
    {
      v59 = 0xD00000000000001FLL;
    }

    v60 = v9;
    if (BYTE8(v136))
    {
      v61 = "ice";
    }

    else
    {
      v61 = ".afterAuthentication";
    }

    sub_185AF6A78(&v131);
    v62 = sub_185ACB2C4(v59, v61 | 0x8000000000000000, v120);
    v9 = v60;

    *(v57 + 4) = v62;
    *(v57 + 12) = 2082;
    v63 = a1[1];
    v127 = *a1;
    v128 = v63;
    v129 = *(a1 + 32);
    v64 = a1[1];
    v124[0] = *a1;
    v124[1] = v64;
    LOBYTE(v125) = *(a1 + 32);
    sub_185AD04BC(&v127, v122, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v65 = sub_185B67EBC();
    v67 = sub_185ACB2C4(v65, v66, v120);

    *(v57 + 14) = v67;
    _os_log_impl(&dword_185AC1000, v55, v56, "Begin auth with completion policy %{public}s, bind target: %{public}s", v57, 0x16u);
    v68 = v112;
    swift_arrayDestroy();
    a3 = v109;
    MEMORY[0x1865FE2F0](v68, -1, -1);
    MEMORY[0x1865FE2F0](v57, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v131);
  }

  v43 = v114;
  v69 = *(a2 + 88);
  v111 = a1;
  if (v69)
  {
    v70 = v116;
    v71 = v108;
    (*(v116 + 16))(v108, v9, v114);
    sub_185B03ED8(a2, &v131);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v73 = v9;
    v74 = (v107 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    v76 = v71;
    v77 = v73;
    v43 = v114;
    (*(v70 + 32))(v75 + v72, v76, v114);
    v78 = (v75 + v74);
    v79 = v134;
    v78[2] = v133;
    v78[3] = v79;
    v80 = v136;
    v78[4] = v135;
    v78[5] = v80;
    v81 = v132;
    *v78 = v131;
    v78[1] = v81;
    v82 = (v75 + ((v74 + 103) & 0xFFFFFFFFFFFFFFF8));
    v83 = v115;
    *v82 = sub_185B03ED0;
    v82[1] = v83;

    v84 = sub_185B07798;
  }

  else
  {
    v85 = *(a2 + 40);
    if (v85)
    {
      v86 = *(a2 + 32);
      v87 = *(a2 + 72);
      v88 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v87);
      (*(v88 + 152))(v86, v85, 1, sub_185B03ED0, v115, v87, v88);
    }

    else
    {
      a3[2](a3, 1, 0);
    }

    v93 = v116;
    v94 = v108;
    (*(v116 + 16))(v108, v9, v43);
    sub_185B03ED8(a2, &v131);
    v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v77 = v9;
    v96 = (v107 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    (*(v93 + 32))(v75 + v95, v94, v43);
    v97 = (v75 + v96);
    v98 = v134;
    v97[2] = v133;
    v97[3] = v98;
    v99 = v136;
    v97[4] = v135;
    v97[5] = v99;
    v100 = v132;
    *v97 = v131;
    v97[1] = v100;
    v84 = sub_185B0779C;
  }

  v101 = v84;

  v102 = sub_185B6820C();
  v103 = APDefaultAuthenticationLog(v102);
  sub_185B67B3C();

  v104 = *(a2 + 72);
  v105 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v104);
  (*(v105 + 72))(v111, v101, v75, v104, v105);

  v9 = v77;
LABEL_57:
  (*(v116 + 8))(v9, v43);

  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_185B00C18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v108 = a1;
  v13 = sub_185B67B5C();
  v114 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v106 = v15;
  v107 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v105 - v16;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v110 = a4;
  v18[4] = a5;
  v18[5] = a6;
  v113 = a6;
  v18[6] = a7;
  v109 = a3;
  v111 = a5;

  v112 = a7;

  v20 = APDefaultAuthenticationLog(v19);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v21 = sub_185B67B8C();
  v22 = __swift_project_value_buffer(v21, qword_1EA8D2278);
  sub_185B03ED8(a2, &v131);
  sub_185B03ED8(a2, &v127);
  sub_185B03ED8(a2, v124);
  sub_185B03ED8(a2, v122);
  sub_185B03ED8(a2, v120);
  sub_185B03ED8(a2, v118);
  v23 = sub_185B67B6C();
  v24 = sub_185B680AC();
  v25 = os_log_type_enabled(v23, v24);
  v115 = v18;
  v116 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    v117 = v105[0];
    *v26 = 136447490;
    v27 = v131;

    sub_185AF6A78(&v131);
    v28 = sub_185ACB2C4(v27, *(&v27 + 1), &v117);

    *(v26 + 4) = v28;
    v105[1] = v22;
    *(v26 + 12) = 1024;
    v29 = v130 != 0;
    sub_185AF6A78(&v127);
    *(v26 + 14) = v29;
    *(v26 + 18) = 2082;
    if (v126)
    {
      v30 = v125;
    }

    else
    {
      v30 = 0x676E6968746F6E28;
    }

    if (v126)
    {
      v31 = v126;
    }

    else
    {
      v31 = 0xE900000000000029;
    }

    sub_185AF6A78(v124);
    v32 = sub_185ACB2C4(v30, v31, &v117);

    *(v26 + 20) = v32;
    *(v26 + 28) = 1024;
    LODWORD(v32) = v123;
    sub_185AF6A78(v122);
    *(v26 + 30) = v32;
    *(v26 + 34) = 2082;
    if (v121)
    {
      v33 = 0xD000000000000024;
    }

    else
    {
      v33 = 0xD00000000000001FLL;
    }

    if (v121)
    {
      v34 = "ice";
    }

    else
    {
      v34 = ".afterAuthentication";
    }

    sub_185AF6A78(v120);
    v35 = sub_185ACB2C4(v33, v34 | 0x8000000000000000, &v117);

    *(v26 + 36) = v35;
    *(v26 + 44) = 2082;
    if (v119)
    {
      v36 = 0xD000000000000023;
    }

    else
    {
      v36 = 0xD000000000000018;
    }

    if (v119)
    {
      v37 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v37 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v118);
    v38 = sub_185ACB2C4(v36, v37 | 0x8000000000000000, &v117);

    *(v26 + 46) = v38;
    _os_log_impl(&dword_185AC1000, v23, v24, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v26, 0x36u);
    v39 = v105[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v39, -1, -1);
    MEMORY[0x1865FE2F0](v26, -1, -1);
  }

  else
  {
    sub_185AF6A78(v122);
    sub_185AF6A78(&v127);

    sub_185AF6A78(v118);
    sub_185AF6A78(v120);
    sub_185AF6A78(v124);
    sub_185AF6A78(&v131);
  }

  v40 = *(a2 + 89);
  v41 = *a2;
  v42 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v42, (a2 + 48), v40))
  {
    v43 = *(a2 + 24);
    if (!v43 || !sub_185AFA92C(*(a2 + 16), v43, (a2 + 48), v40))
    {
      sub_185B03ED8(a2, &v131);
      sub_185B03ED8(a2, &v127);
      v53 = sub_185B67B6C();
      v54 = sub_185B680AC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v122[0] = v56;
        *v55 = 136446466;
        v57 = v131;

        sub_185AF6A78(&v131);
        v58 = sub_185ACB2C4(v57, *(&v57 + 1), v122);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2082;
        if (*(&v128 + 1))
        {
          *&v124[0] = 1684955424;
          *(&v124[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v128);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v59 = *(&v124[0] + 1);
          v60 = *&v124[0];
        }

        else
        {
          v59 = 0xE200000000000000;
          v60 = 29545;
        }

        sub_185AF6A78(&v127);
        v89 = sub_185ACB2C4(v60, v59, v122);

        *(v55 + 14) = v89;
        _os_log_impl(&dword_185AC1000, v53, v54, "%{public}s %{public}s not locked. Unshielding.", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v56, -1, -1);
        MEMORY[0x1865FE2F0](v55, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v131);
        sub_185AF6A78(&v127);
      }

      v51 = *(a2 + 40);
      v52 = v114;
      v49 = v116;
      if (!v51)
      {
        goto LABEL_53;
      }

LABEL_52:
      v90 = *(a2 + 32);
      v91 = *(a2 + 72);
      v92 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v91);
      (*(v92 + 152))(v90, v51, 0, nullsub_1, 0, v91, v92);
LABEL_53:
      sub_185AFEE10(v110, v111);
      v113(0);
      goto LABEL_57;
    }
  }

  v44 = *(a2 + 72);
  v45 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v44);
  if ((*(v45 + 64))(v41, v42, v44, v45))
  {
    v46 = sub_185B67B6C();
    v47 = sub_185B680AC();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v116;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_185AC1000, v46, v47, "have cached authentication.", v50, 2u);
      MEMORY[0x1865FE2F0](v50, -1, -1);
    }

    v51 = *(a2 + 40);
    v52 = v114;
    if (!v51)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v131);
  v61 = v108;
  sub_185B03F10(v108, &v127);
  v62 = sub_185B67B6C();
  v63 = sub_185B680AC();
  sub_185AF6A24(v61);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v120[0] = v65;
    *v64 = 136446466;
    if (BYTE8(v136))
    {
      v66 = 0xD000000000000024;
    }

    else
    {
      v66 = 0xD00000000000001FLL;
    }

    if (BYTE8(v136))
    {
      v67 = "ice";
    }

    else
    {
      v67 = ".afterAuthentication";
    }

    sub_185AF6A78(&v131);
    v68 = sub_185ACB2C4(v66, v67 | 0x8000000000000000, v120);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    v69 = *(v61 + 16);
    v127 = *v61;
    v128 = v69;
    v129 = *(v61 + 32);
    v70 = *(v61 + 16);
    v124[0] = *v61;
    v124[1] = v70;
    LOBYTE(v125) = *(v61 + 32);
    sub_185AD04BC(&v127, v122, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v71 = sub_185B67EBC();
    v73 = sub_185ACB2C4(v71, v72, v120);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_185AC1000, v62, v63, "Begin auth with completion policy %{public}s, bind target: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v65, -1, -1);
    MEMORY[0x1865FE2F0](v64, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v131);
  }

  v52 = v114;
  v49 = v116;
  if (*(a2 + 88))
  {
    v74 = v107;
    (*(v114 + 16))(v107, v116, v13);
    sub_185B03ED8(a2, &v131);
    v75 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v76 = (v106 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v75, v74, v13);
    v78 = (v77 + v76);
    v79 = v134;
    v78[2] = v133;
    v78[3] = v79;
    v80 = v136;
    v78[4] = v135;
    v78[5] = v80;
    v81 = v132;
    v82 = v115;
    v49 = v116;
    *v78 = v131;
    v78[1] = v81;
    v83 = (v77 + ((v76 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v83 = sub_185B07788;
    v83[1] = v82;

    v84 = sub_185B07798;
  }

  else
  {
    v85 = *(a2 + 40);
    if (v85)
    {
      v86 = *(a2 + 32);
      v87 = *(a2 + 72);
      v88 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v87);
      (*(v88 + 152))(v86, v85, 1, sub_185B07788, v115, v87, v88);
    }

    else
    {
      sub_185AFEE10(v110, v111);
      v113(0);
    }

    v93 = v107;
    (*(v52 + 16))(v107, v49, v13);
    sub_185B03ED8(a2, &v131);
    v94 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v95 = (v106 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v94, v93, v13);
    v96 = (v77 + v95);
    v97 = v134;
    v96[2] = v133;
    v96[3] = v97;
    v98 = v136;
    v96[4] = v135;
    v96[5] = v98;
    v99 = v132;
    *v96 = v131;
    v96[1] = v99;
    v84 = sub_185B0779C;
  }

  v100 = sub_185B6820C();
  v101 = APDefaultAuthenticationLog(v100);
  sub_185B67B3C();

  v102 = *(a2 + 72);
  v103 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v102);
  (*(v103 + 72))(v108, v84, v77, v102, v103);

LABEL_57:
  (*(v52 + 8))(v49, v13);
}

uint64_t sub_185B018B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v108 = a1;
  v13 = sub_185B67B5C();
  v114 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v106 = v15;
  v107 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v105 - v16;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v110 = a4;
  v18[4] = a5;
  v18[5] = a6;
  v113 = a6;
  v18[6] = a7;
  v109 = a3;
  v111 = a5;

  v112 = a7;

  v20 = APDefaultAuthenticationLog(v19);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v21 = sub_185B67B8C();
  v22 = __swift_project_value_buffer(v21, qword_1EA8D2278);
  sub_185B03ED8(a2, &v131);
  sub_185B03ED8(a2, &v127);
  sub_185B03ED8(a2, v124);
  sub_185B03ED8(a2, v122);
  sub_185B03ED8(a2, v120);
  sub_185B03ED8(a2, v118);
  v23 = sub_185B67B6C();
  v24 = sub_185B680AC();
  v25 = os_log_type_enabled(v23, v24);
  v115 = v18;
  v116 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    v117 = v105[0];
    *v26 = 136447490;
    v27 = v131;

    sub_185AF6A78(&v131);
    v28 = sub_185ACB2C4(v27, *(&v27 + 1), &v117);

    *(v26 + 4) = v28;
    v105[1] = v22;
    *(v26 + 12) = 1024;
    v29 = v130 != 0;
    sub_185AF6A78(&v127);
    *(v26 + 14) = v29;
    *(v26 + 18) = 2082;
    if (v126)
    {
      v30 = v125;
    }

    else
    {
      v30 = 0x676E6968746F6E28;
    }

    if (v126)
    {
      v31 = v126;
    }

    else
    {
      v31 = 0xE900000000000029;
    }

    sub_185AF6A78(v124);
    v32 = sub_185ACB2C4(v30, v31, &v117);

    *(v26 + 20) = v32;
    *(v26 + 28) = 1024;
    LODWORD(v32) = v123;
    sub_185AF6A78(v122);
    *(v26 + 30) = v32;
    *(v26 + 34) = 2082;
    if (v121)
    {
      v33 = 0xD000000000000024;
    }

    else
    {
      v33 = 0xD00000000000001FLL;
    }

    if (v121)
    {
      v34 = "ice";
    }

    else
    {
      v34 = ".afterAuthentication";
    }

    sub_185AF6A78(v120);
    v35 = sub_185ACB2C4(v33, v34 | 0x8000000000000000, &v117);

    *(v26 + 36) = v35;
    *(v26 + 44) = 2082;
    if (v119)
    {
      v36 = 0xD000000000000023;
    }

    else
    {
      v36 = 0xD000000000000018;
    }

    if (v119)
    {
      v37 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v37 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v118);
    v38 = sub_185ACB2C4(v36, v37 | 0x8000000000000000, &v117);

    *(v26 + 46) = v38;
    _os_log_impl(&dword_185AC1000, v23, v24, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v26, 0x36u);
    v39 = v105[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v39, -1, -1);
    MEMORY[0x1865FE2F0](v26, -1, -1);
  }

  else
  {
    sub_185AF6A78(v122);
    sub_185AF6A78(&v127);

    sub_185AF6A78(v118);
    sub_185AF6A78(v120);
    sub_185AF6A78(v124);
    sub_185AF6A78(&v131);
  }

  v40 = *(a2 + 89);
  v41 = *a2;
  v42 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v42, (a2 + 48), v40))
  {
    v43 = *(a2 + 24);
    if (!v43 || !sub_185AFA92C(*(a2 + 16), v43, (a2 + 48), v40))
    {
      sub_185B03ED8(a2, &v131);
      sub_185B03ED8(a2, &v127);
      v53 = sub_185B67B6C();
      v54 = sub_185B680AC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v122[0] = v56;
        *v55 = 136446466;
        v57 = v131;

        sub_185AF6A78(&v131);
        v58 = sub_185ACB2C4(v57, *(&v57 + 1), v122);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2082;
        if (*(&v128 + 1))
        {
          *&v124[0] = 1684955424;
          *(&v124[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v128);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v59 = *(&v124[0] + 1);
          v60 = *&v124[0];
        }

        else
        {
          v59 = 0xE200000000000000;
          v60 = 29545;
        }

        sub_185AF6A78(&v127);
        v89 = sub_185ACB2C4(v60, v59, v122);

        *(v55 + 14) = v89;
        _os_log_impl(&dword_185AC1000, v53, v54, "%{public}s %{public}s not locked. Unshielding.", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v56, -1, -1);
        MEMORY[0x1865FE2F0](v55, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v131);
        sub_185AF6A78(&v127);
      }

      v51 = *(a2 + 40);
      v52 = v114;
      v49 = v116;
      if (!v51)
      {
        goto LABEL_53;
      }

LABEL_52:
      v90 = *(a2 + 32);
      v91 = *(a2 + 72);
      v92 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v91);
      (*(v92 + 152))(v90, v51, 0, nullsub_1, 0, v91, v92);
LABEL_53:
      sub_185AFEE10(v110, v111);
      v113(0);
      goto LABEL_57;
    }
  }

  v44 = *(a2 + 72);
  v45 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v44);
  if ((*(v45 + 64))(v41, v42, v44, v45))
  {
    v46 = sub_185B67B6C();
    v47 = sub_185B680AC();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v116;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_185AC1000, v46, v47, "have cached authentication.", v50, 2u);
      MEMORY[0x1865FE2F0](v50, -1, -1);
    }

    v51 = *(a2 + 40);
    v52 = v114;
    if (!v51)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v131);
  v61 = v108;
  sub_185B03F10(v108, &v127);
  v62 = sub_185B67B6C();
  v63 = sub_185B680AC();
  sub_185AF6A24(v61);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v120[0] = v65;
    *v64 = 136446466;
    if (BYTE8(v136))
    {
      v66 = 0xD000000000000024;
    }

    else
    {
      v66 = 0xD00000000000001FLL;
    }

    if (BYTE8(v136))
    {
      v67 = "ice";
    }

    else
    {
      v67 = ".afterAuthentication";
    }

    sub_185AF6A78(&v131);
    v68 = sub_185ACB2C4(v66, v67 | 0x8000000000000000, v120);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    v69 = *(v61 + 16);
    v127 = *v61;
    v128 = v69;
    v129 = *(v61 + 32);
    v70 = *(v61 + 16);
    v124[0] = *v61;
    v124[1] = v70;
    LOBYTE(v125) = *(v61 + 32);
    sub_185AD04BC(&v127, v122, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v71 = sub_185B67EBC();
    v73 = sub_185ACB2C4(v71, v72, v120);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_185AC1000, v62, v63, "Begin auth with completion policy %{public}s, bind target: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v65, -1, -1);
    MEMORY[0x1865FE2F0](v64, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v131);
  }

  v52 = v114;
  v49 = v116;
  if (*(a2 + 88))
  {
    v74 = v107;
    (*(v114 + 16))(v107, v116, v13);
    sub_185B03ED8(a2, &v131);
    v75 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v76 = (v106 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v75, v74, v13);
    v78 = (v77 + v76);
    v79 = v134;
    v78[2] = v133;
    v78[3] = v79;
    v80 = v136;
    v78[4] = v135;
    v78[5] = v80;
    v81 = v132;
    v82 = v115;
    v49 = v116;
    *v78 = v131;
    v78[1] = v81;
    v83 = (v77 + ((v76 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v83 = sub_185B07788;
    v83[1] = v82;

    v84 = sub_185B07798;
  }

  else
  {
    v85 = *(a2 + 40);
    if (v85)
    {
      v86 = *(a2 + 32);
      v87 = *(a2 + 72);
      v88 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v87);
      (*(v88 + 152))(v86, v85, 1, sub_185B07788, v115, v87, v88);
    }

    else
    {
      sub_185AFEE10(v110, v111);
      v113(0);
    }

    v93 = v107;
    (*(v52 + 16))(v107, v49, v13);
    sub_185B03ED8(a2, &v131);
    v94 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v95 = (v106 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v94, v93, v13);
    v96 = (v77 + v95);
    v97 = v134;
    v96[2] = v133;
    v96[3] = v97;
    v98 = v136;
    v96[4] = v135;
    v96[5] = v98;
    v99 = v132;
    *v96 = v131;
    v96[1] = v99;
    v84 = sub_185B0779C;
  }

  v100 = sub_185B6820C();
  v101 = APDefaultAuthenticationLog(v100);
  sub_185B67B3C();

  v102 = *(a2 + 72);
  v103 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v102);
  (*(v103 + 72))(v108, v84, v77, v102, v103);

LABEL_57:
  (*(v52 + 8))(v49, v13);
}

uint64_t sub_185B02558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v108 = a1;
  v13 = sub_185B67B5C();
  v114 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v106 = v15;
  v107 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v105 - v16;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v110 = a4;
  v18[4] = a5;
  v18[5] = a6;
  v113 = a6;
  v18[6] = a7;
  v109 = a3;
  v111 = a5;

  v112 = a7;

  v20 = APDefaultAuthenticationLog(v19);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v21 = sub_185B67B8C();
  v22 = __swift_project_value_buffer(v21, qword_1EA8D2278);
  sub_185B03ED8(a2, &v131);
  sub_185B03ED8(a2, &v127);
  sub_185B03ED8(a2, v124);
  sub_185B03ED8(a2, v122);
  sub_185B03ED8(a2, v120);
  sub_185B03ED8(a2, v118);
  v23 = sub_185B67B6C();
  v24 = sub_185B680AC();
  v25 = os_log_type_enabled(v23, v24);
  v115 = v18;
  v116 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    v117 = v105[0];
    *v26 = 136447490;
    v27 = v131;

    sub_185AF6A78(&v131);
    v28 = sub_185ACB2C4(v27, *(&v27 + 1), &v117);

    *(v26 + 4) = v28;
    v105[1] = v22;
    *(v26 + 12) = 1024;
    v29 = v130 != 0;
    sub_185AF6A78(&v127);
    *(v26 + 14) = v29;
    *(v26 + 18) = 2082;
    if (v126)
    {
      v30 = v125;
    }

    else
    {
      v30 = 0x676E6968746F6E28;
    }

    if (v126)
    {
      v31 = v126;
    }

    else
    {
      v31 = 0xE900000000000029;
    }

    sub_185AF6A78(v124);
    v32 = sub_185ACB2C4(v30, v31, &v117);

    *(v26 + 20) = v32;
    *(v26 + 28) = 1024;
    LODWORD(v32) = v123;
    sub_185AF6A78(v122);
    *(v26 + 30) = v32;
    *(v26 + 34) = 2082;
    if (v121)
    {
      v33 = 0xD000000000000024;
    }

    else
    {
      v33 = 0xD00000000000001FLL;
    }

    if (v121)
    {
      v34 = "ice";
    }

    else
    {
      v34 = ".afterAuthentication";
    }

    sub_185AF6A78(v120);
    v35 = sub_185ACB2C4(v33, v34 | 0x8000000000000000, &v117);

    *(v26 + 36) = v35;
    *(v26 + 44) = 2082;
    if (v119)
    {
      v36 = 0xD000000000000023;
    }

    else
    {
      v36 = 0xD000000000000018;
    }

    if (v119)
    {
      v37 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v37 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v118);
    v38 = sub_185ACB2C4(v36, v37 | 0x8000000000000000, &v117);

    *(v26 + 46) = v38;
    _os_log_impl(&dword_185AC1000, v23, v24, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v26, 0x36u);
    v39 = v105[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v39, -1, -1);
    MEMORY[0x1865FE2F0](v26, -1, -1);
  }

  else
  {
    sub_185AF6A78(v122);
    sub_185AF6A78(&v127);

    sub_185AF6A78(v118);
    sub_185AF6A78(v120);
    sub_185AF6A78(v124);
    sub_185AF6A78(&v131);
  }

  v40 = *(a2 + 89);
  v41 = *a2;
  v42 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v42, (a2 + 48), v40))
  {
    v43 = *(a2 + 24);
    if (!v43 || !sub_185AFA92C(*(a2 + 16), v43, (a2 + 48), v40))
    {
      sub_185B03ED8(a2, &v131);
      sub_185B03ED8(a2, &v127);
      v53 = sub_185B67B6C();
      v54 = sub_185B680AC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v122[0] = v56;
        *v55 = 136446466;
        v57 = v131;

        sub_185AF6A78(&v131);
        v58 = sub_185ACB2C4(v57, *(&v57 + 1), v122);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2082;
        if (*(&v128 + 1))
        {
          *&v124[0] = 1684955424;
          *(&v124[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v128);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v59 = *(&v124[0] + 1);
          v60 = *&v124[0];
        }

        else
        {
          v59 = 0xE200000000000000;
          v60 = 29545;
        }

        sub_185AF6A78(&v127);
        v89 = sub_185ACB2C4(v60, v59, v122);

        *(v55 + 14) = v89;
        _os_log_impl(&dword_185AC1000, v53, v54, "%{public}s %{public}s not locked. Unshielding.", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v56, -1, -1);
        MEMORY[0x1865FE2F0](v55, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v131);
        sub_185AF6A78(&v127);
      }

      v51 = *(a2 + 40);
      v52 = v114;
      v49 = v116;
      if (!v51)
      {
        goto LABEL_53;
      }

LABEL_52:
      v90 = *(a2 + 32);
      v91 = *(a2 + 72);
      v92 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v91);
      (*(v92 + 152))(v90, v51, 0, nullsub_1, 0, v91, v92);
LABEL_53:
      sub_185AFEE10(v110, v111);
      v113(0);
      goto LABEL_57;
    }
  }

  v44 = *(a2 + 72);
  v45 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v44);
  if ((*(v45 + 64))(v41, v42, v44, v45))
  {
    v46 = sub_185B67B6C();
    v47 = sub_185B680AC();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v116;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_185AC1000, v46, v47, "have cached authentication.", v50, 2u);
      MEMORY[0x1865FE2F0](v50, -1, -1);
    }

    v51 = *(a2 + 40);
    v52 = v114;
    if (!v51)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v131);
  v61 = v108;
  sub_185B03F10(v108, &v127);
  v62 = sub_185B67B6C();
  v63 = sub_185B680AC();
  sub_185AF6A24(v61);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v120[0] = v65;
    *v64 = 136446466;
    if (BYTE8(v136))
    {
      v66 = 0xD000000000000024;
    }

    else
    {
      v66 = 0xD00000000000001FLL;
    }

    if (BYTE8(v136))
    {
      v67 = "ice";
    }

    else
    {
      v67 = ".afterAuthentication";
    }

    sub_185AF6A78(&v131);
    v68 = sub_185ACB2C4(v66, v67 | 0x8000000000000000, v120);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    v69 = *(v61 + 16);
    v127 = *v61;
    v128 = v69;
    v129 = *(v61 + 32);
    v70 = *(v61 + 16);
    v124[0] = *v61;
    v124[1] = v70;
    LOBYTE(v125) = *(v61 + 32);
    sub_185AD04BC(&v127, v122, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v71 = sub_185B67EBC();
    v73 = sub_185ACB2C4(v71, v72, v120);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_185AC1000, v62, v63, "Begin auth with completion policy %{public}s, bind target: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v65, -1, -1);
    MEMORY[0x1865FE2F0](v64, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v131);
  }

  v52 = v114;
  v49 = v116;
  if (*(a2 + 88))
  {
    v74 = v107;
    (*(v114 + 16))(v107, v116, v13);
    sub_185B03ED8(a2, &v131);
    v75 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v76 = (v106 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v75, v74, v13);
    v78 = (v77 + v76);
    v79 = v134;
    v78[2] = v133;
    v78[3] = v79;
    v80 = v136;
    v78[4] = v135;
    v78[5] = v80;
    v81 = v132;
    v82 = v115;
    v49 = v116;
    *v78 = v131;
    v78[1] = v81;
    v83 = (v77 + ((v76 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v83 = sub_185B07788;
    v83[1] = v82;

    v84 = sub_185B07798;
  }

  else
  {
    v85 = *(a2 + 40);
    if (v85)
    {
      v86 = *(a2 + 32);
      v87 = *(a2 + 72);
      v88 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v87);
      (*(v88 + 152))(v86, v85, 1, sub_185B07788, v115, v87, v88);
    }

    else
    {
      sub_185AFEE10(v110, v111);
      v113(0);
    }

    v93 = v107;
    (*(v52 + 16))(v107, v49, v13);
    sub_185B03ED8(a2, &v131);
    v94 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v95 = (v106 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v52 + 32))(v77 + v94, v93, v13);
    v96 = (v77 + v95);
    v97 = v134;
    v96[2] = v133;
    v96[3] = v97;
    v98 = v136;
    v96[4] = v135;
    v96[5] = v98;
    v99 = v132;
    *v96 = v131;
    v96[1] = v99;
    v84 = sub_185B0779C;
  }

  v100 = sub_185B6820C();
  v101 = APDefaultAuthenticationLog(v100);
  sub_185B67B3C();

  v102 = *(a2 + 72);
  v103 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v102);
  (*(v103 + 72))(v108, v84, v77, v102, v103);

LABEL_57:
  (*(v52 + 8))(v49, v13);
}

void sub_185B031F8(__int128 *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v114 = sub_185B67B5C();
  v116 = *(v114 - 8);
  v6 = MEMORY[0x1EEE9AC00](v114);
  v107 = v7;
  v108 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v106 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_185ACA0F4;
  *(v11 + 24) = v10;
  v115 = v11;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v113 = v10;

  v13 = APDefaultAuthenticationLog(v12);
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  v15 = __swift_project_value_buffer(v14, qword_1EA8D2278);
  sub_185B03ED8(a2, &v131);
  sub_185B03ED8(a2, &v127);
  sub_185B03ED8(a2, v124);
  sub_185B03ED8(a2, v122);
  sub_185B03ED8(a2, v120);
  sub_185B03ED8(a2, v118);
  v112 = v15;
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v111 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v117 = v20;
    *v19 = 136447490;
    v21 = v131;

    sub_185AF6A78(&v131);
    v22 = sub_185ACB2C4(v21, *(&v21 + 1), &v117);

    *(v19 + 4) = v22;
    v109 = a3;
    v110 = v9;
    *(v19 + 12) = 1024;
    v23 = v130 != 0;
    sub_185AF6A78(&v127);
    *(v19 + 14) = v23;
    *(v19 + 18) = 2082;
    if (v126)
    {
      v24 = v125;
    }

    else
    {
      v24 = 0x676E6968746F6E28;
    }

    if (v126)
    {
      v25 = v126;
    }

    else
    {
      v25 = 0xE900000000000029;
    }

    sub_185AF6A78(v124);
    v26 = sub_185ACB2C4(v24, v25, &v117);

    *(v19 + 20) = v26;
    *(v19 + 28) = 1024;
    LODWORD(v26) = v123;
    sub_185AF6A78(v122);
    *(v19 + 30) = v26;
    *(v19 + 34) = 2082;
    if (v121)
    {
      v27 = 0xD000000000000024;
    }

    else
    {
      v27 = 0xD00000000000001FLL;
    }

    if (v121)
    {
      v28 = "ice";
    }

    else
    {
      v28 = ".afterAuthentication";
    }

    sub_185AF6A78(v120);
    v29 = sub_185ACB2C4(v27, v28 | 0x8000000000000000, &v117);
    a3 = v109;

    *(v19 + 36) = v29;
    *(v19 + 44) = 2082;
    if (v119)
    {
      v30 = 0xD000000000000023;
    }

    else
    {
      v30 = 0xD000000000000018;
    }

    if (v119)
    {
      v31 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v31 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v118);
    v32 = sub_185ACB2C4(v30, v31 | 0x8000000000000000, &v117);
    v9 = v110;

    *(v19 + 46) = v32;
    _os_log_impl(&dword_185AC1000, v16, v17, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v19, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v20, -1, -1);
    v33 = v19;
    a1 = v111;
    MEMORY[0x1865FE2F0](v33, -1, -1);
  }

  else
  {
    sub_185AF6A78(v122);
    sub_185AF6A78(&v127);

    sub_185AF6A78(v118);
    sub_185AF6A78(v120);
    sub_185AF6A78(v124);
    sub_185AF6A78(&v131);
  }

  v34 = *(a2 + 89);
  v35 = *a2;
  v36 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v36, (a2 + 48), v34))
  {
    v37 = *(a2 + 24);
    if (!v37 || !sub_185AFA92C(*(a2 + 16), v37, (a2 + 48), v34))
    {
      sub_185B03ED8(a2, &v131);
      sub_185B03ED8(a2, &v127);
      v46 = sub_185B67B6C();
      v47 = sub_185B680AC();
      if (os_log_type_enabled(v46, v47))
      {
        v110 = v9;
        v48 = a3;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v122[0] = v50;
        *v49 = 136446466;
        v51 = v131;

        sub_185AF6A78(&v131);
        v52 = sub_185ACB2C4(v51, *(&v51 + 1), v122);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        if (*(&v128 + 1))
        {
          *&v124[0] = 1684955424;
          *(&v124[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v128);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v53 = *(&v124[0] + 1);
          v54 = *&v124[0];
        }

        else
        {
          v53 = 0xE200000000000000;
          v54 = 29545;
        }

        sub_185AF6A78(&v127);
        v89 = sub_185ACB2C4(v54, v53, v122);

        *(v49 + 14) = v89;
        _os_log_impl(&dword_185AC1000, v46, v47, "%{public}s %{public}s not locked. Unshielding.", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v50, -1, -1);
        MEMORY[0x1865FE2F0](v49, -1, -1);

        a3 = v48;
        v9 = v110;
      }

      else
      {

        sub_185AF6A78(&v131);
        sub_185AF6A78(&v127);
      }

      v45 = *(a2 + 40);
      v43 = v114;
      if (!v45)
      {
        goto LABEL_53;
      }

LABEL_52:
      v90 = *(a2 + 32);
      v91 = *(a2 + 72);
      v92 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v91);
      (*(v92 + 152))(v90, v45, 0, nullsub_1, 0, v91, v92);
LABEL_53:
      a3[2](a3, 1, 0);
      goto LABEL_57;
    }
  }

  v38 = *(a2 + 72);
  v39 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v38);
  if ((*(v39 + 64))(v35, v36, v38, v39))
  {
    v40 = sub_185B67B6C();
    v41 = sub_185B680AC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v114;
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_185AC1000, v40, v41, "have cached authentication.", v44, 2u);
      MEMORY[0x1865FE2F0](v44, -1, -1);
    }

    v45 = *(a2 + 40);
    if (!v45)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v131);
  sub_185B03F10(a1, &v127);
  v55 = sub_185B67B6C();
  v56 = sub_185B680AC();
  sub_185AF6A24(a1);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v109 = a3;
    v112 = v58;
    v120[0] = v58;
    *v57 = 136446466;
    if (BYTE8(v136))
    {
      v59 = 0xD000000000000024;
    }

    else
    {
      v59 = 0xD00000000000001FLL;
    }

    v60 = v9;
    if (BYTE8(v136))
    {
      v61 = "ice";
    }

    else
    {
      v61 = ".afterAuthentication";
    }

    sub_185AF6A78(&v131);
    v62 = sub_185ACB2C4(v59, v61 | 0x8000000000000000, v120);
    v9 = v60;

    *(v57 + 4) = v62;
    *(v57 + 12) = 2082;
    v63 = a1[1];
    v127 = *a1;
    v128 = v63;
    v129 = *(a1 + 32);
    v64 = a1[1];
    v124[0] = *a1;
    v124[1] = v64;
    LOBYTE(v125) = *(a1 + 32);
    sub_185AD04BC(&v127, v122, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v65 = sub_185B67EBC();
    v67 = sub_185ACB2C4(v65, v66, v120);

    *(v57 + 14) = v67;
    _os_log_impl(&dword_185AC1000, v55, v56, "Begin auth with completion policy %{public}s, bind target: %{public}s", v57, 0x16u);
    v68 = v112;
    swift_arrayDestroy();
    a3 = v109;
    MEMORY[0x1865FE2F0](v68, -1, -1);
    MEMORY[0x1865FE2F0](v57, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v131);
  }

  v43 = v114;
  v69 = *(a2 + 88);
  v111 = a1;
  if (v69)
  {
    v70 = v116;
    v71 = v108;
    (*(v116 + 16))(v108, v9, v114);
    sub_185B03ED8(a2, &v131);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v73 = v9;
    v74 = (v107 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    v76 = v71;
    v77 = v73;
    v43 = v114;
    (*(v70 + 32))(v75 + v72, v76, v114);
    v78 = (v75 + v74);
    v79 = v134;
    v78[2] = v133;
    v78[3] = v79;
    v80 = v136;
    v78[4] = v135;
    v78[5] = v80;
    v81 = v132;
    *v78 = v131;
    v78[1] = v81;
    v82 = (v75 + ((v74 + 103) & 0xFFFFFFFFFFFFFFF8));
    v83 = v115;
    *v82 = sub_185B03ED0;
    v82[1] = v83;

    v84 = sub_185B03F6C;
  }

  else
  {
    v85 = *(a2 + 40);
    if (v85)
    {
      v86 = *(a2 + 32);
      v87 = *(a2 + 72);
      v88 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v87);
      (*(v88 + 152))(v86, v85, 1, sub_185B03ED0, v115, v87, v88);
    }

    else
    {
      a3[2](a3, 1, 0);
    }

    v93 = v116;
    v94 = v108;
    (*(v116 + 16))(v108, v9, v43);
    sub_185B03ED8(a2, &v131);
    v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v77 = v9;
    v96 = (v107 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    (*(v93 + 32))(v75 + v95, v94, v43);
    v97 = (v75 + v96);
    v98 = v134;
    v97[2] = v133;
    v97[3] = v98;
    v99 = v136;
    v97[4] = v135;
    v97[5] = v99;
    v100 = v132;
    *v97 = v131;
    v97[1] = v100;
    v84 = sub_185B03F70;
  }

  v101 = v84;

  v102 = sub_185B6820C();
  v103 = APDefaultAuthenticationLog(v102);
  sub_185B67B3C();

  v104 = *(a2 + 72);
  v105 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v104);
  (*(v105 + 72))(v111, v101, v75, v104, v105);

  v9 = v77;
LABEL_57:
  (*(v116 + 8))(v9, v43);

  _Block_release(a3);
  _Block_release(a3);
}

uint64_t objectdestroy_43Tm()
{
  v1 = sub_185B67B5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{
  v1 = sub_185B67B5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4 + 48));

  return swift_deallocObject();
}

uint64_t sub_185B0410C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void (*a20)(_OWORD *, uint64_t *, id, uint64_t, uint64_t, void (*)(void), uint64_t, __n128))
{
  v181 = a8;
  v169 = a6;
  v170 = a7;
  v189 = a5;
  v187 = a4;
  v182 = a9;
  v185 = HIDWORD(a2);
  v186 = HIDWORD(a1);
  v190 = a14;
  v183 = HIDWORD(a4);
  v184 = HIDWORD(a3);
  v23 = sub_185B67B1C();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v161[2] = v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_185B67E0C();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v161[1] = v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v166 = *(v163 - 8);
  v27 = MEMORY[0x1EEE9AC00](v163);
  v162 = v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v164 = v161 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v188 = (v161 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v168 = v161 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v165 = v161 - v36;
  v167 = v37;
  MEMORY[0x1EEE9AC00](v35);
  v39 = v161 - v38;
  v40 = swift_allocObject();
  v41 = v182;
  v40[2] = v182;
  v40[3] = a10;
  v171 = a10;
  v172 = a12;
  v42 = v181;
  v40[4] = a11;
  v40[5] = a12;
  v190 = v40;
  v40[6] = a13;
  atoken = *(v42 + 104);
  v43 = v41;
  v176 = a11;
  swift_bridgeObjectRetain_n();
  v178 = a13;
  swift_retain_n();
  v177 = v43;
  LODWORD(v182) = audit_token_to_pid(&atoken);
  v174 = a2;
  v175 = a1;
  atoken.val[0] = a1;
  atoken.val[1] = v186;
  atoken.val[2] = a2;
  atoken.val[3] = v185;
  v173 = a3;
  atoken.val[4] = a3;
  atoken.val[5] = v184;
  atoken.val[6] = v187;
  atoken.val[7] = v183;
  v180 = audit_token_to_pid(&atoken);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v44 = sub_185B67B8C();
  v45 = __swift_project_value_buffer(v44, qword_1EA8D2278);
  sub_185B06EF0(v42, &atoken);
  sub_185B06EF0(v42, v209);
  sub_185AD04BC(v189, v39, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v179 = v45;
  v46 = sub_185B67B6C();
  v47 = sub_185B680AC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v161[0] = swift_slowAlloc();
    *v204.val = v161[0];
    *v48 = 67110146;
    sub_185AD04BC(&atoken, v196, &qword_1EA8CD008, &unk_185B6CA30);
    v49 = v196[1] != 0;
    sub_185ACF5CC(v196, &qword_1EA8CD008, &unk_185B6CA30);
    sub_185B06EBC(&atoken);
    *(v48 + 4) = v49;
    *(v48 + 8) = 2080;
    v50 = APDataSetAccessGrantReason.description.getter(v210);
    v52 = v51;
    sub_185B06EBC(v209);
    v53 = sub_185ACB2C4(v50, v52, &v204);

    *(v48 + 10) = v53;
    *(v48 + 18) = 1024;
    *(v48 + 20) = v182;
    *(v48 + 24) = 1024;
    *(v48 + 26) = v180;
    *(v48 + 30) = 2082;
    v54 = v165;
    sub_185AD04BC(v39, v165, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v55 = sub_185B67AFC();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_185ACF5CC(v54, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v57 = 0xE600000000000000;
      v58 = 0x29656E6F6E28;
    }

    else
    {
      v59 = v47;
      v60 = v54;
      v58 = sub_185B67AAC();
      v57 = v61;
      v62 = v60;
      v47 = v59;
      (*(v56 + 8))(v62, v55);
    }

    sub_185ACF5CC(v39, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v63 = sub_185ACB2C4(v58, v57, &v204);

    *(v48 + 32) = v63;
    _os_log_impl(&dword_185AC1000, v46, v47, "Checking guard for tracking action with base action %{BOOL}d, grant reason %s, accessor %d, tracker %d, uuid %{public}s", v48, 0x28u);
    v64 = v161[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v64, -1, -1);
    MEMORY[0x1865FE2F0](v48, -1, -1);

    v42 = v181;
  }

  else
  {
    sub_185B06EBC(&atoken);

    sub_185ACF5CC(v39, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B06EBC(v209);
  }

  sub_185AD04BC(v42, &atoken, &qword_1EA8CD008, &unk_185B6CA30);
  v65 = v188;
  if (*&atoken.val[2])
  {
    v165 = a16;
    v205 = v214;
    v206 = v215;
    v207 = v216;
    v208 = v217;
    v204 = atoken;
    v66 = *&atoken.val[2];
    v181 = *atoken.val;
    sub_185B06EF0(v42, &atoken);
    sub_185B03ED8(&v204, v203);
    v67 = v168;
    sub_185AD04BC(v189, v168, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B06EF0(&atoken, v209);
    sub_185B03ED8(v203, &v198);
    sub_185AD04BC(v67, v65, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v68 = (*(v166 + 80) + 312) & ~*(v166 + 80);
    v69 = v68 + v167;
    v70 = (v68 + v167 + 9) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 120) = v217;
    *(v71 + 136) = v218;
    *(v71 + 152) = v219;
    *(v71 + 56) = *&atoken.val[4];
    *(v71 + 72) = v214;
    *(v71 + 88) = v215;
    *(v71 + 104) = v216;
    *(v71 + 40) = *atoken.val;
    v72 = v203[3];
    *(v71 + 216) = v203[2];
    *(v71 + 232) = v72;
    v73 = v203[5];
    *(v71 + 248) = v203[4];
    *(v71 + 264) = v73;
    v74 = v203[1];
    *(v71 + 184) = v203[0];
    v75 = v182;
    *(v71 + 16) = v182;
    *(v71 + 24) = v181;
    *(v71 + 32) = v66;
    v189 = v66;
    *(v71 + 168) = v220;
    *(v71 + 176) = v180;
    *(v71 + 200) = v74;
    *(v71 + 280) = v175;
    *(v71 + 284) = v186;
    *(v71 + 288) = v174;
    *(v71 + 292) = v185;
    *(v71 + 296) = v173;
    *(v71 + 300) = v184;
    *(v71 + 304) = v187;
    *(v71 + 308) = v183;
    v76 = v67;
    v77 = v165;
    sub_185AE301C(v76, v71 + v68);
    v78 = (v71 + v69);
    v79 = v170;
    v80 = v169 & 1;
    *v78 = v169 & 1;
    v81 = v79 & 1;
    v78[1] = v81;
    v82 = (v71 + v70);
    v83 = v190;
    *v82 = v77;
    v82[1] = v83;
    if (*(v42 + 96) == 1)
    {
      v187 = a19;
      v186 = a18;
      v84 = v189;

      sub_185ACF5CC(v188, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185AF6A78(&v198);
      sub_185B06EBC(v209);
      v85 = *(&v207 + 1);
      v86 = v208;
      v188 = __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
      v87 = *(v42 + 104);
      v184 = *(v42 + 112);
      v185 = v87;
      v88 = *(v42 + 120);
      v183 = *(v42 + 128);
      v89 = swift_allocObject();
      *(v89 + 16) = v75;
      v90 = v181;
      *(v89 + 24) = v181;
      *(v89 + 32) = v84;
      v91 = v190;
      *(v89 + 40) = v77;
      *(v89 + 48) = v91;
      *(v89 + 56) = v186;
      *(v89 + 64) = v71;
      v92 = *(v86 + 88);

      v92(v185, v184, v88, v183, v90, v84, v187, v89, v85, v86);

LABEL_34:
      sub_185AF6A78(&v204);
    }

    v102 = v75;
    v103 = v71;
    LODWORD(v184) = v81;
    LODWORD(v185) = v80;
    sub_185B06EF0(v42, v196);
    v104 = v189;
    swift_bridgeObjectRetain_n();

    v105 = sub_185B67B6C();
    v106 = sub_185B680AC();

    v107 = os_log_type_enabled(v105, v106);
    v167 = v103;
    if (v107)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v195[0] = v109;
      *v108 = 67109634;
      *(v108 + 4) = v102;
      *(v108 + 8) = 2082;
      v110 = v181;
      *(v108 + 10) = sub_185ACB2C4(v181, v104, v195);
      *(v108 + 18) = 2080;
      v111 = APDataSetAccessGrantReason.description.getter(v197);
      v113 = v112;
      sub_185B06EBC(v196);
      v114 = sub_185ACB2C4(v111, v113, v195);
      v104 = v189;

      *(v108 + 20) = v114;
      _os_log_impl(&dword_185AC1000, v105, v106, "%d is not accessing %{public}s via TCC (access reason is %s -> do auth", v108, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v109, -1, -1);
      MEMORY[0x1865FE2F0](v108, -1, -1);

      v115 = v176;
    }

    else
    {

      sub_185B06EBC(v196);
      v115 = v176;
      v110 = v181;
    }

    sub_185B06EF0(v209, v196);
    v117 = v177;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v118 = v117;

    v119 = sub_185B67B6C();
    v120 = sub_185B680AC();

    v121 = os_log_type_enabled(v119, v120);
    v186 = v118;
    if (v121)
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v195[0] = v123;
      *v122 = 67109890;
      *(v122 + 4) = v182;
      *(v122 + 8) = 2082;
      *(v122 + 10) = sub_185ACB2C4(v110, v104, v195);
      *(v122 + 18) = 2080;
      v124 = APDataSetAccessGrantReason.description.getter(v197);
      v126 = v125;
      sub_185B06EBC(v196);
      v127 = sub_185ACB2C4(v124, v126, v195);

      *(v122 + 20) = v127;
      *(v122 + 28) = 1024;
      *(v122 + 30) = v180;
      _os_log_impl(&dword_185AC1000, v119, v120, "mark %d as accessing %{public}s for reason %s monitoring %d", v122, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v123, -1, -1);
      MEMORY[0x1865FE2F0](v122, -1, -1);
    }

    else
    {

      sub_185B06EBC(v196);
    }

    v128 = v201;
    v129 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v131 = v198;
    v130 = v199;
    (*(v129 + 104))(v211, *(&v211 + 1), v212, *(&v212 + 1), v198, v199, v210, v175, v174, v173, v187, v188, v128, v129);
    v187 = v130;
    v132 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v133 = sub_185AD006C(v131, v130, 0);
    if (v133)
    {
      v149 = v133;
      sub_185B67DFC();
      type metadata accessor for APSettingsManager(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v151 = [objc_opt_self() bundleForClass_];
      sub_185B67B0C();
      sub_185B67EAC();
      if (sub_185B67EFC() > 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
        v152 = swift_allocObject();
        *(v152 + 16) = xmmword_185B6BB70;
        v153 = [v149 localizedName];
        v154 = sub_185B67E4C();
        v156 = v155;

        *(v152 + 56) = MEMORY[0x1E69E6158];
        *(v152 + 64) = sub_185B06CBC();
        *(v152 + 32) = v154;
        *(v152 + 40) = v156;
        v115 = v176;
        v141 = sub_185B67E7C();
        v142 = v157;

LABEL_27:
        sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
        v158 = sub_185B2EC58(v211, *(&v211 + 1), v212, *(&v212 + 1));
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v159 = v186;
          sub_185AFEE10(v171, v115);
          v172(0);
        }

        else
        {

          v143 = v201;
          v144 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          v145 = (*(v144 + 16))(v143, v144);
          v146 = v187;
          LOBYTE(v143) = sub_185AC3A7C(v131, v187, v145);

          v191[0] = v211;
          v191[1] = v212;
          LOBYTE(v192) = v143 & 1;
          *(&v192 + 1) = v141;
          *&v193 = v142;
          BYTE8(v193) = v185;
          BYTE9(v193) = v184;
          *&v194 = v131;
          *(&v194 + 1) = v146;
          v195[3] = v193;
          v195[4] = v194;
          v195[1] = v212;
          v195[2] = v192;
          v195[0] = v211;
          v159 = v186;
          v147 = v186;

          v148 = v178;

          (a20)(v195, &v198, v147, v171, v115, v172, v148);

          sub_185AF6A24(v191);
        }

        sub_185ACF5CC(v188, &unk_1EA8CD9A0, &unk_185B6C2C0);
        sub_185AF6A78(&v198);
        sub_185B06EBC(v209);
        goto LABEL_34;
      }
    }

    else
    {
      sub_185B03ED8(&v198, v195);
      v134 = sub_185B67B6C();
      v135 = sub_185B6808C();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v191[0] = v137;
        *v136 = 136446210;
        v139 = *(&v195[0] + 1);
        v138 = *&v195[0];

        sub_185AF6A78(v195);
        v140 = sub_185ACB2C4(v138, v139, v191);
        v115 = v176;

        *(v136 + 4) = v140;
        _os_log_impl(&dword_185AC1000, v134, v135, "could not fetch bundle record for %{public}s to generate authentication description", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v137);
        MEMORY[0x1865FE2F0](v137, -1, -1);
        MEMORY[0x1865FE2F0](v136, -1, -1);
      }

      else
      {

        sub_185AF6A78(v195);
      }
    }

    v141 = 0;
    v142 = 0;
    goto LABEL_27;
  }

  sub_185ACF5CC(&atoken, &qword_1EA8CD008, &unk_185B6CA30);
  v93 = v164;
  sub_185AD04BC(v189, v164, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v94 = sub_185B67B6C();
  v95 = sub_185B680AC();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *atoken.val = v97;
    *v96 = 136446722;
    sub_185AD04BC(v93, v162, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v98 = sub_185B67EBC();
    v100 = v99;
    sub_185ACF5CC(v93, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v101 = sub_185ACB2C4(v98, v100, &atoken);

    *(v96 + 4) = v101;
    *(v96 + 12) = 1024;
    *(v96 + 14) = v182;
    *(v96 + 18) = 1024;
    *(v96 + 20) = v180;
    _os_log_impl(&dword_185AC1000, v94, v95, "guard with uuid %{public}s trivial check for %d (will not track %d)", v96, 0x18u);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    MEMORY[0x1865FE2F0](v97, -1, -1);
    MEMORY[0x1865FE2F0](v96, -1, -1);
  }

  else
  {

    sub_185ACF5CC(v93, &unk_1EA8CD9A0, &unk_185B6C2C0);
  }

  v116 = v177;
  sub_185AFEE10(v171, v176);
  v172(0);
}

void sub_185B0562C(void (*a1)(void *), uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v20);
    _Block_copy(a4);
    swift_unknownObjectRelease();
    sub_185AC66F8(v20, v21);
    a1(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    _Block_copy(a4);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v7 = sub_185B67B8C();
    __swift_project_value_buffer(v7, qword_1EA8D2278);
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_185AC1000, v8, v9, "No policy for guard!", v10, 2u);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }

    v11 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v13 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = v13;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v14;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v15 = v11;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_185B67D7C();

    v18 = [v16 initWithDomain:v15 code:6 userInfo:v17];

    _Block_copy(a4);
    v19 = sub_185B6791C();
    (a4)[2](a4, v19);

    _Block_release(a4);
  }

  _Block_release(a4);
}

void sub_185B05910(void (*a1)(void *), uint64_t a2, uint64_t a3, void (*a4)(id))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v19);
    swift_unknownObjectRelease();
    sub_185AC66F8(v19, v20);
    a1(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v7 = sub_185B67B8C();
    __swift_project_value_buffer(v7, qword_1EA8D2278);
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_185AC1000, v8, v9, "No policy for guard!", v10, 2u);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }

    v11 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v13 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = v13;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v14;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v15 = v11;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_185B67D7C();

    v18 = [v16 initWithDomain:v15 code:6 userInfo:v17];

    a4(v18);
  }
}

uint64_t sub_185B05BFC(uint64_t a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_185AFF434(a1, v5, v1 + v4, v6);
}

void sub_185B05CC8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  v5 = AppProtectionFeatures.enabled.getter();
  if (v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_185AFC774(sub_185B077A8, v7, sub_185B07174);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 351, 0xD00000000000003ALL, 0x8000000185B75DA0);
    v9 = sub_185B6791C();
    (a4)[2](a4, v9);
  }
}

void sub_185B05E7C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  v5 = AppProtectionFeatures.enabled.getter();
  if (v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_185AFC774(sub_185B077A8, v7, sub_185B0778C);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 543, 0xD000000000000057, 0x8000000185B75AD0);
    v9 = sub_185B6791C();
    (a4)[2](a4, v9);
  }
}

void sub_185B0604C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  *(swift_allocObject() + 16) = a6;
  _Block_copy(a6);
  v7 = AppProtectionFeatures.enabled.getter();
  if (v7)
  {
    v8 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    sub_185AFC774(sub_185B077A8, v9, sub_185B06FB0);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 382, 0xD00000000000006CLL, 0x8000000185B75D30);
    v11 = sub_185B6791C();
    (a6)[2](a6, v11);
  }
}

void sub_185B06218(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  v5 = AppProtectionFeatures.enabled.getter();
  if (v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_185AFC774(sub_185B06F74, v7, sub_185B06FA4);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0, 0, 392, 0xD000000000000036, 0x8000000185B75CF0);
    v9 = sub_185B6791C();
    (a4)[2](a4, 0, v9);
  }
}

void sub_185B063B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  v19 = 0;
  _Block_copy(a7);
  _Block_copy(a7);
  v15 = AppProtectionFeatures.enabled.getter();
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a6;
    v18[6] = a4;
    v18[7] = a5;
    v18[8] = sub_185B077AC;
    v18[9] = v14;
    _Block_copy(a7);

    sub_185B0562C(sub_185B06E88, v18, a6, a7);
    _Block_release(a7);

    _Block_release(a7);
  }

  else
  {
    v16 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 419, 0xD000000000000071, 0x8000000185B75C20);
    v17 = sub_185B6791C();
    (a7)[2](a7, v17);

    _Block_release(a7);
  }
}

void sub_185B06590(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v11 = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v7 = AppProtectionFeatures.enabled.getter();
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = a2;
    v10[3] = a1;
    v10[4] = sub_185B077AC;
    v10[5] = v6;
    _Block_copy(a3);

    sub_185B0562C(sub_185B06E7C, v10, a2, a3);
    _Block_release(a3);

    _Block_release(a3);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 436, 0xD000000000000020, 0x8000000185B75BF0);
    v9 = sub_185B6791C();
    (a3)[2](a3, v9);

    _Block_release(a3);
  }
}

void sub_185B06738(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  v5 = AppProtectionFeatures.enabled.getter();
  if (v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_185AFC774(sub_185AE7948, v7, sub_185B06DB4);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 464, 0xD000000000000033, 0x8000000185B75B90);
    v9 = sub_185B6791C();
    (a4)[2](a4, 0, v9);
  }
}

void sub_185B068F0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  v5 = AppProtectionFeatures.enabled.getter();
  if (v5)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_185AFC774(sub_185B077A8, v7, sub_185B06D10);
  }

  else
  {
    v8 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 496, 0xD000000000000031, 0x8000000185B75B50);
    v9 = sub_185B6791C();
    (a4)[2](a4, v9);
  }
}

void sub_185B06AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  *(swift_allocObject() + 16) = a5;
  _Block_copy(a5);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v7 = MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    sub_185AFC774(sub_185B077A8, v8, sub_185B06C8C);
  }

  else
  {
    v9 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 543, 0xD000000000000057, 0x8000000185B75AD0);
    v10 = sub_185B6791C();
    (a5)[2](a5, v10);
  }
}

unint64_t sub_185B06CBC()
{
  result = qword_1EA8CB6D0;
  if (!qword_1EA8CB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6D0);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185B06DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_185AFDFB8(a1, a2, v2 + v6, v7);
}

id sub_185B06F30(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_185B06F3C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0) - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);

  if (*(v0 + 6))
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 29);
  v3 = sub_185B67AFC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(&v0[v2], 1, v3))
  {
    (*(v4 + 8))(&v0[v2], v3);
  }

  return swift_deallocObject();
}

void sub_185B071A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0) - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);
  sub_185AFBA68(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + 40), *(v0 + 176), (v0 + 184), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), v0 + v2, *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + *(v1 + 64) + 9) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_127Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_121Tm()
{

  return swift_deallocObject();
}

uint64_t sub_185B07340(char a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 103) & 0xFFFFFFFFFFFFFFF8));

  return sub_185AFACB4(a1, a2, v2 + v6, (v2 + v7), v8);
}

void sub_185B073FC(char a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_185AFAB6C(a1, a2, v2 + v6, v7);
}

uint64_t get_enum_tag_for_layout_string_13AppProtection13APGuardActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_185B074F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_185B07550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_185B075F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_185B07638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_185B076C4()
{
  result = qword_1EA8CD0A0;
  if (!qword_1EA8CD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD0A0);
  }

  return result;
}

unint64_t sub_185B0771C()
{
  result = qword_1EA8CD0A8;
  if (!qword_1EA8CD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD0A8);
  }

  return result;
}

uint64_t (*sub_185B077B0(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_185AE7A7C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_185AE7AD8(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_185B0B2D4(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_185B4E9EC(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_185B4E9EC((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_185B0B2D4(v15, v9 + 16 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = sub_185AE7AD8(v16);
      }

      ++v7;
      v8 += 16;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_185B07A64()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 32));
  sub_185B0B330((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

void *sub_185B07AEC(void *a1)
{
  v2 = sub_185B67AFC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  result = MEMORY[0x1EEE9AC00](v5);
  v11 = &v26 - v10;
  v30 = a1;
  v12 = *a1;
  v13 = *(v12 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = 0;
  v15 = v12 + 32;
  v31 = (v9 + 8);
  v32 = (v9 + 32);
  v27 = v13;
  v28 = v12;
  while (v14 < *(v12 + 16))
  {
    sub_185AE7A7C(v15, v33);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_5;
    }

    v16 = v34;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16);
    swift_unknownObjectRelease();
    (*v32)(v11, v7, v2);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_4;
    }

    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (!v18)
    {
      swift_unknownObjectRelease();
LABEL_4:
      (*v31)(v11, v2);
      goto LABEL_5;
    }

    v19 = v18;
    result = v30[1];
    if (!result)
    {
      goto LABEL_14;
    }

    v20 = v7;
    v21 = [result remoteObjectProxy];
    sub_185B682AC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
    swift_dynamicCast();
    v22 = v35;
    v23 = swift_getObjectType();
    v24 = v29;
    (*(v19 + 16))(v23, v19);
    sub_185B0AB28(v22, v24, v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v25 = *v31;
    (*v31)(v24, v2);
    v25(v11, v2);
    v7 = v20;
    v13 = v27;
    v12 = v28;
LABEL_5:
    ++v14;
    result = sub_185AE7AD8(v33);
    v15 += 16;
    if (v13 == v14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_185B07E0C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1ED6F5130);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v13 = 136446466;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_185B6856C();
    v29 = v3;
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v17 = sub_185ACB2C4(v14, v16, &v30);
    v3 = v29;

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2 & 1;
    _os_log_impl(&dword_185AC1000, v11, v12, "monitor %{public}s locked status update %{BOOL}d", v13, 0x12u);
    v18 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1865FE2F0](v18, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  else
  {

    v19 = (*(v7 + 8))(v9, v6);
  }

  v20 = *(v3 + 32);
  MEMORY[0x1EEE9AC00](v19);
  *(&v28 - 2) = a1;

  os_unfair_lock_lock((v20 + 32));
  sub_185B0B298((v20 + 16), &v30);
  os_unfair_lock_unlock((v20 + 32));
  v21 = v30;

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 40);
    do
    {
      v24 = *v23;
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 24);
      swift_unknownObjectRetain();
      v26(a1, a2 & 1, ObjectType, v24);
      swift_unknownObjectRelease();
      v23 += 2;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_185B08164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v16[2] = a2;

  v5 = sub_185B077B0(sub_185B0B2B4, v16, v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    v18 = a3;
    v7 = v5 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_185AE7A7C(v7, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_185AE7AD8(v17);
      if (Strong)
      {
        swift_getObjectType();
        v10 = swift_conformsToProtocol2();
        if (v10)
        {
          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_185B3CDE4(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_185B3CDE4((v12 > 1), v13 + 1, 1, v8);
          }

          v8[2] = v13 + 1;
          v14 = &v8[2 * v13];
          v14[4] = Strong;
          v14[5] = v11;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v7 += 16;
      --v6;
    }

    while (v6);

    a3 = v18;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
  return result;
}

uint64_t sub_185B082F4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_185B67AFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE70, &unk_185B6C5A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    swift_unknownObjectRelease();
    v19 = *(v4 + 56);
    v19(v16, 0, 1, v3);
  }

  else
  {
    v19 = *(v4 + 56);
    v19(v16, 1, 1, v3);
  }

  (*(v4 + 16))(v14, v33, v3);
  v19(v14, 0, 1, v3);
  v20 = *(v6 + 48);
  sub_185AE7B2C(v16, v8);
  sub_185AE7B2C(v14, &v8[v20]);
  v21 = v4;
  v22 = *(v4 + 48);
  if (v22(v8, 1, v3) != 1)
  {
    v24 = v32;
    sub_185AE7B2C(v8, v32);
    if (v22(&v8[v20], 1, v3) != 1)
    {
      v25 = v21;
      v26 = &v8[v20];
      v27 = v31;
      (*(v21 + 32))(v31, v26, v3);
      sub_185AC7328(&qword_1ED6F45C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v23 = sub_185B67DEC();
      v28 = *(v25 + 8);
      v28(v27, v3);
      sub_185ACF5CC(v14, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185ACF5CC(v16, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v28(v32, v3);
      sub_185ACF5CC(v8, &unk_1EA8CD9A0, &unk_185B6C2C0);
      return v23 & 1;
    }

    sub_185ACF5CC(v14, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185ACF5CC(v16, &unk_1EA8CD9A0, &unk_185B6C2C0);
    (*(v21 + 8))(v24, v3);
    goto LABEL_9;
  }

  sub_185ACF5CC(v14, &unk_1EA8CD9A0, &unk_185B6C2C0);
  sub_185ACF5CC(v16, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (v22(&v8[v20], 1, v3) != 1)
  {
LABEL_9:
    sub_185ACF5CC(v8, &qword_1EA8CCE70, &unk_185B6C5A0);
    v23 = 0;
    return v23 & 1;
  }

  sub_185ACF5CC(v8, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v23 = 1;
  return v23 & 1;
}

id sub_185B087A0(uint64_t a1)
{
  v2 = v1;
  v4 = APGetExtensionMonitorServiceName();
  v5 = v4;
  if (!v4)
  {
    sub_185B67E4C();
    v5 = sub_185B67E1C();
  }

  v6 = APGetExtensionMonitorServiceInterface(v4);
  v7 = APGetClientExtensionMonitorInterface(v6);
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(a1 + 8);
  if (v11)
  {
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

    v11 = [v12 initWithMachServiceName:v5 options:0];

    [v11 setRemoteObjectInterface_];
    [v11 setExportedInterface_];
    [v11 setExportedObject_];
    [v11 _setQueue_];
    v17[4] = sub_185B0B290;
    v17[5] = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_185ACA0E8;
    v17[3] = &block_descriptor_78;
    v13 = _Block_copy(v17);

    [v11 setInterruptionHandler_];
    _Block_release(v13);
    v14 = [v11 _xpcConnection];
    xpc_connection_set_non_launching();
    swift_unknownObjectRelease();
    *(a1 + 8) = v11;
    [v11 resume];
  }

  v15 = v11;

  return v15;
}

uint64_t sub_185B089EC(uint64_t a1)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v1 = sub_185B67B8C();
  __swift_project_value_buffer(v1, qword_1ED6F5130);
  v2 = sub_185B67B6C();
  v3 = sub_185B680AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_185AC1000, v2, v3, "connection to daemon in extension monitor registry interrupted", v4, 2u);
    MEMORY[0x1865FE2F0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B07A64();
  }

  return result;
}

uint64_t sub_185B08B00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = sub_185B67AFC();
  v6 = *(v20[0] - 8);
  v7 = MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  ObjectType = swift_getObjectType();
  v13 = *(a3 + 8);
  sub_185B1F4B4(a2, a1, ObjectType, v13);
  v14 = sub_185B087A0(a1);
  v15 = [v14 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
  swift_dynamicCast();
  v16 = v20[7];
  (*(a3 + 16))(ObjectType, a3);
  (*(v13 + 8))(ObjectType, v13);
  sub_185B0AB28(v16, v11, v9);
  swift_unknownObjectRelease();
  v17 = *(v6 + 8);
  v18 = v20[0];
  v17(v9, v20[0]);
  return v17(v11, v18);
}

void sub_185B08D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v12 = *(a3 + 8);
  v32 = a1;
  sub_185B1F588(a2, a1, ObjectType, v12);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1ED6F5130);
  swift_unknownObjectRetain();
  v14 = sub_185B67B6C();
  v15 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v16;
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v16 = 136315138;
    v17 = *(v12 + 8);
    v30 = v15;
    v17(ObjectType, v12);
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = sub_185B6856C();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_185ACB2C4(v18, v20, v34);

    v22 = v29;
    *(v29 + 1) = v21;
    v23 = v22;
    _os_log_impl(&dword_185AC1000, v14, v30, "end monitoring %s", v22, 0xCu);
    v24 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1865FE2F0](v24, -1, -1);
    MEMORY[0x1865FE2F0](v23, -1, -1);
  }

  v25 = sub_185B087A0(v32);
  v26 = [v25 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
  swift_dynamicCast();
  v27 = v34[5];
  (*(v12 + 8))(ObjectType, v12);
  v28 = sub_185B67ABC();
  (*(v8 + 8))(v10, v7);
  [v27 endMonitoringForMonitorUUID_];
  swift_unknownObjectRelease();
}

id sub_185B09168(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_185B09314@<X0>(void *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_185ACF448(v16, v15);
  v7 = type metadata accessor for APExtensionSubjectMonitorSubscription();
  v8 = objc_allocWithZone(v7);
  sub_185ACF448(v15, &v8[OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_monitorRef]);
  *&v8[OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_registry] = a3;
  v14.receiver = v8;
  v14.super_class = v7;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_185ACF3F4(v15);
  v11 = v10;
  MEMORY[0x1865FCFA0](v11, v12);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_185B67F8C();
  }

  sub_185B67FAC();
  result = sub_185ACF3F4(v16);
  *a4 = v11;
  return result;
}

void sub_185B094D4(unint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = sub_185AE7520(a1, v3);

  if (*a1 >> 62)
  {
    v5 = sub_185B6844C();
    if (v5 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= v4)
    {
LABEL_3:
      sub_185B56F84(v4, v5);
      return;
    }
  }

  __break(1u);
}

void sub_185B0956C()
{
  v1 = *&v0[OBJC_IVAR___APExtensionSubjectMonitorRegistry_state];

  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *(v1 + 25) = 1;
  os_unfair_lock_unlock((v1 + 28));

  if (v2)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1ED6F5130);
    v5 = v0;
    oslog = sub_185B67B6C();
    v6 = sub_185B6809C();

    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    v10 = "cannot resume invalidated monitor %@";
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    sub_185ADF8F0(*&v0[OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject] + OBJC_IVAR___APSubject_clientArenaStorage, v17);
    v14 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v15 = __swift_project_boxed_opaque_existential_1(v14 + 12, v14[15]);
    sub_185B0AA94(v0, *v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    return;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v11 = sub_185B67B8C();
  __swift_project_value_buffer(v11, qword_1ED6F5130);
  v12 = v0;
  oslog = sub_185B67B6C();
  v6 = sub_185B6809C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v12;
    *v8 = v12;
    v13 = v12;
    v10 = "double-resumption of %@";
LABEL_11:
    _os_log_impl(&dword_185AC1000, oslog, v6, v10, v7, 0xCu);
    sub_185ACF5CC(v8, &unk_1EA8CC820, &unk_185B6B2A0);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

LABEL_12:
}

uint64_t sub_185B09868()
{
  sub_185ADF8F0(*(v0 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject) + OBJC_IVAR___APSubject_clientArenaStorage, v6);
  v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_185ADF8F0((v1 + 12), v5);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v5, v5[3]) + 32);

  os_unfair_lock_lock(v2 + 8);
  sub_185B0B218(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  v3 = *(v0 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);

  os_unfair_lock_lock(v3 + 7);
  sub_185AE79CC(&v3[4]);
  os_unfair_lock_unlock(v3 + 7);
}

void __swiftcall APExtensionSubjectMonitorRegistry.init()(APExtensionSubjectMonitorRegistry *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_185B09A60(uint64_t a1, int a2)
{
  v3 = a2 & 1;
  v4 = OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState;
  v5 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState);
  if (v5 != 2 && ((v5 ^ a2) & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject);
  v6[OBJC_IVAR___APExtension_forcedLockedValue] = v3;
  v7 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);

  os_unfair_lock_lock((v7 + 28));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 28));

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v6[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
LABEL_18:
    *(v2 + v4) = v3;
    return;
  }

  v9 = sub_185B6844C();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v9 >= 1)
  {
    v18 = v3;
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1865FD3E0](i, v8);
      }

      else
      {
        v15 = *(v8 + 8 * i + 32);
      }

      v16 = v15;
      sub_185ACF448(v15 + OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_monitorRef, v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_185ACF3F4(v19);
      if (Strong)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_185B6C470;
        *(v11 + 32) = v6;
        type metadata accessor for APSubject(0);
        v12 = v6;
        v13 = sub_185B67F5C();

        v14 = v16;
        [Strong appProtectionSubjectsChanged:v13 forSubscription:v14];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v3 = v18;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_185B09D04(char *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5)
{
  v31 = a3;
  v27 = a2;
  ObjectType = swift_getObjectType();
  v30 = sub_185B67AFC();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_185B67C9C();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185B67CDC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isEffectivelyLocked])
  {
    v18 = swift_allocObject();
    v29 = a4;
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = ObjectType;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_185B0B20C;
    *(v19 + 24) = v18;
    v37 = sub_185AE7948;
    v38 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185B6657C;
    v36 = &block_descriptor_55_0;
    v20 = _Block_copy(&aBlock);

    v21 = APGetAsyncExtensionInfoProxy(v20);
    _Block_release(v20);
    sub_185B67ADC();
    v22 = sub_185B67ABC();
    (*(v8 + 8))(v10, v30);
    if (v31)
    {
      v23 = sub_185B67E1C();
    }

    else
    {
      v23 = 0;
    }

    v37 = v29;
    v38 = a5;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185AC53EC;
    v36 = &block_descriptor_58_1;
    v26 = _Block_copy(&aBlock);

    [v21 authenticateForExtensionWithUUID:v22 reasonDescription:v23 completion:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v31 = qword_1EA8D2348;
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v37 = sub_185ACA0B8;
    v38 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185ACA0E8;
    v36 = &block_descriptor_46_0;
    v25 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v32 = MEMORY[0x1E69E7CC0];
    sub_185AC7328(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v17, v13, v25);
    _Block_release(v25);
    v29[1](v13, v11);
    (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_185B0A424(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EA8CC098 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA8D2348;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1 & 1;
  *(v9 + 40) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_185AE7978;
  *(v10 + 24) = v9;
  v15[4] = sub_185AE7C88;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_185AD94F4;
  v15[3] = &block_descriptor_68_0;
  v11 = _Block_copy(v15);

  v12 = a2;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_185B0A5D4(void *a1)
{
  if (a1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v2 = sub_185B67B8C();
    __swift_project_value_buffer(v2, qword_1ED6F5130);
    v3 = a1;
    oslog = sub_185B67B6C();
    v4 = sub_185B6808C();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_185AC1000, oslog, v4, "Could not fetch extension info proxy for extensionRequiresAuthentication %@", v5, 0xCu);
      sub_185ACF5CC(v6, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v6, -1, -1);
      MEMORY[0x1865FE2F0](v5, -1, -1);
    }
  }
}

uint64_t sub_185B0A738(void *a1)
{
  if (qword_1EA8CC098 != -1)
  {
    swift_once();
  }

  v2 = qword_1EA8D2348;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_185B0B204;
  *(v4 + 24) = v3;
  v9[4] = sub_185AE7934;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_185AD94F4;
  v9[3] = &block_descriptor_37_1;
  v5 = _Block_copy(v9);
  v6 = a1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B0A8C0(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v6 = sub_185B67B8C();
    __swift_project_value_buffer(v6, qword_1ED6F5130);
    v7 = a2;
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_185AC1000, v8, v9, "Could not check extensionRequiresAuthentication %@", v10, 0xCu);
      sub_185ACF5CC(v11, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v11, -1, -1);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }
  }

  result = swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  return result;
}

uint64_t sub_185B0AA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);

  os_unfair_lock_lock((v2 + 32));
  sub_185B0B238((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

void sub_185B0AB28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33[-v11];
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1ED6F5130);
  v14 = *(v7 + 16);
  v38 = a2;
  v14(v12, a2, v6);
  v14(v10, a3, v6);
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v35 = swift_slowAlloc();
    v39 = v35;
    *v18 = 136446466;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = v16;
    v19 = sub_185B6856C();
    v21 = v20;
    v36 = a3;
    v22 = *(v7 + 8);
    v22(v12, v6);
    v23 = sub_185ACB2C4(v19, v21, &v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = sub_185B6856C();
    v26 = v25;
    v22(v10, v6);
    v27 = sub_185ACB2C4(v24, v26, &v39);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_185AC1000, v15, v34, "begin monitoring extension %{public}s monitor %{public}s", v18, 0x16u);
    v28 = v35;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v28, -1, -1);
    v29 = v18;
    a1 = v37;
    MEMORY[0x1865FE2F0](v29, -1, -1);
  }

  else
  {

    v30 = *(v7 + 8);
    v30(v10, v6);
    v30(v12, v6);
  }

  v31 = sub_185B67ABC();
  v32 = sub_185B67ABC();
  [a1 beginMonitoringForExtensionUUID:v31 monitorUUID:v32];
}

id sub_185B0AEA8(void *a1)
{
  v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState] = 2;
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject] = a1;
  v3 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_nsuuid] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD128, &unk_185B6D118);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 28) = 0;
  *(v6 + 16) = v7;
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_state] = v6;
  *(v6 + 24) = 0;
  v9.receiver = v1;
  v9.super_class = APExtensionSubjectMonitorRegistry;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_185B0AF7C(char *a1)
{
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isEffectivelyLocked])
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v17 = sub_185B0A738;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_185B6657C;
  v16 = &block_descriptor_8;
  v7 = _Block_copy(&aBlock);

  v8 = APGetSyncExtensionInfoProxy(v7);
  _Block_release(v7);
  sub_185B67ADC();
  v9 = sub_185B67ABC();
  (*(v3 + 8))(v5, v2);
  v17 = sub_185B0B1FC;
  v18 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_185AC53EC;
  v16 = &block_descriptor_28_1;
  v10 = _Block_copy(&aBlock);

  [v8 extensionRequiresAuthentication:v9 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v11 = *(v6 + 16);

  return v11;
}

id NotificationReceiverObjCShim.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id NotificationReceiverObjCShim.init(callback:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_185B0B47C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1EA8D2278);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_185B0C288(&qword_1EA8CC000, MEMORY[0x1E6968160], MEMORY[0x1E6968168]);
    v14 = sub_185B6856C();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_185ACB2C4(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_185AC1000, v9, v10, "received note: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    v18 = v12;
    v2 = v20;
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return (*(v2 + OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback))(a1);
}

id NotificationReceiverObjCShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationReceiverObjCShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_185B0B928()
{
  v0 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_185B680EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AC7294();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_185B67CBC();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_185B0C288(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  result = sub_185B6813C();
  qword_1EA8CB7C0 = result;
  return result;
}

void sub_185B0BB58()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "resuming distnoted translator", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  if (qword_1EA8CB7B8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EA8CB7C0;
  v8[4] = sub_185B0C280;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185B12CC8;
  v8[3] = &block_descriptor_9;
  v7 = _Block_copy(v8);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v7);
  _Block_release(v7);
}

const char *sub_185B0BD08(void *a1, uint64_t a2)
{
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v42 = sub_185B67B8C();
  __swift_project_value_buffer(v42, qword_1EA8D2278);
  swift_unknownObjectRetain();
  v8 = sub_185B67B6C();
  v9 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v40 = v4;
    v41 = v5;
    v11 = v10;
    v12 = swift_slowAlloc();
    v44[0] = v12;
    *v11 = 136315138;
    v13 = v7;
    v14 = a2;
    v15 = MEMORY[0x1865FE580](a1);
    v16 = sub_185B67F1C();
    v18 = v17;
    v19 = v15;
    a2 = v14;
    v7 = v13;
    free(v19);
    v20 = sub_185ACB2C4(v16, v18, v44);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_185AC1000, v8, v9, "Received distnoted event %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1865FE2F0](v12, -1, -1);
    v21 = v11;
    v4 = v40;
    v5 = v41;
    MEMORY[0x1865FE2F0](v21, -1, -1);
  }

  result = xpc_dictionary_get_string(a1, "Name");
  if (result)
  {
    sub_185B67F1C();
    if (xpc_dictionary_get_dictionary(a1, "UserInfo"))
    {
      result = _CFXPCCreateCFObjectFromXPCObject();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      v44[0] = result;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA8CD138, &qword_185B6D1B8);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = v7;
        if (qword_1ED6F4CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v42, qword_1ED6F5130);
        swift_unknownObjectRetain();
        v24 = sub_185B67B6C();
        v25 = sub_185B6808C();
        swift_unknownObjectRelease();
        v42 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v40 = a2;
          v27 = v26;
          v39 = swift_slowAlloc();
          v43 = v23;
          v44[0] = v39;
          *v27 = 136315138;
          swift_unknownObjectRetain();
          v28 = sub_185B67EBC();
          v30 = v5;
          v31 = v4;
          v32 = sub_185ACB2C4(v28, v29, v44);

          *(v27 + 4) = v32;
          v4 = v31;
          v5 = v30;
          v33 = v42;
          _os_log_impl(&dword_185AC1000, v42, v25, "unable to cast UserInfo to dictionary: %s", v27, 0xCu);
          v34 = v39;
          __swift_destroy_boxed_opaque_existential_0Tm(v39);
          MEMORY[0x1865FE2F0](v34, -1, -1);
          v35 = v27;
          a2 = v40;
          MEMORY[0x1865FE2F0](v35, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v7 = v41;
      }
    }

    sub_185B67E1C();

    v44[3] = type metadata accessor for DistnotedXPCEventStreamTranslator();
    v44[0] = a2;

    sub_185B677EC();
    v36 = *(a2 + 16);
    v37 = sub_185B677CC();
    [v36 postNotification_];

    return (*(v5 + 1))(v7, v4);
  }

  return result;
}

id sub_185B0C1D0(uint64_t a1)
{
  type metadata accessor for DistnotedXPCEventStreamTranslator();
  v1 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  *(v1 + 16) = result;
  qword_1EA8D22B8 = v1;
  return result;
}

uint64_t sub_185B0C224()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_185B0C288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_185B0C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t APDataSetAccessGrantReason.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0xD000000000000020;
      }

      goto LABEL_8;
    }

    return 0xD00000000000002ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD00000000000001ELL;
      }

LABEL_8:
      sub_185B6836C();

      v2 = sub_185B6856C();
      MEMORY[0x1865FCF60](v2);

      MEMORY[0x1865FCF60](41, 0xE100000000000000);
      return 0xD000000000000023;
    }

    return 0xD000000000000022;
  }
}

uint64_t sub_185B0C47C()
{
  result = sub_185B0C4A0();
  byte_1EA8D2360 = result & 1;
  return result;
}

uint64_t sub_185B0C4A0()
{
  v0 = xpc_copy_entitlement_for_self();
  if (!v0)
  {
    v3 = 0;
    return v3 & 1;
  }

  v1 = v0;
  v2 = MEMORY[0x1865FE700]();
  if (v2 != sub_185B67BCC())
  {
    v3 = 0;
LABEL_12:
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  v4 = swift_unknownObjectRetain();
  v5 = MEMORY[0x1865FE700](v4);
  if (v5 == sub_185B67BCC())
  {
    if (xpc_string_get_string_ptr(v1))
    {
      v6 = sub_185B67F1C();
      v8 = v7;
      swift_unknownObjectRelease();
      if (v6 == 0xD000000000000015 && 0x8000000185B764C0 == v8)
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_185B6859C();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  result = sub_185B6842C();
  __break(1u);
  return result;
}

id sub_185B0C5F4()
{
  result = [objc_allocWithZone(APGuard) init];
  qword_1ED6F4658 = result;
  return result;
}

uint64_t sub_185B0C628()
{
  v7 = sub_185B680EC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v8 = MEMORY[0x1E69E7CC0];
  sub_185ACA36C(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_185B6813C();
  qword_1EA8D2348 = result;
  return result;
}

void sub_185B0C8D8(void *a1, uint64_t (*a2)(), uint64_t a3)
{
  v7 = sub_185B67C9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_185B67CDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    aBlock = 0u;
    v28 = 0u;
    LOBYTE(v29) = 1;
    sub_185B101A8(a1, &aBlock, a2, a3);
  }

  else
  {
    if (![a1 isEffectivelyLocked])
    {
      goto LABEL_12;
    }

    if (qword_1EA8CC3D8 != -1)
    {
      swift_once();
    }

    if (byte_1EA8D2360 == 1)
    {
      v15 = v3;
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v16 = sub_185B67B8C();
      __swift_project_value_buffer(v16, qword_1ED6F5130);
      v17 = sub_185B67B6C();
      v18 = sub_185B680AC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_185AC1000, v17, v18, "authenticating for dismissal for effectively locked application", v19, 2u);
        MEMORY[0x1865FE2F0](v19, -1, -1);
      }

      v29 = a2;
      v30 = a3;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v28 = sub_185AC53EC;
      *(&v28 + 1) = &block_descriptor_242;
      v20 = _Block_copy(&aBlock);

      [v15 authenticateForShieldDismissalForSubject:a1 completion:v20];
      _Block_release(v20);
    }

    else
    {
LABEL_12:
      v24 = v12;
      v25 = v8;
      if (qword_1EA8CC098 != -1)
      {
        swift_once();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      v29 = sub_185ACA0B8;
      v30 = v21;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v28 = sub_185ACA0E8;
      *(&v28 + 1) = &block_descriptor_239;
      v22 = _Block_copy(&aBlock);

      sub_185B67CBC();
      v26 = MEMORY[0x1E69E7CC0];
      sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v14, v10, v22);
      _Block_release(v22);
      (*(v25 + 8))(v10, v7);
      (*(v24 + 8))(v14, v11);
    }
  }
}