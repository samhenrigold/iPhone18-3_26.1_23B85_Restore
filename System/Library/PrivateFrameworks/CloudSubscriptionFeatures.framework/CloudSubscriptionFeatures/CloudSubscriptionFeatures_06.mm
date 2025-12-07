uint64_t sub_1DF5107E0()
{
  v1 = sub_1DF50AF70(0, sub_1DF510958, 0);
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF47C000, v3, v4, "Revalidating CFU", v5, 2u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  [v1 revalidateCFU];
  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6();
}

void sub_1DF510958(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  oslog = sub_1DF564794();
  v4 = sub_1DF564C24();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1DF47EF6C(0x6164696C61766572, 0xEF29285546436574, &v11);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v7 = sub_1DF5651B4();
    v9 = sub_1DF47EF6C(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1DF47C000, oslog, v4, "Remote proxy error in %s: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1DF510B34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1DF513478;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF510DA0;
  aBlock[3] = &block_descriptor_49;
  v10 = _Block_copy(aBlock);

  [a1 verifyDeviceIsEligibleForWaitlistCFUWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_1DF510CE4(Swift::Int a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    FollowUp.WaitlistCFUEligibilityResult.init(rawValue:)(a1);
    if (v5 != 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
      return sub_1DF564B24();
    }

    sub_1DF498474();
    swift_allocError();
    *v3 = 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
  return sub_1DF564B14();
}

void sub_1DF510DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DF510E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *(v3 + 16);
  v19 = a1;
  v17 = v8;
  v8(&v17 - v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v10 + v9, v7, v2);
  v12 = sub_1DF50AF70(0, sub_1DF513668, v10);

  v13 = v18;
  v17(v18, v19, v2);
  v14 = swift_allocObject();
  v11(v14 + v9, v13, v2);
  aBlock[4] = sub_1DF513690;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_92;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 gmOptInToggleWithCompletion_];
  swift_unknownObjectRelease();
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF511230(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0x546E4974704F6D67, 0xEF2928656C67676FLL, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF511434(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 67109378;
    *(v8 + 4) = a1 & 1;
    *(v8 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38178, &qword_1DF56B9E8);
    v10 = sub_1DF564CF4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 10) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Received GM Opt-In toggle value from XPC. Value %{BOOL}d, error: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  if (a2)
  {
    v15 = v5;
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    LOBYTE(v15) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF511620(void *a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = a1;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000030, 0x80000001DF5746C0, &v24);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    v22 = v10;
    *v10 = a1;
    *(v9 + 22) = 2080;
    v11 = v6;
    if (a2)
    {
      v12 = [v5 localizedDescription];
      v13 = sub_1DF564944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1DF47EF6C(v13, v15, &v24);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "received %s response, result: %@, error: %s", v9, 0x20u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  if (a2)
  {
    v24 = v5;
    v17 = v5;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    sub_1DF498474();
    v20 = swift_allocError();
    *v21 = 4;
    v24 = v20;
    goto LABEL_10;
  }

  v24 = v6;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B24();
}

void sub_1DF511918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v19 = a1;
  v20 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = sub_1DF564914();
  (*(v12 + 16))(v14, a2, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  aBlock[4] = a6;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);

  [v19 *v20];
  _Block_release(v18);
}

uint64_t sub_1DF511ADC(void *a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = a1;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DF47EF6C(0xD00000000000002DLL, 0x80000001DF574690, &v24);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    v22 = v10;
    *v10 = a1;
    *(v9 + 22) = 2080;
    v11 = v6;
    if (a2)
    {
      v12 = [v5 localizedDescription];
      v13 = sub_1DF564944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1DF47EF6C(v13, v15, &v24);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "received %s response, result: %@, error: %s", v9, 0x20u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  if (a2)
  {
    v24 = v5;
    v17 = v5;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    sub_1DF498474();
    v20 = swift_allocError();
    *v21 = 4;
    v24 = v20;
    goto LABEL_10;
  }

  v24 = v6;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B24();
}

uint64_t sub_1DF511DD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF511DF4, 0, 0);
}

uint64_t sub_1DF511DF4()
{
  if (os_variant_has_internal_ui())
  {
    v1 = v0[2];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v1;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v4[2] = v2;
    v4[3] = sub_1DF51362C;
    v4[4] = v3;
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1DF511F58;
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513634, v4, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DF511F58()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DF51207C;
  }

  else
  {

    v2 = sub_1DF513F6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF51207C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF5120E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a2, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1DF513640;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_83;
  v12 = _Block_copy(aBlock);

  [a1 performInternalValidationForFeature:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DF5122A0(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000034, 0x80000001DF5744C0, &v15);
    *(v6 + 12) = 2080;
    if (a1)
    {
      v8 = [v3 localizedDescription];
      v9 = sub_1DF564944();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_1DF47EF6C(v9, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1DF47C000, v4, v5, "received %s response, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  if (a1)
  {
    v15 = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF5124D0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 73) = a4;
  *(v5 + 72) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DF512500, 0, 0);
}

uint64_t sub_1DF512500()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v6 + 41) = v3;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = type metadata accessor for CloudFeature(0);
  *v7 = v0;
  v7[1] = sub_1DF48E3A0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001DF5743D0, sub_1DF484EB8, v6, v8);
}

void sub_1DF512624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v12 = sub_1DF49207C();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v43 = sub_1DF513FE0;
  v44 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1DF50AF08;
  v42 = &block_descriptor_187;
  v14 = _Block_copy(&aBlock);

  v15 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v16 = OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection;
    v17 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection];
    v43 = sub_1DF512CF0;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF48EC24;
    v42 = &block_descriptor_190;
    v18 = _Block_copy(&aBlock);
    v19 = v17;
    [v19 setInterruptionHandler_];
    _Block_release(v18);

    v20 = *&v7[v16];
    v43 = sub_1DF48EC68;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF48EC24;
    v42 = &block_descriptor_193;
    v21 = _Block_copy(&aBlock);
    v22 = v20;
    [v22 setInvalidationHandler_];
    _Block_release(v21);

    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED956398);
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DF47C000, v24, v25, "sending eligibility request ...", v26, 2u);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v27 = sub_1DF564914();
    v28 = sub_1DF564914();
    v29 = swift_allocObject();
    v29[2] = a1;
    v29[3] = a2;
    v29[4] = v7;
    v29[5] = a5;
    v29[6] = a6;
    v43 = sub_1DF513FDC;
    v44 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF49BC74;
    v42 = &block_descriptor_200;
    v30 = _Block_copy(&aBlock);

    v31 = v7;

    [v38 getFeatureEligibilityFor:v27 bundleID:v28 completion:v30];
    _Block_release(v30);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF5647B4();
    __swift_project_value_buffer(v32, qword_1ED956398);
    v33 = sub_1DF564794();
    v34 = sub_1DF564C24();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DF47C000, v33, v34, "Proxy object has the wrong type", v35, 2u);
      MEMORY[0x1E12D75F0](v35, -1, -1);
    }

    sub_1DF498474();
    v36 = swift_allocError();
    *v37 = 1;
    a5(v36, 1);
  }
}

uint64_t sub_1DF512B5C(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Cannot get remote proxy object: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  return a2(a1, 1);
}

void sub_1DF512D10(void *a1, void (*a2)(void *, uint64_t))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "remote proxy error [geoclassification request]: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  sub_1DF498474();
  v13 = swift_allocError();
  *v14 = 1;
  a2(v13, 1);
}

void sub_1DF512EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(void, void *), uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;

  v13 = sub_1DF49207C();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DF513FD4;
  *(v14 + 24) = v12;
  v44 = sub_1DF513FE0;
  v45 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1DF50AF08;
  v43 = &block_descriptor_167;
  v15 = _Block_copy(&aBlock);

  v16 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v17 = OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection;
    v18 = *&a5[OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection];
    v44 = sub_1DF512CF0;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF48EC24;
    v43 = &block_descriptor_170;
    v19 = _Block_copy(&aBlock);
    v20 = v18;
    [v20 setInterruptionHandler_];
    _Block_release(v19);

    v21 = *&a5[v17];
    v44 = sub_1DF48EC68;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF48EC24;
    v43 = &block_descriptor_173_0;
    v22 = _Block_copy(&aBlock);
    v23 = v21;
    [v23 setInvalidationHandler_];
    _Block_release(v22);

    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED956398);
    v25 = sub_1DF564794();
    v26 = sub_1DF564C44();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF47C000, v25, v26, "sending eligibility request ...", v27, 2u);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    v28 = sub_1DF564914();
    v29 = sub_1DF564914();
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = a2;
    v30[4] = a5;
    v30[5] = sub_1DF513FD4;
    v30[6] = v12;
    v44 = sub_1DF513FDC;
    v45 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF49BC74;
    v43 = &block_descriptor_180;
    v31 = _Block_copy(&aBlock);

    v32 = a5;

    [v39 getFeatureEligibilityFor:v28 bundleID:v29 completion:v31];
    _Block_release(v31);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v33 = sub_1DF5647B4();
    __swift_project_value_buffer(v33, qword_1ED956398);
    v34 = sub_1DF564794();
    v35 = sub_1DF564C24();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DF47C000, v34, v35, "Proxy object has the wrong type", v36, 2u);
      MEMORY[0x1E12D75F0](v36, -1, -1);
    }

    sub_1DF498474();
    v37 = swift_allocError();
    *v38 = 1;
    a6(0, v37);
  }
}

uint64_t sub_1DF51358C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1DF513828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void sub_1DF5138C8(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    v5 = qword_1ED956390;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED956398);
    v8 = v6;
    v9 = sub_1DF564794();
    v10 = sub_1DF564C24();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v37 = a2;
      *(v11 + 12) = 2080;
      v12 = [v8 userInfo];
      v36 = v10;
      sub_1DF564874();

      v13 = sub_1DF564884();
      v15 = v14;

      v16 = sub_1DF47EF6C(v13, v15, &v40);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1DF47C000, v9, v36, "Received error from daemon: %@, %s", v11, 0x16u);
      sub_1DF484888(v37);
      MEMORY[0x1E12D75F0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1E12D75F0](v38, -1, -1);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    v39 = v8;
    v17 = a2;
    v18 = 1;
LABEL_13:
    a3(v17, v18);

    v29 = v39;

    goto LABEL_15;
  }

  if (a1)
  {
    v19 = qword_1ED956390;
    v21 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956398);
    v23 = v21;
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = a1;
      v28 = v23;
      _os_log_impl(&dword_1DF47C000, v24, v25, "received geoclassification response: %@", v26, 0xCu);
      sub_1DF484888(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v39 = v23;
    v17 = a1;
    v18 = 0;
    goto LABEL_13;
  }

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v30 = sub_1DF5647B4();
  __swift_project_value_buffer(v30, qword_1ED956398);
  v31 = sub_1DF564794();
  v32 = sub_1DF564C24();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DF47C000, v31, v32, "Received no error and no geoclassification", v33, 2u);
    MEMORY[0x1E12D75F0](v33, -1, -1);
  }

  sub_1DF498474();
  v34 = swift_allocError();
  *v35 = 7;
  a3(v34, 1);
  v29 = v34;

LABEL_15:
}

uint64_t sub_1DF513E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

id sub_1DF513FE4(int a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30[-v10];
  v12 = v1[7];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v13);
  v15 = (*(v14 + 32))(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v13, v14);
  if (v16 >> 60 == 15)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  else
  {
    v17 = v15;
    v18 = v16;
    sub_1DF5642A4();
    swift_allocObject();
    sub_1DF564294();
    sub_1DF515928(&qword_1ED955AD0, &unk_1DF5689E0);
    sub_1DF564284();
    sub_1DF48C2F4(v17, v18);

    (*(v6 + 56))(v4, 0, 1, v5);
  }

  os_unfair_lock_unlock(*(v12 + 16));
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DF47E5B4(v4, &qword_1ECE37F78, &qword_1DF56A490);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED956088);
    v20 = sub_1DF564794();
    v21 = sub_1DF564C44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DF47C000, v20, v21, "No cache for cloud.llm found.", v22, 2u);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }
  }

  else
  {
    sub_1DF5158B8(v4, v9);
    sub_1DF5158B8(v9, v11);
    if (sub_1DF4FBABC(0, 0, 0, 0, v31 & 1))
    {
      v23 = *v11;
      sub_1DF47E5B4(v11, &qword_1ECE37F80, &qword_1DF56A498);
      return v23;
    }

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956088);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0x6C6C2E64756F6C63, 0xE90000000000006DLL, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Cache for %s is not valid.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF47E5B4(v11, &qword_1ECE37F80, &qword_1DF56A498);
  }

  return 0;
}

