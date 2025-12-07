uint64_t sub_22D784644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = v28 - v3;
  v32 = type metadata accessor for AlarmReport(0);
  v4 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  swift_beginAccess();
  result = *(v1 + 112);
  v13 = *(result + 16);
  if (v13)
  {
    v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = result + v30;
    v15 = *(v4 + 72);
    v28[1] = result;
    sub_22D81A398();
    v29 = v11;
    while (1)
    {
      sub_22D77FDE0(v14, v11, type metadata accessor for AlarmReport);
      sub_22D77FDE0(v11, v9, type metadata accessor for AlarmReport);
      v16 = v33;
      sub_22D81A8B8();
      v17 = sub_22D81A8C8();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      v18 = sub_22D77FD70(v16, &v9[*(v32 + 60)]);
      v19 = *(v1 + 112);
      MEMORY[0x28223BE20](v18);
      v28[-2] = v9;
      sub_22D81A398();
      v20 = sub_22D774900(sub_22D7863BC, &v28[-4], v19);
      v22 = v21;

      if (v22)
      {
        sub_22D77FDE0(v9, v31, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v23 = *(v1 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_22D7ED5C8(0, v23[2] + 1, 1, v23);
          *(v1 + 112) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_22D7ED5C8((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        sub_22D785624(v31, v23 + v30 + v26 * v15, type metadata accessor for AlarmReport);
        *(v1 + 112) = v23;
      }

      else
      {
        swift_beginAccess();
        v27 = *(v1 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v27;
        if (result)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v27);
          v27 = result;
          *(v1 + 112) = result;
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v20 >= v27[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v9, v27 + v30 + v20 * v15);
        *(v1 + 112) = v27;
      }

      swift_endAccess();
      sub_22D81A198();
      sub_22D77670C(v9);

      v11 = v29;
      sub_22D77FE48(v29, type metadata accessor for AlarmReport);
      sub_22D77FE48(v9, type metadata accessor for AlarmReport);
      v14 += v15;
      if (!--v13)
      {
      }
    }
  }

  return result;
}

void sub_22D784A84(uint64_t a1)
{
  v2 = type metadata accessor for AlarmReport(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  if (qword_280CD1860 != -1)
  {
    swift_once();
  }

  v8 = sub_22D81ACA8();
  __swift_project_value_buffer(v8, qword_280CD5700);
  sub_22D77FDE0(a1, v7, type metadata accessor for AlarmReport);
  v9 = sub_22D81AC88();
  v10 = sub_22D81B618();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    sub_22D77FDE0(v7, v5, type metadata accessor for AlarmReport);
    sub_22D77FE48(v7, type metadata accessor for AlarmReport);
    v13 = sub_22D777994();
    v15 = v14;
    sub_22D77FE48(v5, type metadata accessor for AlarmReport);
    v16 = sub_22D7D7C10(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_22D741000, v9, v10, "Local Alarm Report: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2318D2D80](v12, -1, -1);
    MEMORY[0x2318D2D80](v11, -1, -1);
  }

  else
  {
    sub_22D77FE48(v7, type metadata accessor for AlarmReport);
  }
}

uint64_t sub_22D784CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000022D827FD0 == a2;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022D827FF0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446465726966 && a2 == 0xE900000000000065 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D829B00 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022D828030 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022D828050 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463416576696CLL && a2 == 0xEE00644979746976 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022D828080 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D8280A0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022D8280C0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022D8280E0 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022D828100 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E656449656E6F74 && a2 == 0xEE00726569666974 || (sub_22D81BB08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x616C50646E756F73 && a2 == 0xEF65746144646579 || (sub_22D81BB08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7065526F69647561 && a2 == 0xEF6449726574726FLL || (sub_22D81BB08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D828140 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xED00006574614464 || (sub_22D81BB08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7065656C537369 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69727265764F7369 && a2 == 0xEA00000000006564 || (sub_22D81BB08() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656C69537369 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x616964654D7369 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x744164656B636F6CLL && a2 == 0xEC00000065726946 || (sub_22D81BB08() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x736E7265636E6F63 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D829B20 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 24;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_22D7854B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D81BB28();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22D78550C(uint64_t a1)
{
  if (a1 <= 1005)
  {
    if (a1 <= 1002)
    {
      switch(a1)
      {
        case -1:
          return 0;
        case 1001:
          return 1;
        case 1002:
          return 2;
      }

      return 13;
    }

    if (a1 == 1003)
    {
      return 3;
    }

    else if (a1 == 1004)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (a1 > 1008)
    {
      if (a1 <= 1010)
      {
        if (a1 == 1009)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }

      if (a1 == 1011)
      {
        return 11;
      }

      if (a1 == 1012)
      {
        return 12;
      }

      return 13;
    }

    if (a1 == 1006)
    {
      return 6;
    }

    else if (a1 == 1007)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22D785624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D78568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmReport(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7856F0()
{
  v1 = *(type metadata accessor for AlarmReport(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22D776ABC(v2, v3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroy_39Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22D785844(uint64_t a1)
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
  v11[1] = sub_22D744B0C;

  return sub_22D76F69C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_22D81A8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_22D81A8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D785B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmReport(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_47Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D785C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D775CF4(a1, v4, v5, v6);
}

uint64_t sub_22D785D08(uint64_t a1)
{
  v4 = *(type metadata accessor for AlarmReport(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D776B4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22D785E08(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_22D785F28()
{
  result = qword_280CD1520;
  if (!qword_280CD1520)
  {
    sub_22D759CA0(255, &qword_280CD2D60, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1520);
  }

  return result;
}

uint64_t sub_22D785F90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);

  return sub_22D781A74(a1);
}

uint64_t getEnumTagSinglePayload for AlarmReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmReport.AlarmCaKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmReport.AlarmCaKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D7862B4()
{
  result = qword_27DA02478;
  if (!qword_27DA02478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02478);
  }

  return result;
}

unint64_t sub_22D78630C()
{
  result = qword_27DA02480;
  if (!qword_27DA02480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02480);
  }

  return result;
}

unint64_t sub_22D786364()
{
  result = qword_27DA02488;
  if (!qword_27DA02488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02488);
  }

  return result;
}

uint64_t sub_22D7863E4()
{
  type metadata accessor for WatchActivityManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x800000022D829B90;
  v1 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  if (qword_27DA019C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22D81ACA8();
  v3 = __swift_project_value_buffer(v2, qword_27DA0D328);
  result = (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  qword_27DA02490 = v0;
  return result;
}

uint64_t static WatchActivityManager.shared.getter()
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22D81A198();
}

uint64_t static WatchActivityManager.shared.setter(uint64_t a1)
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DA02490 = a1;
}

uint64_t (*static WatchActivityManager.shared.modify(uint64_t a1))(void)
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22D786648@<X0>(void *a1@<X8>)
{
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DA02490;
  return sub_22D81A198();
}

uint64_t sub_22D7866C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DA019C0;
  sub_22D81A198();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DA02490 = v1;
}

uint64_t WatchActivityManager.deinit()
{

  v1 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  v2 = sub_22D81ACA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WatchActivityManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18MobileTimerSupport20WatchActivityManager_logger;
  v2 = sub_22D81ACA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WatchActivityManager(uint64_t a1)
{
  result = qword_27DA02498;
  if (!qword_27DA02498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D7868B0(uint64_t a1)
{
  result = sub_22D81ACA8();
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

uint64_t sub_22D7869AC()
{
  v0 = sub_22D81ACA8();
  __swift_allocate_value_buffer(v0, qword_27DA0D328);
  __swift_project_value_buffer(v0, qword_27DA0D328);
  return sub_22D81AC98();
}

uint64_t sub_22D786A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02588, &qword_22D820FA8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = sub_22D81A1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02590, &qword_22D820FB0);
  MEMORY[0x28223BE20](v8);
  sub_22D76C23C();
  sub_22D81A248();
  sub_22D81A238();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_22D81A218();
  (*(v5 + 8))(v7, v4);
  sub_22D81A238();
  sub_22D81A258();
  v9 = sub_22D81A1C8();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_22D81A208();
  v11 = sub_22D81A1C8();
  v10(v3, v0);
  sub_22D81A208();
  v12 = sub_22D81A1C8();
  v10(v3, v0);
  sub_22D81A208();
  v13 = sub_22D81A1C8();
  v10(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02598, qword_22D820FB8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22D820D00;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  v15 = sub_22D81A1B8();

  return v15;
}

uint64_t sub_22D786DF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02570, &qword_22D820F90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = sub_22D81A1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02578, &qword_22D820F98);
  MEMORY[0x28223BE20](v8);
  sub_22D7663DC();
  sub_22D81A248();
  sub_22D81A238();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_22D81A218();
  (*(v5 + 8))(v7, v4);
  sub_22D81A238();
  sub_22D81A258();
  v9 = sub_22D81A1C8();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_22D81A208();
  v11 = sub_22D81A1C8();
  v10(v3, v0);
  sub_22D81A208();
  v12 = sub_22D81A1C8();
  v10(v3, v0);
  sub_22D81A208();
  v13 = sub_22D81A1C8();
  v10(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02580, &qword_22D820FA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22D820D00;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  v15 = sub_22D81A1B8();

  return v15;
}

uint64_t sub_22D7871C0()
{
  v16 = sub_22D81A1A8();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02558, &qword_22D820F78);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02560, &qword_22D820F80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_22D758764();
  sub_22D81A208();
  v17 = sub_22D81A1C8();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_22D81A248();
  sub_22D81A238();
  v9 = v16;
  (*(v0 + 104))(v2, *MEMORY[0x277CB9F50], v16);
  sub_22D81A218();
  (*(v0 + 8))(v2, v9);
  sub_22D81A238();
  sub_22D81A258();
  v10 = sub_22D81A1C8();
  v8(v7, v4);
  sub_22D81A208();
  v11 = sub_22D81A1C8();
  v8(v7, v4);
  sub_22D81A208();
  v12 = sub_22D81A1C8();
  v8(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02568, &qword_22D820F88);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22D820D00;
  *(v13 + 32) = v17;
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  *(v13 + 56) = v12;
  v14 = sub_22D81A1B8();

  return v14;
}

uint64_t sub_22D787594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02540, &qword_22D820F60);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = sub_22D81A1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02548, &qword_22D820F68);
  MEMORY[0x28223BE20](v8);
  sub_22D75B7E0();
  sub_22D81A248();
  sub_22D81A238();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_22D81A218();
  (*(v5 + 8))(v7, v4);
  sub_22D81A238();
  sub_22D81A258();
  v18 = sub_22D81A1C8();
  v9 = *(v1 + 8);
  v9(v3, v0);
  sub_22D81A208();
  v10 = sub_22D81A1C8();
  v9(v3, v0);
  sub_22D81A208();
  v11 = sub_22D81A1C8();
  v9(v3, v0);
  sub_22D81A208();
  v12 = sub_22D81A1C8();
  v9(v3, v0);
  sub_22D81A208();
  v13 = sub_22D81A1C8();
  v9(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02550, &qword_22D820F70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22D81E6C0;
  *(v14 + 32) = v18;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;
  v15 = sub_22D81A1B8();

  return v15;
}

uint64_t sub_22D7879A8()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787A2C()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787AB0()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787B34()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D787BC0(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02528, &qword_22D820F20);
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02530, &qword_22D820F28);
  MEMORY[0x28223BE20](v4);
  sub_22D767470();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v13 = sub_22D78A554();
  v19 = a1;
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v17 = sub_22D81A1C8();
  v14 = *(v20 + 8);
  v20 += 8;
  v5 = v18;
  v14(v3, v18);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v16 = sub_22D81A1C8();
  v6 = v14;
  v14(v3, v5);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v15 = sub_22D81A1C8();
  v7 = v18;
  v6(v3, v18);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v8 = sub_22D81A1C8();
  v6(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02538, &qword_22D820F58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D820D00;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  *(v9 + 48) = v15;
  *(v9 + 56) = v8;
  v11 = sub_22D81A1B8();

  return v11;
}

uint64_t sub_22D7880CC(uint64_t a1)
{
  v28 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02510, &qword_22D820EE0);
  v35 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = &v22 - v1;
  v3 = sub_22D81A1A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02518, &qword_22D820EE8);
  MEMORY[0x28223BE20](v7);
  sub_22D75AD9C();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v27 = sub_22D78A554();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  LODWORD(v34) = *MEMORY[0x277CB9F50];
  v8 = *(v4 + 104);
  v32 = v4 + 104;
  v33 = v8;
  v26 = v3;
  v8(v6);
  sub_22D81A218();
  v9 = *(v4 + 8);
  v30 = v4 + 8;
  v31 = v9;
  v9(v6, v3);
  sub_22D81A238();
  v25 = v2;
  sub_22D81A258();
  v24 = sub_22D81A1C8();
  v10 = *(v35 + 8);
  v35 += 8;
  v29 = v10;
  v11 = v22;
  v10(v2, v22);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v12 = v26;
  v33(v6, v34, v26);
  sub_22D81A218();
  v31(v6, v12);
  sub_22D81A238();
  v13 = v25;
  sub_22D81A258();
  v23 = sub_22D81A1C8();
  v29(v13, v11);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v14 = v26;
  v33(v6, v34, v26);
  sub_22D81A218();
  v31(v6, v14);
  sub_22D81A238();
  v15 = v25;
  sub_22D81A258();
  v34 = sub_22D81A1C8();
  v16 = v29;
  v29(v15, v11);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v17 = sub_22D81A1C8();
  v16(v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02520, &qword_22D820F18);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22D820D00;
  v19 = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v19;
  *(v18 + 48) = v34;
  *(v18 + 56) = v17;
  v20 = sub_22D81A1B8();

  return v20;
}

uint64_t sub_22D788768(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22D81A398();
  sub_22D81A198();
  return sub_22D81A0C8();
}

uint64_t sub_22D7887B8(uint64_t a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024E0, &qword_22D820E98);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  MEMORY[0x28223BE20](v1);
  v32 = &v22 - v3;
  v4 = sub_22D81A1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024E8, &qword_22D820EA0);
  MEMORY[0x28223BE20](v8);
  v27 = sub_22D764E84();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v28 = sub_22D78A4D0();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v10 = *(v5 + 104);
  v33 = *MEMORY[0x277CB9F50];
  v9 = v33;
  v10(v7, v33, v4);
  v26 = v5 + 104;
  sub_22D81A218();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v35 = v11;
  v30 = v5 + 8;
  sub_22D81A238();
  v10(v7, v9, v4);
  v31 = v10;
  sub_22D81A218();
  v11(v7, v4);
  sub_22D81A238();
  v12 = v32;
  sub_22D81A258();
  v25 = sub_22D81A1C8();
  v13 = *(v37 + 8);
  v37 += 8;
  v34 = v13;
  v13(v12, v36);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v22 = v4;
  v10(v7, v33, v4);
  sub_22D81A218();
  v35(v7, v4);
  sub_22D81A238();
  v14 = v32;
  sub_22D81A258();
  v24 = sub_22D81A1C8();
  v34(v14, v36);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v15 = v22;
  v31(v7, v33, v22);
  sub_22D81A218();
  v35(v7, v15);
  sub_22D81A238();
  v16 = v32;
  sub_22D81A258();
  v23 = sub_22D81A1C8();
  v34(v16, v36);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v31(v7, v33, v15);
  sub_22D81A218();
  v35(v7, v15);
  sub_22D81A238();
  sub_22D81A258();
  v17 = sub_22D81A1C8();
  v34(v16, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02508, &qword_22D820ED8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22D820D00;
  v19 = v24;
  *(v18 + 32) = v25;
  *(v18 + 40) = v19;
  *(v18 + 48) = v23;
  *(v18 + 56) = v17;
  v20 = sub_22D81A1B8();

  return v20;
}

uint64_t sub_22D788F30()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D788FB4()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D789038()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D7890C4(uint64_t a1)
{
  v26 = a1;
  v30 = sub_22D81A1A8();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024C0, &qword_22D820E58);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024C8, &qword_22D820E60);
  MEMORY[0x28223BE20](v6);
  sub_22D757BF8();
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  v25 = sub_22D78A47C();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  sub_22D81A258();
  v23 = sub_22D81A1C8();
  v32 = *(v3 + 8);
  v34 = v3 + 8;
  v7 = v33;
  v32(v5, v33);
  sub_22D81A248();
  sub_22D81A238();
  v31 = *MEMORY[0x277CB9F50];
  v8 = *(v1 + 104);
  v21[2] = v1 + 104;
  v29 = v8;
  v9 = v28;
  v10 = v30;
  v8(v28);
  sub_22D81A218();
  v27 = *(v1 + 8);
  v21[1] = v1 + 8;
  v27(v9, v10);
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v24 = v5;
  sub_22D81A258();
  v22 = sub_22D81A1C8();
  v32(v5, v7);
  sub_22D81A248();
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v11 = v28;
  v12 = v30;
  v29(v28, v31, v30);
  sub_22D81A218();
  v27(v11, v12);
  sub_22D81A238();
  v13 = v24;
  sub_22D81A258();
  v21[0] = sub_22D81A1C8();
  v14 = v32;
  v32(v13, v33);
  sub_22D81A248();
  sub_22D81A238();
  v29(v11, v31, v12);
  sub_22D81A218();
  v27(v11, v12);
  sub_22D81A238();
  swift_getKeyPath();
  sub_22D81A198();

  sub_22D81A228();

  sub_22D81A238();
  v15 = v24;
  sub_22D81A258();
  v16 = sub_22D81A1C8();
  v14(v15, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024D8, &qword_22D820E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22D820D00;
  v18 = v22;
  *(v17 + 32) = v23;
  *(v17 + 40) = v18;
  *(v17 + 48) = v21[0];
  *(v17 + 56) = v16;
  v19 = sub_22D81A1B8();

  return v19;
}

uint64_t sub_22D78975C()
{
  v0 = sub_22D81A1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B0, &qword_22D820E48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22D81DF60;
  *(v1 + 32) = v0;
  v2 = sub_22D81A1D8();

  return v2;
}

uint64_t sub_22D7897E8()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_22D7B7834();
  sub_22D757BF8();
  sub_22D81A298();
  v4 = sub_22D81A278();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22D81DF60;
  *(v5 + 32) = v4;
  v6 = sub_22D81A268();

  return v6;
}

uint64_t sub_22D78994C()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D757BF8();
  sub_22D81A178();
  v4 = sub_22D81A168();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22D81DF60;
  *(v5 + 32) = v4;
  v6 = sub_22D81A158();

  return v6;
}

uint64_t sub_22D789ABC()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D76C23C();
  sub_22D81A298();
  v4 = sub_22D81A278();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v13 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D7663DC();
  sub_22D81A298();
  v6 = sub_22D81A278();
  v5(v3, v0);
  v13 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D758764();
  sub_22D81A298();
  v7 = sub_22D81A278();
  v5(v3, v0);
  v13 = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  sub_22D75B7E0();
  sub_22D81A298();
  v8 = sub_22D81A278();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D820D00;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_22D81A268();

  return v10;
}

uint64_t sub_22D789DD0()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D76C23C();
  sub_22D81A178();
  v4 = sub_22D81A168();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_22D7663DC();
  sub_22D81A178();
  v6 = sub_22D81A168();
  v5(v3, v0);
  sub_22D758764();
  sub_22D81A178();
  v7 = sub_22D81A168();
  v5(v3, v0);
  sub_22D75B7E0();
  sub_22D81A178();
  v8 = sub_22D81A168();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D820D00;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_22D81A158();

  return v10;
}

uint64_t sub_22D78A020()
{
  v0 = sub_22D81A288();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D766ED4();
  sub_22D767470();
  sub_22D81A298();
  v4 = sub_22D81A278();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v12 = sub_22D75A7AC();
  sub_22D75AD9C();
  sub_22D81A298();
  v6 = sub_22D81A278();
  v5(v3, v0);
  v12 = sub_22D765454();
  sub_22D764E84();
  sub_22D81A298();
  v7 = sub_22D81A278();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024B8, &qword_22D820E50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22D81E100;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_22D81A268();

  return v9;
}

uint64_t sub_22D78A280()
{
  v0 = sub_22D81A188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D767470();
  sub_22D81A178();
  v4 = sub_22D81A168();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_22D75AD9C();
  sub_22D81A178();
  v6 = sub_22D81A168();
  v5(v3, v0);
  sub_22D764E84();
  sub_22D81A178();
  v7 = sub_22D81A168();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA024A8, &qword_22D820E40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22D81E100;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_22D81A158();

  return v9;
}

unint64_t sub_22D78A47C()
{
  result = qword_27DA024D0;
  if (!qword_27DA024D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA024D0);
  }

  return result;
}

unint64_t sub_22D78A4D0()
{
  result = qword_27DA024F0;
  if (!qword_27DA024F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA024F8, &qword_22D820ED0);
    sub_22D78A554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA024F0);
  }

  return result;
}

unint64_t sub_22D78A554()
{
  result = qword_27DA02500;
  if (!qword_27DA02500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02500);
  }

  return result;
}

__n128 keypath_get_8Tm@<Q0>(uint64_t a1@<X8>)
{
  sub_22D81A0B8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_22D78A5F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = objc_opt_self();
    v4 = a2;
    sub_22D81B838();

    sub_22D81A7A8();
    sub_22D78B25C();
    v5 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v5);

    MEMORY[0x2318D1A50](0x7265206874697720, 0xED0000203A726F72);
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v7 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v7);

    v8 = sub_22D81B2B8();

    [v3 logError_];
  }
}

