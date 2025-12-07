unint64_t sub_1DAF67320()
{
  result = qword_1EE302910;
  if (!qword_1EE302910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302910);
  }

  return result;
}

unint64_t sub_1DAF67374()
{
  result = qword_1EE301A18[0];
  if (!qword_1EE301A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301A18);
  }

  return result;
}

uint64_t sub_1DAF673C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WebServiceMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WebServiceMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DAF67598()
{
  result = qword_1ECC0E670;
  if (!qword_1ECC0E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E670);
  }

  return result;
}

unint64_t sub_1DAF675F0()
{
  result = qword_1ECC0E678;
  if (!qword_1ECC0E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E678);
  }

  return result;
}

unint64_t sub_1DAF67648()
{
  result = qword_1EE301A08;
  if (!qword_1EE301A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A08);
  }

  return result;
}

unint64_t sub_1DAF676A0()
{
  result = qword_1EE301A10;
  if (!qword_1EE301A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A10);
  }

  return result;
}

unint64_t sub_1DAF676F8()
{
  result = qword_1EE302900;
  if (!qword_1EE302900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302900);
  }

  return result;
}

unint64_t sub_1DAF67750()
{
  result = qword_1EE302908;
  if (!qword_1EE302908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302908);
  }

  return result;
}

id sub_1DAF677C8()
{
  type metadata accessor for ODIiCloudAccountManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  }

  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  qword_1EE300EF8 = v0;
  return result;
}

uint64_t static ODIiCloudAccountManager.shared.getter()
{
  if (qword_1EE300EF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DAF678AC(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[105] = a2;
  v3[99] = a1;
  v4 = sub_1DB09CBF4();
  v3[112] = v4;
  v3[113] = *(v4 - 8);
  v3[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF67974, 0, 0);
}

uint64_t sub_1DAF67974()
{
  v1 = v0[111];
  v2 = swift_allocObject();
  v0[115] = v2;
  *(v2 + 16) = &unk_1DB0A3360;
  *(v2 + 24) = v1;

  swift_asyncLet_begin();
  v3 = sub_1DB09CB84();
  [v3 mutableCopy];

  sub_1DB09DCE4();
  swift_unknownObjectRelease();
  sub_1DAF684B8();
  if (swift_dynamicCast())
  {
    v4 = v0[93];
    v0[116] = v4;
    [v4 ak_addClientInfoHeader];
    [v4 ak_addDeviceUDIDHeader];
    sub_1DB09CBA4();

    return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 91, sub_1DAF67B54, v0 + 94);
  }

  else
  {
    sub_1DAF68504();
    v0[118] = swift_allocError();
    *v5 = 2;
    swift_willThrow();

    return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 91, sub_1DAF67D08, v0 + 82);
  }
}

uint64_t sub_1DAF67B54()
{
  *(v1 + 936) = v0;
  if (v0)
  {
    v2 = sub_1DAF67D94;
  }

  else
  {
    v2 = sub_1DAF67B88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF67B88()
{
  v1 = v0[116];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[99];

  sub_1DB09CBD4();

  (*(v3 + 32))(v5, v2, v4);

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 91, sub_1DAF67C7C, v0 + 106);
}

uint64_t sub_1DAF67C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF67D24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF67D94()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 728, sub_1DAF67E2C, v0 + 800);
}

uint64_t sub_1DAF67E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF67EB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF67F4C;

  return sub_1DAF68FA0(1);
}

uint64_t sub_1DAF67F4C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1DAF6805C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF680EC;

  return sub_1DAF67EB8();
}

uint64_t sub_1DAF680EC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DAF681F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DAF682E4;

  return v5();
}

uint64_t sub_1DAF682E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1DAF68400(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DAF681F8(a1, v4);
}

unint64_t sub_1DAF684B8()
{
  result = qword_1EE3009A8;
  if (!qword_1EE3009A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3009A8);
  }

  return result;
}

unint64_t sub_1DAF68504()
{
  result = qword_1ECC0E680;
  if (!qword_1ECC0E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E680);
  }

  return result;
}

uint64_t sub_1DAF68558()
{
  v1[45] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF68624, v0, 0);
}

uint64_t sub_1DAF68624()
{
  v1 = v0[45];
  v2 = *(v1 + 120);
  if (v2)
  {
LABEL_4:
    v0[49] = v2;
    v5 = v0[47];
    v18 = v0[48];
    v6 = v0[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E690, &unk_1DB0A3388);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v0[40] = sub_1DB09D6C4();
    v0[41] = v8;
    v9 = v2;
    sub_1DB09DDB4();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    v0[42] = sub_1DB09D6C4();
    v0[43] = v10;
    sub_1DB09DDB4();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    *(inited + 144) = &unk_1F56C9970;
    sub_1DAF3E9C8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E340, &qword_1DB0A02C8);
    swift_arrayDestroy();
    v17 = *(v1 + 112);
    v11 = v9;
    v12 = sub_1DB09D604();
    v0[50] = v12;

    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = sub_1DAF689E4;
    swift_continuation_init();
    v0[39] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 36);
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v5 + 32))(boxed_opaque_existential_0, v18, v6);
    v0[32] = MEMORY[0x1E69E9820];
    v0[33] = 1107296256;
    v0[34] = sub_1DAF68EFC;
    v0[35] = &block_descriptor_2;
    [v17 renewCredentialsForAccount:v11 options:v12 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v3 = [*(v1 + 112) aida_accountForPrimaryiCloudAccount];
  v4 = *(v1 + 120);
  *(v1 + 120) = v3;

  v2 = *(v1 + 120);
  if (v2)
  {
    v1 = v0[45];
    goto LABEL_4;
  }

  sub_1DAF68504();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DAF689E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_1DAF68E78;
  }

  else
  {
    v4 = sub_1DAF68B04;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF68B04()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);

  if (v2 == 2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v14 = sub_1DB09D4B4();
    __swift_project_value_buffer(v14, qword_1EE30A128);
    v10 = sub_1DB09D494();
    v11 = sub_1DB09DB54();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_23;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "GrandSlamRenewal-Failed";
LABEL_17:
    v15 = v11;
    v16 = v10;
    v17 = v12;
    v18 = 2;
    goto LABEL_22;
  }

  if (v2 == 1)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DB09D4B4();
    __swift_project_value_buffer(v9, qword_1EE30A128);
    v10 = sub_1DB09D494();
    v11 = sub_1DB09DB54();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_23;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "GrandSlamRenewal-Rejected";
    goto LABEL_17;
  }

  if (v2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DB09D4B4();
    __swift_project_value_buffer(v19, qword_1EE30A128);
    v10 = sub_1DB09D494();
    v20 = sub_1DB09DB74();
    if (!os_log_type_enabled(v10, v20))
    {
      goto LABEL_23;
    }

    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v2;
    v13 = "GrandSlamRenewal-UnexpectedResultType: %ld";
    v15 = v20;
    v16 = v10;
    v17 = v12;
    v18 = 12;
LABEL_22:
    _os_log_impl(&dword_1DAF16000, v16, v15, v13, v17, v18);
    MEMORY[0x1E1281810](v12, -1, -1);
LABEL_23:
    v21 = *(v0 + 392);

    sub_1DAF68504();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    v8 = *(v0 + 8);
    goto LABEL_24;
  }

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DB09D4B4();
  __swift_project_value_buffer(v3, qword_1EE30A128);
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAF16000, v4, v5, "GrandSlamRenewal-Success", v6, 2u);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v7 = *(v0 + 392);

  v8 = *(v0 + 8);
LABEL_24:

  return v8();
}

uint64_t sub_1DAF68E78(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[49];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_1DAF68EFC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
    sub_1DB09D9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF68FA0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF68FC4, v1, 0);
}

uint64_t sub_1DAF68FC4()
{
  v43 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 120);
  if (v2 || (v3 = [*(v1 + 112) aida_accountForPrimaryiCloudAccount], v4 = *(v1 + 120), *(v1 + 120) = v3, v4, (v2 = *(v1 + 120)) != 0))
  {
    *(v0 + 56) = v2;
    v5 = v2;
    v6 = [v5 aida_alternateDSID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DB09D6C4();
      v10 = v9;

      *(v0 + 64) = v8;
      *(v0 + 72) = v10;
      v11 = sub_1DB09D6B4();
      v12 = [v5 aida:v11 tokenWithExpiryCheckForService:?];

      if (v12)
      {
        v13 = sub_1DB09D6C4();
        v15 = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1DB0A0500;
        v17 = MEMORY[0x1E69E6158];
        *(v16 + 56) = MEMORY[0x1E69E6158];
        v18 = sub_1DAF4DC24();
        *(v16 + 32) = v8;
        *(v16 + 40) = v10;
        *(v16 + 96) = v17;
        *(v16 + 104) = v18;
        *(v16 + 64) = v18;
        *(v16 + 72) = v13;
        *(v16 + 80) = v15;
        v19 = sub_1DB09D704();
        v21 = v20;

        v22 = *(v0 + 8);

        return v22(v19, v21);
      }

      else
      {
        v26 = swift_task_alloc();
        *(v0 + 80) = v26;
        *v26 = v0;
        v26[1] = sub_1DAF694A4;

        return sub_1DAF68558();
      }
    }

    sub_1DAF68504();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1DAF68504();
    v24 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  *(v0 + 96) = v24;
  if (*(v0 + 136) == 1)
  {
    v28 = *(v0 + 48);
    v29 = [*(v28 + 112) aida_accountForPrimaryiCloudAccount];
    v30 = *(v28 + 120);
    *(v28 + 120) = v29;

    v31 = swift_task_alloc();
    *(v0 + 104) = v31;
    *v31 = v0;
    v31[1] = sub_1DAF699AC;

    return sub_1DAF68FA0(0);
  }

  else
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v32 = sub_1DB09D4B4();
    __swift_project_value_buffer(v32, qword_1EE30A128);
    v33 = v24;
    v34 = sub_1DB09D494();
    v35 = sub_1DB09DB64();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_1DB09E324();
      v40 = sub_1DB015E84(v38, v39, &v42);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1DAF16000, v34, v35, "Error getting Auth Header %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E1281810](v37, -1, -1);
      MEMORY[0x1E1281810](v36, -1, -1);
    }

    swift_willThrow();
    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1DAF694A4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1DAF69B54;
  }

  else
  {
    v4 = sub_1DAF695D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF695D0()
{
  v36 = v0;
  v1 = *(v0 + 56);
  v2 = sub_1DB09D6B4();
  v3 = [v1 aida:v2 tokenWithExpiryCheckForService:?];

  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = sub_1DB09D6C4();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB0A0500;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1DAF4DC24();
    *(v10 + 32) = v6;
    *(v10 + 40) = v4;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v7;
    *(v10 + 80) = v9;
    v13 = sub_1DB09D704();
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v13, v15);
  }

  else
  {
    v18 = *(v0 + 56);

    sub_1DAF68504();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();

    *(v0 + 96) = v19;
    if (*(v0 + 136) == 1)
    {
      v21 = *(v0 + 48);
      v22 = [*(v21 + 112) aida_accountForPrimaryiCloudAccount];
      v23 = *(v21 + 120);
      *(v21 + 120) = v22;

      v24 = swift_task_alloc();
      *(v0 + 104) = v24;
      *v24 = v0;
      v24[1] = sub_1DAF699AC;

      return sub_1DAF68FA0(0);
    }

    else
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v25 = sub_1DB09D4B4();
      __swift_project_value_buffer(v25, qword_1EE30A128);
      v26 = v19;
      v27 = sub_1DB09D494();
      v28 = sub_1DB09DB64();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = v30;
        *v29 = 136315138;
        swift_getErrorValue();
        v31 = sub_1DB09E324();
        v33 = sub_1DB015E84(v31, v32, &v35);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_1DAF16000, v27, v28, "Error getting Auth Header %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1E1281810](v30, -1, -1);
        MEMORY[0x1E1281810](v29, -1, -1);
      }

      swift_willThrow();
      v34 = *(v0 + 8);

      return v34();
    }
  }
}

uint64_t sub_1DAF699AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  v7 = v6[6];
  if (v2)
  {
    v8 = sub_1DAF69DC4;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v8 = sub_1DAF69AEC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAF69AEC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1DAF69B54()
{
  v19 = v0;
  v1 = *(v0 + 56);

  v2 = *(v0 + 88);
  *(v0 + 96) = v2;
  if (*(v0 + 136) == 1)
  {
    v3 = *(v0 + 48);
    v4 = [*(v3 + 112) aida_accountForPrimaryiCloudAccount];
    v5 = *(v3 + 120);
    *(v3 + 120) = v4;

    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_1DAF699AC;

    return sub_1DAF68FA0(0);
  }

  else
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DB09D4B4();
    __swift_project_value_buffer(v8, qword_1EE30A128);
    v9 = v2;
    v10 = sub_1DB09D494();
    v11 = sub_1DB09DB64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1DB09E324();
      v16 = sub_1DB015E84(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DAF16000, v10, v11, "Error getting Auth Header %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E1281810](v13, -1, -1);
      MEMORY[0x1E1281810](v12, -1, -1);
    }

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF69DC4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODIiCloudAccountManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF69EA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF62CC4;

  return sub_1DAF678AC(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t dispatch thunk of AccountRequestHeaderProvider.applyAuthorisationHeaders(toRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF63DEC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ODIiCloudAccountManager.applyAuthorisationHeaders(toRequest:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DAF63DEC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ODIiCloudAccountManager.renewToken()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF63DEC;

  return v4();
}

unint64_t sub_1DAF6A38C()
{
  result = qword_1ECC0E698;
  if (!qword_1ECC0E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E698);
  }

  return result;
}

void sub_1DAF6A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = [objc_allocWithZone(GzVCsVtcKNcQqqNF) init];
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1DAF6CD0C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF6A68C;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);

  [v12 MypqGKKWznx4xnYa:a2 l8OCYbP9LFIvnTwG:a5 ygOPXTiKN0J02x0j:v15];
  _Block_release(v15);
}

uint64_t sub_1DAF6A5C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, id a8, uint64_t a9)
{
  if (a8)
  {
    v9 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
    return sub_1DB09D9A4();
  }

  else
  {
    sub_1DAF4ED88(a1, a2);
    sub_1DAF4ED88(a3, a4);
    sub_1DAF4ED88(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
    return sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF6A68C(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v9 = a2;
  v10 = *(a1 + 32);
  if (a2)
  {

    v11 = v9;
    v9 = sub_1DB09D034();
    v13 = v12;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0xF000000000000000;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = a3;
  a3 = sub_1DB09D034();
  v16 = v15;

  if (a4)
  {
LABEL_4:
    v17 = a4;
    a4 = sub_1DB09D034();
    v19 = v18;

    goto LABEL_8;
  }

LABEL_7:
  v19 = 0xF000000000000000;
LABEL_8:
  v20 = a6;
  v10(v9, v13, a3, v16, a4, v19, a5, a6);

  sub_1DAF4AC40(a4, v19);
  sub_1DAF4AC40(a3, v16);
  sub_1DAF4AC40(v9, v13);
}

uint64_t AccountStateUpdater.registerICloudLogin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6A8A4, 0, 0);
}

uint64_t sub_1DAF6A8A4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_allocWithZone(ODNServices) init];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_1DAF6AA70;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_3;
  [v7 registerICloudLoginWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6AA70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DAF6ABEC;
  }

  else
  {
    v2 = sub_1DAF6AB80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF6AB80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF6ABEC(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1DAF6AC68(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    sub_1DB09D9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    sub_1DB09D9B4();
  }
}

uint64_t AccountStateUpdater.unregisterICloudLogin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6ADD8, 0, 0);
}