uint64_t sub_1DF514678(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = (v74 - v5);
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v82 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v74 - v12);
  v14 = *&a1[OBJC_IVAR___CloudFeature_featureID];
  v15 = *&a1[OBJC_IVAR___CloudFeature_featureID + 8];
  v16 = v14 == 0x6C6C2E64756F6C63 && v15 == 0xE90000000000006DLL;
  if (v16 || (sub_1DF5650D4() & 1) != 0)
  {
    v17 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    v81 = v11[11];
    sub_1DF4952D8(&a1[v17], v13 + v81);
    type metadata accessor for SystemProperties();
    swift_initStaticObject();
    v18 = sub_1DF47E8A4();
    v20 = v19;
    sub_1DF564474();
    *v13 = a1;
    v21 = (v13 + v11[13]);
    *v21 = v18;
    v21[1] = v20;
    v22 = (v13 + v11[14]);
    sub_1DF5642D4();
    *v22 = 0;
    v22[1] = 0;
    swift_allocObject();
    v23 = a1;
    v24 = sub_1DF5642C4();
    sub_1DF515928(&qword_1ED9546D0, &unk_1DF5689B8);
    v25 = sub_1DF5642B4();
    v27 = v26;
    v80 = v24;
    v75 = v2[7];
    v76 = v23;
    v28 = v25;
    os_unfair_lock_lock(*(v75 + 16));
    v29 = v2[5];
    v30 = v2[6];
    v74[1] = __swift_project_boxed_opaque_existential_0(v2 + 2, v29);
    v86[3] = MEMORY[0x1E6969080];
    v86[0] = v28;
    v86[1] = v27;
    v31 = v27;
    v32 = v7;
    v33 = v6;
    v34 = *(v30 + 8);
    v77 = v28;
    v78 = v31;
    sub_1DF4AD474(v28, v31);
    v79 = v14;
    v74[0] = v15;
    v34(v86, v14, v15, v29, v30);
    v35 = v33;
    v36 = v32;
    sub_1DF47E5B4(v86, &qword_1ECE378F0, &qword_1DF5686F0);
    os_unfair_lock_unlock(*(v75 + 16));
    v37 = v84;
    sub_1DF4952D8(v13 + v81, v84);
    if ((*(v32 + 48))(v37, 1, v35) == 1)
    {
      sub_1DF47E5B4(v37, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v38 = sub_1DF5647B4();
      __swift_project_value_buffer(v38, qword_1ED956088);
      v39 = v76;
      v40 = sub_1DF564794();
      v41 = sub_1DF564C44();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v74[0];
      v44 = v79;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v85 = v46;
        *v45 = 136446466;
        *(v45 + 4) = sub_1DF47EF6C(v44, v43, &v85);
        *(v45 + 12) = 1024;
        v47 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        *(v45 + 14) = v39[v47];

        _os_log_impl(&dword_1DF47C000, v40, v41, "Updating cache for %{public}s, cache-ttl: nil, canUse: %{BOOL}d", v45, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x1E12D75F0](v46, -1, -1);
        MEMORY[0x1E12D75F0](v45, -1, -1);

        sub_1DF48C308(v77, v78);
      }

      else
      {
        sub_1DF48C308(v77, v78);
      }
    }

    else
    {
      v55 = v83;
      (*(v32 + 32))(v83, v37, v35);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v56 = sub_1DF5647B4();
      __swift_project_value_buffer(v56, qword_1ED956088);
      v57 = v82;
      (*(v32 + 16))(v82, v55, v35);
      v58 = v76;
      v59 = sub_1DF564794();
      v60 = sub_1DF564C44();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v79;
      if (v61)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v84 = v13;
        v85 = v64;
        v65 = v64;
        *v63 = 136446722;
        *(v63 + 4) = sub_1DF47EF6C(v62, v74[0], &v85);
        *(v63 + 12) = 2082;
        sub_1DF515288();
        v66 = sub_1DF5650A4();
        v68 = v67;
        v69 = *(v36 + 8);
        v69(v57, v35);
        v70 = sub_1DF47EF6C(v66, v68, &v85);

        *(v63 + 14) = v70;
        *(v63 + 22) = 1024;
        v71 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        LODWORD(v71) = v58[v71];

        *(v63 + 24) = v71;
        _os_log_impl(&dword_1DF47C000, v59, v60, "Updating cache for %{public}s, cache-ttl: %{public}s, canUse: %{BOOL}d", v63, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v65, -1, -1);
        MEMORY[0x1E12D75F0](v63, -1, -1);

        sub_1DF48C308(v77, v78);
        v69(v83, v35);
        v72 = v84;
LABEL_23:
        sub_1DF47E5B4(v72, &qword_1ECE37F80, &qword_1DF56A498);
        return 1;
      }

      sub_1DF48C308(v77, v78);
      v73 = *(v32 + 8);
      v73(v57, v35);
      v73(v55, v35);
    }

    v72 = v13;
    goto LABEL_23;
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v48 = sub_1DF5647B4();
  __swift_project_value_buffer(v48, qword_1ED956088);
  v49 = a1;
  v50 = sub_1DF564794();
  v51 = sub_1DF564C24();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v86[0] = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_1DF47EF6C(v14, v15, v86);
    _os_log_impl(&dword_1DF47C000, v50, v51, "Attempted to save feature %{public}s to GM feature cache.", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1E12D75F0](v53, -1, -1);
    MEMORY[0x1E12D75F0](v52, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF514FA0()
{
  v0 = sub_1DF5152E0();
  v6 = sub_1DF4818A4();
  v7 = &off_1F5A8A490;
  *&v5 = v0;
  type metadata accessor for GMFeatureCache();
  v1 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v1 + 56) = v2;
  result = sub_1DF5026F8(&v5, v1 + 16);
  qword_1ED958B70 = v1;
  return result;
}

void sub_1DF51503C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1DF513FE4(1);
  if (v3)
  {
    v4 = v3;
    sub_1DF5643A4();
    v5 = sub_1DF564494();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF48C214(v2, &v4[v6]);
    swift_endAccess();
    sub_1DF514678(v4);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED956088);
    v11 = sub_1DF564794();
    v8 = sub_1DF564C44();
    if (os_log_type_enabled(v11, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DF47C000, v11, v8, "Attempted to expire GM feature cache but no cached object was found.", v9, 2u);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v10 = v11;
  }
}

uint64_t sub_1DF515224()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1DF515288()
{
  result = qword_1ED954CB0;
  if (!qword_1ED954CB0)
  {
    sub_1DF564494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954CB0);
  }

  return result;
}

id sub_1DF5152E0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {

    return v2;
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED956088);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1DF47EF6C(0xD00000000000002BLL, 0x80000001DF570980, &v10);
      _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to create user defaults with suiteID %s. Will use standard suite.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v9 = [objc_opt_self() standardUserDefaults];

    return v9;
  }
}

void sub_1DF5154B4()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED956088);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DF47EF6C(0xD000000000000027, 0x80000001DF574740, v25);
    _os_log_impl(&dword_1DF47C000, v11, v12, "%s did not find existing feature, will stub feature object from scratch.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1E12D75F0](v14, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);
  }

  sub_1DF564484();
  sub_1DF5643D4();
  (*(v1 + 8))(v3, v0);
  v15 = *(v1 + 56);
  v15(v9, 0, 1, v0);
  sub_1DF4952D8(v9, v7);
  v16 = type metadata accessor for CloudFeature(0);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___CloudFeature_limit];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v17[OBJC_IVAR___CloudFeature_accessToken];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR___CloudFeature_ttl;
  v15(&v17[OBJC_IVAR___CloudFeature_ttl], 1, 1, v0);
  v17[OBJC_IVAR___CloudFeature_canUse] = 0;
  v21 = &v17[OBJC_IVAR___CloudFeature_featureID];
  *v21 = 0x6C6C2E64756F6C63;
  v21[1] = 0xE90000000000006DLL;
  swift_beginAccess();
  *v18 = 0;
  v18[8] = 1;
  swift_beginAccess();
  *v19 = 0;
  v19[1] = 0;
  swift_beginAccess();
  sub_1DF4BEC40(v7, &v17[v20]);
  swift_endAccess();
  v24.receiver = v17;
  v24.super_class = v16;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF514678(v22);
}

uint64_t sub_1DF5158B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF515928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F80, &qword_1DF56A498);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF515978()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  qword_1ED958B48 = v2;
}

uint64_t sub_1DF5159E8()
{
  if (qword_1ED9548E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED958B48;
  if (!qword_1ED958B48)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_1DF4A7D80(&v6);
    return 2;
  }

  v1 = sub_1DF564914();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void sub_1DF515B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1DF515BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DF47E4CC(a3, v22 - v9, &unk_1ECE383B0, &qword_1DF568C10);
  v11 = sub_1DF564B44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DF47E5B4(v10, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DF564B04();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DF5649B4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DF515E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1DF47E4CC(a3, v23 - v10, &unk_1ECE383B0, &qword_1DF568C10);
  v12 = sub_1DF564B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF47E5B4(v11, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DF564B04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_1DF5649B4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DF51614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  sub_1DF47E4CC(a3, v24 - v11, &unk_1ECE383B0, &qword_1DF568C10);
  v13 = sub_1DF564B44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DF47E5B4(v12, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DF564B04();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1DF5649B4() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t static CSFFeatureManager.expireCache(defaults:domain:)(char *a1, unint64_t a2, unint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - v10;
  if (qword_1ED956390 != -1)
  {
LABEL_26:
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  v15 = os_log_type_enabled(v13, v14);
  v74 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DF47C000, v13, v14, "Expiring existing features cache!", v16, 2u);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v17 = sub_1DF564914();
  v18 = [a1 persistentDomainForName_];

  if (v18)
  {
    v19 = sub_1DF564874();

    v20 = v19;
  }

  else
  {
    v20 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);
  }

  v21 = v8;
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v8 = v24 & *(v20 + 64);
  v25 = (v23 + 63) >> 6;
  v77 = (v9 + 7);

  v11 = 0;
  v79 = 0;
  v80 = v20;
  a1 = &qword_1ECE37CB8;
  for (i = v25; v8; v25 = i)
  {
LABEL_16:
    while (1)
    {
      v27 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v28 = v27 | (v11 << 6);
      v29 = *(v20 + 56);
      v30 = (*(v20 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      sub_1DF47F24C(v29 + 32 * v28, &v86);
      v85[0] = v32;
      v85[1] = v31;
      sub_1DF47E4CC(v85, v84, &qword_1ECE37CB8, &qword_1DF56A510);
      v9 = &qword_1ECE37CB8;

      if (swift_dynamicCast())
      {
        break;
      }

      sub_1DF47E5B4(v85, &qword_1ECE37CB8, &qword_1DF56A510);
      v20 = v80;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v34 = v82;
    v33 = v83;
    sub_1DF5642A4();
    swift_allocObject();
    sub_1DF564294();
    sub_1DF51CF04();
    v35 = v78;
    v9 = v79;
    sub_1DF564284();
    if (v9)
    {

      sub_1DF48C308(v34, v33);
      v36 = v35;
      a1 = &qword_1ECE37CB8;
      sub_1DF47E5B4(v85, &qword_1ECE37CB8, &qword_1DF56A510);
      (*v77)(v36, 1, 1, v21);
      sub_1DF47E5B4(v36, &qword_1ECE37F78, &qword_1DF56A490);
      v79 = 0;
    }

    else
    {
      v71 = v33;
      v72 = v34;
      v79 = 0;

      (*v77)(v35, 0, 1, v21);
      v37 = v74;
      sub_1DF5158B8(v35, v74);
      v38 = *v37;
      v39 = *(v38 + OBJC_IVAR___CloudFeature_featureID + 8);
      v70 = *(v38 + OBJC_IVAR___CloudFeature_featureID);
      v63 = v39;
      v40 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      v66 = *(v38 + v40);
      v73 = v21;
      v41 = v38 + OBJC_IVAR___CloudFeature_limit;
      swift_beginAccess();
      v69 = *v41;
      v68 = *(v41 + 8);
      v42 = (v38 + OBJC_IVAR___CloudFeature_accessToken);
      swift_beginAccess();
      v43 = v42[1];
      v67 = *v42;
      v65 = v43;

      v44 = v75;
      sub_1DF5643A4();
      v45 = sub_1DF564494();
      v46 = *(v45 - 8);
      v47 = *(v46 + 56);
      v62 = v46 + 56;
      v47(v44, 0, 1, v45);
      v64 = type metadata accessor for CloudFeature(0);
      v48 = objc_allocWithZone(v64);
      v49 = &v48[OBJC_IVAR___CloudFeature_limit];
      *v49 = 0;
      v49[8] = 1;
      v50 = &v48[OBJC_IVAR___CloudFeature_accessToken];
      *v50 = 0;
      v50[1] = 0;
      v51 = OBJC_IVAR___CloudFeature_ttl;
      v47(&v48[OBJC_IVAR___CloudFeature_ttl], 1, 1, v45);
      v48[OBJC_IVAR___CloudFeature_canUse] = v66;
      v52 = &v48[OBJC_IVAR___CloudFeature_featureID];
      v53 = v63;
      *v52 = v70;
      v52[1] = v53;
      swift_beginAccess();
      *v49 = v69;
      v49[8] = v68;
      swift_beginAccess();
      v54 = v65;
      *v50 = v67;
      v50[1] = v54;
      swift_beginAccess();
      v55 = v75;
      sub_1DF4BEC40(v75, &v48[v51]);
      swift_endAccess();
      v81.receiver = v48;
      v81.super_class = v64;
      v70 = objc_msgSendSuper2(&v81, sel_init);
      sub_1DF47E5B4(v55, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED955FF0 != -1)
      {
        swift_once();
      }

      v69 = off_1ED955FF8;
      v56 = v74;
      v57 = (v74 + *(v73 + 56));
      v58 = *v57;
      v9 = v57[1];
      sub_1DF5642D4();
      swift_allocObject();
      v59 = sub_1DF5642C4();
      v60 = v70;
      sub_1DF4FDDA0(v70, v59, v58, v9);

      sub_1DF48C308(v72, v71);
      a1 = &qword_1ECE37CB8;
      sub_1DF47E5B4(v85, &qword_1ECE37CB8, &qword_1DF56A510);
      sub_1DF47E5B4(v56, &qword_1ECE37F80, &qword_1DF56A498);
      v21 = v73;
    }

    v20 = v80;
  }

  while (1)
  {
LABEL_12:
    v26 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v26 >= v25)
    {
      break;
    }

    v8 = *(v22 + 8 * v26);
    ++v11;
    if (v8)
    {
      v11 = v26;
      goto LABEL_16;
    }
  }
}

void static CSFFeatureManager.requestFeature(id:allowStale:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v43 - v10;
  v12 = objc_opt_self();

  v13 = [v12 processInfo];
  v14 = [v13 processName];

  v15 = sub_1DF564944();
  v17 = v16;

  v55[0] = a1;
  v55[1] = a2;
  v55[2] = v15;
  v55[3] = v17;
  v55[4] = 0x7466697773;
  v55[5] = 0xE500000000000000;
  v56 = a3;
  sub_1DF47F908(v55, sub_1DF47FD50);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED956398);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v50 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DF47EF6C(a1, a2, &v50);
    _os_log_impl(&dword_1DF47C000, v19, v20, "Checking feature with id: %s [swift]", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  if ((sub_1DF480190() & 1) != 0 && ((v23 = sub_1DF480550(a1, a2)) != 0 || (v23 = sub_1DF4807E8(a1, a2)) != 0))
  {
    v24 = v23;
    v44();

    sub_1DF4D8314(v24);
  }

  else
  {
    v25 = a3 & 1;
    v26 = sub_1DF4812FC(a1, a2);
    if (v26)
    {
      v27 = v26;
      v28 = v26;
      (v44)(v27, 0);

      if (a1 == 0x6C6C2E64756F6C63 && a2 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
      {
        v29 = sub_1DF564B44();
        (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v28;
        v31 = v28;
        sub_1DF515E70(0, 0, v11, &unk_1DF56BAA8, v30, MEMORY[0x1E69E7CA8] + 8);
      }

      v32 = [v12 processInfo];
      v33 = [v32 processName];

      v34 = sub_1DF564944();
      v36 = v35;

      *&v45 = a1;
      *(&v45 + 1) = a2;
      LOBYTE(v46) = 0;
      *(&v46 + 1) = v34;
      *&v47 = v36;
      *(&v47 + 1) = 0x7466697773;
      *&v48 = 0xE500000000000000;
      BYTE8(v48) = a3 & 1;
      BYTE9(v48) = 1;
      v49 = 0;
      v54 = 0;
      v52 = v47;
      v53 = v48;
      v50 = v45;
      v51 = v46;
      sub_1DF49156C(&v50, sub_1DF47FD50);

      sub_1DF491B8C(&v45);
    }

    else
    {
      *(&v51 + 1) = &type metadata for FeatureFlag;
      *&v52 = sub_1DF481614();
      LOBYTE(v50) = 0;
      sub_1DF5645A4();
      __swift_destroy_boxed_opaque_existential_0(&v50);
      v37 = swift_allocObject();
      *(v37 + 16) = a1;
      *(v37 + 24) = a2;
      *(v37 + 32) = v25;
      *(v37 + 40) = v44;
      *(v37 + 48) = a5;
      v38 = type metadata accessor for XPCCaller();
      v39 = objc_allocWithZone(v38);

      v40 = [v39 init];
      *(&v51 + 1) = v38;
      *&v52 = &off_1F5A8AB90;
      *&v50 = v40;
      v41 = sub_1DF564B44();
      (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
      sub_1DF47FCEC(&v50, &v45);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = v43[1];
      *(v42 + 40) = a1;
      *(v42 + 48) = a2;
      sub_1DF47E390(&v45, v42 + 56);
      *(v42 + 96) = v25;
      *(v42 + 104) = sub_1DF51CF68;
      *(v42 + 112) = v37;

      sub_1DF4BF520(0, 0, v11, &unk_1DF56BA98, v42);

      __swift_destroy_boxed_opaque_existential_0(&v50);
    }
  }
}

uint64_t sub_1DF517328()
{
  v0[14] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  v0[15] = inited;
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v0[11] = v1;
  v0[12] = &off_1F5A88E50;
  v0[8] = inited;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1DF517418;
  v4 = v0[13];

  return sub_1DF511DD4(v4);
}

uint64_t sub_1DF517418()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[17] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 8);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF517578, 0, 0);
  }

  else
  {
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1DF517590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, void))
{
  if (a2)
  {

    v11 = sub_1DF5642E4();
    v12 = [objc_opt_self() processInfo];
    v13 = a6;
    v14 = [v12 processName];

    v15 = sub_1DF564944();
    v17 = v16;

    a6 = v13;
    *&v26 = a3;
    *(&v26 + 1) = a4;
    LOBYTE(v27) = 1;
    *(&v27 + 1) = v15;
    *&v28 = v17;
    *(&v28 + 1) = 0x7466697773;
    *&v29 = 0xE500000000000000;
    WORD4(v29) = a5 & 1;
    v30 = v11;
    v32 = v11;
  }

  else
  {
    v18 = objc_opt_self();

    v19 = [v18 processInfo];
    v20 = [v19 processName];

    v21 = sub_1DF564944();
    v23 = v22;

    *&v26 = a3;
    *(&v26 + 1) = a4;
    LOBYTE(v27) = 1;
    *(&v27 + 1) = v21;
    *&v28 = v23;
    *(&v28 + 1) = 0x7466697773;
    *&v29 = 0xE500000000000000;
    BYTE8(v29) = a5 & 1;
    BYTE9(v29) = 1;
    v30 = 0;
    v32 = 0;
  }

  v31[2] = v28;
  v31[3] = v29;
  v31[0] = v26;
  v31[1] = v27;
  sub_1DF49156C(v31, sub_1DF47FD50);
  sub_1DF491B8C(&v26);
  return a6(a1, a2 & 1);
}

id static CSFFeatureManager.cachedFeatureObject(id:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DF4812FC(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CloudFeature.cloudFeatureObject.getter();

  return v4;
}

void static CSFFeatureManager.requestFeature(id:allowStale:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v49 - v11;
  v13 = objc_opt_self();

  v50 = v13;
  v14 = [v13 processInfo];
  v15 = [v14 processName];

  v16 = sub_1DF564944();
  v18 = v17;

  v61[0] = a1;
  v61[1] = a2;
  v61[2] = v16;
  v61[3] = v18;
  v61[4] = 1667916399;
  v61[5] = 0xE400000000000000;
  v62 = a3;
  sub_1DF47F908(v61, sub_1DF47FD50);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED956398);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v12;
    v24 = a5;
    v25 = a4;
    v26 = swift_slowAlloc();
    *&v56 = v26;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DF47EF6C(a1, a2, &v56);
    _os_log_impl(&dword_1DF47C000, v20, v21, "Checking feature with id: %s [objc]", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a4 = v25;
    a5 = v24;
    v12 = v23;
    MEMORY[0x1E12D75F0](v27, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  if (sub_1DF480190())
  {
    v28 = sub_1DF480550(a1, a2);
    if (v28)
    {
      v29 = v28;
      a4(0, v28);
      v30 = v29;

LABEL_9:

      return;
    }

    v31 = sub_1DF4807E8(a1, a2);
    if (v31)
    {
      v32 = v31;
      v50 = CloudFeature.cloudFeatureObject.getter();
      a4(v50, 0);

      v30 = v50;

      goto LABEL_9;
    }
  }

  v33 = a3 & 1;
  v34 = sub_1DF4812FC(a1, a2);
  if (v34)
  {
    v35 = a4;
    v36 = v34;
    v37 = CloudFeature.cloudFeatureObject.getter();
    v35(v37, 0);

    v38 = [v50 processInfo];
    v39 = [v38 processName];

    v40 = sub_1DF564944();
    v42 = v41;

    *&v51 = a1;
    *(&v51 + 1) = a2;
    LOBYTE(v52) = 0;
    *(&v52 + 1) = v40;
    *&v53 = v42;
    *(&v53 + 1) = 1667916399;
    *&v54 = 0xE400000000000000;
    BYTE8(v54) = v33;
    BYTE9(v54) = 1;
    v55 = 0;
    v60 = 0;
    v58 = v53;
    v59 = v54;
    v56 = v51;
    v57 = v52;
    sub_1DF49156C(&v56, sub_1DF47FD50);

    sub_1DF491B8C(&v51);
  }

  else
  {
    *(&v57 + 1) = &type metadata for FeatureFlag;
    *&v58 = sub_1DF481614();
    LOBYTE(v56) = 0;
    sub_1DF5645A4();
    __swift_destroy_boxed_opaque_existential_0(&v56);
    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    *(v43 + 24) = a2;
    *(v43 + 32) = v33;
    *(v43 + 40) = a4;
    *(v43 + 48) = a5;
    v44 = type metadata accessor for XPCCaller();
    v45 = objc_allocWithZone(v44);

    v46 = [v45 init];
    *(&v57 + 1) = v44;
    *&v58 = &off_1F5A8AB90;
    *&v56 = v46;
    v47 = sub_1DF564B44();
    (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
    sub_1DF47FCEC(&v56, &v51);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v49[1];
    *(v48 + 40) = a1;
    *(v48 + 48) = a2;
    sub_1DF47E390(&v51, v48 + 56);
    *(v48 + 96) = v33;
    *(v48 + 104) = sub_1DF4912E8;
    *(v48 + 112) = v43;

    sub_1DF4BF520(0, 0, v12, &unk_1DF56BAB0, v48);

    __swift_destroy_boxed_opaque_existential_0(&v56);
  }
}

uint64_t sub_1DF517E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 136) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF517E88, 0, 0);
}

uint64_t sub_1DF517E88()
{
  if (qword_1ED9560B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DF47FCEC(*(v0 + 80), v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 104) = v5;
  sub_1DF47E390((v0 + 16), v5 + 16);
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  *(v5 + 72) = v4;
  *(v5 + 80) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DF517FE8;
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return sub_1DF484D7C(v8, v7, &unk_1DF56BC80, v5);
}

uint64_t sub_1DF517FE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1DF5181A0;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1DF518118;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF518118()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF5181A0()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF518238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF518260, 0, 0);
}

uint64_t sub_1DF518260()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 64), *(*(v0 + 64) + 24));
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_1DF481614();
  *(v0 + 16) = 0;
  v1 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = off_1F5A8AB98;
  v3 = type metadata accessor for XPCCaller();
  v9 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5183E4;
  v5 = *(v0 + 104);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);

  return (v9)(v7, v6, (v1 & 1) == 0, v5, v3, &off_1F5A8AB90);
}

