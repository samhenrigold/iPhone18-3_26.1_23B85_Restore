void sub_185ADC850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_185B67D3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_185B67D5C();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (sub_185ADD4E4(v3, a1, a2))
    {
      v12 = sub_185ADB840(v3);
      v13 = sub_185ADB68C();
      v14 = sub_185ACB848(v13, v12);
      LODWORD(v12) = sub_185AC3A7C(a1, a2, v14);

      sub_185B2D07C(a1, a2, (v12 ^ 1) & 1);
      v15 = sub_185ADB840(v3);
      v16 = sub_185ADB68C();
      v17 = sub_185ACB848(v16, v15);
      sub_185B2CFD0(v17);

      v18 = sub_185ADB68C();
      sub_185B2D00C(v18);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1EA8D2278);
    v20 = v9;
    v21 = sub_185B67B6C();
    v22 = sub_185B6808C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v9;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_185AC1000, v21, v22, "could not set locked apps on external system state manager: %@", v23, 0xCu);
      sub_185ACF5CC(v24, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v24, -1, -1);
      MEMORY[0x1865FE2F0](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_185ADCD10()
{
  v4 = MEMORY[0x1E69E7CD0];

  sub_185B42208(v1, v0, &v4);

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = sub_185ADF804;
    *(inited + 40) = v0;
    *(inited + 48) = sub_185ADF844;
    *(inited + 56) = v0;
    swift_retain_n();
    sub_185B21D18(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_185ADCFB8()
{
  v1 = sub_185ADB840(v0);
  v2 = sub_185ADB68C();
  v3 = sub_185ACB848(v2, v1);
  *&v32[0] = MEMORY[0x1E69E7CD0];
  v4 = sub_185ADB840(v0);
  v5 = sub_185ADB68C();
  v29 = sub_185ACB848(v5, v4);
  v30 = v32;

  sub_185B4C96C(sub_185ADF860, v28);

  v27 = sub_185ACB848(*&v32[0], v3);
  if (qword_1EA8CB718 != -1)
  {
LABEL_16:
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_185AC1000, v7, v8, "clearing all preferences and accesses", v9, 2u);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  sub_185ACCE00(sub_185B4CAFC, 0);

  *v31 = 4;
  memset(&v31[8], 0, 56);
  sub_185B67C2C();
  v32[0] = *v31;
  v32[1] = *&v31[16];
  v32[2] = *&v31[32];
  v32[3] = *&v31[48];
  sub_185ADF798(v32);
  sub_185ADB9F4();
  v10 = 0;
  v11 = 1 << *(v27 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v27 + 56);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    while (1)
    {
      v15 = v10;
LABEL_12:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (*(v27 + 48) + ((v15 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      swift_bridgeObjectRetain_n();
      empty = xpc_dictionary_create_empty();
      v22 = sub_185B67ECC();
      xpc_dictionary_set_int64(empty, (v22 + 32), 2);

      v23 = sub_185B67ECC();
      v24 = sub_185B67ECC();
      xpc_dictionary_set_string(empty, (v23 + 32), (v24 + 32));

      v25 = sub_185B67ECC();
      xpc_dictionary_set_BOOL(empty, (v25 + 32), 0);

      sub_185B13EA8(empty, sub_185ADF868, v20);

      swift_unknownObjectRelease();
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v15 >= v14)
    {
    }

    v13 = *(v27 + 56 + 8 * v15);
    ++v10;
    if (v13)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }
}

uint64_t sub_185ADD488(uint64_t a1)
{
  v1 = sub_185ADB840(a1);
  v2 = sub_185ADB68C();
  v3 = sub_185ACB848(v2, v1);
  sub_185B2CFD0(v3);
}

uint64_t sub_185ADD4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *(a1 + 32);
  v5[3] = a2;
  v5[4] = a3;

  v3 = sub_185B4B524(sub_185ADF7E4, v5);

  return v3 & 1;
}

uint64_t sub_185ADD70C(char a1, uint64_t a2)
{
  v3 = sub_185B67C9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67CDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v16 = *(result + 24);
      aBlock[4] = sub_185ADF978;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_185ACA0E8;
      aBlock[3] = &block_descriptor_50;
      v15 = result;
      v14 = _Block_copy(aBlock);

      sub_185B67CBC();
      v17 = MEMORY[0x1E69E7CC0];
      sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
      sub_185B682CC();
      v12 = v14;
      MEMORY[0x1865FD170](0, v10, v6, v14);
      _Block_release(v12);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_185ADDA00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = sub_185B67C9C();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_185B67CDC();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      if ((a3 & 1) == 0)
      {

        v14 = sub_185B3C9E4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v16 = *(v14 + 2);
        v19 = *(v14 + 3);
        v17 = v16 + 1;
        if (v16 >= v19 >> 1)
        {
          v14 = sub_185B3C9E4((v19 > 1), v16 + 1, 1, v14);
        }

        v18 = 2;
        goto LABEL_21;
      }
    }

    else if ((a3 & 1) == 0)
    {

      v14 = sub_185B3C9E4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = *(v14 + 2);
      v21 = *(v14 + 3);
      v17 = v16 + 1;
      if (v16 >= v21 >> 1)
      {
        v14 = sub_185B3C9E4((v21 > 1), v16 + 1, 1, v14);
      }

      v18 = 3;
      goto LABEL_21;
    }
  }

  else if (a3 >> 6)
  {
    if ((a1 & 1) == 0)
    {
      v14 = sub_185B3C9E4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = *(v14 + 2);
      v20 = *(v14 + 3);
      v17 = v16 + 1;
      if (v16 >= v20 >> 1)
      {
        v14 = sub_185B3C9E4((v20 > 1), v16 + 1, 1, v14);
      }

      a2 = 0;
      v18 = 4;
      a1 = 2;
      goto LABEL_21;
    }
  }

  else if ((a1 & 1) == 0)
  {
    a1 = 1;
    v14 = sub_185B3C9E4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      a1 = 1;
      v14 = sub_185B3C9E4((v15 > 1), v16 + 1, 1, v14);
    }

    a2 = 0;
    v18 = 4;
LABEL_21:
    *(v14 + 2) = v17;
    v22 = &v14[24 * v16];
    *(v22 + 4) = a1;
    *(v22 + 5) = a2;
    v22[48] = v18;
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  *(v23 + 24) = v3;
  aBlock[4] = sub_185ADF9B4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_56;
  v24 = _Block_copy(aBlock);

  sub_185B67CBC();
  v29 = v13;
  sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v12, v9, v24);
  _Block_release(v24);
  (*(v28 + 8))(v9, v7);
  (*(v10 + 8))(v12, v27);
}

uint64_t sub_185ADDE9C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_185ADF6D8(v3, v4, v5);
      sub_185B67C2C();
      result = sub_185ADF6F0(v3, v4, v5);
      --v1;
    }

    while (v1);
  }

  return result;
}

char *sub_185ADDF20(uint64_t a1, void *a2, char *a3)
{
  v34 = a2;
  v5 = sub_185B67AFC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67C8C();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_185B680EC();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39[3] = type metadata accessor for APPersistentStore();
  v39[4] = &off_1EF46BDF0;
  v39[0] = a1;
  v28[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v28[0] = "v16@?0@NSError8";
  sub_185B67CBC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8090], v29);
  v14 = sub_185B6813C();
  *(a3 + 2) = v14;
  v15 = OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCD28, &unk_185B6BF30);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *&a3[v15] = v16;
  v17 = v30;
  *v30 = 30;
  (*(v31 + 104))(v17, *MEMORY[0x1E69E7F48], v32);
  type metadata accessor for SaturatingTimer(0);
  swift_allocObject();
  v18 = sub_185B2C334(v14, v17);
  v19 = v34;
  *(a3 + 3) = v18;
  *(a3 + 4) = v19;
  sub_185ADF8F0(v39, (a3 + 40));
  v20 = v19;
  v21 = v33;
  sub_185B226C4(v33);
  (*(v35 + 32))(&a3[OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_originUUID], v21, v36);
  v22 = *(a3 + 3);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_185ADF954;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_47;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);
  v26 = *(v22 + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state);
  v37 = v25;

  os_unfair_lock_lock((v26 + 28));
  sub_185ADF95C((v26 + 16));
  os_unfair_lock_unlock((v26 + 28));
  _Block_release(v24);
  _Block_release(v25);

  swift_getObjectType();

  sub_185B681EC();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);

  return a3;
}

uint64_t *sub_185ADE4DC(uint64_t a1)
{
  v7[3] = &type metadata for DefaultClientAuthorizer;
  v7[4] = &off_1EF46ADC0;
  v6[3] = &type metadata for DefaultServiceInstantiator;
  v6[4] = &off_1EF4667A0;
  v5[3] = &type metadata for DefaultFirstRunWorkManager;
  v5[4] = &off_1EF466790;
  type metadata accessor for APServer();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for DefaultClientAuthorizer);
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for DefaultServiceInstantiator);
  __swift_mutable_project_boxed_opaque_existential_1(v5, &type metadata for DefaultFirstRunWorkManager);
  v3 = sub_185ADE5B4(a1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v3;
}

uint64_t *sub_185ADE5B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC40, qword_185B6BBD8);
  v19[4] = &off_1EF46B078;
  v19[0] = a1;
  v18[3] = &type metadata for DefaultClientAuthorizer;
  v18[4] = &off_1EF46ADC0;
  v17[3] = &type metadata for DefaultServiceInstantiator;
  v17[4] = &off_1EF4667A0;
  v16[3] = &type metadata for DefaultFirstRunWorkManager;
  v16[4] = &off_1EF466790;
  sub_185ADF8F0(v19, (a2 + 2));
  sub_185ADF8F0((a2 + 2), v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v6 + 8))(v12, v5, v6);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  a2[12] = sub_185B67C7C();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  __swift_project_boxed_opaque_existential_1(v18, &type metadata for DefaultClientAuthorizer);
  __swift_project_boxed_opaque_existential_1(v17, &type metadata for DefaultServiceInstantiator);
  a2[13] = sub_185ADE82C(a1, v4);
  sub_185ADF8F0(v16, (a2 + 7));
  if (qword_1EA8CB750 != -1)
  {
    swift_once();
  }

  v7 = qword_1EA8CB818;
  v8 = qword_1EA8CB760;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(off_1EA8CB820 + 2);
  type metadata accessor for LanguageChangeManager();
  swift_allocObject();
  v10 = sub_185B2D748(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  a2[14] = v10;
  return a2;
}

uint64_t sub_185ADE82C(uint64_t a1, uint64_t a2)
{
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC40, qword_185B6BBD8);
  v10[4] = &off_1EF46B078;
  v10[0] = a1;
  v9[3] = &type metadata for DefaultClientAuthorizer;
  v9[4] = &off_1EF46ADC0;
  v8[3] = &type metadata for DefaultServiceInstantiator;
  v8[4] = &off_1EF4667A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCC0, &qword_185B6BEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB80;
  *(inited + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCC8, &qword_185B6BEC8);
  *(inited + 40) = &off_1EF466448;
  *(inited + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCD0, &qword_185B6BED0);
  *(inited + 56) = &off_1EF466448;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCD8, &qword_185B6BED8);
  *(inited + 72) = &off_1EF466448;
  *(inited + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCE0, &qword_185B6BEE0);
  *(inited + 88) = &off_1EF466448;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCE8, &qword_185B6BEE8);
  *(inited + 104) = &off_1EF466448;
  *(inited + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCF0, &qword_185B6BEF0);
  *(inited + 120) = &off_1EF466448;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCCF8, &qword_185B6BEF8);
  *(inited + 136) = &off_1EF466448;
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCD00, &qword_185B6BF00);
  *(inited + 152) = &off_1EF466448;
  v7[2] = v8;
  v7[3] = v10;
  v7[4] = v9;
  v7[5] = a2;

  v5 = sub_185ADA5C4(sub_185ADF620, v7, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v5;
}

uint64_t sub_185ADEA10(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185ADDA00(v2, v3, v4);
  }

  return result;
}

uint64_t sub_185ADEA88(int *a1)
{
  v1 = *a1;
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
    _os_log_impl(&dword_185AC1000, v3, v4, "Store changed, posting general change notification", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  if (qword_1ED6F48D8 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67ECC();
  notify_post((v6 + 32));

  if (v1)
  {
    v8 = sub_185B67B6C();
    v9 = sub_185B680AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_185AC1000, v8, v9, "Store changed hidden app preferences, posting notification", v10, 2u);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }

    if (qword_1EA8CB740 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67ECC();
    notify_post((v11 + 32));
  }

  if ((v1 & 2) != 0)
  {
    v12 = sub_185B67B6C();
    v13 = sub_185B680AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_185AC1000, v12, v13, "Store changed locked app preferences, posting notification", v14, 2u);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }

    if (qword_1EA8CB738 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67ECC();
    notify_post((v15 + 32));
  }

  return result;
}

