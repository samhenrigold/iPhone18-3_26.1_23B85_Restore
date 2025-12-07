uint64_t MemorySubsystem.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MemorySubsystem.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MemorySubsystem.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2588F001C();
  MEMORY[0x259C8DDD0](0x203A656D614ELL, 0xE600000000000000);
  MEMORY[0x259C8DDD0](v1, v2);
  MEMORY[0x259C8DDD0](0x7461636F6C6C410ALL, 0xEC000000203A6465);
  v3 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v3);

  MEMORY[0x259C8DDD0](0x500A736574796220, 0xED0000203A6B6165);
  v4 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v4);

  MEMORY[0x259C8DDD0](0xD000000000000018, 0x80000002588F0360);
  v5 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v5);

  MEMORY[0x259C8DDD0](2109216, 0xE300000000000000);
  v6 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v6);

  MEMORY[0x259C8DDD0](0x736574796220, 0xE600000000000000);
  return 0;
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

uint64_t sub_2588E92A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2588E92EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2588E934C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2588E936C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for memacct_statistics()
{
  if (!qword_27F969988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F969988);
    }
  }
}

uint64_t sub_2588E93F4()
{
  v0 = sub_2588EFEFC();
  __swift_allocate_value_buffer(v0, qword_27F969B50);
  __swift_project_value_buffer(v0, qword_27F969B50);
  return sub_2588EFEEC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2588E9540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2588E95F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MemoryAccountingManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  if (qword_27F969980 != -1)
  {
    swift_once();
  }

  v2 = sub_2588EFEFC();
  v3 = __swift_project_value_buffer(v2, qword_27F969B50);
  v4 = *(*(v2 - 8) + 16);
  v4(v0 + v1, v3, v2);
  *(v0 + OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems) = 0;
  type metadata accessor for SysctlManager(0);
  v5 = swift_allocObject();
  v4(v5 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog, v3, v2);
  *(v5 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache) = MEMORY[0x277D84F98];
  *(v0 + 16) = v5;
  v6 = sub_2588E9960();
  v7 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *(v0 + v7) = v6;

  return v0;
}

uint64_t MemoryAccountingManager.init()()
{
  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  if (qword_27F969980 != -1)
  {
    swift_once();
  }

  v2 = sub_2588EFEFC();
  v3 = __swift_project_value_buffer(v2, qword_27F969B50);
  v4 = *(*(v2 - 8) + 16);
  v4(v0 + v1, v3, v2);
  *(v0 + OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems) = 0;
  type metadata accessor for SysctlManager(0);
  v5 = swift_allocObject();
  v4(v5 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog, v3, v2);
  *(v5 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache) = MEMORY[0x277D84F98];
  *(v0 + 16) = v5;
  v6 = sub_2588E9960();
  v7 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *(v0 + v7) = v6;

  return v0;
}

unint64_t sub_2588E9960()
{
  result = sub_2588E9FBC();
  if (result)
  {
    v1 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2588EC578(0, *(v1 + 2) + 1, 1, v1);
    }

    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
    v5 = v3 + 1;
    if (v2 >> 1 <= v3)
    {
      v1 = sub_2588EC578((v2 > 1), v3 + 1, 1, v1);
      v2 = *(v1 + 3);
      v4 = v2 >> 1;
    }

    *(v1 + 2) = v5;
    *&v1[4 * v3 + 32] = 5;
    v6 = v3 + 2;
    if (v4 < v6)
    {
      v1 = sub_2588EC578((v2 > 1), v6, 1, v1);
    }

    *(v1 + 2) = v6;
    *&v1[4 * v5 + 32] = 0;
    v7 = sub_2588EE720(v1);

    return v7;
  }

  return result;
}