void sub_22D78A760(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_22D81A198();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t static MTSUtilities.updateIfNeeded<A, B>(_:keypath:newValue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v6 = sub_22D81B718();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = *(v5 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  (*(v7 + 16))(v10, a3, v6);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v11 + 32))(v16, v10, v5);
  swift_getAtKeyPath();
  v18 = sub_22D81B1F8();
  v19 = *(v11 + 8);
  v19(v14, v5);
  if ((v18 & 1) == 0)
  {
    (*(v11 + 16))(v14, v16, v5);
    swift_setAtWritableKeyPath();
  }

  return (v19)(v16, v5);
}

uint64_t sub_22D78AABC()
{

  return swift_deallocClassInstance();
}

void sub_22D78AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_22D81A7A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_22D78B0EC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22D78B15C(v9);
    v16 = objc_opt_self();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_22D81B838();

    v44 = 0xD000000000000019;
    v45 = 0x800000022D829F70;
    sub_22D78B0EC(a1, v7);
    v17 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v17);

    v18 = sub_22D81B2B8();

    [v16 logError_];
  }

  else
  {
    v37 = *(v11 + 32);
    v38 = v11 + 32;
    v37(v15, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A8, &qword_22D821018);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D81E100;
    v44 = sub_22D81B2C8();
    v45 = v20;
    sub_22D81B7E8();
    v21 = MEMORY[0x277D839B0];
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    v44 = sub_22D81B2C8();
    v45 = v22;
    sub_22D81B7E8();
    *(inited + 168) = v21;
    *(inited + 144) = 1;
    v44 = sub_22D81B2C8();
    v45 = v23;
    sub_22D81B7E8();
    *(inited + 240) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v39 = v11;
    v25 = *(v11 + 16);
    v43 = v15;
    v25(boxed_opaque_existential_1, v15, v10);
    sub_22D8181F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025B0, &unk_22D821020);
    swift_arrayDestroy();
    v26 = sub_22D81B158();

    v27 = [objc_opt_self() optionsWithDictionary_];

    v28 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v28)
    {
      v29 = v28;
      v30 = sub_22D81B2B8();
      v31 = v40;
      v25(v40, v43, v10);
      v32 = v39;
      v33 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v34 = swift_allocObject();
      v37((v34 + v33), v31, v10);
      v48 = sub_22D78B1C4;
      v49 = v34;
      v44 = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_22D78A760;
      v47 = &block_descriptor_5;
      v35 = _Block_copy(&v44);

      [v29 openApplication:v30 withOptions:v27 completion:v35];
      _Block_release(v35);

      (*(v32 + 8))(v43, v10);
    }

    else
    {
      (*(v39 + 8))(v43, v10);
    }
  }
}

uint64_t sub_22D78B0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D78B15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA025A0, &qword_22D821010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22D78B1C4(uint64_t a1, void *a2)
{
  sub_22D81A7A8();

  sub_22D78A5F8(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D78B25C()
{
  result = qword_27DA025B8;
  if (!qword_27DA025B8)
  {
    sub_22D81A7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025B8);
  }

  return result;
}

uint64_t sub_22D78B2B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6B636F6C63;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE900000000000068;
    if (a1 == 2)
    {
      v5 = 0x63746177706F7473;
    }

    else
    {
      v5 = 0x72656D6974;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6D72616C61;
    }

    else
    {
      v5 = 0x6B636F6C63;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x63746177706F7473;
  v8 = 0xE900000000000068;
  if (a2 != 2)
  {
    v7 = 0x72656D6974;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6D72616C61;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22D81BB08();
  }

  return v11 & 1;
}

uint64_t sub_22D78B3E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796164697266;
  if (a1 != 5)
  {
    v5 = 0x7961647275746173;
    v4 = 0xE800000000000000;
  }

  v6 = 0x616473656E646577;
  v7 = 0xE900000000000079;
  if (a1 != 3)
  {
    v6 = 0x7961647372756874;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x79616473657574;
  if (a1 == 1)
  {
    v9 = 0x7961646E6F6DLL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7961646E7573;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x7961646E6F6DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x79616473657574)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x7961646E7573)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x796164697266)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE800000000000000;
    v14 = 0x647275746173;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = 0xE900000000000079;
      if (v11 != 0x616473656E646577)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE800000000000000;
    v14 = 0x647372756874;
  }

  if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
  {
LABEL_42:
    v15 = sub_22D81BB08();
    goto LABEL_43;
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

void sub_22D78B5EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v81 = a2;
  v2 = sub_22D81A708();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v73 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = &v57 - v5;
  v6 = sub_22D81A7A8();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v57 - v9;
  v10 = sub_22D81A748();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81A958();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_22D81A768();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for AlarmEntity(0);
  v65 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
  sub_22D81B228();
  sub_22D81A948();
  v18 = *MEMORY[0x277CC9110];
  v19 = v11 + 104;
  v20 = *(v11 + 104);
  v79 = v10;
  v80 = v19;
  v78 = v18;
  v20(v13, v18, v10);
  sub_22D81A778();
  v66 = sub_22D81A048();
  v21 = v81;
  *(v81 + v65) = v66;
  v64 = v17[6];
  v77 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02708, &qword_22D821778);
  sub_22D81B228();
  sub_22D81A948();
  v20(v13, v18, v10);
  sub_22D81A778();
  v65 = sub_22D81A038();
  *(v21 + v64) = v65;
  v64 = v17[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02710, &qword_22D821780);
  sub_22D81B228();
  sub_22D81A948();
  v22 = v78;
  v23 = v79;
  v20(v13, v78, v79);
  sub_22D81A778();
  v61 = sub_22D81A068();
  v24 = v81;
  *(v81 + v64) = v61;
  v25 = v77;
  v64 = v77[8];
  sub_22D81B228();
  sub_22D81A948();
  v20(v13, v22, v23);
  v76 = v20;
  sub_22D81A778();
  v60 = sub_22D81A068();
  *(v24 + v64) = v60;
  v63 = v25[9];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02718, &qword_22D821788);
  sub_22D81B228();
  sub_22D81A948();
  v27 = v22;
  v28 = v79;
  v20(v13, v22, v79);
  v29 = v13;
  sub_22D81A778();
  v64 = v26;
  v59 = sub_22D81A058();
  v30 = v81;
  *(v81 + v63) = v59;
  v31 = v77;
  v63 = v77[10];
  sub_22D81B228();
  sub_22D81A948();
  v62 = v29;
  v32 = v29;
  v33 = v76;
  v76(v32, v27, v28);
  sub_22D81A778();
  v58 = sub_22D81A058();
  *(v30 + v63) = v58;
  v34 = v31;
  v63 = v31[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02720, &qword_22D821790);
  sub_22D81B228();
  sub_22D81A948();
  v35 = v62;
  v36 = v79;
  v33(v62, v27, v79);
  sub_22D81A778();
  sub_22D7577FC();
  v57 = sub_22D81A018();
  v37 = v81;
  *(v81 + v63) = v57;
  v63 = v34[12];
  sub_22D81B228();
  sub_22D81A948();
  v38 = v27;
  v39 = v76;
  v76(v35, v38, v36);
  sub_22D81A778();
  v64 = sub_22D81A058();
  *(v37 + v63) = v64;
  v40 = v34[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02728, &qword_22D821798);
  sub_22D81B228();
  sub_22D81A948();
  v39(v35, v78, v36);
  sub_22D81A778();
  *(v37 + v40) = sub_22D81A028();
  v41 = v67;
  v42 = [v67 alarmID];
  sub_22D81A8F8();

  v43 = [v41 displayTitle];
  v44 = sub_22D81B2C8();
  v46 = v45;

  v82 = v44;
  v83 = v46;
  sub_22D819FF8();
  v47 = [v41 alarmURL];
  v48 = v68;
  sub_22D81A798();

  v49 = v70;
  v50 = v71;
  (*(v70 + 16))(v69, v48, v71);
  sub_22D819FF8();
  (*(v49 + 8))(v48, v50);
  v51 = [v41 dateComponents];
  v52 = v72;
  sub_22D81A628();

  v53 = v74;
  v54 = v75;
  (*(v74 + 16))(v73, v52, v75);
  sub_22D819FF8();
  (*(v53 + 8))(v52, v54);
  v55 = [v41 hour];
  if ((v55 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v82 = v55;
    sub_22D819FF8();
    v56 = [v41 minute];
    if ((v56 & 0x8000000000000000) == 0)
    {
      v82 = v56;
      sub_22D819FF8();
      LOBYTE(v82) = [v41 isEnabled];
      sub_22D819FF8();
      LOBYTE(v82) = [v41 repeats];
      sub_22D819FF8();
      v82 = sub_22D78E120([v41 repeatSchedule]);
      sub_22D819FF8();
      LOBYTE(v82) = [v41 allowsSnooze];
      sub_22D819FF8();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_22D78C1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22D81A768();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  sub_22D81B228();
  sub_22D81A948();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9110], v3);
  sub_22D81A778();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_22D81A488();
}

uint64_t sub_22D78C464()
{
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  return v1;
}

unint64_t sub_22D78C4E4()
{
  result = qword_27DA025C0;
  if (!qword_27DA025C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025C0);
  }

  return result;
}

uint64_t sub_22D78C544(uint64_t a1)
{
  sub_22D81B328();
}

unint64_t sub_22D78C64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22D793B74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22D78C67C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x796164697266;
  if (v3 != 5)
  {
    v5 = 0x7961647275746173;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE900000000000079;
  v7 = 0x616473656E646577;
  result = 0x7961647372756874;
  if (v3 != 3)
  {
    v7 = 0x7961647372756874;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = 0xE600000000000000;
  if (v3 != 1)
  {
    v2 = 0x79616473657574;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0x7961646E7573;
    v10 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11;
  return result;
}

unint64_t sub_22D78C750()
{
  result = qword_27DA025C8;
  if (!qword_27DA025C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025C8);
  }

  return result;
}

unint64_t sub_22D78C7A8()
{
  result = qword_27DA025D0;
  if (!qword_27DA025D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025D0);
  }

  return result;
}

unint64_t sub_22D78C800()
{
  result = qword_27DA025D8;
  if (!qword_27DA025D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025D8);
  }

  return result;
}

unint64_t sub_22D78C8AC()
{
  result = qword_27DA025E8;
  if (!qword_27DA025E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025E8);
  }

  return result;
}

unint64_t sub_22D78C900()
{
  result = qword_27DA025F0;
  if (!qword_27DA025F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025F0);
  }

  return result;
}

unint64_t sub_22D78C958()
{
  result = qword_27DA025F8;
  if (!qword_27DA025F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA025F8);
  }

  return result;
}

uint64_t sub_22D78CA00(uint64_t a1)
{
  v2 = sub_22D7577FC();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D78CA50()
{
  result = qword_27DA02600;
  if (!qword_27DA02600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02600);
  }

  return result;
}

unint64_t sub_22D78CAA8()
{
  result = qword_27DA02608;
  if (!qword_27DA02608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02608);
  }

  return result;
}

unint64_t sub_22D78CB00()
{
  result = qword_27DA02610;
  if (!qword_27DA02610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02610);
  }

  return result;
}

