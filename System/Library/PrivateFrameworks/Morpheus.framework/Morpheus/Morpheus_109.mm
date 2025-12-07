uint64_t sub_25A87B1D4()
{
}

uint64_t sub_25A87B204()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_25A87B2A8()
{
  result = qword_27FA04658;
  if (!qword_27FA04658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04658);
  }

  return result;
}

unint64_t sub_25A87B310()
{
  result = qword_27FA04660;
  if (!qword_27FA04660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04660);
  }

  return result;
}

unint64_t sub_25A87B368()
{
  result = qword_27FA04668;
  if (!qword_27FA04668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04668);
  }

  return result;
}

unint64_t sub_25A87B3C0()
{
  result = qword_27FA04670;
  if (!qword_27FA04670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04670);
  }

  return result;
}

uint64_t sub_25A87B414(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F746172656E6567;
  }

  else
  {
    v3 = 7629925;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v5 = 0x6F746172656E6567;
  }

  else
  {
    v5 = 7629925;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007372;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A87B4B8()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87B538(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A87B5A4(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87B620@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A87B680(uint64_t *a1@<X8>)
{
  v2 = 7629925;
  if (*v1)
  {
    v2 = 0x6F746172656E6567;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007372;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A87B6BC()
{
  if (*v0)
  {
    return 0x6F746172656E6567;
  }

  else
  {
    return 7629925;
  }
}

uint64_t sub_25A87B6F4@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A87B758(uint64_t a1)
{
  v2 = sub_25A87BF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A87B794(uint64_t a1)
{
  v2 = sub_25A87BF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A87B81C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04678, &unk_25A9FBDF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A87BF54();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ListComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A909810(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A946B5C(v8, 1);
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A87BA20@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v9 = v4[6];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 48);
  swift_unknownObjectRetain();

  v11(v12, &off_286C11D08, ObjectType, v9);
  swift_unknownObjectRelease();
  v13 = v4[7];
  v14 = *(v13 + 16);
  if (v14)
  {
    v24 = a1;
    v25 = v4;

    v15 = (v13 + 40);
    do
    {
      v16 = *v15;
      v17 = swift_getObjectType();
      v18 = *(v16 + 48);

      swift_unknownObjectRetain();
      v18(v6, &off_286C11D08, v17, v16);
      swift_unknownObjectRelease();
      v15 += 2;
      --v14;
    }

    while (v14);

    v4 = v25;
    v19 = *(v25[7] + 16);
    v27 = MEMORY[0x277D84F90];
    if (v19)
    {
      v26 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v20 = 32;
      do
      {
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v20 += 16;
        --v19;
      }

      while (v19);
      v4 = v25;
      v21 = v26;
      a1 = v24;
      goto LABEL_11;
    }

    a1 = v24;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  swift_retain_n();

  v21 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A9351B0(0, v21, v6, &off_286C11D08, &v27, v4);
  if (v3)
  {
  }

  else
  {

    v23 = v27;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);

    *a1 = v23;
    *(a1 + 32) = 0;
  }

  return result;
}

_OWORD *sub_25A87BD6C(char **a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v6(v11, ObjectType, v4);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v12);
    sub_25A872CE0(v11);
    v8 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25A967488(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25A967488((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    result = sub_25A872D74(v12, &v8[32 * v10 + 32]);
    *a1 = v8;
  }

  return result;
}

uint64_t sub_25A87BE98()
{
  swift_unknownObjectRelease();
}

uint64_t sub_25A87BEC8()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A87BF54()
{
  result = qword_27FA04680;
  if (!qword_27FA04680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04680);
  }

  return result;
}

unint64_t sub_25A87BFBC()
{
  result = qword_27FA04688;
  if (!qword_27FA04688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04688);
  }

  return result;
}

unint64_t sub_25A87C014()
{
  result = qword_27FA04690;
  if (!qword_27FA04690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04690);
  }

  return result;
}

unint64_t sub_25A87C06C()
{
  result = qword_27FA04698;
  if (!qword_27FA04698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04698);
  }

  return result;
}

uint64_t sub_25A87C0C0()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v22 = type metadata accessor for Function();
  v2 = swift_allocObject();
  v2[4] = v0;
  v2[5] = v0;
  v2[6] = v0;

  v2[7] = v0;

  v2[8] = v0;

  v2[9] = 0;
  v2[10] = 0;

  v2[11] = 0;
  v2[12] = 0;

  v2[13] = sub_25A92BDB4(v0);
  v2[2] = 0x7463656A626FLL;
  v2[3] = 0xE600000000000000;
  v3 = *(v2 + 5);
  v27[2] = *(v2 + 4);
  v27[3] = v3;
  v28 = v2[12];
  v4 = *(v2 + 3);
  v27[0] = *(v2 + 2);
  v27[1] = v4;
  v2[4] = v0;
  v2[5] = v0;
  v2[6] = v0;
  v2[7] = v0;
  v2[8] = v0;
  *(v2 + 9) = 0u;
  *(v2 + 11) = 0u;
  sub_25A892B80(v27);
  swift_beginAccess();
  v2[13] = v1;

  v2[14] = sub_25A890624;
  v2[15] = 0;
  v5 = sub_25A98E67C(v0);
  type metadata accessor for PyBuiltInClass();
  v6 = swift_allocObject();
  v6[10] = v2;

  v7 = sub_25A967378(0, 1, 1, v0);
  v26 = v7;
  sub_25A96B0BC(0, 0, 1, 0x7463656A626FLL, 0xE600000000000000);
  v6[2] = 0x7463656A626FLL;
  v6[3] = 0xE600000000000000;
  v6[4] = 0x7463656A626FLL;
  v6[5] = 0xE600000000000000;
  v6[6] = v0;
  v6[7] = v7;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6[8] = sub_25A936284();
  v6[9] = &off_286C11D08;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  result = swift_beginAccess();
  v12 = 0;
  for (i = (v8 + 63) >> 6; v10; result = __swift_destroy_boxed_opaque_existential_0Tm(v25))
  {
    v14 = v12;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v5 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v5 + 56) + 8 * v16);
    v21 = v6[9];
    ObjectType = swift_getObjectType();
    v25[0] = v20;
    v25[3] = v22;
    v23 = *(v21 + 64);
    swift_retain_n();

    swift_unknownObjectRetain();
    v23(v18, v19, v25, ObjectType, v21);

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= i)
    {

      qword_27FA046A0 = v6;
      return result;
    }

    v10 = *(v5 + 64 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A87C420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25A9F8D80;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x800000025AA68A20;
  *(v0 + 48) = 0x7463656A626FLL;
  *(v0 + 56) = 0xE600000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v24 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v3[2] = 0xD000000000000010;
  v3[3] = 0x800000025AA68A20;
  v4 = *(v3 + 5);
  v31[2] = *(v3 + 4);
  v31[3] = v4;
  v32 = v3[12];
  v5 = *(v3 + 3);
  v31[0] = *(v3 + 2);
  v31[1] = v5;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  sub_25A892B80(v31);
  swift_beginAccess();
  v3[13] = v2;

  v3[14] = sub_25A890138;
  v3[15] = 0;
  v6 = sub_25A98E67C(v1);
  type metadata accessor for PyBuiltInClass();
  v7 = swift_allocObject();
  v7[10] = v3;

  v8 = sub_25A967378(1, 3, 1, v0);
  v30 = v8;
  sub_25A96B0BC(0, 0, 1, 0xD000000000000010, 0x800000025AA68A20);
  v7[2] = 0xD000000000000010;
  v7[3] = 0x800000025AA68A20;
  v7[4] = 0xD000000000000010;
  v7[5] = 0x800000025AA68A20;
  v7[6] = v1;
  v7[7] = v8;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v7[8] = sub_25A936284();
  v25 = v7;
  v26 = v6;
  v7[9] = &off_286C11D08;
  v9 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  result = swift_beginAccess();
  v14 = 0;
  for (i = (v10 + 63) >> 6; v12; result = __swift_destroy_boxed_opaque_existential_0Tm(v29))
  {
    v16 = v14;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = (*(v26 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v26 + 56) + 8 * v18);
    v23 = *(v25 + 72);
    ObjectType = swift_getObjectType();
    v29[0] = v22;
    v29[3] = v24;
    v27 = *(v23 + 64);
    swift_retain_n();

    swift_unknownObjectRetain();
    v27(v20, v21, v29, ObjectType, v23);

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= i)
    {

      qword_27FA046A8 = v25;
      return result;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A87C7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 1701869940;
  v4[3] = 0xE400000000000000;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = &unk_286C0B168;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A8905F8;
  v4[15] = 0;
  v7 = sub_25A96CF30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v8);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 1701869940, 0xE400000000000000);
  v9[2] = 1701869940;
  v9[3] = 0xE400000000000000;
  v9[4] = 1701869940;
  v9[5] = 0xE400000000000000;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v7;
  v9[9] = &off_286C11D08;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA046B0 = v27;
  return result;
}

uint64_t sub_25A87CBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x7463656A626FLL, 0xE600000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v15 + 1))
      {
        sub_25A87817C(&v14, v17);
        v6 = v18;
        v7 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v7 + 8))(&v14, v6, v7);
        v8 = *(&v15 + 1);
        v9 = __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        a2[3] = v8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
        (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        return __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04750, "jN\a");
  sub_25A874F54();
  swift_allocError();
  *v12 = -121;
  return swift_willThrow();
}

uint64_t sub_25A87CE00()
{
  v0 = 0x800000025AA68A00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v1 = swift_allocObject();
  v21 = xmmword_25A9F8D90;
  *(v1 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = qword_27FA046A0;
  *(v1 + 56) = type metadata accessor for PyBuiltInClass();
  *(v1 + 64) = sub_25A892BD4();
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v3 = swift_allocObject();
  *(v3 + 16) = v21;
  *(v3 + 32) = 0x7463656A626FLL;
  *(v3 + 40) = 0xE600000000000000;

  v4 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v5 = swift_allocObject();
  v5[10] = 0;
  v6 = sub_25A967378(1, 2, 1, v3);
  v23 = v6;
  sub_25A96B0BC(0, 0, 1, 0xD00000000000001ALL, v0);
  v5[2] = 0xD00000000000001ALL;
  v5[3] = v0;
  v5[4] = 0xD00000000000001ALL;
  v5[5] = v0;
  v5[6] = v1;
  v5[7] = v6;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v5[8] = sub_25A936284();
  v19 = v5;
  v5[9] = &off_286C11D08;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v4 + 48) + 16 * v14);
      v16 = *v15;
      v0 = v15[1];
      v1 = *(*(v4 + 56) + 8 * v14);
      v17 = *(v19 + 72);
      *&v21 = swift_getObjectType();
      v22[3] = type metadata accessor for Function();
      v22[0] = v1;
      v20 = *(v17 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v20(v16, v0, v22, v21, v17);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v4 + 64 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  qword_27FA046C0 = v19;
  return result;
}

uint64_t sub_25A87D140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v23 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = sub_25A983D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v3 = swift_allocObject();
  *(v3 + 16) = v23;
  *(v3 + 32) = 0x7463656A626FLL;
  *(v3 + 40) = 0xE600000000000000;
  v4 = swift_allocObject();
  *(v4 + 80) = 0;
  v5 = sub_25A967378(1, 2, 1, v3);
  v25 = v5;
  sub_25A96B0BC(0, 0, 1, 0x646E2E79706D756ELL, 0xED00007961727261);
  strcpy((v4 + 16), "numpy.ndarray");
  *(v4 + 30) = -4864;
  strcpy((v4 + 32), "numpy.ndarray");
  *(v4 + 46) = -4864;
  *(v4 + 48) = v0;
  *(v4 + 56) = v5;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  *(v4 + 64) = sub_25A936284();
  v20 = v4;
  v21 = v2;
  *(v4 + 72) = &off_286C11D08;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v21 + 48) + 16 * v14);
      v16 = *v15;
      v0 = v15[1];
      v17 = *(*(v21 + 56) + 8 * v14);
      v18 = *(v20 + 72);
      *&v23 = swift_getObjectType();
      v24[3] = type metadata accessor for Function();
      v24[0] = v17;
      v22 = *(v18 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v22(v16, v0, v24, v23, v18);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  qword_27FA046C8 = v20;
  return result;
}

uint64_t sub_25A87D498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v6 = swift_allocObject();
  v29 = xmmword_25A9F8D90;
  *(v6 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = qword_27FA046A0;
  *(v6 + 56) = type metadata accessor for PyBuiltInClass();
  *(v6 + 64) = sub_25A892BD4();
  *(v6 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v29;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;

  v9 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v10 = swift_allocObject();
  v10[10] = 0;
  v11 = sub_25A967378(1, 2, 1, v8);
  v31 = v11;
  sub_25A96B0BC(0, 0, 1, a2, a3);
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = v6;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v26 = v10;
  v27 = v9;
  v10[9] = &off_286C11D08;
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v27 + 48) + 16 * v20);
      v22 = *v21;
      a3 = v21[1];
      a2 = *(*(v27 + 56) + 8 * v20);
      v6 = v26[8];
      v23 = v26[9];
      *&v29 = swift_getObjectType();
      v30[3] = type metadata accessor for Function();
      v30[0] = a2;
      v28 = *(v23 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v28(v22, a3, v30, v29, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  *a4 = v26;
  return result;
}

uint64_t sub_25A87D808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  strcpy((v4 + 16), "staticmethod");
  *(v4 + 29) = 0;
  *(v4 + 30) = -5120;
  v5 = *(v4 + 80);
  v33[2] = *(v4 + 64);
  v33[3] = v5;
  v34 = *(v4 + 96);
  v6 = *(v4 + 48);
  v33[0] = *(v4 + 32);
  v33[1] = v6;
  *(v4 + 32) = &unk_286C0AFA8;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A8901C4;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v7 = swift_allocObject();
  *(v7 + 16) = v30;
  *(v7 + 32) = 0x7463656A626FLL;
  *(v7 + 40) = 0xE600000000000000;
  v8 = sub_25A98E67C(v2);
  v9 = swift_allocObject();
  *(v9 + 80) = v4;

  v10 = sub_25A967378(1, 2, 1, v7);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 0x656D636974617473, 0xEC000000646F6874);
  strcpy((v9 + 16), "staticmethod");
  *(v9 + 29) = 0;
  *(v9 + 30) = -5120;
  strcpy((v9 + 32), "staticmethod");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  *(v9 + 48) = v0;
  *(v9 + 56) = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  *(v9 + 64) = sub_25A936284();
  v27 = v9;
  v28 = v8;
  *(v9 + 72) = &off_286C11D08;
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA046E0 = v27;
  return result;
}

uint64_t sub_25A87DC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x74656D7373616C63;
  v4[3] = 0xEB00000000646F68;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = &unk_286C0AF78;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A890198;
  v4[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v7 = swift_allocObject();
  *(v7 + 16) = v30;
  *(v7 + 32) = 0x7463656A626FLL;
  *(v7 + 40) = 0xE600000000000000;
  v8 = sub_25A98E67C(v2);
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v7);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 0x74656D7373616C63, 0xEB00000000646F68);
  v9[2] = 0x74656D7373616C63;
  v9[3] = 0xEB00000000646F68;
  v9[4] = 0x74656D7373616C63;
  v9[5] = 0xEB00000000646F68;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v8;
  v9[9] = &off_286C11D08;
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA046E8 = v27;
  return result;
}

uint64_t sub_25A87E064@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x6E6F6974636E7566, 0xE800000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v12), type metadata accessor for Function(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v12[5];
    v9 = a2(0);
    result = swift_allocObject();
    *(result + 16) = v8;
    a3[3] = v9;
    *a3 = result;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = -120;
    return swift_willThrow();
  }

  return result;
}

void *sub_25A87E190()
{
  result = sub_25A87E1B0();
  qword_27FA046F0 = result;
  return result;
}