uint64_t sub_1DF5183E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF518530, 0, 0);
  }
}

void static CSFFeatureManager.getFeatureEligibility(for:bundleID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DF47EF6C(a1, a2, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1DF47EF6C(a3, a4, &v18);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Checking feature eligibility with feature id: %s, bundle id: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  sub_1DF512624(a1, a2, a3, a4, a5, a6);
}

uint64_t static CSFFeatureManager.getFeatureEligibility(forFeatureWithId:bundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(0xD00000000000003CLL, 0x80000001DF574770, &v18);
    _os_log_impl(&dword_1DF47C000, v13, v14, "%s [objc]", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  sub_1DF51D128(a1, a2, a3, a4, a5, a6);
}

void static CSFFeatureManager.requestGeoClassification(forFeatureID:bundleID:altDSID:ignoreCache:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF5647B4();
  __swift_project_value_buffer(v14, qword_1ED956398);

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  v34 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1DF47EF6C(a1, a2, aBlock);
    *(v17 + 12) = 2080;
    v19 = a3;
    *(v17 + 14) = sub_1DF47EF6C(a3, a4, aBlock);
    _os_log_impl(&dword_1DF47C000, v15, v16, "Checking geoclassification for feature id: %s and bundle id %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  else
  {
    v19 = a3;
  }

  v20 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = a9;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1DF51D328;
  *(v22 + 24) = v21;
  swift_retain_n();

  v33 = sub_1DF50AF70(0, sub_1DF51D334, v22);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Sending geoclassification request to %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1E12D75F0](v26, -1, -1);
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  v27 = sub_1DF564914();
  v28 = sub_1DF564914();
  v29 = sub_1DF564914();
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = v34;
  v30[4] = a2;
  v30[5] = v19;
  v30[6] = a4;
  v30[7] = sub_1DF51D328;
  v30[8] = v21;
  aBlock[4] = sub_1DF51D33C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD8;
  aBlock[3] = &block_descriptor_6;
  v31 = _Block_copy(aBlock);

  v32 = v20;

  [v33 requestGeoClassificationFor:v27 bundleID:v28 altDSID:v29 ignoreCache:a7 & 1 completion:v31];
  _Block_release(v31);

  swift_unknownObjectRelease();
}

uint64_t sub_1DF518EBC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
    v9 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

    v5 = sub_1DF508CAC(v8, v9);
    v6 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
    v7 = 0;
  }

  return a3(v5, v6, v7);
}

void sub_1DF51902C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1DF5642E4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void static CSFFeatureManager.requestGeoClassification(forFeatureID:bundleID:ignoreCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v10 = [objc_opt_self() defaultStore];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 aa_primaryAppleAccount];

    if (v12 && (v13 = [v12 aa_altDSID], v12, v13))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = sub_1DF564914();
      v16 = sub_1DF564914();
      v24[4] = a6;
      v24[5] = a7;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1DF515B10;
      v24[3] = &block_descriptor_28;
      v17 = _Block_copy(v24);

      [ObjCClassFromMetadata requestGeoClassificationForFeatureID:v15 bundleID:v16 altDSID:v13 ignoreCache:a5 & 1 completion:v17];
      _Block_release(v17);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v18 = sub_1DF5647B4();
      __swift_project_value_buffer(v18, qword_1ED956398);
      v19 = sub_1DF564794();
      v20 = sub_1DF564C24();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DF47C000, v19, v20, "Unable to access altDSID", v21, 2u);
        MEMORY[0x1E12D75F0](v21, -1, -1);
      }

      sub_1DF498474();
      v22 = swift_allocError();
      *v23 = 3;
      a6(3, 0, v22);
    }
  }

  else
  {
    __break(1u);
  }
}

id static CSFFeatureManager.addFeatureChangeObserver(change:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED955AD8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return NotificationObservation.addObserver(change:)(a1, a2);
}

id static CSFFeatureManager.addTicketChangeObserver(featureName:change:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED955AD8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  v10 = NotificationObservation.addTicketObserver(change:)(sub_1DF51DCA4, v9);

  return v10;
}

uint64_t sub_1DF51958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_1DF564B44();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;

  sub_1DF4BF520(0, 0, v12, &unk_1DF56BC70, v14);
}

uint64_t sub_1DF5196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF5196F0, 0, 0);
}

uint64_t sub_1DF5196F0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_1DF564914();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF519838;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38198, &qword_1DF56BAF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_250;
  v0[14] = v3;
  [ObjCClassFromMetadata getTicketStatusFromCacheForFeature:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF519838()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1DF5199D4;
  }

  else
  {
    v2 = sub_1DF519948;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF519948()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2;

  (*(v0 + 176))(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF5199D4(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  swift_willThrow();

  (*(v1 + 176))(0);
  v4 = *(v1 + 8);

  return v4();
}

void sub_1DF519B90(void *a1)
{
  if (qword_1ED955AD8 == -1)
  {
  }

  else
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(a1);
}

uint64_t sub_1DF519C04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = qword_1ED955AD8;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(a3);

  return swift_unknownObjectRelease();
}

id static CSFFeatureManager.processPushNotification(dictionary:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata clearFeatureCacheAndNotify];
}

uint64_t sub_1DF519F04()
{
  v12 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v11);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  else
  {
  }

  v6 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v6;
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1DF51A13C;
  v9 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0xD000000000000017, 0x80000001DF574620, sub_1DF51E428, v7, v9);
}

uint64_t sub_1DF51A13C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF521AA4;
  }

  else
  {

    v2 = sub_1DF521A7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static CSFFeatureManager.getTicketStatus(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF490980;

  return sub_1DF51E430(a1, a2);
}

uint64_t sub_1DF51A490(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF51E430(v3, v5);
}

uint64_t static CSFFeatureManager.getTicketStatusFromCache(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return sub_1DF51F254(a1, a2);
}

uint64_t sub_1DF51A798(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF51F254(v3, v5);
}

uint64_t static CSFFeatureManager.getTicket(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return sub_1DF51FA4C(a1, a2);
}

uint64_t sub_1DF51AAA0(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4E5740;

  return sub_1DF51FA4C(v3, v5);
}

uint64_t sub_1DF51AB90()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_1DF564914();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF51ACE4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38198, &qword_1DF56BAF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_42;
  v0[14] = v3;
  [ObjCClassFromMetadata getTicketStatusFromCacheForFeature:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF51ACE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1DF51AECC;
  }

  else
  {
    v2 = sub_1DF51ADF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1DF51ADF4()
{
  v1 = *(v0 + 144);

  objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = v1;
      v5 = sub_1DF564CD4();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + 8);

    return v6(v5 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51AECC(uint64_t a1)
{
  v2 = v1[20];
  swift_willThrow();

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v3 = v1[21];
  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = v3;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Error getting ticket status from cache: %@", v10, 0xCu);
    sub_1DF47E5B4(v11, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14(0);
}

uint64_t sub_1DF51B1EC(const void *a1, uint64_t a2)
{
  *(v2 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DF51B290;

  return static CSFFeatureManager.deviceHasAnyTicket()();
}

uint64_t sub_1DF51B290(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DF51B3D4()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51B48C;

  return sub_1DF50E8B0((v0 + 40));
}

uint64_t sub_1DF51B48C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51B5D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t static CSFFeatureManager.clearCFU()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  return sub_1DF5208EC();
}

uint64_t sub_1DF51B7FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF521A6C;

  return sub_1DF5208EC();
}

uint64_t static CSFFeatureManager.postCFUIfEligible()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D4B0;

  return sub_1DF520C08();
}

uint64_t sub_1DF51BAB0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF51BB58;

  return sub_1DF520C08();
}

uint64_t sub_1DF51BB58()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1DF5642E4();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1DF51BCD8()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51BD84;

  return sub_1DF5107C0();
}

uint64_t sub_1DF51BD84()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51BEC0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF51BEC0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF51C090(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DF51C0F8, 0, 0);
}

uint64_t sub_1DF51C0F8()
{
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51C1A4;

  return sub_1DF5107C0();
}

uint64_t sub_1DF51C1A4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51C2FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 16));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1DF51C2FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_1DF5642E4();
  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 16));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t static CSFFeatureManager.gmOptInToggle()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF49B4E0;

  return sub_1DF520D3C();
}