char *sub_185ADED68(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v32 = a1;
  v33 = a2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v11 = &v32 - v10;
  v14 = *((v13 & v12) + 0x80);
  v15 = *((v13 & v12) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ConnectionClientPair(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getWitnessTable();
  *&v4[v14] = sub_185B67D6C();
  sub_185ADF8F0(a3, v38);
  (*(v15 + 48))(v38, v8, v15);
  (*(v9 + 32))(&v5[*((*v7 & *v5) + 0x60)], v11, v8);
  v20 = v32;
  v19 = v33;
  *&v5[*((*v7 & *v5) + 0x68)] = v32;
  *&v5[*((*v7 & *v5) + 0x70)] = v19;
  v21 = v7;
  v22 = &v5[*((*v7 & *v5) + 0x78)];
  v23 = v36;
  sub_185ADF8F0(v36, v22);
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = v20;
  v25 = v19;
  v26 = objc_msgSendSuper2(&v37, sel_init);
  v27 = *((*v21 & *v26) + 0x70);
  v28 = *(v26 + v27);
  v29 = v26;
  [v28 setDelegate_];
  v30 = MEMORY[0x1E69E7D40];
  [*(v26 + v27) _setQueue_];
  (*(v9 + 16))(v11, &v29[*((*v30 & *v29) + 0x60)], v8);
  (*(v15 + 32))(v25, v8, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  (*(v9 + 8))(v11, v8);
  return v29;
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

uint64_t sub_185ADF250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC38, &qword_185B6BBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185ADF304(uint64_t a1)
{
  result = swift_checkMetadataState();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_185ADF44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_185ADF4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_185ADF51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_185ADF590(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_185ADF5D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_185ADF6D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_185ADF6F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_185ADF804()
{
  v0 = sub_185ADB68C();
  sub_185B2D00C(v0);
}

uint64_t sub_185ADF8F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_185ADF9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_185ADFA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_185ADFAF0()
{
  result = qword_1EA8CCD38;
  if (!qword_1EA8CCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCD38);
  }

  return result;
}

unint64_t sub_185ADFB48()
{
  result = qword_1EA8CCD40;
  if (!qword_1EA8CCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCD40);
  }

  return result;
}

unint64_t sub_185ADFBA0()
{
  result = qword_1EA8CCD48;
  if (!qword_1EA8CCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCD48);
  }

  return result;
}

unint64_t sub_185ADFBF8()
{
  result = qword_1EA8CCD50;
  if (!qword_1EA8CCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCD50);
  }

  return result;
}

id sub_185ADFC8C()
{
  result = [objc_allocWithZone(type metadata accessor for APChangeEventManager()) init];
  qword_1EA8D2308 = result;
  return result;
}

id sub_185ADFD20()
{
  v1 = v0;
  v23 = sub_185B680EC();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = &v0[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventsPublisher];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v19 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
  *&v0[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent] = MEMORY[0x1E69E7CC8];
  v22 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventQueue;
  v21 = sub_185AC7294();
  v20 = "_xpc_object>20";
  sub_185B67CBC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v23);
  *&v0[v22] = sub_185B6813C();
  *&v0[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventSubscription] = 0;
  result = xpc_event_publisher_create();
  if (result)
  {
    *&v0[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventsXPCPublisher] = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD88, &qword_185B6C2A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6C210;
    *(inited + 32) = sub_185B67E4C();
    v10 = MEMORY[0x1E69E7CD0];
    *(inited + 40) = v11;
    *(inited + 48) = v10;
    *(inited + 56) = sub_185B67E4C();
    *(inited + 64) = v12;
    *(inited + 72) = v10;
    *(inited + 80) = sub_185B67E4C();
    *(inited + 88) = v13;
    *(inited + 96) = v10;
    *(inited + 104) = sub_185B67E4C();
    *(inited + 112) = v14;
    *(inited + 120) = v10;
    v15 = sub_185B52E78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD90, &unk_185B6C2B0);
    swift_arrayDestroy();
    v16 = v19;
    swift_beginAccess();
    *&v1[v16] = v15;

    v17 = type metadata accessor for APChangeEventManager();
    v24.receiver = v1;
    v24.super_class = v17;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185AE014C()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_185AE20C8;
  v13 = v2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v11 = sub_185AE0424;
  *(&v11 + 1) = &block_descriptor_1;
  v3 = _Block_copy(&aBlock);

  xpc_event_publisher_set_handler();
  _Block_release(v3);
  v12 = sub_185AE04A4;
  v13 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v11 = sub_185ACEA8C;
  *(&v11 + 1) = &block_descriptor_16;
  v4 = _Block_copy(&aBlock);
  xpc_event_publisher_set_error_handler();
  _Block_release(v4);
  xpc_event_publisher_activate();
  v5 = v0 + OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventsPublisher;
  swift_beginAccess();
  if (!*(v5 + 24))
  {
    v7 = *(v5 + 16);
    aBlock = *v5;
    v11 = v7;
    v12 = *(v5 + 32);
    if (*(&v7 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  sub_185ADF8F0(v5, &aBlock);
  if (!*(&v11 + 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_185ADF8F0(&aBlock, v9);
  if (*(&v11 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_185B67C7C();

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
LABEL_8:
  *(v1 + OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventSubscription) = v6;
}

void sub_185AE03AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_185AE09B8(v6, a2, a3);
  }
}

uint64_t sub_185AE0424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_185AE04A4(int a1)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  oslog = sub_185B67B6C();
  v3 = sub_185B6808C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_185AC1000, oslog, v3, "event publisher error: %d", v4, 8u);
    MEMORY[0x1865FE2F0](v4, -1, -1);
  }
}

char *sub_185AE05A4(__int128 *a1, uint64_t a2)
{
  v3 = sub_185B67C9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67CDC();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v29 = *a1;
  v30 = v12;
  v13 = a1[3];
  v31 = a1[2];
  v32 = v13;
  if ((v29 & 3) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = result;
      v26 = v4;
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v25 = v8;
      v15 = sub_185B67B8C();
      __swift_project_value_buffer(v15, qword_1EA8D2278);
      v16 = sub_185B67B6C();
      v17 = sub_185B680AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_185AC1000, v16, v17, "Store changed app preferences, posting notification", v18, 2u);
        MEMORY[0x1865FE2F0](v18, -1, -1);
      }

      v24 = *&v14[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventQueue];
      v19 = swift_allocObject();
      v20 = v30;
      *(v19 + 24) = v29;
      *(v19 + 40) = v20;
      v21 = v32;
      *(v19 + 56) = v31;
      *(v19 + 16) = v14;
      *(v19 + 72) = v21;
      aBlock[4] = sub_185AE20D8;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_185ACA0E8;
      aBlock[3] = &block_descriptor_23;
      v22 = _Block_copy(aBlock);
      v23 = v14;
      sub_185AE2110(&v29, v27);
      sub_185B67CBC();
      v27[0] = MEMORY[0x1E69E7CC0];
      sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v11, v6, v22);
      _Block_release(v22);
      (*(v26 + 8))(v6, v3);
      (*(v25 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_185AE09B8(int a1, uint64_t a2, void *a3)
{
  if (a1 == 2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v42 = sub_185B67B8C();
    __swift_project_value_buffer(v42, qword_1EA8D2278);
    v43 = sub_185B67B6C();
    v44 = sub_185B680AC();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_33;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "initial barrier on event stream.";
    v47 = v44;
    v48 = v43;
    v49 = v45;
    v50 = 2;
    goto LABEL_32;
  }

  v5 = v3;
  if (a1 == 1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v14 = sub_185B67B8C();
    __swift_project_value_buffer(v14, qword_1EA8D2278);
    v15 = sub_185B67B6C();
    v16 = sub_185B680AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a2;
      _os_log_impl(&dword_185AC1000, v15, v16, "removing subscriber with token %llu.", v17, 0xCu);
      MEMORY[0x1865FE2F0](v17, -1, -1);
    }

    v18 = sub_185B67E4C();
    v20 = v19;
    v21 = sub_185ADFCBC(v105);
    v22 = sub_185AE1528(v104, v18, v20);
    if (*v23)
    {
      sub_185B3D3E0(a2);
    }

    (v22)(v104, 0);

    (v21)(v105, 0);
    v24 = sub_185B67E4C();
    v26 = v25;
    v27 = sub_185ADFCBC(v105);
    v28 = sub_185AE1528(v104, v24, v26);
    if (*v29)
    {
      sub_185B3D3E0(a2);
    }

    (v28)(v104, 0);

    (v27)(v105, 0);
    v30 = sub_185B67E4C();
    v32 = v31;
    v33 = sub_185ADFCBC(v105);
    v34 = sub_185AE1528(v104, v30, v32);
    if (*v35)
    {
      sub_185B3D3E0(a2);
    }

    (v34)(v104, 0);

    (v33)(v105, 0);
    v36 = sub_185B67E4C();
    v38 = v37;
    v39 = sub_185ADFCBC(v105);
    v40 = sub_185AE1528(v104, v36, v38);
    if (*v41)
    {
      sub_185B3D3E0(a2);
    }

    (v40)(v104, 0);

    (v39)(v105, 0);
    goto LABEL_34;
  }

  if (a1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v52 = sub_185B67B8C();
    __swift_project_value_buffer(v52, qword_1EA8D2278);
    v43 = sub_185B67B6C();
    v53 = sub_185B6809C();
    if (!os_log_type_enabled(v43, v53))
    {
      goto LABEL_33;
    }

    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = a1;
    v46 = "unknown action %u";
    v47 = v53;
    v48 = v43;
    v49 = v45;
    v50 = 8;
LABEL_32:
    _os_log_impl(&dword_185AC1000, v48, v47, v46, v49, v50);
    MEMORY[0x1865FE2F0](v45, -1, -1);
LABEL_33:

    goto LABEL_34;
  }

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
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_185AC1000, v9, v10, "adding subscriber with token %llu.", v11, 0xCu);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  if (!a3)
  {
    goto LABEL_34;
  }

  v12 = swift_unknownObjectRetain();
  v13 = MEMORY[0x1865FE700](v12);
  if (v13 != sub_185B67BFC())
  {
    swift_unknownObjectRelease();
LABEL_34:
    v54 = 0;
    return sub_185AE20B8(v54, 0);
  }

  v56 = xpc_dictionary_get_BOOL(a3, "unhiddenEvent");
  LODWORD(v57) = xpc_dictionary_get_BOOL(a3, "hiddenEvent");
  v58 = xpc_dictionary_get_BOOL(a3, "unlockedEvent");
  v102 = xpc_dictionary_get_BOOL(a3, "lockedEvent");
  swift_unknownObjectRelease();
  LODWORD(v103) = v58;
  if (!v56)
  {
    v62 = 0;
    if (!v57)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  v59 = sub_185B67E4C();
  v61 = v60;
  v62 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = *(v62 + v5);
  v64 = v104[0];
  *(v62 + v5) = 0x8000000000000000;
  sub_185AC9F40(v59, v61);
  v66 = v64[2];
  v67 = (v65 & 1) == 0;
  v68 = v66 + v67;
  if (__OFADD__(v66, v67))
  {
    __break(1u);
    goto LABEL_81;
  }

  v4 = v65;
  if (v64[3] < v68)
  {
    sub_185B4F36C(v68, isUniquelyReferenced_nonNull_native);
    sub_185AC9F40(v59, v61);
    if ((v4 & 1) == (v69 & 1))
    {
      goto LABEL_47;
    }

LABEL_85:
    result = sub_185B685DC();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
LABEL_47:
    v58 = v103;
    *(v62 + v5) = v104[0];
    if (v4)
    {
    }

    else
    {
      sub_185B5470C();
    }

    sub_185B4DC64(v104, a2);
    swift_endAccess();
    v62 = sub_185AE21BC;
    if (v57)
    {
LABEL_42:
      v70 = sub_185B67E4C();
      v57 = v71;
      v72 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
      swift_beginAccess();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v104[0] = *(v5 + v72);
      v74 = v104[0];
      *(v5 + v72) = 0x8000000000000000;
      sub_185AC9F40(v70, v57);
      v76 = v74[2];
      v77 = (v75 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v4 = v75;
      if (v74[3] >= v78)
      {
        if ((v73 & 1) == 0)
        {
          sub_185B50F5C();
        }
      }

      else
      {
        sub_185B4F36C(v78, v73);
        sub_185AC9F40(v70, v57);
        if ((v4 & 1) != (v79 & 1))
        {
          goto LABEL_85;
        }
      }

      *(v5 + v72) = v104[0];
      if (v4)
      {
      }

      else
      {
        sub_185B5470C();
      }

      sub_185B4DC64(v104, a2);
      swift_endAccess();
      v57 = sub_185AE21BC;
      v101 = v62;
      if (!v103)
      {
LABEL_62:
        v62 = 0;
        if (!v102)
        {
          goto LABEL_73;
        }

        goto LABEL_63;
      }
    }

    else
    {
LABEL_51:
      v57 = 0;
      v101 = v62;
      if (!v58)
      {
        goto LABEL_62;
      }
    }

    v80 = sub_185B67E4C();
    v62 = v81;
    v82 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
    swift_beginAccess();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = *(v5 + v82);
    v84 = v104[0];
    *(v5 + v82) = 0x8000000000000000;
    sub_185AC9F40(v80, v62);
    v86 = v84[2];
    v87 = (v85 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_82;
    }

    v4 = v85;
    if (v84[3] >= v88)
    {
      if ((v83 & 1) == 0)
      {
        sub_185B50F5C();
      }
    }

    else
    {
      sub_185B4F36C(v88, v83);
      sub_185AC9F40(v80, v62);
      if ((v4 & 1) != (v89 & 1))
      {
        goto LABEL_85;
      }
    }

    *(v5 + v82) = v104[0];
    if (v4)
    {
    }

    else
    {
      sub_185B5470C();
    }

    sub_185B4DC64(v104, a2);
    swift_endAccess();
    v62 = sub_185AE21BC;
    if (!v102)
    {
LABEL_73:
      sub_185AE20B8(v101, 0);
      sub_185AE20B8(v57, 0);
      sub_185AE20B8(v62, 0);
      goto LABEL_34;
    }

LABEL_63:
    v103 = v57;
    v90 = sub_185B67E4C();
    v92 = v91;
    v57 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
    swift_beginAccess();
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = *(v57 + v5);
    v94 = v104[0];
    *(v57 + v5) = 0x8000000000000000;
    sub_185AC9F40(v90, v92);
    v96 = v94[2];
    v97 = (v95 & 1) == 0;
    v98 = v96 + v97;
    if (!__OFADD__(v96, v97))
    {
      break;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    sub_185B50F5C();
  }

  v99 = v95;
  if (v94[3] >= v98)
  {
    if ((v93 & 1) == 0)
    {
      sub_185B50F5C();
    }
  }

  else
  {
    sub_185B4F36C(v98, v93);
    sub_185AC9F40(v90, v92);
    if ((v99 & 1) != (v100 & 1))
    {
      goto LABEL_85;
    }
  }

  *(v57 + v5) = v104[0];
  if (v99)
  {
  }

  else
  {
    sub_185B5470C();
  }

  sub_185B4DC64(v104, a2);
  swift_endAccess();
  sub_185AE20B8(v101, 0);
  sub_185AE20B8(v103, 0);
  sub_185AE20B8(v62, 0);
  v54 = sub_185AE21BC;
  return sub_185AE20B8(v54, 0);
}

uint64_t (*sub_185AE1528(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_185AE1B28(v6, a2, a3);
  return sub_185AE15B0;
}

void sub_185AE15B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_185AE15FC(uint64_t a1, void *a2)
{
  v3 = v2;
  empty = xpc_dictionary_create_empty();
  v7 = a2[3];
  sub_185AE1E74(v7);
  xpc_dictionary_set_value(empty, "unhiddenPayload", v8);
  swift_unknownObjectRelease();
  v9 = a2[2];
  sub_185AE1E74(v9);
  xpc_dictionary_set_value(empty, "hiddenPayload", v10);
  swift_unknownObjectRelease();
  v11 = a2[5];
  sub_185AE1E74(v11);
  xpc_dictionary_set_value(empty, "unlockedPayload", v12);
  swift_unknownObjectRelease();
  v13 = a2[4];
  sub_185AE1E74(v13);
  xpc_dictionary_set_value(empty, "lockedPayload", v14);
  swift_unknownObjectRelease();
  if (v7 && *(v7 + 16))
  {
    v15 = sub_185B67E4C();
    v17 = v16;
    v18 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
    swift_beginAccess();
    v19 = *(v3 + v18);
    if (*(v19 + 16) && (, v20 = sub_185AC9F40(v15, v17), v22 = v21, , (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 8 * v20);
    }

    else
    {

      v23 = 0;
    }

    sub_185AE1FAC(v23, a1, empty);
  }

  if (v9 && *(v9 + 16))
  {
    v24 = sub_185B67E4C();
    v26 = v25;
    v27 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
    swift_beginAccess();
    v28 = *(v3 + v27);
    if (*(v28 + 16) && (, v29 = sub_185AC9F40(v24, v26), v31 = v30, , (v31 & 1) != 0))
    {
      v32 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {

      v32 = 0;
    }

    sub_185AE1FAC(v32, a1, empty);
  }

  if (v11 && *(v11 + 16))
  {
    v33 = sub_185B67E4C();
    v35 = v34;
    v36 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
    swift_beginAccess();
    v37 = *(v3 + v36);
    if (*(v37 + 16) && (, v38 = sub_185AC9F40(v33, v35), v40 = v39, , (v40 & 1) != 0))
    {
      v41 = *(*(v37 + 56) + 8 * v38);
    }

    else
    {

      v41 = 0;
    }

    sub_185AE1FAC(v41, a1, empty);
  }

  if (!v13 || !*(v13 + 16))
  {
    return swift_unknownObjectRelease();
  }

  v42 = sub_185B67E4C();
  v44 = v43;
  v45 = OBJC_IVAR____TtC13AppProtection20APChangeEventManager_subscriberTokensForEvent;
  swift_beginAccess();
  v46 = *(v3 + v45);
  if (*(v46 + 16) && (, v47 = sub_185AC9F40(v42, v44), v49 = v48, , (v49 & 1) != 0))
  {
    v50 = *(*(v46 + 56) + 8 * v47);
  }

  else
  {

    v50 = 0;
  }

  sub_185AE1FAC(v50, a1, empty);
  swift_unknownObjectRelease();
}

id sub_185AE1A28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for APChangeEventManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_185AE1B28(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_185AE1E40(v7);
  v7[9] = sub_185AE1C34(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_185AE1BD4;
}

void sub_185AE1BD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_185AE1C34(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_185AC9F40(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_185B50F5C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_185B4F36C(v18, a4 & 1);
    v13 = sub_185AC9F40(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_185B685DC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_185AE1D8C;
}

void sub_185AE1D8C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[5])
    {
      *(*(*v1[3] + 56) + 8 * v1[4]) = v2;
    }

    else
    {
      sub_185B5470C();
    }
  }

  else if ((*a1)[5])
  {
    v3 = v1[4];
    v4 = *v1[3];
    sub_185ADF744(*(v4 + 48) + 16 * v3);
    sub_185B3D818(v3, v4);
  }

  free(v1);
}

uint64_t (*sub_185AE1E40(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_185AE1E68;
}

void sub_185AE1E74(uint64_t a1)
{
  empty = xpc_array_create_empty();
  if (a1)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
LABEL_10:
      v5 &= v5 - 1;

      v9 = sub_185B67E1C();

      v10 = [v9 UTF8String];
      v11 = v9;
      if (v10)
      {
        v12 = sub_185B67BDC();
        xpc_array_set_string(empty, v12, v10);
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_185AE1FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        do
        {
LABEL_10:
          v6 &= v6 - 1;
          xpc_event_publisher_fire();
        }

        while (v6);
        continue;
      }
    }
  }
}

uint64_t sub_185AE20B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_185AE216C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DataAccessRecord(uint64_t a1)
{
  result = qword_1EA8CBC28;
  if (!qword_1EA8CBC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_185AE223C(uint64_t a1)
{
  type metadata accessor for audit_token_t(319);
  if (v1 <= 0x3F)
  {
    sub_185AE22E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_185AE22E0(uint64_t a1)
{
  if (!qword_1EA8CC080)
  {
    sub_185B67AFC();
    v1 = sub_185B6829C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA8CC080);
    }
  }
}

uint64_t sub_185AE2338()
{
  v1 = *v0;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v1);
  return sub_185B686AC();
}

uint64_t sub_185AE2380(uint64_t a1)
{
  v2 = *v1;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v2);
  return sub_185B686AC();
}

uint64_t sub_185AE23C4()
{
  v1 = 0x726F737365636361;
  v2 = *v0;
  v3 = 0x6B6F547469647561;
  if (v2 != 3)
  {
    v3 = 1684632949;
  }

  if (v2 == 2)
  {
    v3 = 0x726F737365636361;
  }

  if (*v0)
  {
    v1 = 0x6565737365636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_185AE245C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_185AE3350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_185AE249C(uint64_t a1)
{
  v2 = sub_185AE2F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185AE24D8(uint64_t a1)
{
  v2 = sub_185AE2F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_185AE2514@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v34);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD98, &qword_185B6C338);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v8 = type metadata accessor for DataAccessRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185AE2F20();
  v11 = v36;
  sub_185B686EC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = v8;
  v36 = v4;
  v12 = v35;
  LOBYTE(v38) = 0;
  v13 = v7;
  *v10 = sub_185B6849C();
  *(v10 + 1) = v15;
  v31[1] = v15;
  LOBYTE(v38) = 1;
  v16 = 0;
  v17 = a1;
  *(v10 + 2) = sub_185B6849C();
  *(v10 + 3) = v18;
  LOBYTE(v38) = 2;
  v19 = sub_185B684CC();
  v20 = v12;
  if (v19 >= 3u)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
    swift_willThrow();
    goto LABEL_10;
  }

  v10[32] = v19;
  v37 = 3;
  sub_185AE2F74();
  result = sub_185B684BC();
  v31[0] = 0;
  v21 = v13;
  v22 = *(&v38 + 1);
  v23 = v38;
  v24 = *(&v38 + 1) >> 62;
  if ((*(&v38 + 1) >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE14(v38);
      v26 = v36;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v26 = v36;
  if (v24 == 2)
  {
    v28 = *(v38 + 16);
    v27 = *(v38 + 24);
    v29 = __OFSUB__(v27, v28);
    v25 = v27 - v28;
    if (!v29)
    {
LABEL_18:
      if (v25 == 32)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = v22;
        sub_185AE2A74(&v38, 1, 0, 0, 1, v23, v22);
        v30 = v39;
        *(v10 + 36) = v38;
        *(v10 + 52) = v30;
        v37 = 4;
        sub_185AE36C8(&qword_1EA8CCDB0, &qword_1EA8CBFD8, MEMORY[0x1E69695D0], MEMORY[0x1E69E7C88]);
        sub_185B684BC();
        (*(v20 + 8))(v21, v5);
        sub_185AE2FC8(v23, v36);
        sub_185AE301C(v26, &v10[*(v32 + 32)]);
        sub_185AE308C(v10, v33);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        return sub_185AE30F0(v10);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_16:
    LODWORD(v25) = HIDWORD(v23) - v23;
    v26 = v36;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      __break(1u);
      return result;
    }

    v25 = v25;
    goto LABEL_18;
  }

LABEL_20:
  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
  swift_willThrow();
  sub_185AE2FC8(v23, v22);
  v13 = v21;
  v16 = v31[0];
LABEL_10:
  (*(v20 + 8))(v13, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  if (!v16)
  {
  }

  return result;
}

uint64_t sub_185AE2A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      if ((a2 - 0x400000000000000) >> 59 != 31)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      LODWORD(v7) = 32 * a2;
      if (v8 >= 32 * a2)
      {
        v8 = 32 * a2;
      }

      v12 = a3 + v8;
      if (__OFADD__(a3, v8))
      {
        goto LABEL_43;
      }

      if (v12 >= a3)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_23;
    }

    return 0;
  }

  if (v7)
  {
    if (v7 == 2)
    {
      a3 = *(a6 + 16);
    }

    else
    {
      a3 = a6;
    }

    goto LABEL_25;
  }

LABEL_23:
  a3 = v7;
LABEL_25:
  if ((a2 - 0x400000000000000) >> 59 != 31)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v8 >= 32 * a2)
  {
    v8 = 32 * a2;
  }

  v12 = a3 + v8;
  if (__OFADD__(a3, v8))
  {
    goto LABEL_39;
  }

  if (v12 < a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_30:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v13 = a3;
  sub_185B67A3C();
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_185AE2BD8(void *a1)
{
  v3 = v1;
  v16 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCDB8, &qword_185B6C340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185AE2F20();
  sub_185B686FC();
  LOBYTE(v15[0]) = 0;
  sub_185B684EC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15[0]) = 1;
  sub_185B684EC();
  v14[15] = 2;
  sub_185B6852C();
  v9 = *(v3 + 52);
  v15[0] = *(v3 + 36);
  v15[1] = v9;
  v10 = sub_185AE35C4(v15, 0x20uLL);
  v12 = v11;
  *&v15[0] = v10;
  *(&v15[0] + 1) = v11;
  v14[14] = 3;
  sub_185AE3674();
  sub_185B6851C();
  type metadata accessor for DataAccessRecord(0);
  LOBYTE(v15[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  sub_185AE36C8(&qword_1EA8CCDC8, &unk_1EA8CBFE0, MEMORY[0x1E69695B0], MEMORY[0x1E69E7C70]);
  sub_185B6851C();
  (*(v6 + 8))(v8, v5);
  return sub_185AE2FC8(v10, v12);
}

unint64_t sub_185AE2F20()
{
  result = qword_1EA8CCDA0;
  if (!qword_1EA8CCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDA0);
  }

  return result;
}

unint64_t sub_185AE2F74()
{
  result = qword_1EA8CCDA8;
  if (!qword_1EA8CCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDA8);
  }

  return result;
}

uint64_t sub_185AE2FC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_185AE301C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_185AE308C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAccessRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185AE30F0(uint64_t a1)
{
  v2 = type metadata accessor for DataAccessRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_185AE314C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = [a1 accessor_bundle_id];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_185B67E4C();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  v12 = [a1 accessed_bundle_id];
  if (!v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_185B67E4C();
  v16 = v15;

  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  v17 = [a1 raw_accessor_type];
  v18 = 2 * (v17 == 2);
  if (v17 == 1)
  {
    v18 = 1;
  }

  *(a2 + 32) = v18;
  sub_185B4A34C(v26);
  if (v27)
  {
    goto LABEL_12;
  }

  v19 = v26[1];
  *(a2 + 36) = v26[0];
  *(a2 + 52) = v19;
  v20 = [a1 transaction_uuid];
  if (v20)
  {
    v21 = v20;
    sub_185B67ADC();

    v22 = sub_185B67AFC();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  }

  else
  {

    v23 = sub_185B67AFC();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  v24 = type metadata accessor for DataAccessRecord(0);
  sub_185AE301C(v6, a2 + *(v24 + 32));
}

uint64_t sub_185AE3350(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F737365636361 && a2 == 0xE800000000000000;
  if (v3 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6565737365636361 && a2 == 0xE800000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEC00000065707954 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6F547469647561 && a2 == 0xEE00617461446E65 || (sub_185B6859C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_185B6859C();

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

uint64_t sub_185AE350C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_185AE35C4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_185AE350C(a1, &a1[a2]);
  }

  sub_185B6786C();
  swift_allocObject();
  sub_185B6782C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_185B67A2C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_185AE3674()
{
  result = qword_1EA8CCDC0;
  if (!qword_1EA8CCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDC0);
  }

  return result;
}

uint64_t sub_185AE36C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185ACA328(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataAccessRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataAccessRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_185AE38B0()
{
  result = qword_1EA8CCDD0;
  if (!qword_1EA8CCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDD0);
  }

  return result;
}

unint64_t sub_185AE3908()
{
  result = qword_1EA8CCDD8;
  if (!qword_1EA8CCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDD8);
  }

  return result;
}

unint64_t sub_185AE3960()
{
  result = qword_1EA8CCDE0;
  if (!qword_1EA8CCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDE0);
  }

  return result;
}

id sub_185AE39B4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  if (v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v5)
    {

      v34 = objc_allocWithZone(APPerAppManagedProtectability);
      sub_185AE3C58();
      v35 = sub_185B67D7C();

      v36 = [v34 initWithPerAppProtectability_];

      return v36;
    }

    v4 = *(v1 + 8 * v11);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v12 = __clz(__rbit64(v4)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(a1 + 56) + 2 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = objc_allocWithZone(APManagedAppProtectability);

    v20 = [v19 initLockable:v17 hideable:v18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_185AC9F40(v15, v14);
    v24 = v7[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v7[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v22;
        sub_185B50F70();
        v22 = v33;
      }
    }

    else
    {
      sub_185B4F380(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_185AC9F40(v15, v14);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v28)
    {
      v8 = v22;

      v9 = v7[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v20;

      v6 = v11;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v7[6] + 16 * v22);
      *v30 = v15;
      v30[1] = v14;
      *(v7[7] + 8 * v22) = v20;
      v31 = v7[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v7[2] = v32;
      v6 = v11;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v6;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_185B685DC();
  __break(1u);
  return result;
}

unint64_t sub_185AE3C58()
{
  result = qword_1EA8CB630;
  if (!qword_1EA8CB630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CB630);
  }

  return result;
}

uint64_t sub_185AE3DE4()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 32));
  sub_185AE7BA4((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

void *sub_185AE3E6C(uint64_t *a1)
{
  v2 = sub_185B67AFC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v9 = &v26 - v8;
  v28 = a1;
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v29 = (v7 + 8);
    v30 = (v7 + 32);
    v27 = v11;
    while (v12 < *(v10 + 16))
    {
      sub_185AE7A7C(v13, v31);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = v32;
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(ObjectType, v14);
        swift_unknownObjectRelease();
        (*v30)(v9, v5, v2);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v16 = swift_conformsToProtocol2();
          if (v16)
          {
            v17 = v16;
            result = v28[1];
            if (!result)
            {
              goto LABEL_14;
            }

            v18 = v10;
            v19 = v5;
            v20 = v2;
            v21 = [result remoteObjectProxy];
            sub_185B682AC();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE58, &qword_185B6C590);
            swift_dynamicCast();
            v22 = v33;
            v23 = swift_getObjectType();
            v24 = (*(v17 + 16))(v23, v17);
            sub_185AE7028(v22, v24, v25, v9);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v2 = v20;
            v5 = v19;
            v10 = v18;
            v11 = v27;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        (*v29)(v9, v2);
      }

      ++v12;
      result = sub_185AE7AD8(v31);
      v13 += 16;
      if (v11 == v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

id sub_185AE414C(uint64_t a1)
{
  v2 = v1;
  v4 = APGetViewSubjectMonitorServiceName();
  v5 = v4;
  if (!v4)
  {
    sub_185B67E4C();
    v5 = sub_185B67E1C();
  }

  v6 = APGetViewSubjectMonitorServiceInterface(v4);
  v7 = APGetClientViewSubjectMonitorInterface(v6);
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
    v17[4] = sub_185AE7B9C;
    v17[5] = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_185ACA0E8;
    v17[3] = &block_descriptor_74;
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

uint64_t sub_185AE4398(uint64_t a1)
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
    _os_log_impl(&dword_185AC1000, v2, v3, "connection to daemon in view subject monitor registry interrupted", v4, 2u);
    MEMORY[0x1865FE2F0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185AE3DE4();
  }

  return result;
}

uint64_t sub_185AE44AC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v32 = a1;
    v14 = v13;
    v31 = swift_slowAlloc();
    v33 = v31;
    *v14 = 136446466;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_185B6856C();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_185ACB2C4(v15, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a2 & 1;
    _os_log_impl(&dword_185AC1000, v11, v12, "monitor %{public}s locked status update %{BOOL}d", v14, 0x12u);
    v19 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1865FE2F0](v19, -1, -1);
    v20 = v14;
    a1 = v32;
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  else
  {

    v21 = (*(v7 + 8))(v9, v6);
  }

  v22 = *(v3 + 32);
  MEMORY[0x1EEE9AC00](v21);
  *(&v31 - 2) = a1;

  os_unfair_lock_lock((v22 + 32));
  sub_185AE7A40((v22 + 16), &v33);
  os_unfair_lock_unlock((v22 + 32));
  v23 = v33;

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 40);
    do
    {
      v26 = *v25;
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 16);
      swift_unknownObjectRetain();
      v29 = v28(ObjectType, v26);
      (*(v26 + 24))(v29);
      swift_unknownObjectRelease();

      v25 += 2;
      --v24;
    }

    while (v24);
  }
}

uint64_t sub_185AE4828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v16[2] = a2;

  v5 = sub_185B077B0(sub_185AE7A5C, v16, v4);
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
            v8 = sub_185B3CB00(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_185B3CB00((v12 > 1), v13 + 1, 1, v8);
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

uint64_t sub_185AE49B8(uint64_t a1, uint64_t a2)
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

void sub_185AE4E64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v30 = *(a3 + 16);
  if (v30(ObjectType, a3) == 0xD00000000000001BLL && 0x8000000185B74C90 == v10)
  {

    goto LABEL_12;
  }

  v12 = sub_185B6859C();

  if (v12)
  {
LABEL_12:
    v21 = *(a3 + 8);
    sub_185B1F4B4(a2, a1, ObjectType, v21);
    v22 = sub_185AE414C(a1);
    v23 = [v22 remoteObjectProxy];
    sub_185B682AC();
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE58, &qword_185B6C590);
    swift_dynamicCast();
    v24 = v31[5];
    v25 = v30(ObjectType, a3);
    v27 = v26;
    (*(v21 + 8))(ObjectType, v21);
    sub_185AE7028(v24, v25, v27, v8);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v8, v29);
    return;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1ED6F5130);
  swift_unknownObjectRetain();
  v14 = sub_185B67B6C();
  v15 = sub_185B6808C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136446210;
    v18 = v30(ObjectType, a3);
    v20 = sub_185ACB2C4(v18, v19, v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_185AC1000, v14, v15, "client is not entitled to monitor view subject %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x1865FE2F0](v17, -1, -1);
    MEMORY[0x1865FE2F0](v16, -1, -1);
  }
}

void sub_185AE51F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v8 = sub_185B67AFC();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v12 = *(a3 + 8);
  v30 = a1;
  v13 = ObjectType;
  v32 = v12;
  sub_185B1F588(a2, a1, ObjectType, v12);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  __swift_project_value_buffer(v14, qword_1ED6F5130);
  swift_unknownObjectRetain();
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[0] = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29[1] = v4;
    v20 = v19;
    v34[0] = v19;
    *v18 = 136315138;
    v21 = (*(a3 + 16))(v13, a3);
    v23 = sub_185ACB2C4(v21, v22, v34);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_185AC1000, v15, v16, "end monitoring %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1865FE2F0](v20, -1, -1);
    v24 = v18;
    v8 = v29[0];
    MEMORY[0x1865FE2F0](v24, -1, -1);
  }

  v25 = sub_185AE414C(v30);
  v26 = [v25 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE58, &qword_185B6C590);
  swift_dynamicCast();
  v27 = v34[5];
  (*(v32 + 8))(v13);
  v28 = sub_185B67ABC();
  (*(v33 + 8))(v10, v8);
  [v27 endMonitoringForMonitorUUID_];
  swift_unknownObjectRelease();
}

uint64_t sub_185AE550C()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_185AE5620(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_185AE57CC@<X0>(void *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_185ACF448(v16, v15);
  v7 = type metadata accessor for APViewSubjectMonitorSubscription();
  v8 = objc_allocWithZone(v7);
  sub_185ACF448(v15, &v8[OBJC_IVAR____TtC13AppProtection32APViewSubjectMonitorSubscription_monitorRef]);
  *&v8[OBJC_IVAR____TtC13AppProtection32APViewSubjectMonitorSubscription_registry] = a3;
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

void sub_185AE598C(unint64_t *a1, void *a2)
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
      sub_185B56E48(v4, v5);
      return;
    }
  }

  __break(1u);
}

void sub_185AE5A24()
{
  v1 = *&v0[OBJC_IVAR___APViewSubjectMonitorRegistry_state];

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
    sub_185ADF8F0(*&v0[OBJC_IVAR___APViewSubjectMonitorRegistry_viewSubject] + OBJC_IVAR___APSubject_clientArenaStorage, v17);
    v14 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v15 = __swift_project_boxed_opaque_existential_1(v14 + 17, v14[20]);
    sub_185AE6D58(v0, *v15);
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

uint64_t sub_185AE5D20()
{
  sub_185ADF8F0(*(v0 + OBJC_IVAR___APViewSubjectMonitorRegistry_viewSubject) + OBJC_IVAR___APSubject_clientArenaStorage, v6);
  v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_185ADF8F0((v1 + 17), v5);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v5, v5[3]) + 32);

  os_unfair_lock_lock(v2 + 8);
  sub_185AE79AC(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  v3 = *(v0 + OBJC_IVAR___APViewSubjectMonitorRegistry_state);

  os_unfair_lock_lock(v3 + 7);
  sub_185AE79CC(&v3[4]);
  os_unfair_lock_unlock(v3 + 7);
}

uint64_t sub_185AE5E38(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1ED6F5130);
    v5 = a2;
    v6 = sub_185B67B6C();
    v7 = sub_185B6809C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_185AC1000, v6, v7, "double-invalidation of %@!", v8, 0xCu);
      sub_185ACF5CC(v9, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v9, -1, -1);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 1;
  return result;
}

void __swiftcall APViewSubjectMonitorRegistry.init()(APViewSubjectMonitorRegistry *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_185AE6094()
{
  v1 = [*(v0 + OBJC_IVAR___APViewSubjectMonitorRegistry_viewSubject) effectiveBundleIdentifier];
  v2 = sub_185B67E4C();

  return v2;
}

void sub_185AE6144(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_185B67C9C();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B67CDC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isEffectivelyLocked])
  {
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = ObjectType;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_185AE793C;
    *(v17 + 24) = v16;
    v33 = sub_185AE7948;
    v34 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185B6657C;
    v32 = &block_descriptor_55;
    v18 = _Block_copy(&aBlock);

    v19 = APGetAsyncViewSubjectInfoProxy(v18);
    _Block_release(v18);
    v20 = [a1 effectiveBundleIdentifier];
    v21 = sub_185B67E1C();
    v33 = a4;
    v34 = a5;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185AC53EC;
    v32 = &block_descriptor_58;
    v22 = _Block_copy(&aBlock);

    [v19 authenticateForViewSubjectWithBundleID:v20 reasonDescription:v21 completion:v22];
    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v26 = qword_1EA8D2348;
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v33 = sub_185ACA0B8;
    v34 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185ACA0E8;
    v32 = &block_descriptor_46;
    v24 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v28 = MEMORY[0x1E69E7CC0];
    sub_185AC7328(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v15, v11, v24);
    _Block_release(v24);
    (*(v27 + 8))(v11, v9);
    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_185AE661C(char a1, void *a2, uint64_t a3, uint64_t a4)
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
  v15[3] = &block_descriptor_68;
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

void sub_185AE6898(void *a1)
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
      _os_log_impl(&dword_185AC1000, oslog, v4, "Could not fetch viewSubject info proxy for viewSubjectRequiresAuthentication %@", v5, 0xCu);
      sub_185ACF5CC(v6, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v6, -1, -1);
      MEMORY[0x1865FE2F0](v5, -1, -1);
    }
  }
}