void *sub_25A87E1B0()
{
  v0 = 0xED00006E6F697470;
  v1 = 0x6563784565736142;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  strcpy((v4 + 16), "BaseException");
  *(v4 + 30) = -4864;
  v5 = *(v4 + 80);
  v34[2] = *(v4 + 64);
  v34[3] = v5;
  v35 = *(v4 + 96);
  v6 = *(v4 + 48);
  v34[0] = *(v4 + 32);
  v34[1] = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = xmmword_25A9F8DA0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  sub_25A892B80(v34);
  swift_beginAccess();
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A890380;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v7 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  *(v7 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v8 = qword_27FA046A0;
  *(v7 + 56) = type metadata accessor for PyBuiltInClass();
  *(v7 + 64) = sub_25A892BD4();
  *(v7 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;

  v10 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v11 = swift_allocObject();
  v11[10] = v4;
  v26 = v4;

  v12 = sub_25A967378(1, 2, 1, v9);
  v33 = v12;
  sub_25A96B0BC(0, 0, 1, v1, v0);
  v11[2] = v1;
  v11[3] = v0;
  v11[4] = v1;
  v11[5] = v0;
  v11[6] = v7;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v28 = v10;
  v29 = v11;
  v11[9] = &off_286C11D08;
  v13 = v10 + 64;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v4 = v15 & *(v10 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v14 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v28 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v1 = *(*(v28 + 56) + 8 * v20);
      v7 = v29[8];
      v23 = v29[9];
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v1;
      v30 = *(v23 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v0, v32, v31, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v4 = *(v13 + 8 * v18);
    ++v16;
    if (v4)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  *(v26 + 112) = sub_25A89543C;
  *(v26 + 120) = v29;

  return v29;
}

void *sub_25A87E62C()
{
  result = sub_25A87E64C();
  qword_27FA046F8 = result;
  return result;
}

void *sub_25A87E64C()
{
  v0 = 0xE90000000000006ELL;
  v1 = 0x6F69747065637845;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  *(v4 + 16) = 0x6F69747065637845;
  *(v4 + 24) = 0xE90000000000006ELL;
  v5 = *(v4 + 80);
  v33[2] = *(v4 + 64);
  v33[3] = v5;
  v34 = *(v4 + 96);
  v6 = *(v4 + 48);
  v33[0] = *(v4 + 32);
  v33[1] = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = xmmword_25A9F8DA0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  sub_25A892B80(v33);
  swift_beginAccess();
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A890318;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25A9F8D90;
  if (qword_27FA04320 != -1)
  {
LABEL_14:
    swift_once();
  }

  v8 = qword_27FA046F0;
  *(v7 + 56) = type metadata accessor for PyBuiltInClass();
  *(v7 + 64) = sub_25A892BD4();
  *(v7 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D80;
  strcpy((v9 + 32), "BaseException");
  *(v9 + 46) = -4864;
  *(v9 + 48) = 0x7463656A626FLL;
  *(v9 + 56) = 0xE600000000000000;

  v10 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v11 = swift_allocObject();
  v11[10] = v4;
  v25 = v4;

  v12 = sub_25A967378(1, 3, 1, v9);
  v32 = v12;
  sub_25A96B0BC(0, 0, 1, v1, 0xE90000000000006ELL);
  v11[2] = v1;
  v11[3] = v0;
  v11[4] = v1;
  v11[5] = v0;
  v11[6] = v7;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v27 = v10;
  v28 = v11;
  v11[9] = &off_286C11D08;
  v13 = v10 + 64;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v4 = v15 & *(v10 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v14 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v27 + 48) + 16 * v20);
      v22 = *v21;
      v1 = v21[1];
      v7 = *(*(v27 + 56) + 8 * v20);
      v23 = v28[9];
      ObjectType = swift_getObjectType();
      v31[0] = v7;
      v31[3] = v26;
      v0 = v23 + 64;
      v29 = *(v23 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v22, v1, v31, ObjectType, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v4 = *(v13 + 8 * v18);
    ++v16;
    if (v4)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  *(v25 + 112) = sub_25A895420;
  *(v25 + 120) = v28;

  return v28;
}

void *sub_25A87EAC4@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v5 = sub_25A8F3600(1936159329, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25A8952F0(*(a1 + 56) + 32 * v5, &v15, &qword_27FA04458, &unk_25A9F7FB0);
  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_25A878194(v17, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_8:
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    v7 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      v8 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      v9 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v18);
      v10 = type metadata accessor for PyException();
      v11 = swift_allocObject();
      v11[8] = v9;

      result = sub_25A990E38(v12, v11);
      a3[3] = v10;
      *a3 = result;
      return result;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

LABEL_9:
  sub_25A878194(&v18, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v14 = 0x80;
  return swift_willThrow();
}

void *sub_25A87ECB0()
{
  result = sub_25A87ED98(0x72724565756C6156, 0xEA0000000000726FLL, sub_25A8902B0, sub_25A89543C);
  qword_27FA04700 = result;
  return result;
}

void *sub_25A87ED34()
{
  result = sub_25A87ED98(0x45656D69746E7552, 0xEC000000726F7272, sub_25A890248, sub_25A89543C);
  qword_27FA04708 = result;
  return result;
}

void *sub_25A87ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v31 = type metadata accessor for Function();
  v9 = swift_allocObject();
  *(v9 + 32) = v7;
  *(v9 + 40) = v7;
  *(v9 + 48) = v7;

  *(v9 + 56) = v7;

  *(v9 + 64) = v7;

  *(v9 + 72) = 0;
  *(v9 + 80) = 0;

  *(v9 + 88) = 0;
  *(v9 + 96) = 0;

  *(v9 + 104) = sub_25A92BDB4(v7);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v9 + 80);
  v38[2] = *(v9 + 64);
  v38[3] = v10;
  v39 = *(v9 + 96);
  v11 = *(v9 + 48);
  v38[0] = *(v9 + 32);
  v38[1] = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v7;
  *(v9 + 48) = v7;
  *(v9 + 56) = v7;
  *(v9 + 64) = v7;
  *(v9 + 72) = xmmword_25A9F8DA0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  sub_25A892B80(v38);
  swift_beginAccess();
  *(v9 + 104) = v8;

  *(v9 + 112) = a3;
  *(v9 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25A9F8D90;
  if (qword_27FA04328 != -1)
  {
LABEL_14:
    swift_once();
  }

  v13 = qword_27FA046F8;
  *(v12 + 56) = type metadata accessor for PyBuiltInClass();
  *(v12 + 64) = sub_25A892BD4();
  *(v12 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25A9F8DB0;
  *(v14 + 32) = 0x6F69747065637845;
  *(v14 + 40) = 0xE90000000000006ELL;
  strcpy((v14 + 48), "BaseException");
  *(v14 + 62) = -4864;
  *(v14 + 64) = 0x7463656A626FLL;
  *(v14 + 72) = 0xE600000000000000;

  v15 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v16 = swift_allocObject();
  v16[10] = v9;
  v29 = v9;

  v17 = sub_25A967378(1, 4, 1, v14);
  v37 = v17;
  sub_25A96B0BC(0, 0, 1, a1, a2);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v12;
  v16[7] = v17;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v16[8] = sub_25A936284();
  v32 = v15;
  v33 = v16;
  v16[9] = &off_286C11D08;
  v18 = v15 + 64;
  v9 = 1 << *(v15 + 32);
  v19 = -1;
  if (v9 < 64)
  {
    v19 = ~(-1 << v9);
  }

  v20 = v19 & *(v15 + 64);
  swift_beginAccess();
  v21 = 0;
  v22 = (v9 + 63) >> 6;
  if (v20)
  {
    while (1)
    {
      v23 = v21;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = v24 | (v23 << 6);
      v26 = (*(v32 + 48) + 16 * v25);
      v27 = *v26;
      a2 = v26[1];
      a1 = *(*(v32 + 56) + 8 * v25);
      v12 = v33[8];
      v9 = v33[9];
      ObjectType = swift_getObjectType();
      v36[0] = a1;
      v36[3] = v31;
      v34 = *(v9 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v34(v27, a2, v36, ObjectType, v9);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      if (!v20)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v23 >= v22)
    {
      break;
    }

    v20 = *(v18 + 8 * v23);
    ++v21;
    if (v20)
    {
      v21 = v23;
      goto LABEL_10;
    }
  }

  *(v29 + 112) = a4;
  *(v29 + 120) = v33;

  return v33;
}

uint64_t sub_25A87F228(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25A87F298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x74616F6C66;
  v4[3] = 0xE500000000000000;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = &unk_286C0B0A8;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A890548;
  v4[15] = 0;
  v7 = sub_25A96C01C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v8);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 0x74616F6C66, 0xE500000000000000);
  v9[2] = 0x74616F6C66;
  v9[3] = 0xE500000000000000;
  v9[4] = 0x74616F6C66;
  v9[5] = 0xE500000000000000;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v7;
  v9[9] = &off_286C11D08;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FC58 = v27;
  return result;
}

void sub_25A87F6A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v4 = sub_25A8F3600(120, 0xE100000000000000);
  if (v5)
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, v16);
    sub_25A873A9C();
    if (swift_dynamicCast())
    {
      [v14 floatValue];
      v7 = v6;
      *(a2 + 24) = MEMORY[0x277D83A90];

      *a2 = v7;
      return;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v8 = sub_25A8F3600(120, 0xE100000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v14 == 6712937 && v15 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = 2139095040;
LABEL_12:
    *a2 = v10;
    return;
  }

  if (v14 == 7233902 && v15 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = 2143289344;
    goto LABEL_12;
  }

  if (v14 == 1718511917 && v15 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = -8388608;
    goto LABEL_12;
  }

  v16[0] = 0;
  v11 = sub_25A892A64(v14, v15, v16);

  if (v11)
  {
    v12 = v16[0];
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v12;
  }

  else
  {
LABEL_23:
    sub_25A874F54();
    swift_allocError();
    *v13 = 68;
    swift_willThrow();
  }
}

uint64_t sub_25A87F944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = v31;
  v2[2] = 0u;
  v2[3] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 7500915;
  v5[3] = 0xE300000000000000;
  v6 = *(v5 + 5);
  v34[2] = *(v5 + 4);
  v34[3] = v6;
  v35 = v5[12];
  v7 = *(v5 + 3);
  v34[0] = *(v5 + 2);
  v34[1] = v7;
  v5[4] = &unk_286C0B138;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v5[13] = v4;

  v5[14] = sub_25A8905CC;
  v5[15] = 0;
  v8 = sub_25A957E00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v5;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33 = v11;
  sub_25A96B0BC(0, 0, 1, 7500915, 0xE300000000000000);
  v10[2] = 7500915;
  v10[3] = 0xE300000000000000;
  v10[4] = 7500915;
  v10[5] = 0xE300000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v28 = v10;
  v29 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v29 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v29 + 56) + 8 * v20);
      v24 = *(v28 + 72);
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v23;
      v30 = *(v24 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v0, v32, v31, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC60 = v28;
  return result;
}

uint64_t sub_25A87FD84(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(6972015, 0xE300000000000000), (v3 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v30 = 0u;
    v29 = 0u;
    goto LABEL_11;
  }

  if (!*(&v30 + 1))
  {
LABEL_11:
    sub_25A878194(&v29, &qword_27FA04750, "jN\a");
LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v8 = -103;
    return swift_willThrow();
  }

  sub_25A87817C(&v29, v32);
  v4 = v33;
  v5 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v5 + 8))(v21, v4, v5);
  v6 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v7 + 8) + 8))(v24, 0x5F5F7274735F5FLL, 0xE700000000000000, v6);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    if (*(&v27 + 1))
    {
      goto LABEL_19;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_25A878194(v24, &qword_27FA04458, &unk_25A9F7FB0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_25A878194(&v26, &qword_27FA04760, &unk_25A9F9BB0);
  v10 = v33;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v11 + 8))(v21, v10, v11);
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v13 + 8) + 8))(v24, 0x5F5F727065725F5FLL, 0xE800000000000000, v12);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_25A878194(v24, &qword_27FA04458, &unk_25A9F7FB0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
LABEL_21:
    sub_25A878194(&v26, &qword_27FA04760, &unk_25A9F9BB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (!*(&v27 + 1))
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_25A87817C(&v26, &v29);
  v14 = *(&v30 + 1);
  v15 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25A9F8D90;
  v17 = v33;
  v18 = __swift_project_boxed_opaque_existential_1(v32, v33);
  *(v16 + 56) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 32));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
  v20 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v15 + 16))(v16, v20, v14, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t sub_25A8801FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 1819242338;
  v4[3] = 0xE400000000000000;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = &unk_286C0B108;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A8905A0;
  v4[15] = 0;
  v7 = sub_25A950C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v8);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 1819242338, 0xE400000000000000);
  v9[2] = 1819242338;
  v9[3] = 0xE400000000000000;
  v9[4] = 1819242338;
  v9[5] = 0xE400000000000000;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v7;
  v9[9] = &off_286C11D08;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FC68 = v27;
  return result;
}

uint64_t sub_25A880608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(120, 0xE100000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  v13[3] = v6;
  v13[4] = &protocol witness table for A?;
  v7 = swift_allocObject();
  v13[0] = v7;
  v8 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v8;
  __swift_project_boxed_opaque_existential_1(v13, v6);
  v9 = sub_25A890008();
  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = v9 & 1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_25A8806EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = xmmword_25A9F8D80;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 0x7365747962;
  v5[3] = 0xE500000000000000;
  v6 = *(v5 + 5);
  v34[2] = *(v5 + 4);
  v34[3] = v6;
  v35 = v5[12];
  v7 = *(v5 + 3);
  v34[0] = *(v5 + 2);
  v34[1] = v7;
  v5[4] = &unk_286C0AFD8;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v5[13] = v4;

  v5[14] = sub_25A8903E8;
  v5[15] = 0;
  v8 = sub_25A98E67C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v5;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33 = v11;
  sub_25A96B0BC(0, 0, 1, 0x7365747962, 0xE500000000000000);
  v10[2] = 0x7365747962;
  v10[3] = 0xE500000000000000;
  v10[4] = 0x7365747962;
  v10[5] = 0xE500000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v28 = v10;
  v29 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v29 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v29 + 56) + 8 * v20);
      v24 = *(v28 + 72);
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v23;
      v30 = *(v24 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v0, v32, v31, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC70 = v28;
  return result;
}

uint64_t sub_25A880B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25A997E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v10 = sub_25A8F3600(0x656372756F73, 0xE600000000000000), (v11 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v10, v63);
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    memset(v63, 0, 32);
    if (!*(a1 + 16))
    {
LABEL_13:
      v15 = 0;
      v16 = 0;
      goto LABEL_14;
    }
  }

  v12 = sub_25A8F3600(0x676E69646F636E65, 0xE800000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v12, v59);
  v14 = swift_dynamicCast();
  if (v14)
  {
    v15 = v58[0];
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v58[1];
  }

  else
  {
    v16 = 0;
  }

