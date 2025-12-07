void sub_269C51DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C51E10(255, a3, a4);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269C51E10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C51E5C(uint64_t a1)
{
  if (!qword_28034E098)
  {
    sub_269D99DB0();
    v1 = sub_269D99530();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E098);
    }
  }
}

unint64_t sub_269C51EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E0A8;
  if (!qword_28034E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0A8);
  }

  return result;
}

unint64_t sub_269C51F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E0B0;
  if (!qword_28034E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF8)
  {
    goto LABEL_17;
  }

  if (a2 + 61448 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61448 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61448;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61448;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61448;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xC00 | (*a1 >> 12) & 0xFFFFFC0F | (16 * (*a1 >> 2))) ^ 0xFFF;
  if (v6 >= 0xFF7)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for Symbol(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61448 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61448 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF8)
  {
    v4 = 0;
  }

  if (a2 > 0xFF7)
  {
    v5 = ((a2 - 4088) >> 16) + 1;
    *result = a2 - 4088;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = (-a2 >> 4) - (a2 << 8);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269C520DC(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 12;
  v4 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 8;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_269C52114(_WORD *result, unsigned int a2)
{
  if (a2 < 8)
  {
    *result = *result & 0x303 | (a2 << 12);
  }

  else
  {
    *result = (a2 & 3 | (((a2 >> 2) & 3) << 8)) ^ 0x8200;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol.Variant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Symbol.Variant(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269C522AC()
{
  result = qword_28034E0B8;
  if (!qword_28034E0B8)
  {
    sub_269C51D40(255);
    sub_269C5249C(&qword_280C0B5B8, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0B8);
  }

  return result;
}

unint64_t sub_269C5234C()
{
  result = qword_28034E0C0;
  if (!qword_28034E0C0)
  {
    sub_269C51C58(255);
    sub_269C523FC();
    sub_269C524EC(&qword_28034E0D8, sub_269C51E5C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0C0);
  }

  return result;
}

unint64_t sub_269C523FC()
{
  result = qword_28034E0C8;
  if (!qword_28034E0C8)
  {
    sub_269C51CC0(255);
    sub_269C522AC();
    sub_269C5249C(&qword_28034E0D0, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0C8);
  }

  return result;
}

uint64_t sub_269C5249C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C51DB8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269C524EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GoalSectionProvider.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t GoalSectionProvider.__allocating_init(goalDurationPublisher:presentationStyle:configuration:updateBlock:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + 16) = MEMORY[0x277D84FA0];
  LOBYTE(v12) = 0;
  sub_269C5281C();
  swift_allocObject();
  *(v10 + 32) = sub_269D987F0();
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 24) = a1;

  sub_269D987C0();
  sub_269C2FDFC(0);
  swift_allocObject();
  *(v10 + 40) = sub_269D987F0();
  *(v10 + 48) = a2;
  sub_269D987C0();

  *(v10 + 64) = v12;
  *(v10 + 72) = v13;
  *(v10 + 96) = a3;
  *(v10 + 80) = a4;
  *(v10 + 88) = a5;
  return v10;
}

uint64_t GoalSectionProvider.init(goalDurationPublisher:presentationStyle:configuration:updateBlock:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  *(v5 + 16) = MEMORY[0x277D84FA0];
  LOBYTE(v12) = 0;
  sub_269C5281C();
  swift_allocObject();
  *(v5 + 32) = sub_269D987F0();
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  *(v5 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a1;

  sub_269D987C0();
  sub_269C2FDFC(0);
  swift_allocObject();
  *(v5 + 40) = sub_269D987F0();
  *(v5 + 48) = a2;
  sub_269D987C0();

  *(v5 + 64) = v12;
  *(v5 + 72) = v13;
  *(v5 + 96) = v10;
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  return v5;
}

void sub_269C5281C()
{
  if (!qword_280C0B158)
  {
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B158);
    }
  }
}

uint64_t sub_269C5287C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
  swift_unknownObjectWeakAssign();
  return sub_269C528D8();
}

uint64_t sub_269C528D8()
{
  v1 = v0;
  v2 = *v0;
  result = swift_beginAccess();
  v4 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_269D9AF50();

    if (v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (!*(v4 + 16))
  {
LABEL_3:
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v2;
    sub_269C2FDFC(0);
    v8 = MEMORY[0x277CBCE48];
    sub_269C54F50(&qword_28034FF20, sub_269C2FDFC, MEMORY[0x277CBCE48]);

    sub_269D98900();

    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    *(v10 + 24) = v1[14];
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v2;
    sub_269D98900();

    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v2;
    sub_269C5281C();
    sub_269C54F50(&qword_28034E120, sub_269C5281C, v8);

    sub_269D98900();

    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_269C52C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B728);
    v8 = sub_269D98230();
    v9 = sub_269D9AB80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, &v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = v3;
      v23 = v4;
      sub_269C54D8C(0, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      v15 = sub_269D9A660();
      v17 = sub_269C2EACC(v15, v16, &v21);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] sleep duration goal updated to %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    sub_269D987C0();
    if (v23)
    {
      if (v4)
      {
        goto LABEL_14;
      }
    }

    else if ((v4 & 1) == 0 && v22 == v3)
    {
      goto LABEL_14;
    }

    *(v6 + 56) = 1;
    v22 = v3;
    v23 = v4;
    sub_269D987D0();
LABEL_14:
    v18 = *(v6 + 80);

    v18(v19);
  }
}

uint64_t sub_269C52F6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v10);
  v12[2] = v7;
  v13 = v8;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_269C71EBC(sub_269C5534C, v12, "SleepHealthUI/GoalSectionProvider.swift", 39, 2u, 75);
}

uint64_t sub_269C5308C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v31 = a4;
      v10 = *&a1;
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v11 = sub_269D98250();
      __swift_project_value_buffer(v11, qword_280C0B728);
      v12 = sub_269D98230();
      v13 = sub_269D9AB80();
      v30 = a1;
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v32[0] = v15;
        *v14 = 136446466;
        v16 = sub_269D9B4D0();
        v18 = sub_269C2EACC(v16, v17, v32);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        v19 = sub_269D9A910();
        v21 = sub_269C2EACC(v19, v20, v32);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] sleep duration goal chosen to be %{public}s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v15, -1, -1);
        MEMORY[0x26D652460](v14, -1, -1);
      }

      if ((*(v9 + 56) & 1) == 0 && ((*(v9 + 72) & 1) != 0 || *(v9 + 64) != v10))
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v22 = *(v31 + 24);
          ObjectType = swift_getObjectType();
          v24 = swift_allocObject();
          swift_weakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          *(v25 + 24) = v30;
          v26 = *(v22 + 8);

          v26(0, sub_269C55374, v25, ObjectType, v22, v10);

          swift_unknownObjectRelease();
        }
      }

      *(v9 + 56) = 0;
      v27 = *(v9 + 80);

      v27(v28);
    }
  }
}

uint64_t sub_269C533F8(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + 56) = 1;
    sub_269D987D0();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + 64) = a3;
    *(result + 72) = 0;
  }
}

uint64_t sub_269C534AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_269D9A2A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_269C55300();
    *v7 = sub_269D9AC40();
    (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
    v10 = sub_269D9A2B0();
    (*(v4 + 8))(v7, v3);
    if (v10)
    {

      sub_269D987C0();

      if (v23)
      {
        v3 = 0x676E69736F6C43;
      }

      else
      {
        v3 = 0x676E696E65704FLL;
      }

      if (qword_280C0B720 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_9:
    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280C0B728);

    v12 = sub_269D98230();
    v13 = sub_269D9AB80();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446466;
      v16 = sub_269D9B4D0();
      v18 = sub_269C2EACC(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = sub_269C2EACC(v3, 0xE700000000000000, &v23);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] %{public}s sleep duration goal picker", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v15, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }

    else
    {
    }

    v20 = *(v9 + 80);

    v20(v21);
  }
}

uint64_t sub_269C53870(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a2;
  swift_unknownObjectWeakAssign();
  sub_269C528D8();
  return swift_unknownObjectRelease();
}

void (*sub_269C538D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 112);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_269C53968;
}

void sub_269C53968(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 112) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_269C528D8();
  }

  free(v3);
}

uint64_t sub_269C539F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v113 = *MEMORY[0x277D85DE8];
  v87 = sub_269D98170();
  *&v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v8);
  v85 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C54EEC(0, &qword_28034E0E8, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v84 = v78 - v12;
  v13 = sub_269D98110();
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D982F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20) = *v4;
  v88 = a1;
  v89 = a4;
  if ((v20 & 1) == 0)
  {
    v79 = v13;
    v82 = a3;
    sub_269D987C0();
    v48 = v94;
    v49 = BYTE8(v94);
    v92 = sub_269D98130();
    v93 = sub_269C54F50(&qword_28034E108, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    v78[2] = __swift_allocate_boxed_opaque_existential_1(v91);
    v99 = &unk_287A9F2B0;
    sub_269C49A1C(&unk_287A9F280);
    sub_269C54D8C(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v51 = v50;
    v80 = sub_269C4BE38();
    v81 = v51;
    v78[0] = sub_269D9A520();
    v53 = v52;

    sub_269D982E0();
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    sub_269D972C0();
    sub_269D982D0();
    sub_269C54F98(v48, v49);
    sub_269D982A0();
    v54 = v82;
    v78[1] = v53;
    if (!v82 || v82 == 2)
    {
      if (HKHealthTintColor())
      {
LABEL_11:
        v55 = sub_269D982C0();
        sub_269D982B0();
        v55(&v99, 0);
        v99 = &type metadata for GoalSectionModel;
        sub_269C550D0();
        sub_269D9A660();
        v102 = v17;
        v103 = MEMORY[0x277D74C30];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        (*(v18 + 16))(boxed_opaque_existential_1, v21, v17);
        *v16 = 1;
        (*(v83 + 104))(v16, *MEMORY[0x277D10F90], v79);
        v57 = sub_269D98280();
        (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
        (*(v86 + 104))(v85, *MEMORY[0x277D11140], v87);
        sub_269D98120();

        (*(v18 + 8))(v21, v17);
        sub_269C54D8C(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v58 = swift_allocObject();
        v58[1] = xmmword_269DA0D60;
        v58[2].Kind = sub_269D9A630();
        v58[2].Description = v59;
        v58[3].Kind = 0x7065656C53;
        v58[3].Description = 0xE500000000000000;
        v58[4].Kind = 0x736E6F6974704FLL;
        v58[4].Description = 0xE700000000000000;
        v99 = v58;
        sub_269C49A1C(&unk_287A9F2F0);
        v60 = sub_269D9A520();
        v62 = v61;

        v63 = sub_269C4BEAC(&unk_287A9F310);
        v111 = &type metadata for GoalPickerItem;
        v66 = sub_269C55120(v63, v64, v65);
        v108 = v88;
        v109 = v60;
        v112 = v66;
        v110 = v62;

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v54 == 1)
    {
      if (BPSBridgeTintColor())
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v99 = v54;
    result = sub_269D9B290();
    __break(1u);
    return result;
  }

  sub_269D987C0();
  v22 = v99;
  v23 = v100;
  v24 = MEMORY[0x277D837D0];
  sub_269C54D8C(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v87 = v25;
  v26 = swift_allocObject();
  v86 = xmmword_269DA0D60;
  *(v26 + 16) = xmmword_269DA0D60;
  v85 = *MEMORY[0x277D12788];
  *(v26 + 32) = sub_269D9A630();
  *(v26 + 40) = v27;
  *(v26 + 48) = 0x7065656C53;
  *(v26 + 56) = 0xE500000000000000;
  *(v26 + 64) = 0x736E6F6974704FLL;
  *(v26 + 72) = 0xE700000000000000;
  *&v94 = v26;
  sub_269C49A1C(&unk_287A9F320);
  sub_269C54D8C(0, &qword_280C0B4F0, v24, MEMORY[0x277D83940]);
  v84 = v28;
  sub_269C4BE38();
  v29 = v90;
  v30 = sub_269D9A520();
  v32 = v31;

  sub_269C4BEAC(&unk_287A9F340);
  LOBYTE(v108) = v23;
  *&v94 = v22;
  BYTE8(v94) = v23;
  v95 = v29;
  *&v96 = a3;
  *(&v96 + 1) = v30;
  *&v97 = v32;
  *(&v97 + 1) = v30;
  v98 = v32;
  v99 = v22;
  v100 = v23;
  v101 = v29;
  v102 = 0;
  v103 = a3;
  v104 = v30;
  v105 = v32;
  v106 = v30;
  v107 = v32;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_269C54DDC(&v94, v91);
  v33 = sub_269C54E14(&v99);
  v92 = &type metadata for GoalTableViewItem;
  v93 = sub_269C54E44(v33, v34, v35);
  v36 = swift_allocObject();
  v91[0] = v36;
  v37 = v97;
  *(v36 + 48) = v96;
  *(v36 + 64) = v37;
  *(v36 + 80) = v98;
  v38 = v95;
  *(v36 + 16) = v94;
  *(v36 + 32) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v86;
  *(v39 + 32) = sub_269D9A630();
  *(v39 + 40) = v40;
  *(v39 + 48) = 0x7065656C53;
  *(v39 + 56) = 0xE500000000000000;
  *(v39 + 64) = 0x736E6F6974704FLL;
  *(v39 + 72) = 0xE700000000000000;
  v108 = v39;
  sub_269C49A1C(&unk_287A9F350);
  v41 = sub_269D9A520();
  v43 = v42;

  v44 = sub_269C4BEAC(&unk_287A9F370);
  v111 = &type metadata for GoalPickerTableViewItem;
  v112 = sub_269C54E98(v44, v45, v46);
  v47 = v88;

  v108 = v47;
  v109 = v41;
  v110 = v43;
LABEL_12:
  sub_269C54EEC(0, &qword_28034E100, sub_269C4C0D0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  sub_269C2DB5C(v91, inited + 32);
  sub_269D987C0();
  if (v99 == 1)
  {
    v68 = v111;
    v88 = v112;
    v69 = __swift_project_boxed_opaque_existential_1Tm(&v108, v111);
    v90 = v78;
    Description = v68[-1].Description;
    v71 = Description[8];
    v72 = MEMORY[0x28223BE20](v69, v69);
    v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
    v74 = Description[2];
    v74(v78 - v73, v72);
    inited = sub_269D61DC0(1, 2, 1, inited);
    v99 = inited;
    v76 = MEMORY[0x28223BE20](inited, v75);
    (v74)(v78 - v73, v78 - v73, v68, v76);
    sub_269C5E48C(1, v78 - v73, &v99, v68, *(v88 + 8));
    (Description[1])(v78 - v73, v68);
  }

  sub_269CBA4B8(inited);

  sub_269D98080();
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v108);
}

uint64_t sub_269C545DC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_269D98090();
  a1[4] = &protocol witness table for ArrayDataSourceSection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];

  sub_269C539F4(v4, v5, v6, boxed_opaque_existential_1);
}

void *GoalSectionProvider.deinit()
{

  sub_269C254E8(v0 + 104);
  return v0;
}

uint64_t GoalSectionProvider.__deallocating_deinit()
{

  sub_269C254E8(v0 + 104);

  return swift_deallocClassInstance();
}

unint64_t sub_269C54724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E0E0;
  if (!qword_28034E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepOnboardingContext.EntryPoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_269C54918(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C55174();
}

uint64_t sub_269C549B4()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

id sub_269C54A54(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = HKHealthTintColor();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (v2 != 1)
  {
LABEL_12:
    result = sub_269D9B290();
    __break(1u);
    return result;
  }

  result = BPSBridgeTintColor();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void *sub_269C54AD4()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_269C54AFC()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_269C54B2C(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_269C54BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C54E44(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

uint64_t sub_269C54C1C()
{
  type metadata accessor for GoalTimePickerTableViewCell();
  sub_269C54F50(&qword_28034E160, type metadata accessor for GoalTimePickerTableViewCell, &unk_269DA65F8);
  return sub_269D97F90();
}

uint64_t sub_269C54C84()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_269C54CB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_269C54D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C55778(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

void sub_269C54D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269C54E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E0F0;
  if (!qword_28034E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0F0);
  }

  return result;
}

unint64_t sub_269C54E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E0F8;
  if (!qword_28034E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0F8);
  }

  return result;
}

void sub_269C54EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_269C54F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C54F98(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    return sub_269D972C0();
  }

  else
  {
    v4 = type metadata accessor for ShorterDateComponentsFormatter();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    v7 = [v6 stringFromTimeInterval_];

    if (v7)
    {
      v8 = sub_269D9A630();

      return v8;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_269C550D0()
{
  result = qword_28034E110;
  if (!qword_28034E110)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034E110);
  }

  return result;
}

unint64_t sub_269C55120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E118;
  if (!qword_28034E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E118);
  }

  return result;
}

uint64_t sub_269C55174()
{
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_269C2EACC(0x72756769666E6F43, 0xED00006E6F697461, &v6);
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Edit goal tapped", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  sub_269D987C0();
  v7 = (v8 & 1) == 0;
  return sub_269D987B0();
}

unint64_t sub_269C55300()
{
  result = qword_280C0AEB0;
  if (!qword_280C0AEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0AEB0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_269C5539C(uint64_t a1, int a2)
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

uint64_t sub_269C553E4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_269C55454(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_269C5549C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_269C55510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_269C55558(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_269C555BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E128;
  if (!qword_28034E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E128);
  }

  return result;
}

unint64_t sub_269C55610(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C54E44(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_269C55648(v4, v5, v6);
  a1[2] = v7;
  result = sub_269C5569C(v7, v8, v9);
  a1[3] = result;
  return result;
}

unint64_t sub_269C55648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E130;
  if (!qword_28034E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E130);
  }

  return result;
}

unint64_t sub_269C5569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E138;
  if (!qword_28034E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E138);
  }

  return result;
}

unint64_t sub_269C556F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E140;
  if (!qword_28034E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E140);
  }

  return result;
}

