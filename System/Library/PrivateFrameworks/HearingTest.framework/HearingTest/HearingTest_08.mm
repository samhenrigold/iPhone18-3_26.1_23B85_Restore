void sub_25212D06C(char a1)
{
  v42 = objc_opt_self();
  v2 = [v42 processInfo];
  v3 = [v2 processName];

  v4 = sub_252141B9C();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_252141B6C();
  v9 = [v7 initWithSuiteName_];

  if (!v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = sub_252141B6C();
  v11 = [v9 stringForKey_];

  if (!v11)
  {

    goto LABEL_14;
  }

  v12 = sub_252141B9C();
  v14 = v13;

  if (v4 == v12 && v6 == v14)
  {

    goto LABEL_8;
  }

  v15 = sub_25214247C();

  if ((v15 & 1) == 0)
  {
LABEL_14:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v30 = sub_25214198C();
    __swift_project_value_buffer(v30, qword_27F4CDE68);
    v43 = sub_25214196C();
    v31 = sub_252141FAC();
    if (os_log_type_enabled(v43, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25207E000, v43, v31, "This process should not update a different process state!", v32, 2u);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    v33 = v43;
    goto LABEL_26;
  }

LABEL_8:
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = sub_252141B6C();
  v18 = [v16 initWithSuiteName_];

  if ((a1 & 1) == 0)
  {
    if (v18)
    {
      sub_2520DBD08(0);

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v34 = sub_25214198C();
      __swift_project_value_buffer(v34, qword_27F4CDF10);
      oslog = sub_25214196C();
      v20 = sub_252141FBC();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136315138;
        v35 = [v42 processInfo];
        v36 = [v35 processName];

        v37 = sub_252141B9C();
        v39 = v38;

        v40 = sub_2520A5448(v37, v39, &v44);

        *(v21 + 4) = v40;
        v29 = "%s resumed";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (!v18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_2520DBD08(1);

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v19 = sub_25214198C();
  __swift_project_value_buffer(v19, qword_27F4CDF10);
  oslog = sub_25214196C();
  v20 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315138;
    v23 = [v42 processInfo];
    v24 = [v23 processName];

    v25 = sub_252141B9C();
    v27 = v26;

    v28 = sub_2520A5448(v25, v27, &v44);

    *(v21 + 4) = v28;
    v29 = "%s suspended";
LABEL_24:
    _os_log_impl(&dword_25207E000, oslog, v20, v29, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);

    return;
  }

LABEL_25:
  v33 = oslog;
LABEL_26:
}

void sub_25212D5F0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  sub_252141B9C();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_252141B6C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_252141B6C();
    v6 = [v4 stringForKey_];

    if (v6)
    {

      sub_252141B9C();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25212D740()
{
  sub_2520DC654();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_252141B6C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_252141B6C();
    v4 = [v2 stringForKey_];

    if (v4)
    {

      sub_252141B9C();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_25212D894(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_25212D8A8(result, a2);
  }

  return result;
}

id sub_25212D8A8(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

uint64_t sub_25212D8BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 180);
  v4 = *(v10 + 12);
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 60) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2520A2D9C(v8, &v7, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_25212D93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252118A4C(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_25212DA10()
{
  result = qword_27F4CE8C0;
  if (!qword_27F4CE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8C0);
  }

  return result;
}

unint64_t sub_25212DAAC()
{
  result = qword_27F4CE8D8;
  if (!qword_27F4CE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8D8);
  }

  return result;
}

unint64_t sub_25212DB48()
{
  result = qword_27F4CE8F0;
  if (!qword_27F4CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE8F0);
  }

  return result;
}

unint64_t sub_25212DBE4()
{
  result = qword_27F4CE908;
  if (!qword_27F4CE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE908);
  }

  return result;
}

unint64_t sub_25212DC3C()
{
  result = qword_27F4CE910;
  if (!qword_27F4CE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE910);
  }

  return result;
}

unint64_t sub_25212DC94()
{
  result = qword_27F4CE918;
  if (!qword_27F4CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE918);
  }

  return result;
}

unint64_t sub_25212DCEC()
{
  result = qword_27F4CE920;
  if (!qword_27F4CE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE920);
  }

  return result;
}

unint64_t sub_25212DD44()
{
  result = qword_27F4CE928;
  if (!qword_27F4CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE928);
  }

  return result;
}

unint64_t sub_25212DD9C()
{
  result = qword_27F4CE930;
  if (!qword_27F4CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE930);
  }

  return result;
}

__n128 sub_25212DDF0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_25212DE40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HTHearingTestFaultState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTHearingTestFaultState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTFaultStatusWithReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTFaultStatusWithReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTFaultCheckFailReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTFaultCheckFailReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25212E298(uint64_t a1, unsigned int a2)
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

uint64_t sub_25212E2E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HTFaultCheckStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for HTFaultCheckStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_25212E4F0(uint64_t *a1, int a2)
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

uint64_t sub_25212E538(uint64_t result, int a2, int a3)
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

void *__swift_memcpy14_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_25212E59C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
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

uint64_t sub_25212E5E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212E638(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25212E680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212E6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25212E724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25212E78C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212E7F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212E8A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212E904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212E9A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 10))
  {
    return (*a1 + 16381);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212EA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 8) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_25212EA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 8);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_252146AC0), xmmword_252146AD0);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 12) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_25212EB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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
      *result = 0;
      *(result + 12) = (-a2 >> 27) & 0x1E;
      *(result + 8) = (-4 * a2) & 0xFE00 | (2 * (-a2 & 0x7F)) | (((-a2 >> 14) & 0x7F) << 17) & 0x1FFFFFF | ((-a2 >> 21) << 25);
      return result;
    }

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212EB88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x3FFF;
  return result;
}

uint64_t sub_25212EBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 4) << 32)) & 0x101010101010101 | (a2 << 46);
  *result = v3 & 0x1010101;
  *(result + 4) = WORD2(v4);
  return result;
}

uint64_t sub_25212EBE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25212EC38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of HTRequirementStatusObserver.faultCheckStatusChanged(status:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t getEnumTagSinglePayload for HTRequirementCheckType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HTRequirementCheckType(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of HTRequirementStatusProviding.hearingTestFaultCheckStatusWithReasonFetchOnDemand()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2520DB0A4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HTRequirementStatusManager.isDiscoveryActivated(timeOutInSeconds:)(uint64_t a1)
{
  v6 = (*(*v1 + 1000) + **(*v1 + 1000));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DA234;

  return v6(a1);
}

uint64_t dispatch thunk of HTRequirementStatusManager.hearingTestFaultCheckStatusWithReasonFetchOnDemand()(uint64_t a1)
{
  v6 = (*(*v1 + 1120) + **(*v1 + 1120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0A4;

  return v6(a1);
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25212F6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_25212F704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25212F768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25212F7B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

unint64_t sub_25212F818()
{
  result = qword_27F4CE938;
  if (!qword_27F4CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE938);
  }

  return result;
}

uint64_t sub_25212F86C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25212F8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_25211F760(a1, v4, v5, v7, v6);
}

uint64_t sub_25212F96C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_43Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25212FA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_25211A194(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FB24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25212FB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_2521195F8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FC78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252117854(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_25212FD5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25212FD9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2520DA018;

  return sub_252114064(a1, v4, v5, v6);
}

uint64_t sub_25212FE58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2520DB0A4;

  return sub_252116564(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_67Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25212FF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DB0A4;

  return sub_252116D3C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_252130060()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252130098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2520DB0A4;

  return sub_25212B030(a1, v4);
}

uint64_t sub_252130150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2520DA018;

  return sub_25212B030(a1, v4);
}

uint64_t objectdestroy_46Tm()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_71Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 100, 7);
}

uint64_t sub_2521302D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_252130310()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 200);
  *(v1 + 200) = v2;
  v3 = v2;
}

id sub_252130354@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = v2;
  return v2;
}

uint64_t sub_252130384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_252130434(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_25212597C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2521304F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252130548()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2521305F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_25213060C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

uint64_t sub_252130838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2521308CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25214255C();
  sub_252141D8C();
  return sub_25214258C();
}

uint64_t sub_252130954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25214255C();
  sub_2521308C8(v7, *v3, *(a2 + 16), v5);
  return sub_25214258C();
}

void *sub_2521309DC(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v6 = *(a3 + 16);
  sub_252141D7C();
  sub_252141D1C();
  v7 = *v4;
  if (_swift_isClassOrObjCExistentialType())
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v7;
  }

  v13[0] = v10 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v11 = v13[0];
  v13[1] = v9;
  a1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  return sub_25211229C(v13, v11, v9);
}

uint64_t sub_252130BD4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_252141ECC();
}

void *sub_252130CB4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_252130CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25213167C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_252130D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_252130D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_252130BC4(*v3, *(a1 + 16), a3);
  *a2 = result;
  return result;
}

uint64_t (*sub_252130DAC(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_252130E80(v7, *a2, *v3, *(a3 + 16));
  return sub_252130E38;
}

void sub_252130E38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_252130E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_252141DCC();
  return sub_252130F54;
}