uint64_t sub_1DF51C5A8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF51C650;

  return sub_1DF520D3C();
}

uint64_t sub_1DF51C650(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_1DF5642E4();

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

uint64_t sub_1DF51C7E8()
{
  v0[14] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  v0[15] = inited;
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v0[11] = v1;
  v0[12] = &off_1F5A88E50;
  v0[8] = inited;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1DF51C8D8;
  v4 = v0[13];

  return sub_1DF511DD4(v4);
}

uint64_t sub_1DF51C8D8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[17] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 8);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF521A70, 0, 0);
  }

  else
  {
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1DF51CA38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DF48D3C0;

  return v6();
}

uint64_t sub_1DF51CB20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DF48D4B0;

  return v7();
}

uint64_t sub_1DF51CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1DF47E4CC(a3, v23 - v10, &unk_1ECE383B0, &qword_1DF568C10);
  v12 = sub_1DF564B44();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DF47E5B4(v11, &unk_1ECE383B0, &qword_1DF568C10);
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

  sub_1DF564B34();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1DF564B04();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1DF5649B4() + 32;
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

    sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

    return v21;
  }

LABEL_8:
  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
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

unint64_t sub_1DF51CF04()
{
  result = qword_1ED955AD0;
  if (!qword_1ED955AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F80, &qword_1DF56A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955AD0);
  }

  return result;
}

uint64_t sub_1DF51CF80(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 96);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF517E54(a1, v11, v4, v5, v6, v7, v1 + 56, v8);
}

uint64_t sub_1DF51D074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF517308(a1, v4, v5, v6);
}

uint64_t sub_1DF51D128(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  v12 = qword_1ED956390;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(a1, a2, &v20);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(a3, a4, &v20);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Checking feature eligibility with feature id: %s, bundle id: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];

  sub_1DF512EF0(a1, a2, a3, a4, v18, a5, a6);
}

void sub_1DF51D340(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  v34 = a1;
  v33 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlocka[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(a1, a2, aBlocka);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(a3, a4, aBlocka);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Checking geoclassification for feature id: %s and bundle id %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v19 = swift_allocObject();
  *(v19 + 16) = aBlock;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1DF521A78;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DF521A8C;
  *(v21 + 24) = v20;
  _Block_copy(aBlock);
  _Block_copy(aBlock);

  v32 = sub_1DF50AF70(0, sub_1DF521AA8, v21);

  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlocka[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlocka);
    _os_log_impl(&dword_1DF47C000, v22, v23, "Sending geoclassification request to %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  v26 = sub_1DF564914();
  v27 = sub_1DF564914();
  v28 = sub_1DF564914();
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v34;
  v29[4] = a2;
  v29[5] = v33;
  v29[6] = a4;
  v29[7] = sub_1DF521A8C;
  v29[8] = v20;
  aBlocka[4] = sub_1DF521A9C;
  aBlocka[5] = v29;
  aBlocka[0] = MEMORY[0x1E69E9820];
  aBlocka[1] = 1107296256;
  aBlocka[2] = sub_1DF48DAD8;
  aBlocka[3] = &block_descriptor_219;
  v30 = _Block_copy(aBlocka);

  v31 = v18;

  [v32 requestGeoClassificationFor:v26 bundleID:v27 altDSID:v28 ignoreCache:a7 & 1 completion:v30];
  _Block_release(v30);

  swift_unknownObjectRelease();

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_1DF51D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a7;
  v10 = objc_opt_self();
  _Block_copy(a7);
  v11 = [v10 defaultStore];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 aa_primaryAppleAccount];

    if (v13 && (v14 = [v13 aa_altDSID], v13, v14))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = sub_1DF564914();
      v17 = sub_1DF564914();
      v26[4] = sub_1DF5217D0;
      v26[5] = v9;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_1DF515B10;
      v26[3] = &block_descriptor_200_0;
      v18 = _Block_copy(v26);

      [ObjCClassFromMetadata requestGeoClassificationForFeatureID:v16 bundleID:v17 altDSID:v14 ignoreCache:a5 & 1 completion:v18];
      _Block_release(v18);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v19 = sub_1DF5647B4();
      __swift_project_value_buffer(v19, qword_1ED956398);
      v20 = sub_1DF564794();
      v21 = sub_1DF564C24();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DF47C000, v20, v21, "Unable to access altDSID", v22, 2u);
        MEMORY[0x1E12D75F0](v22, -1, -1);
      }

      sub_1DF498474();
      v23 = swift_allocError();
      *v24 = 3;
      v25 = sub_1DF5642E4();
      (a7)[2](a7, 3, 0, v25);
    }
  }

  else
  {
    _Block_release(a7);
    __break(1u);
  }
}

void sub_1DF51DCA8(const char *a1, void (*a2)(void), const char *a3, ...)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956398);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DF47C000, v6, v7, a1, v8, 2u);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v9 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  a2();
}

uint64_t _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE32refreshAllGeoclassificationCacheyyFZ_0()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED956398);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "Geoclassification cache refresh request", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1DF564914();
  v6 = [v4 initWithSuiteName_];

  v7 = sub_1DF4FB5AC(v6);
  v8 = sub_1DF4CC244();
  sub_1DF4FB6B0(v8, v9);
}

uint64_t _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE27shouldShowRSVPDataDetectorsSbyFZ_0()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED956398);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5748C0, v18);
    _os_log_impl(&dword_1DF47C000, v1, v2, "%s requested", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v19 = &type metadata for FeatureFlag;
  v5 = sub_1DF481614();
  v20 = v5;
  LOBYTE(v18[0]) = 1;
  v6 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v6 & 1) != 0 && (v19 = &type metadata for FeatureFlag, v20 = v5, LOBYTE(v18[0]) = 2, v7 = sub_1DF5645A4(), __swift_destroy_boxed_opaque_existential_0(v18), (v7) && (v19 = &type metadata for FeatureFlag, v20 = v5, LOBYTE(v18[0]) = 3, v8 = sub_1DF5645A4(), __swift_destroy_boxed_opaque_existential_0(v18), (v8))
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_1ED9556D8);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DF47C000, v9, v10, "All feature flags for rsvp are enabled, skipping XPCConnection call", v11, 2u);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    v12 = 1;
  }

  else
  {
    if (qword_1ED954E20 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF4A7C48();
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5748C0, v18);
      *(v15 + 12) = 1026;
      *(v15 + 14) = v12 & 1;
      _os_log_impl(&dword_1DF47C000, v13, v14, "%s returning result: %{BOOL,public}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1E12D75F0](v16, -1, -1);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }
  }

  return v12 & 1;
}

uint64_t sub_1DF51E430(uint64_t a1, uint64_t a2)
{
  v2[44] = a1;
  v2[45] = a2;
  v3 = sub_1DF564494();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF51E4F0, 0, 0);
}

id sub_1DF51E4F0(__n128 a1)
{
  v21 = v1;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    if (deviceSupportsGenerativeModelSystems)
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      v1[49] = v5;
      v1[50] = __swift_project_value_buffer(v5, qword_1ED956398);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v20[0] = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, v20);
        _os_log_impl(&dword_1DF47C000, v6, v7, "%s Attempting to get ticket status from daemon.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x1E12D75F0](v9, -1, -1);
        MEMORY[0x1E12D75F0](v8, -1, -1);
      }

      v1[51] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
      v10 = swift_task_alloc();
      v1[52] = v10;
      *v10 = v1;
      v10[1] = sub_1DF51E860;
      v12 = v1[44];
      v11 = v1[45];

      return sub_1DF50C0A4(v12, v11);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v13 = sub_1DF5647B4();
      __swift_project_value_buffer(v13, qword_1ED956398);
      v14 = sub_1DF564794();
      v15 = sub_1DF564C44();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, v20);
        _os_log_impl(&dword_1DF47C000, v14, v15, "%s Device is not eligible.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1E12D75F0](v17, -1, -1);
        MEMORY[0x1E12D75F0](v16, -1, -1);
      }

      sub_1DF498474();
      swift_allocError();
      *v18 = 12;
      swift_willThrow();

      v19 = v1[1];

      return v19();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51E860(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_1DF51EF84;
  }

  else
  {

    v4 = sub_1DF51E97C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1DF51E97C()
{
  v47 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;

  v3 = v1 == 0x6C6C2E64756F6C63 && v2 == 0xE90000000000006DLL;
  if (v3 || (sub_1DF5650D4() & 1) != 0)
  {
    v4 = 1;
  }

  else if (*(v0 + 352) == 0xD000000000000018 && 0x80000001DF5707C0 == v2 || (sub_1DF5650D4() & 1) != 0)
  {
    v4 = 2;
  }

  else
  {
    v36 = *(v0 + 352);
    if (v36 == 0xD00000000000001CLL && 0x80000001DF570800 == v2 || (sub_1DF5650D4() & 1) != 0)
    {
      v4 = 4;
    }

    else if (v36 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v2 || (sub_1DF5650D4() & 1) != 0)
    {
      v4 = 8;
    }

    else
    {
      v37 = qword_1ED956018;

      if (v37 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 392), qword_1ED956020);

      v38 = sub_1DF564794();
      v39 = sub_1DF564C24();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 360);
      if (v40)
      {
        v42 = *(v0 + 352);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = v44;
        *v43 = 136446210;
        v45 = sub_1DF47EF6C(v42, v41, &v46);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_1DF47C000, v38, v39, "Unable to determine returned feature: %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1E12D75F0](v44, -1, -1);
        MEMORY[0x1E12D75F0](v43, -1, -1);
      }

      else
      {
      }

      v4 = 0;
    }
  }

  v5 = *(v0 + 424);
  sub_1DF4BF4C8(v0 + 304);

  v6 = v5;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v9 = MobileGestalt_copy_regionCode_obj();

    if (v9)
    {
      v10 = sub_1DF564944();
      v12 = v11;

      if (v10 == 18499 && v12 == 0xE200000000000000)
      {

        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = sub_1DF5650D4();
      }
    }

    v13 = *(v0 + 424);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    *(v0 + 208) = 257;
    *(v0 + 216) = v15;
    *(v0 + 224) = v14;
    *(v0 + 232) = v13;
    *(v0 + 240) = v4;
    *(v0 + 248) = 768;
    *(v0 + 256) = 0;
    *(v0 + 264) = v9 & 1;
    v16 = *(v0 + 208);
    v17 = *(v0 + 224);
    v18 = *(v0 + 240);
    *(v0 + 121) = *(v0 + 249);
    *(v0 + 96) = v17;
    *(v0 + 112) = v18;
    *(v0 + 80) = v16;
    v19 = v13;
    v20 = sub_1DF564794();
    v21 = sub_1DF564C44();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 424);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v46);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v22;
      *v24 = v13;
      v26 = v22;
      _os_log_impl(&dword_1DF47C000, v20, v21, "%s Returning ticket: %@", v23, 0x16u);
      sub_1DF47E5B4(v24, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E12D75F0](v25, -1, -1);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    v29 = *(v0 + 368);
    v30 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
    sub_1DF564474();
    v31 = *&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 24];
    v32 = *&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 32];
    __swift_project_boxed_opaque_existential_0(&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore], v31);
    *(v0 + 344) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v28 + 16))(boxed_opaque_existential_1, v27, v29);
    (*(v32 + 8))(v0 + 320, 0xD00000000000001ALL, 0x80000001DF572E00, v31, v32);

    (*(v28 + 8))(v27, v29);
    sub_1DF47E5B4(v0 + 320, &qword_1ECE378F0, &qword_1DF5686F0);
    sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 208);

    v34 = *(v0 + 8);
    v35 = *(v0 + 424);

    return v34(v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF51EF84()
{
  v26 = v0;
  v1 = *(v0 + 432);

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v25);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Unable to get ticket with error: %@", v6, 0x16u);
    sub_1DF47E5B4(v7, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v11 = *(v0 + 432);

  v12 = v11;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    v15 = MobileGestalt_copy_regionCode_obj();

    if (v15)
    {
      v16 = sub_1DF564944();
      v18 = v17;

      if (v16 == 18499 && v18 == 0xE200000000000000)
      {

        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = sub_1DF5650D4();
      }
    }

    v19 = *(v0 + 432);
    *(v0 + 144) = 1;
    v20 = *(v0 + 360);
    *(v0 + 152) = *(v0 + 352);
    *(v0 + 160) = v20;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1025;
    *(v0 + 192) = v19;
    *(v0 + 200) = v15 & 1;
    v21 = *(v0 + 144);
    v22 = *(v0 + 160);
    v23 = *(v0 + 176);
    *(v0 + 57) = *(v0 + 185);
    *(v0 + 32) = v22;
    *(v0 + 48) = v23;
    *(v0 + 16) = v21;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 144);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51F254(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF51F274, 0, 0);
}

id sub_1DF51F274(__n128 a1)
{
  v21 = v1;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    if (deviceSupportsGenerativeModelSystems)
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      v1[4] = __swift_project_value_buffer(v5, qword_1ED956398);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v20[0] = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, v20);
        _os_log_impl(&dword_1DF47C000, v6, v7, "%s Attempting to get ticket status from cache.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x1E12D75F0](v9, -1, -1);
        MEMORY[0x1E12D75F0](v8, -1, -1);
      }

      v1[5] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
      v10 = swift_task_alloc();
      v1[6] = v10;
      *v10 = v1;
      v10[1] = sub_1DF51F5D8;
      v12 = v1[2];
      v11 = v1[3];

      return sub_1DF50CFD4(v12, v11);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v13 = sub_1DF5647B4();
      __swift_project_value_buffer(v13, qword_1ED956398);
      v14 = sub_1DF564794();
      v15 = sub_1DF564C44();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, v20);
        _os_log_impl(&dword_1DF47C000, v14, v15, "%s Device is not eligible.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1E12D75F0](v17, -1, -1);
        MEMORY[0x1E12D75F0](v16, -1, -1);
      }

      sub_1DF498474();
      swift_allocError();
      *v18 = 12;
      swift_willThrow();
      v19 = v1[1];

      return v19();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51F5D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1DF51F894;
  }

  else
  {

    v4 = sub_1DF51F6F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF51F6F4()
{
  v13 = v0;
  v1 = *(v0 + 56);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v12);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v1;
    *v6 = v4;
    v8 = v1;
    _os_log_impl(&dword_1DF47C000, v2, v3, "%s Returning ticket: %@", v5, 0x16u);
    sub_1DF47E5B4(v6, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 56);

  return v9(v10);
}

uint64_t sub_1DF51F894()
{
  v14 = v0;
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v13);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Unable to get ticket with error: %@", v6, 0x16u);
    sub_1DF47E5B4(v7, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DF51FA4C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  v3 = sub_1DF564494();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF51FB0C, 0, 0);
}

