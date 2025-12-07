_BYTE *storeEnumTagSinglePayload for SimpleUnlockDeviceFlowHelper(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *sub_1DD01E990(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v5 + 64);

  return memcpy(a1, a2, v11);
}

void sub_1DD01EAC4(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *a1;
  }

  else if (!EnumCaseMultiPayload)
  {
    v4 = sub_1DD0DB04C();
    v5 = *(*(v4 - 8) + 8);

    v5(a1, v4);
  }
}

void *sub_1DD01EB64(void *a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **sub_1DD01EC58(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DD01F2E4(a1, type metadata accessor for UnlockDeviceFlowAsync.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1DD01ED70(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1DD01EE3C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DD01F2E4(a1, type metadata accessor for UnlockDeviceFlowAsync.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DD01EF2C(uint64_t a1)
{
  result = sub_1DD0DB04C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DD01EFBC(uint64_t a1)
{
  result = sub_1DD01F014(&unk_1ECCAC350, type metadata accessor for UnlockDeviceFlowAsync, &unk_1DD10AFD0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DD01F014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD01F06C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_73(v1);

  return sub_1DD01CC38(v3, v4);
}

void sub_1DD01F0F0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v27[3] = v3;
  v27[4] = v1;
  __swift_allocate_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_112();
  (*(v18 + 32))();
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v12 + 8))(v17, v10);
  *(v5 + 120) = sub_1DCB598EC(8);
  *(v5 + 128) = v19;
  *(v5 + 136) = v20;
  *(v5 + 144) = v21;
  *(v5 + 32) = sub_1DD01D4D0(v9);
  sub_1DCB17D04(v7, v5 + 40);
  sub_1DCB17D04(v27, v5 + 80);
  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_33_28();
  sub_1DD01F014(v23, v24, &protocol conformance descriptor for CommandFailure);
  v25 = swift_allocError();
  *v26 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *(v5 + 16) = v25;
  *(v5 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DD01F2E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD01F33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD01F3A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD01F408(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);

  return sub_1DCC0B2EC(a1);
}

void static UnmuteTemplates.promptToUnmuteSiri(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD01F588()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1DD01F61C;

  return static UnmuteTemplates.promptToUnmuteSiri()((v0 + 12));
}

uint64_t sub_1DD01F61C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_1DD01F7BC;
  }

  else
  {
    v5 = sub_1DD01F724;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD01F724()
{
  v5 = v0;
  *(v0 + 168) = 0;
  memcpy((v0 + 16), (v0 + 96), 0x49uLL);
  v1 = *(v0 + 176);
  memcpy(v4, (v0 + 16), 0x49uLL);
  v1(v4);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DD01F7BC()
{
  v6 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 176);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DD01F878()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD01F998()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_1DCD038D0;
  }

  else
  {
    v5 = sub_1DCD03874;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

_BYTE *storeEnumTagSinglePayload for UnmuteTemplates(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD01FB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UnsafeFlowOperationQueueError.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DD01FC78()
{
  result = qword_1ECCAC3B8;
  if (!qword_1ECCAC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC3B8);
  }

  return result;
}

unint64_t sub_1DD01FCD0()
{
  result = qword_1ECCAC3C0;
  if (!qword_1ECCAC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC3C0);
  }

  return result;
}

uint64_t dispatch thunk of UnsafeFlowOperationQueue.wait()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return v7(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for UnsafeFlowOperationQueueError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

double sub_1DD01FF1C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1DD0DD1BC();
  if (v11)
  {
    v56[0] = v10;
    v56[1] = v11;
    sub_1DCD00AE8();
    sub_1DCD00B3C();
    v12 = sub_1DD0DDF3C();

    if (v12)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v13 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v13, qword_1EDE57E00);
      v14 = a1;

      v15 = a4;
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v18 = 136315650;
        v19 = [v14 typeName];
        v20 = a2;
        v21 = v19;
        v22 = sub_1DD0DDFBC();
        log = v16;
        v23 = a3;
        v25 = v24;

        v26 = sub_1DCB10E9C(v22, v25, v56);
        a3 = v23;

        *(v18 + 4) = v26;
        a2 = v20;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1DCB10E9C(v20, v23, v56);
        *(v18 + 22) = 2112;
        *(v18 + 24) = v15;
        *v55 = v15;
        v27 = v15;
        _os_log_impl(&dword_1DCAFC000, log, v17, "UnsetRelationshipConfigHelper makeUnsetRelationshipFlowConfigFor for Intent: %s Parameter: %s ResolutionResult: %@", v18, 0x20u);
        sub_1DCC3C9EC(v55);
        OUTLINED_FUNCTION_80();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      v28 = objc_opt_self();
      if (OUTLINED_FUNCTION_2_115(v28))
      {
        OUTLINED_FUNCTION_0_127();
        sub_1DD020310(v29, v30, v31, v32);
        return result;
      }

      v34 = objc_opt_self();
      if (OUTLINED_FUNCTION_2_115(v34))
      {
        OUTLINED_FUNCTION_0_127();
        sub_1DD0207F8(v35, v36, v37, v38);
        return result;
      }

      v39 = objc_opt_self();
      if (OUTLINED_FUNCTION_2_115(v39))
      {
        OUTLINED_FUNCTION_0_127();
        sub_1DD020CDC(v40, v41, v42, v43);
        return result;
      }

      v44 = objc_opt_self();
      if (OUTLINED_FUNCTION_2_115(v44))
      {
        OUTLINED_FUNCTION_0_127();
        return sub_1DD0211B4(v45, v46, v47, v48);
      }

      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = a2;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_1DCB10E9C(v51, a3, v56);
        _os_log_impl(&dword_1DCAFC000, v49, v50, "Opting to not run UnsetRelationshipFlow for unsupported resolution response for parameter: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }
    }
  }

  *(a5 + 32) = 0;
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

void sub_1DD020310(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 == 0x73746361746E6F63 && a3 == 0xE800000000000000;
  if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INStartCallIntent does not have a contact";
    goto LABEL_33;
  }

  v7 = sub_1DD0214D8(a1, &selRef_contacts);
  if (!v7)
  {
LABEL_29:
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INStartCallIntent does not have a contact relationship";
LABEL_33:
    _os_log_impl(&dword_1DCAFC000, v28, v29, v31, v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
LABEL_34:

LABEL_35:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v8 = v7;
  if (!sub_1DCB08B14(v7))
  {

    goto LABEL_29;
  }

  sub_1DCB35460(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E12A72C0](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 relationship];

  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = sub_1DD0214D8(a1, &selRef_contacts);
  if (v12)
  {
    v13 = v12;
    if (sub_1DCB08B14(v12))
    {
      sub_1DCB35460(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E12A72C0](0, v13);
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = sub_1DD02142C(v15);
      if (v16)
      {
        v17 = sub_1DCB08B14(v16);

        if (v17)
        {
          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v18 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v18, qword_1EDE57E00);
          v19 = a1;
          v20 = sub_1DD0DD8EC();
          v21 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v40 = v23;
            *v22 = 136315138;
            v24 = sub_1DD0214D8(v19, &selRef_contacts);
            if (v24)
            {
              v25 = v24;
              if (sub_1DCB08B14(v24))
              {
                sub_1DCB35460(0, (v25 & 0xC000000000000001) == 0, v25);
                if ((v25 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12A72C0](0, v25);
                }

                else
                {
                  v26 = *(v25 + 32);
                }
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
            v37 = sub_1DD0DE02C();
            v39 = sub_1DCB10E9C(v37, v38, &v40);

            *(v22 + 4) = v39;
            _os_log_impl(&dword_1DCAFC000, v20, v21, "UnsetRelationshipConfigHelper startCall contact has SiriMatches: %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v23);
            MEMORY[0x1E12A8390](v23, -1, -1);
            MEMORY[0x1E12A8390](v22, -1, -1);
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
    }
  }

  v33 = type metadata accessor for StartCallUnsetRelationshipFlowConfig(0);
  *(a4 + 24) = v33;
  *(a4 + 32) = &off_1F58760D0;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  static RelationshipLabel.from(intentsRelationship:)(boxed_opaque_existential_1Tm);
  v35 = *(v33 + 20);

  v36 = (boxed_opaque_existential_1Tm + v35);
  *v36 = 0x6C6143656E6F6870;
  v36[1] = 0xE90000000000006CLL;
}

void sub_1DD0207F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 == 0x6E65697069636572 && a3 == 0xE900000000000074;
  if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INSendMessageIntent does not have a recipient";
    goto LABEL_33;
  }

  v7 = sub_1DD0214D8(a1, &selRef_recipients);
  if (!v7)
  {
LABEL_29:
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INSendMessageIntent does not have a recipient relationship";
LABEL_33:
    _os_log_impl(&dword_1DCAFC000, v28, v29, v31, v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
LABEL_34:

LABEL_35:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v8 = v7;
  if (!sub_1DCB08B14(v7))
  {

    goto LABEL_29;
  }

  sub_1DCB35460(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E12A72C0](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 relationship];

  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = sub_1DD0214D8(a1, &selRef_recipients);
  if (v12)
  {
    v13 = v12;
    if (sub_1DCB08B14(v12))
    {
      sub_1DCB35460(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E12A72C0](0, v13);
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = sub_1DD02142C(v15);
      if (v16)
      {
        v17 = sub_1DCB08B14(v16);

        if (v17)
        {
          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v18 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v18, qword_1EDE57E00);
          v19 = a1;
          v20 = sub_1DD0DD8EC();
          v21 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v40 = v23;
            *v22 = 136315138;
            v24 = sub_1DD0214D8(v19, &selRef_recipients);
            if (v24)
            {
              v25 = v24;
              if (sub_1DCB08B14(v24))
              {
                sub_1DCB35460(0, (v25 & 0xC000000000000001) == 0, v25);
                if ((v25 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12A72C0](0, v25);
                }

                else
                {
                  v26 = *(v25 + 32);
                }
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
            v37 = sub_1DD0DE02C();
            v39 = sub_1DCB10E9C(v37, v38, &v40);

            *(v22 + 4) = v39;
            _os_log_impl(&dword_1DCAFC000, v20, v21, "UnsetRelationshipConfigHelper smsIntent recipient has SiriMatches: %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v23);
            MEMORY[0x1E12A8390](v23, -1, -1);
            MEMORY[0x1E12A8390](v22, -1, -1);
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
    }
  }

  v33 = type metadata accessor for MessageUnsetRelationshipFlowConfig(0);
  *(a4 + 24) = v33;
  *(a4 + 32) = &off_1F5863F88;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  static RelationshipLabel.from(intentsRelationship:)(boxed_opaque_existential_1Tm);
  v35 = *(v33 + 20);

  v36 = (boxed_opaque_existential_1Tm + v35);
  *v36 = 7564659;
  v36[1] = 0xE300000000000000;
}

void sub_1DD020CDC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 == 0x7265646E6573 && a3 == 0xE600000000000000;
  if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INSearchForMessagesIntent does not have a sender";
    goto LABEL_33;
  }

  v7 = sub_1DD0214D8(a1, &selRef_senders);
  if (!v7)
  {
LABEL_29:
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_34;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "UnsetRelationshipConfigHelper INSearchForMessagesIntent does not have a sender relationship";
LABEL_33:
    _os_log_impl(&dword_1DCAFC000, v28, v29, v31, v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
LABEL_34:

LABEL_35:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v8 = v7;
  if (!sub_1DCB08B14(v7))
  {

    goto LABEL_29;
  }

  sub_1DCB35460(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E12A72C0](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 relationship];

  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = sub_1DD0214D8(a1, &selRef_recipients);
  if (v12)
  {
    v13 = v12;
    if (sub_1DCB08B14(v12))
    {
      sub_1DCB35460(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E12A72C0](0, v13);
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = sub_1DD02142C(v15);
      if (v16)
      {
        v17 = sub_1DCB08B14(v16);

        if (v17)
        {
          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v18 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v18, qword_1EDE57E00);
          v19 = a1;
          v20 = sub_1DD0DD8EC();
          v21 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v40 = v23;
            *v22 = 136315138;
            v24 = sub_1DD0214D8(v19, &selRef_recipients);
            if (v24)
            {
              v25 = v24;
              if (sub_1DCB08B14(v24))
              {
                sub_1DCB35460(0, (v25 & 0xC000000000000001) == 0, v25);
                if ((v25 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12A72C0](0, v25);
                }

                else
                {
                  v26 = *(v25 + 32);
                }
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
            v37 = sub_1DD0DE02C();
            v39 = sub_1DCB10E9C(v37, v38, &v40);

            *(v22 + 4) = v39;
            _os_log_impl(&dword_1DCAFC000, v20, v21, "UnsetRelationshipConfigHelper smsSearchIntent recipient has SiriMatches: %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v23);
            MEMORY[0x1E12A8390](v23, -1, -1);
            MEMORY[0x1E12A8390](v22, -1, -1);
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
    }
  }

  v33 = type metadata accessor for MessageUnsetRelationshipFlowConfig(0);
  *(a4 + 24) = v33;
  *(a4 + 32) = &off_1F5863F88;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  static RelationshipLabel.from(intentsRelationship:)(boxed_opaque_existential_1Tm);
  v35 = *(v33 + 20);

  v36 = (boxed_opaque_existential_1Tm + v35);
  *v36 = 7564659;
  v36[1] = 0xE300000000000000;
}

double sub_1DD0211B4@<D0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 == 0xD000000000000013 && 0x80000001DD129EC0 == a3;
  if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "UnsetRelationshipConfigHelper INAddTasksIntent does not have a contactEventTrigger";
    goto LABEL_18;
  }

  v7 = [a1 contactEventTrigger];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 triggerContact];

    if (v9)
    {
      v10 = [v9 relationship];

      if (v10)
      {
        v11 = type metadata accessor for AddTaskUnsetRelationshipFlowConfig(0);
        *(a4 + 24) = v11;
        *(a4 + 32) = &off_1F5852F60;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
        static RelationshipLabel.from(intentsRelationship:)(boxed_opaque_existential_1Tm);
        v13 = *(v11 + 20);

        v15 = (boxed_opaque_existential_1Tm + v13);
        *v15 = 0x6B6F6F6265746F6ELL;
        v15[1] = 0xE800000000000000;
        return result;
      }
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "UnsetRelationshipConfigHelper INAddTasksIntent does not have a triggerContact relationship";
LABEL_18:
    _os_log_impl(&dword_1DCAFC000, v17, v18, v20, v19, 2u);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

LABEL_19:

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1DD02142C(void *a1)
{
  v2 = [a1 siriMatches];

  if (!v2)
  {
    return 0;
  }

  sub_1DD021494();
  v3 = sub_1DD0DE2EC();

  return v3;
}

unint64_t sub_1DD021494()
{
  result = qword_1EDE460B0;
  if (!qword_1EDE460B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460B0);
  }

  return result;
}

uint64_t sub_1DD0214D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1DD021494();
  v4 = sub_1DD0DE2EC();

  return v4;
}

uint64_t sub_1DD021534(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipLabel(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD02AACC(a1, v5, type metadata accessor for RelationshipLabel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v5;
  v7 = *(v5 + 1);
  if (EnumCaseMultiPayload != 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v10 = sub_1DD0DB0FC();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  MEMORY[0x1E12A6780](v8, v7);
}

uint64_t UnsetRelationshipFlow.__allocating_init(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = swift_allocObject();
  UnsetRelationshipFlow.init(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)();
  return v5;
}

void UnsetRelationshipFlow.init(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v48 = v2;
  v46 = v3;
  v5 = v4;
  v43 = v4;
  v7 = v6;
  v44 = v6;
  v9 = v8;
  v47 = v8;
  v10 = *v0;
  v11 = type metadata accessor for RelationshipLabel(0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = *(v10 + 80);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  v23 = *(v10 + 88);
  swift_getAssociatedTypeWitness();
  v24 = OUTLINED_FUNCTION_24_17();
  v45 = type metadata accessor for UnsetRelationshipFlowAsync(v24, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_24_17();
  v32 = type metadata accessor for AnyUnsetRelationshipFlowStrategy(v28, v29, v30, v31);
  (*(v18 + 16))(v22, v9, v17);
  sub_1DD031A2C(v22, v17, v23);
  v56 = v33;
  sub_1DD02AACC(v7, v16, type metadata accessor for RelationshipLabel);
  sub_1DCB17D04(v5, &v53);
  v34 = type metadata accessor for ContactsManagingAsyncAdapter();
  v35 = swift_allocObject();
  sub_1DCAFF9E8(&v53, v35 + 16);
  v54 = v34;
  v55 = &off_1F5859990;
  *&v53 = v35;
  v36 = v46;
  sub_1DCB17D04(v46, v52);
  v37 = v48;
  sub_1DCB17D04(v48, &v49);
  v38 = type metadata accessor for OutputPublisherAsyncAdapter();
  v39 = swift_allocObject();
  sub_1DCAFF9E8(&v49, v39 + 16);
  v50 = v38;
  v51 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v49 = v39;
  OUTLINED_FUNCTION_6_86();
  WitnessTable = swift_getWitnessTable();
  v41 = UnsetRelationshipFlowAsync.__allocating_init<A>(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)(&v56, v16, &v53, v52, &v49, v32, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  sub_1DD02AB28(v44, type metadata accessor for RelationshipLabel);
  (*(v18 + 8))(v47, v17);
  v1[2] = v41;
  OUTLINED_FUNCTION_49();
}

uint64_t UnsetRelationshipFlowAsync.__allocating_init<A>(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_65_1();
  UnsetRelationshipFlowAsync.init<A>(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)();
  return v7;
}

void sub_1DD021A34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for UnsetRelationshipFlow(0, v1, *(v0 + 88), v2);
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DD021AAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD021AC4);
}

uint64_t sub_1DD021AC4()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB3F98C;

  return sub_1DD0224C8();
}

uint64_t UnsetRelationshipFlow.__deallocating_deinit()
{
  UnsetRelationshipFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD021C48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DD021AAC(a1);
}

uint64_t sub_1DD021D08@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 80);
  v6 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, v3, v4, v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  sub_1DD022128(&v23 - v9);
  OUTLINED_FUNCTION_19();
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v15 = v10[8];
    *a1 = *v10;
    *(a1 + 8) = v15;
    *(a1 + 9) = 1;
  }

  else if (result == 10)
  {
    v14 = *(v10 + 4);
    *a1 = *v10;
    *(a1 + 8) = v14;
  }

  else
  {
    v16 = type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(0, v3, v12, v13);
    OUTLINED_FUNCTION_4_117();
    swift_getWitnessTable();
    swift_allocError();
    OUTLINED_FUNCTION_83_13();
    sub_1DD022128(v17);
    v18 = OUTLINED_FUNCTION_84_14();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v6);
    *a1 = v16;
    *(a1 + 8) = 256;
    v21 = OUTLINED_FUNCTION_19();
    return v22(v21);
  }

  return result;
}

void sub_1DD021E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(*v4 + 80), a3, a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD022128@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

void sub_1DD0221C4(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(v5 + 80), v6, v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DD021E8C(v9, v10, v11, v12);
}

void UnsetRelationshipFlowAsync.init<A>(strategy:requestedRelationship:contactsManager:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v28 = v7;
  v29 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12, v6);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for AnyUnsetRelationshipFlowStrategy(v17, v18, v19, v20);
  (*(v14 + 16))(v16, v13, v5);
  v21 = sub_1DD032728(v16, v5, v3);
  v23 = v22;
  (*(v14 + 8))(v13, v5, v21);
  v1[2] = v23;
  sub_1DCAFF9E8(v11, (v1 + 13));
  sub_1DCAFF9E8(v9, (v1 + 3));
  sub_1DCAFF9E8(v28, (v1 + 8));
  sub_1DD02AA70(v29, v1 + *(*v1 + 120), type metadata accessor for RelationshipLabel);
  v24 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for UnsetRelationshipFlowAsync.State(v24, v25, v26, v27);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

void sub_1DD022460()
{
  OUTLINED_FUNCTION_60();
  type metadata accessor for UnsetRelationshipFlowAsync(0, *(*v0 + 80), v1, v2);
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DD0224C8()
{
  OUTLINED_FUNCTION_39();
  v1[32] = v2;
  v1[33] = v0;
  v3 = *v0;
  v4 = type metadata accessor for PersonAssociation(0);
  v1[34] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = type metadata accessor for RelationshipLabel(0);
  v1[40] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v6 = *(v3 + 80);
  v1[47] = v6;
  v1[48] = type metadata accessor for UnsetRelationshipFlowAsync.State(0, v6, v7, v8);
  OUTLINED_FUNCTION_24_0();
  v1[49] = v9;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD02266C()
{
  v145 = v0;
  v2 = v0[48];
  sub_1DD022128(v0[51]);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_0_128();
      sub_1DD02AA70(v3, v4, v5);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v6 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v6, qword_1EDE57E00);
      OUTLINED_FUNCTION_0_128();
      v7 = OUTLINED_FUNCTION_194();
      sub_1DD02AACC(v7, v8, v9);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      v12 = OUTLINED_FUNCTION_23(v11);
      v13 = v0[45];
      if (v12)
      {
        v14 = v0[44];
        v15 = OUTLINED_FUNCTION_151();
        v16 = OUTLINED_FUNCTION_83();
        v144 = v16;
        *v15 = 136315138;
        OUTLINED_FUNCTION_0_128();
        sub_1DD02AA70(v13, v14, v17);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v19 = *(v14 + 8);
        if (EnumCaseMultiPayload != 1)
        {
          v20 = v0[44];
          v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          sub_1DD0DB0FC();
          OUTLINED_FUNCTION_13_1();
          (*(v22 + 8))(v20 + v21);
        }

        v23 = OUTLINED_FUNCTION_104_7();
        v25 = sub_1DCB10E9C(v23, v19, v24);

        *(v15 + 4) = v25;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_62();
      }

      else
      {

        OUTLINED_FUNCTION_3_126();
        sub_1DD02AB28(v13, v131);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[52] = v132;
      *v132 = v133;
      v132[1] = sub_1DD023128;
      OUTLINED_FUNCTION_73();

      return sub_1DD023B08();
    case 1u:
      v67 = v0[51];
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
      memcpy(v0 + 2, (v67 + *(v68 + 48)), 0x50uLL);
      OUTLINED_FUNCTION_0_128();
      v69 = OUTLINED_FUNCTION_194();
      sub_1DD02AA70(v69, v70, v71);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v72 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v72, qword_1EDE57E00);
      OUTLINED_FUNCTION_0_128();
      v73 = OUTLINED_FUNCTION_194();
      sub_1DD02AACC(v73, v74, v75);
      sub_1DD02AB7C((v0 + 2), (v0 + 12));
      v76 = sub_1DD0DD8EC();
      v77 = sub_1DD0DE6DC();
      sub_1DD02ABD8((v0 + 2));
      v78 = os_log_type_enabled(v76, v77);
      v79 = v0[42];
      if (v78)
      {
        v80 = v0[41];
        v81 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v81 = 136315394;
        v82 = v0[9];
        if (v82)
        {
          v83 = v0[8];
        }

        else
        {
          v83 = 0;
        }

        if (v82)
        {
          v84 = v0[9];
        }

        else
        {
          v84 = 0xE000000000000000;
        }

        v85 = sub_1DCB10E9C(v83, v84, &v144);

        *(v81 + 4) = v85;
        *(v81 + 12) = 2080;
        OUTLINED_FUNCTION_0_128();
        sub_1DD02AA70(v79, v80, v86);
        v87 = swift_getEnumCaseMultiPayload();
        v89 = *v80;
        v88 = v80[1];
        if (v87 != 1)
        {
          v90 = v0[41];
          v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          sub_1DD0DB0FC();
          OUTLINED_FUNCTION_13_1();
          (*(v92 + 8))(v90 + v91);
        }

        v93 = sub_1DCB10E9C(v89, v88, &v144);

        *(v81 + 14) = v93;
        _os_log_impl(&dword_1DCAFC000, v76, v77, "UnsetRelationshipFlow searching for person %s to satisfy relationship '%s'", v81, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_3_126();
        sub_1DD02AB28(v79, v136);
      }

      memcpy(v0 + 22, v0 + 2, 0x50uLL);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[53] = v137;
      *v137 = v138;
      v137[1] = sub_1DD0232D8;
      OUTLINED_FUNCTION_73();

      return sub_1DD02495C();
    case 3u:
      OUTLINED_FUNCTION_5_119();
      sub_1DD02AA70(v31, v32, v33);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v34 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v34, qword_1EDE57E00);
      OUTLINED_FUNCTION_5_119();
      v35 = OUTLINED_FUNCTION_194();
      sub_1DD02AACC(v35, v36, v37);
      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[38];
      if (v40)
      {
        OUTLINED_FUNCTION_151();
        v42 = OUTLINED_FUNCTION_52_0();
        v144 = v42;
        *v1 = 136315138;
        sub_1DD028260();
        v44 = v43;
        OUTLINED_FUNCTION_2_116();
        sub_1DD02AB28(v41, v45);
        v46 = OUTLINED_FUNCTION_104_7();
        v48 = sub_1DCB10E9C(v46, v44, v47);

        *(v1 + 4) = v48;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v49, v50, "UnsetRelationshipFlow prompting to create association: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_2_116();
        sub_1DD02AB28(v41, v122);
      }

      v123 = v0[39];
      v124 = v0[37];
      v125 = *v123;
      OUTLINED_FUNCTION_0_128();
      sub_1DD02AACC(v123 + v126, v124 + v126, v127);
      *v124 = v125;
      v128 = v125;
      sub_1DD025B64();
    case 7u:
      OUTLINED_FUNCTION_5_119();
      sub_1DD02AA70(v94, v95, v96);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v97 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v97, qword_1EDE57E00);
      OUTLINED_FUNCTION_5_119();
      v98 = OUTLINED_FUNCTION_194();
      sub_1DD02AACC(v98, v99, v100);
      v101 = sub_1DD0DD8EC();
      v102 = sub_1DD0DE6DC();
      v103 = os_log_type_enabled(v101, v102);
      v104 = v0[35];
      if (v103)
      {
        OUTLINED_FUNCTION_151();
        v105 = OUTLINED_FUNCTION_52_0();
        v144 = v105;
        *v1 = 136315138;
        sub_1DD028260();
        v107 = v106;
        OUTLINED_FUNCTION_2_116();
        sub_1DD02AB28(v104, v108);
        v109 = OUTLINED_FUNCTION_104_7();
        v111 = sub_1DCB10E9C(v109, v107, v110);

        *(v1 + 4) = v111;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v112, v113, "UnsetRelationshipFlow saving association: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_2_116();
        sub_1DD02AB28(v104, v140);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[54] = v141;
      *v141 = v142;
      v141[1] = sub_1DD023488;
      OUTLINED_FUNCTION_73();

      return sub_1DD025EBC();
    case 9u:
      (*(v0[49] + 8))(v0[51], v0[48]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v114 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v114, qword_1EDE57E00);
      v52 = sub_1DD0DD8EC();
      v115 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v115))
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    case 0xAu:
      (*(v0[49] + 8))(v0[51], v0[48]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v51 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v53))
      {
LABEL_40:
        v116 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v116);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v117, v118, v119, v120, v121, 2u);
        OUTLINED_FUNCTION_62();
      }

LABEL_41:

      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_16_65();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v54 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v57);
        _os_log_impl(&dword_1DCAFC000, v55, v56, "UnsetRelationshipFlow executed in an unexpected state", v2, 2u);
        OUTLINED_FUNCTION_62();
      }

      v58 = v0[50];

      v59 = OUTLINED_FUNCTION_25_0();
      type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(v59, v60, v61, v62);
      OUTLINED_FUNCTION_4_117();
      WitnessTable = swift_getWitnessTable();
      v64 = OUTLINED_FUNCTION_79_0(WitnessTable);
      v66 = v65;
      sub_1DD022128(v65);
      OUTLINED_FUNCTION_97_10(v66, 0);
      *v58 = v64;
      *(v58 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1DD0221C4(v58);
  }
}

uint64_t sub_1DD023128()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD02320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_3_126();
  sub_1DD02AB28(v14, v15);
  v16 = OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_96_10(v16);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DD0232D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DD02ABD8(v2 + 16);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD0233BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_3_126();
  sub_1DD02AB28(v14, v15);
  v16 = OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_96_10(v16);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DD023488()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD02356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_2_116();
  sub_1DD02AB28(v14, v15);
  v16 = OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_96_10(v16);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DD023668()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = OUTLINED_FUNCTION_47_1();
  if (v2(v1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_52_32();
  v3 = OUTLINED_FUNCTION_47_1();
  if (v4(v3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_52_32();
  v5 = OUTLINED_FUNCTION_47_1();
  if (v6(v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_52_32();
  v7 = OUTLINED_FUNCTION_47_1();
  if (v8(v7))
  {
    return 1;
  }

  OUTLINED_FUNCTION_52_32();
  v10 = OUTLINED_FUNCTION_47_1();
  return v11(v10) & 1;
}

uint64_t sub_1DD023734()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 80);
  v1[11] = v6;
  v9 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, v6, v7, v8);
  v1[12] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v1[13] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD0237C8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[10];
  v3 = v1[11];
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[14] = v4;
  *v4 = v5;
  v4[1] = sub_1DD023884;
  v6 = v0[8];
  v7 = v0[9];

  return sub_1DCB63BBC((v0 + 2), v6, v7, v3, v2);
}

uint64_t sub_1DD023884()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD023984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(0, *(v4 + 88), a3, a4);
  OUTLINED_FUNCTION_4_117();
  WitnessTable = swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_79_0(WitnessTable);
  OUTLINED_FUNCTION_112();
  (*(v8 + 16))();
  *v5 = v7;
  *(v5 + 8) = 257;
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  sub_1DD0221C4(v5);
}

void sub_1DD023A6C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  *v2 = v1;
  *(v2 + 8) = 256;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DD0221C4(v2);
}

uint64_t sub_1DD023B08()
{
  OUTLINED_FUNCTION_42();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  OUTLINED_FUNCTION_66();
  v1[12] = *(v4 + 80);
  v5 = OUTLINED_FUNCTION_24_17();
  v1[13] = type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(v5, v6, v7, v8);
  OUTLINED_FUNCTION_24_0();
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_24_17();
  v14 = type metadata accessor for UnsetRelationshipFlowAsync.State(v10, v11, v12, v13);
  v1[16] = v14;
  OUTLINED_FUNCTION_20_0(v14);
  v1[17] = OUTLINED_FUNCTION_38();
  v1[18] = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_24_0();
  v1[19] = v15;
  v1[20] = *(v16 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DD023C64()
{
  OUTLINED_FUNCTION_90();
  if ((sub_1DD023668() & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    sub_1DD0DD8EC();
    v9 = sub_1DD0DE6CC();
    if (OUTLINED_FUNCTION_23(v9))
    {
      v10 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v10);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_86_12();
    OUTLINED_FUNCTION_97_10(v2, 1);
    OUTLINED_FUNCTION_51_31();
    sub_1DD02AACC(v3, v0, v16);
    OUTLINED_FUNCTION_102_7();
    v17 = swift_allocObject();
    v1[28] = v17;
    OUTLINED_FUNCTION_85_11(v17, v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v26);
    sub_1DD0DCF8C();
  }

  __swift_project_boxed_opaque_existential_1((v1[11] + 104), *(v1[11] + 128));
  OUTLINED_FUNCTION_24_0();
  v29 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[24] = v5;
  *v5 = v1;
  v5[1] = sub_1DD023EF4;
  v6 = OUTLINED_FUNCTION_20();

  return v29(v6);
}

uint64_t sub_1DD023EF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD023FDC()
{
  v4 = v1[25];
  if (v4)
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    OUTLINED_FUNCTION_0_128();
    v6 = OUTLINED_FUNCTION_33_1();
    sub_1DD02AACC(v6, v7, v8);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    v11 = OUTLINED_FUNCTION_23(v10);
    v12 = v1[23];
    if (v11)
    {
      v13 = v1[22];
      v14 = OUTLINED_FUNCTION_151();
      v15 = OUTLINED_FUNCTION_83();
      *v14 = 136315138;
      OUTLINED_FUNCTION_0_128();
      sub_1DD02AA70(v12, v13, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *(v13 + 8);
      if (EnumCaseMultiPayload != 1)
      {
        v19 = v1[22];
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        sub_1DD0DB0FC();
        OUTLINED_FUNCTION_13_1();
        (*(v21 + 8))(v19 + v20);
      }

      v22 = OUTLINED_FUNCTION_104_7();
      v24 = sub_1DCB10E9C(v22, v18, v23);

      *(v14 + 4) = v24;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_62();
    }

    else
    {

      OUTLINED_FUNCTION_3_126();
      sub_1DD02AB28(v12, v51);
    }

    v52 = v1[21];
    v53 = v1[11];
    v54 = v1[10];
    type metadata accessor for AnyUnsetRelationshipFlowStrategy(255, v1[12], v30, v31);
    OUTLINED_FUNCTION_6_86();
    swift_getWitnessTable();
    v55 = OUTLINED_FUNCTION_4_11();
    type metadata accessor for UnsetRelationshipToPromptForValueStrategyAdapter(v55, v56, v57, v58);
    v1[7] = *(v53 + 16);
    OUTLINED_FUNCTION_15_66();
    sub_1DD02AACC(v54, v52, v59);
    sub_1DD024918((v1 + 7), v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC770, &qword_1DD10B900);
    sub_1DCB17D04(v53 + 64, (v1 + 2));
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v32 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
  sub_1DD0DD8EC();
  v33 = sub_1DD0DE6CC();
  if (OUTLINED_FUNCTION_23(v33))
  {
    v34 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v34);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_86_12();
  OUTLINED_FUNCTION_97_10(v2, 1);
  OUTLINED_FUNCTION_51_31();
  sub_1DD02AACC(v3, v0, v40);
  OUTLINED_FUNCTION_102_7();
  v41 = swift_allocObject();
  v1[26] = v41;
  OUTLINED_FUNCTION_85_11(v41, v42, v43, v44, v45, v46, v47, v48, v49, v60, v61, v50);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD02448C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD0245E4()
{
  OUTLINED_FUNCTION_39();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_119_3();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DD024668()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD0247C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD0247E4, 0, 0);
}

uint64_t sub_1DD0247E4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DD03E8E8(v3, v4);
}

uint64_t sub_1DD02486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD024890, 0, 0);
}

uint64_t sub_1DD024890()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_5(v1);

  return sub_1DD03E820(v3, v4);
}

uint64_t sub_1DD02495C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v1[55] = v4;
  v1[56] = v0;
  v1[54] = v5;
  OUTLINED_FUNCTION_66();
  v1[57] = *(v6 + 80);
  v7 = OUTLINED_FUNCTION_4_11();
  v11 = type metadata accessor for UnsetRelationshipFlowAsync.State(v7, v8, v9, v10);
  v1[58] = v11;
  OUTLINED_FUNCTION_20_0(v11);
  v1[59] = OUTLINED_FUNCTION_38();
  v12 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v12);
  v1[60] = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for PersonAssociation(0);
  v1[61] = v13;
  OUTLINED_FUNCTION_20_0(v13);
  v1[62] = OUTLINED_FUNCTION_38();
  v14 = OUTLINED_FUNCTION_4_11();
  v1[63] = type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(v14, v15, v16, v17);
  OUTLINED_FUNCTION_24_0();
  v1[64] = v18;
  v1[65] = OUTLINED_FUNCTION_38();
  memcpy(v1 + 2, v3, 0x50uLL);
  v19 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DD024AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  sub_1DCB17D04(v14[56] + 104, (v14 + 38));
  v15 = v14[42];
  v32 = __swift_project_boxed_opaque_existential_1(v14 + 38, v14[41]);
  v16 = v14[3];
  v14[66] = v14[2];
  v14[67] = v16;
  v17 = v14[5];
  v14[68] = v14[4];
  v14[69] = v17;
  v18 = *(v15 + 8);

  v31 = v18 + *v18;
  v19 = swift_task_alloc();
  v14[70] = v19;
  *v19 = v14;
  v19[1] = sub_1DD024C20;
  OUTLINED_FUNCTION_76();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v15 + 8, a12, a13, a14);
}

uint64_t sub_1DD024C20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v6 + 568) = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD024D2C()
{
  v1 = *(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  *(v0 + 256) = 0;
  *(v0 + 288) = &type metadata for FeatureFlagDefinitions.Core;
  *(v0 + 296) = &off_1F585CB38;
  *(v0 + 264) = 0;
  LOBYTE(v1) = (*(v3 + 248))(v0 + 256, v2, v3);
  sub_1DCC4B20C(v0 + 256);
  if (v1)
  {
    v4 = *(v0 + 568);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();
    if (!v5)
    {
LABEL_41:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v9);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_62();
    }

    v15 = *(v0 + 568);

    v60 = MEMORY[0x1E69E7CC0];
    v16 = sub_1DCB08B14(v15);
    v17 = 0;
    v18 = v15 & 0xC000000000000001;
    v19 = v15 & 0xFFFFFFFFFFFFFF8;
    v20 = v15 + 32;
    while (v16 != v17)
    {
      if (v18)
      {
        v21 = MEMORY[0x1E12A72C0](v17, *(v0 + 568));
      }

      else
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_40;
        }

        v21 = *(v20 + 8 * v17);
      }

      v22 = v21;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (sub_1DCF75120(*(v0 + 528), *(v0 + 536), *(v0 + 544), *(v0 + 552)))
      {
        sub_1DD0DECDC();
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      else
      {
      }

      ++v17;
    }

    v4 = v60;
  }

  v23 = sub_1DCF96594(v4);
  v25 = v24;

  *(v0 + 576) = v23;
  if (!v25)
  {
    OUTLINED_FUNCTION_109_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v32 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
    v33 = v23;
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    sub_1DCF98814(v23, 0);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_151();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v23;
      v38 = v33;
      _os_log_impl(&dword_1DCAFC000, v34, v35, "UnsetRelationshipFlow searchForContacts found a single contact: %@", v36, 0xCu);
      sub_1DCB16DB0(v37, qword_1ECCA8AD0, &qword_1DD0E4F90);
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_37();
    }

    v39 = *(v0 + 496);
    v40 = *(v0 + 440);

    OUTLINED_FUNCTION_0_128();
    sub_1DD02AACC(v40, v39 + v41, v42);
    *v39 = v33;
    v43 = v33;
    sub_1DD025B64();
  }

  if (v25 != 1)
  {
    OUTLINED_FUNCTION_109_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v46))
    {
      v47 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v47);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_62();
    }

    v53 = *(v0 + 520);
    v54 = *(v0 + 448);

    OUTLINED_FUNCTION_97_10(v53, 2);
    v55 = swift_allocObject();
    *(v0 + 584) = v55;
    *(v55 + 16) = v54;
    memcpy((v55 + 24), (v0 + 16), 0x50uLL);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_109_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v26 = sub_1DD0DD8FC();
  *(v0 + 600) = OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);

  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v28))
  {
    v29 = OUTLINED_FUNCTION_151();
    *v29 = 134217984;
    *(v29 + 4) = sub_1DCB08B14(v23);
    sub_1DCF98814(v23, 1);
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v30, v31, "UnsetRelationshipFlow searchForContacts found %ld contacts matching search parameters. Will need to disambiguate.");
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    sub_1DCF98814(v23, 1);
  }

  v56 = *(v0 + 448);

  *(v0 + 608) = *(v56 + 16);
  memcpy((v0 + 96), (v0 + 16), 0x50uLL);
  v57 = swift_task_alloc();
  *(v0 + 616) = v57;
  *v57 = v0;
  v57[1] = sub_1DD02551C;
  OUTLINED_FUNCTION_117();

  return sub_1DD03DB54();
}