LABEL_14:
  sub_25A8952F0(v63, v59, &qword_27FA04458, &unk_25A9F7FB0);
  v61 = v15;
  v62 = v16;
  if (!v60)
  {
    *(a2 + 24) = MEMORY[0x277CC9318];
    *a2 = xmmword_25A9F8DC0;
    sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_19;
  }

  v52 = a2;
  sub_25A8952F0(v59, v58, &qword_27FA04458, &unk_25A9F7FB0);
  v17 = MEMORY[0x277CC9318];
  if (swift_dynamicCast())
  {
    v18 = v52;
    *(v52 + 24) = v17;
    *v18 = v54[0];
LABEL_17:
    sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
LABEL_19:

    v19 = &qword_27FA04458;
    v20 = &unk_25A9F7FB0;
    return sub_25A878194(v59, v19, v20);
  }

  if (swift_dynamicCast())
  {
    if (!v16)
    {

      sub_25A874F54();
      swift_allocError();
      *v34 = 117;
      swift_willThrow();
      sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      v19 = &qword_27FA04458;
      v20 = &unk_25A9F7FB0;
      return sub_25A878194(v59, v19, v20);
    }

    v64 = *(&v54[0] + 1);
    v51 = *&v54[0];
    if (sub_25A997EC8() == 0x382D667475 && v22 == 0xE500000000000000)
    {

LABEL_38:
      v36 = sub_25A919B54(v51, v64);
      v37 = v52;
      *(v52 + 24) = v17;
      *v37 = v36;
      v37[1] = v38;
      goto LABEL_17;
    }

    v35 = sub_25A9989E8();

    if (v35)
    {
      goto LABEL_38;
    }

    if (sub_25A997EC8() == 0x6969637361 && v39 == 0xE500000000000000)
    {
    }

    else
    {
      v44 = sub_25A9989E8();

      if ((v44 & 1) == 0)
      {

        goto LABEL_49;
      }
    }

    sub_25A997E88();
    v45 = sub_25A997E38();
    v47 = v46;

    (*(v7 + 8))(v9, v6);
    if (v47 >> 60 != 15)
    {
      v48 = v52;
      *(v52 + 24) = v17;
      *v48 = v45;
      v48[1] = v47;
      goto LABEL_17;
    }

LABEL_49:
    sub_25A874F54();
    swift_allocError();
    *v49 = 117;
    swift_willThrow();
    sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);

    v19 = &qword_27FA04458;
    v20 = &unk_25A9F7FB0;
    return sub_25A878194(v59, v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    sub_25A874F54();
    swift_allocError();
    *v33 = 117;
    swift_willThrow();
    sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);
    v19 = &unk_27FA047B8;
    v20 = &unk_25A9F8E80;
    return sub_25A878194(v59, v19, v20);
  }

  v23 = v57;
  v24 = *(v57 + 16);
  if (!v24)
  {

    v26 = MEMORY[0x277D84F90];
LABEL_44:
    v40 = sub_25A91CEC0(v26);
    v42 = v41;

    v43 = v52;
    *(v52 + 24) = v17;
    *v43 = v40;
    v43[1] = v42;
    goto LABEL_17;
  }

  v56 = MEMORY[0x277D84F90];
  result = sub_25A937720(0, v24, 0);
  v25 = 0;
  v26 = v56;
  v27 = v23 + 32;
  v51 = v23;
  while (v25 < *(v23 + 16))
  {
    sub_25A87500C(v27, v54);
    sub_25A88126C(v54, v53, &v55);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      sub_25A878194(v63, &qword_27FA04458, &unk_25A9F7FB0);

      __swift_destroy_boxed_opaque_existential_0Tm(v58);

      v19 = &qword_27FA04458;
      v20 = &unk_25A9F7FB0;
      return sub_25A878194(v59, v19, v20);
    }

    v64 = 0;
    v28 = v17;
    v29 = v16;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v30 = v55;
    v56 = v26;
    v32 = *(v26 + 16);
    v31 = *(v26 + 24);
    if (v32 >= v31 >> 1)
    {
      result = sub_25A937720((v31 > 1), v32 + 1, 1);
      v26 = v56;
    }

    ++v25;
    *(v26 + 16) = v32 + 1;
    *(v26 + v32 + 32) = v30;
    v27 += 32;
    v16 = v29;
    v17 = v28;
    v23 = v51;
    v3 = v64;
    if (v24 == v25)
    {

      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A88126C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_25A87500C(a1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_25A878194(v48, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_28;
  }

  v47 = a3;
  sub_25A87817C(v48, v51);
  v5 = v52;
  v6 = v53;
  v7 = __swift_project_boxed_opaque_existential_1(v51, v52);
  v8 = *(v5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_16;
  }

  *&v48[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v12 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v12)
  {
    if (v11 <= 64)
    {
      v46 = *(v6[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v45 = v43;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v43[1] = v43 - v16;
      swift_getAssociatedConformanceWitness();
      v17 = sub_25A998A78();
      v44 = v43;
      MEMORY[0x28223BE20](v17);
      sub_25A9989C8();
      v18 = sub_25A997D88();
      result = (*(v8 + 8))(v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      if (v18)
      {
        goto LABEL_43;
      }

      goto LABEL_15;
    }

LABEL_10:
    v46 = v43;
    MEMORY[0x28223BE20](v11);
    sub_25A895280();
    sub_25A9984A8();
    v13 = sub_25A997D88();
    result = (*(v8 + 8))(v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    if (v13)
    {
      goto LABEL_43;
    }

    goto LABEL_16;
  }

  if (v11 < 64)
  {
LABEL_15:
    sub_25A9984B8();
  }

LABEL_16:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v48[0] = 0x7FFFFFFFFFFFFFFFLL;
    v19 = sub_25A9984D8();
    v20 = sub_25A9984C8();
    if ((v19 & 1) == 0)
    {
      break;
    }

    if (v20 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x28223BE20](v20);
    v9 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v21 = sub_25A997D88();
    (*(v8 + 8))(v9, v5);
    if (v21)
    {
      __break(1u);
LABEL_21:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v20 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_25A9984B8();
LABEL_26:
  v22 = sub_25A9984B8();
  (*(v8 + 8))(v10, v5);
  if (v22 <= 0xFF)
  {
    v25 = v52;
    v26 = v53;
    v27 = __swift_project_boxed_opaque_existential_1(v51, v52);
    v28 = *(v25 - 8);
    v29 = v28[8];
    MEMORY[0x28223BE20](v27);
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = v43 - v30;
    (v28[2])(v43 - v30);
    if (sub_25A9984D8() & 1) == 0 || (v45 = v28, v32 = swift_getAssociatedTypeWitness(), v44 = v43, MEMORY[0x28223BE20](v32), v46 = v26, swift_getAssociatedConformanceWitness(), v33 = sub_25A998A78(), MEMORY[0x28223BE20](v33), v28 = v45, v26 = v46, sub_25A9989C8(), v34 = sub_25A997D98(), result = (v28[1])(v43 - v30, v25), (v34))
    {
      if (sub_25A9984C8() >= 8)
      {
        v35 = v28;
        LOBYTE(v48[0]) = -1;
        v36 = sub_25A9984D8();
        v37 = sub_25A9984C8();
        if (v36)
        {
          if (v37 <= 8)
          {
            v38 = swift_getAssociatedTypeWitness();
            v46 = v26;
            v45 = v43;
            MEMORY[0x28223BE20](v38);
            swift_getAssociatedConformanceWitness();
            v39 = sub_25A998A78();
            MEMORY[0x28223BE20](v39);
            sub_25A9989C8();
            v40 = sub_25A997D78();
            v28 = v35;
            (v35[1])(v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
            if (v40)
            {
              sub_25A9984B8();
            }

            goto LABEL_40;
          }
        }

        else if (v37 < 9)
        {
LABEL_39:
          sub_25A9984B8();
          v28 = v35;
          goto LABEL_40;
        }

        MEMORY[0x28223BE20](v37);
        sub_25A89522C();
        sub_25A9984A8();
        v41 = sub_25A997D88();
        v28 = v35;
        (v35[1])(v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
        if (v41)
        {
          __break(1u);
          goto LABEL_39;
        }
      }

LABEL_40:
      v42 = sub_25A9984B8();
      (v28[1])(v31, v25);
      *v47 = v42;
      return __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v51);
LABEL_28:
  sub_25A874F54();
  v23 = swift_allocError();
  *v24 = 117;
  result = swift_willThrow();
  *a2 = v23;
  return result;
}

uint64_t sub_25A881CBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 7630441;
  v4[3] = 0xE300000000000000;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = &unk_286C0B0D8;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A890574;
  v4[15] = 0;
  v7 = sub_25A96BE34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v8);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 7630441, 0xE300000000000000);
  v9[2] = 7630441;
  v9[3] = 0xE300000000000000;
  v9[4] = 7630441;
  v9[5] = 0xE300000000000000;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v7;
  v9[9] = &off_286C11D08;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FC78 = v27;
  return result;
}

void sub_25A8820C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v5 = sub_25A8F3600(120, 0xE100000000000000);
  if (v6)
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, v65);
    sub_25A873A9C();
    if (swift_dynamicCast())
    {
      v7 = v62[0];
      v8 = [v62[0] integerValue];
      a2[3] = MEMORY[0x277D83B88];

      *a2 = v8;
      return;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v9 = sub_25A8F3600(120, 0xE100000000000000);
  if ((v10 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v9, v65), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v21 = sub_25A8F3600(120, 0xE100000000000000);
      if (v22)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v21, &v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
        if (swift_dynamicCast())
        {
          if (*(&v63 + 1))
          {
            sub_25A87817C(v62, v65);
            v23 = v66;
            v24 = v67;
            __swift_project_boxed_opaque_existential_1(v65, v66);
            (*(v24 + 8))(v55, v23, v24);
            v25 = v56;
            v26 = v57;
            __swift_project_boxed_opaque_existential_1(v55, v56);
            (*(*(v26 + 8) + 8))(v58, 0x5F5F746E695F5FLL, 0xE700000000000000, v25);
            if (v58[3])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
              if ((swift_dynamicCast() & 1) == 0)
              {
                v61 = 0;
                v59 = 0u;
                v60 = 0u;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(v55);
              if (*(&v60 + 1))
              {
                sub_25A87817C(&v59, v62);
                v27 = *(&v63 + 1);
                v28 = v64;
                __swift_project_boxed_opaque_existential_1(v62, *(&v63 + 1));
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
                v29 = swift_allocObject();
                *(v29 + 16) = xmmword_25A9F8D90;
                v30 = v66;
                v31 = __swift_project_boxed_opaque_existential_1(v65, v66);
                *(v29 + 56) = v30;
                boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 32));
                (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
                v33 = sub_25A92BDB4(MEMORY[0x277D84F90]);
                (*(v28 + 16))(&v59, v29, v33, v27, v28);

                if (v2)
                {
LABEL_38:
                  __swift_destroy_boxed_opaque_existential_0Tm(v62);
                  __swift_destroy_boxed_opaque_existential_0Tm(v65);
                  return;
                }

                sub_25A87500C(&v59, v55);
                sub_25A873A9C();
                if (swift_dynamicCast())
                {
                  v34 = v58[0];
                  v35 = [v58[0] integerValue];
                  a2[3] = MEMORY[0x277D83B88];

                  *a2 = v35;
                  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
                  goto LABEL_38;
                }

                __swift_destroy_boxed_opaque_existential_0Tm(&v59);
                __swift_destroy_boxed_opaque_existential_0Tm(v62);
LABEL_89:
                __swift_destroy_boxed_opaque_existential_0Tm(v65);
                goto LABEL_41;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v55);
              sub_25A878194(v58, &qword_27FA04458, &unk_25A9F7FB0);
              v59 = 0u;
              v60 = 0u;
              v61 = 0;
            }

            sub_25A878194(&v59, &qword_27FA04760, &unk_25A9F9BB0);
            goto LABEL_89;
          }
        }

        else
        {
          v64 = 0;
          v63 = 0u;
          *v62 = 0u;
        }

LABEL_40:
        sub_25A878194(v62, &qword_27FA04750, "jN\a");
        goto LABEL_41;
      }
    }

LABEL_39:
    *v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_40;
  }

  v11 = (v62[1] >> 56) & 0xF;
  v12 = v62[0] & 0xFFFFFFFFFFFFLL;
  if ((v62[1] & 0x2000000000000000) != 0)
  {
    v13 = (v62[1] >> 56) & 0xF;
  }

  else
  {
    v13 = v62[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_41;
  }

  if ((v62[1] & 0x1000000000000000) != 0)
  {
    v17 = sub_25A979124(v62[0], v62[1], 10);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_41;
  }

  if ((v62[1] & 0x2000000000000000) == 0)
  {
    if ((v62[0] & 0x1000000000000000) != 0)
    {
      v14 = ((v62[1] & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v14 = sub_25A998708();
    }

    v15 = *v14;
    if (v15 == 43)
    {
      if (v12 >= 1)
      {
        v40 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_85;
          }

          v41 = v14 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v40)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_84;
      }

      goto LABEL_97;
    }

    if (v15 == 45)
    {
      if (v12 >= 1)
      {
        v16 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_85;
          }

          v18 = v14 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_84;
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v12)
    {
      v17 = 0;
      if (!v14)
      {
        goto LABEL_85;
      }

      while (1)
      {
        v47 = *v14 - 48;
        if (v47 > 9)
        {
          break;
        }

        v48 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_83;
        }
      }
    }

    goto LABEL_84;
  }

  v65[0] = v62[0];
  v65[1] = v62[1] & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v62[0]) != 43)
  {
    if (LOBYTE(v62[0]) == 45)
    {
      if (!v11)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v14 = (v11 - 1);
      if (v11 != 1)
      {
        v17 = 0;
        v37 = v65 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v14)
          {
            goto LABEL_85;
          }
        }
      }
    }

    else if (v11)
    {
      v17 = 0;
      v49 = v65;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v11)
        {
LABEL_83:
          LOBYTE(v14) = 0;
          goto LABEL_85;
        }
      }
    }

LABEL_84:
    v17 = 0;
    LOBYTE(v14) = 1;
LABEL_85:
    LOBYTE(v62[0]) = v14;
    v52 = v14;

    if ((v52 & 1) == 0)
    {
LABEL_86:
      a2[3] = MEMORY[0x277D83B88];
      *a2 = v17;
      return;
    }

LABEL_41:
    sub_25A874F54();
    swift_allocError();
    *v36 = 69;
    swift_willThrow();
    return;
  }

  if (v11)
  {
    v14 = (v11 - 1);
    if (v11 != 1)
    {
      v17 = 0;
      v44 = v65 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v14)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_84;
  }

LABEL_98:
  __break(1u);
}

uint64_t sub_25A882868()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = v31;
  v2[2] = 0u;
  v2[3] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 7628147;
  v5[3] = 0xE300000000000000;
  v6 = *(v5 + 5);
  v34[2] = *(v5 + 4);
  v34[3] = v6;
  v35 = v5[12];
  v7 = *(v5 + 3);
  v34[0] = *(v5 + 2);
  v34[1] = v7;
  v5[4] = &unk_286C0B078;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v5[13] = v4;

  v5[14] = sub_25A89051C;
  v5[15] = 0;
  v8 = sub_25A907F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v5;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33 = v11;
  sub_25A96B0BC(0, 0, 1, 7628147, 0xE300000000000000);
  v10[2] = 7628147;
  v10[3] = 0xE300000000000000;
  v10[4] = 7628147;
  v10[5] = 0xE300000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v28 = v10;
  v29 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v29 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v29 + 56) + 8 * v20);
      v24 = *(v28 + 72);
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v23;
      v30 = *(v24 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v0, v32, v31, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC80 = v28;
  return result;
}

uint64_t sub_25A882CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  v5 = swift_allocObject();
  *&v55 = v5;
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v5 + 16);
  }

  else
  {
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  v8 = static MorpheusUtils.isNil(_:)(&v55);
  __swift_destroy_boxed_opaque_existential_0Tm(&v55);
  if (v8)
  {
    v9 = type metadata accessor for SharedMutableSet();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D84FA0];
    *(v10 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v10 + 16) = v11;
    a2[3] = v9;
    *a2 = v10;
    return result;
  }

  if (!*(a1 + 16) || (v13 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v14 & 1) == 0))
  {
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    goto LABEL_14;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v13, &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_14;
  }

  v15 = *(&v56 + 1);
  if (!*(&v56 + 1))
  {
LABEL_14:
    sub_25A878194(&v55, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_15;
  }

  v16 = v57;
  __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
  v17 = (*(v16 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v55);
  v18 = sub_25A92F880(v17);

  if (v18)
  {
    v19 = sub_25A98F044(v18);

    v20 = type metadata accessor for SharedMutableSet();
    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v21 + 16) = v19;
    a2[3] = v20;
    *a2 = v21;
    return result;
  }

LABEL_15:
  if (*(a1 + 16) && (v22 = sub_25A8F3600(120, 0xE100000000000000), (v23 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v22, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v53 + 1))
      {
        sub_25A87817C(&v52, &v55);
        v24 = *(&v56 + 1);
        v25 = v57;
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        (*(v25 + 8))(&v45, v24, v25);
        v26 = *(&v46 + 1);
        v27 = v47;
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        (*(*(v27 + 8) + 8))(v48, 0x5F5F726574695F5FLL, 0xE800000000000000, v26);
        if (v48[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v51 = 0;
            v49 = 0u;
            v50 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v45);
          if (*(&v50 + 1))
          {
            sub_25A87817C(&v49, &v52);
            v28 = *(&v53 + 1);
            v29 = v54;
            __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_25A9F8D90;
            v31 = *(&v56 + 1);
            v32 = __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
            *(v30 + 56) = v31;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
            (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v32, v31);
            v34 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v29 + 16))(v48, v30, v34, v28, v29);

            if (v2)
            {
LABEL_24:
              __swift_destroy_boxed_opaque_existential_0Tm(&v52);
              return __swift_destroy_boxed_opaque_existential_0Tm(&v55);
            }

            sub_25A87500C(v48, v44);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v45, &v49);
              v36 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
              MEMORY[0x28223BE20](v36);
              (*(v38 + 16))(&v44[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v39 = sub_25A9987B8();

              v40 = sub_25A92F880(v39);

              if (v40)
              {
                v41 = sub_25A98F044(v40);

                v42 = type metadata accessor for SharedMutableSet();
                v43 = swift_allocObject();
                *(v43 + 16) = MEMORY[0x277D84FA0];
                swift_beginAccess();
                *(v43 + 16) = v41;
                a2[3] = v42;
                *a2 = v43;
                __swift_destroy_boxed_opaque_existential_0Tm(v48);
                __swift_destroy_boxed_opaque_existential_0Tm(&v49);
                goto LABEL_24;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(v48);
              __swift_destroy_boxed_opaque_existential_0Tm(&v49);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v48);
              v47 = 0;
              v45 = 0u;
              v46 = 0u;
              sub_25A878194(&v45, &qword_27FA04780, &qword_25A9F8E50);
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v52);
            goto LABEL_32;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v45);
          sub_25A878194(v48, &qword_27FA04458, &unk_25A9F7FB0);
          v49 = 0u;
          v50 = 0u;
          v51 = 0;
        }

        sub_25A878194(&v49, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm(&v55);
        goto LABEL_27;
      }
    }

    else
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
  }

  sub_25A878194(&v52, &qword_27FA04750, "jN\a");
LABEL_27:
  sub_25A874F54();
  swift_allocError();
  *v35 = 67;
  return swift_willThrow();
}