uint64_t sub_1DAF6ADD8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_allocWithZone(ODNServices) init];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_1DAF6AFA4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_4;
  [v7 unregisterICloudLoginWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6AFA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DAF6CE20;
  }

  else
  {
    v2 = sub_1DAF6CE08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t ASDPersistenceCommand.save(files:)(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_1DB09D1D4();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6B1EC, 0, 0);
}

uint64_t sub_1DAF6B1EC()
{
  v1 = *(v0 + 144);
  *(v0 + 208) = [objc_allocWithZone(ODNServices) init];
  v2 = *(v1 + 32);
  *(v0 + 288) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  if (!v5)
  {
LABEL_6:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {

        v20 = *(v0 + 8);

        return v20();
      }

      v7 = *(v0 + 144);
      v5 = *(v7 + 8 * v8 + 64);
      ++v6;
      if (v5)
      {
        v6 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v7 = *(v0 + 144);
LABEL_10:
    *(v0 + 216) = v5;
    *(v0 + 224) = v6;
    v9 = (v6 << 10) | (16 * __clz(__rbit64(v5)));
    v10 = (*(v7 + 48) + v9);
    v11 = *v10;
    *(v0 + 232) = *v10;
    v12 = v10[1];
    *(v0 + 240) = v12;
    v13 = (*(v7 + 56) + v9);
    v14 = *v13;
    *(v0 + 248) = *v13;
    v15 = v13[1];
    *(v0 + 256) = v15;
    v16 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      break;
    }

    if (v16 == 2)
    {
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

LABEL_21:
    v5 &= v5 - 1;
    sub_1DAF40780(v11, v12);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (!v16)
  {
    if (BYTE6(v12) == 16)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (__OFSUB__(HIDWORD(v11), v11))
  {
    goto LABEL_42;
  }

  v19 = HIDWORD(v11) - v11;
LABEL_20:
  sub_1DAF40674(v11, v12);
  if (v19 != 16)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (v16 == 2)
  {
    goto LABEL_33;
  }

  if (v16 != 1)
  {
    sub_1DAF40674(v11, v12);
    sub_1DAF40674(v14, v15);
    BYTE5(v39) = BYTE5(v12);
    BYTE4(v39) = BYTE4(v12);
    BYTE3(v39) = BYTE3(v12);
    BYTE2(v39) = BYTE2(v12);
    LOWORD(v39) = v12;
    goto LABEL_38;
  }

  if (v11 > v11 >> 32)
  {
    goto LABEL_44;
  }

  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  v22 = sub_1DB09CD44();
  if (!v22)
  {
LABEL_49:
    v38 = sub_1DB09CD64();
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v38);
  }

  v23 = v22;
  v24 = sub_1DB09CD74();
  if (__OFSUB__(v11, v24))
  {
    goto LABEL_46;
  }

  v25 = v11 - v24 + v23;
  sub_1DB09CD64();
  if (v25)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_33:
  v26 = *(v11 + 16);
  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  v27 = sub_1DB09CD44();
  if (!v27)
  {
    goto LABEL_47;
  }

  v28 = v27;
  v29 = sub_1DB09CD74();
  if (__OFSUB__(v26, v29))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1DB09CD64();
    goto LABEL_48;
  }

  v25 = v26 - v29 + v28;
  sub_1DB09CD64();
  if (!v25)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_36:
  v39 = *(v25 + 8);
LABEL_38:
  sub_1DB09D1A4();
  v30 = *(v0 + 200);
  v42 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 176);
  v41 = *(v0 + 168);
  v34 = *(v0 + 160);
  v40 = *(v0 + 152);
  sub_1DAF40780(v11, v12);
  (*(v32 + 32))(v30, v31, v33);
  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  sub_1DAF40780(v11, v12);
  v35 = sub_1DB09D004();
  *(v0 + 264) = v35;
  sub_1DAF40780(v14, v15);
  sub_1DB09D174();
  v36 = sub_1DB09D6B4();
  *(v0 + 272) = v36;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1DAF6B7B8;
  swift_continuation_init();
  *(v0 + 136) = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v34 + 32))(boxed_opaque_existential_0, v41, v40);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAF6AC68;
  *(v0 + 104) = &block_descriptor_8;
  [v42 cacheData:v35 forKey:v36 andCategory:0 completion:v39];
  (*(v34 + 8))(boxed_opaque_existential_0, v40);
  v38 = v0 + 16;

  return MEMORY[0x1EEE6DEC8](v38);
}

uint64_t sub_1DAF6B7B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1DAF6BE90;
  }

  else
  {
    v2 = sub_1DAF6B8C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF6B8C8()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  sub_1DAF40780(*(v0 + 232), *(v0 + 240));
  sub_1DAF40780(v3, v4);
  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 224);
  v9 = (*(v0 + 216) - 1) & *(v0 + 216);
  if (!v9)
  {
LABEL_3:
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {

        v23 = *(v0 + 8);

        return v23();
      }

      v10 = *(v0 + 144);
      v9 = *(v10 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v8 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
    v10 = *(v0 + 144);
LABEL_7:
    *(v0 + 216) = v9;
    *(v0 + 224) = v8;
    v12 = (v8 << 10) | (16 * __clz(__rbit64(v9)));
    v13 = (*(v10 + 48) + v12);
    v14 = *v13;
    *(v0 + 232) = *v13;
    v15 = v13[1];
    *(v0 + 240) = v15;
    v16 = (*(v10 + 56) + v12);
    v17 = *v16;
    *(v0 + 248) = *v16;
    v18 = v16[1];
    *(v0 + 256) = v18;
    v19 = v15 >> 62;
    if ((v15 >> 62) <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v22 = v20 - v21;
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_40;
      }

      goto LABEL_17;
    }

LABEL_18:
    v9 &= v9 - 1;
    sub_1DAF40780(v14, v15);
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (!v19)
  {
    if (BYTE6(v15) == 16)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    goto LABEL_39;
  }

  v22 = HIDWORD(v14) - v14;
LABEL_17:
  sub_1DAF40674(v14, v15);
  if (v22 != 16)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v19 == 2)
  {
    goto LABEL_30;
  }

  if (v19 != 1)
  {
    sub_1DAF40674(v14, v15);
    sub_1DAF40674(v17, v18);
    BYTE5(v42) = BYTE5(v15);
    BYTE4(v42) = BYTE4(v15);
    BYTE3(v42) = BYTE3(v15);
    BYTE2(v42) = BYTE2(v15);
    LOWORD(v42) = v15;
    goto LABEL_35;
  }

  if (v14 > v14 >> 32)
  {
    goto LABEL_41;
  }

  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  v25 = sub_1DB09CD44();
  if (!v25)
  {
LABEL_46:
    v41 = sub_1DB09CD64();
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v41);
  }

  v26 = v25;
  v27 = sub_1DB09CD74();
  if (__OFSUB__(v14, v27))
  {
    goto LABEL_43;
  }

  v28 = v14 - v27 + v26;
  sub_1DB09CD64();
  if (v28)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_30:
  v29 = *(v14 + 16);
  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  v30 = sub_1DB09CD44();
  if (!v30)
  {
    goto LABEL_44;
  }

  v31 = v30;
  v32 = sub_1DB09CD74();
  if (__OFSUB__(v29, v32))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_1DB09CD64();
    goto LABEL_45;
  }

  v28 = v29 - v32 + v31;
  sub_1DB09CD64();
  if (!v28)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_33:
  v42 = *(v28 + 8);
LABEL_35:
  sub_1DB09D1A4();
  v33 = *(v0 + 200);
  v35 = *(v0 + 184);
  v34 = *(v0 + 192);
  v36 = *(v0 + 176);
  v44 = *(v0 + 168);
  v45 = *(v0 + 208);
  v37 = *(v0 + 160);
  v43 = *(v0 + 152);
  sub_1DAF40780(v14, v15);
  (*(v35 + 32))(v33, v34, v36);
  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  sub_1DAF40780(v14, v15);
  v38 = sub_1DB09D004();
  *(v0 + 264) = v38;
  sub_1DAF40780(v17, v18);
  sub_1DB09D174();
  v39 = sub_1DB09D6B4();
  *(v0 + 272) = v39;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1DAF6B7B8;
  swift_continuation_init();
  *(v0 + 136) = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v37 + 32))(boxed_opaque_existential_0, v44, v43);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAF6AC68;
  *(v0 + 104) = &block_descriptor_8;
  [v45 cacheData:v38 forKey:v39 andCategory:0 completion:v42];
  (*(v37 + 8))(boxed_opaque_existential_0, v43);
  v41 = v0 + 16;

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1DAF6BE90(uint64_t a1)
{
  v11 = v1[32];
  v12 = v1[34];
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[23];
  v13 = v1[33];
  v8 = v1[22];
  swift_willThrow();

  sub_1DAF40780(v4, v3);
  sub_1DAF40780(v2, v11);
  (*(v7 + 8))(v5, v8);

  v9 = v1[1];

  return v9();
}

uint64_t ASDPersistenceCommand.save(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6C070, 0, 0);
}

uint64_t sub_1DAF6C070()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v10 = [objc_allocWithZone(ODNServices) init];
  v1[25] = v10;
  v6 = sub_1DB09D004();
  v1[26] = v6;
  v7 = sub_1DB09D6B4();
  v1[27] = v7;
  v1[2] = v1;
  v1[3] = sub_1DAF6C278;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_12;
  [v10 cacheData:v6 forKey:v7 andCategory:1 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6C278()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1DAF6C408;
  }

  else
  {
    v2 = sub_1DAF6C388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF6C388()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAF6C408(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t ASDPersistenceCommand.load(key:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6C564, 0, 0);
}

uint64_t sub_1DAF6C564()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = [objc_allocWithZone(ODNServices) init];
  v1[25] = v7;
  v8 = sub_1DB09D6B4();
  v1[26] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAF6C758;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6C978;
  v1[13] = &block_descriptor_16;
  [v7 fetchDataForKey:v8 andCategory:1 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6C758()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1DAF6C8F0;
  }

  else
  {
    v2 = sub_1DAF6C868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF6C868()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1DAF6C8F0(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[25];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_1DAF6C978(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
    sub_1DB09D9A4();
  }

  else
  {
    v6 = a2;
    sub_1DB09D034();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF6CA38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ASDPersistenceCommand.save(files:)(a1);
}

uint64_t sub_1DAF6CACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF62CC4;

  return ASDPersistenceCommand.save(data:for:)(a1, a2, a3, a4);
}

uint64_t sub_1DAF6CB80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF67F4C;

  return ASDPersistenceCommand.load(key:)(a1, a2);
}

uint64_t getEnumTagSinglePayload for TimeoutError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TimeoutError(_WORD *result, int a2, int a3)
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

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t timeoutTask<A>(maxNanoSeconds:completionAfterTimeout:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF6CE88, 0, 0);
}

uint64_t sub_1DAF6CE88()
{
  v1 = *(v0 + 24);
  if (v1 == -1)
  {
    v12 = (*(v0 + 48) + **(v0 + 48));
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1DAF6D1A4;
    v10 = *(v0 + 16);

    return v12(v10);
  }

  else
  {
    v2 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v5 = *(v0 + 32);
    v4 = *(v0 + 48);
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v4;
    *(v3 + 48) = v5;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1DAF6D068;
    v7 = *(v0 + 64);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DAF6DBB4, v3, v7);
  }
}

uint64_t sub_1DAF6D068()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF6D298, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAF6D1A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAF6D298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF6D338(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v3 = sub_1DB09D9C4();
  v4 = sub_1DB09DC64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  swift_defaultActor_initialize();
  v8 = *(*v1 + 96);
  v9 = *(v3 - 8);
  v10 = *(v9 + 56);
  v10(v1 + v8, 1, 1, v3);
  v11 = (v1 + *(*v1 + 104));
  *v11 = 0;
  v11[1] = 0;
  (*(v9 + 32))(v7, a1, v3);
  v10(v7, 0, 1, v3);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v8, v7, v4);
  swift_endAccess();
  return v1;
}

