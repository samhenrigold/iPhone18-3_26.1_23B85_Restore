uint64_t sub_1DA89E53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1DA89E58C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFB)
  {
    v2 = -2147483644;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 3;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1DA89E5CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA89E628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA89E85C()
{
  result = qword_1ECBD61D0;
  if (!qword_1ECBD61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61D0);
  }

  return result;
}

unint64_t sub_1DA89E8B4()
{
  result = qword_1ECBD61D8;
  if (!qword_1ECBD61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61D8);
  }

  return result;
}

unint64_t sub_1DA89E90C()
{
  result = qword_1ECBD61E0;
  if (!qword_1ECBD61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61E0);
  }

  return result;
}

unint64_t sub_1DA89E964()
{
  result = qword_1ECBD61E8;
  if (!qword_1ECBD61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61E8);
  }

  return result;
}

unint64_t sub_1DA89E9BC()
{
  result = qword_1ECBD61F0;
  if (!qword_1ECBD61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61F0);
  }

  return result;
}

unint64_t sub_1DA89EA14()
{
  result = qword_1EE112B78;
  if (!qword_1EE112B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B78);
  }

  return result;
}

unint64_t sub_1DA89EA6C()
{
  result = qword_1EE112B80;
  if (!qword_1EE112B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B80);
  }

  return result;
}

unint64_t sub_1DA89EAC4()
{
  result = qword_1EE112B90;
  if (!qword_1EE112B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B90);
  }

  return result;
}

unint64_t sub_1DA89EB1C()
{
  result = qword_1EE112B98;
  if (!qword_1EE112B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B98);
  }

  return result;
}

unint64_t sub_1DA89EB74()
{
  result = qword_1EE112C18;
  if (!qword_1EE112C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C18);
  }

  return result;
}

unint64_t sub_1DA89EBCC()
{
  result = qword_1EE112C20;
  if (!qword_1EE112C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C20);
  }

  return result;
}

unint64_t sub_1DA89EC24()
{
  result = qword_1EE112BC8;
  if (!qword_1EE112BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BC8);
  }

  return result;
}

unint64_t sub_1DA89EC7C()
{
  result = qword_1EE112BD0;
  if (!qword_1EE112BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BD0);
  }

  return result;
}

unint64_t sub_1DA89ECD4()
{
  result = qword_1EE112BF0;
  if (!qword_1EE112BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BF0);
  }

  return result;
}

unint64_t sub_1DA89ED2C()
{
  result = qword_1EE112BF8;
  if (!qword_1EE112BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BF8);
  }

  return result;
}

unint64_t sub_1DA89ED84()
{
  result = qword_1EE112BD8;
  if (!qword_1EE112BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BD8);
  }

  return result;
}

unint64_t sub_1DA89EDDC()
{
  result = qword_1EE112BE0;
  if (!qword_1EE112BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BE0);
  }

  return result;
}

unint64_t sub_1DA89EE34()
{
  result = qword_1EE112BB8;
  if (!qword_1EE112BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BB8);
  }

  return result;
}

unint64_t sub_1DA89EE8C()
{
  result = qword_1EE112BC0;
  if (!qword_1EE112BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112BC0);
  }

  return result;
}

unint64_t sub_1DA89EEE4()
{
  result = qword_1EE112C00;
  if (!qword_1EE112C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C00);
  }

  return result;
}

unint64_t sub_1DA89EF3C()
{
  result = qword_1EE112C08;
  if (!qword_1EE112C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112C08);
  }

  return result;
}

unint64_t sub_1DA89EF94()
{
  result = qword_1ECBD61F8;
  if (!qword_1ECBD61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD61F8);
  }

  return result;
}

unint64_t sub_1DA89EFEC()
{
  result = qword_1ECBD6200;
  if (!qword_1ECBD6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6200);
  }

  return result;
}

uint64_t sub_1DA89F040(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL || (sub_1DA941684() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DA953AB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DA89F2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746163696C707564 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DA89F408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EE113018 = result;
  return result;
}

uint64_t sub_1DA89F448()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EE1127D0 = result;
  return result;
}

uint64_t sub_1DA89F49C()
{
  v7 = sub_1DA940FC4();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DA7AC344();
  sub_1DA940844();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DA8A42B0(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v7);
  result = sub_1DA941004();
  qword_1EE112C40 = result;
  return result;
}

uint64_t StateCapturing.stateCaptureTitle.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1DA940A74();
}

double sub_1DA89F750(uint64_t a1)
{
  if (qword_1EE111430 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_1DA8F4874(v1);
  swift_endAccess();

  return result;
}

void *sub_1DA89F810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1DA9405A4();
  __swift_project_value_buffer(v12, qword_1EE110E00);

  v13 = sub_1DA940584();
  v14 = sub_1DA940F34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1DA7AE6E8(a1, a2, &v18);
    _os_log_impl(&dword_1DA7A9000, v13, v14, "StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12739F0](v16, -1, -1);
    MEMORY[0x1E12739F0](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t StateCaptureEntry.deinit()
{

  return v0;
}

uint64_t StateCaptureEntry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1DA89FA00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  aBlock[4] = sub_1DA8A40A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA8A0AC4;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);

  v13 = os_state_add_handler();
  _Block_release(v12);
  if (v13)
  {
    if (qword_1EE1127C8 != -1)
    {
      v14 = swift_once();
    }

    v15 = qword_1EE1127D0;
    v16 = MEMORY[0x1EEE9AC00](v14);
    MEMORY[0x1EEE9AC00](v16);
    os_unfair_lock_lock(v15 + 4);
    sub_1DA8A45E4();
    os_unfair_lock_unlock(v15 + 4);
    v17 = type metadata accessor for StateCaptureInvalidator();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = v13;
    *(a6 + 24) = v17;
    *(a6 + 32) = &off_1F5636298;
    *a6 = v18;
  }

  else
  {
    if (qword_1EE110DF8 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1EE110E00);

    v21 = sub_1DA940584();
    v22 = sub_1DA940F14();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1DA7AE6E8(a3, a4, aBlock);
      _os_log_impl(&dword_1DA7A9000, v21, v22, "[%{public}s] os_state_add_handler() failed to return a handle", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1DA89FD14(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE110E00);

  v9 = sub_1DA940584();
  v10 = sub_1DA940F04();

  if (os_log_type_enabled(v9, v10))
  {
    v36 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38[0] = v12;
    *v11 = 136446466;
    v37 = a2;
    *(v11 + 4) = sub_1DA7AE6E8(a2, a3, v38);
    *(v11 + 12) = 2082;
    v13 = *a1;
    v15 = a1[4];
    v14 = a1[5];
    if (*(a1 + 1))
    {
      v16 = sub_1DA940B04();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = (0x2010002u >> (8 * v15)) & 3;
    if (v15 >= 4)
    {
      LOWORD(v19) = 2;
    }

    if (v14 - 1 >= 8)
    {
      v20 = 0;
    }

    else
    {
      v20 = (0x400000003000201uLL >> (8 * (v14 - 1))) << 8;
    }

    v21 = sub_1DA8A2A7C(v13, v16, v18, v20 | v19);
    v23 = v22;

    v24 = sub_1DA7AE6E8(v21, v23, v38);

    *(v11 + 14) = v24;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "[%{public}s] %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);

    a4 = v36;
    a2 = v37;
  }

  else
  {
  }

  v25 = a4();
  v26 = a2;
  v27 = sub_1DA8A0314(a2, a3, v25);
  v29 = v28;
  v30 = v27;

  if (v29 < 0x8000)
  {
    return v30;
  }

  v32 = sub_1DA940584();
  v33 = sub_1DA940F14();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1DA7AE6E8(v26, a3, v38);
    *(v34 + 12) = 1024;
    *(v34 + 14) = 32;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "[%{public}s] Cannot capture state data larger than %dKB", v34, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v34, -1, -1);
  }

  return 0;
}

unint64_t sub_1DA8A0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v72 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v71 = sub_1DA93F774();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6218, &qword_1DA95EEF8);
  v6 = sub_1DA9414C4();
  v7 = v6;
  v8 = 0;
  v76 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v75 = v6 + 64;
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_5:
  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v8 >= v15)
    {
      break;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v77 = (v18 - 1) & v18;
      while (2)
      {
        v3 = v16 | (v8 << 6);
        v19 = *(v76 + 56);
        v20 = (*(v76 + 48) + 16 * v3);
        v22 = *v20;
        v21 = v20[1];
        v78 = v22;
        v79 = v21;
        sub_1DA822F48(v19 + 40 * v3, v80, &qword_1ECBD5918, &qword_1DA95EF00);
        sub_1DA822F48(v80, &v81, &qword_1ECBD5918, &qword_1DA95EF00);
        if (v82)
        {
          __swift_project_boxed_opaque_existential_1(&v81, v82);

          v23 = sub_1DA941614();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_1(&v81);
        }

        else
        {

          sub_1DA7BA120(&v81, &qword_1ECBD5918, &qword_1DA95EF00);
          v25 = 0xE500000000000000;
          v23 = 0x3E6C696E3CLL;
        }

        sub_1DA7BA120(v80, &qword_1ECBD5918, &qword_1DA95EF00);
        *(v75 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        v26 = (v7[6] + 16 * v3);
        v27 = v79;
        *v26 = v78;
        v26[1] = v27;
        v28 = (v7[7] + 16 * v3);
        *v28 = v23;
        v28[1] = v25;
        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (!v30)
        {
          v7[2] = v31;
          v14 = v77;
          if (!v77)
          {
            goto LABEL_5;
          }

LABEL_4:
          v16 = __clz(__rbit64(v14));
          v77 = (v14 - 1) & v14;
          continue;
        }

        break;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  sub_1DA93F894();
  swift_allocObject();
  sub_1DA93F884();
  sub_1DA93F864();
  *v80 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6220, &unk_1DA95EF08);
  sub_1DA8A40D4();
  v32 = v74;
  v33 = sub_1DA93F874();
  v35 = v34;

  if (v32)
  {
    goto LABEL_17;
  }

  v36 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v35);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v36 != 2)
  {
    v37 = 0;
    goto LABEL_28;
  }

  v39 = *(v33 + 16);
  v38 = *(v33 + 24);
  v30 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v30)
  {
    __break(1u);
LABEL_25:
    LODWORD(v37) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v37 = v37;
  }

LABEL_28:
  if (__OFADD__(v37, 200))
  {
    goto LABEL_56;
  }

  v40 = malloc(v37 + 200);
  if (v40)
  {
    v3 = v40;
    *v80 = 1;
    memset(&v80[4], 0, 196);
    sub_1DA8A0C50(v72, v73, &v80[136], &v81);
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_47;
      }

      v51 = *(v33 + 16);
      v50 = *(v33 + 24);
      v30 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (!v30)
      {
LABEL_40:
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if (HIDWORD(v52))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        *&v80[4] = v52;
        v53 = *&v80[176];
        *(v3 + 160) = *&v80[160];
        *(v3 + 176) = v53;
        *(v3 + 192) = *&v80[192];
        v54 = *&v80[112];
        *(v3 + 96) = *&v80[96];
        *(v3 + 112) = v54;
        v55 = *&v80[144];
        *(v3 + 128) = *&v80[128];
        *(v3 + 144) = v55;
        v56 = *&v80[48];
        *(v3 + 32) = *&v80[32];
        *(v3 + 48) = v56;
        v57 = *&v80[80];
        *(v3 + 64) = *&v80[64];
        *(v3 + 80) = v57;
        v58 = *&v80[16];
        *v3 = *v80;
        *(v3 + 16) = v58;
        if (v36 != 2)
        {
          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_63;
          }

          v41 = HIDWORD(v33) - v33;
          goto LABEL_50;
        }

        if (__OFSUB__(*(v33 + 24), *(v33 + 16)))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
        }

        sub_1DA93F9C4();

        v60 = *(v33 + 16);
        v59 = *(v33 + 24);
        sub_1DA828324(v33, v35);
        v30 = __OFSUB__(v59, v60);
        v41 = v59 - v60;
        if (!v30)
        {
          goto LABEL_52;
        }

        __break(1u);
LABEL_47:
        *&v80[4] = 0;
        v61 = *&v80[176];
        *(v3 + 160) = *&v80[160];
        *(v3 + 176) = v61;
        *(v3 + 192) = *&v80[192];
        v62 = *&v80[112];
        *(v3 + 96) = *&v80[96];
        *(v3 + 112) = v62;
        v63 = *&v80[144];
        *(v3 + 128) = *&v80[128];
        *(v3 + 144) = v63;
        v64 = *&v80[48];
        *(v3 + 32) = *&v80[32];
        *(v3 + 48) = v64;
        v65 = *&v80[80];
        *(v3 + 64) = *&v80[64];
        *(v3 + 80) = v65;
        v66 = *&v80[16];
        *v3 = *v80;
        *(v3 + 16) = v66;
        sub_1DA93F9C4();
        v41 = 0;
LABEL_51:

        sub_1DA828324(v33, v35);
LABEL_52:
        if (!__OFADD__(v41, 200))
        {
          return v3;
        }

        goto LABEL_59;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v41 = BYTE6(v35);
      *&v80[4] = BYTE6(v35);
      v42 = *&v80[176];
      *(v3 + 160) = *&v80[160];
      *(v3 + 176) = v42;
      *(v3 + 192) = *&v80[192];
      v43 = *&v80[112];
      *(v3 + 96) = *&v80[96];
      *(v3 + 112) = v43;
      v44 = *&v80[144];
      *(v3 + 128) = *&v80[128];
      *(v3 + 144) = v44;
      v45 = *&v80[48];
      *(v3 + 32) = *&v80[32];
      *(v3 + 48) = v45;
      v46 = *&v80[80];
      *(v3 + 64) = *&v80[64];
      *(v3 + 80) = v46;
      v47 = *&v80[16];
      *v3 = *v80;
      *(v3 + 16) = v47;
LABEL_50:
      sub_1DA93F9C4();
      goto LABEL_51;
    }

    LODWORD(v52) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v52 = v52;
    goto LABEL_40;
  }

  *v80 = 12;
  sub_1DA8A4150(MEMORY[0x1E69E7CC0]);
  sub_1DA8A42B0(&qword_1ECBD6228, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v48 = v69;
  v49 = v71;
  sub_1DA93F8A4();
  sub_1DA93F764();
  (*(v70 + 8))(v48, v49);
  swift_willThrow();
  sub_1DA828324(v33, v35);
LABEL_17:

  return v3;
}