uint64_t sub_185AE69FC(void *a1)
{
  if (qword_1EA8CC098 != -1)
  {
    swift_once();
  }

  v2 = qword_1EA8D2348;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_185AE792C;
  *(v4 + 24) = v3;
  v9[4] = sub_185AE7934;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_185AD94F4;
  v9[3] = &block_descriptor_37;
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

uint64_t sub_185AE6B84(char a1, void *a2, uint64_t a3)
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
      _os_log_impl(&dword_185AC1000, v8, v9, "Could not check viewSubjectRequiresAuthentication %@", v10, 0xCu);
      sub_185ACF5CC(v11, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v11, -1, -1);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }
  }

  result = swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  return result;
}

uint64_t sub_185AE6D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);

  os_unfair_lock_lock((v2 + 32));
  sub_185AE79E8((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_185AE6DEC(uint64_t result)
{
  v2 = result & 1;
  v3 = OBJC_IVAR___APViewSubjectMonitorRegistry_lastLockedState;
  v4 = *(v1 + OBJC_IVAR___APViewSubjectMonitorRegistry_lastLockedState);
  if (v4 != 2 && ((v4 ^ result) & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(v1 + OBJC_IVAR___APViewSubjectMonitorRegistry_viewSubject);
  v5[OBJC_IVAR___APViewSubject_forcedLockedValue] = v2;
  v6 = *(v1 + OBJC_IVAR___APViewSubjectMonitorRegistry_state);

  os_unfair_lock_lock((v6 + 28));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 28));

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v5[OBJC_IVAR___APViewSubject_forcedLockedValue] = 2;
LABEL_18:
    *(v1 + v3) = v2;
    return result;
  }

  result = sub_185B6844C();
  v8 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v8 >= 1)
  {
    v17 = v2;
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1865FD3E0](i, v7);
      }

      else
      {
        v14 = *(v7 + 8 * i + 32);
      }

      v15 = v14;
      sub_185ACF448(v14 + OBJC_IVAR____TtC13AppProtection32APViewSubjectMonitorSubscription_monitorRef, v18);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_185ACF3F4(v18);
      if (Strong)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_185B6C470;
        *(v10 + 32) = v5;
        type metadata accessor for APSubject(0);
        v11 = v5;
        v12 = sub_185B67F5C();

        v13 = v15;
        [Strong appProtectionSubjectsChanged:v12 forSubscription:v13];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v2 = v17;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_185AE7028(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  __swift_project_value_buffer(v12, qword_1ED6F5130);
  (*(v9 + 16))(v11, a4, v8);

  v13 = sub_185B67B6C();
  v14 = sub_185B680AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136446466;
    *(v15 + 4) = sub_185ACB2C4(a2, a3, &v28);
    *(v15 + 12) = 2082;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = v13;
    v16 = sub_185B6856C();
    HIDWORD(v25) = v14;
    v17 = a1;
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_185ACB2C4(v16, v19, &v28);
    a1 = v17;

    *(v15 + 14) = v20;
    v21 = v26;
    _os_log_impl(&dword_185AC1000, v26, BYTE4(v25), "begin monitoring viewSubject %{public}s monitor %{public}s", v15, 0x16u);
    v22 = v27;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v22, -1, -1);
    MEMORY[0x1865FE2F0](v15, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = sub_185B67E1C();
  v24 = sub_185B67ABC();
  [a1 beginMonitoringForViewSubjectBundleID:v23 monitorUUID:v24];
}