uint64_t sub_22D78CB58(uint64_t a1)
{
  v2 = sub_22D78C958();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t type metadata accessor for AlarmEntity(uint64_t a1)
{
  result = qword_27DA02698;
  if (!qword_27DA02698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D78CCC8()
{
  result = qword_27DA02630;
  if (!qword_27DA02630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02630);
  }

  return result;
}

uint64_t sub_22D78CD28()
{
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  return v1;
}

uint64_t sub_22D78CD98()
{
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  return v1;
}

uint64_t sub_22D78CE08()
{
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  return v1;
}

uint64_t sub_22D78CE78@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_22D81B218();
  v21 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22D81B288();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v19 - v4;
  v5 = sub_22D81A748();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22D81A768();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22D81B228();
  sub_22D81A948();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v19 = v6 + 104;
  v13(v8, v12, v5);
  sub_22D81A778();
  sub_22D81B278();
  sub_22D81B268();
  v14 = v21;
  v15 = v24;
  v16 = v26;
  (*(v21 + 104))(v24, *MEMORY[0x277CC9BD8], v26);
  sub_22D81B238();
  (*(v14 + 8))(v15, v16);
  sub_22D81B268();
  sub_22D81B298();
  sub_22D81A948();
  v13(v8, v12, v20);
  v17 = v25;
  sub_22D81A778();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_22D81A488();
}

uint64_t sub_22D78D2FC()
{
  v0 = sub_22D81A9C8();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x28223BE20](v0);
  v61 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22D81A9D8();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A998();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A708();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = sub_22D81A968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D81AA48();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v51 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v19 - 8);
  v53 = &v48 - v20;
  v55 = sub_22D81A8C8();
  v52 = *(v55 - 8);
  v21 = MEMORY[0x28223BE20](v55);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v48 = &v48 - v24;
  (*(v14 + 104))(v16, *MEMORY[0x277CC9830], v13);
  sub_22D81A978();
  (*(v14 + 8))(v16, v13);
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  sub_22D81A658();
  v25 = *(v7 + 8);
  v25(v12, v6);
  sub_22D819FE8();
  v26 = sub_22D81A6A8();
  LOBYTE(v13) = v27;
  v25(v10, v6);
  if (v13)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v49 = v23;
  v50 = v28;
  sub_22D81A7B8();
  v29 = v54;
  (*(v64 + 104))(v54, *MEMORY[0x277CC9878], v65);
  v31 = v58;
  v30 = v59;
  v32 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CC9900], v60);
  v34 = v61;
  v33 = v62;
  v35 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277CC98E8], v63);
  v36 = v53;
  v37 = v51;
  sub_22D81AA08();
  v38 = v52;
  (*(v33 + 8))(v34, v35);
  v39 = v32;
  v40 = v55;
  (*(v30 + 8))(v31, v39);
  (*(v64 + 8))(v29, v65);
  v41 = *(v38 + 8);
  v41(v49, v40);
  (*(v56 + 8))(v37, v57);
  if ((*(v38 + 48))(v36, 1, v40) == 1)
  {
    sub_22D764440(v36, &qword_27DA02000, &qword_22D81F160);
    return 0;
  }

  else
  {
    v43 = v48;
    (*(v38 + 32))(v48, v36, v40);
    v44 = objc_opt_self();
    v45 = sub_22D81A818();
    v46 = [v44 localizedStringFromDate:v45 dateStyle:0 timeStyle:1];

    v47 = sub_22D81B2C8();
    v41(v43, v40);
    return v47;
  }
}

uint64_t sub_22D78DA24()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D78DC18@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = v25 - v5;
  v25[0] = sub_22D81A768();
  v6 = *(v25[0] - 8);
  v7 = MEMORY[0x28223BE20](v25[0]);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25[1] = v25 - v10;
  v11 = sub_22D81B288();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  type metadata accessor for AlarmEntity(0);
  v26 = v1;
  sub_22D819FE8();
  v14 = v30;
  v13 = v31;
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_22D81A718();
  v18 = v17;

  if (v14 == v16 && v13 == v18)
  {
  }

  else
  {
    v19 = sub_22D81BB08();

    if ((v19 & 1) == 0)
    {
      sub_22D81B278();
      sub_22D81B268();
      sub_22D819FE8();
      sub_22D81B248();

      sub_22D81B268();
      sub_22D81A758();
      sub_22D81B278();
      sub_22D81B268();
      sub_22D78D2FC();
      sub_22D81B248();

      goto LABEL_7;
    }
  }

  sub_22D81B278();
  sub_22D81B268();
  sub_22D78D2FC();
  sub_22D81B248();

  sub_22D81B268();
  sub_22D81A758();
  sub_22D81B278();
LABEL_7:
  sub_22D81B268();
  sub_22D78DA24();
  v20 = v25[0];
  sub_22D81B258();
  (*(v6 + 8))(v9, v20);
  sub_22D81B268();
  v21 = v27;
  sub_22D81A758();
  (*(v6 + 56))(v21, 0, 1, v20);
  v22 = v28;
  sub_22D81A318();
  v23 = sub_22D81A328();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  return sub_22D81A338();
}

void *sub_22D78E120(char a1)
{
  if ((~a1 & 0x7F) == 0)
  {
    return &unk_2840D4E28;
  }

  v51 = MEMORY[0x277D84FA0];
  if ((~a1 & 0x1F) == 0)
  {
    sub_22D7D81C8(&v50, byte_2840D4E70);
    sub_22D7D81C8(&v50, byte_2840D4E71);
    sub_22D7D81C8(&v50, byte_2840D4E72);
    sub_22D7D81C8(&v50, byte_2840D4E73);
    sub_22D7D81C8(&v50, byte_2840D4E74);
  }

  if ((~a1 & 0x60) == 0)
  {
    sub_22D7D81C8(&v50, byte_2840D4E98);
    sub_22D7D81C8(&v50, byte_2840D4E99);
  }

  v3 = v51;
  if ((a1 & 1) == 0)
  {
LABEL_15:
    if ((a1 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  sub_22D81BBC8();
  sub_22D81B328();
  v4 = sub_22D81BC18();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    sub_22D7D8DD4(1, v6, isUniquelyReferenced_nonNull_native);
    v3 = v50;
    v51 = v50;
    goto LABEL_15;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) >= 2u || !*(*(v3 + 48) + v6))
  {
    v8 = sub_22D81BB08();

    if (v8)
    {
      goto LABEL_15;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((a1 & 2) != 0)
  {
LABEL_16:
    sub_22D81BBC8();
    sub_22D81B328();
    v10 = sub_22D81BC18();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    if ((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (*(*(v3 + 48) + v12) > 3u || *(*(v3 + 48) + v12) <= 1u || *(*(v3 + 48) + v12) == 3)
      {
        v14 = sub_22D81BB08();

        if (v14)
        {
          goto LABEL_26;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v3;
      sub_22D7D8DD4(2, v12, v15);
      v3 = v50;
      v51 = v50;
    }
  }

LABEL_26:
  if ((a1 & 4) == 0)
  {
    goto LABEL_34;
  }

  sub_22D81BBC8();
  sub_22D81B328();
  v16 = sub_22D81BC18();
  v17 = -1 << *(v3 + 32);
  v18 = v16 & ~v17;
  if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_33:
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    sub_22D7D8DD4(3, v18, v21);
    v3 = v50;
    v51 = v50;
LABEL_34:
    if ((a1 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

  v19 = ~v17;
  while (*(*(v3 + 48) + v18) != 3)
  {
    v20 = sub_22D81BB08();

    if (v20)
    {
      goto LABEL_34;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((a1 & 8) != 0)
  {
LABEL_35:
    sub_22D81BBC8();
    sub_22D81B328();
    v22 = sub_22D81BC18();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    if ((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      while (*(*(v3 + 48) + v24) <= 2u || *(*(v3 + 48) + v24) > 4u || *(*(v3 + 48) + v24) == 3)
      {
        v26 = sub_22D81BB08();

        if (v26)
        {
          goto LABEL_45;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
LABEL_44:
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v3;
      sub_22D7D8DD4(4, v24, v27);
      v3 = v50;
      v51 = v50;
    }
  }

LABEL_45:
  if ((a1 & 0x10) == 0)
  {
    goto LABEL_53;
  }

  sub_22D81BBC8();
  sub_22D81B328();
  v28 = sub_22D81BC18();
  v29 = -1 << *(v3 + 32);
  v30 = v28 & ~v29;
  if (((*(v3 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_52:
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    sub_22D7D8DD4(5, v30, v33);
    v3 = v50;
    v51 = v50;
LABEL_53:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_54;
  }

  v31 = ~v29;
  while (*(*(v3 + 48) + v30) <= 4u || *(*(v3 + 48) + v30) == 6)
  {
    v32 = sub_22D81BB08();

    if (v32)
    {
      goto LABEL_53;
    }

    v30 = (v30 + 1) & v31;
    if (((*(v3 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  if ((a1 & 0x20) != 0)
  {
LABEL_54:
    sub_22D81BBC8();
    sub_22D81B328();
    v34 = sub_22D81BC18();
    v35 = -1 << *(v3 + 32);
    v36 = v34 & ~v35;
    if ((*(v3 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      while (*(*(v3 + 48) + v36) <= 5u)
      {
        v38 = sub_22D81BB08();

        if (v38)
        {
          goto LABEL_60;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v3 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
LABEL_59:
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v3;
      sub_22D7D8DD4(6, v36, v39);
      v3 = v50;
      v51 = v50;
    }
  }

LABEL_60:
  if ((a1 & 0x40) != 0)
  {
    sub_22D81BBC8();
    sub_22D81B328();
    v40 = sub_22D81BC18();
    v41 = -1 << *(v3 + 32);
    v42 = v40 & ~v41;
    if ((*(v3 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (*(*(v3 + 48) + v42))
      {
        v44 = sub_22D81BB08();

        if (v44)
        {
          goto LABEL_68;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v3 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      v46 = *(v3 + 16);
      if (!v46)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_67:
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    sub_22D7D8DD4(0, v42, v45);
    v3 = v50;
    v51 = v50;
  }

LABEL_68:
  v46 = *(v3 + 16);
  if (!v46)
  {
LABEL_81:

    return MEMORY[0x277D84F90];
  }

LABEL_69:
  v47 = sub_22D7E878C(v46, 0);
  v48 = sub_22D7E977C(&v50, v47 + 32, v46, v3);
  v49 = v50;
  sub_22D81A398();
  result = sub_22D792FD0(v49);
  if (v48 == v46)
  {

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D78EE24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A918();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D78EED4(uint64_t a1)
{
  v2 = sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22D78EF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22D744B0C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22D78F060(uint64_t a1)
{
  v2 = sub_22D795170(&qword_27DA02648, type metadata accessor for AlarmEntity, &unk_22D8214D0);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_22D78F0DC(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      swift_getAtPartialKeyPath();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_22D795260(v1 + 16, v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v3 = 1;
        return v3 & 1;
      }
    }

    else
    {
      if (v2 != 4)
      {
        swift_getAtPartialKeyPath();
        if (!swift_dynamicCast())
        {
          goto LABEL_34;
        }

        sub_22D795260(v1 + 16, v8);
        if (v9)
        {
          if (swift_dynamicCast())
          {

            v3 = 1;
            return v3 & 1;
          }
        }

        else
        {
          sub_22D764440(v8, &unk_27DA02030, qword_22D81F298);
        }

        goto LABEL_33;
      }

      swift_getAtPartialKeyPath();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_22D795260(v1 + 16, v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v3 = 1;
        return v3 & 1;
      }
    }

LABEL_34:
    v3 = 0;
    return v3 & 1;
  }

  if (!*(v1 + 8))
  {
    swift_getAtPartialKeyPath();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_22D795260(v1 + 16, v8);
    if (!v9)
    {

      goto LABEL_31;
    }

    if (swift_dynamicCast())
    {
      v4 = sub_22D81B2F8();
      v6 = v5;

      v8[0] = v4;
      v8[1] = v6;
      sub_22D81B2F8();

      sub_22D77F62C();
      v3 = sub_22D81B748();

      return v3 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v2 != 1)
  {
    swift_getAtPartialKeyPath();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_22D795260(v1 + 16, v8);
    if (v9)
    {
      if (swift_dynamicCast())
      {
        v3 = 0;
        return v3 & 1;
      }

      goto LABEL_34;
    }

LABEL_31:
    sub_22D764440(v8, &unk_27DA02030, qword_22D81F298);
    goto LABEL_34;
  }

  swift_getAtPartialKeyPath();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_22D795260(v1 + 16, v8);
  if (!v9)
  {
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_22D78F518()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02770, &qword_22D821830);
  __swift_allocate_value_buffer(v0, qword_27DA0D348);
  __swift_project_value_buffer(v0, qword_27DA0D348);
  type metadata accessor for AlarmEntity(0);
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  return sub_22D81A358();
}

uint64_t sub_22D78F5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02778, &qword_22D821838);
  swift_getKeyPath();
  sub_22D81A308();
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  v0 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02780, &qword_22D821840);
  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v1 = sub_22D81A198();

  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v2 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02788, &qword_22D821870);
  swift_getKeyPath();
  sub_22D81A198();
  sub_22D81A308();
  v3 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D821030;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  type metadata accessor for AlarmEntity(0);
  sub_22D81A198();
  v5 = sub_22D81A4D8();

  return v5;
}

uint64_t sub_22D78F858()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027D0, &qword_22D821960);
  v0 = *(v20 - 8);
  v1 = v0;
  v2 = MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027D8, &qword_22D821968);
  swift_allocObject();
  sub_22D81A2A8();
  type metadata accessor for AlarmEntity(0);
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027E0, &qword_22D821970);
  swift_allocObject();
  sub_22D81A2E8();
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027E8, &qword_22D821978);
  v6 = *(v0 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22D821040;
  v9 = v8 + v7;
  v10 = *(v1 + 16);
  v11 = v5;
  v12 = v5;
  v13 = v20;
  v10(v9, v12, v20);
  v14 = v9 + v6;
  v15 = v19;
  v10(v14, v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
  sub_22D767548();
  v16 = sub_22D81A518();

  v17 = *(v1 + 8);
  v17(v15, v13);
  v17(v11, v13);
  return v16;
}

uint64_t sub_22D78FB78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  KeyPath = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D837D0];
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = KeyPath;
  *(a2 + 8) = 5;

  return sub_22D81A398();
}

uint64_t sub_22D78FBE0(uint64_t *a1)
{
  type metadata accessor for AlarmEntity(0);
  sub_22D81A398();
  return sub_22D819FF8();
}

uint64_t sub_22D78FC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a3 + 40) = MEMORY[0x277D837D0];
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *a3 = KeyPath;
  *(a3 + 8) = 0;

  return sub_22D81A398();
}

uint64_t sub_22D78FCE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_22D78FD2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t sub_22D78FD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 4;
  return result;
}

uint64_t sub_22D78FE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027A8, &qword_22D8218E8);
  v3 = *(v25 - 8);
  v4 = v3;
  v5 = MEMORY[0x28223BE20](v25);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v23 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v26 = &v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027B0, &qword_22D8218F0);
  swift_allocObject();
  sub_22D81A2F8();
  type metadata accessor for AlarmEntity(0);
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027B8, &qword_22D8218F8);
  swift_allocObject();
  sub_22D81A368();
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027C0, &qword_22D821900);
  swift_allocObject();
  sub_22D81A2A8();
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027C8, &qword_22D821908);
  v10 = *(v3 + 72);
  v21 = v3;
  v11 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22D81E100;
  v13 = v12 + v11;
  v14 = *(v4 + 16);
  v15 = v25;
  v14(v13, v26, v25);
  v16 = v23;
  v14(v13 + v10, v23, v15);
  v17 = v22;
  v14(v13 + 2 * v10, v22, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02710, &qword_22D821780);
  sub_22D791B90();
  v18 = sub_22D81A518();

  v19 = *(v21 + 8);
  v19(v17, v15);
  v19(v16, v15);
  v19(v26, v15);
  return v18;
}

uint64_t sub_22D7901C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_22D790214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t sub_22D790260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D83B88];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 4;
  return result;
}

uint64_t sub_22D7902AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02790, &qword_22D8218A8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02798, &qword_22D8218B0);
  swift_allocObject();
  sub_22D81A2A8();
  type metadata accessor for AlarmEntity(0);
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  sub_22D81A528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027A0, &qword_22D8218B8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22D81DF60;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02718, &qword_22D821788);
  sub_22D791C44();
  v6 = sub_22D81A518();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_22D7904F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D839B0];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_22D790544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  sub_22D81A098();
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  sub_22D819FE8();

  return 0;
}

uint64_t sub_22D790660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  sub_22D81A098();
  type metadata accessor for AlarmEntity(0);
  sub_22D819FE8();
  sub_22D819FE8();
  return 0;
}

uint64_t sub_22D790728(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AlarmEntity(0);
    return a2;
  }

  return result;
}

uint64_t sub_22D7907BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02748, &qword_22D821818);
  __swift_allocate_value_buffer(v0, qword_27DA0D360);
  __swift_project_value_buffer(v0, qword_27DA0D360);
  type metadata accessor for AlarmEntity(0);
  sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  return sub_22D81A478();
}

uint64_t sub_22D790878()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02750, &qword_22D821820);
  v1 = *(v0 - 8);
  v28 = v0;
  v29 = v1;
  v2 = v1;
  v26[0] = v1;
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - v7;
  MEMORY[0x28223BE20](v6);
  v27 = v26 - v9;
  swift_getKeyPath();
  v10 = sub_22D795170(&qword_27DA01C28, type metadata accessor for AlarmEntity, &unk_22D8212F8);
  v11 = MEMORY[0x277CB9E70];
  sub_22D7548B0(&qword_27DA02758, &qword_27DA02700, &qword_22D821770, MEMORY[0x277CB9E70]);
  sub_22D81A538();
  v26[2] = type metadata accessor for AlarmEntity(0);
  sub_22D81A588();
  v12 = *(v2 + 8);
  v13 = v28;
  v12(v8, v28);
  swift_getKeyPath();
  sub_22D7548B0(&qword_27DA02760, &qword_27DA02710, &qword_22D821780, v11);
  v26[1] = v10;
  sub_22D81A538();
  sub_22D81A588();
  v14 = v13;
  v12(v5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02768, &qword_22D821828);
  v15 = *(v29 + 72);
  v16 = v26[0];
  v17 = (*(v26[0] + 80) + 32) & ~*(v26[0] + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22D821040;
  v19 = v18 + v17;
  v20 = *(v16 + 16);
  v21 = v27;
  v20(v19, v27, v14);
  v22 = v19 + v15;
  v23 = v14;
  v20(v22, v8, v14);
  v24 = sub_22D81A578();

  v12(v8, v23);
  v12(v21, v23);
  return v24;
}

uint64_t sub_22D790BA4@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D790F28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA019D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02770, &qword_22D821830);
  v3 = __swift_project_value_buffer(v2, qword_27DA0D348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D790FDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA019D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02748, &qword_22D821818);
  v3 = __swift_project_value_buffer(v2, qword_27DA0D360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D791094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_22D756614;

  return sub_22D793F1C(a2, a3 & 1, a4, a5, a6 & 1);
}

unint64_t sub_22D791174()
{
  result = qword_27DA02670;
  if (!qword_27DA02670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02670);
  }

  return result;
}

unint64_t sub_22D7911CC()
{
  result = qword_27DA02678;
  if (!qword_27DA02678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02678);
  }

  return result;
}

uint64_t sub_22D791268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D795494;

  return sub_22D794C8C(a1);
}