uint64_t sub_25A883464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x656C707574;
  v4[3] = 0xE500000000000000;
  v5 = *(v4 + 5);
  v33[2] = *(v4 + 4);
  v33[3] = v5;
  v34 = v4[12];
  v6 = *(v4 + 3);
  v33[0] = *(v4 + 2);
  v33[1] = v6;
  v4[4] = v2;
  v4[5] = &unk_286C0B048;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v33);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A8904F0;
  v4[15] = 0;
  v7 = sub_25A94E408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = swift_allocObject();
  v9[10] = v4;

  v10 = sub_25A967378(1, 2, 1, v8);
  v32 = v10;
  sub_25A96B0BC(0, 0, 1, 0x656C707574, 0xE500000000000000);
  v9[2] = 0x656C707574;
  v9[3] = 0xE500000000000000;
  v9[4] = 0x656C707574;
  v9[5] = 0xE500000000000000;
  v9[6] = v0;
  v9[7] = v10;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v9[8] = sub_25A936284();
  v27 = v9;
  v28 = v7;
  v9[9] = &off_286C11D08;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FC88 = v27;
  return result;
}

uint64_t sub_25A883870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v46 + 1))
      {
        sub_25A87817C(&v45, v48);
        v7 = v49;
        v8 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        a2[3] = v10;
        *a2 = v11;
        return __swift_destroy_boxed_opaque_existential_0Tm(v48);
      }
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
  }

  sub_25A878194(&v45, &qword_27FA04728, &unk_25A9FD740);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(120, 0xE100000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v46 + 1))
      {
        sub_25A87817C(&v45, v48);
        v14 = v49;
        v15 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        (*(v15 + 8))(&v38, v14, v15);
        v16 = *(&v39 + 1);
        v17 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
        (*(*(v17 + 8) + 8))(v41, 0x5F5F726574695F5FLL, 0xE800000000000000, v16);
        if (v41[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v38);
          if (*(&v43 + 1))
          {
            sub_25A87817C(&v42, &v45);
            v18 = *(&v46 + 1);
            v19 = v47;
            __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_25A9F8D90;
            v21 = v49;
            v22 = __swift_project_boxed_opaque_existential_1(v48, v49);
            *(v20 + 56) = v21;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
            (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
            v24 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v19 + 16))(v41, v20, v24, v18, v19);

            if (v2)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0Tm(&v45);
              return __swift_destroy_boxed_opaque_existential_0Tm(v48);
            }

            sub_25A87500C(v41, v37);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v38, &v42);
              v25 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
              MEMORY[0x28223BE20](v25);
              (*(v27 + 16))(&v37[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v28 = sub_25A9987B8();

              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              a2[3] = v29;
              *a2 = v30;
              __swift_destroy_boxed_opaque_existential_0Tm(v41);
              __swift_destroy_boxed_opaque_existential_0Tm(&v42);
              goto LABEL_18;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v41);
            v40 = 0;
            v39 = 0u;
            v38 = 0u;
            sub_25A878194(&v38, &qword_27FA04780, &qword_25A9F8E50);
            __swift_destroy_boxed_opaque_existential_0Tm(&v45);
            goto LABEL_31;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v38);
          sub_25A878194(v41, &qword_27FA04458, &unk_25A9F7FB0);
          v42 = 0u;
          v43 = 0u;
          v44 = 0;
        }

        sub_25A878194(&v42, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        goto LABEL_22;
      }
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
  }

  sub_25A878194(&v45, &qword_27FA04750, "jN\a");
LABEL_22:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v32 = sub_25A997BD8();
  __swift_project_value_buffer(v32, qword_27FA0FCE8);
  v33 = sub_25A997BB8();
  v34 = sub_25A9983A8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_25A232000, v33, v34, "tuple> Invalid arg iterable", v35, 2u);
    MEMORY[0x25F852800](v35, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v36 = 47;
  return swift_willThrow();
}

uint64_t sub_25A883F64()
{
  v0 = 0x6563696C73;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v4 = 0xE500000000000000;
  v3[2] = 0x6563696C73;
  v3[3] = 0xE500000000000000;
  v5 = *(v3 + 5);
  v33[2] = *(v3 + 4);
  v33[3] = v5;
  v34 = v3[12];
  v6 = *(v3 + 3);
  v33[0] = *(v3 + 2);
  v33[1] = v6;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = xmmword_25A9F8DA0;
  v3[11] = 0;
  v3[12] = 0;
  sub_25A892B80(v33);
  swift_beginAccess();
  v3[13] = v2;

  v3[14] = sub_25A8904C4;
  v3[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  v30 = xmmword_25A9F8D90;
  *(inited + 16) = xmmword_25A9F8D90;
  *(inited + 32) = 0x5F5F727065725F5FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_25A8F2B4C();
  v8 = sub_25A98E67C(inited);
  swift_setDeallocating();
  sub_25A878194(inited + 32, &qword_27FA047A0, &qword_25A9F8E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v10 = qword_27FA046A0;
  *(v9 + 56) = type metadata accessor for PyBuiltInClass();
  *(v9 + 64) = sub_25A892BD4();
  *(v9 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v11 = swift_allocObject();
  *(v11 + 16) = v30;
  *(v11 + 32) = 0x7463656A626FLL;
  *(v11 + 40) = 0xE600000000000000;
  v12 = swift_allocObject();
  v12[10] = v3;

  v13 = sub_25A967378(1, 2, 1, v11);
  v32 = v13;
  sub_25A96B0BC(0, 0, 1, v0, 0xE500000000000000);
  v12[2] = v0;
  v12[3] = v4;
  v12[4] = v0;
  v12[5] = v4;
  v12[6] = v9;
  v12[7] = v13;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v12[8] = sub_25A936284();
  v27 = v12;
  v28 = v8;
  v12[9] = &off_286C11D08;
  v14 = v8 + 64;
  v15 = 1 << *(v8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v8 = v16 & *(v8 + 64);
  swift_beginAccess();
  v17 = 0;
  v3 = ((v15 + 63) >> 6);
  if (v8)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v28 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v9 = *(*(v28 + 56) + 8 * v20);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v9;
      v4 = v23 + 64;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v22, v0, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v3)
    {
      break;
    }

    v8 = *(v14 + 8 * v18);
    ++v17;
    if (v8)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC90 = v27;
  return result;
}

uint64_t sub_25A8843E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1936159329, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v44 + 1);
      if (*(&v44 + 1))
      {
        v7 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v43);
        v9 = *(v8 + 16);
        switch(v9)
        {
          case 1:
            sub_25A87500C(v8 + 32, v42);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v23 = swift_dynamicCast();
            if (v23)
            {
              v24 = *(&v44 + 1);
              v25 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v26 = (*(v25 + 8))(v24, v25);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v26 = 0;
            }

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = 0;
            *(a2 + 4) = 1;
            *(a2 + 8) = 0;
            break;
          case 2:
            sub_25A87500C(v8 + 32, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v19 = swift_dynamicCast();
            if (v19)
            {
              v20 = *(&v44 + 1);
              v21 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v22 = (*(v21 + 8))(v20, v21);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v22 = 0;
            }

            if (*(v8 + 16) < 2uLL)
            {
              __break(1u);
              goto LABEL_44;
            }

            v28 = v19 ^ 1;
            sub_25A87500C(v8 + 64, v42);

            v23 = swift_dynamicCast();
            if (v23)
            {
              v29 = *(&v44 + 1);
              v30 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v26 = (*(v30 + 8))(v29, v30);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v26 = 0;
            }

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = v22;
            *(a2 + 4) = v28;
            *(a2 + 8) = 0;
            break;
          case 3:
            sub_25A87500C(v8 + 32, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v47 = swift_dynamicCast();
            if (v47)
            {
              v10 = *(&v44 + 1);
              v11 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v12 = (*(v11 + 8))(v10, v11);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v12 = 0;
            }

            if (*(v8 + 16) >= 2uLL)
            {
              sub_25A87500C(v8 + 64, v42);
              v31 = swift_dynamicCast();
              v46 = v12;
              if (v31)
              {
                v33 = *(&v44 + 1);
                v32 = v45;
                __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
                v34 = (*(v32 + 8))(v33, v32);
                result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
              }

              else
              {
                v45 = 0;
                v43 = 0u;
                v44 = 0u;
                result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
                v34 = 0;
              }

              if (*(v8 + 16) >= 3uLL)
              {
                v35 = v47 ^ 1;
                v36 = v31 ^ 1;
                sub_25A87500C(v8 + 96, v42);

                v23 = swift_dynamicCast();
                if (v23)
                {
                  v37 = v34;
                  v38 = *(&v44 + 1);
                  v39 = v45;
                  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
                  v40 = v38;
                  v34 = v37;
                  v26 = (*(v39 + 8))(v40, v39);
                  result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
                }

                else
                {
                  v45 = 0;
                  v43 = 0u;
                  v44 = 0u;
                  result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
                  v26 = 0;
                }

                v41 = v46;
                *(a2 + 24) = &type metadata for SliceStruct;
                *a2 = v41;
                *(a2 + 4) = v35;
                *(a2 + 8) = v34;
                *(a2 + 12) = v36;
                goto LABEL_41;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          default:

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = 0;
            v27 = 1;
            *(a2 + 4) = 1;
            *(a2 + 8) = 0;
            *(a2 + 12) = 1;
            *(a2 + 16) = 0;
LABEL_42:
            *(a2 + 20) = v27;
            return result;
        }

        *(a2 + 12) = 1;
LABEL_41:
        *(a2 + 16) = v26;
        v27 = v23 ^ 1;
        goto LABEL_42;
      }
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
  }

  sub_25A878194(&v43, &qword_27FA04728, &unk_25A9FD740);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v15 = sub_25A997BB8();
  v16 = sub_25A9983A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25A232000, v15, v16, "slice> Invalid args", v17, 2u);
    MEMORY[0x25F852800](v17, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v18 = 46;
  return swift_willThrow();
}

uint64_t sub_25A884AD4()
{
  v0 = 1952672100;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v4 = 0xE400000000000000;
  v3[2] = 1952672100;
  v3[3] = 0xE400000000000000;
  v5 = *(v3 + 5);
  v33[2] = *(v3 + 4);
  v33[3] = v5;
  v34 = v3[12];
  v6 = *(v3 + 3);
  v33[0] = *(v3 + 2);
  v33[1] = v6;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = xmmword_25A9F8DA0;
  *(v3 + 11) = xmmword_25A9F8DD0;
  sub_25A892B80(v33);
  swift_beginAccess();
  v3[13] = v2;

  v3[14] = sub_25A890498;
  v3[15] = 0;
  v7 = sub_25A9852E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v8 = swift_allocObject();
  v30 = xmmword_25A9F8D90;
  *(v8 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v9 = qword_27FA046A0;
  *(v8 + 56) = type metadata accessor for PyBuiltInClass();
  *(v8 + 64) = sub_25A892BD4();
  *(v8 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v30;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;
  v11 = swift_allocObject();
  v11[10] = v3;

  v12 = sub_25A967378(1, 2, 1, v10);
  v32 = v12;
  sub_25A96B0BC(0, 0, 1, 1952672100, 0xE400000000000000);
  v11[2] = v0;
  v11[3] = v4;
  v11[4] = v0;
  v11[5] = v4;
  v11[6] = v8;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v27 = v11;
  v28 = v7;
  v11[9] = &off_286C11D08;
  v13 = v7 + 64;
  v14 = 1 << *(v7 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v7 = v15 & *(v7 + 64);
  swift_beginAccess();
  v16 = 0;
  v3 = ((v14 + 63) >> 6);
  if (v7)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v8 = v20[1];
      v22 = *(*(v28 + 56) + 8 * v19);
      v0 = *(v27 + 64);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v31[3] = v26;
      v31[0] = v22;
      v4 = v23 + 64;
      v29 = *(v23 + 64);
      *&v30 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v29(v21, v8, v31, v30, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v3)
    {
      break;
    }

    v7 = *(v13 + 8 * v17);
    ++v16;
    if (v7)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FC98 = v27;
  return result;
}

uint64_t sub_25A884EE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25A98E540(MEMORY[0x277D84F90]);
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v81 = 0u;
    v82 = 0u;
    *&v83[0] = 0;
    goto LABEL_8;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  v7 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v83[0] = 0;
    v81 = 0u;
    v82 = 0u;
LABEL_8:
    sub_25A878194(&v81, &qword_27FA04728, &unk_25A9FD740);
    if (!*(a1 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

  v8 = *(&v82 + 1);
  if (!*(&v82 + 1))
  {
    goto LABEL_8;
  }

  v69 = a2;
  v9 = *&v83[0];
  __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v81);
  v72 = *(v10 + 16);
  if (!v72)
  {
LABEL_34:

    a2 = v69;
    if (!*(a1 + 16))
    {
      goto LABEL_35;
    }

LABEL_9:
    v13 = sub_25A8F3600(1936159329, 0xE400000000000000);
    if (v14)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v13, &v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
      if (swift_dynamicCast())
      {
        v15 = *(&v82 + 1);
        if (*(&v82 + 1))
        {
          v16 = *&v83[0];
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v17 = (*(v16 + 8))(v15, v16);
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);

          v4 = v17;
          if (!*(a1 + 16))
          {
            goto LABEL_67;
          }

LABEL_37:
          v35 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000);
          if (v36)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v35, &v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
            if (swift_dynamicCast())
            {
              v37 = *(&v82 + 1);
              if (*(&v82 + 1))
              {
                v70 = a2;
                v38 = *&v83[0];
                __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
                v39 = (*(v38 + 8))(v37, v38);
                __swift_destroy_boxed_opaque_existential_0Tm(&v81);
                v40 = 0;
                v41 = 1 << *(v39 + 32);
                v42 = -1;
                if (v41 < 64)
                {
                  v42 = ~(-1 << v41);
                }

                v43 = v42 & *(v39 + 64);
                v44 = (v41 + 63) >> 6;
                if (!v43)
                {
                  goto LABEL_46;
                }

                while (1)
                {
                  v46 = v40;
LABEL_53:
                  v49 = __clz(__rbit64(v43));
                  v43 &= v43 - 1;
                  v50 = v49 | (v46 << 6);
                  sub_25A874FB0(*(v39 + 48) + 40 * v50, v74);
                  sub_25A87500C(*(v39 + 56) + 32 * v50, v73);
                  v76 = v74[0];
                  v77 = v74[1];
                  *&v78 = v75;
                  sub_25A872D74(v73, (&v78 + 8));
                  v48 = v46;
LABEL_54:
                  v83[0] = v78;
                  v83[1] = v79;
                  v84 = v80;
                  v81 = v76;
                  v82 = v77;
                  if (!*(&v77 + 1))
                  {

                    a2 = v70;
                    goto LABEL_69;
                  }

                  v76 = v81;
                  v77 = v82;
                  *&v78 = *&v83[0];
                  sub_25A872D74((v83 + 8), v74);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v73[0] = v4;
                  v52 = sub_25A8F35BC(&v76);
                  v54 = v4[2];
                  v55 = (v53 & 1) == 0;
                  v33 = __OFADD__(v54, v55);
                  v56 = v54 + v55;
                  if (v33)
                  {
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }

                  v57 = v53;
                  if (v4[3] >= v56)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_60;
                    }

                    v62 = v52;
                    sub_25A968DB8();
                    v52 = v62;
                    v4 = *&v73[0];
                    if ((v57 & 1) == 0)
                    {
                      goto LABEL_61;
                    }

LABEL_44:
                    v45 = (v4[7] + 32 * v52);
                    __swift_destroy_boxed_opaque_existential_0Tm(v45);
                    sub_25A872D74(v74, v45);
                    sub_25A8795A0(&v76);
                    v40 = v48;
                    if (!v43)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    sub_25A9679D0(v56, isUniquelyReferenced_nonNull_native);
                    v52 = sub_25A8F35BC(&v76);
                    if ((v57 & 1) != (v58 & 1))
                    {
                      goto LABEL_88;
                    }

LABEL_60:
                    v4 = *&v73[0];
                    if (v57)
                    {
                      goto LABEL_44;
                    }

LABEL_61:
                    v4[(v52 >> 6) + 8] |= 1 << v52;
                    v59 = v52;
                    sub_25A874FB0(&v76, v4[6] + 40 * v52);
                    sub_25A872D74(v74, (v4[7] + 32 * v59));
                    sub_25A8795A0(&v76);
                    v60 = v4[2];
                    v33 = __OFADD__(v60, 1);
                    v61 = v60 + 1;
                    if (v33)
                    {
                      goto LABEL_82;
                    }

                    v4[2] = v61;
                    v40 = v48;
                    if (!v43)
                    {
LABEL_46:
                      if (v44 <= v40 + 1)
                      {
                        v47 = v40 + 1;
                      }

                      else
                      {
                        v47 = v44;
                      }

                      v48 = v47 - 1;
                      while (1)
                      {
                        v46 = v40 + 1;
                        if (__OFADD__(v40, 1))
                        {
                          break;
                        }

                        if (v46 >= v44)
                        {
                          v43 = 0;
                          v80 = 0;
                          v78 = 0u;
                          v79 = 0u;
                          v76 = 0u;
                          v77 = 0u;
                          goto LABEL_54;
                        }

                        v43 = *(v39 + 64 + 8 * v46);
                        ++v40;
                        if (v43)
                        {
                          goto LABEL_53;
                        }
                      }

                      __break(1u);
                      goto LABEL_81;
                    }
                  }
                }
              }
            }

            else
            {
              *&v83[0] = 0;
              v81 = 0u;
              v82 = 0u;
            }

LABEL_68:
            sub_25A878194(&v81, &qword_27FA04730, "\\N\a");
LABEL_69:
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04738, "^N\a");
            a2[3] = result;
            *a2 = v4;
            return result;
          }

LABEL_67:
          v81 = 0u;
          v82 = 0u;
          *&v83[0] = 0;
          goto LABEL_68;
        }
      }

      else
      {
        *&v83[0] = 0;
        v81 = 0u;
        v82 = 0u;
      }

LABEL_36:
      sub_25A878194(&v81, &qword_27FA04730, "\\N\a");
      if (!*(a1 + 16))
      {
        goto LABEL_67;
      }

      goto LABEL_37;
    }

LABEL_35:
    v81 = 0u;
    v82 = 0u;
    *&v83[0] = 0;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = v10 + 32;
  v71 = v10;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_83;
    }

    sub_25A87500C(v12, &v76);
    if ((swift_dynamicCast() & 1) == 0)
    {

      *&v83[0] = 0;
      v81 = 0u;
      v82 = 0u;
      sub_25A878194(&v81, &qword_27FA04728, &unk_25A9FD740);
LABEL_74:

      goto LABEL_76;
    }

    v19 = *(&v82 + 1);
    v20 = *&v83[0];
    __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
    v21 = (*(v20 + 8))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(&v81);
    if (*(v21 + 16) != 2)
    {

      goto LABEL_74;
    }

    sub_25A87500C(v21 + 32, v74);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v81 = v76;
    v82 = v77;
    *&v83[0] = v78;
    sub_25A874FB0(&v81, &v76);
    if (*(v21 + 16) < 2uLL)
    {
      goto LABEL_84;
    }

    v22 = v7;
    sub_25A87500C(v21 + 64, v74);

    sub_25A872D74(v74, v73);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v4;
    v25 = sub_25A8F35BC(&v76);
    v26 = v4[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if (v23)
      {
        v4 = v85;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25A968DB8();
        v4 = v85;
        if (v29)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_25A9679D0(v28, v23);
      v30 = sub_25A8F35BC(&v76);
      if ((v29 & 1) != (v31 & 1))
      {
LABEL_88:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }

      v25 = v30;
      v4 = v85;
      if (v29)
      {
LABEL_14:
        v18 = (v4[7] + 32 * v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        sub_25A872D74(v73, v18);
        sub_25A8795A0(&v76);
        sub_25A8795A0(&v81);
        goto LABEL_15;
      }
    }

    v4[(v25 >> 6) + 8] |= 1 << v25;
    sub_25A874FB0(&v76, v4[6] + 40 * v25);
    sub_25A872D74(v73, (v4[7] + 32 * v25));
    sub_25A8795A0(&v76);
    sub_25A8795A0(&v81);
    v32 = v4[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_86;
    }

    v4[2] = v34;
LABEL_15:
    v7 = v22;
    ++v11;
    v12 += 32;
    v10 = v71;
    if (v72 == v11)
    {
      goto LABEL_34;
    }
  }

  *&v78 = 0;
  v76 = 0u;
  v77 = 0u;

  sub_25A878194(&v76, &qword_27FA04610, &qword_25A9FDA50);
LABEL_76:
  if (qword_27FA043C0 == -1)
  {
    goto LABEL_77;
  }

LABEL_87:
  swift_once();
LABEL_77:
  v64 = sub_25A997BD8();
  __swift_project_value_buffer(v64, qword_27FA0FCE8);
  v65 = sub_25A997BB8();
  v66 = sub_25A9983A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_25A232000, v65, v66, "dict> Unsupported *args element", v67, 2u);
    MEMORY[0x25F852800](v67, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v68 = -115;
  return swift_willThrow();
}