uint64_t sub_1DD025348()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD0254A0()
{
  OUTLINED_FUNCTION_39();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_16();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DD02551C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v9 + 624) = v8;
  *(v9 + 632) = v0;

  sub_1DCF98814(v5, 1);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DD02563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v17))
  {
    v18 = OUTLINED_FUNCTION_151();
    *v18 = 134217984;
    *(v18 + 4) = sub_1DD0DE3BC();

    _os_log_impl(&dword_1DCAFC000, v16, v14, "UnsetRelationshipFlow received %ld disambiguation items. Proceeding to disambiguation.", v18, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v19 = v15[76];
  v20 = v15[60];
  v21 = v15[57];
  v23 = v15[55];
  v22 = v15[56];
  type metadata accessor for AnyUnsetRelationshipFlowStrategy(255, v21, v24, v25);
  OUTLINED_FUNCTION_6_86();
  swift_getWitnessTable();
  v26 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for UnsetRelationshipToPromptForDisambiguationStrategyAdapter(v26, v27, v28, v29);
  v15[52] = v19;
  OUTLINED_FUNCTION_15_66();
  sub_1DD02AACC(v23, v20, v30);
  sub_1DD024918((v15 + 52), v20);
  v31 = sub_1DD031750();
  type metadata accessor for PromptForDisambiguationFlowAsync(0, v21, v31, v32);
  sub_1DCB17D04(v22 + 64, (v15 + 43));
  sub_1DD0DCF8C();
}

void sub_1DD0258B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = v18[79];
  v22 = v21;
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_151();
    v25 = OUTLINED_FUNCTION_52_0();
    a10 = v25;
    *v21 = 136315138;
    swift_getErrorValue();
    v26 = sub_1DD0DF18C();
    v28 = sub_1DCB10E9C(v26, v27, &a10);

    *(v21 + 1) = v28;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v29, v30, "UnsetRelationshipFlow unexpected error while making disambiguation items: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  v31 = v18[79];
  v32 = v18[59];
  *v32 = v31;
  *(v32 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v33 = v31;
  sub_1DD0221C4(v32);
}

uint64_t sub_1DD025A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD025A44, 0, 0);
}