uint64_t sub_1DAF6D534@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v4 = sub_1DB09D9C4();
  v5 = sub_1DB09DC64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = *(v3 + 96);
  swift_beginAccess();
  (*(v6 + 16))(a1, v1 + v9, v5);
  (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v9, v8, v5);
  result = swift_endAccess();
  v11 = v1 + *(*v1 + 104);
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);

    v12(v14);
    return sub_1DAF6243C(v12, v13);
  }

  return result;
}

uint64_t sub_1DAF6D72C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 104));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;

  return sub_1DAF6243C(v4, v5);
}

uint64_t sub_1DAF6D788()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D9C4();
  v2 = sub_1DB09DC64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DAF6243C(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DAF6D86C()
{
  sub_1DAF6D788();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF6D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v16 = sub_1DB09D9C4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  type metadata accessor for TimeoutHelper(0, a7, v20, v21);
  (*(v17 + 16))(v19, a1, v16);
  swift_allocObject();
  v22 = sub_1DAF6D338(v19);
  v23 = sub_1DB09DA24();
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a2;
  v25[5] = v22;

  v26 = sub_1DAF5B2C0(0, 0, v15, &unk_1DB0A3768, v25);
  v24(v15, 1, 1, v23);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a3;
  v27[5] = a4;
  v28 = v33;
  v27[6] = v22;
  v27[7] = v28;
  v27[8] = a6;

  v29 = sub_1DAF4F0EC(0, 0, v15, &unk_1DB0A3778, v27);
  v24(v15, 1, 1, v23);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v22;
  v30[5] = v26;
  v30[6] = v29;
  sub_1DAF4F0EC(0, 0, v15, &unk_1DB0A3788, v30);
}

uint64_t sub_1DAF6DBC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D9C4();
  result = sub_1DB09DC64();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAF6DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v5[4] = sub_1DB09D9C4();
  v7 = sub_1DB09DC64();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_1DAF6DE04;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF6DE04()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF6DF54, v6, 0);
  }
}

uint64_t sub_1DAF6DF54()
{
  sub_1DAF6D534(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6DFC0, 0, 0);
}

uint64_t sub_1DAF6DFC0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v2 = v0[5];
    v3 = v0[6];
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
  }

  (*(v3 + 8))(v1, v2);
  sub_1DB09DA74();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF6E100(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v10 = *(*a6 + 80);
  v8[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v11 = sub_1DB09D9C4();
  v8[7] = v11;
  v12 = sub_1DB09DC64();
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = *(v11 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[16] = v13;
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_1DAF6E374;

  return v16(v13);
}

uint64_t sub_1DAF6E374()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DAF6E8F8;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = sub_1DAF6E490;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF6E490()
{
  sub_1DAF6D534(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E4FC, 0, 0);
}

uint64_t sub_1DAF6E4FC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[4];
    (*(v0[9] + 8))(v1, v0[8]);
    v14 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF6E750;
    v6 = v0[16];

    return v14(v6);
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[6];
    (*(v2 + 32))(v10, v1, v3);
    (*(v11 + 16))(v9, v8, v12);
    sub_1DB09D9B4();
    (*(v2 + 8))(v10, v3);
    (*(v11 + 8))(v8, v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1DAF6E750()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E84C, 0, 0);
}

uint64_t sub_1DAF6E84C()
{
  (*(v0[14] + 8))(v0[16], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAF6E914()
{
  sub_1DAF6D534(*(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E980, 0, 0);
}

uint64_t sub_1DAF6E980()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[18];
    v3 = v0[8];
    v1 = v0[9];
  }

  else
  {
    v5 = v0[18];
    v0[2] = v5;
    v6 = v5;
    sub_1DB09D9A4();
    v4 = v5;
  }

  (*(v1 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAF6EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF6EABC, 0, 0);
}

uint64_t sub_1DAF6EABC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5EFD8, v3, 0);
}

uint64_t sub_1DAF6EB5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09DA44();

  return sub_1DB09DA44();
}

uint64_t sub_1DAF6EBE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAF6DCC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF6ECA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF62CC4;

  return sub_1DAF6E100(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF6ED80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF6EA98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF6EE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DAF6EE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials13ODIClientGUIDVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAF6EF4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DAF6EFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAF6F064(char a1)
{
  result = 0x696C6F69766152;
  switch(a1)
  {
    case 1:
      result = 0x75706D6F43657250;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x666F725068736143;
      break;
    case 4:
      result = 0x726574614C796150;
      break;
    case 5:
      result = 0x5073676E69766153;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C69666F72506342;
      break;
    case 8:
      result = 0x69666F7250706D41;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x7250726941766449;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials12ODNErrorInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF6F620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 704))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 688);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF6F668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 696) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 704) = 1;
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
      *(result + 688) = (a2 - 1);
      return result;
    }

    *(result + 704) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ODIAssessmentResult.payload.getter()
{
  v1 = type metadata accessor for ODIAssessment(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ODIErrorAssessment(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ODIAssessmentResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAF6FA20(v9, v6, type metadata accessor for ODIErrorAssessment);
    v10 = *(v6 + 1);

    v11 = v6;
    v12 = type metadata accessor for ODIErrorAssessment;
  }

  else
  {
    sub_1DAF6FA20(v9, v3, type metadata accessor for ODIAssessment);
    v10 = *(v3 + 2);

    v11 = v3;
    v12 = type metadata accessor for ODIAssessment;
  }

  sub_1DAF6FA88(v11, v12);
  return v10;
}

uint64_t sub_1DAF6F984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAF6F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIAssessmentResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF6FA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF6FA88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ODIAssessmentResult.init(id:payload:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for ODIAssessment(0);
  sub_1DAF6FBA0(a5, a6 + *(v8 + 24));
  type metadata accessor for ODIAssessmentResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ODIAssessment.init(id:payload:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for ODIAssessment(0) + 24);

  return sub_1DAF6FBA0(a5, v7);
}

uint64_t sub_1DAF6FBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ODIAssessmentResult.init(errorPayload:errorCode:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  v7 = type metadata accessor for ODIErrorAssessment(0);
  sub_1DAF6FBA0(a4, a5 + *(v7 + 24));
  type metadata accessor for ODIAssessmentResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ODIErrorAssessment.init(errorPayload:errorCode:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  v6 = a5 + *(type metadata accessor for ODIErrorAssessment(0) + 24);

  return sub_1DAF6FBA0(a4, v6);
}

uint64_t ODIAssessmentResult.assessmentCompletedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ODIAssessment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ODIErrorAssessment(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ODIAssessmentResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAF6FA20(v12, v9, type metadata accessor for ODIErrorAssessment);
    sub_1DAF6FE8C(&v9[*(v7 + 24)], a1);
    v13 = v9;
    v14 = type metadata accessor for ODIErrorAssessment;
  }

  else
  {
    sub_1DAF6FA20(v12, v6, type metadata accessor for ODIAssessment);
    sub_1DAF6FE8C(&v6[*(v4 + 24)], a1);
    v13 = v6;
    v14 = type metadata accessor for ODIAssessment;
  }

  return sub_1DAF6FA88(v13, v14);
}

uint64_t sub_1DAF6FE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ODIAssessment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ODIAssessment.payload.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ODIErrorAssessment.payload.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1DAF6FFC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_1DAF6FE8C(v4, a2);
}