char *sub_2588E9B64()
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = sub_2588EFEBC();
  v0 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v34 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = v33 - v3;
  v5 = sub_2588E9FBC();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2588EC578(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v6 = sub_2588EC578((v7 > 1), v8 + 1, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v10;
  *&v6[4 * v8 + 32] = 7;
  v11 = v8 + 2;
  if (v9 < v11)
  {
    v6 = sub_2588EC578((v7 > 1), v11, 1, v6);
  }

  *(v6 + 2) = v11;
  *&v6[4 * v10 + 32] = 0;
  v12 = sub_2588EF010(v6);

  v14 = *(v12 + 2);
  if (v14)
  {
    v15 = (v0 + 8);
    v16 = v14 - 1;
    v33[1] = v12;
    v17 = (v12 + 64);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v17[-2];
      v36 = v17[-1];
      v37 = v18;
      v38 = *v17;
      v39 = v38;
      v19 = sub_2588EFF7C();
      v21 = v20;
      sub_2588EFE9C();
      v38.i64[0] = v19;
      v38.i64[1] = v21;
      v22 = v34;
      sub_2588EFEAC();
      sub_2588ED01C();
      sub_2588EFFEC();
      v24 = v23;
      v25 = *v15;
      v26 = v22;
      v27 = v35;
      (*v15)(v26, v35);
      v25(v4, v27);
      if ((v24 & 1) == 0)
      {

        v19 = 0;
        v21 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2588EC8A4(0, *(v13 + 2) + 1, 1, v13);
      }

      v29 = *(v13 + 2);
      v28 = *(v13 + 3);
      if (v29 >= v28 >> 1)
      {
        v13 = sub_2588EC8A4((v28 > 1), v29 + 1, 1, v13);
      }

      *(v13 + 2) = v29 + 1;
      v30 = &v13[48 * v29];
      v30[2].i64[0] = v19;
      v30[2].i64[1] = v21;
      v31 = vextq_s8(v37, v37, 8uLL);
      v30[3] = vextq_s8(v36, v36, 8uLL);
      v30[4] = v31;
      if (!v16)
      {
        break;
      }

      --v16;
      v17 += 3;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

double sub_2588EA14C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = sub_2588EFEBC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v31.i8[-v11];
  v13 = sub_2588EA510(a1, a2);
  if ((v13 & 0x100000000) != 0 || (v14 = v13, (v15 = sub_2588E9FBC()) == 0))
  {
    v28.i64[0] = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_2588EC578(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      v16 = sub_2588EC578((v17 > 1), v18 + 1, 1, v16);
      v17 = *(v16 + 3);
      v19 = v17 >> 1;
    }

    *(v16 + 2) = v20;
    *&v16[4 * v18 + 32] = 6;
    v21 = v18 + 2;
    if (v19 < v21)
    {
      v16 = sub_2588EC578((v17 > 1), v21, 1, v16);
    }

    *(v16 + 2) = v21;
    *&v16[4 * v20 + 32] = v14;
    sub_2588EF490(v16, v34);

    v31 = v34[1];
    v32 = v34[0];
    v33 = v34[2];
    v22 = sub_2588EFF7C();
    v24 = v23;
    sub_2588EFE9C();
    *&v33 = v22;
    *(&v33 + 1) = v24;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    v26 = v25;
    v27 = *(v7 + 8);
    v27(v10, v6);
    v27(v12, v6);
    if ((v26 & 1) == 0)
    {

      v22 = 0;
      v24 = 0xE000000000000000;
    }

    *a3 = v22;
    *(a3 + 8) = v24;
    v28 = vextq_s8(v31, v31, 8uLL);
    v29 = vextq_s8(v32, v32, 8uLL);
    *(a3 + 16) = v28;
    *(a3 + 32) = v29;
  }

  return *v28.i64;
}

unint64_t sub_2588EA510(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(v7 + 16);
    v11 = 1;
LABEL_3:
    v29 = v8;
    v12 = (v7 + 40 + 16 * v9);
    v13 = v9;
    while (v10 != v13)
    {
      v14 = v13;
      if (v13 >= v10)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_26;
      }

      if (*(v12 - 1) != a1 || *v12 != a2)
      {
        result = sub_2588F007C();
        v13 = v14 + 1;
        v12 += 2;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      v11 = 0;
      v8 = v14;
      if (v14 <= 0x7FFFFFFF)
      {
        goto LABEL_3;
      }

      __break(1u);
      break;
    }

    if (v11)
    {

      v16 = sub_2588EFEDC();
      v17 = sub_2588EFFCC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_2588EC9C4(a1, a2, &v30);
        *(v18 + 12) = 2080;
        v20 = MEMORY[0x259C8DE00](v7, MEMORY[0x277D837D0]);
        v22 = v21;

        v23 = sub_2588EC9C4(v20, v22, &v30);

        *(v18 + 14) = v23;
        _os_log_impl(&dword_2588E8000, v16, v17, "No matching subsystem found for: %s\n Available subsystems are: %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8E180](v19, -1, -1);
        MEMORY[0x259C8E180](v18, -1, -1);
      }

      else
      {
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v27 = v29;
  }

  else
  {
    v24 = sub_2588EFEDC();
    v25 = sub_2588EFFCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2588E8000, v24, v25, "No subsystems currently active", v26, 2u);
      MEMORY[0x259C8E180](v26, -1, -1);
    }

    v27 = 0;
    v28 = 1;
  }

  LOBYTE(v30) = v28;
  return v27 | (v28 << 32);
}

uint64_t sub_2588EA7FC()
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = sub_2588EFEBC();
  v0 = *(v44 - 8);
  v1 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v42 = &v38 - v3;
  v4 = sub_2588E9FBC();
  if (!v4)
  {
    return v4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v4 = sub_2588EC578(0, *(v4 + 16) + 1, 1, v4);
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v4 = sub_2588EC578((v5 > 1), v6 + 1, 1, v4);
    v5 = *(v4 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + 4 * v6 + 32) = 7;
  if (v7 < (v6 + 2))
  {
    v4 = sub_2588EC578((v5 > 1), v6 + 2, 1, v4);
  }

  *(v4 + 16) = v6 + 2;
  *(v4 + 4 * v8 + 32) = 0;
  v9 = sub_2588EF010(v4);

  v10 = *(v9 + 2);
  if (!v10)
  {

    return MEMORY[0x277D84F98];
  }

  v11 = 0;
  v41 = (v0 + 8);
  v12 = v9 + 64;
  v4 = MEMORY[0x277D84F98];
  v39 = (v10 - 1);
  v40 = v9;
  while (1)
  {
    v45 = *(v12 - 4);
    v46 = *v12;
    v47 = v46;
    v13 = sub_2588EFF7C();
    v15 = v14;
    v16 = v42;
    sub_2588EFE9C();
    v17 = v13;
    *&v46 = v13;
    *(&v46 + 1) = v15;
    v18 = v43;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    LOBYTE(v13) = v19;
    v20 = *v41;
    v21 = v18;
    v22 = v44;
    (*v41)(v21, v44);
    v20(v16, v22);
    if (v13)
    {
      v23 = v17;
    }

    else
    {

      v23 = 0;
      v15 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v4;
    v0 = sub_2588ED0BC(v23, v15);
    v26 = *(v4 + 16);
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v29 = v25;
    if (*(v4 + 24) < v28)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v45;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588ED89C(&qword_27F9699E8, &qword_2588F06D0);
      v32 = v45;
      if (v29)
      {
LABEL_19:

        v4 = v46;
        *(*(v46 + 56) + 8 * v0) = v32;

        goto LABEL_23;
      }
    }

LABEL_21:
    v4 = v46;
    *(v46 + 8 * (v0 >> 6) + 64) |= 1 << v0;
    v33 = (*(v4 + 48) + 16 * v0);
    *v33 = v23;
    v33[1] = v15;
    *(*(v4 + 56) + 8 * v0) = v32;

    v34 = *(v4 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_30;
    }

    *(v4 + 16) = v36;
LABEL_23:
    if (v39 == v11)
    {

      return v4;
    }

    ++v11;
    v12 += 3;
    if (v11 >= *(v40 + 2))
    {
      __break(1u);

      MEMORY[0x259C8E0B0](v29);
      return 0;
    }
  }

  sub_2588ED3DC(v28, isUniquelyReferenced_nonNull_native, &qword_27F9699E8, &qword_2588F06D0);
  v30 = sub_2588ED0BC(v23, v15);
  if ((v29 & 1) == (v31 & 1))
  {
    v0 = v30;
    v32 = v45;
    if (v29)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  result = sub_2588F008C();
  __break(1u);
  return result;
}

unint64_t sub_2588EAD6C(uint64_t a1, unint64_t a2, int a3, const char *a4, ...)
{
  v5 = sub_2588EA510(a1, a2);
  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  v6 = v5;
  result = sub_2588E9FBC();
  if (result)
  {
    v8 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2588EC578(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_2588EC578((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    *&v8[4 * v10 + 32] = a3;
    if (v11 < (v10 + 2))
    {
      v8 = sub_2588EC578((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v10 + 2;
    *&v8[4 * v12 + 32] = v6;
    v13 = sub_2588EBFBC(v8);

    return v13;
  }

  return result;
}

uint64_t sub_2588EAFF8()
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = sub_2588EFEBC();
  v0 = *(v44 - 8);
  v1 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v42 = &v38 - v3;
  v4 = sub_2588E9FBC();
  if (!v4)
  {
    return v4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v4 = sub_2588EC578(0, *(v4 + 16) + 1, 1, v4);
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v4 = sub_2588EC578((v5 > 1), v6 + 1, 1, v4);
    v5 = *(v4 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + 4 * v6 + 32) = 7;
  if (v7 < (v6 + 2))
  {
    v4 = sub_2588EC578((v5 > 1), v6 + 2, 1, v4);
  }

  *(v4 + 16) = v6 + 2;
  *(v4 + 4 * v8 + 32) = 0;
  v9 = sub_2588EF010(v4);

  v10 = *(v9 + 2);
  if (!v10)
  {

    return MEMORY[0x277D84F98];
  }

  v11 = 0;
  v41 = (v0 + 8);
  v12 = v9 + 64;
  v4 = MEMORY[0x277D84F98];
  v39 = (v10 - 1);
  v40 = v9;
  while (1)
  {
    v45 = *(v12 - 3);
    v46 = *v12;
    v47 = v46;
    v13 = sub_2588EFF7C();
    v15 = v14;
    v16 = v42;
    sub_2588EFE9C();
    v17 = v13;
    *&v46 = v13;
    *(&v46 + 1) = v15;
    v18 = v43;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    LOBYTE(v13) = v19;
    v20 = *v41;
    v21 = v18;
    v22 = v44;
    (*v41)(v21, v44);
    v20(v16, v22);
    if (v13)
    {
      v23 = v17;
    }

    else
    {

      v23 = 0;
      v15 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v4;
    v0 = sub_2588ED0BC(v23, v15);
    v26 = *(v4 + 16);
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v29 = v25;
    if (*(v4 + 24) < v28)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v45;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588ED89C(&qword_27F9699E0, &qword_2588F06C8);
      v32 = v45;
      if (v29)
      {
LABEL_19:

        v4 = v46;
        *(*(v46 + 56) + 8 * v0) = v32;

        goto LABEL_23;
      }
    }

LABEL_21:
    v4 = v46;
    *(v46 + 8 * (v0 >> 6) + 64) |= 1 << v0;
    v33 = (*(v4 + 48) + 16 * v0);
    *v33 = v23;
    v33[1] = v15;
    *(*(v4 + 56) + 8 * v0) = v32;

    v34 = *(v4 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_30;
    }

    *(v4 + 16) = v36;
LABEL_23:
    if (v39 == v11)
    {

      return v4;
    }

    ++v11;
    v12 += 3;
    if (v11 >= *(v40 + 2))
    {
      __break(1u);

      MEMORY[0x259C8E0B0](v29);
      return 0;
    }
  }

  sub_2588ED3DC(v28, isUniquelyReferenced_nonNull_native, &qword_27F9699E0, &qword_2588F06C8);
  v30 = sub_2588ED0BC(v23, v15);
  if ((v29 & 1) == (v31 & 1))
  {
    v0 = v30;
    v32 = v45;
    if (v29)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  result = sub_2588F008C();
  __break(1u);
  return result;
}

void sub_2588EB558(uint64_t a1, unint64_t a2)
{
  v5 = sub_2588EA510(a1, a2);
  if ((v5 & 0x100000000) != 0)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = 3;

LABEL_17:
    swift_willThrow();
    return;
  }

  v6 = v5;
  v7 = sub_2588E9FBC();
  if (!v7)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v25 = xmmword_2588F0650;
    *(v25 + 16) = 2;
    goto LABEL_17;
  }

  v8 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2588EC578(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    v8 = sub_2588EC578((v9 > 1), v10 + 1, 1, v8);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
  }

  *(v8 + 2) = v12;
  *&v8[4 * v10 + 32] = 1;
  v13 = v10 + 2;
  if (v11 < v13)
  {
    v8 = sub_2588EC578((v9 > 1), v13, 1, v8);
  }

  *(v8 + 2) = v13;
  *&v8[4 * v12 + 32] = v6;

  v14 = sub_2588EFEDC();
  v15 = sub_2588EFFBC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2588EC9C4(a1, a2, &v30);
    _os_log_impl(&dword_2588E8000, v14, v15, "Attempting to reset peak value for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x259C8E180](v17, -1, -1);
    MEMORY[0x259C8E180](v16, -1, -1);
  }

  sub_2588EC2A4(v8, 0);
  if (v2)
  {

    MEMORY[0x259C8E0C0](v2);
    v18 = sub_2588EFEDC();
    v19 = sub_2588EFFCC();

    MEMORY[0x259C8E0B0](v2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_2588EC9C4(a1, a2, &v30);
      *(v20 + 12) = 2112;
      MEMORY[0x259C8E0C0](v2);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2588E8000, v18, v19, "Error trying to reset peak memory value for %s:\n%@", v20, 0x16u);
      sub_2588ECF6C(v21);
      MEMORY[0x259C8E180](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C8E180](v22, -1, -1);
      MEMORY[0x259C8E180](v20, -1, -1);
    }

    goto LABEL_17;
  }

  v26 = sub_2588EFEDC();
  v27 = sub_2588EFFDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_2588EC9C4(a1, a2, &v30);
    _os_log_impl(&dword_2588E8000, v26, v27, "Successfuly reset peak memory accounting value to 0 for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x259C8E180](v29, -1, -1);
    MEMORY[0x259C8E180](v28, -1, -1);
  }
}

void sub_2588EB9DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_2588EA510(a1, a2);
  if ((v7 & 0x100000000) != 0)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = 3;

LABEL_17:
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = sub_2588E9FBC();
  if (!v9)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v27 = xmmword_2588F0650;
    *(v27 + 16) = 2;
    goto LABEL_17;
  }

  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2588EC578(0, *(v10 + 2) + 1, 1, v10);
  }

  v32 = a1;
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  v15 = a3;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_2588EC578((v11 > 1), v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  *&v10[4 * v12 + 32] = 3;
  if (v13 < (v12 + 2))
  {
    v10 = sub_2588EC578((v11 > 1), v12 + 2, 1, v10);
  }

  *(v10 + 2) = v12 + 2;
  *&v10[4 * v14 + 32] = v8;

  v16 = sub_2588EFEDC();
  v17 = sub_2588EFFDC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2588EC9C4(v32, a2, &v33);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v15;
    _os_log_impl(&dword_2588E8000, v16, v17, "Attempting to set hard limit for %s to %llu", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x259C8E180](v19, -1, -1);
    MEMORY[0x259C8E180](v18, -1, -1);
  }

  sub_2588EC2A4(v10, v15);
  if (v3)
  {

    MEMORY[0x259C8E0C0](v3);
    v20 = sub_2588EFEDC();
    v21 = sub_2588EFFCC();

    MEMORY[0x259C8E0B0](v3);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_2588EC9C4(v32, a2, &v33);
      *(v22 + 12) = 2048;
      *(v22 + 14) = v15;
      *(v22 + 22) = 2112;
      MEMORY[0x259C8E0C0](v3);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2588E8000, v20, v21, "Error trying to set hard-limit for %s to %llu:\n%@", v22, 0x20u);
      sub_2588ECF6C(v23);
      MEMORY[0x259C8E180](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x259C8E180](v24, -1, -1);
      MEMORY[0x259C8E180](v22, -1, -1);
    }

    goto LABEL_17;
  }

  v28 = sub_2588EFEDC();
  v29 = sub_2588EFFDC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_2588EC9C4(v32, a2, &v33);
    *(v30 + 12) = 2048;
    *(v30 + 14) = v15;
    _os_log_impl(&dword_2588E8000, v28, v29, "Successfuly set hard-limit for %s to %llu", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C8E180](v31, -1, -1);
    MEMORY[0x259C8E180](v30, -1, -1);
  }
}