uint64_t sub_1DA8A0AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_1DA8A0B14(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_1DA89F810(a1, a2, v13, a4, a5);
  if (qword_1EE111430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = off_1EE111438;
  off_1EE111438 = 0x8000000000000000;
  sub_1DA90BA70(v12, a6, isUniquelyReferenced_nonNull_native);
  off_1EE111438 = v15;
  swift_endAccess();
}

uint64_t sub_1DA8A0C50(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DA941354();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_1DA941354();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t StateCaptureItem.deinit()
{
  sub_1DA822F48(v0 + 48, v5, &qword_1ECBD6208, &qword_1DA95ED40);
  if (v6)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v5, v6);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_1EE1127C8 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_1EE1127D0;
      MEMORY[0x1EEE9AC00](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_1DA8A343C();
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1DA7BA120(v5, &qword_1ECBD6208, &qword_1DA95ED40);
  }

  sub_1DA7BA120(v0 + 48, &qword_1ECBD6208, &qword_1DA95ED40);
  return v0;
}

uint64_t StateCaptureItem.__deallocating_deinit()
{
  sub_1DA822F48(v0 + 48, v5, &qword_1ECBD6208, &qword_1DA95ED40);
  if (v6)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v5, v6);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_1EE1127C8 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_1EE1127D0;
      MEMORY[0x1EEE9AC00](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_1DA8A45E4();
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1DA7BA120(v5, &qword_1ECBD6208, &qword_1DA95ED40);
  }

  sub_1DA7BA120(v0 + 48, &qword_1ECBD6208, &qword_1DA95ED40);
  return swift_deallocClassInstance();
}

void *sub_1DA8A0FC4()
{
  type metadata accessor for StateCaptureService();
  swift_allocObject();
  result = sub_1DA8A105C();
  qword_1EE112A98 = result;
  return result;
}

uint64_t static StateCaptureService.shared.getter()
{
  if (qword_1EE112A90 != -1)
  {
    swift_once();
  }
}

void *sub_1DA8A105C()
{
  v10 = sub_1DA940FC4();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v6;
  v7 = sub_1DA7AC344();
  v9[0] = "os_state_hints_s=I*II}8";
  v9[1] = v7;
  sub_1DA940814();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DA8A42B0(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v10);
  v0[4] = sub_1DA941004();
  return v0;
}

uint64_t sub_1DA8A12D0(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1EE113018;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84A1B0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DA8A138C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = sub_1DA8A6ED8(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1DA8A1404(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v7);
  return sub_1DA8A363C(v9, a3, a4, a1, v7, v8);
}

uint64_t sub_1DA8A1484(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return a4(v9, a2, a3, v4, v7, v8);
}

uint64_t sub_1DA8A14FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);
  sub_1DA8A363C(v10, a3, a4, a1, v8, *(v9 + 8));
  swift_beginAccess();
  v37 = a1;
  v11 = *(a1 + 24);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1DA85A4B4(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  result = (*(v17 + 16))(v16, v17);
  v19 = 0;
  v20 = *(result + 16);
  v35 = result + 32;
  v36 = result;
  while (1)
  {
    v21 = 0uLL;
    v22 = v20;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v19 == v20)
    {
      goto LABEL_9;
    }

    if (v19 >= *(v36 + 16))
    {
      break;
    }

    v22 = v19 + 1;
    *&v39 = v19;
    sub_1DA7BABAC(v35 + 40 * v19, &v39 + 8);
    v21 = v39;
    v23 = v40;
    v24 = v41;
LABEL_9:
    v42[0] = v21;
    v42[1] = v23;
    v42[2] = v24;
    if (!v24)
    {

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = *(v37 + 24);
      *(v37 + 24) = 0x8000000000000000;
      sub_1DA90BBE8(v15, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v37 + 24) = v39;
      return swift_endAccess();
    }

    v38 = v21;
    sub_1DA7B9FAC((v42 + 8), &v39);
    v25 = a3;

    MEMORY[0x1E1271BD0](45, 0xE100000000000000);
    v43 = v38;
    v26 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v26);

    v27 = a3;
    v28 = *(&v40 + 1);
    v29 = v41;
    v30 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    sub_1DA8A363C(v30, v27, a4, v37, v28, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DA7B6928(0, *(v15 + 2) + 1, 1, v15);
    }

    v32 = *(v15 + 2);
    v31 = *(v15 + 3);
    if (v32 >= v31 >> 1)
    {
      v15 = sub_1DA7B6928((v31 > 1), v32 + 1, 1, v15);
    }

    *(v15 + 2) = v32 + 1;
    v33 = &v15[16 * v32];
    *(v33 + 4) = v27;
    *(v33 + 5) = a4;
    result = __swift_destroy_boxed_opaque_existential_1(&v39);
    v19 = v22;
    a3 = v25;
  }

  __break(1u);
  return result;
}