uint64_t sub_1DAF70060(uint64_t a1)
{
  result = type metadata accessor for ODIAssessment(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ODIErrorAssessment(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAF70108(uint64_t a1)
{
  if (!qword_1EE300970)
  {
    sub_1DB09DF64();
    v1 = sub_1DB09DC64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE300970);
    }
  }
}

void sub_1DAF70194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAF70108(319);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DAF70210@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v5 = v4;
  v47 = *a1;
  v48 = a1[1];
  result = sub_1DB0283F0();
  if ((result & 0x100) != 0)
  {
    goto LABEL_40;
  }

  v9 = (result & 0x40) != 0 ? 3 : 2;
  if ((result & 0x80u) == 0)
  {
    v10 = (result & 0x40) >> 6;
  }

  else
  {
    LOBYTE(v10) = v9;
  }

  v11 = result & 0x1F;
  if (v11 == 31)
  {
    v12 = 0;
    v13 = (*(&v48 + 1) >> 1) - v48;
    v14 = v13 + 1;
    v15 = v48 <= *(&v48 + 1) >> 1 ? *(&v48 + 1) >> 1 : v48;
    v16 = v15 - v48;
    v17 = (*(&v47 + 1) + v48);
    v18 = v48 + 1;
    v19 = 1;
    while (1)
    {
      if (!v13)
      {
        v18 = *(&v48 + 1) >> 1;
        v11 = v12;
        goto LABEL_22;
      }

      if (!v16)
      {
        goto LABEL_70;
      }

      if (__OFADD__(v19, 1))
      {
        goto LABEL_71;
      }

      v11 = *v17 & 0x7F | (v12 << 7);
      if ((*v17 & 0x80000000) == 0)
      {
        break;
      }

      --v16;
      --v13;
      ++v17;
      ++v18;
      ++v19;
      v12 = v11;
      if (v11 >= 0xFFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }
    }

    v14 = v19 + 1;
LABEL_22:
    v49 = v10;
    v20 = result;
    *&v48 = v18;
  }

  else
  {
    v49 = v10;
    v20 = result;
    v14 = 1;
  }

  result = sub_1DB0283F0();
  if ((result & 0x100) != 0)
  {
    goto LABEL_40;
  }

  v21 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((result & 0x80) == 0)
  {
    v45 = v5;
    v46 = a2;
    v44 = v14 + 1;
    v22 = result & 0x7F;
    v23 = v48;
    goto LABEL_27;
  }

  v31 = result & 0x7F;
  if (v31 > 7)
  {
LABEL_33:
    sub_1DAF70638();
    swift_allocError();
    v33 = 5;
LABEL_41:
    *v32 = v33;
    swift_willThrow();
    swift_unknownObjectRetain();
    return swift_unknownObjectRelease();
  }

  v46 = a2;
  v23 = v48;
  if ((result & 0x7F) == 0)
  {
    v22 = 0;
    v36 = __OFADD__(v21, v31);
    v37 = v21 + v31;
    if (!v36)
    {
      goto LABEL_49;
    }

    goto LABEL_69;
  }

  v34 = *(&v48 + 1) >> 1;
  if (v48 <= *(&v48 + 1) >> 1)
  {
    v35 = *(&v48 + 1) >> 1;
  }

  else
  {
    v35 = v48;
  }

  if (v48 == *(&v48 + 1) >> 1)
  {
    goto LABEL_40;
  }

  if (v48 < *(&v48 + 1) >> 1)
  {
    v22 = *(*(&v47 + 1) + v48);
    v38 = v48 + 1;
    if (v31 == 1)
    {
      goto LABEL_48;
    }

    if (v38 != v34)
    {
      if (v38 == v35)
      {
        goto LABEL_75;
      }

      v39 = *(*(&v47 + 1) + v38);
      v38 = v48 + 2;
      v22 = v39 | (v22 << 8);
      if (v31 == 2)
      {
        goto LABEL_48;
      }

      if (v38 == v34)
      {
        goto LABEL_40;
      }

      if (v38 == v35)
      {
        goto LABEL_75;
      }

      v40 = *(*(&v47 + 1) + v38);
      v38 = v48 + 3;
      v22 = v40 | (v22 << 8);
      if (v31 == 3)
      {
        goto LABEL_48;
      }

      if (v38 == v34)
      {
        goto LABEL_40;
      }

      if (v38 == v35)
      {
        goto LABEL_75;
      }

      v41 = *(*(&v47 + 1) + v38);
      v38 = v48 + 4;
      v22 = v41 | (v22 << 8);
      if (v31 == 4)
      {
        goto LABEL_48;
      }

      if (v38 == v34)
      {
        goto LABEL_40;
      }

      if (v38 == v35)
      {
        goto LABEL_75;
      }

      v42 = *(*(&v47 + 1) + v38);
      v38 = v48 + 5;
      v22 = v42 | (v22 << 8);
      if (v31 == 5)
      {
        goto LABEL_48;
      }

      if (v38 == v34)
      {
        goto LABEL_40;
      }

      if (v38 == v35)
      {
        goto LABEL_75;
      }

      v43 = *(*(&v47 + 1) + v38);
      v38 = v48 + 6;
      v22 = v43 | (v22 << 8);
      if (v31 == 6)
      {
LABEL_48:
        v23 = v38;
        v36 = __OFADD__(v21, v31);
        v37 = v21 + v31;
        if (!v36)
        {
LABEL_49:
          v44 = v37;
          v45 = v5;
LABEL_27:
          result = sub_1DAF7068C(v22, v47, *(&v47 + 1), v23, *(&v48 + 1));
          if (!__OFSUB__(v26 >> 1, v25))
          {
            v27 = result;
            if ((v26 >> 1) - v25 == v22)
            {
              v28 = v24;
              v29 = v25;
              v30 = v26;
              swift_unknownObjectRetain();
              sub_1DAFF6618(v11, v49, (v20 & 0x20) != 0, v27, v28, v29, v30, v46, x8_0);
              if (v45)
              {
                return swift_unknownObjectRelease();
              }

              result = v44 + v22;
              if (!__OFADD__(v44, v22))
              {
                sub_1DAF70704(result);
                return swift_unknownObjectRelease();
              }

              goto LABEL_74;
            }

            goto LABEL_40;
          }

LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        goto LABEL_69;
      }

      if (v38 != v34)
      {
        if (v38 != v35)
        {
          v23 = v48 + 7;
          v22 = *(*(&v47 + 1) + v38) | (v22 << 8);
          v36 = __OFADD__(v21, v31);
          v37 = v21 + v31;
          if (!v36)
          {
            goto LABEL_49;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        goto LABEL_75;
      }
    }

LABEL_40:
    sub_1DAF70638();
    swift_allocError();
    v33 = 4;
    goto LABEL_41;
  }

LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_1DAF70638()
{
  result = qword_1ECC0E6B0;
  if (!qword_1ECC0E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6B0);
  }

  return result;
}

unint64_t sub_1DAF7068C(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DAF70704(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v1 + 16);
      v3 = *(v1 + 24) >> 1;
      if (!__OFSUB__(v3, v2))
      {
        if (v3 - v2 < result)
        {
LABEL_15:
          __break(1u);
          return result;
        }

        v4 = v2 + result;
        if (!__OFADD__(v2, result))
        {
          if (v3 >= v4)
          {
            if (v4 >= v2)
            {
              *(v1 + 16) = v4;
              return result;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

char *sub_1DAF7075C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v15 = *a1;
  v16 = v7;
  v17 = v8;
  v13 = v15;
  swift_unknownObjectRetain();
  v9 = MEMORY[0x1E69E7CC0];
  if (v7 == v8 >> 1)
  {
LABEL_10:
    swift_unknownObjectRelease();
    *a1 = v13;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
  }

  else
  {
    while (1)
    {
      sub_1DAF70210(&v15, a2, a3 & 1);
      if (v3)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DAF73290(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_1DAF73290((v10 > 1), v11 + 1, 1, v9);
      }

      *(v9 + 2) = v11 + 1;
      sub_1DAF40D20(&v14, &v9[32 * v11 + 32]);
      v7 = v16;
      v8 = v17;
      if (v16 == v17 >> 1)
      {
        v13 = v15;
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_1DAF708BC(uint64_t a1, int a2)
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

uint64_t sub_1DAF70904(uint64_t result, int a2, int a3)
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

uint64_t sub_1DAF70950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DAF70998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASN1DecodeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1DecodeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAF70B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DAF70B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF70BFC()
{
  result = qword_1ECC0E6B8;
  if (!qword_1ECC0E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6B8);
  }

  return result;
}

unint64_t sub_1DAF70C64()
{
  result = qword_1ECC0E6C0;
  if (!qword_1ECC0E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6C0);
  }

  return result;
}

id ODIError(_:fromError:code:forceCode:properties:file:function:line:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(v13) = a5;
  LODWORD(v15) = *a4;
  if (qword_1EE301E08 != -1)
  {
LABEL_63:
    swift_once();
  }

  v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v17 = v16;
  v79 = a6;
  if (!a3)
  {
    goto LABEL_15;
  }

  v18 = v16;
  v19 = a3;
  v20 = sub_1DB09CE64();
  v21 = [v20 domain];
  v22 = sub_1DB09D6C4();
  v24 = v23;

  if (v22 == 0x726F72724549444FLL && v24 == 0xE800000000000000)
  {

LABEL_10:
    if ((v13 & 1) == 0)
    {
      ODIErrorCode.init(rawValue:)([v20 code]);
      if (v86 != 211)
      {
        LODWORD(v15) = v86;
      }
    }

    v31 = [v20 userInfo];
    v17 = sub_1DB09D624();

    goto LABEL_14;
  }

  v26 = sub_1DB09E254();

  if (v26)
  {
    goto LABEL_10;
  }

  v27 = sub_1DB09D6C4();
  v29 = v28;
  *(&v87 + 1) = sub_1DAF4D7A4();
  *&v86 = v20;
  sub_1DAF40D20(&v86, &v83);
  v13 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82[0] = v18;
  sub_1DAF3B11C(&v83, v27, v29, isUniquelyReferenced_nonNull_native);

  v17 = *&v82[0];
LABEL_14:
  a6 = v79;
LABEL_15:
  v78 = a7;
  if (!a6)
  {
LABEL_51:
    v61 = *(v17 + 16);

    if (v61 && (v62 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v63 & 1) != 0) && (sub_1DAF409DC(*(v17 + 56) + 32 * v62, &v86), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), (swift_dynamicCast() & 1) != 0))
    {
      v64 = v83;
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1DAF73010(0, *(v64 + 2) + 1, 1, v64, &qword_1ECC0E770, &qword_1DB0A4698, &type metadata for ODIInvocation);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1DAF73010((v65 > 1), v66 + 1, 1, v64, &qword_1ECC0E770, &qword_1DB0A4698, &type metadata for ODIInvocation);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[56 * v66];
    *(v67 + 4) = a1;
    *(v67 + 5) = a2;
    *(v67 + 6) = v78;
    *(v67 + 7) = a8;
    *(v67 + 8) = a9;
    *(v67 + 9) = a10;
    *(v67 + 10) = a11;
    *(&v87 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v86 = v64;
    sub_1DAF40D20(&v86, &v83);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v17;
    sub_1DAF3B11C(&v83, 0x636F766E4949444FLL, 0xEE00736E6F697461, v68);
    v69 = qword_1DB0A46A0[v15 ^ 0x80];
    v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v71 = sub_1DB09D6B4();
    v72 = sub_1DB09D604();
    v73 = [v70 initWithDomain:v71 code:v69 userInfo:v72];

    return v73;
  }

  v32 = *(v17 + 16);

  v75 = v15;
  if (v32 && (v33 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v34 & 1) != 0) && (sub_1DAF409DC(*(v17 + 56) + 32 * v33, &v86), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68), (swift_dynamicCast() & 1) != 0))
  {
    a3 = v83;
  }

  else
  {
    a3 = sub_1DAF3E280(MEMORY[0x1E69E7CC0]);
  }

  v35 = 0;
  a7 = a6 + 64;
  v36 = 1 << *(a6 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v15 = v37 & *(a6 + 64);
  v38 = (v36 + 63) >> 6;
  v76 = v17;
  while (1)
  {
    while (1)
    {
      v39 = v35;
      if (!v15)
      {
        if (v38 <= v35 + 1)
        {
          v41 = v35 + 1;
        }

        else
        {
          v41 = v38;
        }

        v35 = v41 - 1;
        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v40 >= v38)
          {
            v15 = 0;
            v85 = 0;
            v83 = 0u;
            v84 = 0u;
            goto LABEL_34;
          }

          v15 = *(a7 + 8 * v40);
          ++v39;
          if (v15)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v40 = v35;
LABEL_33:
      v42 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v42 | (v40 << 6);
      v44 = *(*(a6 + 48) + v43);
      sub_1DAF409DC(*(a6 + 56) + 32 * v43, v82);
      LOBYTE(v83) = v44;
      sub_1DAF40D20(v82, (&v83 + 8));
      v35 = v40;
LABEL_34:
      v86 = v83;
      v87 = v84;
      v88 = v85;
      if (!v85)
      {

        *(&v87 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
        *&v86 = a3;
        sub_1DAF40D20(&v86, &v83);

        v60 = swift_isUniquelyReferenced_nonNull_native();
        *&v82[0] = v17;
        sub_1DAF3B11C(&v83, 0x65706F725049444FLL, 0xED00007365697472, v60);

        v17 = *&v82[0];
        LODWORD(v15) = v75;
        goto LABEL_51;
      }

      v13 = v86;
      sub_1DAF40D20((&v86 + 8), &v83);
      if (!a3[2])
      {
        break;
      }

      v45 = sub_1DAF352E8(v13);
      if ((v46 & 1) == 0)
      {
        break;
      }

      sub_1DAF409DC(a3[7] + 32 * v45, v82);
      __swift_destroy_boxed_opaque_existential_1Tm(&v83);
      sub_1DAF4D73C(v82);
    }

    memset(v82, 0, sizeof(v82));
    sub_1DAF4D73C(v82);
    sub_1DAF409DC(&v83, v82);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_1DAF352E8(v13);
    v50 = a3[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_62;
    }

    v53 = v48;
    if (a3[3] >= v52)
    {
      if ((v47 & 1) == 0)
      {
        sub_1DAF3C758();
      }
    }

    else
    {
      sub_1DAF37BC4(v52, v47);
      v54 = sub_1DAF352E8(v13);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_65;
      }

      v49 = v54;
    }

    if (v53)
    {
      v56 = (a3[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      sub_1DAF40D20(v82, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v83);
      goto LABEL_49;
    }

    a3[(v49 >> 6) + 8] |= 1 << v49;
    *(a3[6] + v49) = v13;
    sub_1DAF40D20(v82, (a3[7] + 32 * v49));
    __swift_destroy_boxed_opaque_existential_1Tm(&v83);
    v57 = a3[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      break;
    }

    a3[2] = v59;
LABEL_49:
    v17 = v76;
    a6 = v79;
  }

  __break(1u);
LABEL_65:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

CoreODIEssentials::ODIErrorCode_optional __swiftcall ODIErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= -30)
  {
    if (rawValue <= -1405)
    {
      switch(rawValue)
      {
        case -3153:
          *v1 = 127;
          break;
        case -3152:
          *v1 = 126;
          break;
        case -3151:
          *v1 = 125;
          break;
        case -3150:
        case -3149:
        case -3148:
        case -3147:
        case -3146:
        case -3145:
        case -3144:
        case -3143:
        case -3142:
        case -3141:
        case -3140:
        case -3139:
        case -3138:
        case -3137:
        case -3136:
        case -3135:
        case -3134:
        case -3133:
        case -3132:
        case -3131:
        case -3130:
        case -3129:
        case -3128:
        case -3127:
        case -3126:
        case -3125:
        case -3124:
        case -3123:
        case -3122:
        case -3121:
        case -3120:
        case -3119:
        case -3118:
        case -3117:
        case -3116:
        case -3115:
        case -3114:
          goto LABEL_159;
        case -3113:
          *v1 = 124;
          break;
        case -3112:
          *v1 = 123;
          break;
        case -3111:
          *v1 = 122;
          break;
        case -3110:
          *v1 = 121;
          break;
        case -3109:
          *v1 = 120;
          break;
        case -3108:
          *v1 = 119;
          break;
        case -3107:
          *v1 = 118;
          break;
        case -3106:
          *v1 = 117;
          break;
        case -3105:
          *v1 = 116;
          break;
        case -3104:
          *v1 = 115;
          break;
        case -3103:
          *v1 = 114;
          break;
        case -3102:
          *v1 = 113;
          break;
        case -3101:
          *v1 = 112;
          break;
        default:
          switch(rawValue)
          {
            case -2129:
              *v1 = 111;
              break;
            case -2128:
              *v1 = 110;
              break;
            case -2127:
              *v1 = 109;
              break;
            case -2126:
              *v1 = 108;
              break;
            case -2125:
              *v1 = 107;
              break;
            case -2124:
              *v1 = 106;
              break;
            case -2123:
              *v1 = 105;
              break;
            case -2122:
            case -2121:
            case -2120:
            case -2119:
            case -2118:
            case -2117:
            case -2116:
            case -2115:
            case -2114:
            case -2113:
            case -2109:
            case -2108:
            case -2106:
            case -2105:
              goto LABEL_159;
            case -2112:
              *v1 = 104;
              break;
            case -2111:
              *v1 = 103;
              break;
            case -2110:
              *v1 = 102;
              break;
            case -2107:
              *v1 = 101;
              break;
            case -2104:
              *v1 = 100;
              break;
            case -2103:
              *v1 = 99;
              break;
            default:
              if (rawValue != -131600)
              {
                goto LABEL_159;
              }

              *v1 = 98;
              break;
          }

          break;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -1404:
          *v1 = 84;
          break;
        case -1403:
          *v1 = 83;
          break;
        case -1402:
          *v1 = 82;
          break;
        case -1317:
          *v1 = 97;
          break;
        case -1316:
          *v1 = 96;
          break;
        case -1315:
          *v1 = 95;
          break;
        case -1310:
          *v1 = 94;
          break;
        case -1309:
          *v1 = 93;
          break;
        case -1308:
          *v1 = 92;
          break;
        case -1307:
          *v1 = 91;
          break;
        case -1306:
          *v1 = 90;
          break;
        case -1305:
          *v1 = 89;
          break;
        case -1304:
          *v1 = 88;
          break;
        case -1303:
          *v1 = 87;
          break;
        case -1302:
          *v1 = 86;
          break;
        case -1301:
          *v1 = 85;
          break;
        case -1204:
          *v1 = 81;
          break;
        case -1203:
          *v1 = 80;
          break;
        case -1202:
          *v1 = 79;
          break;
        case -1201:
          *v1 = 78;
          break;
        case -1119:
          *v1 = 77;
          break;
        case -1118:
          *v1 = 76;
          break;
        case -1117:
          *v1 = 75;
          break;
        case -1116:
          *v1 = 74;
          break;
        case -1115:
          *v1 = 73;
          break;
        case -1114:
          *v1 = 72;
          break;
        case -1113:
          *v1 = 71;
          break;
        case -1112:
          *v1 = 70;
          break;
        case -1111:
          *v1 = 69;
          break;
        case -1110:
          *v1 = 68;
          break;
        case -1104:
          *v1 = 67;
          break;
        case -1103:
          *v1 = 66;
          break;
        case -1102:
          *v1 = 65;
          break;
        case -1101:
          *v1 = 64;
          break;
        default:
          goto LABEL_159;
      }
    }

    return rawValue;
  }

  if (rawValue > 39999)
  {
    if (rawValue <= 40400)
    {
      switch(rawValue)
      {
        case 40000:
          *v1 = 28;
          break;
        case 40010:
          *v1 = 29;
          break;
        case 40011:
          *v1 = 30;
          break;
        case 40012:
          *v1 = 31;
          break;
        case 40013:
          *v1 = 32;
          break;
        case 40014:
          *v1 = 33;
          break;
        case 40015:
          *v1 = 34;
          break;
        case 40020:
          *v1 = 35;
          break;
        case 40021:
          *v1 = 36;
          break;
        case 40022:
          *v1 = 37;
          break;
        case 40023:
          *v1 = 38;
          break;
        case 40024:
          *v1 = 39;
          break;
        case 40025:
          *v1 = 40;
          break;
        case 40026:
          *v1 = 41;
          break;
        case 40027:
          *v1 = 42;
          break;
        case 40028:
          *v1 = 43;
          break;
        case 40029:
          *v1 = 44;
          break;
        case 40030:
          *v1 = 45;
          break;
        case 40101:
          *v1 = 46;
          break;
        case 40102:
          *v1 = 47;
          break;
        case 40200:
          *v1 = 48;
          break;
        case 40201:
          *v1 = 49;
          break;
        case 40205:
          *v1 = 50;
          break;
        default:
          goto LABEL_159;
      }

      return rawValue;
    }

    if (rawValue <= 40600)
    {
      if (rawValue <= 40403)
      {
        if (rawValue == 40401)
        {
          *v1 = 51;
        }

        else if (rawValue == 40402)
        {
          *v1 = 52;
        }

        else
        {
          *v1 = 53;
        }

        return rawValue;
      }

      switch(rawValue)
      {
        case 40404:
          *v1 = 54;
          return rawValue;
        case 40500:
          *v1 = 55;
          return rawValue;
        case 40600:
          *v1 = 56;
          return rawValue;
      }
    }

    else if (rawValue <= 50001)
    {
      switch(rawValue)
      {
        case 40601:
          *v1 = 57;
          return rawValue;
        case 50000:
          *v1 = 58;
          return rawValue;
        case 50001:
          *v1 = 59;
          return rawValue;
      }
    }

    else if (rawValue > 99991)
    {
      if (rawValue == 99992)
      {
        *v1 = 62;
        return rawValue;
      }

      if (rawValue == 99993)
      {
        *v1 = 63;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 50002)
      {
        *v1 = 60;
        return rawValue;
      }

      if (rawValue == 99991)
      {
        *v1 = 61;
        return rawValue;
      }
    }

LABEL_159:
    if (rawValue > -6010)
    {
      v2 = 0x80;
      switch(rawValue)
      {
        case -3300:
          *v1 = -93;
          return rawValue;
        case -3299:
        case -3298:
        case -3297:
        case -3296:
        case -3295:
        case -3294:
        case -3293:
        case -3292:
        case -3291:
        case -3290:
        case -3289:
        case -3288:
        case -3287:
        case -3286:
        case -3285:
        case -3284:
        case -3283:
        case -3282:
        case -3281:
        case -3280:
        case -3279:
        case -3278:
        case -3277:
        case -3276:
        case -3275:
        case -3274:
        case -3273:
        case -3272:
        case -3271:
        case -3270:
        case -3269:
        case -3268:
        case -3267:
        case -3266:
        case -3265:
        case -3264:
        case -3263:
        case -3262:
        case -3261:
        case -3260:
        case -3259:
        case -3258:
        case -3257:
        case -3256:
        case -3255:
        case -3254:
        case -3253:
        case -3252:
        case -3251:
        case -3250:
        case -3249:
        case -3248:
        case -3247:
        case -3246:
        case -3245:
        case -3244:
        case -3243:
        case -3242:
        case -3241:
        case -3240:
        case -3239:
        case -3238:
        case -3237:
        case -3236:
        case -3235:
        case -3234:
        case -3233:
        case -3232:
        case -3231:
        case -3230:
        case -3229:
        case -3228:
        case -3227:
        case -3226:
        case -3225:
        case -3224:
        case -3223:
        case -3222:
        case -3221:
        case -3220:
        case -3219:
        case -3218:
        case -3217:
        case -3216:
        case -3215:
        case -3214:
        case -3213:
        case -3212:
        case -3211:
        case -3210:
        case -3209:
        case -3208:
        case -3207:
        case -3206:
        case -3205:
        case -3204:
        case -3203:
        case -3202:
        case -3201:
        case -3200:
        case -3199:
        case -3198:
        case -3197:
        case -3196:
        case -3195:
        case -3194:
        case -3193:
        case -3192:
        case -3191:
        case -3189:
        case -3160:
          goto LABEL_192;
        case -3190:
          *v1 = -94;
          return rawValue;
        case -3188:
          *v1 = -95;
          return rawValue;
        case -3187:
          *v1 = -96;
          return rawValue;
        case -3186:
          *v1 = -97;
          return rawValue;
        case -3185:
          *v1 = -98;
          return rawValue;
        case -3184:
          *v1 = -99;
          return rawValue;
        case -3183:
          *v1 = -100;
          return rawValue;
        case -3182:
          *v1 = -101;
          return rawValue;
        case -3181:
          *v1 = -102;
          return rawValue;
        case -3180:
          *v1 = -103;
          return rawValue;
        case -3179:
          *v1 = -104;
          return rawValue;
        case -3178:
          *v1 = -105;
          return rawValue;
        case -3177:
          *v1 = -106;
          return rawValue;
        case -3176:
          *v1 = -107;
          return rawValue;
        case -3175:
          *v1 = -108;
          return rawValue;
        case -3174:
          *v1 = -109;
          return rawValue;
        case -3173:
          *v1 = -110;
          return rawValue;
        case -3172:
          *v1 = -111;
          return rawValue;
        case -3171:
          *v1 = -112;
          return rawValue;
        case -3170:
          *v1 = -113;
          return rawValue;
        case -3169:
          *v1 = -114;
          return rawValue;
        case -3168:
          *v1 = -115;
          return rawValue;
        case -3167:
          *v1 = -116;
          return rawValue;
        case -3166:
          *v1 = -117;
          return rawValue;
        case -3165:
          *v1 = -118;
          return rawValue;
        case -3164:
          *v1 = -119;
          return rawValue;
        case -3163:
          *v1 = -120;
          return rawValue;
        case -3162:
          *v1 = -121;
          return rawValue;
        case -3161:
          *v1 = -122;
          return rawValue;
        case -3159:
          *v1 = -123;
          return rawValue;
        case -3158:
          *v1 = -124;
          return rawValue;
        case -3157:
          *v1 = -125;
          return rawValue;
        case -3156:
          *v1 = -126;
          return rawValue;
        case -3155:
          *v1 = -127;
          return rawValue;
        case -3154:
          goto LABEL_136;
        default:
          if (rawValue == -6009)
          {
            *v1 = -91;
          }

          else
          {
            if (rawValue != -5108)
            {
              goto LABEL_192;
            }

            *v1 = -92;
          }

          break;
      }

      return rawValue;
    }

    if (rawValue > -8305)
    {
      if (rawValue > -6105)
      {
        if (rawValue <= -6103)
        {
          if (rawValue == -6104)
          {
            *v1 = -87;
          }

          else
          {
            *v1 = -88;
          }

          return rawValue;
        }

        if (rawValue == -6102)
        {
          *v1 = -89;
          return rawValue;
        }

        if (rawValue == -6010)
        {
          *v1 = -90;
          return rawValue;
        }
      }

      else if (rawValue > -8002)
      {
        if (rawValue == -8001)
        {
          *v1 = -85;
          return rawValue;
        }

        if (rawValue == -6105)
        {
          *v1 = -86;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == -8304)
        {
          *v1 = -83;
          return rawValue;
        }

        if (rawValue == -8301)
        {
          *v1 = -84;
          return rawValue;
        }
      }
    }

    else
    {
      if (rawValue > -22202)
      {
        switch(rawValue)
        {
          case -8504:
            *v1 = -70;
            return rawValue;
          case -8503:
            *v1 = -71;
            return rawValue;
          case -8502:
            *v1 = -72;
            return rawValue;
          case -8501:
            *v1 = -73;
            return rawValue;
          case -8500:
            *v1 = -74;
            return rawValue;
          case -8499:
          case -8498:
          case -8497:
          case -8496:
          case -8495:
          case -8494:
          case -8493:
          case -8492:
          case -8491:
          case -8490:
          case -8489:
          case -8488:
          case -8487:
          case -8486:
          case -8485:
          case -8484:
          case -8483:
          case -8482:
          case -8481:
          case -8480:
          case -8479:
          case -8478:
          case -8477:
          case -8476:
          case -8475:
          case -8474:
          case -8473:
          case -8472:
          case -8471:
          case -8470:
          case -8469:
          case -8468:
          case -8467:
          case -8466:
          case -8465:
          case -8464:
          case -8463:
          case -8462:
          case -8461:
          case -8460:
          case -8459:
          case -8458:
          case -8457:
          case -8456:
          case -8455:
          case -8454:
          case -8453:
          case -8452:
          case -8451:
          case -8450:
          case -8449:
          case -8448:
          case -8447:
          case -8446:
          case -8445:
          case -8444:
          case -8443:
          case -8442:
          case -8441:
          case -8440:
          case -8439:
          case -8438:
          case -8437:
          case -8436:
          case -8435:
          case -8432:
          case -8431:
          case -8430:
          case -8427:
          case -8426:
          case -8425:
          case -8424:
          case -8423:
          case -8422:
          case -8421:
          case -8420:
          case -8419:
          case -8418:
          case -8417:
          case -8416:
          case -8415:
          case -8414:
          case -8413:
          case -8412:
          case -8411:
          case -8410:
          case -8409:
          case -8408:
          case -8407:
          case -8406:
          case -8405:
          case -8402:
            goto LABEL_192;
          case -8434:
            *v1 = -75;
            return rawValue;
          case -8433:
            *v1 = -76;
            return rawValue;
          case -8429:
            *v1 = -77;
            return rawValue;
          case -8428:
            *v1 = -78;
            return rawValue;
          case -8404:
            *v1 = -79;
            return rawValue;
          case -8403:
            *v1 = -80;
            return rawValue;
          case -8401:
            *v1 = -81;
            return rawValue;
          case -8400:
            *v1 = -82;
            return rawValue;
          default:
            if (rawValue == -22201)
            {
              *v1 = -68;
            }

            else
            {
              if (rawValue != -22200)
              {
                goto LABEL_192;
              }

              *v1 = -69;
            }

            break;
        }

        return rawValue;
      }

      switch(rawValue)
      {
        case -22204:
          *v1 = -65;
          return rawValue;
        case -22203:
          *v1 = -66;
          return rawValue;
        case -22202:
          *v1 = -67;
          return rawValue;
      }
    }

LABEL_192:
    if (rawValue <= -72206)
    {
      if (rawValue > -72211)
      {
        if (rawValue <= -72209)
        {
          if (rawValue == -72210)
          {
            *v1 = -50;
          }

          else
          {
            *v1 = -51;
          }
        }

        else if (rawValue == -72208)
        {
          *v1 = -52;
        }

        else if (rawValue == -72207)
        {
          *v1 = -53;
        }

        else
        {
          *v1 = -54;
        }

        return rawValue;
      }

      if (rawValue > -72781)
      {
        if (rawValue == -72780)
        {
          *v1 = -48;
          return rawValue;
        }

        if (rawValue == -72211)
        {
          *v1 = -49;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == -72782)
        {
          *v1 = -46;
          return rawValue;
        }

        if (rawValue == -72781)
        {
          *v1 = -47;
          return rawValue;
        }
      }
    }

    else
    {
      if (rawValue <= -72201)
      {
        if (rawValue <= -72204)
        {
          if (rawValue == -72205)
          {
            *v1 = -55;
          }

          else
          {
            *v1 = -56;
          }
        }

        else if (rawValue == -72203)
        {
          *v1 = -57;
        }

        else if (rawValue == -72202)
        {
          *v1 = -58;
        }

        else
        {
          *v1 = -59;
        }

        return rawValue;
      }

      if (rawValue <= -22208)
      {
        if (rawValue == -72200)
        {
          *v1 = -60;
          return rawValue;
        }

        if (rawValue == -22208)
        {
          *v1 = -61;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case -22205:
            *v1 = -64;
            return rawValue;
          case -22206:
            *v1 = -63;
            return rawValue;
          case -22207:
            *v1 = -62;
            return rawValue;
        }
      }
    }

    *v1 = -45;
    return rawValue;
  }

  if (rawValue > 19999)
  {
    switch(rawValue)
    {
      case 20000:
        *v1 = 25;
        return rawValue;
      case 20001:
        *v1 = 26;
        return rawValue;
      case 20100:
        *v1 = 27;
        return rawValue;
    }

    goto LABEL_159;
  }

  v2 = 0;
  switch(rawValue)
  {
    case -29:
      *v1 = 23;
      return rawValue;
    case -28:
      *v1 = 22;
      return rawValue;
    case -22:
      *v1 = 21;
      return rawValue;
    case -21:
      *v1 = 20;
      return rawValue;
    case -20:
      *v1 = 19;
      return rawValue;
    case -19:
      *v1 = 18;
      return rawValue;
    case -18:
      *v1 = 17;
      return rawValue;
    case -17:
      *v1 = 16;
      return rawValue;
    case -16:
      *v1 = 15;
      return rawValue;
    case -15:
      *v1 = 14;
      return rawValue;
    case -14:
      *v1 = 13;
      return rawValue;
    case -13:
      *v1 = 12;
      return rawValue;
    case -12:
      *v1 = 11;
      return rawValue;
    case -11:
      *v1 = 10;
      return rawValue;
    case -10:
      *v1 = 9;
      return rawValue;
    case -9:
      *v1 = 8;
      return rawValue;
    case -8:
      *v1 = 7;
      return rawValue;
    case -7:
      *v1 = 6;
      return rawValue;
    case -6:
      *v1 = 5;
      return rawValue;
    case -5:
      *v1 = 4;
      return rawValue;
    case -4:
      *v1 = 3;
      return rawValue;
    case -3:
      *v1 = 2;
      return rawValue;
    case -2:
      v2 = 1;
      goto LABEL_136;
    case -1:
LABEL_136:
      *v1 = v2;
      break;
    case 200:
      *v1 = 24;
      break;
    default:
      goto LABEL_159;
  }

  return rawValue;
}

uint64_t sub_1DAF72424()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A46A0[v1 ^ 0x80]);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF724B4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A46A0[v1 ^ 0x80]);
  return sub_1DB09E3E4();
}

CoreODIEssentials::ODIErrorPropertyKey_optional __swiftcall ODIErrorPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIErrorPropertyKey.rawValue.getter()
{
  result = 0x776F6C666B726F77;
  switch(*v0)
  {
    case 1:
      result = 0x72656469766F7270;
      break;
    case 2:
      result = 0x5255726576726573;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x4974736575716572;
      break;
    case 6:
      result = 0x61737265766E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6552656369766564;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x6761735574726563;
      break;
    case 0xB:
      result = 0x6573616261746164;
      break;
    case 0xC:
      result = 0x74737973656C6966;
      break;
    case 0xD:
      result = 0x69796C7265646E75;
      break;
    case 0xE:
      result = 0x746E756F43797274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAF7281C()
{
  v0 = ODIErrorPropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == ODIErrorPropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DB09E254();
  }

  return v5 & 1;
}

uint64_t sub_1DAF728B8()
{
  sub_1DB09E3A4();
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF72920(uint64_t a1)
{
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAF72984()
{
  sub_1DB09E3A4();
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF729F4@<X0>(unint64_t *a1@<X8>)
{
  result = ODIErrorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DAF72A1C()
{
  v0 = objc_opt_self();
  v1 = sub_1DB09D6B4();
  v3[4] = sub_1DAF72AFC;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1DAF4D5C4;
  v3[3] = &block_descriptor_4;
  v2 = _Block_copy(v3);
  [v0 setUserInfoValueProviderForDomain:v1 provider:v2];
  _Block_release(v2);
}

uint64_t sub_1DAF72AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_1DB09D6C4() == a2 && v8 == a3)
  {

    goto LABEL_13;
  }

  v10 = sub_1DB09E254();

  if (v10)
  {
LABEL_13:
    result = sub_1DAF742F8(a1);
    goto LABEL_14;
  }

  if (sub_1DB09D6C4() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  result = sub_1DAF749BC(a1);
LABEL_14:
  *(a4 + 24) = MEMORY[0x1E69E6158];
  *a4 = result;
  *(a4 + 8) = v15;
  return result;
}

CoreODIEssentials::ODIErrorCode sub_1DAF72C08@<W0>(_BYTE *a2@<X8>)
{
  v3 = sub_1DB09CE64();
  v4 = [v3 domain];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  if (v5 == 0x726F72724549444FLL && v7 == 0xE800000000000000)
  {
  }

  else
  {
    v9 = sub_1DB09E254();

    if ((v9 & 1) == 0)
    {
      v18 = 45;
      v19 = 0xE100000000000000;
      sub_1DB09DE44();

      v17[0] = 0xD00000000000000ELL;
      v17[1] = 0x80000001DB0C3310;
      v10 = [v3 description];
      v11 = sub_1DB09D6C4();
      v13 = v12;

      MEMORY[0x1E127FE90](v11, v13);

      CoreODILogger.error(_:category:)(0xD000000000000018, 0x80000001DB0C3310, v17);

      *a2 = 0;
      return result;
    }
  }

  v15 = [v3 code];

  result = ODIErrorCode.init(rawValue:)(v15).value;
  v16 = v18;
  if (v18 == 211)
  {
    v16 = 0;
  }

  *a2 = v16;
  return result;
}

char *sub_1DAF72DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DAF72EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E708, &qword_1DB0AC370);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1DAF73010(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DAF7315C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E598, &qword_1DB0A28D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAF73290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E570, &qword_1DB0A2828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF733EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DAF735C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DAF736F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6D8, &unk_1DB0A45E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF73844(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1DAF73A2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E700, &unk_1DB0A4610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF73B38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E0, &unk_1DB0A45F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E8, &unk_1DB0B2670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF73C6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E738, &qword_1DB0A4648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAF73DC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

unint64_t sub_1DAF73EB8()
{
  result = qword_1ECC0E6D0;
  if (!qword_1ECC0E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6D0);
  }

  return result;
}

unint64_t sub_1DAF73F10()
{
  result = qword_1EE3026F0;
  if (!qword_1EE3026F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3026F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x2E)
  {
    goto LABEL_17;
  }

  if (a2 + 210 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 210) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 210;
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

      return (*a1 | (v4 << 8)) - 210;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 210;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD3;
  v8 = v6 - 211;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 210 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 210) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x2E)
  {
    v4 = 0;
  }

  if (a2 > 0x2D)
  {
    v5 = ((a2 - 46) >> 8) + 1;
    *result = a2 - 46;
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
    *result = a2 - 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIErrorPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIErrorPropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials8TTRErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAF74234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DAF7427C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAF742C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DAF742F8(void *a1)
{
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v2 = a1;
  v3 = sub_1DB09CE64();
  v4 = [v3 userInfo];
  v5 = sub_1DB09D624();

  v46 = a1;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1DAF409DC(*(v5 + 56) + 32 * v6, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_13;
  }

  v8 = *(v48 + 16);
  if (!v8)
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = v8 + 1;
  v10 = v48 + 56 * v8;
  while (1)
  {
    v12 = *(v10 - 24);
    v11 = *(v10 - 16);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      break;
    }

    --v9;
    v10 -= 56;
    if (v9 <= 1)
    {
      goto LABEL_11;
    }
  }

  *&v51[0] = 40;
  *(&v51[0] + 1) = 0xE100000000000000;

  MEMORY[0x1E127FE90](v12, v11);

  swift_bridgeObjectRelease_n();
  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v15 = *(&v51[0] + 1);
  v14 = *&v51[0];
LABEL_13:
  ODIErrorCode.init(rawValue:)([v3 code]);
  if (LOBYTE(v51[0]) == 211)
  {
    v16 = 0xE90000000000003ELL;
    v17 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v17 = sub_1DB09D744();
    v16 = v19;
  }

  *&v51[0] = 0;
  *(&v51[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v51[0] = 0x20726F727245;
  *(&v51[0] + 1) = 0xE600000000000000;
  MEMORY[0x1E127FE90](v14, v15);

  MEMORY[0x1E127FE90](0x206E69616D6F4420, 0xEA0000000000203DLL);
  v20 = [v3 domain];
  v21 = sub_1DB09D6C4();
  v23 = v22;

  MEMORY[0x1E127FE90](v21, v23);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v48 = [v3 code];
  v24 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v24);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v17, v16);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v18 = *&v51[0];
  v53 = v51[0];
  v25 = [v3 userInfo];
  v26 = sub_1DB09D624();

  if (!*(v26 + 16) || (v27 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v28 & 1) == 0))
  {

    return v18;
  }

  sub_1DAF409DC(*(v26 + 56) + 32 * v27, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v18;
  }

  v29 = v48;
  if (!*(v48 + 16))
  {

    return v18;
  }

  v45 = v3;
  result = MEMORY[0x1E127FE90](0x747265706F725020, 0xEF5B203D20736569);
  v31 = 0;
  v32 = 0;
  v33 = 1 << *(v48 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v48 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = 0xE000000000000000;
  if (v35)
  {
    while (1)
    {
      v38 = v32;
LABEL_32:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = v41 | (v38 << 6);
      v43 = *(*(v29 + 48) + v42);
      sub_1DAF409DC(*(v29 + 56) + 32 * v42, v47);
      LOBYTE(v48) = v43;
      sub_1DAF40D20(v47, (&v48 + 8));
      v40 = v38;
LABEL_33:
      v51[0] = v48;
      v51[1] = v49;
      v52 = v50;
      if (!v50)
      {
        break;
      }

      sub_1DAF40D20((v51 + 8), &v48);
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      sub_1DB09E234();
      v44 = v47[0];
      *&v47[0] = v31;
      *(&v47[0] + 1) = v37;

      MEMORY[0x1E127FE90](v44, *(&v44 + 1));

      MEMORY[0x1E127FE90](*&v47[0], *(&v47[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      v31 = 8236;
      v37 = 0xE200000000000000;
      v32 = v40;
      if (!v35)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x1E127FE90](93, 0xE100000000000000);

    return v53;
  }

LABEL_25:
  if (v36 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v36;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v35 = 0;
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      goto LABEL_33;
    }

    v35 = *(v29 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF749BC(void *a1)
{
  v66 = sub_1DB09CF64();
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v67 = v2;
  v4 = a1;
  v63 = sub_1DB09CE64();
  ODIErrorCode.init(rawValue:)([v63 code]);
  if (LOBYTE(v73[0]) == 211)
  {
    v5 = 0xE90000000000003ELL;
    v6 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v6 = sub_1DB09D744();
    v5 = v8;
  }

  v9 = v63;
  v10 = [v63 userInfo];
  v11 = sub_1DB09D624();

  *&v73[0] = 0;
  *(&v73[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v73[0] = 0x6F4420726F727245;
  *(&v73[0] + 1) = 0xEF203D206E69616DLL;
  v12 = [v9 domain];
  v13 = sub_1DB09D6C4();
  v15 = v14;

  MEMORY[0x1E127FE90](v13, v15);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v70 = [v9 code];
  v16 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v16);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v6, v5);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v75 = v73[0];
  v17 = *(v11 + 16);
  v64 = v11;
  if (!v17 || (v18 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v19 & 1) == 0) || (sub_1DAF409DC(*(v11 + 56) + 32 * v18, v73), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    if (*(v11 + 16))
    {
      v35 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v36)
      {
        sub_1DAF409DC(*(v11 + 56) + 32 * v35, v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v37 = v70;
          if (*(v70 + 16))
          {
            result = MEMORY[0x1E127FE90](0x61636F766E49090ALL, 0xEE003A736E6F6974);
            v38 = *(v37 + 16);
            if (v38)
            {
              v60 = a1;
              v61 = (v67 + 8);
              v39 = v38 + 1;
              v40 = (v37 + 56 * v38);
              v62 = v37;
              while (v39 - 2 < *(v37 + 16))
              {
                v41 = *(v40 - 2);
                v67 = *(v40 - 3);
                v42 = v40[1];
                v43 = v40[2];
                v44 = v40[3];

                MEMORY[0x1E127FE90](10, 0xE100000000000000);
                v45 = v65;
                sub_1DB09CEC4();
                v46 = sub_1DB09CED4();
                v48 = v47;
                (*v61)(v45, v66);
                *&v73[0] = v46;
                *(&v73[0] + 1) = v48;
                MEMORY[0x1E127FE90](58, 0xE100000000000000);

                MEMORY[0x1E127FE90](v42, v43);

                MEMORY[0x1E127FE90](58, 0xE100000000000000);
                *&v70 = v44;
                v49 = sub_1DB09E1D4();
                MEMORY[0x1E127FE90](v49);

                v50 = v73[0];
                *&v73[0] = 539822345;
                *(&v73[0] + 1) = 0xE400000000000000;
                MEMORY[0x1E127FE90](v50, *(&v50 + 1));

                MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));
                v51 = v67;

                if (!v51 && v41 == 0xE000000000000000 || (sub_1DB09E254() & 1) != 0)
                {
                }

                else
                {
                  *&v73[0] = 9;
                  *(&v73[0] + 1) = 0xE100000000000000;

                  MEMORY[0x1E127FE90](v51, v41);

                  swift_bridgeObjectRelease_n();
                  MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));
                }

                v37 = v62;
                --v39;
                v40 -= 7;
                v11 = v64;
                if (v39 <= 1)
                {

                  a1 = v60;
                  goto LABEL_41;
                }
              }

              goto LABEL_52;
            }
          }
        }
      }
    }

LABEL_41:
    v52 = sub_1DB09D6C4();
    if (*(v11 + 16))
    {
      v54 = sub_1DAF35210(v52, v53);
      v56 = v55;

      if (v56)
      {
        sub_1DAF409DC(*(v11 + 56) + 32 * v54, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
        if (swift_dynamicCast())
        {
          v57 = v70;
          MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C2680);
          *&v73[0] = 0;
          *(&v73[0] + 1) = 0xE000000000000000;
          swift_getErrorValue();
          sub_1DB09E234();
          v58 = v73[0];
          *&v73[0] = 0x202D09090ALL;
          *(&v73[0] + 1) = 0xE500000000000000;
          MEMORY[0x1E127FE90](v58, *(&v58 + 1));

          MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));

          return v75;
        }

LABEL_48:
        return v75;
      }
    }

    else
    {
    }

    goto LABEL_48;
  }

  v60 = a1;
  v20 = v70;
  result = MEMORY[0x1E127FE90](0x7265706F7250090ALL, 0xED00003A73656974);
  v21 = 0;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  if (v24)
  {
    while (1)
    {
      v26 = v21;
LABEL_20:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v26 << 6);
      v31 = *(*(v20 + 48) + v30);
      sub_1DAF409DC(*(v20 + 56) + 32 * v30, v69);
      LOBYTE(v70) = v31;
      sub_1DAF40D20(v69, (&v70 + 8));
      v28 = v26;
LABEL_21:
      v73[0] = v70;
      v73[1] = v71;
      v74 = v72;
      if (!v72)
      {
        break;
      }

      v32 = v73[0];
      sub_1DAF40D20((v73 + 8), &v70);
      MEMORY[0x1E127FE90](10, 0xE100000000000000);
      *&v69[0] = 0;
      *(&v69[0] + 1) = 0xE000000000000000;
      v68 = v32;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      sub_1DB09E234();
      v34 = *(&v69[0] + 1);
      v33 = *&v69[0];
      *&v69[0] = 539822345;
      *(&v69[0] + 1) = 0xE400000000000000;
      MEMORY[0x1E127FE90](v33, v34);

      MEMORY[0x1E127FE90](*&v69[0], *(&v69[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      v21 = v28;
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    a1 = v60;
    v11 = v64;
    goto LABEL_26;
  }

LABEL_13:
  if (v25 <= v21 + 1)
  {
    v27 = v21 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v24 = 0;
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      goto LABEL_21;
    }

    v24 = *(v20 + 64 + 8 * v26);
    ++v21;
    if (v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1DAF753BC(uint64_t a1)
{
  v1 = sub_1DB09CE64();
  v2 = [v1 domain];
  v3 = sub_1DB09D6C4();
  v5 = v4;

  if (v3 == 0x726F72724549444FLL && v5 == 0xE800000000000000)
  {
  }

  else
  {
    v7 = sub_1DB09E254();

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v8 = [v1 userInfo];
  v9 = sub_1DB09D624();

  if (!*(v9 + 16) || (v10 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v11 & 1) == 0))
  {

LABEL_14:

    return 0;
  }

  sub_1DAF409DC(*(v9 + 56) + 32 * v10, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
  if (swift_dynamicCast())
  {
    result = v13;
    if (*(v13 + 16))
    {
      return result;
    }
  }

  return 0;
}

unint64_t sub_1DAF75558()
{
  result = qword_1ECC0E728;
  if (!qword_1ECC0E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E728);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF755C4()
{
  type metadata accessor for DeviceStatus();
  v0 = swift_allocObject();
  result = sub_1DAF75600();
  qword_1ECC25A50 = v0;
  return result;
}

uint64_t sub_1DAF75600()
{
  v9 = sub_1DB09DBB4();
  v0 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DB09DBA4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DB09D4F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&qword_1EE3018F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v9);
  v5 = sub_1DB09DBE4();
  v6 = v10;
  *(v10 + 16) = v5;
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E69D8A58]) initWithQueue_];
  return v6;
}

BOOL sub_1DAF7588C()
{
  v1 = [*(v0 + 24) currentAudioAndVideoCalls];
  sub_1DAF4062C(0, &qword_1ECC0E780, 0x1E69D8A40);
  v2 = sub_1DB09D934();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_1DB09DD44();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1280530](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isSharingScreen];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

uint64_t sub_1DAF759B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D4C4();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB09D4F4();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v19[1] = *(a2 + 16);
  (*(v11 + 16))(v19 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1DAF75E58;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_5;
  v17 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&unk_1EE301990, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v9, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_1DAF75D54()
{
  sub_1DAF7588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF75DB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1DAF75DF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF75E58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);

  return sub_1DAF75D54();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF75F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAF75F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAF75FB4(const void *a1)
{
  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  memcpy(__dst, a1, sizeof(__dst));
  sub_1DAF761E0();
  v2 = sub_1DB09CC34();
  v4 = v3;

  v5 = sub_1DB09D014();
  sub_1DAF40780(v2, v4);
  return v5;
}

unint64_t sub_1DAF761E0()
{
  result = qword_1EE3011A8;
  if (!qword_1EE3011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011A8);
  }

  return result;
}

uint64_t static RavioliFetcher.fetchRavioli(session:url:appBundleId:notificationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[20] = a1;
  v7 = sub_1DB09CBF4();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for RavioliRequestFactory(0);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7632C, 0, 0);
}

uint64_t sub_1DAF7632C()
{
  v12 = v0;
  v1 = [*(v0 + 160) configuration];
  v2 = [v1 _appleIDContext];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 14;
    CoreODILogger.fault(_:category:)(0xD000000000000047, 0x80000001DB0C33E0, &v11);
  }

  v3 = *(v0 + 160);
  type metadata accessor for RavioliFetcherImpl();
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  *(inited + 16) = v3;
  v5 = qword_1EE302C70;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE302C80;
  *(v0 + 40) = type metadata accessor for DeviceInformation();
  *(v0 + 48) = &protocol witness table for DeviceInformation;
  *(v0 + 16) = v7;
  v8 = qword_1EE3039A0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE3039B0;
  *(v0 + 248) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF764D8, v9, 0);
}

uint64_t sub_1DAF764D8()
{
  if (*(*(v0 + 248) + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF766A8, 0, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF765AC;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAF765AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF766A8, 0, 0);
}

uint64_t sub_1DAF766A8()
{
  v1 = v0[31];
  v0[10] = type metadata accessor for ODIDeviceInfo();
  v0[11] = &off_1F56C79C0;
  v0[7] = v1;
  if (qword_1EE300EF0 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v2 = v0[29];
  v4 = qword_1EE300EF8;
  v0[33] = qword_1EE300EF8;
  v5 = (v2 + *(v3 + 24));
  v6 = type metadata accessor for ODIiCloudAccountManager();
  v0[34] = v6;
  v5[3] = v6;
  v5[4] = &protocol witness table for ODIiCloudAccountManager;
  *v5 = v4;

  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1DAF767EC;
  v8 = v0[29];

  return sub_1DAF7885C(v8, 0, 0xD00000000000001ELL, 0x80000001DB0C3430);
}

uint64_t sub_1DAF767EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF768E8, 0, 0);
}

uint64_t sub_1DAF768E8()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_1DAF332B8((v0 + 16), v1 + v2[5]);
  sub_1DAF332B8((v0 + 56), v1 + v2[7]);
  v5 = (v1 + v2[8]);
  *v5 = v4;
  v5[1] = v3;

  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF769CC;
  v7 = *(v0 + 216);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);

  return sub_1DB0231C0(v7, v8, v9);
}

uint64_t sub_1DAF769CC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1DAF76DA8;
  }

  else
  {
    v2 = sub_1DAF76AE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF76AE0()
{
  v1 = v0[33];
  v0[15] = v0[34];
  v0[16] = &off_1F56C4CF8;
  v0[12] = v1;

  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_1DAF76BA8;
  v3 = v0[27];

  return sub_1DAF76EF4(v3, 1, (v0 + 12));
}

uint64_t sub_1DAF76BA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 12);
    v7 = sub_1DAF76E28;
  }

  else
  {
    v6[40] = a2;
    v6[41] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 12);
    v7 = sub_1DAF76CEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAF76CEC()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_setDeallocating();

  (*(v4 + 8))(v3, v5);
  sub_1DAF78324(v1);

  v6 = v0[1];
  v8 = v0[40];
  v7 = v0[41];

  return v6(v7, v8);
}

uint64_t sub_1DAF76DA8()
{
  v1 = *(v0 + 232);

  sub_1DAF78324(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF76E28()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  (*(v3 + 8))(v2, v4);
  sub_1DAF78324(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAF76EF4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 176) = a2;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_1DB09CBF4();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7700C, 0, 0);
}

uint64_t sub_1DAF7700C()
{
  v55 = v0;
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1DB09D4B4();
  v0[11] = __swift_project_value_buffer(v5, qword_1EE30A128);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1DB09D494();
  v8 = sub_1DB09DB54();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v52 = v6;
  if (v9)
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *v12 = 136315138;
    sub_1DB09CBC4();
    v13 = sub_1DB09CF64();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_1DAF783EC(v0[5]);
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v19 = v0[5];
      v16 = sub_1DB09CEA4();
      v15 = v20;
      (*(v14 + 8))(v19, v13);
    }

    v53 = *(v0[7] + 8);
    v53(v0[10], v0[6]);
    v21 = sub_1DB015E84(v16, v15, &v54);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1DAF16000, v7, v8, "Requesting ravioli: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1E1281810](v51, -1, -1);
    MEMORY[0x1E1281810](v12, -1, -1);

    v6 = v52;
  }

  else
  {
    v18 = v0[6];
    v17 = v0[7];

    v53 = *(v17 + 8);
    v53(v10, v18);
  }

  v6(v0[9], v0[2], v0[6]);
  v22 = sub_1DB09D494();
  v23 = sub_1DB09DB54();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[9];
  v26 = v0[6];
  if (v24)
  {
    v27 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v27 = 136315138;
    v28 = sub_1DB09CB74();
    v30 = v29;
    v31 = v25;
    v32 = v53;
    v53(v31, v26);
    v33 = sub_1DB015E84(v28, v30, &v54);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1DAF16000, v22, v23, "Request: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1E1281810](v50, -1, -1);
    v34 = v27;
    v6 = v52;
    MEMORY[0x1E1281810](v34, -1, -1);
  }

  else
  {

    v35 = v25;
    v32 = v53;
    v53(v35, v26);
  }

  v6(v0[8], v0[2], v0[6]);
  v36 = sub_1DB09D494();
  v37 = sub_1DB09DB54();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[8];
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315138;
    if (sub_1DB09CB94())
    {
      v42 = sub_1DB09D644();
      v44 = v43;
      v32 = v53;
    }

    else
    {
      v44 = 0xEA00000000007372;
      v42 = 0x6564616568206F4ELL;
    }

    v32(v0[8], v0[6]);
    v46 = sub_1DB015E84(v42, v44, &v54);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_1DAF16000, v36, v37, "Request: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E1281810](v41, -1, -1);
    MEMORY[0x1E1281810](v40, -1, -1);
  }

  else
  {
    v45 = v0[6];

    v32(v39, v45);
  }

  v47 = swift_task_alloc();
  v0[12] = v47;
  *v47 = v0;
  v47[1] = sub_1DAF775C0;
  v48 = v0[2];

  return MEMORY[0x1EEDC6260](v48, 0);
}