void sub_252130F54(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_252130FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void *sub_2521310A8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2521310C0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2521310E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_252131140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2521315AC(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_252131340(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
    sub_252112220();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252131444(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2521314C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521315B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_252141F7C();
  result = sub_252141B4C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25213167C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t HTHearingTestSession.__allocating_init(on:with:frequencies:initialLevel:minLevel:maxLevel:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  v14 = *a2;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v12 + 112) = 0;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_252141B6C();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    sub_2520DC160();
    v19 = v18;

    *(v12 + 136) = v19;
    if (qword_27F4CD7C0 != -1)
    {
      swift_once();
    }

    v20 = qword_27F4D3498;
    *(v12 + 144) = qword_27F4D3498;
    v21 = qword_27F4CD6F8;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    *(v12 + 152) = qword_27F4D3428;
    v32[0] = v13;
    v23 = type metadata accessor for HTAudiometry(0);
    objc_allocWithZone(v23);

    HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v32, a3, a4, a5, a6, 4.0);
    *(v12 + 16) = v24;
    *(v12 + 40) = v23;
    *(v12 + 48) = &off_28644FCD8;
    if (v14)
    {
      v25 = sub_252131CC4(v14);

      if (*(v25 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
        v26 = sub_25214235C();
      }

      else
      {
        v26 = MEMORY[0x277D84F98];
      }

      *v32 = v26;

      sub_25209BFC4(v27, 1, v32);

      v28 = *v32;
      swift_beginAccess();
      v29 = *(v12 + 40);
      v30 = *(v12 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v12 + 16, v29);
      (*(v30 + 64))(v28, v29, v30);
      swift_endAccess();
    }

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *HTHearingTestSession.init(on:with:frequencies:initialLevel:minLevel:maxLevel:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = *a1;
  v13 = *a2;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 0;
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_252141B6C();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    sub_2520DC160();
    v18 = v17;

    v7[17] = v18;
    if (qword_27F4CD7C0 != -1)
    {
      swift_once();
    }

    v19 = qword_27F4D3498;
    v7[18] = qword_27F4D3498;
    v20 = qword_27F4CD6F8;
    v21 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v7[19] = qword_27F4D3428;
    v31[0] = v12;
    v22 = type metadata accessor for HTAudiometry(0);
    objc_allocWithZone(v22);

    HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v31, a3, a4, a5, a6, 4.0);
    v7[2] = v23;
    v7[5] = v22;
    v7[6] = &off_28644FCD8;
    if (v13)
    {
      v24 = sub_252131CC4(v13);

      if (*(v24 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
        v25 = sub_25214235C();
      }

      else
      {
        v25 = MEMORY[0x277D84F98];
      }

      *v31 = v25;

      sub_25209BFC4(v26, 1, v31);

      v27 = *v31;
      swift_beginAccess();
      v28 = v7[5];
      v29 = v7[6];
      __swift_mutable_project_boxed_opaque_existential_1((v7 + 2), v28);
      (*(v29 + 64))(v27, v28, v29);
      swift_endAccess();
    }

    return v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_252131CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25209B214(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA20, &qword_2521480E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE148, &unk_2521480F0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25209B214((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *HTHearingTestSession.__allocating_init(on:with:statusManager:frequencies:initialLevel:minLevel:maxLevel:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  swift_allocObject();
  v14 = sub_252138AC0(a1, a2, a3, a4, a5, a6, a7);

  return v14;
}

void *HTHearingTestSession.init(on:with:statusManager:frequencies:initialLevel:minLevel:maxLevel:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = sub_252138AC0(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t sub_252131EC8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v4;
  *(v3 + 224) = *v4;
  v6 = sub_25214195C();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 256) = *a2;
  *(v3 + 272) = v7;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_252131FC4, 0, 0);
}

uint64_t sub_252131FC4()
{
  v104 = v0;
  if (!os_variant_has_internal_content() || (v1 = *(v0 + 216), swift_beginAccess(), !*(v1 + 136)))
  {
    if (*(v0 + 272) == 2)
    {
      goto LABEL_45;
    }

    v7 = *(v0 + 129);
    v97 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v99 = v7;
    v8 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 129);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = __swift_project_value_buffer(v14, qword_27F4CDF30);
    (*(v13 + 16))(v12, v16, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252143AD0;
    v18 = sub_252138FA0();
    v19 = 20302;
    if (v99)
    {
      v19 = 5457241;
    }

    v20 = 0xE200000000000000;
    if (v99)
    {
      v20 = 0xE300000000000000;
    }

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v18;
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    v21 = MEMORY[0x277D839F8];
    v22 = MEMORY[0x277D83A80];
    *(v17 + 96) = MEMORY[0x277D839F8];
    *(v17 + 104) = v22;
    *(v17 + 72) = v10;
    *(v17 + 136) = v21;
    *(v17 + 144) = v22;
    *(v17 + 112) = v11;
    LOBYTE(v87) = 2;
    sub_25214193C(v97, &dword_25207E000, v8, "HT tone playback", 16, 2, v12, "Response, heard: %s, freq %f, lvl %f", 0x24, v87, *&v17);

    (*(v13 + 8))(v12, v14);
    v23 = v9 & 1;
    v24 = *(v15 + 112);
    v25 = __OFADD__(v24, v9 & 1);
    v26 = v24 + (v9 & 1);
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v0 + 216);
      *(v15 + 112) = v26;
      swift_beginAccess();
      sub_2520A2D9C(v27 + 56, v0 + 16, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 40))
      {
        v28 = *(v0 + 280);
        v11 = *(v0 + 272);
        v29 = *(v0 + 256);
        v15 = *(v0 + 264);
        v30 = *(v0 + 216);
        sub_252139A10(v0 + 16, v0 + 56);
        sub_252138FF4(v0 + 16);
        v8 = *(v0 + 80);
        v31 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
        v100[0] = v29;
        v100[1] = v15;
        v101 = v11 & 1;
        v102 = v28;
        v103 = v23;
        v32 = (*(v31 + 8))(v100, v8, v31);
        v12 = v33;
        v34 = __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v42 = *(v30 + 120);
        if (__OFADD__(v42, v32 & 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v30 + 120) = v42 + (v32 & 1);
        v11 = *(v0 + 216);
        if (v32)
        {
          v43 = *(v11 + 96);
          v25 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v25)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
          v44 = 0;
        }
      }

      else
      {
        sub_252138FF4(v0 + 16);
        v45 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v46 = sub_252141B6C();
        v47 = [v45 initWithSuiteName_];

        if (!v47)
        {
LABEL_54:
          __break(1u);
          return MEMORY[0x2822007B8](v34, v35, v36, v37, v38, v39, v40, v41);
        }

        v48 = sub_252141B6C();
        v12 = [v47 integerForKey_];

        v8 = 0;
        v44 = 0;
        v11 = *(v0 + 216);
      }

      *(v11 + 96) = v44;
      if (v44 >= v12)
      {
        LODWORD(v15) = 1;
      }

      else
      {
        LODWORD(v15) = v8 ^ 1;
      }

      if (qword_27F4CD7B8 == -1)
      {
LABEL_28:
        v29 = 0x27F4CD000uLL;
        if (byte_27F4D3493 != 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v63 = sub_25214198C();
          __swift_project_value_buffer(v63, qword_27F4CDE68);
          v50 = sub_25214196C();
          v64 = sub_252141FBC();
          if (!os_log_type_enabled(v50, v64))
          {
            goto LABEL_37;
          }

          v94 = *(v0 + 280);
          v95 = *(v0 + 272);
          v90 = *(v0 + 256);
          v92 = *(v0 + 264);
          v52 = swift_slowAlloc();
          v98 = v11;
          v53 = swift_slowAlloc();
          v100[0] = v53;
          *v52 = 136447746;
          v65 = sub_2521425DC();
          v67 = sub_2520A5448(v65, v66, v100);

          *(v52 + 4) = v67;
          v29 = 0x27F4CD000uLL;
          *(v52 + 12) = 2048;
          *(v52 + 14) = v90;
          *(v52 + 22) = 2048;
          *(v52 + 24) = v92;
          *(v52 + 32) = 2048;
          *(v52 + 34) = v94;
          *(v52 + 42) = 2048;
          *(v52 + 44) = v95 & 1;
          *(v52 + 52) = 1024;
          *(v52 + 54) = v8;
          *(v52 + 58) = 2048;
          *(v52 + 60) = v12;
          v58 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v59 = v64;
          v60 = v50;
          v61 = v52;
          v62 = 68;
          goto LABEL_36;
        }

        if (qword_27F4CD708 == -1)
        {
LABEL_30:
          v49 = sub_25214198C();
          __swift_project_value_buffer(v49, qword_27F4CDE68);
          v50 = sub_25214196C();
          v51 = sub_252141FBC();
          if (!os_log_type_enabled(v50, v51))
          {
LABEL_37:

            if ((v15 | v99))
            {
              v69 = *(v0 + 216);
              *(v69 + 104) = 0;
              *(v11 + 96) = 0;
              swift_beginAccess();
              v70 = *(v69 + 40);
              v71 = *(v69 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v69 + 16, v70);
              (*(v71 + 80))(v99 & 1, v8, v70, v71);
              swift_endAccess();
              goto LABEL_45;
            }

            if (*(v29 + 1800) != -1)
            {
              swift_once();
            }

            v72 = sub_25214198C();
            __swift_project_value_buffer(v72, qword_27F4CDE68);
            v73 = sub_25214196C();
            v74 = sub_252141FBC();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v100[0] = v76;
              *v75 = 136446466;
              v77 = sub_2521425DC();
              v79 = sub_2520A5448(v77, v78, v100);

              *(v75 + 4) = v79;
              *(v75 + 12) = 1024;
              *(v75 + 14) = 1;
              _os_log_impl(&dword_25207E000, v73, v74, "[%{public}s] Repeat Tone Flag %{BOOL}d", v75, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v76);
              MEMORY[0x253099FD0](v76, -1, -1);
              MEMORY[0x253099FD0](v75, -1, -1);
            }

            v80 = *(v0 + 216);
            v81 = *(v80 + 128);
            v25 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (!v25)
            {
              *(v80 + 128) = v82;
LABEL_45:
              v84 = *(v0 + 216);
              v83 = *(v0 + 224);
              v85 = swift_task_alloc();
              *(v0 + 296) = v85;
              *(v85 + 16) = v84;
              *(v85 + 24) = v83;
              v86 = swift_task_alloc();
              *(v0 + 304) = v86;
              *v86 = v0;
              v86[1] = sub_252139D8C;
              v34 = *(v0 + 208);
              v41 = &type metadata for HTHearingTestSessionStatus;
              v39 = sub_252138F98;
              v38 = 0x800000025214BB30;
              v35 = 0;
              v36 = 0;
              v37 = 0xD000000000000017;
              v40 = v85;

              return MEMORY[0x2822007B8](v34, v35, v36, v37, v38, v39, v40, v41);
            }

            __break(1u);
            goto LABEL_53;
          }

          v91 = *(v0 + 280);
          v93 = *(v0 + 272);
          v88 = *(v0 + 256);
          v89 = *(v0 + 264);
          v96 = v12;
          v52 = swift_slowAlloc();
          v98 = v11;
          v53 = swift_slowAlloc();
          v100[0] = v53;
          *v52 = 136448002;
          v54 = sub_2521425DC();
          v56 = v29;
          v57 = sub_2520A5448(v54, v55, v100);

          *(v52 + 4) = v57;
          v29 = v56;
          *(v52 + 12) = 2048;
          *(v52 + 14) = v88;
          *(v52 + 22) = 2048;
          *(v52 + 24) = v89;
          *(v52 + 32) = 2048;
          *(v52 + 34) = v91;
          *(v52 + 42) = 2048;
          *(v52 + 44) = v93 & 1;
          *(v52 + 52) = 1024;
          *(v52 + 54) = v23;
          *(v52 + 58) = 1024;
          *(v52 + 60) = v8;
          *(v52 + 64) = 2048;
          *(v52 + 66) = v96;
          v58 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v59 = v51;
          v60 = v50;
          v61 = v52;
          v62 = 74;
LABEL_36:
          _os_log_impl(&dword_25207E000, v60, v59, v58, v61, v62);
          __swift_destroy_boxed_opaque_existential_0(v53);
          v68 = v53;
          v11 = v98;
          MEMORY[0x253099FD0](v68, -1, -1);
          MEMORY[0x253099FD0](v52, -1, -1);
          goto LABEL_37;
        }

LABEL_51:
        swift_once();
        goto LABEL_30;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  v2 = *(v0 + 129);
  v3 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v3;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_252139D94;
  v5 = *(v0 + 208);

  return sub_252136D48(v5, v0 + 96);
}

uint64_t sub_2521329F0(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - v8;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v37);
  sub_252139A10((a2 + 2), v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v9 = off_28644FCE0;
  type metadata accessor for HTAudiometry(0);
  v10 = v9();
  __swift_destroy_boxed_opaque_existential_0(v36);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v11 = sub_25214198C();
  __swift_project_value_buffer(v11, qword_27F4CDE68);
  v12 = sub_25214196C();
  v13 = sub_252141FBC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v5;
    v16 = a3;
    v17 = v15;
    v36[0] = v15;
    *v14 = 136446466;
    v18 = sub_2521425DC();
    v20 = sub_2520A5448(v18, v19, v36);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] HT session progress %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v21 = v17;
    a3 = v16;
    v5 = v33;
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  v22 = v35;
  (*(v6 + 16))(v35, v34, v5);
  v23 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v25 = v37[3];
  *(v24 + 48) = v37[2];
  *(v24 + 64) = v25;
  v26 = v38;
  v27 = v37[1];
  *(v24 + 16) = v37[0];
  *(v24 + 32) = v27;
  *(v24 + 80) = v26;
  *(v24 + 88) = a2;
  (*(v6 + 32))(v24 + v23, v22, v5);
  *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  swift_beginAccess();
  v28 = a2[5];
  v29 = a2[6];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 2), v28);
  v30 = *(v29 + 96);

  v30(sub_252139C6C, v24, v28, v29);
  swift_endAccess();
}

uint64_t sub_252132D80(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[2];
  v150 = a2[3];
  v7 = *a2;
  v148 = a2[1];
  v149 = v6;
  v147 = v7;
  v8 = a1[11];
  v9 = a1[13];
  v164 = a1[12];
  v165[0] = v9;
  *(v165 + 9) = *(a1 + 217);
  v10 = a1[7];
  v11 = a1[9];
  v160 = a1[8];
  v161 = v11;
  v13 = a1[9];
  v12 = a1[10];
  v14 = v12;
  v163 = a1[11];
  v162 = v12;
  v15 = a1[3];
  v16 = a1[5];
  v156 = a1[4];
  v157 = v16;
  v18 = a1[5];
  v17 = a1[6];
  v19 = v17;
  v159 = a1[7];
  v158 = v17;
  v20 = a1[1];
  v152 = *a1;
  v153 = v20;
  v21 = a1[2];
  v23 = *a1;
  v22 = a1[1];
  v24 = v21;
  v155 = a1[3];
  v154 = v21;
  v25 = a1[13];
  v166[12] = v164;
  v167[0] = v25;
  *(v167 + 9) = *(a1 + 217);
  v166[8] = v160;
  v166[9] = v13;
  v166[11] = v8;
  v166[10] = v14;
  v166[4] = v156;
  v166[5] = v18;
  v166[7] = v10;
  v166[6] = v19;
  v166[0] = v23;
  v166[1] = v22;
  v151 = *(a2 + 8);
  v166[3] = v15;
  v166[2] = v24;
  if (sub_252139064(v166) == 1)
  {
    nullsub_1();
    v27 = v26;
    if (*(v26 + 8) == 1)
    {
      v28 = *(v26 + 12);
      v143 = *(v26 + 11);
      v144 = v28;
      v145 = *(v26 + 13);
      *&v146[0] = v26[28];
      v29 = *(v26 + 8);
      v139 = *(v26 + 7);
      v140 = v29;
      v30 = *(v26 + 10);
      v141 = *(v26 + 9);
      v142 = v30;
      v31 = *(v26 + 4);
      v135 = *(v26 + 3);
      v136 = v31;
      v32 = *(v26 + 6);
      v137 = *(v26 + 5);
      v138 = v32;
      v33 = *(v26 + 2);
      v133 = *(v26 + 1);
      v134 = v33;
      sub_252136930(&v133, &v119);
      *&v117[166] = v129;
      *&v117[182] = v130;
      *&v117[198] = v131;
      *&v117[214] = v132;
      *&v117[102] = v125;
      *&v117[118] = v126;
      *&v117[134] = v127;
      *&v117[150] = v128;
      *&v117[38] = v121;
      *&v117[54] = v122;
      *&v117[70] = v123;
      *&v117[86] = v124;
      *&v117[6] = v119;
      *&v117[22] = v120;
      *&v118[170] = *&v117[160];
      *&v118[186] = *&v117[176];
      *&v118[202] = *&v117[192];
      *&v118[216] = *&v117[206];
      *&v118[106] = *&v117[96];
      *&v118[122] = *&v117[112];
      *&v118[138] = *&v117[128];
      *&v118[154] = *&v117[144];
      *&v118[42] = *&v117[32];
      *&v118[58] = *&v117[48];
      *&v118[74] = *&v117[64];
      *&v118[90] = *&v117[80];
      *&v118[10] = *v117;
      *v118 = 0;
      *&v118[8] = 256;
      *&v118[26] = *&v117[16];
      sub_25209D9A8(v118);
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD738 != -1)
        {
          swift_once();
        }

        v34 = sub_25214198C();
        __swift_project_value_buffer(v34, qword_27F4CDEF8);
        v35 = sub_25214196C();
        v36 = sub_252141FBC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v133 = v38;
          *v37 = 136446210;
          v39 = sub_2521425DC();
          v41 = sub_2520A5448(v39, v40, &v133);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] reset noise counter", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x253099FD0](v38, -1, -1);
          MEMORY[0x253099FD0](v37, -1, -1);
        }
      }

      sub_2520AAFA4();
      sub_2520AB414();
      v42 = sub_2521420BC();
      if (qword_27F4CD748 != -1)
      {
        swift_once();
      }

      v43 = qword_27F4CDF28;
      if (qword_27F4CD750 != -1)
      {
        swift_once();
      }

      v44 = sub_25214195C();
      v45 = __swift_project_value_buffer(v44, qword_27F4CDF30);
      sub_25214193C(v42, &dword_25207E000, v43, "HT tone playback", 16, 2, v45, "Test ended due to max tone reached", 34, 2, MEMORY[0x277D84F90]);
      goto LABEL_55;
    }

    v115 = *(v26 + 8);
    v116 = *v26;
    if (qword_27F4CD7B8 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3493 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v63 = sub_25214198C();
      __swift_project_value_buffer(v63, qword_27F4CDE68);
      v145 = v164;
      v146[0] = v165[0];
      *(v146 + 9) = *(v165 + 9);
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v133 = v152;
      v134 = v153;
      v135 = v154;
      v136 = v155;
      nullsub_1();
      sub_2520A2D9C(v64, v118, &qword_27F4CEA18, &qword_2521480E0);
      v65 = sub_25214196C();
      v66 = sub_252141FBC();
      sub_25209D9BC(&v152);
      if (!os_log_type_enabled(v65, v66))
      {
        goto LABEL_36;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v118 = v68;
      *v67 = 136446466;
      v69 = sub_2521425DC();
      v71 = sub_2520A5448(v69, v70, v118);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      v72 = MEMORY[0x253098E80](v116, &type metadata for HTHearingTestThreshold);
      v74 = sub_2520A5448(v72, v73, v118);

      *(v67 + 14) = v74;
      _os_log_impl(&dword_25207E000, v65, v66, "[%{public}s] Test completed, result %s", v67, 0x16u);
      swift_arrayDestroy();
      v75 = v68;
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v76 = sub_25214198C();
      __swift_project_value_buffer(v76, qword_27F4CDE68);
      v65 = sub_25214196C();
      v77 = sub_252141FBC();
      if (!os_log_type_enabled(v65, v77))
      {
        goto LABEL_36;
      }

      v67 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v133 = v78;
      *v67 = 136446210;
      v79 = sub_2521425DC();
      v81 = sub_2520A5448(v79, v80, &v133);

      *(v67 + 4) = v81;
      _os_log_impl(&dword_25207E000, v65, v77, "[%{public}s] Test completed", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      v75 = v78;
    }

    MEMORY[0x253099FD0](v75, -1, -1);
    MEMORY[0x253099FD0](v67, -1, -1);
LABEL_36:

    v82 = *(v27 + 12);
    v143 = *(v27 + 11);
    v144 = v82;
    v145 = *(v27 + 13);
    *&v146[0] = v27[28];
    v83 = *(v27 + 8);
    v139 = *(v27 + 7);
    v140 = v83;
    v84 = *(v27 + 10);
    v141 = *(v27 + 9);
    v142 = v84;
    v85 = *(v27 + 4);
    v135 = *(v27 + 3);
    v136 = v85;
    v86 = *(v27 + 6);
    v137 = *(v27 + 5);
    v138 = v86;
    v87 = *(v27 + 2);
    v133 = *(v27 + 1);
    v134 = v87;
    sub_252136930(&v133, &v119);
    sub_25214200C();
    v88 = v133;
    sub_25214200C();
    v89 = *(&v133 + 1);

    sub_25214200C();
    v90 = *v118;

    if (qword_27F4CD7B0 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3492 != 1)
    {
      goto LABEL_49;
    }

    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v91 = sub_25214198C();
    __swift_project_value_buffer(v91, qword_27F4CDEF8);
    v92 = sub_25214196C();
    v93 = sub_252141FBC();
    if (os_log_type_enabled(v92, v93))
    {
      v114 = v91;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v133 = v95;
      *v94 = 136446978;
      v96 = sub_2521425DC();
      v98 = sub_2520A5448(v96, v97, &v133);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2048;
      *(v94 + 14) = v88;
      *(v94 + 22) = 2048;
      *(v94 + 24) = v89;
      *(v94 + 32) = 2048;
      *(v94 + 34) = v90;
      _os_log_impl(&dword_25207E000, v92, v93, "[%{public}s] current session inst noise mean %f, noise meta data inst %f, stat %f", v94, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x253099FD0](v95, -1, -1);
      v99 = v94;
      v91 = v114;
      MEMORY[0x253099FD0](v99, -1, -1);
    }

    if (byte_27F4D3492 == 1)
    {
      v145 = v164;
      v146[0] = v165[0];
      *(v146 + 9) = *(v165 + 9);
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v133 = v152;
      v134 = v153;
      v135 = v154;
      v136 = v155;
      nullsub_1();
      sub_2520A2D9C(v100, v118, &qword_27F4CEA18, &qword_2521480E0);
      if (qword_27F4CD738 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v91, qword_27F4CDEF8);
      v101 = sub_25214196C();
      v102 = sub_252141FBC();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v118 = v104;
        *v103 = 136446210;
        v105 = sub_2521425DC();
        v107 = sub_2520A5448(v105, v106, v118);

        *(v103 + 4) = v107;
        _os_log_impl(&dword_25207E000, v101, v102, "[%{public}s] reset noise counter", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x253099FD0](v104, -1, -1);
        MEMORY[0x253099FD0](v103, -1, -1);
      }
    }

    else
    {
LABEL_49:
      v145 = v164;
      v146[0] = v165[0];
      *(v146 + 9) = *(v165 + 9);
      v141 = v160;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v137 = v156;
      v138 = v157;
      v139 = v158;
      v140 = v159;
      v133 = v152;
      v134 = v153;
      v135 = v154;
      v136 = v155;
      nullsub_1();
      sub_2520A2D9C(v108, v118, &qword_27F4CEA18, &qword_2521480E0);
    }

    *&v117[166] = v129;
    *&v117[182] = v130;
    *&v117[198] = v131;
    *&v117[102] = v125;
    *&v117[118] = v126;
    *&v117[134] = v127;
    *&v117[150] = v128;
    *&v117[38] = v121;
    *&v117[54] = v122;
    *&v117[70] = v123;
    *&v117[86] = v124;
    *&v117[6] = v119;
    *&v117[214] = v132;
    *&v117[22] = v120;
    sub_2520AAFA4();
    sub_2520AB414();
    v109 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v110 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v111 = sub_25214195C();
    v112 = __swift_project_value_buffer(v111, qword_27F4CDF30);
    sub_25214193C(v109, &dword_25207E000, v110, "HT tone playback", 16, 2, v112, "Test ended", 10, 2, MEMORY[0x277D84F90]);
    *&v118[170] = *&v117[160];
    *&v118[186] = *&v117[176];
    *&v118[202] = *&v117[192];
    *&v118[216] = *&v117[206];
    *&v118[106] = *&v117[96];
    *&v118[122] = *&v117[112];
    *&v118[138] = *&v117[128];
    *&v118[154] = *&v117[144];
    *&v118[42] = *&v117[32];
    *&v118[58] = *&v117[48];
    *&v118[74] = *&v117[64];
    *&v118[90] = *&v117[80];
    *&v118[10] = *v117;
    *v118 = v116;
    *&v118[8] = v115;
    *&v118[26] = *&v117[16];
    sub_25209D9A8(v118);
    goto LABEL_55;
  }

  nullsub_1();
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  v51 = *(v46 + 32);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v52 = sub_25214198C();
  __swift_project_value_buffer(v52, qword_27F4CDE68);
  v53 = sub_25214196C();
  v54 = sub_252141FBC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v133 = v56;
    *v55 = 136447234;
    v57 = sub_2521425DC();
    v59 = sub_2520A5448(v57, v58, &v133);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v47;
    *(v55 + 22) = 2048;
    *(v55 + 24) = v48;
    *(v55 + 32) = 2048;
    *(v55 + 34) = v50;
    *(v55 + 42) = 2048;
    *(v55 + 44) = v49;
    _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] Continue test, next stimulus freq %f, level %f, duration %f, ch %ld", v55, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x253099FD0](v56, -1, -1);
    MEMORY[0x253099FD0](v55, -1, -1);
  }

  *&v117[4] = v147;
  *&v117[20] = v148;
  *&v117[36] = v149;
  *&v117[52] = v150;
  *&v117[68] = v151;
  *v118 = v47;
  *&v118[8] = v48;
  v118[16] = v49;
  *&v118[24] = v50;
  *&v118[32] = v51;
  *&v118[36] = *v117;
  *&v118[96] = *&v117[60];
  *&v118[84] = *&v117[48];
  *&v118[68] = *&v117[32];
  *&v118[52] = *&v117[16];
  sub_25209D9B0(v118);
  v60 = v47;
  v61 = v48;
  if (v49)
  {
    v62 = 2;
  }

  else
  {
    v62 = 1;
  }

  sub_25209D3B0(a2, &v133);
  sub_252108394(v62, v60, v61);