uint64_t sub_25A885898()
{
  v0 = 1953720684;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v1 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  v1[1] = xmmword_25A9F8D90;
  v1[2] = 0u;
  v1[3] = 0u;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v5 = 0xE400000000000000;
  v4[2] = 1953720684;
  v4[3] = 0xE400000000000000;
  v6 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v6;
  v35 = v4[12];
  v7 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v7;
  v4[4] = v2;
  v4[5] = &unk_286C0B018;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v1;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v4[13] = v3;

  v4[14] = sub_25A89046C;
  v4[15] = 0;
  v8 = sub_25A97ECB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v10 = qword_27FA046A0;
  *(v9 + 56) = type metadata accessor for PyBuiltInClass();
  *(v9 + 64) = sub_25A892BD4();
  *(v9 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v11 = swift_allocObject();
  *(v11 + 16) = v31;
  *(v11 + 32) = 0x7463656A626FLL;
  *(v11 + 40) = 0xE600000000000000;
  v12 = swift_allocObject();
  v12[10] = v4;

  v13 = sub_25A967378(1, 2, 1, v11);
  v33 = v13;
  sub_25A96B0BC(0, 0, 1, 1953720684, 0xE400000000000000);
  v12[2] = v0;
  v12[3] = v5;
  v12[4] = v0;
  v12[5] = v5;
  v12[6] = v9;
  v12[7] = v13;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v12[8] = sub_25A936284();
  v28 = v12;
  v29 = v8;
  v12[9] = &off_286C11D08;
  v14 = v8 + 64;
  v15 = 1 << *(v8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v8 = v16 & *(v8 + 64);
  swift_beginAccess();
  v17 = 0;
  v4 = ((v15 + 63) >> 6);
  if (v8)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v29 + 48) + 16 * v20);
      v22 = *v21;
      v9 = v21[1];
      v23 = *(*(v29 + 56) + 8 * v20);
      v0 = *(v28 + 64);
      v24 = *(v28 + 72);
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v23;
      v5 = v24 + 64;
      v30 = *(v24 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v9, v32, v31, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v4)
    {
      break;
    }

    v8 = *(v14 + 8 * v18);
    ++v17;
    if (v8)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FCA0 = v28;
  return result;
}

uint64_t sub_25A885CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v43 + 1))
      {
        sub_25A87817C(&v42, v45);
        v7 = v46;
        v8 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        a2[3] = v10;
        *a2 = v11;
        return __swift_destroy_boxed_opaque_existential_0Tm(v45);
      }
    }

    else
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  sub_25A878194(&v42, &qword_27FA04728, &unk_25A9FD740);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v43 + 1))
      {
        sub_25A87817C(&v42, v45);
        v14 = v46;
        v15 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v15 + 8))(&v35, v14, v15);
        v16 = *(&v36 + 1);
        v17 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(*(v17 + 8) + 8))(v38, 0x5F5F726574695F5FLL, 0xE800000000000000, v16);
        if (v38[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v41 = 0;
            v39 = 0u;
            v40 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v35);
          if (*(&v40 + 1))
          {
            sub_25A87817C(&v39, &v42);
            v18 = *(&v43 + 1);
            v19 = v44;
            __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_25A9F8D90;
            v21 = v46;
            v22 = __swift_project_boxed_opaque_existential_1(v45, v46);
            *(v20 + 56) = v21;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
            (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
            v24 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v19 + 16))(v38, v20, v24, v18, v19);

            if (v2)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0Tm(&v42);
              return __swift_destroy_boxed_opaque_existential_0Tm(v45);
            }

            sub_25A87500C(v38, v34);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v35, &v39);
              v25 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
              MEMORY[0x28223BE20](v25);
              (*(v27 + 16))(&v34[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v28 = sub_25A9987B8();

              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              a2[3] = v29;
              *a2 = v30;
              __swift_destroy_boxed_opaque_existential_0Tm(v38);
              __swift_destroy_boxed_opaque_existential_0Tm(&v39);
              goto LABEL_18;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v38);
            v37 = 0;
            v36 = 0u;
            v35 = 0u;
            sub_25A878194(&v35, &qword_27FA04780, &qword_25A9F8E50);
            __swift_destroy_boxed_opaque_existential_0Tm(&v42);
            goto LABEL_27;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v35);
          sub_25A878194(v38, &qword_27FA04458, &unk_25A9F7FB0);
          v39 = 0u;
          v40 = 0u;
          v41 = 0;
        }

        sub_25A878194(&v39, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_27:
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        goto LABEL_22;
      }
    }

    else
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  sub_25A878194(&v42, &qword_27FA04750, "jN\a");
LABEL_22:
  v32 = MEMORY[0x277D84F90];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  result = swift_allocObject();
  *(result + 16) = v32;
  a2[3] = v33;
  *a2 = result;
  return result;
}

void sub_25A886324(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x7365756C6176, 0xE600000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v29), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v6 = sub_25A997BD8();
    __swift_project_value_buffer(v6, qword_27FA0FCE8);

    v7 = sub_25A997BB8();
    v8 = sub_25A998398();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v9 = 136315138;
      v10 = *(v27 + 16);
      if (v10)
      {
        v25 = v7;
        v28 = MEMORY[0x277D84F90];
        sub_25A9375A0(0, v10, 0);
        v11 = v28;
        v12 = v27 + 32;
        do
        {
          sub_25A87500C(v12, v29);
          sub_25A9987C8();
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          v14 = *(v28 + 16);
          v13 = *(v28 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_25A9375A0((v13 > 1), v14 + 1, 1);
          }

          *(v28 + 16) = v14 + 1;
          v15 = v28 + 16 * v14;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0xE000000000000000;
          v12 += 32;
          --v10;
        }

        while (v10);

        v7 = v25;
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }

      v29[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
      sub_25A8953BC();
      v21 = sub_25A997D68();
      v23 = v22;

      v24 = sub_25A98CC90(v21, v23, &v30);

      *(v9 + 4) = v24;
      _os_log_impl(&dword_25A232000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F852800](v26, -1, -1);
      MEMORY[0x25F852800](v9, -1, -1);
    }

    else
    {
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v16 = sub_25A997BD8();
    __swift_project_value_buffer(v16, qword_27FA0FCE8);
    v17 = sub_25A997BB8();
    v18 = sub_25A9983A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25A232000, v17, v18, "print> Invalid arg values", v19, 2u);
      MEMORY[0x25F852800](v19, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v20 = 44;
    swift_willThrow();
  }
}

uint64_t sub_25A88674C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(6972015, 0xE300000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
    if (swift_dynamicCast())
    {
      if (*(&v62 + 1))
      {
        sub_25A87817C(&v61, v64);
        __swift_project_boxed_opaque_existential_1(v64, v65);
        v7 = sub_25A998288();
LABEL_12:
        a2[3] = MEMORY[0x277D83B88];
        *a2 = v7;
        return __swift_destroy_boxed_opaque_existential_0Tm(v64);
      }
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
    }
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  sub_25A878194(&v61, &qword_27FA04850, &unk_25A9FDC60);
  if (*(a1 + 16) && (v8 = sub_25A8F3600(6972015, 0xE300000000000000), (v9 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v8, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04860, &qword_25A9F8ED8);
    if (swift_dynamicCast())
    {
      if (*(&v62 + 1))
      {
        sub_25A87817C(&v61, v64);
        v10 = v65;
        v11 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        v7 = (*(v11 + 8))(v10, v11);
        goto LABEL_12;
      }
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
    }
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  sub_25A878194(&v61, &qword_27FA04858, &qword_25A9F8ED0);
  if (!*(a1 + 16) || (v13 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v14 & 1) == 0))
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    goto LABEL_32;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v13, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    goto LABEL_32;
  }

  if (!*(&v62 + 1))
  {
LABEL_32:
    sub_25A878194(&v61, &qword_27FA04750, "jN\a");
LABEL_33:
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v35 = sub_25A997BD8();
    __swift_project_value_buffer(v35, qword_27FA0FCE8);
    v36 = sub_25A997BB8();
    v37 = sub_25A9983A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25A232000, v36, v37, "len> Invalid arg obj", v38, 2u);
      MEMORY[0x25F852800](v38, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v39 = 45;
    return swift_willThrow();
  }

  sub_25A87817C(&v61, v64);
  v15 = v65;
  v16 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v16 + 8))(&v54, v15, v16);
  v17 = *(&v55 + 1);
  v18 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  (*(*(v18 + 8) + 8))(v57, 0x5F5F6E656C5F5FLL, 0xE700000000000000, v17);
  if (!v57[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    sub_25A878194(v57, &qword_27FA04458, &unk_25A9F7FB0);
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_42:
    sub_25A878194(&v58, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_43:
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  if (!*(&v59 + 1))
  {
    goto LABEL_42;
  }

  sub_25A87817C(&v58, &v61);
  v19 = *(&v62 + 1);
  v20 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25A9F8D90;
  v22 = v65;
  v23 = __swift_project_boxed_opaque_existential_1(v64, v65);
  *(v21 + 56) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
  v25 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v20 + 16))(v57, v21, v25, v19, v20);

  if (v2)
  {
    goto LABEL_64;
  }

  sub_25A87500C(v57, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    v56 = 0;
    v55 = 0u;
    v54 = 0u;
    sub_25A878194(&v54, &qword_27FA047C8, &qword_25A9F8E88);
    __swift_destroy_boxed_opaque_existential_0Tm(&v61);
    goto LABEL_43;
  }

  sub_25A87817C(&v54, &v58);
  v26 = *(&v59 + 1);
  v27 = v60;
  v28 = __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
  v29 = v51;
  v30 = *(v26 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v32);
  a2[3] = MEMORY[0x277D83B88];
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v54 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v33 = sub_25A9984C8();
      if (v33 >= 64)
      {
        v52 = v51;
        MEMORY[0x28223BE20](v33);
        v67 = v51;
        sub_25A895280();
        sub_25A9984A8();
        v34 = sub_25A997D88();
        v29 = v67;
        result = (*(v30 + 8))(v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        if (v34)
        {
          goto LABEL_65;
        }

        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v67 = v51;
    v40 = sub_25A9984D8();
    v41 = sub_25A9984C8();
    if (v40)
    {
      if (v41 <= 64)
      {
        v52 = *(*(v27 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v51[2] = v51;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v51[0] = v51 - v44;
        swift_getAssociatedConformanceWitness();
        v45 = sub_25A998A78();
        v51[1] = v51;
        MEMORY[0x28223BE20](v45);
        sub_25A9989C8();
        v46 = sub_25A997D88();
        result = (*(v30 + 8))(v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        if (v46)
        {
LABEL_65:
          __break(1u);
          return result;
        }

        sub_25A9984B8();
        v29 = v67;
      }

      else
      {
        v52 = v51;
        MEMORY[0x28223BE20](v41);
        sub_25A895280();
        sub_25A9984A8();
        v42 = sub_25A997D88();
        result = (*(v30 + 8))(v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        v29 = v67;
        if (v42)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_53;
    }

    v29 = v67;
    if (v41 < 64)
    {
LABEL_50:
      sub_25A9984B8();
    }
  }

LABEL_53:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v67 = v29;
    *&v54 = 0x7FFFFFFFFFFFFFFFLL;
    v47 = sub_25A9984D8();
    v48 = sub_25A9984C8();
    if ((v47 & 1) == 0)
    {
      break;
    }

    if (v48 < 65)
    {
      goto LABEL_62;
    }

LABEL_56:
    MEMORY[0x28223BE20](v48);
    v31 = v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v49 = sub_25A997D88();
    (*(v30 + 8))(v31, v26);
    v29 = v67;
    if (v49)
    {
      __break(1u);
LABEL_58:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

  if (v48 >= 64)
  {
    goto LABEL_56;
  }

LABEL_62:
  sub_25A9984B8();
LABEL_63:
  v50 = sub_25A9984B8();
  (*(v30 + 8))(v32, v26);
  *a2 = v50;
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
LABEL_64:
  __swift_destroy_boxed_opaque_existential_0Tm(&v61);
  return __swift_destroy_boxed_opaque_existential_0Tm(v64);
}

uint64_t sub_25A88737C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) == 0))
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_11;
  }

  v7 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
LABEL_11:
    sub_25A878194(&v25, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v15 = 75;
    return swift_willThrow();
  }

  v8 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  if (*(a1 + 16))
  {
    v10 = sub_25A8F3600(7955819, 0xE300000000000000);
    if (v11)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v10, &v25);
      sub_25A872D74(&v25, v24);
      sub_25A87500C(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if (swift_dynamicCast())
      {
        v12 = sub_25A87817C(v21, &v25);
        MEMORY[0x28223BE20](v12);
        v20[2] = &v25;
        *&v21[0] = v9;

        sub_25A890AD0(sub_25A895398, v20);

        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        v13 = *&v21[0];
        if (v2)
        {

          return __swift_destroy_boxed_opaque_existential_0Tm(&v25);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v25);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_25A878194(v21, &qword_27FA04760, &unk_25A9F9BB0);
    }
  }

  *&v25 = v9;
  sub_25A890A64(&v25);
  v13 = v25;
  if (v2)
  {
  }

LABEL_17:
  if (*(a1 + 16) && (v16 = sub_25A8F3600(0x65737265766572, 0xE700000000000000), (v17 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v16, &v25), (swift_dynamicCast() & 1) != 0) && (v21[0] & 1) != 0)
  {
    v18 = &unk_27FA04840;
    v19 = &unk_25A9F8EC0;
  }

  else
  {
    v18 = &qword_27FA04460;
    v19 = &qword_25A9FDA30;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  a2[3] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_25A8876E8(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D90;
  sub_25A87500C(a1, v9 + 32);
  v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v11 = v8;
  (*(v7 + 16))(v27, v9, v10, v6, v7);
  if (v3)
  {
  }

  else
  {

    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25A9F8D90;
    sub_25A87500C(v28, v14 + 32);
    v15 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    (*(v13 + 16))(v26, v14, v15, v12, v13);

    v11 = type metadata accessor for Comparison();
    sub_25A8E2098(v27, 4, v26, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v20, v23);
      v16 = v24;
      v17 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v11 = (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      sub_25A878194(v20, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v18 = 75;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }
  }

  return v11 & 1;
}

uint64_t sub_25A8879D4(char *a1, char *a2)
{
  v3 = v2;
  type metadata accessor for Comparison();
  sub_25A8E2098(a1, 4, a2, v12);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v10, v13);
      v6 = v14;
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v3 = (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_25A878194(v10, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      v3 = swift_allocError();
      *v8 = 75;
      swift_willThrow();
    }
  }

  return v3 & 1;
}

uint64_t sub_25A887B20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        v9 = sub_25A972198(v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        result = swift_allocObject();
        *(result + 16) = v9;
        a2[3] = v10;
        *a2 = result;
        return result;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v12 = 74;
  return swift_willThrow();
}

uint64_t sub_25A887CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) == 0))
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
LABEL_13:
    sub_25A878194(&v25, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v19 = 73;
    return swift_willThrow();
  }

  v7 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  v10 = *(v8 + 16);
  if (v10)
  {
    v28 = a2;
    v11 = v8 + 32;
    v12 = -v10;
    v13 = -1;
    while (1)
    {
      v14 = v12 + v13;
      if (v12 + v13 == -1)
      {
LABEL_11:

        v18 = v28;
        *(v28 + 24) = MEMORY[0x277D839B0];
        *v18 = v14 == -1;
        return result;
      }

      if (++v13 >= *(v8 + 16))
      {
        break;
      }

      sub_25A87500C(v11, v24);
      sub_25A87500C(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if (!swift_dynamicCast())
      {

        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_25A878194(v21, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v20 = 73;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      v11 += 32;
      sub_25A87817C(v21, &v25);
      v15 = *(&v26 + 1);
      v16 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v25);
      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 1;
  }

  return result;
}

uint64_t sub_25A887FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
LABEL_13:
    v15 = &qword_27FA04728;
    v16 = &unk_25A9FD740;
    v17 = &v22;
LABEL_14:
    sub_25A878194(v17, v15, v16);
    sub_25A874F54();
    swift_allocError();
    *v18 = 72;
    return swift_willThrow();
  }

  v6 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    goto LABEL_13;
  }

  v7 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    while (v11 < *(v8 + 16))
    {
      sub_25A87500C(v12, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));

        v15 = &qword_27FA047E8;
        v16 = &unk_25A9FBF80;
        v17 = v19;
        goto LABEL_14;
      }

      sub_25A87817C(v19, &v22);
      v13 = *(&v23 + 1);
      v14 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      if ((*(v14 + 8))(v13, v14))
      {

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = 1;
        return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      }

      ++v11;
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = 0;
  }

  return result;
}