uint64_t sub_1DF51FB0C(__n128 a1)
{
  v31 = v1;
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = v2;
  deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

  if (deviceSupportsGenerativeModelSystems)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    v1[50] = v12;
    v1[51] = __swift_project_value_buffer(v12, qword_1ED956398);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, v30);
      _os_log_impl(&dword_1DF47C000, v13, v14, "%s Attempting to create new ticket.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1E12D75F0](v16, -1, -1);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }

    else
    {
    }

    v1[52] = 0x80000001DF574520;
    v26 = v1[45];
    v25 = v1[46];
    v27 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
    v1[53] = v27;
    v28 = swift_task_alloc();
    v1[54] = v28;
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v25;
    v29 = swift_task_alloc();
    v1[55] = v29;
    v9 = type metadata accessor for Ticket();
    *v29 = v1;
    v29[1] = sub_1DF51FEF4;
    v7 = sub_1DF52187C;
    v2 = v1 + 44;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000016;
    v6 = 0x80000001DF574520;
    v8 = v28;

    return MEMORY[0x1EEE6DE38](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, v30);
    _os_log_impl(&dword_1DF47C000, v18, v19, "%s Device is not eligible.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1E12D75F0](v21, -1, -1);
    MEMORY[0x1E12D75F0](v20, -1, -1);
  }

  sub_1DF498474();
  swift_allocError();
  *v22 = 12;
  swift_willThrow();

  v23 = v1[1];

  return v23();
}

uint64_t sub_1DF51FEF4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1DF520010;
  }

  else
  {

    v2 = sub_1DF5202E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1DF520010()
{
  v26 = v0;
  v1 = *(v0 + 448);

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000016, v6, &v25);
    *(v7 + 12) = 2112;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Unable to get ticket with error: %@", v7, 0x16u);
    sub_1DF47E5B4(v8, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v12 = *(v0 + 448);

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    v15 = MobileGestalt_copy_regionCode_obj();

    if (v15)
    {
      v16 = sub_1DF564944();
      v18 = v17;

      if (v16 == 18499 && v18 == 0xE200000000000000)
      {

        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = sub_1DF5650D4();
      }
    }

    v19 = *(v0 + 448);
    *(v0 + 144) = 0;
    v20 = *(v0 + 368);
    *(v0 + 152) = *(v0 + 360);
    *(v0 + 160) = v20;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1025;
    *(v0 + 192) = v19;
    *(v0 + 200) = v15 & 1;
    v21 = *(v0 + 144);
    v22 = *(v0 + 160);
    v23 = *(v0 + 176);
    *(v0 + 57) = *(v0 + 185);
    *(v0 + 32) = v22;
    *(v0 + 48) = v23;
    *(v0 + 16) = v21;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 144);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF5202E0()
{
  v46 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  v3 = *(v0 + 352);
  v4 = *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;

  v5 = v2 == 0x6C6C2E64756F6C63 && v1 == 0xE90000000000006DLL;
  if (v5 || (sub_1DF5650D4() & 1) != 0)
  {
    v6 = 1;
  }

  else if (*(v0 + 360) == 0xD000000000000018 && 0x80000001DF5707C0 == v1 || (sub_1DF5650D4() & 1) != 0)
  {
    v6 = 2;
  }

  else
  {
    v35 = *(v0 + 360);
    if (v35 == 0xD00000000000001CLL && 0x80000001DF570800 == v1 || (sub_1DF5650D4() & 1) != 0)
    {
      v6 = 4;
    }

    else if (v35 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v1 || (sub_1DF5650D4() & 1) != 0)
    {
      v6 = 8;
    }

    else
    {
      v36 = qword_1ED956018;

      if (v36 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 400), qword_1ED956020);

      v37 = sub_1DF564794();
      v38 = sub_1DF564C24();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 368);
      if (v39)
      {
        v41 = *(v0 + 360);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v42 = 136446210;
        v44 = sub_1DF47EF6C(v41, v40, &v45);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_1DF47C000, v37, v38, "Unable to determine returned feature: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1E12D75F0](v43, -1, -1);
        MEMORY[0x1E12D75F0](v42, -1, -1);
      }

      else
      {
      }

      v6 = 0;
    }
  }

  sub_1DF4BF4C8(v0 + 304);

  v7 = v4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_regionCode_obj();

    if (v10)
    {
      v11 = sub_1DF564944();
      v13 = v12;

      if (v11 == 18499 && v13 == 0xE200000000000000)
      {

        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = sub_1DF5650D4();
      }
    }

    v15 = *(v0 + 360);
    v14 = *(v0 + 368);
    *(v0 + 208) = 256;
    *(v0 + 216) = v15;
    *(v0 + 224) = v14;
    *(v0 + 232) = v7;
    *(v0 + 240) = v6;
    *(v0 + 248) = 768;
    *(v0 + 256) = 0;
    *(v0 + 264) = v10 & 1;
    v16 = *(v0 + 208);
    v17 = *(v0 + 224);
    v18 = *(v0 + 240);
    *(v0 + 121) = *(v0 + 249);
    *(v0 + 96) = v17;
    *(v0 + 112) = v18;
    *(v0 + 80) = v16;
    v19 = v3;
    v20 = sub_1DF564794();
    v21 = sub_1DF564C44();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 416);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_1DF47EF6C(0xD000000000000016, v22, &v45);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v19;
      *v24 = v19;
      v26 = v19;
      _os_log_impl(&dword_1DF47C000, v20, v21, "%s Returning ticket: %@", v23, 0x16u);
      sub_1DF47E5B4(v24, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E12D75F0](v25, -1, -1);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    v28 = *(v0 + 384);
    v27 = *(v0 + 392);
    v29 = *(v0 + 376);
    v30 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
    sub_1DF564474();
    v31 = *&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 24];
    v32 = *&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 32];
    __swift_project_boxed_opaque_existential_0(&v30[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore], v31);
    *(v0 + 344) = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v28 + 16))(boxed_opaque_existential_1, v27, v29);
    (*(v32 + 8))(v0 + 320, 0xD00000000000001ALL, 0x80000001DF572E00, v31, v32);

    (*(v28 + 8))(v27, v29);
    sub_1DF47E5B4(v0 + 320, &qword_1ECE378F0, &qword_1DF5686F0);
    sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 208);

    v34 = *(v0 + 8);

    return v34(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF520908()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1DF520A1C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000012, 0x80000001DF574450, sub_1DF521870, v2, v4);
}

uint64_t sub_1DF520A1C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF520B9C;
  }

  else
  {

    v2 = sub_1DF520B38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF520B38()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF520B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF520C24()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1DF520A1C;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001DF5744A0, sub_1DF521864, v2, v4);
}

uint64_t sub_1DF520D58()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1DF520E6C;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0x546E4974704F6D67, 0xEF2928656C67676FLL, sub_1DF52185C, v2, v4);
}

uint64_t sub_1DF520E6C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF520FF0;
  }

  else
  {

    v2 = sub_1DF520F88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF520F88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF520FF0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DF521060()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF48D3C0;

  return sub_1DF51C5A8(v2);
}

uint64_t sub_1DF52110C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF484C20(a1, v4);
}

uint64_t sub_1DF5211C4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF48D3C0;

  return sub_1DF51C090(v2);
}

uint64_t sub_1DF521270()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF48D3C0;

  return sub_1DF51BAB0(v2);
}

uint64_t sub_1DF52131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF51CB20(a1, v4, v5, v6);
}

uint64_t sub_1DF5213E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF48D3C0;

  return sub_1DF51B7FC(v2);
}

uint64_t sub_1DF521494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51B1EC(v2, v3);
}

uint64_t sub_1DF521540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51AAA0(v2, v3);
}

uint64_t sub_1DF5215F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51A798(v2, v3);
}

uint64_t sub_1DF5216A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51A490(v2, v3);
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF521888(uint64_t a1)
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
  v11[1] = sub_1DF48D3C0;

  return sub_1DF5196C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF521990(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF518238(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t static AvailabilityStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t AvailabilityStatus.unavailabilityReasons.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void static AvailabilityStatus.current.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentAvailability];
  v3 = [v2 status];
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = [v2 unavailabiltyReasons];
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v4 = 512;
    }
  }

  else
  {
    v4 = v3;
    v5 = 1;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955738);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    if (v5)
    {
      if (v4)
      {
        v11 = 0x646574696D696CLL;
      }

      else
      {
        v11 = 0x6C62616C69617661;
      }

      if (v4)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      sub_1DF564DF4();

      v13 = CSFUnavailabilityReasons.description.getter(v4);
      MEMORY[0x1E12D62C0](v13);

      v11 = 0xD000000000000016;
      v12 = 0x80000001DF571330;
    }

    v14 = sub_1DF47EF6C(v11, v12, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DF47C000, v7, v8, "[sync] Fetched current AvailabilityStatus: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
}

uint64_t sub_1DF521D78()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF521EA0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4E5758;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF521EA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF521F80, 0, 0);
}

uint64_t sub_1DF521F80()
{
  v18 = v0;
  v1 = v0[18];
  v2 = [v1 status];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v3 = [v1 unavailabiltyReasons];
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v3 = 512;
    }
  }

  else
  {
    v3 = v2;
    v4 = 1;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED955738);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136446210;
    if (v4)
    {
      if (v3)
      {
        v10 = 0x646574696D696CLL;
      }

      else
      {
        v10 = 0x6C62616C69617661;
      }

      if (v3)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      sub_1DF564DF4();

      v17[1] = 0xD000000000000016;
      v17[2] = 0x80000001DF571330;
      v12 = CSFUnavailabilityReasons.description.getter(v3);
      MEMORY[0x1E12D62C0](v12);

      v10 = 0xD000000000000016;
      v11 = 0x80000001DF571330;
    }

    v13 = sub_1DF47EF6C(v10, v11, v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DF47C000, v6, v7, "[async] Fetched current AvailabilityStatus: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v14 = v0[19];
  *v14 = v3;
  *(v14 + 8) = v4;
  v15 = v0[1];

  return v15();
}

uint64_t AvailabilityStatus.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 0x646574696D696CLL;
    }

    else
    {
      return 0x6C62616C69617661;
    }
  }

  else
  {
    sub_1DF564DF4();

    v3 = CSFUnavailabilityReasons.description.getter(v1);
    MEMORY[0x1E12D62C0](v3);

    return 0xD000000000000016;
  }
}

uint64_t sub_1DF5222C0(uint64_t a1)
{
  v2 = sub_1DF5230DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5222FC(uint64_t a1)
{
  v2 = sub_1DF5230DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF522338(uint64_t a1)
{
  v2 = sub_1DF522FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF522374(uint64_t a1)
{
  v2 = sub_1DF522FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5223B0(uint64_t a1)
{
  v2 = sub_1DF523088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5223EC(uint64_t a1)
{
  v2 = sub_1DF523088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF522428(uint64_t a1)
{
  v2 = sub_1DF523034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF522464(uint64_t a1)
{
  v2 = sub_1DF523034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvailabilityStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381A8, &qword_1DF56BCA0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381B0, &qword_1DF56BCA8);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381B8, &qword_1DF56BCB0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381C0, &qword_1DF56BCB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF522FE0();
  sub_1DF5652A4();
  if (v14 == 1)
  {
    v15 = (v10 + 8);
    if (v13)
    {
      v34 = 1;
      sub_1DF523088();
      v16 = v26;
      sub_1DF565014();
      v18 = v27;
      v17 = v28;
    }

    else
    {
      v33 = 0;
      sub_1DF5230DC();
      v16 = v23;
      sub_1DF565014();
      v18 = v24;
      v17 = v25;
    }

    (*(v18 + 8))(v16, v17);
    return (*v15)(v12, v9);
  }

  else
  {
    v35 = 2;
    sub_1DF523034();
    v19 = v29;
    sub_1DF565014();
    v32 = v13;
    type metadata accessor for UnavailabilityReasons(0);
    sub_1DF4AAB30(&qword_1ECE37E00, &protocol conformance descriptor for CSFUnavailabilityReasons);
    v20 = v31;
    sub_1DF565074();
    (*(v30 + 8))(v19, v20);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t AvailabilityStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t AvailabilityStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t AvailabilityStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381E8, &qword_1DF56BCC0);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381F0, &qword_1DF56BCC8);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381F8, &qword_1DF56BCD0);
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38200, &unk_1DF56BCD8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1DF522FE0();
  v17 = v43;
  sub_1DF565284();
  if (!v17)
  {
    v35 = 0;
    v18 = v40;
    v43 = v13;
    v19 = v42;
    v20 = sub_1DF564FF4();
    v21 = (2 * *(v20 + 16)) | 1;
    v45 = v20;
    v46 = v20 + 32;
    v47 = 0;
    v48 = v21;
    v22 = sub_1DF4E97D8();
    if (v22 == 3 || v47 != v48 >> 1)
    {
      v24 = sub_1DF564E44();
      swift_allocError();
      v25 = v15;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E38, &qword_1DF5693E0);
      *v27 = &type metadata for AvailabilityStatus;
      sub_1DF564F74();
      sub_1DF564E34();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
    }

    else
    {
      if (!v22)
      {
        LOBYTE(v49) = 0;
        sub_1DF5230DC();
        v29 = v35;
        sub_1DF564F64();
        v30 = v43;
        if (v29)
        {
LABEL_13:
          (*(v43 + 8))(v15, v12);
          goto LABEL_10;
        }

        (*(v18 + 8))(v11, v9);
        (*(v30 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v34 = 0;
        v33 = 1;
LABEL_18:
        *v19 = v34;
        *(v19 + 8) = v33;
        return __swift_destroy_boxed_opaque_existential_0(v44);
      }

      if (v22 == 1)
      {
        LOBYTE(v49) = 1;
        sub_1DF523088();
        v23 = v35;
        sub_1DF564F64();
        if (v23)
        {
          goto LABEL_13;
        }

        (*(v36 + 8))(v8, v37);
        (*(v43 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v34 = 1;
        v33 = 1;
        goto LABEL_18;
      }

      LOBYTE(v49) = 2;
      sub_1DF523034();
      v25 = v15;
      v31 = v35;
      sub_1DF564F64();
      if (!v31)
      {
        type metadata accessor for UnavailabilityReasons(0);
        sub_1DF4AAB30(&qword_1ECE37E40, &protocol conformance descriptor for CSFUnavailabilityReasons);
        v32 = v38;
        sub_1DF564FE4();
        (*(v39 + 8))(0, v32);
        (*(v43 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = v49;
        goto LABEL_18;
      }
    }

    (*(v43 + 8))(v25, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

unint64_t sub_1DF522FE0()
{
  result = qword_1ECE381C8;
  if (!qword_1ECE381C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381C8);
  }

  return result;
}

unint64_t sub_1DF523034()
{
  result = qword_1ECE381D0;
  if (!qword_1ECE381D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381D0);
  }

  return result;
}

unint64_t sub_1DF523088()
{
  result = qword_1ECE381D8;
  if (!qword_1ECE381D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381D8);
  }

  return result;
}

unint64_t sub_1DF5230DC()
{
  result = qword_1ECE381E0;
  if (!qword_1ECE381E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381E0);
  }

  return result;
}

unint64_t sub_1DF523134()
{
  result = qword_1ECE38208;
  if (!qword_1ECE38208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38208);
  }

  return result;
}

unint64_t sub_1DF5231DC()
{
  result = qword_1ECE38210;
  if (!qword_1ECE38210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38210);
  }

  return result;
}

unint64_t sub_1DF523234()
{
  result = qword_1ECE38218;
  if (!qword_1ECE38218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38218);
  }

  return result;
}

unint64_t sub_1DF52328C()
{
  result = qword_1ECE38220;
  if (!qword_1ECE38220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38220);
  }

  return result;
}

unint64_t sub_1DF5232E4()
{
  result = qword_1ECE38228;
  if (!qword_1ECE38228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38228);
  }

  return result;
}

unint64_t sub_1DF52333C()
{
  result = qword_1ECE38230;
  if (!qword_1ECE38230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38230);
  }

  return result;
}

unint64_t sub_1DF523394()
{
  result = qword_1ECE38238;
  if (!qword_1ECE38238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38238);
  }

  return result;
}

unint64_t sub_1DF5233EC()
{
  result = qword_1ECE38240;
  if (!qword_1ECE38240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38240);
  }

  return result;
}