LABEL_55:
  v145 = *&v118[192];
  v146[0] = *&v118[208];
  *(v146 + 9) = *&v118[217];
  v141 = *&v118[128];
  v142 = *&v118[144];
  v143 = *&v118[160];
  v144 = *&v118[176];
  v137 = *&v118[64];
  v138 = *&v118[80];
  v139 = *&v118[96];
  v140 = *&v118[112];
  v133 = *v118;
  v134 = *&v118[16];
  v135 = *&v118[32];
  v136 = *&v118[48];
  *&v118[208] = v146[0];
  *&v118[217] = *(v146 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8);
  return sub_252141DFC();
}

uint64_t sub_252133EB8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v4;
  *(v3 + 224) = *v4;
  v6 = sub_25214195C();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 256) = *a2;
  *(v3 + 272) = v7;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_252133FB4, 0, 0);
}

uint64_t sub_252133FB4()
{
  v105 = v0;
  if (!os_variant_has_internal_content() || (v1 = *(v0 + 216), swift_beginAccess(), !*(v1 + 136)))
  {
    if (*(v0 + 272) == 2)
    {
      goto LABEL_45;
    }

    v7 = *(v0 + 129);
    v99 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v100 = v7;
    v8 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 129);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = __swift_project_value_buffer(v14, qword_27F4CDF30);
    (*(v13 + 16))(v12, v16, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252143AD0;
    v18 = sub_252138FA0();
    v19 = 20302;
    if (v100)
    {
      v19 = 5457241;
    }

    v20 = 0xE200000000000000;
    if (v100)
    {
      v20 = 0xE300000000000000;
    }

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v18;
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    v21 = MEMORY[0x277D839F8];
    v22 = MEMORY[0x277D83A80];
    *(v17 + 96) = MEMORY[0x277D839F8];
    *(v17 + 104) = v22;
    *(v17 + 72) = v10;
    *(v17 + 136) = v21;
    *(v17 + 144) = v22;
    *(v17 + 112) = v11;
    LOBYTE(v90) = 2;
    sub_25214193C(v99, &dword_25207E000, v8, "HT tone playback", 16, 2, v12, "Response, heard: %s, freq %f, lvl %f", 0x24, v90, *&v17);

    v23 = *(v13 + 8);
    LODWORD(v13) = v13 + 8;
    v23(v12, v14);
    v24 = v9 & 1;
    v25 = *(v15 + 112);
    v26 = __OFADD__(v25, v9 & 1);
    v27 = v25 + (v9 & 1);
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 216);
      *(v15 + 112) = v27;
      swift_beginAccess();
      sub_2520A2D9C(v28 + 56, v0 + 16, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 40))
      {
        v29 = *(v0 + 280);
        v15 = *(v0 + 272);
        v13 = *(v0 + 256);
        v30 = *(v0 + 264);
        v31 = *(v0 + 216);
        sub_252139A10(v0 + 16, v0 + 56);
        sub_252138FF4(v0 + 16);
        v32 = *(v0 + 80);
        v33 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v32);
        v101[0] = v13;
        v101[1] = v30;
        v102 = v15 & 1;
        v103 = v29;
        v104 = v24;
        v34 = (*(v33 + 8))(v101, v32, v33);
        v12 = v35;
        v36 = __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v44 = *(v31 + 120);
        if (__OFADD__(v44, v34 & 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        *(v31 + 120) = v44 + (v34 & 1);
        v15 = *(v0 + 216);
        if (v34)
        {
          v45 = *(v15 + 96);
          v26 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v26)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          LODWORD(v10) = 1;
        }

        else
        {
          LODWORD(v10) = 0;
          v46 = 0;
        }
      }

      else
      {
        sub_252138FF4(v0 + 16);
        v47 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v48 = sub_252141B6C();
        v10 = [v47 initWithSuiteName_];

        if (!v10)
        {
LABEL_54:
          __break(1u);
          return MEMORY[0x2822007B8](v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v49 = sub_252141B6C();
        v12 = [v10 integerForKey_];

        LODWORD(v10) = 0;
        v46 = 0;
        v15 = *(v0 + 216);
      }

      *(v15 + 96) = v46;
      if (v46 >= v12)
      {
        LODWORD(v13) = 1;
      }

      else
      {
        LODWORD(v13) = v10 ^ 1;
      }

      if (qword_27F4CD7B8 == -1)
      {
LABEL_28:
        v32 = 0x27F4CD000uLL;
        v99 = v10;
        if (byte_27F4D3493 != 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v64 = sub_25214198C();
          __swift_project_value_buffer(v64, qword_27F4CDE68);
          v51 = sub_25214196C();
          v65 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v65))
          {
            goto LABEL_37;
          }

          v95 = *(v0 + 280);
          v97 = *(v0 + 272);
          v66 = *(v0 + 256);
          v93 = *(v0 + 264);
          v53 = swift_slowAlloc();
          v98 = v15;
          v54 = swift_slowAlloc();
          v101[0] = v54;
          *v53 = 136447746;
          v67 = sub_2521425DC();
          v69 = v12;
          v70 = v13;
          v13 = sub_2520A5448(v67, v68, v101);

          *(v53 + 4) = v13;
          LODWORD(v13) = v70;
          *(v53 + 12) = 2048;
          *(v53 + 14) = v66;
          *(v53 + 22) = 2048;
          *(v53 + 24) = v93;
          *(v53 + 32) = 2048;
          *(v53 + 34) = v95;
          *(v53 + 42) = 2048;
          *(v53 + 44) = v97 & 1;
          *(v53 + 52) = 1024;
          *(v53 + 54) = v99;
          *(v53 + 58) = 2048;
          *(v53 + 60) = v69;
          v32 = 0x27F4CD000uLL;
          v59 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v60 = v65;
          v61 = v51;
          v62 = v53;
          v63 = 68;
          goto LABEL_36;
        }

        if (qword_27F4CD708 == -1)
        {
LABEL_30:
          v50 = sub_25214198C();
          __swift_project_value_buffer(v50, qword_27F4CDE68);
          v51 = sub_25214196C();
          v52 = sub_252141FBC();
          if (!os_log_type_enabled(v51, v52))
          {
LABEL_37:

            if ((v13 | v100))
            {
              v72 = *(v0 + 216);
              *(v72 + 104) = 0;
              *(v15 + 96) = 0;
              swift_beginAccess();
              v73 = *(v72 + 40);
              v74 = *(v72 + 48);
              __swift_mutable_project_boxed_opaque_existential_1(v72 + 16, v73);
              (*(v74 + 80))(v100 & 1, v99, v73, v74);
              swift_endAccess();
              goto LABEL_45;
            }

            if (*(v32 + 1800) != -1)
            {
              swift_once();
            }

            v75 = sub_25214198C();
            __swift_project_value_buffer(v75, qword_27F4CDE68);
            v76 = sub_25214196C();
            v77 = sub_252141FBC();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v101[0] = v79;
              *v78 = 136446466;
              v80 = sub_2521425DC();
              v82 = sub_2520A5448(v80, v81, v101);

              *(v78 + 4) = v82;
              *(v78 + 12) = 1024;
              *(v78 + 14) = 1;
              _os_log_impl(&dword_25207E000, v76, v77, "[%{public}s] Repeat Tone Flag %{BOOL}d", v78, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v79);
              MEMORY[0x253099FD0](v79, -1, -1);
              MEMORY[0x253099FD0](v78, -1, -1);
            }

            v83 = *(v0 + 216);
            v84 = *(v83 + 128);
            v26 = __OFADD__(v84, 1);
            v85 = v84 + 1;
            if (!v26)
            {
              *(v83 + 128) = v85;
LABEL_45:
              v87 = *(v0 + 216);
              v86 = *(v0 + 224);
              v88 = swift_task_alloc();
              *(v0 + 296) = v88;
              *(v88 + 16) = v87;
              *(v88 + 24) = v86;
              v89 = swift_task_alloc();
              *(v0 + 304) = v89;
              *v89 = v0;
              v89[1] = sub_252134AF4;
              v36 = *(v0 + 208);
              v43 = &type metadata for HTHearingTestSessionStatusWithAverageNoise;
              v41 = sub_25213905C;
              v39 = 0xD000000000000027;
              v40 = 0x800000025214BB80;
              v37 = 0;
              v38 = 0;
              v42 = v88;

              return MEMORY[0x2822007B8](v36, v37, v38, v39, v40, v41, v42, v43);
            }

            __break(1u);
            goto LABEL_53;
          }

          v94 = *(v0 + 280);
          v96 = *(v0 + 272);
          v91 = *(v0 + 256);
          v92 = *(v0 + 264);
          v53 = swift_slowAlloc();
          v98 = v15;
          v54 = swift_slowAlloc();
          v101[0] = v54;
          *v53 = 136448002;
          v55 = sub_2521425DC();
          v57 = v12;
          v58 = v13;
          v13 = sub_2520A5448(v55, v56, v101);

          *(v53 + 4) = v13;
          LODWORD(v13) = v58;
          *(v53 + 12) = 2048;
          *(v53 + 14) = v91;
          *(v53 + 22) = 2048;
          *(v53 + 24) = v92;
          *(v53 + 32) = 2048;
          *(v53 + 34) = v94;
          *(v53 + 42) = 2048;
          *(v53 + 44) = v96 & 1;
          *(v53 + 52) = 1024;
          *(v53 + 54) = v24;
          *(v53 + 58) = 1024;
          *(v53 + 60) = v99;
          *(v53 + 64) = 2048;
          *(v53 + 66) = v57;
          v32 = 0x27F4CD000;
          v59 = "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d; Current Tone interferenceFlag %{BOOL}d, When tone interference flag is true, repeat previous tone %ld times.";
          v60 = v52;
          v61 = v51;
          v62 = v53;
          v63 = 74;
LABEL_36:
          _os_log_impl(&dword_25207E000, v61, v60, v59, v62, v63);
          __swift_destroy_boxed_opaque_existential_0(v54);
          v71 = v54;
          v15 = v98;
          MEMORY[0x253099FD0](v71, -1, -1);
          MEMORY[0x253099FD0](v53, -1, -1);
          goto LABEL_37;
        }

LABEL_51:
        swift_once();
        goto LABEL_30;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  v2 = *(v0 + 129);
  v3 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v3;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_2521349E4;
  v5 = *(v0 + 208);

  return sub_252137A68(v5, v0 + 96);
}

