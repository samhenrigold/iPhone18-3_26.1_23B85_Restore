uint64_t sub_242111790()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2421117D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242111810()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v1 = sub_242128CD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2421118D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242111910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2421119A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v1 = sub_242128CD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_242111AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v1 = sub_242128CD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_242111BB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LocalDatabase.Error.hashValue.getter()
{
  v1 = *v0;
  sub_242128EF0();
  MEMORY[0x245D078C0](v1);
  return sub_242128F10();
}

uint64_t sub_242111C8C()
{
  v1 = *v0;
  sub_242128EF0();
  MEMORY[0x245D078C0](v1);
  return sub_242128F10();
}

uint64_t sub_242111D00(uint64_t a1)
{
  v2 = *v1;
  sub_242128EF0();
  MEMORY[0x245D078C0](v2);
  return sub_242128F10();
}

uint64_t LocalDatabase.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LocalDatabase.init(_:)(a1);
  return v2;
}

uint64_t LocalDatabase.init(_:)(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  v13 = sub_242128D60();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20]();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242128D90();
  MEMORY[0x28223BE20]();
  sub_242128BB0();
  MEMORY[0x28223BE20]();
  v11 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue;
  v10[1] = sub_2421120B8();
  sub_242128BA0();
  v14 = MEMORY[0x277D84F90];
  sub_2421155E0(&qword_27EC80AD8, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80AE0, &qword_24212A7A0);
  v6 = v12;
  sub_242112540(&qword_27EC80AE8, &qword_27EC80AE0, &qword_24212A7A0);
  sub_242128DD0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v13);
  *(v1 + v11) = sub_242128DA0();
  *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database) = 0;
  if (sub_242128B10())
  {
    v7 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_url;
    v8 = sub_242128B30();
    (*(*(v8 - 8) + 32))(v2 + v7, v6, v8);
    return v2;
  }

  else
  {
    result = sub_242128E00();
    __break(1u);
  }

  return result;
}

unint64_t sub_2421120B8()
{
  result = qword_27EC80AD0;
  if (!qword_27EC80AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC80AD0);
  }

  return result;
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

uint64_t LocalDatabase.deinit()
{
  v1 = v0;
  v2 = sub_242128B90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242128BB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v22 = v3;
    v12 = *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    aBlock[4] = sub_2421124DC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2421124E4;
    aBlock[3] = &block_descriptor;
    v14 = _Block_copy(aBlock);
    v20 = v12;
    v21 = v6;
    sub_242128BA0();
    v23 = MEMORY[0x277D84F90];
    sub_2421155E0(&qword_27EC80B00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
    sub_242112540(&qword_27EC80B10, &qword_27EC80B08, &unk_24212A7A8);
    sub_242128DD0();
    v15 = v20;
    MEMORY[0x245D07730](0, v9, v5, v14);
    _Block_release(v14);

    (*(v22 + 8))(v5, v2);
    (*(v7 + 8))(v9, v21);
  }

  v16 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_url;
  v17 = sub_242128B30();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);

  return v1;
}

uint64_t sub_2421124E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242112540(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t LocalDatabase.__deallocating_deinit()
{
  LocalDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2421125EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_242112614, 0, 0);
}

uint64_t sub_242112614()
{
  sub_242114828(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_242128C90();
  *v5 = v0;
  v5[1] = sub_242112780;

  return sub_242112BEC(v0 + 16, sub_242114A28, v4, v6);
}

uint64_t sub_242112780()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2421128B8;
  }

  else
  {

    v2 = sub_24211289C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2421128B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24211291C@<X0>(sqlite3 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1, a2, a3);
  sub_242128DE0();

  MEMORY[0x245D075C0](a2, a3);
  ppStmt[0] = 0;
  v11 = sub_242128BE0();

  v12 = sqlite3_prepare_v2(a1, (v11 + 32), -1, ppStmt, 0);

  if (v12 || (v15 = ppStmt[0]) == 0)
  {
    sub_242115030();
    swift_allocError();
    *v13 = 3;
    return swift_willThrow();
  }

  else
  {
    v16 = sub_242128C60();
    v17 = sub_242115084(v15);
    type metadata accessor for LocalDatabase.SQLiteStatementRowDecoder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D84F90];
    v18[4] = MEMORY[0x277D84F90];
    v18[5] = sub_242115234(v19);
    v18[2] = v15;
    v18[3] = v17;
    if (sqlite3_step(v15) == 100)
    {
      sub_2421155E0(&qword_27EC80BB8, type metadata accessor for LocalDatabase.SQLiteStatementRowDecoder, &unk_24212AB00);
      while (1)
      {

        sub_242128D00();
        if (v6)
        {
          break;
        }

        sub_242128C90();
        sub_242128C80();
        if (sqlite3_step(v15) != 100)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      *a6 = v16;
    }

    return sqlite3_finalize(v15);
  }
}