id sub_185AE7348(void *a1)
{
  v1[OBJC_IVAR___APViewSubjectMonitorRegistry_lastLockedState] = 2;
  *&v1[OBJC_IVAR___APViewSubjectMonitorRegistry_viewSubject] = a1;
  v3 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR___APViewSubjectMonitorRegistry_nsuuid] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE68, &qword_185B6C598);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 28) = 0;
  *(v6 + 16) = v7;
  *&v1[OBJC_IVAR___APViewSubjectMonitorRegistry_state] = v6;
  *(v6 + 24) = 0;
  v9.receiver = v1;
  v9.super_class = APViewSubjectMonitorRegistry;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_185AE741C(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_185B6844C();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1865FD3E0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_185AE7520(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_185AE741C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_185B6844C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_185B6844C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x1865FD3E0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1865FD3E0](v10, v7);
        v17 = MEMORY[0x1865FD3E0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_185B574AC();
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_185B574AC();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_185B6844C();
}

uint64_t sub_185AE7744(void *a1)
{
  if (![a1 isEffectivelyLocked])
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v13 = sub_185AE69FC;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B6657C;
  v12 = &block_descriptor_2;
  v3 = _Block_copy(&v9);

  v4 = APGetSyncViewSubjectInfoProxy(v3);
  _Block_release(v3);
  v5 = [a1 effectiveBundleIdentifier];
  v13 = sub_185AE7924;
  v14 = v2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185AC53EC;
  v12 = &block_descriptor_28;
  v6 = _Block_copy(&v9);

  [v4 viewSubjectRequiresAuthentication:v5 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v7 = *(v2 + 16);

  return v7;
}

uint64_t sub_185AE7B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_185AE7BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_185AE7C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_185AE7CA8()
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
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  result = sub_185B6813C();
  qword_1EA8CB808 = result;
  return result;
}

void sub_185AE7EB0()
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
    _os_log_impl(&dword_185AC1000, v3, v4, "resuming notifyd translator", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  if (qword_1EA8CB800 != -1)
  {
    swift_once();
  }

  v6 = qword_1EA8CB808;
  v8[4] = sub_185AE8440;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185B12CC8;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v6, v7);
  _Block_release(v7);
}

const char *sub_185AE8060(void *a1, uint64_t a2)
{
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1EA8D2278);
  swift_unknownObjectRetain();
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v27 = v5;
    v14 = a2;
    v15 = v13;
    *&v29[0] = v13;
    *v12 = 136315138;
    v16 = MEMORY[0x1865FE580](a1);
    v17 = sub_185B67F1C();
    v19 = v18;
    free(v16);
    v20 = sub_185ACB2C4(v17, v19, v29);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_185AC1000, v9, v10, "Received notifyd event: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v21 = v15;
    a2 = v14;
    v5 = v27;
    MEMORY[0x1865FE2F0](v21, -1, -1);
    v22 = v12;
    v4 = v28;
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  v23 = sub_185B67BEC();
  result = xpc_dictionary_get_string(a1, v23);
  if (result)
  {
    sub_185B67F1C();
    sub_185B67E1C();

    memset(v29, 0, sizeof(v29));
    sub_185B677EC();
    v25 = *(a2 + 16);
    v26 = sub_185B677CC();
    [v25 postNotification_];

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

id sub_185AE82FC()
{
  type metadata accessor for NotifydXPCEventStreamTranslator();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  *(v0 + 16) = result;
  off_1EA8CB820 = v0;
  return result;
}

uint64_t static NotifydXPCEventStreamTranslator.sharedTranslator.getter()
{
  if (qword_1EA8CB818 != -1)
  {
    swift_once();
  }
}

uint64_t NotifydXPCEventStreamTranslator.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_185AE8448()
{
  result = qword_1ED6F48C0;
  if (!qword_1ED6F48C0)
  {
    sub_185B680DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F48C0);
  }

  return result;
}

unint64_t sub_185AE84A0()
{
  result = qword_1ED6F48D0;
  if (!qword_1ED6F48D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CCE40, &qword_185B6BBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F48D0);
  }

  return result;
}

BOOL sub_185AE8504(uint64_t a1)
{
  v1 = sub_185B6791C();
  v2 = [v1 domain];
  v3 = sub_185B67E4C();
  v5 = v4;

  if (v3 == sub_185B67E4C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_185B6859C();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v1 code];

  return v9 == 4097;
}

void sub_185AE85F0(void *a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  if (a1)
  {
    v12 = a1;
    if (a2 < 10 && sub_185AE8504(a1))
    {
      v13 = a2 + 1;
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = a3;
      v14[4] = a4;
      v14[5] = a5;
      v14[6] = a6;

      a3(sub_185AE8710, v14);
    }

    else
    {
      v15 = a1;
      a5(a1);
    }
  }

  else
  {
    (a5)(0, a2, a3, a4);
  }
}

id sub_185AE87D0@<X0>(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 == 2 && v5 == 0)
  {
    v9 = a3;
    v10 = [a1 application];
    v11 = [v10 bundleIdentifier];

    v12 = sub_185B67E4C();
    v14 = v13;

    v15 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v5 = sub_185AD006C(v12, v14, 1);
    if (v3)
    {
      *a2 = v3;
      *(a2 + 8) = 1;
      v8 = v3;
      goto LABEL_10;
    }

    *a2 = v5;
    *(a2 + 8) = 0;
    a3 = v9;
LABEL_12:
    *a3 = v5;
    v16 = 0;
    return sub_185AE8E94(v5, v16);
  }

  if (!*(a2 + 8))
  {
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    v8 = v5;
LABEL_10:
    swift_willThrow();
    v5 = v8;
    v16 = 1;
    return sub_185AE8E94(v5, v16);
  }

  result = sub_185B6842C();
  __break(1u);
  return result;
}

uint64_t sub_185AE8A84()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v1 = [v0 loadRecordWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v10[0];
    v4 = [v2 localizedName];
  }

  else
  {
    v5 = v10[0];
    v6 = sub_185B6792C();

    swift_willThrow();
    v2 = [v0 application];
    v4 = [v2 bundleIdentifier];
  }

  v7 = v4;

  v8 = sub_185B67E4C();
  return v8;
}

void sub_185AE8C38()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [v0 loadRecordWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v6[0];
    [v2 detach];
  }

  else
  {
    v4 = v6[0];
    v5 = sub_185B6792C();

    swift_willThrow();
  }
}