uint64_t sub_25A888244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v12);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04838, &qword_25A9F8EB8);
        a2[3] = result;
        *a2 = v8;
        return result;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_25A878194(&v12, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v10 = 71;
  return swift_willThrow();
}

uint64_t sub_25A8883BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v154);
  if (!*(&v155 + 1))
  {
    sub_25A878194(&v154, &qword_27FA04458, &unk_25A9F7FB0);
    v157 = 0u;
    v158 = 0u;
    v159 = 0;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    goto LABEL_17;
  }

  if (!*(&v158 + 1))
  {
LABEL_17:
    sub_25A878194(&v157, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_18;
  }

  sub_25A87817C(&v157, v160);
  sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v151);
  if (!*(&v152 + 1))
  {
    sub_25A878194(&v151, &qword_27FA04458, &unk_25A9F7FB0);
    v154 = 0u;
    v155 = 0u;
    v156 = 0;
    goto LABEL_58;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    goto LABEL_58;
  }

  if (!*(&v155 + 1))
  {
LABEL_58:
    sub_25A878194(&v154, &qword_27FA047C8, &qword_25A9F8E88);
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0Tm(v160);
LABEL_18:
    sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v154);
    if (*(&v155 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
      if (swift_dynamicCast())
      {
        if (*(&v158 + 1))
        {
          sub_25A87817C(&v157, v160);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v151);
          if (*(&v152 + 1))
          {
            if (swift_dynamicCast())
            {
              if (*(&v155 + 1))
              {
                sub_25A87817C(&v154, &v157);
                v15 = v161;
                v14 = v162;
                v16 = __swift_project_boxed_opaque_existential_1(v160, v161);
                v17 = *(v15 - 8);
                v18 = v17[8];
                MEMORY[0x28223BE20](v16);
                v19 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                (v17[2])(v19);
                v20 = sub_25A9984D8();
                v149 = a2;
                if ((v20 & 1) != 0 && sub_25A9984C8() > 64)
                {
                  *&v154 = 0x8000000000000000;
                  if ((sub_25A9984D8() & 1) == 0)
                  {
                    goto LABEL_93;
                  }

                  v21 = sub_25A9984C8();
                  if (v21 < 64)
                  {
                    goto LABEL_119;
                  }

LABEL_95:
                  v163 = &v144;
                  MEMORY[0x28223BE20](v21);
                  sub_25A895280();
                  sub_25A9984A8();
                  v54 = sub_25A997D88();
                  result = (v17[1])(&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                  if (v54)
                  {
                    goto LABEL_236;
                  }
                }

LABEL_120:
                if (sub_25A9984C8() <= 64)
                {
                  goto LABEL_125;
                }

                while (1)
                {
                  *&v154 = 0x7FFFFFFFFFFFFFFFLL;
                  v69 = sub_25A9984D8();
                  v70 = sub_25A9984C8();
                  if (v69)
                  {
                    if (v70 < 65)
                    {
                      goto LABEL_129;
                    }
                  }

                  else if (v70 < 64)
                  {
LABEL_129:
                    sub_25A9984B8();
LABEL_130:
                    v72 = sub_25A9984B8();
                    (v17[1])(v19, v15);
                    v73 = *(&v158 + 1);
                    v74 = v159;
                    v75 = __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
                    v76 = &v144;
                    v77 = *(v73 - 8);
                    v78 = *(v77 + 64);
                    MEMORY[0x28223BE20](v75);
                    v79 = &v144 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v77 + 16))(v79);
                    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
                    {
                      *&v154 = 0x8000000000000000;
                      if (sub_25A9984D8())
                      {
                        v80 = sub_25A9984C8();
                        if (v80 >= 64)
                        {
                          v148 = &v144;
                          MEMORY[0x28223BE20](v80);
                          v163 = v72;
                          sub_25A895280();
                          sub_25A9984A8();
                          v81 = sub_25A997D88();
                          v76 = &v144;
                          v72 = v163;
                          result = (*(v77 + 8))(&v144 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
                          if (v81)
                          {
                            goto LABEL_237;
                          }

                          goto LABEL_144;
                        }

LABEL_141:
                        sub_25A9984B8();
                      }

                      else
                      {
                        v163 = &v144;
                        v82 = sub_25A9984D8();
                        v83 = sub_25A9984C8();
                        if (v82)
                        {
                          if (v83 <= 64)
                          {
                            v148 = *(*(v74 + 24) + 16);
                            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                            v147 = &v144;
                            MEMORY[0x28223BE20](AssociatedTypeWitness);
                            v145 = &v144 - v86;
                            swift_getAssociatedConformanceWitness();
                            v87 = sub_25A998A78();
                            v146 = &v144;
                            MEMORY[0x28223BE20](v87);
                            sub_25A9989C8();
                            v88 = sub_25A997D88();
                            result = (*(v77 + 8))(&v144 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
                            if (v88)
                            {
                              goto LABEL_237;
                            }

                            sub_25A9984B8();
                            v76 = v163;
                          }

                          else
                          {
                            v148 = &v144;
                            MEMORY[0x28223BE20](v83);
                            sub_25A895280();
                            sub_25A9984A8();
                            v84 = sub_25A997D88();
                            result = (*(v77 + 8))(&v144 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
                            v76 = v163;
                            if (v84)
                            {
                              goto LABEL_237;
                            }
                          }

                          goto LABEL_144;
                        }

                        v76 = v163;
                        if (v83 < 64)
                        {
                          goto LABEL_141;
                        }
                      }
                    }

LABEL_144:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_149;
                    }

                    while (1)
                    {
                      v163 = v72;
                      v89 = v76;
                      *&v154 = 0x7FFFFFFFFFFFFFFFLL;
                      v90 = sub_25A9984D8();
                      v91 = sub_25A9984C8();
                      if (v90)
                      {
                        if (v91 < 65)
                        {
                          goto LABEL_153;
                        }
                      }

                      else if (v91 < 64)
                      {
LABEL_153:
                        sub_25A9984B8();
                        v72 = v163;
LABEL_154:
                        v93 = sub_25A9984B8();
                        result = (*(v77 + 8))(v79, v73);
                        v94 = (v93 - v72);
                        if (v93 >= v72)
                        {
                          v95 = v149;
                          if (!__OFSUB__(v93, v72))
                          {
                            if (!v94)
                            {
                              goto LABEL_159;
                            }

                            v96 = sub_25A9373B8(v93 - v72, 0);
                            if (sub_25A959040(&v154, (v96 + 4), v93 - v72, v72, v93) != v94)
                            {
                              __break(1u);
LABEL_159:
                              v96 = MEMORY[0x277D84F90];
                            }

                            v95[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
                            *v95 = v96;
                            goto LABEL_161;
                          }

LABEL_232:
                          __break(1u);
LABEL_233:
                          __break(1u);
LABEL_234:
                          __break(1u);
LABEL_235:
                          __break(1u);
LABEL_236:
                          __break(1u);
LABEL_237:
                          __break(1u);
LABEL_238:
                          __break(1u);
                          goto LABEL_239;
                        }

LABEL_231:
                        __break(1u);
                        goto LABEL_232;
                      }

                      MEMORY[0x28223BE20](v91);
                      v78 = &v144 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v92 = sub_25A997D88();
                      (*(v77 + 8))(v78, v73);
                      v76 = v89;
                      v72 = v163;
                      if (v92)
                      {
                        __break(1u);
LABEL_149:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_154;
                    }
                  }

                  MEMORY[0x28223BE20](v70);
                  v18 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_25A895280();
                  sub_25A9984A8();
                  v71 = sub_25A997D88();
                  (v17[1])(v18, v15);
                  if (v71)
                  {
                    __break(1u);
LABEL_125:
                    if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_130;
                }
              }
            }

            else
            {
              v156 = 0;
              v154 = 0u;
              v155 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v151, &qword_27FA04458, &unk_25A9F7FB0);
            v154 = 0u;
            v155 = 0u;
            v156 = 0;
          }

          sub_25A878194(&v154, &qword_27FA047C8, &qword_25A9F8E88);
          __swift_destroy_boxed_opaque_existential_0Tm(v160);
LABEL_32:
          sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v154);
          if (*(&v155 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v158 + 1))
              {
                v163 = v2;
                sub_25A87817C(&v157, v160);
                v22 = v161;
                v15 = v162;
                v23 = __swift_project_boxed_opaque_existential_1(v160, v161);
                v17 = &v144;
                v24 = *(v22 - 8);
                v18 = *(v24 + 64);
                MEMORY[0x28223BE20](v23);
                v19 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v24 + 16))(v19);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_79;
                }

                *&v157 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v25 = sub_25A9984C8();
                  if (v25 >= 64)
                  {
                    v148 = &v144;
                    MEMORY[0x28223BE20](v25);
                    sub_25A895280();
                    sub_25A9984A8();
                    v26 = sub_25A997D88();
                    v17 = &v144;
                    result = (*(v24 + 8))(&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                    if (v26)
                    {
                      goto LABEL_233;
                    }

                    goto LABEL_79;
                  }
                }

                else
                {
                  v149 = a2;
                  v38 = sub_25A9984D8();
                  v39 = sub_25A9984C8();
                  if (v38)
                  {
                    if (v39 <= 64)
                    {
                      v146 = *(*(v15 + 24) + 16);
                      v44 = swift_getAssociatedTypeWitness();
                      v148 = &v144;
                      MEMORY[0x28223BE20](v44);
                      swift_getAssociatedConformanceWitness();
                      v45 = sub_25A998A78();
                      v147 = &v144;
                      MEMORY[0x28223BE20](v45);
                      sub_25A9989C8();
                      v46 = sub_25A997D88();
                      result = (*(v24 + 8))(&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                      if (v46)
                      {
                        goto LABEL_233;
                      }

                      sub_25A9984B8();
                      a2 = v149;
                    }

                    else
                    {
                      MEMORY[0x28223BE20](v39);
                      sub_25A895280();
                      sub_25A9984A8();
                      v40 = sub_25A997D88();
                      result = (*(v24 + 8))(&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
                      a2 = v149;
                      if (v40)
                      {
                        goto LABEL_233;
                      }
                    }

LABEL_79:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_84;
                    }

                    while (1)
                    {
                      v47 = v17;
                      v48 = a2;
                      *&v157 = 0x7FFFFFFFFFFFFFFFLL;
                      v49 = sub_25A9984D8();
                      v50 = sub_25A9984C8();
                      if (v49)
                      {
                        if (v50 < 65)
                        {
                          goto LABEL_88;
                        }
                      }

                      else if (v50 < 64)
                      {
LABEL_88:
                        sub_25A9984B8();
                        a2 = v48;
                        v17 = v47;
LABEL_89:
                        v52 = sub_25A9984B8();
                        result = (*(v24 + 8))(v19, v22);
                        if ((v52 & 0x8000000000000000) == 0)
                        {
                          if (v52)
                          {
                            v14 = sub_25A9373B8(v52, 0);
                            if (sub_25A959040(&v157, (v14 + 4), v52, 0, v52) != v52)
                            {
                              __break(1u);
LABEL_93:
                              v53 = sub_25A9984D8();
                              v21 = sub_25A9984C8();
                              if (v53)
                              {
                                if (v21 > 64)
                                {
                                  goto LABEL_95;
                                }

                                v163 = *(v14[3] + 16);
                                v65 = swift_getAssociatedTypeWitness();
                                v148 = &v144;
                                MEMORY[0x28223BE20](v65);
                                v146 = &v144 - v66;
                                swift_getAssociatedConformanceWitness();
                                v67 = sub_25A998A78();
                                v147 = &v144;
                                MEMORY[0x28223BE20](v67);
                                sub_25A9989C8();
                                v68 = sub_25A997D88();
                                result = (v17[1])(&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                                if (v68)
                                {
                                  goto LABEL_236;
                                }

LABEL_119:
                                sub_25A9984B8();
                              }

                              else if (v21 < 64)
                              {
                                goto LABEL_119;
                              }

                              goto LABEL_120;
                            }

LABEL_114:
                            a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
                            *a2 = v14;
                            return __swift_destroy_boxed_opaque_existential_0Tm(v160);
                          }

                          goto LABEL_113;
                        }

                        __break(1u);
                        goto LABEL_230;
                      }

                      MEMORY[0x28223BE20](v50);
                      v18 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v51 = sub_25A997D88();
                      (*(v24 + 8))(v18, v22);
                      a2 = v48;
                      v17 = v47;
                      if (v51)
                      {
                        __break(1u);
LABEL_84:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_89;
                    }
                  }

                  a2 = v149;
                  if (v39 >= 64)
                  {
                    goto LABEL_79;
                  }
                }

                sub_25A9984B8();
                goto LABEL_79;
              }
            }

            else
            {
              v159 = 0;
              v157 = 0u;
              v158 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v154, &qword_27FA04458, &unk_25A9F7FB0);
            v157 = 0u;
            v158 = 0u;
            v159 = 0;
          }

          sub_25A878194(&v157, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v154);
          if (*(&v155 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v158 + 1))
              {
                sub_25A87817C(&v157, v160);
                v28 = v161;
                v29 = v162;
                v30 = __swift_project_boxed_opaque_existential_1(v160, v161);
                v31 = &v144;
                v32 = *(v28 - 8);
                v33 = *(v32 + 64);
                MEMORY[0x28223BE20](v30);
                v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v32 + 16))(v34);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_99;
                }

                *&v157 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v35 = sub_25A9984C8();
                  if (v35 >= 64)
                  {
                    v148 = &v144;
                    MEMORY[0x28223BE20](v35);
                    v163 = v2;
                    sub_25A895280();
                    sub_25A9984A8();
                    v36 = sub_25A997D88();
                    v31 = &v144;
                    v3 = v163;
                    result = (*(v32 + 8))(&v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
                    if (v36)
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_99;
                  }
                }

                else
                {
                  v149 = a2;
                  v41 = sub_25A9984D8();
                  v42 = sub_25A9984C8();
                  if (v41)
                  {
                    if (v42 <= 64)
                    {
                      v163 = *(v29[3] + 16);
                      v55 = swift_getAssociatedTypeWitness();
                      v148 = &v144;
                      MEMORY[0x28223BE20](v55);
                      v146 = &v144 - v56;
                      swift_getAssociatedConformanceWitness();
                      v57 = sub_25A998A78();
                      v147 = &v144;
                      MEMORY[0x28223BE20](v57);
                      sub_25A9989C8();
                      v58 = sub_25A997D88();
                      result = (*(v32 + 8))(&v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
                      if (v58)
                      {
                        goto LABEL_234;
                      }

                      sub_25A9984B8();
                      a2 = v149;
                    }

                    else
                    {
                      v163 = &v144;
                      MEMORY[0x28223BE20](v42);
                      sub_25A895280();
                      sub_25A9984A8();
                      v43 = sub_25A997D88();
                      result = (*(v32 + 8))(&v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
                      a2 = v149;
                      if (v43)
                      {
                        goto LABEL_234;
                      }
                    }

LABEL_99:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_104;
                    }

                    while (1)
                    {
                      v163 = v3;
                      v59 = v31;
                      v60 = a2;
                      *&v157 = 0x7FFFFFFFFFFFFFFFLL;
                      v61 = sub_25A9984D8();
                      v62 = sub_25A9984C8();
                      if (v61)
                      {
                        if (v62 < 65)
                        {
                          goto LABEL_108;
                        }
                      }

                      else if (v62 < 64)
                      {
LABEL_108:
                        sub_25A9984B8();
                        a2 = v60;
LABEL_109:
                        v64 = sub_25A9984B8();
                        result = (*(v32 + 8))(v34, v28);
                        if ((v64 & 0x8000000000000000) == 0)
                        {
                          if (v64)
                          {
                            v14 = sub_25A9373B8(v64, 0);
                            if (sub_25A959040(&v157, (v14 + 4), v64, 0, v64) == v64)
                            {
                              goto LABEL_114;
                            }

                            __break(1u);
                          }

LABEL_113:
                          v14 = MEMORY[0x277D84F90];
                          goto LABEL_114;
                        }

LABEL_230:
                        __break(1u);
                        goto LABEL_231;
                      }

                      MEMORY[0x28223BE20](v62);
                      v33 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v63 = sub_25A997D88();
                      (*(v32 + 8))(v33, v28);
                      a2 = v60;
                      v31 = v59;
                      v3 = v163;
                      if (v63)
                      {
                        __break(1u);
LABEL_104:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_109;
                    }
                  }

                  a2 = v149;
                  if (v42 >= 64)
                  {
                    goto LABEL_99;
                  }
                }

                sub_25A9984B8();
                goto LABEL_99;
              }
            }

            else
            {
              v159 = 0;
              v157 = 0u;
              v158 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v154, &qword_27FA04458, &unk_25A9F7FB0);
            v157 = 0u;
            v158 = 0u;
            v159 = 0;
          }

          sub_25A878194(&v157, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A874F54();
          swift_allocError();
          *v37 = 61;
          return swift_willThrow();
        }
      }

      else
      {
        v159 = 0;
        v157 = 0u;
        v158 = 0u;
      }
    }

    else
    {
      sub_25A878194(&v154, &qword_27FA04458, &unk_25A9F7FB0);
      v157 = 0u;
      v158 = 0u;
      v159 = 0;
    }

    sub_25A878194(&v157, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_32;
  }

  sub_25A87817C(&v154, &v157);
  sub_25A8E734C(1885697139, 0xE400000000000000, a1, v150);
  if (!*(&v150[1] + 1))
  {
    sub_25A878194(v150, &qword_27FA04458, &unk_25A9F7FB0);
    v151 = 0u;
    v152 = 0u;
    v153 = 0;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v153 = 0;
    v152 = 0u;
    v151 = 0u;
    goto LABEL_72;
  }

  if (!*(&v152 + 1))
  {
LABEL_72:
    sub_25A878194(&v151, &qword_27FA047C8, &qword_25A9F8E88);
    __swift_destroy_boxed_opaque_existential_0Tm(&v157);
    goto LABEL_59;
  }

  sub_25A87817C(&v151, &v154);
  v7 = v161;
  v6 = v162;
  v8 = __swift_project_boxed_opaque_existential_1(v160, v161);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = sub_25A9984D8();
  v149 = a2;
  if ((v12 & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v151 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v13 = sub_25A9984C8();
      if (v13 < 64)
      {
        goto LABEL_169;
      }

LABEL_164:
      v163 = &v144;
      MEMORY[0x28223BE20](v13);
      sub_25A895280();
      sub_25A9984A8();
      v98 = sub_25A997D88();
      result = (*(v9 + 8))(&v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v98)
      {
        goto LABEL_238;
      }

      goto LABEL_170;
    }

    v97 = sub_25A9984D8();
    v13 = sub_25A9984C8();
    if (v97)
    {
      if (v13 <= 64)
      {
        v163 = *(v6[3] + 16);
        v99 = swift_getAssociatedTypeWitness();
        v148 = &v144;
        MEMORY[0x28223BE20](v99);
        v146 = &v144 - v100;
        swift_getAssociatedConformanceWitness();
        v101 = sub_25A998A78();
        v147 = &v144;
        MEMORY[0x28223BE20](v101);
        sub_25A9989C8();
        v102 = sub_25A997D88();
        result = (*(v9 + 8))(&v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v102)
        {
          goto LABEL_238;
        }

        goto LABEL_169;
      }

      goto LABEL_164;
    }

    if (v13 < 64)
    {
LABEL_169:
      sub_25A9984B8();
    }
  }