uint64_t sub_22D791310(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22D795478;

  return sub_22D793BC0();
}

uint64_t sub_22D7913B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22D791474;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22D791474(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_22D791578()
{
  result = qword_27DA02680;
  if (!qword_27DA02680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02680);
  }

  return result;
}

unint64_t sub_22D7915D0()
{
  result = qword_27DA02688;
  if (!qword_27DA02688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02690, qword_22D821600);
    sub_22D795170(&qword_27DA01D08, type metadata accessor for AlarmEntity, &unk_22D821470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02688);
  }

  return result;
}

uint64_t sub_22D791684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22D744B08;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22D791764(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22D7917AC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AlarmEntity.RepeatDay(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmEntity.RepeatDay(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_22D791990(uint64_t a1)
{
  sub_22D81A918();
  if (v1 <= 0x3F)
  {
    sub_22D791BE4(319, &qword_27DA026A8, sub_22D767548, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22D791AFC(319);
      if (v3 <= 0x3F)
      {
        sub_22D791BE4(319, &qword_27DA026C0, sub_22D791B90, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_22D791BE4(319, &qword_27DA026D0, sub_22D791C44, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_22D791C98(319);
            if (v6 <= 0x3F)
            {
              sub_22D791D8C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22D791AFC(uint64_t a1)
{
  if (!qword_27DA026B0)
  {
    sub_22D81A7A8();
    sub_22D795170(&qword_27DA026B8, MEMORY[0x277CC9260], MEMORY[0x277CBA4E0]);
    v1 = sub_22D81A078();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA026B0);
    }
  }
}

unint64_t sub_22D791B90()
{
  result = qword_27DA026C8;
  if (!qword_27DA026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026C8);
  }

  return result;
}

void sub_22D791BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_22D81A078();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_22D791C44()
{
  result = qword_27DA026D8;
  if (!qword_27DA026D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026D8);
  }

  return result;
}

void sub_22D791C98(uint64_t a1)
{
  if (!qword_27DA026E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01DD8, qword_22D81E830);
    sub_22D791D08();
    v1 = sub_22D81A078();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA026E0);
    }
  }
}

unint64_t sub_22D791D08()
{
  result = qword_27DA026E8;
  if (!qword_27DA026E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01DD8, qword_22D81E830);
    sub_22D7564A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA026E8);
  }

  return result;
}

void sub_22D791D8C(uint64_t a1)
{
  if (!qword_27DA026F0)
  {
    sub_22D81A708();
    sub_22D795170(&qword_27DA026F8, MEMORY[0x277CC8990], MEMORY[0x277CBA4D8]);
    v1 = sub_22D81A078();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA026F0);
    }
  }
}

id sub_22D791E20()
{
  result = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  qword_27DA0D378 = result;
  return result;
}