uint64_t sub_1DAF775C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;

  if (v3)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF7772C, 0, 0);
  }
}

uint64_t sub_1DAF7772C()
{
  v59 = v0;
  v1 = *(v0 + 120);
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v57 = v6;
    *v5 = 136315138;
    v7 = [v4 debugDescription];
    v8 = sub_1DB09D6C4();
    v10 = v9;

    v11 = sub_1DB015E84(v8, v10, &v57);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E1281810](v6, -1, -1);
    MEMORY[0x1E1281810](v5, -1, -1);
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v13 = *(v0 + 120);
  if (!v12)
  {
    sub_1DAF78398();
    swift_allocError();
    *v26 = 5;
    *(v26 + 8) = 256;
    swift_willThrow();
    goto LABEL_12;
  }

  v14 = v12;
  v15 = v13;
  sub_1DAF8C94C([v14 statusCode], &v57);
  v16 = v57;
  v17 = v58;
  if (v58 != 1)
  {
    goto LABEL_7;
  }

  if (v57 > 0x10)
  {
    goto LABEL_26;
  }

  if (((1 << v57) & 0x1F3DE) != 0)
  {
LABEL_7:
    v18 = sub_1DB09D494();
    v19 = sub_1DB09DB64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v56 = v21;
      v57 = v16;
      *v20 = 136315138;
      v58 = v17;
      v22 = HTTPStatusCode.description.getter();
      v24 = sub_1DB015E84(v22, v23, &v56);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DAF16000, v18, v19, "FetchRavioli Failed - Response: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E1281810](v21, -1, -1);
      MEMORY[0x1E1281810](v20, -1, -1);
    }

    v13 = *(v0 + 120);
    sub_1DAF78398();
    swift_allocError();
    *v25 = v16;
    *(v25 + 8) = v17;
    *(v25 + 9) = 0;