uint64_t MemoryAccountingManager.deinit()
{

  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  v2 = sub_2588EFEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MemoryAccountingManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  v2 = sub_2588EFEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

char *sub_2588EBFBC(char *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2588EFE8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  if (HIDWORD(v6))
  {
    __break(1u);
  }

  v23 = 8;
  v24 = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v6, 0, a1);
  }

  if (sysctl(a1 + 8, v6, &v24, &v23, 0, 0))
  {
    v7 = sub_2588EFEDC();
    v8 = sub_2588EFFCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v3;
      v11 = v10;
      v25[0] = v10;
      *v9 = 67109378;
      *(v9 + 4) = MEMORY[0x259C8DD80]();
      *(v9 + 8) = 2080;

      v13 = MEMORY[0x259C8DE00](v12, MEMORY[0x277D849A8]);
      v15 = v14;

      v16 = sub_2588EC9C4(v13, v15, v25);

      *(v9 + 10) = v16;
      _os_log_impl(&dword_2588E8000, v7, v8, "Failed to call sysctl with error: %d\n using mib: %s", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      v17 = v11;
      v3 = v22;
      MEMORY[0x259C8E180](v17, -1, -1);
      MEMORY[0x259C8E180](v9, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v18 = sub_2588EFF0C();
    if ((v18 & 0x100000000) != 0)
    {
      LODWORD(v18) = sub_2588EFE6C();
    }

    LODWORD(v25[0]) = v18;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    v19 = v5;
    sub_2588EFE7C();
    (*(v3 + 8))(v5, v2);
    swift_willThrow();
  }

  else
  {
    v19 = v24;
  }

  return v19;
}

uint64_t sub_2588EC2A4(char *a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2588EFE8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v8 = *(a1 + 2);
  if (HIDWORD(v8))
  {
    __break(1u);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v8, 0, a1);
  }

  if (sysctl(a1 + 8, v8, 0, 0, &v23, 8uLL))
  {
    v9 = sub_2588EFEDC();
    v10 = sub_2588EFFCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v5;
      v13 = v12;
      v24[0] = v12;
      *v11 = 67109378;
      *(v11 + 4) = MEMORY[0x259C8DD80]();
      *(v11 + 8) = 2080;

      v15 = MEMORY[0x259C8DE00](v14, MEMORY[0x277D849A8]);
      v17 = v16;

      v18 = sub_2588EC9C4(v15, v17, v24);

      *(v11 + 10) = v18;
      _os_log_impl(&dword_2588E8000, v9, v10, "Failed to call sysctl with error: %d\n using mib: %s", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v19 = v13;
      v5 = v22;
      MEMORY[0x259C8E180](v19, -1, -1);
      MEMORY[0x259C8E180](v11, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v20 = sub_2588EFF0C();
    if ((v20 & 0x100000000) != 0)
    {
      LODWORD(v20) = sub_2588EFE6C();
    }

    LODWORD(v24[0]) = v20;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
  }
}

char *sub_2588EC578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A08, &qword_2588F06F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2588EC67C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C8, &qword_2588F06B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2588EC788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A00, &qword_2588F06E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_2588EC8A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F8, &qword_2588F06E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2588EC9C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2588ECA90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2588EDE20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2588ECA90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2588ECB9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2588F002C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2588ECB9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2588ECBE8(a1, a2);
  sub_2588ECD18(&unk_2869C5270);
  return v3;
}

void *sub_2588ECBE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2588ECE04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2588F002C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2588EFF8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2588ECE04(v10, 0);
        result = sub_2588F000C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2588ECD18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2588ECE78(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2588ECE04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F0, &qword_2588F06D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2588ECE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F0, &qword_2588F06D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2588ECF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969998, &qword_2588F0660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2588ED01C()
{
  result = qword_27F9699A0;
  if (!qword_27F9699A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699A0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2588ED0BC(uint64_t a1, uint64_t a2)
{
  sub_2588F00DC();
  sub_2588EFF5C();
  v4 = sub_2588F00EC();

  return sub_2588ED674(a1, a2, v4);
}

uint64_t sub_2588ED134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699D0, &qword_2588F06C0);
  v34 = v4;
  result = sub_2588F004C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2588F00DC();
      sub_2588EFF5C();
      result = sub_2588F00EC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2588ED3DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2588F004C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_2588F00DC();
      sub_2588EFF5C();
      result = sub_2588F00EC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_2588ED674(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2588F007C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2588ED72C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699D0, &qword_2588F06C0);
  v2 = *v0;
  v3 = sub_2588F003C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2588ED89C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2588F003C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

unint64_t sub_2588ED9F4()
{
  result = qword_27F9699A8;
  if (!qword_27F9699A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699A8);
  }

  return result;
}

uint64_t sub_2588EDA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for MemoryAccountingManager(uint64_t a1)
{
  result = qword_27F9699B0;
  if (!qword_27F9699B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588EDAFC(uint64_t a1)
{
  result = sub_2588EFEFC();
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

unint64_t sub_2588EDDC8()
{
  result = qword_27F9699D8;
  if (!qword_27F9699D8)
  {
    sub_2588EFE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699D8);
  }

  return result;
}

uint64_t sub_2588EDE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t SysctlManagerError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      sub_2588F001C();

      v3 = 0xD000000000000019;
    }

    else
    {
      sub_2588F001C();

      v3 = 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 16))
  {
    sub_2588F001C();

    v3 = 0xD00000000000001FLL;
  }

  else
  {
    sub_2588F001C();

    v3 = 0xD000000000000029;
  }

  v5 = v3;
  MEMORY[0x259C8DDD0](v2, v1);
  return v5;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2588EDFF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_2588EE03C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2588EE098()
{
  v2 = v0;
  v47 = *MEMORY[0x277D85DE8];
  v3 = 0xEC00000074636361;
  v4 = sub_2588EFE8C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588EFF3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_2588ED0BC(0x6D656D2E6E72656BLL, 0xEC00000074636361);
    if (v13)
    {
      v3 = *(*(v11 + 56) + 8 * v12);

      v14 = sub_2588EFEDC();
      v15 = sub_2588EFFDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v45[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_2588EC9C4(0x6D656D2E6E72656BLL, 0xEC00000074636361, v45);
        _os_log_impl(&dword_2588E8000, v14, v15, "Cache hit for %s mib.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x259C8E180](v17, -1, -1);
        MEMORY[0x259C8E180](v16, -1, -1);
      }

      return v3;
    }
  }

  v39 = v1;
  v44 = 12;
  v18 = sub_2588EFFAC();
  *(v18 + 16) = 12;
  *(v18 + 32) = 0u;
  v19 = (v18 + 32);
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  v40 = v18;
  strcpy(v45, "kern.memacct");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  sub_2588EFF2C();
  sub_2588ED01C();
  v20 = sub_2588EFFFC();
  (*(v7 + 8))(v9, v6);
  if (v20)
  {
    v21 = (v20 + 32);
  }

  else
  {
    v21 = 0;
  }

  v22 = sysctlnametomib(v21, v19, &v44);

  if (v22)
  {
    v23 = sub_2588EFEDC();
    v24 = sub_2588EFFCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = MEMORY[0x259C8DD80]();
      _os_log_impl(&dword_2588E8000, v23, v24, "Failed to lookup sysctl by name with error: %d", v25, 8u);
      MEMORY[0x259C8E180](v25, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v26 = sub_2588EFF0C();
    if ((v26 & 0x100000000) != 0)
    {
      LODWORD(v26) = sub_2588EFE6C();
    }

    LODWORD(v45[0]) = v26;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    v27 = v41;
    v28 = v43;
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v42 + 8))(v27, v28);
LABEL_16:
    swift_willThrow();

    return v3;
  }

  if (v44 < 1)
  {
    v32 = sub_2588EFEDC();
    v33 = sub_2588EFFCC();
    if (os_log_type_enabled(v32, v33))
    {
      v3 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v3 = 136315138;
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      sub_2588F001C();

      v45[0] = 0xD000000000000029;
      v45[1] = 0x80000002588F04A0;
      MEMORY[0x259C8DDD0](0x6D656D2E6E72656BLL, 0xEC00000074636361);
      v35 = sub_2588EC9C4(v45[0], v45[1], &v46);

      *(v3 + 4) = v35;
      _os_log_impl(&dword_2588E8000, v32, v33, "%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x259C8E180](v34, -1, -1);
      MEMORY[0x259C8E180](v3, -1, -1);
    }

    sub_2588ED9F4();
    swift_allocError();
    *v36 = xmmword_2588F0650;
    *(v36 + 16) = 0;
    goto LABEL_16;
  }

  v29 = v40;
  v30 = *(v40 + 16);
  if (v30 < v44)
  {
    __break(1u);
  }

  if (v30 == v44)
  {

    v3 = v29;
  }

  else
  {
    sub_2588EFC0C(v40, v19, 0, (2 * v44) | 1);
    v3 = v31;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + v10);
  *(v2 + v10) = 0x8000000000000000;
  sub_2588EF93C(v3, 0x6D656D2E6E72656BLL, 0xEC00000074636361, isUniquelyReferenced_nonNull_native);
  *(v2 + v10) = v46;
  swift_endAccess();

  return v3;
}

char *sub_2588EE720(char *a1)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2588EFE8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 2);
  if (HIDWORD(v7))
  {
    goto LABEL_95;
  }

  v82 = 128;

  v8 = sub_2588EFFAC();
  *(v8 + 16) = 128;
  *(v8 + 32) = 0u;
  v9 = (v8 + 32);
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  v79 = v8;
  *(v8 + 144) = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, *(a1 + 2), 0, a1);
  }

  v10 = sysctl(a1 + 8, v7, v9, &v82, 0, 0);

  if (!v10)
  {
    if (v82 < 1)
    {

      v30 = sub_2588EFEDC();
      v31 = sub_2588EFFCC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = a1;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 136315138;
        v83 = 0;
        v84 = 0xE000000000000000;
        v85[0] = v34;
        sub_2588F001C();

        v83 = 0xD000000000000029;
        v84 = 0x80000002588F04A0;
        MEMORY[0x259C8DDD0](0x6D656D2E6E72656BLL, 0xEC00000074636361);
        v35 = sub_2588EC9C4(v83, v84, v85);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_2588E8000, v30, v31, "%s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C8E180](v34, -1, -1);
        v36 = v33;
        a1 = v32;
        MEMORY[0x259C8E180](v36, -1, -1);
      }

      sub_2588ED9F4();
      swift_allocError();
      *v37 = xmmword_2588F0650;
      *(v37 + 16) = 0;
      goto LABEL_19;
    }

    v81 = *(v79 + 16);
    if (v81)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_86;
        }

        v28 = __OFADD__(v26, 16);
        v26 += 16;
        if (v28)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v25;
      }

      while (v26 < v81);
    }

    else
    {
      v27 = 0;
    }

    v83 = MEMORY[0x277D84F90];
    sub_2588EFAB8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