uint64_t sub_22D791E54(char **a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *), int64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a5;
  v142 = a4;
  v131 = a1;
  v135 = type metadata accessor for AlarmEntity(0);
  v140 = *(v135 - 8);
  v10 = MEMORY[0x28223BE20](v135);
  v132 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v120 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v120 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v22);
  v28 = a3[1];
  v136 = a3;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_100:
    v31 = v141;
    v17 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_102;
    }

    goto LABEL_141;
  }

  v126 = &v120 - v24;
  v127 = v27;
  v137 = v26;
  v133 = v25;
  v125 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v129 = v21;
  v124 = v17;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v32 >= v28)
    {
      v45 = v32;
    }

    else
    {
      v130 = v28;
      v139 = v7;
      v33 = *a3;
      v34 = *(v140 + 72);
      v35 = v31;
      v36 = v33 + v34 * v32;
      v37 = v126;
      sub_22D76D5B4(v36, v126);
      v38 = v127;
      sub_22D76D5B4(v33 + v34 * v35, v127);
      v39 = v139;
      LODWORD(v139) = v142(v37, v38);
      if (v39)
      {
        sub_22D750754(v38);
        sub_22D750754(v37);
      }

      sub_22D750754(v38);
      result = sub_22D750754(v37);
      v123 = v130 - 1;
      v138 = v130 - 2;
      v40 = v33 + v34 * (v35 + 2);
      v128 = v35;
      v41 = v35;
      v7 = 0;
      while (v138 != v41)
      {
        sub_22D76D5B4(v40, v21);
        v42 = v21;
        v43 = v137;
        sub_22D76D5B4(v36, v137);
        v44 = v142(v42, v43);
        sub_22D750754(v43);
        result = sub_22D750754(v42);
        ++v41;
        v40 += v34;
        v36 += v34;
        v21 = v42;
        if ((v139 ^ v44))
        {
          v45 = v41 + 1;
          goto LABEL_11;
        }
      }

      v41 = v123;
      v45 = v130;
LABEL_11:
      v17 = v124;
      v31 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v45 < v128)
      {
        goto LABEL_135;
      }

      if (v128 <= v41)
      {
        v46 = v45;
        v47 = v34 * (v45 - 1);
        v48 = v45 * v34;
        v130 = v45;
        v49 = v128;
        v50 = v128 * v34;
        do
        {
          if (v49 != --v46)
          {
            v139 = v7;
            v51 = *v136;
            if (!*v136)
            {
              goto LABEL_139;
            }

            sub_22D793EB8(v51 + v50, v132);
            if (v50 < v47 || v51 + v50 >= (v51 + v48))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22D793EB8(v132, v51 + v47);
            v7 = v139;
          }

          ++v49;
          v47 -= v34;
          v48 -= v34;
          v50 += v34;
        }

        while (v49 < v46);
        a3 = v136;
        v17 = v124;
        v31 = v128;
        v45 = v130;
      }

      else
      {
LABEL_14:
        a3 = v136;
      }
    }

    v52 = a3[1];
    if (v45 >= v52)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v45, v31))
    {
      goto LABEL_131;
    }

    if (v45 - v31 >= v125)
    {
LABEL_35:
      v54 = v45;
      if (v45 < v31)
      {
        goto LABEL_130;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v31, v125))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v31 + v125 >= v52)
    {
      v53 = a3[1];
    }

    else
    {
      v53 = v31 + v125;
    }

    if (v53 < v31)
    {
      goto LABEL_134;
    }

    if (v45 == v53)
    {
      goto LABEL_35;
    }

    v102 = *a3;
    v103 = *(v140 + 72);
    v104 = *a3 + v103 * (v45 - 1);
    v105 = -v103;
    v128 = v31;
    v106 = v31 - v45;
    v130 = v45;
    v139 = v102;
    v120 = v103;
    v107 = v102 + v45 * v103;
    v138 = v53;
    do
    {
      v121 = v107;
      v122 = v106;
      v123 = v104;
      v108 = v106;
      do
      {
        sub_22D76D5B4(v107, v17);
        v109 = v17;
        v110 = v133;
        sub_22D76D5B4(v104, v133);
        v111 = v142(v109, v110);
        if (v7)
        {
          sub_22D750754(v110);
          sub_22D750754(v109);
        }

        v112 = v111;
        sub_22D750754(v110);
        result = sub_22D750754(v109);
        v17 = v109;
        if ((v112 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_137;
        }

        v113 = v134;
        sub_22D793EB8(v107, v134);
        swift_arrayInitWithTakeFrontToBack();
        sub_22D793EB8(v113, v104);
        v104 += v105;
        v107 += v105;
      }

      while (!__CFADD__(v108++, 1));
      v104 = v123 + v120;
      v106 = v122 - 1;
      v107 = v121 + v120;
      v54 = v138;
      ++v130;
    }

    while (v130 != v138);
    a3 = v136;
    v31 = v128;
    if (v138 < v128)
    {
      goto LABEL_130;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    v55 = v7;
    if ((result & 1) == 0)
    {
      result = sub_22D792ECC(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v57 = *(v30 + 2);
    v56 = *(v30 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_22D792ECC((v56 > 1), v57 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v58;
    v59 = &v30[16 * v57];
    *(v59 + 4) = v31;
    *(v59 + 5) = v54;
    v60 = *v131;
    if (!*v131)
    {
      goto LABEL_140;
    }

    v138 = v54;
    if (v57)
    {
      break;
    }

    v7 = v55;
LABEL_87:
    v28 = a3[1];
    v29 = v138;
    v21 = v129;
    if (v138 >= v28)
    {
      goto LABEL_100;
    }
  }

  v7 = v55;
  while (1)
  {
    v31 = v58 - 1;
    if (v58 >= 4)
    {
      v65 = &v30[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_117;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_118;
      }

      v72 = &v30[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_120;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_123;
      }

      if (v76 >= v68)
      {
        v94 = &v30[16 * v31 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_129;
        }

        if (v63 < v97)
        {
          v31 = v58 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v58 == 3)
    {
      v61 = *(v30 + 4);
      v62 = *(v30 + 5);
      v71 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      v64 = v71;
LABEL_56:
      if (v64)
      {
        goto LABEL_119;
      }

      v77 = &v30[16 * v58];
      v79 = *v77;
      v78 = *(v77 + 1);
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      v82 = v80;
      if (v80)
      {
        goto LABEL_122;
      }

      v83 = &v30[16 * v31 + 32];
      v85 = *v83;
      v84 = *(v83 + 1);
      v71 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v71)
      {
        goto LABEL_125;
      }

      if (__OFADD__(v81, v86))
      {
        goto LABEL_126;
      }

      if (v81 + v86 >= v63)
      {
        if (v63 < v86)
        {
          v31 = v58 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v87 = &v30[16 * v58];
    v89 = *v87;
    v88 = *(v87 + 1);
    v71 = __OFSUB__(v88, v89);
    v81 = v88 - v89;
    v82 = v71;
LABEL_70:
    if (v82)
    {
      goto LABEL_121;
    }

    v90 = &v30[16 * v31];
    v92 = *(v90 + 4);
    v91 = *(v90 + 5);
    v71 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v71)
    {
      goto LABEL_124;
    }

    if (v93 < v81)
    {
      goto LABEL_87;
    }

LABEL_77:
    v98 = v31 - 1;
    if (v31 - 1 >= v58)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_136;
    }

    v99 = *&v30[16 * v98 + 32];
    v100 = *&v30[16 * v31 + 40];
    sub_22D7927F0(*a3 + *(v140 + 72) * v99, *a3 + *(v140 + 72) * *&v30[16 * v31 + 32], *a3 + *(v140 + 72) * v100, v60, v142, v141);
    if (v7)
    {
    }

    if (v100 < v99)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22D792DD4(v30);
    }

    if (v98 >= *(v30 + 2))
    {
      goto LABEL_116;
    }

    v101 = &v30[16 * v98];
    *(v101 + 4) = v99;
    *(v101 + 5) = v100;
    v143 = v30;
    result = sub_22D792D48(v31);
    v30 = v143;
    v58 = *(v143 + 2);
    if (v58 <= 1)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  result = sub_22D792DD4(v30);
  v30 = result;
LABEL_102:
  v143 = v30;
  v115 = *(v30 + 2);
  if (v115 < 2)
  {
  }

  while (1)
  {
    v116 = *a3;
    if (!*a3)
    {
      break;
    }

    a3 = (v115 - 1);
    v117 = *&v30[16 * v115];
    v118 = *&v30[16 * v115 + 24];
    sub_22D7927F0(v116 + *(v140 + 72) * v117, v116 + *(v140 + 72) * *&v30[16 * v115 + 16], v116 + *(v140 + 72) * v118, v17, v142, v31);
    if (v7)
    {
    }

    if (v118 < v117)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22D792DD4(v30);
    }

    if (v115 - 2 >= *(v30 + 2))
    {
      goto LABEL_128;
    }

    v119 = &v30[16 * v115];
    *v119 = v117;
    *(v119 + 1) = v118;
    v143 = v30;
    result = sub_22D792D48(a3);
    v30 = v143;
    v115 = *(v143 + 2);
    a3 = v136;
    if (v115 <= 1)
    {
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22D7927F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  v57 = type metadata accessor for AlarmEntity(0);
  v12 = MEMORY[0x28223BE20](v57);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v54 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  v56 = *(v23 + 72);
  if (!v56)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_65;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_66;
  }

  v55 = a3;
  v25 = (a2 - a1) / v56;
  v62 = a1;
  v61 = a4;
  if (v25 >= v24 / v56)
  {
    v27 = v24 / v56 * v56;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v27;
    if (v27 >= 1)
    {
      v35 = v55;
      v36 = -v56;
      v37 = v34;
      v50 = v14;
      v51 = a1;
      do
      {
        v48 = v34;
        v38 = a2;
        v52 = a2;
        v53 = a2 + v36;
        while (1)
        {
          if (v38 <= a1)
          {
            v62 = v38;
            v34 = v48;
            goto LABEL_62;
          }

          v39 = v35;
          v49 = v34;
          v40 = v7;
          v41 = a4;
          v56 = v37;
          v42 = v37 + v36;
          v43 = v54;
          sub_22D76D5B4(v37 + v36, v54);
          sub_22D76D5B4(v53, v14);
          v44 = v59(v43, v14);
          if (v40)
          {
            sub_22D750754(v14);
            sub_22D750754(v43);
            v62 = v52;
            v34 = v49;
            goto LABEL_62;
          }

          v45 = v44;
          v55 = 0;
          v46 = v39 + v36;
          sub_22D750754(v14);
          sub_22D750754(v43);
          if (v45)
          {
            break;
          }

          v34 = v42;
          v35 = v39 + v36;
          if (v39 < v56 || v46 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v42;
            a4 = v41;
          }

          else
          {
            a4 = v41;
            if (v39 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
              v34 = v42;
            }
          }

          v37 = v34;
          v7 = v55;
          v14 = v50;
          a1 = v51;
          v38 = v52;
          if (v42 <= a4)
          {
            a2 = v52;
            goto LABEL_61;
          }
        }

        v35 = v39 + v36;
        if (v39 < v52 || v46 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v41;
        }

        else
        {
          v47 = v39 == v52;
          a2 = v53;
          a4 = v41;
          if (!v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v55;
        v37 = v56;
        v14 = v50;
        a1 = v51;
        v34 = v49;
      }

      while (v56 > a4);
    }

LABEL_61:
    v62 = a2;
LABEL_62:
    v60 = v34;
  }

  else
  {
    v26 = v25 * v56;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v26;
    v60 = a4 + v26;
    if (v26 >= 1 && a2 < v55)
    {
      while (1)
      {
        sub_22D76D5B4(a2, v22);
        sub_22D76D5B4(a4, v19);
        v30 = v59(v22, v19);
        if (v6)
        {
          break;
        }

        v31 = v30;
        sub_22D750754(v19);
        sub_22D750754(v22);
        if (v31)
        {
          v32 = v56;
          if (a1 < a2 || a1 >= a2 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v32;
        }

        else
        {
          v32 = v56;
          v33 = a4 + v56;
          if (a1 < a4 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v33;
          a4 += v32;
        }

        a1 += v32;
        v62 = a1;
        if (a4 >= v28 || a2 >= v55)
        {
          goto LABEL_63;
        }
      }

      sub_22D750754(v19);
      sub_22D750754(v22);
    }
  }

LABEL_63:
  sub_22D792DE8(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_22D792D48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22D792DD4(v3);
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

uint64_t sub_22D792DE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AlarmEntity(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22D792ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02740, &qword_22D821810);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_22D793000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v0 - 8);
  v73 = &v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v55 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81A958();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22D81A768();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F0, &unk_22D8219B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA027F8, &qword_22D8275C0);
  v17 = *(v16 - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v59 = v19;
  *(v19 + 16) = xmmword_22D821050;
  v58 = *(v16 + 48);
  v76 = v16;
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  v62 = v13;
  sub_22D81B228();
  v63 = v10;
  sub_22D81A948();
  v75 = *MEMORY[0x277CC9110];
  v21 = *(v5 + 104);
  v72 = v5 + 104;
  v78 = v21;
  v64 = v4;
  (v21)(v7);
  v22 = v7;
  sub_22D81A778();
  v69 = *(v77 + 56);
  v77 += 56;
  v23 = v65;
  v24 = v74;
  v69(v65, 1, 1, v74);
  v68 = sub_22D81A328();
  v25 = *(v68 - 8);
  v70 = *(v25 + 56);
  v71 = v25 + 56;
  v26 = v73;
  v70(v73, 1, 1, v68);
  v66 = v20;
  v60 = v15;
  v27 = v26;
  sub_22D81A338();
  v28 = v67;
  v57 = v20 + v67;
  v58 = *(v16 + 48);
  *v57 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v61 = v22;
  v29 = v22;
  v30 = v64;
  v78(v29, v75, v64);
  sub_22D81A778();
  v31 = v69;
  v69(v23, 1, 1, v24);
  v32 = v68;
  v70(v27, 1, 1, v68);
  sub_22D81A338();
  v58 = 2 * v28;
  v56 = (v66 + 2 * v28);
  v57 = *(v76 + 48);
  *v56 = 2;
  sub_22D81B228();
  sub_22D81A948();
  v33 = v61;
  v78(v61, v75, v30);
  sub_22D81A778();
  v34 = v23;
  v31(v23, 1, 1, v74);
  v35 = v70;
  v70(v73, 1, 1, v32);
  sub_22D81A338();
  v36 = v66;
  v57 = v66 + v58 + v67;
  v58 = *(v76 + 48);
  *v57 = 3;
  sub_22D81B228();
  sub_22D81A948();
  v37 = v64;
  v78(v33, v75, v64);
  sub_22D81A778();
  v38 = v74;
  v69(v34, 1, 1, v74);
  v39 = v73;
  v35(v73, 1, 1, v68);
  v40 = v39;
  sub_22D81A338();
  v41 = v67;
  v58 = 4 * v67;
  v56 = (v36 + 4 * v67);
  v57 = *(v76 + 48);
  *v56 = 4;
  sub_22D81B228();
  sub_22D81A948();
  v42 = v75;
  v78(v61, v75, v37);
  sub_22D81A778();
  v43 = v69;
  v69(v65, 1, 1, v38);
  v44 = v68;
  v70(v40, 1, 1, v68);
  sub_22D81A338();
  v45 = v66;
  v57 = v66 + v58 + v41;
  v58 = *(v76 + 48);
  *v57 = 5;
  sub_22D81B228();
  sub_22D81A948();
  v46 = v61;
  v78(v61, v42, v37);
  sub_22D81A778();
  v47 = v65;
  v43(v65, 1, 1, v74);
  v48 = v73;
  v49 = v44;
  v50 = v70;
  v70(v73, 1, 1, v49);
  v51 = v47;
  sub_22D81A338();
  v52 = (v45 + 6 * v67);
  v67 = *(v76 + 48);
  *v52 = 6;
  sub_22D81B228();
  sub_22D81A948();
  v78(v46, v75, v64);
  sub_22D81A778();
  v69(v51, 1, 1, v74);
  v50(v48, 1, 1, v68);
  sub_22D81A338();
  v53 = sub_22D818330(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v53;
}

unint64_t sub_22D793B74(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D81B998();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22D793BC0()
{
  *(v0 + 16) = *(type metadata accessor for AlarmEntity(0) - 8);
  *(v0 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D793C78, 0, 0);
}

void *sub_22D793C78()
{
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v1 = [qword_27DA0D378 alarmsSync];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_17;
  }

  v3 = v1;
  sub_22D793E6C();
  v4 = sub_22D81B438();

  if (v4 >> 62)
  {
    v5 = sub_22D81B938();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_6:
      result = sub_22D7E8A88(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      v8 = v0[2];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2318D1F70](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        sub_22D78B5EC(v9, v0[3]);
        v11 = *(v2 + 16);
        v10 = *(v2 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22D7E8A88((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[3];
        ++v7;
        *(v2 + 16) = v11 + 1;
        sub_22D793EB8(v12, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11);
      }

      while (v5 != v7);
    }
  }

LABEL_17:

  v13 = v0[1];

  return v13(v2);
}

unint64_t sub_22D793E6C()
{
  result = qword_280CD1510;
  if (!qword_280CD1510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD1510);
  }

  return result;
}

uint64_t sub_22D793EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D793F1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 377) = a5;
  *(v5 + 216) = a3;
  *(v5 + 224) = a4;
  *(v5 + 376) = a2;
  *(v5 + 208) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02738, &qword_22D8217B8);
  *(v5 + 232) = v6;
  *(v5 + 240) = *(v6 - 8);
  *(v5 + 248) = swift_task_alloc();
  v7 = type metadata accessor for AlarmEntity(0);
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 - 8);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v5 + 352) = v8;
  *v8 = v5;
  v8[1] = sub_22D7940FC;

  return sub_22D793BC0();
}

uint64_t sub_22D7940FC(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D7942D0, 0, 0);
  }
}

uint64_t sub_22D7942D0(uint64_t a1)
{
  v117 = v2;
  v4 = *(v2 + 360);
  v111 = *(v4 + 16);
  if (v111)
  {
    v5 = 0;
    v105 = *(v2 + 208);
    v108 = *(v2 + 264);
    v6 = MEMORY[0x277D84F90];
    while (v5 < *(v4 + 16))
    {
      v1 = *(v2 + 376);
      v7 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v8 = *(v108 + 72);
      sub_22D76D5B4(*(v2 + 360) + v7 + v8 * v5, *(v2 + 344));
      if (v1)
      {
        v9 = v105 + 32;
        v10 = *(v105 + 16) + 1;
        while (--v10)
        {
          v11 = v9 + 48;
          v3 = *(v2 + 344);
          sub_22D7951B8(v9, v2 + 16);
          v1 = sub_22D78F0DC(v3);
          sub_22D7951F0(v2 + 16);
          v9 = v11;
          if (v1)
          {
            goto LABEL_10;
          }
        }

LABEL_3:
        sub_22D750754(*(v2 + 344));
      }

      else
      {
        v16 = v105 + 32;
        v17 = *(v105 + 16) + 1;
        while (--v17)
        {
          v18 = v16 + 48;
          v3 = *(v2 + 344);
          sub_22D7951B8(v16, v2 + 64);
          v1 = sub_22D78F0DC(v3);
          sub_22D7951F0(v2 + 64);
          v16 = v18;
          if ((v1 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_10:
        sub_22D793EB8(*(v2 + 344), *(v2 + 336));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1 = &v115;
          sub_22D7E8A88(0, *(v6 + 2) + 1, 1);
          v6 = v115;
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        v3 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v1 = &v115;
          sub_22D7E8A88((v13 > 1), v14 + 1, 1);
          v6 = v115;
        }

        v15 = *(v2 + 336);
        *(v6 + 2) = v3;
        sub_22D793EB8(v15, &v6[v7 + v14 * v8]);
      }

      if (++v5 == v111)
      {
        v101 = v6;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v101 = MEMORY[0x277D84F90];
LABEL_21:
  v19 = *(v2 + 216);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v2 + 264);
    v22 = *(v2 + 240);
    v23 = *(v2 + 216);
    sub_22D81B778();
    v24 = *(v22 + 16);
    v22 += 16;
    v98 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v99 = v24;
    v96 = (v22 - 8);
    v97 = *(v22 + 56);
    v25 = 0;
    v94 = v20;
    v95 = *(v2 + 368);
    v93 = v21;
    v24(*(v2 + 248), v98, *(v2 + 232));
    while (1)
    {
      v26 = sub_22D81A088();
      KeyPath = swift_getKeyPath();
      v28 = MEMORY[0x2318D1E70](v26, KeyPath);

      v29 = *(v2 + 248);
      if (v28)
      {
        break;
      }

      v35 = v21;
      v36 = sub_22D81A088();
      v37 = swift_getKeyPath();
      v38 = MEMORY[0x2318D1E70](v36, v37);

      if (v38)
      {
        v39 = *(v2 + 248);
        v40 = swift_task_alloc();
        *(v40 + 16) = v39;
        v41 = v101;
        v21 = v35;
        v100 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_22D781BE0(v101);
        }

        v42 = v41[2];
        v43 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v101 = v41;
        v44 = v41 + v43;
        v112 = v41 + v43;
        v113 = v42;
        v45 = sub_22D81BAC8();
        if (v45 >= v42)
        {
          if (v42 >= 2)
          {
            v104 = v42;
            v74 = *(v35 + 72);
            v75 = -1;
            v76 = 1;
            v77 = v44;
            do
            {
              v107 = v75;
              v110 = v77;
              do
              {
                v78 = *(v2 + 288);
                sub_22D76D5B4(v77 + v74, *(v2 + 296));
                sub_22D76D5B4(v77, v78);
                if (sub_22D81A098())
                {
                  sub_22D819FE8();
                  v79 = *(v2 + 176);
                  sub_22D819FE8();
                  v80 = *(v2 + 184) < v79;
                }

                else
                {
                  sub_22D819FE8();
                  v81 = *(v2 + 192);
                  sub_22D819FE8();
                  v80 = v81 < *(v2 + 200);
                }

                v82 = v80;
                v83 = *(v2 + 296);
                sub_22D750754(*(v2 + 288));
                sub_22D750754(v83);
                if ((v82 & 1) == 0)
                {
                  break;
                }

                v84 = *(v2 + 280);
                sub_22D793EB8(v77 + v74, v84);
                swift_arrayInitWithTakeFrontToBack();
                sub_22D793EB8(v84, v77);
                v77 -= v74;
                v73 = __CFADD__(v75++, 1);
              }

              while (!v73);
              ++v76;
              v77 = v110 + v74;
              v75 = v107 - 1;
            }

            while (v76 != v104);
LABEL_23:
            v21 = v93;
            v20 = v94;
          }
        }

        else
        {
          v46 = v45;
          v47 = MEMORY[0x277D84F90];
          if (v42 >= 2)
          {
            v47 = sub_22D81B468();
            *(v47 + 16) = v42 >> 1;
          }

          v115 = (v47 + v43);
          v116 = v42 >> 1;
          v48 = v47;
          v49 = v95;
          sub_22D791E54(&v115, &v114, &v112, sub_22D795220, v40, v46);
          *(v48 + 16) = 0;

          v95 = 0;
          v21 = v35;
          if (v49)
          {
            return result;
          }
        }

        goto LABEL_24;
      }

      v21 = v35;
LABEL_25:
      ++v25;
      (*v96)(*(v2 + 248), *(v2 + 232));
      if (v25 == v20)
      {
        goto LABEL_76;
      }

      v99(*(v2 + 248), v98 + v25 * v97, *(v2 + 232));
    }

    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    v31 = v101;
    v100 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22D781BE0(v101);
    }

    v32 = v31[2];
    v33 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v101 = v31;
    v34 = v31 + v33;
    v112 = v31 + v33;
    v113 = v32;
    if (v32 < 0x40)
    {
      if (v32 >= 2)
      {
        goto LABEL_48;
      }

LABEL_24:

      v25 = v100;
      goto LABEL_25;
    }

    v51 = 58 - __clz(v32);
    v52 = -1 << v51;
    v53 = v32 >> v51;
    if ((v32 & ~v52) != 0)
    {
      v54 = v53 + 1;
    }

    else
    {
      v54 = v53;
    }

    if (v54 < v32)
    {
      v55 = v32 >> 1;
      v56 = sub_22D81B468();
      *(v56 + 16) = v55;
      v115 = (v56 + v33);
      v116 = v55;
      v57 = v95;
      sub_22D791E54(&v115, &v114, &v112, sub_22D795240, v30, v54);
      *(v56 + 16) = 0;

      v95 = 0;
      if (v57)
      {
        return result;
      }

      goto LABEL_24;
    }

LABEL_48:
    v58 = *(v21 + 72);
    v59 = -1;
    v60 = 1;
    v102 = v32;
LABEL_51:
    v103 = v60;
    v106 = v59;
    v109 = v34;
    v63 = v34;
    while (1)
    {
      v64 = *(v2 + 320);
      sub_22D76D5B4(v63 + v58, *(v2 + 328));
      sub_22D76D5B4(v63, v64);
      if (sub_22D81A098())
      {
        sub_22D819FE8();
        v65 = *(v2 + 112);
        v66 = *(v2 + 120);
        sub_22D819FE8();
        if (*(v2 + 128) == v65 && *(v2 + 136) == v66)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_22D819FE8();
        v67 = *(v2 + 144);
        v68 = *(v2 + 152);
        sub_22D819FE8();
        if (v67 == *(v2 + 160) && v68 == *(v2 + 168))
        {
LABEL_49:
          v62 = *(v2 + 320);
          v61 = *(v2 + 328);

          sub_22D750754(v62);
          sub_22D750754(v61);
LABEL_50:
          v60 = v103 + 1;
          v34 = &v109[v58];
          v59 = v106 - 1;
          if (v103 + 1 == v102)
          {
            goto LABEL_23;
          }

          goto LABEL_51;
        }
      }

      v69 = sub_22D81BB08();
      v70 = *(v2 + 320);
      v71 = *(v2 + 328);

      sub_22D750754(v70);
      sub_22D750754(v71);
      if (v69)
      {
        v72 = *(v2 + 312);
        sub_22D793EB8(v63 + v58, v72);
        swift_arrayInitWithTakeFrontToBack();
        sub_22D793EB8(v72, v63);
        v63 -= v58;
        v73 = __CFADD__(v59++, 1);
        if (!v73)
        {
          continue;
        }
      }

      goto LABEL_50;
    }
  }

LABEL_76:
  if ((*(v2 + 377) & 1) == 0)
  {
    v1 = sub_22D790728(*(v2 + 224), v101);
    if ((v87 & 1) == 0)
    {
LABEL_78:
      sub_22D763F20(v1, v85, v86, v87);
      v101 = v88;
LABEL_85:
      swift_unknownObjectRelease();
      goto LABEL_86;
    }

    v5 = v87;
    v3 = v86;
    v6 = v85;
    sub_22D81BB18();
    swift_unknownObjectRetain_n();
    v89 = swift_dynamicCastClass();
    if (!v89)
    {
      swift_unknownObjectRelease();
      v89 = MEMORY[0x277D84F90];
    }

    v90 = *(v89 + 16);

    if (__OFSUB__(v5 >> 1, v3))
    {
      goto LABEL_90;
    }

    if (v90 != (v5 >> 1) - v3)
    {
LABEL_91:
      swift_unknownObjectRelease();
      v87 = v5;
      v86 = v3;
      v85 = v6;
      goto LABEL_78;
    }

    v91 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v101 = v91;
    if (!v91)
    {
      v101 = MEMORY[0x277D84F90];
      goto LABEL_85;
    }
  }

LABEL_86:

  v92 = *(v2 + 8);

  return v92(v101);
}

uint64_t sub_22D794C8C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for AlarmEntity(0) - 8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_22D794D94;

  return sub_22D793BC0();
}

uint64_t sub_22D794D94(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D794EEC, 0, 0);
  }
}

uint64_t sub_22D794EEC()
{
  result = v0[7];
  v14 = *(result + 16);
  if (v14)
  {
    v2 = 0;
    v11 = v0[2];
    v12 = v0[3];
    v3 = MEMORY[0x277D84F90];
    v13 = v0[7];
    while (v2 < *(result + 16))
    {
      v4 = v2 + 1;
      v15 = *(v12 + 72);
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      sub_22D76D5B4(v0[7] + v16 + v15 * v2, v0[5]);
      v5 = 0;
      v6 = *(v11 + 16);
      do
      {
        if (v6 == v5)
        {
          sub_22D750754(v0[5]);
          goto LABEL_4;
        }

        sub_22D81A918();
        sub_22D795170(&qword_27DA02730, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        ++v5;
      }

      while ((sub_22D81B1F8() & 1) == 0);
      sub_22D793EB8(v0[5], v0[4]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D7E8A88(0, *(v3 + 16) + 1, 1);
      }

      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_22D7E8A88((v7 > 1), v8 + 1, 1);
      }

      v9 = v0[4];
      *(v3 + 16) = v8 + 1;
      sub_22D793EB8(v9, v3 + v16 + v8 * v15);
LABEL_4:
      v2 = v4;
      result = v13;
      if (v4 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
LABEL_16:

    v10 = v0[1];

    return v10(v3);
  }

  return result;
}

uint64_t sub_22D795170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D795260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02030, qword_22D81F298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AlarmsQuery.ParameterMapping.Operation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmsQuery.ParameterMapping.Operation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D795424()
{
  result = qword_27DA02800;
  if (!qword_27DA02800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02800);
  }

  return result;
}

uint64_t sub_22D795498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02E30, qword_22D822770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22D81DF60;
  v3 = type metadata accessor for SolarPosition(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = MEMORY[0x277D83A90];
  v6 = MEMORY[0x277D83B08];
  *(v2 + 56) = MEMORY[0x277D83A90];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  v7 = sub_22D81B2D8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D81DF60;
  v11 = *(v1 + *(v3 + 24));
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v11 * 100.0;
  v12 = sub_22D81B2D8();
  v14 = v13;
  result = sub_22D7AF980();
  if (result > 1u)
  {
    if (result == 2)
    {
      v16 = 0.25;
    }

    else
    {
      v16 = 0.5;
    }

    if (result == 2)
    {
      v17 = 180.0;
    }

    else
    {
      v17 = 270.0;
    }
  }

  else
  {
    v16 = 0.0;
    if (result)
    {
      goto LABEL_11;
    }

    v16 = 0.75;
    v17 = 360.0;
  }

  if (v16 > (v17 / 360.0))
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = sub_22D7AF980();
  v18 = 0.25;
  if (result > 1u)
  {
    v20 = 180.0;
    v19 = 0.5;
    if (result == 2)
    {
      v19 = 0.25;
    }

    else
    {
      v20 = 270.0;
    }

LABEL_17:
    v18 = v20 / 360.0;
    if (v19 <= (v20 / 360.0))
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
    v19 = 0.75;
    v20 = 360.0;
    goto LABEL_17;
  }

LABEL_18:
  result = sub_22D7AF980();
  if (result > 1u)
  {
    v21 = 0.25;
    v22 = 180.0;
    if (result != 2)
    {
      v21 = 0.5;
      v22 = 270.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (result)
    {
LABEL_24:
      v23 = (v11 - v16) / (v18 - v21);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22D81DF60;
      *(v24 + 56) = v5;
      *(v24 + 64) = v6;
      *(v24 + 32) = v23 * 100.0;
      v25 = sub_22D81B2D8();
      v27 = v26;
      BYTE8(v28) = 0;
      sub_22D81B838();
      MEMORY[0x2318D1A50](980839493, 0xE400000000000000);
      MEMORY[0x2318D1A50](v7, v9);

      MEMORY[0x2318D1A50](0x656C6379430AB0C2, 0xA90000000000003ALL);
      MEMORY[0x2318D1A50](v12, v14);

      MEMORY[0x2318D1A50](0x3A65736168500A25, 0xE90000000000003CLL);
      *&v28 = sub_22D7AF980();
      sub_22D81B908();
      MEMORY[0x2318D1A50](44, 0xE100000000000000);
      MEMORY[0x2318D1A50](v25, v27);

      MEMORY[0x2318D1A50](15909, 0xE200000000000000);
      return *(&v28 + 1);
    }

    v21 = 0.75;
    v22 = 360.0;
  }

  if (v21 <= (v22 / 360.0))
  {
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22D7958C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_22D81B838();

  v19 = 0xD000000000000010;
  v20 = 0x800000022D82A160;
  v8 = sub_22D795498();
  MEMORY[0x2318D1A50](v8);

  MEMORY[0x2318D1A50](10, 0xE100000000000000);
  v9 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  sub_22D7640C4(v0 + v9, v7, &qword_27DA02840, &qword_22D821A70);
  v10 = type metadata accessor for CurrentLocation(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v7, 1, v10);
  sub_22D764440(v7, &qword_27DA02840, &qword_22D821A70);
  if (v12 == 1)
  {
    v13 = 0xEE003E6C696E3C3ALL;
    v14 = 0x6E6F697461636F4CLL;
LABEL_5:
    MEMORY[0x2318D1A50](v14, v13);

    return v19;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_22D7640C4(v1 + v9, v5, &qword_27DA02840, &qword_22D821A70);
  result = v11(v5, 1, v10);
  if (result != 1)
  {
    v16 = CurrentLocation.description.getter();
    MEMORY[0x2318D1A50](v16);

    sub_22D79D9F0(v5, type metadata accessor for CurrentLocation);
    v14 = v17;
    v13 = v18;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D795B24()
{
  type metadata accessor for SolarDataProvider(0);
  v0 = swift_allocObject();
  result = sub_22D79726C();
  qword_27DA02808 = v0;
  return result;
}

uint64_t static SolarDataProvider.shared.getter()
{
  if (qword_27DA019E8 != -1)
  {
    swift_once();
  }

  return sub_22D81A198();
}

uint64_t sub_22D795BC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask))
  {
    v6 = sub_22D81B4F8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    *(v0 + v5) = sub_22D79DF68(0, 0, v4, &unk_22D821CB0, v8);
  }

  return result;
}

uint64_t sub_22D795CFC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_22D81A8C8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SolarPosition(0);
  MEMORY[0x28223BE20](v37);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CurrentLocation(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22D7640C4(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation, v12, &qword_27DA02840, &qword_22D821A70);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22D764440(v12, &qword_27DA02840, &qword_22D821A70);
    v17 = type metadata accessor for CurrentLocationSolarPosition(0);
    return (*(*(v17 - 8) + 56))(v40, 1, 1, v17);
  }

  else
  {
    sub_22D79D988(v12, v16, type metadata accessor for CurrentLocation);
    v19 = *v16;
    [*v16 coordinate];
    v21 = v20;
    v23 = v22;
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    sub_22D81AAA8();
    v24 = sub_22D81AAB8();
    (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
    sub_22D7AFFF8(v9, v21, v23);
    sub_22D764440(v4, &qword_27DA02958, &qword_22D822EC0);
    v25 = v39;
    v26 = *(v38 + 8);
    v26(v7, v39);
    [v19 coordinate];
    v28 = v27;
    v30 = v29;
    sub_22D81A8B8();
    sub_22D7AFE0C(v28, v30);
    LODWORD(v28) = v31;
    v26(v7, v25);
    sub_22D7AFBB8();
    v32 = v37;
    *&v9[*(v37 + 20)] = LODWORD(v28);
    *&v9[*(v32 + 24)] = v33;
    v34 = type metadata accessor for CurrentLocationSolarPosition(0);
    v35 = *(v34 + 20);
    v36 = v40;
    sub_22D79DD74(v16, v40 + v35, type metadata accessor for CurrentLocation);
    (*(v14 + 56))(v36 + v35, 0, 1, v13);
    sub_22D79D988(v9, v36, type metadata accessor for SolarPosition);
    sub_22D79D9F0(v16, type metadata accessor for CurrentLocation);
    return (*(*(v34 - 8) + 56))(v36, 0, 1, v34);
  }
}

uint64_t SolarDataProvider.currentSolarTerminatorPath()@<X0>(uint64_t a1@<X8>)
{
  v30[0] = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02810, &qword_22D821A50);
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02818, &qword_22D821A58);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = v30 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v30 - v10;
  v12 = sub_22D81A8C8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream);
  v17 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  v18 = *(v16 + 64);
  if ((v18 & 1) == 0)
  {
    *(v16 + 64) = 1;
  }

  v19 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  v38 = xmmword_22D821A40;
  v39 = 0;
  v40 = 0;
  if ((v18 & 1) == 0)
  {
    sub_22D795BC0();
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    Date.solarTerminatorPath.getter(&v35);
    (*(v13 + 8))(v15, v12);
    v31 = v35;
    v20 = v36;
    v21 = v37;
    sub_22D7976D0(v38, *(&v38 + 1));
    v38 = v31;
    v39 = v20;
    v40 = v21;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02828, &qword_22D821A60);
  v23 = *(v22 - 8);
  *&v31 = *(v23 + 56);
  (v31)(v11, 1, 1, v22);
  v24 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v24 + 4);
  v25 = swift_endAccess();
  v30[1] = v30;
  MEMORY[0x28223BE20](v25);
  v30[-2] = v16;
  v30[-1] = &v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02830, &qword_22D821A68);
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v33);
  v26 = v32;
  sub_22D81B588();
  sub_22D764440(v11, &qword_27DA02818, &qword_22D821A58);
  (v31)(v26, 0, 1, v22);
  sub_22D79DD0C(v26, v11, &qword_27DA02818, &qword_22D821A58);
  v27 = *(v16 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  v28 = v34;
  sub_22D7640C4(v11, v34, &qword_27DA02818, &qword_22D821A58);
  result = (*(v23 + 48))(v28, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22D764440(v11, &qword_27DA02818, &qword_22D821A58);
    (*(v23 + 32))(v30[0], v28, v22);
    return sub_22D7976D0(v38, *(&v38 + 1));
  }

  return result;
}

uint64_t sub_22D796728()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3 + 16;
  v5 = sub_22D81A8C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream);
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  Date.solarTerminatorPath.getter(v22);
  (*(v6 + 8))(v8, v5);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v22[2];
  v13 = *(v9 + 48);
  v14 = v23;
  swift_beginAccess();
  os_unfair_lock_lock(v13 + 4);
  swift_endAccess();
  sub_22D79864C(v10, v11, v12, v14);

  v15 = *(v9 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();
  v16 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocationSolarPositionStream);
  sub_22D795CFC(v4);
  v17 = *(*v16 + 104);
  v18 = *(v16 + v17);
  swift_beginAccess();
  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  sub_22D799350(v4);
  v19 = *(v16 + v17);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  return sub_22D764440(v4, &qword_27DA02928, &qword_22D821CC8);
}