unint64_t sub_1DF523444()
{
  result = qword_1ECE38248;
  if (!qword_1ECE38248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38248);
  }

  return result;
}

unint64_t sub_1DF52349C()
{
  result = qword_1ECE38250;
  if (!qword_1ECE38250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38250);
  }

  return result;
}

unint64_t sub_1DF5234F4()
{
  result = qword_1ECE38258;
  if (!qword_1ECE38258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38258);
  }

  return result;
}

uint64_t sub_1DF523548(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF523568, 0, 0);
}

uint64_t sub_1DF523568()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF523684;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38278, &unk_1DF56C350);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF523888;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 configurationWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF523684()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1DF52381C;
  }

  else
  {
    v2 = sub_1DF523794;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF523794()
{
  v1 = v0[18];
  v2 = v0[19];
  v2[3] = sub_1DF4BECB0(0, &qword_1ECE38280, 0x1E698B9C0);
  v2[4] = &off_1F5A86E70;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF52381C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1DF523888(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DF523960(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF48D4B0;

  return sub_1DF523548(a1);
}

uint64_t sub_1DF5239FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DF564914();
  v5 = [v3 _urlStringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1DF564944();

  return v6;
}

uint64_t sub_1DF523AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DF4A4248;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DF523C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF48D4B0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF523DA0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 32, &v5, &qword_1ECE38370, &qword_1DF569E50);
  if (v6)
  {
    return sub_1DF47E390(&v5, a1);
  }

  sub_1DF47E5B4(&v5, &qword_1ECE38370, &qword_1DF569E50);
  v4 = [objc_opt_self() sharedServerWithNoUrlCache];
  a1[3] = sub_1DF4BECB0(0, &qword_1ED9551B8, 0x1E698B968);
  a1[4] = &off_1F5A86F58;
  *a1 = v4;
  sub_1DF47FCEC(a1, &v5);
  swift_beginAccess();
  sub_1DF526358(&v5, v1 + 32, &qword_1ECE38370, &qword_1DF569E50);
  return swift_endAccess();
}

uint64_t sub_1DF523EC8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF523EEC, 0, 0);
}

uint64_t sub_1DF523EEC()
{
  v1 = v0[30];
  v0[31] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[32] = v2;
  ObjectType = swift_getObjectType();
  v0[33] = ObjectType;
  v8 = (*(v2 + 24) + **(v2 + 24));
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1DF524028;
  v6 = v0[28];
  v5 = v0[29];

  return v8(v6, v5, ObjectType, v2);
}

uint64_t sub_1DF524028(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF524184, 0, 0);
  }
}

uint64_t sub_1DF524184()
{
  if (v0[35])
  {
    v1 = v0[36];
LABEL_3:
    v2 = v0[1];

    return v2(v1);
  }

  v4 = v0[30];
  swift_beginAccess();
  sub_1DF47E4CC(v4 + 72, (v0 + 2), &qword_1ECE381A0, &unk_1DF56C320);
  v5 = v0[5];
  sub_1DF47E5B4((v0 + 2), &qword_1ECE381A0, &unk_1DF56C320);
  if (v5)
  {
    v6 = v0[30];
    if (*(v6 + 96))
    {
      v7 = v0[28];
      v8 = v0[29];
      sub_1DF47FCEC(v6 + 72, (v0 + 17));
      v9 = v0[20];
      v10 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v9);
      v11 = (*(v10 + 8))(v7, v8, v9, v10);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      if (v13)
      {
        (*(v0[32] + 32))(v11, v13, v0[28], v0[29], v0[33]);
        v1 = v11;
        goto LABEL_3;
      }
    }

    sub_1DF498474();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }

  else
  {
    sub_1DF523DA0(v0 + 12);
    v16 = v0[15];
    v17 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v16);
    v19 = (*(v17 + 8) + **(v17 + 8));
    v18 = swift_task_alloc();
    v0[37] = v18;
    *v18 = v0;
    v18[1] = sub_1DF524468;

    return v19(v0 + 7, v16, v17);
  }
}

uint64_t sub_1DF524468()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1DF524730;
  }

  else
  {
    v2 = sub_1DF52457C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF52457C()
{
  v1 = v0[30];
  swift_beginAccess();
  sub_1DF526358((v0 + 7), v1 + 72, &qword_1ECE381A0, &unk_1DF56C320);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[30];
  if (*(v2 + 96) && (v3 = v0[28], v4 = v0[29], sub_1DF47FCEC(v2 + 72, (v0 + 17)), v5 = v0[20], v6 = v0[21], __swift_project_boxed_opaque_existential_0(v0 + 17, v5), v7 = (*(v6 + 8))(v3, v4, v5, v6), v9 = v8, __swift_destroy_boxed_opaque_existential_0(v0 + 17), v9))
  {
    (*(v0[32] + 32))(v7, v9, v0[28], v0[29], v0[33]);
    v10 = v0[1];

    return v10(v7, v9);
  }

  else
  {
    sub_1DF498474();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1DF524730()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF524794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v7 + 16))(a1, a2, a3, ObjectType, v7);
}

uint64_t sub_1DF524804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF527BE0;

  return sub_1DF523EC8(a1, a2);
}

uint64_t sub_1DF5248A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  return (*(v9 + 32))(a1, a2, a3, a4, ObjectType, v9);
}

uint64_t sub_1DF524928()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_1DF524974(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(a1, ObjectType, v3);
}

uint64_t sub_1DF5249CC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(ObjectType, v1) & 1;
}

uint64_t sub_1DF524A1C(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 72))(a1, ObjectType, v3);
}