unint64_t sub_269C55748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C55778(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_269C557CC(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_269C55778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E148;
  if (!qword_28034E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E148);
  }

  return result;
}

unint64_t sub_269C557CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E150;
  if (!qword_28034E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E150);
  }

  return result;
}

unint64_t sub_269C55824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E158;
  if (!qword_28034E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E158);
  }

  return result;
}

unint64_t sub_269C55878()
{
  result = qword_28034E168;
  if (!qword_28034E168)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034E168);
  }

  return result;
}

Class sub_269C558C0(char a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 40) == 1)
  {
    v3 = 32;
    if (a1)
    {
      v3 = 24;
    }

    v4 = *(v1 + v3);
    v5 = *MEMORY[0x277D76838];
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 traitCollectionWithPreferredContentSizeCategory_];
    v9 = [objc_opt_self() preferredFontForTextStyle:v2 compatibleWithTraitCollection:v8];

    v10 = objc_opt_self();
    v11 = [v10 configurationWithFont_];

    v12 = [v10 configurationWithHierarchicalColor_];
    v13 = [v11 configurationByApplyingConfiguration_];

    v18.value.super.isa = v13;
    v14.super.isa = Symbol.uiImage(configuration:)(v18).super.isa;
  }

  else
  {
    v15 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v16 = [objc_opt_self() preferredFontForTextStyle:v2 compatibleWithTraitCollection:v15];

    v7 = [objc_opt_self() configurationWithFont_];
    v19.value.super.isa = v7;
    v14.super.isa = Symbol.uiImage(configuration:)(v19).super.isa;
  }

  return v14.super.isa;
}

uint64_t sub_269C55AC8()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_269C55AF8(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

id sub_269C55B50()
{
  v1 = &v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 12) = 0;
  *&v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_currentConstraints] = 0;
  *&v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_iconView] = [objc_allocWithZone(type metadata accessor for ConfirmationIconView()) init];
  *&v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView] = [objc_allocWithZone(type metadata accessor for ConfirmationFeatureLabelsView()) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ConfirmationFeatureView();
  v2 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C55F68();
  sub_269C56194();
  sub_269C57F8C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269D9EBE0;
  v4 = sub_269D983D0();
  v5 = MEMORY[0x277D74DB8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();

  swift_unknownObjectRelease();

  return v2;
}

void sub_269C55CD4(void *a1, void *a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = a2;
      v8 = [a1 traitCollection];
      v9 = [v8 preferredContentSizeCategory];
      v10 = sub_269D9AD00();

      v11 = [v7 preferredContentSizeCategory];
      LODWORD(v9) = sub_269D9AD00();

      if ((v10 ^ v9))
      {
        sub_269C56194();
      }
    }

    else
    {
      sub_269C56194();
    }
  }

  else
  {
  }
}

uint64_t sub_269C55F68()
{
  sub_269C57F3C(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA13E0;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_iconView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView);
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  for (i = v4; ; i = MEMORY[0x26D651260](0, inited))
  {
    v7 = i;
    sub_269D9A8E0();
    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = MEMORY[0x26D651260](1, inited);
LABEL_9:
  v9 = v8;
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  UIView.addSubviews(_:useAutoLayout:)(inited, 1);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_269C56194()
{
  v1 = v0;
  v45 = OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_currentConstraints;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_currentConstraints])
  {
    v2 = objc_opt_self();
    sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);

    v3 = sub_269D9A7D0();

    [v2 deactivateConstraints_];
  }

  sub_269C57F3C(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA0E10;
  v5 = *&v0[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_iconView];
  v6 = [*&v1[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_iconView] leadingAnchor];
  v7 = [v1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v5 topAnchor];
  v10 = [v1 topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:0.0];

  *(v4 + 40) = v11;
  v12 = *&v1[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView];
  v13 = [v12 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:0.0];

  *(v4 + 48) = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-1.0];

  *(v4 + 56) = v18;
  v46 = v4;
  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];
  LOBYTE(v17) = sub_269D9AD00();

  inited = swift_initStackObject();
  if (v17)
  {
    *(inited + 16) = xmmword_269DA13E0;
    v22 = [v12 topAnchor];
    v23 = [v5 bottomAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:0.0];

    *(inited + 32) = v24;
    v25 = (inited + 40);
    v26 = [v12 leadingAnchor];
    v27 = [v1 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];
  }

  else
  {
    *(inited + 16) = xmmword_269DA13F0;
    v29 = [v5 bottomAnchor];
    v30 = [v1 bottomAnchor];
    v31 = [v29 constraintLessThanOrEqualToAnchor:v30 constant:0.0];

    *(inited + 32) = v31;
    v32 = [v5 centerYAnchor];
    v33 = [v1 centerYAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(inited + 40) = v34;
    v35 = [v12 topAnchor];
    v36 = [v1 topAnchor];
    v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:0.0];

    *(inited + 48) = v37;
    v38 = [v12 centerYAnchor];
    v39 = [v1 centerYAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(inited + 56) = v40;
    v25 = (inited + 64);
    v26 = [v12 leadingAnchor];
    v27 = [v5 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];
  }

  v41 = v28;

  *v25 = v41;
  sub_269C49D30(inited);
  v42 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v43 = sub_269D9A7D0();
  [v42 activateConstraints_];

  *&v1[v45] = v46;
}

void sub_269C567E0(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  v28 = a1[4];
  v4 = v28;
  v29 = v3;
  v5 = a1[1];
  v24 = *a1;
  v25 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v26 = a1[2];
  v9 = v26;
  v27 = v6;
  v10 = v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel;
  v11 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 16);
  v31[0] = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel);
  v31[1] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 80);
  v31[4] = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 64);
  v31[5] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 48);
  v31[2] = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 32);
  v31[3] = v13;
  v30 = *(a1 + 12);
  v32 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 96);
  *v10 = v8;
  *(v10 + 16) = v7;
  v14 = a1[5];
  *(v10 + 96) = *(a1 + 12);
  *(v10 + 64) = v4;
  *(v10 + 80) = v14;
  *(v10 + 32) = v9;
  *(v10 + 48) = v2;
  sub_269C57E84(&v24, v22);
  sub_269C57EBC(v31);
  v15 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView);
  v16 = *(v15 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel);
  v17 = sub_269D9A5F0();
  [v16 setText_];

  v18 = *(v15 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel);
  v19 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v20 = v18;
    v19 = sub_269D9A5F0();
  }

  else
  {
    v21 = v18;
  }

  [v18 setText_];

  v22[4] = v28;
  v22[5] = v29;
  v23 = v30;
  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v22[3] = v27;
  sub_269C5729C(v22);
  sub_269C56984(*(&v29 + 1), v30);
}

void sub_269C56984(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView);
    v4 = *(v3 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel);

    MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
    v5 = sub_269D9A5F0();

    [v4 setAccessibilityIdentifier_];

    v6 = *(v3 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel);

    v7 = v6;
    MEMORY[0x26D650930](0x546C69617465442ELL, 0xEB00000000747865);
    v10 = sub_269D9A5F0();

    [v7 setAccessibilityIdentifier_];
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_labelsView);
    [*(v8 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel) setAccessibilityIdentifier_];
    v9 = *(v8 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel);

    [v9 setAccessibilityIdentifier_];
  }
}

char *sub_269C56C40()
{
  *&v0[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolYConstraint] = 0;
  v1 = *MEMORY[0x277D76A20];
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:v1 compatibleWithTraitCollection:v2];

  v4 = [objc_opt_self() configurationWithFont_];
  v5 = sub_269D9A5F0();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v0[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolView] = v7;
  [v7 setContentMode_];
  v20.receiver = v0;
  v20.super_class = type metadata accessor for ConfirmationIconView();
  v8 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = *&v8[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolView];
  v10 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 addSubview_];
  v11 = objc_opt_self();
  v12 = [v11 systemGray6Color];
  v13 = [v11 systemGray4Color];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277D75348]);
  v19[4] = sub_269C57E64;
  v19[5] = v14;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_269CC7F6C;
  v19[3] = &block_descriptor_0;
  v16 = _Block_copy(v19);
  v17 = [v15 initWithDynamicProvider_];
  _Block_release(v16);

  [v10 setBackgroundColor_];

  sub_269D9AD40();
  sub_269C57030();

  return v10;
}

void sub_269C57030()
{
  v1 = *&v0[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolView];
  v2 = [v1 centerYAnchor];
  v3 = [v0 centerYAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  v5 = OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolYConstraint;
  v6 = *&v0[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolYConstraint];
  *&v0[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolYConstraint] = v4;

  sub_269C57F3C(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA0E10;
  v8 = [v0 heightAnchor];
  v9 = [v8 constraintEqualToConstant_];

  *(v7 + 32) = v9;
  v10 = [v0 widthAnchor];
  v11 = [v10 constraintEqualToConstant_];

  *(v7 + 40) = v11;
  v12 = [v1 centerXAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v7 + 48) = v14;
  v15 = *&v0[v5];
  if (v15)
  {
    *(v7 + 56) = v15;
    v16 = objc_opt_self();
    sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
    v17 = v15;
    v18 = sub_269D9A7D0();

    [v16 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_269C5729C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(v2 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolView);
  LOWORD(v16) = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = v5;
  v19 = v6;
  LOBYTE(v20) = v7;
  v9 = v17;
  v10 = v5;
  v11 = v6;
  v12 = sub_269C558C0(v3);

  [v8 setImage_];
  if (v7)
  {
    v13 = 0;
  }

  else
  {
    if (v3)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    v13 = v14;
  }

  [v8 setTintColor_];

  result = *(v2 + OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E20ConfirmationIconView_symbolYConstraint);
  if (result)
  {

    return [result setConstant_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_269C5746C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel;
  v3 = *MEMORY[0x277D76918];
  v4 = *MEMORY[0x277D74420];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v6 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v3, 0, 0, 0, 0, 0, 0, v4, 0);
  [v5 setFont_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  *&v0[v2] = v5;
  v7 = *MEMORY[0x277D76968];
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = v9;
  if (v8)
  {
    [v9 setTextColor_];
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel;
  v12 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v7, 0, 0, 0, 0, 0, 0, v4, 0);
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];

  *&v1[v11] = v10;
  v25.receiver = v1;
  v25.super_class = type metadata accessor for ConfirmationFeatureLabelsView();
  v13 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C57F3C(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA13E0;
  v15 = *&v13[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel];
  *(inited + 32) = v15;
  v16 = *&v13[OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel];
  *(inited + 40) = v16;
  v17 = v13;
  v18 = v15;
  v19 = v16;
  UIView.addSubviews(_:useAutoLayout:)(inited, 1);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = [v17 subviews];

  sub_269C1B0B8(0, &qword_2803505E0, 0x277D75D18);
  v21 = sub_269D9A7E0();

  UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(v21, 1.0, 0.0, 0.0, 0.0, 0.0);

  v22 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v23 = sub_269D9A7D0();

  [v22 activateConstraints_];

  return v17;
}

uint64_t sub_269C5785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

uint64_t sub_269C579CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_269C57A84(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_269C57B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_269C57BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269C57C08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_titleLabel;
  v3 = *MEMORY[0x277D76918];
  v4 = *MEMORY[0x277D74420];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v6 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v3, 0, 0, 0, 0, 0, 0, v4, 0);
  [v5 setFont_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  *(v0 + v2) = v5;
  v7 = *MEMORY[0x277D76968];
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = v9;
  if (v8)
  {
    [v9 setTextColor_];
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUIP33_3DB6600DA0668F5E054B253ECFD47B8E29ConfirmationFeatureLabelsView_detailLabel;
  v12 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v7, 0, 0, 0, 0, 0, 0, v4, 0);
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];

  *(v1 + v11) = v10;
  sub_269D9B100();
  __break(1u);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C57EBC(uint64_t a1)
{
  sub_269C57F3C(0, &qword_28034E1C8, &type metadata for ConfirmationFeatureViewModel, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C57F3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269C57F8C(uint64_t a1)
{
  if (!qword_28034E1D0)
  {
    sub_269C2FFF4();
    v1 = sub_269D9B240();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E1D0);
    }
  }
}

void sub_269C57FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269C58074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_269C580BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Result<>.init(summaries:error:)(uint64_t a1, id a2)
{
  v2 = a2;
  if (a1)
  {

    return a1;
  }

  else if (!a2)
  {
    type metadata accessor for HKError(0);
    sub_269C581B0(MEMORY[0x277D84F90]);
    sub_269C582B4();
    sub_269D97340();
    return v5;
  }

  return v2;
}

unint64_t sub_269C581B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269C5830C();
    v3 = sub_269D9B180();
    v4 = a1 + 32;

    while (1)
    {
      sub_269C58370(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_269C4345C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_269C45048(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_269C582B4()
{
  result = qword_28034DB88;
  if (!qword_28034DB88)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DB88);
  }

  return result;
}

void sub_269C5830C()
{
  if (!qword_28034DEA0)
  {
    v0 = sub_269D9B190();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DEA0);
    }
  }
}

uint64_t sub_269C58370(uint64_t a1, uint64_t a2)
{
  sub_269C583D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269C583D4()
{
  if (!qword_28034DEA8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034DEA8);
    }
  }
}

uint64_t sub_269C58438(uint64_t a1, int a2)
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

uint64_t sub_269C58480(uint64_t result, int a2, int a3)
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

uint64_t sub_269C584E8(uint64_t a1, void *a2)
{
  type metadata accessor for LockScreenContentModel(0);
  sub_269C587E8(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
  v3 = a2;
  sub_269D98C70();
  v5 = v4;
  v6 = sub_269D99E60();
  sub_269C585EC(v6, v7, v8);
  sub_269D99BB0();
}

unint64_t sub_269C585EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E1E8;
  if (!qword_28034E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E1E8);
  }

  return result;
}

uint64_t sub_269C58640(uint64_t a1, int a2)
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

uint64_t sub_269C58688(uint64_t result, int a2, int a3)
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

unint64_t sub_269C586D8()
{
  result = qword_28034E1F0;
  if (!qword_28034E1F0)
  {
    sub_269C58788(255);
    sub_269C585EC(v1, v2, v3);
    sub_269C587E8(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E1F0);
  }

  return result;
}

void sub_269C58788(uint64_t a1)
{
  if (!qword_28034E1F8)
  {
    sub_269D99540();
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E1F8);
    }
  }
}

uint64_t sub_269C587E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C5884C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36[1] = a5;
  sub_269C59570(0);
  v36[0] = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  sub_269C596F4(0);
  sub_269C59CA4(&qword_28034E288, sub_269C596F4, sub_269C59C5C, sub_269C5A144);
  v14 = a2;

  sub_269D99EB0();
  v44 = a3;
  v45 = a4;
  sub_269C5B3AC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v18 = sub_269D9A180();
  v20 = v19;
  sub_269C595A4(0);
  v22 = &v12[*(v21 + 36)];
  *v22 = v15;
  *(v22 + 1) = v16;
  v22[16] = v17;
  *(v22 + 3) = v18;
  *(v22 + 4) = v20;
  v23 = &v12[*(v36[0] + 36)];
  v24 = *(sub_269D98DB0() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_269D99120();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #24.0 }

  *v23 = _Q0;
  sub_269C5A270(0);
  *&v23[*(v32 + 36)] = 256;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = v14;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  sub_269C5A374();
  v34 = v14;

  sub_269D99B60();

  return sub_269C5AE2C(v12, sub_269C59570);
}

uint64_t sub_269C58B5C(uint64_t a1, void *a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  sub_269D98890();
}

void sub_269C58C2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = sub_269D997A0();
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v15);
  *(&v78 - 4) = a1;
  *(&v78 - 3) = a2;
  *(&v78 - 16) = a3 & 1;
  *(&v78 - 1) = a4;
  MEMORY[0x28223BE20](v16, v17);
  *(&v78 - 4) = a1;
  *(&v78 - 3) = a2;
  *(&v78 - 16) = v18;
  *(&v78 - 1) = a4;
  sub_269C59A58(0);
  sub_269C59AE8();
  sub_269D99DE0();
  v19 = sub_269D995E0();
  sub_269D98990();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_269C599B8(0);
  v29 = a5 + *(v28 + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  v30 = sub_269D995F0();
  sub_269D98990();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_269C59998(0);
  v40 = a5 + *(v39 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  v41 = sub_269D99600();
  sub_269D98990();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_269C5991C(0);
  v51 = a5 + *(v50 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = sub_269D99620();
  sub_269D98990();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_269C5993C(0, &qword_28034E238, sub_269C5991C);
  v62 = a5 + *(v61 + 36);
  *v62 = v52;
  *(v62 + 8) = v54;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
  *(v62 + 32) = v60;
  *(v62 + 40) = 0;
  sub_269D997B0();
  v63 = v79;
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A10], v79);
  v64 = sub_269D997E0();

  (*(v10 + 8))(v13, v63);
  KeyPath = swift_getKeyPath();
  sub_269C59880(0);
  v67 = (a5 + *(v66 + 36));
  *v67 = KeyPath;
  v67[1] = v64;
  v68 = sub_269D99D20();
  v69 = swift_getKeyPath();
  sub_269C59800(0);
  v71 = (a5 + *(v70 + 36));
  *v71 = v69;
  v71[1] = v68;
  v72 = swift_getKeyPath();
  sub_269C59780(0);
  v74 = a5 + *(v73 + 36);
  *v74 = v72;
  *(v74 + 8) = 1;
  *(v74 + 16) = 0;
  v75 = swift_getKeyPath();

  sub_269C596F4(0);
  v77 = (a5 + *(v76 + 36));
  *v77 = v75;
  v77[1] = 0x3FE0000000000000;
}