uint64_t sub_2521349E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252134AF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252134C28(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - v8;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v37);
  sub_252139A10((a2 + 2), v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v9 = off_28644FCE0;
  type metadata accessor for HTAudiometry(0);
  v10 = v9();
  __swift_destroy_boxed_opaque_existential_0(v36);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v11 = sub_25214198C();
  __swift_project_value_buffer(v11, qword_27F4CDE68);
  v12 = sub_25214196C();
  v13 = sub_252141FBC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v5;
    v16 = a3;
    v17 = v15;
    v36[0] = v15;
    *v14 = 136446466;
    v18 = sub_2521425DC();
    v20 = sub_2520A5448(v18, v19, v36);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] HT session progress %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v21 = v17;
    a3 = v16;
    v5 = v33;
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  v22 = v35;
  (*(v6 + 16))(v35, v34, v5);
  v23 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v25 = v37[3];
  *(v24 + 48) = v37[2];
  *(v24 + 64) = v25;
  v26 = v38;
  v27 = v37[1];
  *(v24 + 16) = v37[0];
  *(v24 + 32) = v27;
  *(v24 + 80) = v26;
  *(v24 + 88) = a2;
  (*(v6 + 32))(v24 + v23, v22, v5);
  *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  swift_beginAccess();
  v28 = a2[5];
  v29 = a2[6];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 2), v28);
  v30 = *(v29 + 104);

  v30(sub_252139A88, v24, v28, v29);
  swift_endAccess();
}

uint64_t sub_252134FB8(void *__src, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[3];
  v122 = a2[2];
  v123 = v6;
  v124 = *(a2 + 8);
  v7 = *a2;
  v121 = a2[1];
  v120 = v7;
  memcpy(__dst, __src, 0x110uLL);
  enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0 = get_enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0(__dst);
  v9 = sub_2520F63DC(__dst);
  if (enum_tag_for_layout_string_11HearingTest20HTAudiometryStatusV2O_0 == 1)
  {
    if (*(v9 + 16) == 1)
    {
      v10 = *(v9 + 232);
      v119[12] = *(v9 + 216);
      v119[13] = v10;
      v119[14] = *(v9 + 248);
      *&v119[15] = *(v9 + 264);
      v11 = *(v9 + 168);
      v119[8] = *(v9 + 152);
      v119[9] = v11;
      v12 = *(v9 + 200);
      v119[10] = *(v9 + 184);
      v119[11] = v12;
      v13 = *(v9 + 104);
      v119[4] = *(v9 + 88);
      v119[5] = v13;
      v14 = *(v9 + 136);
      v119[6] = *(v9 + 120);
      v119[7] = v14;
      v15 = *(v9 + 40);
      v119[0] = *(v9 + 24);
      v119[1] = v15;
      v16 = *(v9 + 72);
      v119[2] = *(v9 + 56);
      v119[3] = v16;
      sub_252136AD4(v119, &v103);
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD738 != -1)
        {
          swift_once();
        }

        v17 = sub_25214198C();
        __swift_project_value_buffer(v17, qword_27F4CDEF8);
        v18 = sub_25214196C();
        v19 = sub_252141FBC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *&v119[0] = v21;
          *v20 = 136446210;
          v22 = sub_2521425DC();
          v24 = sub_2520A5448(v22, v23, v119);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] reset noise counter", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x253099FD0](v21, -1, -1);
          MEMORY[0x253099FD0](v20, -1, -1);
        }
      }

      *&v100[198] = v115;
      *&v100[214] = v116;
      *&v100[230] = v117;
      *&v100[134] = v111;
      *&v100[150] = v112;
      *&v100[166] = v113;
      *&v100[182] = v114;
      *&v100[70] = v107;
      *&v100[86] = v108;
      *&v100[102] = v109;
      *&v100[118] = v110;
      *&v100[6] = v103;
      *&v100[22] = v104;
      *&v100[38] = v105;
      v101 = 1;
      *&v100[246] = v118;
      *&v100[54] = v106;
      sub_2520AAFA4();
      sub_2520AB414();
      v25 = sub_2521420BC();
      if (qword_27F4CD748 != -1)
      {
        swift_once();
      }

      v26 = qword_27F4CDF28;
      if (qword_27F4CD750 != -1)
      {
        swift_once();
      }

      v27 = sub_25214195C();
      v28 = __swift_project_value_buffer(v27, qword_27F4CDF30);
      sub_25214193C(v25, &dword_25207E000, v26, "HT tone playback", 16, 2, v28, "Test ended due to max tone reached", 34, 2, MEMORY[0x277D84F90]);
      *(&__srca[13] + 2) = *&v100[192];
      *(&__srca[14] + 2) = *&v100[208];
      *(&__srca[15] + 2) = *&v100[224];
      __srca[16] = *&v100[238];
      *(&__srca[9] + 2) = *&v100[128];
      *(&__srca[10] + 2) = *&v100[144];
      *(&__srca[11] + 2) = *&v100[160];
      *(&__srca[12] + 2) = *&v100[176];
      *(&__srca[5] + 2) = *&v100[64];
      *(&__srca[6] + 2) = *&v100[80];
      *(&__srca[7] + 2) = *&v100[96];
      *(&__srca[8] + 2) = *&v100[112];
      *(&__srca[1] + 2) = *v100;
      *(&__srca[2] + 2) = *&v100[16];
      v29 = *&v100[48];
      *(&__srca[3] + 2) = *&v100[32];
      memset(__srca, 0, 17);
LABEL_55:
      BYTE1(__srca[1]) = v101;
      *(&__srca[4] + 2) = v29;
      sub_252139B54(__srca);
      goto LABEL_56;
    }

    v99 = *(v9 + 16);
    v46 = *(v9 + 8);
    if (qword_27F4CD7B8 != -1)
    {
      v96 = v9;
      swift_once();
      v9 = v96;
    }

    v97 = v9;
    if (byte_27F4D3493 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v47 = sub_25214198C();
      __swift_project_value_buffer(v47, qword_27F4CDE68);

      v48 = sub_25214196C();
      v49 = sub_252141FBC();

      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_36;
      }

      v50 = swift_slowAlloc();
      v51 = v46;
      v52 = swift_slowAlloc();
      *&v119[0] = v52;
      *v50 = 136446466;
      v53 = sub_2521425DC();
      v55 = sub_2520A5448(v53, v54, v119);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v56 = MEMORY[0x253098E80](v51, &type metadata for HTHearingTestThreshold);
      v58 = sub_2520A5448(v56, v57, v119);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] Test completed, result %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v59 = sub_25214198C();
      __swift_project_value_buffer(v59, qword_27F4CDE68);
      v48 = sub_25214196C();
      v60 = sub_252141FBC();
      if (!os_log_type_enabled(v48, v60))
      {
        goto LABEL_36;
      }

      v50 = swift_slowAlloc();
      v51 = v46;
      v52 = swift_slowAlloc();
      *&v119[0] = v52;
      *v50 = 136446210;
      v61 = sub_2521425DC();
      v63 = sub_2520A5448(v61, v62, v119);

      *(v50 + 4) = v63;
      _os_log_impl(&dword_25207E000, v48, v60, "[%{public}s] Test completed", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    v64 = v52;
    v46 = v51;
    MEMORY[0x253099FD0](v64, -1, -1);
    MEMORY[0x253099FD0](v50, -1, -1);
LABEL_36:

    v65 = *(v97 + 232);
    v119[12] = *(v97 + 216);
    v119[13] = v65;
    v119[14] = *(v97 + 248);
    *&v119[15] = *(v97 + 264);
    v66 = *(v97 + 168);
    v119[8] = *(v97 + 152);
    v119[9] = v66;
    v67 = *(v97 + 200);
    v119[10] = *(v97 + 184);
    v119[11] = v67;
    v68 = *(v97 + 104);
    v119[4] = *(v97 + 88);
    v119[5] = v68;
    v69 = *(v97 + 136);
    v119[6] = *(v97 + 120);
    v119[7] = v69;
    v70 = *(v97 + 40);
    v119[0] = *(v97 + 24);
    v119[1] = v70;
    v71 = *(v97 + 72);
    v119[2] = *(v97 + 56);
    v119[3] = v71;
    sub_252136AD4(v119, &v103);
    sub_25214200C();
    v72 = *&v119[0];
    sub_25214200C();
    v73 = *(&v119[0] + 1);

    sub_25214200C();
    v74 = *&__srca[0];

    if (qword_27F4CD7B0 != -1)
    {
      swift_once();
    }

    if (byte_27F4D3492 != 1)
    {
      goto LABEL_49;
    }

    v98 = v46;
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v75 = sub_25214198C();
    __swift_project_value_buffer(v75, qword_27F4CDEF8);
    v76 = sub_25214196C();
    v77 = sub_252141FBC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v119[0] = v79;
      *v78 = 136446978;
      v80 = sub_2521425DC();
      v82 = sub_2520A5448(v80, v81, v119);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2048;
      *(v78 + 14) = v72;
      *(v78 + 22) = 2048;
      *(v78 + 24) = v73;
      *(v78 + 32) = 2048;
      *(v78 + 34) = v74;
      _os_log_impl(&dword_25207E000, v76, v77, "[%{public}s] current session inst noise mean %f, noise meta data inst %f, stat %f", v78, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x253099FD0](v79, -1, -1);
      MEMORY[0x253099FD0](v78, -1, -1);
    }

    v46 = v98;
    if (byte_27F4D3492 == 1)
    {
      v83 = qword_27F4CD738;

      if (v83 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v75, qword_27F4CDEF8);
      v84 = sub_25214196C();
      v85 = sub_252141FBC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v119[0] = v87;
        *v86 = 136446210;
        v88 = sub_2521425DC();
        v90 = sub_2520A5448(v88, v89, v119);

        *(v86 + 4) = v90;
        v46 = v98;
        _os_log_impl(&dword_25207E000, v84, v85, "[%{public}s] reset noise counter", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x253099FD0](v87, -1, -1);
        MEMORY[0x253099FD0](v86, -1, -1);
      }
    }

    else
    {
LABEL_49:
    }

    *&v100[198] = v115;
    *&v100[214] = v116;
    *&v100[230] = v117;
    *&v100[134] = v111;
    *&v100[150] = v112;
    *&v100[166] = v113;
    *&v100[182] = v114;
    *&v100[70] = v107;
    *&v100[86] = v108;
    *&v100[102] = v109;
    *&v100[118] = v110;
    *&v100[6] = v103;
    *&v100[22] = v104;
    *&v100[38] = v105;
    v101 = 0;
    *&v100[246] = v118;
    *&v100[54] = v106;
    sub_2520AAFA4();
    sub_2520AB414();
    v91 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v92 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v93 = sub_25214195C();
    v94 = __swift_project_value_buffer(v93, qword_27F4CDF30);
    sub_25214193C(v91, &dword_25207E000, v92, "HT tone playback", 16, 2, v94, "Test ended", 10, 2, MEMORY[0x277D84F90]);
    *&__srca[0] = v72;
    *(&__srca[13] + 2) = *&v100[192];
    *(&__srca[14] + 2) = *&v100[208];
    *(&__srca[15] + 2) = *&v100[224];
    __srca[16] = *&v100[238];
    *(&__srca[9] + 2) = *&v100[128];
    *(&__srca[10] + 2) = *&v100[144];
    *(&__srca[11] + 2) = *&v100[160];
    *(&__srca[12] + 2) = *&v100[176];
    *(&__srca[5] + 2) = *&v100[64];
    *(&__srca[6] + 2) = *&v100[80];
    *(&__srca[7] + 2) = *&v100[96];
    *(&__srca[8] + 2) = *&v100[112];
    *(&__srca[1] + 2) = *v100;
    *(&__srca[2] + 2) = *&v100[16];
    v29 = *&v100[48];
    *(&__srca[3] + 2) = *&v100[32];
    *(&__srca[0] + 1) = v46;
    LOBYTE(__srca[1]) = v99;
    goto LABEL_55;
  }

  v30 = *v9;
  v31 = *(v9 + 8);
  v32 = *(v9 + 16);
  v33 = *(v9 + 24);
  v34 = *(v9 + 32);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v35 = sub_25214198C();
  __swift_project_value_buffer(v35, qword_27F4CDE68);
  v36 = sub_25214196C();
  v37 = sub_252141FBC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v119[0] = v39;
    *v38 = 136447234;
    v40 = sub_2521425DC();
    v42 = sub_2520A5448(v40, v41, v119);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v30;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v31;
    *(v38 + 32) = 2048;
    *(v38 + 34) = v33;
    *(v38 + 42) = 2048;
    *(v38 + 44) = v32;
    _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] Continue test, next stimulus freq %f, level %f, duration %f, ch %ld", v38, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x253099FD0](v39, -1, -1);
    MEMORY[0x253099FD0](v38, -1, -1);
  }

  *&v100[4] = v120;
  *&v100[20] = v121;
  *&v100[36] = v122;
  *&v100[52] = v123;
  *&v100[68] = v124;
  *__srca = v30;
  *(__srca + 1) = v31;
  LOBYTE(__srca[1]) = v32;
  *(&__srca[1] + 1) = v33;
  LODWORD(__srca[2]) = v34;
  *(&__srca[2] + 4) = *v100;
  __srca[6] = *&v100[60];
  *(&__srca[5] + 4) = *&v100[48];
  *(&__srca[4] + 4) = *&v100[32];
  *(&__srca[3] + 4) = *&v100[16];
  sub_2521399FC(__srca);
  v43 = v30;
  v44 = v31;
  if (v32)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  sub_25209D3B0(a2, v119);
  sub_252108394(v45, v43, v44);
LABEL_56:
  memcpy(v119, __srca, sizeof(v119));
  memcpy(__srca, v119, sizeof(__srca));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0);
  return sub_252141DFC();
}

uint64_t sub_252135EB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 776) = a1;
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  *(v2 + 736) = *a2;
  *(v2 + 752) = v4;
  *(v2 + 768) = v3;
  v5 = swift_task_alloc();
  *(v2 + 784) = v5;
  *v5 = v2;
  v5[1] = sub_252135F64;

  return sub_252131EC8(v2 + 496, v2 + 736);
}

uint64_t sub_252135F64()
{

  return MEMORY[0x2822009F8](sub_252136060, 0, 0);
}