uint64_t sub_1DD025A44()
{
  OUTLINED_FUNCTION_42();
  memcpy((v0 + 16), *(v0 + 112), 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1DCE7CB88;

  return sub_1DD03D8E8();
}

uint64_t sub_1DD025AE8()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_65_1();
  v1 = OUTLINED_FUNCTION_86();
  sub_1DD028EC8(v1, v2);
  return v0;
}

void sub_1DD025B64()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 80);
  v5 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for UnsetRelationshipFlowAsync.State(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = type metadata accessor for PersonAssociation(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = type metadata accessor for RelationshipLabel(0);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  type metadata accessor for AnyUnsetRelationshipFlowStrategy(255, v4, v22, v23);
  OUTLINED_FUNCTION_6_86();
  swift_getWitnessTable();
  v24 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for UnsetRelationshipToPromptForConfirmationStrategyAdapter(v24, v25, v26, v27);
  v31[0] = *(v0 + 16);
  v28 = *v2;
  OUTLINED_FUNCTION_0_128();
  sub_1DD02AACC(v2 + v29, v21, v30);
  sub_1DD025DF0(v31, v28, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC780, &qword_1DD10B918);
  sub_1DD02AACC(v2, v15, type metadata accessor for PersonAssociation);
  sub_1DCB17D04(v0 + 64, v31);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD025DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_65_1();
  v5 = OUTLINED_FUNCTION_19();
  sub_1DD029B50(v5, v6, a3);
  return v4;
}

uint64_t sub_1DD025E78(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v3 = *(a1 + 4);
  v5 = *a1;
  v6 = v3;
  return a3(&v5);
}

uint64_t sub_1DD025EBC()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  OUTLINED_FUNCTION_66();
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(v4 + 80), v5, v6);
  v1[11] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[12] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD025F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v10 = v9[9];
  __swift_project_boxed_opaque_existential_1((v9[10] + 104), *(v9[10] + 128));
  type metadata accessor for PersonAssociation(0);
  v9[13] = *v10;
  OUTLINED_FUNCTION_42_34();
  v23 = v11 + *v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v9[14] = v12;
  *v12 = v13;
  v12[1] = sub_1DD026088;
  OUTLINED_FUNCTION_48();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_1DD026088()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD026170()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *v1 = v2;
  *(v1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  sub_1DD0221C4(v1);
}

uint64_t sub_1DD0263C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD0264D0()
{
  OUTLINED_FUNCTION_42();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DD026530()
{
  OUTLINED_FUNCTION_41();
  v18 = v0;
  v2 = *(v0 + 144);

  v3 = v2;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_52_0();
    v17 = v7;
    *v1 = 136315138;
    *(v0 + 56) = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v9 = sub_1DD0DE02C();
    v11 = sub_1DCB10E9C(v9, v10, &v17);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v12, v13, "UnsetRelationshipFlow ran into an error while reporting success to the user. Completing flow normally. Error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v14 = *(v0 + 144);
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DD026694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD0266B8, 0, 0);
}

uint64_t sub_1DD0266B8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = *(type metadata accessor for PersonAssociation(0) + 20);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_39_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCBF9B9C;
  v7 = *(v0 + 16);

  return sub_1DD03E688(v7, v2, v1 + v3);
}

void sub_1DD026768()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *(*v1 + 80);
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, v4, v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v72.i8[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v72 - v16;
  v18 = type metadata accessor for RelationshipLabel(0);
  v19 = OUTLINED_FUNCTION_20_0(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_16();
  v23 = v22 - v21;
  memcpy(v79, v3, 0x51uLL);
  sub_1DD022128(v17);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    OUTLINED_FUNCTION_0_128();
    sub_1DD02AA70(v17, v23, v24);
    v25 = v79[0].i64[0];
    v26 = v79[0].u8[8];
    v27 = *(&v79[0].u32[2] + 1) | ((*(&v79[0].u16[6] + 1) | (v79[0].u8[15] << 16)) << 32);
    if (v79[5].i8[0])
    {
      if (v79[5].u8[0] == 1)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v28 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
        v29 = v79[0].i64[0];
        v30 = sub_1DD0DD8EC();
        v31 = sub_1DD0DE6DC();
        sub_1DCB16DB0(v79, &qword_1ECCAC768, &qword_1DD10B8D8);
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_151();
          v75.i64[0] = v25;
          v33 = v32;
          v34 = OUTLINED_FUNCTION_83();
          v76 = v26;
          v26 = v34;
          v78[0] = v34;
          *v33 = 136315138;
          swift_getErrorValue();
          v74.i32[0] = v31;
          v35 = sub_1DD0DF18C();
          v37 = sub_1DCB10E9C(v35, v36, v78);

          *(v33 + 4) = v37;
          OUTLINED_FUNCTION_95_8(&dword_1DCAFC000, v38, v74.i8[0], "UnsetRelationshipFlow received an error during prompt for person: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          LOBYTE(v26) = v76;
          OUTLINED_FUNCTION_80();
          v25 = v75.i64[0];
          OUTLINED_FUNCTION_80();
        }

        *v14 = v25;
        v14[8] = v26 & 1;
        v14[9] = 1;
        OUTLINED_FUNCTION_16_18();
        swift_storeEnumTagMultiPayload();
        v39 = v79[0].i64[0];
      }

      else
      {
        v59 = vorrq_s8(vorrq_s8(v79[3], v79[1]), vorrq_s8(v79[4], v79[2]));
        if (*&vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL)) | v79[0].u8[8] | (v27 << 8) | v79[0].i64[0])
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v60 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v60, qword_1EDE57E00);
          v61 = sub_1DD0DD8EC();
          v62 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_75(v62))
          {
            v63 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_105_11(v63);
            OUTLINED_FUNCTION_233(&dword_1DCAFC000, v64, v65, "UnsetRelationshipFlow user did not answer prompt for person.");
            OUTLINED_FUNCTION_80();
          }

          *v14 = 1;
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v66 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v66, qword_1EDE57E00);
          v67 = sub_1DD0DD8EC();
          v68 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_75(v68))
          {
            v69 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_105_11(v69);
            OUTLINED_FUNCTION_233(&dword_1DCAFC000, v70, v71, "UnsetRelationshipFlow user cancelled during prompt for person.");
            OUTLINED_FUNCTION_80();
          }

          *v14 = 0;
        }

        *(v14 + 4) = 512;
        OUTLINED_FUNCTION_16_18();
        swift_storeEnumTagMultiPayload();
      }

      sub_1DD0221C4(v14);
    }

    v72 = v79[3];
    v73 = v79[1];
    v74 = v79[4];
    v75 = v79[2];
    v76 = v79[0].u8[8];
    memcpy(v78, v79, 0x51uLL);
    sub_1DD02AB7C(v78, &v77);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v50 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
    v51 = sub_1DD0DD8EC();
    v52 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v52))
    {
      v53 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_105_11(v53);
      OUTLINED_FUNCTION_233(&dword_1DCAFC000, v54, v55, "UnsetRelationshipFlow received a response from prompt for person.");
      OUTLINED_FUNCTION_80();
    }

    v56 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48)];
    sub_1DD02AACC(v23, v14, type metadata accessor for RelationshipLabel);
    *v56 = v25;
    v56[8] = v76;
    v56[15] = BYTE6(v27);
    *(v56 + 13) = WORD2(v27);
    *(v56 + 9) = v27;
    v57 = v75;
    v58 = v74;
    *(v56 + 1) = v73;
    *(v56 + 2) = v57;
    *(v56 + 3) = v72;
    *(v56 + 4) = v58;
    OUTLINED_FUNCTION_16_18();
    swift_storeEnumTagMultiPayload();
    sub_1DD0221C4(v14);
  }

  (*(v9 + 8))(v17, v7);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v40 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_44_22(v42))
  {
    v43 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_105_11(v43);
    _os_log_impl(&dword_1DCAFC000, v41, v23, "UnsetRelationshipFlow received a PromptResult for a person while in an unexpected state", v17, 2u);
    OUTLINED_FUNCTION_80();
  }

  type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(0, v4, v44, v45);
  OUTLINED_FUNCTION_4_117();
  WitnessTable = swift_getWitnessTable();
  v47 = OUTLINED_FUNCTION_10_5(WitnessTable);
  v49 = v48;
  sub_1DD022128(v48);
  __swift_storeEnumTagSinglePayload(v49, 0, 3, v7);
  *v14 = v47;
  v14[8] = 0;
  OUTLINED_FUNCTION_16_18();
  swift_storeEnumTagMultiPayload();
  sub_1DD0221C4(v14);
}

void sub_1DD026DC0()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_66();
  v4 = OUTLINED_FUNCTION_111_6();
  v8 = type metadata accessor for UnsetRelationshipFlowAsync.State(v4, v5, v6, v7);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_96();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = OUTLINED_FUNCTION_108_9();
  v16 = type metadata accessor for RelationshipLabel(v15);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = *v3;
  v23 = *(v3 + 8);
  v24 = *(v3 + 9);
  sub_1DD022128(v1);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    OUTLINED_FUNCTION_0_128();
    sub_1DD02AA70(v1, v21, v25);
    if (v24)
    {
      if (v24 == 1)
      {
        OUTLINED_FUNCTION_101_4();
        if (!v64)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v26 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
        v27 = v22;
        v28 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        v29 = OUTLINED_FUNCTION_106_8();
        sub_1DD02C1D8(v29, v30, v31);
        if (os_log_type_enabled(v28, v23))
        {
          v32 = OUTLINED_FUNCTION_151();
          v33 = OUTLINED_FUNCTION_83();
          v77 = v33;
          OUTLINED_FUNCTION_117_6(4.8149e-34);
          v34 = sub_1DD0DF18C();
          v36 = sub_1DCB10E9C(v34, v35, &v77);

          *(v32 + 4) = v36;
          OUTLINED_FUNCTION_95_8(&dword_1DCAFC000, v37, v23, "UnsetRelationshipFlow received an error during prompt for disambiguation: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_80();
        }

        *v0 = v22;
        *(v0 + 8) = v23 & 1;
        *(v0 + 9) = 1;
        OUTLINED_FUNCTION_131();
        swift_storeEnumTagMultiPayload();
        v38 = v22;
      }

      else
      {
        OUTLINED_FUNCTION_101_4();
        if (v22 | v23)
        {
          if (!v64)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v65 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
          v66 = sub_1DD0DD8EC();
          v67 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_44_22(v67))
          {
            v68 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v68);
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v69, v70, "UnsetRelationshipFlow user did not answer prompt for disambiguation.");
            OUTLINED_FUNCTION_14_3();
          }

          *v0 = 1;
        }

        else
        {
          if (!v64)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v71 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v71, qword_1EDE57E00);
          v72 = sub_1DD0DD8EC();
          v73 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_44_22(v73))
          {
            v74 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v74);
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v75, v76, "UnsetRelationshipFlow user cancelled during prompt for disambiguation.");
            OUTLINED_FUNCTION_14_3();
          }

          *v0 = 0;
        }

        *(v0 + 8) = 512;
        OUTLINED_FUNCTION_131();
        swift_storeEnumTagMultiPayload();
      }

      OUTLINED_FUNCTION_121_4();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v53 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
    v54 = v22;
    v55 = sub_1DD0DD8EC();
    v56 = sub_1DD0DE6DC();
    sub_1DD02C1D8(v22, v23, 0);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_151();
      v58 = v21;
      v59 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v59 = v22;
      v60 = v54;
      _os_log_impl(&dword_1DCAFC000, v55, v56, "UnsetRelationshipFlow received a result for disambiguation: %@", v57, 0xCu);
      sub_1DCB16DB0(v59, qword_1ECCA8AD0, &qword_1DD0E4F90);
      v21 = v58;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_14_3();
    }

    type metadata accessor for PersonAssociation(0);
    OUTLINED_FUNCTION_15_66();
    sub_1DD02AACC(v21, v0 + v61, v62);
    *v0 = v54;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    v63 = v54;
    OUTLINED_FUNCTION_121_4();
  }

  (*(v10 + 8))(v1, v8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v39 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v41))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v42, v43, "UnsetRelationshipFlow received a PromptResult for disambiguation while in an unexpected state");
    OUTLINED_FUNCTION_37();
  }

  v44 = OUTLINED_FUNCTION_111_6();
  type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4_117();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5(WitnessTable);
  OUTLINED_FUNCTION_83_13();
  sub_1DD022128(v49);
  v50 = OUTLINED_FUNCTION_84_14();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v8);
  *v0 = v41;
  *(v0 + 8) = 0;
  OUTLINED_FUNCTION_131();
  swift_storeEnumTagMultiPayload();
  sub_1DD0221C4(v0);
}