uint64_t sub_269C59054@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C5AACC(a1);
  v5 = v4;
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_269C5910C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_269C5A948(0, &qword_28034EA50, type metadata accessor for Alarm, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v25 - v6;
  sub_269C59A58(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    sub_269C5A9AC(v14 + v15, v7);
    v16 = type metadata accessor for Alarm(0);
    v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
    sub_269C5AA40(v7);
    if (v17 == 1)
    {
      v18 = 4096;
    }

    else
    {
      v18 = 4097;
    }

    v25[3] = v18;
    Symbol.systemName.getter();
    v19 = sub_269D99D90();
    v20 = (v12 + *(v9 + 36));
    sub_269C5A948(0, &qword_28034E098, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v22 = *(v21 + 28);
    v23 = *MEMORY[0x277CE1050];
    v24 = sub_269D99DB0();
    (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
    *v20 = swift_getKeyPath();
    *v12 = v19;
    sub_269C5ADC4(v12, a2, sub_269C59A58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269C593DC()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_269C5946C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C5B3AC(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E80();
}

void sub_269C595D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98D00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C5964C(uint64_t a1)
{
  if (!qword_28034E210)
  {
    sub_269C596F4(255);
    sub_269C59CA4(&qword_28034E288, sub_269C596F4, sub_269C59C5C, sub_269C5A144);
    v1 = sub_269D99EE0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E210);
    }
  }
}

void sub_269C596F4(uint64_t a1)
{
  if (!qword_28034E218)
  {
    sub_269C59780(255);
    sub_269C5B3AC(255, &qword_28034E280, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E218);
    }
  }
}

void sub_269C59780(uint64_t a1)
{
  if (!qword_28034E220)
  {
    sub_269C59800(255);
    sub_269C59BF0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E220);
    }
  }
}

void sub_269C59800(uint64_t a1)
{
  if (!qword_28034E228)
  {
    sub_269C59880(255);
    sub_269C59BF0(255, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E228);
    }
  }
}

void sub_269C59880(uint64_t a1)
{
  if (!qword_28034E230)
  {
    sub_269C5993C(255, &qword_28034E238, sub_269C5991C);
    sub_269C59BF0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E230);
    }
  }
}

void sub_269C5993C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C599D8(uint64_t a1)
{
  if (!qword_28034E258)
  {
    sub_269C59A58(255);
    sub_269C59AE8();
    v1 = sub_269D99DF0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E258);
    }
  }
}

void sub_269C59A58(uint64_t a1)
{
  if (!qword_28034E260)
  {
    sub_269C5A948(255, &qword_28034E098, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E260);
    }
  }
}

unint64_t sub_269C59AE8()
{
  result = qword_28034E268;
  if (!qword_28034E268)
  {
    sub_269C59A58(255);
    sub_269C59B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E268);
  }

  return result;
}

unint64_t sub_269C59B68()
{
  result = qword_28034E0D8;
  if (!qword_28034E0D8)
  {
    sub_269C5A948(255, &qword_28034E098, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0D8);
  }

  return result;
}

void sub_269C59BF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C5B3AC(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269C59CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269C59DC0()
{
  result = qword_28034E2A8;
  if (!qword_28034E2A8)
  {
    sub_269C5993C(255, &qword_28034E238, sub_269C5991C);
    sub_269C59EC0(&qword_28034E2B0, sub_269C5991C, sub_269C59E8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E2A8);
  }

  return result;
}

uint64_t sub_269C59EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269C59F44()
{
  result = qword_28034E2C0;
  if (!qword_28034E2C0)
  {
    sub_269C599B8(255);
    sub_269C587E8(&qword_28034E2C8, sub_269C599D8, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E2C0);
  }

  return result;
}

unint64_t sub_269C59FF4()
{
  result = qword_28034E0D0;
  if (!qword_28034E0D0)
  {
    sub_269C59BF0(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0D0);
  }

  return result;
}

unint64_t sub_269C5A064()
{
  result = qword_280C0B5B8;
  if (!qword_280C0B5B8)
  {
    sub_269C59BF0(255, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B5B8);
  }

  return result;
}

unint64_t sub_269C5A0D4()
{
  result = qword_28034E2D0;
  if (!qword_28034E2D0)
  {
    sub_269C59BF0(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E2D0);
  }

  return result;
}

unint64_t sub_269C5A144()
{
  result = qword_28034E2D8;
  if (!qword_28034E2D8)
  {
    sub_269C5B3AC(255, &qword_28034E280, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E2D8);
  }

  return result;
}

void sub_269C5A1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034E2E0)
  {
    sub_269C5A21C(0, a2, a3);
    v3 = sub_269D992B0();
    if (!v4)
    {
      atomic_store(v3, &qword_28034E2E0);
    }
  }
}

unint64_t sub_269C5A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E2E8;
  if (!qword_28034E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E2E8);
  }

  return result;
}

void sub_269C5A270(uint64_t a1)
{
  if (!qword_28034E2F0)
  {
    sub_269D98DB0();
    sub_269C587E8(&qword_28034E2F8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_269D98A40();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E2F0);
    }
  }
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

unint64_t sub_269C5A374()
{
  result = qword_28034E308;
  if (!qword_28034E308)
  {
    sub_269C59570(255);
    sub_269C5A424();
    sub_269C587E8(&qword_28034E328, sub_269C5A270, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E308);
  }

  return result;
}

unint64_t sub_269C5A424()
{
  result = qword_28034E310;
  if (!qword_28034E310)
  {
    sub_269C595A4(255);
    sub_269C587E8(&qword_28034E318, sub_269C5964C, MEMORY[0x277CDF028]);
    sub_269C587E8(&qword_28034E320, sub_269C5A1C0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E310);
  }

  return result;
}

void sub_269C5A504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = [a1 viewWithTag_];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 contentView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v10 setFrame_];
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v10;
    *(v21 + 24) = a3;
    *(v21 + 32) = a4;
    *(v21 + 40) = a5 & 1;
    v24[4] = sub_269C5AF9C;
    v24[5] = v21;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_269CA6718;
    v24[3] = &block_descriptor_1;
    v22 = _Block_copy(v24);

    v23 = v10;

    [v20 animateWithDuration:v22 animations:0.2];
    _Block_release(v22);
  }
}

uint64_t sub_269C5A6B8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a2;
  v12 = a3;
  v13 = a4 & 1;
  sub_269C5B3AC(0, &qword_28034E338, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x26D650250](&v10);
  v8 = 0.2;
  if (!v10)
  {
    v8 = 0.0;
  }

  [a1 setAlpha_];
}

uint64_t sub_269C5A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C5AF48(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_269C5A89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C5AF48(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_269C5A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269C5AF48(a1, a2, a3);
  sub_269D99270();
  __break(1u);
}

void sub_269C5A948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_269C5A9AC(uint64_t a1, uint64_t a2)
{
  sub_269C5A948(0, &qword_28034EA50, type metadata accessor for Alarm, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C5AA40(uint64_t a1)
{
  sub_269C5A948(0, &qword_28034EA50, type metadata accessor for Alarm, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C5AACC(uint64_t a1)
{
  sub_269C5A948(0, &qword_28034EA50, type metadata accessor for Alarm, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Alarm(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider);
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
  swift_beginAccess();
  sub_269C5A9AC(v11 + v12, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_269C5ADC4(v5, v10, type metadata accessor for Alarm);
    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      v16 = sub_269D974B0();
      v17 = [v15 formatDateAsTimeStyle_];

      if (v17)
      {
        sub_269D9A630();

        sub_269C5AE2C(v10, type metadata accessor for Alarm);
        return;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  sub_269C5AA40(v5);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v13 = qword_280C0D990;
  sub_269D972C0();
}

uint64_t sub_269C5ADC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C5AE2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_269C5AEA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_269C5AEE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_269C5AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E330;
  if (!qword_28034E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E330);
  }

  return result;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269C5AFC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  [v0 setAutoresizingMask_];
  v1 = [v0 layer];
  [v1 setAllowsHitTesting_];

  [v0 setUserInteractionEnabled_];
  sub_269C5B3AC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA13F0;
  v3 = [objc_opt_self() effectWithBlurRadius_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v2 + 32) = v3;
  v4 = [objc_opt_self() blackColor];
  v5 = [objc_opt_self() effectCompositingColor:v4 withMode:1010 alpha:0.12];

  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 40) = v5;
  v6 = objc_opt_self();
  v7 = sub_269D9A5F0();
  v8 = [v6 kitImageNamed_];

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 colorEffectLuminanceMap:v8 blendingAmount:0.7];

    *(v2 + 48) = v10;
    *(v2 + 56) = [v9 colorEffectSaturate_];
    *(v2 + 64) = [v9 colorEffectBrightness_];
    sub_269C5B3FC();
    v11 = sub_269D9A7D0();

    [v0 setBackgroundEffects_];

    v12 = [v0 contentView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v21 setAutoresizingMask_];
    v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.03125 green:0.03125 blue:0.03125 alpha:1.0];
    [v21 setBackgroundColor_];

    [v21 setAlpha_];
    [v21 setUserInteractionEnabled_];
    [v21 setTag_];
    v23 = [v0 contentView];
    [v23 addSubview_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_269C5B3AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269C5B3FC()
{
  result = qword_28034E340;
  if (!qword_28034E340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E340);
  }

  return result;
}

double sub_269C5B464@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  CGRectGetMidX(*&a2);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidY(v21);
  asin(a7 * 0.5 / a8);
  sub_269D998D0();
  sub_269D998B0();
  asin(a7 * 0.5 / a9);
  sub_269D998B0();
  sub_269D99890();
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

double sub_269C5B598(double a1, double a2, double a3, double a4)
{
  sub_269D99CA0();
  v8 = v7;
  v14 = a2;
  v15 = v7;
  v12 = a4;
  v13 = a3;
  v9 = MEMORY[0x277D839F8];
  v10 = *(*(MEMORY[0x277D839F8] - 8) + 8);
  v10(&v12, MEMORY[0x277D839F8]);
  v10(&v13, v9);
  v10(&v14, v9);
  v10(&v15, v9);
  return v8;
}

double sub_269C5B674@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_269C5B464(v9, a2, a3, a4, a5, v5[1], v5[2], v5[3]);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_269C5B6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C5BAD4(a1, a2, a3);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_269C5B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C5BAD4(a1, a2, a3);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_269C5B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C5BAD4(a1, a2, a3);

  return MEMORY[0x282133738](a1, v4);
}

void sub_269C5B7D4(uint64_t a1@<X8>)
{
  *a1 = sub_269C5B598(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

__n128 sub_269C5B808(uint64_t a1)
{
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_269D99CB0();
  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

void (*sub_269C5B84C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = sub_269C5B598(*v1, v1[1], v1[2], v1[3]);
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_269C5B8D0;
}

void sub_269C5B8D0(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v4 = *(*a1 + 1);
  v3 = *(*a1 + 3);
  sub_269D99CB0();
  *(v2 + 8) = v4;
  *(v2 + 24) = v3;

  free(v1);
}

void sub_269C5B94C()
{
  if (!qword_28034E350)
  {
    v0 = sub_269D98D10();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E350);
    }
  }
}

uint64_t sub_269C5BA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269C5BA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034E360)
  {
    sub_269C5BAD4(0, a2, a3);
    v3 = sub_269D989D0();
    if (!v4)
    {
      atomic_store(v3, &qword_28034E360);
    }
  }
}

unint64_t sub_269C5BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E368;
  if (!qword_28034E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E368);
  }

  return result;
}