uint64_t sub_252136060()
{
  v1 = *(v0 + 704);
  *(v0 + 448) = *(v0 + 688);
  *(v0 + 464) = v1;
  v2 = *(v0 + 640);
  *(v0 + 384) = *(v0 + 624);
  *(v0 + 400) = v2;
  v3 = *(v0 + 672);
  *(v0 + 416) = *(v0 + 656);
  *(v0 + 432) = v3;
  v4 = *(v0 + 576);
  *(v0 + 320) = *(v0 + 560);
  *(v0 + 336) = v4;
  v5 = *(v0 + 608);
  *(v0 + 352) = *(v0 + 592);
  *(v0 + 368) = v5;
  v6 = *(v0 + 512);
  *(v0 + 256) = *(v0 + 496);
  *(v0 + 272) = v6;
  v7 = *(v0 + 544);
  *(v0 + 288) = *(v0 + 528);
  *(v0 + 304) = v7;
  *(v0 + 473) = *(v0 + 713);
  v8 = *(v0 + 464);
  *(v0 + 208) = *(v0 + 448);
  *(v0 + 224) = v8;
  *(v0 + 233) = *(v0 + 473);
  v9 = *(v0 + 400);
  *(v0 + 144) = *(v0 + 384);
  *(v0 + 160) = v9;
  v10 = *(v0 + 432);
  *(v0 + 176) = *(v0 + 416);
  *(v0 + 192) = v10;
  v11 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 320);
  *(v0 + 96) = v11;
  v12 = *(v0 + 368);
  *(v0 + 112) = *(v0 + 352);
  *(v0 + 128) = v12;
  v13 = *(v0 + 272);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 32) = v13;
  v14 = *(v0 + 304);
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 64) = v14;
  if (sub_252139064(v0 + 16) == 1)
  {
    v15 = *(v0 + 776);
    nullsub_1();
    v17 = *(v16 + 24);
    v18 = *(v16 + 104);
    v19 = *(v16 + 16) & 1;
    v20 = *(v16 + 32) | 0x8000000000000000;
    v21 = *(v16 + 40);
    v22 = *(v16 + 56);
    v23 = *(v16 + 72);
    v24 = *(v16 + 88);
    *v15 = *v16;
    *(v15 + 16) = v19;
    *(v15 + 24) = v17;
    *(v15 + 32) = v20;
    *(v15 + 40) = v21;
    *(v15 + 56) = v22;
    *(v15 + 72) = v23;
    *(v15 + 88) = v24;
    *(v15 + 104) = v18;
  }

  else
  {
    nullsub_1();
    v26 = *(v0 + 776);
    if (*(v25 + 9))
    {
      sub_25213906C();
      v27 = swift_allocError();
      sub_2521390C0(v0 + 256);
      *v26 = v27;
      *(v26 + 8) = 256;
    }

    else
    {
      v28 = *(v25 + 8);
      *v26 = *v25;
      *(v26 + 8) = v28;
    }

    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_25213621C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136447234;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v4;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v3;
    *(v10 + 32) = 2048;
    *(v10 + 34) = v6;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v5;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] HT session received playback confirmation for Tone freq %f, level %f, duration %f, ch %ld", v10, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 40);
  v16 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v15);
  (*(v16 + 88))(v15, v16);
  return swift_endAccess();
}

uint64_t sub_252136420()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_252136468, 0, 0);
}

uint64_t sub_252136468()
{
  v24 = v0;
  v1 = *(v0 + 40);
  if (*(v1 + 104) == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136446210;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v23);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Evaluation paused, already rolled back samples", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] Evaluation paused, rolling back 2 samples", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x253099FD0](v14, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    v18 = *(v0 + 40);
    *(v1 + 104) = 1;
    swift_beginAccess();
    v19 = *(v18 + 40);
    v20 = *(v18 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v18 + 16, v19);
    (*(v20 + 112))(2, v19, v20);
    swift_endAccess();
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2521367AC()
{
  v12 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Evaluation resumed", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

__n128 sub_252136930@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v38 = a1[2];
  v39 = v4;
  v40 = *(a1 + 8);
  v5 = a1[1];
  v36 = *a1;
  v37 = v5;
  v6 = a1[11];
  v32 = a1[10];
  v33 = v6;
  v34 = a1[12];
  v35 = *(a1 + 26);
  v7 = a1[7];
  v28 = a1[6];
  v29 = v7;
  v8 = a1[9];
  v30 = a1[8];
  v31 = v8;
  v9 = v2[14];
  v10 = v2[15];
  v11 = v2[16];
  swift_beginAccess();
  sub_2520A2D9C((v2 + 7), v26, &qword_27F4CE9F0, &qword_252147FB8);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA00, &unk_2521480C0);
    type metadata accessor for HTRequirementStatusManager();
    if (swift_dynamicCast())
    {
      v12 = *(v25 + 264);

      v13 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 80];
      v32 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 64];
      v33 = v13;
      v34 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 96];
      v35 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 112];
      v14 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
      v28 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
      v29 = v14;
      v15 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 48];
      v30 = *&v12[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
      v31 = v15;
    }
  }

  else
  {
    sub_252138FF4(v26);
  }

  v16 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v16;
  v17 = v40;
  v18 = v37;
  *a2 = v36;
  *(a2 + 16) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v19 = v28;
  v20 = v29;
  v21 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v21;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  result = v32;
  v23 = v33;
  v24 = v34;
  *(a2 + 208) = v35;
  *(a2 + 176) = v23;
  *(a2 + 192) = v24;
  *(a2 + 160) = result;
  return result;
}

__n128 sub_252136AD4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  v5 = a1[13];
  v65 = a1[12];
  v66 = v5;
  v67 = a1[14];
  v6 = a1[7];
  v7 = a1[9];
  v61 = a1[8];
  v62 = v7;
  v8 = a1[11];
  v9 = a1[9];
  v63 = a1[10];
  v64 = v8;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[3];
  v57 = a1[4];
  v58 = v10;
  v14 = a1[6];
  v13 = a1[7];
  v59 = v11;
  v60 = v13;
  v15 = a1[1];
  v54[0] = *a1;
  v54[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v55 = a1[2];
  v56 = v16;
  v51 = v55;
  v52 = v12;
  v49 = v18;
  v50 = v17;
  v45 = v63;
  v46 = v4;
  v47 = v65;
  v41 = v14;
  v42 = v6;
  v68 = *(a1 + 30);
  v53 = *(a1 + 8);
  v48 = *(a1 + 26);
  v43 = v61;
  v44 = v9;
  v19 = v2[14];
  v20 = v2[15];
  v21 = v2[16];
  swift_beginAccess();
  sub_2520A2D9C((v2 + 7), v39, &qword_27F4CE9F0, &qword_252147FB8);
  if (v40)
  {
    sub_2520A2A98(v54, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA00, &unk_2521480C0);
    type metadata accessor for HTRequirementStatusManager();
    if (swift_dynamicCast())
    {
      v22 = *(v36 + 264);

      v23 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 80];
      v45 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 64];
      v46 = v23;
      v47 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 96];
      v48 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 112];
      v24 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
      v41 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
      v42 = v24;
      v25 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 48];
      v43 = *&v22[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
      v44 = v25;
    }
  }

  else
  {
    sub_2520A2A98(v54, v37);
    sub_252138FF4(v39);
  }

  sub_25214200C();
  v26 = v37[0];
  v27 = v37[1];
  v35 = v38;

  v28 = v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v28;
  v29 = v53;
  v30 = v50;
  *a2 = v49;
  *(a2 + 16) = v30;
  *(a2 + 64) = v29;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  v31 = v44;
  *(a2 + 128) = v43;
  *(a2 + 144) = v31;
  v32 = v42;
  *(a2 + 96) = v41;
  *(a2 + 112) = v32;
  *(a2 + 208) = v48;
  v33 = v47;
  *(a2 + 176) = v46;
  *(a2 + 192) = v33;
  *(a2 + 160) = v45;
  *(a2 + 216) = v26;
  *(a2 + 224) = v27;
  result = v35;
  *(a2 + 232) = v35;
  return result;
}

uint64_t sub_252136D48(uint64_t a1, uint64_t a2)
{
  *(v3 + 504) = a1;
  *(v3 + 512) = v2;
  *(v3 + 520) = *v2;
  v4 = *(a2 + 16);
  *(v3 + 528) = *a2;
  *(v3 + 544) = v4;
  *(v3 + 249) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_252136DA0, 0, 0);
}

void sub_252136DA0()
{
  v110 = v0;
  v4 = *(v0 + 512);
  swift_beginAccess();
  v5 = *(v4 + 136);
  if (v5 && *(v5 + 16))
  {
    v6 = *(v0 + 512);
    v8 = sub_252131714(v0 + 376);
    v9 = *v7;
    if (*v7)
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v6 = v7;
      v10 = *(v9 + 32);

      sub_2521389E8(0, 1, sub_252099C08, sub_252138918);
      (v8)(v0 + 376, 0);
      if (v10[2] <= 3uLL)
      {

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v11 = sub_25214198C();
        __swift_project_value_buffer(v11, qword_27F4CDE68);
        v6 = sub_25214196C();
        v12 = sub_252141FBC();
        if (os_log_type_enabled(v6, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v107 = v14;
          *v13 = 136446210;
          v15 = sub_2521425DC();
          v17 = sub_2520A5448(v15, v16, v107);

          *(v13 + 4) = v17;
          _os_log_impl(&dword_25207E000, v6, v12, "[%{public}s] On demand tones should have 4 parameters: frequency, soundLevel, channel(L:0, R:1) and toneDuration. Ex: '(1000, 50, 0, 1)' '(2000, 40, 1, 1)'", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x253099FD0](v14, -1, -1);
          MEMORY[0x253099FD0](v13, -1, -1);
        }

        v10 = &unk_28644E738;
      }

      if (*(v0 + 544) == 2)
      {
LABEL_38:
        v72 = v10[2];
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 >= 3)
            {
              if (v72 != 3)
              {
                v1 = v10[4];
                v2 = v10[5];
                v6 = v10[6];
                v3 = v10[7];

                if (qword_27F4CD708 == -1)
                {
LABEL_43:
                  v73 = v6 & 0x7FFFFFFFFFFFFFFFLL;
                  v74 = sub_25214198C();
                  __swift_project_value_buffer(v74, qword_27F4CDE68);
                  v75 = sub_25214196C();
                  v76 = sub_252141FBC();
                  if (os_log_type_enabled(v75, v76))
                  {
                    v77 = swift_slowAlloc();
                    v78 = swift_slowAlloc();
                    *v107 = v78;
                    *v77 = 136447234;
                    v79 = sub_2521425DC();
                    v81 = sub_2520A5448(v79, v80, v107);

                    *(v77 + 4) = v81;
                    *(v77 + 12) = 2048;
                    *(v77 + 14) = v1;
                    *(v77 + 22) = 2048;
                    *(v77 + 24) = v2;
                    *(v77 + 32) = 2048;
                    *(v77 + 34) = v3;
                    *(v77 + 42) = 2048;
                    *(v77 + 44) = v73 != 0;
                    _os_log_impl(&dword_25207E000, v75, v76, "[%{public}s] Continue test, next on demand tone freq %f, level %f, duration %f, ch %ld", v77, 0x34u);
                    __swift_destroy_boxed_opaque_existential_0(v78);
                    MEMORY[0x253099FD0](v78, -1, -1);
                    MEMORY[0x253099FD0](v77, -1, -1);
                  }

                  v82 = *(v0 + 504);
                  v83 = *(v0 + 512);
                  swift_beginAccess();
                  __swift_project_boxed_opaque_existential_1((v83 + 16), *(v83 + 40));
                  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v108);
                  *&v107[4] = v108[0];
                  *&v107[20] = v108[1];
                  *&v107[36] = v108[2];
                  *&v107[52] = v108[3];
                  *&v107[68] = v109;
                  *(v0 + 16) = v1;
                  *(v0 + 24) = v2;
                  *(v0 + 32) = v73 != 0;
                  *(v0 + 40) = v3;
                  *(v0 + 48) = 0;
                  v84 = *&v107[16];
                  *(v0 + 52) = *v107;
                  v85 = *&v107[32];
                  v86 = *&v107[48];
                  *(v0 + 112) = *&v107[60];
                  *(v0 + 100) = v86;
                  *(v0 + 84) = v85;
                  *(v0 + 68) = v84;
                  sub_25209D9B0(v0 + 16);
                  v87 = *(v0 + 16);
                  v88 = *(v0 + 48);
                  v82[1] = *(v0 + 32);
                  v82[2] = v88;
                  *v82 = v87;
                  v89 = *(v0 + 64);
                  v90 = *(v0 + 80);
                  v91 = *(v0 + 112);
                  v82[5] = *(v0 + 96);
                  v82[6] = v91;
                  v82[3] = v89;
                  v82[4] = v90;
                  v92 = *(v0 + 128);
                  v93 = *(v0 + 144);
                  v94 = *(v0 + 176);
                  v82[9] = *(v0 + 160);
                  v82[10] = v94;
                  v82[7] = v92;
                  v82[8] = v93;
                  v95 = *(v0 + 192);
                  v96 = *(v0 + 208);
                  v97 = *(v0 + 224);
                  *(v82 + 217) = *(v0 + 233);
                  v82[12] = v96;
                  v82[13] = v97;
                  v82[11] = v95;
                  v98 = *(v0 + 8);

                  v98();
                  return;
                }

LABEL_53:
                swift_once();
                goto LABEL_43;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v18 = *(v0 + 249);
      if (qword_27F4CD7B8 != -1)
      {
        swift_once();
      }

      v105 = v18;
      if (byte_27F4D3493 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v19 = sub_25214198C();
        __swift_project_value_buffer(v19, qword_27F4CDE68);
        v20 = sub_25214196C();
        v21 = sub_252141FBC();
        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_29;
        }

        v102 = *(v0 + 249);
        v99 = *(v0 + 552);
        v100 = *(v0 + 544);
        v22 = *(v0 + 536);
        v23 = *(v0 + 528);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v107 = v25;
        *v24 = 136447490;
        v26 = sub_2521425DC();
        v28 = sub_2520A5448(v26, v27, v107);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v23;
        *(v24 + 22) = 2048;
        *(v24 + 24) = v22;
        *(v24 + 32) = 2048;
        *(v24 + 34) = v99;
        *(v24 + 42) = 2048;
        *(v24 + 44) = v100 & 1;
        *(v24 + 52) = 1024;
        *(v24 + 54) = v102 & 1;
        _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d", v24, 0x3Au);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v29 = v25;
      }

      else
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v38 = sub_25214198C();
        __swift_project_value_buffer(v38, qword_27F4CDE68);
        v20 = sub_25214196C();
        v39 = sub_252141FBC();
        if (!os_log_type_enabled(v20, v39))
        {
          goto LABEL_29;
        }

        v101 = *(v0 + 552);
        v104 = *(v0 + 544);
        v40 = *(v0 + 536);
        v41 = *(v0 + 528);
        v24 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v107 = v42;
        *v24 = 136447234;
        v43 = sub_2521425DC();
        v45 = sub_2520A5448(v43, v44, v107);

        *(v24 + 4) = v45;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v41;
        *(v24 + 22) = 2048;
        *(v24 + 24) = v40;
        *(v24 + 32) = 2048;
        *(v24 + 34) = v101;
        *(v24 + 42) = 2048;
        *(v24 + 44) = v104 & 1;
        _os_log_impl(&dword_25207E000, v20, v39, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld", v24, 0x34u);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v29 = v42;
      }

      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
LABEL_29:

      v46 = *(v0 + 512);
      swift_beginAccess();
      sub_2520A2D9C(v46 + 56, v0 + 256, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 280))
      {
        v47 = *(v0 + 249);
        v48 = *(v0 + 552);
        v49 = *(v0 + 544);
        v50 = *(v0 + 536);
        v51 = *(v0 + 528);
        sub_252139A10(v0 + 256, v0 + 296);
        sub_252138FF4(v0 + 256);
        v52 = *(v0 + 320);
        v53 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v52);
        *v107 = v51;
        *&v107[8] = v50;
        v107[16] = v49 & 1;
        *&v107[24] = v48;
        v107[32] = v47 & 1;
        v54 = (*(v53 + 8))(v107, v52, v53);
        v56 = v55;
        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
LABEL_33:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v61 = sub_25214198C();
        __swift_project_value_buffer(v61, qword_27F4CDE68);
        v62 = sub_25214196C();
        v63 = sub_252141FBC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v107 = v65;
          *v64 = 136446722;
          v66 = sub_2521425DC();
          v68 = sub_2520A5448(v66, v67, v107);

          *(v64 + 4) = v68;
          *(v64 + 12) = 1024;
          *(v64 + 14) = v54 & 1;
          *(v64 + 18) = 2048;
          *(v64 + 20) = v56;
          _os_log_impl(&dword_25207E000, v62, v63, "[%{public}s] Current Tone interferenceFlag %{BOOL}d, repeat the previous tone for up to %ld times", v64, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x253099FD0](v65, -1, -1);
          MEMORY[0x253099FD0](v64, -1, -1);
        }

        v69 = *(v0 + 512);
        swift_beginAccess();
        v70 = *(v69 + 40);
        v71 = *(v69 + 48);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v69 + 16, v70);
        (*(v71 + 80))(v105 & 1, v54 & 1, v70, v71);
        swift_endAccess();
        goto LABEL_38;
      }

      sub_252138FF4(v0 + 256);
      v57 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v58 = sub_252141B6C();
      v59 = [v57 initWithSuiteName_];

      if (v59)
      {
        v60 = sub_252141B6C();
        v56 = [v59 integerForKey_];

        v54 = 0;
        goto LABEL_33;
      }