void sub_1DD027314()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_66();
  v4 = OUTLINED_FUNCTION_111_6();
  v8 = type metadata accessor for UnsetRelationshipFlowAsync.State(v4, v5, v6, v7);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_96();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = OUTLINED_FUNCTION_108_9();
  v16 = type metadata accessor for PersonAssociation(v15);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = (v20 - v19);
  v22 = *v3;
  v23 = *(v3 + 8);
  v24 = *(v3 + 9);
  sub_1DD022128(v1);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    (*(v10 + 8))(v1, v8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v39 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v41))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v42, v43, "UnsetRelationshipFlow received a PromptResult for confirmation while in an unexpected state");
      OUTLINED_FUNCTION_37();
    }

    v44 = OUTLINED_FUNCTION_111_6();
    type metadata accessor for UnsetRelationshipFlowAsync.UnsetRelationshipFlowError(v44, v45, v46, v47);
    OUTLINED_FUNCTION_4_117();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_10_5(WitnessTable);
    OUTLINED_FUNCTION_83_13();
    sub_1DD022128(v49);
    v50 = OUTLINED_FUNCTION_84_14();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v8);
    *v0 = v41;
    *(v0 + 8) = 0;
    OUTLINED_FUNCTION_86();
    swift_storeEnumTagMultiPayload();
    sub_1DD0221C4(v0);
  }

  OUTLINED_FUNCTION_5_119();
  sub_1DD02AA70(v1, v21, v25);
  if (v24)
  {
    if (v24 == 1)
    {
      OUTLINED_FUNCTION_101_4();
      if (!v59)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v26 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
      v27 = v22;
      v28 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v29 = OUTLINED_FUNCTION_106_8();
      sub_1DCBB12E0(v29, v30, v31);
      if (os_log_type_enabled(v28, v8))
      {
        v32 = OUTLINED_FUNCTION_151();
        v33 = OUTLINED_FUNCTION_83();
        v86 = v33;
        OUTLINED_FUNCTION_117_6(4.8149e-34);
        v34 = sub_1DD0DF18C();
        v36 = sub_1DCB10E9C(v34, v35, &v86);

        *(v32 + 4) = v36;
        OUTLINED_FUNCTION_95_8(&dword_1DCAFC000, v37, v8, "UnsetRelationshipFlow received an error during prompt for confirmation: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_80();
      }

      *v0 = v22;
      *(v0 + 8) = v23 & 1;
      *(v0 + 9) = 1;
      OUTLINED_FUNCTION_90_13();
      swift_storeEnumTagMultiPayload();
      v38 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_101_4();
      if (v22 | v23)
      {
        if (!v59)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v60 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v60, qword_1EDE57E00);
        v61 = sub_1DD0DD8EC();
        v62 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_44_22(v62))
        {
          v63 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v63);
          OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v64, v65, "UnsetRelationshipFlow user did not answer prompt for confirmation.");
          OUTLINED_FUNCTION_14_3();
        }

        *v0 = 1;
      }

      else
      {
        if (!v59)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v72 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v72, qword_1EDE57E00);
        v73 = sub_1DD0DD8EC();
        v74 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_44_22(v74))
        {
          v75 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v75);
          OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v76, v77, "UnsetRelationshipFlow user cancelled during prompt for confirmation.");
          OUTLINED_FUNCTION_14_3();
        }

        *v0 = 0;
      }

      *(v0 + 8) = 512;
      OUTLINED_FUNCTION_90_13();
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_43;
  }

  if (v22 == 2)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v53 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_44_22(v55))
    {
      v56 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_97_0(v56);
      OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v57, v58, "UnsetRelationshipFlow unexpected result for prompt for confirmation. Will retry...");
      OUTLINED_FUNCTION_14_3();
    }
  }

  else
  {
    if (v22)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v78 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v78, qword_1EDE57E00);
      v79 = sub_1DD0DD8EC();
      v80 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_44_22(v80))
      {
        v81 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v81);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v82, v83, "UnsetRelationshipFlow user rejected offer to save the association. We will not save but will return the chosen value.");
        OUTLINED_FUNCTION_14_3();
      }

      v84 = *v21;
      *v0 = *v21;
      *(v0 + 8) = 0;
      OUTLINED_FUNCTION_90_13();
      swift_storeEnumTagMultiPayload();
      v85 = v84;
LABEL_43:
      OUTLINED_FUNCTION_121_4();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v66 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v66, qword_1EDE57E00);
    v54 = sub_1DD0DD8EC();
    v67 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_44_22(v67))
    {
      v68 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_97_0(v68);
      OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v69, v70, "UnsetRelationshipFlow user confirmed that we should save the association.");
      OUTLINED_FUNCTION_14_3();
    }
  }

  OUTLINED_FUNCTION_50_25();
  sub_1DD02AACC(v21, v0, v71);
  OUTLINED_FUNCTION_90_13();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_121_4();
}

unint64_t sub_1DD0278E4(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v8 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a1 + 16), v6, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 3, v8);
  result = 0x4E746361746E6F63;
  switch(EnumTagSinglePayload)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F4E64726143656DLL;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      result = 0x7463657078656E75;
      break;
  }

  return result;
}

unint64_t sub_1DD027A7C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = 0xD000000000000011;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);

      sub_1DD02AB28(v5, type metadata accessor for RelationshipLabel);
      break;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);

      sub_1DD02AB28(v5, type metadata accessor for RelationshipLabel);
      v6 = 0xD000000000000018;
      break;
    case 3u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000016;
      break;
    case 4u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000019;
      break;
    case 5u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000022;
      break;
    case 6u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD00000000000001DLL;
      break;
    case 7u:
      v6 = 0xD000000000000011;
      (*(v3 + 8))(v5, a1);
      break;
    case 8u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000010;
      break;
    case 9u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x726F7272652ELL;
      break;
    case 0xAu:
      (*(v3 + 8))(v5, a1);
      v6 = 0x74656C706D6F632ELL;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      v6 = 0x646574726174732ELL;
      break;
  }

  return v6;
}

char *UnsetRelationshipFlowAsync.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 120);
  type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 8))(&v0[v3]);
  return v0;
}

uint64_t sub_1DD027F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD0224C8();
}

uint64_t UnsetRelationshipPerson.description.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000024, 0x80000001DD129EE0);
  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
  }

  if (!v1)
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v3, v1);

  OUTLINED_FUNCTION_118_4();

  v4 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x1E12A6780](v4);

  OUTLINED_FUNCTION_118_4();

  v5 = OUTLINED_FUNCTION_131();
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  return 0;
}

uint64_t RelationshipLabel.description.getter()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  v4 = (v3 - v2);
  OUTLINED_FUNCTION_0_128();
  v5 = OUTLINED_FUNCTION_194();
  sub_1DD02AACC(v5, v6, v7);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v4;
  if (EnumCaseMultiPayload != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v11 + 8))(&v4[v10]);
  }

  return v9;
}

uint64_t sub_1DD028260()
{
  v1 = v0;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD12A060);
  v2 = [*v0 fullName];
  if (v2)
  {
    v3 = v2;
    sub_1DD0DDFBC();
  }

  v4 = OUTLINED_FUNCTION_19();
  MEMORY[0x1E12A6780](v4);

  MEMORY[0x1E12A6780](0x6974616C6572202CLL, 0xEF3D706968736E6FLL);
  v5 = type metadata accessor for PersonAssociation(0);
  sub_1DD021534(v1 + *(v5 + 20));
  MEMORY[0x1E12A6780](23840, 0xE200000000000000);
  return 0;
}

uint64_t sub_1DD028370()
{
  OUTLINED_FUNCTION_57_21();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DD0283D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_11_74(v11);
  OUTLINED_FUNCTION_48();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD028500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_22_45(v11);
  OUTLINED_FUNCTION_48();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD02863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_22_45(v11);
  OUTLINED_FUNCTION_48();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD028778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_22_45(v11);
  OUTLINED_FUNCTION_48();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD0288B4()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_41_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_37(v1);

  return v4(v3);
}

uint64_t sub_1DD0289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_11_74(v11);
  OUTLINED_FUNCTION_48();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD028B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0283D8(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD028BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD028500(a1, v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD028C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD02863C(a1, v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD028CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD028778(a1, v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD028D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD0288B4();
}

uint64_t sub_1DD028E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0289E8(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD028EC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v4 + 32))(v2 + v5);
  OUTLINED_FUNCTION_66();
  sub_1DD02AA70(a2, v2 + *(v6 + 104), type metadata accessor for RelationshipLabel);
  return v2;
}

uint64_t sub_1DD028F6C()
{
  OUTLINED_FUNCTION_57_21();
  OUTLINED_FUNCTION_74_1();
  return v1(*(v0 + 80));
}

uint64_t sub_1DD028FD4()
{
  OUTLINED_FUNCTION_57_21();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DD02903C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_8_2();
  *(v4 + 16) = v6;
  *(v4 + 24) = *(v7 + 8);
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  *(v4 + 56) = v10;
  OUTLINED_FUNCTION_8_2();
  v12 = *(v11 + 88);
  OUTLINED_FUNCTION_8_2();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_41_33();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v4 + 64) = v16;
  *v16 = v4;
  v16[1] = sub_1DCE7A888;

  return v18(a1, a2, v4 + 16, v14, v12);
}

uint64_t sub_1DD0291D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24_40();
  OUTLINED_FUNCTION_21_53(v10, v11);
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v24 = v12 + *v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 64) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_23_37(v13);
  OUTLINED_FUNCTION_48();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1DD0292FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24_40();
  OUTLINED_FUNCTION_21_53(v10, v11);
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v24 = v12 + *v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 64) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_23_37(v13);
  OUTLINED_FUNCTION_48();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1DD029420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24_40();
  OUTLINED_FUNCTION_21_53(v10, v11);
  OUTLINED_FUNCTION_19_50();
  OUTLINED_FUNCTION_41_33();
  v24 = v12 + *v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 64) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_23_37(v13);
  OUTLINED_FUNCTION_48();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1DD029544()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_41_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_37(v1);

  return v4(v3);
}

uint64_t sub_1DD029678()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  sub_1DD02AB28(v0 + *(v3 + 104), type metadata accessor for RelationshipLabel);
  return v0;
}

uint64_t sub_1DD029708()
{
  sub_1DD029678();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD029768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD02903C(a1, a2);
}

uint64_t sub_1DD029818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0291D8(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD0298C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0292FC(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD029968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD029420(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD029A10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD029544();
}

uint64_t sub_1DD029AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0289E8(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1DD029B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v6 + 32))(v3 + v7);
  OUTLINED_FUNCTION_66();
  *(v3 + *(v8 + 104)) = a2;
  OUTLINED_FUNCTION_66();
  sub_1DD02AA70(a3, v3 + *(v9 + 112), type metadata accessor for RelationshipLabel);
  return v3;
}

uint64_t sub_1DD029C14()
{
  OUTLINED_FUNCTION_57_21();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DD029C7C()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_13();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_41_33();
  v12 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v9;
  *v9 = v10;
  v9[1] = sub_1DD029DD4;

  return v12(v0 + 40, v2, v7, v5);
}

uint64_t sub_1DD029DD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD029ECC()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1DD029EFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD029F3C);
}

uint64_t sub_1DD029F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_103_9();
  OUTLINED_FUNCTION_42_34();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_81(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD02A06C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD02A0AC);
}

uint64_t sub_1DD02A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_103_9();
  OUTLINED_FUNCTION_42_34();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_81(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD02A1DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD02A21C);
}

uint64_t sub_1DD02A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_103_9();
  OUTLINED_FUNCTION_42_34();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_81(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD02A34C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD02A38C);
}

uint64_t sub_1DD02A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_103_9();
  OUTLINED_FUNCTION_42_34();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_81(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DD02A4BC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  sub_1DD02AB28(v0 + *(v4 + 112), type metadata accessor for RelationshipLabel);
  return v0;
}

uint64_t sub_1DD02A57C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD02A5DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD029C7C();
}

uint64_t sub_1DD02A684(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD029EFC(a1);
}

uint64_t sub_1DD02A71C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD02A06C(a1);
}

uint64_t sub_1DD02A7B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD02A1DC(a1);
}

uint64_t sub_1DD02A84C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD02A34C(a1);
}

uint64_t sub_1DD02A8E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD029544();
}