uint64_t sub_1DF524A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF526510();
  v10 = sub_1DF5642B4();
  v12 = v11;

  if (!v7)
  {
    sub_1DF47E4CC(v6 + 16, v17, &qword_1ECE37CE0, &qword_1DF568B40);
    v14 = v18;
    if (v18)
    {
      v15 = v19;
      __swift_project_boxed_opaque_existential_0(v17, v18);
      v16[3] = MEMORY[0x1E6969080];
      v16[0] = v10;
      v16[1] = v12;
      v24 = *(v15 + 8);
      sub_1DF4AD474(v10, v12);
      v24(v16, a5, a6, v14, v15);
      sub_1DF48C308(v10, v12);
      sub_1DF47E5B4(v16, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_1DF48C308(v10, v12);
      return sub_1DF47E5B4(v17, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  type metadata accessor for NextRefreshCacheBox(0);
  sub_1DF52772C(&qword_1ECE37690, type metadata accessor for NextRefreshCacheBox, &unk_1DF56C440);
  v7 = sub_1DF5642B4();
  v9 = v8;

  if (!v4)
  {
    sub_1DF47E4CC(v3 + 16, v14, &qword_1ECE37CE0, &qword_1DF568B40);
    v11 = v15;
    if (v15)
    {
      v12 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v13[3] = MEMORY[0x1E6969080];
      v13[0] = v7;
      v13[1] = v9;
      v17 = *(v12 + 8);
      sub_1DF4AD474(v7, v9);
      v17(v13, a2, a3, v11, v12);
      sub_1DF48C308(v7, v9);
      sub_1DF47E5B4(v13, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_1DF48C308(v7, v9);
      return sub_1DF47E5B4(v14, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524DC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v19[0] = a1;
  v20 = a2;
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF5264BC();
  v9 = sub_1DF5642B4();
  v11 = v10;

  if (!v6)
  {
    sub_1DF47E4CC(v5 + 16, v16, &qword_1ECE37CE0, &qword_1DF568B40);
    v13 = v17;
    if (v17)
    {
      v14 = v18;
      __swift_project_boxed_opaque_existential_0(v16, v17);
      v15[3] = MEMORY[0x1E6969080];
      v15[0] = v9;
      v15[1] = v11;
      v22 = *(v14 + 8);
      sub_1DF4AD474(v9, v11);
      v22(v15, a4, a5, v13, v14);
      sub_1DF48C308(v9, v11);
      sub_1DF47E5B4(v15, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      sub_1DF48C308(v9, v11);
      return sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524F4C(char a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF5263C0();
  v7 = sub_1DF5642B4();
  v9 = v8;

  if (!v4)
  {
    sub_1DF47E4CC(v3 + 16, v15, &qword_1ECE37CE0, &qword_1DF568B40);
    v11 = v16;
    if (v16)
    {
      v12 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      v14[3] = MEMORY[0x1E6969080];
      v14[0] = v7;
      v14[1] = v9;
      v13 = *(v12 + 8);
      sub_1DF4AD474(v7, v9);
      v13(v14, a2, a3, v11, v12);
      sub_1DF48C308(v7, v9);
      sub_1DF47E5B4(v14, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_1DF48C308(v7, v9);
      return sub_1DF47E5B4(v15, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF5250D4(uint64_t a1, uint64_t a2)
{
  sub_1DF47E4CC(v2 + 16, v12, &qword_1ECE37CE0, &qword_1DF568B40);
  v6 = v13;
  if (!v13)
  {
    sub_1DF47E5B4(v12, &qword_1ECE37CE0, &qword_1DF568B40);
    return 0;
  }

  v7 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v8 = (*(v7 + 32))(a1, a2, v6, v7);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  sub_1DF5642A4();
  swift_allocObject();
  sub_1DF564294();
  sub_1DF526468();
  sub_1DF564284();
  if (v3)
  {

    return sub_1DF48C2F4(v8, v10);
  }

  else
  {
    sub_1DF48C2F4(v8, v10);

    return v15;
  }
}

uint64_t sub_1DF52523C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox(0);
  MEMORY[0x1EEE9AC00](RefreshCacheBox - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1DF564494();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF47E4CC(a1, v11, &qword_1ECE37A10, &qword_1DF567C00);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DF47E5B4(v11, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E4CC(v19[1] + 16, v20, &qword_1ECE37CE0, &qword_1DF568B40);
    v16 = v21;
    if (v21)
    {
      v17 = v22;
      __swift_project_boxed_opaque_existential_0(v20, v21);
      (*(v17 + 16))(a2, a3, v16, v17);
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      return sub_1DF47E5B4(v20, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    sub_1DF524C00(v8, a2, a3);
    sub_1DF5265FC(v8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1DF525508(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF52552C, 0, 0);
}

uint64_t sub_1DF52552C()
{
  v1 = v0[13];
  sub_1DF47E4CC(v1 + 16, (v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v6 = (*(v5 + 32))(v4, v3, v2, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v8 >> 60 == 15)
  {
    goto LABEL_11;
  }

  sub_1DF5642A4();
  swift_allocObject();
  sub_1DF564294();
  sub_1DF5265A8();
  sub_1DF564284();
  sub_1DF48C2F4(v6, v8);

  v9 = v0[8];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v0[7];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[13];
  if (*(v13 + 56) == v12 && v11 == *(v13 + 64) || (sub_1DF5650D4() & 1) != 0)
  {

    v14 = v9;
    v15 = v10;
    goto LABEL_12;
  }

  sub_1DF526564(v10, v9, v12, v11);
  sub_1DF47E4CC(v1 + 16, (v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v16 = v0[5];
  if (v16)
  {
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    (*(v19 + 16))(v18, v17, v16, v19);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
LABEL_10:
    sub_1DF47E5B4((v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  }

LABEL_11:
  v15 = 0;
  v14 = 0;
LABEL_12:
  v20 = v0[1];

  return v20(v15, v14);
}

uint64_t sub_1DF525790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v10 = *(v4 + 56);
    v9 = *(v4 + 64);

    sub_1DF524A74(a1, a2, v10, v9, a3, a4);
  }

  else
  {
    sub_1DF47E4CC(v4 + 16, v14, &qword_1ECE37CE0, &qword_1DF568B40);
    v12 = v15;
    if (v15)
    {
      v13 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      (*(v13 + 16))(a3, a4, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      return sub_1DF47E5B4(v14, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }
}

uint64_t sub_1DF5258D8(char a1)
{
  if (a1 == 2)
  {
    sub_1DF47E4CC(v1 + 16, v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v2 = v9;
    if (v9)
    {
      v3 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v3 + 16))(0xD000000000000012, 0x80000001DF5728E0, v2, v3);
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      return sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  else
  {
    sub_1DF47E4CC(v1 + 16, v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 16))(0xD000000000000019, 0x80000001DF574990, v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    return sub_1DF524DC0(a1 & 1, *(v1 + 56), *(v1 + 64), 0xD000000000000012, 0x80000001DF5728E0);
  }
}

uint64_t sub_1DF525A84()
{
  sub_1DF47E4CC(v0 + 16, v11, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v12;
  if (v12)
  {
    v2 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v3 = (*(v2 + 32))(0xD000000000000019, 0x80000001DF574990, v1, v2);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (v5 >> 60 != 15)
    {
      sub_1DF5642A4();
      swift_allocObject();
      sub_1DF564294();
      sub_1DF526414();
      sub_1DF564284();
      sub_1DF48C2F4(v3, v5);

      if (v14 != 2 && (v14 & 1) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    sub_1DF47E5B4(v11, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  sub_1DF5250D4(0xD000000000000012, 0x80000001DF5728E0);
  if (!v7)
  {
LABEL_6:
    v8 = 1;
    return v8 & 1;
  }

  if (v6 == *(v0 + 56) && v7 == *(v0 + 64))
  {

    v8 = 0;
  }

  else
  {
    v10 = sub_1DF5650D4();

    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1DF525C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1DF564494();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382C8, &qword_1DF56C590);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox(0);
  MEMORY[0x1EEE9AC00](RefreshCacheBox - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5276D8();
  sub_1DF565284();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1DF52772C(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DF564FE4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1DF526658(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF525F10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382A0, &qword_1DF56C570);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52744C();
  sub_1DF5652A4();
  v13 = 0;
  sub_1DF565064();
  if (!v4)
  {
    v12 = 1;
    sub_1DF565054();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DF5260A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382A8, &qword_1DF56C578);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5274A0();
  sub_1DF5652A4();
  v14 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v13 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DF52623C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4984C8;

  return sub_1DF525508(a1, a2);
}

uint64_t sub_1DF526358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DF5263C0()
{
  result = qword_1ED954B40;
  if (!qword_1ED954B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B40);
  }

  return result;
}

unint64_t sub_1DF526414()
{
  result = qword_1ED954B38;
  if (!qword_1ED954B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B38);
  }

  return result;
}

unint64_t sub_1DF526468()
{
  result = qword_1ED9550F0;
  if (!qword_1ED9550F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9550F0);
  }

  return result;
}

unint64_t sub_1DF5264BC()
{
  result = qword_1ED954C90;
  if (!qword_1ED954C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C90);
  }

  return result;
}

unint64_t sub_1DF526510()
{
  result = qword_1ECE38260;
  if (!qword_1ECE38260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38260);
  }

  return result;
}

void sub_1DF526564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_1DF5265A8()
{
  result = qword_1ECE38268;
  if (!qword_1ECE38268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38268);
  }

  return result;
}

uint64_t sub_1DF5265FC(uint64_t a1)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox(0);
  (*(*(RefreshCacheBox - 8) + 8))(a1, RefreshCacheBox);
  return a1;
}

uint64_t sub_1DF526658(uint64_t a1, uint64_t a2)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox(0);
  (*(*(RefreshCacheBox - 8) + 32))(a2, a1, RefreshCacheBox);
  return a2;
}

uint64_t sub_1DF5266E4(uint64_t a1)
{
  result = sub_1DF564494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF526760(uint64_t a1, int a2)
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

uint64_t sub_1DF5267A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF526828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726665527478656ELL && a2 == 0xEB00000000687365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5268B4(uint64_t a1)
{
  v2 = sub_1DF5276D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5268F0(uint64_t a1)
{
  v2 = sub_1DF5276D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526944(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382C0, &qword_1DF56C588);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5276D8();
  sub_1DF5652A4();
  sub_1DF564494();
  sub_1DF52772C(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DF565074();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DF526ABC()
{
  if (*v0)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1DF526B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001DF5728E0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DF526BF0(uint64_t a1)
{
  v2 = sub_1DF52744C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526C2C(uint64_t a1)
{
  v2 = sub_1DF52744C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526C68@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF5272A0(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DF526CBC()
{
  if (*v0)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DF526CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF526DD8(uint64_t a1)
{
  v2 = sub_1DF5274A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526E14(uint64_t a1)
{
  v2 = sub_1DF5274A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526E50@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF5274F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DF526EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF526F38(uint64_t a1)
{
  v2 = sub_1DF52724C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526F74(uint64_t a1)
{
  v2 = sub_1DF52724C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526FB0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38290, &qword_1DF56C560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52724C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1DF564FD4();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1DF527114(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38288, &qword_1DF56C558);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52724C();
  sub_1DF5652A4();
  sub_1DF565064();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF52724C()
{
  result = qword_1ED954B58;
  if (!qword_1ED954B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B58);
  }

  return result;
}

uint64_t sub_1DF5272A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38298, &qword_1DF56C568);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_1DF52744C();
  sub_1DF565284();
  if (!v1)
  {
    v9[15] = 0;
    LOBYTE(v7) = sub_1DF564FD4();
    v9[14] = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7 & 1;
}

unint64_t sub_1DF52744C()
{
  result = qword_1ED955108;
  if (!qword_1ED955108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955108);
  }

  return result;
}

unint64_t sub_1DF5274A0()
{
  result = qword_1ECE382B0;
  if (!qword_1ECE382B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382B0);
  }

  return result;
}

uint64_t sub_1DF5274F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382B8, &qword_1DF56C580);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5274A0();
  sub_1DF565284();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DF564FC4();
    v10 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1DF5276D8()
{
  result = qword_1ECE376A8;
  if (!qword_1ECE376A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376A8);
  }

  return result;
}

uint64_t sub_1DF52772C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF5277B8()
{
  result = qword_1ECE382D0;
  if (!qword_1ECE382D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382D0);
  }

  return result;
}

unint64_t sub_1DF527810()
{
  result = qword_1ECE382D8;
  if (!qword_1ECE382D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382D8);
  }

  return result;
}

unint64_t sub_1DF527868()
{
  result = qword_1ECE382E0;
  if (!qword_1ECE382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382E0);
  }

  return result;
}

unint64_t sub_1DF5278C0()
{
  result = qword_1ECE382E8;
  if (!qword_1ECE382E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382E8);
  }

  return result;
}

unint64_t sub_1DF527918()
{
  result = qword_1ECE37698;
  if (!qword_1ECE37698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37698);
  }

  return result;
}

unint64_t sub_1DF527970()
{
  result = qword_1ECE376A0;
  if (!qword_1ECE376A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376A0);
  }

  return result;
}

unint64_t sub_1DF5279C8()
{
  result = qword_1ECE382F0;
  if (!qword_1ECE382F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382F0);
  }

  return result;
}

unint64_t sub_1DF527A20()
{
  result = qword_1ECE382F8;
  if (!qword_1ECE382F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382F8);
  }

  return result;
}

unint64_t sub_1DF527A78()
{
  result = qword_1ED9550F8;
  if (!qword_1ED9550F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9550F8);
  }

  return result;
}

unint64_t sub_1DF527AD0()
{
  result = qword_1ED955100;
  if (!qword_1ED955100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955100);
  }

  return result;
}

unint64_t sub_1DF527B28()
{
  result = qword_1ED954B48;
  if (!qword_1ED954B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B48);
  }

  return result;
}

unint64_t sub_1DF527B80()
{
  result = qword_1ED954B50;
  if (!qword_1ED954B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B50);
  }

  return result;
}

CloudSubscriptionFeatures::FollowUp::Feature_optional __swiftcall FollowUp.Feature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

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

  *v2 = v5;
  return result;
}

unint64_t FollowUp.Feature.cfuID.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DF527CD8(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7 + 16;
  (*(v6 + 16))(v19 - v7 + 16, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = sub_1DF50AF70(0, sub_1DF530480, v10);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, v19);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Sending %s request to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  a3(v11, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF52819C(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, uint64_t), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = *(v12 + 16);
  v26 = a1;
  v15(&v25 - v13, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  v18 = sub_1DF50AF70(0, a8, v17);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED956398);
  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, v27);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, v27);
    _os_log_impl(&dword_1DF47C000, v20, v21, "Sending %s request to %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  a3(v18, v26);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF5285F4(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B14();
}

uint64_t sub_1DF5287F0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED956398);
  v8 = a1;
  v9 = sub_1DF564794();
  v10 = sub_1DF564C24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, &v19);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DF5651B4();
    v15 = sub_1DF47EF6C(v13, v14, &v19);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v9, v10, "remote proxy error in %s: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  sub_1DF498474();
  v16 = swift_allocError();
  *v17 = 1;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1DF564B14();
}

uint64_t FollowUp.Feature.rawValue.getter()
{
  if (*v0)
  {
    return 7169121;
  }

  else
  {
    return 7169633;
  }
}

CloudSubscriptionFeatures::FollowUp::WaitlistCFUEligibilityResult_optional __swiftcall FollowUp.WaitlistCFUEligibilityResult.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id sub_1DF528A28(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1DF528B00(a1);
  v2 = sub_1DF564A94();

  v6[0] = 0;
  v3 = [v1 clearPendingFollowUpItemsWithUniqueIdentifiers:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1DF5642F4();

  return swift_willThrow();
}

uint64_t sub_1DF528B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCED0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DF4BCED0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1DF49A88C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1DF528C24(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([v1 postFollowUpItem:a1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_1DF5642F4();

  return swift_willThrow();
}

uint64_t sub_1DF528CF4()
{
  v1 = sub_1DF528D70();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF528D70()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v2 = [v0 pendingFollowUpItems_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    sub_1DF4BECB0(0, &qword_1ED954D30, 0x1E6997AD0);
    v1 = sub_1DF564AA4();
    v5 = v3;
  }

  else
  {
    v6 = v8[0];
    sub_1DF5642F4();

    swift_willThrow();
  }

  return v1;
}

uint64_t FollowUpError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

unint64_t FollowUp.WaitlistCFUEligibilityResult.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x656C626967696C65;
  if (v1 == 4)
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DF528FB0()
{
  v1 = *v0;
  v2 = 0x656C626967696C65;
  if (v1 == 4)
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF52907C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DF567CF0;
  *(v1 + 32) = 0x746E6553736168;
  *(v1 + 40) = 0xE700000000000000;
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];

    v4 = 2;
    v1 = sub_1DF4A9DAC(1, 2, 1, v1);
    *(v1 + 16) = 2;
    *(v1 + 48) = v3;
    *(v1 + 56) = v2;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  if (v5)
  {
    v6 = v0[5];
    v7 = *(v1 + 24);

    if (v4 >= v7 >> 1)
    {
      v1 = sub_1DF4A9DAC((v7 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 16) = v4 + 1;
    v8 = v1 + 16 * v4;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF5647B4();
    __swift_project_value_buffer(v9, qword_1ED955C68);
    v10 = sub_1DF564794();
    v11 = sub_1DF564C44();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DF47C000, v10, v11, "Account DSID is nil. CFU hasSent will be keyed on locale only", v12, 2u);
      MEMORY[0x1E12D75F0](v12, -1, -1);
    }
  }

  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF48B2B4(&qword_1ED9551C0, &qword_1ECE37A30, &qword_1DF5676D0, MEMORY[0x1E69E6310]);
  v13 = sub_1DF5648C4();
  v15 = v14;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED955C68);

  v17 = sub_1DF564794();
  v18 = sub_1DF564C44();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF47EF6C(v13, v15, &v22);
    _os_log_impl(&dword_1DF47C000, v17, v18, "Returning CFU hasPosted key: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  return v13;
}

uint64_t sub_1DF5293CC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    (*(v4 + 24))(&v14, 0x41746E6553736168, 0xEA00000000004D44, v3, v4);
    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSentADMCFU and will return false. User may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF529660(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v29, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v30 + 1))
  {
    sub_1DF47E390(&v29, v31);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF5647B4();
    __swift_project_value_buffer(v9, qword_1ED955C68);
    sub_1DF47E4CC(a1, v8, &qword_1ECE37A10, &qword_1DF567C00);

    v10 = sub_1DF564794();
    v11 = sub_1DF564C44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v29 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1DF47EF6C(0x41746E6553736168, 0xEA00000000004D44, &v29);
      *(v12 + 12) = 2080;
      v14 = sub_1DF564CF4();
      v16 = v15;
      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
      v17 = sub_1DF47EF6C(v14, v16, &v29);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1DF47C000, v10, v11, "Updating UserDefaults for key %s to value: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v13, -1, -1);
      MEMORY[0x1E12D75F0](v12, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v23 = v32;
    v24 = v33;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    sub_1DF47E4CC(a1, v6, &qword_1ECE37A10, &qword_1DF567C00);
    v25 = sub_1DF564494();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v6, 1, v25) == 1)
    {
      sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
      v29 = 0u;
      v30 = 0u;
    }

    else
    {
      *(&v30 + 1) = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      (*(v26 + 32))(boxed_opaque_existential_1, v6, v25);
    }

    (*(v24 + 8))(&v29, 0x41746E6553736168, 0xEA00000000004D44, v23, v24);
    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v29, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_1DF47E5B4(&v29, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED955C68);
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DF47C000, v19, v20, "Unable to init UserDefaults, will not update hasSentADMCFU.", v21, 2u);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF529B48(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF5293CC(v4);
  return sub_1DF529C04;
}

uint64_t sub_1DF529C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1DF47E4CC(a1, &v11 - v8, &qword_1ECE37A10, &qword_1DF567C00);
  return a5(v9);
}

uint64_t sub_1DF529CD0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v16[4];
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    v4 = sub_1DF52907C();
    (*(v3 + 24))(&v14, v4);

    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSeenCFU and will return false. User may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF529F68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v36, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v37 + 1))
  {
    sub_1DF47E390(&v36, v38);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF5647B4();
    __swift_project_value_buffer(v9, qword_1ED955C68);
    sub_1DF47E4CC(a1, v8, &qword_1ECE37A10, &qword_1DF567C00);

    v10 = sub_1DF564794();
    v11 = sub_1DF564C44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v35 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      *&v36 = v14;
      *v13 = 136315394;
      v15 = sub_1DF52907C();
      v17 = sub_1DF47EF6C(v15, v16, &v36);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_1DF564CF4();
      v20 = v19;
      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
      v21 = sub_1DF47EF6C(v18, v20, &v36);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1DF47C000, v10, v11, "Updating UserDefaults for key %s to value: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v14, -1, -1);
      v22 = v13;
      a1 = v35;
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v28 = v39;
    v29 = v40;
    __swift_project_boxed_opaque_existential_0(v38, v39);
    sub_1DF47E4CC(a1, v6, &qword_1ECE37A10, &qword_1DF567C00);
    v30 = sub_1DF564494();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v6, 1, v30) == 1)
    {
      sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
      v36 = 0u;
      v37 = 0u;
    }

    else
    {
      *(&v37 + 1) = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*(v31 + 32))(boxed_opaque_existential_1, v6, v30);
    }

    v33 = sub_1DF52907C();
    (*(v29 + 8))(&v36, v33, v34, v28, v29);

    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v36, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_1DF47E5B4(&v36, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED955C68);
    v24 = sub_1DF564794();
    v25 = sub_1DF564C24();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DF47C000, v24, v25, "Unable to init UserDefaults, will not update hasSeenCFU.", v26, 2u);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF52A46C(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF529CD0(v4);
  return sub_1DF52A528;
}

void sub_1DF52A540(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1DF47E4CC(*(a1 + 16), v4, &qword_1ECE37A10, &qword_1DF567C00);
    a3(v4);
    sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1DF52A5E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35[-v2];
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-v9];
  sub_1DF529CD0(v3);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v10, v3, v4);
    v15 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED955C68);
    (*(v5 + 16))(v8, v10, v4);
    v17 = v15;
    v18 = sub_1DF564794();
    v19 = sub_1DF564C44();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v20 = 136315138;
      v36 = v19;
      v21 = sub_1DF5643E4();
      v22 = [v17 stringFromDate_];

      v23 = sub_1DF564944();
      v25 = v24;

      v26 = *(v5 + 8);
      v26(v8, v4);
      v27 = sub_1DF47EF6C(v23, v25, &v38);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1DF47C000, v18, v36, "User saw CFU at %s", v20, 0xCu);
      v28 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);

      v26(v10, v4);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(v8, v4);
      v34(v10, v4);
    }

    return 1;
  }

  sub_1DF47E5B4(v3, &qword_1ECE37A10, &qword_1DF567C00);
  if (!*(v0 + 48) && (sub_1DF52BF2C() & 1) != 0)
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED955C68);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v13, "No value for hasSentCFU but previous user has seen CFU. Returning true.", v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    return 1;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v29 = sub_1DF5647B4();
  __swift_project_value_buffer(v29, qword_1ED955C68);
  v30 = sub_1DF564794();
  v31 = sub_1DF564C44();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DF47C000, v30, v31, "User has not seen CFU.", v32, 2u);
    MEMORY[0x1E12D75F0](v32, -1, -1);
  }

  return 0;
}

void (*sub_1DF52AB20(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = sub_1DF52A5E8() & 1;
  return sub_1DF52ABB4;
}

uint64_t sub_1DF52ABCC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (*a1 == 1)
  {
    sub_1DF564484();
    v10 = sub_1DF564494();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1DF564494();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return a5(v9);
}

BOOL sub_1DF52ACE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v34[-v1];
  v3 = sub_1DF564494();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34[-v8];
  sub_1DF5293CC(v2);
  v10 = (*(v4 + 48))(v2, 1, v3);
  if (v10 == 1)
  {
    sub_1DF47E5B4(v2, &qword_1ECE37A10, &qword_1DF567C00);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF5647B4();
    __swift_project_value_buffer(v28, qword_1ED955C68);
    v29 = sub_1DF564794();
    v30 = sub_1DF564C44();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DF47C000, v29, v30, "User has not seen CFU.", v31, 2u);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    __swift_project_value_buffer(v12, qword_1ED955C68);
    (*(v4 + 16))(v7, v9, v3);
    v13 = v11;
    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = v10;
      v17 = v16;
      v36 = swift_slowAlloc();
      v38 = v36;
      *v17 = 136315138;
      v18 = sub_1DF5643E4();
      v19 = [v13 stringFromDate_];
      v35 = v15;
      v20 = v19;

      v21 = sub_1DF564944();
      v23 = v22;

      v24 = *(v4 + 8);
      v24(v7, v3);
      v25 = sub_1DF47EF6C(v21, v23, &v38);

      *(v17 + 4) = v25;
      _os_log_impl(&dword_1DF47C000, v14, v35, "User saw ADM CFU at %s", v17, 0xCu);
      v26 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      v27 = v17;
      v10 = v37;
      MEMORY[0x1E12D75F0](v27, -1, -1);

      v24(v9, v3);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
      v32(v9, v3);
    }
  }

  return v10 != 1;
}