void __swiftcall APLazyRecordApplication.init()(APLazyRecordApplication *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for APLazyRecordApplication()
{
  result = qword_1EA8CCEF0;
  if (!qword_1EA8CCEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CCEF0);
  }

  return result;
}

id sub_185AE8E94(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So23APLazyRecordApplicationC13AppProtectionE04LazyB5State33_CEEF50C4790508FAD8CBA8DDE45189F0LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_185AE8EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_185AE8F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_185AE8F6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_185AE8F94(uint64_t a1)
{
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = *(v3 + 16);
  v10(&v26 - v8, a1, v2);
  v11 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v12 = sub_185AE9B34(v9);
  if (([v12 optsOutOfAppProtectionShield] & 1) != 0 || (v13 = objc_msgSend(v12, sel_appProtectionEffectiveContainer)) == 0)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1EA8D2278);
    v10(v6, a1, v2);
    v18 = sub_185B67B6C();
    v19 = sub_185B6808C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      sub_185AE9C80();
      v22 = sub_185B6856C();
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v25 = sub_185ACB2C4(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_185AC1000, v18, v19, "Extension with UUID %s existed but has no effective container", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1865FE2F0](v21, -1, -1);
      MEMORY[0x1865FE2F0](v20, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  else
  {
    v14 = v13;
    v15 = sub_185B67E4C();

    return v15;
  }
}

uint64_t sub_185AE948C(uint64_t a1)
{
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  (*(v3 + 16))(&v13 - v5, a1, v2);
  v7 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v8 = sub_185AE9B34(v6);
  v9 = [v8 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_185B67E4C();

    return v11;
  }

  else
  {

    return 0;
  }
}

BOOL sub_185AE97DC(uint64_t a1)
{
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  (*(v3 + 16))(&v13 - v5, a1, v2);
  v7 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v8 = sub_185AE9B34(v6);
  v9 = [v8 containingBundleRecord];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 developerType];

    return v11 == 1;
  }

  else
  {

    return 1;
  }
}

id sub_185AE9B34(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_185B67ABC();
  v13[0] = 0;
  v5 = [v2 initWithUUID:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_185B67AFC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_185B6792C();

    swift_willThrow();
    v11 = sub_185B67AFC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_185AE9C80()
{
  result = qword_1ED6F4640;
  if (!qword_1ED6F4640)
  {
    sub_185B67AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F4640);
  }

  return result;
}

uint64_t sub_185AE9CD8()
{
  sub_185AD3598(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_185AE9DF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s29SystemAppOutletSubjectMonitorCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_185AE9EB4(void *a1)
{
  v2 = v1;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  v5 = a1;
  v6 = sub_185B67B6C();
  v7 = sub_185B680AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_185AC1000, v6, v7, "All scenes dismissed for %{public}@", v8, 0xCu);
    sub_185AC3F6C(v9);
    MEMORY[0x1865FE2F0](v9, -1, -1);
    MEMORY[0x1865FE2F0](v8, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR___APSystemAppOutlet_state);
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock((v11 + 32));
  sub_185AED1C8((v11 + 16), aBlock);
  os_unfair_lock_unlock((v11 + 32));
  if (aBlock[0])
  {
    v13 = aBlock[0];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v13 >> 62)
  {
    v14 = sub_185B6844C();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865FD3E0](i, v13);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong resetShield];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_20:

  if ([v5 isEffectivelyLocked])
  {
    sub_185AEA4DC(v5, 1, nullsub_1, 0);
  }

  v17 = [objc_opt_self() sharedGuard];
  v18 = [v5 effectiveBundleIdentifier];
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  aBlock[4] = sub_185AED1E4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AC53EC;
  aBlock[3] = &block_descriptor_27;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  [v17 noteAllScenesDismissedForBundleID:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_185AEA250@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = v3;
  v8 = [a1 bundleIdentifier];
  v9 = sub_185B67E4C();
  v11 = v10;

  sub_185B3D2A4(v9, v11);

  v12 = [a1 bundleIdentifier];
  v13 = sub_185B67E4C();
  v15 = v14;

  v16 = *a2;
  if (*(*a2 + 16))
  {
    v17 = sub_185AC9F40(v13, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v17);
      v33 = MEMORY[0x1E69E7CC0];
      if (v20 >> 62)
      {
        goto LABEL_24;
      }

      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      if (v21)
      {
        v31 = a3;
        v32 = v4;
        v22 = 0;
        v4 = v20 & 0xC000000000000001;
        a3 = (v20 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v4)
          {
            MEMORY[0x1865FD3E0](v22, v20);
            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_17;
            }
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_24:
              v21 = sub_185B6844C();
              goto LABEL_5;
            }

            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_16;
            }
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            sub_185B683BC();
            sub_185B683EC();
            sub_185B683FC();
            sub_185B683CC();
          }

          else
          {
          }

          ++v22;
          if (v23 == v21)
          {
            v24 = v33;
            a3 = v31;
            goto LABEL_21;
          }
        }
      }

      v24 = MEMORY[0x1E69E7CC0];
LABEL_21:
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
LABEL_17:

    v24 = 0;
  }

  v25 = [a1 bundleIdentifier];
  v26 = sub_185B67E4C();
  v28 = v27;

  result = sub_185B2E880(v29, v26, v28);
  *a3 = v24;
  return result;
}

uint64_t sub_185AEA4DC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_185B67C9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_185B67CDC();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  aBlock[4] = sub_185AED284;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_33;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  v19 = a1;

  sub_185B67CBC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

void sub_185AEA7BC(char a1, void *a2, void *a3)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1ED6F5130);
  v7 = a3;
  v8 = a2;
  oslog = sub_185B67B6C();
  v9 = sub_185B680AC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315650;
    v13 = [v7 effectiveBundleIdentifier];
    v14 = sub_185B67E4C();
    v16 = v15;

    v17 = sub_185ACB2C4(v14, v16, &v22);

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2112;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v10 + 20) = v19;
    *v11 = v20;
    _os_log_impl(&dword_185AC1000, oslog, v9, "told auth provider %s was dimissed. result:%{BOOL}d err:%@", v10, 0x1Cu);
    sub_185AC3F6C(v11);
    MEMORY[0x1865FE2F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1865FE2F0](v12, -1, -1);
    MEMORY[0x1865FE2F0](v10, -1, -1);
  }
}

uint64_t sub_185AEAA48()
{
  v0 = sub_185B67C9C();
  v15 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185B67CDC();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67CAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7F88], v6);
  v10 = sub_185B6814C();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = sub_185AEADB8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_18;
  v11 = _Block_copy(aBlock);
  sub_185B67CBC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v5, v2, v11);
  _Block_release(v11);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

void sub_185AEADB8()
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1ED6F5130);
  oslog = sub_185B67B6C();
  v1 = sub_185B680AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v1, "Primed LAEnvironment for our use", v2, 2u);
    MEMORY[0x1865FE2F0](v2, -1, -1);
  }
}

uint64_t sub_185AEAEC4()
{
  if (qword_1EA8CB968 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_185AEAEF4()
{
  v1 = v0;
  LOBYTE(v14[0]) = 0;
  result = AppProtectionFeatures.enabled.getter();
  if (result)
  {
    if (qword_1EA8CB660 != -1)
    {
      swift_once();
    }

    if (qword_1EA8CB658 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR___APSystemAppOutlet_subjectMonitor);
    swift_unknownObjectWeakAssign();
    v4 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
    swift_unknownObjectRelease();
    *(v3 + OBJC_IVAR____TtCE13AppProtectionCSo17APSystemAppOutlet29SystemAppOutletSubjectMonitor_subscription) = v4;
    swift_unknownObjectRelease();
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED6F5160;
    v6 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    sub_185ADF8F0((v9 + 56), v14);
    (*(v7 + 8))(v9, v5);
    v10 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v11 = *(*v10 + 16);
    MEMORY[0x1EEE9AC00](v10);
    *(&v13 - 2) = v1;
    *(&v13 - 1) = v12;

    os_unfair_lock_lock(v11 + 10);
    sub_185AED1AC(&v11[4]);
    os_unfair_lock_unlock(v11 + 10);

    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  return result;
}

uint64_t sub_185AEB1D4()
{
  v1 = v0;
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED6F5160;
  v3 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  sub_185ADF8F0((v6 + 56), v11);
  (*(v4 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v8 = *(*v7 + 16);
  MEMORY[0x1EEE9AC00](v7);
  *(&v10 - 2) = v1;

  os_unfair_lock_lock(v8 + 10);
  sub_185AED190(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  LOBYTE(v11[0]) = 0;
  result = AppProtectionFeatures.enabled.getter();
  if (result)
  {
    result = *(*(v1 + OBJC_IVAR___APSystemAppOutlet_subjectMonitor) + OBJC_IVAR____TtCE13AppProtectionCSo17APSystemAppOutlet29SystemAppOutletSubjectMonitor_subscription);
    if (result)
    {
      return [result invalidate];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void __swiftcall APSystemAppOutlet.init()(APSystemAppOutlet *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_185AEB560(void *a1)
{
  v2 = [a1 shieldedApplication];
  v3 = [v2 bundleIdentifier];

  sub_185B67E4C();
  v4 = *(v1 + OBJC_IVAR___APSystemAppOutlet_state);
  os_unfair_lock_lock((v4 + 32));
  sub_185AED170((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
}

uint64_t sub_185AEB61C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakShield();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  v21 = *a1;
  v9 = sub_185AC9F40(a2, a3);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_185B4F394(v14, isUniquelyReferenced_nonNull_native);
    v8 = v21;
    v9 = sub_185AC9F40(a2, a3);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_185B685DC();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *a1 = v8;
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = v9;
  sub_185B50F84();
  v9 = v20;
  v8 = v21;
  *a1 = v21;
  if ((v15 & 1) == 0)
  {
LABEL_7:
    v17 = v9;
    sub_185B5470C();

    v9 = v17;
  }

LABEL_8:
  v18 = (v8[7] + 8 * v9);
  MEMORY[0x1865FCFA0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    sub_185B67F8C();
  }

  return sub_185B67FAC();
}

uint64_t sub_185AEB7DC(void *a1)
{
  v2 = [a1 shieldedApplication];
  v3 = [v2 bundleIdentifier];

  sub_185B67E4C();
  v4 = *(v1 + OBJC_IVAR___APSystemAppOutlet_state);
  os_unfair_lock_lock(v4 + 8);
  sub_185AEC708(&v4[4]);
  os_unfair_lock_unlock(v4 + 8);
}

uint64_t sub_185AEB898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 16))
  {
    v7 = result;
    result = sub_185AC9F40(a2, a3);
    if (v9)
    {
      v15 = *(*(v4 + 56) + 8 * result);
      swift_unknownObjectRetain();

      v10 = sub_185AECEEC(&v15, a4);
      result = swift_unknownObjectRelease();
      if (v15 >> 62)
      {
        result = sub_185B6844C();
        v11 = result;
        if (result >= v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11 >= v10)
        {
LABEL_5:
          sub_185B56E74(v10, v11);
          v12 = v15;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = *v7;
          sub_185B52078(v12, a2, a3, isUniquelyReferenced_nonNull_native);

          *v7 = v14;
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_185AEB9E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_185AEBA60@<X0>(id a1@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 8);
  v5 = [a1 bundleIdentifier];
  v6 = sub_185B67E4C();
  v8 = v7;

  LOBYTE(v4) = sub_185AC3A7C(v6, v8, v4);

  *a3 = v4 & 1;
  return result;
}

void sub_185AEBAF0(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v49 = a3;
  v50 = a4;
  v8 = sub_185B67D3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
  *v11 = v12;
  v13 = *(v9 + 104);
  v13(v11, *MEMORY[0x1E69E8020], v8);
  v14 = v12;
  LOBYTE(v12) = sub_185B67D5C();
  v15 = *(v9 + 8);
  v15(v11, v8);
  if (v12)
  {
    sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
    *v11 = sub_185B680FC();
    v13(v11, *MEMORY[0x1E69E8018], v8);
    v16 = sub_185B67D5C();
    v15(v11, v8);
    if (v16)
    {
      if (qword_1ED6F4CB0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_4:
  v17 = sub_185B67B8C();
  v18 = __swift_project_value_buffer(v17, qword_1ED6F5130);
  v19 = v5;
  v20 = a1;
  v21 = sub_185B67B6C();
  v22 = sub_185B680AC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51[0] = v24;
    *v23 = 136446722;
    v25 = [*&v19[OBJC_IVAR___APSystemAppOutlet_systemAppInterface] description];
    v26 = sub_185B67E4C();
    v48[1] = v18;
    v28 = v27;

    v29 = sub_185ACB2C4(v26, v28, v51);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = 28277;
    if (a2)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    aBlock = v30;
    v53 = v31;

    MEMORY[0x1865FCF60](0x646C65696873, 0xE600000000000000);

    v32 = sub_185ACB2C4(aBlock, v53, v51);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2082;
    v33 = [v20 bundleIdentifier];
    v34 = sub_185B67E4C();
    v36 = v35;

    v37 = sub_185ACB2C4(v34, v36, v51);

    *(v23 + 24) = v37;
    _os_log_impl(&dword_185AC1000, v21, v22, "tell %{public}s to %s %{public}s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v24, -1, -1);
    MEMORY[0x1865FE2F0](v23, -1, -1);
  }

  if (a2 & 1) != 0 || (v38 = [v20 isEffectivelyLocked], !v38) || (v39 = *&v19[OBJC_IVAR___APSystemAppOutlet_state], MEMORY[0x1EEE9AC00](v38), v48[-2] = v20, os_unfair_lock_lock(v39 + 8), sub_185AEC6EC(&v39[4], &aBlock), os_unfair_lock_unlock(v39 + 8), (aBlock))
  {
    v40 = *&v19[OBJC_IVAR___APSystemAppOutlet_systemAppInterface];
    v56 = v49;
    v57 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_185B2AF84;
    v55 = &block_descriptor_4;
    v41 = _Block_copy(&aBlock);

    [v40 setApplication:v20 shielded:a2 & 1 forOutlet:v19 completion:v41];
    _Block_release(v41);
  }

  else
  {
    v42 = v20;
    v43 = sub_185B67B6C();
    v44 = sub_185B680AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&dword_185AC1000, v43, v44, "%@ is effectively locked but has a visible scene; not unshielding!", v45, 0xCu);
      sub_185AC3F6C(v46);
      MEMORY[0x1865FE2F0](v46, -1, -1);
      MEMORY[0x1865FE2F0](v45, -1, -1);
    }

    v49(0);
  }
}

uint64_t sub_185AEC0D8(void *a1, char *a2, uint64_t a3)
{
  v7 = sub_185B67D3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  *v10 = sub_185B680FC();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8018], v7);
  v11 = sub_185B67D5C();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v44 = a3;
  v12 = [a1 bundleIdentifier];
  v13 = sub_185B67E4C();
  v15 = v14;

  v16 = *&a2[OBJC_IVAR___APSystemAppOutlet_state];
  MEMORY[0x1EEE9AC00](v17);
  v42 = v13;
  v43 = v15;
  *(&v41 - 2) = v13;
  *(&v41 - 1) = v15;
  os_unfair_lock_lock((v16 + 32));
  sub_185AEC6D0((v16 + 16), &v45);
  v41 = 0;
  os_unfair_lock_unlock((v16 + 32));
  v3 = v45;
  v45 = MEMORY[0x1E69E7CC0];
  a1 = a2;
  a3 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_34:
    v18 = sub_185B6844C();
    goto LABEL_4;
  }

  v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865FD3E0](v19, v3);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 >= *(a3 + 16))
      {
        goto LABEL_32;
      }

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v19;
    if (Strong)
    {
      MEMORY[0x1865FCFA0](v23);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_185B67F8C();
      }

      sub_185B67FAC();
      v20 = v45;
      v19 = v21;
    }
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v24 = sub_185B67B8C();
  __swift_project_value_buffer(v24, qword_1ED6F5130);
  swift_bridgeObjectRetain_n();
  v25 = a1;
  v26 = v43;

  v27 = sub_185B67B6C();
  v28 = sub_185B680AC();

  v29 = v20 >> 62;
  if (!os_log_type_enabled(v27, v28))
  {

    swift_bridgeObjectRelease_n();
    v36 = v44;
    goto LABEL_23;
  }

  a3 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v45 = v3;
  *a3 = 136446978;
  v30 = [*&v25[OBJC_IVAR___APSystemAppOutlet_systemAppInterface] description];
  v31 = sub_185B67E4C();
  v33 = v32;

  v34 = sub_185ACB2C4(v31, v33, &v45);

  *(a3 + 4) = v34;
  *(a3 + 12) = 2082;
  v35 = sub_185ACB2C4(v42, v26, &v45);

  *(a3 + 14) = v35;
  *(a3 + 22) = 2048;
  v36 = v44;
  *(a3 + 24) = v44;
  *(a3 + 32) = 2048;
  v26 = v20 >> 62;
  if (v29)
  {
    goto LABEL_38;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_185B6844C())
  {

    *(a3 + 34) = i;

    _os_log_impl(&dword_185AC1000, v27, v28, "tell %{public}s to setShieldStyle of %{public}s to: %lu for %ld shields", a3, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v3, -1, -1);
    MEMORY[0x1865FE2F0](a3, -1, -1);

    v29 = v26;
LABEL_23:
    if (v29)
    {
      v27 = sub_185B6844C();
      if (!v27)
      {
      }
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
      }
    }

    if (v27 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_38:
    ;
  }

  for (j = 0; j != v27; ++j)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1865FD3E0](j, v20);
    }

    else
    {
      v39 = *(v20 + 8 * j + 32);
      swift_unknownObjectRetain();
    }

    [v39 setShieldStyle_];
    swift_unknownObjectRelease();
  }
}

void sub_185AEC664(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_185AC9F40(a2, a3), (v7 & 1) != 0))
  {
    *a4 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC0];
  }
}

void sub_185AEC728(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_185B6844C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v25 = v27;
    a2.n128_u64[0] = 138543362;
    v24 = a2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1865FD3E0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if ([v5 isEffectivelyLocked])
      {
        goto LABEL_5;
      }

      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v7 = sub_185B67B8C();
      __swift_project_value_buffer(v7, qword_1ED6F5130);
      v8 = v6;
      v9 = sub_185B67B6C();
      v10 = sub_185B680AC();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = v24.n128_u32[0];
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_185AC1000, v9, v10, "subject %{public}@ was effectively unlocked, dropping shield", v11, 0xCu);
        sub_185AC3F6C(v12);
        MEMORY[0x1865FE2F0](v12, -1, -1);
        MEMORY[0x1865FE2F0](v11, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_5:
      }

      else
      {
        v15 = Strong;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClassUnconditional();
        v17 = *&v15[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        *(v18 + 24) = v16;
        *(v18 + 32) = 0;
        *(v18 + 40) = nullsub_1;
        *(v18 + 48) = 0;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_185AED234;
        *(v19 + 24) = v18;
        v27[2] = sub_185AE7934;
        v27[3] = v19;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v27[0] = sub_185AD94F4;
        v27[1] = &block_descriptor_42;
        v20 = _Block_copy(aBlock);
        v21 = v8;
        v22 = v15;

        dispatch_sync(v17, v20);

        _Block_release(v20);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_18;
        }
      }

      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

id sub_185AECAB8(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = sub_185B680EC();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v16 = OBJC_IVAR___APSystemAppOutlet_callbackQueue;
  v8 = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v15[0] = "ForAppProtectionUIOnly";
  v15[1] = v8;
  sub_185B67CBC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v17);
  *&v1[v16] = sub_185B6813C();
  *&v1[OBJC_IVAR___APSystemAppOutlet_systemAppInterface] = v18;
  v9 = objc_allocWithZone(_s29SystemAppOutletSubjectMonitorCMa());
  swift_unknownObjectRetain();
  v10 = [v9 init];
  *&v2[OBJC_IVAR___APSystemAppOutlet_subjectMonitor] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCF58, &qword_185B6C730);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  v13 = MEMORY[0x1E69E7CD0];
  *(v11 + 32) = 0;
  *&v2[OBJC_IVAR___APSystemAppOutlet_state] = v11;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v19.receiver = v2;
  v19.super_class = APSystemAppOutlet;
  return objc_msgSendSuper2(&v19, sel_init);
}