LABEL_55:
      __break(1u);
      return;
    }

    (v8)(v0 + 376, 0);
  }

  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_252141B6C();
  v32 = [v30 initWithSuiteName_];

  if (!v32)
  {
    __break(1u);
    goto LABEL_55;
  }

  v33 = *(v0 + 249);
  v103 = *(v0 + 544);
  v106 = *(v0 + 528);
  sub_2520DC160();
  v35 = v34;

  *(v4 + 136) = v35;

  *(v0 + 336) = v106;
  *(v0 + 352) = v103;
  *(v0 + 368) = v33;
  v36 = swift_task_alloc();
  *(v0 + 560) = v36;
  *v36 = v0;
  v36[1] = sub_252137974;
  v37 = *(v0 + 504);

  sub_252131EC8(v37, v0 + 336);
}

uint64_t sub_252137974()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252137A68(uint64_t a1, uint64_t a2)
{
  *(v3 + 536) = a1;
  *(v3 + 544) = v2;
  *(v3 + 552) = *v2;
  v4 = *(a2 + 16);
  *(v3 + 560) = *a2;
  *(v3 + 576) = v4;
  *(v3 + 401) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_252137AC4, 0, 0);
}

void sub_252137AC4()
{
  v99 = v0;
  v4 = *(v0 + 544);
  swift_beginAccess();
  v5 = *(v4 + 136);
  if (v5 && *(v5 + 16))
  {
    v6 = *(v0 + 544);
    v8 = sub_252131714(v0 + 408);
    v9 = *v7;
    if (*v7)
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v6 = v7;
      v10 = *(v9 + 32);

      sub_2521389E8(0, 1, sub_252099C08, sub_252138918);
      (v8)(v0 + 408, 0);
      if (v10[2] <= 3uLL)
      {

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v11 = sub_25214198C();
        __swift_project_value_buffer(v11, qword_27F4CDE68);
        v6 = sub_25214196C();
        v12 = sub_252141FBC();
        if (os_log_type_enabled(v6, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v96 = v14;
          *v13 = 136446210;
          v15 = sub_2521425DC();
          v17 = sub_2520A5448(v15, v16, v96);

          *(v13 + 4) = v17;
          _os_log_impl(&dword_25207E000, v6, v12, "[%{public}s] On demand tones should have 4 parameters: frequency, soundLevel, channel(L:0, R:1) and toneDuration. Ex: '(1000, 50, 0, 1)' '(2000, 40, 1, 1)'", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x253099FD0](v14, -1, -1);
          MEMORY[0x253099FD0](v13, -1, -1);
        }

        v10 = &unk_28644E778;
      }

      if (*(v0 + 576) == 2)
      {
LABEL_38:
        v72 = v10[2];
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 >= 3)
            {
              if (v72 != 3)
              {
                v1 = v10[4];
                v2 = v10[5];
                v6 = v10[6];
                v3 = v10[7];

                if (qword_27F4CD708 == -1)
                {
LABEL_43:
                  v73 = v6 & 0x7FFFFFFFFFFFFFFFLL;
                  v74 = sub_25214198C();
                  __swift_project_value_buffer(v74, qword_27F4CDE68);
                  v75 = sub_25214196C();
                  v76 = sub_252141FBC();
                  if (os_log_type_enabled(v75, v76))
                  {
                    v77 = swift_slowAlloc();
                    v78 = swift_slowAlloc();
                    *v96 = v78;
                    *v77 = 136447234;
                    v79 = sub_2521425DC();
                    v81 = sub_2520A5448(v79, v80, v96);

                    *(v77 + 4) = v81;
                    *(v77 + 12) = 2048;
                    *(v77 + 14) = v1;
                    *(v77 + 22) = 2048;
                    *(v77 + 24) = v2;
                    *(v77 + 32) = 2048;
                    *(v77 + 34) = v3;
                    *(v77 + 42) = 2048;
                    *(v77 + 44) = v73 != 0;
                    _os_log_impl(&dword_25207E000, v75, v76, "[%{public}s] Continue test, next on demand tone freq %f, level %f, duration %f, ch %ld", v77, 0x34u);
                    __swift_destroy_boxed_opaque_existential_0(v78);
                    MEMORY[0x253099FD0](v78, -1, -1);
                    MEMORY[0x253099FD0](v77, -1, -1);
                  }

                  v82 = *(v0 + 544);
                  v83 = *(v0 + 536);
                  swift_beginAccess();
                  __swift_project_boxed_opaque_existential_1((v82 + 16), *(v82 + 40));
                  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v97);
                  *&v96[4] = v97[0];
                  *&v96[20] = v97[1];
                  *&v96[36] = v97[2];
                  *&v96[52] = v97[3];
                  *&v96[68] = v98;
                  *(v0 + 16) = v1;
                  *(v0 + 24) = v2;
                  *(v0 + 32) = v73 != 0;
                  *(v0 + 40) = v3;
                  *(v0 + 48) = 0;
                  v84 = *&v96[16];
                  *(v0 + 52) = *v96;
                  v85 = *&v96[32];
                  v86 = *&v96[48];
                  *(v0 + 112) = *&v96[60];
                  *(v0 + 100) = v86;
                  *(v0 + 84) = v85;
                  *(v0 + 68) = v84;
                  sub_2521399FC(v0 + 16);
                  memcpy(v83, (v0 + 16), 0x110uLL);
                  v87 = *(v0 + 8);

                  v87();
                  return;
                }

LABEL_53:
                swift_once();
                goto LABEL_43;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v18 = *(v0 + 401);
      if (qword_27F4CD7B8 != -1)
      {
        swift_once();
      }

      v94 = v18;
      if (byte_27F4D3493 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v19 = sub_25214198C();
        __swift_project_value_buffer(v19, qword_27F4CDE68);
        v20 = sub_25214196C();
        v21 = sub_252141FBC();
        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_29;
        }

        v91 = *(v0 + 401);
        v88 = *(v0 + 584);
        v89 = *(v0 + 576);
        v22 = *(v0 + 568);
        v23 = *(v0 + 560);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v96 = v25;
        *v24 = 136447490;
        v26 = sub_2521425DC();
        v28 = sub_2520A5448(v26, v27, v96);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v23;
        *(v24 + 22) = 2048;
        *(v24 + 24) = v22;
        *(v24 + 32) = 2048;
        *(v24 + 34) = v88;
        *(v24 + 42) = 2048;
        *(v24 + 44) = v89 & 1;
        *(v24 + 52) = 1024;
        *(v24 + 54) = v91 & 1;
        _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld Response %{BOOL}d", v24, 0x3Au);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v29 = v25;
      }

      else
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v38 = sub_25214198C();
        __swift_project_value_buffer(v38, qword_27F4CDE68);
        v20 = sub_25214196C();
        v39 = sub_252141FBC();
        if (!os_log_type_enabled(v20, v39))
        {
          goto LABEL_29;
        }

        v90 = *(v0 + 584);
        v93 = *(v0 + 576);
        v40 = *(v0 + 568);
        v41 = *(v0 + 560);
        v24 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v96 = v42;
        *v24 = 136447234;
        v43 = sub_2521425DC();
        v45 = sub_2520A5448(v43, v44, v96);

        *(v24 + 4) = v45;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v41;
        *(v24 + 22) = 2048;
        *(v24 + 24) = v40;
        *(v24 + 32) = 2048;
        *(v24 + 34) = v90;
        *(v24 + 42) = 2048;
        *(v24 + 44) = v93 & 1;
        _os_log_impl(&dword_25207E000, v20, v39, "[%{public}s] Current Tone freq %f lv %f dur %f ch %ld", v24, 0x34u);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v29 = v42;
      }

      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
LABEL_29:

      v46 = *(v0 + 544);
      swift_beginAccess();
      sub_2520A2D9C(v46 + 56, v0 + 288, &qword_27F4CE9F0, &qword_252147FB8);
      if (*(v0 + 312))
      {
        v47 = *(v0 + 401);
        v48 = *(v0 + 584);
        v49 = *(v0 + 576);
        v50 = *(v0 + 568);
        v51 = *(v0 + 560);
        sub_252139A10(v0 + 288, v0 + 328);
        sub_252138FF4(v0 + 288);
        v52 = *(v0 + 352);
        v53 = *(v0 + 360);
        __swift_project_boxed_opaque_existential_1((v0 + 328), v52);
        *v96 = v51;
        *&v96[8] = v50;
        v96[16] = v49 & 1;
        *&v96[24] = v48;
        v96[32] = v47 & 1;
        v54 = (*(v53 + 8))(v96, v52, v53);
        v56 = v55;
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
LABEL_33:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v61 = sub_25214198C();
        __swift_project_value_buffer(v61, qword_27F4CDE68);
        v62 = sub_25214196C();
        v63 = sub_252141FBC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v96 = v65;
          *v64 = 136446722;
          v66 = sub_2521425DC();
          v68 = sub_2520A5448(v66, v67, v96);

          *(v64 + 4) = v68;
          *(v64 + 12) = 1024;
          *(v64 + 14) = v54 & 1;
          *(v64 + 18) = 2048;
          *(v64 + 20) = v56;
          _os_log_impl(&dword_25207E000, v62, v63, "[%{public}s] Current Tone interferenceFlag %{BOOL}d, repeat the previous tone for up to %ld times", v64, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x253099FD0](v65, -1, -1);
          MEMORY[0x253099FD0](v64, -1, -1);
        }

        v69 = *(v0 + 544);
        swift_beginAccess();
        v70 = *(v69 + 40);
        v71 = *(v69 + 48);
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v69 + 16, v70);
        (*(v71 + 80))(v94 & 1, v54 & 1, v70, v71);
        swift_endAccess();
        goto LABEL_38;
      }

      sub_252138FF4(v0 + 288);
      v57 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v58 = sub_252141B6C();
      v59 = [v57 initWithSuiteName_];

      if (v59)
      {
        v60 = sub_252141B6C();
        v56 = [v59 integerForKey_];

        v54 = 0;
        goto LABEL_33;
      }

LABEL_55:
      __break(1u);
      return;
    }

    (v8)(v0 + 408, 0);
  }

  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_252141B6C();
  v32 = [v30 initWithSuiteName_];

  if (!v32)
  {
    __break(1u);
    goto LABEL_55;
  }

  v33 = *(v0 + 401);
  v92 = *(v0 + 576);
  v95 = *(v0 + 560);
  sub_2520DC160();
  v35 = v34;

  *(v4 + 136) = v35;

  *(v0 + 368) = v95;
  *(v0 + 384) = v92;
  *(v0 + 400) = v33;
  v36 = swift_task_alloc();
  *(v0 + 592) = v36;
  *v36 = v0;
  v36[1] = sub_252138668;
  v37 = *(v0 + 536);

  sub_252133EB8(v37, v0 + 368);
}

uint64_t sub_252138668()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t HTHearingTestSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_252138FF4(v0 + 56);

  return v0;
}

uint64_t HTHearingTestSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_252138FF4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_252138844(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_252138918(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521389E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void *sub_252138AC0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v14 = *a1;
  v15 = *a2;
  *(v7 + 56) = 0u;
  v16 = v7 + 56;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 112) = 0;
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_252141B6C();
  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_2520DC160();
  v21 = v20;

  v8[17] = v21;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v22 = qword_27F4D3498;
  v8[18] = qword_27F4D3498;
  v23 = qword_27F4CD6F8;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v8[19] = qword_27F4D3428;
  LOBYTE(v46[0]) = v14;
  v25 = type metadata accessor for HTAudiometry(0);
  objc_allocWithZone(v25);

  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(v46, a4, a5, a6, a7, 4.0);
  v8[2] = v26;
  v8[5] = v25;
  v8[6] = &off_28644FCD8;
  if (v15)
  {

    v28 = sub_252131CC4(v27);

    if (*(v28 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
      v29 = sub_25214235C();
    }

    else
    {
      v29 = MEMORY[0x277D84F98];
    }

    v46[0] = v29;

    sub_25209BFC4(v33, 1, v46);

    v34 = v46[0];
    swift_beginAccess();
    v35 = v8[5];
    v36 = v8[6];
    __swift_mutable_project_boxed_opaque_existential_1((v8 + 2), v35);
    (*(v36 + 64))(v34, v35, v36);
    swift_endAccess();
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a3)
    {
LABEL_13:
      v31 = type metadata accessor for HTRequirementStatusManager();
      v32 = &protocol witness table for HTRequirementStatusManager;
      v30 = a3;
      goto LABEL_14;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v46[1] = 0;
  v46[2] = 0;
LABEL_14:
  v46[0] = v30;
  v46[3] = v31;
  v46[4] = v32;
  swift_beginAccess();

  sub_252139D1C(v46, v16);
  swift_endAccess();
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v37 = sub_25214198C();
    __swift_project_value_buffer(v37, qword_27F4CDEF8);
    v38 = sub_25214196C();
    v39 = sub_252141FBC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v40 = 136446210;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, v46);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25207E000, v38, v39, "[%{public}s] reset noise counter at session init", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x253099FD0](v41, -1, -1);
      MEMORY[0x253099FD0](v40, -1, -1);
    }
  }

  sub_2520AAFA4();

  return v8;
}

unint64_t sub_252138FA0()
{
  result = qword_27F4CE9E8;
  if (!qword_27F4CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE9E8);
  }

  return result;
}

uint64_t sub_252138FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE9F0, &qword_252147FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25213906C()
{
  result = qword_27F4CE9F8;
  if (!qword_27F4CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE9F8);
  }

  return result;
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatus(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 368) + **(*v2 + 368));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2520DB0A4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2520DA018;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.hearingTestStatus(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 384) + **(*v2 + 384));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2520DB0A4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HTHearingTestSession.beginEvaluation(channel:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0A4;

  return v6(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.endEvaluation(channel:)(uint64_t a1)
{
  v6 = (*(*v1 + 408) + **(*v1 + 408));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0A4;

  return v6(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.pauseEvaluation(channel:)(uint64_t a1)
{
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0A4;

  return v6(a1);
}

uint64_t dispatch thunk of HTHearingTestSession.resumeEvaluation(channel:)(uint64_t a1)
{
  v6 = (*(*v1 + 424) + **(*v1 + 424));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0A4;

  return v6(a1);
}

uint64_t sub_252139A10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_252139A88(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA08, &qword_2521480D0) - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 88);

  return sub_252134FB8(a1, (v1 + 16), v6, v1 + v4, v5);
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 96) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_252139C6C(__int128 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA10, &qword_2521480D8) - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 88);

  return sub_252132D80(a1, (v1 + 16), v6, v1 + v4, v5);
}