uint64_t sub_1DD02A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return sub_1DD0289E8(a1, a2, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t type metadata accessor for PersonAssociation(uint64_t a1)
{
  result = qword_1ECCAC650;
  if (!qword_1ECCAC650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD02AA70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DD02AACC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DD02AB28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD02AC2C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DD02AC68(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of UnsetRelationshipFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_100_8(v1);

  return v4(v3);
}

uint64_t sub_1DD02AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnsetRelationshipFlowAsync.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of UnsetRelationshipFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_100_8(v1);

  return v4(v3);
}

uint64_t sub_1DD02B0AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RelationshipLabel(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DD02B194(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RelationshipLabel(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void **sub_1DD02B288(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for RelationshipLabel(0);
  v9 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v8 + 1);
  *v7 = *v8;
  *(v7 + 1) = v11;

  if (EnumCaseMultiPayload != 1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v13 = sub_1DD0DB0FC();
    (*(*(v13 - 8) + 16))(&v7[v12], &v8[v12], v13);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DD02B3C0(id *a1, uint64_t a2)
{
  v3 = a1;

  v4 = v3 + *(a2 + 20);
  type metadata accessor for RelationshipLabel(0);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();

  if (v3 != 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v7 = sub_1DD0DB0FC();
    v8 = *(*(v7 - 8) + 8);

    return v8(&v4[v6], v7);
  }

  return result;
}

void **sub_1DD02B484(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  type metadata accessor for RelationshipLabel(0);
  v8 = v4;
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);
  *v6 = *v7;
  *(v6 + 1) = v9;

  if (v4 != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    (*(*(v11 - 8) + 16))(&v6[v10], &v7[v10], v11);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_1DD02B56C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  if (a1 != a2)
  {
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    sub_1DD02AB28(a1 + v9, type metadata accessor for RelationshipLabel);
    type metadata accessor for RelationshipLabel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v10 = *v11;
    *(v10 + 1) = *(v11 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v14 = sub_1DD0DB0FC();
      (*(*(v14 - 8) + 16))(&v10[v13], &v11[v13], v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1DD02B690(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for RelationshipLabel(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    *v5 = *v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    (*(*(v9 - 8) + 32))(v5 + v8, v6 + v8, v9);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void **sub_1DD02B784(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  if (a1 != a2)
  {
    v7 = *(a3 + 20);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    sub_1DD02AB28(a1 + v7, type metadata accessor for RelationshipLabel);
    v10 = type metadata accessor for RelationshipLabel(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }

    else
    {
      *v8 = *v9;
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v12 = sub_1DD0DB0FC();
      (*(*(v12 - 8) + 32))(v8 + v11, v9 + v11, v12);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a1;
}

uint64_t sub_1DD02B8D4(uint64_t a1)
{
  result = type metadata accessor for RelationshipLabel(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DD02B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnsetRelationshipFlowAsync.State(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1DD02B9EC(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  if (__swift_getEnumTagSinglePayload(a2, 3, v7))
  {
    v8 = *(v6 + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        type metadata accessor for RelationshipLabel(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v27 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v27;

        if (EnumCaseMultiPayload != 1)
        {
          v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v41 = sub_1DD0DB0FC();
          (*(*(v41 - 8) + 16))(&a1[v40], &a2[v40], v41);
        }

        swift_storeEnumTagMultiPayload();
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
        v43 = &a1[v42];
        v44 = &a2[v42];
        v45 = *(v44 + 1);
        *v43 = *v44;
        *(v43 + 1) = v45;
        v46 = *(v44 + 3);
        *(v43 + 2) = *(v44 + 2);
        *(v43 + 3) = v46;
        v47 = *(v44 + 5);
        *(v43 + 4) = *(v44 + 4);
        *(v43 + 5) = v47;
        v48 = *(v44 + 7);
        *(v43 + 6) = *(v44 + 6);
        *(v43 + 7) = v48;
        v49 = *(v44 + 9);
        *(v43 + 8) = *(v44 + 8);
        *(v43 + 9) = v49;

        goto LABEL_26;
      case 2u:
        type metadata accessor for RelationshipLabel(0);
        v22 = swift_getEnumCaseMultiPayload();
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;

        if (v22 != 1)
        {
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v38 = sub_1DD0DB0FC();
          (*(*(v38 - 8) + 16))(&a1[v37], &a2[v37], v38);
        }

        swift_storeEnumTagMultiPayload();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        *&a1[*(v39 + 48)] = *&a2[*(v39 + 48)];
        goto LABEL_26;
      case 3u:
      case 6u:
      case 7u:
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for PersonAssociation(0) + 20);
        v14 = &a1[v13];
        v15 = &a2[v13];
        type metadata accessor for RelationshipLabel(0);
        v16 = v12;
        LODWORD(v12) = swift_getEnumCaseMultiPayload();
        v17 = *(v15 + 1);
        *v14 = *v15;
        *(v14 + 1) = v17;

        if (v12 != 1)
        {
          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v19 = sub_1DD0DB0FC();
          (*(*(v19 - 8) + 16))(&v14[v18], &v15[v18], v19);
        }

        goto LABEL_14;
      case 8u:
        v31 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v31;
        v32 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v32;
        v33 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v33;
        v34 = *(a2 + 7);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v34;
        v35 = *(a2 + 8);
        v36 = *(a2 + 9);
        *(a1 + 8) = v35;
        *(a1 + 9) = v36;

LABEL_26:

        break;
      case 9u:
        v24 = *a2;
        v25 = *a2;
        *a1 = v24;
        a1[8] = a2[8];
        break;
      case 0xAu:
        v28 = *a2;
        v29 = a2[9];
        v30 = a2[8];
        sub_1DD02BEE4(v28, v30, v29);
        *a1 = v28;
        a1[8] = v30;
        a1[9] = v29;
        break;
      default:
        type metadata accessor for RelationshipLabel(0);
        v10 = swift_getEnumCaseMultiPayload();
        v11 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v11;

        if (v10 != 1)
        {
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v21 = sub_1DD0DB0FC();
          (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
        }

LABEL_14:
        swift_storeEnumTagMultiPayload();
        break;
    }

    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 3, v7);
    return a1;
  }
}

id sub_1DD02BEE4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1DD02BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a2 + 16), a3, a4);
  if (!__swift_getEnumTagSinglePayload(a1, 3, v5))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:
      case 5u:
        goto LABEL_5;
      case 1u:
        type metadata accessor for RelationshipLabel(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

        if (EnumCaseMultiPayload != 1)
        {
          v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v13 = sub_1DD0DB0FC();
          (*(*(v13 - 8) + 8))(a1 + v12, v13);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
        goto LABEL_15;
      case 2u:
        type metadata accessor for RelationshipLabel(0);
        v17 = swift_getEnumCaseMultiPayload();

        if (v17 != 1)
        {
          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v19 = sub_1DD0DB0FC();
          (*(*(v19 - 8) + 8))(a1 + v18, v19);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        goto LABEL_22;
      case 3u:
      case 6u:
      case 7u:

        a1 += *(type metadata accessor for PersonAssociation(0) + 20);
LABEL_5:
        type metadata accessor for RelationshipLabel(0);
        v6 = swift_getEnumCaseMultiPayload();

        if (v6 != 1)
        {
          v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v8 = sub_1DD0DB0FC();
          v9 = *(*(v8 - 8) + 8);

          v9(a1 + v7, v8);
        }

        return;
      case 8u:
LABEL_15:

LABEL_22:

        break;
      case 9u:
        v10 = *a1;

        break;
      case 0xAu:
        v14 = *a1;
        v15 = *(a1 + 9);
        v16 = *(a1 + 8);

        sub_1DD02C1D8(v14, v16, v15);
        break;
      default:
        return;
    }
  }
}

void sub_1DD02C1D8(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

void *sub_1DD02C1F4(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  if (__swift_getEnumTagSinglePayload(a2, 3, v7))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        type metadata accessor for RelationshipLabel(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v27 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v27;

        if (EnumCaseMultiPayload != 1)
        {
          v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v41 = sub_1DD0DB0FC();
          (*(*(v41 - 8) + 16))(a1 + v40, &a2[v40], v41);
        }

        swift_storeEnumTagMultiPayload();
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
        v43 = (a1 + v42);
        v44 = &a2[v42];
        v45 = *(v44 + 1);
        *v43 = *v44;
        v43[1] = v45;
        v46 = *(v44 + 3);
        v43[2] = *(v44 + 2);
        v43[3] = v46;
        v47 = *(v44 + 5);
        v43[4] = *(v44 + 4);
        v43[5] = v47;
        v48 = *(v44 + 7);
        v43[6] = *(v44 + 6);
        v43[7] = v48;
        v49 = *(v44 + 9);
        v43[8] = *(v44 + 8);
        v43[9] = v49;

        goto LABEL_24;
      case 2u:
        type metadata accessor for RelationshipLabel(0);
        v22 = swift_getEnumCaseMultiPayload();
        v23 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v23;

        if (v22 != 1)
        {
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v38 = sub_1DD0DB0FC();
          (*(*(v38 - 8) + 16))(a1 + v37, &a2[v37], v38);
        }

        swift_storeEnumTagMultiPayload();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        *(a1 + *(v39 + 48)) = *&a2[*(v39 + 48)];
        goto LABEL_24;
      case 3u:
      case 6u:
      case 7u:
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for PersonAssociation(0) + 20);
        v14 = a1 + v13;
        v15 = &a2[v13];
        type metadata accessor for RelationshipLabel(0);
        v16 = v12;
        LODWORD(v12) = swift_getEnumCaseMultiPayload();
        v17 = *(v15 + 1);
        *v14 = *v15;
        *(v14 + 1) = v17;

        if (v12 != 1)
        {
          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v19 = sub_1DD0DB0FC();
          (*(*(v19 - 8) + 16))(&v14[v18], &v15[v18], v19);
        }

        goto LABEL_12;
      case 8u:
        v31 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v31;
        v32 = *(a2 + 3);
        a1[2] = *(a2 + 2);
        a1[3] = v32;
        v33 = *(a2 + 5);
        a1[4] = *(a2 + 4);
        a1[5] = v33;
        v34 = *(a2 + 7);
        a1[6] = *(a2 + 6);
        a1[7] = v34;
        v35 = *(a2 + 8);
        v36 = *(a2 + 9);
        a1[8] = v35;
        a1[9] = v36;

LABEL_24:

        break;
      case 9u:
        v24 = *a2;
        v25 = *a2;
        *a1 = v24;
        *(a1 + 8) = a2[8];
        break;
      case 0xAu:
        v28 = *a2;
        v29 = a2[9];
        v30 = a2[8];
        sub_1DD02BEE4(v28, v30, v29);
        *a1 = v28;
        *(a1 + 8) = v30;
        *(a1 + 9) = v29;
        break;
      default:
        type metadata accessor for RelationshipLabel(0);
        v10 = swift_getEnumCaseMultiPayload();
        v11 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v11;

        if (v10 != 1)
        {
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v21 = sub_1DD0DB0FC();
          (*(*(v21 - 8) + 16))(a1 + v20, &a2[v20], v21);
        }

LABEL_12:
        swift_storeEnumTagMultiPayload();
        break;
    }

    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 3, v7);
    return a1;
  }
}

char *sub_1DD02C6B0(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 3, v7);
  v9 = __swift_getEnumTagSinglePayload(a2, 3, v7);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          type metadata accessor for RelationshipLabel(0);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);

          if (EnumCaseMultiPayload != 1)
          {
            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v40 = sub_1DD0DB0FC();
            (*(*(v40 - 8) + 16))(&a1[v39], &a2[v39], v40);
          }

          swift_storeEnumTagMultiPayload();
          v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
          v42 = &a1[v41];
          v43 = &a2[v41];
          *v42 = *v43;
          *(v42 + 1) = *(v43 + 1);
          *(v42 + 2) = *(v43 + 2);
          *(v42 + 3) = *(v43 + 3);
          *(v42 + 4) = *(v43 + 4);
          *(v42 + 5) = *(v43 + 5);
          *(v42 + 6) = *(v43 + 6);
          *(v42 + 7) = *(v43 + 7);
          *(v42 + 8) = *(v43 + 8);
          *(v42 + 9) = *(v43 + 9);

          goto LABEL_43;
        case 2u:
          type metadata accessor for RelationshipLabel(0);
          v17 = swift_getEnumCaseMultiPayload();
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);

          if (v17 != 1)
          {
            v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v35 = sub_1DD0DB0FC();
            (*(*(v35 - 8) + 16))(&a1[v34], &a2[v34], v35);
          }

          swift_storeEnumTagMultiPayload();
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
          *&a1[*(v36 + 48)] = *&a2[*(v36 + 48)];

          goto LABEL_43;
        case 3u:
          v18 = *a2;
          *a1 = *a2;
          v19 = *(type metadata accessor for PersonAssociation(0) + 20);
          v20 = &a1[v19];
          v21 = &a2[v19];
          type metadata accessor for RelationshipLabel(0);
          v22 = v18;
          LODWORD(v18) = swift_getEnumCaseMultiPayload();
          *v20 = *v21;
          *(v20 + 1) = *(v21 + 1);

          if (v18 != 1)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        case 4u:
          type metadata accessor for RelationshipLabel(0);
          v14 = swift_getEnumCaseMultiPayload();
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);

          if (v14 == 1)
          {
            goto LABEL_42;
          }

          goto LABEL_37;
        case 5u:
          type metadata accessor for RelationshipLabel(0);
          v27 = swift_getEnumCaseMultiPayload();
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);

          if (v27 == 1)
          {
            goto LABEL_42;
          }

          goto LABEL_37;
        case 6u:
          v28 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for PersonAssociation(0) + 20);
          v20 = &a1[v29];
          v21 = &a2[v29];
          type metadata accessor for RelationshipLabel(0);
          v30 = v28;
          LODWORD(v28) = swift_getEnumCaseMultiPayload();
          *v20 = *v21;
          *(v20 + 1) = *(v21 + 1);

          if (v28 == 1)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        case 7u:
          v23 = *a2;
          *a1 = *a2;
          v24 = *(type metadata accessor for PersonAssociation(0) + 20);
          v20 = &a1[v24];
          v21 = &a2[v24];
          type metadata accessor for RelationshipLabel(0);
          v25 = v23;
          LODWORD(v23) = swift_getEnumCaseMultiPayload();
          *v20 = *v21;
          *(v20 + 1) = *(v21 + 1);

          if (v23 == 1)
          {
            goto LABEL_42;
          }

LABEL_41:
          v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v45 = sub_1DD0DB0FC();
          (*(*(v45 - 8) + 16))(&v20[v44], &v21[v44], v45);
          goto LABEL_42;
        case 8u:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = *(a2 + 6);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);

          goto LABEL_43;
        case 9u:
          v15 = *a2;
          v16 = *a2;
          *a1 = v15;
          a1[8] = a2[8];
          goto LABEL_43;
        case 0xAu:
          v31 = *a2;
          v32 = a2[9];
          v33 = a2[8];
          sub_1DD02BEE4(v31, v33, v32);
          *a1 = v31;
          a1[8] = v33;
          a1[9] = v32;
          goto LABEL_43;
        default:
          type metadata accessor for RelationshipLabel(0);
          v10 = swift_getEnumCaseMultiPayload();
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);

          if (v10 != 1)
          {
LABEL_37:
            v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v38 = sub_1DD0DB0FC();
            (*(*(v38 - 8) + 16))(&a1[v37], &a2[v37], v38);
          }

LABEL_42:
          swift_storeEnumTagMultiPayload();
LABEL_43:
          swift_storeEnumTagMultiPayload();
          __swift_storeEnumTagSinglePayload(a1, 0, 3, v7);
          break;
      }

      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      if (a1 != a2)
      {
        (*(*(v7 - 8) + 8))(a1, v7);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            type metadata accessor for RelationshipLabel(0);
            v58 = swift_getEnumCaseMultiPayload();
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);

            if (v58 != 1)
            {
              v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v72 = sub_1DD0DB0FC();
              (*(*(v72 - 8) + 16))(&a1[v71], &a2[v71], v72);
            }

            swift_storeEnumTagMultiPayload();
            v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
            v74 = &a1[v73];
            v75 = &a2[v73];
            *v74 = *v75;
            *(v74 + 1) = *(v75 + 1);
            *(v74 + 2) = *(v75 + 2);
            *(v74 + 3) = *(v75 + 3);
            *(v74 + 4) = *(v75 + 4);
            *(v74 + 5) = *(v75 + 5);
            *(v74 + 6) = *(v75 + 6);
            *(v74 + 7) = *(v75 + 7);
            *(v74 + 8) = *(v75 + 8);
            *(v74 + 9) = *(v75 + 9);

            goto LABEL_72;
          case 2u:
            type metadata accessor for RelationshipLabel(0);
            v49 = swift_getEnumCaseMultiPayload();
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);

            if (v49 != 1)
            {
              v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v67 = sub_1DD0DB0FC();
              (*(*(v67 - 8) + 16))(&a1[v66], &a2[v66], v67);
            }

            swift_storeEnumTagMultiPayload();
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
            *&a1[*(v68 + 48)] = *&a2[*(v68 + 48)];

            goto LABEL_72;
          case 3u:
            v50 = *a2;
            *a1 = *a2;
            v51 = *(type metadata accessor for PersonAssociation(0) + 20);
            v52 = &a1[v51];
            v53 = &a2[v51];
            type metadata accessor for RelationshipLabel(0);
            v54 = v50;
            LODWORD(v50) = swift_getEnumCaseMultiPayload();
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);

            if (v50 != 1)
            {
              goto LABEL_70;
            }

            goto LABEL_71;
          case 4u:
            type metadata accessor for RelationshipLabel(0);
            v46 = swift_getEnumCaseMultiPayload();
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);

            if (v46 == 1)
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          case 5u:
            type metadata accessor for RelationshipLabel(0);
            v59 = swift_getEnumCaseMultiPayload();
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);

            if (v59 == 1)
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          case 6u:
            v60 = *a2;
            *a1 = *a2;
            v61 = *(type metadata accessor for PersonAssociation(0) + 20);
            v52 = &a1[v61];
            v53 = &a2[v61];
            type metadata accessor for RelationshipLabel(0);
            v62 = v60;
            LODWORD(v60) = swift_getEnumCaseMultiPayload();
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);

            if (v60 == 1)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          case 7u:
            v55 = *a2;
            *a1 = *a2;
            v56 = *(type metadata accessor for PersonAssociation(0) + 20);
            v52 = &a1[v56];
            v53 = &a2[v56];
            type metadata accessor for RelationshipLabel(0);
            v57 = v55;
            LODWORD(v55) = swift_getEnumCaseMultiPayload();
            *v52 = *v53;
            *(v52 + 1) = *(v53 + 1);

            if (v55 == 1)
            {
              goto LABEL_71;
            }

LABEL_70:
            v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v77 = sub_1DD0DB0FC();
            (*(*(v77 - 8) + 16))(&v52[v76], &v53[v76], v77);
            goto LABEL_71;
          case 8u:
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);
            *(a1 + 2) = *(a2 + 2);
            *(a1 + 3) = *(a2 + 3);
            *(a1 + 4) = *(a2 + 4);
            *(a1 + 5) = *(a2 + 5);
            *(a1 + 6) = *(a2 + 6);
            *(a1 + 7) = *(a2 + 7);
            *(a1 + 8) = *(a2 + 8);
            *(a1 + 9) = *(a2 + 9);

            goto LABEL_72;
          case 9u:
            v47 = *a2;
            v48 = *a2;
            *a1 = v47;
            a1[8] = a2[8];
            goto LABEL_72;
          case 0xAu:
            v63 = *a2;
            v64 = a2[9];
            v65 = a2[8];
            sub_1DD02BEE4(v63, v65, v64);
            *a1 = v63;
            a1[8] = v65;
            a1[9] = v64;
            goto LABEL_72;
          default:
            type metadata accessor for RelationshipLabel(0);
            v13 = swift_getEnumCaseMultiPayload();
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);

            if (v13 != 1)
            {
LABEL_66:
              v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v70 = sub_1DD0DB0FC();
              (*(*(v70 - 8) + 16))(&a1[v69], &a2[v69], v70);
            }

LABEL_71:
            swift_storeEnumTagMultiPayload();
LABEL_72:
            swift_storeEnumTagMultiPayload();
            break;
        }
      }

      return a1;
    }

    (*(*(v7 - 8) + 8))(a1, v7);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_OWORD *sub_1DD02D784(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  if (__swift_getEnumTagSinglePayload(a2, 3, v7))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v10 = type metadata accessor for RelationshipLabel(0);
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_31;
        }

        goto LABEL_19;
      case 1u:
        v17 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v23 = sub_1DD0DB0FC();
          (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
          swift_storeEnumTagMultiPayload();
        }

        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
        memcpy(a1 + *(v24 + 48), a2 + *(v24 + 48), 0x50uLL);
        goto LABEL_33;
      case 2u:
        v11 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v11 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v20 = sub_1DD0DB0FC();
          (*(*(v20 - 8) + 32))(a1 + v19, a2 + v19, v20);
          swift_storeEnumTagMultiPayload();
        }

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        *(a1 + *(v21 + 48)) = *(a2 + *(v21 + 48));
        goto LABEL_33;
      case 3u:
        *a1 = *a2;
        v12 = *(type metadata accessor for PersonAssociation(0) + 20);
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_15;
        }

        goto LABEL_32;
      case 4u:
        v10 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      case 5u:
        v10 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_19:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
        }

        else
        {
LABEL_31:
          *a1 = *a2;
          v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v26 = sub_1DD0DB0FC();
          (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_33;
      case 6u:
        *a1 = *a2;
        v18 = *(type metadata accessor for PersonAssociation(0) + 20);
        v13 = a1 + v18;
        v14 = a2 + v18;
        v15 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_15;
        }

        goto LABEL_32;
      case 7u:
        *a1 = *a2;
        v16 = *(type metadata accessor for PersonAssociation(0) + 20);
        v13 = a1 + v16;
        v14 = a2 + v16;
        v15 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_15:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
        }

        else
        {
LABEL_32:
          *v13 = *v14;
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v28 = sub_1DD0DB0FC();
          (*(*(v28 - 8) + 32))(&v13[v27], &v14[v27], v28);
          swift_storeEnumTagMultiPayload();
        }

LABEL_33:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    __swift_storeEnumTagSinglePayload(a1, 0, 3, v7);
    return a1;
  }
}