uint64_t sub_242112BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_242112C14, 0, 0);
}

uint64_t sub_242112C14()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue);
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;
  v5;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_242112D34;
  v8 = v0[5];
  v9 = v0[2];

  return OS_dispatch_queue.bf_async<A>(execute:)(v9, sub_2421155C0, v6, v8);
}

uint64_t sub_242112D34()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_242112E78, 0, 0);
  }

  else
  {
    v3 = v2[7];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_242112E78()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_242112EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    return a2();
  }

  sub_242128B20();
  v6 = sub_242128BE0();

  swift_beginAccess();
  v7 = sqlite3_open_v2((v6 + 32), (a1 + v4), 1, 0);
  swift_endAccess();

  if (!v7)
  {
    return a2();
  }

  sub_242115030();
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

uint64_t sub_242113008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalDatabase.SQLiteKeyedContainer(0, a2, a3, a4);
  v5 = *(v4 + 16);
  v8 = v4 + 24;
  v6 = *(v4 + 24);
  v7 = *(v8 + 8);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v6;

  swift_getWitnessTable();
  return sub_242128E40();
}

void *sub_2421130BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t sub_242113104()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_242113188(uint64_t a1)
{
  sub_242115030();
  swift_allocError();
  *v1 = 6;
  return swift_willThrow();
}