LABEL_96:
      __break(1u);
    }

    v78[0] = v1;
    v78[1] = a1;
    v38 = v83;
    v39 = v79;
    if (v27)
    {
      v40 = 0;
      v41 = *(v79 + 16);
      v42 = 16;
      v43 = 32;
      while (1)
      {
        if (v41 >= v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = v41;
        }

        if (v40 >= v81)
        {
          goto LABEL_87;
        }

        if (v40 == 0x7FFFFFFFFFFFFFF0)
        {
          break;
        }

        if (v41 >= (v40 + 16))
        {
          v45 = v40 + 16;
        }

        else
        {
          v45 = v41;
        }

        if (v45 < v40)
        {
          goto LABEL_89;
        }

        v80 = v40 + 16;
        v46 = v44 + v43 - 32;
        if (v46 == v39[2])
        {

          v47 = v39;
        }

        else
        {
          v47 = MEMORY[0x277D84F90];
          if (v40 != v45)
          {
            if (v46 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C0, &qword_2588F06B0);
              v47 = swift_allocObject();
              v51 = _swift_stdlib_malloc_size(v47);
              v39 = v79;
              v47[2] = v46;
              v47[3] = 2 * v51 - 64;
            }

            memcpy(v47 + 4, v39 + v40 + 32, v46);
            v39 = v79;
          }
        }

        v83 = v38;
        v49 = *(v38 + 16);
        v48 = *(v38 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2588EFAB8((v48 > 1), v49 + 1, 1);
          v39 = v79;
          v38 = v83;
        }

        *(v38 + 16) = v49 + 1;
        *(v38 + 8 * v49 + 32) = v47;
        v42 += 16;
        v43 -= 16;
        v50 = v80;
        v40 = v80;
        if (!--v27)
        {
          goto LABEL_48;
        }
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    else
    {
      v50 = 0;
LABEL_48:
      if (v50 >= v81)
      {
LABEL_69:

        v65 = *(v38 + 16);
        if (!v65)
        {
          a1 = MEMORY[0x277D84F90];
          goto LABEL_84;
        }

        v66 = 0;
        a1 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v66 >= *(v38 + 16))
          {
            goto LABEL_93;
          }

          v67 = *(v38 + 32 + 8 * v66);
          v68 = *(v67 + 16);
          if (!v68)
          {
            goto LABEL_94;
          }

          if (!*(v67 + 32))
          {
            goto LABEL_84;
          }

          v69 = 0;
          ++v66;
          v70 = v68 - 1;
          do
          {
            if (v70 == v69)
            {
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }
          }

          while (*(v67 + v69++ + 33));

          v72 = sub_2588EFF4C();
          v74 = v73;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_2588EC67C(0, *(a1 + 2) + 1, 1, a1);
          }

          v76 = *(a1 + 2);
          v75 = *(a1 + 3);
          if (v76 >= v75 >> 1)
          {
            a1 = sub_2588EC67C((v75 > 1), v76 + 1, 1, a1);
          }

          *(a1 + 2) = v76 + 1;
          v77 = &a1[16 * v76];
          *(v77 + 4) = v72;
          *(v77 + 5) = v74;
          if (v66 == v65)
          {
LABEL_84:

            return a1;
          }
        }
      }

      v52 = -v50;
      v53 = v50 + 16;
      v54 = v50;
      while (1)
      {
        v55 = v54 + 16;
        if (__OFADD__(v54, 16))
        {
          break;
        }

        v56 = v39[2];
        if (v56 >= v55)
        {
          v57 = v54 + 16;
        }

        else
        {
          v57 = v39[2];
        }

        if (v57 < v54)
        {
          goto LABEL_91;
        }

        if (v50 < 0)
        {
          goto LABEL_92;
        }

        v58 = v50;
        if (v56 >= v53)
        {
          v59 = v53;
        }

        else
        {
          v59 = v39[2];
        }

        v60 = v59 + v52;
        if (v59 + v52 == v56)
        {

          v61 = v39;
        }

        else
        {
          v61 = MEMORY[0x277D84F90];
          if (v54 != v57)
          {
            if (v60 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C0, &qword_2588F06B0);
              v61 = swift_allocObject();
              v64 = _swift_stdlib_malloc_size(v61);
              v39 = v79;
              v61[2] = v60;
              v61[3] = 2 * v64 - 64;
            }

            memcpy(v61 + 4, v39 + v54 + 32, v60);
            v39 = v79;
          }
        }

        v83 = v38;
        v63 = *(v38 + 16);
        v62 = *(v38 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_2588EFAB8((v62 > 1), v63 + 1, 1);
          v39 = v79;
          v38 = v83;
        }

        *(v38 + 16) = v63 + 1;
        *(v38 + 8 * v63 + 32) = v61;
        v54 += 16;
        v52 -= 16;
        v53 += 16;
        v50 = v58;
        if (v55 >= v81)
        {
          goto LABEL_69;
        }
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v11 = sub_2588EFEDC();
  v12 = sub_2588EFFCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v83 = v14;
    *v13 = 67109378;
    *(v13 + 4) = MEMORY[0x259C8DD80]();
    *(v13 + 8) = 2080;

    v16 = MEMORY[0x259C8DE00](v15, MEMORY[0x277D849A8]);
    v81 = v6;
    v17 = v3;
    v18 = v4;
    v19 = v16;
    v21 = v20;

    v22 = sub_2588EC9C4(v19, v21, &v83);

    *(v13 + 10) = v22;
    v4 = v18;
    v3 = v17;
    v6 = v81;
    _os_log_impl(&dword_2588E8000, v11, v12, "Failed to call sysctl with error: %d\n using mib: %s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C8E180](v14, -1, -1);
    MEMORY[0x259C8E180](v13, -1, -1);
  }

  MEMORY[0x259C8DD80]();
  v23 = sub_2588EFF0C();
  if ((v23 & 0x100000000) != 0)
  {
    v24 = sub_2588EFE6C();
  }

  else
  {
    v24 = v23;
  }

  LODWORD(v83) = v24;
  sub_2588EFCDC(MEMORY[0x277D84F90]);
  sub_2588EDDC8();
  sub_2588EFECC();
  sub_2588EFE7C();
  (*(v4 + 8))(v6, v3);
