uint64_t sub_1D2EB5ACC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2EAC6AC(v2);
}

_OWORD *sub_1D2EB5B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2EB5B98(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA7528(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D2EB5CB0(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isTelephonyProvider];

  if (v3 && ([a1 isUsingBaseband] & 1) != 0)
  {
    return 1;
  }

  v5 = [a1 provider];
  v6 = [v5 isFaceTimeProvider];

  if (v6)
  {
    return 2;
  }

  v7 = [a1 callSubType];
  if (v7 <= 4)
  {
    return (0x504030100uLL >> (8 * v7));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D2EB5D88()
{
  result = qword_1EC7392E0;
  if (!qword_1EC7392E0)
  {
    sub_1D2E9D860(255, &qword_1EC7392D8, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7392E0);
  }

  return result;
}

uint64_t sub_1D2EB5DF0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1D2EB5DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EB5E64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D2EB5ECC(uint64_t a1, int a2)
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

uint64_t sub_1D2EB5F14(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2EB5FF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  sub_1D2E637F8(v1, v2, v3);

  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DB8();
  sub_1D2E63814(v1, v2, v3);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    sub_1D2E637F8(v1, v2, v3);
    v9 = sub_1D2EE4AA8();
    v11 = sub_1D2E685B0(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739320, qword_1D2EF4628);
    v12 = sub_1D2EE4AA8();
    v14 = sub_1D2E685B0(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Invalid transition: attemptedState=%{public}s currentState=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  sub_1D2E94910();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

void sub_1D2EB6228(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {

    sub_1D2E63814(v3, v2, 1u);
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  if (__PAIR128__(v2, v3) < 3)
  {
    sub_1D2E63814(*a1, v2, 2u);
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v5, v6, "State transitioned to .screening", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v11 = 0x737574617473;
      v12 = 0xE600000000000000;
      v9 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v9;
      *(inited + 72) = 0x69737341646C6F48;
      *(inited + 80) = 0xEF74726174537473;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v10 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }
  }

  else
  {
LABEL_13:
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
    v13 = 0;
    sub_1D2EB5FF4(&v11);
    sub_1D2E63814(v11, v12, v13);
  }
}

uint64_t sub_1D2EB64D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (*a1 == 1)
      {

        result = sub_1D2E63814(v2, v3, 1u);
        *a1 = 1;
        a1[1] = v3;
        *(a1 + 16) = 1;
      }

      else
      {
        if (qword_1EDECFF10 != -1)
        {
          swift_once();
        }

        v6 = sub_1D2EE4618();
        __swift_project_value_buffer(v6, qword_1EDED2DB8);
        v7 = sub_1D2EE45F8();
        v8 = sub_1D2EE4DB8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v15 = v10;
          *v9 = 136315138;
          v18 = v2;
          v11 = sub_1D2EE4AA8();
          v13 = sub_1D2E685B0(v11, v12, &v15);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_1D2E46000, v7, v8, "Can't transition to remoteAgentDetected from %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x1D38AF660](v10, -1, -1);
          MEMORY[0x1D38AF660](v9, -1, -1);
        }

        sub_1D2E94910();
        swift_allocError();
        *v14 = 0;
        return swift_willThrow();
      }
    }

    else
    {
      v15 = 1;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = 1;
      sub_1D2EB5FF4(&v15);
      return sub_1D2E63814(v15, v16, v17);
    }
  }

  else
  {

    result = sub_1D2E63814(v5, v3, 0);
    *a1 = 1;
    a1[1] = v2;
    *(a1 + 16) = 1;
  }

  return result;
}

void sub_1D2EB6700(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v10 = 2;
      v11 = MEMORY[0x1E69E7CC0];
      v12 = 1;
      sub_1D2EB5FF4(&v10);
      sub_1D2E63814(v10, v11, v12);
      return;
    }

    v2 = *a1;

    sub_1D2E63814(v2, v1, 1u);
    *a1 = 2;
    *(a1 + 8) = v1;
    *(a1 + 16) = 1;
  }

  else
  {
    sub_1D2E63814(*a1, v1, 0);
    v5 = MEMORY[0x1E69E7CC0];
    *a1 = 2;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D2E46000, v7, v8, "State transitioned to .requiresUserInput", v9, 2u);
    MEMORY[0x1D38AF660](v9, -1, -1);
  }
}

void sub_1D2EB689C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 2;
    sub_1D2EB5FF4(&v10);
  }

  else
  {
    sub_1D2E63814(*a1, *(a1 + 8), v1);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v10 = 0x737574617473;
      v11 = 0xE600000000000000;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }

    *a1 = xmmword_1D2EF45A0;
    *(a1 + 16) = 2;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "State transitioned to .finished", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }
  }
}

void sub_1D2EB6AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 2;
    sub_1D2EB5FF4(&v7);
  }

  else
  {
    sub_1D2E63814(*a1, *(a1 + 8), v1);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v7 = 0x737574617473;
      v8 = 0xE600000000000000;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }

    v6 = MEMORY[0x1E69E7CC0];
    *a1 = 3;
    *(a1 + 8) = v6;
    *(a1 + 16) = 1;
  }
}

double sub_1D2EB6CAC(uint64_t a1)
{
  if (*(a1 + 16) >= 2u && *a1 == 0)
  {
    sub_1D2E63814(*a1, *(a1 + 8), 2u);
    *&result = 1;
    *a1 = xmmword_1D2EF45B0;
    *(a1 + 16) = 2;
  }

  else
  {
    v4 = xmmword_1D2EF45B0;
    v5 = 2;
    sub_1D2EB5FF4(&v4);
  }

  return result;
}

uint64_t sub_1D2EB6D84(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2 < 2 || (*a1 - 1) > 1)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 2;
    return sub_1D2EB5FF4(v6);
  }

  else
  {
    result = sub_1D2E63814(*a1, *(a1 + 8), v2);
    *a1 = a2;
    *(a1 + 16) = 2;
  }

  return result;
}

double sub_1D2EB6E1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 1)
  {
    sub_1D2E63814(*a1, *(a1 + 8), v2);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }
  }

  *&result = 3;
  *a1 = xmmword_1D2EF45A0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t sub_1D2EB6FA8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v37 = a6;
  v9 = type metadata accessor for HoldAssistEvent(0);
  v39 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v17 != 1)
    {
      v40 = MEMORY[0x1E69E7CC0];
      v41 = 0;
      v42 = 0;
      sub_1D2EB5FF4(&v40);
      return sub_1D2E63814(v40, v41, v42);
    }

    sub_1D2E63814(v15, v16, 1u);
    v18 = *(v16 + 16);
    if (!v18)
    {
      goto LABEL_9;
    }

    v14 = ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v19 = *(v39 + 72);
    v20 = *&v14[v16 + 16 + v19 * (v18 - 1)];
    if (v20 & 0x8000000000000000) == 0 || (v20)
    {
      goto LABEL_9;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v16 + 16);
      if (v21)
      {
LABEL_8:
        v22 = &v14[v16 + (v21 - 1) * v19];
        v23 = v21 - 1;
        sub_1D2E61F20(v22);
        *(v16 + 16) = v23;
LABEL_9:
        v24 = v37 & 1 | 0x8000000000000000;

        sub_1D2EE3E38();
        *v12 = v38;
        *(v12 + 8) = a5;
        *(v12 + 16) = v24;
        *(v12 + 24) = a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D2EC8538(0, *(v16 + 16) + 1, 1, v16);
        }

        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          v16 = sub_1D2EC8538((v25 > 1), v26 + 1, 1, v16);
        }

        *(v16 + 16) = v26 + 1;
        result = sub_1D2EB7460(v12, v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26);
        v15 = v15;
LABEL_25:
        *a1 = v15;
        a1[1] = v16;
        *(a1 + 16) = v17;
        return result;
      }
    }

    else
    {
      v16 = sub_1D2EB73E4(v16);
      v21 = *(v16 + 16);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_29:
    result = sub_1D2EB73E4(v15);
    v15 = result;
    v31 = *(result + 16);
    if (!v31)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  sub_1D2E63814(v28, v16, 0);
  v29 = *(v15 + 16);
  if (!v29)
  {
    goto LABEL_20;
  }

  v19 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v12 = *(v39 + 72);
  v30 = *(v15 + v19 + v12 * (v29 - 1) + 16);
  if (v30 & 0x8000000000000000) == 0 || (v30)
  {
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

  v31 = *(v15 + 16);
  if (v31)
  {
LABEL_19:
    v32 = v31 - 1;
    sub_1D2E61F20(v15 + v19 + (v31 - 1) * v12);
    *(v15 + 16) = v32;
LABEL_20:
    v33 = v37 & 1 | 0x8000000000000000;

    sub_1D2EE3E38();
    *v14 = v38;
    *(v14 + 1) = a5;
    *(v14 + 2) = v33;
    *(v14 + 3) = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D2EC8538(0, *(v15 + 16) + 1, 1, v15);
    }

    v35 = *(v15 + 16);
    v34 = *(v15 + 24);
    if (v35 >= v34 >> 1)
    {
      v15 = sub_1D2EC8538((v34 > 1), v35 + 1, 1, v15);
    }

    *(v15 + 16) = v35 + 1;
    result = sub_1D2EB7460(v14, v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35);
    v16 = 0;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D2EB7388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EB73F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739318, &qword_1D2EF4620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EB7460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoldAssistEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D2EB750C(uint64_t a1)
{
  sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    sub_1D2EB7590(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2EB7590(uint64_t a1)
{
  if (!qword_1EC739338)
  {
    sub_1D2EB75E8();
    v1 = sub_1D2EE4E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC739338);
    }
  }
}

unint64_t sub_1D2EB75E8()
{
  result = qword_1EC739340;
  if (!qword_1EC739340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739340);
  }

  return result;
}

uint64_t sub_1D2EB7634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v90 = *MEMORY[0x1E69E9840];
  v3 = sub_1D2EE3CF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2EE3D88();
  v84 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v83 = (&v69 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - v15;
  v17 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
  v80 = *(v17 - 8);
  v81 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D2EE3EB8();
  v77 = *(v20 - 8);
  v78 = v20;
  v21 = *(v77 + 16);
  v79 = v19;
  v22 = v19;
  v23 = a1;
  v21(v22, a1);
  sub_1D2EE3D18();
  v88 = 0x6F486E4F74696157;
  v89 = 0xEA0000000000646CLL;
  v24 = *MEMORY[0x1E6968F58];
  v72 = *(v4 + 104);
  v72(v6, v24, v3);
  sub_1D2E4EED4();
  sub_1D2EE3D68();
  v25 = *(v4 + 8);
  v74 = v3;
  v73 = v4 + 8;
  v25(v6, v3);
  v26 = *(v84 + 1);
  v85 = v7;
  v76 = v84 + 8;
  v75 = v26;
  v26(v14, v7);
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  sub_1D2EE3D58();
  v29 = sub_1D2EE4A38();

  LOBYTE(v14) = [v28 fileExistsAtPath:v29 isDirectory:0];

  v30 = v16;
  if (v14)
  {
    goto LABEL_4;
  }

  v71 = a1;
  v31 = [v27 defaultManager];
  v32 = sub_1D2EE3D28();
  v88 = 0;
  v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v88];

  if (v33)
  {
    v34 = v88;
    v23 = v71;
LABEL_4:
    v88 = sub_1D2EE3E68();
    v89 = v35;
    v36 = v74;
    v72(v6, *MEMORY[0x1E6968F68], v74);
    v37 = v83;
    sub_1D2EE3D68();
    v25(v6, v36);

    sub_1D2EE3DF8();
    sub_1D2EB75E8();
    v38 = v85;
    v39 = v70;
    (*(v84 + 2))(v70, v37, v85);
    v63 = sub_1D2EB8C84(v39);
    (*(v77 + 8))(v23, v78);
    v64 = v75;
    v75(v37, v38);
    v64(v30, v38);
    v65 = v81;
    v66 = v79;
    *&v79[*(v81 + 20)] = v63;
    v67 = v82;
    sub_1D2EB8E30(v66, v82);
    (*(v80 + 56))(v67, 0, 1, v65);
    return sub_1D2EB8E94(v66, type metadata accessor for WaitOnHoldTranscriptLogger);
  }

  v40 = v88;
  v41 = sub_1D2EE3CE8();

  swift_willThrow();
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v42 = sub_1D2EE4618();
  __swift_project_value_buffer(v42, qword_1EDED2DB8);
  v43 = v41;
  v44 = sub_1D2EE45F8();
  v45 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v88 = v83;
    *v46 = 136315138;
    swift_getErrorValue();
    v47 = v86;
    v48 = v87;
    v49 = sub_1D2EE4E58();
    v84 = v16;
    v50 = v49;
    v74 = &v69;
    v51 = *(v49 - 8);
    MEMORY[0x1EEE9AC00](v49);
    v53 = &v69 - v52;
    v54 = *(v48 - 8);
    (*(v54 + 16))(&v69 - v52, v47, v48);
    (*(v54 + 56))(v53, 0, 1, v48);
    v55 = sub_1D2EE2754(v53, v48);
    v57 = v56;
    (*(v51 + 8))(v53, v50);
    v58 = sub_1D2E685B0(v55, v57, &v88);

    *(v46 + 4) = v58;
    _os_log_impl(&dword_1D2E46000, v44, v45, "Error setting up log directory structure: %s", v46, 0xCu);
    v59 = v83;
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1D38AF660](v59, -1, -1);
    MEMORY[0x1D38AF660](v46, -1, -1);

    v60 = v78;
    v61 = *(v77 + 8);
    v61(v71, v78);
    v62 = v84;
  }

  else
  {

    v60 = v78;
    v61 = *(v77 + 8);
    v61(v71, v78);
    v62 = v16;
  }

  v75(v62, v85);
  v61(v79, v60);
  return (*(v80 + 56))(v82, 1, 1, v81);
}

uint64_t sub_1D2EB82A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a3;
  LODWORD(v34) = a4;
  v6 = type metadata accessor for TranscriptLog(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2EE3E48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v13 setDateStyle_];
  [v13 setTimeStyle_];
  sub_1D2EE3E38();
  v14 = sub_1D2EE3E18();
  v35 = v13;
  v15 = [v13 stringFromDate_];

  v16 = sub_1D2EE4A68();
  v18 = v17;

  v36 = v12;
  v37 = v10;
  v19 = *(v10 + 16);
  v38 = v9;
  v19(v8, v12, v9);
  v20 = &v8[v6[5]];
  *v20 = v16;
  v20[1] = v18;
  v21 = &v8[v6[6]];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v8[v6[7]];
  *v22 = v33;
  v22[8] = v34 & 1;
  v23 = qword_1EDECFF10;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D2EE4618();
  __swift_project_value_buffer(v24, qword_1EDED2DB8);
  v25 = sub_1D2EE45F8();
  v26 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D2E46000, v25, v26, "Logging transcript", v27, 2u);
    MEMORY[0x1D38AF660](v27, -1, -1);
  }

  sub_1D2EE3BF8();
  swift_allocObject();
  sub_1D2EE3BE8();
  sub_1D2EB8FF0(&qword_1EC739348, type metadata accessor for TranscriptLog, &unk_1D2EF467C);
  v28 = sub_1D2EE3BD8();
  v30 = v29;

  if (*(v32 + *(type metadata accessor for WaitOnHoldTranscriptLogger(0) + 20)))
  {
    v39 = v28;
    v40 = v30;
    sub_1D2EB8DDC();
    sub_1D2EE4D98();

    sub_1D2EB8E94(v8, type metadata accessor for TranscriptLog);
    (*(v37 + 8))(v36, v38);
    return sub_1D2E7EA2C(v28, v30);
  }

  else
  {

    sub_1D2E7EA2C(v28, v30);
    sub_1D2EB8E94(v8, type metadata accessor for TranscriptLog);
    return (*(v37 + 8))(v36, v38);
  }
}