unint64_t sub_269C5BB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E370;
  if (!qword_28034E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E370);
  }

  return result;
}

unint64_t sub_269C5BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E378;
  if (!qword_28034E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E378);
  }

  return result;
}

uint64_t SleepActivityConfigurationSectionLayout.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

unint64_t sub_269C5BC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E380;
  if (!qword_28034E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepStage(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_269C5BE08(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = [*&a1[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported];
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v7 = qword_280C0D990;
  v8 = sub_269D972C0();
  v10 = v9;

  sub_269C5C1B8(0, &qword_28034E388, &type metadata for SectionContent);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269D9EBE0;
  if (v5 <= 1)
  {
    if (v5)
    {
      sub_269D26518(v34);
    }

    else
    {
      sub_269D26408(v34);
    }

    v29 = v34[1];
    v30 = v34[0];
    v23 = v35;
    v24 = v36;
    sub_269C5C1B8(0, &qword_28034E390, &type metadata for SectionItem);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_269D9EBE0;
    *(v25 + 32) = v30;
    *(v25 + 48) = v29;
    *(v25 + 64) = v23;
    *(v25 + 72) = v24;
    *(v25 + 73) = 0;
    sub_269C961DC(v25, v8, v10, 0, 0, &v31);
    v26 = v33;
    v27 = *v32;
    v28 = *&v32[16];
    *(v11 + 32) = v31;
    *(v11 + 48) = v27;
    *(v11 + 64) = v28;
    *(v11 + 80) = v26;
  }

  else if (v5 == 2)
  {
    sub_269C5C1B8(0, &qword_28034E390, &type metadata for SectionItem);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_269D9EBE0;
    sub_269D8AF18(&v31);
    v18 = *v32;
    *(v17 + 32) = v31;
    *(v17 + 48) = v18;
    *(v17 + 56) = *&v32[8];
    *(v17 + 72) = 768;
    v19 = "OOTER_MAIN_EXPERIENCE";
    if (v6)
    {
      v20 = 0xD000000000000036;
    }

    else
    {
      v20 = 0xD000000000000029;
    }

    if (v6)
    {
      v21 = 0;
    }

    else
    {
      v19 = "vityConfiguration";
      v21 = 3;
    }

    sub_269C96434(v17, v8, v10, v20, v19 | 0x8000000000000000, v21, (v11 + 32));
  }

  else
  {
    if (v5 == 3)
    {
      sub_269C5C1B8(0, &qword_28034E390, &type metadata for SectionItem);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_269D9EBE0;
      *(v12 + 32) = a1;
      *(v12 + 40) = 3;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 1024;
      *(v12 + 48) = 0;
      v13 = a1;
      if (v6)
      {
        v14 = 0xD000000000000025;
      }

      else
      {
        v14 = 0xD000000000000029;
      }

      if (v6)
      {
        v15 = "LATFORM_EDIT_SLEEP_FOOTER";
      }

      else
      {
        v15 = "vityConfiguration";
      }

      if (v6)
      {
        v16 = 0;
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      sub_269C5C1B8(0, &qword_28034E390, &type metadata for SectionItem);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_269D9EBE0;
      *(v12 + 32) = a1;
      *(v12 + 40) = 4;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 1024;
      *(v12 + 48) = 0;
      v22 = a1;
      if (v6)
      {
        v14 = 0xD000000000000025;
      }

      else
      {
        v14 = 0xD000000000000029;
      }

      if (v6)
      {
        v15 = "LATFORM_EDIT_SLEEP_FOOTER";
      }

      else
      {
        v15 = "vityConfiguration";
      }

      if (v6)
      {
        v16 = 0;
      }

      else
      {
        v16 = 3;
      }
    }

    sub_269C96434(v12, v8, v10, v14, v15 | 0x8000000000000000, v16, (v11 + 32));
  }

  *a2 = v11;
}

void sub_269C5C1B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269D9B240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ConfirmationOnboardingSection(uint64_t a1)
{
  result = qword_28034E398;
  if (!qword_28034E398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C5C290(uint64_t a1)
{
  v2 = sub_269D975C0();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_269D98090();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v5);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  [*(a1 + 40) sleepDurationGoal];
  v8 = v7;
  v9 = 0;
  if (v7 > 0.0)
  {
    [*(a1 + 40) sleepDurationGoal];
    v9 = v10;
  }

  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269DA0D60;
  *(v11 + 32) = sub_269D9A630();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0x7065656C53;
  *(v11 + 56) = 0xE500000000000000;
  *(v11 + 64) = 0x696472616F626E4FLL;
  *(v11 + 72) = 0xEA0000000000676ELL;
  v68[0] = v11;
  sub_269C49A1C(&unk_287A9F8D8);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v13 = sub_269D9A520();
  v15 = v14;

  v16 = swift_arrayDestroy();
  v69 = &type metadata for ConfirmationGoalItem;
  v70 = sub_269C5E438(v16, v17, v18);
  v19 = swift_allocObject();
  v68[0] = v19;
  *(v19 + 16) = v9;
  *(v19 + 24) = v8 <= 0.0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  v20 = MEMORY[0x277D84F90];
  v21 = sub_269D61DC0(0, 1, 1, MEMORY[0x277D84F90]);
  v71[0] = v21;
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v24 = v69;
    v25 = v70;
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v27 = MEMORY[0x28223BE20](v26, v26);
    v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v27);
    sub_269C5E48C(v23, v29, v71, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v71[0] = v21;
    v66 = a1;
    v31 = [*(a1 + 40) occurrences];
    sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
    v32 = sub_269D9A7E0();

    v68[0] = v20;
    v33 = v32 >> 62 ? sub_269D9AF50() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = MEMORY[0x277D84F90];
    if (!v33)
    {
      break;
    }

    v35 = 0;
    v67 = v32 & 0xC000000000000001;
    v23 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v67)
      {
        v36 = MEMORY[0x26D651260](v35, v32);
      }

      else
      {
        v22 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35 >= v22)
        {
          goto LABEL_34;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v21 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_269D9A8E0();
      v20 = sub_269D9A8D0();
      sub_269D9A880();
      a1 = v38;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v39 = [v37 isSingleDayOverride];

      if (v39)
      {
      }

      else
      {
        v20 = v68;
        sub_269D9B050();
        sub_269D9B090();
        sub_269D9B0A0();
        sub_269D9B060();
      }

      ++v35;
      if (v21 == v33)
      {
        v40 = v68[0];
        v34 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v21 = sub_269D61DC0((v22 > 1), v23 + 1, 1, v21);
    v71[0] = v21;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
  {
    v41 = *(v40 + 16);
    if (v41)
    {
      goto LABEL_24;
    }

LABEL_38:

LABEL_39:
    v44 = sub_269CBA5F8(v34);

    sub_269C49D48(v44);
    v45 = v66;
    v46 = swift_retain_n();
    v47 = sub_269C5CB88(v46, 0);
    v68[0] = v45;
    LOBYTE(v68[1]) = 1;
    BYTE1(v68[1]) = (v47 & 1) == 0;
    sub_269C5CD94(v68, v71);
    v68[0] = v45;
    LOWORD(v68[1]) = 256;
    sub_269C5CD94(v68, v71);
    v67 = v71[0];
    sub_269CBA4B8(v71[0]);
    v48 = v60;
    sub_269D975B0();
    sub_269D97590();
    v49 = v62;
    v50 = *(v61 + 8);
    v50(v48, v62);
    v51 = v63;
    sub_269D98080();
    sub_269C5E524(0);
    v52 = v64;
    v53 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_269D9EBE0;
    (*(v52 + 16))(v54 + v53, v51, v65);
    v68[0] = 0;
    v68[1] = 0xE000000000000000;
    sub_269D9B000();

    strcpy(v68, "MutableArray<");
    HIWORD(v68[1]) = -4864;
    sub_269D975B0();
    v55 = sub_269D97590();
    v57 = v56;
    v50(v48, v49);
    MEMORY[0x26D650930](v55, v57);

    MEMORY[0x26D650930](62, 0xE100000000000000);
    v58 = sub_269D980A0();

    (*(v52 + 8))(v51, v65);

    return v58;
  }

  v41 = sub_269D9AF50();
  if (!v41)
  {
    goto LABEL_38;
  }

LABEL_24:
  v68[0] = v34;
  sub_269D9B080();
  if ((v41 & 0x8000000000000000) == 0)
  {
    sub_269D9A8E0();
    v42 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D651260](v42, v40);
      }

      else
      {
        v43 = *(v40 + 8 * v42 + 32);
      }

      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ++v42;
      sub_269D9B050();
      sub_269D9B090();
      sub_269D9B0A0();
      sub_269D9B060();
    }

    while (v41 != v42);

    v34 = v68[0];
    goto LABEL_39;
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_269C5CB88(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_269C5D4A4(v19);
    sub_269C5E5D0(v19);
    if (v20 == 1)
    {
      sub_269C5D738(a1, v17);
      sub_269C5E5D0(v17);
      if (v18 == 1)
      {
        sub_269C5D9B8(a1, v15);
        sub_269C5E5D0(v15);
        if ((v16 & 1) != 0 || (v8 = a1[14], v9 = a1[15], __swift_project_boxed_opaque_existential_1Tm(a1 + 11, v8), ((*(v9 + 96))(v8, v9) & 1) == 0))
        {
          sub_269C5DC34(a1, v13);
          sub_269C5E5D0(v13);
          if (v14)
          {
            sub_269C5DF7C(a1, v11);
            sub_269C5E5D0(v11);
            if ((v12 & 1) == 0)
            {
              goto LABEL_8;
            }

LABEL_15:
            v7 = 0;
            return v7 & 1;
          }
        }
      }
    }

LABEL_16:
    v7 = 1;
    return v7 & 1;
  }

  sub_269C5D4A4(v19);
  sub_269C5E5D0(v19);
  if (v20)
  {
    goto LABEL_16;
  }

  sub_269C5D738(a1, v17);
  sub_269C5E5D0(v17);
  if (v18 == 1)
  {
    goto LABEL_16;
  }

  sub_269C5D9B8(a1, v15);
  sub_269C5E5D0(v15);
  if (v16 == 1)
  {
    v3 = a1[14];
    v4 = a1[15];
    __swift_project_boxed_opaque_existential_1Tm(a1 + 11, v3);
    if ((*(v4 + 96))(v3, v4))
    {
      goto LABEL_16;
    }
  }

  sub_269C5DC34(a1, v13);
  sub_269C5E5D0(v13);
  if (v14 == 1)
  {
    goto LABEL_16;
  }

  sub_269C5DF7C(a1, v11);
  sub_269C5E5D0(v11);
  if (v12 != 1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v5 = a1[14];
  v6 = a1[15];
  __swift_project_boxed_opaque_existential_1Tm(a1 + 11, v5);
  v7 = (*(v6 + 136))(v5, v6);
  return v7 & 1;
}

uint64_t sub_269C5CD94(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_269C5CB88(v3, v4))
  {
    v6 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_269D61DC0(0, v6[2] + 1, 1, v6);
      v6 = isUniquelyReferenced_nonNull_native;
      *a2 = isUniquelyReferenced_nonNull_native;
    }

    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_269D61DC0((v10 > 1), v11 + 1, 1, v6);
      v6 = isUniquelyReferenced_nonNull_native;
      *a2 = isUniquelyReferenced_nonNull_native;
    }

    v14 = &type metadata for ConfirmationFeaturesItem;
    v15 = sub_269C5E57C(isUniquelyReferenced_nonNull_native, v8, v9);
    *&v13 = v3;
    BYTE8(v13) = v4;
    BYTE9(v13) = v5;
    v6[2] = v11 + 1;
    sub_269C25520(&v13, &v6[5 * v11 + 4]);
  }
}

uint64_t sub_269C5CF48()
{
  sub_269D98100();

  return swift_deallocClassInstance();
}

uint64_t sub_269C5CF80()
{
  type metadata accessor for ConfirmationListItemTableViewCell();
  sub_269C5D090(&qword_28034E3A8, type metadata accessor for ConfirmationListItemTableViewCell, &unk_269DA9484);
  sub_269D9AAE0();
  type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  sub_269C5D090(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell, &unk_269DA68F4);
  sub_269D9AAE0();
  type metadata accessor for ConfirmationFeaturesTableViewCell();
  sub_269C5D090(&qword_28034E3B8, type metadata accessor for ConfirmationFeaturesTableViewCell, &unk_269DA9C5C);
  return sub_269D9AAE0();
}

uint64_t sub_269C5D090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C5D0D8()
{
  type metadata accessor for ConfirmationListItemTableViewCell();
  sub_269C5D090(&qword_28034E3A8, type metadata accessor for ConfirmationListItemTableViewCell, &unk_269DA9484);
  return sub_269D97F90();
}

uint64_t sub_269C5D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C5E438(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

uint64_t sub_269C5D1C0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_269C5D1F0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_269C5D248()
{
  type metadata accessor for ScheduleOccurrenceTableViewCell(0);
  sub_269C5D090(&qword_28034E3B0, type metadata accessor for ScheduleOccurrenceTableViewCell, &unk_269DA68F4);
  return sub_269D97F90();
}

double sub_269C5D2B0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v3;
  static ScheduleOccurrenceViewModel.ViewStyle.sleepOnboardingReceiptStyle.getter(v6);
  *&result = ScheduleOccurrenceViewModel.init(scheduleOccurrence:windDownTimeInterval:viewStyle:)(v3, 0, 1, v6, a1).n128_u64[0];
  return result;
}

uint64_t sub_269C5D300()
{
  sub_269D9B350();
  sub_269D9ADE0();
  return sub_269D9B390();
}

uint64_t sub_269C5D368(uint64_t a1)
{
  sub_269D9B350();
  sub_269D9ADE0();
  return sub_269D9B390();
}

uint64_t sub_269C5D3A8()
{
  [*v0 weekdays];
  v1 = HKSPIdentifierStringForWeekdays();
  v2 = sub_269D9A630();

  return v2;
}

uint64_t sub_269C5D404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C5EA6C(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

uint64_t sub_269C5D4A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = sub_269D972C0();
  v18 = v3;
  v19 = v2;
  v4 = sub_269D972C0();
  v6 = v5;
  v7 = *MEMORY[0x277D76A28];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 hk_sleepKeyColor];
  v11 = [v8 tertiaryLabelColor];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269DA0D60;
  *(v12 + 32) = sub_269D9A630();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0x7065656C53;
  *(v12 + 56) = 0xE500000000000000;
  *(v12 + 64) = 0x696472616F626E4FLL;
  *(v12 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F798);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v14 = sub_269D9A520();
  v16 = v15;

  result = swift_arrayDestroy();
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = 0;
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  return result;
}

uint64_t sub_269C5D738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v18 = sub_269D972C0();
  v5 = v4;
  swift_beginAccess();
  v6 = [*(a1 + 48) scheduledSleepMode];
  v7 = *MEMORY[0x277D76A20];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 hk_sleepKeyColor];
  v11 = [v8 tertiaryLabelColor];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269DA0D60;
  *(v12 + 32) = sub_269D9A630();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0x7065656C53;
  *(v12 + 56) = 0xE500000000000000;
  *(v12 + 64) = 0x696472616F626E4FLL;
  *(v12 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F7D8);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v14 = sub_269D9A520();
  v16 = v15;

  result = swift_arrayDestroy();
  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = -32512;
  *(a2 + 48) = 0;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = 1;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  return result;
}