LABEL_19:
  swift_willThrow();

  return a1;
}

char *sub_2588EF010(char *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sub_2588EFE8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = *(a1 + 2);
  if (HIDWORD(v6))
  {
    __break(1u);
  }

  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 384;
  type metadata accessor for memacct_statistics();

  v7 = sub_2588EFFAC();
  *(v7 + 32) = 0u;
  *(v7 + 16) = 8;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  *(v7 + 320) = 0u;
  *(v7 + 336) = 0u;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0u;
  *(v7 + 384) = 0u;
  *(v7 + 400) = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, *(a1 + 2), 0, a1);
  }

  v8 = sysctl(a1 + 8, v6, (v7 + 32), &v39, 0, 0);

  if (v8)
  {
    v9 = sub_2588EFEDC();
    v10 = sub_2588EFFCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v36 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      *&v40 = v13;
      *v12 = 67109378;
      *(v12 + 4) = MEMORY[0x259C8DD80]();
      *(v12 + 8) = 2080;

      v15 = v4;
      v16 = MEMORY[0x259C8DE00](v14, MEMORY[0x277D849A8]);
      v18 = v17;

      v19 = sub_2588EC9C4(v16, v18, &v40);

      *(v12 + 10) = v19;
      v4 = v15;
      _os_log_impl(&dword_2588E8000, v9, v10, "Failed to call sysctl with error: %d\n using mib: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x259C8E180](v13, -1, -1);
      v20 = v12;
      v3 = v36;
      MEMORY[0x259C8E180](v20, -1, -1);
    }

    v21 = v37;
    MEMORY[0x259C8DD80]();
    v22 = sub_2588EFF0C();
    if ((v22 & 0x100000000) != 0)
    {
      v23 = sub_2588EFE6C();
    }

    else
    {
      v23 = v22;
    }

    LODWORD(v40) = v23;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    v27 = v21;
    sub_2588EFE7C();
    (*(v4 + 8))(v21, v3);
    swift_willThrow();
  }

  else
  {
    v24 = *(v7 + 16);
    if (v24)
    {
      v37 = v1;
      v25 = v24 - 1;
      v26 = (v7 + 65);
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        v40 = *(v26 - 33);
        v41 = *(v26 - 17);
        v28 = *(v26 - 1);
        v38[0] = *v26;
        *(v38 + 7) = *(v26 + 7);
        if (v28)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_2588EC788(0, *(v27 + 2) + 1, 1, v27);
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          if (v30 >= v29 >> 1)
          {
            v27 = sub_2588EC788((v29 > 1), v30 + 1, 1, v27);
          }

          *(v27 + 2) = v30 + 1;
          v31 = &v27[48 * v30];
          v32 = v41;
          *(v31 + 2) = v40;
          *(v31 + 3) = v32;
          v31[64] = v28;
          v33 = v38[0];
          *(v31 + 9) = *(v38 + 7);
          *(v31 + 65) = v33;
        }

        if (!v25)
        {
          break;
        }

        --v25;
        v26 += 6;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v27;
}