void sub_1DA8A1804(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_1EE113018;
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DA8A18F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1DA8F48FC(a2, a3);
  swift_endAccess();

  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_1DA85A4B4(a2, a3);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 40);
        do
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          swift_beginAccess();

          sub_1DA85A4B4(v14, v13);
          if (v15)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = *(a1 + 16);
            *(a1 + 16) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1DA86133C();
            }

            sub_1DA7BED64();
            *(a1 + 16) = v17;
          }

          swift_endAccess();

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      swift_beginAccess();
      sub_1DA8F4994(a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DA8A1AE8(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EE113018;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA84A1B0(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_1DA8A1BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_1DA85A4B4(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1DA8A1C8C(uint64_t a1)
{
  if (qword_1EE113010 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EE113018;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1DA8A3D8C(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

void sub_1DA8A1D80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (!*(v8 + 16))
  {
    goto LABEL_20;
  }

  v9 = sub_1DA85A4B4(a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_20:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  swift_beginAccess();
  v12 = *(a1 + 24);
  if (!*(v12 + 16))
  {
LABEL_19:

    goto LABEL_20;
  }

  v13 = sub_1DA85A4B4(a2, a3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_19;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v17 = *(v15 + 16);
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = 0;
  v19 = v15 + 40;
  v26 = v11;
  do
  {
    v20 = (v19 + 16 * v18);
    v21 = v18;
    while (1)
    {
      if (v21 >= *(v15 + 16))
      {
        __break(1u);
        return;
      }

      if (*(*(a1 + 16) + 16))
      {
        break;
      }

LABEL_8:
      ++v21;
      v20 += 2;
      if (v17 == v21)
      {
        v11 = v26;
        goto LABEL_22;
      }
    }

    v22 = *(v20 - 1);
    v23 = *v20;

    sub_1DA85A4B4(v22, v23);
    if ((v24 & 1) == 0)
    {

      goto LABEL_8;
    }

    MEMORY[0x1E1271CA0](v25);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DA940C04();
    }

    v18 = v21 + 1;
    sub_1DA940C14();
    v16 = v27;
    v19 = v15 + 40;
    v11 = v26;
  }

  while (v17 - 1 != v21);
LABEL_22:

  *a4 = v11;
  a4[1] = v16;
}

uint64_t sub_1DA8A1FD8(uint64_t a1)
{
  *(v1 + 104) = a1;
  sub_1DA940A64();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8A2094, 0, 0);
}

uint64_t sub_1DA8A2094()
{
  v51 = v0;
  v50[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE1127C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v47 = v0 + 88;
  aBlock = (v0 + 16);
  v1 = qword_1EE1127D0;
  os_unfair_lock_lock((qword_1EE1127D0 + 16));
  if (qword_1EE111430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1EE111438;

  os_unfair_lock_unlock(v1 + 4);
  *(v0 + 88) = sub_1DA849274(MEMORY[0x1E69E7CC0]);
  v44 = v2 + 64;
  v3 = -1;
  v4 = -1 << v2[32];
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 8);
  v43 = (63 - v4) >> 6;

  v49 = 0;
  v6 = 0;
  v7 = 0;
  v45 = v2;
  while (v5)
  {
LABEL_13:
    v14 = *(*(v2 + 7) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v15 = qword_1EE110DF8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110E00);

    v17 = sub_1DA940584();
    v18 = sub_1DA940F04();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v46 = v6;
      v20 = v0;
      v21 = swift_slowAlloc();
      v50[0] = v21;
      *v19 = 136446210;
      v22 = v14[2];
      v23 = v14[3];

      v24 = sub_1DA7AE6E8(v22, v23, v50);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DA7A9000, v17, v18, "Capturing state for entry: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v25 = v21;
      v0 = v20;
      v6 = v46;
      MEMORY[0x1E12739F0](v25, -1, -1);
      v26 = v19;
      v2 = v45;
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    v5 &= v5 - 1;
    v8 = v14[4];
    v9 = swift_allocObject();
    *(v9 + 16) = v47;
    *(v9 + 24) = v14;

    v10 = v8;
    sub_1DA7B5220(v49, v6);
    v11 = swift_allocObject();
    v49 = sub_1DA8A42F8;
    *(v11 + 16) = sub_1DA8A42F8;
    *(v11 + 24) = v9;
    *(v0 + 48) = sub_1DA82B5F8;
    *(v0 + 56) = v11;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DA7B8000;
    *(v0 + 40) = &block_descriptor_64;
    v12 = _Block_copy(aBlock);

    dispatch_sync(v10, v12);

    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    v6 = v9;
    if (v12)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v13 >= v43)
    {
      break;
    }

    v5 = *&v44[8 * v13];
    ++v7;
    if (v5)
    {
      v7 = v13;
      goto LABEL_13;
    }
  }

  v27 = objc_opt_self();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  v28 = sub_1DA940964();

  *(v0 + 96) = 0;
  v29 = [v27 dataWithJSONObject:v28 options:3 error:v0 + 96];

  v30 = *(v0 + 96);
  if (v29)
  {
    v31 = *(v0 + 104);
    v32 = sub_1DA93F9A4();
    v34 = v33;

    sub_1DA940A54();
    v35 = sub_1DA940A34();
    v37 = v36;

    sub_1DA828324(v32, v34);
    v38 = 0x80000001DA953D60;
    v39 = 0xD00000000000001CLL;
    if (v37)
    {
      v39 = v35;
      v38 = v37;
    }

    *v31 = v39;
    v31[1] = v38;

    sub_1DA7B5220(v49, v6);

    v40 = *(v0 + 8);
  }

  else
  {
    v41 = v30;
    sub_1DA93F8C4();

    swift_willThrow();

    sub_1DA7B5220(v49, v6);

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_1DA8A26CC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[5];

  v6 = v4(v5);

  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6230, &unk_1DA95EF28);
  v8[4] = sub_1DA7AD11C(&qword_1ECBD6238, &qword_1ECBD6230, &unk_1DA95EF28, MEMORY[0x1E69E5E68]);
  v8[0] = v6;
  return sub_1DA8F0F44(v8, v3, v2);
}

uint64_t StateCaptureService.deinit()
{

  return v0;
}

uint64_t StateCaptureService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8A2A7C(int a1, uint64_t a2, unint64_t a3, __int16 a4)
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0x3A6E6F6973726576, 0xE900000000000020);
  v6 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v6);

  MEMORY[0x1E1271BD0](0x736575716572203BLL, 0xED0000203A726F74);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = 0x3E6C696E3CLL;
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](a2, v7);

  MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x203A697061203BLL, 0xE700000000000000);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA8A2C34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746C756166;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEF74736575716552;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x726F727265;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x746C756166;
  if (*a2 != 1)
  {
    v8 = 0x6C616E7265747865;
    v3 = 0xEF74736575716552;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F727265;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA8A2D40()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A2DE8(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA8A2E7C(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

unint64_t sub_1DA8A2F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8A4450(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA8A2F50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746C756166;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xEF74736575716552;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F727265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DA8A2FC0()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8A30B4(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA8A3194(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

unint64_t sub_1DA8A3284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8A449C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA8A32B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x696B726F7774656ELL;
  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  if (v2 != 3)
  {
    v8 = 0x69746E6568747561;
    v7 = 0xEE006E6F69746163;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6172656E6567;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DA8A3374()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E00);
  __swift_project_value_buffer(v0, qword_1EE110E00);
  return sub_1DA940594();
}

uint64_t sub_1DA8A33F4()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6210, &unk_1DA95EEE8);
  return sub_1DA940A74();
}

unint64_t sub_1DA8A3480(uint64_t a1, uint64_t a2)
{
  sub_1DA941764();
  sub_1DA940AB4();
  v4 = sub_1DA941794();

  return sub_1DA85A94C(a1, a2, v4);
}

uint64_t sub_1DA8A34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  v9 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  if (qword_1EE113010 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EE113018;
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v10 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v10 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DA8A363C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42[3] = a5;
  v42[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v42);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  v13 = (*(a6 + 8))(a5, a6);
  v15 = v14;
  swift_beginAccess();
  if (!*(*(a4 + 16) + 16))
  {
    goto LABEL_12;
  }

  sub_1DA85A4B4(a2, a3);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DA9405A4();
  __swift_project_value_buffer(v18, qword_1EE110E00);

  v19 = sub_1DA940584();
  v20 = sub_1DA940F14();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v41[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1DA7AE6E8(a2, a3, v41);
    _os_log_impl(&dword_1DA7A9000, v19, v20, "Identifier [%{public}s] is already in use", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_20;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v24 = [v23 processName];

  v25 = sub_1DA940A14();
  v27 = v26;

  if (v25 != 0x747365746378 || v27 != 0xE600000000000000)
  {
    v28 = sub_1DA941684();

    if (v28)
    {
      goto LABEL_12;
    }

LABEL_20:
    result = sub_1DA9414A4();
    __break(1u);
    return result;
  }

LABEL_12:
  sub_1DA7BABAC(v42, v41);
  v29 = swift_allocObject();
  sub_1DA7B9FAC(v41, v29 + 16);
  type metadata accessor for StateCaptureItem();
  v30 = swift_allocObject();
  v30[2] = v13;
  v30[3] = v15;
  v30[4] = a2;
  v30[5] = a3;
  v31 = qword_1EE112C38;

  if (v31 != -1)
  {
    swift_once();
  }

  sub_1DA89FA00(sub_1DA8A4048, v29, v13, v15, (v30 + 6));

  if (qword_1EE110DF8 != -1)
  {
    swift_once();
  }

  v32 = sub_1DA9405A4();
  __swift_project_value_buffer(v32, qword_1EE110E00);

  v33 = sub_1DA940584();
  v34 = sub_1DA940F34();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v41[0] = v36;
    *v35 = 136446466;
    v37 = sub_1DA7AE6E8(v13, v15, v41);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_1DA7AE6E8(a2, a3, v41);
    _os_log_impl(&dword_1DA7A9000, v33, v34, "Added StateCaptureItem with title: %{public}s, identifier: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v36, -1, -1);
    MEMORY[0x1E12739F0](v35, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1DA90BBBC(v30, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v40;
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1DA8A3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  v9 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a1, a5);
  if (qword_1EE113010 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EE113018;
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v10 + 4);
  sub_1DA8A45E4();
  os_unfair_lock_unlock(v10 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

double sub_1DA8A3D8C@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DA8A4048()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1DA8A40D4()
{
  result = qword_1EE110CF0;
  if (!qword_1EE110CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6220, &unk_1DA95EF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CF0);
  }

  return result;
}

unint64_t sub_1DA8A4150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v13, &qword_1ECBD54B8, &qword_1DA95B140);
      v5 = v13;
      v6 = v14;
      result = sub_1DA8A3480(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
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

char *sub_1DA8A4280(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A42B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA8A4320()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1[3];
  v6 = v1[4];
  v7 = __swift_project_boxed_opaque_existential_1(v1, v5);
  return sub_1DA8A363C(v7, v4, v3, v2, v5, v6);
}

unint64_t sub_1DA8A43A4()
{
  result = qword_1ECBD6240;
  if (!qword_1ECBD6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6240);
  }

  return result;
}

unint64_t sub_1DA8A43FC()
{
  result = qword_1ECBD6248;
  if (!qword_1ECBD6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6248);
  }

  return result;
}

unint64_t sub_1DA8A4450(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DA8A449C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1DA8A44FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
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

uint64_t sub_1DA8A4558(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA8A467C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DA940594();
}

uint64_t static Logger.sim.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBD4768 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  v3 = __swift_project_value_buffer(v2, qword_1ECBD6250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1DA8A479C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) initWithMachServiceName_];
  [v2 setDelegate_];
  [v2 resume];
  v3 = *(a1 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener);
  *(a1 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener) = v2;
}

double sub_1DA8A4828(void *a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1DA8A5D54;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_53;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);

  return result;
}

void sub_1DA8A4B28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  swift_beginAccess();
  v5 = sub_1DA8C5F30(a2);
  swift_endAccess();

  swift_beginAccess();
  v6 = sub_1DA8F4B20(a2);
  swift_endAccess();
  if (!v6)
  {
LABEL_38:
    v42 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
    swift_beginAccess();
    if (*(*&v4[v42] + 16))
    {
    }

    else
    {
      *&v4[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;

      swift_unknownObjectRelease();
    }

    return;
  }

  v7 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v44 = v6;
  v46 = v11;
  while (v10)
  {
    v14 = v10;
LABEL_13:
    v10 = (v14 - 1) & v14;
    v16 = *&v4[v11];
    if (*(v16 + 16))
    {
      v17 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v17;
      v18 = v17[1];

      v45 = v19;
      v20 = sub_1DA85A4B4(v19, v18);
      if (v21)
      {
        v22 = *(*(v16 + 56) + 8 * v20);

        v23 = sub_1DA8C5F30(a2);
        if (!v23)
        {

          goto LABEL_29;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          if (sub_1DA941264())
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        if (*(v22 + 16))
        {
LABEL_18:
          v43 = a2;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = *&v4[v46];
          *&v4[v46] = 0x8000000000000000;
          v26 = sub_1DA85A4B4(v45, v18);
          v28 = v25[2];
          v29 = (v27 & 1) == 0;
          v30 = __OFADD__(v28, v29);
          v31 = v28 + v29;
          if (v30)
          {
            goto LABEL_43;
          }

          v32 = v27;
          if (v25[3] < v31)
          {
            sub_1DA85D740(v31, isUniquelyReferenced_nonNull_native);
            v26 = sub_1DA85A4B4(v45, v18);
            if ((v32 & 1) != (v33 & 1))
            {
              goto LABEL_45;
            }

LABEL_31:
            v37 = v25;
            if (v32)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_31;
          }

          v38 = v26;
          sub_1DA861518();
          v26 = v38;
          v37 = v25;
          if (v32)
          {
LABEL_32:
            *(v37[7] + 8 * v26) = v22;

            goto LABEL_36;
          }

LABEL_34:
          v37[(v26 >> 6) + 8] |= 1 << v26;
          v39 = (v37[6] + 16 * v26);
          *v39 = v45;
          v39[1] = v18;
          *(v37[7] + 8 * v26) = v22;
          v40 = v37[2];
          v30 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v30)
          {
            goto LABEL_44;
          }

          v37[2] = v41;
LABEL_36:
          a2 = v43;
          v6 = v44;
          v11 = v46;
          *&v4[v46] = v37;
          swift_endAccess();
        }

        else
        {
LABEL_24:

          swift_beginAccess();
          sub_1DA85A4B4(v19, v18);
          if (v34)
          {
            v35 = swift_isUniquelyReferenced_nonNull_native();
            v36 = *&v4[v46];
            *&v4[v46] = 0x8000000000000000;
            if (!v35)
            {
              sub_1DA861518();
            }

            sub_1DA8F71FC();
            *&v4[v46] = v36;
          }

          swift_endAccess();
LABEL_29:

          v6 = v44;
          v11 = v46;
        }
      }

      else
      {

        v11 = v46;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      goto LABEL_38;
    }

    v14 = *(v7 + 8 * v15);
    ++v12;
    if (v14)
    {
      v12 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_1DA9416E4();
  __break(1u);
}

void sub_1DA8A4FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  swift_beginAccess();
  v10 = *&v8[v9];
  if (*(v10 + 16))
  {

    v11 = sub_1DA85A4B4(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      goto LABEL_8;
    }
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DD74(MEMORY[0x1E69E7CC0]);
    v13 = v27;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

LABEL_8:
  v32 = v13;
  v14 = a4;
  sub_1DA7AEE18(v31, v14);

  v15 = v32;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *&v8[v9];
  *&v8[v9] = 0x8000000000000000;
  sub_1DA90BDA4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *&v8[v9] = v29;
  swift_endAccess();
  v17 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
  swift_beginAccess();
  v18 = *&v8[v17];
  if (*(v18 + 16))
  {

    v19 = sub_1DA85A7CC(v14);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  v30 = v21;

  sub_1DA8A9058(&v29, a2, a3);

  v22 = v30;
  swift_beginAccess();
  v23 = v14;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *&v8[v17];
  *&v8[v17] = 0x8000000000000000;
  sub_1DA90BF68(v22, v23, v24);

  *&v8[v17] = v28;
  swift_endAccess();
  v25 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction;
  if (*&v8[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction])
  {
  }

  else
  {
    sub_1DA940A94();
    v26 = os_transaction_create();

    *&v8[v25] = v26;

    swift_unknownObjectRelease();
  }
}

double sub_1DA8A52F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v10 = sub_1DA9407F4();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DA940854();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_1DA940824();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v15, v12, v18);
  _Block_release(v18);
  (*(v25 + 8))(v12, v10);
  (*(v13 + 8))(v15, v24);

  return result;
}

void sub_1DA8A55FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
    swift_beginAccess();
    v10 = *&v8[v9];
    if (!*(v10 + 16))
    {
      goto LABEL_12;
    }

    v11 = sub_1DA85A4B4(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = sub_1DA8C5F30(a4);
      if (v14)
      {

        if ((v13 & 0xC000000000000001) != 0)
        {
          if (sub_1DA941264())
          {
LABEL_7:
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v25 = *&v8[v9];
            *&v8[v9] = 0x8000000000000000;
            sub_1DA90BDA4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

            *&v8[v9] = v25;
            swift_endAccess();
            goto LABEL_12;
          }
        }

        else if (*(v13 + 16))
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        sub_1DA8F4B08(a2, a3);
        swift_endAccess();
      }
    }

LABEL_12:
    v16 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
    swift_beginAccess();
    v17 = *&v8[v16];
    if (!*(v17 + 16))
    {
      goto LABEL_20;
    }

    v18 = sub_1DA85A7CC(a4);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      sub_1DA8C5DF4(a2, a3);
      if (v21)
      {

        if (*(v20 + 16))
        {
          swift_beginAccess();
          v22 = a4;
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v24 = *&v8[v16];
          *&v8[v16] = 0x8000000000000000;
          sub_1DA90BF68(v20, v22, v23);

          *&v8[v16] = v24;
          swift_endAccess();
          goto LABEL_20;
        }

        swift_beginAccess();
        sub_1DA8F4B20(a4);
        swift_endAccess();
      }
    }

LABEL_20:
    if (*(*&v8[v9] + 16))
    {
    }

    else
    {
      *&v8[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;

      swift_unknownObjectRelease();
    }
  }
}

id sub_1DA8A5908()
{
  v1 = v0;
  v15 = sub_1DA940FC4();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v14 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue;
  v7 = sub_1DA7AC344();
  v13[1] = "NotificationServiceListener";
  v13[2] = v7;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = sub_1DA941004();
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_listener] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_connections] = MEMORY[0x1E69E7CD0];
  v8 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observingConnectionsByBundleIdentifier;
  v9 = MEMORY[0x1E69E7CC0];
  *&v1[v8] = sub_1DA8493AC(MEMORY[0x1E69E7CC0]);
  v10 = OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_bundleIdentifiersByObservingConnection;
  *&v1[v10] = sub_1DA8494BC(v9);
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue_observerTransaction] = 0;
  v11 = type metadata accessor for NotificationServiceListener();
  v16.receiver = v1;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_1DA8A5C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationServiceListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA8A5D78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier) = xmmword_1DA95F150;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol) = 1;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName) = xmmword_1DA95F150;
  v12 = [a1 uniqueID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DA940A14();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_1DA93FD44();
  v17 = sub_1DA93FB04();
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  if (v16)
  {
    if (v14 == v17 && v16 == v19)
    {
    }

    else
    {
      v21 = sub_1DA941684();

      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    *(v3 + 16) = a1;
    v23 = sub_1DA93FD54();
    v24 = *(v23 - 8);
    MEMORY[0x1EEE9AC00](v23);
    (*(v24 + 16))(&v27 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v23);
    v26 = sub_1DA9416C4();
    (*(v24 + 8))(a2, v23);
    *(v3 + 24) = v26;
    return v3;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1DA8A6064@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B8, &unk_1DA95F2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B0, &qword_1DA95F160);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType;
  swift_beginAccess();
  sub_1DA822F48(v1 + v12, v11, &qword_1ECBD62B0, &qword_1DA95F160);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_1DA8662E4(v11, a1);
  }

  sub_1DA7BA120(v11, &qword_1ECBD62B0, &qword_1DA95F160);
  result = [*(v1 + 16) modelIdentifier];
  if (result)
  {
    v16 = result;
    sub_1DA940A14();

    v17 = sub_1DA93FE14();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_1DA93FE44();
    sub_1DA822F48(a1, v9, &qword_1ECBD4E80, &qword_1DA958C00);
    (*(v14 + 56))(v9, 0, 1, v13);
    swift_beginAccess();
    sub_1DA8A6E64(v9, v1 + v12);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8A631C()
{
  v1 = sub_1DA93FE74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier);
  v9 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier);
  v10 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8);
  v11 = v9;
  if (v10 == 1)
  {
    sub_1DA8A6064(v7);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_1DA7BA120(v7, &qword_1ECBD4E80, &qword_1DA958C00);
      v11 = 0;
      v12 = 0;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1DA7BA120(v7, &qword_1ECBD4E80, &qword_1DA958C00);
      v11 = sub_1DA93FE24();
      v12 = v13;
      (*(v2 + 8))(v4, v1);
    }

    v14 = *v8;
    v15 = v8[1];
    *v8 = v11;
    v8[1] = v12;

    sub_1DA8A65A0(v14, v15);
  }

  sub_1DA8A6E50(v9, v10);
  return v11;
}

uint64_t RemoteDevice.deinit()
{
  swift_unknownObjectRelease();
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType, &qword_1ECBD62B0, &qword_1DA95F160);
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8));
  sub_1DA8A65B4(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol));
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName + 8));
  return v0;
}

uint64_t sub_1DA8A65A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1DA8A65B4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t RemoteDevice.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utType, &qword_1ECBD62B0, &qword_1DA95F160);
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___utTypeIdentifier + 8));
  sub_1DA8A65B4(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbol));
  sub_1DA8A65A0(*(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore12RemoteDevice____lazy_storage___symbolName + 8));

  return swift_deallocClassInstance();
}