unint64_t sub_185AECDC8(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_185B6844C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865FD3E0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = [Strong isEqualTo_];

      swift_unknownObjectRelease();
      if (v9)
      {
        return v6;
      }
    }

    else
    {
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_185AECEEC(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_185AECDC8(*a1, a2);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_185B6844C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_185B6844C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865FD3E0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_17:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      if (v10 != v11)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v14 = [Strong isEqualTo_];

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (v10 != v11)
      {
LABEL_22:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1865FD3E0](v10, v7);
          v15 = MEMORY[0x1865FD3E0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v16)
          {
            goto LABEL_50;
          }

          if (v11 >= v16)
          {
            goto LABEL_51;
          }

          v4 = *(v7 + 32 + 8 * v10);
          v15 = *(v7 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_185B574AC();
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v2 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_185B574AC();
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_42:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v11 >= *(v2 + 16))
        {
          goto LABEL_48;
        }

LABEL_8:
        *(v2 + 8 * v11 + 32) = v4;

        *a1 = v7;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_47;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return sub_185B6844C();
}

uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

uint64_t sub_185AED298()
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
  sub_185AF3800(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_185B6813C();
  qword_1EA8CB730 = result;
  return result;
}

void sub_185AED518()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF88, &qword_185B6C7F8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 16) = xmmword_185B6C770;
  *(inited + 40) = 0x8000000185B74380;
  v1 = *MEMORY[0x1E69D5500];
  v2 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  sub_185B4E9AC(0, 1, 0);
  if (!v1)
  {
    goto LABEL_27;
  }

  v3 = v74;
  v4 = v1;
  v5 = sub_185B67E4C();
  v7 = v6;

  v9 = *(v74 + 16);
  v8 = *(v74 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_185B4E9AC((v8 > 1), v9 + 1, 1);
    v3 = v74;
  }

  *(v3 + 16) = v9 + 1;
  v10 = v3 + 16 * v9;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000185B751B0;
  v11 = *MEMORY[0x1E69D5518];
  sub_185B4E9AC(0, 1, 0);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v2;
  v13 = v11;
  v14 = sub_185B67E4C();
  v16 = v15;

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_185B4E9AC((v17 > 1), v18 + 1, 1);
    v12 = v2;
  }

  *(v12 + 16) = v18 + 1;
  v19 = v12 + 16 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = v16;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000185B751D0;
  v20 = *MEMORY[0x1E69D55D8];
  sub_185B4E9AC(0, 1, 0);
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v2;
  v22 = v20;
  v23 = sub_185B67E4C();
  v25 = v24;

  v27 = *(v2 + 16);
  v26 = *(v2 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_185B4E9AC((v26 > 1), v27 + 1, 1);
    v21 = v2;
  }

  *(v21 + 16) = v27 + 1;
  v28 = v21 + 16 * v27;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  *(inited + 96) = v21;
  *(inited + 104) = 0xD000000000000019;
  v29 = MEMORY[0x1E69D55C8];
  *(inited + 112) = 0x8000000185B751F0;
  v30 = *v29;
  v31 = *MEMORY[0x1E69D55D0];
  sub_185B4E9AC(0, 2, 0);
  if (!v30)
  {
    goto LABEL_26;
  }

  v32 = v2;
  v33 = v30;
  v34 = sub_185B67E4C();
  v36 = v35;

  v38 = *(v2 + 16);
  v37 = *(v2 + 24);
  if (v38 >= v37 >> 1)
  {
    sub_185B4E9AC((v37 > 1), v38 + 1, 1);
    v32 = v2;
  }

  *(v32 + 16) = v38 + 1;
  v39 = v32 + 16 * v38;
  *(v39 + 32) = v34;
  *(v39 + 40) = v36;
  if (!v31)
  {
LABEL_26:
    __break(1u);
LABEL_27:
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
    return;
  }

  v40 = v31;
  v41 = sub_185B67E4C();
  v43 = v42;

  v45 = *(v32 + 16);
  v44 = *(v32 + 24);
  if (v45 >= v44 >> 1)
  {
    sub_185B4E9AC((v44 > 1), v45 + 1, 1);
  }

  *(v32 + 16) = v45 + 1;
  v46 = v32 + 16 * v45;
  *(v46 + 32) = v41;
  *(v46 + 40) = v43;
  *(inited + 120) = v32;
  *(inited + 128) = 0x6C7070612E6D6F63;
  *(inited + 136) = 0xEF636973754D2E65;
  v47 = *MEMORY[0x1E69D5580];
  sub_185B4E9AC(0, 1, 0);
  if (!v47)
  {
    goto LABEL_30;
  }

  v48 = v2;
  v49 = v47;
  v50 = sub_185B67E4C();
  v52 = v51;

  v54 = *(v2 + 16);
  v53 = *(v2 + 24);
  if (v54 >= v53 >> 1)
  {
    sub_185B4E9AC((v53 > 1), v54 + 1, 1);
    v48 = v2;
  }

  *(v48 + 16) = v54 + 1;
  v55 = v48 + 16 * v54;
  *(v55 + 32) = v50;
  *(v55 + 40) = v52;
  *(inited + 144) = v48;
  strcpy((inited + 152), "com.apple.Home");
  *(inited + 167) = -18;
  v56 = *MEMORY[0x1E69D5620];
  sub_185B4E9AC(0, 1, 0);
  if (!v56)
  {
    goto LABEL_31;
  }

  v57 = v2;
  v58 = v56;
  v59 = sub_185B67E4C();
  v61 = v60;

  v63 = *(v2 + 16);
  v62 = *(v2 + 24);
  if (v63 >= v62 >> 1)
  {
    sub_185B4E9AC((v62 > 1), v63 + 1, 1);
    v57 = v2;
  }

  *(v57 + 16) = v63 + 1;
  v64 = v57 + 16 * v63;
  *(v64 + 32) = v59;
  *(v64 + 40) = v61;
  *(inited + 168) = v57;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000185B75210;
  v65 = *MEMORY[0x1E69D5558];
  sub_185B4E9AC(0, 1, 0);
  if (!v65)
  {
    goto LABEL_32;
  }

  v66 = v2;
  v67 = v65;
  v68 = sub_185B67E4C();
  v70 = v69;

  v72 = *(v2 + 16);
  v71 = *(v2 + 24);
  if (v72 >= v71 >> 1)
  {
    sub_185B4E9AC((v71 > 1), v72 + 1, 1);
    v66 = v2;
  }

  *(v66 + 16) = v72 + 1;
  v73 = v66 + 16 * v72;
  *(v73 + 32) = v68;
  *(v73 + 40) = v70;
  *(inited + 192) = v66;
  sub_185B52E8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCF90, &unk_185B6C800);
  swift_arrayDestroy();
}

uint64_t sub_185AEDACC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  v52 = a1;
  v15 = sub_185B67C9C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_185B67CDC();
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CC3A8 != -1)
  {
    swift_once();
  }

  v57 = a9;
  v21 = off_1EA8CCF68;
  if (!*(off_1EA8CCF68 + 2) || (v22 = sub_185AC9F40(a6, a7), (v23 & 1) == 0))
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v32 = sub_185B67B8C();
    __swift_project_value_buffer(v32, qword_1EA8D2278);

    v33 = sub_185B67B6C();
    v34 = sub_185B680AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_185ACB2C4(a6, a7, &aBlock);
      _os_log_impl(&dword_185AC1000, v33, v34, "No services to check for application with bundleID %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x1865FE2F0](v36, -1, -1);
      MEMORY[0x1865FE2F0](v35, -1, -1);
    }

    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v37 = swift_allocObject();
    v38 = v57;
    *(v37 + 16) = v56;
    *(v37 + 24) = v38;
    v63 = sub_185AF312C;
    v64 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_185ACA0E8;
    v62 = &block_descriptor_10;
    v39 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    goto LABEL_18;
  }

  v24 = *(v21[7] + 8 * v22);
  if (!v24[2])
  {
    __break(1u);
    goto LABEL_34;
  }

  v51 = v15;
  a6 = v24[4];
  v21 = v24[5];
  sub_185B67ECC();

  v25 = tcc_service_singleton_for_name();

  v50[1] = v25;
  if (!v25)
  {
    if (qword_1EA8CB720 == -1)
    {
LABEL_22:
      v40 = swift_allocObject();
      v41 = v57;
      v40[2] = v56;
      v40[3] = v41;
      v40[4] = a6;
      v40[5] = v21;
      v63 = sub_185AF315C;
      v64 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_185ACA0E8;
      v62 = &block_descriptor_16_0;
      v39 = _Block_copy(&aBlock);

      sub_185B67CBC();
      v58 = MEMORY[0x1E69E7CC0];
      sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      v15 = v51;
LABEL_18:
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v20, v17, v39);
LABEL_19:
      _Block_release(v39);
      goto LABEL_20;
    }

LABEL_34:
    swift_once();
    goto LABEL_22;
  }

  v26 = v52;
  if (!v52)
  {
    v15 = v51;
    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v42 = swift_allocObject();
    v43 = v57;
    *(v42 + 16) = v56;
    *(v42 + 24) = v43;
    v63 = sub_185AF3168;
    v64 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_185ACA0E8;
    v62 = &block_descriptor_22_0;
    v39 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v20, v17, v39);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  v27 = tcc_message_options_create();
  v15 = v51;
  if (v27)
  {
    aBlock = a2;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    if (tcc_credential_create_for_process_with_audit_token())
    {
      tcc_message_options_set_request_prompt_policy();
      tcc_message_options_set_reply_handler_policy();
      v28 = swift_allocObject();
      v29 = v57;
      v28[2] = v56;
      v28[3] = v29;
      v28[4] = v26;
      v63 = sub_185AF3180;
      v64 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_185AEEB14;
      v62 = &block_descriptor_40;
      v30 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      tcc_server_message_request_authorization();
      _Block_release(v30);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease_n();
    }

    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v47 = swift_allocObject();
    v48 = v57;
    *(v47 + 16) = v56;
    *(v47 + 24) = v48;
    v63 = sub_185AF3178;
    v64 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_185ACA0E8;
    v62 = &block_descriptor_34;
    v49 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v20, v17, v49);
    swift_unknownObjectRelease();
    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v44 = swift_allocObject();
    v45 = v57;
    *(v44 + 16) = v56;
    *(v44 + 24) = v45;
    v63 = sub_185AF3170;
    v64 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_185ACA0E8;
    v62 = &block_descriptor_28_0;
    v46 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v20, v17, v46);
    swift_unknownObjectRelease();
    _Block_release(v46);
  }

  swift_unknownObjectRelease();
LABEL_20:
  (*(v53 + 8))(v17, v15);
  (*(v54 + 8))(v20, v55);
}