uint64_t sub_2421131D8()
{
  v4 = v3;
  if (swift_dynamicCastMetatype())
  {
    v5 = *(v3 + 32);
    v6 = sub_242128F20();
    if (*(v5 + 16))
    {
      v8 = sub_2421140F4(v6, v7);
      v10 = v9;

      if (v10)
      {
        if (sqlite3_column_text(*(v4 + 24), *(*(v5 + 56) + 4 * v8)))
        {
          sub_242128C20();
          return swift_dynamicCast();
        }

LABEL_15:
        v23 = 5;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v11 = *(v3 + 32);
    v12 = sub_242128F20();
    if (*(v11 + 16))
    {
      v14 = sub_2421140F4(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v11 + 56) + 4 * v14);
        v18 = *(v4 + 24);
        v19 = sqlite3_column_blob(v18, v17);
        if (v19)
        {
          v20 = v19;
          v21 = sqlite3_column_bytes(v18, v17);
          sub_242115510(v20, v21);
          return swift_dynamicCast();
        }

        goto LABEL_15;
      }

LABEL_13:
      v23 = 4;
LABEL_14:
      sub_242115030();
      swift_allocError();
      *v24 = v23;
      return swift_willThrow();
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_242128E00();
  __break(1u);
  return result;
}

uint64_t sub_242113560()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_242113650()
{
  sub_2421131D8();
  if (!v0)
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t sub_2421136A0()
{
  result = sub_2421131D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

double sub_2421136F4()
{
  sub_2421131D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

float sub_242113740()
{
  sub_2421131D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2421138D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2421131D8();
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_24211393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2421131D8();
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2421139A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2421131D8();
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_242113A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2421131D8();
  if (!v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_242113E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_242113F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_242113FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

unint64_t sub_2421140F4(uint64_t a1, uint64_t a2)
{
  sub_242128EF0();
  sub_242128BF0();
  v4 = sub_242128F10();

  return sub_242114470(a1, a2, v4);
}

unint64_t sub_24211416C(uint64_t a1)
{
  sub_242128DF0();
  v2 = sub_242128BC0();

  return sub_242114528(a1, v2);
}

uint64_t sub_2421141D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD0, &qword_24212AB58);
  v34 = v4;
  result = sub_242128E20();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_242128EF0();
      sub_242128BF0();
      result = sub_242128F10();
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

unint64_t sub_242114470(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242128E60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_242114528(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_242128DF0();
  MEMORY[0x28223BE20](v4, v5, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4);
      v19 = sub_242128BD0();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_2421146C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD0, &qword_24212AB58);
  v2 = *v0;
  v3 = sub_242128E10();
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

uint64_t sub_242114828(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD8, &qword_24212AB60);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BE0, &qword_24212AB68);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = v18 - v12;
  result = sub_242128B80();
  if (!v2)
  {
    sub_242128B70();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BE8, &qword_24212AB70);
    v16 = (*(*(v15 - 8) + 48))(v7, 1, v15);
    sub_2421156A8(v7);
    if (v16 == 1)
    {
      sub_242115030();
      swift_allocError();
      *v17 = 2;
      swift_willThrow();
    }

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

unint64_t sub_242114A50()
{
  result = qword_27EC80B18;
  if (!qword_27EC80B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B18);
  }

  return result;
}

uint64_t type metadata accessor for LocalDatabase(uint64_t a1)
{
  result = qword_27EC80B20;
  if (!qword_27EC80B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242114AF8(uint64_t a1)
{
  result = sub_242128B30();
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

uint64_t dispatch thunk of LocalDatabase.select<A>(all:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 160) + **(*v5 + 160));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_242114D20;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_242114D20(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for LocalDatabase.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocalDatabase.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242115030()
{
  result = qword_27EC80BB0;
  if (!qword_27EC80BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80BB0);
  }

  return result;
}

void *sub_242115084(sqlite3_stmt *a1)
{
  v2 = sqlite3_column_count(a1);
  if (v2 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_242128EA0();
    __break(1u);
  }

  else
  {
    v3 = v2;
    if (v2)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F98];
      while (1)
      {
        if (!sqlite3_column_name(a1, v4))
        {
          goto LABEL_22;
        }

        v7 = sub_242128C10();
        v9 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = sub_2421140F4(v7, v9);
        v13 = v5[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v17 = v12;
        if (v5[3] < v16)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v22 = v11;
        sub_2421146C0();
        v11 = v22;
        if (v17)
        {
LABEL_4:
          v6 = v11;

          *(v5[7] + 4 * v6) = v4;
          goto LABEL_5;
        }

LABEL_13:
        v5[(v11 >> 6) + 8] |= 1 << v11;
        v19 = (v5[6] + 16 * v11);
        *v19 = v7;
        v19[1] = v9;
        *(v5[7] + 4 * v11) = v4;
        v20 = v5[2];
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_20;
        }

        v5[2] = v21;
LABEL_5:
        if (v3 == ++v4)
        {
          return v5;
        }
      }

      sub_2421141D0(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_2421140F4(v7, v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242115234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC0, &qword_24212AB48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC8, &qword_24212AB50);
    v9 = sub_242128E30();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_242115628(v11, v7);
      result = sub_24211416C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_242128DF0();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_242115698(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_242115458(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

unint64_t sub_242115510(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_242115458(a1, &a1[a2]);
  }

  sub_242128AF0();
  swift_allocObject();
  sub_242128AE0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_242128B40();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2421155E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242115628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC0, &qword_24212AB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_242115698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2421156A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD8, &qword_24212AB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OS_dispatch_queue.bf_async<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_242115780, 0, 0);
}

uint64_t sub_242115780()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_242115870;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000012, 0x800000024212AF90, sub_242115D88, v1, v4);
}

uint64_t sub_242115870()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2421159AC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2421159AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242115A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a4;
  v37 = a2;
  v7 = sub_242128B90();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_242128BB0();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v17 = sub_242128CD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20, v21);
  v23 = &v31 - v22;
  (*(v18 + 16))(&v31 - v22, a1, v17);
  v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  (*(v18 + 32))(v26 + v24, v23, v17);
  v27 = (v26 + v25);
  v28 = v33;
  *v27 = v32;
  v27[1] = v28;
  aBlock[4] = sub_242115EA8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2421124E4;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);

  sub_242128BA0();
  v38 = MEMORY[0x277D84F90];
  sub_242115F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
  sub_242115FDC();
  sub_242128DD0();
  MEMORY[0x245D07730](0, v16, v11, v29);
  _Block_release(v29);
  (*(v36 + 8))(v11, v7);
  (*(v34 + 8))(v16, v35);
}

uint64_t sub_242115D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3);
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  return sub_242128CC0();
}

uint64_t sub_242115EA8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = *(sub_242128CD0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_242115D94(v0 + v3, v5, v6, v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_242115F84()
{
  result = qword_27EC80B00;
  if (!qword_27EC80B00)
  {
    sub_242128B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B00);
  }

  return result;
}

unint64_t sub_242115FDC()
{
  result = qword_27EC80B10;
  if (!qword_27EC80B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80B08, &unk_24212A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B10);
  }

  return result;
}

uint64_t CKDatabase.bf_performQuery(recordType:predicate:sortDescriptors:desiredKeys:resultsLimit:zone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 160) = a7;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  return MEMORY[0x2822009F8](sub_242116070, 0, 0);
}

uint64_t sub_242116070()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_2421166B0(0, &qword_27EC80BF8, 0x277CBC578);

  v3 = v2;
  v4 = sub_242128DB0();
  *(v0 + 112) = v4;
  if (v1)
  {
    sub_2421166B0(0, &qword_27EC80C08, 0x277CCAC98);
    v5 = sub_242128C40();
    [v4 setSortDescriptors_];
  }

  v6 = *(v0 + 80);
  v7 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  *(v0 + 120) = v7;
  if (v6)
  {

    sub_242128D10();
  }

  if ((*(v0 + 160) & 1) == 0)
  {
    [v7 setResultsLimit_];
  }

  v8 = *(v0 + 96);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 zoneID];
    [v7 setZoneID_];
  }

  v11 = *(v0 + 104);
  v12 = swift_allocObject();
  *(v0 + 128) = v12;
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  v13[2] = v7;
  v13[3] = v12;
  v13[4] = v11;
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80C00, &qword_24212AB98);
  *v14 = v0;
  v14[1] = sub_2421162D8;

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000054, 0x800000024212AFB0, sub_2421166A4, v13, v15);
}