void sub_1DA8A6680(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A14();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1DA8A66F8()
{
  result = [*(v0 + 16) uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1DA940A14();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RemoteDevice.debugDescription.getter()
{
  v1 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v1);

  MEMORY[0x1E1271BD0](2108704, 0xE300000000000000);
  v2 = *(v0 + 16);
  result = [v2 uniqueID];
  if (result)
  {
    v4 = result;
    v5 = sub_1DA940A14();
    v7 = v6;

    MEMORY[0x1E1271BD0](v5, v7);

    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    sub_1DA941494();
    MEMORY[0x1E1271BD0](8251, 0xE200000000000000);
    v8 = [v2 description];
    v9 = sub_1DA940A14();
    v11 = v10;

    MEMORY[0x1E1271BD0](v9, v11);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA8A68D8()
{
  v1 = v0;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DA941364();
  result = [*(v0 + 16) uniqueID];
  if (result)
  {
    v3 = result;
    v4 = sub_1DA940A14();
    v6 = v5;

    MEMORY[0x1E1271BD0](v4, v6);

    MEMORY[0x1E1271BD0](10272, 0xE200000000000000);
    v7 = sub_1DA8A631C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
      v9 = 0xE700000000000000;
    }

    MEMORY[0x1E1271BD0](v7, v9);

    MEMORY[0x1E1271BD0](0x3A65746174732029, 0xE900000000000020);
    v10 = sub_1DA93FD54();
    v11 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18[1] = *(v1 + 24);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v14 = sub_1DA93FD24();
    v15 = *(v14 - 8);
    MEMORY[0x1EEE9AC00](v14);
    v17 = v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DA93FD34();
    (*(v11 + 8))(v13, v10);
    sub_1DA941494();
    (*(v15 + 8))(v17, v14);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA8A6B6C()
{
  result = [*(*v0 + 16) uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1DA940A14();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s21UserNotificationsCore12RemoteDeviceC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 16) uniqueID];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = sub_1DA940A14();
  v7 = v6;

  result = [*(a2 + 16) uniqueID];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_1DA940A14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA941684();
  }

  return (v13 & 1);
}

uint64_t type metadata accessor for RemoteDevice(uint64_t a1)
{
  result = qword_1EE113A50;
  if (!qword_1EE113A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8A6D20(uint64_t a1)
{
  sub_1DA8A6DEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA8A6DEC(uint64_t a1)
{
  if (!qword_1EE110EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE110EE8);
    }
  }
}

double sub_1DA8A6E50(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DA8A6E64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62B0, &qword_1DA95F160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8A6ED8(uint64_t a1)
{
  result = MEMORY[0x1E1271F90](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1DA8A9058(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A6FF4(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1DA8AD244(&qword_1ECBD62F0, type metadata accessor for NotificationSource, &protocol conformance descriptor for NotificationSource);
  result = MEMORY[0x1E1271F90](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1DA8AE360(v8, type metadata accessor for NotificationSource))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1DA8AE290(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for NotificationSource);
    sub_1DA8AE2F8(v10, v5, type metadata accessor for NotificationSource);
    sub_1DA8A96D0(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8A7238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3 + 8;
  v5 = type metadata accessor for UserNotificationsCloudRecord(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for CloudAction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v22[3] = v5;
  v22[4] = sub_1DA8AD244(&qword_1EE114560, type metadata accessor for UserNotificationsCloudRecord, &protocol conformance descriptor for UserNotificationsCloudRecord);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v22);
  sub_1DA8AE290(a1, boxed_opaque_existential_2, type metadata accessor for UserNotificationsCloudRecord);
  sub_1DA841298(v22, 0, 1);
  v21 = v12;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v15 = *(v5 + 20);
  sub_1DA8AE290(a1 + v15, v10, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8AE360(v10, type metadata accessor for CloudAction);
      v17 = 0x80000001DA9540B0;
      v18 = 0xD000000000000012;
    }

    else
    {
      sub_1DA8AE360(v10, type metadata accessor for CloudAction);
      v17 = 0xEF6E6F6974616369;
      v18 = 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v18 = 0xD000000000000010;
    sub_1DA8AE360(v10, type metadata accessor for CloudAction);
    v17 = 0x80000001DA954090;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8AE360(v10, type metadata accessor for CloudAction);
    v17 = 0xED00006E6F697463;
    v18 = 0x416D726F66726570;
  }

  else
  {
    v17 = 0x80000001DA954070;
    sub_1DA8AE360(v10, type metadata accessor for CloudAction);
    v18 = 0xD000000000000011;
  }

  sub_1DA8AE290(a1 + v15, v4, type metadata accessor for CloudAction);
  (*(v8 + 56))(v4, 0, 1, v7);
  v19 = v21;
  sub_1DA8AD490(v14, v21, v18, v17, v4);

  sub_1DA828324(v14, v19);
  return sub_1DA7BA120(v4, &qword_1ECBD62E8, &qword_1DA95F360);
}

void sub_1DA8A7878(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DA941264())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v1 + 56);

    v6 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C8, &qword_1DA95F350);
  v3 = sub_1DA941334();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1DA941224();
  sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
  sub_1DA8AD28C();
  sub_1DA940EC4();
  v1 = v30;
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
LABEL_11:
  v11 = v3 + 56;
  while (v1 < 0)
  {
    v15 = sub_1DA941294();
    if (!v15)
    {
LABEL_34:
      sub_1DA830720(v1);

      return;
    }

    *&v27 = v15;
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    swift_dynamicCast();
LABEL_25:
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    swift_dynamicCast();
    v19 = sub_1DA9412C4();
    v20 = -1 << *(v3 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) != 0)
    {
      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v22);
      }

      while (v26 == -1);
      v12 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v3 + 48) + 40 * v12;
    *(v13 + 32) = v29;
    *v13 = v27;
    *(v13 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v14 = v6;
LABEL_24:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(v1 + 48) + ((v14 << 9) | (8 * v17)));
    goto LABEL_25;
  }

  v16 = v6;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v7 = *(v4 + 8 * v14);
    ++v16;
    if (v7)
    {
      v6 = v14;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1DA8A7BF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C8, &qword_1DA95F350);
    v2 = sub_1DA941334();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    v12 = sub_1DA9412C4();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    v10 = *(v2 + 48) + 40 * v9;
    *(v10 + 32) = v22;
    *v10 = v20;
    *(v10 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_1DA8A7E28(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v7 = MEMORY[0x1E69E7CC0];
    result = sub_1DA941404();
    if (i < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E1272460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      result = [*(v6 + 16) destination];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_1DA9413E4();
      sub_1DA941414();
      sub_1DA941424();
      sub_1DA9413F4();
      if (v5 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_1DA8A7F7C()
{

  return swift_deallocClassInstance();
}

void sub_1DA8A7FD8(void *a1, NSObject *a2)
{
  v129 = a2;
  v130 = a1;
  v134[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA93F964();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v128 = &v120 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v120 - v10;
  v12 = *(v2 + 16);
  swift_getKeyPath();
  v133[0] = v12;
  sub_1DA8AD244(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v13 = *(v12 + 56);
  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v15 = qword_1EE110E68;
    if (i < 1)
    {
      break;
    }

    v121 = v7;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    v17 = __swift_project_value_buffer(v16, qword_1EE11ADC0);
    v122 = v4[2];
    v123 = v4 + 2;
    v122(v11, v130, v3);

    v124 = v17;
    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();

    v20 = os_log_type_enabled(v18, v19);
    v131 = v13;
    v126 = v4;
    v127 = v3;
    if (v20)
    {
      v21 = v4;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v133[0] = v23;
      *v22 = 136315650;
      sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v24 = v19;
      v25 = sub_1DA941614();
      v26 = v3;
      v28 = v27;
      v125 = v21[1];
      v125(v11, v26);
      v29 = sub_1DA7AE6E8(v25, v28, v133);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v30 = sub_1DA940984();
      v32 = sub_1DA7AE6E8(v30, v31, v133);

      *(v22 + 14) = v32;
      *(v22 + 22) = 2080;
      v33 = type metadata accessor for RemoteDevice(0);
      v34 = MEMORY[0x1E1271CD0](v131, v33);
      v36 = sub_1DA7AE6E8(v34, v35, v133);

      *(v22 + 24) = v36;
      _os_log_impl(&dword_1DA7A9000, v18, v24, "UserNotificationsIDSCloudPushTarget push(attachmentURL): attachmentURL: %s to metadata: %s to availableDevices: %s", v22, 0x20u);
      swift_arrayDestroy();
      v37 = v23;
      v13 = v131;
      MEMORY[0x1E12739F0](v37, -1, -1);
      MEMORY[0x1E12739F0](v22, -1, -1);
    }

    else
    {

      v125 = v4[1];
      v125(v11, v3);
    }

    swift_beginAccess();
    v52 = *(v12 + 40);
    v53 = sub_1DA93F904();
    v54 = sub_1DA940964();
    v55 = sub_1DA8A7E28(v13);
    v56 = sub_1DA8AD104(v55);

    sub_1DA8A7878(v56);

    v57 = sub_1DA940E84();

    LOBYTE(v134[0]) = *(v12 + 16);
    sub_1DA8986BC();
    v58 = sub_1DA940964();

    v134[0] = 0;
    v132 = 0;
    v59 = [v52 sendResourceAtURL:v53 metadata:v54 toDestinations:v57 priority:300 options:v58 identifier:v134 error:&v132];

    v60 = v132;
    v61 = v134[0];
    if (!v59)
    {
      v81 = v132;
      v82 = v61;
      v83 = sub_1DA93F8C4();

      swift_willThrow();
      v84 = v121;
      v85 = v127;
      v122(v121, v130, v127);
      v86 = v131;

      v87 = v83;
      v88 = sub_1DA940584();
      v89 = sub_1DA940F14();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v130 = v82;
        v91 = v90;
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v134[0] = v93;
        *v91 = 136315650;
        sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v94 = sub_1DA941614();
        v95 = v85;
        v97 = v96;
        v125(v84, v95);
        v98 = sub_1DA7AE6E8(v94, v97, v134);

        *(v91 + 4) = v98;
        *(v91 + 12) = 2080;
        v99 = type metadata accessor for RemoteDevice(0);
        v100 = MEMORY[0x1E1271CD0](v86, v99);
        v102 = v101;

        v103 = sub_1DA7AE6E8(v100, v102, v134);

        *(v91 + 14) = v103;
        *(v91 + 22) = 2112;
        v104 = v83;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 24) = v105;
        *v92 = v105;
        _os_log_impl(&dword_1DA7A9000, v88, v89, "UserNotificationsIDSCloudPushTarget push(attachmentURL): attachmentURL: %s to availableDevices: %s failed: %@", v91, 0x20u);
        sub_1DA7BA120(v92, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v92, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v93, -1, -1);
        MEMORY[0x1E12739F0](v91, -1, -1);
      }

      else
      {

        v125(v84, v85);
      }

      return;
    }

    v62 = v127;
    v11 = v128;
    v122(v128, v130, v127);
    v63 = v131;

    v64 = v60;
    v4 = v61;
    v65 = sub_1DA940584();
    v13 = sub_1DA940F34();

    if (!os_log_type_enabled(v65, v13))
    {

      v125(v11, v62);

      return;
    }

    LODWORD(v122) = v13;
    v123 = v4;
    v124 = v61;
    v129 = v65;
    v66 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v134[0] = v121;
    *v66 = 136315650;
    sub_1DA8AD244(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v67 = sub_1DA941614();
    v68 = v62;
    v70 = v69;
    v125(v11, v68);
    v71 = sub_1DA7AE6E8(v67, v70, v134);

    *(v66 + 4) = v71;
    v128 = v66;
    *(v66 + 12) = 2080;
    v132 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, i, 0);
    v3 = 0;
    v72 = v132;
    v73 = v63;
    v7 = (v63 & 0xC000000000000001);
    v130 = (v63 & 0xFFFFFFFFFFFFFF8);
    while (v3 < i)
    {
      v74 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_36;
      }

      if (v7)
      {
        v75 = MEMORY[0x1E1272460](v3, v73);
      }

      else
      {
        if (v3 >= *(v130 + 2))
        {
          goto LABEL_37;
        }

        v75 = *(v73 + 8 * v3 + 32);
      }

      v76 = [*(v75 + 16) uniqueID];
      if (!v76)
      {
        __break(1u);
      }

      v77 = v76;
      v11 = sub_1DA940A14();
      v4 = v78;

      v132 = v72;
      v12 = v72[2];
      v79 = v72[3];
      v13 = v12 + 1;
      if (v12 >= v79 >> 1)
      {
        sub_1DA82A778((v79 > 1), v12 + 1, 1);
        v72 = v132;
      }

      v72[2] = v13;
      v80 = &v72[2 * v12];
      v80[4] = v11;
      v80[5] = v4;
      ++v3;
      v73 = v131;
      if (v74 == i)
      {

        v106 = MEMORY[0x1E1271CD0](v72, MEMORY[0x1E69E6158]);
        v108 = v107;

        v109 = sub_1DA7AE6E8(v106, v108, v134);

        v110 = v128;
        *(v128 + 14) = v109;
        *(v110 + 11) = 2112;
        v112 = v123;
        v111 = v124;
        *(v110 + 3) = v123;
        v113 = v120;
        *v120 = v111;
        v114 = v112;
        v115 = v129;
        _os_log_impl(&dword_1DA7A9000, v129, v122, "UserNotificationsIDSCloudPushTarget push(attachmentURL): SENT attachmentURL: %s to availableDevices: %s IDS message identifier: %@", v110, 0x20u);
        sub_1DA7BA120(v113, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v113, -1, -1);
        v116 = v121;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v116, -1, -1);
        MEMORY[0x1E12739F0](v110, -1, -1);

        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA9405A4();
  __swift_project_value_buffer(v38, qword_1EE11ADC0);

  v39 = sub_1DA940584();
  v40 = sub_1DA940F34();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v134[0] = v42;
    *v41 = 136315394;
    swift_beginAccess();
    v43 = *(v12 + 40);
    v44 = [v43 description];
    v45 = sub_1DA940A14();
    v47 = v46;

    v48 = sub_1DA7AE6E8(v45, v47, v134);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2080;
    v49 = [*(v12 + 40) devices];
    if (v49)
    {
      v50 = v49;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v51 = sub_1DA940BE4();
    }

    else
    {
      v51 = 0;
    }

    v132 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C0, &unk_1DA95F340);
    v117 = sub_1DA940A74();
    v119 = sub_1DA7AE6E8(v117, v118, v134);

    *(v41 + 14) = v119;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "UserNotificationsIDSCloudPushTarget push(attachmentURL): zero available devices for idsService: %s idsService.devices: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v42, -1, -1);
    MEMORY[0x1E12739F0](v41, -1, -1);
  }
}

uint64_t sub_1DA8A8DEC(NSObject *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for CloudAction(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1DA8AD490(a1, a2, a3, a4, v10);
  return sub_1DA7BA120(v10, &qword_1ECBD62E8, &qword_1DA95F360);
}

uint64_t sub_1DA8A8EF4(NSObject *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA8AE290(a7 + *(v15 + 20), v14, type metadata accessor for CloudAction);
  v16 = type metadata accessor for CloudAction(0);
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  sub_1DA8AD490(a1, a2, a3, a4, v14);
  return sub_1DA7BA120(v14, &qword_1ECBD62E8, &qword_1DA95F360);
}

uint64_t sub_1DA8A9058(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DA941764();
  sub_1DA940AB4();
  v8 = sub_1DA941794();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DA941684() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DA8AAE80(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DA8A91A8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DA941274();

    if (v9)
    {

      sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1DA941264();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1DA8A9B6C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1DA8AA8B8(v20 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
    }

    v18 = v8;
    sub_1DA8AADFC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
  v11 = sub_1DA941104();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1DA8AB000(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1DA941114();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1DA8A93F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
  v33 = a2;
  v11 = sub_1DA9409A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DA8AD244(&qword_1ECBD5948, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E8]);
      v21 = sub_1DA9409F4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DA8AB1A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1DA8A96D0(uint64_t a1, uint64_t *a2)
{
  v39 = a1;
  v4 = type metadata accessor for NotificationSource(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = (&v36 - v9);
  v37 = v2;
  v10 = *v2;
  sub_1DA941764();
  v12 = *a2;
  v11 = a2[1];
  sub_1DA941784();
  if (v11)
  {
    sub_1DA940AB4();
  }

  v13 = a2[2];
  v42 = a2[3];
  sub_1DA940AB4();
  v38 = a2;
  v41 = *(a2 + 48);
  sub_1DA941784();
  v14 = sub_1DA941794();
  v15 = v10 + 56;
  v16 = -1 << *(v10 + 32);
  v17 = v14 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    v40 = v11;
    do
    {
      v20 = v19 * v17;
      sub_1DA8AE290(*(v10 + 48) + v19 * v17, v8, type metadata accessor for NotificationSource);
      v21 = *(v8 + 1);
      if (v21)
      {
        if (!v11 || (*v8 == v12 ? (v22 = v21 == v11) : (v22 = 0), !v22 && (sub_1DA941684() & 1) == 0))
        {
LABEL_6:
          sub_1DA8AE360(v8, type metadata accessor for NotificationSource);
          goto LABEL_7;
        }
      }

      else if (v11)
      {
        goto LABEL_6;
      }

      v23 = *(v8 + 2) == v13 && *(v8 + 3) == v42;
      if (!v23 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_6;
      }

      v24 = v19;
      v25 = v18;
      v26 = v15;
      v27 = v10;
      v28 = v13;
      v29 = v12;
      v30 = v8[48];
      sub_1DA8AE360(v8, type metadata accessor for NotificationSource);
      v22 = v41 == v30;
      v12 = v29;
      v13 = v28;
      v10 = v27;
      v15 = v26;
      v18 = v25;
      v19 = v24;
      v11 = v40;
      if (v22)
      {
        sub_1DA8AE360(v38, type metadata accessor for NotificationSource);
        sub_1DA8AE290(*(v10 + 48) + v20, v39, type metadata accessor for NotificationSource);
        return 0;
      }

LABEL_7:
      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v32 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v38;
  v35 = v36;
  sub_1DA8AE290(v38, v36, type metadata accessor for NotificationSource);
  v43 = *v32;
  sub_1DA8AB444(v35, v17, isUniquelyReferenced_nonNull_native);
  *v32 = v43;
  sub_1DA8AE2F8(v34, v39, type metadata accessor for NotificationSource);
  return 1;
}

uint64_t sub_1DA8A9A2C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DA941764();
  sub_1DA8ACEEC(v15, a2);
  v6 = sub_1DA941794();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_1DA8C4948(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[0] = *v2;

    sub_1DA8AB77C(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1DA8A9B6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E0, &qword_1DA95F358);
    v2 = sub_1DA941324();
    v15 = v2;
    sub_1DA941224();
    if (sub_1DA941294())
    {
      sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DA8AA8B8(v9 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
        }

        v2 = v15;
        result = sub_1DA941104();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1DA941294());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DA8A9D7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56C8, &unk_1DA95F380);
    v2 = sub_1DA941324();
    v15 = v2;
    sub_1DA941224();
    if (sub_1DA941294())
    {
      type metadata accessor for NotificationServiceConnection();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DA8AA8B8(v9 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
        }

        v2 = v15;
        result = sub_1DA941104();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1DA941294());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1DA8A9F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  v4 = sub_1DA941314();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DA941764();
      sub_1DA940AB4();
      v21 = sub_1DA941794();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1DA8AA1DC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DA93FEC4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  v6 = sub_1DA941314();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
      v21 = sub_1DA9409A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1DA8AA538(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NotificationSource(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  v8 = sub_1DA941314();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = *(v7 + 56);
    v33 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v31 = v1;
    v32 = (v12 + 63) >> 6;
    v15 = v8 + 56;
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v20 = *(v4 + 72);
      sub_1DA8AE2F8(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6, type metadata accessor for NotificationSource);
      sub_1DA941764();
      if (*(v6 + 1))
      {
        v34 = v20;
        sub_1DA941784();
        v20 = v34;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      sub_1DA940AB4();
      sub_1DA941784();
      v21 = sub_1DA941794();
      v22 = -1 << *(v9 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1DA8AE2F8(v6, *(v9 + 48) + v16 * v20, type metadata accessor for NotificationSource);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v32)
      {
        break;
      }

      v19 = v33[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero(v33, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v29;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
}

void sub_1DA8AA8B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1DA941314();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1DA941104();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1DA8AAAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  v4 = sub_1DA941314();
  v5 = v4;
  if (!*(v3 + 16))
  {
    goto LABEL_29;
  }

  v27 = v2;
  v6 = 0;
  v28 = (v3 + 56);
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = v4 + 56;
  v30 = v10;
  v31 = v4;
  v32 = v3;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v33 = (v9 - 1) & v9;
LABEL_14:
    v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
    sub_1DA941764();
    v16 = 1 << *(v15 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v21 = 0;
    if (v18)
    {
      while (1)
      {
        v22 = v21;
LABEL_22:
        v23 = __clz(__rbit64(v18)) | (v22 << 6);
        v24 = *(*(v15 + 48) + 16 * v23 + 8);
        sub_1DA862D8C(*(v15 + 56) + 40 * v23, &v36);
        v34 = v36;
        v35 = v37;
        v25 = v38;

        if (!v24)
        {
          break;
        }

        v18 &= v18 - 1;
        v41[0] = v34;
        v41[1] = v35;
        v42 = v25;
        v38 = v43[2];
        v39 = v43[3];
        v40 = v44;
        v36 = v43[0];
        v37 = v43[1];
        sub_1DA940AB4();

        sub_1DA9412E4();
        sub_1DA862DE8(v41);
        v20 ^= sub_1DA941794();
        v21 = v22;
        if (!v18)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_19:
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        if (v22 >= v19)
        {
          break;
        }

        v18 = *(v15 + 64 + 8 * v22);
        ++v21;
        if (v18)
        {
          goto LABEL_22;
        }
      }
    }

    MEMORY[0x1E1272850](v20);
    sub_1DA941794();
    v5 = v31;
    v11 = sub_1DA941204();
    *(v29 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v31 + 48) + 8 * v11) = v15;
    ++*(v31 + 16);
    v3 = v32;
    v9 = v33;
    v10 = v30;
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    if (v6 >= v10)
    {
      break;
    }

    v14 = v28[v6];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v33 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  v26 = 1 << *(v3 + 32);
  if (v26 >= 64)
  {
    bzero(v28, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v28 = -1 << v26;
  }

  v2 = v27;
  *(v3 + 16) = 0;
LABEL_29:

  *v2 = v5;
}

unint64_t sub_1DA8AADFC(uint64_t a1, uint64_t a2)
{
  sub_1DA941104();
  result = sub_1DA941204();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1DA8AAE80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DA8A9F7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DA8AB908();
      goto LABEL_16;
    }

    sub_1DA8AC14C(v8 + 1);
  }

  v10 = *v4;
  sub_1DA941764();
  sub_1DA940AB4();
  v11 = sub_1DA941794();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1DA941684() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1DA9416D4();
  __break(1u);
}

void sub_1DA8AB000(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA8B8(v6 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DA8ABCB0(&qword_1ECBD62E0, &qword_1DA95F358);
      goto LABEL_12;
    }

    sub_1DA8AC6A0(v6 + 1, &qword_1ECBD62E0, &qword_1DA95F358);
  }

  v8 = *v3;
  v9 = sub_1DA941104();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1DA941114();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DA9416D4();
  __break(1u);
}

uint64_t sub_1DA8AB1A0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA1DC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DA8ABA64();
      goto LABEL_12;
    }

    sub_1DA8AC384(v10 + 1);
  }

  v12 = *v3;
  sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
  v13 = sub_1DA9409A4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1DA8AD244(&qword_1ECBD5948, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E8]);
      v21 = sub_1DA9409F4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DA9416D4();
  __break(1u);
  return result;
}

uint64_t sub_1DA8AB444(uint64_t *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for NotificationSource(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v44 = v3;
  v45 = a1;
  v43 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    v42 = v9;
    sub_1DA8AA538(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1DA8ABDF0();
      goto LABEL_30;
    }

    v42 = v9;
    sub_1DA8AC8AC(v12 + 1);
  }

  v14 = *v3;
  sub_1DA941764();
  v15 = *a1;
  v16 = a1[1];
  sub_1DA941784();
  if (v16)
  {
    sub_1DA940AB4();
  }

  v18 = a1[2];
  v17 = a1[3];
  sub_1DA940AB4();
  v47 = *(a1 + 48);
  sub_1DA941784();
  v19 = sub_1DA941794();
  v20 = v14 + 56;
  v21 = -1 << *(v14 + 32);
  a2 = v19 & ~v21;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v23 = *(v8 + 72);
    v46 = v16;
    do
    {
      sub_1DA8AE290(*(v14 + 48) + v23 * a2, v11, type metadata accessor for NotificationSource);
      v24 = *(v11 + 1);
      if (v24)
      {
        if (!v16 || (*v11 == v15 ? (v25 = v24 == v16) : (v25 = 0), !v25 && (sub_1DA941684() & 1) == 0))
        {
LABEL_13:
          sub_1DA8AE360(v11, type metadata accessor for NotificationSource);
          goto LABEL_14;
        }
      }

      else if (v16)
      {
        goto LABEL_13;
      }

      v26 = *(v11 + 2) == v18 && *(v11 + 3) == v17;
      if (!v26 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_13;
      }

      v27 = v23;
      v28 = v22;
      v29 = v20;
      v30 = v14;
      v31 = v17;
      v32 = v18;
      v33 = v15;
      v34 = v11[48];
      sub_1DA8AE360(v11, type metadata accessor for NotificationSource);
      v25 = v47 == v34;
      v15 = v33;
      v18 = v32;
      v17 = v31;
      v14 = v30;
      v20 = v29;
      v22 = v28;
      v23 = v27;
      v16 = v46;
      if (v25)
      {
        sub_1DA9416D4();
        __break(1u);
        break;
      }

LABEL_14:
      a2 = (a2 + 1) & v22;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v35 = v45;
  v36 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DA8AE2F8(v35, *(v36 + 48) + *(v43 + 72) * a2, type metadata accessor for NotificationSource);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

void sub_1DA8AB77C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AAAD8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DA8ABFFC();
      goto LABEL_12;
    }

    sub_1DA8ACBF0(v6 + 1);
  }

  v8 = *v3;
  sub_1DA941764();
  sub_1DA8ACEEC(v19, result);
  v9 = sub_1DA941794();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7150, &qword_1DA962D90);

      v13 = sub_1DA8C4948(v12, result);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DA9416D4();
  __break(1u);
}

void sub_1DA8AB908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  v2 = *v0;
  v3 = sub_1DA941304();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_1DA8ABA64()
{
  v1 = v0;
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  v6 = *v0;
  v7 = sub_1DA941304();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1DA8ABCB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA941304();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1DA8ABDF0()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  v6 = *v0;
  v7 = sub_1DA941304();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1DA8AE290(*(v6 + 48) + v21, v5, type metadata accessor for NotificationSource);
        sub_1DA8AE2F8(v5, *(v8 + 48) + v21, type metadata accessor for NotificationSource);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_1DA8ABFFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  v2 = *v0;
  v3 = sub_1DA941304();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_1DA8AC14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  v4 = sub_1DA941314();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DA941764();

      sub_1DA940AB4();
      v20 = sub_1DA941794();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1DA8AC384(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1DA93FEC4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6300, &qword_1DA95F398);
  v7 = sub_1DA941314();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
      v21 = sub_1DA9409A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1DA8AC6A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1DA941314();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_1DA941104();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_1DA8AC8AC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NotificationSource(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  v8 = sub_1DA941314();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = *(v7 + 56);
    v31 = v1;
    v32 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v7 + 48);
      v34 = *(v4 + 72);
      sub_1DA8AE290(v21 + v34 * (v18 | (v10 << 6)), v6, type metadata accessor for NotificationSource);
      sub_1DA941764();
      if (*(v6 + 1))
      {
        v33 = v14;
        sub_1DA941784();
        v14 = v33;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      sub_1DA940AB4();
      sub_1DA941784();
      v22 = sub_1DA941794();
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_1DA8AE2F8(v6, *(v9 + 48) + v17 * v34, type metadata accessor for NotificationSource);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v20 = *(v32 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v9;
  }
}

void sub_1DA8ACBF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  v4 = sub_1DA941314();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v2;
    v6 = 0;
    v27 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v28 = v4 + 56;
    v29 = v10;
    v30 = v4;
    v31 = v3;
    while (1)
    {
      if (v9)
      {
        v12 = __clz(__rbit64(v9));
        v32 = (v9 - 1) & v9;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_29;
          }

          if (v6 >= v10)
          {

            v2 = v26;
            goto LABEL_27;
          }

          v14 = *(v27 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v32 = (v14 - 1) & v14;
      }

      v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      sub_1DA941764();
      v16 = 1 << *(v15 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v15 + 64);
      v19 = (v16 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v20 = 0;
      v21 = 0;
      if (v18)
      {
        while (1)
        {
          v22 = v21;
LABEL_22:
          v23 = __clz(__rbit64(v18)) | (v22 << 6);
          v24 = *(*(v15 + 48) + 16 * v23 + 8);
          sub_1DA862D8C(*(v15 + 56) + 40 * v23, &v35);
          v33 = v35;
          v34 = v36;
          v25 = v37;

          if (!v24)
          {
            break;
          }

          v18 &= v18 - 1;
          v40[0] = v33;
          v40[1] = v34;
          v41 = v25;
          v37 = v42[2];
          v38 = v42[3];
          v39 = v43;
          v35 = v42[0];
          v36 = v42[1];
          sub_1DA940AB4();

          sub_1DA9412E4();
          sub_1DA862DE8(v40);
          v20 ^= sub_1DA941794();
          v21 = v22;
          if (!v18)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_19:
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

          if (v22 >= v19)
          {
            break;
          }

          v18 = *(v15 + 64 + 8 * v22);
          ++v21;
          if (v18)
          {
            goto LABEL_22;
          }
        }
      }

      MEMORY[0x1E1272850](v20);
      sub_1DA941794();
      v5 = v30;
      v11 = sub_1DA941204();
      *(v28 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v30 + 48) + 8 * v11) = v15;
      ++*(v30 + 16);
      v3 = v31;
      v9 = v32;
      v10 = v29;
    }
  }

LABEL_27:
  *v2 = v5;
}

void sub_1DA8ACEEC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(a2 + 48) + 16 * v12 + 8);
      sub_1DA862D8C(*(a2 + 56) + 40 * v12, &v19);
      v17 = v19;
      v18 = v20;
      v14 = v21;

      if (!v13)
      {
        break;
      }

      v7 &= v7 - 1;
      v24[0] = v17;
      v24[1] = v18;
      v25 = v14;
      v15 = a1[3];
      v21 = a1[2];
      v22 = v15;
      v23 = *(a1 + 8);
      v16 = a1[1];
      v19 = *a1;
      v20 = v16;
      sub_1DA940AB4();

      sub_1DA9412E4();
      sub_1DA862DE8(v24);
      v9 ^= sub_1DA941794();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1E1272850](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DA8AD06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E1271F90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DA8A9058(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DA8AD104(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v4 = sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    v5 = sub_1DA8AD28C();
    result = MEMORY[0x1E1271F90](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E1272460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DA8A91A8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DA941264();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DA8AD244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA8AD28C()
{
  result = qword_1ECBD62D8;
  if (!qword_1ECBD62D8)
  {
    sub_1DA7AF3EC(255, &qword_1ECBD62D0, 0x1E69A5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD62D8);
  }

  return result;
}

uint64_t sub_1DA8AD2F4(uint64_t a1)
{
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
  result = MEMORY[0x1E1271F90](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1DA8A93F0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1DA8AD490(NSObject *a1, uint64_t a2, id a3, unint64_t a4, uint64_t a5)
{
  v112 = a5;
  v113 = a1;
  v114 = a2;
  v118[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v105 - v9;
  v111 = type metadata accessor for CloudAction(0);
  v11 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 16);
  swift_getKeyPath();
  v117[0] = v13;
  sub_1DA8AD244(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v14 = *(v13 + 56);
  if (v14 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v16 = qword_1EE110E68;
    if (i < 1)
    {
      break;
    }

    v110 = v13;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    v18 = __swift_project_value_buffer(v17, qword_1EE11ADC0);

    v19 = a4;

    v20 = sub_1DA940584();
    v21 = sub_1DA940F34();

    v22 = os_log_type_enabled(v20, v21);
    v115 = v14;
    v107 = a3;
    v109 = v18;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v117[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1DA7AE6E8(a3, a4, v117);
      *(v23 + 12) = 2080;
      v25 = type metadata accessor for RemoteDevice(0);
      v26 = MEMORY[0x1E1271CD0](v115, v25);
      v28 = sub_1DA7AE6E8(v26, v27, v117);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1DA7A9000, v20, v21, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s to availableDevices: %s", v23, 0x16u);
      swift_arrayDestroy();
      v29 = v24;
      v14 = v115;
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    v30 = v110;
    sub_1DA8AE220(v112, v10);
    if (v11[6](v10, 1, v111) == 1)
    {
      sub_1DA7BA120(v10, &qword_1ECBD62E8, &qword_1DA95F360);
      LOBYTE(v117[0]) = *(v30 + 16);
      sub_1DA8986BC();
    }

    else
    {
      v46 = v108;
      sub_1DA8AE2F8(v10, v108, type metadata accessor for CloudAction);
      LOBYTE(v117[0]) = *(v30 + 16);
      sub_1DA898850(v46);
      sub_1DA8AE360(v46, type metadata accessor for CloudAction);
    }

    swift_bridgeObjectRetain_n();

    v47 = sub_1DA940584();
    v48 = sub_1DA940EF4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v117[0] = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_1DA7AE6E8(v107, v19, v117);
      *(v49 + 12) = 2112;
      v52 = sub_1DA940964();

      *(v49 + 14) = v52;
      *v50 = v52;
      _os_log_impl(&dword_1DA7A9000, v47, v48, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s using options %@", v49, 0x16u);
      sub_1DA7BA120(v50, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v30 = v110;
      MEMORY[0x1E12739F0](v51, -1, -1);
      MEMORY[0x1E12739F0](v49, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v53 = *(v30 + 5);
    v54 = sub_1DA93F994();
    v55 = sub_1DA8A7E28(v14);
    v56 = sub_1DA8AD104(v55);

    sub_1DA8A7878(v56);

    v13 = MEMORY[0x1E69E69B8];
    v10 = MEMORY[0x1E69E69C0];
    v57 = sub_1DA940E84();

    v58 = sub_1DA940964();

    v118[0] = 0;
    v116 = 0;
    a3 = [v53 sendData:v54 toDestinations:v57 priority:300 options:v58 identifier:v118 error:&v116];

    v59 = v116;
    v60 = v118[0];
    if (!a3)
    {
      v76 = v116;
      v77 = v60;
      v78 = sub_1DA93F8C4();

      swift_willThrow();

      v79 = v78;
      v80 = sub_1DA940584();
      v81 = sub_1DA940F14();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v118[0] = v84;
        *v82 = 136315650;
        *(v82 + 4) = sub_1DA7AE6E8(v107, v19, v118);
        *(v82 + 12) = 2080;
        v85 = type metadata accessor for RemoteDevice(0);
        v86 = MEMORY[0x1E1271CD0](v14, v85);
        v88 = v87;

        v89 = sub_1DA7AE6E8(v86, v88, v118);

        *(v82 + 14) = v89;
        *(v82 + 22) = 2112;
        v90 = v78;
        v91 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 24) = v91;
        *v83 = v91;
        _os_log_impl(&dword_1DA7A9000, v80, v81, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s to availableDevices: %s failed: %@", v82, 0x20u);
        sub_1DA7BA120(v83, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v83, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v84, -1, -1);
        MEMORY[0x1E12739F0](v82, -1, -1);
      }

      else
      {
      }

      return;
    }

    v61 = v59;
    v62 = v60;
    v63 = sub_1DA940584();
    v64 = sub_1DA940F34();

    if (!os_log_type_enabled(v63, v64))
    {

      return;
    }

    LODWORD(v109) = v64;
    v110 = v62;
    v112 = v60;
    v113 = v63;
    v65 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v118[0] = v108;
    *v65 = 136315650;
    *(v65 + 4) = sub_1DA7AE6E8(v107, v19, v118);
    v111 = v65;
    *(v65 + 12) = 2080;
    v116 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, i, 0);
    a4 = 0;
    v66 = v116;
    v67 = v14 & 0xC000000000000001;
    v114 = v14 & 0xFFFFFFFFFFFFFF8;
    v11 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    while (a4 < i)
    {
      v68 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_41;
      }

      if (v67)
      {
        v69 = MEMORY[0x1E1272460](a4, v14);
      }

      else
      {
        if (a4 >= *(v114 + 16))
        {
          goto LABEL_42;
        }

        v69 = *(v14 + 8 * a4 + 32);
      }

      v70 = [*(v69 + 16) uniqueID];
      if (!v70)
      {
        __break(1u);
      }

      v71 = v70;
      v10 = sub_1DA940A14();
      v73 = v72;

      v116 = v66;
      v13 = v66[2];
      v74 = v66[3];
      a3 = (v13 + 1);
      if (v13 >= v74 >> 1)
      {
        sub_1DA82A778((v74 > 1), v13 + 1, 1);
        v66 = v116;
      }

      v66[2] = a3;
      v75 = &v66[2 * v13];
      v75[4] = v10;
      v75[5] = v73;
      ++a4;
      v14 = v115;
      if (v68 == i)
      {

        v92 = MEMORY[0x1E1271CD0](v66, MEMORY[0x1E69E6158]);
        v94 = v93;

        v95 = sub_1DA7AE6E8(v92, v94, v118);

        v96 = v110;
        v97 = v111;
        *(v111 + 14) = v95;
        *(v97 + 22) = 2112;
        *(v97 + 24) = v96;
        v98 = v106;
        *v106 = v112;
        v99 = v96;
        v100 = v113;
        _os_log_impl(&dword_1DA7A9000, v113, v109, "UserNotificationsIDSCloudPushTarget push(updateData): SENT updateIdentifier: %s to availableDevices: %s IDS message identifier: %@", v97, 0x20u);
        sub_1DA7BA120(v98, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v98, -1, -1);
        v101 = v108;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v101, -1, -1);
        MEMORY[0x1E12739F0](v97, -1, -1);

        return;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v31 = sub_1DA9405A4();
  __swift_project_value_buffer(v31, qword_1EE11ADC0);

  v32 = sub_1DA940584();
  v33 = sub_1DA940F34();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v118[0] = v35;
    *v34 = 136315394;
    swift_beginAccess();
    v36 = *(v13 + 40);
    v37 = [v36 description];
    v38 = sub_1DA940A14();
    v39 = v13;
    v41 = v40;

    v42 = sub_1DA7AE6E8(v38, v41, v118);

    *(v34 + 4) = v42;
    *(v34 + 12) = 2080;
    v43 = [*(v39 + 40) devices];
    if (v43)
    {
      v44 = v43;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v45 = sub_1DA940BE4();
    }

    else
    {
      v45 = 0;
    }

    v116 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C0, &unk_1DA95F340);
    v102 = sub_1DA940A74();
    v104 = sub_1DA7AE6E8(v102, v103, v118);

    *(v34 + 14) = v104;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "UserNotificationsIDSCloudPushTarget push(updateData): zero available devices for idsService: %s idsService.devices: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v34, -1, -1);
  }
}

uint64_t sub_1DA8AE220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8AE290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8AE2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8AE360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA8AE3E8@<X0>(uint64_t a6@<X8>)
{
  v8 = sub_1DA93F904();
  v9 = sub_1DA940A04();
  v10 = sub_1DA940A04();
  v11 = [v6 moveFileIntoRepositoryFromFileURL:v8 forNotificationIdentifier:v9 bundleIdentifier:v10];

  if (v11)
  {
    sub_1DA93F914();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_1DA93F964();
  v14 = *(*(v13 - 8) + 56);

  return v14(a6, v12, 1, v13);
}

double sub_1DA8AE5D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id ServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ServiceManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_workingDirectory;
  v3 = sub_1DA93F964();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationService;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for NotificationServiceListener()) init];
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreServiceClient] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository] = 0;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator;
  type metadata accessor for NotificationCategoryRepositoryAggregator();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = sub_1DA8495B4(MEMORY[0x1E69E7CC0]);
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository] = 0;
  v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_dateDefinedReaperBackgroundSystemTaskHandler] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper] = 0;
  v8 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionRouter;
  type metadata accessor for NotificationActionRouter();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *&v0[v8] = v9;
  v10 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider;
  type metadata accessor for AggregatedSettingsProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProviderService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudPushTarget] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionHandlerCloudSender] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudSenderPriorityObserver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteDeviceChangeManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsPropertiesObserver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory] = 0;
  UNRegisterUserNotificationsLogging();
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = qword_1EE112A90;
  v14 = v12;
  if (v13 != -1)
  {
    v17 = v14;
    swift_once();
    v14 = v17;
  }

  v15 = v14;
  sub_1DA8B3668(v14);

  return v15;
}

Swift::Void __swiftcall ServiceManager.activate()()
{
  v1 = sub_1DA93F8E4();
  v175 = *(v1 - 8);
  v176 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v174 = v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v169 - v4;
  v6 = sub_1DA93F964();
  v183 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v173 = v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v170 = v169 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v169 - v11;
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  v14 = __swift_project_value_buffer(v13, qword_1EE114E48);
  v15 = v0;
  v182 = v14;
  v16 = sub_1DA940584();
  v17 = sub_1DA940F34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_1DA7A9000, v16, v17, "%@ activate()", v18, 0xCu);
    sub_1DA7BA120(v19, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v19, -1, -1);
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v22 = UNCRemoteServicesNeeded();
  v181 = v12;
  v177 = v21;
  if (v22)
  {
    v23 = [objc_allocWithZone(type metadata accessor for NotificationSystemServiceClient()) init];
    v24 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
    *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient) = v23;
    v25 = v23;

    v26 = v15;
    v27 = v25;
    v28 = sub_1DA940584();
    v29 = sub_1DA940F34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v26;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v26;
      v31[1] = v23;
      v32 = v26;
      v33 = v27;
      _os_log_impl(&dword_1DA7A9000, v28, v29, "%@ activate(): UNCRemoteServicesNeeded(): systemServiceClient: %@", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
      v27 = v28;
      v28 = v33;
    }

    v12 = v181;
  }

  v34 = [objc_allocWithZone(UNSContentProtectionManager) init];
  v35 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager);
  *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager) = v34;
  v36 = v34;

  sub_1DA90D0B4();
  v37 = v183;
  v38 = v183 + 16;
  v39 = *(v183 + 16);
  v39(v5, v12, v6);
  (*(v37 + 56))(v5, 0, 1, v6);
  v40 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_workingDirectory;
  swift_beginAccess();
  sub_1DA7BAD38(v5, v15 + v40, &qword_1ECBD6310, &unk_1DA95F3B0);
  swift_endAccess();
  v41 = sub_1DA93F924();
  v43 = v42;
  v44 = UNCDaemonEnabled();
  v179 = v36;
  v180 = v6;
  v178 = v43;
  v172 = v38;
  v171 = v39;
  if (v44)
  {
    v45 = v170;
    v39(v170, v12, v6);
    v46 = v15;
    v47 = sub_1DA940584();
    v48 = sub_1DA940F34();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v169[1] = v41;
      v51 = v50;
      v169[0] = swift_slowAlloc();
      aBlock = v169[0];
      *v49 = 138412547;
      *(v49 + 4) = v46;
      *v51 = v46;
      *(v49 + 12) = 2081;
      sub_1DA8B4B8C(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v52 = v46;
      v53 = sub_1DA941614();
      v55 = v54;
      (*(v183 + 8))(v45, v6);
      v56 = sub_1DA7AE6E8(v53, v55, &aBlock);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_1DA7A9000, v47, v48, "%@ activate(): UNCDaemonEnabled() using directory %{private}s", v49, 0x16u);
      sub_1DA7BA120(v51, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v51, -1, -1);
      v57 = v169[0];
      __swift_destroy_boxed_opaque_existential_1(v169[0]);
      MEMORY[0x1E12739F0](v57, -1, -1);
      MEMORY[0x1E12739F0](v49, -1, -1);
    }

    else
    {

      (*(v183 + 8))(v45, v6);
    }

    v69 = objc_allocWithZone(UNCBundleLibrarian);
    v70 = sub_1DA940A04();
    v71 = [v69 initWithDirectory_];

    v72 = *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian];
    *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian] = v71;
    v73 = v71;

    v74 = objc_allocWithZone(UNCAttachmentsRepository);
    v75 = v73;
    v76 = sub_1DA940A04();
    v77 = [v74 initWithDirectory:v76 librarian:v75];

    v78 = *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository];
    *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository] = v77;

    v79 = *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient];
    v80 = v179;
    if (!v79)
    {
      goto LABEL_47;
    }

    v81 = type metadata accessor for RemoteBadgeService();
    v82 = objc_allocWithZone(v81);
    *&v82[OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient] = v79;
    v184.receiver = v82;
    v184.super_class = v81;
    v83 = v79;
    v84 = objc_msgSendSuper2(&v184, sel_init);
    v85 = *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService];
    *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService] = v84;
    v86 = v84;

    v87 = v75;
    v88 = [v80 classCStrategy];
    v89 = objc_allocWithZone(UNSNotificationCategoryRepository);
    v90 = sub_1DA940A04();
    v91 = [v89 initWithDirectory:v90 librarian:v87 repositoryProtectionStrategy:v88];

    swift_unknownObjectRelease();
    *&v46[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository] = v91;
    v92 = v91;
    swift_unknownObjectRelease();
    v66 = v87;

    v93 = [v80 classDStrategyExcludedFromBackup];
    v94 = objc_allocWithZone(UNCLocalNotificationRepository);
    v95 = v86;
    v96 = v92;
    v97 = sub_1DA940A04();

    v67 = [v94 initWithDirectory:v97 librarian:v66 repositoryProtectionStrategy:v93 categoryRepository:v96 badgeService:v95];

    swift_unknownObjectRelease();
    [v67 performMigration];
    [v67 performValidation];

    v68 = &OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository;
  }

  else
  {
    v58 = v15;
    v59 = sub_1DA940584();
    v60 = sub_1DA940F34();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&dword_1DA7A9000, v59, v60, "%@ activate(): !UNCDaemonEnabled()", v61, 0xCu);
      sub_1DA7BA120(v62, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v62, -1, -1);
      MEMORY[0x1E12739F0](v61, -1, -1);
    }

    v64 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient;
    v65 = [objc_allocWithZone(UNCRemoteNotificationRepository) initWithServiceClient_];
    *&v58[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository] = v65;
    v66 = v65;
    swift_unknownObjectRelease();
    v67 = [objc_allocWithZone(UNSRemoteNotificationCategoryRepository) initWithServiceClient_];
    v68 = &OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository;
  }

  *(v15 + *v68) = v67;
  swift_unknownObjectRelease();
  v98 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository;
  if (!*(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository))
  {
    goto LABEL_44;
  }

  v99 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator;
  v100 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator);
  v101 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionRouter);
  v102 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider);
  v103 = type metadata accessor for UserNotificationsVendorServer();
  v104 = swift_allocObject();

  v105 = swift_unknownObjectRetain();
  v106 = sub_1DA8B3DB4(v105, v100, v101, v102, 0xD00000000000002ALL, 0x80000001DA9525D0, 1, v104);
  v107 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer;
  *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer) = v106;

  *(v101 + 16) = *(v15 + v98);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v101 + 24) = *(v15 + v99);

  v170 = v107;
  v108 = *(v15 + v107);
  if (v108)
  {
    v109 = &protocol witness table for UserNotificationsVendorServer;
  }

  else
  {
    v103 = 0;
    v109 = 0;
    v186 = 0;
    v187 = 0;
  }

  v110 = v180;
  v111 = v171;
  aBlock = v108;
  v188 = v103;
  v189 = v109;
  swift_beginAccess();

  sub_1DA7BAD38(&aBlock, v101 + 32, &unk_1ECBD5990, &qword_1DA95C2F8);
  swift_endAccess();
  v112 = v173;
  v111(v173, v181, v110);
  type metadata accessor for StorageSettingsProvider(0);
  v113 = swift_allocObject();
  aBlock = 0x536E6F6974636553;
  v186 = 0xEF73676E69747465;
  v115 = v174;
  v114 = v175;
  v116 = v176;
  (*(v175 + 104))(v174, *MEMORY[0x1E6968F70], v176);
  sub_1DA8282D0();
  sub_1DA93F954();
  (*(v114 + 8))(v115, v116);
  v117 = v112;
  v118 = *(v183 + 8);
  v183 += 8;
  v118(v117, v110);
  *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider) = v113;

  v119 = *(v15 + v98);
  if (!v119)
  {
    goto LABEL_45;
  }

  v120 = type metadata accessor for SettingsDefinedReaperClientProxy();
  v121 = swift_allocObject();
  *(v121 + 16) = v119;
  v188 = v120;
  v189 = &off_1F563ACA8;
  aBlock = v121;
  type metadata accessor for SettingsDefinedReaper();
  v122 = swift_allocObject();
  v123 = __swift_mutable_project_boxed_opaque_existential_1(&aBlock, v120);
  MEMORY[0x1EEE9AC00](v123);
  v125 = (v169 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125);
  v127 = *v125;
  v122[5] = v120;
  v122[6] = &off_1F563ACA8;
  v122[2] = v127;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper) = v122;

  if (UNCRemoteServicesNeeded())
  {
    v128 = *(v15 + v98);
    if (!v128)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v129 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
    if (!v129)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v130 = objc_allocWithZone(type metadata accessor for NotificationCoreServiceListener());
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v131 = sub_1DA883BC0(v128, v129);
    sub_1DA883E78();
    v132 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService);
    *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService) = v131;
    v133 = v131;

    v134 = v15;
    v135 = v133;
    v136 = sub_1DA940584();
    v137 = sub_1DA940F34();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v138 = 138412546;
      *(v138 + 4) = v134;
      *(v138 + 12) = 2112;
      *(v138 + 14) = v135;
      *v139 = v134;
      v139[1] = v131;
      v140 = v134;
      v141 = v135;
      _os_log_impl(&dword_1DA7A9000, v136, v137, "%@ activate(): UNCRemoteServicesNeeded(): coreService: %@", v138, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v139, -1, -1);
      MEMORY[0x1E12739F0](v138, -1, -1);
    }
  }

  v142 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!v142)
  {
    goto LABEL_46;
  }

  swift_unknownObjectRetain();

  sub_1DA922060(v142);

  swift_unknownObjectRelease();
  v143 = UNIsInternalInstall();
  v144 = v181;
  if (v143)
  {
    type metadata accessor for ToolServiceListener();
    swift_allocObject();
    v145 = sub_1DA937DC8();
    v146 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService;
    *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService) = v145;

    v147 = *(v15 + v146);
    if (v147)
    {
      *(v147 + 24) = &off_1F5636808;
      swift_unknownObjectWeakAssign();
    }
  }

  v148 = UNCOneness();
  v149 = v179;
  if (v148)
  {
    sub_1DA8AFE2C();
    sub_1DA8B0328();
  }

  else
  {
    v150 = sub_1DA940584();
    v151 = sub_1DA940F34();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1DA7A9000, v150, v151, "ServiceManager activate(): UNCOneness() DISABLED", v152, 2u);
      MEMORY[0x1E12739F0](v152, -1, -1);
    }
  }

  sub_1DA8B0F9C();
  v153 = *(v15 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationService);
  v154 = *&v153[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue];
  v155 = swift_allocObject();
  *(v155 + 16) = v153;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_1DA8B4748;
  *(v156 + 24) = v155;
  v189 = sub_1DA8B4750;
  v190 = v156;
  aBlock = MEMORY[0x1E69E9820];
  v186 = 1107296256;
  v187 = sub_1DA7B8000;
  v188 = &block_descriptor_15;
  v157 = _Block_copy(&aBlock);
  v158 = v153;

  dispatch_sync(v154, v157);
  _Block_release(v157);
  LOBYTE(v154) = swift_isEscapingClosureAtFileLocation();

  if (v154)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v149 addContentProtectionObserver_];
  sub_1DA8B102C();
  v159 = v15;
  v160 = sub_1DA940584();
  v161 = sub_1DA940F34();

  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    aBlock = v164;
    *v162 = 138412546;
    *(v162 + 4) = v159;
    *v163 = v159;
    *(v162 + 12) = 2080;
    v191 = *&v170[v15];

    v165 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6318, &unk_1DA95F3C0);
    v166 = sub_1DA940A74();
    v168 = sub_1DA7AE6E8(v166, v167, &aBlock);

    *(v162 + 14) = v168;
    _os_log_impl(&dword_1DA7A9000, v160, v161, "%@ activate(): started vendorServer: %s", v162, 0x16u);
    sub_1DA7BA120(v163, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v163, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v164);
    MEMORY[0x1E12739F0](v164, -1, -1);
    MEMORY[0x1E12739F0](v162, -1, -1);
  }

  else
  {
  }

  v118(v144, v180);
}