uint64_t sub_1D2EB8908(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739368, &qword_1D2EF46A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EB8F9C();
  sub_1D2EE53C8();
  v18 = 0;
  sub_1D2EE3E48();
  sub_1D2EB8FF0(&qword_1EC737F08, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D2EE5248();
  if (!v2)
  {
    v9 = type metadata accessor for TranscriptLog(0);
    v17 = 1;
    sub_1D2EE5208();
    v16 = 2;
    sub_1D2EE5208();
    v10 = (v3 + *(v9 + 28));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v14 = v11;
    v15 = v10;
    v13[15] = 3;
    sub_1D2EB9038();
    sub_1D2EE5248();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2EB8B48()
{
  v1 = 1702125924;
  v2 = 0x636E617265747475;
  if (*v0 != 2)
  {
    v2 = 0x6974636964657270;
  }

  if (*v0)
  {
    v1 = 0x6972745365746164;
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

uint64_t sub_1D2EB8BCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2EB91A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2EB8BF4(uint64_t a1)
{
  v2 = sub_1D2EB8F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EB8C30(uint64_t a1)
{
  v2 = sub_1D2EB8F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1D2EB8C84(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2EE3D28();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1D2EE3D88();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1D2EE3CE8();

    swift_willThrow();
    v9 = sub_1D2EE3D88();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

unint64_t sub_1D2EB8DDC()
{
  result = qword_1EC739350;
  if (!qword_1EC739350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739350);
  }

  return result;
}

uint64_t sub_1D2EB8E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EB8E94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EB8F1C(uint64_t a1)
{
  result = sub_1D2EE3E48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D2EB8F9C()
{
  result = qword_1EC739370;
  if (!qword_1EC739370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739370);
  }

  return result;
}

uint64_t sub_1D2EB8FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2EB9038()
{
  result = qword_1EC739378;
  if (!qword_1EC739378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739378);
  }

  return result;
}

unint64_t sub_1D2EB90A0()
{
  result = qword_1EC739380;
  if (!qword_1EC739380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739380);
  }

  return result;
}

unint64_t sub_1D2EB90F8()
{
  result = qword_1EC739388;
  if (!qword_1EC739388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739388);
  }

  return result;
}

unint64_t sub_1D2EB9150()
{
  result = qword_1EC739390;
  if (!qword_1EC739390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739390);
  }

  return result;
}

uint64_t sub_1D2EB91A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6972745365746164 && a2 == 0xEA0000000000676ELL || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2EE5288();

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

void sub_1D2EB95FC(char a1, void *a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = a2;
  oslog = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D2E685B0(0xD000000000000023, 0x80000001D2EE7D60, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    *(v7 + 18) = 2080;
    if (a2)
    {
      v9 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v10 = sub_1D2EE4AA8();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_1D2E685B0(v10, v12, &v15);

    *(v7 + 20) = v13;
    _os_log_impl(&dword_1D2E46000, oslog, v6, "%s didStart: %{BOOL}d error: %s", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D2EB980C(char a1, void *a2)
{
  v3 = v2;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v7 = a2;
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1D2E685B0(0xD000000000000030, 0x80000001D2EE7D20, &v19);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2080;
    if (a2)
    {
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v13 = sub_1D2EE4AA8();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1D2E685B0(v13, v15, &v19);

    *(v10 + 20) = v16;
    _os_log_impl(&dword_1D2E46000, v8, v9, "%s didFinishAnnouncement: %{BOOL}d error: %s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v11, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  v17 = *(v3 + OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement);

  v17(a1 & 1, a2);
}

void sub_1D2EB9A30(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1D2EE3D88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36[-v17];
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v19 = sub_1D2EE4618();
  __swift_project_value_buffer(v19, qword_1EDED2DB8);
  sub_1D2E8A8AC(a2, v18);
  v20 = a3;
  v21 = sub_1D2EE45F8();
  v22 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v21, v22))
  {
    v37 = v22;
    v23 = a1;
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v24 = 136315906;
    *(v24 + 4) = sub_1D2E685B0(0xD000000000000033, 0x80000001D2EE7CE0, &v40);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v23 & 1;
    *(v24 + 18) = 2080;
    sub_1D2E8A8AC(v18, v16);
    if ((*(v7 + 48))(v16, 1, v6) == 1)
    {
      sub_1D2E8A91C(v16);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      (*(v7 + 32))(v12, v16, v6);
      (*(v7 + 16))(v10, v12, v6);
      v26 = sub_1D2EE4AA8();
      v25 = v27;
      (*(v7 + 8))(v12, v6);
    }

    sub_1D2E8A91C(v18);
    v28 = sub_1D2E685B0(v26, v25, &v40);

    *(v24 + 20) = v28;
    *(v24 + 28) = 2080;
    v29 = v37;
    if (a3)
    {
      v39 = a3;
      v30 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v31 = sub_1D2EE4AA8();
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_1D2E685B0(v31, v33, &v40);

    *(v24 + 30) = v34;
    _os_log_impl(&dword_1D2E46000, v21, v29, "%s didStop: %{BOOL}d messageRecordingURL: %s error: %s", v24, 0x26u);
    v35 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v35, -1, -1);
    MEMORY[0x1D38AF660](v24, -1, -1);
  }

  else
  {

    sub_1D2E8A91C(v18);
  }
}

uint64_t sub_1D2EB9F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B8, &qword_1D2EF4838);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393C0, &qword_1D2EF4840);
  v3[31] = swift_task_alloc();
  v3[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393C8, &qword_1D2EF4848);
  v3[33] = swift_task_alloc();
  v5 = sub_1D2EE44A8();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = sub_1D2EE44B8();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D0, &qword_1D2EF4850);
  v3[40] = swift_task_alloc();
  v7 = sub_1D2EE45D8();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D8, &qword_1D2EF4858);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393E0, &qword_1D2EF4860);
  v3[47] = v8;
  v3[48] = *(v8 - 8);
  v3[49] = swift_task_alloc();
  v9 = sub_1D2EE4708();
  v3[50] = v9;
  v3[51] = *(v9 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EBA33C, 0, 0);
}

uint64_t sub_1D2EBA33C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v17 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  v8 = *(v0 + 216);
  v18 = *(v0 + 320);
  v16 = *(v0 + 200);
  v9 = swift_task_alloc();
  *(v9 + 16) = v16;
  *(v9 + 32) = v8;
  sub_1D2EE4718();

  v10 = sub_1D2EE4188();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1D2EBB4F8(v5, v7);
  sub_1D2EE41C8();
  sub_1D2EE41B8();
  sub_1D2EE4198();
  sub_1D2EE41A8();
  sub_1D2E5D0B8(v5, &qword_1EC7393D8, &qword_1D2EF4858);
  (*(v3 + 104))(v4, *MEMORY[0x1E69A1378], v6);
  *(v0 + 432) = sub_1D2EBC0D4(&qword_1EC7393E8, MEMORY[0x1E69C61B0], MEMORY[0x1E69C61A0]);
  sub_1D2EE47C8();
  (*(v3 + 8))(v4, v6);
  v11 = *(v2 + 8);
  *(v0 + 440) = v11;
  *(v0 + 448) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v17);
  v12 = sub_1D2EE45C8();
  (*(*(v12 - 8) + 56))(v18, 1, 1, v12);
  sub_1D2EE45B8();
  v13 = swift_task_alloc();
  *(v0 + 456) = v13;
  *v13 = v0;
  v13[1] = sub_1D2EBA664;
  v14 = *(v0 + 248);

  return MEMORY[0x1EEE0B300](v14, 0xD00000000000001CLL, 0x80000001D2EE7D90);
}

uint64_t sub_1D2EBA664()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1D2EBAECC;
  }

  else
  {
    v2 = sub_1D2EBA778;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EBA778()
{
  v1 = *(v0 + 248);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393F0, &qword_1D2EF4868);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D2E5D0B8(v1, &qword_1EC7393C0, &qword_1D2EF4840);
  }

  else
  {
    v38 = *(v0 + 440);
    v33 = *(v0 + 416);
    v34 = *(v0 + 424);
    v37 = *(v0 + 408);
    v26 = *(v0 + 344);
    v3 = *(v0 + 336);
    v27 = *(v0 + 328);
    v28 = *(v0 + 352);
    v24 = *(v0 + 312);
    v35 = *(v0 + 304);
    v36 = *(v0 + 400);
    v39 = *(v0 + 296);
    v25 = *(v0 + 288);
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v29 = *(v0 + 208);
    v30 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = v4;
    v22 = *(v6 + 48);
    v23 = *(v2 + 48);
    v8 = *(v35 + 32);
    v8(v7, v1);
    v9 = *(v4 + 32);
    v9(v7 + v22, v1 + v23, v5);
    v10 = *(v6 + 48);
    (v8)(v24, v7, v39);
    v9(v25, v7 + v10, v5);
    sub_1D2EE4498();
    (*(v3 + 8))(v28, v27);
    (*(v3 + 32))(v28, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739400, &unk_1D2EF4870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2EF4820;
    strcpy((inited + 32), "conversation");
    v12 = MEMORY[0x1E69E6158];
    v13 = MEMORY[0x1E69C6558];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = v13;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    *(inited + 88) = 0x74706D6F7270;
    *(inited + 96) = 0xE600000000000000;
    *(v0 + 160) = *(v31 + 56);
    *(inited + 128) = v12;
    *(inited + 136) = v13;
    *(inited + 104) = *(v0 + 160);

    sub_1D2EBB568(v0 + 160, v0 + 176);
    sub_1D2EDCE98(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739408, &qword_1D2EF5ED0);
    swift_arrayDestroy();
    sub_1D2EDCFCC(MEMORY[0x1E69E7CC0]);
    sub_1D2EE4488();

    (*(v32 + 8))(v25, v5);
    (*(v35 + 8))(v24, v39);
    v38(v34, v36);
    (*(v37 + 32))(v34, v33, v36);
  }

  v14 = *(v0 + 440);
  v15 = *(v0 + 416);
  v16 = *(v0 + 400);
  v17 = *(v0 + 200);
  sub_1D2EE47B8();
  *(v0 + 192) = *(v17 + 48);
  sub_1D2EE4138();
  sub_1D2EE47D8();
  v14(v15, v16);
  v18 = swift_task_alloc();
  *(v0 + 472) = v18;
  v19 = sub_1D2EBC0D4(&qword_1EC7393F8, MEMORY[0x1E69DA478], MEMORY[0x1E69DA448]);
  *v18 = v0;
  v18[1] = sub_1D2EBAC00;
  v20 = *(v0 + 224);

  return MEMORY[0x1EEE0A360](v20, v19);
}

uint64_t sub_1D2EBAC00(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[60] = v2;

  v7 = v6[30];
  v8 = v6[29];
  v9 = v6[28];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_1D2EBB008;
  }

  else
  {
    v6[61] = a2;
    v6[62] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_1D2EBAD8C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D2EBAD8C()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[50];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];
  v6 = v0[61];
  v5 = v0[62];

  return v4(v5, v6);
}

uint64_t sub_1D2EBAECC()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[50];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EBB008()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[50];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EBB144@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739410, &qword_1D2EF4880);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1D2EE4778();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D2EE47A8();
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  v27 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v25 - v13;
  sub_1D2EE4768();
  sub_1D2EE4758();
  v14 = sub_1D2EE4798();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  sub_1D2EE4748();
  sub_1D2E5D0B8(v6, &qword_1EC739410, &qword_1D2EF4880);
  sub_1D2EE4758();
  v15(v6, 1, 1, v14);
  sub_1D2EE4748();
  sub_1D2E5D0B8(v6, &qword_1EC739410, &qword_1D2EF4880);
  sub_1D2EE4758();
  sub_1D2EE4788();
  v16 = MEMORY[0x1E69C6390];
  v17 = v26;
  v18 = v28;
  sub_1D2EE4738();
  v19 = v27;
  v20 = *(v27 + 8);
  v21 = v18;
  v20(v12, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739418, &qword_1D2EF4888);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D2EF3D10;
  (*(v19 + 16))(v23 + v22, v17, v21);
  MEMORY[0x1D38AE1B0](v23, v21, v16);

  return (v20)(v17, v21);
}

uint64_t sub_1D2EBB4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D8, &qword_1D2EF4858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBB5C4(uint64_t a1)
{
  v1[34] = a1;
  v2 = sub_1D2EE3FE8();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739420, &qword_1D2EF4898);
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  sub_1D2EE4158();
  v1[42] = swift_task_alloc();
  v4 = sub_1D2EE41E8();
  v1[43] = v4;
  v1[44] = *(v4 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_1D2EE4018();
  v1[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739428, &qword_1D2EF48A0);
  v1[48] = swift_task_alloc();
  v5 = sub_1D2EE4178();
  v1[49] = v5;
  v1[50] = *(v5 - 8);
  v1[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EBB84C, 0, 0);
}