uint64_t sub_269C5D9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v18 = sub_269D972C0();
  v5 = v4;
  swift_beginAccess();
  v6 = [*(a1 + 48) sleepTracking];
  v7 = *MEMORY[0x277D76A20];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 hk_sleepKeyColor];
  v11 = [v8 tertiaryLabelColor];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269DA0D60;
  *(v12 + 32) = sub_269D9A630();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0x7065656C53;
  *(v12 + 56) = 0xE500000000000000;
  *(v12 + 64) = 0x696472616F626E4FLL;
  *(v12 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F818);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v14 = sub_269D9A520();
  v16 = v15;

  result = swift_arrayDestroy();
  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = -32766;
  *(a2 + 48) = 0;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  return result;
}

uint64_t sub_269C5DC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  [*(a1 + 40) windDownTime];
  v5 = v4;
  v6 = type metadata accessor for ShorterDateComponentsFormatter();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v32.receiver = v7;
  v32.super_class = v6;
  v8 = objc_msgSendSuper2(&v32, sel_init);
  v9 = [v8 stringFromTimeInterval_];

  if (v9)
  {
    v10 = sub_269D9A630();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v13 = sub_269D972C0();
  v30 = v14;
  v31 = v13;
  [*(a1 + 40) windDownTime];
  if (v15 <= 0.0)
  {

    v29 = 0;
    v12 = 0;
  }

  else
  {
    v29 = v10;
  }

  [*(a1 + 40) windDownTime];
  v17 = v16 > 0.0;
  v18 = *MEMORY[0x277D76A28];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 hk_sleepKeyColor];
  v22 = [v19 tertiaryLabelColor];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269DA0D60;
  *(v23 + 32) = sub_269D9A630();
  *(v23 + 40) = v24;
  *(v23 + 48) = 0x7065656C53;
  *(v23 + 56) = 0xE500000000000000;
  *(v23 + 64) = 0x696472616F626E4FLL;
  *(v23 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F858);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v25 = sub_269D9A520();
  v27 = v26;

  result = swift_arrayDestroy();
  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29;
  *(a2 + 24) = v12;
  *(a2 + 32) = v17;
  *(a2 + 40) = 0x8000;
  *(a2 + 48) = 0xC000000000000000;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = 0;
  *(a2 + 88) = v25;
  *(a2 + 96) = v27;
  return result;
}

uint64_t sub_269C5DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 128);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  if (v4)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (v4)
  {
    v6 = 0x44454C42414E45;
  }

  else
  {
    v6 = 0x44454C4241534944;
  }

  v7 = qword_280C0D990;
  v8 = sub_269D972C0();
  v25 = v9;
  v26 = v8;

  sub_269D9B000();

  MEMORY[0x26D650930](v6, v5);

  v10 = v7;
  v11 = sub_269D972C0();
  v13 = v12;

  v14 = *MEMORY[0x277D76A28];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 hk_sleepKeyColor];
  v18 = [v15 tertiaryLabelColor];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269DA0D60;
  *(v19 + 32) = sub_269D9A630();
  *(v19 + 40) = v20;
  *(v19 + 48) = 0x7065656C53;
  *(v19 + 56) = 0xE500000000000000;
  *(v19 + 64) = 0x696472616F626E4FLL;
  *(v19 + 72) = 0xEA0000000000676ELL;
  sub_269C49A1C(&unk_287A9F898);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v21 = sub_269D9A520();
  v23 = v22;

  result = swift_arrayDestroy();
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = 1;
  *(a2 + 40) = -32510;
  *(a2 + 48) = 0;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = 0;
  *(a2 + 88) = v21;
  *(a2 + 96) = v23;
  return result;
}

uint64_t sub_269C5E2E4()
{
  type metadata accessor for ConfirmationFeaturesTableViewCell();
  sub_269C5D090(&qword_28034E3B8, type metadata accessor for ConfirmationFeaturesTableViewCell, &unk_269DA9C5C);
  return sub_269D97F90();
}

void sub_269C5E34C()
{
  v1 = *(v0 + 8);
  sub_269C5EB08();
  sub_269D9A660();
  MEMORY[0x26D650930](95, 0xE100000000000000);
  if (v1)
  {
    v2 = 0x64656C62616E65;
  }

  else
  {
    v2 = 0x64656C6261736964;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x26D650930](v2, v3);
}

uint64_t sub_269C5E3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269C5E57C(a1, a2, a3);

  return MEMORY[0x282169440](a1, v4);
}

unint64_t sub_269C5E438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3C0;
  if (!qword_28034E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3C0);
  }

  return result;
}

uint64_t sub_269C5E48C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_269C25520(&v12, v10 + 40 * a1 + 32);
}

void sub_269C5E524(uint64_t a1)
{
  if (!qword_28034E3C8)
  {
    sub_269D98090();
    v1 = sub_269D9B240();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E3C8);
    }
  }
}

unint64_t sub_269C5E57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3D0;
  if (!qword_28034E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3D0);
  }

  return result;
}

uint64_t sub_269C5E624(char a1)
{
  if (a1)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_6;
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t sub_269C5E724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_269C5E780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
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

uint64_t sub_269C5E7F8(uint64_t *a1, int a2)
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

uint64_t sub_269C5E840(uint64_t result, int a2, int a3)
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

unint64_t sub_269C5E890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C5E8B8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269C5E8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3D8;
  if (!qword_28034E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3D8);
  }

  return result;
}

unint64_t sub_269C5E910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3E0;
  if (!qword_28034E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3E0);
  }

  return result;
}

unint64_t sub_269C5E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3E8;
  if (!qword_28034E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3E8);
  }

  return result;
}

unint64_t sub_269C5E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3F0;
  if (!qword_28034E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3F0);
  }

  return result;
}

unint64_t sub_269C5EA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E3F8;
  if (!qword_28034E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E3F8);
  }

  return result;
}

unint64_t sub_269C5EA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E400;
  if (!qword_28034E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E400);
  }

  return result;
}

unint64_t sub_269C5EAC0()
{
  result = qword_28034E408;
  if (!qword_28034E408)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034E408);
  }

  return result;
}

unint64_t sub_269C5EB08()
{
  result = qword_28034E410;
  if (!qword_28034E410)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034E410);
  }

  return result;
}

id sub_269C5EB50()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1 = sub_269D9A5F0();
  [v0 setSourceBundleIdentifier_];

  result = [v0 resume];
  qword_28035E468 = v0;
  return result;
}

uint64_t ScheduleOccurrenceAlarmSnoozeDurationTableViewCell.apply(_:)(uint64_t a1)
{
  type metadata accessor for AlarmSnoozeDurationModel(0);
  v3 = swift_allocObject();
  sub_269D97A20();
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel] = v3;

  [v1 setNeedsUpdateConfiguration];
}

id sub_269C5ECB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel] = 0;
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v6 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = sub_269CC7C58;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_269CC7F6C;
  v13[3] = &block_descriptor_2;
  v8 = _Block_copy(v13);
  v9 = v6;
  v10 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  [v9 setBackgroundColor_];

  [v9 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_269D9ABD0();

  return v11;
}

uint64_t sub_269C5EE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269C601F8(0);
  v5[3] = v3;
  v5[4] = sub_269C603A0(&qword_28034E458, sub_269C601F8, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_269C60654(0, &qword_28034E440, type metadata accessor for AlarmSnoozeDurationView, MEMORY[0x277D83D88]);
  sub_269C602C8();
  sub_269D99390();
  return MEMORY[0x26D650E10](v5);
}

uint64_t sub_269C5EF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmSnoozeDurationView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C60654(0, &qword_28034E440, type metadata accessor for AlarmSnoozeDurationView, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel))
  {
    type metadata accessor for AlarmSnoozeDurationModel(0);
    sub_269C603A0(&qword_28034E460, type metadata accessor for AlarmSnoozeDurationModel, &unk_269DA1E4C);

    sub_269D9A110();
    sub_269C6047C(v8, v12);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_269C603E8(v12, a2);
}

id ScheduleOccurrenceAlarmSnoozeDurationTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269C5F3AC(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for AlarmSnoozeDurationModel(0);
  v4 = swift_allocObject();
  sub_269D97A20();
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel] = v4;

  [v3 setNeedsUpdateConfiguration];
}

uint64_t sub_269C5F468()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI24AlarmSnoozeDurationModel___observationRegistrar;
  v2 = sub_269D97A30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269C5F514(uint64_t a1)
{
  result = sub_269D97A30();
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

uint64_t sub_269C5F5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmSnoozeDurationView(0);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C608BC(0, &qword_28034E480, sub_269C605C0, sub_269C6080C);
  v42 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v39 - v9;
  sub_269C608BC(0, &qword_28034E4C0, sub_269C60930, sub_269C3C784);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v40 = v39 - v15;
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  sub_269D9A0F0();
  v16 = [*(*(v45 + 16) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v16 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v17 = v44;
  [v44 snoozeDuration];
  v19 = v18;

  v20 = type metadata accessor for ShorterDateComponentsFormatter();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v43.receiver = v21;
  v43.super_class = v20;
  v22 = objc_msgSendSuper2(&v43, sel_init);
  v23 = [v22 stringFromTimeInterval_];

  v24 = 1;
  if (v23)
  {
    v25 = sub_269D9A630();
    v39[1] = v4;
    v26 = v13;
    v27 = v12;
    v28 = a1;
    v30 = v29;

    *v10 = sub_269D99090();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_269C60B40(0);
    sub_269C5FA38(v25, v30, &v10[*(v31 + 44)]);
    a1 = v28;
    v12 = v27;
    v13 = v26;

    v10[*(v42 + 36)] = 0;
    sub_269C60CC4(v1, v6, type metadata accessor for AlarmSnoozeDurationView);
    v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v33 = swift_allocObject();
    sub_269C6047C(v6, v33 + v32);
    sub_269C609E4();
    v34 = v40;
    sub_269D99AB0();

    sub_269C60C38(v10);
    v35 = sub_269D99D40();
    KeyPath = swift_getKeyPath();
    v37 = (v34 + *(v12 + 36));
    *v37 = KeyPath;
    v37[1] = v35;
    sub_269C1C8F8(v34, a1);
    v24 = 0;
  }

  return (*(v13 + 56))(a1, v24, 1, v12);
}

uint64_t sub_269C5FA38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v60 = a1;
  v61 = a2;
  v66 = a3;
  sub_269C60724(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v65 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v64 = v57 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v63 = v57 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v67 = v57 - v14;
  sub_269D9A8E0();
  v62 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v70 = sub_269D972C0();
  v71 = v15;
  sub_269C3EEE8(v70, v15, v16);
  v17 = MEMORY[0x277D837D0];
  v18 = sub_269D99960();
  v20 = v19;
  v70 = v18;
  v71 = v19;
  v22 = v21 & 1;
  v72 = v21 & 1;
  v73 = v23;
  sub_269C54D8C(0, &qword_280C0B440, v17, MEMORY[0x277D84560]);
  v59 = v24;
  v25 = swift_allocObject();
  v58 = xmmword_269DA0D60;
  *(v25 + 16) = xmmword_269DA0D60;
  v57[1] = *MEMORY[0x277D12788];
  *(v25 + 32) = sub_269D9A630();
  *(v25 + 40) = v26;
  *(v25 + 48) = 0x7065656C53;
  *(v25 + 56) = 0xE500000000000000;
  strcpy((v25 + 64), "ScheduleEditor");
  *(v25 + 79) = -18;
  v68 = v25;
  sub_269C49A1C(&unk_287A9F918);
  sub_269C54D8C(0, &qword_280C0B4F0, v17, MEMORY[0x277D83940]);
  v57[0] = v27;
  sub_269C4BE38();
  v28 = sub_269D9A520();
  v30 = v29;

  sub_269C4BEAC(&unk_287A9F938);
  v68 = v28;
  v69 = v30;

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);

  sub_269D99BB0();

  sub_269C41568(v18, v20, v22);

  v70 = v60;
  v71 = v61;

  v31 = sub_269D99960();
  v33 = v32;
  v35 = v34;
  v36 = [objc_opt_self() tintColor];
  sub_269D99CC0();
  v37 = sub_269D998F0();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_269C41568(v31, v33, v35 & 1);

  v70 = v37;
  v71 = v39;
  v72 = v41 & 1;
  v73 = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_269D9A630();
  *(v44 + 40) = v45;
  *(v44 + 48) = 0x7065656C53;
  *(v44 + 56) = 0xE500000000000000;
  strcpy((v44 + 64), "ScheduleEditor");
  *(v44 + 79) = -18;
  v68 = v44;
  sub_269C49A1C(&unk_287A9F948);
  v46 = sub_269D9A520();
  v48 = v47;

  sub_269C4BEAC(&unk_287A9F968);
  v68 = v46;
  v69 = v48;

  MEMORY[0x26D650930](0x546C69617465442ELL, 0xEB00000000747865);

  v49 = v63;
  sub_269D99BB0();

  sub_269C41568(v37, v39, v41 & 1);

  v50 = v67;
  v51 = v64;
  sub_269C60CC4(v67, v64, sub_269C60724);
  v52 = v65;
  sub_269C60CC4(v49, v65, sub_269C60724);
  v53 = v66;
  sub_269C60CC4(v51, v66, sub_269C60724);
  sub_269C606B8(0);
  v55 = v53 + *(v54 + 48);
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_269C60CC4(v52, v53 + *(v54 + 64), sub_269C60724);
  sub_269C60D2C(v49);
  sub_269C60D2C(v50);
  sub_269C60D2C(v52);
  sub_269C60D2C(v51);
}

uint64_t sub_269C60064()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  sub_269D9A0F0();
  sub_269D9A0F0();
  v0 = *(v5 + 16);
  v1 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  LOBYTE(v0) = *(v0 + v1);

  v2 = *(v5 + 16);
  v3 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v2 + v3) = (v0 & 1) == 0;
  sub_269D98780();
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269C601F8(uint64_t a1)
{
  if (!qword_28034E438)
  {
    sub_269C60654(255, &qword_28034E440, type metadata accessor for AlarmSnoozeDurationView, MEMORY[0x277D83D88]);
    sub_269C602C8();
    v1 = sub_269D993A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E438);
    }
  }
}

unint64_t sub_269C602C8()
{
  result = qword_28034E448;
  if (!qword_28034E448)
  {
    sub_269C60654(255, &qword_28034E440, type metadata accessor for AlarmSnoozeDurationView, MEMORY[0x277D83D88]);
    sub_269C603A0(&qword_28034E450, type metadata accessor for AlarmSnoozeDurationView, &unk_269DA1E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E448);
  }

  return result;
}

uint64_t sub_269C603A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C603E8(uint64_t a1, uint64_t a2)
{
  sub_269C60654(0, &qword_28034E440, type metadata accessor for AlarmSnoozeDurationView, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C6047C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSnoozeDurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269C60508(uint64_t a1)
{
  sub_269C60654(319, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_269C605C0(uint64_t a1)
{
  if (!qword_28034E488)
  {
    sub_269C60654(255, &qword_28034E490, sub_269C606B8, MEMORY[0x277CE14B8]);
    sub_269C60784();
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E488);
    }
  }
}

void sub_269C60654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269C606B8(uint64_t a1)
{
  if (!qword_28034E498)
  {
    sub_269C60724(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28034E498);
    }
  }
}

void sub_269C60724(uint64_t a1)
{
  if (!qword_28034E4A0)
  {
    sub_269D99540();
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E4A0);
    }
  }
}