void sub_1DA8AFE2C()
{
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider])
  {
    v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
    v2 = swift_retain_n();
    sub_1DA8B38AC(v2, v1, &off_1F5632470);

    if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper])
    {

      sub_1DA8B38AC(v3, v1, &off_1F563AC90);
    }

    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE114E48);

    v5 = v0;
    oslog = sub_1DA940584();
    v6 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315394;
      sub_1DA941364();

      swift_beginAccess();
      v9 = *(v1 + 16);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v11 = MEMORY[0x1E1271CD0](v9, v10);
      v13 = v12;

      MEMORY[0x1E1271BD0](v11, v13);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);
      v14 = sub_1DA7AE6E8(0xD000000000000027, 0x80000001DA954530, &v31);

      *(v7 + 4) = v14;
      *(v7 + 12) = 2080;
      type metadata accessor for StorageSettingsProvider(0);

      v15 = sub_1DA940A74();
      v17 = sub_1DA7AE6E8(v15, v16, &v31);

      *(v7 + 14) = v17;
      _os_log_impl(&dword_1DA7A9000, oslog, v6, "ServiceManager addSettingsProviders(): %s storageSettingsProvider: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v8, -1, -1);
      MEMORY[0x1E12739F0](v7, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1EE114E48);
    v19 = v0;
    oslog = sub_1DA940584();
    v20 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v23 = *&v19[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
      sub_1DA941364();

      swift_beginAccess();
      v24 = *(v23 + 16);

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v26 = MEMORY[0x1E1271CD0](v24, v25);
      v28 = v27;

      MEMORY[0x1E1271BD0](v26, v28);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);
      v29 = sub_1DA7AE6E8(0xD000000000000027, 0x80000001DA954530, &v31);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_1DA7A9000, oslog, v20, "ServiceManager addSettingsProviders(): %s error adding storageSettingsProvider", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);

      return;
    }
  }
}