LABEL_10:
    swift_willThrow();

LABEL_12:
    sub_1DAF40780(*(v0 + 104), *(v0 + 112));

    v27 = *(v0 + 8);

    return v27();
  }

  if (((1 << v57) & 0xC00) != 0)
  {
    v29 = *(v0 + 120);

    v30 = v29;
    v31 = sub_1DB09D494();
    v32 = sub_1DB09DB74();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 120);
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = [v14 statusCode];

      _os_log_impl(&dword_1DAF16000, v31, v32, "Expected %ld to be handled by the AKAppleIDSession", v35, 0xCu);
      v36 = v35;
LABEL_28:
      MEMORY[0x1E1281810](v36, -1, -1);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v57 != 5)
  {
LABEL_26:

    v31 = sub_1DB09D494();
    v43 = sub_1DB09DB54();
    v44 = os_log_type_enabled(v31, v43);
    v34 = *(v0 + 120);
    if (v44)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DAF16000, v31, v43, "Requesting ravioli - data received", v45, 2u);
      v36 = v45;
      goto LABEL_28;
    }

LABEL_29:

    v46 = *(v0 + 104);
    v47 = *(v0 + 112);

    v48 = *(v0 + 8);

    return v48(v46, v47);
  }

  v37 = *(v0 + 176);
  v38 = sub_1DB09D494();
  if (v37 != 1)
  {
    v49 = sub_1DB09DB64();
    if (os_log_type_enabled(v38, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 136315138;
      v56 = v51;
      v57 = 5;
      v58 = 1;
      v52 = HTTPStatusCode.description.getter();
      v54 = sub_1DB015E84(v52, v53, &v56);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1DAF16000, v38, v49, "Authorisation error not retrying or have already retried: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E1281810](v51, -1, -1);
      MEMORY[0x1E1281810](v50, -1, -1);
    }

    v13 = *(v0 + 120);
    sub_1DAF78398();
    swift_allocError();
    *v55 = 5;
    *(v55 + 8) = 1;
    goto LABEL_10;
  }

  v39 = sub_1DB09DB54();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1DAF16000, v38, v39, "Requesting ravioli - Authorisation error will renew and retry only one retry will be attempted", v40, 2u);
    MEMORY[0x1E1281810](v40, -1, -1);
  }

  v41 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v42 = swift_task_alloc();
  *(v0 + 128) = v42;
  *v42 = v0;
  v42[1] = sub_1DAF77E40;

  return sub_1DAF68558();
}