uint64_t sub_1D2EBB84C()
{
  v59 = v0;
  sub_1D2EE4008();
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  sub_1D2EE4168();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D2E5D0B8(v0[48], &qword_1EC739428, &qword_1D2EF48A0);
    sub_1D2EBC018();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();

    v13 = v0[1];
  }

  else
  {
    v5 = v0[50];
    v6 = v0[51];
    v7 = v0[49];
    v8 = v0[46];
    v9 = v0[44];
    v53 = v0[45];
    v55 = v0[43];
    (*(v5 + 32))(v6, v0[48], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739438, &qword_1D2EF48A8);
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D2EF3D10;
    (*(v5 + 16))(v11 + v10, v6, v7);
    sub_1D2EE4148();
    sub_1D2EE41D8();
    (*(v9 + 16))(v53, v8, v55);
    sub_1D2EE4138();
    swift_allocObject();
    v12 = sub_1D2EE4128();
    sub_1D2EE3FC8();
    __swift_project_boxed_opaque_existential_1(v0 + 29, v0[32]);
    sub_1D2EE3FF8();
    v57 = v12;
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v15 = sub_1D2EE4618();
    __swift_project_value_buffer(v15, qword_1EC7466D0);
    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2E46000, v16, v17, "MiniPlanner adapter initialized.", v18, 2u);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    v20 = v0[40];
    v19 = v0[41];
    v22 = v0[38];
    v21 = v0[39];

    (*(v21 + 16))(v20, v19, v22);
    v23 = sub_1D2EE45F8();
    v51 = sub_1D2EE4DD8();
    v24 = os_log_type_enabled(v23, v51);
    v25 = v0[50];
    v26 = v0[51];
    v52 = v0[49];
    v27 = v0[46];
    v28 = v0[44];
    v29 = v0[40];
    v54 = v0[41];
    v56 = v0[43];
    v31 = v0[38];
    v30 = v0[39];
    if (v24)
    {
      v49 = v0[46];
      v50 = v0[51];
      v32 = v0[36];
      v33 = v0[37];
      v45 = v0[50];
      v34 = v0[35];
      v46 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58 = v48;
      *v46 = 136315138;
      v47 = v23;
      sub_1D2EE3FD8();
      sub_1D2EBC0D4(&qword_1EC739440, MEMORY[0x1E69B2150], MEMORY[0x1E69B2158]);
      v35 = sub_1D2EE5258();
      v37 = v36;
      (*(v32 + 8))(v33, v34);
      v38 = *(v30 + 8);
      v38(v29, v31);
      v39 = sub_1D2E685B0(v35, v37, &v58);

      *(v46 + 4) = v39;
      _os_log_impl(&dword_1D2E46000, v47, v51, "MiniPlanner adapter version: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1D38AF660](v48, -1, -1);
      MEMORY[0x1D38AF660](v46, -1, -1);

      v38(v54, v31);
      (*(v28 + 8))(v49, v56);
      (*(v45 + 8))(v50, v52);
    }

    else
    {

      v40 = *(v30 + 8);
      v40(v29, v31);
      v40(v54, v31);
      (*(v28 + 8))(v27, v56);
      (*(v25 + 8))(v26, v52);
    }

    v41 = v0[34];
    __swift_destroy_boxed_opaque_existential_1(v0 + 29);
    v0[11] = 0xD000000000000033;
    v0[12] = 0x80000001D2EE7DD0;
    v0[13] = 0x7070417472616D53;
    v0[14] = 0xEF736E6F69746341;
    v0[15] = 0x7070417472616D53;
    v0[16] = 0xEF736E6F69746341;
    v0[17] = v57;
    v0[18] = 0xD000000000000CB5;
    v0[19] = 0x80000001D2EE7E10;
    v0[2] = 0xD000000000000033;
    v0[3] = 0x80000001D2EE7DD0;
    v0[4] = 0x7070417472616D53;
    v0[5] = 0xEF736E6F69746341;
    v0[6] = 0x7070417472616D53;
    v0[7] = 0xEF736E6F69746341;
    v0[8] = v57;
    v0[9] = 0xD000000000000CB5;
    v0[10] = 0x80000001D2EE7E10;
    sub_1D2EBC06C((v0 + 11), (v0 + 20));
    sub_1D2EBC0A4((v0 + 2));
    *v41 = *(v0 + 11);
    v42 = *(v0 + 15);
    v43 = *(v0 + 17);
    v44 = *(v0 + 13);
    *(v41 + 64) = v0[19];
    *(v41 + 32) = v42;
    *(v41 + 48) = v43;
    *(v41 + 16) = v44;

    v13 = v0[1];
  }

  return v13();
}

unint64_t sub_1D2EBC018()
{
  result = qword_1EC739430;
  if (!qword_1EC739430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739430);
  }

  return result;
}

uint64_t sub_1D2EBC0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2EBC140(uint64_t a1, int a2)
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

uint64_t sub_1D2EBC188(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2EBC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D2EBC354;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D2EBC354(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1D2EBC474()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = *v0 == 0x7261646E656C6143 && v1 == 0xE800000000000000;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {
    return sub_1D2EBC694();
  }

  if (v2 == 0x7265646E696D6552 && v1 == 0xE800000000000000)
  {
    return sub_1D2EBC718();
  }

  v5 = sub_1D2EE5288();
  v6 = v1 == 0xE900000000000073 && v2 == 0x7265646E696D6552;
  if (v6 || (v5 & 1) != 0 || (sub_1D2EE5288() & 1) != 0)
  {
    return sub_1D2EBC718();
  }

  if (v2 == 1936744781 && v1 == 0xE400000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    result = v0[20];
    if (!result)
    {
      return result;
    }

    v7 = v0[19];
    goto LABEL_22;
  }

  if (v2 == 0x72656874616557 && v1 == 0xE700000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    result = v0[22];
    if (result)
    {
      v7 = v0[21];
LABEL_22:

      return v7;
    }

    return result;
  }

  if ((v2 != 0x6B6361426C6C6143 || v1 != 0xE800000000000000) && (sub_1D2EE5288() & 1) == 0 && (v2 != 0x656E6F6850 || v1 != 0xE500000000000000) && (sub_1D2EE5288() & 1) == 0)
  {
    return 0;
  }

  result = v0[24];
  if (result)
  {
    v7 = v0[23];
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D2EBC694()
{
  v0 = sub_1D2EBC7A0();
  if (*(v0 + 16) && (v1 = sub_1D2E4FC44(0xD000000000000011, 0x80000001D2EE8B00), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D2EBC718()
{
  v0 = sub_1D2EBC7A0();
  if (*(v0 + 16) && (v1 = sub_1D2E4FC44(0x69745F6D61726170, 0xEB00000000656C74), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t sub_1D2EBC7A0()
{
  v36 = sub_1D2EE53A8();
  v1 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D2EDD0FC(MEMORY[0x1E69E7CC0]);
  *(&v44 + 1) = &type metadata for PredictedAction;
  v4 = swift_allocObject();
  *&v43 = v4;
  v5 = *(v0 + 176);
  *(v4 + 176) = *(v0 + 160);
  *(v4 + 192) = v5;
  *(v4 + 208) = *(v0 + 192);
  *(v4 + 224) = *(v0 + 208);
  v6 = *(v0 + 112);
  *(v4 + 112) = *(v0 + 96);
  *(v4 + 128) = v6;
  v7 = *(v0 + 144);
  *(v4 + 144) = *(v0 + 128);
  *(v4 + 160) = v7;
  v8 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 32);
  *(v4 + 64) = v8;
  v9 = *(v0 + 80);
  *(v4 + 80) = *(v0 + 64);
  *(v4 + 96) = v9;
  v10 = *(v0 + 16);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v10;
  sub_1D2EBD24C(v0, &v45);
  sub_1D2EE5388();
  sub_1D2EE5398();
  sub_1D2EE50A8();

  sub_1D2EE50F8();
  if (!v47)
  {
LABEL_27:
    (*(v1 + 8))(v3, v36);

    return v37;
  }

  v34 = v3;
  v35 = v1;
  while (1)
  {
    v43 = v45;
    sub_1D2EB5B88(&v46, &v44);
    sub_1D2EBD284(&v43, &v40);
    v11 = v41;
    if (v41)
    {
      break;
    }

    sub_1D2EBD2F4(&v43);
    __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_4:
    sub_1D2EE50F8();
    if (!v47)
    {
      goto LABEL_27;
    }
  }

  v12 = v40;
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D2EBD284(&v43, &v40);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D2EBD2F4(&v43);

    goto LABEL_4;
  }

  v13 = v38;
  v14 = v39;
  v15 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v15 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || v38 == 1701736270 && v39 == 0xE400000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    sub_1D2EBD2F4(&v43);

    goto LABEL_4;
  }

  v16 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v16;
  v19 = sub_1D2E4FC44(v12, v11);
  v20 = *(v16 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    if (*(v16 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v26 = v18;
        sub_1D2EDC1AC();
        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      LODWORD(v37) = v18;
      sub_1D2EDB328(v22, isUniquelyReferenced_nonNull_native);
      v23 = sub_1D2E4FC44(v12, v11);
      if ((v37 & 1) != (v24 & 1))
      {
        goto LABEL_30;
      }

      v19 = v23;
      if ((v37 & 1) == 0)
      {
LABEL_24:
        v27 = v40;
        v40[(v19 >> 6) + 8] |= 1 << v19;
        v28 = (v27[6] + 16 * v19);
        *v28 = v12;
        v28[1] = v11;
        v29 = (v27[7] + 16 * v19);
        *v29 = v13;
        v29[1] = v14;
        sub_1D2EBD2F4(&v43);
        v30 = v27[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_29;
        }

        v37 = v27;
        v27[2] = v32;
        goto LABEL_26;
      }
    }

    v37 = v40;
    v25 = (v40[7] + 16 * v19);
    *v25 = v13;
    v25[1] = v14;

    sub_1D2EBD2F4(&v43);
LABEL_26:
    v3 = v34;
    v1 = v35;
    goto LABEL_4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1D2EE52B8();
  __break(1u);
  return result;
}

unint64_t sub_1D2EBCBC4(char a1)
{
  result = 0x656D616E5F707061;
  switch(a1)
  {
    case 1:
      result = 0x6D616E5F636E7566;
      break;
    case 2:
      result = 0x6970615F636E7566;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 8:
      result = 0x69745F6D61726170;
      break;
    case 9:
      result = 0x6F6C5F6D61726170;
      break;
    case 10:
      result = 0x6F705F6D61726170;
      break;
    case 11:
      result = 0x65645F6D61726170;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x70615F6D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D2EBCD7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739468, &qword_1D2EF4A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EBE21C();
  sub_1D2EE53C8();
  LOBYTE(v11) = 0;
  sub_1D2EE51E8();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D2EE51E8();
    LOBYTE(v11) = 2;
    sub_1D2EE51E8();
    LOBYTE(v11) = 3;
    sub_1D2EE51E8();
    LOBYTE(v11) = 4;
    sub_1D2EE51E8();
    v11 = *(v3 + 80);
    v10[7] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B00, &qword_1D2EF4A60);
    sub_1D2EBE2A0(&qword_1EC739470, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D2EE51F8();
    LOBYTE(v11) = 6;
    sub_1D2EE51E8();
    LOBYTE(v11) = 7;
    sub_1D2EE51E8();
    LOBYTE(v11) = 8;
    sub_1D2EE51E8();
    LOBYTE(v11) = 9;
    sub_1D2EE51E8();
    LOBYTE(v11) = 10;
    sub_1D2EE51E8();
    LOBYTE(v11) = 11;
    sub_1D2EE51E8();
    LOBYTE(v11) = 12;
    sub_1D2EE51E8();
    LOBYTE(v11) = 13;
    sub_1D2EE51E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2EBD0FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2EBD494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2EBD130(uint64_t a1)
{
  v2 = sub_1D2EBE21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EBD16C(uint64_t a1)
{
  v2 = sub_1D2EBE21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2EBD1A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D2EBD918(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

uint64_t sub_1D2EBD284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739448, &qword_1D2EF4950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBD2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739448, &qword_1D2EF4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D2EBD3A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
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

uint64_t sub_1D2EBD3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D2EBD494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E5F707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D616E5F636E7566 && a2 == 0xE900000000000065 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6970615F636E7566 && a2 == 0xE800000000000000 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D2EE8B00 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2EE8B20 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D2EE8B40 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D2EE8B60 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69745F6D61726170 && a2 == 0xEB00000000656C74 || (sub_1D2EE5288() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69745F6D61726170 && a2 == 0xEA0000000000656DLL || (sub_1D2EE5288() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C5F6D61726170 && a2 == 0xEE006E6F69746163 || (sub_1D2EE5288() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F705F6D61726170 && a2 == 0xE900000000000069 || (sub_1D2EE5288() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65645F6D61726170 && a2 == 0xEC0000006C696174 || (sub_1D2EE5288() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D2EE8B80 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x70615F6D61726170 && a2 == 0xE900000000000070)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D2EBD918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739450, &qword_1D2EF4A58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D2EBE21C();
  sub_1D2EE53B8();
  if (v2)
  {
    v78 = v2;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0uLL;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v61);
    *&v93 = v17;
    *(&v93 + 1) = v16;
    v94 = v15;
    v95 = v14;
    v96 = v13;
    v97 = v12;
    v98 = v11;
    v99 = v10;
    v100 = v69;
    v101 = v68;
    v102 = v66;
    v103 = v67;
    v104 = v64;
    v105 = v65;
    v106 = v62;
    v107 = v63;
    v108 = v76;
    v109 = v77;
    v110 = v74;
    v111 = v75;
    v112 = v72;
    v113 = v73;
    v114 = v70;
    v117 = 0;
    v115 = v71;
    v116 = 0;
    return sub_1D2EBE270(&v93);
  }

  LOBYTE(v93) = 0;
  *&v60 = sub_1D2EE5158();
  *(&v60 + 1) = v19;
  LOBYTE(v93) = 1;
  v20 = sub_1D2EE5158();
  v58 = v21;
  v59 = v20;
  LOBYTE(v93) = 2;
  v22 = sub_1D2EE5158();
  v56 = v23;
  v57 = v22;
  LOBYTE(v93) = 3;
  v24 = sub_1D2EE5158();
  v54 = v25;
  v55 = v24;
  LOBYTE(v93) = 4;
  v26 = sub_1D2EE5158();
  v78 = 0;
  *&v69 = v26;
  *(&v69 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B00, &qword_1D2EF4A60);
  LOBYTE(v79) = 5;
  sub_1D2EBE2A0(&qword_1EC739460, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v28 = v78;
  sub_1D2EE5168();
  if (v28)
  {
    v78 = v28;
    (*(v6 + 8))(v8, v5);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v16 = *(&v60 + 1);
    v17 = v60;
    v14 = v58;
    v15 = v59;
    v12 = v56;
    v13 = v57;
    v10 = v54;
    v11 = v55;
    goto LABEL_4;
  }

  v29 = a2;
  v30 = v93;
  LOBYTE(v93) = 6;
  v31 = sub_1D2EE5158();
  v68 = v30;
  v66 = v31;
  v67 = v32;
  LOBYTE(v93) = 7;
  v64 = sub_1D2EE5158();
  v65 = v33;
  LOBYTE(v93) = 8;
  v34 = sub_1D2EE5158();
  v78 = 0;
  v62 = v34;
  v63 = v35;
  LOBYTE(v93) = 9;
  v76 = sub_1D2EE5158();
  v77 = v36;
  v78 = 0;
  LOBYTE(v93) = 10;
  v74 = sub_1D2EE5158();
  v75 = v37;
  v78 = 0;
  LOBYTE(v93) = 11;
  v72 = sub_1D2EE5158();
  v73 = v38;
  v78 = 0;
  LOBYTE(v93) = 12;
  v70 = sub_1D2EE5158();
  v71 = v39;
  v78 = 0;
  v118 = 13;
  v40 = sub_1D2EE5158();
  v78 = 0;
  v41 = v40;
  v43 = v42;
  (*(v6 + 8))(v8, v5);
  v44 = v60;
  v79 = v60;
  v45 = v58;
  *&v80 = v59;
  *(&v80 + 1) = v58;
  v46 = v56;
  *&v81 = v57;
  *(&v81 + 1) = v56;
  v47 = v54;
  *&v82 = v55;
  *(&v82 + 1) = v54;
  v83 = v69;
  *&v84 = v68;
  *(&v84 + 1) = v66;
  *&v85 = v67;
  *(&v85 + 1) = v64;
  *&v86 = v65;
  *(&v86 + 1) = v62;
  *&v87 = v63;
  *(&v87 + 1) = v76;
  *&v88 = v77;
  *(&v88 + 1) = v74;
  *&v89 = v75;
  *(&v89 + 1) = v72;
  *&v90 = v73;
  *(&v90 + 1) = v70;
  *&v91 = v71;
  *(&v91 + 1) = v41;
  v92 = v43;
  sub_1D2EBD24C(&v79, &v93);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v93 = v44;
  v94 = v59;
  v95 = v45;
  v96 = v57;
  v97 = v46;
  v98 = v55;
  v99 = v47;
  v100 = v69;
  v101 = v68;
  v102 = v66;
  v103 = v67;
  v104 = v64;
  v105 = v65;
  v106 = v62;
  v107 = v63;
  v108 = v76;
  v109 = v77;
  v110 = v74;
  v111 = v75;
  v112 = v72;
  v113 = v73;
  v114 = v70;
  v115 = v71;
  v116 = v41;
  v117 = v43;
  result = sub_1D2EBE270(&v93);
  v48 = v90;
  *(v29 + 160) = v89;
  *(v29 + 176) = v48;
  *(v29 + 192) = v91;
  *(v29 + 208) = v92;
  v49 = v86;
  *(v29 + 96) = v85;
  *(v29 + 112) = v49;
  v50 = v88;
  *(v29 + 128) = v87;
  *(v29 + 144) = v50;
  v51 = v82;
  *(v29 + 32) = v81;
  *(v29 + 48) = v51;
  v52 = v84;
  *(v29 + 64) = v83;
  *(v29 + 80) = v52;
  v53 = v80;
  *v29 = v79;
  *(v29 + 16) = v53;
  return result;
}

unint64_t sub_1D2EBE21C()
{
  result = qword_1EC739458;
  if (!qword_1EC739458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739458);
  }

  return result;
}

uint64_t sub_1D2EBE2A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738B00, &qword_1D2EF4A60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictedAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2EBE460()
{
  result = qword_1EC739478;
  if (!qword_1EC739478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739478);
  }

  return result;
}

unint64_t sub_1D2EBE4B8()
{
  result = qword_1EC739480;
  if (!qword_1EC739480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739480);
  }

  return result;
}

unint64_t sub_1D2EBE510()
{
  result = qword_1EC739488;
  if (!qword_1EC739488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739488);
  }

  return result;
}

uint64_t type metadata accessor for ContainerProvider(uint64_t a1)
{
  result = qword_1EDECFB88;
  if (!qword_1EDECFB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EBE5D8(uint64_t a1)
{
  sub_1D2EBE65C(319);
  if (v1 <= 0x3F)
  {
    sub_1D2EBE6B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2EBE65C(uint64_t a1)
{
  if (!qword_1EDECF930)
  {
    type metadata accessor for PersistenceConfiguration(255);
    v1 = sub_1D2EE4E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECF930);
    }
  }
}

void sub_1D2EBE6B4()
{
  if (!qword_1EDECF7A8)
  {
    v0 = sub_1D2EE45E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECF7A8);
    }
  }
}

uint64_t sub_1D2EBE710(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2EBE760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1D2EBE7B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D2EBE7CC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D2EBE7FC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PersistenceConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D2EBF428(v5);
  }

  else
  {
    sub_1D2EBF490(v5, v9);
    v10 = type metadata accessor for ContainerProvider(0);
    v11 = *(v2 + *(v10 + 20));
    MEMORY[0x1EEE9AC00](v10);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = v9;
    os_unfair_lock_lock((v11 + 24));
    sub_1D2EBF4F4((v11 + 16), &v14);
    os_unfair_lock_unlock((v11 + 24));
    if (!v1)
    {
    }

    sub_1D2E88F6C(v9);
  }

  return 0;
}

uint64_t sub_1D2EBE9C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1D2EE48E8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D2EE3D88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2EE48F8();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a3 = *a1;
  }

  v32 = v16;
  v33 = v14;
  v34 = v13;
  v31 = a3;
  result = sub_1D2EBEDA0();
  if (!v3)
  {
    v18 = type metadata accessor for PersistenceConfiguration(0);
    (*(v9 + 16))(v11, a2 + *(v18 + 20), v8);
    sub_1D2EE48D8();
    v19 = v32;
    sub_1D2EE4908();
    sub_1D2EE4828();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739498, &qword_1D2EF4C08);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D2EF4820;
    v21 = type metadata accessor for StoredSmartAction(0);
    v22 = sub_1D2EBF370(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = type metadata accessor for StoredReference(0);
    v24 = sub_1D2EBF370(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
    *(v20 + 48) = v23;
    *(v20 + 56) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394B0, qword_1D2EF4C10);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D2EF3D10;
    v26 = v34;
    *(v25 + 56) = v34;
    *(v25 + 64) = sub_1D2EBF370(&qword_1EC7394B8, MEMORY[0x1E697BC88], MEMORY[0x1E697BC80]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v25 + 32));
    v28 = v33;
    (*(v33 + 16))(boxed_opaque_existential_0, v19, v26);
    v29 = sub_1D2EE4818();
    (*(v28 + 8))(v19, v26);
    *a1 = v29;
    *v31 = v29;
  }

  return result;
}

uint64_t sub_1D2EBEDA0()
{
  v1 = v0;
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v43 - v3;
  v5 = type metadata accessor for PersistenceConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D2EBF428(v4);
  }

  sub_1D2EBF490(v4, v8);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_1D2EE3D58();
  v12 = sub_1D2EE4A38();

  v13 = [v11 fileExistsAtPath_];

  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EC7466D0);
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_1D2E46000, v15, v16, "Top-level application support directory exists %{BOOL}d", v17, 8u);
    MEMORY[0x1D38AF660](v17, -1, -1);
  }

  if ((v13 & 1) == 0)
  {
    v18 = sub_1D2EE45F8();
    v19 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2E46000, v18, v19, "Creating directory inside application support", v20, 2u);
      MEMORY[0x1D38AF660](v20, -1, -1);
    }

    v21 = [v10 defaultManager];
    v22 = sub_1D2EE3D28();
    v48[0] = 0;
    v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v48];

    if (v23)
    {
      v24 = v48[0];
    }

    else
    {
      v25 = v48[0];
      v26 = sub_1D2EE3CE8();

      swift_willThrow();
      v27 = v26;
      v28 = sub_1D2EE45F8();
      v29 = sub_1D2EE4DB8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v30 = 136315138;
        swift_getErrorValue();
        v31 = v47;
        v43[0] = v46;
        v32 = sub_1D2EE4E58();
        v43[1] = v43;
        v33 = *(v32 - 8);
        v44 = v29;
        v34 = v33;
        MEMORY[0x1EEE9AC00](v32);
        v36 = v43 - v35;
        v37 = *(v31 - 8);
        (*(v37 + 16))(v43 - v35, v43[0], v31);
        (*(v37 + 56))(v36, 0, 1, v31);
        v38 = sub_1D2EE2754(v36, v31);
        v40 = v39;
        (*(v34 + 8))(v36, v32);
        v41 = sub_1D2E685B0(v38, v40, v48);

        *(v30 + 4) = v41;
        _os_log_impl(&dword_1D2E46000, v28, v44, "Faile to create directory inside application support %s", v30, 0xCu);
        v42 = v45;
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D38AF660](v42, -1, -1);
        MEMORY[0x1D38AF660](v30, -1, -1);
      }

      swift_willThrow();
    }
  }

  return sub_1D2E88F6C(v8);
}