void sub_1DA8B0328()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository];
  if (!v2)
  {
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for UserNotificationsCloudReceiverConsumerProxy();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy;
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy] = v3;
  swift_unknownObjectRetain();

  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 deviceClass];

  if (v7)
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE114E48);
    oslog = sub_1DA940584();
    v9 = sub_1DA940F34();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v9, "ServiceManager startCloud() - not starting on iPad", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }

    return;
  }

  v85 = v4;
  v95[0] = 0;
  type metadata accessor for RemoteNotificationsProperties(0);
  swift_allocObject();
  RemoteNotificationsProperties.init(_:idsService:)(v95, 0xD000000000000030, 0x80000001DA9544F0);
  v12 = v11;
  v13 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  swift_beginAccess();
  *&v1[v13] = v12;

  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  osloga = sub_1DA9405A4();
  __swift_project_value_buffer(osloga, qword_1EE114E48);
  v14 = sub_1DA940584();
  v15 = sub_1DA940F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DA7A9000, v14, v15, "ServiceManager startCloud() - sender", v16, 2u);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6480, &unk_1DA95D4A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DA9596E0;
  Actor = type metadata accessor for SectionSettingsFetchActor();
  v19 = swift_allocObject();
  *(v19 + 16) = [objc_opt_self() currentNotificationSettingsCenter];
  *(v19 + 24) = &protocol witness table for UNNotificationSettingsCenter;
  *(v17 + 56) = Actor;
  *(v17 + 64) = &off_1F5634E90;
  *(v17 + 32) = v19;
  type metadata accessor for NotificationPipelineFactory();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory] = sub_1DA92E224(v17, 0, 0, 0);

  type metadata accessor for UserNotificationsIDSCloudPushTarget();
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudPushTarget] = v20;

  v21 = objc_allocWithZone(type metadata accessor for UserNotificationsIDSCloudReceiver());

  v23 = sub_1DA8B3B7C(v22, v21);
  v24 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver] = v23;
  v86 = v23;

  v95[0] = *(v12 + 16);
  v25 = *(v12 + 72);
  v26 = type metadata accessor for NotificationSourceMonitor(0);
  swift_allocObject();

  v27 = sub_1DA8BB3E4(v95, v25);
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor] = v27;

  v87 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository;
  v28 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository];
  if (!v28)
  {
    goto LABEL_38;
  }

  v29 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
  v96 = v26;
  v97 = &off_1F5636AC8;
  *v95 = v27;
  v30 = type metadata accessor for UserNotificationsCloudPushManager();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository] = v28;
  type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v32 = swift_allocObject();
  type metadata accessor for UserNotificationsCloudPushHandler();
  v33 = swift_allocObject();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v88 = v27;

  *&v31[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler] = sub_1DA8B3988(v20, v32, v33);
  v34 = &v31[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider];
  *v34 = v29;
  *(v34 + 1) = &off_1F56380C8;
  sub_1DA822F48(v95, &v31[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider], &unk_1ECBD6520, &qword_1DA958D48);
  *&v31[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions] = 7;
  v100.receiver = v31;
  v100.super_class = v30;
  v35 = objc_msgSendSuper2(&v100, sel_init);
  v36 = qword_1EE110D80;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(osloga, qword_1EE11AD48);
  v38 = sub_1DA940584();
  v39 = sub_1DA940F34();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v99[0] = v41;
    *v40 = 136315138;
    v93[0] = *&v37[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];

    v42 = sub_1DA940A74();
    v44 = sub_1DA7AE6E8(v42, v43, v99);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DA7A9000, v38, v39, "UserNotificationsCloudPushManager init %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E12739F0](v41, -1, -1);
    MEMORY[0x1E12739F0](v40, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_1DA7BA120(v95, &unk_1ECBD6520, &qword_1DA958D48);

  v45 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
  swift_beginAccess();
  v46 = *&v1[v45];
  *&v1[v45] = v37;

  v47 = *&v1[v87];
  if (!v47)
  {
    goto LABEL_39;
  }

  v48 = type metadata accessor for UserNotificationsCloudReceiver();
  v49 = objc_allocWithZone(v48);
  v97 = &off_1F5636AE8;
  v98 = &off_1F5636AC8;
  v96 = v26;
  *v95 = v88;
  *&v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver] = v86;
  *&v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_categoryRepository] = v47;
  sub_1DA8B49B4(v95, &v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_sourceProvider]);
  *&v49[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen] = 0;
  v94.receiver = v49;
  v94.super_class = v48;
  v50 = v86;
  swift_unknownObjectRetain_n();
  v51 = v50;

  v52 = objc_msgSendSuper2(&v94, sel_init);
  v53 = qword_1EE110D20;
  v54 = v52;
  if (v53 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(osloga, qword_1EE11AD30);
  v55 = sub_1DA940584();
  v56 = sub_1DA940F34();
  v84 = v45;
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    oslogb = swift_slowAlloc();
    v93[0] = oslogb;
    *v57 = 136315138;
    v58 = *&v54[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver];
    v59 = [v58 description];
    v60 = sub_1DA940A14();
    v61 = v51;
    v63 = v62;

    v64 = sub_1DA7AE6E8(v60, v63, v93);
    v51 = v61;

    *(v57 + 4) = v64;
    _os_log_impl(&dword_1DA7A9000, v55, v56, "UserNotificationsCloudReceiver init %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(oslogb);
    MEMORY[0x1E12739F0](oslogb, -1, -1);
    MEMORY[0x1E12739F0](v57, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
  v65 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver;
  v66 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver] = v54;
  v67 = v54;

  *&v51[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate + 8] = &off_1F5632B50;
  swift_unknownObjectWeakAssign();

  *&v51[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate + 8] = &off_1F5633E20;
  swift_unknownObjectWeakAssign();
  v68 = *&v1[v65];
  if (v68)
  {
    v69 = *&v1[v85] ? &off_1F5639D20 : 0;
    v70 = v68 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
    swift_beginAccess();
    *(v70 + 8) = v69;
    swift_unknownObjectWeakAssign();
    v71 = *(v68 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
    if (v71)
    {
      swift_unknownObjectWeakLoadStrong();
      *(v71 + 24) = *(v70 + 8);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  v72 = v1;
  v73 = sub_1DA940584();
  v74 = sub_1DA940F34();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 136315138;
    v92 = *&v1[v84];
    v93[0] = v76;
    v77 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6490, &qword_1DA95F4D0);
    v78 = sub_1DA940A74();
    v80 = sub_1DA7AE6E8(v78, v79, v93);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_1DA7A9000, v73, v74, "ServiceManager startCloud() cloudManager: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1E12739F0](v76, -1, -1);
    MEMORY[0x1E12739F0](v75, -1, -1);
  }

  type metadata accessor for AlertCoordinator();
  swift_allocObject();
  v81 = v72;
  v82 = AlertCoordinator.init(serviceManager:)(v81);

  v83 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator;
  swift_beginAccess();
  *&v81[v83] = v82;
}

id sub_1DA8B0F9C()
{
  v6[3] = &type metadata for BBSupportFeature;
  v6[4] = sub_1DA8B4B38();
  v1 = sub_1DA93FBC4();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (v1)
  {
    v3 = [objc_allocWithZone(UNCSettingsPersistenceConnectionListener) init];
    v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener;
    v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener);
    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener) = v3;

    result = *(v0 + v4);
    if (result)
    {
      return [result activate];
    }
  }

  return result;
}