uint64_t sub_1DAF77E40()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF780EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = sub_1DAF77FB8;
    v4 = v2[3];
    v5 = v2[2];

    return sub_1DAF76EF4(v5, 0, v4);
  }
}

uint64_t sub_1DAF77FB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_1DAF78248;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_1DAF7818C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAF780EC()
{
  v1 = v0[15];

  sub_1DAF40780(v0[13], v0[14]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAF7818C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_1DAF40780(v3, v1);
  v4 = v0[20];
  v5 = v0[21];

  v6 = v0[1];

  return v6(v5, v4);
}

uint64_t sub_1DAF78248()
{
  v1 = v0[15];

  sub_1DAF40780(v0[13], v0[14]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAF782EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF78324(uint64_t a1)
{
  v2 = type metadata accessor for RavioliRequestFactory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAF78398()
{
  result = qword_1ECC0E788;
  if (!qword_1ECC0E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E788);
  }

  return result;
}

uint64_t sub_1DAF783EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RavioliFetcherImpl.FetchError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RavioliFetcherImpl.FetchError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1DAF784B8(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF784D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

BOOL sub_1DAF7850C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      v14 = v2;
      v15 = v3;
      v12 = v4;
      v13 = v5 & 1;
      v10 = v6;
      v11 = v7 & 1;
      return _s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(&v12, &v10);
    }

    return 0;
  }

  v8 = *(a1 + 8);
  if (v4 > 2)
  {
    if (v4 ^ 3 | v8)
    {
      if (v4 ^ 4 | v8)
      {
        if (*(a2 + 9) && v6 > 4)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(v6 ^ 4 | v7))
      {
        return 1;
      }
    }

    else if (*(a2 + 9) && !(v6 ^ 3 | v7))
    {
      return 1;
    }

    return 0;
  }

  if (!(v4 | v8))
  {
    return *(a2 + 9) && !(v6 | v7);
  }

  if (v4 ^ 1 | v8)
  {
    return *(a2 + 9) && !(v6 ^ 2 | v7);
  }

  return *(a2 + 9) && !(v6 ^ 1 | v7);
}

uint64_t Data.uuid.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      v9 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v10 = sub_1DB09CD44();
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = v10;
      v12 = sub_1DB09CD74();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_29;
      }

      v13 = v9 - v12 + v11;
      a1 = sub_1DB09CD64();
      if (v13)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_1DB09CD44();
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v16;
    v18 = sub_1DB09CD74();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      sub_1DB09CD64();
      if (!v19)
      {
        goto LABEL_31;
      }