uint64_t sub_252139D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE9F0, &qword_252147FB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_252139DC8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice;
  v3 = *(v0 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
  if (v4 >> 62)
  {
    if (sub_25214232C())
    {
      goto LABEL_4;
    }

LABEL_12:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v12 = sub_25214198C();
    __swift_project_value_buffer(v12, qword_27F4CDE68);
    v13 = sub_25214196C();
    v14 = sub_252141F8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &v36);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] no current captured output ports - attempting to capture session BT A2DP output ports", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    v20 = [objc_allocWithZone(type metadata accessor for CapturedDevice()) init];
    v21 = *(v1 + v2);
    *(v1 + v2) = v20;

    v22 = *(v1 + v2);
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
      if (v23 >> 62)
      {
        if (sub_25214232C() >= 1)
        {
          goto LABEL_19;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_19:
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_25214222C();

        v36 = 0x6465727574706143;
        v37 = 0xE900000000000020;
        v24 = sub_25214244C();
        MEMORY[0x253098DA0](v24);

        MEMORY[0x253098DA0](0x7374726F5020, 0xE600000000000000);
        v26 = v36;
        v25 = v37;
LABEL_22:

        v27 = sub_25214196C();
        v28 = sub_252141F8C();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36 = v30;
          *v29 = 136446466;
          v31 = sub_2521425DC();
          v33 = sub_2520A5448(v31, v32, &v36);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2080;
          v34 = sub_2520A5448(v26, v25, &v36);

          *(v29 + 14) = v34;
          _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] status: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v30, -1, -1);
          MEMORY[0x253099FD0](v29, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    v25 = 0x800000025214BE00;
    v26 = 0xD000000000000011;
    goto LABEL_22;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  oslog = sub_25214196C();
  v6 = sub_252141F8C();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v36);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] already captured output ports", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25213A2EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25213A350()
{
  v24 = [v0 currentRoute];
  v1 = [v24 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v2 = sub_252141CDC();

  if (!(v2 >> 62))
  {
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_27:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_26:
  v26 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_25214232C();
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v4 = 0;
  v25 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530993D0](v5, v2);
      }

      else
      {
        if (v5 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = [v6 portType];
      v9 = sub_252141B9C();
      v11 = v10;
      if (v9 == sub_252141B9C() && v11 == v12)
      {
        break;
      }

      v14 = sub_25214247C();

      if (v14)
      {
        goto LABEL_18;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_28;
      }
    }

LABEL_18:
    v15 = [v7 portName];
    v16 = sub_252141B9C();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_252099D60(0, *(v25 + 2) + 1, 1, v25);
    }

    v20 = *(v25 + 2);
    v19 = *(v25 + 3);
    if (v20 >= v19 >> 1)
    {
      v25 = sub_252099D60((v19 > 1), v20 + 1, 1, v25);
    }

    *(v25 + 2) = v20 + 1;
    v21 = &v25[16 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v18;
  }

  while (v4 != v3);
LABEL_28:

  v22 = sub_2520A1EE4(v25);

  return v22;
}

uint64_t sub_25213A618()
{
  v26 = [v0 currentRoute];
  v1 = [v26 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v2 = sub_252141CDC();

  v28 = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_24:
  v27 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_25214232C();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530993D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = [v7 portType];
      v10 = sub_252141B9C();
      v12 = v11;
      if (v10 == sub_252141B9C() && v12 == v13)
      {
        break;
      }

      v15 = sub_25214247C();

      if (v15)
      {
        goto LABEL_18;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    v16 = [v8 UID];
    v17 = sub_252141B9C();
    v19 = v18;

    v20 = [v8 portName];
    v21 = sub_252141B9C();
    v23 = v22;

    type metadata accessor for CapturedPort();
    v24 = swift_allocObject();
    v24[2] = v17;
    v24[3] = v19;
    v24[4] = v21;
    v24[5] = v23;
    MEMORY[0x253098E50]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252141CFC();
    }

    sub_252141D4C();
    v5 = v28;
  }

  while (v4 != v3);
LABEL_26:

  return v5;
}

char *sub_25213A900()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() sharedInstance];
  v4 = sub_25213A618();

  *&v1[OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts] = v4;
  v36.receiver = v1;
  v36.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v36, sel_init);
  v6 = qword_27F4CD708;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  v9 = sub_25214196C();
  v10 = sub_252141F8C();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_17;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v35 = v12;
  *v11 = 136446466;
  v13 = sub_2521425DC();
  v15 = sub_2520A5448(v13, v14, &v35);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v16 = *&v7[OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts];
  if (v16 >> 62)
  {
    v17 = sub_25214232C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_16:
    sub_2520A1EE4(v18);

    v27 = sub_252141E9C();
    v29 = v28;

    v30 = sub_2520A5448(v27, v29, &v35);

    *(v11 + 14) = v30;
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] capture device ports %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
LABEL_17:

    return v7;
  }

  v34 = MEMORY[0x277D84F90];
  result = sub_25209B354(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v31 = v12;
    v32 = v9;
    v33 = v7;
    v20 = 0;
    v18 = v34;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530993D0](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = *(v21 + 32);
      v23 = *(v21 + 40);

      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25209B354((v24 > 1), v25 + 1, 1);
      }

      ++v20;
      *(v34 + 16) = v25 + 1;
      v26 = v34 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
    }

    while (v17 != v20);
    v9 = v32;
    v7 = v33;
    v12 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_25213AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
  if (v1 >> 62)
  {
    v2 = sub_25214232C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_15:
    v18 = sub_2520A1EE4(v3);

    return v18;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_25209B354(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2530993D0](v5, v1);
        v8 = *(v6 + 32);
        v7 = *(v6 + 40);

        swift_unknownObjectRelease();
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_25209B354((v9 > 1), v10 + 1, 1);
        }

        ++v5;
        *(v19 + 16) = v10 + 1;
        v11 = v19 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
      }

      while (v2 != v5);
    }

    else
    {
      v12 = v1 + 32;
      do
      {
        v14 = *(*v12 + 32);
        v13 = *(*v12 + 40);
        v15 = *(v19 + 16);
        v16 = *(v19 + 24);

        if (v15 >= v16 >> 1)
        {
          sub_25209B354((v16 > 1), v15 + 1, 1);
        }

        *(v19 + 16) = v15 + 1;
        v17 = v19 + 16 * v15;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        v12 += 8;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_25213AE38(uint64_t a1)
{
  type metadata accessor for HTAudioRouteRequirementManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4CEA28 = result;
  return result;
}

id sub_25213AE8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player] = 0;
  v6 = &v2[OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler];
  *v6 = a1;
  v6[1] = a2;
  v22.receiver = v2;
  v22.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = qword_27F4CD708;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);
  v11 = sub_25214196C();
  v12 = sub_252141F8C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] init", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253099FD0](v14, -1, -1);
    MEMORY[0x253099FD0](v13, -1, -1);
  }

  sub_25213B23C();
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  v19 = v9;
  sub_25213B790(sub_252140E10, v18);

  return v19;
}

void sub_25213B23C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] setup notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 addObserver:v1 selector:sel_audioSessionRouteChangeHander_ name:*MEMORY[0x277CB8210] object:v11];
}

uint64_t sub_25213B424(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CapturedDevice()) init];
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice) = v2;

  return sub_25213B474();
}

uint64_t sub_25213B474()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
    if (v3 >> 62)
    {
      v4 = sub_25214232C();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        sub_25214222C();

        v25[0] = 0x6465727574706143;
        v25[1] = 0xE900000000000020;
        v5 = sub_25214244C();
        MEMORY[0x253098DA0](v5);

        MEMORY[0x253098DA0](0x7374726F5020, 0xE600000000000000);
        v6 = 0;
        v8 = 0x6465727574706143;
        v7 = 0xE900000000000020;
        v9 = v4 > 0;
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
  v7 = 0x800000025214BE00;
  v8 = 0xD000000000000011;
  v6 = 1;
LABEL_7:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);

  v11 = sub_25214196C();
  v12 = sub_252141F8C();

  if (os_log_type_enabled(v11, v12))
  {
    v24 = v9;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v13 = 136446466;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_2520A5448(v8, v7, v25);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] update interruptions based on capture count - status: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v14, -1, -1);
    v19 = v13;
    v9 = v24;
    MEMORY[0x253099FD0](v19, -1, -1);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted) = v9;
  if (v6)
  {
    v20 = &unk_286458660;
    v21 = &block_descriptor_13;
    v22 = sub_252140D74;
  }

  else
  {
    v20 = &unk_286458610;
    v21 = &block_descriptor_10;
    v22 = sub_25213E7D0;
  }

  return sub_25213C0AC(v20, v22, v21);
}

uint64_t sub_25213B790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_252141A4C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141A8C();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252141A5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
  v14 = sub_25214203C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v24;
  v17 = v25;
  v15[2] = v3;
  v15[3] = v16;
  v18 = ObjectType;
  v15[4] = v17;
  v15[5] = v18;
  aBlock[4] = sub_252140E60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_28_0;
  v19 = _Block_copy(aBlock);
  v20 = v3;

  sub_252141A6C();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v9, v6, v19);
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_25213BB38()
{
  ObjectType = swift_getObjectType();
  v1 = sub_252141A4C();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252141A8C();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141A5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_25214203C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = ObjectType;
  *(v12 + 16) = v0;
  *(v12 + 24) = v13;
  aBlock[4] = sub_252140E18;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);
  v15 = v0;
  sub_252141A6C();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v6, v3, v14);
  _Block_release(v14);

  (*(v21 + 8))(v3, v1);
  (*(v19 + 8))(v6, v20);
}

void sub_25213BECC()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] cleanup notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 removeObserver:v1 name:*MEMORY[0x277CB8210] object:v11];
}

uint64_t sub_25213C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_252141A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252141A8C();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v12 = sub_252141FFC();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = ObjectType;
  aBlock[4] = v18;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = v19;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25213E7F0(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

id sub_25213C370()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141F8C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] deinit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  sub_25213BECC();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void sub_25213C570(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_25214171C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  v9 = __swift_project_value_buffer(v8, qword_27F4CDE68);
  (*(v5 + 16))(v7, a1, v4);
  v10 = sub_25214196C();
  v11 = sub_252141F8C();
  v12 = os_log_type_enabled(v10, v11);
  v55[2] = ObjectType;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v55[1] = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v55[0] = v9;
    v16 = v15;
    v58[0] = v15;
    *v14 = 136446466;
    v17 = sub_2521425DC();
    v19 = sub_2520A5448(v17, v18, v58);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_25213E7F0(&qword_27F4CEA58, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v20 = sub_25214244C();
    v22 = v21;
    (*(v5 + 8))(v7, v4);
    v23 = sub_2520A5448(v20, v22, v58);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] audio session route change %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v16, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v24 = sub_25214170C();
  if (!v24)
  {
    v44 = sub_25214196C();
    v45 = sub_252141F8C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58[0] = v47;
      *v46 = 136446210;
      v52 = sub_2521425DC();
      v54 = sub_2520A5448(v52, v53, v58);

      *(v46 + 4) = v54;
      v51 = "[%{public}s] audio session route change  - no userInfo";
      goto LABEL_23;
    }

LABEL_24:

    return;
  }

  v25 = v24;
  v56 = sub_252141B9C();
  v57 = v26;
  sub_2521421DC();
  if (!*(v25 + 16) || (v27 = sub_25213E754(v58), (v28 & 1) == 0))
  {

    sub_2520E42D8(v58);
LABEL_19:
    v44 = sub_25214196C();
    v45 = sub_252141F8C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58[0] = v47;
      *v46 = 136446210;
      v48 = sub_2521425DC();
      v50 = sub_2520A5448(v48, v49, v58);

      *(v46 + 4) = v50;
      v51 = "[%{public}s] audio session route change  - no reason";
LABEL_23:
      _os_log_impl(&dword_25207E000, v44, v45, v51, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x253099FD0](v47, -1, -1);
      MEMORY[0x253099FD0](v46, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  sub_2520A5FC4(*(v25 + 56) + 32 * v27, v59);
  sub_2520E42D8(v58);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v29 = v56;
  v30 = sub_25214196C();
  v31 = sub_252141F8C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58[0] = v33;
    *v32 = 136446210;
    v34 = sub_2521425DC();
    v36 = sub_2520A5448(v34, v35, v58);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] audio session route change  - capture route BT ports if none", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x253099FD0](v33, -1, -1);
    MEMORY[0x253099FD0](v32, -1, -1);
  }

  sub_252139DC8();
  v37 = sub_25214196C();
  v38 = sub_252141F8C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58[0] = v40;
    *v39 = 136446466;
    v41 = sub_2521425DC();
    v43 = sub_2520A5448(v41, v42, v58);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v29;
    _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] audio session route change reason: %lu", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x253099FD0](v40, -1, -1);
    MEMORY[0x253099FD0](v39, -1, -1);
  }

  if (v29 == 1)
  {
    sub_25213CC54();
  }

  else if (v29 == 2 || v29 == 4)
  {
    sub_25213C0AC(&unk_286458660, sub_252140D74, &block_descriptor_13);
  }
}

void sub_25213CC54()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141F8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v64);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] searching for expected audio route", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v63 = [objc_opt_self() sharedInstance];
  v10 = [v63 currentRoute];
  v11 = [v10 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v12 = sub_252141CDC();

  if (v12 >> 62)
  {
    v13 = sub_25214232C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 < 1)
  {
    v26 = sub_25214196C();
    v27 = sub_252141F8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136446210;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, &v64);

      *(v28 + 4) = v32;
      v33 = "[%{public}s] searching - session has no outputs";
LABEL_19:
      _os_log_impl(&dword_25207E000, v26, v27, v33, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v28, -1, -1);
    }

LABEL_20:

    goto LABEL_21;
  }

  v14 = sub_25213A350();
  if (!*(v14 + 16))
  {

    v26 = sub_25214196C();
    v27 = sub_252141F8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136446210;
      v34 = sub_2521425DC();
      v36 = sub_2520A5448(v34, v35, &v64);

      *(v28 + 4) = v36;
      v33 = "[%{public}s] searching - session has no output names";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v15 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice;
  v16 = *(v1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_capturedDevice);
  if (v16)
  {
    v17 = v16;
    v18 = sub_25213AC44();

    if (*(v18 + 2))
    {

      v20 = *(sub_25213DA14(v19, v14) + 16);
      v21 = *(v14 + 16);

      v22 = *(v1 + v15);
      if (v22)
      {
        v23 = *(v22 + OBJC_IVAR____TtC11HearingTestP33_E1CF8936D0F3BEC6A29D15D29986B99914CapturedDevice_capturedPorts);
        if (v23 >> 62)
        {
          v24 = sub_25214232C();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v20 == v24;
      }

      else
      {
        v25 = v20 == 0;
      }

      v47 = v25;
      if (v20 == v21 && (v47 & 1) != 0)
      {
        v48 = 1;
        v49 = 0xE800000000000000;
        v50 = 0x676E69686374616DLL;
      }

      else
      {
        v48 = 0;
        v49 = 0xEC000000474E4948;
        v50 = 0x4354414D20544F4ELL;
      }

      v51 = sub_25214196C();
      v52 = sub_252141F8C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v64 = v62;
        *v53 = 136446978;
        v54 = sub_2521425DC();
        v61 = v50;
        v56 = v48;
        v57 = sub_2520A5448(v54, v55, &v64);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2048;
        v58 = *(v18 + 2);

        *(v53 + 14) = v58;

        *(v53 + 22) = 2048;
        v59 = *(v14 + 16);

        *(v53 + 24) = v59;

        *(v53 + 32) = 2080;
        v60 = sub_2520A5448(v61, v49, &v64);

        *(v53 + 34) = v60;
        _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] searching - expected %ld ports, session port count: %ld - port name sets are %s", v53, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v62, -1, -1);
        MEMORY[0x253099FD0](v53, -1, -1);

        if (v56)
        {
          goto LABEL_42;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if (v48)
        {
LABEL_42:
          v37 = &unk_286458610;
          v38 = &block_descriptor_10;
          v39 = sub_25213E7D0;
          goto LABEL_22;
        }
      }

LABEL_21:
      v37 = &unk_286458660;
      v38 = &block_descriptor_13;
      v39 = sub_252140D74;
LABEL_22:
      sub_25213C0AC(v37, v39, v38);
      goto LABEL_27;
    }
  }

  v40 = sub_25214196C();
  v41 = sub_252141F8C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v64 = v43;
    *v42 = 136446210;
    v44 = sub_2521425DC();
    v46 = sub_2520A5448(v44, v45, &v64);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] searching - expected port name list is empty", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v42, -1, -1);
  }