unint64_t sub_269C60784()
{
  result = qword_28034E4A8;
  if (!qword_28034E4A8)
  {
    sub_269C60654(255, &qword_28034E490, sub_269C606B8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E4A8);
  }

  return result;
}

void sub_269C6080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034E4B0)
  {
    sub_269C60868(0, a2, a3);
    v3 = sub_269D99330();
    if (!v4)
    {
      atomic_store(v3, &qword_28034E4B0);
    }
  }
}

unint64_t sub_269C60868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E4B8;
  if (!qword_28034E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E4B8);
  }

  return result;
}

void sub_269C608BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98D00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C60930(uint64_t a1)
{
  if (!qword_28034E4C8)
  {
    sub_269C608BC(255, &qword_28034E480, sub_269C605C0, sub_269C6080C);
    sub_269C609E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034E4C8);
    }
  }
}

unint64_t sub_269C609E4()
{
  result = qword_28034E4D0;
  if (!qword_28034E4D0)
  {
    sub_269C608BC(255, &qword_28034E480, sub_269C605C0, sub_269C6080C);
    sub_269C603A0(&qword_28034E4D8, sub_269C605C0, MEMORY[0x277CE1138]);
    sub_269C603A0(&qword_28034E4E0, sub_269C6080C, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E4D0);
  }

  return result;
}

unint64_t sub_269C60AF4()
{
  result = qword_28034D9C0;
  if (!qword_28034D9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034D9C0);
  }

  return result;
}

void sub_269C60B40(uint64_t a1)
{
  if (!qword_28034E4E8)
  {
    sub_269C60654(255, &qword_28034E490, sub_269C606B8, MEMORY[0x277CE14B8]);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E4E8);
    }
  }
}

uint64_t sub_269C60BD8()
{
  type metadata accessor for AlarmSnoozeDurationView(0);

  return sub_269C60064();
}

uint64_t sub_269C60C38(uint64_t a1)
{
  sub_269C608BC(0, &qword_28034E480, sub_269C605C0, sub_269C6080C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C60CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C60D2C(uint64_t a1)
{
  sub_269C60724(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269C60D88()
{
  result = qword_28034E4F0;
  if (!qword_28034E4F0)
  {
    sub_269C60E00(255);
    sub_269C60E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E4F0);
  }

  return result;
}

void sub_269C60E00(uint64_t a1)
{
  if (!qword_28034E4F8)
  {
    sub_269C608BC(255, &qword_28034E4C0, sub_269C60930, sub_269C3C784);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E4F8);
    }
  }
}

unint64_t sub_269C60E88()
{
  result = qword_28034E500;
  if (!qword_28034E500)
  {
    sub_269C608BC(255, &qword_28034E4C0, sub_269C60930, sub_269C3C784);
    sub_269C608BC(255, &qword_28034E480, sub_269C605C0, sub_269C6080C);
    sub_269C609E4();
    swift_getOpaqueTypeConformance2();
    sub_269C603A0(&qword_280C0B5B8, sub_269C3C784, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E500);
  }

  return result;
}

uint64_t static String.sleepAccessibilityIdentifier(_:)()
{
  strcpy(v1, "UIA.NanoSleep.");
  MEMORY[0x26D650930]();
  return v1[0];
}

SleepHealthUI::SleepAccessibilityCategory_optional __swiftcall SleepAccessibilityCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269D9B1C0();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SleepAccessibilityCategory.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x73676E6974746553;
    v7 = 0xD000000000000012;
    if (v1 != 8)
    {
      v7 = 0xD000000000000021;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6F63537065656C53;
    if (v1 != 5)
    {
      v8 = 0x746567646957;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x696472616F626E4FLL;
    v3 = 0x656C756465686353;
    v4 = 0xD000000000000012;
    if (v1 != 3)
    {
      v4 = 0x6F6F527065656C53;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x736E6F6974704FLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_269C6120C()
{
  v1 = *v0;
  sub_269D9B350();
  sub_269C6125C(v3, v1);
  return sub_269D9B390();
}

uint64_t sub_269C6125C(uint64_t a1, unsigned __int8 a2)
{
  sub_269D9A6A0();
}

uint64_t sub_269C613F0(uint64_t a1)
{
  v2 = *v1;
  sub_269D9B350();
  sub_269C6125C(v4, v2);
  return sub_269D9B390();
}

uint64_t sub_269C61440@<X0>(uint64_t *a1@<X8>)
{
  result = SleepAccessibilityCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269C6148C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269D9EBF0;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  if (v6 > 4)
  {
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        v9 = 0xEE006D6F6F526572;
        v8 = 0x6F63537065656C53;
      }

      else
      {
        v9 = 0xE600000000000000;
        v8 = 0x746567646957;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      v8 = 0x73676E6974746553;
      v10 = 0xD000000000000012;
      v11 = 0x8000000269DAC400;
      if (v6 != 8)
      {
        v10 = 0xD000000000000021;
        v11 = 0x8000000269DAC420;
      }

      if (v6 != 7)
      {
        v8 = v10;
        v9 = v11;
      }
    }
  }

  else if (v6 <= 1)
  {
    v9 = 0xEA0000000000676ELL;
    v8 = 0x696472616F626E4FLL;
    if (v6)
    {
      v8 = 0x736E6F6974704FLL;
      v9 = 0xE700000000000000;
    }
  }

  else if (v6 == 2)
  {
    v9 = 0xEE00726F74696445;
    v8 = 0x656C756465686353;
  }

  else if (v6 == 3)
  {
    v8 = 0xD000000000000012;
    v9 = 0x8000000269DAC3C0;
  }

  else
  {
    v9 = 0xE90000000000006DLL;
    v8 = 0x6F6F527065656C53;
  }

  *(v7 + 48) = v8;
  *(v7 + 56) = v9;

  sub_269C49A1C(v12);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v13 = sub_269D9A520();

  return v13;
}

uint64_t sub_269C616F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA0D60;
  *(v7 + 32) = sub_269D9A630();
  *(v7 + 40) = v8;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v11 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
        goto LABEL_21;
      }

      if (v6 != 8)
      {
        v11 = 0x8000000269DAC420;
        v9 = 0xD000000000000021;
        goto LABEL_21;
      }

      v9 = 0xD000000000000012;
      v10 = "NotificationDetail";
LABEL_10:
      v11 = (v10 - 32) | 0x8000000000000000;
      goto LABEL_21;
    }

    if (v6 == 5)
    {
      v11 = 0xEE006D6F6F526572;
      v9 = 0x6F63537065656C53;
    }

    else
    {
      v11 = 0xE600000000000000;
      v9 = 0x746567646957;
    }
  }

  else
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v11 = 0xEE00726F74696445;
        v9 = 0x656C756465686353;
        goto LABEL_21;
      }

      if (v6 != 3)
      {
        v11 = 0xE90000000000006DLL;
        v9 = 0x6F6F527065656C53;
        goto LABEL_21;
      }

      v9 = 0xD000000000000012;
      v10 = "ScheduleOccurrence";
      goto LABEL_10;
    }

    if (v6)
    {
      v11 = 0xE700000000000000;
      v9 = 0x736E6F6974704FLL;
    }

    else
    {
      v11 = 0xEA0000000000676ELL;
      v9 = 0x696472616F626E4FLL;
    }
  }

LABEL_21:
  *(v7 + 64) = v9;
  *(v7 + 72) = v11;

  sub_269C49A1C(v12);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v13 = sub_269D9A520();

  return v13;
}

unint64_t sub_269C61968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E508;
  if (!qword_28034E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E508);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepAccessibilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepAccessibilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void SleepTableWelcomeController.init(title:detailText:icon:tableViewStyle:hasSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v7[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = a7;
  v11 = sub_269D9A5F0();
  if (a4)
  {

    v12 = sub_269D9A5F0();
  }

  else
  {
    v12 = 0;
  }

  v24.receiver = v7;
  v24.super_class = type metadata accessor for SleepTableWelcomeController();
  v13 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v11, v12, a5, 1);

  v14 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v15 = v13;
  v16 = [v14 initWithFrame:a6 style:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTableView_];

  v17 = [v15 tableView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor_];

  v20 = [v15 tableView];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = [v15 tableView];
  if (v22)
  {

    v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v22 setTableHeaderView_];

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_269C61D74()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins) != 1)
  {
    return;
  }

  v12 = [v0 tableView];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  [v12 directionalLayoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v15 != v5 || v17 != v7 || v19 != v9 || v21 != v11)
  {
    v25 = [v0 headerView];
    [v25 setDirectionalLayoutMargins_];

    v26 = [v0 tableView];
    if (v26)
    {
      v27 = v26;
      [v26 setDirectionalLayoutMargins_];

      return;
    }

LABEL_22:
    __break(1u);
  }
}

void SleepTableWelcomeController.__allocating_init(title:detailText:icon:tableViewStyle:hasSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  v13[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = a7;
  v14 = sub_269D9A5F0();
  if (a4)
  {

    v15 = sub_269D9A5F0();
  }

  else
  {
    v15 = 0;
  }

  v27.receiver = v13;
  v27.super_class = v8;
  v16 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v14, v15, a5, 1);

  v17 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v18 = v16;
  v19 = [v17 initWithFrame:a6 style:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTableView_];

  v20 = [v18 tableView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v20;
  v22 = [objc_opt_self() systemBackgroundColor];
  [v21 setBackgroundColor_];

  v23 = [v18 tableView];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  v25 = [v18 tableView];
  if (v25)
  {

    v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v25 setTableHeaderView_];

    return;
  }

LABEL_10:
  __break(1u);
}

id SleepTableWelcomeController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_269D9A5F0();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_269D9A5F0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_269D9A5F0();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id SleepTableWelcomeController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_269D9A5F0();

  if (a4)
  {
    v10 = sub_269D9A5F0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

uint64_t sub_269C6251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id SleepTableWelcomeController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_269D9A5F0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_269D9A5F0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_269D9A5F0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id SleepTableWelcomeController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_269D9A5F0();

  if (a4)
  {
    v12 = sub_269D9A5F0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

uint64_t sub_269C627C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id SleepTableWelcomeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTableWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269C628D0()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell____lazy_storage___timePicker;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell____lazy_storage___timePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell____lazy_storage___timePicker);
  }

  else
  {
    v4 = v0;
    v5 = sub_269D912B8();
    v7 = v6;
    v9 = v8;
    v10 = v5;
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for TimeIntervalPickerView());
    v14 = sub_269CD9CE4(v10, v12 & 1, v7, v9);
    v15 = *(v4 + v1);
    *(v4 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_269C62974(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell____lazy_storage___timePicker] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TimePickerCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_269CF0F60();
  v11 = sub_269C628D0();
  v12 = [v10 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v12, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

  sub_269CF1064();
  return v10;
}

uint64_t sub_269C62C94()
{
  MEMORY[0x26D650930](60, 0xE100000000000000);
  swift_getObjectType();
  sub_269C632C8();
  v0 = sub_269D9A660();
  MEMORY[0x26D650930](v0);

  MEMORY[0x26D650930](32, 0xE100000000000000);
  sub_269D9B0E0();
  return 0;
}

void sub_269C62D70(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for TimePickerCollectionViewCell();
  v6 = *a4;
  v7 = a1;
  objc_msgSendSuper2(&v8, v6);
  sub_269CF1064();
}

id sub_269C62E40(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimePickerCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269C62EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269C62F3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x90))(v4);
  return sub_269C63208(a1);
}

uint64_t (*sub_269C62FD8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C6303C;
}

uint64_t sub_269C6303C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x90))(result);
  }

  return result;
}