uint64_t sub_1D2EBF370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2EBF3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBF428(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EBF490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PersistenceConfiguration(uint64_t a1)
{
  result = qword_1EDECF968;
  if (!qword_1EDECF968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EBF584(uint64_t a1)
{
  result = sub_1D2EE3D88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2EBF5F8()
{
  v0 = sub_1D2EE3CF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2EE3D88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  v11 = type metadata accessor for PersistenceConfiguration(0);
  __swift_allocate_value_buffer(v11, qword_1EDED2D50);
  v12 = __swift_project_value_buffer(v11, qword_1EDED2D50);
  sub_1D2EE3D38();
  v14[0] = 0xD00000000000001BLL;
  v14[1] = 0x80000001D2EE6990;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1D2E4EED4();
  sub_1D2EE3D78();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v8, v4);
  return sub_1D2EBF820(v10, v12);
}

uint64_t sub_1D2EBF820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = sub_1D2EE3CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2EE3D88();
  v8 = *(v14 - 8);
  (*(v8 + 16))(a2, a1, v14);
  v16 = 0xD000000000000015;
  v17 = 0x80000001D2EE8BA0;
  v9 = *MEMORY[0x1E6968F68];
  v13 = *(v5 + 104);
  v13(v7, v9, v4);
  type metadata accessor for PersistenceConfiguration(0);
  sub_1D2E4EED4();
  sub_1D2EE3D68();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v16 = 0xD00000000000001ALL;
  v17 = 0x80000001D2EE6F70;
  v13(v7, v9, v4);
  sub_1D2EE3D68();
  (*(v8 + 8))(v15, v14);
  return (v10)(v7, v4);
}

uint64_t sub_1D2EBFA94(uint64_t *a1)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2C0C();
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFB94(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EBFC58()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2C0C();
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFD58()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2BB8();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EBFE28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2B54(a5, a6, a7);
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFF88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  (*(v10 + 16))(&v15[-v11], a1, v9);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F88();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D2EC0148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2B54(a2, a3, a4);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC0270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2B54(a4, a5, a6);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC0370@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE4898();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2EC047C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0554()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC0658()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC070C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE4898();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC0818()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC091C()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC09C4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2A1C();
  sub_1D2EE4898();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC0AD4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0BA4()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2A1C();
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC0CAC()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC29C8();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC0D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  type metadata accessor for StoredSmartAction(0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC28F4();
  sub_1D2EE4878();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC0E78(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0F3C()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  type metadata accessor for StoredSmartAction(0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC28F4();
  sub_1D2EE4878();

  return v0;
}

uint64_t sub_1D2EC1054(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for StoredSmartAction(0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC28F4();
  sub_1D2EE48A8();
}

uint64_t sub_1D2EC1110@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  v3 = sub_1D2EE4888();

  *a2 = v3;
  return result;
}

uint64_t sub_1D2EC124C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F88();
}

uint64_t *sub_1D2EC1318(__int128 *a1)
{
  type metadata accessor for StoredReference(0);
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739550, &qword_1D2EF4FF0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EE4848();
  sub_1D2EE3FA8();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2E4C014(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1D2EC1438()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC16CallIntelligence15StoredReference___observationRegistrar;
  v2 = sub_1D2EE3FB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoredReference(uint64_t a1)
{
  result = qword_1EC7394C8;
  if (!qword_1EC7394C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EC1530(uint64_t a1)
{
  result = sub_1D2EE3FB8();
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

uint64_t sub_1D2EC15F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737365636F7270;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x80000001D2EE6340;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001D2EE6340;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x646575657571;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x69737365636F7270;
  if (*a2 == 1)
  {
    v5 = 0xEA0000000000676ELL;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646575657571;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2EE5288();
  }

  return v11 & 1;
}

unint64_t sub_1D2EC16F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2EC2E2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D2EC1728(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69737365636F7270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D2EE6340;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646575657571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D2EC183C()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EC18E4(uint64_t a1)
{
  sub_1D2EE4AC8();
}

uint64_t sub_1D2EC1978(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1A1C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1D2EE5118();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1D2EC1B40()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1BB4(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1C08(__int128 *a1)
{
  type metadata accessor for StoredReference(0);
  v2 = swift_allocObject();
  sub_1D2EC1318(a1);
  return v2;
}

uint64_t sub_1D2EC1C94(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2E4C014(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_1D2EC1CEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2E6912C(v1 + 16, v4);
  return sub_1D2EC1D7C;
}

void sub_1D2EC1D7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2E6912C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2E4C014((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2E4C014(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2EC1E38()
{
  sub_1D2EE5338();
  type metadata accessor for StoredReference(0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1F1C(uint64_t a1, uint64_t a2)
{
  sub_1D2EE5338();
  swift_getWitnessTable();
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1F84()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EC2B54(&qword_1EC737CC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC20BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1D2EC22D8()
{
  v0 = sub_1D2EE4918();
  v14 = *(v0 - 8);
  v15 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v13 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394F8, &qword_1D2EF4E70);
  v12 = 8 * *(*(sub_1D2EE4958() - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D2EF4210;
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739500, &qword_1D2EF4EA0);
  sub_1D2EE4978();
  v2 = swift_allocObject();
  v10 = xmmword_1D2EF3D10;
  *(v2 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE4968();
  v3 = sub_1D2EE4988();
  swift_allocObject();
  v4 = sub_1D2EE4998();
  *(&v18 + 1) = v3;
  v5 = sub_1D2EC2B54(&qword_1EC739508, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  v19 = v5;
  *&v17 = v4;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  *(swift_allocObject() + 16) = v10;
  sub_1D2EE4968();
  swift_allocObject();
  v6 = sub_1D2EE4998();
  *(&v18 + 1) = v3;
  v19 = v5;
  *&v17 = v6;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v20 = 0u;
  v21 = 0u;
  (*(v14 + 104))(v13, *MEMORY[0x1E697BCD8], v15);
  swift_getKeyPath();
  v7 = sub_1D2EE4928();
  swift_allocObject();
  v8 = sub_1D2EE4938();
  *(&v18 + 1) = v7;
  v19 = sub_1D2EC2B54(&qword_1EC739510, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  *&v17 = v8;
  sub_1D2EE4948();
  return v16;
}

unint64_t sub_1D2EC28F4()
{
  result = qword_1EC739520;
  if (!qword_1EC739520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739528, &qword_1D2EF4FE8);
    sub_1D2EC2B54(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739520);
  }

  return result;
}

unint64_t sub_1D2EC29C8()
{
  result = qword_1EC739530;
  if (!qword_1EC739530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739530);
  }

  return result;
}

unint64_t sub_1D2EC2A1C()
{
  result = qword_1EC739538;
  if (!qword_1EC739538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739538);
  }

  return result;
}

uint64_t sub_1D2EC2B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2EC2BB8()
{
  result = qword_1EC739540;
  if (!qword_1EC739540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739540);
  }

  return result;
}

unint64_t sub_1D2EC2C0C()
{
  result = qword_1EC739548;
  if (!qword_1EC739548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739548);
  }

  return result;
}

unint64_t sub_1D2EC2CD8()
{
  result = qword_1EC739558;
  if (!qword_1EC739558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739558);
  }

  return result;
}

unint64_t sub_1D2EC2D30()
{
  result = qword_1EC739560;
  if (!qword_1EC739560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739560);
  }

  return result;
}

unint64_t sub_1D2EC2D84()
{
  result = qword_1EC739568;
  if (!qword_1EC739568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739568);
  }

  return result;
}

unint64_t sub_1D2EC2DD8()
{
  result = qword_1EC739570;
  if (!qword_1EC739570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739570);
  }

  return result;
}

unint64_t sub_1D2EC2E2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2EE5118();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2EC2EB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(a5, a6, a7);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC2FE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  (*(v10 + 16))(&v15[-v11], a1, v9);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F88();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D2EC31A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(a2, a3, a4);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC32C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(a4, a5, a6);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC338C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE4898();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC3498(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC3568()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC366C()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC3714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE4898();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2EC3820()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC3924()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE48C8();
}

double sub_1D2EC39D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC5074();
  sub_1D2EE4898();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC3AE8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC3BB0()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC5074();
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC3CB8()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC5020();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC3D70()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  v0 = sub_1D2EE4888();

  return v0;
}

uint64_t sub_1D2EC3EA8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
  sub_1D2EE48B8();
}

uint64_t sub_1D2EC3F80@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC4FAC();
  sub_1D2EE4898();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC4090(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC4160()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC4FAC();
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC4268()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC4F58();
  sub_1D2EE48C8();
}

uint64_t *sub_1D2EC4314(__int128 *a1)
{
  type metadata accessor for StoredSmartAction(0);
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395C8, &qword_1D2EF54F8);
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EE4848();
  sub_1D2EE3FA8();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2E4C014(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1D2EC4434()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC16CallIntelligence17StoredSmartAction___observationRegistrar;
  v2 = sub_1D2EE3FB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoredSmartAction(uint64_t a1)
{
  result = qword_1EC739580;
  if (!qword_1EC739580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EC452C(uint64_t a1)
{
  result = sub_1D2EE3FB8();
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

uint64_t sub_1D2EC45F0(__int128 *a1)
{
  type metadata accessor for StoredSmartAction(0);
  v2 = swift_allocObject();
  sub_1D2EC4314(a1);
  return v2;
}

void (*sub_1D2EC4634(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2E6912C(v1 + 16, v4);
  return sub_1D2EC1D7C;
}

uint64_t sub_1D2EC46C8()
{
  sub_1D2EE5338();
  type metadata accessor for StoredSmartAction(0);
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC47AC(uint64_t a1, uint64_t a2)
{
  sub_1D2EE5338();
  swift_getWitnessTable();
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC4814()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction, &unk_1D2EF52A4);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction, &unk_1D2EF5360);
  sub_1D2EC51B0(&qword_1EC737CC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC494C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1D2EC4B68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394F8, &qword_1D2EF4E70);
  sub_1D2EE4958();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2EF51F0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739500, &qword_1D2EF4EA0);
  sub_1D2EE4978();
  *(swift_allocObject() + 16) = xmmword_1D2EF3D10;
  sub_1D2EE4968();
  sub_1D2EE4988();
  swift_allocObject();
  sub_1D2EE4998();
  sub_1D2EC51B0(&qword_1EC739508, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  return v0;
}

unint64_t sub_1D2EC4F58()
{
  result = qword_1EC7395A8;
  if (!qword_1EC7395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395A8);
  }

  return result;
}

unint64_t sub_1D2EC4FAC()
{
  result = qword_1EC7395B0;
  if (!qword_1EC7395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395B0);
  }

  return result;
}

unint64_t sub_1D2EC5020()
{
  result = qword_1EC7395B8;
  if (!qword_1EC7395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395B8);
  }

  return result;
}

unint64_t sub_1D2EC5074()
{
  result = qword_1EC7395C0;
  if (!qword_1EC7395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395C0);
  }

  return result;
}

uint64_t sub_1D2EC51B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2EC520C()
{
  result = qword_1EC7395D0;
  if (!qword_1EC7395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395D0);
  }

  return result;
}

uint64_t sub_1D2EC5260(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395D8, &qword_1D2EF55C0);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395E0, &qword_1D2EF55C8);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395E8, &qword_1D2EF55D0);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395F0, &qword_1D2EF55D8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EC5808();
  sub_1D2EE53C8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1D2EC58B0();
      sub_1D2EE51D8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1D2EC585C();
      v16 = v22;
      sub_1D2EE51D8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1D2EC5904();
    sub_1D2EE51D8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1D2EC55E0(uint64_t a1)
{
  v2 = sub_1D2EC5808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC561C(uint64_t a1)
{
  v2 = sub_1D2EC5808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC5658(uint64_t a1)
{
  v2 = sub_1D2EC5904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC5694(uint64_t a1)
{
  v2 = sub_1D2EC5904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC56D0(uint64_t a1)
{
  v2 = sub_1D2EC58B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC570C(uint64_t a1)
{
  v2 = sub_1D2EC58B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC5748(uint64_t a1)
{
  v2 = sub_1D2EC585C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC5784(uint64_t a1)
{
  v2 = sub_1D2EC585C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC57C0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2EC5958(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D2EC5808()
{
  result = qword_1EC7395F8;
  if (!qword_1EC7395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395F8);
  }

  return result;
}

unint64_t sub_1D2EC585C()
{
  result = qword_1EC739600;
  if (!qword_1EC739600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739600);
  }

  return result;
}

unint64_t sub_1D2EC58B0()
{
  result = qword_1EC739608;
  if (!qword_1EC739608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739608);
  }

  return result;
}

unint64_t sub_1D2EC5904()
{
  result = qword_1EC739610;
  if (!qword_1EC739610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739610);
  }

  return result;
}

uint64_t sub_1D2EC5958(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739618, &qword_1D2EF55E0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739620, &qword_1D2EF55E8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739628, &qword_1D2EF55F0);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739630, &unk_1D2EF55F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D2EC5808();
  v13 = v34;
  sub_1D2EE53B8();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1D2EE51C8();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1D2E53408();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1D2EC58B0();
          sub_1D2EE5138();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1D2EC585C();
        v24 = v11;
        sub_1D2EE5138();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1D2EC5904();
        v24 = v11;
        sub_1D2EE5138();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1D2EE5008();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC737F80, &qword_1D2EECD20) + 48);
    *v22 = &_s6StatusON;
    sub_1D2EE5148();
    sub_1D2EE4FF8();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1D2EC5F0C()
{
  result = qword_1EC739638;
  if (!qword_1EC739638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739638);
  }

  return result;
}

unint64_t sub_1D2EC5F64()
{
  result = qword_1EC739640;
  if (!qword_1EC739640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739640);
  }

  return result;
}

unint64_t sub_1D2EC5FBC()
{
  result = qword_1EC739648;
  if (!qword_1EC739648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739648);
  }

  return result;
}

unint64_t sub_1D2EC6014()
{
  result = qword_1EC739650;
  if (!qword_1EC739650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739650);
  }

  return result;
}

unint64_t sub_1D2EC606C()
{
  result = qword_1EC739658;
  if (!qword_1EC739658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739658);
  }

  return result;
}

unint64_t sub_1D2EC60C4()
{
  result = qword_1EC739660;
  if (!qword_1EC739660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739660);
  }

  return result;
}

unint64_t sub_1D2EC611C()
{
  result = qword_1EC739668;
  if (!qword_1EC739668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739668);
  }

  return result;
}

unint64_t sub_1D2EC6174()
{
  result = qword_1EC739670;
  if (!qword_1EC739670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739670);
  }

  return result;
}

unint64_t sub_1D2EC61CC()
{
  result = qword_1EC739678;
  if (!qword_1EC739678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739678);
  }

  return result;
}

uint64_t sub_1D2EC6220(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EC6244, 0, 0);
}

uint64_t sub_1D2EC6244()
{
  v26 = v0;
  sub_1D2EC9794(*(v0 + 336), v0 + 240);
  if (*(v0 + 264))
  {
    sub_1D2E4C014((v0 + 240), v0 + 200);
    sub_1D2E4C014((v0 + 200), v0 + 160);
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    *(v0 + 360) = __swift_project_value_buffer(v1, qword_1EC7466D0);
    sub_1D2E6912C(v0 + 160, v0 + 280);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25 = v5;
      *v4 = 136315138;
      v6 = __swift_project_boxed_opaque_existential_1((v0 + 280), *(v0 + 304));
      v7 = *v6;
      v8 = v6[1];

      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
      v9 = sub_1D2E685B0(v7, v8, &v25);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1D2E46000, v2, v3, "Valid model handle: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1D38AF660](v5, -1, -1);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    }

    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 320);
      v14 = *(v0 + 328);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D2E685B0(v15, v14, &v25);
      _os_log_impl(&dword_1D2E46000, v12, v13, "Invoking mini planner: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38AF660](v17, -1, -1);
      MEMORY[0x1D38AF660](v16, -1, -1);
    }

    v18 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    *(v0 + 16) = *v18;
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v21 = *(v18 + 1);
    *(v0 + 80) = v18[8];
    *(v0 + 48) = v20;
    *(v0 + 64) = v19;
    *(v0 + 32) = v21;
    v22 = swift_task_alloc();
    *(v0 + 368) = v22;
    *v22 = v0;
    v22[1] = sub_1D2EC6A7C;
    v23 = *(v0 + 320);
    v24 = *(v0 + 328);

    return sub_1D2EB9F8C(v0 + 16, v23, v24);
  }

  else
  {
    sub_1D2E5D0B8(v0 + 240, &qword_1EC7396B0, &qword_1D2EF59A0);
    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_1D2EC660C;

    return sub_1D2EBB5C4(v0 + 88);
  }
}