LABEL_27:
}

void sub_25213D49C(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted;
  if (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    oslog = sub_25214196C();
    v4 = sub_252141F8C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136446210;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25207E000, oslog, v4, "[%{public}s] lost route - but it was already lost previously", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    v12 = sub_25214196C();
    v13 = sub_252141F8C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] lost route", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    *(a1 + v2) = 1;
    (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler))(1);
  }
}

void sub_25213D758(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted;
  if (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_isInterrupted) == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141F8C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] found route", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    *(a1 + v2) = 0;
    (*(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_externalInterruptionHandler))(0);
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v12 = sub_25214198C();
    __swift_project_value_buffer(v12, qword_27F4CDE68);
    oslog = sub_25214196C();
    v13 = sub_252141F8C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25207E000, oslog, v13, "[%{public}s] found route - but it was already found previously", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }
  }
}

uint64_t sub_25213DA14(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_25213ECFC(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_25213DB18(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v63 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v64 = sub_2521417FC();
  isa = v64[-1].isa;
  MEMORY[0x28223BE20](v64);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  if (qword_27F4CD7E0 != -1)
  {
    swift_once();
  }

  v11 = qword_27F4CEA28;
  v12 = sub_252141B6C();
  v13 = sub_252141B6C();
  v14 = [v11 pathForResource:v12 ofType:v13];

  if (v14)
  {
    sub_252141B9C();

    sub_2521417CC();

    v15 = [objc_opt_self() sharedInstance];
    v65[0] = 0;
    v16 = [v15 setActive:1 error:v65];
    v17 = v65[0];
    if (v16 && (v18 = *MEMORY[0x277CB8030], v65[0] = 0, v19 = v17, v20 = [v15 setCategory:v18 error:v65], v17 = v65[0], v20) && (v21 = *MEMORY[0x277CB80C0], v65[0] = 0, v22 = v17, v23 = objc_msgSend(v15, sel_setMode_error_, v21, v65), v17 = v65[0], v23))
    {
      (*(isa + 2))(v7, v10, v64);
      objc_allocWithZone(MEMORY[0x277CB83D0]);
      v24 = v17;
      v25 = sub_25213E4CC(v7);
      v48 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player;
      v49 = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player);
      *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player) = v25;

      v50 = *(a1 + v48);
      if (v50)
      {
        [v50 setVolume_];
        v51 = *(a1 + v48);
        if (v51)
        {
          [v51 setNumberOfLoops_];
          v52 = *(a1 + v48);
          if (v52)
          {
            [v52 prepareToPlay];
            v53 = *(a1 + v48);
            if (v53)
            {
              [v53 play];
            }
          }
        }
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v54 = sub_25214198C();
      __swift_project_value_buffer(v54, qword_27F4CDE68);
      v55 = sub_25214196C();
      v56 = sub_252141F8C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v65[0] = v58;
        *v57 = 136446210;
        v59 = sub_2521425DC();
        v61 = sub_2520A5448(v59, v60, v65);

        *(v57 + 4) = v61;
        _os_log_impl(&dword_25207E000, v55, v56, "[%{public}s] player playing", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x253099FD0](v58, -1, -1);
        MEMORY[0x253099FD0](v57, -1, -1);
      }

      v63();
    }

    else
    {
      v26 = v17;
      v27 = sub_25214178C();

      swift_willThrow();
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v28 = sub_25214198C();
      __swift_project_value_buffer(v28, qword_27F4CDE68);
      v29 = v27;
      v30 = sub_25214196C();
      v31 = sub_252141FAC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65[0] = v33;
        *v32 = 136446466;
        v34 = sub_2521425DC();
        v36 = sub_2520A5448(v34, v35, v65);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        swift_getErrorValue();
        v37 = sub_2521424DC();
        v39 = sub_2520A5448(v37, v38, v65);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] setupPlayer failed to start player! %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v33, -1, -1);
        MEMORY[0x253099FD0](v32, -1, -1);
      }

      else
      {
      }
    }

    (*(isa + 1))(v10, v64);
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v40 = sub_25214198C();
    __swift_project_value_buffer(v40, qword_27F4CDE68);
    v64 = sub_25214196C();
    v41 = sub_252141FAC();
    if (os_log_type_enabled(v64, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65[0] = v43;
      *v42 = 136446210;
      v44 = sub_2521425DC();
      v46 = sub_2520A5448(v44, v45, v65);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25207E000, v64, v41, "[%{public}s] no file found to play", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x253099FD0](v43, -1, -1);
      MEMORY[0x253099FD0](v42, -1, -1);
    }

    else
    {
      v47 = v64;
    }
  }
}

id sub_25213E2C8(uint64_t a1, uint64_t a2)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141F8C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] stop playing", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player;
  result = *(a1 + OBJC_IVAR____TtC11HearingTest30HTAudioRouteRequirementManager_player);
  if (result)
  {
    result = [result isPlaying];
    if (result)
    {
      result = *(a1 + v11);
      if (result)
      {

        return [result stop];
      }
    }
  }

  return result;
}

id sub_25213E4CC(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2521417DC();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2521417FC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_25214178C();

    swift_willThrow();
    v11 = sub_2521417FC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_25213E618@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25213E648(uint64_t a1, uint64_t a2)
{
  sub_25214255C();
  sub_252141BEC();
  v4 = sub_25214258C();

  return sub_25213E838(a1, a2, v4);
}

unint64_t sub_25213E6C0(double a1)
{
  v2 = sub_25214254C();

  return sub_25213E8F0(v2, a1);
}

unint64_t sub_25213E70C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2530996D0](*(v1 + 40), a1, 4);

  return sub_25213E958(v2, v3);
}

unint64_t sub_25213E754(uint64_t a1)
{
  v2 = sub_2521421BC();

  return sub_25213E9C4(a1, v2);
}

uint64_t sub_25213E798()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_25213E7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25213E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25214247C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25213E8F0(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25213E958(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25213E9C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252140D7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253099360](v9, a1);
      sub_2520E42D8(v9);
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

uint64_t sub_25213EA8C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_25214254C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_25213F93C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25213EB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25214255C();
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_252141BEC();
  v8 = sub_25214258C();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_2520CB768(*(v5 + 48) + 40 * v10, v19);
      if (v19[3] == v6 && v19[4] == v7)
      {
        break;
      }

      v13 = sub_25214247C();
      sub_2520CB7D8(v19);
      if (v13)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2520CB7D8(v19);
LABEL_11:
    sub_2520CB7D8(a2);
    sub_2520CB768(*(v5 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2520CB768(a2, v19);
    v18 = *v3;
    sub_25213FA68(v19, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v18;
    sub_2520CB7A0(a2, a1);
    return 1;
  }
}

uint64_t sub_25213ECFC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25214255C();
  sub_252141BEC();
  v8 = sub_25214258C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25214247C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    sub_25213FC18(a2, a3, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25213EE4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25214255C();
  v6 = a2[4];
  v7 = a2[5];
  sub_252141BEC();
  MEMORY[0x253099700](a2[2]);
  v8 = sub_25214258C();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_25212CB84(*(v5 + 48) + 48 * v10, v19);
      if (v19[4] == v6 && v19[5] == v7)
      {
        break;
      }

      v13 = sub_25214247C();
      sub_25212CBF4(v19);
      if (v13)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_25212CBF4(v19);
LABEL_11:
    sub_25212CBF4(a2);
    sub_25212CB84(*(v5 + 48) + 48 * v10, a1);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25212CB84(a2, v19);
    v18 = *v3;
    sub_25213FD98(v19, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v18;
    sub_25212CBBC(a2, a1);
    return 1;
  }
}

uint64_t sub_25213EFD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  result = sub_2521421FC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_25214254C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25213F208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  result = sub_2521421FC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      sub_2520CB7A0(*(v3 + 48) + 40 * (v14 | (v6 << 6)), v25);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = sub_2520CB7A0(v25, *(v5 + 48) + 40 * v13);
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25213F46C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  result = sub_2521421FC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25213F6CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  result = sub_2521421FC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      sub_25212CBBC(*(v3 + 48) + 48 * (v14 | (v6 << 6)), v25);
      sub_25214255C();
      sub_252141BEC();
      MEMORY[0x253099700](v26);
      result = sub_25214258C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = sub_25212CBBC(v25, *(v5 + 48) + 48 * v13);
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25213F93C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_25213EFD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_25213FF54();
      result = v7;
      goto LABEL_12;
    }

    sub_2521404C8(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_25214254C();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

uint64_t sub_25213FA68(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25213F208(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_252140094();
      goto LABEL_16;
    }

    sub_2521406C8(v8 + 1);
  }

  v10 = *v4;
  sub_25214255C();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_252141BEC();
  v13 = sub_25214258C();
  v14 = -1 << *(v10 + 32);
  a2 = v13 & ~v14;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      sub_2520CB768(*(v10 + 48) + 40 * a2, v23);
      if (v23[3] == v11 && v23[4] == v12)
      {
        goto LABEL_19;
      }

      v17 = sub_25214247C();
      sub_2520CB7D8(v23);
      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2520CB7A0(a1, *(v18 + 48) + 40 * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_2520CB7D8(v23);
LABEL_20:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

void sub_25213FC18(uint64_t result, uint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25213F46C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_252140200();
      goto LABEL_16;
    }

    sub_2521408FC(v9 + 1);
  }

  v11 = *v5;
  sub_25214255C();
  sub_252141BEC();
  v12 = sub_25214258C();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 16 * a3);
      v16 = *v15 == result && v15[1] == a2;
      if (v16 || (sub_25214247C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v17 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = result;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2521424BC();
  __break(1u);
}

uint64_t sub_25213FD98(void *a1, unint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25213F6CC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_25214035C();
      goto LABEL_16;
    }

    sub_252140B34(v8 + 1);
  }

  v10 = *v4;
  sub_25214255C();
  v11 = a1[4];
  v12 = a1[5];
  sub_252141BEC();
  MEMORY[0x253099700](a1[2]);
  v13 = sub_25214258C();
  v14 = -1 << *(v10 + 32);
  a2 = v13 & ~v14;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      sub_25212CB84(*(v10 + 48) + 48 * a2, v23);
      if (v23[4] == v11 && v23[5] == v12)
      {
        goto LABEL_19;
      }

      v17 = sub_25214247C();
      sub_25212CBF4(v23);
      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25212CBBC(a1, *(v18 + 48) + 48 * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_25212CBF4(v23);
LABEL_20:
  result = sub_2521424BC();
  __break(1u);
  return result;
}

void *sub_25213FF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  v2 = *v0;
  v3 = sub_2521421EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_252140094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  v2 = *v0;
  v3 = sub_2521421EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_2520CB768(*(v2 + 48) + v17, v18);
        result = sub_2520CB7A0(v18, *(v4 + 48) + v17);
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

  return result;
}

void sub_252140200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  v2 = *v0;
  v3 = sub_2521421EC();
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

void *sub_25214035C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  v2 = *v0;
  v3 = sub_2521421EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 48 * (v14 | (v8 << 6));
        sub_25212CB84(*(v2 + 48) + v17, v18);
        result = sub_25212CBBC(v18, *(v4 + 48) + v17);
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

  return result;
}

uint64_t sub_2521404C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA78, &unk_252148180);
  result = sub_2521421FC();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_25214254C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2521406C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA70, &qword_252148178);
  result = sub_2521421FC();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_2520CB768(*(v3 + 48) + 40 * (v13 | (v6 << 6)), v23);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = sub_2520CB7A0(v23, *(v5 + 48) + 40 * v12);
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  return result;
}

uint64_t sub_2521408FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA60, "&x");
  result = sub_2521421FC();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25214255C();

      sub_252141BEC();
      result = sub_25214258C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_252140B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CEA68, "(x");
  result = sub_2521421FC();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_25212CB84(*(v3 + 48) + 48 * (v13 | (v6 << 6)), v23);
      sub_25214255C();
      sub_252141BEC();
      MEMORY[0x253099700](v24);
      result = sub_25214258C();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = sub_25212CBBC(v23, *(v5 + 48) + 48 * v12);
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  return result;
}

uint64_t sub_252140DD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252140E20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t MockHTRequirementStatusEventType.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

unint64_t sub_252140FCC()
{
  result = qword_27F4CEA80;
  if (!qword_27F4CEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CEA80);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MockHTRequirementStatusEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[12])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MockHTRequirementStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_252141120(void *a1)
{
  swift_allocObject();
  sub_252141220(a1, v2);
  v4 = v3;

  return v4;
}

uint64_t sub_252141168()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_252141198()
{
  HTRequirementStatusManager.deinit();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_252141220(void *a1, double a2)
{
  v3 = v2;
  v5 = sub_252141A1C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v31 - v8);
  v10 = sub_252141ABC();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25214205C();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252141A5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  *(v2 + 392) = MEMORY[0x277D84F90];
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
    (*(v16 + 104))(v18, *MEMORY[0x277D851C8], v15);
    v21 = sub_25214203C();
    (*(v16 + 8))(v18, v15);
    v20 = v21;
  }

  *(v3 + 408) = 0;
  *(v3 + 416) = 1;
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  v38 = v19;
  sub_2521416A4(v22);
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520A2F1C(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98, MEMORY[0x277D83970]);
  sub_25214218C();
  v24 = sub_25214206C();

  (*(v31 + 8))(v14, v12);
  *(v3 + 400) = v24;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = v32;
  sub_252141AAC();
  *v9 = 1000;
  v28 = v36;
  v27 = v37;
  (*(v36 + 104))(v9, *MEMORY[0x277D85178], v37);
  v29 = v35;
  sub_2520A4C7C(v35);
  MEMORY[0x253099290](v26, v9, v29, ObjectType);

  swift_unknownObjectRelease();
  v30 = *(v28 + 8);
  v30(v29, v27);
  v30(v9, v27);
  (*(v33 + 8))(v26, v34);
  HTRequirementStatusManager.init(_:)(0);
}

unint64_t sub_2521416A4(double a1)
{
  result = qword_27F4CEB00;
  if (!qword_27F4CEB00)
  {
    sub_25214205C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CEB00);
  }

  return result;
}