uint64_t sub_1DF52B168(char a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (a1)
  {
    sub_1DF564484();
    v7 = sub_1DF564494();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_1DF564494();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return a2(v6);
}

void (*sub_1DF52B270(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = sub_1DF52ACE4();
  return sub_1DF52B304;
}

void sub_1DF52B31C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    sub_1DF564484();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DF564494();
  (*(*(v6 - 8) + 56))(v4, v5, 1, v6);
  a3(v4);

  free(v4);
}

uint64_t sub_1DF52B3D8@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1DF52B6DC(&v8 - v3);
  v5 = sub_1DF564494();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  result = sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  *a1 = v6;
  return result;
}

BOOL sub_1DF52B4C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1DF52B6DC(&v6 - v1);
  v3 = sub_1DF564494();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_1DF47E5B4(v2, &qword_1ECE37A10, &qword_1DF567C00);
  return v4;
}

void (*sub_1DF52B5A8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  sub_1DF52B6DC(v4);
  v6 = sub_1DF564494();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
  *(a1 + 16) = v7;
  return sub_1DF52B6A4;
}

void sub_1DF52B6A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1DF52FA2C();

  free(v1);
}

uint64_t sub_1DF52B6DC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    (*(v4 + 24))(&v14, 0xD000000000000017, 0x80000001DF574A90, v3, v4);
    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSentWaitlistCFUDate and will return false. Use may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF52B970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v29, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v30 + 1))
  {
    sub_1DF47E390(&v29, v31);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF5647B4();
    __swift_project_value_buffer(v9, qword_1ED955C68);
    sub_1DF47E4CC(a1, v8, &qword_1ECE37A10, &qword_1DF567C00);

    v10 = sub_1DF564794();
    v11 = sub_1DF564C44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v29 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574A90, &v29);
      *(v12 + 12) = 2082;
      v14 = sub_1DF564CF4();
      v16 = v15;
      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
      v17 = sub_1DF47EF6C(v14, v16, &v29);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1DF47C000, v10, v11, "Updating UserDefaults for key %{public}s to value: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v13, -1, -1);
      MEMORY[0x1E12D75F0](v12, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v23 = v32;
    v24 = v33;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    sub_1DF47E4CC(a1, v6, &qword_1ECE37A10, &qword_1DF567C00);
    v25 = sub_1DF564494();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v6, 1, v25) == 1)
    {
      sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
      v29 = 0u;
      v30 = 0u;
    }

    else
    {
      *(&v30 + 1) = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      (*(v26 + 32))(boxed_opaque_existential_1, v6, v25);
    }

    (*(v24 + 8))(&v29, 0xD000000000000017, 0x80000001DF574A90, v23, v24);
    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v29, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_1DF47E5B4(&v29, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED955C68);
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DF47C000, v19, v20, "Unable to init UserDefaults, will not update hasSentWaitlistCFUDate.", v21, 2u);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF52BE58(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF52B6DC(v4);
  return sub_1DF52BF14;
}

uint64_t sub_1DF52BF2C()
{
  swift_beginAccess();
  sub_1DF47E4CC(v0 + 96, v27, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v28[1])
  {
    sub_1DF47FCEC(v27, v29);
    sub_1DF47E5B4(v27, &qword_1ECE37CE0, &qword_1DF568B40);
    v1 = v30;
    v2 = v31;
    __swift_project_boxed_opaque_existential_0(v29, v30);
    v3 = (*(v2 + 80))(0xD000000000000013, 0x80000001DF5709F0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v29);
    if (v3)
    {
      v4 = 1 << *(v3 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v3 + 64);
      v7 = (v4 + 63) >> 6;

      v8 = 0;
      while (v6)
      {
        v9 = v8;
LABEL_12:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(v3 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1DF47F24C(*(v3 + 56) + 32 * v11, v28);
        v27[0] = v13;
        v27[1] = v14;

        LOBYTE(v13) = sub_1DF52C36C(v13, v14, v28);
        sub_1DF47E5B4(v27, &qword_1ECE37CB8, &qword_1DF56A510);
        if (v13)
        {
          v15 = 1;
LABEL_20:

          if (qword_1ED9558B8 != -1)
          {
            swift_once();
          }

          v21 = sub_1DF5647B4();
          __swift_project_value_buffer(v21, qword_1ED955C68);
          v22 = sub_1DF564794();
          v23 = sub_1DF564C44();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v27[0] = v25;
            *v24 = 136315394;
            *(v24 + 4) = sub_1DF47EF6C(0xD000000000000015, 0x80000001DF574B70, v27);
            *(v24 + 12) = 1024;
            *(v24 + 14) = v15;
            _os_log_impl(&dword_1DF47C000, v22, v23, "%s returning %{BOOL}d", v24, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v25);
            MEMORY[0x1E12D75F0](v25, -1, -1);
            MEMORY[0x1E12D75F0](v24, -1, -1);
          }

          return v15;
        }
      }

      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v15 = 0;
          goto LABEL_20;
        }

        v6 = *(v3 + 64 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1DF47E5B4(v27, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  if (qword_1ED9558B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED955C68);
  v17 = sub_1DF564794();
  v18 = sub_1DF564C44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF47EF6C(0xD000000000000013, 0x80000001DF5709F0, v27);
    _os_log_impl(&dword_1DF47C000, v17, v18, "No persistent domain for suite %s, no users have been sent CFU.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52C36C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42[-v7];
  v9 = sub_1DF564494();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42[-v14];
  sub_1DF47F24C(a3, v46);
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v9);
    (*(v10 + 32))(v15, v8, v9);
    v18 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED955C68);
    (*(v10 + 16))(v13, v15, v9);

    v20 = v18;
    v21 = sub_1DF564794();
    v22 = sub_1DF564C44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = v22;
      v24 = a1;
      v25 = v23;
      v44 = swift_slowAlloc();
      v46[0] = v44;
      *v25 = 136315394;
      *(v25 + 4) = sub_1DF47EF6C(v24, a2, v46);
      *(v25 + 12) = 2080;
      v26 = sub_1DF5643E4();
      v27 = [v20 stringFromDate_];

      v28 = sub_1DF564944();
      v30 = v29;

      v31 = *(v10 + 8);
      v31(v13, v9);
      v32 = sub_1DF47EF6C(v28, v30, v46);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_1DF47C000, v21, v43, "Previous key %s was sent CFU on %s", v25, 0x16u);
      v33 = v44;
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v33, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);

      v31(v15, v9);
    }

    else
    {

      v40 = *(v10 + 8);
      v40(v13, v9);
      v40(v15, v9);
    }

    return 1;
  }

  else
  {
    v17(v8, 1, 1, v9);
    sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47F24C(a3, v46);
    if (swift_dynamicCast())
    {
      v34 = v45;
      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v35 = sub_1DF5647B4();
      __swift_project_value_buffer(v35, qword_1ED955C68);

      v36 = sub_1DF564794();
      v37 = sub_1DF564C44();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_1DF47EF6C(a1, a2, v46);
        *(v38 + 12) = 1024;
        *(v38 + 14) = v34;
        _os_log_impl(&dword_1DF47C000, v36, v37, "Previous key %s was sent CFU without date. Returning %{BOOL}d.", v38, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1E12D75F0](v39, -1, -1);
        MEMORY[0x1E12D75F0](v38, -1, -1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v34;
}

uint64_t sub_1DF52C8F4()
{
  swift_beginAccess();
  sub_1DF47E4CC(v0 + 96, v8, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v9)
  {
    sub_1DF47FCEC(v8, v5);
    sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v3 = (*(v2 + 80))(0xD000000000000013, 0x80000001DF5709F0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    return 0;
  }

  return v3;
}

uint64_t sub_1DF52C9F4()
{
  v1 = v0;
  v2 = type metadata accessor for FollowUpConfig(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF5644C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5644B4();
  v9 = sub_1DF5644A4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v13 = sub_1DF488298(8, v9, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v43 = MEMORY[0x1E12D6280](v13, v15, v17, v19);
  v21 = v20;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED955C68);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  v25 = os_log_type_enabled(v23, v24);
  v42 = "ler";
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136446210;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46[0] = v27;

    MEMORY[0x1E12D62C0](0xD000000000000011, 0x80000001DF574B20);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v43, v21);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v28 = sub_1DF47EF6C(v44, v45, v46);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_1DF47C000, v23, v24, "%{public}s Posting CFU", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E12D75F0](v27, -1, -1);
    MEMORY[0x1E12D75F0](v26, -1, -1);
  }

  sub_1DF506DCC(v4);
  v29 = sub_1DF506878();
  sub_1DF530368(v4);
  v30 = v1[10];
  v31 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v30);
  v32 = *(v31 + 8);
  v33 = v29;
  v32(v29, v30, v31);

  v34 = sub_1DF564794();
  v35 = sub_1DF564C44();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v42;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 136446210;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46[0] = v39;
    MEMORY[0x1E12D62C0](0xD000000000000011, v37 | 0x8000000000000000);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v43, v21);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v40 = sub_1DF47EF6C(v44, v45, v46);

    *(v38 + 4) = v40;
    _os_log_impl(&dword_1DF47C000, v34, v35, "%{public}s Successfully posted waitlist CFU.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1E12D75F0](v39, -1, -1);
    MEMORY[0x1E12D75F0](v38, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1DF52D07C()
{
  v1 = v0[2];
  if (os_unfair_lock_trylock(v1 + 4))
  {
    v2 = sub_1DF52D32C();
    os_unfair_lock_unlock(v1 + 4);
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[3] = v3;
      *v3 = v0;
      v3[1] = sub_1DF52D234;

      return sub_1DF5001EC(14);
    }
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED955C68);
    v6 = sub_1DF564794();
    v7 = sub_1DF564C24();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DF47C000, v6, v7, "CFU posting was already in progess, not posting CFU", v8, 2u);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1DF52D234()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(1);
}

uint64_t sub_1DF52D32C()
{
  if (!sub_1DF52ACE4())
  {
    return sub_1DF52D420() & 1;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED955C68);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "User has seen ADM CFU before. Will not post ADM CFU.", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52D420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - v3;
  v4 = type metadata accessor for FollowUpConfig(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED955C68);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C44();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DF47EF6C(0x434D444174736F70, 0xEC00000029285546, &v28);
    _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}s Attempting to post ADM CFU", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  sub_1DF507018(v6);
  v12 = sub_1DF506878();
  sub_1DF530368(v6);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DF47C000, v13, v14, "Attempting to post ADM CFU...", v15, 2u);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v16 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v16);
  v18 = *(v17 + 8);
  v19 = v12;
  v18(v12, v16, v17);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DF47C000, v20, v21, "Successfully posted ADM CFU.", v22, 2u);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v23 = v27;
  sub_1DF564484();
  v24 = sub_1DF564494();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_1DF529660(v23);

  return 1;
}

uint64_t sub_1DF52D8B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_0(v2 + 7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v8 = *(v6 + 16);

  v8(inited, v5, v6);
  swift_setDeallocating();
  return sub_1DF4BF4C8(inited + 32);
}

uint64_t sub_1DF52DB28(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = 0xEA00000000004D44;
    v4 = 0x41746E6553736168;
  }

  else
  {
    v4 = sub_1DF52907C();
    v3 = v5;
  }

  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, v25, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v26)
  {
    sub_1DF47FCEC(v25, v22);
    sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    (*(v7 + 24))(&v27, v4, v3, v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v22);
    if (*(&v28 + 1))
    {
      sub_1DF47E5B4(&v27, &qword_1ECE378F0, &qword_1DF5686F0);
      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v8 = sub_1DF5647B4();
      __swift_project_value_buffer(v8, qword_1ED955C68);

      v9 = sub_1DF564794();
      v10 = sub_1DF564C44();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1DF47EF6C(v4, v3, v25);
        _os_log_impl(&dword_1DF47C000, v9, v10, "Resetting value for key %s.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1E12D75F0](v12, -1, -1);
        MEMORY[0x1E12D75F0](v11, -1, -1);
      }

      sub_1DF47E4CC(v2 + 96, v25, &qword_1ECE37CE0, &qword_1DF568B40);
      if (v26)
      {
        sub_1DF47FCEC(v25, v22);
        sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_0(v22, v23);
        (*(v14 + 16))(v4, v3, v13, v14);

        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {

        sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
      }

      return 1;
    }
  }

  else
  {
    sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
    v27 = 0u;
    v28 = 0u;
  }

  sub_1DF47E5B4(&v27, &qword_1ECE378F0, &qword_1DF5686F0);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED955C68);

  v17 = sub_1DF564794();
  v18 = sub_1DF564C24();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_1DF47EF6C(v4, v3, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1DF47C000, v17, v18, "Attempted to clear CFU user default %s but no value is stored.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  else
  {
  }

  return 0;
}

id static FollowUp.hasEngagedWithCFU.setter(char a1)
{
  v2 = objc_opt_self();

  return [v2 setHasEngagedWithCFU_];
}

id (*static FollowUp.hasEngagedWithCFU.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  *(a1 + 8) = [v2 hasEngagedWithCFU];
  return sub_1DF52E058;
}

uint64_t FollowUp.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_1DF47E5B4(v0 + 96, &qword_1ECE37CE0, &qword_1DF568B40);

  return v0;
}

uint64_t FollowUp.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_1DF47E5B4(v0 + 96, &qword_1ECE37CE0, &qword_1DF568B40);

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

uint64_t sub_1DF52E144(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7169121;
  }

  else
  {
    v2 = 7169633;
  }

  if (*a2)
  {
    v3 = 7169121;
  }

  else
  {
    v3 = 7169633;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DF5650D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DF52E1B8()
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF52E21C(uint64_t a1)
{
  sub_1DF5649E4();
}

uint64_t sub_1DF52E264(uint64_t a1)
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF52E2C4@<X0>(char *a2@<X8>)
{
  v3 = sub_1DF564F54();

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