LABEL_170:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_175;
  }

  while (1)
  {
    *&v151 = 0x7FFFFFFFFFFFFFFFLL;
    v103 = sub_25A9984D8();
    v104 = sub_25A9984C8();
    if ((v103 & 1) == 0)
    {
      break;
    }

    if (v104 < 65)
    {
      goto LABEL_179;
    }

LABEL_173:
    MEMORY[0x28223BE20](v104);
    v10 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v105 = sub_25A997D88();
    (*(v9 + 8))(v10, v7);
    if (v105)
    {
      __break(1u);
LABEL_175:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_180;
  }

  if (v104 >= 64)
  {
    goto LABEL_173;
  }

LABEL_179:
  sub_25A9984B8();
LABEL_180:
  v163 = sub_25A9984B8();
  (*(v9 + 8))(v11, v7);
  v107 = *(&v158 + 1);
  v106 = v159;
  v108 = __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
  v109 = *(v107 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  v111 = &v144 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v109 + 16))(v111);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_193;
  }

  *&v151 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v113 = sub_25A9984D8();
    v112 = sub_25A9984C8();
    if ((v113 & 1) == 0)
    {
      if (v112 < 64)
      {
        goto LABEL_192;
      }

      goto LABEL_193;
    }

    if (v112 > 64)
    {
      goto LABEL_187;
    }

    v148 = *(*(v106 + 24) + 16);
    v115 = swift_getAssociatedTypeWitness();
    v147 = &v144;
    MEMORY[0x28223BE20](v115);
    v145 = &v144 - v116;
    swift_getAssociatedConformanceWitness();
    v117 = sub_25A998A78();
    v146 = &v144;
    MEMORY[0x28223BE20](v117);
    sub_25A9989C8();
    v118 = sub_25A997D88();
    result = (*(v109 + 8))(&v144 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v107);
    if ((v118 & 1) == 0)
    {
      goto LABEL_192;
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v112 = sub_25A9984C8();
  if (v112 < 64)
  {
LABEL_192:
    sub_25A9984B8();
    goto LABEL_193;
  }

LABEL_187:
  v148 = &v144;
  MEMORY[0x28223BE20](v112);
  sub_25A895280();
  sub_25A9984A8();
  v114 = sub_25A997D88();
  result = (*(v109 + 8))(&v144 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v107);
  if (v114)
  {
    goto LABEL_239;
  }

LABEL_193:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_198;
  }

  while (2)
  {
    *&v151 = 0x7FFFFFFFFFFFFFFFLL;
    v119 = sub_25A9984D8();
    v120 = sub_25A9984C8();
    if (v119)
    {
      if (v120 < 65)
      {
        break;
      }

      goto LABEL_196;
    }

    if (v120 >= 64)
    {
LABEL_196:
      MEMORY[0x28223BE20](v120);
      v110 = &v144 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25A895280();
      sub_25A9984A8();
      v121 = sub_25A997D88();
      (*(v109 + 8))(v110, v107);
      if ((v121 & 1) == 0)
      {
        goto LABEL_203;
      }

      __break(1u);
LABEL_198:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_203:
  v122 = sub_25A9984B8();
  (*(v109 + 8))(v111, v107);
  v123 = *(&v155 + 1);
  v124 = v156;
  v125 = __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
  v126 = &v144;
  v127 = *(v123 - 8);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v125);
  (*(v127 + 16))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_217;
  }

  *&v151 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v148 = &v144;
    v131 = sub_25A9984D8();
    v132 = sub_25A9984C8();
    if ((v131 & 1) == 0)
    {
      v126 = v148;
      if (v132 >= 64)
      {
        goto LABEL_217;
      }

LABEL_214:
      sub_25A9984B8();
      goto LABEL_217;
    }

    v147 = v122;
    if (v132 > 64)
    {
      MEMORY[0x28223BE20](v132);
      sub_25A895280();
      sub_25A9984A8();
      v133 = sub_25A997D88();
      result = (*(v127 + 8))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
      v122 = v147;
      v126 = v148;
      if (v133)
      {
        goto LABEL_240;
      }

      goto LABEL_217;
    }

    v144 = *(*(v124 + 24) + 16);
    v134 = swift_getAssociatedTypeWitness();
    v146 = &v144;
    MEMORY[0x28223BE20](v134);
    swift_getAssociatedConformanceWitness();
    v135 = sub_25A998A78();
    v145 = &v144;
    MEMORY[0x28223BE20](v135);
    sub_25A9989C8();
    v136 = sub_25A997D88();
    result = (*(v127 + 8))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
    if ((v136 & 1) == 0)
    {
      sub_25A9984B8();
      v122 = v147;
      v126 = v148;
      goto LABEL_217;
    }

LABEL_240:
    __break(1u);
    return result;
  }

  v129 = sub_25A9984C8();
  if (v129 < 64)
  {
    goto LABEL_214;
  }

  v147 = v122;
  v148 = &v144;
  MEMORY[0x28223BE20](v129);
  sub_25A895280();
  sub_25A9984A8();
  v130 = sub_25A997D88();
  v126 = &v144;
  result = (*(v127 + 8))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
  v122 = v147;
  if (v130)
  {
    goto LABEL_240;
  }