uint64_t sub_1D2EC660C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D2EC6A64;
  }

  else
  {
    v2 = sub_1D2EC6720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EC6720()
{
  v28 = v0;
  *(v0 + 184) = &type metadata for MiniPlanner;
  *(v0 + 192) = &off_1F4E95210;
  v1 = swift_allocObject();
  *(v0 + 160) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 64) = v3;
  *(v1 + 80) = *(v0 + 152);
  *(v1 + 16) = *(v0 + 88);
  *(v1 + 32) = v2;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  *(v0 + 360) = __swift_project_value_buffer(v4, qword_1EC7466D0);
  sub_1D2E6912C(v0 + 160, v0 + 280);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 280), *(v0 + 304));
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    v12 = sub_1D2E685B0(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Valid model handle: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 280));
  }

  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DA8();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D2E685B0(v16, v15, &v27);
    _os_log_impl(&dword_1D2E46000, v13, v14, "Invoking mini planner: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D38AF660](v18, -1, -1);
    MEMORY[0x1D38AF660](v17, -1, -1);
  }

  v19 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  *(v0 + 16) = *v19;
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  v22 = *(v19 + 1);
  *(v0 + 80) = v19[8];
  *(v0 + 48) = v21;
  *(v0 + 64) = v20;
  *(v0 + 32) = v22;
  v23 = swift_task_alloc();
  *(v0 + 368) = v23;
  *v23 = v0;
  v23[1] = sub_1D2EC6A7C;
  v24 = *(v0 + 320);
  v25 = *(v0 + 328);

  return sub_1D2EB9F8C(v0 + 16, v24, v25);
}