void *sub_1DA8B102C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v3);

    sub_1DA93FB54();
    swift_getKeyPath();
    sub_1DA8B4B8C(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB74();

    if (*(v4 + 48) == 1)
    {
      v5 = sub_1DA8E4CB8(1);

      if (v5)
      {
        return sub_1DA8B1A7C();
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE114E48);
    v8 = sub_1DA940584();
    v9 = sub_1DA940F14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "No remote properties. Don't monitor for remote notifications.", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }
  }

  return sub_1DA8B1C74();
}

id ServiceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA8B14EC()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DA8867A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1DA8867A4((v5 > 1), v6 + 1, 1, v4);
    }

    v12 = type metadata accessor for UserNotificationsCloudPushManager();
    v13 = &off_1F5636930;
    *&v11 = v3;
    v4[2] = v6 + 1;
    sub_1DA7B9FAC(&v11, &v4[5 * v6 + 4]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor);
  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DA8867A4(0, v4[2] + 1, 1, v4);
    }

    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1DA8867A4((v8 > 1), v9 + 1, 1, v4);
    }

    v12 = type metadata accessor for NotificationSourceMonitor(0);
    v13 = &off_1F5636AB0;
    *&v11 = v7;
    v4[2] = v9 + 1;
    sub_1DA7B9FAC(&v11, &v4[5 * v9 + 4]);
  }

  return v4;
}