_OWORD *sub_1DD02DF14(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 3, v7);
  v9 = __swift_getEnumTagSinglePayload(a2, 3, v7);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = type metadata accessor for RelationshipLabel(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            goto LABEL_51;
          }

          goto LABEL_27;
        case 1u:
          v21 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(a1, a2, *(*(v21 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v34 = sub_1DD0DB0FC();
            (*(*(v34 - 8) + 32))(a1 + v33, a2 + v33, v34);
            swift_storeEnumTagMultiPayload();
          }

          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
          memcpy(a1 + *(v35 + 48), a2 + *(v35 + 48), 0x50uLL);
          goto LABEL_55;
        case 2u:
          v15 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(a1, a2, *(*(v15 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v25 = sub_1DD0DB0FC();
            (*(*(v25 - 8) + 32))(a1 + v24, a2 + v24, v25);
            swift_storeEnumTagMultiPayload();
          }

          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
          *(a1 + *(v26 + 48)) = *(a2 + *(v26 + 48));
          goto LABEL_55;
        case 3u:
          *a1 = *a2;
          v16 = *(type metadata accessor for PersonAssociation(0) + 20);
          v17 = a1 + v16;
          v18 = a2 + v16;
          v19 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_23;
          }

          goto LABEL_54;
        case 4u:
          v10 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_27;
          }

          goto LABEL_51;
        case 5u:
          v10 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
LABEL_27:
            memcpy(a1, a2, *(*(v10 - 8) + 64));
          }

          else
          {
LABEL_51:
            *a1 = *a2;
            v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v37 = sub_1DD0DB0FC();
            (*(*(v37 - 8) + 32))(a1 + v36, a2 + v36, v37);
            swift_storeEnumTagMultiPayload();
          }

          goto LABEL_55;
        case 6u:
          *a1 = *a2;
          v22 = *(type metadata accessor for PersonAssociation(0) + 20);
          v17 = a1 + v22;
          v18 = a2 + v22;
          v19 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_23;
          }

          goto LABEL_54;
        case 7u:
          *a1 = *a2;
          v20 = *(type metadata accessor for PersonAssociation(0) + 20);
          v17 = a1 + v20;
          v18 = a2 + v20;
          v19 = type metadata accessor for RelationshipLabel(0);
          if (swift_getEnumCaseMultiPayload())
          {
LABEL_23:
            memcpy(v17, v18, *(*(v19 - 8) + 64));
          }

          else
          {
LABEL_54:
            *v17 = *v18;
            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
            v40 = sub_1DD0DB0FC();
            (*(*(v40 - 8) + 32))(&v17[v39], &v18[v39], v40);
            swift_storeEnumTagMultiPayload();
          }

LABEL_55:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          break;
      }

      __swift_storeEnumTagSinglePayload(a1, 0, 3, v7);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      if (a1 != a2)
      {
        v13 = *(v7 - 8);
        (*(v13 + 8))(a1, v7);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v14 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_50;
            }

            goto LABEL_66;
          case 1u:
            v32 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              memcpy(a1, a2, *(*(v32 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v45 = sub_1DD0DB0FC();
              (*(*(v45 - 8) + 32))(a1 + v44, a2 + v44, v45);
              swift_storeEnumTagMultiPayload();
            }

            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
            memcpy(a1 + *(v46 + 48), a2 + *(v46 + 48), 0x50uLL);
            goto LABEL_68;
          case 2u:
            v23 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              memcpy(a1, a2, *(*(v23 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v42 = sub_1DD0DB0FC();
              (*(*(v42 - 8) + 32))(a1 + v41, a2 + v41, v42);
              swift_storeEnumTagMultiPayload();
            }

            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
            *(a1 + *(v43 + 48)) = *(a2 + *(v43 + 48));
            goto LABEL_68;
          case 3u:
            *a1 = *a2;
            v27 = *(type metadata accessor for PersonAssociation(0) + 20);
            v28 = a1 + v27;
            v29 = a2 + v27;
            v30 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_42;
            }

            goto LABEL_67;
          case 4u:
            v14 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_50;
            }

            goto LABEL_66;
          case 5u:
            v14 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
LABEL_50:
              memcpy(a1, a2, *(*(v14 - 8) + 64));
            }

            else
            {
LABEL_66:
              *a1 = *a2;
              v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v48 = sub_1DD0DB0FC();
              (*(*(v48 - 8) + 32))(a1 + v47, a2 + v47, v48);
              swift_storeEnumTagMultiPayload();
            }

            goto LABEL_68;
          case 6u:
            *a1 = *a2;
            v38 = *(type metadata accessor for PersonAssociation(0) + 20);
            v28 = a1 + v38;
            v29 = a2 + v38;
            v30 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_42;
            }

            goto LABEL_67;
          case 7u:
            *a1 = *a2;
            v31 = *(type metadata accessor for PersonAssociation(0) + 20);
            v28 = a1 + v31;
            v29 = a2 + v31;
            v30 = type metadata accessor for RelationshipLabel(0);
            if (swift_getEnumCaseMultiPayload())
            {
LABEL_42:
              memcpy(v28, v29, *(*(v30 - 8) + 64));
            }

            else
            {
LABEL_67:
              *v28 = *v29;
              v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
              v50 = sub_1DD0DB0FC();
              (*(*(v50 - 8) + 32))(&v28[v49], &v29[v49], v50);
              swift_storeEnumTagMultiPayload();
            }

LABEL_68:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            v11 = *(v13 + 64);
            goto LABEL_9;
        }
      }

      return a1;
    }

    (*(*(v7 - 8) + 8))(a1, v7);
  }

  v11 = *(*(a3 - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v11);
}

uint64_t sub_1DD02EE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a2 + 16), a3, a4);

  return __swift_getEnumTagSinglePayload(a1, 3, v5);
}

uint64_t sub_1DD02EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, 3, v6);
}

uint64_t sub_1DD02EED4(uint64_t a1)
{
  result = type metadata accessor for RelationshipLabel(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v7 = v3;
    swift_getTupleTypeLayout2();
    v8 = &v6;
    swift_getTupleTypeLayout2();
    v9 = &v5;
    result = type metadata accessor for PersonAssociation(319);
    if (v4 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v11 = v3;
      v12 = v3;
      v13 = v10;
      v14 = v10;
      v15 = "P";
      v16 = &unk_1DD10B6E0;
      v17 = &unk_1DD10B6F8;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DD02EFFC(char *a1, id *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for RelationshipLabel(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v24;

      if (EnumCaseMultiPayload != 1)
      {
        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v46 = sub_1DD0DB0FC();
        (*(*(v46 - 8) + 16))(&a1[v45], a2 + v45, v46);
      }

      swift_storeEnumTagMultiPayload();
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
      v48 = &a1[v47];
      v49 = (a2 + v47);
      v50 = v49[1];
      *v48 = *v49;
      *(v48 + 1) = v50;
      v51 = v49[3];
      *(v48 + 2) = v49[2];
      *(v48 + 3) = v51;
      v52 = v49[5];
      *(v48 + 4) = v49[4];
      *(v48 + 5) = v52;
      v53 = v49[7];
      *(v48 + 6) = v49[6];
      *(v48 + 7) = v53;
      v54 = v49[9];
      *(v48 + 8) = v49[8];
      *(v48 + 9) = v54;

      goto LABEL_34;
    case 2u:
      type metadata accessor for RelationshipLabel(0);
      v11 = swift_getEnumCaseMultiPayload();
      v12 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v12;

      if (v11 != 1)
      {
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v41 = sub_1DD0DB0FC();
        (*(*(v41 - 8) + 16))(&a1[v40], a2 + v40, v41);
      }

      swift_storeEnumTagMultiPayload();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
      *&a1[*(v42 + 48)] = *(a2 + *(v42 + 48));

      goto LABEL_34;
    case 3u:
      v13 = *a2;
      *a1 = *a2;
      v14 = *(type metadata accessor for PersonAssociation(0) + 20);
      v15 = &a1[v14];
      v16 = a2 + v14;
      type metadata accessor for RelationshipLabel(0);
      v17 = v13;
      LODWORD(v13) = swift_getEnumCaseMultiPayload();
      v18 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v18;

      if (v13 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    case 4u:
      type metadata accessor for RelationshipLabel(0);
      v7 = swift_getEnumCaseMultiPayload();
      v8 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v8;

      if (v7 == 1)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    case 5u:
      type metadata accessor for RelationshipLabel(0);
      v25 = swift_getEnumCaseMultiPayload();
      v26 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v26;

      if (v25 == 1)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    case 6u:
      v27 = *a2;
      *a1 = *a2;
      v28 = *(type metadata accessor for PersonAssociation(0) + 20);
      v15 = &a1[v28];
      v16 = a2 + v28;
      type metadata accessor for RelationshipLabel(0);
      v29 = v27;
      LODWORD(v27) = swift_getEnumCaseMultiPayload();
      v30 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v30;

      if (v27 == 1)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    case 7u:
      v19 = *a2;
      *a1 = *a2;
      v20 = *(type metadata accessor for PersonAssociation(0) + 20);
      v15 = &a1[v20];
      v16 = a2 + v20;
      type metadata accessor for RelationshipLabel(0);
      v21 = v19;
      LODWORD(v19) = swift_getEnumCaseMultiPayload();
      v22 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v22;

      if (v19 == 1)
      {
        goto LABEL_33;
      }

LABEL_32:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v56 = sub_1DD0DB0FC();
      (*(*(v56 - 8) + 16))(&v15[v55], &v16[v55], v56);
      goto LABEL_33;
    case 8u:
      v34 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v34;
      v35 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v35;
      v36 = a2[5];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = v36;
      v37 = a2[7];
      *(a1 + 6) = a2[6];
      *(a1 + 7) = v37;
      v38 = a2[8];
      v39 = a2[9];
      *(a1 + 8) = v38;
      *(a1 + 9) = v39;

      goto LABEL_34;
    case 9u:
      v9 = *a2;
      v10 = *a2;
      *a1 = v9;
      a1[8] = *(a2 + 8);
      goto LABEL_34;
    case 0xAu:
      v31 = *a2;
      v32 = *(a2 + 9);
      v33 = *(a2 + 8);
      sub_1DD02BEE4(v31, v33, v32);
      *a1 = v31;
      a1[8] = v33;
      a1[9] = v32;
      goto LABEL_34;
    default:
      type metadata accessor for RelationshipLabel(0);
      v5 = swift_getEnumCaseMultiPayload();
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;

      if (v5 != 1)
      {
LABEL_28:
        v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v44 = sub_1DD0DB0FC();
        (*(*(v44 - 8) + 16))(&a1[v43], a2 + v43, v44);
      }

LABEL_33:
      swift_storeEnumTagMultiPayload();
LABEL_34:
      swift_storeEnumTagMultiPayload();
      return a1;
  }
}

void sub_1DD02F7C0(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
      goto LABEL_3;
    case 1u:
      type metadata accessor for RelationshipLabel(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload != 1)
      {
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v10 = sub_1DD0DB0FC();
        (*(*(v10 - 8) + 8))(a1 + v9, v10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
      goto LABEL_13;
    case 2u:
      type metadata accessor for RelationshipLabel(0);
      v14 = swift_getEnumCaseMultiPayload();

      if (v14 != 1)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v16 = sub_1DD0DB0FC();
        (*(*(v16 - 8) + 8))(a1 + v15, v16);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
      goto LABEL_20;
    case 3u:
    case 6u:
    case 7u:

      a1 += *(type metadata accessor for PersonAssociation(0) + 20);
LABEL_3:
      type metadata accessor for RelationshipLabel(0);
      v3 = swift_getEnumCaseMultiPayload();

      if (v3 != 1)
      {
        v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v5 = sub_1DD0DB0FC();
        v6 = *(*(v5 - 8) + 8);

        v6(a1 + v4, v5);
      }

      return;
    case 8u:
LABEL_13:

LABEL_20:

      break;
    case 9u:
      v7 = *a1;

      break;
    case 0xAu:
      v11 = *a1;
      v12 = *(a1 + 9);
      v13 = *(a1 + 8);

      sub_1DD02C1D8(v11, v13, v12);
      break;
    default:
      return;
  }
}

uint64_t sub_1DD02FA6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for RelationshipLabel(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v22;

      if (EnumCaseMultiPayload != 1)
      {
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v36 = sub_1DD0DB0FC();
        (*(*(v36 - 8) + 16))(a1 + v35, a2 + v35, v36);
      }

      swift_storeEnumTagMultiPayload();
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
      v38 = (a1 + v37);
      v39 = (a2 + v37);
      v40 = v39[1];
      *v38 = *v39;
      v38[1] = v40;
      v41 = v39[3];
      v38[2] = v39[2];
      v38[3] = v41;
      v42 = v39[5];
      v38[4] = v39[4];
      v38[5] = v42;
      v43 = v39[7];
      v38[6] = v39[6];
      v38[7] = v43;
      v44 = v39[9];
      v38[8] = v39[8];
      v38[9] = v44;

      goto LABEL_20;
    case 2u:
      type metadata accessor for RelationshipLabel(0);
      v17 = swift_getEnumCaseMultiPayload();
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v18;

      if (v17 != 1)
      {
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v33 = sub_1DD0DB0FC();
        (*(*(v33 - 8) + 16))(a1 + v32, a2 + v32, v33);
      }

      swift_storeEnumTagMultiPayload();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
      *(a1 + *(v34 + 48)) = *(a2 + *(v34 + 48));
      goto LABEL_20;
    case 3u:
    case 6u:
    case 7u:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for PersonAssociation(0) + 20);
      v9 = (a1 + v8);
      v10 = a2 + v8;
      type metadata accessor for RelationshipLabel(0);
      v11 = v7;
      LODWORD(v7) = swift_getEnumCaseMultiPayload();
      v12 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v12;

      if (v7 != 1)
      {
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v14 = sub_1DD0DB0FC();
        (*(*(v14 - 8) + 16))(&v9[v13], &v10[v13], v14);
      }

      goto LABEL_8;
    case 8u:
      v26 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v26;
      v27 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v27;
      v28 = a2[5];
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v28;
      v29 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v29;
      v30 = a2[8];
      v31 = a2[9];
      *(a1 + 64) = v30;
      *(a1 + 72) = v31;

LABEL_20:

      break;
    case 9u:
      v19 = *a2;
      v20 = *a2;
      *a1 = v19;
      *(a1 + 8) = *(a2 + 8);
      break;
    case 0xAu:
      v23 = *a2;
      v24 = *(a2 + 9);
      v25 = *(a2 + 8);
      sub_1DD02BEE4(v23, v25, v24);
      *a1 = v23;
      *(a1 + 8) = v25;
      *(a1 + 9) = v24;
      break;
    default:
      type metadata accessor for RelationshipLabel(0);
      v5 = swift_getEnumCaseMultiPayload();
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v6;

      if (v5 != 1)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v16 = sub_1DD0DB0FC();
        (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
      }

LABEL_8:
      swift_storeEnumTagMultiPayload();
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DD02FEAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        type metadata accessor for RelationshipLabel(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        *a1 = *a2;
        *(a1 + 8) = a2[1];

        if (EnumCaseMultiPayload != 1)
        {
          v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v32 = sub_1DD0DB0FC();
          (*(*(v32 - 8) + 16))(a1 + v31, a2 + v31, v32);
        }

        swift_storeEnumTagMultiPayload();
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288) + 48);
        v34 = (a1 + v33);
        v35 = (a2 + v33);
        *v34 = *v35;
        v34[1] = v35[1];
        v34[2] = v35[2];
        v34[3] = v35[3];
        v34[4] = v35[4];
        v34[5] = v35[5];
        v34[6] = v35[6];
        v34[7] = v35[7];
        v34[8] = v35[8];
        v34[9] = v35[9];

        goto LABEL_33;
      case 2u:
        type metadata accessor for RelationshipLabel(0);
        v9 = swift_getEnumCaseMultiPayload();
        *a1 = *a2;
        *(a1 + 8) = a2[1];

        if (v9 != 1)
        {
          v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v27 = sub_1DD0DB0FC();
          (*(*(v27 - 8) + 16))(a1 + v26, a2 + v26, v27);
        }

        swift_storeEnumTagMultiPayload();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        *(a1 + *(v28 + 48)) = *(a2 + *(v28 + 48));

        goto LABEL_33;
      case 3u:
        v10 = *a2;
        *a1 = *a2;
        v11 = *(type metadata accessor for PersonAssociation(0) + 20);
        v12 = (a1 + v11);
        v13 = a2 + v11;
        type metadata accessor for RelationshipLabel(0);
        v14 = v10;
        LODWORD(v10) = swift_getEnumCaseMultiPayload();
        *v12 = *v13;
        *(v12 + 1) = *(v13 + 1);

        if (v10 != 1)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      case 4u:
        type metadata accessor for RelationshipLabel(0);
        v6 = swift_getEnumCaseMultiPayload();
        *a1 = *a2;
        *(a1 + 8) = a2[1];

        if (v6 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      case 5u:
        type metadata accessor for RelationshipLabel(0);
        v19 = swift_getEnumCaseMultiPayload();
        *a1 = *a2;
        *(a1 + 8) = a2[1];

        if (v19 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      case 6u:
        v20 = *a2;
        *a1 = *a2;
        v21 = *(type metadata accessor for PersonAssociation(0) + 20);
        v12 = (a1 + v21);
        v13 = a2 + v21;
        type metadata accessor for RelationshipLabel(0);
        v22 = v20;
        LODWORD(v20) = swift_getEnumCaseMultiPayload();
        *v12 = *v13;
        *(v12 + 1) = *(v13 + 1);

        if (v20 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      case 7u:
        v15 = *a2;
        *a1 = *a2;
        v16 = *(type metadata accessor for PersonAssociation(0) + 20);
        v12 = (a1 + v16);
        v13 = a2 + v16;
        type metadata accessor for RelationshipLabel(0);
        v17 = v15;
        LODWORD(v15) = swift_getEnumCaseMultiPayload();
        *v12 = *v13;
        *(v12 + 1) = *(v13 + 1);

        if (v15 == 1)
        {
          goto LABEL_32;
        }

LABEL_31:
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v37 = sub_1DD0DB0FC();
        (*(*(v37 - 8) + 16))(&v12[v36], &v13[v36], v37);
        goto LABEL_32;
      case 8u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 72) = a2[9];

        goto LABEL_33;
      case 9u:
        v7 = *a2;
        v8 = *a2;
        *a1 = v7;
        *(a1 + 8) = *(a2 + 8);
        goto LABEL_33;
      case 0xAu:
        v23 = *a2;
        v24 = *(a2 + 9);
        v25 = *(a2 + 8);
        sub_1DD02BEE4(v23, v25, v24);
        *a1 = v23;
        *(a1 + 8) = v25;
        *(a1 + 9) = v24;
        goto LABEL_33;
      default:
        type metadata accessor for RelationshipLabel(0);
        v5 = swift_getEnumCaseMultiPayload();
        *a1 = *a2;
        *(a1 + 8) = a2[1];

        if (v5 != 1)
        {
LABEL_27:
          v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v30 = sub_1DD0DB0FC();
          (*(*(v30 - 8) + 16))(a1 + v29, a2 + v29, v30);
        }

LABEL_32:
        swift_storeEnumTagMultiPayload();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  return a1;
}

void *sub_1DD0306EC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = type metadata accessor for RelationshipLabel(0);
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    case 1u:
      v13 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v13 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v21 = sub_1DD0DB0FC();
        (*(*(v21 - 8) + 32))(a1 + v20, a2 + v20, v21);
        swift_storeEnumTagMultiPayload();
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
      memcpy(a1 + *(v22 + 48), a2 + *(v22 + 48), 0x50uLL);
      goto LABEL_31;
    case 2u:
      v7 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v18 = sub_1DD0DB0FC();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
        swift_storeEnumTagMultiPayload();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
      *(a1 + *(v19 + 48)) = *(a2 + *(v19 + 48));
      goto LABEL_31;
    case 3u:
      *a1 = *a2;
      v8 = *(type metadata accessor for PersonAssociation(0) + 20);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    case 4u:
      v6 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    case 5u:
      v6 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_15:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
      }

      else
      {
LABEL_29:
        *a1 = *a2;
        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v24 = sub_1DD0DB0FC();
        (*(*(v24 - 8) + 32))(a1 + v23, a2 + v23, v24);
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_31;
    case 6u:
      *a1 = *a2;
      v14 = *(type metadata accessor for PersonAssociation(0) + 20);
      v9 = a1 + v14;
      v10 = a2 + v14;
      v11 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    case 7u:
      *a1 = *a2;
      v12 = *(type metadata accessor for PersonAssociation(0) + 20);
      v9 = a1 + v12;
      v10 = a2 + v12;
      v11 = type metadata accessor for RelationshipLabel(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_11:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
      }

      else
      {
LABEL_30:
        *v9 = *v10;
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v26 = sub_1DD0DB0FC();
        (*(*(v26 - 8) + 32))(&v9[v25], &v10[v25], v26);
        swift_storeEnumTagMultiPayload();
      }

LABEL_31:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

_OWORD *sub_1DD030E1C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = type metadata accessor for RelationshipLabel(0);
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      case 1u:
        v13 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v21 = sub_1DD0DB0FC();
          (*(*(v21 - 8) + 32))(a1 + v20, a2 + v20, v21);
          swift_storeEnumTagMultiPayload();
        }

        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC3C8, &qword_1DD10B288);
        memcpy(a1 + *(v22 + 48), a2 + *(v22 + 48), 0x50uLL);
        goto LABEL_32;
      case 2u:
        v7 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v7 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v18 = sub_1DD0DB0FC();
          (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
          swift_storeEnumTagMultiPayload();
        }

        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAC660, &qword_1DD10B688);
        *(a1 + *(v19 + 48)) = *(a2 + *(v19 + 48));
        goto LABEL_32;
      case 3u:
        *a1 = *a2;
        v8 = *(type metadata accessor for PersonAssociation(0) + 20);
        v9 = a1 + v8;
        v10 = a2 + v8;
        v11 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      case 4u:
        v6 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      case 5u:
        v6 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_16:
          memcpy(a1, a2, *(*(v6 - 8) + 64));
        }

        else
        {
LABEL_30:
          *a1 = *a2;
          v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v24 = sub_1DD0DB0FC();
          (*(*(v24 - 8) + 32))(a1 + v23, a2 + v23, v24);
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_32;
      case 6u:
        *a1 = *a2;
        v14 = *(type metadata accessor for PersonAssociation(0) + 20);
        v9 = a1 + v14;
        v10 = a2 + v14;
        v11 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      case 7u:
        *a1 = *a2;
        v12 = *(type metadata accessor for PersonAssociation(0) + 20);
        v9 = a1 + v12;
        v10 = a2 + v12;
        v11 = type metadata accessor for RelationshipLabel(0);
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_12:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
        }

        else
        {
LABEL_31:
          *v9 = *v10;
          v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
          v26 = sub_1DD0DB0FC();
          (*(*(v26 - 8) + 32))(&v9[v25], &v10[v25], v26);
          swift_storeEnumTagMultiPayload();
        }

LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v5 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  return a1;
}