uint64_t sub_2421162D8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_242116498;
  }

  else
  {

    v3 = sub_242116400;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242116400()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_242116498()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

id sub_24211651C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  sub_242128D20();

  sub_242128D30();
  return [a4 addOperation_];
}

uint64_t sub_2421166B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2421166F8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
    return sub_242128CB0();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
    return sub_242128CC0();
  }
}

uint64_t sub_242116778(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);

  return sub_2421166F8(a1, a2 & 1);
}

void sub_242116804(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v6 = a2;
    MEMORY[0x245D075F0]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_242128C50();
    }

    sub_242128C70();
    swift_endAccess();
  }
}

uint64_t static DictionarySerialization.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  sub_242128AD0();
  swift_allocObject();
  sub_242128AC0();
  v5 = sub_242128AB0();
  v7 = v6;

  if (!v4)
  {
    v9 = objc_opt_self();
    v10 = sub_242128B50();
    sub_242116A28(v5, v7);
    v14[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v14];

    v12 = v14[0];
    if (v11)
    {
      sub_242128DC0();
      return swift_unknownObjectRelease();
    }

    else
    {
      v13 = v12;
      sub_242128B00();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_242116A28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static DictionarySerialization.decode(_:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_242128AA0();
  swift_allocObject();
  sub_242128A90();
  v5 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v13[0] = 0;
  v6 = [v5 dataWithJSONObject:sub_242128E50() options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_242128B60();
    v10 = v9;

    sub_242128A80();

    return sub_242116A28(v8, v10);
  }

  else
  {
    v12 = v7;

    sub_242128B00();

    return swift_willThrow();
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242116C4C(unsigned int *a1, int a2)
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

_WORD *sub_242116C9C(_WORD *result, int a2, int a3)
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

uint64_t AsyncMutex.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AsyncMutex.init(label:)(a1, a2);
  return v4;
}

uint64_t AsyncMutex.init(label:)(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v16[2] = a2;
  v3 = sub_242128D60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_242128D50();
  MEMORY[0x28223BE20](v9, v10, v11);
  v12 = sub_242128BB0();
  MEMORY[0x28223BE20](v12 - 8, v13, v14);
  *(v2 + 24) = dispatch_group_create();
  sub_242116F84();
  sub_242128BA0();
  v16[3] = MEMORY[0x277D84F90];
  sub_242116FD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CA8, &unk_24212ABE0);
  sub_242117028();
  sub_242128DD0();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v3);
  *(v2 + 16) = sub_242128D80();
  return v2;
}

unint64_t sub_242116F84()
{
  result = qword_27EC80C98;
  if (!qword_27EC80C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC80C98);
  }

  return result;
}

unint64_t sub_242116FD0()
{
  result = qword_27EC80CA0;
  if (!qword_27EC80CA0)
  {
    sub_242128D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80CA0);
  }

  return result;
}