uint64_t sub_269C630A0(uint64_t a1)
{
  *(a1 + 8) = sub_269C63108(&qword_28034E538, &unk_269DA2114);
  result = sub_269C63108(&qword_28034E540, &unk_269DA20C0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269C63108(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimePickerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269C6314C(uint64_t a1, uint64_t a2)
{
  sub_269C631B0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_269C631B0(uint64_t a1)
{
  if (!qword_28034E548)
  {
    sub_269C4C0D0();
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E548);
    }
  }
}

uint64_t sub_269C63208(uint64_t a1)
{
  sub_269C631B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C63264(uint64_t a1, uint64_t a2)
{
  sub_269C631B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269C632C8()
{
  result = qword_28034E558;
  if (!qword_28034E558)
  {
    type metadata accessor for TimePickerCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034E558);
  }

  return result;
}

Swift::Double __swiftcall Double.init(hours:minutes:)(Swift::Int hours, Swift::Int minutes)
{
  v2 = 60 * hours;
  if ((hours * 60) >> 64 == (60 * hours) >> 63)
  {
    v3 = __OFADD__(v2, minutes);
    v4 = v2 + minutes;
    if (!v3)
    {
      return v4 * 60.0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Double.hoursAndMinutes.getter(double a1)
{
  if (fabs(a1) >= 9.22337204e18)
  {
    return 0;
  }

  if (a1 > -9.22337204e18)
  {
    return a1 / 3600;
  }

  __break(1u);
  return result;
}

uint64_t ScheduleOccurrenceEditModel.__allocating_init(occurrence:isAdding:isSingleDayOverride:weekdaysWithExistingOccurrences:sleepDurationGoalPublisher:sleepSchedulePublisher:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();
  *(v16 + 16) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v16 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v16 + 32) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D830, sub_269C662B4, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *(v16 + 40) = sub_269D987F0();
  *(v16 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [a1 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v16 + 48) = v22;
  *(v16 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = a1;
  *(v16 + 56) = a2;
  *(v16 + 57) = a3;
  v17 = a1;
  *(v16 + 64) = a4 & ~[v17 weekdays];
  *(v16 + 72) = a5;
  *(v16 + 80) = a6;
  *(v16 + 88) = a7;
  v18 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v19 = sub_269D977A0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16 + v18, a8, v19);

  sub_269D987C0();
  sub_269D987D0();

  (*(v20 + 8))(0, v19);
  return v16;
}

uint64_t ScheduleOccurrenceEditModel.validScheduleRangeDidChange.getter()
{
  sub_269C661F4(0, &qword_28034D830, sub_269C662B4, MEMORY[0x277CBCE30]);
  sub_269C2FE88();
  return sub_269D988B0();
}

id ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  [v2 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  [v5 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();

  sub_269C1B0B8(0, &qword_28034DC30, 0x277D62490);
  swift_dynamicCast();
  v3 = *(v0 + v1);
  *(v0 + v1) = v5;

  return v2;
}

uint64_t ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(void *a1, uint64_t a2)
{
  v3 = v2;
  [a1 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  swift_beginAccess();
  v6 = *(v3 + 48);
  *(v3 + 48) = v16;

  v7 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v8 = *(v3 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  *(v3 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = a1;
  v9 = a1;

  v10 = a2 & ~[v9 weekdays];
  swift_beginAccess();
  *(v3 + 64) = v10;
  v11 = [*(v3 + v7) alarmConfiguration];
  [v11 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  sub_269D98780();

  sub_269D987C0();
  if (v15)
  {
    v12 = *(v3 + v7);
    v13 = sub_269D976E0();
    [v15 allowableRangeForModifiedOccurrence:v12 gregorianCalendar:v13];
  }

  return sub_269D987D0();
}

unint64_t ScheduleOccurrenceEditModel.isValid.getter()
{
  if ((sub_269C67404() & 1) == 0)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  if (*(v0 + 57) == 1)
  {
    if (([v2 isSingleDayOverride] & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    sub_269C675BC(&v5);
    return (v6 & 1) != 0 || v5 == 0;
  }

  v3 = [v2 weekdays];
  if (v3 == *MEMORY[0x277D623A0])
  {
    return 0;
  }

  result = [*(v0 + v1) weekdays];
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t ScheduleOccurrenceEditModel.alarmConfiguration.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  return v3;
}

uint64_t ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)()
{
  v1 = *(v0 + 57);
  v2 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  v4 = sub_269D97110();
  if (v1 == 1)
  {
    v5 = sub_269D97110();
    v6 = sub_269D976E0();
    [v3 applyHourAndMinuteFromBedtimeComponents:v4 wakeUpComponents:v5 gregorianCalendar:v6];
  }

  else
  {
    [v3 setBedtimeComponents_];

    v5 = *(v0 + v2);
    v6 = sub_269D97110();
    [v5 setWakeUpComponents_];
  }

  return sub_269D98780();
}

uint64_t ScheduleOccurrenceEditModel.weekdays.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) setWeekdays_];
  sub_269D987C0();
  if (v6)
  {
    v3 = *(v1 + v2);
    v4 = sub_269D976E0();
    [v6 allowableRangeForModifiedOccurrence:v3 gregorianCalendar:v4];
  }

  sub_269D987D0();
  return sub_269D98780();
}

BOOL ScheduleOccurrenceEditModel.isValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v55 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v55 - v21;
  sub_269D97150();
  if (v23)
  {
    return 0;
  }

  sub_269D971A0();
  if (v24)
  {
    return 0;
  }

  v26 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v27 = [*(v4 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
  sub_269D97120();

  sub_269D97150();
  if (v28)
  {
    (*(v11 + 8))(v22, v10);
    return 0;
  }

  else
  {
    sub_269D971A0();
    v30 = v29;
    v31 = v22;
    v32 = *(v11 + 8);
    v32(v31, v10);
    if (v30)
    {
      return 0;
    }

    (*(v11 + 16))(v18, a1, v10);
    v33 = sub_269D97150();
    v35 = v34;
    v36 = v33;
    v37 = sub_269D971A0();
    v39 = v38;
    v40 = v18;
    v41 = v32;
    v32(v40, v10);
    v42 = v36 * 60.0 * 60.0;
    if (v35)
    {
      v42 = 0.0;
    }

    v43 = v37 * 60.0;
    if (v39)
    {
      v43 = 0.0;
    }

    sub_269D225A8(round((v42 + v43) / a4) * a4, v55);
    v44 = v55[0];
    v45 = v55[1];
    v46 = [*(v5 + v26) wakeUpComponents];
    sub_269D97120();

    v47 = sub_269D97150();
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = v47;
    }

    v50 = sub_269D971A0();
    v52 = v51;
    v41(v14, v10);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    sub_269C679CC(v44, v45, v49, v53);
    return v54 >= a2 && v54 <= a3;
  }
}

BOOL ScheduleOccurrenceEditModel.isValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v53 - v17;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v25 = [*(v5 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
  sub_269D97120();

  sub_269D97150();
  if (v26)
  {
    (*(v11 + 8))(v23, v10);
    return 0;
  }

  else
  {
    sub_269D971A0();
    v29 = v28;
    v54 = *(v11 + 8);
    v54(v23, v10);
    if (v29)
    {
      return 0;
    }

    sub_269D97150();
    if (v30)
    {
      return 0;
    }

    sub_269D971A0();
    if (v31)
    {
      return 0;
    }

    else
    {
      (*(v11 + 16))(v18, a1, v10);
      v32 = sub_269D97150();
      v34 = v33;
      v35 = v32;
      v36 = sub_269D971A0();
      v38 = v37;
      v39 = v54;
      v54(v18, v10);
      v40 = v35 * 60.0 * 60.0;
      if (v34)
      {
        v40 = 0.0;
      }

      v41 = v36 * 60.0;
      if (v38)
      {
        v41 = 0.0;
      }

      sub_269D225A8(round((v40 + v41) / a4) * a4, v55);
      v42 = v55[0];
      v43 = v55[1];
      v44 = [*(v5 + v24) bedtimeComponents];
      sub_269D97120();

      v45 = sub_269D97150();
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45;
      }

      v48 = sub_269D971A0();
      v50 = v49;
      v39(v14, v10);
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = v48;
      }

      sub_269C679CC(v47, v51, v42, v43);
      return v52 >= a2 && v52 <= a3;
    }
  }
}

BOOL ScheduleOccurrenceEditModel.setIfValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:justChecking:)(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v74 = a2;
  sub_269C67C24(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v73 = &v70 - v11;
  sub_269C67C24(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v70 - v14;
  v16 = sub_269D971F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v70 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v70 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v70 - v35;
  sub_269D97150();
  if (v37)
  {
    return 0;
  }

  sub_269D971A0();
  if (v38)
  {
    return 0;
  }

  v72 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v40 = [*(v75 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
  sub_269D97120();

  sub_269D97150();
  if (v41)
  {
    (*(v17 + 8))(v36, v16);
    return 0;
  }

  sub_269D971A0();
  v43 = v42;
  v71 = *(v17 + 8);
  v71(v36, v16);
  if (v43)
  {
    return 0;
  }

  (*(v17 + 16))(v32, a1, v16);
  v44 = sub_269D97150();
  v46 = v45;
  v47 = v44;
  v48 = sub_269D971A0();
  v50 = v49;
  v71(v32, v16);
  v51 = v47 * 60.0 * 60.0;
  if (v46)
  {
    v51 = 0.0;
  }

  v52 = v48 * 60.0;
  if (v50)
  {
    v52 = 0.0;
  }

  sub_269D225A8(round((v51 + v52) / a5) * a5, v76);
  v53 = v76[0];
  v70 = v76[1];
  v54 = [*(v75 + v72) wakeUpComponents];
  sub_269D97120();

  v55 = sub_269D97150();
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v58 = sub_269D971A0();
  v60 = v59;
  v61 = v28;
  v62 = v71;
  v71(v61, v16);
  if (v60)
  {
    v63 = 0;
  }

  else
  {
    v63 = v58;
  }

  v64 = v70;
  sub_269C679CC(v53, v70, v57, v63);
  v66 = v65 > a4;
  if (v65 < a3)
  {
    v66 = 1;
  }

  result = !v66;
  if (!v66 && (v74 & 1) == 0)
  {
    if (v64 == 60 && __OFADD__(v53, 1))
    {
      __break(1u);
    }

    else
    {
      v67 = sub_269D977A0();
      (*(*(v67 - 8) + 56))(v15, 1, 1, v67);
      v68 = sub_269D97810();
      (*(*(v68 - 8) + 56))(v73, 1, 1, v68);
      sub_269D971D0();
      v69 = [*(v75 + v72) wakeUpComponents];
      sub_269D97120();

      ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
      v62(v20, v16);
      v62(v24, v16);
      return 1;
    }
  }

  return result;
}

void ScheduleOccurrenceEditModel.setIfValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:justChecking:)(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v6 = v5;
  v80 = a2;
  sub_269C67C24(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v79 = &v73 - v13;
  sub_269C67C24(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v78 = &v73 - v16;
  v17 = sub_269D971F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v77 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v73 - v31;
  v35 = MEMORY[0x28223BE20](v33, v34);
  v37 = &v73 - v36;
  v38 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v39 = [*(v6 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
  sub_269D97120();

  sub_269D97150();
  if (v40)
  {
    (*(v18 + 8))(v37, v17);
  }

  else
  {
    v76 = v6;
    sub_269D971A0();
    v42 = v41;
    v75 = *(v18 + 8);
    v75(v37, v17);
    if ((v42 & 1) == 0)
    {
      sub_269D97150();
      if ((v43 & 1) == 0)
      {
        sub_269D971A0();
        if ((v44 & 1) == 0)
        {
          (*(v18 + 16))(v32, a1, v17);
          v45 = sub_269D97150();
          v47 = v46;
          v48 = v45;
          v49 = sub_269D971A0();
          v51 = v50;
          v52 = v75;
          v75(v32, v17);
          v53 = v48 * 60.0 * 60.0;
          if (v47)
          {
            v53 = 0.0;
          }

          v54 = v49 * 60.0;
          if (v51)
          {
            v54 = 0.0;
          }

          sub_269D225A8(round((v53 + v54) / a5) * a5, v81);
          v55 = v81[1];
          v74 = v81[0];
          v56 = [*(v76 + v38) bedtimeComponents];
          sub_269D97120();

          v57 = sub_269D97150();
          if (v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = v57;
          }

          v60 = sub_269D971A0();
          v62 = v61;
          v52(v28, v17);
          if (v62)
          {
            v63 = 0;
          }

          else
          {
            v63 = v60;
          }

          v64 = v74;
          sub_269C679CC(v59, v63, v74, v55);
          v66 = v65 > a4;
          if (v65 < a3)
          {
            v66 = 1;
          }

          if (!v66 && (v80 & 1) == 0)
          {
            v67 = [*(v76 + v38) bedtimeComponents];
            sub_269D97120();

            if (v55 == 60 && __OFADD__(v64, 1))
            {
              __break(1u);
            }

            else
            {
              v68 = sub_269D977A0();
              (*(*(v68 - 8) + 56))(v78, 1, 1, v68);
              v69 = sub_269D97810();
              (*(*(v69 - 8) + 56))(v79, 1, 1, v69);
              v70 = v77;
              sub_269D971D0();
              ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
              v71 = v70;
              v72 = v75;
              v75(v71, v17);
              v72(v24, v17);
            }
          }
        }
      }
    }
  }
}

void ScheduleOccurrenceEditModel.alarmVolume.setter(float a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v4 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v4 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v5 = [v12 soundVolume];

  if (!v5 || ([v5 floatValue], v7 = v6, v5, v7 != a1))
  {
    v8 = [*(v1 + v3) alarmConfiguration];
    [v8 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v10 = a1;
    v11 = [v9 initWithFloat_];
    [v12 setSoundVolume_];

    [*(v1 + v3) setAlarmConfiguration_];
    sub_269D98780();
    sub_269D98780();
  }
}

void sub_269C651D8(char a1, SEL *a2)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v7 = [*(v4 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v7 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  [v8 *a2];
  [*(v4 + v6) setAlarmConfiguration_];
  sub_269D98780();
  sub_269D98780();
}

void sub_269C65300(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  v7 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v8 = [*(v5 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v8 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  if (a2)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  [v10 *a3];

  [*(v5 + v7) setAlarmConfiguration_];
  sub_269D98780();
  sub_269D98780();
}

uint64_t ScheduleOccurrenceEditModel.hasChanges.getter()
{
  if (*(v0 + 56))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  swift_beginAccess();
  return [v2 isEqual_] ^ 1;
}

uint64_t ScheduleOccurrenceEditModel.hasUpcomingSingleDayOverride.getter()
{
  v1 = sub_269D971F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C67C24(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_269D97580();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v24 - v17;
  if ((*(v0 + 57) & 1) == 0)
  {
    v24[2] = v0;
    sub_269D987C0();
    v19 = v25;
    if (!v25)
    {
      return v19 & 1;
    }

    v20 = [v25 overrideOccurrence];

    if (v20)
    {
      v24[1] = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
      v21 = [v20 wakeUpComponents];
      sub_269D97120();

      sub_269D97720();
      (*(v2 + 8))(v5, v1);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v18, v9, v10);
        sub_269D97570();
        LOBYTE(v19) = sub_269D974C0();

        v22 = *(v11 + 8);
        v22(v14, v10);
        v22(v18, v10);
        return v19 & 1;
      }

      sub_269C67C78(v9);
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

BOOL ScheduleOccurrenceEditModel.scheduleConflictsWithOverride.getter()
{
  v1 = sub_269D97580();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 57))
  {
    return 0;
  }

  sub_269D987C0();
  v6 = v15;
  if (!v15)
  {
    return 0;
  }

  v7 = [objc_opt_self() templateModelForSchedule_];
  v8 = [v7 modelByApplyingChangesFromOccurrence_];
  sub_269D97570();
  v9 = sub_269D974B0();
  v10 = [objc_opt_self() builderWithSleepScheduleModel:v8 date:v9];

  (*(v2 + 8))(v5, v1);
  v11 = [v10 buildTimelineWithOptions_];
  v12 = [v11 sleepScheduleInvalidReason];

  return v12 == 3;
}

id sub_269C659B0(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v4 = [v6 *a1];

  return v4;
}

void ScheduleOccurrenceEditModel.alarmSnoozeDuration.setter(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v5 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v5 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  [v6 setSnoozeDuration_];
  [*(v2 + v4) setAlarmConfiguration_];
  sub_269D98780();
  sub_269D98780();
}

double ScheduleOccurrenceEditModel.alarmSnoozeDuration.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  [v5 snoozeDuration];
  v3 = v2;

  return v3;
}

void sub_269C65C78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;
}

id sub_269C65CD0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ScheduleOccurrenceEditModel.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ScheduleOccurrenceEditModel.init(occurrence:isAdding:isSingleDayOverride:weekdaysWithExistingOccurrences:sleepDurationGoalPublisher:sleepSchedulePublisher:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = v8;
  sub_269C2D3B8(0);
  swift_allocObject();
  *(v8 + 16) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v8 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v8 + 32) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D830, sub_269C662B4, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *(v8 + 40) = sub_269D987F0();
  *(v8 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [a1 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v8 + 48) = v23;
  *(v8 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = a1;
  *(v8 + 56) = a2;
  *(v8 + 57) = a3;
  v17 = a1;
  *(v8 + 64) = a4 & ~[v17 weekdays];
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  v18 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v19 = sub_269D977A0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v9 + v18, a8, v19);

  sub_269D987C0();
  sub_269D987D0();

  (*(v20 + 8))(a8, v19);
  return v9;
}

uint64_t sub_269C66134(uint64_t a1)
{
  sub_269D987C0();
  if (v5)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v3 = sub_269D976E0();
    [v5 allowableRangeForModifiedOccurrence:v2 gregorianCalendar:v3];
  }

  return sub_269D987D0();
}

void sub_269C661F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for ScheduleOccurrenceEditModel(uint64_t a1)
{
  result = qword_28034E588;
  if (!qword_28034E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C662B4(uint64_t a1)
{
  if (!qword_280C0BF10)
  {
    sub_269C1B0B8(255, &qword_280C0BF20, 0x277D62510);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0BF10);
    }
  }
}

uint64_t sub_269C6631C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_269D98780();
}

uint64_t sub_269C66380()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269C663C4(char a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_269D98780();
}

void (*sub_269C66424(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_269C664AC;
}

void sub_269C664AC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *v3 = *(v3[3] + v3[4]);
    sub_269D98780();
  }

  free(v3);
}

uint64_t ScheduleOccurrenceEditModel.deinit()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v2 = sub_269D977A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ScheduleOccurrenceEditModel.__deallocating_deinit()
{
  ScheduleOccurrenceEditModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_269C66658@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  result = swift_dynamicCast();
  *a2 = v5;
  return result;
}

void sub_269C66718(id *a1, void **a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  v3 = *a1;
  [v2 setAlarmConfiguration_];
  sub_269D98780();
  sub_269D98780();
}

void (*ScheduleOccurrenceEditModel.alarmEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v5 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v6 = *(v4 + 32);
  v7 = [v6 isEnabled];

  *(v4 + 48) = v7;
  return sub_269C668AC;
}

float ScheduleOccurrenceEditModel.alarmVolume.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v2 = [v6 soundVolume];

  if (!v2)
  {
    return *MEMORY[0x277D61FF8];
  }

  [v2 floatValue];
  v4 = v3;

  return v4;
}

void (*ScheduleOccurrenceEditModel.alarmVolume.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 48);
  *(v3 + 40) = v1;
  v6 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v6 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v7 = *(v4 + 32);
  v8 = [v7 soundVolume];

  if (v8)
  {
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x277D61FF8];
  }

  *v5 = v10;
  return sub_269C66B24;
}

void sub_269C66B24(uint64_t a1)
{
  v1 = *a1;
  ScheduleOccurrenceEditModel.alarmVolume.setter(*(*a1 + 48));

  free(v1);
}

void (*ScheduleOccurrenceEditModel.allowsSnooze.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v5 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v6 = *(v4 + 32);
  v7 = [v6 allowsSnooze];

  *(v4 + 48) = v7;
  return sub_269C66C78;
}

void sub_269C66C90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 48), a2);

  free(v3);
}

void (*ScheduleOccurrenceEditModel.alarmSnoozeDuration.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v5 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v6 = *(v4 + 40);
  [v6 snoozeDuration];
  v8 = v7;

  *(v4 + 32) = v8;
  return sub_269C66DF0;
}

void sub_269C66DF0(uint64_t a1)
{
  v1 = *a1;
  ScheduleOccurrenceEditModel.alarmSnoozeDuration.setter(*(*a1 + 32));

  free(v1);
}

id ScheduleOccurrenceEditModel.toneIdentifier.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  v2 = [v1 toneIdentifier];

  if (v2)
  {
    goto LABEL_4;
  }

  result = [objc_opt_self() sharedToneManager];
  if (result)
  {
    v4 = result;
    v2 = [result defaultToneIdentifierForAlertType:13 topic:*MEMORY[0x277D71FA8]];

    if (!v2)
    {
      return 0;
    }

LABEL_4:
    v5 = sub_269D9A630();

    return v5;
  }

  __break(1u);
  return result;
}

void (*ScheduleOccurrenceEditModel.toneIdentifier.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = ScheduleOccurrenceEditModel.toneIdentifier.getter();
  a1[1] = v3;
  return sub_269C66F64;
}

void sub_269C66F64(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    ScheduleOccurrenceEditModel.toneIdentifier.setter(v3, v2);
  }

  else
  {
    ScheduleOccurrenceEditModel.toneIdentifier.setter(*a1, v2);
  }
}

uint64_t ScheduleOccurrenceEditModel.vibrationIdentifier.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  v2 = [v1 vibrationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269D9A630();

  return v3;
}

void sub_269C67068(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  v4 = [v3 vibrationIdentifier];

  if (v4)
  {
    v5 = sub_269D9A630();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void (*ScheduleOccurrenceEditModel.vibrationIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  v4 = [v3 vibrationIdentifier];

  if (v4)
  {
    v5 = sub_269D9A630();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_269C671AC;
}

void sub_269C671AC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    ScheduleOccurrenceEditModel.vibrationIdentifier.setter(v3, v2);
  }

  else
  {
    ScheduleOccurrenceEditModel.vibrationIdentifier.setter(*a1, v2);
  }
}

uint64_t (*ScheduleOccurrenceEditModel.weekdays.modify(void *a1))()
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  a1[2] = v1;
  a1[3] = v2;
  *a1 = [*(v1 + v2) weekdays];
  return sub_269C67324;
}

uint64_t sub_269C67324(void *a1)
{
  [*(a1[2] + a1[3]) setWeekdays_];
  sub_269D987C0();
  v2 = a1[1];
  if (v2)
  {
    v3 = *(a1[2] + a1[3]);
    v4 = sub_269D976E0();
    v5 = [v2 allowableRangeForModifiedOccurrence:v3 gregorianCalendar:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  a1[1] = v5;
  sub_269D987D0();
  a1[1] = v6;
  return sub_269D98780();
}

uint64_t sub_269C67404()
{
  v1 = v0;
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v13 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
  sub_269D97120();

  sub_269D97150();
  if (v14)
  {
    (*(v3 + 8))(v11, v2);
    v15 = 0;
  }

  else
  {
    sub_269D971A0();
    v17 = v16;
    v18 = *(v3 + 8);
    v18(v11, v2);
    if (v17)
    {
      v15 = 0;
    }

    else
    {
      v19 = [*(v1 + v12) wakeUpComponents];
      sub_269D97120();

      sub_269D97150();
      if (v20)
      {
        v15 = 0;
      }

      else
      {
        sub_269D971A0();
        v15 = v21 ^ 1;
      }

      v18(v6, v2);
    }
  }

  return v15 & 1;
}

void *sub_269C675BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v70 = &v62 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v72 = &v62 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v62 - v24;
  result = sub_269D987C0();
  v27 = v73;
  if (v73)
  {
    v67 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
    v28 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v65 = v28;
    v29 = [v28 bedtimeComponents];
    v68 = v27;
    v30 = v29;
    v64 = v25;
    sub_269D97120();

    v31 = [v28 wakeUpComponents];
    v32 = v72;
    sub_269D97120();

    v69 = a1;
    v66 = v2;
    v33 = *(v5 + 16);
    v33(v18, v25, v4);
    v34 = sub_269D97150();
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34;
    }

    v63 = v36;
    v37 = sub_269D971A0();
    v39 = v38;
    v40 = *(v5 + 8);
    v40(v18, v4);
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v37;
    }

    v33(v14, v32, v4);
    v42 = sub_269D97150();
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v42;
    }

    v45 = sub_269D971A0();
    v47 = v46;
    v40(v14, v4);
    if (v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = v45;
    }

    sub_269C679CC(v63, v41, v44, v48);
    v50 = v49;
    v51 = v49 > 72000.0;

    if (v50 < 3600.0)
    {
      v52 = (8 * v51) | 4;
    }

    else
    {
      v52 = 8 * v51;
    }

    v40(v32, v4);
    v40(v64, v4);
    v54 = v66;
    v53 = v67;
    v55 = [*(v66 + v67) bedtimeComponents];
    v56 = v70;
    sub_269D97120();

    v57 = [*(v54 + v53) wakeUpComponents];
    v58 = v71;
    sub_269D97120();

    v27 = v68;
    v59 = sub_269D09440(v56, v58) & 1;
    LOBYTE(v54) = sub_269D09680();

    v40(v58, v4);
    result = (v40)(v56, v4);
    v60 = v59 | 2;
    a1 = v69;
    if ((v54 & 1) == 0)
    {
      v60 = v59;
    }

    v61 = v60 | v52;
  }

  else
  {
    v61 = 0;
  }

  *a1 = v61;
  *(a1 + 8) = v27 == 0;
  return result;
}

uint64_t sub_269C679CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a4 - a2;
  if (__OFSUB__(a4, a2))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFC4)
    {
      v4 = -60;
    }

    v5 = v4 + a2;
    v6 = v5 == a4 ? a4 : a4 + 1;
    v7 = (v5 - v6) / 0x3CuLL;
    if (v5 != a4)
    {
      ++v7;
    }

    if ((a3 ^ 0x8000000000000000) - result <= v7)
    {
      goto LABEL_15;
    }
  }

  return result;
}