uint64_t sub_1DD0315BC()
{
  OUTLINED_FUNCTION_39();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_102_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  v4 = OUTLINED_FUNCTION_21_1();

  return sub_1DD0247C0(v4, v5, v6);
}

uint64_t sub_1DD031684()
{
  OUTLINED_FUNCTION_39();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_102_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AD3C;
  v4 = OUTLINED_FUNCTION_21_1();

  return sub_1DD02486C(v4, v5, v6);
}

unint64_t sub_1DD031750()
{
  result = qword_1ECCA3C30;
  if (!qword_1ECCA3C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA3C30);
  }

  return result;
}

uint64_t sub_1DD031794()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_21_1();

  return sub_1DD025A20(v3, v4, v5);
}

uint64_t sub_1DD03188C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_21_1();

  return sub_1DD026694(v5, v6, v1);
}

uint64_t OUTLINED_FUNCTION_117_6(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_118_4()
{

  JUMPOUT(0x1E12A6780);
}

double sub_1DD031A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v203 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_47_29();
  v200 = v10;
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_47_29();
  v198 = v13;
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_47_29();
  v195 = v16;
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_47_29();
  v194 = v19;
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_47_29();
  OUTLINED_FUNCTION_29_35();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_47_29();
  v193 = v46;
  OUTLINED_FUNCTION_46_32();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_47_29();
  v196 = v49;
  OUTLINED_FUNCTION_46_32();
  v51 = v50;
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  v56 = &v175 - v55;
  v58 = *(v57 + 80);
  v210 = a3;
  v59 = sub_1DD03669C(v54, v58, a2, a3);
  v201 = v60;
  v202 = v59;
  v207 = *(v6 + 16);
  OUTLINED_FUNCTION_21_20();
  v61();
  v211 = *(v6 + 80);
  v62 = (v211 + 40) & ~v211;
  v63 = swift_allocObject();
  v199 = v63;
  v63[2] = v58;
  v63[3] = a2;
  v212 = v58;
  v63[4] = a3;
  v209 = *(v6 + 32);
  (v209)(v63 + v62, v56, a2);
  v204 = a1;
  OUTLINED_FUNCTION_21_20();
  v64 = v207;
  v207();
  v208 = v6 + 16;
  v65 = swift_allocObject();
  v197 = v65;
  v65[2] = v58;
  v65[3] = a2;
  v66 = v210;
  v65[4] = v210;
  OUTLINED_FUNCTION_61_27();
  v67();
  OUTLINED_FUNCTION_21_20();
  v68 = v64;
  v64();
  v196 = swift_allocObject();
  *(OUTLINED_FUNCTION_85_12(v196) + 32) = v66;
  OUTLINED_FUNCTION_61_27();
  v69 = v209;
  v209();
  v206 = v6 + 32;
  v70 = v204;
  OUTLINED_FUNCTION_61_27();
  v68();
  v71 = OUTLINED_FUNCTION_97_11(&unk_1F5877F58, v62 + v51);
  v193 = v71;
  v72 = v212;
  v71[2] = v212;
  v71[3] = a2;
  v71[4] = v210;
  OUTLINED_FUNCTION_93_10();
  v69();
  OUTLINED_FUNCTION_61_27();
  v68();
  v205 = v51;
  v73 = swift_allocObject();
  v191 = v73;
  v74 = v72;
  v73[2] = v72;
  v73[3] = a2;
  v75 = v210;
  v73[4] = v210;
  v76 = OUTLINED_FUNCTION_62_17(v73);
  (v69)(v76);
  OUTLINED_FUNCTION_93_10();
  v190 = sub_1DD037578(v77, v78, v79, v75);
  v189 = v80;
  OUTLINED_FUNCTION_93_10();
  v81 = v75;
  v188 = sub_1DD0376A4(v82, v83, v84, v75);
  v187 = v85;
  v86 = v183;
  OUTLINED_FUNCTION_61_27();
  v87 = v207;
  v207();
  v88 = swift_allocObject();
  v89 = OUTLINED_FUNCTION_92_14(v88, &v216);
  *(v89 + 32) = v81;
  v90 = v86;
  v91 = v209;
  (v209)(v89 + v62, v90, a2);
  v92 = OUTLINED_FUNCTION_60_20();
  (v87)(v92);
  OUTLINED_FUNCTION_91_8();
  v93 = swift_allocObject();
  v94 = OUTLINED_FUNCTION_92_14(v93, &v214);
  v95 = v210;
  *(v94 + 32) = v210;
  v96 = OUTLINED_FUNCTION_30_43(v94);
  (v91)(v96);
  OUTLINED_FUNCTION_21_20();
  v97 = v207;
  v207();
  OUTLINED_FUNCTION_91_8();
  v98 = swift_allocObject();
  *(OUTLINED_FUNCTION_92_14(v98, &v212) + 32) = v95;
  OUTLINED_FUNCTION_61_27();
  v99 = v209;
  v209();
  OUTLINED_FUNCTION_21_20();
  v97();
  OUTLINED_FUNCTION_91_8();
  v100 = swift_allocObject();
  v179 = v100;
  v100[2] = v74;
  v100[3] = a2;
  v101 = v210;
  v100[4] = v210;
  OUTLINED_FUNCTION_61_27();
  v99();
  v102 = OUTLINED_FUNCTION_60_20();
  (v97)(v102);
  OUTLINED_FUNCTION_91_8();
  v103 = swift_allocObject();
  v177 = v103;
  v103[2] = v212;
  v103[3] = a2;
  v103[4] = v101;
  v104 = OUTLINED_FUNCTION_30_43(v103);
  (v99)(v104);
  OUTLINED_FUNCTION_93_10();
  v178 = sub_1DD0388A4(v105, v106, v107, v101);
  v176 = v108;
  v109 = OUTLINED_FUNCTION_71_18(&v211);
  (v97)(v109, v70, a2);
  v110 = swift_allocObject();
  v111 = OUTLINED_FUNCTION_92_14(v110, &v206);
  *(v111 + 32) = v101;
  v112 = OUTLINED_FUNCTION_30_43(v111);
  (v99)(v112);
  v113 = OUTLINED_FUNCTION_71_18(v213);
  (v207)(v113, v70, a2);
  v180 = swift_allocObject();
  v114 = OUTLINED_FUNCTION_85_12(v180);
  *(v114 + 32) = v101;
  v115 = OUTLINED_FUNCTION_30_43(v114);
  (v99)(v115);
  v116 = OUTLINED_FUNCTION_71_18(&v215);
  v117 = v70;
  v118 = v207;
  (v207)(v116, v117, a2);
  v119 = swift_allocObject();
  v182 = v119;
  v120 = v212;
  v119[2] = v212;
  v119[3] = a2;
  v121 = v210;
  v119[4] = v210;
  v122 = OUTLINED_FUNCTION_30_43(v119);
  v123(v122);
  v124 = OUTLINED_FUNCTION_71_18(&v217);
  (v118)(v124, v117, a2);
  v125 = v205;
  v126 = swift_allocObject();
  v184 = v126;
  v127 = v120;
  v126[2] = v120;
  v126[3] = a2;
  v126[4] = v121;
  v128 = OUTLINED_FUNCTION_30_43(v126);
  v129 = v209;
  (v209)(v128);
  v130 = OUTLINED_FUNCTION_60_20();
  (v118)(v130);
  v131 = OUTLINED_FUNCTION_97_11(&unk_1F5878110, v62 + v125);
  v186 = v131;
  v131[2] = v127;
  v131[3] = a2;
  v132 = v210;
  v131[4] = v210;
  v133 = OUTLINED_FUNCTION_30_43(v131);
  (v129)(v133);
  v134 = OUTLINED_FUNCTION_60_20();
  (v118)(v134);
  v192 = swift_allocObject();
  v135 = OUTLINED_FUNCTION_85_12(v192);
  *(v135 + 32) = v132;
  v136 = OUTLINED_FUNCTION_30_43(v135);
  (v129)(v136);
  (v118)(v195, v204, a2);
  v137 = swift_allocObject();
  v194 = v137;
  v138 = v212;
  v137[2] = v212;
  v137[3] = a2;
  v137[4] = v132;
  v139 = OUTLINED_FUNCTION_30_43(v137);
  (v209)(v139);
  v140 = v204;
  OUTLINED_FUNCTION_61_27();
  v207();
  v141 = v125;
  v142 = swift_allocObject();
  v142[2] = v138;
  v142[3] = a2;
  v144 = v209;
  v143 = v210;
  v142[4] = v210;
  v145 = OUTLINED_FUNCTION_62_17(v142);
  (v144)(v145);
  v146 = v140;
  OUTLINED_FUNCTION_61_27();
  v207();
  v147 = OUTLINED_FUNCTION_97_11(&unk_1F58781B0, v62 + v141);
  v148 = OUTLINED_FUNCTION_85_12(v147);
  *(v148 + 32) = v143;
  v149 = OUTLINED_FUNCTION_62_17(v148);
  (v144)(v149);
  (v144)(v203, v146, a2);
  v150 = OUTLINED_FUNCTION_97_11(&unk_1F58781D8, v62 + v141);
  v151 = OUTLINED_FUNCTION_85_12(v150);
  *(v151 + 32) = v210;
  v152 = OUTLINED_FUNCTION_62_17(v151);
  v153.n128_f64[0] = (v144)(v152);
  *(&v174 + 1) = v147;
  *(&v173 + 1) = v142;
  *&v174 = &unk_1DD10C140;
  *&v173 = &unk_1DD10C130;
  *&v172 = &unk_1DD10C120;
  *(&v172 + 1) = v194;
  *&v171 = &unk_1DD10C110;
  *(&v171 + 1) = v192;
  *&v170 = &unk_1DD10C100;
  *(&v170 + 1) = v186;
  *&v169 = &unk_1DD10C0F0;
  *(&v169 + 1) = v184;
  *&v168 = &unk_1DD10C0E0;
  *(&v168 + 1) = v182;
  *&v167 = &unk_1DD10C0D0;
  *(&v167 + 1) = v180;
  *&v166 = &unk_1DD10C0C0;
  *(&v166 + 1) = v175;
  *(&v165 + 1) = v176;
  *&v165 = v178;
  *&v164 = &unk_1DD10C0B0;
  *(&v164 + 1) = v177;
  *&v163 = &unk_1DD10C0A0;
  *(&v163 + 1) = v179;
  *&v162 = &unk_1DD10C090;
  *(&v162 + 1) = v181;
  *&v161 = &unk_1DD10C080;
  *(&v161 + 1) = v183;
  *&v160 = &unk_1DD10C070;
  *(&v160 + 1) = v185;
  *(&v159 + 1) = v187;
  *&v159 = v188;
  *(&v158 + 1) = v189;
  *&v158 = v190;
  *&v157 = &unk_1DD10C060;
  *(&v157 + 1) = v191;
  *&v156 = &unk_1DD10C050;
  *(&v156 + 1) = v193;
  *&result = sub_1DD036538(v202, v201, &unk_1DD10C020, v199, &unk_1DD10C030, v197, &unk_1DD10C040, v196, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v154, &unk_1DD10C150).n128_u64[0];
  return result;
}