uint64_t sub_22D7969AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02918, &qword_22D822690);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02920, &qword_22D821CC0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_22D81A8C8();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D796B80, 0, 0);
}

uint64_t sub_22D796B80(uint64_t a1)
{
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  sub_22D81A8B8();
  sub_22D81A858();
  v9 = v8;
  v10 = *(v4 + 8);
  v1[17] = v10;
  v1[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  v11 = qword_27DA02990;
  v12 = *(qword_27DA02990 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers);
  sub_22D81A198();
  sub_22D7A98B8(1, v12, v11, 1, v5);
  sub_22D81B558();
  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  v1[19] = v9;
  v13 = swift_task_alloc();
  v1[20] = v13;
  *v13 = v1;
  v13[1] = sub_22D796D38;
  v14 = v1[10];
  v15 = v1[6];

  return MEMORY[0x2822003E8](v15, 0, 0, v14);
}

uint64_t sub_22D796D38()
{

  return MEMORY[0x2822009F8](sub_22D796E34, 0, 0);
}

uint64_t sub_22D796E34()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 120), v3, v1);
    Strong = swift_weakLoadStrong();
    *(v0 + 168) = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v0 + 152);
      sub_22D81A858();
      *(v0 + 176) = v7;
      if (vabdd_f64(v7, v6) <= 5.0)
      {
        (*(v0 + 136))(*(v0 + 120), *(v0 + 104));

        v9 = swift_task_alloc();
        *(v0 + 160) = v9;
        *v9 = v0;
        v9[1] = sub_22D796D38;
        v10 = *(v0 + 80);
        v11 = *(v0 + 48);

        return MEMORY[0x2822003E8](v11, 0, 0, v10);
      }

      else
      {

        return MEMORY[0x2822009F8](sub_22D797060, v5, 0);
      }
    }

    (*(v0 + 136))(*(v0 + 120), *(v0 + 104));
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D797060()
{
  sub_22D796728();

  return MEMORY[0x2822009F8](sub_22D7970C8, 0, 0);
}

uint64_t sub_22D7970C8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  v1(v2, v3);
  v0[19] = v0[22];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_22D796D38;
  v5 = v0[10];
  v6 = v0[6];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t SolarDataProvider.deinit()
{
  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation, &qword_27DA02840, &qword_22D821A70);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SolarDataProvider.__deallocating_deinit()
{
  SolarDataProvider.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D79726C()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocation;
  v2 = type metadata accessor for CurrentLocation(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_currentLocationSolarPositionStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02978, &qword_22D821D18);
  v4 = swift_allocObject();
  v5 = *(*v4 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = *(*v4 + 104);
  type metadata accessor for MTSUnfairLock();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + v7) = v8;
  v9 = MEMORY[0x277D84F98];
  *(v4 + *(*v4 + 112)) = MEMORY[0x277D84F98];
  *(v4 + *(*v4 + 120)) = 0;
  *(v0 + v3) = v4;
  v10 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarTerminatorStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02980, &qword_22D821D20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22D821A40;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 48) = v12;
  *(v11 + 56) = v9;
  *(v11 + 64) = 0;
  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarMovementsUpdateTask) = 0;
  v13 = OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02988, &qword_22D821D28);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v0 + v13) = v14;
  *(v15 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_solarCycleCancellationBlockByLocation) = v9;
  *(v14 + 16) = v15;
  *(v14 + 24) = v9;
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport17SolarDataProvider_overrideTimeUpdateTask) = 0;
  return v0;
}

uint64_t sub_22D7974C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02960, &qword_22D821D00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 == 1)
  {
    v11 = a3[1];
    if (v11 != 1)
    {
      v12 = a3[2];
      v14 = *(a3 + 24);
      v19 = *a3;
      v13 = v19;
      v20 = v11;
      v21 = v12;
      v22 = v14;
      sub_22D79DDDC(v19, v11, v12);
      sub_22D81A398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
      sub_22D81B528();
      (*(v7 + 8))(v9, v6);
      sub_22D79864C(v13, v11, v12, v14);
      sub_22D7976D0(v13, v11);
    }
  }

  else
  {
    v15 = *(a2 + 40);
    v16 = *(a2 + 32);
    v19 = *(a2 + 16);
    v20 = v10;
    v21 = v16;
    v22 = v15;
    sub_22D81A398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
    sub_22D81B528();
    (*(v7 + 8))(v9, v6);
  }

  return sub_22D79BAEC(a1);
}

uint64_t sub_22D7976D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_22D79770C(uint64_t a1)
{
  sub_22D7977EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D7977EC(uint64_t a1)
{
  if (!qword_27DA02880)
  {
    type metadata accessor for CurrentLocation(255);
    v1 = sub_22D81B718();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA02880);
    }
  }
}