uint64_t sub_1D2EC6A7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v5 = sub_1D2EC6CE4;
  }

  else
  {
    v5 = sub_1D2EC6B94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2EC6B94()
{
  v12 = v0;

  v1 = sub_1D2EE45F8();
  v2 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[47];
    v3 = v0[48];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1D2E685B0(v4, v3, &v11);
    _os_log_impl(&dword_1D2E46000, v1, v2, "Raw plan: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38AF660](v6, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v7 = v0[1];
  v8 = v0[47];
  v9 = v0[48];

  return v7(v8, v9);
}

uint64_t sub_1D2EC6CE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D2EC6D48(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1D2EBC018();
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }

  v6 = sub_1D2EC7A38(a1, a2);
  v8 = v7;
  sub_1D2EE3BC8();
  swift_allocObject();
  sub_1D2EE3BB8();
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v9 = sub_1D2EE4618();
  __swift_project_value_buffer(v9, qword_1EC7466D0);
  v10 = sub_1D2EE45F8();
  v11 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v6;
    v13 = v8;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2E46000, v10, v11, "getActionResult attempting decode LLM response", v14, 2u);
    v15 = v14;
    v8 = v13;
    v6 = v12;
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739680, &unk_1D2EF5970);
  sub_1D2EC7F58();
  sub_1D2EE3BA8();
  if (v2)
  {

    sub_1D2E7EA2C(v6, v8);
    v16 = v2;
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D2E46000, v17, v18, "Mini planner parsing failure: %@", v19, 0xCu);
      sub_1D2E5D0B8(v20, &qword_1EC7392E8, &unk_1D2EF63D0);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    v23 = sub_1D2EE45F8();
    v24 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v86[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1D2E685B0(a1, a2, v86);
      _os_log_impl(&dword_1D2E46000, v23, v24, "Corrupt plan: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D38AF660](v26, -1, -1);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v82 = v6;
  v29 = v86[0];

  v30 = sub_1D2EE45F8();
  v31 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v29 + 16);

    _os_log_impl(&dword_1D2E46000, v30, v31, "Found %ld actions in raw plan", v32, 0xCu);
    MEMORY[0x1D38AF660](v32, -1, -1);
  }

  else
  {
  }

  v83 = v8;
  v33 = *(v29 + 16);
  if (v33)
  {
    v34 = v29 + 32;
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v36 = *(v34 + 16);
      v87[0] = *v34;
      v87[1] = v36;
      v37 = *(v34 + 32);
      v38 = *(v34 + 48);
      v39 = *(v34 + 80);
      v87[4] = *(v34 + 64);
      v87[5] = v39;
      v87[2] = v37;
      v87[3] = v38;
      v40 = *(v34 + 96);
      v41 = *(v34 + 112);
      v42 = *(v34 + 144);
      v87[8] = *(v34 + 128);
      v88 = v42;
      v87[6] = v40;
      v87[7] = v41;
      v43 = *(v34 + 160);
      v44 = *(v34 + 176);
      v45 = *(v34 + 192);
      v92 = *(v34 + 208);
      v90 = v44;
      v91 = v45;
      v89 = v43;
      v46 = v87[0];
      if (!*(&v87[0] + 1))
      {
LABEL_57:
        sub_1D2EBD24C(v87, v86);
        goto LABEL_58;
      }

      if (v87[0] == __PAIR128__(0xE800000000000000, 0x7261646E656C6143) || (sub_1D2EE5288() & 1) != 0)
      {
        sub_1D2EBD24C(v87, v86);
        v47 = sub_1D2EBC7A0();
        if (!*(v47 + 16))
        {
          goto LABEL_34;
        }

        v48 = 0x80000001D2EE8B00;
        v49 = 0xD000000000000011;
      }

      else
      {
        if (v46 != __PAIR128__(0xE800000000000000, 0x7265646E696D6552))
        {
          v55 = sub_1D2EE5288();
          v56 = *(&v46 + 1) == 0xE900000000000073 && v46 == 0x7265646E696D6552;
          if (!v56 && (v55 & 1) == 0 && (sub_1D2EE5288() & 1) == 0)
          {
            if (v46 == __PAIR128__(0xE400000000000000, 1936744781) || (sub_1D2EE5288() & 1) != 0)
            {
              v54 = v89;
              if (!v89)
              {
                goto LABEL_57;
              }

              v53 = *(&v88 + 1);
            }

            else if (v46 == __PAIR128__(0xE700000000000000, 0x72656874616557) || (sub_1D2EE5288() & 1) != 0)
            {
              v54 = v90;
              if (!v90)
              {
                goto LABEL_57;
              }

              v53 = *(&v89 + 1);
            }

            else
            {
              if (v46 != __PAIR128__(0xE800000000000000, 0x6B6361426C6C6143) && (sub_1D2EE5288() & 1) == 0 && v46 != __PAIR128__(0xE500000000000000, 0x656E6F6850) && (sub_1D2EE5288() & 1) == 0)
              {
                goto LABEL_57;
              }

              v54 = v91;
              if (!v91)
              {
                goto LABEL_57;
              }

              v53 = *(&v90 + 1);
            }

            sub_1D2EBD24C(v87, v86);

            if ((v54 & 0x2000000000000000) == 0)
            {
LABEL_59:
              if ((v53 & 0xFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_60;
            }

            goto LABEL_32;
          }
        }

        sub_1D2EBD24C(v87, v86);
        v47 = sub_1D2EBC7A0();
        if (!*(v47 + 16))
        {
          goto LABEL_34;
        }

        v49 = 0x69745F6D61726170;
        v48 = 0xEB00000000656C74;
      }

      v50 = sub_1D2E4FC44(v49, v48);
      if ((v51 & 1) == 0)
      {
LABEL_34:

LABEL_58:
        v54 = 0xE000000000000000;

        goto LABEL_32;
      }

      v52 = (*(v47 + 56) + 16 * v50);
      v53 = *v52;
      v54 = v52[1];

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_32:
      if ((v54 & 0xF00000000000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_60:
      if (!*(&v46 + 1))
      {
        v57 = 10;
        goto LABEL_67;
      }

      if (v46 == __PAIR128__(0xE800000000000000, 0x7261646E656C6143) || (sub_1D2EE5288() & 1) != 0)
      {
        v85 = 0;
LABEL_68:
        v58 = sub_1D2EBC7A0();
        v59 = sub_1D2EBC474();
        v61 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v58;
        sub_1D2EC8BBC(v59, v61, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
        sub_1D2EBE270(v87);
        v63 = v86[0];

        v64 = sub_1D2EE45F8();
        v65 = sub_1D2EE4DA8();

        if (os_log_type_enabled(v64, v65))
        {
          v84 = v33;
          v66 = v35;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v93 = v68;
          *v67 = 136315138;
          LOBYTE(v86[0]) = v85;
          v86[1] = v63;
          v69 = PredictedRawAction.debugDescription.getter();
          v71 = sub_1D2E685B0(v69, v70, &v93);

          *(v67 + 4) = v71;
          _os_log_impl(&dword_1D2E46000, v64, v65, "Action: %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x1D38AF660](v68, -1, -1);
          v72 = v67;
          v35 = v66;
          v33 = v84;
          MEMORY[0x1D38AF660](v72, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1D2EC8030(0, *(v35 + 2) + 1, 1, v35);
        }

        v74 = *(v35 + 2);
        v73 = *(v35 + 3);
        if (v74 >= v73 >> 1)
        {
          v35 = sub_1D2EC8030((v73 > 1), v74 + 1, 1, v35);
        }

        *(v35 + 2) = v74 + 1;
        v75 = &v35[16 * v74];
        v75[32] = v85;
        *(v75 + 5) = v63;
        goto LABEL_21;
      }

      if (v46 == __PAIR128__(0xE800000000000000, 0x7265646E696D6552))
      {
        goto LABEL_66;
      }

      v76 = sub_1D2EE5288();
      v77 = *(&v46 + 1) == 0xE900000000000073 && v46 == 0x7265646E696D6552;
      v85 = 2;
      if (v77 || (v76 & 1) != 0)
      {
        goto LABEL_68;
      }

      if (sub_1D2EE5288())
      {
LABEL_66:
        v57 = 2;
LABEL_67:
        v85 = v57;
        goto LABEL_68;
      }

      if (v46 == __PAIR128__(0xE400000000000000, 1936744781) || (sub_1D2EE5288() & 1) != 0)
      {
        v57 = 5;
        goto LABEL_67;
      }

      if (v46 == __PAIR128__(0xE700000000000000, 0x72656874616557) || (sub_1D2EE5288() & 1) != 0)
      {
        v57 = 8;
        goto LABEL_67;
      }

      if (v46 == __PAIR128__(0xE800000000000000, 0x6B6361426C6C6143) || (sub_1D2EE5288() & 1) != 0 || v46 == __PAIR128__(0xE500000000000000, 0x656E6F6850) || (sub_1D2EE5288() & 1) != 0)
      {
        v57 = 7;
        goto LABEL_67;
      }

LABEL_20:
      sub_1D2EBE270(v87);
LABEL_21:
      v34 += 216;
      if (!--v33)
      {
        goto LABEL_93;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_93:

  v78 = sub_1D2EE45F8();
  v79 = v35;
  v80 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134217984;
    *(v81 + 4) = *(v79 + 2);

    _os_log_impl(&dword_1D2E46000, v78, v80, "Returning %ld raw predicted actions", v81, 0xCu);
    MEMORY[0x1D38AF660](v81, -1, -1);

    sub_1D2E7EA2C(v82, v83);
  }

  else
  {

    sub_1D2E7EA2C(v82, v83);
  }

  return v79;
}

uint64_t sub_1D2EC7A38(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396A0, &qword_1D2EF5988);
  if (swift_dynamicCast())
  {
    sub_1D2E4C014(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D2EE3CA8();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D2E5D0B8(__src, &qword_1EC7396A8, &qword_1D2EF5990);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D2EE5018();
  }

  sub_1D2EC91B8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D2EC9504(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1D2EC8764(sub_1D2EC95A4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D2EE3DD8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D2EC9380(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D2EE4B08();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D2EE4B38();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D2EE5018();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D2EC9380(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D2EE4B18();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D2EE3DE8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D2EE3DE8();
    sub_1D2EC9660(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D2EC9660(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D2EC960C(*&__src[0], *(&__src[0] + 1));

  sub_1D2E7EA2C(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_1D2EC7F58()
{
  result = qword_1EC739688;
  if (!qword_1EC739688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739680, &unk_1D2EF5970);
    sub_1D2EC7FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739688);
  }

  return result;
}

unint64_t sub_1D2EC7FDC()
{
  result = qword_1EC739690;
  if (!qword_1EC739690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739690);
  }

  return result;
}

char *sub_1D2EC8030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739698, &qword_1D2EF5980);
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

char *sub_1D2EC813C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396C8, &qword_1D2EF59B8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D2EC823C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396C0, &qword_1D2EF59B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D2EC8348(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396D8, &unk_1D2EF59C8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) - 8);
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

void *sub_1D2EC8588(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1D2EC8764(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1D2E7EA2C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D2E7EA2C(v7, v6);
    *v4 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D2EE3C58() && __OFSUB__(v7, sub_1D2EE3C88()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1D2EE3C98();
      swift_allocObject();
      v14 = sub_1D2EE3C38();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1D2EC8B08(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1D2E7EA2C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    sub_1D2EE3D98();
    result = sub_1D2EC8B08(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

char *sub_1D2EC8B08(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D2EE3C58();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D2EE3C88();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D2EE3C78();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1D2EC8BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D2E4FC44(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D2EDB328(v18, a5 & 1);
      v13 = sub_1D2E4FC44(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D2EE52B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D2EDC1AC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1D2EC8D44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D2E4FC44(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D2EDB5E8(v18, a5 & 1);
      result = sub_1D2E4FC44(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D2EE52B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D2EDC324();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = v23[7] + 16 * result;
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_1D2EC8EC8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D2E4FDA8(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1D2EDC49C();
    result = v17;
    goto LABEL_8;
  }

  sub_1D2EDB8A8(v14, a2 & 1);
  result = sub_1D2E4FDA8(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D2EE52B8();
  __break(1u);
  return result;
}

uint64_t sub_1D2EC8FF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D2E4FC44(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D2EDBF08(v16, a4 & 1);
      v11 = sub_1D2E4FC44(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D2EE52B8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1D2EDC868();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1D2EC9168(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t *sub_1D2EC91B8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1D2EC944C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D2EE3C98();
      swift_allocObject();
      v8 = sub_1D2EE3C48();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1D2EE3DC8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

_BYTE *sub_1D2EC9280@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D2EC944C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D2EC9674(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D2EC96F0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D2EC9314(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2EC9380(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D2EE4B58();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D38AE5B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D2EC93FC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1D2EE4FC8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2EC944C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1D2EC9504(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D2EE3C98();
      swift_allocObject();
      sub_1D2EE3C68();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D2EE3DC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D2EC95A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D2EC9314(sub_1D2EC9774, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D2EC960C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D2EC9660(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2E7EA2C(result, a2);
  }

  return result;
}

uint64_t sub_1D2EC9674(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2EE3C98();
  swift_allocObject();
  result = sub_1D2EE3C48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2EE3DC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D2EC96F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2EE3C98();
  swift_allocObject();
  result = sub_1D2EE3C48();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D2EC9794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396B0, &qword_1D2EF59A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16CallIntelligence13ModelProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D2EC981C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D2EC9878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t PlannerManager.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396E0, &unk_1D2EF5A60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_1D2EE3EB8();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2EE4478();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v43 = a1;
  *(a1 + 8) = 1;
  sub_1D2EE4468();
  sub_1D2EE42D8();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v44;
  v19 = sub_1D2EE42A8();
  if (v18)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v39 = v10;
  v40 = v7;
  v44 = v11;
  v41 = v8;
  *v43 = v19;
  v21 = qword_1EC737C68;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D2EE4618();
  __swift_project_value_buffer(v22, qword_1EC7466D0);
  v23 = sub_1D2EE45F8();
  v24 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D2E46000, v23, v24, "Subscribing for updates", v25, 2u);
    MEMORY[0x1D38AF660](v25, -1, -1);
  }

  v26 = v4;
  v43[2] = sub_1D2EE42C8();
  v27 = sub_1D2EE45F8();
  v28 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D2E46000, v27, v28, "Starting session", v29, 2u);
    MEMORY[0x1D38AF660](v29, -1, -1);
  }

  v30 = v39;
  sub_1D2EE3EA8();
  sub_1D2EE3E68();
  v31 = sub_1D2EE4408();
  (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  v32 = v40;
  sub_1D2EE4298();
  v33 = v44;

  sub_1D2E5D0B8(v26, &qword_1EC7396E0, &unk_1D2EF5A60);
  v34 = v42;
  v35 = v33;
  v36 = v41;
  (*(v42 + 8))(v30, v41);
  (*(v12 + 8))(v17, v35);
  (*(v34 + 56))(v32, 0, 1, v36);
  v37 = type metadata accessor for PlannerManager(0);
  return sub_1D2ECCAF4(v32, v43 + *(v37 + 28));
}

uint64_t PlannerManager.sendMessage(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2EE43F8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1D2EE43B8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = sub_1D2EE42F8();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_1D2EE4398();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECA0A8, 0, 0);
}

uint64_t sub_1D2ECA0A8()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Invoking Planner via IntelligenceFlow", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[19];
  v6 = v0[4];

  v7 = *(type metadata accessor for PlannerManager(0) + 28);
  sub_1D2ECCB64(v6 + v7, v5);
  v8 = sub_1D2EE3EB8();
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v5, 1, v8);
  sub_1D2E5D0B8(v5, &qword_1EC738A70, &qword_1D2EF20F0);
  if (v10 != 1 && (v11 = v0[4], *v11) && v11[2])
  {
    v48 = v9;
    v49 = v7;
    v50 = v6;
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Constructing client request message", v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];

    sub_1D2EE42E8();
    (*(v15 + 104))(v16, *MEMORY[0x1E69A8E30], v17);
    sub_1D2EE4388();
    v18 = sub_1D2EE45F8();
    v19 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2E46000, v18, v19, "Constructing client message", v20, 2u);
      MEMORY[0x1D38AF660](v20, -1, -1);
    }

    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];
    v24 = v0[11];
    v25 = v0[8];
    v26 = v0[9];

    (*(v21 + 16))(v24, v22, v23);
    (*(v26 + 104))(v24, *MEMORY[0x1E69A8EB8], v25);
    v27 = sub_1D2EE45F8();
    v28 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D2E46000, v27, v28, "Constructing planner query", v29, 2u);
      MEMORY[0x1D38AF660](v29, -1, -1);
    }

    v30 = v0[18];

    sub_1D2ECCB64(v50 + v49, v30);
    result = v48(v30, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v0[9] + 16))(v0[10], v0[11], v0[8]);
    sub_1D2EE43E8();
    v32 = sub_1D2EE45F8();
    v33 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D2E46000, v32, v33, "Sending message to Planner", v34, 2u);
      MEMORY[0x1D38AF660](v34, -1, -1);
    }

    sub_1D2EE42B8();
    v40 = v0[16];
    v39 = v0[17];
    v41 = v0[15];
    v42 = v0[11];
    v43 = v0[8];
    v44 = v0[9];
    v46 = v0[6];
    v45 = v0[7];
    v47 = v0[5];

    (*(v46 + 8))(v45, v47);
    (*(v44 + 8))(v42, v43);
    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v35 = sub_1D2EE45F8();
    v36 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D2E46000, v35, v36, "Invalid planner state. Returning.", v37, 2u);
      MEMORY[0x1D38AF660](v37, -1, -1);
    }
  }

  v38 = v0[1];

  return v38();
}

void sub_1D2ECA73C()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D2EE3EB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v11 = sub_1D2EE4618();
  __swift_project_value_buffer(v11, qword_1EC7466D0);
  v12 = sub_1D2EE45F8();
  v13 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v6;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1D2E46000, v12, v13, "Attempting to end smart actions planner session", v14, 2u);
    v16 = v15;
    v2 = v1;
    v6 = v22;
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  if (*v3)
  {
    v17 = type metadata accessor for PlannerManager(0);
    sub_1D2ECCB64(v3 + *(v17 + 28), v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D2E5D0B8(v6, &qword_1EC738A70, &qword_1D2EF20F0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);

      sub_1D2EE4288();
      if (v2)
      {
        (*(v8 + 8))(v10, v7);
      }

      else
      {
        v18 = sub_1D2EE45F8();
        v19 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1D2E46000, v18, v19, "Smart actions planner session ended", v20, 2u);
          MEMORY[0x1D38AF660](v20, -1, -1);
        }

        (*(v8 + 8))(v10, v7);
      }
    }
  }
}

uint64_t PlannerManager.processResponses(onMessageEvent:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D2EE43A8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1D2EE4318();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_1D2EE4458();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_1D2EE4338();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = sub_1D2EE4358();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = sub_1D2EE4378();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_1D2EE43B8();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v11 = sub_1D2EE4428();
  v3[34] = v11;
  v3[35] = *(v11 - 8);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396E8, qword_1D2EF5A80);
  v3[37] = swift_task_alloc();
  v12 = sub_1D2EE43D8();
  v3[38] = v12;
  v3[39] = *(v12 - 8);
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECAEC4, 0, 0);
}

uint64_t sub_1D2ECAEC4()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 328) = v1;
  if (v1)
  {

    sub_1D2EE43C8();
    *(v0 + 352) = *MEMORY[0x1E69A8EB8];
    *(v0 + 356) = *MEMORY[0x1E69A8EC0];
    *(v0 + 360) = *MEMORY[0x1E69A8EB0];
    *(v0 + 364) = *MEMORY[0x1E69A8E88];
    *(v0 + 368) = *MEMORY[0x1E69A8E28];
    *(v0 + 372) = *MEMORY[0x1E69A8EA0];
    *(v0 + 376) = *MEMORY[0x1E69A8E98];
    *(v0 + 380) = *MEMORY[0x1E69A8E90];
    *(v0 + 384) = *MEMORY[0x1E69A8EA8];
    *(v0 + 388) = *MEMORY[0x1E69A8E38];
    v2 = sub_1D2ECCBD4();
    v3 = swift_task_alloc();
    *(v0 + 336) = v3;
    *v3 = v0;
    v3[1] = sub_1D2ECB208;
    v4 = *(v0 + 296);
    v5 = *(v0 + 304);

    return MEMORY[0x1EEE6D8C8](v4, v5, v2);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EC7466D0);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Subscription handle is nil. Can't initiate async sequence processing.", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D2ECB208()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1D2ECC8AC;
  }

  else
  {
    v2 = sub_1D2ECB31C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2ECB31C()
{
  v241 = v0;
  v1 = v0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v1 + 272);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    (*(*(v1 + 312) + 8))(*(v1 + 320), *(v1 + 304));

LABEL_3:

    v5 = *(v1 + 8);
LABEL_4:

    return v5();
  }

  v7 = *(v1 + 352);
  v8 = *(v1 + 264);
  v9 = *(v1 + 232);
  v10 = *(v1 + 240);
  (*(v3 + 32))(*(v1 + 288), v2, v4);
  sub_1D2EE4418();
  v11 = (*(v10 + 88))(v8, v9);
  if (v11 != v7)
  {
    if (v11 == *(v1 + 356))
    {
      v23 = *(v1 + 264);
      v25 = *(v1 + 56);
      v24 = *(v1 + 64);
      v26 = *(v1 + 48);
      (*(*(v1 + 240) + 96))(v23, *(v1 + 232));
      (*(v25 + 32))(v24, v23, v26);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v27 = sub_1D2EE4618();
      __swift_project_value_buffer(v27, qword_1EC7466D0);
      v28 = sub_1D2EE45F8();
      v29 = sub_1D2EE4DA8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1D2E46000, v28, v29, "Planner session terminated message received", v30, 2u);
        MEMORY[0x1D38AF660](v30, -1, -1);
      }

      v31 = *(v1 + 356);
      v32 = *(v1 + 240);
      v33 = *(v1 + 248);
      v34 = *(v1 + 232);
      v35 = *(v1 + 56);
      v36 = *(v1 + 64);
      v37 = *(v1 + 48);
      v228 = *(v1 + 24);
      v234 = *(v1 + 344);

      (*(v35 + 16))(v33, v36, v37);
      (*(v32 + 104))(v33, v31, v34);
      v38 = v234;
      v228(v33);
      v39 = *(v1 + 312);
      v229 = *(v1 + 304);
      v235 = *(v1 + 320);
      v40 = *(v1 + 280);
      v218 = *(v1 + 272);
      v223 = *(v1 + 288);
      v41 = *(v1 + 240);
      v42 = *(v1 + 248);
      v43 = *(v1 + 232);
      v44 = *(v1 + 56);
      v45 = *(v1 + 64);
      v46 = *(v1 + 48);

      (*(v41 + 8))(v42, v43);
      (*(v44 + 8))(v45, v46);
      (*(v40 + 8))(v223, v218);
      (*(v39 + 8))(v235, v229);
      if (!v38)
      {
        goto LABEL_3;
      }

LABEL_20:

      v5 = *(v1 + 8);
      goto LABEL_4;
    }

    if (v11 == *(v1 + 360))
    {
      v47 = *(v1 + 264);
      v48 = *(v1 + 224);
      v49 = *(v1 + 200);
      v50 = *(v1 + 208);
      (*(*(v1 + 240) + 96))(v47, *(v1 + 232));
      (*(v50 + 32))(v48, v47, v49);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v51 = *(v1 + 216);
      v52 = *(v1 + 224);
      v53 = *(v1 + 200);
      v54 = *(v1 + 208);
      v55 = sub_1D2EE4618();
      __swift_project_value_buffer(v55, qword_1EC7466D0);
      (*(v54 + 16))(v51, v52, v53);
      v56 = sub_1D2EE45F8();
      v57 = sub_1D2EE4DA8();
      v58 = os_log_type_enabled(v56, v57);
      v60 = *(v1 + 280);
      v59 = *(v1 + 288);
      v61 = *(v1 + 272);
      v62 = *(v1 + 216);
      v236 = *(v1 + 224);
      v64 = *(v1 + 200);
      v63 = *(v1 + 208);
      if (v58)
      {
        v224 = *(v1 + 272);
        v65 = swift_slowAlloc();
        v230 = v1;
        v66 = swift_slowAlloc();
        v240[0] = v66;
        *v65 = 136315138;
        v67 = sub_1D2EE4368();
        v219 = v59;
        v69 = v68;
        v70 = *(v63 + 8);
        v70(v62, v64);
        v71 = sub_1D2E685B0(v67, v69, v240);

        *(v65 + 4) = v71;
        _os_log_impl(&dword_1D2E46000, v56, v57, "Planner returned raw plan: %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v72 = v66;
        v1 = v230;
        MEMORY[0x1D38AF660](v72, -1, -1);
        MEMORY[0x1D38AF660](v65, -1, -1);

        v70(v236, v64);
        (*(v60 + 8))(v219, v224);
      }

      else
      {

        v97 = *(v63 + 8);
        v97(v62, v64);
        v97(v236, v64);
        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_51;
    }

    if (v11 == *(v1 + 364))
    {
      v73 = *(v1 + 264);
      v74 = *(v1 + 96);
      v75 = *(v1 + 72);
      v76 = *(v1 + 80);
      (*(*(v1 + 240) + 96))(v73, *(v1 + 232));
      (*(v76 + 32))(v74, v73, v75);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v77 = *(v1 + 88);
      v78 = *(v1 + 96);
      v79 = *(v1 + 72);
      v80 = *(v1 + 80);
      v81 = sub_1D2EE4618();
      __swift_project_value_buffer(v81, qword_1EC7466D0);
      v237 = *(v80 + 16);
      v237(v77, v78, v79);
      v82 = sub_1D2EE45F8();
      v83 = sub_1D2EE4DA8();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v1;
      v88 = v1 + 80;
      v87 = *(v1 + 80);
      v86 = *(v88 + 8);
      v89 = v85;
      v90 = *(v85 + 72);
      if (v84)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v240[0] = v92;
        *v91 = 136315138;
        v93 = sub_1D2EE4308();
        v95 = v94;
        v231 = *(v87 + 8);
        v231(v86, v90);
        v96 = sub_1D2E685B0(v93, v95, v240);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_1D2E46000, v82, v83, "Action will execute tool: %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1D38AF660](v92, -1, -1);
        MEMORY[0x1D38AF660](v91, -1, -1);
      }

      else
      {

        v231 = *(v87 + 8);
        v231(v86, v90);
      }

      v1 = v89;
      v103 = *(v89 + 344);
      v104 = *(v89 + 364);
      v105 = *(v89 + 256);
      v106 = *(v89 + 232);
      v107 = *(v89 + 240);
      v108 = *(v89 + 24);
      v237(v105, *(v89 + 96), *(v89 + 72));
      (*(v107 + 104))(v105, v104, v106);
      v108(v105);
      if (v103)
      {
        v109 = *(v89 + 312);
        v220 = *(v89 + 304);
        v225 = *(v89 + 320);
        v215 = *(v89 + 288);
        v110 = *(v89 + 272);
        v111 = *(v89 + 280);
        v112 = *(v89 + 256);
        v114 = *(v89 + 232);
        v113 = *(v89 + 240);
        v115 = *(v89 + 72);
        v116 = *(v89 + 96);

        (*(v113 + 8))(v112, v114);
        v231(v116, v115);
        (*(v111 + 8))(v215, v110);
        v1 = v89;
        (*(v109 + 8))(v225, v220);
        goto LABEL_20;
      }

      v129 = *(v89 + 280);
      v128 = *(v1 + 288);
      v130 = *(v1 + 272);
      v131 = *(v1 + 96);
      v132 = *(v1 + 72);
      (*(*(v1 + 240) + 8))(*(v1 + 256), *(v1 + 232));
      v231(v131, v132);
LABEL_50:
      (*(v129 + 8))(v128, v130);
      goto LABEL_51;
    }

    if (v11 == *(v1 + 368))
    {
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v98 = sub_1D2EE4618();
      __swift_project_value_buffer(v98, qword_1EC7466D0);
      v99 = sub_1D2EE45F8();
      v100 = sub_1D2EE4DA8();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_46;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Client action needed. Unhandled";
    }

    else if (v11 == *(v1 + 372))
    {
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v117 = sub_1D2EE4618();
      __swift_project_value_buffer(v117, qword_1EC7466D0);
      v99 = sub_1D2EE45F8();
      v100 = sub_1D2EE4DD8();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_46;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Safety mode exception received which indicates planner processing is complete";
    }

    else
    {
      if (v11 == *(v1 + 376))
      {
        v137 = *(v1 + 264);
        v138 = *(v1 + 192);
        v139 = *(v1 + 168);
        v140 = *(v1 + 176);
        (*(*(v1 + 240) + 96))(v137, *(v1 + 232));
        (*(v140 + 32))(v138, v137, v139);
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v141 = sub_1D2EE4618();
        __swift_project_value_buffer(v141, qword_1EC7466D0);
        v142 = sub_1D2EE45F8();
        v143 = sub_1D2EE4DA8();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_1D2E46000, v142, v143, "Planner sent action summary update", v144, 2u);
          MEMORY[0x1D38AF660](v144, -1, -1);
        }

        v146 = *(v1 + 184);
        v145 = *(v1 + 192);
        v148 = *(v1 + 168);
        v147 = *(v1 + 176);

        (*(v147 + 16))(v146, v145, v148);
        v149 = sub_1D2EE45F8();
        v150 = sub_1D2EE4DA8();
        v151 = os_log_type_enabled(v149, v150);
        v153 = *(v1 + 280);
        v152 = *(v1 + 288);
        v154 = *(v1 + 272);
        v155 = *(v1 + 184);
        v156 = *(v1 + 192);
        v158 = *(v1 + 168);
        v157 = *(v1 + 176);
        if (v151)
        {
          v238 = *(v1 + 288);
          v226 = *(v1 + 192);
          v160 = *(v1 + 152);
          v159 = *(v1 + 160);
          v213 = *(v1 + 144);
          v212 = *(v1 + 168);
          v161 = swift_slowAlloc();
          v232 = v1;
          v162 = swift_slowAlloc();
          v240[0] = v162;
          *v161 = 136315138;
          v216 = v150;
          sub_1D2EE4348();
          v163 = sub_1D2EE4328();
          v221 = v154;
          v165 = v164;
          (*(v160 + 8))(v159, v213);
          v166 = *(v157 + 8);
          v166(v155, v212);
          v167 = sub_1D2E685B0(v163, v165, v240);

          *(v161 + 4) = v167;
          _os_log_impl(&dword_1D2E46000, v149, v216, "Summary update details: %s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v162);
          v168 = v162;
          v1 = v232;
          MEMORY[0x1D38AF660](v168, -1, -1);
          MEMORY[0x1D38AF660](v161, -1, -1);

          v166(v226, v212);
          (*(v153 + 8))(v238, v221);
        }

        else
        {

          v170 = *(v157 + 8);
          v170(v155, v158);
          v170(v156, v158);
          (*(v153 + 8))(v152, v154);
        }

        goto LABEL_51;
      }

      if (v11 == *(v1 + 380))
      {
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v169 = sub_1D2EE4618();
        __swift_project_value_buffer(v169, qword_1EC7466D0);
        v13 = sub_1D2EE45F8();
        v14 = sub_1D2EE4DA8();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_13;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Planner prompt data message received";
        goto LABEL_12;
      }

      if (v11 == *(v1 + 384))
      {
        v171 = *(v1 + 264);
        v172 = *(v1 + 136);
        v173 = *(v1 + 104);
        v174 = *(v1 + 112);
        (*(*(v1 + 240) + 96))(v171, *(v1 + 232));
        (*(v174 + 32))(v172, v171, v173);
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v175 = sub_1D2EE4618();
        __swift_project_value_buffer(v175, qword_1EC7466D0);
        v176 = sub_1D2EE45F8();
        v177 = sub_1D2EE4DA8();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_1D2E46000, v176, v177, "Planner sent action resolution update", v178, 2u);
          MEMORY[0x1D38AF660](v178, -1, -1);
        }

        v180 = *(v1 + 128);
        v179 = *(v1 + 136);
        v181 = *(v1 + 112);
        v182 = *(v1 + 120);
        v183 = *(v1 + 104);

        v184 = *(v181 + 16);
        v184(v180, v179, v183);
        v184(v182, v179, v183);
        v185 = sub_1D2EE45F8();
        v186 = sub_1D2EE4DA8();
        v187 = os_log_type_enabled(v185, v186);
        v189 = *(v1 + 280);
        v188 = *(v1 + 288);
        v190 = *(v1 + 272);
        v191 = *(v1 + 128);
        v192 = *(v1 + 136);
        v193 = v1;
        v196 = v1 + 112;
        v195 = *(v1 + 112);
        v194 = *(v196 + 8);
        v233 = v193;
        v239 = v188;
        v197 = *(v193 + 104);
        if (v187)
        {
          v227 = v192;
          v198 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          v240[0] = v217;
          *v198 = 136315394;
          v214 = v186;
          v199 = sub_1D2EE4328();
          v222 = v190;
          v201 = v200;
          v202 = *(v195 + 8);
          v202(v191, v197);
          v203 = sub_1D2E685B0(v199, v201, v240);

          *(v198 + 4) = v203;
          *(v198 + 12) = 2080;
          MEMORY[0x1D38ADEC0](v204);
          sub_1D2EE4628();
          v205 = sub_1D2EE49C8();
          v207 = v206;

          v202(v194, v197);
          v208 = sub_1D2E685B0(v205, v207, v240);

          *(v198 + 14) = v208;
          _os_log_impl(&dword_1D2E46000, v185, v214, "Action resolved tool: %s, Parameters:%s", v198, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38AF660](v217, -1, -1);
          MEMORY[0x1D38AF660](v198, -1, -1);

          v202(v227, v197);
          (*(v189 + 8))(v239, v222);
        }

        else
        {

          v210 = *(v195 + 8);
          v210(v194, v197);
          v210(v191, v197);
          v210(v192, v197);
          (*(v189 + 8))(v239, v190);
        }

        v1 = v233;
        goto LABEL_51;
      }

      if (v11 == *(v1 + 388))
      {
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v209 = sub_1D2EE4618();
        __swift_project_value_buffer(v209, qword_1EC7466D0);
        v13 = sub_1D2EE45F8();
        v14 = sub_1D2EE4DD8();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_13;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Action was executed which is unexpected";
        goto LABEL_12;
      }

      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v211 = sub_1D2EE4618();
      __swift_project_value_buffer(v211, qword_1EC7466D0);
      v99 = sub_1D2EE45F8();
      v100 = sub_1D2EE4DA8();
      if (!os_log_type_enabled(v99, v100))
      {
        goto LABEL_46;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = "Unhandled message type. Returning";
    }

    _os_log_impl(&dword_1D2E46000, v99, v100, v102, v101, 2u);
    MEMORY[0x1D38AF660](v101, -1, -1);
LABEL_46:
    v118 = *(v1 + 344);

    sub_1D2ECA73C();
    if (v118)
    {
      v119 = *(v1 + 320);
      v121 = *(v1 + 304);
      v120 = *(v1 + 312);
      v123 = *(v1 + 280);
      v122 = *(v1 + 288);
      v125 = *(v1 + 264);
      v124 = *(v1 + 272);
      v126 = *(v1 + 232);
      v127 = *(v1 + 240);

      (*(v123 + 8))(v122, v124);
      (*(v120 + 8))(v119, v121);
      (*(v127 + 8))(v125, v126);
      goto LABEL_20;
    }

    v128 = *(v1 + 264);
    v130 = *(v1 + 232);
    v129 = *(v1 + 240);
    (*(*(v1 + 280) + 8))(*(v1 + 288), *(v1 + 272));
    goto LABEL_50;
  }

  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EC7466D0);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DA8();
  if (!os_log_type_enabled(v13, v14))
  {
    goto LABEL_13;
  }

  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = "Request sent to Planner";