uint64_t sub_2588EF490@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = sub_2588EFE8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 2);
  if (HIDWORD(v8))
  {
    __break(1u);
  }

  v27 = 48;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v8, 0, a1);
  }

  if (sysctl(a1 + 8, v8, &v24, &v27, 0, 0))
  {
    v9 = sub_2588EFEDC();
    v10 = sub_2588EFFCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v28 = v12;
      *v11 = 67109378;
      *(v11 + 4) = MEMORY[0x259C8DD80]();
      *(v11 + 8) = 2080;

      v14 = MEMORY[0x259C8DE00](v13, MEMORY[0x277D849A8]);
      v23 = v5;
      v15 = v14;
      v17 = v16;

      v18 = sub_2588EC9C4(v15, v17, &v28);

      *(v11 + 10) = v18;
      v5 = v23;
      _os_log_impl(&dword_2588E8000, v9, v10, "Failed to call sysctl with error: %d\n using mib: %s", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C8E180](v12, -1, -1);
      MEMORY[0x259C8E180](v11, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v19 = sub_2588EFF0C();
    if ((v19 & 0x100000000) != 0)
    {
      LODWORD(v19) = sub_2588EFE6C();
    }

    LODWORD(v28) = v19;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
  }

  else
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;

    v21 = v29;
    *a2 = v28;
    a2[1] = v21;
    a2[2] = v30;
  }

  return result;
}

uint64_t sub_2588EF7A0()
{
  v1 = OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog;
  v2 = sub_2588EFEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SysctlManager(uint64_t a1)
{
  result = qword_27F969A20;
  if (!qword_27F969A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588EF8A0(uint64_t a1)
{
  result = sub_2588EFEFC();
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

uint64_t sub_2588EF93C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2588ED0BC(a2, a3);
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
      sub_2588ED134(v16, a4 & 1);
      v11 = sub_2588ED0BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2588F008C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2588ED72C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_2588EFAB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2588EFAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2588EFAD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A30, &qword_2588F0890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A38, &qword_2588F0898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2588EFC0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A08, &qword_2588F06F0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_2588EFCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A40, &qword_2588F08A0);
    v3 = sub_2588F005C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2588EFDEC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2588ED0BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2588EFE5C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2588EFDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A48, &qword_2588F08A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2588EFE5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}