double sub_1DA8B167C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1DA8B4B8C(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return result;
}

double sub_1DA8B1718(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_1DA940D34();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  sub_1DA8DB00C(0, 0, v3, &unk_1DA95F530, v7);

  return result;
}

uint64_t sub_1DA8B1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_1DA8B18F8;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA8B18F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA8B19F4, 0, 0);
}

uint64_t sub_1DA8B19F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1DA8B102C();
  }

  v3 = *(v0 + 8);

  return v3();
}

void *sub_1DA8B1A7C()
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE114E48);
  v2 = v0;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);

    _os_log_impl(&dword_1DA7A9000, v3, v4, "Resuming repository observation. (from %{BOOL}d)", v5, 8u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  [result addObserver:v2 forBundleIdentifier:@"*"];
  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result addObserver:v2 forBundleIdentifier:@"*"];
  v7 = sub_1DA8B14EC();
  v8 = v7[2];
  if (v8)
  {
    v9 = (v7 + 4);
    do
    {
      sub_1DA7BABAC(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories) = 1;
  return result;
}

void *sub_1DA8B1C74()
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE114E48);
  v2 = v0;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);

    _os_log_impl(&dword_1DA7A9000, v3, v4, "Pausing repository observation. (from %{BOOL}d)", v5, 8u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  [result removeObserver:v2 forBundleIdentifier:@"*"];
  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result removeObserver:v2 forBundleIdentifier:@"*"];
  v7 = sub_1DA8B14EC();
  v8 = v7[2];
  if (v8)
  {
    v9 = (v7 + 4);
    do
    {
      sub_1DA7BABAC(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 8))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories) = 0;
  return result;
}

void sub_1DA8B1E6C(unint64_t a1, unint64_t a2, id a3, id a4)
{
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1DA9401F4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v19 = *&v4[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory];
  if (!v19)
  {
    if (qword_1EE114E40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

  v78 = v18;
  v80 = v17;
  v82 = (&v75 - v15);
  v83 = v16;
  v85 = v14;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (v31 = *&v4[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient]) == 0)
  {
  }

  else
  {

    v32 = v31;
    v33 = v4;
    v34 = v32;
    sub_1DA935460(a2, a3, a4);

    v4 = v33;
  }

  v79 = v10;
  v81 = v9;
  v84 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_28:
    v35 = sub_1DA941264();
    v86 = v19;
    v87 = a1;
    if (v35)
    {
LABEL_11:
      v76 = a3;
      v77 = a4;
      a1 = 0;
      a4 = (a2 & 0xC000000000000001);
      a3 = (a2 & 0xFFFFFFFFFFFFFF8);
      v19 = &selRef_setWatchQuickLook484hIconFile_;
      do
      {
        if (a4)
        {
          v36 = MEMORY[0x1E1272460](a1, a2);
        }

        else
        {
          if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v36 = *(a2 + 8 * a1 + 32);
        }

        v37 = v36;
        v38 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if ([v36 shouldSync])
        {
          sub_1DA9413E4();
          sub_1DA941414();
          sub_1DA941424();
          sub_1DA9413F4();
        }

        else
        {
        }

        ++a1;
      }

      while (v38 != v35);
      v39 = v90;
      a3 = v76;
      a4 = v77;
      a1 = v87;
      if ((v90 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v86 = v19;
    v87 = a1;
    if (v35)
    {
      goto LABEL_11;
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_30:
    if ((v39 & 0x4000000000000000) == 0)
    {
      if (!*(v39 + 16))
      {
LABEL_39:
        if (qword_1EE114E40 != -1)
        {
          swift_once();
        }

        v62 = sub_1DA9405A4();
        __swift_project_value_buffer(v62, qword_1EE114E48);
        swift_unknownObjectRetain();

        v63 = sub_1DA940584();
        v64 = sub_1DA940F34();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v89 = a1;
          v90 = v66;
          *v65 = 136315650;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
          v67 = sub_1DA940A74();
          v69 = sub_1DA7AE6E8(v67, v68, &v90);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2080;
          v70 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
          v71 = MEMORY[0x1E1271CD0](v39, v70);
          v73 = v72;

          v74 = sub_1DA7AE6E8(v71, v73, &v90);

          *(v65 + 14) = v74;
          *(v65 + 22) = 2080;
          *(v65 + 24) = sub_1DA7AE6E8(a3, a4, &v90);
          _os_log_impl(&dword_1DA7A9000, v63, v64, "notificationRepository: %s didPerform updates: %s forBundleIdentifier %s - but updates were empty. Skipping.", v65, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v66, -1, -1);
          MEMORY[0x1E12739F0](v65, -1, -1);
        }

        else
        {
        }

        return;
      }

      goto LABEL_32;
    }
  }

LABEL_38:
  if (!sub_1DA941264())
  {
    goto LABEL_39;
  }

LABEL_32:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1E1272460](0, v39);
LABEL_35:
    v42 = v41;
    v43 = [v41 notificationRecord];

    if (v43)
    {
      v77 = v43;
      v44 = [v43 identifier];
      if (v44)
      {
        v45 = v44;

        v46 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
        v47 = [objc_opt_self() requestWithIdentifier:v45 content:v46 trigger:0];

        v48 = v47;
        v76 = v48;
        v49 = v88;
        sub_1DA93FAC4();
        v50 = sub_1DA93FA44();
        v51 = sub_1DA940A04();
        v52 = sub_1DA940BD4();
        v53 = [objc_opt_self() notificationWithRequest:v48 date:v50 sourceIdentifier:v51 intentIdentifiers:v52];

        (*(v79 + 8))(v49, v81);
        v54 = v82;
        sub_1DA93FF04();
        v55 = v83;
        v56 = v80;
        v57 = v85;
        (*(v83 + 16))(v80, v54, v85);
        v58 = (*(v55 + 80) + 40) & ~*(v55 + 80);
        v59 = swift_allocObject();
        v60 = v84;
        *(v59 + 2) = v87;
        *(v59 + 3) = v60;
        *(v59 + 4) = a2;
        (*(v55 + 32))(&v59[v58], v56, v57);
        swift_unknownObjectRetain();
        v61 = v60;

        sub_1DA92E828(v54, 0, sub_1DA8B493C, v59);

        (*(v55 + 8))(v54, v57);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    goto LABEL_39;
  }

  if (*(v39 + 16))
  {
    v41 = *(v39 + 32);
    goto LABEL_35;
  }

  __break(1u);
LABEL_48:
  swift_once();
LABEL_5:
  v20 = sub_1DA9405A4();
  __swift_project_value_buffer(v20, qword_1EE114E48);
  swift_unknownObjectRetain();

  v88 = sub_1DA940584();
  v21 = sub_1DA940F14();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v88, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v89 = a1;
    v90 = v23;
    *v22 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
    v24 = sub_1DA940A74();
    v26 = sub_1DA7AE6E8(v24, v25, &v90);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v28 = MEMORY[0x1E1271CD0](a2, v27);
    v30 = sub_1DA7AE6E8(v28, v29, &v90);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_1DA7AE6E8(a3, a4, &v90);
    _os_log_impl(&dword_1DA7A9000, v88, v21, "notificationRepository: %s didPerform updates: %s forBundleIdentifier %s - NO PIPELINE FACTORY - this is very bad", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v23, -1, -1);
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  else
  {
    v40 = v88;
  }
}

void sub_1DA8B28FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v69 = a5;
  v70 = a3;
  v71 = a4;
  v7 = sub_1DA9401F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v64 - v17);
  sub_1DA822F48(a1, &v64 - v17, &unk_1ECBD6470, &qword_1DA95F4C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1EE114E48);
    swift_unknownObjectRetain();
    v21 = v19;
    v22 = sub_1DA940584();
    v23 = sub_1DA940F14();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v72 = a2;
      v73[0] = v26;
      *v24 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
      v27 = sub_1DA940A74();
      v29 = sub_1DA7AE6E8(v27, v28, v73);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      v30 = v19;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "notificationRepository: %s pipeline failed with: %@)", v24, 0x16u);
      sub_1DA7BA120(v25, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12739F0](v26, -1, -1);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    v33 = v70;
    v32 = v71;
    v34 = v69;
    if (*(v70 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer))
    {

      UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(v32, v34);
    }

    v35 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
    swift_beginAccess();
    v36 = *(v33 + v35);
    if (v36)
    {
      v37 = v36;
      sub_1DA8B5C78(v32, v34);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v15, v18, v7);
    v38 = v8;
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v39 = sub_1DA9405A4();
    __swift_project_value_buffer(v39, qword_1EE114E48);
    v40 = *(v8 + 16);
    v40(v13, v15, v7);
    v41 = v68;
    v69 = v15;
    v40(v68, v15, v7);
    swift_unknownObjectRetain();
    v42 = sub_1DA940584();
    v43 = sub_1DA940F34();
    swift_unknownObjectRelease();
    v44 = os_log_type_enabled(v42, v43);
    v67 = v38;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = a2;
      v73[0] = v66;
      *v45 = 136315650;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
      v46 = sub_1DA940A74();
      v48 = v38;
      v49 = sub_1DA7AE6E8(v46, v47, v73);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      sub_1DA8B4B8C(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v50 = sub_1DA941614();
      v52 = v51;
      v53 = *(v48 + 8);
      v53(v13, v7);
      v54 = sub_1DA7AE6E8(v50, v52, v73);

      *(v45 + 14) = v54;
      *(v45 + 22) = 2112;
      v55 = sub_1DA9401C4();
      *(v45 + 24) = v55;
      v56 = v65;
      *v65 = v55;
      v53(v41, v7);
      _os_log_impl(&dword_1DA7A9000, v42, v43, "notificationRepository: %s pipeline produced: %s settings: %@", v45, 0x20u);
      sub_1DA7BA120(v56, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v56, -1, -1);
      v57 = v66;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v57, -1, -1);
      MEMORY[0x1E12739F0](v45, -1, -1);
    }

    else
    {

      v53 = *(v38 + 8);
      v53(v41, v7);
      v53(v13, v7);
    }

    v59 = v70;
    v58 = v71;
    v60 = v69;
    if (*(v70 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer))
    {

      UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(v58, v60);
    }

    v61 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
    swift_beginAccess();
    v62 = *(v59 + v61);
    if (v62)
    {
      swift_endAccess();
      v63 = v62;
      sub_1DA8B5C78(v58, v60);

      v53(v60, v7);
    }

    else
    {
      v53(v60, v7);
      swift_endAccess();
    }
  }
}