LABEL_21:
      sub_1DB09D1A4();
      v14 = 0;
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_1DB09CD64();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1DB09CD64();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 1;
LABEL_22:
  v20 = sub_1DB09D1D4();
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, v14, 1, v20);
}

uint64_t sub_1DAF7885C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 472) = a3;
  *(v4 + 480) = a4;
  *(v4 + 512) = a2;
  *(v4 + 464) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7890C, 0, 0);
}

uint64_t sub_1DAF7890C()
{
  v28 = v0;
  v1 = *(v0 + 512);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1DB09DE44();

  v27[0] = 0x4F49444F65726F63;
  v27[1] = 0xEF65646972726576;
  v3 = sub_1DAF6F064(v1);
  MEMORY[0x1E127FE90](v3);

  MEMORY[0x1E127FE90](0x4C525565736142, 0xE700000000000000);
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {

    goto LABEL_16;
  }

  v4 = sub_1DB09D6B4();

  v5 = [v2 stringForKey_];

  if (!v5)
  {
LABEL_16:

    if (qword_1EE304008 != -1)
    {
      swift_once();
    }

    v24 = swift_task_alloc();
    *(v0 + 504) = v24;
    *v24 = v0;
    v24[1] = sub_1DAF78DA8;

    return sub_1DAFEFC24(v0 + 240);
  }

  sub_1DB09D6C4();

  v6 = (v0 + 496);
  v7 = *(v0 + 496);

  sub_1DB09CF24();

  v8 = sub_1DB09CF64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    sub_1DAF783EC(*v6);
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DB09D4B4();
    __swift_project_value_buffer(v11, qword_1EE30A128);
    v12 = sub_1DB09D494();
    v13 = sub_1DB09DB64();
    if (os_log_type_enabled(v12, v13))
    {
      v26 = v10;
      v14 = *(v0 + 512);
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v15 = 136315138;
      v16 = sub_1DAF6F064(v14);
      v18 = sub_1DB015E84(v16, v17, v27);
      v10 = v26;

      *(v15 + 4) = v18;
      _os_log_impl(&dword_1DAF16000, v12, v13, "No URL override or config found for %s URL", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E1281810](v25, -1, -1);
      MEMORY[0x1E1281810](v15, -1, -1);
    }

    v19 = *(v0 + 488);
    sub_1DB09CF24();
    result = v10(v19, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v6 = (v0 + 488);
  }

  v21 = *v6;
  v22 = *(v0 + 464);

  (*(v9 + 32))(v22, v21, v8);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DAF78DA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF78EA4, 0, 0);
}

uint64_t sub_1DAF78EA4()
{
  v50 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 416);
  v46 = *(v0 + 400);
  v47 = v2;
  v3 = *(v0 + 448);
  v48 = *(v0 + 432);
  v49 = v3;
  v4 = *(v0 + 352);
  v42 = *(v0 + 336);
  v43 = v4;
  v5 = *(v0 + 384);
  v44 = *(v0 + 368);
  v45 = v5;
  v6 = *(v0 + 288);
  v38 = *(v0 + 272);
  v39 = v6;
  v7 = *(v0 + 320);
  v40 = *(v0 + 304);
  v41 = v7;
  v8 = *(v0 + 256);
  v36 = *(v0 + 240);
  v37 = v8;
  sub_1DAFEF854(v1);
  v10 = v9;
  v11 = v47;
  *(v0 + 176) = v46;
  *(v0 + 192) = v11;
  v12 = v49;
  *(v0 + 208) = v48;
  *(v0 + 224) = v12;
  v13 = v43;
  *(v0 + 112) = v42;
  *(v0 + 128) = v13;
  v14 = v45;
  *(v0 + 144) = v44;
  *(v0 + 160) = v14;
  v15 = v39;
  *(v0 + 48) = v38;
  *(v0 + 64) = v15;
  v16 = v41;
  *(v0 + 80) = v40;
  *(v0 + 96) = v16;
  v17 = v37;
  *(v0 + 16) = v36;
  *(v0 + 32) = v17;
  sub_1DAF791EC(v0 + 16);
  if (v10)
  {
    v18 = (v0 + 496);
    v19 = *(v0 + 496);
    sub_1DB09CF24();

    v20 = sub_1DB09CF64();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      goto LABEL_10;
    }

    sub_1DAF783EC(*v18);
  }

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB09D4B4();
  __swift_project_value_buffer(v22, qword_1EE30A128);
  v23 = sub_1DB09D494();
  v24 = sub_1DB09DB64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 512);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v36 = v27;
    *v26 = 136315138;
    v28 = sub_1DAF6F064(v25);
    v30 = sub_1DB015E84(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DAF16000, v23, v24, "No URL override or config found for %s URL", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E1281810](v27, -1, -1);
    MEMORY[0x1E1281810](v26, -1, -1);
  }

  v31 = *(v0 + 488);
  sub_1DB09CF24();
  v20 = sub_1DB09CF64();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v31, 1, v20);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v18 = (v0 + 488);
LABEL_10:
  v33 = *v18;
  v34 = *(v0 + 464);

  (*(v21 + 32))(v34, v33, v20);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DAF79240(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF79260, v1, 0);
}

uint64_t sub_1DAF79260()
{
  v14 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  sub_1DAF40A84(v1 + 344, v0 + 16, &qword_1ECC0E7A0, &unk_1DB0A5140);
  if (*(v0 + 40))
  {
    sub_1DAF332B8((v0 + 16), *(v0 + 80));
LABEL_5:
    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 88);
  sub_1DAF40AEC(v0 + 16, &qword_1ECC0E7A0, &unk_1DB0A5140);
  v3 = *(v2 + 384);
  v4 = *(v0 + 88);
  if (v3 == 1)
  {
    v5 = *(v0 + 80);
    v13 = 0;

    CoreODILogger.fault(_:category:)(0xD00000000000001ALL, 0x80000001DB0C3DA0, &v13);

    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    goto LABEL_5;
  }

  v8 = sub_1DAF7A290();
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A0, &unk_1DB0A5140);
  *v9 = v0;
  v9[1] = sub_1DAF6D1A4;
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);

  return MEMORY[0x1EEE6DDE0](v11, v4, v8, 0x616E614D64697567, 0xEB00000000726567, sub_1DAF8C590, v12, v10);
}

uint64_t sub_1DAF79450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E718, &qword_1DB0A51E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 392);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 392) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DAF733A0(0, v8[2] + 1, 1, v8);
    *(a2 + 392) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DAF733A0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 392) = v8;
  return result;
}

uint64_t sub_1DAF79600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a4;
  *(v5 + 216) = a5;
  v6 = swift_task_alloc();
  *(v5 + 200) = v6;
  *v6 = v5;
  v6[1] = sub_1DAF796A8;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v5 + 16, (v5 + 216));
}

uint64_t sub_1DAF796A8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1DAF79884;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 192);
    v3 = sub_1DAF797C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF797C4()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 256);
  *(v0 + 120) = *(v1 + 272);
  *(v0 + 104) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 304);
  v5 = *(v1 + 320);
  *(v0 + 184) = *(v1 + 336);
  *(v0 + 168) = v5;
  *(v0 + 152) = v4;
  *(v0 + 136) = v3;
  v6 = *(v0 + 32);
  *(v1 + 256) = *(v0 + 16);
  v8 = *(v0 + 64);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  *(v1 + 336) = *(v0 + 96);
  *(v1 + 304) = v8;
  *(v1 + 320) = v7;
  *(v1 + 272) = v6;
  *(v1 + 288) = v9;
  sub_1DAF40AEC(v0 + 104, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF7998C();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAF798BC()
{
  sub_1DAF79BDC(5, *(v0 + 208));

  return MEMORY[0x1EEE6DFA0](sub_1DAF7992C, 0, 0);
}

uint64_t sub_1DAF7992C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF7998C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E718, &qword_1DB0A51E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-v4 - 8];
  v7 = *(v1 + 168);
  v6 = *(v1 + 176);
  v8 = *(v1 + 304);
  v25[2] = *(v1 + 288);
  v25[3] = v8;
  v25[4] = *(v1 + 320);
  v26 = *(v1 + 336);
  v9 = *(v1 + 272);
  v25[0] = *(v1 + 256);
  v25[1] = v9;
  v10 = type metadata accessor for ODNAssessmentGUIDManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = *(v1 + 304);
  *(v11 + 64) = *(v1 + 288);
  *(v11 + 80) = v12;
  *(v11 + 96) = *(v1 + 320);
  *(v11 + 112) = *(v1 + 336);
  v13 = *(v1 + 272);
  *(v11 + 32) = *(v1 + 256);
  *(v11 + 48) = v13;
  v24[3] = v10;
  v24[4] = &off_1F56CDE48;
  v24[0] = v11;
  swift_beginAccess();

  sub_1DAF40A84(v25, v23, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF8C520(v24, v1 + 344);
  swift_endAccess();
  *(v1 + 384) = 1;
  v14 = *(v1 + 392);
  v15 = *(v14 + 16);
  if (v15)
  {
    v18 = *(v3 + 16);
    v16 = v3 + 16;
    v17 = v18;
    v19 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    v22 = *(v1 + 392);

    do
    {
      v17(v5, v19, v2);
      sub_1DAF40A84(v1 + 344, v23, &qword_1ECC0E7A0, &unk_1DB0A5140);
      sub_1DB09D9B4();
      (*(v16 - 8))(v5, v2);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  *(v1 + 392) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAF79BDC(uint64_t result, void *a2)
{
  if (result != 5)
  {
    return result;
  }

  v3 = v2;
  v5 = *(v2 + 304);
  v46[2] = *(v2 + 288);
  v46[3] = v5;
  v46[4] = *(v2 + 320);
  v47 = *(v2 + 336);
  v6 = *(v2 + 272);
  v46[0] = *(v2 + 256);
  v46[1] = v6;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0;
  sub_1DAF40AEC(v46, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF7998C();
  v7 = *(v2 + 176);
  *&v44 = *(v2 + 168);
  *(&v44 + 1) = v7;
  LOBYTE(v43[0]) = 14;

  CoreODILogger.info(_:category:)(0xD000000000000072, 0x80000001DB0C3CC0, v43);

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v9 = a2;
  v10 = sub_1DB09CE64();
  v11 = [v10 domain];
  v12 = sub_1DB09D6C4();
  v14 = v13;

  if (v12 == 0x726F72724549444FLL && v14 == 0xE800000000000000)
  {

    goto LABEL_8;
  }

  v15 = sub_1DB09E254();

  if (v15)
  {
LABEL_8:
    ODIErrorCode.init(rawValue:)([v10 code]);
    v16 = v44;
    v17 = v44 ^ 0x80;
    v18 = [v10 userInfo];
    v19 = sub_1DB09D624();

    if (v16 == 211)
    {
      v20 = 12;
    }

    else
    {
      v20 = v17;
    }

    goto LABEL_12;
  }

  v21 = sub_1DB09D6C4();
  v23 = v22;
  v45 = sub_1DAF4D7A4();
  *&v44 = v10;
  sub_1DAF40D20(&v44, v43);
  v24 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v43, v21, v23, isUniquelyReferenced_nonNull_native);

  v19 = v8;
  v20 = 12;
LABEL_12:
  v42 = v20;
  if (*(v19 + 16) && (v26 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v27 & 1) != 0) && (sub_1DAF409DC(*(v19 + 56) + 32 * v26, &v44), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v28 = *&v43[0];
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1DAF72EC0(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1DAF72EC0((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[56 * v30];
  *(v31 + 4) = 0xD000000000000023;
  *(v31 + 5) = 0x80000001DB0C3D40;
  *(v31 + 6) = 0xD00000000000002DLL;
  *(v31 + 7) = 0x80000001DB0C3590;
  *(v31 + 8) = 0xD00000000000002ALL;
  *(v31 + 9) = 0x80000001DB0C3D70;
  *(v31 + 10) = 123;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v44 = v28;
  sub_1DAF40D20(&v44, v43);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v43, 0x636F766E4949444FLL, 0xEE00736E6F697461, v32);
  v33 = qword_1DB0A5290[v42];
  v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v35 = sub_1DB09D6B4();
  v36 = sub_1DB09D604();
  v37 = [v34 initWithDomain:v35 code:v33 userInfo:v36];

  v38 = *(v3 + 168);
  v39 = *(v3 + 176);
  *&v44 = v38;
  *(&v44 + 1) = v39;
  *&v43[0] = 0x203A726F727245;
  *(&v43[0] + 1) = 0xE700000000000000;
  swift_getErrorValue();

  v40 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v40);

  v41 = *&v43[0];
  LOBYTE(v43[0]) = 0;
  CoreODILogger.error(_:category:)(v41, *(&v43[0] + 1), v43);
}