void sub_185AEE708(void (*a1)(id, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_185B6836C();

  MEMORY[0x1865FCF60](a3, a4);
  v7 = sub_185B21B1C(12, 0xD000000000000021, 0x8000000185B75380, 65, 0xD00000000000005DLL, 0x8000000185B752C0);

  a1(v7, 1);
}

void sub_185AEE7F0(void (*a1)(id, uint64_t))
{
  v2 = sub_185B21B1C(12, 0xD00000000000001BLL, 0x8000000185B75360, 71, 0xD00000000000005DLL, 0x8000000185B752C0);
  a1(v2, 1);
}

void sub_185AEE880(void (*a1)(id, uint64_t))
{
  v2 = sub_185B21B1C(12, 0xD00000000000001CLL, 0x8000000185B75340, 77, 0xD00000000000005DLL, 0x8000000185B752C0);
  a1(v2, 1);
}

void sub_185AEE914(void (*a1)(id, uint64_t))
{
  v2 = sub_185B21B1C(12, 0xD00000000000001FLL, 0x8000000185B75320, 83, 0xD00000000000005DLL, 0x8000000185B752C0);
  a1(v2, 1);
}

void sub_185AEE9A4(uint64_t a1, void *a2, void (*a3)(_BOOL8, uint64_t))
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v4 = tcc_authorization_record_get_authorization_reason() == 11;
    a3(v4, 0);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      type metadata accessor for CFError(0);
      sub_185AF3800(&qword_1EA8CCFA0, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      v6 = swift_allocError();
      *v7 = a2;
      v8 = a2;
      a3(v6, 1);
    }

    else
    {
      v8 = sub_185B21B1C(35, 0xD00000000000004BLL, 0x8000000185B75270, 94, 0xD00000000000005DLL, 0x8000000185B752C0);
      a3(v8, 1);
    }
  }
}

uint64_t sub_185AEEB14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_185AEEB94(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x1865FE700](a2);
  if (v7 != sub_185B67BCC())
  {
    return 1;
  }

  v9 = MEMORY[0x1865FE700](a2);
  if (v9 != sub_185B67BCC())
  {
    goto LABEL_9;
  }

  if (!xpc_string_get_string_ptr(a2))
  {
    __break(1u);
LABEL_9:
    result = sub_185B6842C();
    __break(1u);
    return result;
  }

  v13[0] = sub_185B67F1C();
  v13[1] = v10;
  MEMORY[0x1EEE9AC00](v13[0]);
  v12[2] = v13;
  v11 = sub_185AF13AC(sub_185AF30D4, v12, a3);

  result = 1;
  if (v11)
  {
    *a4 = 1;
    return 0;
  }

  return result;
}

uint64_t sub_185AEECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_185AEED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_185B67C9C();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_185B67CDC();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a5)
  {
    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;
    v37 = sub_185AF3758;
    v38 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185ACA0E8;
    v36 = &block_descriptor_76;
    v22 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v32 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v15, v12, v22);
    v23 = v22;
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  if (!tcc_message_options_create())
  {
    if (qword_1EA8CB720 != -1)
    {
      swift_once();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v37 = sub_185AF3760;
    v38 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185ACA0E8;
    v36 = &block_descriptor_82;
    v25 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v32 = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v15, v12, v25);
    swift_unknownObjectRelease();
    v23 = v25;
LABEL_11:
    _Block_release(v23);
    goto LABEL_12;
  }

  v28[1] = a5;
  sub_185B67ECC();
  v16 = tcc_service_singleton_for_name();

  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = MEMORY[0x1E69E7CC0];
    tcc_message_options_set_request_prompt_policy();
    tcc_message_options_set_reply_handler_policy();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a3;
    v18[4] = a4;
    v37 = sub_185AF37F4;
    v38 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_185AEEB14;
    v36 = &block_descriptor_97;
    v19 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    tcc_server_message_get_authorization_records_by_service();
    _Block_release(v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease_n();
  }

  if (qword_1EA8CB720 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a1;
  v26[5] = a2;
  v37 = sub_185AF37A8;
  v38 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_185ACA0E8;
  v36 = &block_descriptor_88;
  v27 = _Block_copy(&aBlock);

  sub_185B67CBC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v15, v12, v27);
  swift_unknownObjectRelease();
  _Block_release(v27);
  swift_unknownObjectRelease();
LABEL_12:
  (*(v31 + 8))(v12, v10);
  (*(v29 + 8))(v15, v30);
}

void sub_185AEF4D4(void (*a1)(id, uint64_t))
{
  v2 = sub_185B21B1C(12, 0xD00000000000001BLL, 0x8000000185B75360, 187, 0xD00000000000002BLL, 0x8000000185B753F0);
  a1(v2, 1);
}

void sub_185AEF564(void (*a1)(id, uint64_t))
{
  v2 = sub_185B21B1C(12, 0xD00000000000001CLL, 0x8000000185B75340, 193, 0xD00000000000002BLL, 0x8000000185B753F0);
  a1(v2, 1);
}

void sub_185AEF5F4(void (*a1)(id, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_185B6836C();

  MEMORY[0x1865FCF60](a3, a4);
  v7 = sub_185B21B1C(12, 0xD000000000000021, 0x8000000185B75380, 201, 0xD00000000000002BLL, 0x8000000185B753F0);

  a1(v7, 1);
}

void sub_185AEF6E0(char **a1, void *a2, void *a3, void (*a4)(void *, uint64_t), char *a5)
{
  v109 = a3;
  v113[3] = *MEMORY[0x1E69E9840];
  v9 = sub_185B67A0C();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v15);
  if (!a1)
  {
    v110 = a5;
    v107 = a4;
    if (a2)
    {
      type metadata accessor for CFError(0);
      sub_185AF3800(&qword_1EA8CCFA0, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      v20 = swift_allocError();
      *v21 = a2;
      v109 = a2;
      v107(v20, 1);

      v22 = v109;
    }

    else
    {
      v23 = v109;
      swift_beginAccess();
      v24 = v23[2];
      v25 = MEMORY[0x1E69E7CC0];
      v111 = MEMORY[0x1E69E7CC0];
      v26 = *(v24 + 16);

      v9 = v107;
      if (v26)
      {
        v17 = 0;
        v29 = v27 + 5;
        v108 = v26;
        v103 = v26 - 1;
        v105 = MEMORY[0x1E69E7CC0];
        *&v28 = 136315394;
        v106 = v28;
        v109 = v27;
        v104 = v27 + 5;
        do
        {
          v30 = &v29[2 * v17];
          v31 = v17;
          while (1)
          {
            if (v31 >= v27[2])
            {
              __break(1u);
              goto LABEL_67;
            }

            v32 = *(v30 - 1);
            v13 = *v30;
            v17 = v31 + 1;
            v33 = objc_allocWithZone(MEMORY[0x1E69635F8]);

            v34 = sub_185B67E1C();

            v112 = 0;
            v35 = [v33 initWithBundleIdentifier:v34 allowPlaceholder:1 error:&v112];

            if (v35)
            {
              break;
            }

            v36 = v112;
            v37 = sub_185B6792C();

            swift_willThrow();
            if (qword_1ED6F4CB0 != -1)
            {
              swift_once();
            }

            v38 = sub_185B67B8C();
            __swift_project_value_buffer(v38, qword_1ED6F5130);

            v39 = v37;
            v40 = sub_185B67B6C();
            v41 = sub_185B6808C();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v112 = v44;
              *v42 = v106;
              *(v42 + 4) = sub_185ACB2C4(v32, v13, &v112);
              *(v42 + 12) = 2112;
              v45 = v37;
              v46 = _swift_stdlib_bridgeErrorToNSError();
              *(v42 + 14) = v46;
              *v43 = v46;
              _os_log_impl(&dword_185AC1000, v40, v41, "Couldn't find record for %s: %@", v42, 0x16u);
              sub_185AC3F6C(v43);
              MEMORY[0x1865FE2F0](v43, -1, -1);
              __swift_destroy_boxed_opaque_existential_0Tm(v44);
              v47 = v44;
              v9 = v107;
              MEMORY[0x1865FE2F0](v47, -1, -1);
              MEMORY[0x1865FE2F0](v42, -1, -1);
            }

            else
            {
            }

            v27 = v109;
            v30 += 2;
            v31 = v17;
            if (v108 == v17)
            {
              goto LABEL_44;
            }
          }

          MEMORY[0x1865FCFA0](v112);
          if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_185B67F8C();
          }

          sub_185B67FAC();
          v105 = v111;
          v29 = v104;
          v27 = v109;
        }

        while (v103 != v31);
      }

      else
      {
        v105 = v25;
      }

LABEL_44:

      (v9)(v105, 0);
    }

    return;
  }

  v110 = &v102 - v18;
  swift_unknownObjectRetain();
  authorization_right = tcc_authorization_record_get_authorization_right();
  if (authorization_right <= 4)
  {
    if (authorization_right >= 2)
    {
      goto LABEL_31;
    }

LABEL_40:

    swift_unknownObjectRelease();
    return;
  }

  if (authorization_right == 5)
  {
    v108 = v10;
    if (qword_1ED6F4CB0 != -1)
    {
LABEL_67:
      swift_once();
    }

    v48 = sub_185B67B8C();
    __swift_project_value_buffer(v48, qword_1ED6F5130);
    v49 = sub_185B67B6C();
    v50 = sub_185B6808C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v107 = v9;
      v52 = v51;
      *v51 = 134217984;
      *(v51 + 4) = 5;
      _os_log_impl(&dword_185AC1000, v49, v50, "found unexpected authorization right value %llu; assuming it represents an access", v51, 0xCu);
      v53 = v52;
      v9 = v107;
      MEMORY[0x1865FE2F0](v53, -1, -1);
    }

    v10 = v108;
  }

  else if (authorization_right == 6)
  {
    goto LABEL_40;
  }

LABEL_31:
  v54 = tcc_authorization_record_get_subject_identity();
  if (!v54)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v64 = sub_185B67B8C();
    __swift_project_value_buffer(v64, qword_1ED6F5130);
    v65 = sub_185B67B6C();
    v66 = sub_185B6808C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_185AC1000, v65, v66, "tcc_authorization_record_get_subject_identity returned NULL", v67, 2u);
      MEMORY[0x1865FE2F0](v67, -1, -1);
    }

    goto LABEL_40;
  }

  v107 = v9;
  v108 = v10;
  v55 = v54;
  tcc_identity_get_identifier();
  v56 = sub_185B67F1C();
  v58 = v57;
  *&v106 = v55;
  type = tcc_identity_get_type();
  if (type)
  {
    v60 = type;
    if (type == 1)
    {
      v61 = v110;
      sub_185B6797C();

      v62 = *(v108 + 16);
      v62(v17, v61, v107);
      v63 = objc_allocWithZone(MEMORY[0x1E69635F8]);
      v105 = sub_185AF19A4(v17, 1);
      v78 = [v105 bundleIdentifier];
      if (v78)
      {
        v79 = v78;
        v80 = sub_185B67E4C();
        v82 = v81;

        v83 = v109;
        swift_beginAccess();
        v84 = v83[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[2] = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_185B3C8D8(0, *(v84 + 2) + 1, 1, v84);
          v83[2] = v84;
        }

        v87 = *(v84 + 2);
        v86 = *(v84 + 3);
        if (v87 >= v86 >> 1)
        {
          v84 = sub_185B3C8D8((v86 > 1), v87 + 1, 1, v84);
        }

        *(v84 + 2) = v87 + 1;
        v88 = &v84[16 * v87];
        *(v88 + 4) = v80;
        *(v88 + 5) = v82;
        v83[2] = v84;
        swift_endAccess();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v108 + 8))(v110, v107);
      }

      else
      {
        if (qword_1ED6F4CB0 != -1)
        {
          swift_once();
        }

        v89 = sub_185B67B8C();
        __swift_project_value_buffer(v89, qword_1ED6F5130);
        v90 = v110;
        v91 = v107;
        v62(v13, v110, v107);
        v92 = sub_185B67B6C();
        v93 = sub_185B680AC();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v113[0] = v109;
          *v94 = 136315138;
          sub_185AF3800(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v95 = sub_185B6856C();
          v97 = v96;
          v98 = *(v108 + 8);
          v98(v13, v91);
          v99 = sub_185ACB2C4(v95, v97, v113);

          *(v94 + 4) = v99;
          _os_log_impl(&dword_185AC1000, v92, v93, "app at %s had no identifier", v94, 0xCu);
          v100 = v109;
          __swift_destroy_boxed_opaque_existential_0Tm(v109);
          MEMORY[0x1865FE2F0](v100, -1, -1);
          MEMORY[0x1865FE2F0](v94, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v98(v110, v91);
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v101 = *(v108 + 8);
          v101(v13, v91);
          v101(v90, v91);
        }
      }

      return;
    }

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v74 = sub_185B67B8C();
    __swift_project_value_buffer(v74, qword_1ED6F5130);
    v75 = sub_185B67B6C();
    v76 = sub_185B6808C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134217984;
      *(v77 + 4) = v60;
      _os_log_impl(&dword_185AC1000, v75, v76, "ignoring identity of type %llu", v77, 0xCu);
      MEMORY[0x1865FE2F0](v77, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v68 = v109;
  swift_beginAccess();
  v69 = v68[2];
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v68[2] = v69;
  if ((v70 & 1) == 0)
  {
    v69 = sub_185B3C8D8(0, *(v69 + 2) + 1, 1, v69);
    v68[2] = v69;
  }

  v72 = *(v69 + 2);
  v71 = *(v69 + 3);
  if (v72 >= v71 >> 1)
  {
    v69 = sub_185B3C8D8((v71 > 1), v72 + 1, 1, v69);
  }

  *(v69 + 2) = v72 + 1;
  v73 = &v69[16 * v72];
  *(v73 + 4) = v56;
  *(v73 + 5) = v58;
  v68[2] = v69;
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_185AF0624()
{
  if (qword_1EA8CB720 != -1)
  {
    swift_once();
  }

  result = tcc_server_create();
  qword_1EA8D2318 = result;
  return result;
}

id sub_185AF06AC()
{
  result = [objc_allocWithZone(APTCCManager) init];
  qword_1EA8CCF70 = result;
  return result;
}

APTCCManager __swiftcall APTCCManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_185AF0984(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_185ADF590(0, &qword_1EA8CCFA8, 0x1E69635F8);
    v5 = sub_185B67F5C();
  }

  if (a2)
  {
    v6 = sub_185B6791C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_185AF0A30(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6)
{
  v12 = sub_185B67C9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_185B67CDC();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = v13;
    v47 = a4;
    v49 = a5;
    v50 = a6;
    v44 = v18;
    v45 = v17;
    v43 = a3;
    if (a1 >> 62)
    {
      v21 = sub_185B6844C();
      v48 = v12;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = v12;
      if (v21)
      {
LABEL_4:
        if (v21 >= 1)
        {

          v22 = 0;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1865FD3E0](v22, a1);
            }

            else
            {
              v23 = *(a1 + 8 * v22 + 32);
            }

            ++v22;
            v24 = v23;

            [v24 detach];
          }

          while (v21 != v22);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

LABEL_21:
    sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
    v35 = sub_185B680FC();
    v36 = swift_allocObject();
    v37 = v43;
    v36[2] = a1;
    v36[3] = v37;
    v39 = v49;
    v38 = v50;
    v36[4] = v47;
    v36[5] = v39;
    v36[6] = v38;
    aBlock[4] = sub_185AF3704;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_64;
    v40 = _Block_copy(aBlock);

    v41 = v38;

    sub_185B67CBC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v42 = v48;
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v20, v15, v40);
    _Block_release(v40);

    (*(v46 + 8))(v15, v42);
    (*(v44 + 8))(v20, v45);
    return;
  }

  if (qword_1EA8CB718 != -1)
  {
LABEL_23:
    swift_once();
  }

  v25 = sub_185B67B8C();
  __swift_project_value_buffer(v25, qword_1EA8D2278);

  v26 = a2;
  v27 = sub_185B67B6C();
  v28 = sub_185B680AC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v29 = 136315394;
    *(v29 + 4) = sub_185ACB2C4(a4, a5, aBlock);
    *(v29 + 12) = 2112;
    if (a2)
    {
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v29 + 14) = v33;
    *v30 = v34;
    _os_log_impl(&dword_185AC1000, v27, v28, "couldn't get records for %s: %@", v29, 0x16u);
    sub_185AC3F6C(v30);
    MEMORY[0x1865FE2F0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1865FE2F0](v31, -1, -1);
    MEMORY[0x1865FE2F0](v29, -1, -1);
  }

  dispatch_group_leave(a6);
}