LABEL_12:
  _os_log_impl(&dword_1D2E46000, v13, v14, v16, v15, 2u);
  MEMORY[0x1D38AF660](v15, -1, -1);
LABEL_13:
  v18 = *(v1 + 280);
  v17 = *(v1 + 288);
  v20 = *(v1 + 264);
  v19 = *(v1 + 272);
  v21 = *(v1 + 232);
  v22 = *(v1 + 240);

  (*(v18 + 8))(v17, v19);
  (*(v22 + 8))(v20, v21);
LABEL_51:
  v133 = sub_1D2ECCBD4();
  v134 = swift_task_alloc();
  *(v1 + 336) = v134;
  *v134 = v1;
  v134[1] = sub_1D2ECB208;
  v135 = *(v1 + 296);
  v136 = *(v1 + 304);

  return MEMORY[0x1EEE6D8C8](v135, v136, v133);
}

uint64_t sub_1D2ECC8AC()
{
  *(v0 + 16) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECC940, 0, 0);
}

uint64_t sub_1D2ECC940()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[39];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for PlannerManager(uint64_t a1)
{
  result = qword_1EC7396F8;
  if (!qword_1EC7396F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2ECCAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2ECCB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2ECCBD4()
{
  result = qword_1EC7396F0;
  if (!qword_1EC7396F0)
  {
    sub_1D2EE43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7396F0);
  }

  return result;
}

void sub_1D2ECCC54(uint64_t a1)
{
  sub_1D2ECCD4C(319, &qword_1EC739708, MEMORY[0x1E69A8E10]);
  if (v1 <= 0x3F)
  {
    sub_1D2ECCD4C(319, &qword_1EC739710, MEMORY[0x1E69A8EF8]);
    if (v2 <= 0x3F)
    {
      sub_1D2ECCD4C(319, &qword_1EC739718, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2ECCD4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2EE4E58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2ECCDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7D770;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for SmartActionsServer(uint64_t a1)
{
  result = qword_1EDECFAF8;
  if (!qword_1EDECFAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2ECCF3C(uint64_t a1)
{
  result = type metadata accessor for ContainerProvider(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D2ECD010(319, qword_1EDECFB98, &protocol descriptor for VoicemailSource);
    if (v3 <= 0x3F)
    {
      result = sub_1D2ECD010(319, qword_1EDECF988, &protocol descriptor for TransactionManaging);
      if (v4 <= 0x3F)
      {
        result = sub_1D2ECD06C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D2ECD010(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D2ECD06C()
{
  result = qword_1EDECF798;
  if (!qword_1EDECF798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECF798);
  }

  return result;
}

uint64_t sub_1D2ECD0B8()
{
  v1[3] = v0;
  v2 = type metadata accessor for SmartActionsServer(0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECD1B8, 0, 0);
}

uint64_t sub_1D2ECD1B8()
{
  v29 = v0;
  if ([*(v0[3] + *(v0[4] + 28)) smartVoicemailActionsEnabled])
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    __swift_project_value_buffer(v1, qword_1EC7466D0);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D2E46000, v2, v3, "Loading smart actions database", v4, 2u);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }

    v9 = sub_1D2EBE7FC();

    v10 = sub_1D2EE45F8();
    v11 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      if (v9)
      {
        v0[2] = v9;
        sub_1D2EE4828();

        v15 = sub_1D2EE4AA8();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_1D2E685B0(v15, v17, &v28);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D2E46000, v10, v11, "Finished loading container %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38AF660](v14, -1, -1);
      MEMORY[0x1D38AF660](v13, -1, -1);
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[5];
    v22 = v0[3];
    v23 = sub_1D2EE4CB8();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    sub_1D2ED4AFC(v22, v20, type metadata accessor for SmartActionsServer);
    v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_1D2ED4B64(v20, v25 + v24, type metadata accessor for SmartActionsServer);
    sub_1D2E8CB18(0, 0, v19, &unk_1D2EF5B60, v25);

    sub_1D2E5D0B8(v19, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EC7466D0);
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Skipping setup as feature flag is disabled", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D2ECD5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PersistenceConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D2E5D0B8(v7, &qword_1EC739490, qword_1D2EF4B90);
  }

  else
  {
    sub_1D2ED4B64(v7, v11, type metadata accessor for PersistenceConfiguration);
    v12 = type metadata accessor for ContainerProvider(0);
    v13 = *(v3 + *(v12 + 20));
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = v3;
    *(&v16 - 1) = v11;
    os_unfair_lock_lock((v13 + 24));
    sub_1D2ED4EA8((v13 + 16), &v17);
    os_unfair_lock_unlock((v13 + 24));
    if (v2)
    {
      return sub_1D2ED4A38(v11, type metadata accessor for PersistenceConfiguration);
    }

    sub_1D2ED4A38(v11, type metadata accessor for PersistenceConfiguration);
  }

  v15 = type metadata accessor for SmartAction(0);
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_1D2ECD85C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PersistenceConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D2E5D0B8(v5, &qword_1EC739490, qword_1D2EF4B90);
  }

  else
  {
    sub_1D2ED4B64(v5, v9, type metadata accessor for PersistenceConfiguration);
    v10 = type metadata accessor for ContainerProvider(0);
    v11 = *(v2 + *(v10 + 20));
    MEMORY[0x1EEE9AC00](v10);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = v9;
    os_unfair_lock_lock((v11 + 24));
    sub_1D2ED4EA8((v11 + 16), &v14);
    os_unfair_lock_unlock((v11 + 24));
    if (!v1)
    {
    }

    sub_1D2ED4A38(v9, type metadata accessor for PersistenceConfiguration);
  }

  return 0;
}

uint64_t sub_1D2ECDA58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D2EE3EB8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for SmartActionQuery(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECDB44, 0, 0);
}

uint64_t sub_1D2ECDB44()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_1D2ED4AFC(v0[2], v1, type metadata accessor for SmartActionQuery);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EC7466D0);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v5, v6, "Invalid query all for fetching smart action data items", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];
    v10 = v0[5];
    (*(v10 + 32))(v8, v0[7], v9);
    sub_1D2ECD85C();
    (*(v10 + 8))(v8, v9);
  }

  v11 = v0[1];
  v12 = MEMORY[0x1E69E7CC0];

  return v11(v12);
}

uint64_t sub_1D2ECDD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  type metadata accessor for SmartActionQuery(0);
  v6[18] = swift_task_alloc();
  v6[19] = *(type metadata accessor for SmartAction(0) - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v7 = sub_1D2EE3EB8();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECDEC8, 0, 0);
}

uint64_t sub_1D2ECDEC8()
{
  v47 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2 || ((v3 = *(v0 + 128), (v3 & 0x2000000000000000) != 0) ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *(v0 + 120) & 0xFFFFFFFFFFFFLL), v4))
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EC7466D0);

    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D2E685B0(v9, v8, v46);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1D2E685B0(v11, v10, v46);
      _os_log_impl(&dword_1D2E46000, v6, v7, "Processing action for %s: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38AF660](v13, -1, -1);
      MEMORY[0x1D38AF660](v12, -1, -1);
    }

    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v16 = *(v0 + 144);
    (*(v15 + 16))(v16, *(v0 + 96), v14);
    (*(v15 + 56))(v16, 0, 1, v14);
    sub_1D2ECD85C();
    sub_1D2ED4A38(*(v0 + 144), type metadata accessor for SmartActionQuery);
    goto LABEL_26;
  }

  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 184);
  v20 = *(v0 + 96);
  v21 = sub_1D2EE4618();
  __swift_project_value_buffer(v21, qword_1EC7466D0);
  (*(v17 + 16))(v18, v20, v19);
  v22 = sub_1D2EE45F8();
  v23 = sub_1D2EE4DA8();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 192);
  v26 = *(v0 + 200);
  v27 = *(v0 + 184);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46[0] = v29;
    *v28 = 136315138;
    sub_1D2ED4E60(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = sub_1D2EE5258();
    v32 = v31;
    (*(v25 + 8))(v26, v27);
    v33 = sub_1D2E685B0(v30, v32, v46);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1D2E46000, v22, v23, "Processing action for recommendationId: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D38AF660](v29, -1, -1);
    MEMORY[0x1D38AF660](v28, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }

  sub_1D2ECD85C();
  v34 = MEMORY[0x1E69E7CC0];

  v35 = sub_1D2EE45F8();
  v36 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = *(v34 + 16);

    _os_log_impl(&dword_1D2E46000, v35, v36, "Processing action count: %ld", v37, 0xCu);
    MEMORY[0x1D38AF660](v37, -1, -1);
  }

  else
  {
  }

  if (!*(v34 + 16))
  {

LABEL_26:

    v45 = *(v0 + 8);

    return v45();
  }

  v38 = *(v0 + 168);
  v39 = *(v0 + 176);
  v40 = *(*(v0 + 152) + 80);
  sub_1D2ED4AFC(v34 + ((v40 + 32) & ~v40), v38, type metadata accessor for SmartAction);

  sub_1D2ED4B64(v38, v39, type metadata accessor for SmartAction);
  type metadata accessor for SmartActionsController();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 208) = swift_initStackObject();
  *(v0 + 56) = SmartActionsController.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  sub_1D2EE3EF8();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE3EE8();
  *(v0 + 64) = v41;
  v42 = swift_task_alloc();
  *(v0 + 216) = v42;
  *v42 = v0;
  v42[1] = sub_1D2ECE5F4;
  v43 = *(v0 + 176);

  return sub_1D2ED68CC(v43);
}