LABEL_217:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_222;
  }

  while (2)
  {
    v148 = v126;
    *&v151 = 0x7FFFFFFFFFFFFFFFLL;
    v137 = sub_25A9984D8();
    v138 = sub_25A9984C8();
    if (v137)
    {
      if (v138 < 65)
      {
        break;
      }

      goto LABEL_220;
    }

    if (v138 >= 64)
    {
LABEL_220:
      v147 = v122;
      MEMORY[0x28223BE20](v138);
      sub_25A895280();
      sub_25A9984A8();
      v139 = sub_25A997D88();
      (*(v127 + 8))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
      v122 = v147;
      v126 = v148;
      if ((v139 & 1) == 0)
      {
        goto LABEL_227;
      }

      __break(1u);
LABEL_222:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_227;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_227:
  v140 = sub_25A9984B8();
  result = (*(v127 + 8))(&v144 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v123);
  if (!v140)
  {
    goto LABEL_235;
  }

  v141 = sub_25A9739B4(v163, v122, v140);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
  v143 = v149;
  v149[3] = v142;
  *v143 = v141;
  __swift_destroy_boxed_opaque_existential_0Tm(&v154);
LABEL_161:
  __swift_destroy_boxed_opaque_existential_0Tm(&v157);
  return __swift_destroy_boxed_opaque_existential_0Tm(v160);
}

uint64_t sub_25A88AFC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x656C626172657469, 0xE900000000000073), (v5 & 1) == 0))
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v55 + 1);
  if (!*(&v55 + 1))
  {
LABEL_13:
    sub_25A878194(&v54, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v7 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  v9 = sub_25A92F9CC(v8);

  if (!v9)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v21 = 70;
    return swift_willThrow();
  }

  v50 = a2;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v52 = MEMORY[0x277D84F90];
    sub_25A937570(0, v10, 0);
    v12 = v52;
    v13 = v9 + 32;
    v14 = v10;
    do
    {
      sub_25A872F24(v13, &v54);
      v15 = *(&v55 + 1);
      v16 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
      v17 = (*(v16 + 24))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v54);
      *&v52 = v12;
      v19 = v12[2];
      v18 = v12[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_25A937570((v18 > 1), v19 + 1, 1);
        v12 = v52;
      }

      v12[2] = v20;
      v12[v19 + 4] = v17;
      v13 += 40;
      --v14;
    }

    while (v14);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (!v20)
    {

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
      a2[3] = result;
      *a2 = v11;
      return result;
    }

    v12 = MEMORY[0x277D84F90];
  }

  v23 = v12[4];
  v24 = v20 - 1;
  if (v20 != 1)
  {
    if (v20 < 5)
    {
      v25 = 1;
      goto LABEL_24;
    }

    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v26 = vdupq_n_s64(*&v23);
    v27 = (v12 + 7);
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v26;
    do
    {
      v26 = vbslq_s8(vcgtq_s64(v26, v27[-1]), v27[-1], v26);
      v29 = vbslq_s8(vcgtq_s64(v29, *v27), *v27, v29);
      v27 += 2;
      v28 -= 4;
    }

    while (v28);
    v30 = vbslq_s8(vcgtq_s64(v29, v26), v26, v29);
    v31 = vextq_s8(v30, v30, 8uLL).u64[0];
    v23 = vbsl_s8(vcgtd_s64(v31, v30.i64[0]), *v30.i8, v31);
    if (v24 != (v24 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_24:
      v32 = v20 - v25;
      v33 = &v12[v25 + 4];
      do
      {
        v35 = *v33++;
        v34 = v35;
        if (*&v35 < *&v23)
        {
          v23 = v34;
        }

        --v32;
      }

      while (v32);
    }
  }

  if (v10)
  {
    *&v52 = v11;
    sub_25A998748();
    v36 = v9 + 32;
    do
    {
      sub_25A872F24(v36, &v54);
      v37 = *(&v55 + 1);
      v38 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
      (*(v38 + 16))(v37, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(&v54);
      sub_25A998718();
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      v36 += 40;
      --v10;
    }

    while (v10);

    v39 = v52;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  result = sub_25A9613A0(MEMORY[0x277D84F90], *&v23);
  if ((*&v23 & 0x8000000000000000) == 0)
  {
    v40 = result;
    if (!*&v23)
    {
LABEL_51:

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04828, &qword_25A9F8EB0);
      v50[3] = result;
      *v50 = v40;
      return result;
    }

    v41 = 0;
    v57 = *(v39 + 16);
    v51 = v23;
    while (!v57)
    {
LABEL_36:
      if (++v41 == *&v51)
      {
        goto LABEL_51;
      }
    }

    v42 = 0;
    while (v42 < *(v39 + 16))
    {

      sub_25A9988A8();
      if (!v53)
      {

        sub_25A878194(&v52, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A874F54();
        swift_allocError();
        *v49 = 23;
        swift_willThrow();
      }

      sub_25A872D74(&v52, &v54);
      sub_25A87500C(&v54, &v52);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25A8F7A3C(v40);
        v40 = result;
      }

      if (v41 >= v40[2])
      {
        goto LABEL_54;
      }

      v43 = v40 + 4;
      v44 = v40[v41 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[v41 + 4] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_25A967488(0, *(v44 + 2) + 1, 1, v44);
        v43[v41] = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v43[v41] = sub_25A967488((v46 > 1), v47 + 1, 1, v44);
      }

      ++v42;

      __swift_destroy_boxed_opaque_existential_0Tm(&v54);
      v48 = v43[v41];
      *(v48 + 16) = v47 + 1;
      result = sub_25A872D74(&v52, (v48 + 32 * v47 + 32));
      if (v57 == v42)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A88B5C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) == 0))
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v36);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_13;
  }

  v7 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_13:
    sub_25A878194(&v39, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v16 = 64;
    return swift_willThrow();
  }

  v8 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  if (*(a1 + 16) && (v10 = sub_25A8F3600(1668183398, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v10, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if (swift_dynamicCast())
    {
      if (*(&v37 + 1))
      {
        v12 = sub_25A87817C(&v36, &v39);
        MEMORY[0x28223BE20](v12);
        v31[2] = &v39;
        v13 = sub_25A88BC08(sub_25A895378, v31, v9);
        if (!v2)
        {
          v14 = v13;
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
          *a2 = v14;
        }

        return __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  v32 = a2;
  result = sub_25A878194(&v36, &qword_27FA04760, &unk_25A9F9BB0);
  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v9 + 32;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      sub_25A87500C(v19, &v36);
      sub_25A87500C(&v36, &v39);
      if (!swift_dynamicCast() || (v35[0] & 1) != 0)
      {
        sub_25A87500C(&v36, &v39);
        sub_25A873A9C();
        if (!swift_dynamicCast() || (v21 = v35[0], [v35[0] doubleValue], v23 = v22, v21, v23 != 0.0))
        {
          if ((static MorpheusUtils.isNil(_:)(&v36) & 1) == 0)
          {
            sub_25A87500C(&v36, v35);
            if (!swift_dynamicCast())
            {
              v41 = 0;
              v39 = 0u;
              v40 = 0u;
              sub_25A878194(&v39, &qword_27FA04728, &unk_25A9FD740);
LABEL_30:
              sub_25A872D74(&v36, &v39);
              v34 = v20;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_25A937550(0, *(v20 + 16) + 1, 1);
                v20 = v34;
              }

              v29 = *(v20 + 16);
              v28 = *(v20 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_25A937550((v28 > 1), v29 + 1, 1);
                v20 = v34;
              }

              *(v20 + 16) = v29 + 1;
              result = sub_25A872D74(&v39, (v20 + 32 * v29 + 32));
              goto LABEL_19;
            }

            v25 = *(&v40 + 1);
            v24 = v41;
            __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
            v26 = (*(v24 + 8))(v25, v24);
            __swift_destroy_boxed_opaque_existential_0Tm(&v39);
            v27 = *(v26 + 16);

            if (v27)
            {
              goto LABEL_30;
            }
          }
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v36);
LABEL_19:
      ++v18;
      v19 += 32;
      if (v17 == v18)
      {
        goto LABEL_36;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_36:

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  v30 = v32;
  v32[3] = result;
  *v30 = v20;
  return result;
}

uint64_t sub_25A88BAB4(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25A9F8D90;
  sub_25A87500C(a1, v6 + 32);
  v7 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v5 + 16))(v11, v6, v7, v4, v5);

  if (!v2)
  {
    if (swift_dynamicCast())
    {
      v8 = v12;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v9 = 65;
      swift_willThrow();
    }
  }

  return v8 & 1;
}

uint64_t (*sub_25A88BC08(uint64_t (*result)(_OWORD *), uint64_t a2, uint64_t a3))(_OWORD *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_25A87500C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_25A872D74(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25A937550(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_25A937550((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_25A872D74(v15, (v9 + 32 * v13 + 32));
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      ++v7;
      v8 += 32;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

_OWORD *sub_25A88BD7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_15;
  }

  v7 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
LABEL_15:
    sub_25A878194(&v30, &qword_27FA04728, &unk_25A9FD740);
LABEL_16:
    sub_25A874F54();
    swift_allocError();
    *v16 = 63;
    return swift_willThrow();
  }

  v8 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v10 = *(v9 + 16);
  if (v10 != 1)
  {
    goto LABEL_8;
  }

  sub_25A87500C(v9 + 32, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(&v31 + 1);
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v9 = (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v10 = *(v9 + 16);
LABEL_8:
  if (!v10)
  {

    goto LABEL_16;
  }

  *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *&v30 = v9;
  v24 = v9;

  v13 = sub_25A8F0FA0(&v30, 13);
  if (!v2)
  {
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v14 = *(v9 + 16);
  if (!v14)
  {

    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_25A87500C(v9 + 32, v29);
  if (v14 == 1)
  {
LABEL_12:

    return sub_25A872D74(v29, a2);
  }

  v17 = v9 + 64;
  v19 = 1;
  while (1)
  {
    if (v19 >= *(v24 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_19:
      sub_25A998C58();
      v18 = *&v25[0];
      *&v25[0] = mlx_array_new();
      swift_beginAccess();
      mlx_argmin(v25, *(v17 + 16), 0, *(v18 + 16));
    }

    sub_25A87500C(v17, v28);
    type metadata accessor for Comparison();
    sub_25A8E2098(v28, 4, v29, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25A87817C(v25, &v30);
    v20 = *(&v31 + 1);
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v22 = (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    if (v22)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      sub_25A872D74(v28, v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    ++v19;
    v17 += 32;
    if (v14 == v19)
    {
      goto LABEL_12;
    }
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_25A878194(v25, &qword_27FA047E8, &unk_25A9FBF80);
  sub_25A874F54();
  swift_allocError();
  *v23 = 63;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

void sub_25A88C9F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88C9F8);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_25A88CA04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_15;
  }

  v7 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
LABEL_15:
    sub_25A878194(&v30, &qword_27FA04728, &unk_25A9FD740);
LABEL_16:
    sub_25A874F54();
    swift_allocError();
    *v16 = 62;
    return swift_willThrow();
  }

  v8 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v10 = *(v9 + 16);
  if (v10 != 1)
  {
    goto LABEL_8;
  }

  sub_25A87500C(v9 + 32, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(&v31 + 1);
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v9 = (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v10 = *(v9 + 16);
LABEL_8:
  if (!v10)
  {

    goto LABEL_16;
  }

  *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *&v30 = v9;
  v24 = v9;

  v13 = sub_25A8F0FA0(&v30, 13);
  if (!v2)
  {
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v14 = *(v9 + 16);
  if (!v14)
  {

    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_25A87500C(v9 + 32, v29);
  if (v14 == 1)
  {
LABEL_12:

    return sub_25A872D74(v29, a2);
  }

  v17 = v9 + 64;
  v19 = 1;
  while (1)
  {
    if (v19 >= *(v24 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_19:
      sub_25A998C58();
      v18 = *&v25[0];
      *&v25[0] = mlx_array_new();
      swift_beginAccess();
      mlx_argmax(v25, *(v17 + 16), 0, *(v18 + 16));
    }

    sub_25A87500C(v17, v28);
    type metadata accessor for Comparison();
    sub_25A8E2098(v29, 2, v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25A87817C(v25, &v30);
    v20 = *(&v31 + 1);
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v22 = (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    if (v22)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      sub_25A872D74(v28, v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    ++v19;
    v17 += 32;
    if (v14 == v19)
    {
      goto LABEL_12;
    }
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_25A878194(v25, &qword_27FA047E8, &unk_25A9FBF80);
  sub_25A874F54();
  swift_allocError();
  *v23 = 63;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

void sub_25A88D678(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88D680);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A88D68C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v3 = sub_25A8F3600(120, 0xE100000000000000), (v4 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v3, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_25A87817C(&v12, v15);
        v5 = v16;
        v6 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v7 = (*(v6 + 8))(13, v5, v6);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v8 = v12;
        v11[0] = mlx_array_new();
        swift_beginAccess();
        mlx_abs(v11, *(v7 + 16), *(v8 + 16));
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_25A878194(&v12, &qword_27FA04808, &qword_25A9FDC40);
  sub_25A874F54();
  swift_allocError();
  *v9 = 89;
  return swift_willThrow();
}

void sub_25A88D8C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88D8D0);
  }

  _Unwind_Resume(a1);
}

void sub_25A88D8DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x7265626D756ELL, 0xE600000000000000), (v6 & 1) == 0))
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    goto LABEL_15;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
LABEL_15:
    sub_25A878194(&v42, &qword_27FA04808, &qword_25A9FDC40);
    if (!*(a1 + 16))
    {
LABEL_25:
      sub_25A874F54();
      swift_allocError();
      *v23 = 90;
      swift_willThrow();
      return;
    }

LABEL_16:
    v18 = sub_25A8F3600(0x7265626D756ELL, 0xE600000000000000);
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_25A87500C(*(a1 + 56) + 32 * v18, v45);
    sub_25A873A9C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = v42;
    [v42 doubleValue];
    v22 = round(v21);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        a2[3] = MEMORY[0x277D83B88];

        *a2 = v22;
        return;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (!*(&v43 + 1))
  {
    goto LABEL_15;
  }

  sub_25A87817C(&v42, v45);
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(0x7374696769646ELL, 0xE700000000000000), (v8 & 1) == 0))
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    goto LABEL_24;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04820, &qword_25A9F8EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
LABEL_24:
    sub_25A878194(&v39, &qword_27FA04818, &qword_25A9F8EA0);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!*(&v40 + 1))
  {
    goto LABEL_24;
  }

  sub_25A87817C(&v39, &v42);
  v9 = v46;
  v10 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v37 = (*(v10 + 8))(13, v9, v10);
  v12 = *(&v43 + 1);
  v11 = v44;
  v13 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v36 = v34;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v11 + 8);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_35;
  }

  *&v39 = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v17 = sub_25A9984C8();
    if (v17 < 64)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v24 = sub_25A9984D8();
  v17 = sub_25A9984C8();
  if ((v24 & 1) == 0)
  {
    if (v17 < 64)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_45;
    }

    *&v39 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = sub_25A9984D8();
    v31 = sub_25A9984C8();
    if (v30)
    {
      if (v31 >= 65)
      {
LABEL_44:
        MEMORY[0x28223BE20](v31);
        sub_25A895280();
        sub_25A9984A8();
        v32 = sub_25A997D88();
        (*(v14 + 8))(v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (v32)
        {
          goto LABEL_55;
        }

LABEL_45:
        v2 = sub_25A9984B8();
        (*(v14 + 8))(v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (qword_27FA043D8 == -1)
        {
LABEL_46:
          sub_25A998C58();
          v33 = v39;
          v38[0] = mlx_array_new();
          swift_beginAccess();
          if (v2 < 0xFFFFFFFF80000000)
          {
            __break(1u);
          }

          else if (v2 <= 0x7FFFFFFF)
          {
            mlx_round(v38, *(v37 + 16), v2, *(v33 + 16));
          }

          __break(1u);
LABEL_55:
          __break(1u);
        }

LABEL_52:
        swift_once();
        goto LABEL_46;
      }
    }

    else if (v31 >= 64)
    {
      goto LABEL_44;
    }

    sub_25A9984B8();
    goto LABEL_45;
  }

  if (v17 <= 64)
  {
    v35 = *(*(v16 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v34[1] = v34;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v28 = v34 - v27;
    swift_getAssociatedConformanceWitness();
    v34[2] = v28;
    v29 = sub_25A998A78();
    v34[0] = v34;
    MEMORY[0x28223BE20](v29);
    sub_25A9989C8();
    LOBYTE(v28) = sub_25A997D88();
    (*(v14 + 8))(v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    if ((v28 & 1) == 0)
    {
LABEL_34:
      sub_25A9984B8();
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_29:
  v35 = v34;
  MEMORY[0x28223BE20](v17);
  sub_25A895280();
  sub_25A9984A8();
  v25 = sub_25A997D88();
  (*(v14 + 8))(v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  if ((v25 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  __break(1u);
}

void sub_25A88E2FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A88E304);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A88E318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x7373616C63, 0xE500000000000000), (v6 & 1) == 0))
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_11;
  }

  if (!*(&v20 + 1))
  {
LABEL_11:
    sub_25A878194(&v19, &qword_27FA047F8, L"D\a\t");
LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v12 = 119;
    return swift_willThrow();
  }

  sub_25A87817C(&v19, v22);
  if (!*(a1 + 16) || (v7 = sub_25A8F3600(1718379891, 0xE400000000000000), (v8 & 1) == 0) || (sub_25A87500C(*(a1 + 56) + 32 * v7, &v19), type metadata accessor for PyInstance(), (swift_dynamicCast() & 1) == 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    goto LABEL_12;
  }

  v9 = v17;
  v10 = *(v17 + 40);
  v11 = *(v17 + 48);
  __swift_project_boxed_opaque_existential_1((v17 + 16), v10);
  (*(v11 + 88))(&v17, v22, v10, v11);
  if (!v2)
  {
    if (v18)
    {
      sub_25A87817C(&v17, &v19);
      sub_25A872F24(&v19, &v17);
      v14 = type metadata accessor for PySuperInstance();
      v15 = swift_allocObject();
      sub_25A87817C(&v17, v15 + 16);
      *(v15 + 56) = v9;
      a2[3] = v14;
      *a2 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(&v19);
      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    sub_25A878194(&v17, &qword_27FA047F8, L"D\a\t");
    sub_25A874F54();
    swift_allocError();
    *v16 = -124;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

void sub_25A88E5A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x7463656A626FLL, 0xE600000000000000), (v5 & 1) == 0))
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_11;
  }

  if (!*(&v55 + 1))
  {
LABEL_11:
    sub_25A878194(&v54, &qword_27FA04750, "jN\a");
    sub_25A874F54();
    swift_allocError();
    *v13 = 120;
    swift_willThrow();
    return;
  }

  sub_25A87817C(&v54, v57);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
    if (swift_dynamicCast())
    {
      if (*(&v52 + 1))
      {
        sub_25A87817C(&v51, &v54);
        v8 = v58;
        v9 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        (*(v9 + 8))(&v51, v8, v9);
        v10 = *(&v52 + 1);
        v11 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        v12 = (*(v11 + 72))(v10, v11);
        MEMORY[0x28223BE20](v12);
        v41[2] = &v54;
        LOBYTE(v10) = sub_25A96289C(sub_25A895358, v41, v12);

        __swift_destroy_boxed_opaque_existential_0Tm(&v51);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v10 & 1;
LABEL_43:
        __swift_destroy_boxed_opaque_existential_0Tm(&v54);
        goto LABEL_36;
      }
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  sub_25A878194(&v51, &qword_27FA047F8, L"D\a\t");
  if (!*(a1 + 16) || (v14 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v15 & 1) == 0))
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    goto LABEL_34;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v14, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    goto LABEL_34;
  }

  if (!*(&v52 + 1))
  {
LABEL_34:
    sub_25A878194(&v51, &qword_27FA04728, &unk_25A9FD740);
LABEL_35:
    sub_25A874F54();
    swift_allocError();
    *v40 = 120;
    swift_willThrow();
LABEL_36:
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    return;
  }

  sub_25A87817C(&v51, &v54);
  v16 = *(&v55 + 1);
  v17 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  v18 = (*(v17 + 8))(v16, v17);
  v19 = sub_25A92FB38(v18);

  v60 = v19;
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    goto LABEL_35;
  }

  v20 = v58;
  v21 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v21 + 8))(&v51, v20, v21);
  v22 = *(&v52 + 1);
  v23 = v53;
  __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  v24 = (*(v23 + 72))(v22, v23);
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_32:

    v39 = 0;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v39;
    goto LABEL_43;
  }

  v26 = 0;
  v27 = v24 + 32;
  v28 = v60 + 32;
  v46 = v24;
  v44 = v25;
  v43 = v24 + 32;
  v42 = v60 + 32;
  while (2)
  {
    if (v26 < *(v24 + 16))
    {
      v29 = (v27 + 16 * v26);
      v31 = *v29;
      v30 = v29[1];
      v45 = v26 + 1;
      v32 = *(v60 + 16);

      v47 = -v32;
      v33 = -1;
      while (v47 + v33 != -1)
      {
        if (++v33 >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        sub_25A872F24(v28, v48);
        v35 = v49;
        v34 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        if ((*(v34 + 56))(v35, v34) == v31 && v36 == v30)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v48);
LABEL_41:

          v39 = 1;
          goto LABEL_42;
        }

        v28 += 40;
        v38 = sub_25A9989E8();

        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        if (v38)
        {
          goto LABEL_41;
        }
      }

      v26 = v45;
      v24 = v46;
      v27 = v43;
      v28 = v42;
      if (v45 != v44)
      {
        continue;
      }

      goto LABEL_32;
    }

    break;
  }

LABEL_45:
  __break(1u);
}