double sub_1DD032728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD03A244(a1, *(v3 + 80), a2, a3);
  v208 = v7;
  v209 = v6;
  v8 = OUTLINED_FUNCTION_14_61();
  v12 = sub_1DD03A370(v8, v9, v10, v11);
  v206 = v13;
  v207 = v12;
  v14 = OUTLINED_FUNCTION_14_61();
  v18 = sub_1DD03A5D4(v14, v15, v16, v17);
  v204 = v19;
  v205 = v18;
  v20 = OUTLINED_FUNCTION_14_61();
  v24 = sub_1DD03A838(v20, v21, v22, v23);
  v202 = v25;
  v203 = v24;
  v26 = OUTLINED_FUNCTION_14_61();
  v30 = sub_1DD03AA9C(v26, v27, v28, v29);
  v200 = v31;
  v201 = v30;
  v32 = OUTLINED_FUNCTION_14_61();
  v36 = sub_1DD03AD00(v32, v33, v34, v35);
  v198 = v37;
  v199 = v36;
  v38 = OUTLINED_FUNCTION_14_61();
  v42 = sub_1DD03AF6C(v38, v39, v40, v41);
  v196 = v43;
  v197 = v42;
  v44 = OUTLINED_FUNCTION_14_61();
  v48 = sub_1DD03B098(v44, v45, v46, v47);
  v194 = v49;
  v195 = v48;
  v50 = OUTLINED_FUNCTION_14_61();
  v54 = sub_1DD03B1C4(v50, v51, v52, v53);
  v192 = v55;
  v193 = v54;
  v56 = OUTLINED_FUNCTION_14_61();
  v60 = sub_1DD03B54C(v56, v57, v58, v59);
  v190 = v61;
  v191 = v60;
  v62 = OUTLINED_FUNCTION_14_61();
  v66 = sub_1DD03B7E8(v62, v63, v64, v65);
  v188 = v67;
  v189 = v66;
  v68 = OUTLINED_FUNCTION_14_61();
  v72 = sub_1DD03BA74(v68, v69, v70, v71);
  v186 = v73;
  v187 = v72;
  v74 = OUTLINED_FUNCTION_14_61();
  v78 = sub_1DD03BD00(v74, v75, v76, v77);
  v184 = v79;
  v185 = v78;
  v80 = OUTLINED_FUNCTION_14_61();
  v84 = sub_1DD03BF8C(v80, v81, v82, v83);
  v182 = v85;
  v183 = v84;
  v86 = OUTLINED_FUNCTION_14_61();
  v90 = sub_1DD03C0B8(v86, v87, v88, v89);
  v180 = v91;
  v181 = v90;
  v92 = OUTLINED_FUNCTION_14_61();
  v96 = sub_1DD03C31C(v92, v93, v94, v95);
  v178 = v97;
  v179 = v96;
  v98 = OUTLINED_FUNCTION_14_61();
  v102 = sub_1DD03C590(v98, v99, v100, v101);
  v176 = v103;
  v177 = v102;
  v104 = OUTLINED_FUNCTION_14_61();
  v108 = sub_1DD03C804(v104, v105, v106, v107);
  v174 = v109;
  v175 = v108;
  v110 = OUTLINED_FUNCTION_14_61();
  v114 = sub_1DD03CA78(v110, v111, v112, v113);
  v172 = v115;
  v173 = v114;
  v116 = OUTLINED_FUNCTION_14_61();
  v120 = sub_1DD03CCEC(v116, v117, v118, v119);
  v170 = v121;
  v171 = v120;
  v122 = OUTLINED_FUNCTION_14_61();
  v126 = sub_1DD03CF60(v122, v123, v124, v125);
  v128 = v127;
  v129 = OUTLINED_FUNCTION_14_61();
  v133 = sub_1DD03D1C4(v129, v130, v131, v132);
  v135 = v134;
  v136 = OUTLINED_FUNCTION_14_61();
  v140 = sub_1DD03D428(v136, v137, v138, v139);
  v142 = v141;
  v143 = OUTLINED_FUNCTION_14_61();
  v147 = sub_1DD03D684(v143, v144, v145, v146);
  v148.n128_f64[0] = (*(*(a2 - 8) + 8))(a1, a2);
  *(&v169 + 1) = v142;
  *(&v168 + 1) = v135;
  *&v169 = v140;
  *(&v167 + 1) = v128;
  *&v168 = v133;
  *(&v166 + 1) = v170;
  *&v167 = v126;
  *(&v165 + 1) = v172;
  *&v166 = v171;
  *(&v164 + 1) = v174;
  *&v165 = v173;
  *(&v163 + 1) = v176;
  *&v164 = v175;
  *(&v162 + 1) = v178;
  *&v163 = v177;
  *(&v161 + 1) = v180;
  *&v162 = v179;
  *(&v160 + 1) = v182;
  *&v161 = v181;
  *(&v159 + 1) = v184;
  *&v160 = v183;
  *(&v158 + 1) = v186;
  *&v159 = v185;
  *(&v157 + 1) = v188;
  *&v158 = v187;
  *&v157 = v189;
  *(&v156 + 1) = v190;
  *&v156 = v191;
  *(&v155 + 1) = v192;
  *&v155 = v193;
  *(&v154 + 1) = v194;
  *&v154 = v195;
  *(&v153 + 1) = v196;
  *&v153 = v197;
  *(&v152 + 1) = v198;
  *&v152 = v199;
  *(&v151 + 1) = v200;
  *&v151 = v201;
  *&result = sub_1DD036538(v209, v208, v207, v206, v205, v204, v203, v202, v148, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v149, v147).n128_u64[0];
  return result;
}

void UnsetRelationshipFlowStrategy.makeContactNotFoundResponse(requestedPerson:_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16[-v9];
  memcpy(__dst, a1, sizeof(__dst));
  v11 = swift_allocObject();
  memcpy((v11 + 16), a1, 0x50uLL);
  v12 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v13, v14, v12);
  OUTLINED_FUNCTION_41_4();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DD10B970;
  v15[5] = v11;
  v15[6] = a2;
  v15[7] = a3;
  sub_1DD02AB7C(__dst, v16);
  sub_1DD0DCF8C();
}

uint64_t UnsetRelationshipFlowStrategy.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return (*(a5 + 96))(&v9, a2, a3, a4);
}

void sub_1DD032C14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_65_20();
  v3 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_73_17(v3);
  OUTLINED_FUNCTION_41_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_87_10(v4);
}

void UnsetRelationshipFlowStrategy.makeSaveRelationshipCompletedResponse(person:requestedRelationship:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for RelationshipLabel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  sub_1DCC08BCC(a2, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  sub_1DCCC3844(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v20, v21, v19);
  OUTLINED_FUNCTION_41_4();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1DD10B9B0;
  v22[5] = v18;
  v22[6] = a3;
  v22[7] = a4;
  v23 = a1;
  sub_1DD0DCF8C();
}

void sub_1DD032F60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_65_20();
  v3 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_73_17(v3);
  OUTLINED_FUNCTION_41_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_87_10(v4);
}

void sub_1DD0330EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[1] = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v13);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = OUTLINED_FUNCTION_65_20();
  v17 = type metadata accessor for RelationshipLabel(v16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  sub_1DCC08BCC(a1, v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  sub_1DCCC3844(v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_73_17(v23);
  OUTLINED_FUNCTION_41_4();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a8;
  v24[5] = v22;
  v24[6] = a2;
  v24[7] = a3;
  sub_1DD0DCF8C();
}

void UnsetRelationshipFlowStrategy.makeFlowCancelledResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v8, v10, v11, v9);
  OUTLINED_FUNCTION_41_4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD10BA00;
  v12[5] = 0;
  v12[6] = a1;
  v12[7] = a2;
  sub_1DD0DCF8C();
}

void UnsetRelationshipFlowStrategy.makeErrorResponse(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v13, v14, v12);
  OUTLINED_FUNCTION_41_4();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DD10BA18;
  v15[5] = v11;
  v15[6] = a2;
  v15[7] = a3;
  v16 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD03349C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)();
}

uint64_t sub_1DD033540(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x50uLL);
  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_1DD0335EC;

  return static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t sub_1DD0335EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD033700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)();
}

uint64_t sub_1DD0337D4(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)();
}

uint64_t sub_1DD033878(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()();
}

uint64_t sub_1DD033914()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_44_34();

  return sub_1DD033540(v3, v4);
}

uint64_t sub_1DD0339A0()
{
  OUTLINED_FUNCTION_39();
  v1 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v1);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_44_34();

  return sub_1DD033700(v6, v2, v7);
}

uint64_t sub_1DD033A70()
{
  OUTLINED_FUNCTION_39();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  v4 = OUTLINED_FUNCTION_44_34();

  return sub_1DD03349C(v4, v5);
}

uint64_t objectdestroy_36Tm()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_98();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v2 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DD033C38()
{
  OUTLINED_FUNCTION_39();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  v4 = OUTLINED_FUNCTION_44_34();

  return sub_1DD0337D4(v4, v5);
}

uint64_t sub_1DD033D00()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCC24464(v3);
}

uint64_t sub_1DD033D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DD033F3C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD034058(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:)()
{
  OUTLINED_FUNCTION_42();
  memcpy((v0 + 16), v1, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1DCBE45D8;

  return static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t sub_1DD0341AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  *(v10 + 16) = *v11;
  v14 = *(v11 + 40);
  *(v10 + 24) = *(v11 + 8);
  *(v10 + 40) = v12;
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v10 + 64) = v15;
  *v15 = v16;
  v15[1] = sub_1DCE7198C;
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DD0343B0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD0344CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AD3C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1DD034684(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD0347A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_62_1();

  return static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)();
}

uint64_t sub_1DD0348F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:)(a1);
}

uint64_t sub_1DD0349A0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput(0);
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v4, v6, v7, v5);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v8, v10, v11, v9);
  v12 = v2[8];
  v13 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v14 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DD034B04(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)();
}

uint64_t sub_1DD034C34(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)();
}

uint64_t sub_1DD034D64(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()();
}

uint64_t sub_1DD034E84(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsetRelationshipFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t UnsetRelationshipFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.parseUnsetRelationshipPersonFromResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makePromptForPersonName(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeDisambiguationItems(requestedRelationship:requestedPerson:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_25_1();
  v26 = v15 + *v15;
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1DCBF8910;
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.parseContactDisambiguationResult(input:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makePromptForContactDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.parsePromptToSaveRelationshipResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makePromptToSaveRelationship(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_25_1();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of UnsetRelationshipFlowStrategyAsync.makeErrorResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

__n128 sub_1DD036538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a28, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __n128 a29, uint64_t a30)
{
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 32) = a3;
  *(v38 + 40) = a4;
  *(v38 + 48) = a5;
  *(v38 + 56) = a6;
  *(v38 + 64) = a7;
  *(v38 + 72) = a8;
  *(v38 + 80) = a9;
  *(v38 + 96) = a10;
  *(v38 + 112) = a11;
  *(v38 + 128) = a12;
  *(v38 + 144) = a13;
  *(v38 + 160) = a14;
  *(v38 + 176) = a15;
  *(v38 + 192) = a16;
  *(v38 + 208) = a17;
  *(v38 + 224) = a18;
  *(v38 + 240) = a19;
  *(v38 + 256) = a20;
  *(v38 + 272) = a21;
  *(v38 + 288) = a22;
  *(v38 + 304) = a23;
  *(v38 + 320) = a24;
  *(v38 + 336) = a25;
  *(v38 + 352) = a26;
  result = a29;
  *(v38 + 368) = a27;
  *(v38 + 384) = a29;
  *(v38 + 400) = a30;
  return result;
}

uint64_t (*sub_1DD03669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD042004;
}

uint64_t sub_1DD0367C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD0367F0, 0, 0);
}

uint64_t sub_1DD0367F0()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3298, &qword_1DD0E94A0);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD0368A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC828, &qword_1DD10C178);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 24))(a3, sub_1DD041F20, v16, a5, a6);
}

uint64_t sub_1DD036A1C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 80);
  __src[0] = v2;
  if (v3)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC828, &qword_1DD10C178);
    return sub_1DD0DE45C();
  }

  else
  {
    memcpy(&__src[1], (a1 + 8), 0x48uLL);
    v9 = v3;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DCB09910(__src, v6, &qword_1ECCA3298, &qword_1DD0E94A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC828, &qword_1DD10C178);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD036AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD036B18, 0, 0);
}

uint64_t sub_1DD036B18()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD036BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 32))(a3, sub_1DD041E18, v16, a5, a6);
}

uint64_t sub_1DD036D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD036D6C, 0, 0);
}

uint64_t sub_1DD036D6C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD036E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 40))(a3, sub_1DD042070, v16, a5, a6);
}

uint64_t sub_1DD036F98(uint64_t a1)
{
  sub_1DCB09910(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCB18FF0(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD037038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD037060, 0, 0);
}

uint64_t sub_1DD037060()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD037114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 48))(a3, sub_1DD042070, v16, a5, a6);
}

uint64_t sub_1DD03728C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a1;
  memcpy(v6 + 2, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD037304, 0, 0);
}

uint64_t sub_1DD037304()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCDEF66C;
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DD0373EC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &__dst[-v13];
  memcpy(__dst, a3, sizeof(__dst));
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 56))(__dst, sub_1DD042070, v16, a5, a6);
}

uint64_t (*sub_1DD037578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD041D68;
}

uint64_t (*sub_1DD0376A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD041D10;
}

uint64_t sub_1DD0377D0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a1;
  v7[14] = a3;
  memcpy(v7 + 2, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD037848, 0, 0);
}

uint64_t sub_1DD037848()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = *(v0 + 128);
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  *(v5 + 56) = v0 + 16;
  *(v5 + 64) = v3;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  sub_1DD0DE40C();
  OUTLINED_FUNCTION_17();
  *v6 = v7;
  v6[1] = sub_1DD037944;
  OUTLINED_FUNCTION_16_66();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DD037944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD037A60(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = a5;
  v22[1] = a2;
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v14 = sub_1DD0DE47C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - v17;
  memcpy(__dst, a4, sizeof(__dst));
  (*(v15 + 16))(v18, a1, v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *(v20 + 4) = a8;
  (*(v15 + 32))(&v20[v19], v18, v14);
  (*(a8 + 80))(a3, __dst, v22[0], sub_1DD041C3C, v20, a7, a8);
}

uint64_t sub_1DD037C2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2 & 1;
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v6, v4);
}

uint64_t sub_1DD037CA8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a3 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DD037CE0, 0, 0);
}

uint64_t sub_1DD037CE0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 88);
  *(v2 + 32) = v1;
  *(v2 + 40) = vextq_s8(v3, v3, 8uLL);
  *(v2 + 56) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC818, &qword_1DD10C168);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DD037DCC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC820, &qword_1DD10C170);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22[-1] - v15;
  v17 = a4[1];
  v21 = *a4;
  v22[0] = v17;
  *(v22 + 9) = *(a4 + 25);
  (*(v13 + 16))(&v22[-1] - v15, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v16, v12);
  (*(a7 + 88))(a3, &v21, sub_1DD041BB0, v19, a6, a7);
}

uint64_t sub_1DD037F60(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 10))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC820, &qword_1DD10C170);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DD041C1C(v2, *(a1 + 8), HIBYTE(*(a1 + 8)) & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC820, &qword_1DD10C170);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD037FFC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 64) = a1;
  v7 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DD038034, 0, 0);
}

uint64_t sub_1DD038034()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_75_17();
  OUTLINED_FUNCTION_38_33(v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD0380F4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-1] - v13;
  v15 = a3[1];
  v19 = *a3;
  v20[0] = v15;
  *(v20 + 9) = *(a3 + 25);
  (*(v11 + 16))(&v20[-1] - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  (*(a6 + 96))(&v19, sub_1DD042070, v17, a5, a6);
}

uint64_t sub_1DD038280(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 64) = a1;
  v7 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DD0382B8, 0, 0);
}

uint64_t sub_1DD0382B8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_75_17();
  OUTLINED_FUNCTION_38_33(v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD038378()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD038494(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-1] - v13;
  v15 = a3[1];
  v19 = *a3;
  v20[0] = v15;
  *(v20 + 9) = *(a3 + 25);
  (*(v11 + 16))(&v20[-1] - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  (*(a6 + 104))(&v19, sub_1DD042070, v17, a5, a6);
}

uint64_t sub_1DD038620(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 64) = a1;
  v7 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DD038658, 0, 0);
}

uint64_t sub_1DD038658()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_75_17();
  OUTLINED_FUNCTION_38_33(v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD038718(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-1] - v13;
  v15 = a3[1];
  v19 = *a3;
  v20[0] = v15;
  *(v20 + 9) = *(a3 + 25);
  (*(v11 + 16))(&v20[-1] - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  (*(a6 + 112))(&v19, sub_1DD042070, v17, a5, a6);
}

uint64_t (*sub_1DD0388A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD041AE8;
}

uint64_t sub_1DD0389D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD0389F8, 0, 0);
}

uint64_t sub_1DD0389F8()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 72) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE6671C;
  OUTLINED_FUNCTION_16_66();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD038AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC810, &qword_1DD10C160);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 128))(a3, sub_1DD041A7C, v16, a5, a6);
}

uint64_t sub_1DD038C2C(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC810, &qword_1DD10C160);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC810, &qword_1DD10C160);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD038CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD038CE4, 0, 0);
}

uint64_t sub_1DD038CE4()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_20_39(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD038DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 136))(a3, a4, sub_1DD042070, v17, v20, a7);
}

uint64_t sub_1DD038F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD038F50, 0, 0);
}

uint64_t sub_1DD038F50()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_20_39(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD03900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 144))(a3, a4, sub_1DD042070, v17, v20, a7);
}

uint64_t sub_1DD039190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD0391BC, 0, 0);
}

uint64_t sub_1DD0391BC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_20_39(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD039278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 152))(a3, a4, sub_1DD042070, v17, v20, a7);
}

uint64_t sub_1DD0393FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD039428, 0, 0);
}

uint64_t sub_1DD039428()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_20_39(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD0394E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 160))(a3, a4, sub_1DD042070, v17, v20, a7);
}

uint64_t sub_1DD039668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD039694, 0, 0);
}

uint64_t sub_1DD039694()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_20_39(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_100_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD039750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 168))(a3, a4, sub_1DD042070, v17, v20, a7);
}

uint64_t sub_1DD0398D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD0398FC, 0, 0);
}

uint64_t sub_1DD0398FC()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD0399B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 176))(a3, sub_1DD042070, v16, a5, a6);
}

uint64_t sub_1DD039B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD039B50, 0, 0);
}

uint64_t sub_1DD039B50()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD039C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 184))(a3, sub_1DD042070, v16, a5, a6);
}

uint64_t sub_1DD039D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD039DA4, 0, 0);
}

uint64_t sub_1DD039DA4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DD039E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(a5 + 192))(sub_1DD042070, v14, a4, a5);
}

uint64_t sub_1DD039FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD03A018, 0, 0);
}

uint64_t sub_1DD03A018()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD03A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 200))(a3, sub_1DD042070, v16, a5, a6);
}

uint64_t (*sub_1DD03A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040B3C;
}

void *sub_1DD03A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10C010;
}

uint64_t sub_1DD03A49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 24) + **(a6 + 24));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10C000;
}

uint64_t sub_1DD03A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 32) + **(a6 + 32));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFF0;
}

uint64_t sub_1DD03A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 40) + **(a6 + 40));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFE0;
}

uint64_t sub_1DD03ABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 48) + **(a6 + 48));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03AD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFD0;
}

uint64_t sub_1DD03AE2C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy((v6 + 16), a2, 0x50uLL);
  v12 = (*(a6 + 56) + **(a6 + 56));
  v10 = swift_task_alloc();
  *(v6 + 96) = v10;
  *v10 = v6;
  v10[1] = sub_1DD0335EC;

  return v12(a1, v6 + 16, a5, a6);
}