void sub_185AF0FE0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v6 = a1;
  v33 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_40:
    v7 = sub_185B6844C();
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  v41 = v6 & 0xC000000000000001;
  swift_beginAccess();
  v8 = 0;
  v37 = v6 + 32;
  v38 = v6 & 0xFFFFFFFFFFFFFF8;
  v39 = v7;
  v40 = v6;
  while (1)
  {
LABEL_5:
    if (v41)
    {
      v9 = MEMORY[0x1865FD3E0](v8, v6);
    }

    else
    {
      if (v8 >= *(v38 + 16))
      {
        goto LABEL_39;
      }

      v9 = *(v37 + 8 * v8);
    }

    v10 = v9;
    if (__OFADD__(v8++, 1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v12 = [v9 bundleIdentifier];
    if (v12)
    {
      break;
    }

    if (v8 == v7)
    {
      goto LABEL_28;
    }
  }

  v13 = v12;
  v14 = sub_185B67E4C();
  v16 = v15;

  v6 = 0;
  v17 = *(a2 + 16);
  v18 = 1 << *(v17 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v22 >= v21)
        {
          swift_beginAccess();
          v25 = v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(a2 + 16);
          *(a2 + 16) = 0x8000000000000000;
          sub_185B52218(v25, v14, v16, isUniquelyReferenced_nonNull_native);

          *(a2 + 16) = v42;
          swift_endAccess();

          goto LABEL_27;
        }

        v20 = *(v17 + 64 + 8 * v22);
        ++v6;
        if (v20)
        {
          v6 = v22;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_20:
    v23 = (*(v17 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v20)))));
    if (*v23 == v14 && v23[1] == v16)
    {
      break;
    }

    v20 &= v20 - 1;
  }

  while ((sub_185B6859C() & 1) == 0);

LABEL_27:
  v7 = v39;
  v6 = v40;
  if (v8 != v39)
  {
    goto LABEL_5;
  }

LABEL_28:
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v27 = sub_185B67B8C();
  __swift_project_value_buffer(v27, qword_1EA8D2278);

  v28 = sub_185B67B6C();
  v29 = sub_185B680AC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v30 = 134218242;
    if (v33)
    {
      v32 = sub_185B6844C();
    }

    else
    {
      v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v32;

    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_185ACB2C4(a3, a4, v43);
    _os_log_impl(&dword_185AC1000, v28, v29, "%ld users for service %s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1865FE2F0](v31, -1, -1);
    MEMORY[0x1865FE2F0](v30, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(a5);
}

uint64_t sub_185AF13AC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_185AF1458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_185ADF590(0, &qword_1EA8CCFA8, 0x1E69635F8);
    v4 = sub_185B67F6C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_185AF14FC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v6 = a2;
  v7 = sub_185B2D134(v5, 0);
  v8 = sub_185B2D1BC(&v11, v7 + 4, v5, v4);
  v9 = v11;
  swift_bridgeObjectRetain_n();
  sub_185AF36FC(v9);
  if (v8 == v5)
  {
    a2 = v6;
LABEL_5:
    v11 = v7;
    sub_185AF1AF8(&v11);

    a2(v11);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_185AF163C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185B67E4C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [v2 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_185B67E4C();
    v12 = v11;

    if (v5 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v5)
    {
LABEL_10:
      v13 = sub_185B6859C();
      goto LABEL_11;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13 & 1;
}

void sub_185AF17D8(uint64_t a1, uint64_t a2)
{
  sub_185ADF590(0, &qword_1EA8CCFA8, 0x1E69635F8);
  v3 = sub_185B67F5C();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_185AF18E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_185AF1944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_185AF19A4(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_185B6799C();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_185B67A0C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_185B6792C();

    swift_willThrow();
    v13 = sub_185B67A0C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_185AF1AF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_185AF2C90(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_185AF1B74(v6);
  return sub_185B683CC();
}

uint64_t sub_185AF1B74(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_185B6855C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_185ADF590(0, &qword_1EA8CCFA8, 0x1E69635F8);
        v6 = sub_185B67F9C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_185AF1E38(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_185AF1C88(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_185AF1C88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &off_1E6EE9000;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[61]];
      if (v11)
      {
        v12 = v11;
        v13 = sub_185B67E4C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = [v10 v6[61]];
      if (v16)
      {
        v17 = v16;
        v18 = sub_185B67E4C();
        v20 = v19;

        if (v13 != v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (v15 == v20)
      {

        v6 = &off_1E6EE9000;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v21 = sub_185B6859C();

      v6 = &off_1E6EE9000;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_185AF1E38(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
LABEL_117:
      v121 = v98;
      v4 = *(v98 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v99 = *&v98[16 * v4];
          v100 = v98;
          v101 = *&v98[16 * v4 + 24];
          sub_185AF2690((*a3 + 8 * v99), (*a3 + 8 * *&v98[16 * v4 + 16]), (*a3 + 8 * v101), v5);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v101 < v99)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_185AF2B78(v100);
          }

          if (v4 - 2 >= *(v100 + 2))
          {
            goto LABEL_143;
          }

          v102 = &v100[16 * v4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v121 = v100;
          sub_185AF2AEC(v4 - 1);
          v98 = v121;
          v4 = *(v121 + 2);
          if (v4 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_153;
      }

LABEL_125:

      return;
    }

LABEL_149:
    v98 = sub_185AF2B78(v4);
    goto LABEL_117;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &off_1E6EE9000;
LABEL_4:
  v10 = v7;
  v11 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_33;
  }

  v106 = v8;
  v4 = *a3;
  v120 = *(*a3 + 8 * v11);
  v119 = *(v4 + 8 * v7);
  v12 = v119;
  v13 = v120;
  v5 = v12;
  v117 = sub_185AF163C(&v120, &v119);
  if (v116)
  {

    return;
  }

  v11 = v7 + 2;
  if (v7 + 2 >= v6)
  {
    v8 = v106;
    if (v117)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v114 = v7 + 2;
  v103 = v7;
  v4 += 8 * v7 + 16;
  v111 = v6;
  while (1)
  {
    v15 = *(v4 - 8);
    v16 = *v4;
    v17 = v15;
    v18 = [v16 v9[61]];
    if (v18)
    {
      v19 = v18;
      v20 = sub_185B67E4C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = [v17 bundleIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = sub_185B67E4C();
      v5 = v26;

      if (v20 != v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (v22 == v5)
    {

      if (v117)
      {
        v8 = v106;
        v9 = &off_1E6EE9000;
        v11 = v114;
        v10 = v103;
        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_8:
    v14 = sub_185B6859C();

    if ((v117 ^ v14))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    ++v114;
    v9 = &off_1E6EE9000;
    if (v111 == v114)
    {
      v11 = v111;
      v8 = v106;
      goto LABEL_24;
    }
  }

  v8 = v106;
  v9 = &off_1E6EE9000;
  v11 = v114;
LABEL_24:
  v10 = v103;
  if (v117)
  {
LABEL_25:
    if (v11 < v10)
    {
      goto LABEL_146;
    }

    if (v10 < v11)
    {
      v27 = v11;
      v28 = 8 * v11 - 8;
      v29 = 8 * v10;
      v30 = v10;
      do
      {
        if (v30 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v31 = *(v32 + v29);
          *(v32 + v29) = *(v32 + v28);
          *(v32 + v28) = v31;
        }

        ++v30;
        v28 -= 8;
        v29 += 8;
      }

      while (v30 < v27);
    }
  }

LABEL_33:
  v33 = a3[1];
  v7 = v11;
  if (v11 >= v33)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_145;
  }

  if (v11 - v10 >= a4)
  {
LABEL_41:
    v7 = v11;
LABEL_42:
    if (v7 < v10)
    {
      goto LABEL_144;
    }

    goto LABEL_43;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_147;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v11 == v34)
  {
    goto LABEL_41;
  }

  v107 = v8;
  v118 = *a3;
  v4 = *a3 + 8 * v11 - 8;
  v104 = v10;
  v81 = v10 - v11;
  v109 = v34;
  while (2)
  {
    v115 = v11;
    v82 = *(v118 + 8 * v11);
    v110 = v81;
    v112 = v4;
LABEL_96:
    v83 = *v4;
    v84 = v82;
    v85 = v83;
    v86 = [v84 v9[61]];
    if (v86)
    {
      v87 = v86;
      v88 = sub_185B67E4C();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = [v85 v9[61]];
    if (!v91)
    {
      v5 = 0xE000000000000000;
      if (v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      if (v90 != v5)
      {
        goto LABEL_104;
      }

LABEL_94:
      v11 = v115 + 1;
      v4 = v112 + 8;
      v81 = v110 - 1;
      if (v115 + 1 != v109)
      {
        continue;
      }

      v7 = v109;
      v8 = v107;
      v10 = v104;
      if (v109 < v104)
      {
        goto LABEL_144;
      }

LABEL_43:
      v35 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v35;
      }

      else
      {
        v8 = sub_185AF2B8C(0, *(v35 + 2) + 1, 1, v35);
      }

      v4 = *(v8 + 2);
      v36 = *(v8 + 3);
      v37 = v4 + 1;
      if (v4 >= v36 >> 1)
      {
        v8 = sub_185AF2B8C((v36 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v37;
      v38 = &v8[16 * v4];
      *(v38 + 4) = v10;
      *(v38 + 5) = v7;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v4)
      {
        while (2)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            v45 = &v8[16 * v37 + 32];
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_131;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_132;
            }

            v52 = &v8[16 * v37];
            v54 = *v52;
            v53 = *(v52 + 1);
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_134;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_137;
            }

            if (v56 >= v48)
            {
              v74 = &v8[16 * v40 + 32];
              v76 = *v74;
              v75 = *(v74 + 1);
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_141;
              }

              if (v43 < v77)
              {
                v40 = v37 - 2;
              }
            }

            else
            {
LABEL_62:
              if (v44)
              {
                goto LABEL_133;
              }

              v57 = &v8[16 * v37];
              v59 = *v57;
              v58 = *(v57 + 1);
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_136;
              }

              v63 = &v8[16 * v40 + 32];
              v65 = *v63;
              v64 = *(v63 + 1);
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_140;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_76;
              }

              if (v43 < v66)
              {
                v40 = v37 - 2;
              }
            }
          }

          else
          {
            if (v37 == 3)
            {
              v41 = *(v8 + 4);
              v42 = *(v8 + 5);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_62;
            }

            v67 = &v8[16 * v37];
            v69 = *v67;
            v68 = *(v67 + 1);
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_76:
            if (v62)
            {
              goto LABEL_135;
            }

            v70 = &v8[16 * v40];
            v72 = *(v70 + 4);
            v71 = *(v70 + 5);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_138;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v4 = v40 - 1;
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_151;
          }

          v5 = v8;
          v78 = *&v8[16 * v4 + 32];
          v79 = *&v8[16 * v40 + 40];
          sub_185AF2690((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v79 < v78)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_185AF2B78(v5);
          }

          if (v4 >= *(v5 + 2))
          {
            goto LABEL_130;
          }

          v80 = &v5[16 * v4];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v121 = v5;
          sub_185AF2AEC(v40);
          v8 = v121;
          v37 = *(v121 + 2);
          if (v37 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_114;
      }

      goto LABEL_4;
    }

    break;
  }

  v92 = v91;
  v93 = sub_185B67E4C();
  v5 = v94;

  v9 = &off_1E6EE9000;
  if (v88 == v93)
  {
    goto LABEL_103;
  }

LABEL_104:
  v95 = sub_185B6859C();

  if ((v95 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v118)
  {
    v96 = *v4;
    v82 = *(v4 + 8);
    *v4 = v82;
    *(v4 + 8) = v96;
    v4 -= 8;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_185AF2690(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_28:
      v5 = v6;
      goto LABEL_56;
    }

    v14 = &off_1E6EE9000;
    v56 = v4;
    while (1)
    {
      v58 = v6;
      v60 = v5;
      v15 = *v13;
      v16 = *v5;
      v17 = v15;
      v18 = [v16 v14[61]];
      if (v18)
      {
        v19 = v18;
        v20 = sub_185B67E4C();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = v14;
      v24 = [v17 v14[61]];
      if (v24)
      {
        v25 = v24;
        v26 = sub_185B67E4C();
        v28 = v27;

        if (v20 != v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_21;
        }
      }

      if (v22 == v28)
      {

LABEL_24:
        v31 = v13;
        v30 = v58;
        v5 = v60;
        v33 = v58 == v13++;
        v32 = v56;
        if (v33)
        {
          goto LABEL_26;
        }

LABEL_25:
        *v30 = *v31;
        goto LABEL_26;
      }

LABEL_21:
      v29 = sub_185B6859C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = v58;
      v31 = v60;
      v5 = v60 + 1;
      v32 = v56;
      if (v58 != v60)
      {
        goto LABEL_25;
      }

LABEL_26:
      v6 = v30 + 1;
      if (v13 < v62)
      {
        v14 = v23;
        if (v5 < v32)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    v34 = a4;
    memmove(a4, __src, 8 * v12);
    a4 = v34;
  }

  v62 = &a4[v12];
  v13 = a4;
  if (v10 >= 8 && v5 > v6)
  {
    v35 = &off_1E6EE9000;
    v55 = a4;
    v59 = v6;
LABEL_36:
    v61 = v5;
    v36 = v5 - 1;
    v37 = v4;
    v38 = v62;
    v57 = v5 - 1;
    while (1)
    {
      v39 = *--v38;
      v40 = *v36;
      v41 = v39;
      v42 = v40;
      v43 = [v41 v35[61]];
      if (v43)
      {
        v44 = v43;
        v45 = sub_185B67E4C();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v42 v35[61]];
      if (v48)
      {
        v49 = v48;
        v50 = sub_185B67E4C();
        v52 = v51;

        if (v45 != v50)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v52 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      if (v47 != v52)
      {
LABEL_47:
        v53 = sub_185B6859C();

        v4 = v37 - 1;
        if (v53)
        {
          v13 = v55;
          v35 = &off_1E6EE9000;
          if (v37 != v61)
          {
            *v4 = *v57;
          }

          if (v62 <= v55 || (v5 = v57, v57 <= v59))
          {
            v5 = v57;
            break;
          }

          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v4 = v37 - 1;
LABEL_48:
      v13 = v55;
      v36 = v57;
      v35 = &off_1E6EE9000;
      if (v62 != v37)
      {
        *v4 = *v38;
      }

      v62 = v38;
      v37 = v4;
      if (v38 <= v55)
      {
        v62 = v38;
        v5 = v61;
        break;
      }
    }
  }

LABEL_56:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v62 - v13));
  }

  return 1;
}

uint64_t sub_185AF2AEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_185AF2B78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_185AF2B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCFB0, &qword_185B6E8D0);
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