void sub_22D7978AC(uint64_t a1)
{
  type metadata accessor for SolarPosition(319);
  if (v1 <= 0x3F)
  {
    sub_22D7977EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22D797958(uint64_t a1)
{
  result = type metadata accessor for SolarCycle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7979D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C8, &qword_22D821C40);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CurrentLocationResult(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v32 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_22D7640C4(a2 + v22, v12, &qword_27DA02F90, &unk_22D822BA0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v31 = v6;
    v24 = v36;
    sub_22D764440(v12, &qword_27DA02F90, &unk_22D822BA0);
    sub_22D7640C4(v33, v10, &qword_27DA02F90, &unk_22D822BA0);
    if (v23(v10, 1, v13) == 1)
    {
      sub_22D764440(v10, &qword_27DA02F90, &unk_22D822BA0);
    }

    else
    {
      v27 = v32;
      sub_22D79D988(v10, v32, type metadata accessor for CurrentLocationResult);
      sub_22D79DD74(v27, v19, type metadata accessor for CurrentLocationResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
      v28 = v31;
      sub_22D81B528();
      (*(v34 + 8))(v28, v35);
      sub_22D798B48(v27);
      sub_22D79D9F0(v27, type metadata accessor for CurrentLocationResult);
    }

    v26 = v24;
  }

  else
  {
    sub_22D79D988(v12, v21, type metadata accessor for CurrentLocationResult);
    sub_22D79DD74(v21, v19, type metadata accessor for CurrentLocationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
    v25 = v36;
    sub_22D81B528();
    (*(v34 + 8))(v6, v35);
    sub_22D79D9F0(v21, type metadata accessor for CurrentLocationResult);
    v26 = v25;
  }

  return sub_22D79BDC8(v26);
}

uint64_t sub_22D797E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F8, &qword_22D821C80);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_22D81A8C8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v31 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  v36 = a2;
  sub_22D7640C4(a2 + v22, v12, &qword_27DA02000, &qword_22D81F160);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v30 = v6;
    v24 = v35;
    sub_22D764440(v12, &qword_27DA02000, &qword_22D81F160);
    sub_22D7640C4(v32, v10, &qword_27DA02000, &qword_22D81F160);
    if (v23(v10, 1, v13) == 1)
    {
      sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      v27 = v31;
      (*(v14 + 32))(v31, v10, v13);
      (*(v14 + 16))(v19, v27, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
      v28 = v30;
      sub_22D81B528();
      (*(v33 + 8))(v28, v34);
      sub_22D799EA0(v27);
      (*(v14 + 8))(v27, v13);
    }

    v26 = v24;
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    (*(v14 + 16))(v19, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
    v25 = v35;
    sub_22D81B528();
    (*(v33 + 8))(v6, v34);
    (*(v14 + 8))(v21, v13);
    v26 = v25;
  }

  return sub_22D79C0B8(v26);
}

uint64_t sub_22D79823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028A8, &qword_22D821C10);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_22D7640C4(a2 + v22, v12, &qword_27DA02C60, &qword_22D822540);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_22D764440(v12, &qword_27DA02C60, &qword_22D822540);
    sub_22D7640C4(v36, v10, &qword_27DA02C60, &qword_22D822540);
    if (v23(v10, 1, v13) == 1)
    {
      v25 = &qword_27DA02C60;
      v26 = &qword_22D822540;
      v27 = v10;
    }

    else
    {
      v30 = v35;
      sub_22D79DD0C(v10, v35, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v30, v19, &qword_27DA02000, &qword_22D81F160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
      v31 = v34;
      sub_22D81B528();
      (*(v37 + 8))(v31, v38);
      sub_22D79AF88(v30);
      v27 = v30;
      v25 = &qword_27DA02000;
      v26 = &qword_22D81F160;
    }

    sub_22D764440(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_22D79DD0C(v12, v21, &qword_27DA02000, &qword_22D81F160);
    sub_22D7640C4(v21, v19, &qword_27DA02000, &qword_22D81F160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
    v28 = v39;
    sub_22D81B528();
    (*(v37 + 8))(v6, v38);
    sub_22D764440(v21, &qword_27DA02000, &qword_22D81F160);
    v29 = v28;
  }

  return sub_22D79C3A8(v29);
}

uint64_t sub_22D79864C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02960, &qword_22D821D00);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = *(v5 + 40);
  if (v15 == 1)
  {
    if (a2 == 1)
    {
      sub_22D79DDDC(*(v5 + 16), 1, *(v5 + 32));
      sub_22D81A398();
      v18 = v14;
      v19 = 1;
      return sub_22D7976D0(v18, v19);
    }

    goto LABEL_6;
  }

  if (a2 == 1)
  {
LABEL_6:
    sub_22D79DDDC(*(v5 + 16), *(v5 + 24), *(v5 + 32));
    sub_22D81A398();
    sub_22D7976D0(v14, v15);
    v21 = a1;
    v22 = a2;
    goto LABEL_7;
  }

  if (v15)
  {
    v51 = *(v5 + 16);
    v52 = v15;
    v53 = v16;
    v54 = v17;
    if (a2)
    {
      v47[0] = a1 & 1;
      v48 = a2;
      v49 = a3;
      v50 = a4 & 1;
      sub_22D79DDDC(v14, v15, v16);
      sub_22D81A398();
      sub_22D79DDDC(v14, v15, v16);
      sub_22D81A398();
      LODWORD(v44) = _s18MobileTimerSupport19SolarTerminatorPathV2eeoiySbAC_ACtFZ_0(&v51, v47);

      result = sub_22D7976D0(v14, v15);
      if (v44)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_22D79DDDC(v14, v15, v16);
    sub_22D79DDDC(v14, v15, v16);
    v44 = v15;
  }

  else
  {
    sub_22D79DDDC(*(v5 + 16), 0, *(v5 + 32));
    if (!a2)
    {
      sub_22D79DDDC(v14, 0, v16);

      v18 = v14;
      v19 = 0;
      return sub_22D7976D0(v18, v19);
    }

    sub_22D81A398();
    sub_22D79DDDC(v14, 0, v16);
    v44 = 0;
  }

  v21 = v14;
  v22 = v15;
LABEL_7:
  sub_22D7976D0(v21, v22);
LABEL_8:
  v23 = *(v5 + 16);
  v24 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  sub_22D81A398();
  sub_22D7976D0(v23, v24);
  swift_beginAccess();
  v25 = *(v5 + 56);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  v44 = v45 + 16;
  v30 = (v41 + 8);
  v31 = (v45 + 8);
  result = swift_bridgeObjectRetain_n();
  v32 = 0;
  v33 = v46;
  while (v28)
  {
LABEL_17:
    (*(v45 + 16))(v13, *(v25 + 56) + *(v45 + 72) * (__clz(__rbit64(v28)) | (v32 << 6)), v33);
    v35 = *(v5 + 24);
    if (v35 != 1)
    {
      v36 = *(v5 + 40);
      v37 = *(v5 + 32);
      v51 = *(v5 + 16);
      v52 = v35;
      v53 = v37;
      v54 = v36;
      sub_22D81A398();
      v38 = v42;
      sub_22D81B528();
      v39 = v38;
      v33 = v46;
      (*v30)(v39, v43);
    }

    v28 &= v28 - 1;
    result = (*v31)(v13, v33);
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
    }

    v28 = *(v25 + 64 + 8 * v34);
    ++v32;
    if (v28)
    {
      v32 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D798B48(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C8, &qword_22D821C40);
  v61 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - v4;
  v5 = type metadata accessor for CurrentLocationResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D8, &unk_22D821C50);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v50 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v60 = a1;
  sub_22D79DD74(a1, v23, type metadata accessor for CurrentLocationResult);
  v59 = *(v6 + 56);
  (v59)(v23, 0, 1, v5);
  v25 = *(v11 + 56);
  v62 = v1;
  v63 = v24;
  sub_22D7640C4(v1 + v24, v13, &qword_27DA02F90, &unk_22D822BA0);
  sub_22D7640C4(v23, &v13[v25], &qword_27DA02F90, &unk_22D822BA0);
  v26 = *(v6 + 48);
  v27 = v26(v13, 1, v5);
  v56 = v6 + 48;
  if (v27 == 1)
  {
    sub_22D764440(v23, &qword_27DA02F90, &unk_22D822BA0);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      return sub_22D764440(v13, &qword_27DA02F90, &unk_22D822BA0);
    }
  }

  else
  {
    sub_22D7640C4(v13, v21, &qword_27DA02F90, &unk_22D822BA0);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v47 = &v13[v25];
      v48 = v54;
      sub_22D79D988(v47, v54, type metadata accessor for CurrentLocationResult);
      v49 = _s18MobileTimerSupport21CurrentLocationResultV2eeoiySbAC_ACtFZ_0(v21, v48);
      sub_22D79D9F0(v48, type metadata accessor for CurrentLocationResult);
      sub_22D764440(v23, &qword_27DA02F90, &unk_22D822BA0);
      sub_22D79D9F0(v21, type metadata accessor for CurrentLocationResult);
      result = sub_22D764440(v13, &qword_27DA02F90, &unk_22D822BA0);
      if (v49)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v23, &qword_27DA02F90, &unk_22D822BA0);
    sub_22D79D9F0(v21, type metadata accessor for CurrentLocationResult);
  }

  sub_22D764440(v13, &qword_27DA028D8, &unk_22D821C50);
LABEL_7:
  v29 = v58;
  sub_22D79DD74(v60, v58, type metadata accessor for CurrentLocationResult);
  v60 = v5;
  (v59)(v29, 0, 1, v5);
  v59 = v26;
  v31 = v62;
  v30 = v63;
  swift_beginAccess();
  sub_22D79DCA4(v29, v31 + v30, &qword_27DA02F90, &unk_22D822BA0);
  swift_endAccess();
  v32 = *(*v31 + 112);
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v58 = v64 + 16;
  v50 = (v61 + 8);
  v57 = (v64 + 8);
  v61 = v33;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = v65;
  v41 = v55;
  while (v37)
  {
LABEL_17:
    (*(v64 + 16))(v40, *(v61 + 56) + *(v64 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v66);
    sub_22D7640C4(v62 + v63, v41, &qword_27DA02F90, &unk_22D822BA0);
    if (v59(v41, 1, v60) == 1)
    {
      sub_22D764440(v41, &qword_27DA02F90, &unk_22D822BA0);
    }

    else
    {
      v43 = v41;
      v44 = v51;
      sub_22D79D988(v43, v51, type metadata accessor for CurrentLocationResult);
      sub_22D79DD74(v44, v54, type metadata accessor for CurrentLocationResult);
      v45 = v52;
      sub_22D81B528();
      v40 = v65;
      (*v50)(v45, v53);
      v46 = v44;
      v41 = v55;
      sub_22D79D9F0(v46, type metadata accessor for CurrentLocationResult);
    }

    v37 &= v37 - 1;
    result = (*v57)(v40, v66);
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
    }

    v37 = *(v34 + 8 * v42);
    ++v39;
    if (v37)
    {
      v39 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D799350(uint64_t a1)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02930, &qword_22D821CD0);
  v86 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v68 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02938, &qword_22D821CD8);
  v87 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v90 = &v68 - v4;
  v84 = type metadata accessor for CurrentLocationSolarPosition(0);
  v71 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v68 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v68 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02940, &qword_22D821CE0);
  MEMORY[0x28223BE20](v70);
  v72 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02948, &qword_22D821CE8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02950, &unk_22D821CF0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v80 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v82 = (&v68 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v28 = *(*v1 + 96);
  swift_beginAccess();
  v83 = a1;
  sub_22D7640C4(a1, v27, &qword_27DA02928, &qword_22D821CC8);
  v29 = *(v7 + 56);
  v74 = (v7 + 56);
  v73 = v29;
  v29(v27, 0, 1, v6);
  v30 = *(v15 + 56);
  v88 = v1;
  v79 = v28;
  sub_22D7640C4(v1 + v28, v17, &qword_27DA02950, &unk_22D821CF0);
  sub_22D7640C4(v27, &v17[v30], &qword_27DA02950, &unk_22D821CF0);
  v32 = *(v7 + 48);
  v31 = v7 + 48;
  v89 = v32;
  v33 = v32(v17, 1, v6);
  v85 = v6;
  if (v33 == 1)
  {
    sub_22D764440(v27, &qword_27DA02950, &unk_22D821CF0);
    v34 = v89(&v17[v30], 1, v6);
    v35 = v90;
    if (v34 == 1)
    {
      return sub_22D764440(v17, &qword_27DA02950, &unk_22D821CF0);
    }

    goto LABEL_6;
  }

  sub_22D7640C4(v17, v25, &qword_27DA02950, &unk_22D821CF0);
  v37 = v25;
  if (v89(&v17[v30], 1, v6) == 1)
  {
    sub_22D764440(v27, &qword_27DA02950, &unk_22D821CF0);
    sub_22D764440(v25, &qword_27DA02928, &qword_22D821CC8);
    v35 = v90;
LABEL_6:
    v84 = v31;
    sub_22D764440(v17, &qword_27DA02948, &qword_22D821CE8);
    goto LABEL_7;
  }

  v60 = *(v70 + 48);
  v61 = v72;
  sub_22D7640C4(v25, v72, &qword_27DA02928, &qword_22D821CC8);
  sub_22D79DD0C(&v17[v30], v61 + v60, &qword_27DA02928, &qword_22D821CC8);
  v62 = *(v71 + 6);
  v63 = v84;
  if (v62(v61, 1, v84) == 1)
  {
    sub_22D764440(v27, &qword_27DA02950, &unk_22D821CF0);
    v64 = v62(v61 + v60, 1, v63);
    v35 = v90;
    if (v64 == 1)
    {
      sub_22D764440(v61, &qword_27DA02928, &qword_22D821CC8);
      sub_22D764440(v37, &qword_27DA02928, &qword_22D821CC8);
      return sub_22D764440(v17, &qword_27DA02950, &unk_22D821CF0);
    }
  }

  else
  {
    v71 = v25;
    v65 = v69;
    sub_22D7640C4(v61, v69, &qword_27DA02928, &qword_22D821CC8);
    if (v62(v61 + v60, 1, v63) != 1)
    {
      v84 = v31;
      v66 = v68;
      sub_22D79D988(v61 + v60, v68, type metadata accessor for CurrentLocationSolarPosition);
      v67 = sub_22D79D4C8(v65, v66);
      sub_22D79D9F0(v66, type metadata accessor for CurrentLocationSolarPosition);
      sub_22D764440(v27, &qword_27DA02950, &unk_22D821CF0);
      sub_22D79D9F0(v65, type metadata accessor for CurrentLocationSolarPosition);
      sub_22D764440(v61, &qword_27DA02928, &qword_22D821CC8);
      sub_22D764440(v71, &qword_27DA02928, &qword_22D821CC8);
      result = sub_22D764440(v17, &qword_27DA02950, &unk_22D821CF0);
      v35 = v90;
      v6 = v85;
      if (v67)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v27, &qword_27DA02950, &unk_22D821CF0);
    sub_22D79D9F0(v65, type metadata accessor for CurrentLocationSolarPosition);
    v35 = v90;
    v37 = v71;
  }

  v84 = v31;
  sub_22D764440(v61, &qword_27DA02940, &qword_22D821CE0);
  sub_22D764440(v37, &qword_27DA02928, &qword_22D821CC8);
  sub_22D764440(v17, &qword_27DA02950, &unk_22D821CF0);
  v6 = v85;
LABEL_7:
  v38 = v82;
  sub_22D7640C4(v83, v82, &qword_27DA02928, &qword_22D821CC8);
  v73(v38, 0, 1, v6);
  v39 = v88;
  v40 = v79;
  swift_beginAccess();
  sub_22D79DCA4(v38, v39 + v40, &qword_27DA02950, &unk_22D821CF0);
  swift_endAccess();
  v41 = *(*v39 + 112);
  swift_beginAccess();
  v42 = *(v39 + v41);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v83 = v87 + 16;
  v74 = (v86 + 8);
  v82 = (v87 + 8);
  v86 = v42;
  result = swift_bridgeObjectRetain_n();
  v48 = 0;
  v50 = v80;
  v49 = v81;
  while (v46)
  {
LABEL_17:
    (*(v87 + 16))(v35, *(v86 + 56) + *(v87 + 72) * (__clz(__rbit64(v46)) | (v48 << 6)), v49);
    sub_22D7640C4(v88 + v40, v50, &qword_27DA02950, &unk_22D821CF0);
    if (v89(v50, 1, v85) == 1)
    {
      v51 = v50;
      v52 = &qword_27DA02950;
      v53 = &unk_22D821CF0;
    }

    else
    {
      v55 = v50;
      v56 = v75;
      sub_22D79DD0C(v55, v75, &qword_27DA02928, &qword_22D821CC8);
      sub_22D7640C4(v56, v76, &qword_27DA02928, &qword_22D821CC8);
      v57 = v77;
      v40 = v79;
      sub_22D81B528();
      v49 = v81;
      v58 = v57;
      v59 = v90;
      (*v74)(v58, v78);
      v51 = v56;
      v50 = v80;
      v52 = &qword_27DA02928;
      v53 = &qword_22D821CC8;
      v35 = v59;
    }

    sub_22D764440(v51, v52, v53);
    v46 &= v46 - 1;
    result = (*v82)(v35, v49);
  }

  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v54 >= v47)
    {
    }

    v46 = *(v43 + 8 * v54);
    ++v48;
    if (v46)
    {
      v48 = v54;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D799EA0(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F8, &qword_22D821C80);
  v74 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v62 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v79 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v82 = &v62 - v5;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023A0, &qword_22D820A20);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v72 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v64 = (&v62 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = *(*v2 + 96);
  swift_beginAccess();
  v25 = v7[2];
  v75 = a1;
  v69 = v25;
  v70 = v7 + 2;
  v25(v23, a1, v6);
  v63 = v7[7];
  (v63)(v23, 0, 1, v6);
  v26 = *(v12 + 56);
  v80 = v2;
  v71 = v24;
  sub_22D7640C4(v2 + v24, v14, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(v23, &v14[v26], &qword_27DA02000, &qword_22D81F160);
  v78 = v7;
  v29 = v7[6];
  v28 = (v7 + 6);
  v27 = v29;
  v81 = v6;
  if (v29(v14, 1, v6) == 1)
  {
    sub_22D764440(v23, &qword_27DA02000, &qword_22D81F160);
    if (v27(&v14[v26], 1, v81) == 1)
    {
      return sub_22D764440(v14, &qword_27DA02000, &qword_22D81F160);
    }
  }

  else
  {
    v31 = v76;
    sub_22D7640C4(v14, v76, &qword_27DA02000, &qword_22D81F160);
    if (v27(&v14[v26], 1, v81) != 1)
    {
      v77 = v27;
      v56 = &v14[v26];
      v57 = v78;
      v58 = v68;
      v59 = v81;
      (v78[4])(v68, v56, v81);
      sub_22D79D8DC(&qword_27DA02340, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v60 = sub_22D81B1F8();
      v61 = v57[1];
      v61(v58, v59);
      sub_22D764440(v23, &qword_27DA02000, &qword_22D81F160);
      v61(v31, v59);
      result = sub_22D764440(v14, &qword_27DA02000, &qword_22D81F160);
      if (v60)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v23, &qword_27DA02000, &qword_22D81F160);
    (v78[1])(v31, v81);
  }

  v77 = v27;
  sub_22D764440(v14, &qword_27DA023A0, &qword_22D820A20);
LABEL_7:
  v76 = v28;
  v32 = v64;
  v33 = v81;
  v69(v64, v75, v81);
  (v63)(v32, 0, 1, v33);
  v34 = v80;
  v35 = v71;
  swift_beginAccess();
  v36 = &qword_22D81F160;
  v37 = v35;
  sub_22D79DCA4(v32, v34 + v35, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  v38 = *(*v34 + 112);
  swift_beginAccess();
  v39 = *(v34 + v38);
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v75 = v79 + 16;
  v64 = (v78 + 4);
  v63 = (v74 + 1);
  v62 = (v78 + 1);
  v74 = (v79 + 8);
  v78 = v39;
  result = swift_bridgeObjectRetain_n();
  v45 = 0;
  v47 = v72;
  v46 = v73;
  while (v43)
  {
    v48 = v36;
    v49 = v82;
LABEL_19:
    (*(v79 + 16))(v49, v78[7] + *(v79 + 72) * (__clz(__rbit64(v43)) | (v45 << 6)), v46);
    v51 = v46;
    v36 = v48;
    sub_22D7640C4(v80 + v37, v47, &qword_27DA02000, v48);
    if (v77(v47, 1, v81) == 1)
    {
      sub_22D764440(v47, &qword_27DA02000, v48);
    }

    else
    {
      v52 = v81;
      v53 = v65;
      (*v64)(v65, v47, v81);
      v69(v68, v53, v52);
      v54 = v66;
      v47 = v72;
      sub_22D81B528();
      v51 = v73;
      (*v63)(v54, v67);
      v55 = v52;
      v37 = v71;
      (*v62)(v53, v55);
    }

    v43 &= v43 - 1;
    result = (*v74)(v82, v51);
    v46 = v51;
  }

  v49 = v82;
  while (1)
  {
    v50 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v50 >= v44)
    {
    }

    v43 = *(v40 + 8 * v50);
    ++v45;
    if (v43)
    {
      v48 = v36;
      v45 = v50;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79A780(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028E0, &qword_22D821C60);
  v61 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028E8, &qword_22D821C68);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - v4;
  v5 = type metadata accessor for TimeString(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = (&v50 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F0, &unk_22D821C70);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v50 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v50 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v60 = a1;
  sub_22D79DD74(a1, v23, type metadata accessor for TimeString);
  v59 = *(v6 + 56);
  (v59)(v23, 0, 1, v5);
  v25 = *(v11 + 56);
  v62 = v1;
  v63 = v24;
  sub_22D7640C4(v1 + v24, v13, &qword_27DA02C10, &qword_22D8224C0);
  sub_22D7640C4(v23, &v13[v25], &qword_27DA02C10, &qword_22D8224C0);
  v26 = *(v6 + 48);
  v27 = v26(v13, 1, v5);
  v56 = v6 + 48;
  if (v27 == 1)
  {
    sub_22D764440(v23, &qword_27DA02C10, &qword_22D8224C0);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      return sub_22D764440(v13, &qword_27DA02C10, &qword_22D8224C0);
    }
  }

  else
  {
    sub_22D7640C4(v13, v21, &qword_27DA02C10, &qword_22D8224C0);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v47 = &v13[v25];
      v48 = v54;
      sub_22D79D988(v47, v54, type metadata accessor for TimeString);
      v49 = _s18MobileTimerSupport10TimeStringV2eeoiySbAC_ACtFZ_0(v21, v48);
      sub_22D79D9F0(v48, type metadata accessor for TimeString);
      sub_22D764440(v23, &qword_27DA02C10, &qword_22D8224C0);
      sub_22D79D9F0(v21, type metadata accessor for TimeString);
      result = sub_22D764440(v13, &qword_27DA02C10, &qword_22D8224C0);
      if (v49)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v23, &qword_27DA02C10, &qword_22D8224C0);
    sub_22D79D9F0(v21, type metadata accessor for TimeString);
  }

  sub_22D764440(v13, &qword_27DA028F0, &unk_22D821C70);
LABEL_7:
  v29 = v58;
  sub_22D79DD74(v60, v58, type metadata accessor for TimeString);
  v60 = v5;
  (v59)(v29, 0, 1, v5);
  v59 = v26;
  v31 = v62;
  v30 = v63;
  swift_beginAccess();
  sub_22D79DCA4(v29, v31 + v30, &qword_27DA02C10, &qword_22D8224C0);
  swift_endAccess();
  v32 = *(*v31 + 112);
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v58 = v64 + 16;
  v50 = (v61 + 8);
  v57 = (v64 + 8);
  v61 = v33;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = v65;
  v41 = v55;
  while (v37)
  {
LABEL_17:
    (*(v64 + 16))(v40, *(v61 + 56) + *(v64 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v66);
    sub_22D7640C4(v62 + v63, v41, &qword_27DA02C10, &qword_22D8224C0);
    if (v59(v41, 1, v60) == 1)
    {
      sub_22D764440(v41, &qword_27DA02C10, &qword_22D8224C0);
    }

    else
    {
      v43 = v41;
      v44 = v51;
      sub_22D79D988(v43, v51, type metadata accessor for TimeString);
      sub_22D79DD74(v44, v54, type metadata accessor for TimeString);
      v45 = v52;
      sub_22D81B528();
      v40 = v65;
      (*v50)(v45, v53);
      v46 = v44;
      v41 = v55;
      sub_22D79D9F0(v46, type metadata accessor for TimeString);
    }

    v37 &= v37 - 1;
    result = (*v57)(v40, v66);
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
    }

    v37 = *(v34 + 8 * v42);
    ++v39;
    if (v37)
    {
      v39 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79AF88(uint64_t a1)
{
  v84 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028A8, &qword_22D821C10);
  v80 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v85 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v87 = &v65 - v3;
  v82 = sub_22D81A8C8();
  v69 = *(v82 - 1);
  MEMORY[0x28223BE20](v82);
  v65 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v65 - v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v65 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023A0, &qword_22D820A20);
  MEMORY[0x28223BE20](v67);
  v68 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B8, &qword_22D821C28);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v65 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  v27 = *(*v1 + 96);
  swift_beginAccess();
  sub_22D7640C4(v84, v26, &qword_27DA02000, &qword_22D81F160);
  v28 = *(v6 + 56);
  v71 = (v6 + 56);
  v70 = v28;
  v28(v26, 0, 1, v5);
  v29 = *(v14 + 56);
  v86 = v1;
  v76 = v27;
  sub_22D7640C4(v1 + v27, v16, &qword_27DA02C60, &qword_22D822540);
  sub_22D7640C4(v26, &v16[v29], &qword_27DA02C60, &qword_22D822540);
  v30 = *(v6 + 48);
  v31 = v30(v16, 1, v5);
  v78 = v6 + 48;
  v83 = v5;
  if (v31 == 1)
  {
    sub_22D764440(v26, &qword_27DA02C60, &qword_22D822540);
    if (v30(&v16[v29], 1, v5) == 1)
    {
      return sub_22D764440(v16, &qword_27DA02C60, &qword_22D822540);
    }

    goto LABEL_6;
  }

  sub_22D7640C4(v16, v24, &qword_27DA02C60, &qword_22D822540);
  if (v30(&v16[v29], 1, v5) == 1)
  {
    sub_22D764440(v26, &qword_27DA02C60, &qword_22D822540);
    sub_22D764440(v24, &qword_27DA02000, &qword_22D81F160);
LABEL_6:
    sub_22D764440(v16, &qword_27DA028B8, &qword_22D821C28);
    goto LABEL_7;
  }

  v55 = *(v67 + 12);
  v67 = v24;
  v56 = v68;
  sub_22D7640C4(v24, v68, &qword_27DA02000, &qword_22D81F160);
  sub_22D79DD0C(&v16[v29], v56 + v55, &qword_27DA02000, &qword_22D81F160);
  v57 = v69;
  v58 = *(v69 + 48);
  v59 = v82;
  if (v58(v56, 1, v82) == 1)
  {
    sub_22D764440(v26, &qword_27DA02C60, &qword_22D822540);
    if (v58(v56 + v55, 1, v59) == 1)
    {
      sub_22D764440(v56, &qword_27DA02000, &qword_22D81F160);
      sub_22D764440(v67, &qword_27DA02000, &qword_22D81F160);
      return sub_22D764440(v16, &qword_27DA02C60, &qword_22D822540);
    }
  }

  else
  {
    v60 = v66;
    sub_22D7640C4(v56, v66, &qword_27DA02000, &qword_22D81F160);
    if (v58(v56 + v55, 1, v59) != 1)
    {
      v61 = v56 + v55;
      v62 = v65;
      (*(v57 + 32))(v65, v61, v59);
      sub_22D79D8DC(&qword_27DA02340, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v63 = sub_22D81B1F8();
      v64 = *(v57 + 8);
      v64(v62, v59);
      sub_22D764440(v26, &qword_27DA02C60, &qword_22D822540);
      v64(v60, v59);
      sub_22D764440(v56, &qword_27DA02000, &qword_22D81F160);
      sub_22D764440(v67, &qword_27DA02000, &qword_22D81F160);
      result = sub_22D764440(v16, &qword_27DA02C60, &qword_22D822540);
      v5 = v83;
      if (v63)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v26, &qword_27DA02C60, &qword_22D822540);
    (*(v57 + 8))(v60, v59);
  }

  sub_22D764440(v56, &qword_27DA023A0, &qword_22D820A20);
  sub_22D764440(v67, &qword_27DA02000, &qword_22D81F160);
  sub_22D764440(v16, &qword_27DA02C60, &qword_22D822540);
  v5 = v83;
LABEL_7:
  v82 = v30;
  v33 = v81;
  sub_22D7640C4(v84, v81, &qword_27DA02000, &qword_22D81F160);
  v70(v33, 0, 1, v5);
  v34 = v86;
  v35 = v76;
  swift_beginAccess();
  v36 = &qword_27DA02C60;
  sub_22D79DCA4(v33, v34 + v35, &qword_27DA02C60, &qword_22D822540);
  swift_endAccess();
  v37 = *(*v34 + 112);
  swift_beginAccess();
  v38 = *(v34 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v81 = v85 + 16;
  v71 = (v80 + 1);
  v80 = (v85 + 8);
  v84 = v38;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v79;
  v46 = v77;
  while (v42)
  {
LABEL_17:
    (*(v85 + 16))(v87, *(v84 + 56) + *(v85 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v45);
    sub_22D7640C4(v86 + v35, v46, v36, &qword_22D822540);
    if ((v82)(v46, 1, v83) == 1)
    {
      v47 = v46;
      v48 = v36;
      v49 = &qword_22D822540;
    }

    else
    {
      v51 = v72;
      sub_22D79DD0C(v46, v72, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v51, v73, &qword_27DA02000, &qword_22D81F160);
      v52 = v36;
      v53 = v74;
      v46 = v77;
      sub_22D81B528();
      v45 = v79;
      v54 = v53;
      v36 = v52;
      (*v71)(v54, v75);
      v47 = v51;
      v35 = v76;
      v48 = &qword_27DA02000;
      v49 = &qword_22D81F160;
    }

    sub_22D764440(v47, v48, v49);
    v42 &= v42 - 1;
    result = (*v80)(v87, v45);
  }

  while (1)
  {
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v50 >= v43)
    {
    }

    v42 = *(v39 + 8 * v50);
    ++v44;
    if (v42)
    {
      v44 = v50;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79BAEC(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_22D81A918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_22D81A908();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_22D803BB8(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_22D81A198();
  sub_22D81B518();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_22D79BDC8(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_22D81A918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_22D81A908();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_22D803E0C(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_22D81A198();
  sub_22D81B518();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_22D79C0B8(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_22D81A918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_22D81A908();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_22D804060(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_22D81A198();
  sub_22D81B518();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_22D79C3A8(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_22D81A918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_22D81A908();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_22D804504(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_22D81A198();
  sub_22D81B518();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_22D79C698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D79C72C(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_22D79C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v24[1] = a2;
  v29 = sub_22D81B0C8();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81B108();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_22D81B0D8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  (*(v14 + 104))(v16, *MEMORY[0x277D851A8], v13);
  v24[0] = sub_22D81B6B8();
  (*(v14 + 8))(v16, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v10);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v11 + 32))(v19 + v18, v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = v27;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = v28;
  v20 = _Block_copy(aBlock);
  sub_22D81A198();
  sub_22D81B0E8();
  v33 = MEMORY[0x277D84F90];
  sub_22D79D8DC(&qword_280CD29A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D79D924();
  v21 = v29;
  sub_22D81B788();
  v22 = v24[0];
  MEMORY[0x2318D1DA0](0, v9, v6, v20);
  _Block_release(v20);

  (*(v32 + 8))(v6, v21);
  (*(v30 + 8))(v9, v31);
}

uint64_t sub_22D79CB94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 48);
    v8 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v7 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_22D79D2F4(&qword_27DA02968, &qword_22D821D08, sub_22D80B528, sub_22D80CEDC, v5, a2);
    sub_22D764440(v5, &qword_27DA02970, &qword_22D821D10);
    swift_endAccess();
    v9 = *(v8 + 48);
    swift_beginAccess();
    os_unfair_lock_unlock(v9 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79CD0C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(*result + 104);
    v8 = *(result + v7);
    v9 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_22D79D2F4(&qword_27DA028D0, &qword_22D821C48, sub_22D80B53C, sub_22D80D05C, v5, a2);
    sub_22D764440(v5, &qword_27DA02910, &unk_22D821C98);
    swift_endAccess();
    v10 = *(v9 + v7);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79CEB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(*result + 104);
    v8 = *(result + v7);
    v9 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_22D79D2F4(&qword_27DA02900, &qword_22D821C88, sub_22D80B894, sub_22D80D080, v5, a2);
    sub_22D764440(v5, &qword_27DA02908, &qword_22D821C90);
    swift_endAccess();
    v10 = *(v9 + v7);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79D05C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(*result + 104);
    v8 = *(result + v7);
    v9 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_22D79D2F4(&qword_27DA028B0, &unk_22D821C18, sub_22D80BA80, sub_22D80D5B4, v5, a2);
    sub_22D764440(v5, &qword_27DA028C0, &unk_22D821C30);
    swift_endAccess();
    v10 = *(v9 + v7);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79D2F4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>, uint64_t a6@<X0>)
{
  v11 = v6;
  v13 = sub_22D8078C4(a6);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_22D81A918();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    a3(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

BOOL sub_22D79D4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA0, &unk_22D821C00);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (!sub_22D7B08B4(a1, a2))
  {
    return 0;
  }

  v14 = type metadata accessor for SolarPosition(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)) || *(a1 + *(v14 + 24)) != *(a2 + *(v14 + 24)))
  {
    return 0;
  }

  v15 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_22D7640C4(v16, v13, &qword_27DA02840, &qword_22D821A70);
  sub_22D7640C4(a2 + v15, &v13[v17], &qword_27DA02840, &qword_22D821A70);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_22D764440(v13, &qword_27DA02840, &qword_22D821A70);
      return 1;
    }

    goto LABEL_9;
  }

  sub_22D7640C4(v13, v10, &qword_27DA02840, &qword_22D821A70);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_22D79D9F0(v10, type metadata accessor for CurrentLocation);
LABEL_9:
    v20 = &qword_27DA02FA0;
    v21 = &unk_22D821C00;
LABEL_10:
    sub_22D764440(v13, v20, v21);
    return 0;
  }

  sub_22D79D988(&v13[v17], v7, type metadata accessor for CurrentLocation);
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  if ((sub_22D81B6F8() & 1) == 0)
  {
    sub_22D79D9F0(v7, type metadata accessor for CurrentLocation);
    sub_22D79D9F0(v10, type metadata accessor for CurrentLocation);
    v20 = &qword_27DA02840;
    v21 = &qword_22D821A70;
    goto LABEL_10;
  }

  v22 = sub_22D7AE12C(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  sub_22D79D9F0(v7, type metadata accessor for CurrentLocation);
  sub_22D79D9F0(v10, type metadata accessor for CurrentLocation);
  sub_22D764440(v13, &qword_27DA02840, &qword_22D821A70);
  return (v22 & 1) != 0;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D79D8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D79D924()
{
  result = qword_280CD2990;
  if (!qword_280CD2990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA023A8, &qword_22D820A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2990);
  }

  return result;
}

uint64_t sub_22D79D988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D79D9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D79DB30(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_22D81A918() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_22D79DBF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D7969AC(a1, v4, v5, v6);
}

uint64_t sub_22D79DCA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D79DD0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D79DD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D79DDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return sub_22D81A398();
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_22D81A918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D79DF14(char a1)
{
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D822568[a1]);
  return sub_22D81BC18();
}

uint64_t sub_22D79DF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22D7640C4(a3, v22 - v9, &unk_27DA01FF0, &qword_22D81FC70);
  v11 = sub_22D81B4F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_22D81A198();
  if (v13 == 1)
  {
    sub_22D764440(v10, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22D81B498();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22D81B308() + 32;
      sub_22D81A198();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);

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

  sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22D79E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22D7640C4(a3, v22 - v9, &unk_27DA01FF0, &qword_22D81FC70);
  v11 = sub_22D81B4F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_22D81A198();
  if (v13 == 1)
  {
    sub_22D764440(v10, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22D81B498();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22D81B308() + 32;
      sub_22D81A198();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
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

      sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);

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

  sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

MobileTimerSupport::ClockTimeInterval_optional __swiftcall ClockTimeInterval.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.01666)
  {
    *v1 = 0;
  }

  else
  {
    if (rawValue == 60.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (rawValue == 1.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

double sub_22D79E5D0@<D0>(double *a1@<X8>)
{
  result = dbl_22D822580[*v1];
  *a1 = result;
  return result;
}

uint64_t OverrideTime.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OverrideTime.date.setter(uint64_t a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 OverrideTime.advancingRate.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverrideTime(0) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 OverrideTime.advancingRate.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for OverrideTime(0) + 20));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.init(offset:interval:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.paused.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22D81BCA8();
  v4 = v3;
  result = sub_22D81BCA8();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return sub_22D81BC98();
}

uint64_t sub_22D79E990()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x74657366666FLL;
  }
}

uint64_t sub_22D79E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_22D81BB08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();

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

uint64_t sub_22D79EAA0(uint64_t a1)
{
  v2 = sub_22D79ECD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D79EADC(uint64_t a1)
{
  v2 = sub_22D79ECD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverrideTime.AdvancingRate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02998, &qword_22D821D40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v13 = v1[3];
  v14 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79ECD4();
  sub_22D81BC38();
  v16 = v8;
  v17 = v7;
  v18 = 0;
  v10 = v15;
  sub_22D81BAB8();
  if (!v10)
  {
    v16 = v14;
    v17 = v13;
    v18 = 1;
    sub_22D81BAB8();
  }

  return (*(v4 + 8))(v6, v3);
}