unint64_t sub_242117028()
{
  result = qword_27EC80CB0;
  if (!qword_27EC80CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80CA8, &unk_24212ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80CB0);
  }

  return result;
}

uint64_t sub_24211708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2421170B4, 0, 0);
}

uint64_t sub_2421170B4()
{
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_24211715C;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return OS_dispatch_group.bf_notify<A>(queue:execute:)(v5, v1, v6, v3, v4);
}

uint64_t sub_24211715C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AsyncMutex.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t dispatch thunk of AsyncMutex.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 104) + **(*v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24211744C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_24211744C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t OS_dispatch_group.bf_notify<A>(queue:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_242117568, 0, 0);
}

uint64_t sub_242117568()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_242117668;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000019, 0x800000024212B050, sub_242117B94, v2, v5);
}

uint64_t sub_242117668()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2421177A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2421177A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242117808(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a5;
  v39 = a3;
  v33 = a2;
  v8 = sub_242128B90();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_242128BB0();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13, v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v18 = sub_242128CD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21, v22);
  v24 = &v33 - v23;
  (*(v19 + 16))(&v33 - v23, a1, v18);
  v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  v28 = v33;
  *(v27 + 24) = v33;
  (*(v19 + 32))(v27 + v25, v24, v18);
  v29 = (v27 + v26);
  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  aBlock[4] = sub_242117DE4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2421124E4;
  aBlock[3] = &block_descriptor_1;
  v31 = _Block_copy(aBlock);
  v28;

  sub_242128BA0();
  v40 = MEMORY[0x277D84F90];
  sub_242115F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
  sub_242115FDC();
  sub_242128DD0();
  sub_242128D40();
  _Block_release(v31);
  (*(v38 + 8))(v12, v8);
  (*(v36 + 8))(v17, v37);
}

uint64_t sub_242117BA4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v9 = sub_242128CD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  MEMORY[0x28223BE20](v16 - 8, v17, v18);
  v20 = &v27 - v19;
  dispatch_group_enter(a1);
  v21 = sub_242128CF0();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v10 + 16))(v15, a2, v9);
  v22 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a5;
  *(v23 + 5) = a1;
  (*(v10 + 32))(&v23[v22], v15, v9);
  v24 = &v23[(v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v24 = v28;
  v24[1] = a4;
  v25 = a1;

  sub_24211825C(0, 0, v20, &unk_24212AC40, v23);
}

uint64_t sub_242117DE4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = *(sub_242128CD0() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_242117BA4(v4, v0 + v3, v6, v7, v1);
}

uint64_t sub_242117EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a5;
  v8[5] = a8;
  v8[3] = a4;
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_242117FD8;

  return v13(v10);
}

uint64_t sub_242117FD8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2421181A0;
  }

  else
  {
    v2 = sub_2421180EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2421180EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  sub_242128CC0();
  dispatch_group_leave(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2421181A0()
{
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  sub_242128CB0();
  dispatch_group_leave(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24211825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = v27 - v12;
  sub_2421186A4(a3, v27 - v12);
  v14 = sub_242128CF0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_242118714(v13);
  }

  else
  {
    sub_242128CE0();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_242128CA0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_242128BE0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_242118714(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_242118714(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242118534(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v6 = *(sub_242128CD0() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24211744C;

  return sub_242117EAC(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

uint64_t sub_2421186A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242118714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24211877C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_242118874;

  return v6(a1);
}

uint64_t sub_242118874()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24211896C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242118ADC;

  return sub_24211877C(a1, v4);
}

uint64_t sub_242118A24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24211744C;

  return sub_24211877C(a1, v4);
}

id StringByTrimming(void *a1)
{
  v1 = qword_281346958;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_281346958, &__block_literal_global);
  }

  v3 = [v2 stringByTrimmingCharactersInSet:qword_281346960];

  return v3;
}

void __StringByTrimming_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:0x285461648];
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = qword_281346960;
  qword_281346960 = v0;
}

BOOL isNan(void *a1)
{
  v1 = qword_2813469F0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_2813469F0, &__block_literal_global_825);
  }

  v3 = [v2 rangeOfCharacterFromSet:qword_2813469F8];

  return v3 != 0x7FFFFFFFFFFFFFFFLL;
}

void __isNan_block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  v0 = [v2 invertedSet];
  v1 = qword_2813469F8;
  qword_2813469F8 = v0;
}