void sub_269C67AF0()
{
  v1 = v0[2];
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v0[1];
  v3 = v0[3];
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFC4)
    {
      v4 = -60;
    }

    v5 = v2 + v4;
    v6 = v5 == v3 ? v0[3] : v3 + 1;
    v7 = (v5 - v6) / 0x3CuLL;
    if (v5 != v3)
    {
      ++v7;
    }

    if ((v1 ^ 0x8000000000000000) - *v0 <= v7)
    {
      goto LABEL_15;
    }
  }
}

void sub_269C67C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269C67C78(uint64_t a1)
{
  sub_269C67C24(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269C67CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E568;
  if (!qword_28034E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E568);
  }

  return result;
}

unint64_t sub_269C67D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E570;
  if (!qword_28034E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E570);
  }

  return result;
}

unint64_t sub_269C67DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E578;
  if (!qword_28034E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E578);
  }

  return result;
}

unint64_t sub_269C67DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E580;
  if (!qword_28034E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E580);
  }

  return result;
}

uint64_t keypath_set_19Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_269C67EA0(uint64_t a1)
{
  result = sub_269D977A0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_269C680D0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269C68130(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_269C681C8;
}

void sub_269C681C8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_269C68248(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  *(v3 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)) = v2;
  sub_269D0A9B8();
  swift_endAccess();
  sub_269C6A388();
}

uint64_t sub_269C682C0()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32));
}

void sub_269C68314(char a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  *(v4 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)) = a1;
  sub_269D0A9B8();
  swift_endAccess();
  sub_269C6A388();
}

void (*sub_269C68390(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v6 + *(v7 + 32));
  return sub_269C68438;
}

void sub_269C68438(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[72];
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 6) + *(*a1 + 7);
  swift_beginAccess();
  *(v4 + *(v3 + 32)) = v2;
  sub_269D0A9B8();
  swift_endAccess();
  sub_269C6A388();

  free(v1);
}

id sub_269C684BC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter);
  }

  else
  {
    v4 = type metadata accessor for ShorterDateComponentsFormatter();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_269C68558(uint64_t a1, void *a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_269C6BB98(a2);
  }

  else
  {
  }
}

void sub_269C686E0(void *a1)
{
  v92.receiver = v1;
  v92.super_class = type metadata accessor for SleepScheduleComponentsEditView(0);
  objc_msgSendSuper2(&v92, sel_willMoveToWindow_, a1);
  if (a1)
  {
    v75 = v1;
    v3 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock];
    v74 = a1;
    [v74 bounds];
    if (CGRectGetWidth(v93) <= 320.0)
    {
      if (qword_28034D728 != -1)
      {
        swift_once();
      }

      v4 = &unk_28035E6B8;
    }

    else
    {
      if (qword_28034D720 != -1)
      {
        swift_once();
      }

      v4 = &xmmword_28035E530;
    }

    memcpy(__dst, v4, 0x188uLL);
    v72 = *(&__dst[11] + 1);
    v73 = *&__dst[12];
    v69 = *(&__dst[10] + 1);
    v70 = *&__dst[11];
    v66 = *(&__dst[8] + 8);
    v67 = *(&__dst[9] + 8);
    v64 = *(&__dst[6] + 8);
    v65 = *(&__dst[7] + 8);
    v62 = *(&__dst[5] + 8);
    v60 = *(&__dst[4] + 8);
    v59 = __dst[4];
    v5 = __dst[3];
    v54 = __dst[0];
    v55 = __dst[1];
    v71 = *&__dst[24];
    v68 = *(&__dst[23] + 1);
    v63 = *&__dst[23];
    v61 = *(&__dst[21] + 1);
    v57 = __dst[2];
    v58 = __dst[22];
    v6 = *&__dst[21];
    v7 = *(&__dst[20] + 1);
    v56 = *&__dst[20];
    v53 = *(&__dst[19] + 1);
    v8 = *&__dst[19];
    v9 = *(&__dst[17] + 1);
    v10 = *&__dst[17];
    v11 = *(&__dst[16] + 1);
    v12 = *&__dst[16];
    v13 = *(&__dst[15] + 1);
    v14 = *&__dst[15];
    v15 = *(&__dst[14] + 1);
    v16 = __dst[14];
    v17 = *(&__dst[13] + 1);
    v51 = *(&__dst[12] + 8);
    v52 = __dst[18];
    sub_269C6AAB4(__dst, __src);
    __src[0] = v54;
    __src[1] = v55;
    __src[2] = v57;
    __src[3] = v5;
    LODWORD(__src[4]) = v59;
    *(&__src[5] + 8) = v62;
    *(&__src[4] + 8) = v60;
    *(&__src[7] + 8) = v65;
    *(&__src[6] + 8) = v64;
    *(&__src[9] + 8) = v67;
    *(&__src[8] + 8) = v66;
    *(&__src[10] + 1) = v69;
    *&__src[11] = v70;
    *(&__src[11] + 1) = v72;
    *&__src[12] = v73;
    *(&__src[12] + 8) = v51;
    *(&__src[13] + 1) = v17;
    LODWORD(__src[14]) = v16;
    *(&__src[14] + 1) = v15;
    *&__src[15] = v14;
    *(&__src[15] + 1) = v13;
    *&__src[16] = v12;
    *(&__src[16] + 1) = v11;
    *&__src[17] = v10;
    __src[18] = v52;
    *(&__src[17] + 1) = v9;
    *&__src[19] = v8;
    *(&__src[19] + 1) = v53;
    *&__src[20] = v56;
    *(&__src[20] + 1) = v7;
    *&__src[21] = v6;
    __src[22] = v58;
    *(&__src[21] + 1) = v61;
    *&__src[23] = v63;
    v18 = v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
    *(&__src[23] + 1) = v68;
    *&__src[24] = v71;
    memcpy(__dst, (v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration), 0x188uLL);
    memcpy((v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration), __src, 0x188uLL);
    sub_269C6AAB4(__src, v76);
    sub_269C6AB10(__dst);
    sub_269CCC1A4();
    v19 = *(v3 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_dial);
    v20 = *(v18 + 216);
    v21 = *(v18 + 248);
    v22 = *(v18 + 200);
    v79 = *(v18 + 232);
    v80 = v21;
    v77 = v22;
    v78 = v20;
    v23 = *(v18 + 312);
    v25 = *(v18 + 264);
    v24 = *(v18 + 280);
    v83 = *(v18 + 296);
    v84 = v23;
    v81 = v25;
    v82 = v24;
    v26 = *(v18 + 376);
    v28 = *(v18 + 328);
    v27 = *(v18 + 344);
    v87 = *(v18 + 360);
    v88 = v26;
    v85 = v28;
    v86 = v27;
    v29 = &v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
    v30 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 176];
    v31 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 128];
    v32 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 144];
    v89[10] = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 160];
    v89[11] = v30;
    v89[8] = v31;
    v89[9] = v32;
    v33 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 112];
    v34 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 64];
    v35 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 80];
    v89[6] = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 96];
    v89[7] = v33;
    v89[4] = v34;
    v89[5] = v35;
    v36 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 48];
    v37 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
    v38 = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 16];
    v89[2] = *&v19[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 32];
    v89[3] = v36;
    v89[0] = v37;
    v89[1] = v38;
    v39 = v77;
    v40 = v78;
    v41 = v80;
    *(v29 + 2) = v79;
    *(v29 + 3) = v41;
    *v29 = v39;
    *(v29 + 1) = v40;
    v42 = v81;
    v43 = v82;
    v44 = v84;
    *(v29 + 6) = v83;
    *(v29 + 7) = v44;
    *(v29 + 4) = v42;
    *(v29 + 5) = v43;
    v45 = v85;
    v46 = v86;
    v47 = v88;
    *(v29 + 10) = v87;
    *(v29 + 11) = v47;
    *(v29 + 8) = v45;
    *(v29 + 9) = v46;
    sub_269C6AB64(&v77, v76);
    sub_269C6AB64(&v77, v76);
    sub_269C6ABC0(v89);
    [v19 setNeedsDisplay];
    sub_269C6ABC0(&v77);
    sub_269C6AB10(__src);
    v48 = *&v75[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint];
    if (v48)
    {
      v49 = *(v18 + 72);
      v50 = v48;
      [v50 setConstant_];
    }
  }
}