uint64_t sub_1D2ECE5F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    sub_1D2ED49E4(v4 + 16);
    v5 = sub_1D2ECE7E4;
  }

  else
  {

    sub_1D2ED49E4(v4 + 16);
    v5 = sub_1D2ECE730;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2ECE730()
{
  sub_1D2ED4A38(*(v0 + 176), type metadata accessor for SmartAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2ECE7E4()
{
  sub_1D2ED4A38(*(v0 + 176), type metadata accessor for SmartAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2ECE8C0()
{
  v1 = v0[2];
  v2 = type metadata accessor for SmartActionsServer(0);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 24));
  v4 = *v3;
  v5 = v3[1];
  v0[3] = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  os_unfair_lock_lock((v5 + 24));
  sub_1D2E82478((v5 + 16));
  v0[4] = 0;
  os_unfair_lock_unlock((v5 + 24));

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1D2ECE9F0;
  v8 = v0[2];

  return sub_1D2ECEB84(v8);
}

uint64_t sub_1D2ECE9F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2ECEAEC, 0, 0);
}

void sub_1D2ECEAEC()
{
  v1 = v0[3];
  v2 = v0[4];
  os_unfair_lock_lock((v1 + 24));
  sub_1D2EA38A8((v1 + 16));
  os_unfair_lock_unlock((v0[3] + 24));
  if (!v2)
  {
    v3 = v0[1];

    v3();
  }
}

uint64_t sub_1D2ECEBA4()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Syncing with FaceTimeMessageStore", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D2ECECF4;

  return sub_1D2ECF0B0();
}

uint64_t sub_1D2ECECF4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ECEE28, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2ECEE28()
{
  v22 = v0;
  v1 = v0[9];
  v2 = v1;
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[9];
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_1D2EE4E58();
    v9 = *(v8 - 8);
    v10 = swift_task_alloc();
    v11 = *(v7 - 8);
    (*(v11 + 16))(v10, v6, v7);
    (*(v11 + 56))(v10, 0, 1, v7);
    v12 = sub_1D2EE2754(v10, v7);
    v14 = v13;
    (*(v9 + 8))(v10, v8);

    v15 = sub_1D2E685B0(v12, v14, &v21);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Error syncing with FaceTimeMessageStore: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  else
  {
    v16 = v0[9];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D2ECF0D0()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Loading tracked/untracked voicemails", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = sub_1D2ED06C4();
  v0[8] = v5;
  if (v5)
  {
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1D2ECF494;

    return sub_1D2ED0F20();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D2ECF494(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1D2ECFB68;
  }

  else
  {
    v4 = sub_1D2ECF5A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2ECF5A8()
{
  v1 = v0[10];
  v2 = v0[8];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v10 = v0[10];

    sub_1D2ED1EA4(v2);
    v3 = v10;
  }

  else
  {

    v3 = sub_1D2ED20C0(v2, v1);
  }

  v0[12] = v3;
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v11 = v0[8];
    sub_1D2ED1EA4(v0[10]);

    v4 = v11;
  }

  else
  {
    v4 = sub_1D2ED20C0(v0[10], v0[8]);
  }

  v0[13] = v4;

  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v3 + 16);

    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v4 + 16);

    _os_log_impl(&dword_1D2E46000, v5, v6, "#newUUIDsToTrack=%ld, #uuidsToUntrack=%ld", v7, 0x16u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1D2ECF7B4;

  return sub_1D2ED19E8(v3);
}

uint64_t sub_1D2ECF7B4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D2ECFDE4;
  }

  else
  {

    v2 = sub_1D2ECF8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2ECF8D0()
{
  v21 = v0;
  v1 = v0[15];
  sub_1D2ED1C9C(v0[13]);

  if (v1)
  {
    v2 = v1;
    v3 = sub_1D2EE45F8();
    v4 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v5 = 136315138;
      swift_getErrorValue();
      v6 = v0[2];
      v7 = v0[3];
      v8 = sub_1D2EE4E58();
      v9 = *(v8 - 8);
      v10 = swift_task_alloc();
      v18 = v4;
      v11 = *(v7 - 8);
      (*(v11 + 16))(v10, v6, v7);
      (*(v11 + 56))(v10, 0, 1, v7);
      v12 = sub_1D2EE2754(v10, v7);
      v14 = v13;
      (*(v9 + 8))(v10, v8);

      v15 = sub_1D2E685B0(v12, v14, &v20);

      *(v5 + 4) = v15;
      _os_log_impl(&dword_1D2E46000, v3, v18, "Error syncing with FaceTimeMessageStore: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38AF660](v19, -1, -1);
      MEMORY[0x1D38AF660](v5, -1, -1);
    }

    swift_willThrow();
    v16 = v0[1];
  }

  else
  {
    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_1D2ECFB68()
{
  v21 = v0;

  v1 = v0[11];
  v2 = v1;
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_1D2EE4E58();
    v9 = *(v8 - 8);
    v10 = swift_task_alloc();
    v18 = v4;
    v11 = *(v7 - 8);
    (*(v11 + 16))(v10, v6, v7);
    (*(v11 + 56))(v10, 0, 1, v7);
    v12 = sub_1D2EE2754(v10, v7);
    v14 = v13;
    (*(v9 + 8))(v10, v8);

    v15 = sub_1D2E685B0(v12, v14, &v20);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v18, "Error syncing with FaceTimeMessageStore: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1D2ECFDE4()
{
  v21 = v0;

  v1 = v0[15];
  v2 = v1;
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_1D2EE4E58();
    v9 = *(v8 - 8);
    v10 = swift_task_alloc();
    v18 = v4;
    v11 = *(v7 - 8);
    (*(v11 + 16))(v10, v6, v7);
    (*(v11 + 56))(v10, 0, 1, v7);
    v12 = sub_1D2EE2754(v10, v7);
    v14 = v13;
    (*(v9 + 8))(v10, v8);

    v15 = sub_1D2E685B0(v12, v14, &v20);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v18, "Error syncing with FaceTimeMessageStore: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1D2ED0068(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2ED0088, 0, 0);
}

uint64_t sub_1D2ED0088()
{
  type metadata accessor for SmartActionsController();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_allocObject();
  *(v0 + 56) = SmartActionsController.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  sub_1D2EE3EF8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE3EE8();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1D2ED01FC;
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  return sub_1D2ED6038(v4, v3);
}

uint64_t sub_1D2ED01FC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  sub_1D2ED49E4(v4 + 16);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ED034C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}