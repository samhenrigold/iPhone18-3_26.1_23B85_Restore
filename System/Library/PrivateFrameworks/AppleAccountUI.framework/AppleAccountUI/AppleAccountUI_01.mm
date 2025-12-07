uint64_t sub_1C5406D38()
{
  v10 = 0;
  v16 = 0;
  sub_1C5406B78();
  v8 = [swift_getObjCClassFromMetadata() defaultCenter];
  v1 = v0;
  v9 = sel_fetchAllTrustedContacts;
  v11 = sub_1C5527698(*(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_type), v2);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0;
  v3 = v7;
  v5 = 0;
  [v8 addObserver:v7 selector:sel_fetchAllTrustedContacts name:v11 object:?];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x128))();
}

id sub_1C5407070()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactsViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5407610@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecoveryContactsViewModel(0);
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

id sub_1C5407670(uint64_t a1)
{
  v4 = [v1 initWithAccountManager_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C54076F8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1C55968A4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1C5596CC4();
  __break(1u);
LABEL_12:
  result = sub_1C5596C94();
  __break(1u);
  return result;
}

uint64_t sub_1C5407A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17, a2, v26, a4);
        v15 = sub_1C5408B30;
        v16 = &v37;
        sub_1C54076F8(sub_1C5408B4C, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_1C5596C94();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_1C5596C94();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_1C5596C94();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_1C5596C94();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_1C5596C94();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_1C5596C94();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_1C5596C94();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_1C5596C94();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_1C5596C94();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_1C5596C94();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_1C5596C94();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_1C5596C94();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_1C5596CC4();
    __break(1u);
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

unint64_t sub_1C5408288(uint64_t a1)
{
  result = sub_1C54082B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C54082B4()
{
  v2 = qword_1EC15BD20;
  if (!qword_1EC15BD20)
  {
    type metadata accessor for RecoveryContactsViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540835C(uint64_t a1)
{
  updated = sub_1C540848C(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C540848C(uint64_t a1)
{
  v5 = qword_1EC15BD28;
  if (!qword_1EC15BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0, &qword_1C55AD850);
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15BD28);
      return v2;
    }
  }

  return v5;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_1C54085A4()
{
  v2 = qword_1EC15BD30;
  if (!qword_1EC15BD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1C5596C94();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1C5596C94();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1C5596C94();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1C5596C94();
                __break(1u);
              }

              sub_1C5596C94();
              __break(1u);
            }

            sub_1C5596C94();
            __break(1u);
          }

          sub_1C5596C94();
          __break(1u);
        }

        sub_1C5596C94();
        __break(1u);
      }

      sub_1C5596C94();
      __break(1u);
    }

    sub_1C5596C94();
    __break(1u);
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

void *sub_1C5408B78(const void *a1, void *a2)
{
  v6 = sub_1C5596814();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1C5408CA0(uint64_t a1)
{
  v3 = sub_1C5596814();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C5408D48@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1C5408F08(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C540901C;

  return v6(a1);
}

uint64_t sub_1C540901C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1C5409148(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5408F08(a1, v6);
}

uint64_t sub_1C5409260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1C54092E0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5405D3C(a1, v6);
}

uint64_t sub_1C54093A0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5406064(a1, v6);
}

void *sub_1C540955C(void *a1, void *a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1C54095E8()
{
  v4 = *v0;
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v4);
  return v2 & 1;
}

uint64_t sub_1C5409664(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

void sub_1C54096A4(char a1)
{
  v5 = *v1;
  sub_1C5409664(&v5, v4);
  sub_1C5409664(&v5, v3);
  v2 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v5);
}

uint64_t sub_1C540974C()
{
  v4 = *v0;
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v4);
  return v2;
}

uint64_t sub_1C54097E0()
{
  v2 = *v0;

  return v2 & 1;
}

uint64_t sub_1C540981C(char a1, uint64_t a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t sub_1C5409868()
{
  v4 = *(v0 + 16);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v4);
  return v2 & 1;
}

void sub_1C54098E4(char a1)
{
  v5 = *(v1 + 16);
  sub_1C5409664(&v5, v4);
  sub_1C5409664(&v5, v3);
  v2 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v5);
}

uint64_t sub_1C5409980()
{
  v4 = *(v0 + 16);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v4);
  return v2;
}

uint64_t sub_1C5409A14()
{
  v2 = *(v0 + 16);

  return v2 & 1;
}

uint64_t sub_1C5409A50(char a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C5409A9C(uint64_t a1)
{
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48, &qword_1C55B6D60);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C5409B20()
{
  v4 = *(v0 + 32);
  sub_1C5409B98(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F84();
  sub_1C5409BF0(&v4);
  return v2;
}

void *sub_1C5409B98(void *a1, void *a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_1C5409C28(uint64_t a1)
{
  v6 = *(v1 + 32);
  sub_1C5409B98(&v6, &v5);
  sub_1C5409B98(&v6, &v4);
  v3 = v6;
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F94();
  sub_1C5409BF0(&v3);
  sub_1C5409BF0(&v6);
}

uint64_t sub_1C5409D08()
{
  v4 = *(v0 + 32);
  sub_1C5409B98(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595FA4();
  sub_1C5409BF0(&v4);
  return v2;
}

uint64_t sub_1C5409D98()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5409DD8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C5409E40(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD58, &unk_1C55B7190);
  sub_1C5595F74();
  return v4;
}

uint64_t sub_1C5409ED0()
{
  v4[0] = *(v0 + 48);
  v4[1] = *(v0 + 64);
  sub_1C5409F74(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();
  sub_1C5409FBC(v4);
  return v2;
}

uint64_t sub_1C5409F74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v4;
  return result;
}

void sub_1C5409FE8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 64);
  sub_1C5409F74(&v7, v6);
  sub_1C5409F74(&v7, v5);
  v4[0] = v7;
  v4[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F94();
  sub_1C5409FBC(v4);
  sub_1C5409FBC(&v7);
}

void sub_1C540A0D0(uint64_t a1@<X8>)
{
  v9[0] = *(v1 + 48);
  v9[1] = *(v1 + 64);
  sub_1C5409F74(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595FA4();
  sub_1C5409FBC(v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
}

uint64_t sub_1C540A1AC()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C540A224(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3 & 1;
  *(v4 + 72) = a4;
}

uint64_t sub_1C540A2AC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C540A318()
{
  v2 = *(v0 + 96);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C540A344(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 96) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C540A3A0()
{
  v2 = *(v0 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A3D8()
{
  v0 = sub_1C55965F4("DATA_SYNCED_WITH_ICLOUD", 23, 1);
  v3 = sub_1C54637B4(v0, v1);

  return v3;
}

uint64_t sub_1C540A434()
{
  v2 = *(v0 + 120);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A46C()
{
  v0 = sub_1C55965F4("LEARN_MORE_ELLIPSIS", 19, 1);
  v3 = sub_1C54637B4(v0, v1);

  return v3;
}

uint64_t sub_1C540A4C8()
{
  v2 = *(v0 + 136);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A500@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68, &unk_1C55B3FC0);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v43 = &v24 - v24;
  v25 = 0;
  v26 = (*(*(sub_1C55947D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25, v5, v6, v7);
  v39 = &v24 - v26;
  v52 = sub_1C5594794();
  v44 = *(v52 - 8);
  v45 = v52 - 8;
  v29 = v44[8];
  v27 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v8, v9, v10);
  v46 = &v24 - v27;
  v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v24 - v27, v11, v12, v13);
  v50 = &v24 - v28;
  v58 = &v24 - v28;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v51 = &v24 - v30;
  v57 = &v24 - v30;
  v56 = v18;
  v31 = *(v18 + 120);
  v33 = *(v18 + 128);
  sub_1C5594CF4();
  v40 = 1;
  v19 = sub_1C55965F4(" ", 1, 1);
  v32 = v20;
  v34 = MEMORY[0x1C6947180](v31, v33, v19);
  v35 = v21;

  sub_1C540A91C();
  sub_1C55947A4();
  v37 = *(v36 + 136);
  v38 = *(v36 + 144);
  sub_1C5594CF4();
  sub_1C540A91C();
  sub_1C55947A4();
  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  sub_1C55965F4("https://support.apple.com/122682?cid=mc-ols-iCloud-article_122682-SigningOut-04282025", 85, v40 & 1);
  v41 = v22;
  sub_1C55948A4();

  sub_1C540AB30();
  sub_1C5594724();
  v49 = v44[2];
  v48 = v44 + 2;
  v49(v46, v50, v52);
  sub_1C540ABA8();
  sub_1C5594774();
  v54 = v44[1];
  v53 = v44 + 1;
  v54(v46, v52);
  v49(v47, v51, v52);
  v54(v50, v52);
  return (v54)(v51, v52);
}

BOOL sub_1C540A934(void *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D8, &unk_1C55ADEF0);
  v3 = sub_1C55964D4();

  return (v3 & 1) != 0;
}

void sub_1C540AA58(uint64_t a1, void *a2)
{

  sub_1C540AB30();
  sub_1C5594854();
  __break(1u);
}

void sub_1C540AA8C(uint64_t a1)
{
  v5 = a1;
  v1 = sub_1C5594714();
  v7 = *(v1 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v1, v5, v1, v2);
  (*(v7 + 16))(&v4 - v6, v3);
  sub_1C5594704();
  __break(1u);
}

unint64_t sub_1C540AB30()
{
  v2 = qword_1EC15BD70;
  if (!qword_1EC15BD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540ABA8()
{
  v2 = qword_1EC15BD78;
  if (!qword_1EC15BD78)
  {
    sub_1C5594794();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540AC28@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v184 = v1;
  v132 = sub_1C540D660;
  v154 = MEMORY[0x1E697CF10];
  v165 = MEMORY[0x1E697D600];
  v177 = MEMORY[0x1E697D368];
  v95 = sub_1C541129C;
  v96 = sub_1C5411614;
  v97 = sub_1C54117B4;
  v98 = MEMORY[0x1E697D340];
  v220 = 0;
  __src = v221;
  __n = 160;
  memcpy(v221, v1, sizeof(v221));
  memcpy(__dst, v221, sizeof(__dst));
  v181 = 0;
  v162 = sub_1C5595584();
  v155 = *(v162 - 8);
  v156 = v162 - 8;
  v101 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v157 = v68 - v101;
  v146 = sub_1C55955D4();
  v139 = *(v146 - 8);
  v140 = v146 - 8;
  v102 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v146, v5, v6, v7);
  v145 = v68 - v102;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD80, &qword_1C55ADB00);
  v134 = *(v137 - 8);
  v135 = v137 - 8;
  v103 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137, v8, v9, v10);
  v136 = v68 - v103;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD88, &qword_1C55ADB08);
  v104 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142, v11, v12, v13);
  v141 = v68 - v104;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD90, &qword_1C55ADB10);
  v149 = *(v152 - 8);
  v150 = v152 - 8;
  v105 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152, v14, v15, v16);
  v151 = v68 - v105;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD98, &qword_1C55ADB18);
  v158 = *(v161 - 8);
  v159 = v161 - 8;
  v106 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v161, v17, v18, v19);
  v160 = v68 - v106;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA0, &qword_1C55ADB20);
  v170 = *(v172 - 8);
  v171 = v172 - 8;
  v107 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172, v20, v21, v22);
  v173 = v68 - v107;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA8, &qword_1C55ADB28);
  v108 = (*(*(v175 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175, v23, v24, v25);
  v174 = v68 - v108;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB0, &qword_1C55ADB30);
  v185 = *(v188 - 8);
  v186 = v188 - 8;
  v109 = (*(v185 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v188, v26, v27, v28);
  v187 = v68 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB8, &qword_1C55ADB38);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110, v29, v30, v31);
  v179 = v68 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDC0, &qword_1C55ADB40);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112, v32, v33, v34);
  v114 = v68 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDC8, &qword_1C55ADB48);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115, v35, v36, v37);
  v117 = v68 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDD0, &qword_1C55ADB50);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118, v38, v39, v40);
  v120 = v68 - v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDD8, &qword_1C55ADB58);
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v184, v41, v42, v43);
  v125 = v68 - v124;
  v126 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v68 - v124, v46, v47);
  v127 = v68 - v126;
  v128 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v68 - v126, v50, v51);
  v129 = v68 - v128;
  v220 = v68 - v128;
  sub_1C540D4D4(v52, &v219);
  v130 = v194;
  v194[2] = v184;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDE0, &qword_1C55ADB60);
  sub_1C540D668();
  sub_1C5595964();
  sub_1C540D6F0(v184);
  v133 = v184[19];
  sub_1C540D790();
  sub_1C5595C24();
  (*(v134 + 8))(v136, v137);
  v138 = sub_1C55957A4();
  sub_1C55955C4();
  v143 = sub_1C540D818();
  v180 = 0;
  MEMORY[0x1C6946710](v138, 0x3FB999999999999ALL);
  v148 = *(v139 + 8);
  v147 = v139 + 8;
  v148(v145, v146);
  sub_1C540DA78(v141);
  v144 = sub_1C5595804();
  sub_1C55955C4();
  v218[3] = v142;
  v218[4] = v143;
  v178 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v144, v181, v180, v145, v152);
  v148(v145, v146);
  (*(v149 + 8))(v151, v152);
  sub_1C5595574();
  v218[1] = v152;
  v218[2] = OpaqueTypeConformance2;
  v163 = swift_getOpaqueTypeConformance2();
  v164 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v155 + 8))(v157, v162);
  (*(v158 + 8))(v160, v161);
  v53 = sub_1C5595E74();
  v169 = v218;
  v218[0] = v53;
  v214 = v161;
  v215 = v162;
  v216 = v163;
  v217 = v164;
  v167 = swift_getOpaqueTypeConformance2();
  v166 = MEMORY[0x1E69815C0];
  v168 = MEMORY[0x1E6981568];
  sub_1C5410CE8(v172, MEMORY[0x1E69815C0]);
  sub_1C5595A74();
  sub_1C5410D10(v169);
  (*(v170 + 8))(v173, v172);
  v176 = sub_1C5410D3C();
  sub_1C5595C94();
  sub_1C5358BE0(v174);
  v212 = v175;
  v213 = v176;
  v182 = swift_getOpaqueTypeConformance2();
  v54 = sub_1C5410F68();
  v183 = &v60;
  v60 = 0;
  v61 = 1;
  v62 = 0x7FF0000000000000;
  v63 = 0;
  v64 = v54;
  v65 = v55;
  v66 = v188;
  v67 = v182;
  sub_1C5595D24();
  v56 = v184;
  (*(v185 + 8))(v187, v188);
  v57 = *(v56 + 3);
  v190 = &v224;
  v224 = v57;
  v225 = *(v56 + 4);
  sub_1C5409F74(&v224, &v208);
  v206 = v224;
  v207 = v225;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();
  v191 = v203;
  v192 = v204;
  v193 = v205;
  sub_1C5409FBC(v190);
  v209 = v191;
  v210 = v192;
  v211 = v193 & 1;
  if (v193)
  {
    v92 = 0;
    v93 = 1;
  }

  else
  {
    v92 = v209;
    v93 = 0;
  }

  v86 = v93;
  v87 = v92;
  v58 = *(v184 + 3);
  v88 = &v222;
  v222 = v58;
  v223 = *(v184 + 4);
  sub_1C5409F74(&v222, v200);
  v198 = v222;
  v199 = v223;
  sub_1C5595F84();
  v89 = v196[20];
  v90 = v196[21];
  v91 = v197;
  sub_1C5409FBC(v88);
  v200[4] = v89;
  v201 = v90;
  v202 = v91 & 1;
  if (v91)
  {
    v84 = 0;
    v85 = 1;
  }

  else
  {
    v84 = v201;
    v85 = 0;
  }

  v69 = v85;
  v68[1] = v84;
  v70 = sub_1C5410F8C();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C5358C70(v179);
  v71 = sub_1C54110A4();
  v72 = sub_1C5411080();
  sub_1C5411148(v112, v71);
  sub_1C5595BB4();
  sub_1C5358C70(v114);
  sub_1C540D4D4(v184, v196);
  v74 = 176;
  v75 = 7;
  v73 = swift_allocObject();
  v76 = 160;
  memcpy((v73 + 16), v184, 0xA0uLL);
  sub_1C54112A4();
  sub_1C5595DC4();
  sub_1C5411348(v95, v73);
  sub_1C5358C70(v117);
  v78 = type metadata accessor for CGSize(0);
  sub_1C540D4D4(v184, &v195);
  v77 = swift_allocObject();
  memcpy((v77 + 16), v184, v76);
  v79 = sub_1C54117BC();
  v80 = sub_1C5411860();
  v66 = v80;
  sub_1C5595C64();

  sub_1C5358DF8(v120);
  v194[3] = v118;
  v194[4] = v78;
  v194[5] = v79;
  v194[6] = v80;
  v81 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v127, v121, v129);
  v83 = *(v122 + 8);
  v82 = v122 + 8;
  v83(v127, v121);
  (*(v122 + 16))(v125, v129, v121);
  sub_1C540EFD8(v125, v121, v94);
  v83(v125, v121);
  return (v83)(v129, v121);
}

uint64_t sub_1C540BC08@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = &v289;
  v173 = a1;
  v175 = a2;
  v176 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v279 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v268 = 0;
  v265 = 0;
  v2 = *a1;
  v305 = a1[1];
  v304 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v309 = a1[5];
  v308 = v5;
  v307 = v4;
  v306 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v313 = a1[9];
  v312 = v8;
  v311 = v7;
  v310 = v6;
  v320 = v305;
  v319 = v304;
  v324 = v309;
  v323 = v308;
  v322 = v307;
  v321 = v306;
  v328 = v313;
  v327 = v8;
  v326 = v7;
  v325 = v6;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF18, &qword_1C55ADE10);
  v178 = *(v177 - 8);
  v179 = v178;
  v180 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v177 - 8, v9, v10, v11);
  v182 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  v181 = v137 - v182;
  MEMORY[0x1EEE9AC00](v12, v13, v14, v15);
  v183 = v137 - v182;
  v303 = v137 - v182;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF20, &qword_1C55ADE18);
  v185 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184 - 8, v184, v16, v17);
  v187 = (v185 + 15) & 0xFFFFFFFFFFFFFFF0;
  v186 = v137 - v187;
  MEMORY[0x1EEE9AC00](v137 - v187, v18, v19, v20);
  v188 = v137 - v187;
  v302 = v137 - v187;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
  v190 = *(v189 - 8);
  v191 = v190;
  v192 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v189 - 8, v189, v21, v22);
  v193 = v137 - v192;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  v195 = *(v194 - 8);
  v196 = v195;
  v198 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v194 - 8, v194, v23, v24);
  v200 = (v198 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = v137 - v200;
  MEMORY[0x1EEE9AC00](v137 - v200, v25, v26, v27);
  v199 = v137 - v200;
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v201 = v137 - v200;
  v301 = v137 - v200;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
  v204 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202 - 8, v32, v33, v34);
  v206 = (v204 + 15) & 0xFFFFFFFFFFFFFFF0;
  v203 = v137 - v206;
  MEMORY[0x1EEE9AC00](v137 - v206, v35, v36, v37);
  v205 = v137 - v206;
  MEMORY[0x1EEE9AC00](v38, v39, v40, v41);
  v207 = v137 - v206;
  v300 = v137 - v206;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  v209 = *(v208 - 8);
  v210 = v209;
  v211 = (*(v209 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v208 - 8, v208, v42, v43);
  v212 = v137 - v211;
  v299 = v137 - v211;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
  v215 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213 - 8, v44, v45, v46);
  v217 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = v137 - v217;
  MEMORY[0x1EEE9AC00](v137 - v217, v47, v48, v49);
  v216 = v137 - v217;
  MEMORY[0x1EEE9AC00](v50, v51, v52, v53);
  v218 = v137 - v217;
  v298 = v137 - v217;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
  v220 = *(v219 - 8);
  v221 = v220;
  v222 = (*(v220 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v219 - 8, v219, v54, v55);
  v223 = v137 - v222;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);
  v225 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224 - 8, v56, v57, v58);
  v227 = (v225 + 15) & 0xFFFFFFFFFFFFFFF0;
  v226 = v137 - v227;
  MEMORY[0x1EEE9AC00](v59, v60, v61, v62);
  v228 = v137 - v227;
  v297 = v137 - v227;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
  v231 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229 - 8, v63, v64, v65);
  v233 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = v137 - v233;
  MEMORY[0x1EEE9AC00](v137 - v233, v66, v67, v68);
  v232 = v137 - v233;
  MEMORY[0x1EEE9AC00](v69, v70, v71, v72);
  v234 = v137 - v233;
  v296 = v137 - v233;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
  v236 = *(v235 - 8);
  v237 = v236;
  v238 = (*(v236 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v235 - 8, v235, v73, v74);
  v239 = v137 - v238;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  v241 = *(v240 - 8);
  v242 = v241;
  v245 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v240 - 8, v75, v76, v77);
  v247 = (v245 + 15) & 0xFFFFFFFFFFFFFFF0;
  v243 = v137 - v247;
  MEMORY[0x1EEE9AC00](v137 - v247, v78, v79, v80);
  v244 = v137 - v247;
  MEMORY[0x1EEE9AC00](v81, v82, v83, v84);
  v246 = v137 - v247;
  MEMORY[0x1EEE9AC00](v85, v86, v87, v88);
  v248 = v137 - v247;
  v295 = v137 - v247;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
  v250 = *(v249 - 8);
  v251 = v250;
  v252 = (*(v250 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v249 - 8, v249, v89, v90);
  v253 = v137 - v252;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78);
  v256 = *(*(v254 - 8) + 64);
  MEMORY[0x1EEE9AC00](v254 - 8, v254, v91, v92);
  v258 = (v256 + 15) & 0xFFFFFFFFFFFFFFF0;
  v255 = v137 - v258;
  MEMORY[0x1EEE9AC00](v137 - v258, v93, v94, v95);
  v257 = v137 - v258;
  MEMORY[0x1EEE9AC00](v96, v97, v98, v99);
  v259 = v137 - v258;
  v294 = v137 - v258;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF88, &unk_1C55ADE80);
  v261 = *(*(v260 - 8) + 64);
  MEMORY[0x1EEE9AC00](v260 - 8, v100, v101, v102);
  v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF0;
  v262 = v137 - v263;
  MEMORY[0x1EEE9AC00](v103, v104, v105, v106);
  v264 = v137 - v263;
  v293 = v137 - v263;
  if ([objc_opt_self() isSolariumEnabled])
  {
    sub_1C540D4D4(v173, &v267);
    v170 = v137;
    MEMORY[0x1EEE9AC00](v137, v107, v108, v109);
    v168 = &v137[-4];
    v137[-2] = v110;
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C020, &qword_1C55ADEA8);
    sub_1C5415D48();
    sub_1C5596164();
    sub_1C540D6F0(v173);
    v111 = [objc_opt_self() systemGroupedBackgroundColor];
    v266 = sub_1C5595E44();
    sub_1C5415C9C();
    v171 = &v266;
    sub_1C5595BF4();
    sub_1C5410D10(v171);
    (*(v251 + 8))(v253, v249);
    v172 = sub_1C5415BF4();
    sub_1C540EFD8(v257, v254, v259);
    sub_1C5417DE0(v257);
    v265 = v257;
    sub_1C5417E70(v259, v255);
    sub_1C540EFD8(v255, v254, v257);
    sub_1C5417DE0(v255);
    sub_1C5417E70(v257, v255);
    v112 = sub_1C5415DD0();
    sub_1C540FD1C(v255, v254, v184, v172, v112, v262);
    sub_1C5417DE0(v255);
    sub_1C541613C(v262, v264);
    sub_1C5417DE0(v257);
    sub_1C5417DE0(v259);
  }

  else
  {
    sub_1C540D4D4(v173, &v292);
    v162 = v137;
    MEMORY[0x1EEE9AC00](v137, v113, v114, v115);
    v160 = &v137[-4];
    v137[-2] = v116;
    v161 = sub_1C54143D0();
    sub_1C5596164();
    sub_1C540D6F0(v173);
    v117 = [objc_opt_self() systemGroupedBackgroundColor];
    v291 = sub_1C5595E44();
    v163 = sub_1C541444C();
    v164 = &v291;
    sub_1C5595BF4();
    sub_1C5410D10(v164);
    v165 = *(v237 + 8);
    v166 = (v237 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v165(v239, v235);
    v167 = sub_1C54144F8();
    sub_1C540EFD8(v246, v240, v248);
    sub_1C5414628(v246);
    v316 = *(v173 + 88);
    if (v316 == 1)
    {
      sub_1C540D4D4(v173, &v278);
      v157 = v137;
      MEMORY[0x1EEE9AC00](v137, v118, v119, v120);
      v155 = &v137[-4];
      v137[-2] = v121;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
      sub_1C54172B4();
      sub_1C5596164();
      sub_1C540D6F0(v173);
      v122 = [objc_opt_self() systemGroupedBackgroundColor];
      v277 = sub_1C5595E44();
      sub_1C541733C();
      v158 = &v277;
      sub_1C5595BF4();
      sub_1C5410D10(v158);
      (*(v221 + 8))(v223, v219);
      v159 = sub_1C54173E8();
      sub_1C540EFD8(v226, v224, v228);
      sub_1C5417490(v226);
      *(v174 + 29) = *(v173 + 13);
      sub_1C5402BDC(v315, &v276);
      *(v174 + 31) = *(v174 + 29);
      if (v318)
      {
        v153 = v317;
        v154 = v318;
        v271 = v317;
        v272 = v318;
        v270 = v246;
        sub_1C5594CF4();
        v151 = v137;
        MEMORY[0x1EEE9AC00](v137, v123, v124, v161);
        v137[-2] = v153;
        v137[-1] = v125;
        sub_1C5596164();

        v126 = [objc_opt_self() systemGroupedBackgroundColor];
        v269 = sub_1C5595E44();
        v152 = &v269;
        sub_1C5595BF4();
        sub_1C5410D10(v152);
        v165(v239, v235);
        sub_1C540EFD8(v244, v240, v246);
        sub_1C5414628(v244);
        v268 = v244;
        sub_1C5415064(v246, v243);
        sub_1C540EFD8(v243, v240, v244);
        sub_1C5414628(v243);
        sub_1C5415064(v244, v214);
        (*(v242 + 56))(v214, 0, 1, v240);
        sub_1C540F554(v214, v240, v216);
        sub_1C5417520(v214);
        sub_1C54175F4(v216, v218);
        sub_1C5414628(v244);
        sub_1C5414628(v246);
      }

      else
      {
        (*(v242 + 56))(v214, 1, 1, v240);
        sub_1C540F554(v214, v240, v216);
        sub_1C5417520(v214);
        sub_1C54175F4(v216, v218);
      }

      sub_1C5417750(v228, v226);
      v275[0] = v226;
      sub_1C5417800(v218, v216);
      v275[1] = v216;
      v274[0] = v224;
      v274[1] = v213;
      v273[0] = v159;
      v273[1] = sub_1C5417974();
      sub_1C540F5A0(v275, 2uLL, v274, v273, v212);
      sub_1C5417520(v216);
      sub_1C5417490(v226);
      sub_1C5417A0C(v212, v230);
      (*(v210 + 56))(v230, 0, 1, v208);
      sub_1C54146B8();
      sub_1C540F554(v230, v208, v232);
      sub_1C5414740(v230);
      sub_1C54148F4(v232, v234);
      sub_1C5417C5C(v212);
      sub_1C5417520(v218);
      sub_1C5417490(v228);
    }

    else
    {
      (*(v210 + 56))(v230, 1, 1, v208);
      sub_1C54146B8();
      sub_1C540F554(v230, v208, v232);
      sub_1C5414740(v230);
      sub_1C54148F4(v232, v234);
    }

    *(v174 + 28) = *(v173 + 2);
    v147 = v314;
    sub_1C5409B98(v314, &v290);
    *v174 = *(v174 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
    sub_1C5595F84();
    v149 = v288[4];
    sub_1C5409BF0(v147);
    v288[3] = v149;
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48, &qword_1C55B6D60);
    sub_1C5414BD0();
    v150 = sub_1C55968F4();

    if (v150)
    {
      (*(v196 + 56))(v203, 1, 1, v194);
      sub_1C5414C58();
      sub_1C540F554(v203, v194, v205);
      sub_1C5414E34(v203);
      sub_1C5414F08(v205, v207);
    }

    else
    {
      sub_1C540D4D4(v173, &v281);
      v144 = v137;
      MEMORY[0x1EEE9AC00](v137, v127, v128, v129);
      v142 = &v137[-4];
      v137[-2] = v130;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
      sub_1C5414DAC();
      sub_1C5596164();
      sub_1C540D6F0(v173);
      v131 = [objc_opt_self() systemGroupedBackgroundColor];
      v280 = sub_1C5595E44();
      sub_1C5414D00();
      v145 = &v280;
      sub_1C5595BF4();
      sub_1C5410D10(v145);
      (*(v191 + 8))(v193, v189);
      v146 = sub_1C5414C58();
      sub_1C540EFD8(v199, v194, v201);
      sub_1C541716C(v199);
      v279 = v199;
      sub_1C54171FC(v201, v197);
      sub_1C540EFD8(v197, v194, v199);
      sub_1C541716C(v197);
      sub_1C54171FC(v199, v203);
      (*(v196 + 56))(v203, 0, 1, v194);
      sub_1C540F554(v203, v194, v205);
      sub_1C5414E34(v203);
      sub_1C5414F08(v205, v207);
      sub_1C541716C(v199);
      sub_1C541716C(v201);
    }

    sub_1C5415064(v248, v246);
    v288[0] = v246;
    sub_1C5415114(v234, v232);
    v288[1] = v232;
    sub_1C541541C(v207, v205);
    v288[2] = v205;
    v287[0] = v240;
    v287[1] = v229;
    v287[2] = v202;
    v286[0] = v167;
    v286[1] = sub_1C5415590();
    v286[2] = sub_1C5415628();
    sub_1C540F5A0(v288, 3uLL, v287, v286, v188);
    sub_1C5414E34(v205);
    sub_1C5414740(v232);
    sub_1C5414628(v246);
    sub_1C54156C0(v188, v186);
    v141 = sub_1C5415BF4();
    v132 = sub_1C5415DD0();
    sub_1C54108A0(v186, v254, v184, v141, v132, v262);
    sub_1C5415E58(v186);
    sub_1C541613C(v262, v264);
    sub_1C5415E58(v188);
    sub_1C5414E34(v207);
    sub_1C5414740(v234);
    sub_1C5414628(v248);
  }

  sub_1C540D4D4(v173, &v285);
  v137[1] = v137;
  MEMORY[0x1EEE9AC00](v137, v133, v134, v135);
  v137[-2] = v173;
  sub_1C5596164();
  sub_1C540D6F0(v173);
  v138 = sub_1C54166BC();
  sub_1C540EFD8(v181, v177, v183);
  v140 = *(v179 + 8);
  v139 = v179 + 8;
  v140(v181, v177);
  sub_1C5416764(v264, v262);
  v284[0] = v262;
  (*(v179 + 16))(v181, v183, v177);
  v284[1] = v181;
  v283[0] = v260;
  v283[1] = v177;
  v282[0] = sub_1C5416D4C();
  v282[1] = v138;
  sub_1C540F5A0(v284, 2uLL, v283, v282, v175);
  v140(v181, v177);
  sub_1C5416DF4(v262);
  v140(v183, v177);
  return sub_1C5416DF4(v264);
}

uint64_t sub_1C540D4D4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);

  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  sub_1C5594CF4();
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);

  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);
  MEMORY[0x1E69E5928](v8, a2);
  *(a2 + 80) = v8;
  *(a2 + 88) = *(a1 + 88);
  v9 = *(a1 + 96);
  swift_unknownObjectRetain();
  *(a2 + 96) = v9;
  *(a2 + 104) = *(a1 + 104);
  v10 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v10;
  *(a2 + 120) = *(a1 + 120);
  v11 = *(a1 + 128);
  sub_1C5594CF4();
  *(a2 + 128) = v11;
  *(a2 + 136) = *(a1 + 136);
  v13 = *(a1 + 144);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 144) = v13;
  *(a2 + 152) = *(a1 + 152);
  return result;
}

unint64_t sub_1C540D668()
{
  v2 = qword_1EC15BDE8;
  if (!qword_1EC15BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDE0, &qword_1C55ADB60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDE8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C540D6F0(void *a1)
{

  MEMORY[0x1E69E5920](a1[10]);
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1C540D790()
{
  v2 = qword_1EC15BDF0;
  if (!qword_1EC15BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD80, &qword_1C55ADB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D818()
{
  v2 = qword_1EC15BDF8;
  if (!qword_1EC15BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD88, &qword_1C55ADB08);
    sub_1C540D8C0();
    sub_1C540D9F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D8C0()
{
  v2 = qword_1EC15BE00;
  if (!qword_1EC15BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE08, &qword_1C55ADB68);
    sub_1C540D790();
    sub_1C540D968();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D968()
{
  v2 = qword_1EC15BE10;
  if (!qword_1EC15BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE18, &qword_1C55ADB70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D9F0()
{
  v2 = qword_1EC15BE20;
  if (!qword_1EC15BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE28, &qword_1C55ADB78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540DA78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD80, &qword_1C55ADB00);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE08, &qword_1C55ADB68) + 36);
  v7 = sub_1C5595374();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!(v9)(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD88, &qword_1C55ADB08) + 36);

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE28, &qword_1C55ADB78) + 28);
  if (!v9())
  {
    (*(v8 + 8))(v4, v7);
  }

  return a1;
}

void *sub_1C540DC40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = &v218;
  v205 = a1;
  v167 = a2;
  v168 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  memset(v258, 0, sizeof(v258));
  v247 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0u;
  v222 = 0u;
  v220 = 0;
  v219 = 0u;
  v218 = 0u;
  v2 = *a1;
  v268 = a1[1];
  v267 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v272 = a1[5];
  v271 = v5;
  v270 = v4;
  v269 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v276 = a1[9];
  v275 = v8;
  v274 = v7;
  v273 = v6;
  v285 = v268;
  v284 = v267;
  v289 = v272;
  v288 = v271;
  v287 = v270;
  v286 = v269;
  v293 = v276;
  v292 = v8;
  v291 = v7;
  v290 = v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
  v170 = *(v169 - 8);
  v171 = v170;
  v173 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v169 - 8, v169, v9, v10);
  v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = &v78 - v175;
  MEMORY[0x1EEE9AC00](&v78 - v175, v11, v12, v13);
  v174 = &v78 - v175;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v176 = &v78 - v175;
  v263 = &v78 - v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070, &qword_1C55ADEC0);
  v179 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177 - 8, v18, v19, v20);
  v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v78 - v181;
  MEMORY[0x1EEE9AC00](&v78 - v181, v21, v22, v23);
  v180 = &v78 - v181;
  MEMORY[0x1EEE9AC00](v24, v25, v26, v27);
  v182 = &v78 - v181;
  v262 = &v78 - v181;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078, &qword_1C55ADEC8);
  v184 = *(v183 - 8);
  v185 = v184;
  v186 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183 - 8, v183, v28, v29);
  v187 = &v78 - v186;
  v261 = &v78 - v186;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
  v189 = *(v188 - 8);
  v190 = v189;
  v191 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v188 - 8, v30, v31, v32);
  v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v192 = &v78 - v193;
  MEMORY[0x1EEE9AC00](v33, v34, v35, v36);
  v194 = &v78 - v193;
  v260 = &v78 - v193;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080, &qword_1C55ADED0);
  v197 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195 - 8, v37, v38, v39);
  v199 = (v197 + 15) & 0xFFFFFFFFFFFFFFF0;
  v196 = &v78 - v199;
  MEMORY[0x1EEE9AC00](&v78 - v199, v40, v41, v42);
  v198 = &v78 - v199;
  MEMORY[0x1EEE9AC00](v43, v44, v45, v46);
  v200 = &v78 - v199;
  v259 = &v78 - v199;
  v201 = sub_1C540EE98();
  v47 = sub_1C55965F4("APPLE_ACCOUNT", 13, 1);
  v202 = v48;
  v203 = sub_1C54637B4(v47, v48);
  v204 = v49;

  v207 = v205[10];
  v206 = v207;
  v50 = v207;
  v208 = [v207 aa_fullName];
  if (v208)
  {
    v165 = v208;
    v160 = v208;
    v161 = sub_1C5596574();
    v162 = v51;

    v163 = v161;
    v164 = v162;
  }

  else
  {
    v163 = 0;
    v164 = 0;
  }

  v159 = v164;
  v158 = v163;

  if (v159)
  {
    v156 = v158;
    v157 = v159;
  }

  else
  {
    LODWORD(v77) = 0;
    v76 = 44;
    LOBYTE(v75) = 2;
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C540EFC0(v201, v203, v204, v156, v157, v264);
  v52 = v166;
  v53 = v166[69];
  v54 = v166[70];
  v257[4] = v264[4];
  v166[62] = v54;
  v52[61] = v53;
  v154 = sub_1C54143D0();
  v155 = v257;
  sub_1C540EFD8(v257, &unk_1F4476CD8, v258);
  sub_1C5412D34(v155);
  v281 = *(v205 + 88);
  if (v281 == 1)
  {
    v166[87] = *v205;
    v147 = v280;
    sub_1C5409664(v280, &v246);
    v166[25] = v166[87];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595FA4();
    v150 = v243;
    v148 = v244;
    v149 = v245;
    sub_1C5373718(v147);
    v77 = MEMORY[0x1E6981138];
    v76 = v154;
    v75 = MEMORY[0x1E6981148];
    sub_1C55951F4();
    v151 = sub_1C54172B4();
    sub_1C540EFD8(v192, v188, v194);
    v152 = *(v190 + 8);
    v153 = (v190 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v152(v192, v188);
    v166[86] = *(v205 + 13);
    sub_1C5402BDC(&v279, &v237);
    v166[89] = v166[86];
    if (v283)
    {
      v106 = v282;
      v126 = v283;
      v225 = v282;
      v226 = v283;
      sub_1C5418C84();
      v103 = 1;
      v55 = sub_1C55965F4("com.apple.graphic-icon.applecare", 32);
      sub_1C540F4E0(v55, v56);
      v105 = sub_1C5595ED4();
      sub_1C5594CF4();
      v57 = sub_1C55965F4("THEFT_AND_LOSS_PROTECTION", 25, v103);
      v104 = v58;
      v107 = sub_1C54637B4(v57, v58);
      v108 = v59;

      sub_1C540EFC0(v105, v106, v126, v107, v108, v265);
      v60 = v166;
      v61 = v265[0];
      v221[4] = v266;
      v166[4] = v265[1];
      v60[3] = v61;
      v117 = &unk_1F4476CD8;
      v125 = &v222;
      v109 = v221;
      sub_1C540EFD8(v221, &unk_1F4476CD8, &v222);
      sub_1C5412D34(v109);
      v110 = v222;
      v111 = v223;
      v112 = v224;

      sub_1C5594CF4();
      sub_1C5594CF4();
      v216[0] = v110;
      v216[1] = v111;
      v217 = v112;
      v124 = &v218;
      v113 = v216;
      sub_1C540EFD8(v216, v117, &v218);
      sub_1C5412D34(v113);
      v114 = v218;
      v115 = v219;
      v116 = v220;

      sub_1C5594CF4();
      sub_1C5594CF4();
      v209[0] = v114;
      v209[1] = v115;
      v210 = v116;
      v118 = v209;
      sub_1C540F554(v209, v117, &v211);
      sub_1C5418A08(v118);
      v119 = v211;
      v127 = v211;
      v120 = v212;
      v128 = v212;
      v121 = v213;
      v129 = v213;
      v122 = v214;
      v130 = v214;
      v123 = v215;
      v131 = v215;
      sub_1C541891C(v211, v212, v213, v214, v215);
      v238 = v119;
      v239 = v120;
      v240 = v121;
      v241 = v122;
      v242 = v123;
      sub_1C5412D34(v124);
      sub_1C5412D34(v125);

      v142 = v127;
      v143 = v128;
      v144 = v129;
      v145 = v130;
      v146 = v131;
    }

    else
    {
      memset(v231, 0, sizeof(v231));
      sub_1C540F554(v231, &unk_1F4476CD8, &v232);
      v132 = v232;
      v137 = v232;
      v133 = v233;
      v138 = v233;
      v134 = v234;
      v139 = v234;
      v135 = v235;
      v140 = v235;
      v136 = v236;
      v141 = v236;
      sub_1C541891C(v232, v233, v234, v235, v236);
      v238 = v132;
      v239 = v133;
      v240 = v134;
      v241 = v135;
      v242 = v136;
      v142 = v137;
      v143 = v138;
      v144 = v139;
      v145 = v140;
      v146 = v141;
    }

    v101 = v146;
    v100 = v145;
    v99 = v144;
    v98 = v143;
    v97 = v142;
    (*(v190 + 16))(v192, v194, v188);
    v230[0] = v192;
    v229[0] = v97;
    v229[1] = v98;
    v229[2] = v99;
    v229[3] = v100;
    v229[4] = v101;
    v102 = v229;
    v230[1] = v229;
    v228[0] = v188;
    v228[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0B0, &qword_1C55ADEE0);
    v227[0] = v151;
    v227[1] = sub_1C5418970();
    sub_1C540F5A0(v230, 2uLL, v228, v227, v187);
    sub_1C5418A08(v102);
    v152(v192, v188);
    sub_1C5418A60(v187, v196);
    (*(v185 + 56))(v196, 0, 1, v183);
    sub_1C5417F20();
    sub_1C540F554(v196, v183, v198);
    sub_1C5417FA8(v196);
    sub_1C54180BC(v198, v200);
    sub_1C5418BB4(v187);
    sub_1C5418A08(&v238);
    v152(v194, v188);
  }

  else
  {
    (*(v185 + 56))(v196, 1, 1, v183);
    sub_1C5417F20();
    sub_1C540F554(v196, v183, v198);
    sub_1C5417FA8(v196);
    sub_1C54180BC(v198, v200);
  }

  v166[85] = *(v205 + 2);
  v93 = v278;
  sub_1C5409B98(v278, &v256);
  v166[59] = v166[85];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F84();
  v95 = v255[4];
  sub_1C5409BF0(v93);
  v255[3] = v95;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48, &qword_1C55B6D60);
  sub_1C5414BD0();
  v96 = sub_1C55968F4();

  if (v96)
  {
    (*(v171 + 56))(v178, 1, 1, v169);
    sub_1C5414DAC();
    sub_1C540F554(v178, v169, v180);
    sub_1C5418240(v178);
    sub_1C54182F4(v180, v182);
  }

  else
  {
    v166[84] = *(v205 + 1);
    v83 = v277;
    sub_1C5409664(v277, &v251);
    v166[49] = v166[84];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595FA4();
    v88 = v249[20];
    v84 = v249[21];
    v85 = v250;
    sub_1C5373718(v83);
    sub_1C540D4D4(v205, v249);
    v62 = swift_allocObject();
    v63 = v205;
    v86 = v62;
    v64 = *v205;
    v62[2] = *(v205 + 1);
    v62[1] = v64;
    v65 = v63[2];
    v66 = v63[3];
    v67 = v63[4];
    v62[6] = v63[5];
    v62[5] = v67;
    v62[4] = v66;
    v62[3] = v65;
    v68 = v63[6];
    v69 = v63[7];
    v70 = v63[8];
    v62[10] = v63[9];
    v62[9] = v70;
    v62[8] = v69;
    v62[7] = v68;
    sub_1C540D4D4(v63, &v248);
    v89 = &v78;
    MEMORY[0x1EEE9AC00](&v78, v71, v72, v73);
    v87 = &v75;
    v77 = sub_1C54188A4();
    v76 = v154;
    v75 = &unk_1F447E790;
    sub_1C55951F4();
    sub_1C540D6F0(v205);
    v90 = sub_1C5414DAC();
    sub_1C540EFD8(v174, v169, v176);
    v91 = *(v171 + 8);
    v92 = (v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91(v174, v169);
    v247 = v174;
    v82 = *(v171 + 16);
    v81 = v171 + 16;
    v82(v172, v176, v169);
    sub_1C540EFD8(v172, v169, v174);
    v91(v172, v169);
    v82(v178, v174, v169);
    (*(v171 + 56))(v178, 0, 1, v169);
    sub_1C540F554(v178, v169, v180);
    sub_1C5418240(v178);
    sub_1C54182F4(v180, v182);
    v91(v174, v169);
    v91(v176, v169);
  }

  v80 = v258;
  v79 = v254;
  sub_1C5412728(v258, v254);
  v255[0] = v79;
  sub_1C5418428(v200, v198);
  v255[1] = v198;
  sub_1C5418630(v182, v180);
  v255[2] = v180;
  v253[0] = &unk_1F4476CD8;
  v253[1] = v195;
  v253[2] = v177;
  v252[0] = v154;
  v252[1] = sub_1C5418764();
  v252[2] = sub_1C54187FC();
  sub_1C540F5A0(v255, 3uLL, v253, v252, v167);
  sub_1C5418240(v180);
  sub_1C5417FA8(v198);
  sub_1C5412D34(v79);
  sub_1C5418240(v182);
  sub_1C5417FA8(v200);
  result = v80;
  sub_1C5412D34(v80);
  return result;
}

uint64_t sub_1C540EE98()
{
  sub_1C54118E0();
  v7 = sub_1C5404B48();
  *&v1 = MEMORY[0x1E69E5928](v7, v0).n128_u64[0];
  if (v7)
  {
    v5 = [v7 profilePictureForAccountOwner];
    MEMORY[0x1E69E5920](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v3 = sub_1C5595ED4();
    MEMORY[0x1E69E5920](v7);
    return v3;
  }

  else
  {
    MEMORY[0x1E69E5920](v7);
    return 0;
  }
}

uint64_t sub_1C540EFC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1C540F03C@<X0>(uint64_t a1@<X8>)
{
  v44 = 0u;
  v45 = 0u;
  v1 = sub_1C55965F4("FIND_MY_DESCRIPTION", 19, 1);
  v11 = sub_1C54637B4(v1, v2);
  v12 = v3;

  v42 = v11;
  v43 = v12;
  sub_1C54141E8();
  v38 = sub_1C5595A04();
  v39 = v4;
  v40 = v5;
  v41 = v6;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  sub_1C5595824();
  v34 = v38;
  v35 = v13;
  v36 = v14 & 1;
  v37 = v15;
  v30 = sub_1C55959C4();
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v9;

  sub_1C5412EA0(v38, v13, v14 & 1);

  v27[0] = v30;
  v27[1] = v16;
  v28 = v17 & 1;
  v29 = v18;
  v23 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v27, MEMORY[0x1E6981148], &v44);
  sub_1C5414260(v27);
  v19 = v44;
  v20 = v45;
  v21 = *(&v45 + 1);
  sub_1C54130AC(v44, *(&v44 + 1), v45 & 1);
  sub_1C5594CF4();
  v24 = v19;
  v25 = v20 & 1;
  v26 = v21;
  sub_1C540EFD8(&v24, v23, a1);
  sub_1C5414260(&v24);
  return sub_1C5414260(&v44);
}

void *sub_1C540F290@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C5418C84();
  v1 = sub_1C55965F4("com.apple.findmy", 16, 1);
  sub_1C540F46C(v1, v2);
  v10 = sub_1C5595ED4();
  v3 = sub_1C55965F4("FIND_MY", 7, 1);
  v11 = sub_1C54637B4(v3, v4);
  v12 = v5;

  v6 = sub_1C55965F4("ACTIVATION_LOCK", 15, 1);
  v13 = sub_1C54637B4(v6, v7);
  v14 = v8;

  sub_1C540EFC0(v10, v11, v12, v13, v14, v24);
  memcpy(__dst, v24, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34(__dst);
  v15 = __b[0];
  v16 = __b[1];
  v17 = __b[2];
  v18 = __b[3];
  v19 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  sub_1C540EFD8(v21, &unk_1F4476CD8, a1);
  sub_1C5412D34(v21);
  result = __b;
  sub_1C5412D34(__b);
  return result;
}

id sub_1C540F46C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5596554();
  v4 = [swift_getObjCClassFromMetadata() imageForDataclassWithBundleID_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

id sub_1C540F4E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5596554();
  v4 = [swift_getObjCClassFromMetadata() imageForTableUIWithType_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t *sub_1C540F5A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a2;
  v29 = a1;
  v30 = a5;
  v31 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    v5 = 0;
    v25 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    v26 = 0;
  }

  else
  {
    v22 = &v12;
    MEMORY[0x1EEE9AC00](&v12, a2, a3, a4);
    v23 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v7 + 1)
    {
      v21 = i;
      if (i >= v28)
      {
        break;
      }

      v7 = v21;
      *&v23[8 * v21] = *((v27 & 0xFFFFFFFFFFFFFFFELL) + 8 * v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a3 = v22;
    v25 = TupleTypeMetadata;
    v26 = v5;
  }

  v17 = v25;
  v19 = *(*(v25 - 8) + 64);
  v18 = &v12;
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](&v12, v5, a3, a4);
  v20 = &v12 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    for (j = 0; ; j = v12)
    {
      v14 = j;
      v15 = *((v27 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v13 = v28 == 1 ? 0 : *(v17 + 16 * v14 + 32);
      (*(*(v15 - 8) + 16))(&v20[v13], *(v29 + 8 * v14), v9);
      v12 = v14 + 1;
      if (v14 + 1 == v28)
      {
        break;
      }
    }
  }

  sub_1C5596274();
  return v18;
}

void sub_1C540F7FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[0] = 0;
  v9[1] = a1;
  v10 = *(a1 + 32);
  sub_1C5409B98(&v10, &v8);
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F84();
  sub_1C5409BF0(&v10);
  nullsub_1();
  v6 = v2;
  sub_1C54188A4();
  sub_1C540EFD8(&v6, &unk_1F447E790, v9);
  sub_1C541439C(&v6);
  v3 = v9[0];
  sub_1C5594CF4();
  v5 = v3;
  sub_1C540EFD8(&v5, &unk_1F447E790, a2);
  sub_1C541439C(&v5);
  sub_1C541439C(v9);
}

void *sub_1C540F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  sub_1C5418C84();
  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v27);
  v32[3] = v28;
  v32[2] = 1;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1C5418D80();
  if (sub_1C5596E24())
  {
    v24 = sub_1C55965F4("com.apple.PassbookUIService", 27, 1);
  }

  else
  {
    v24 = sub_1C55965F4("com.apple.Passbook", 18, 1);
  }

  sub_1C540F46C(v24, v2);
  v14 = sub_1C5595ED4();
  v3 = sub_1C55965F4("WALLET", 6, 1);
  v15 = sub_1C54637B4(v3, v4);
  v16 = v5;

  v6 = sub_1C55965F4("%lld payment methods", v12);
  sub_1C54637B4(v6, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0, &qword_1C55ADEE8);
  sub_1C5596E04();
  v13 = v8;
  v35 = *(a1 + 32);
  sub_1C5409B98(&v35, v32);
  v31 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F84();
  sub_1C5409BF0(&v35);
  type metadata accessor for AAUIWalletCardListItem();
  v9 = sub_1C5596744();
  v13[3] = MEMORY[0x1E69E6530];
  v13[4] = MEMORY[0x1E69E65A8];
  *v13 = v9;

  sub_1C540FCD8();
  v17 = sub_1C5596584();
  v18 = v10;

  sub_1C540EFC0(v14, v15, v16, v17, v18, v34);
  memcpy(__dst, v34, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34(__dst);
  v19 = __b[0];
  v20 = __b[1];
  v21 = __b[2];
  v22 = __b[3];
  v23 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  sub_1C540EFD8(v29, &unk_1F4476CD8, a2);
  sub_1C5412D34(v29);
  result = __b;
  sub_1C5412D34(__b);
  return result;
}

uint64_t sub_1C540FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v11 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v21 = a2;
  v20 = a3;
  v13 = sub_1C55954B4();
  v12 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v13, v11, v16, v6);
  v15 = &v10 - v12;
  (*(*(v8 - 8) + 16))(v7);
  swift_storeEnumTagMultiPayload();
  return sub_1C55954C4();
}

void *sub_1C540FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  v21 = sub_1C540EE98();
  v3 = sub_1C55965F4("APPLE_ACCOUNT", 13, 1);
  v22 = sub_1C54637B4(v3, v4);
  v23 = v5;

  v25 = *(a1 + 80);
  v26 = [v25 aa_fullName];
  if (v26)
  {
    v16 = sub_1C5596574();
    v17 = v7;
    MEMORY[0x1E69E5920](v26);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  MEMORY[0x1E69E5920](v25);
  if (v19)
  {
    v14 = v18;
    v15 = v19;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C540EFC0(v21, v22, v23, v14, v15, v30);
  memcpy(__dst, v30, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34(__dst);
  v9 = __b[0];
  v10 = __b[1];
  v11 = __b[2];
  v12 = __b[3];
  v13 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v27[0] = v9;
  v27[1] = v10;
  v27[2] = v11;
  v27[3] = v12;
  v27[4] = v13;
  sub_1C540EFD8(v27, &unk_1F4476CD8, a2);
  sub_1C5412D34(v27);
  result = __b;
  sub_1C5412D34(__b);
  return result;
}

uint64_t sub_1C54100E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v12 = a1;
  v20 = 0;
  v18 = sub_1C540F03C;
  v19 = sub_1C540F290;
  v37 = 0;
  v36 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v2, v3, v4);
  v26 = &v12 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v12 - v13, v7, v8);
  v27 = &v12 - v14;
  v37 = &v12 - v14;
  v36 = v9;
  v10 = *v9;
  v15 = &v38;
  v38 = v10;
  sub_1C5409664(&v38, v35);
  v34 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  v21 = v31;
  v16 = v32;
  v17 = v33;
  sub_1C5373718(v15);
  sub_1C54143D0();
  sub_1C55951F4();
  v25 = sub_1C54172B4();
  sub_1C540EFD8(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_1C540EFD8(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

void *sub_1C5410394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  __b[6] = a2;
  sub_1C5418C84();
  v3 = sub_1C55965F4("com.apple.graphic-icon.applecare", 32, 1);
  sub_1C540F4E0(v3, v4);
  v9 = sub_1C5595ED4();
  sub_1C5594CF4();
  v5 = sub_1C55965F4("THEFT_AND_LOSS_PROTECTION", 25, 1);
  v12 = sub_1C54637B4(v5, v6);
  v13 = v7;

  sub_1C540EFC0(v9, a1, a2, v12, v13, v23);
  memcpy(__dst, v23, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34(__dst);
  v14 = __b[0];
  v15 = __b[1];
  v16 = __b[2];
  v17 = __b[3];
  v18 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  sub_1C540EFD8(v20, &unk_1F4476CD8, a3);
  sub_1C5412D34(v20);
  result = __b;
  sub_1C5412D34(__b);
  return result;
}

uint64_t sub_1C5410564@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v26 = __src;
  v21 = sub_1C5418894;
  v23 = sub_1C541889C;
  v42 = 0;
  __srca = v43;
  __n = 160;
  memcpy(v43, __src, sizeof(v43));
  memcpy(__dst, v43, sizeof(__dst));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v2, v3, v4);
  v31 = &v12 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v12 - v14, v7, v8);
  v32 = &v12 - v15;
  v42 = &v12 - v15;
  v10 = *(v9 + 16);
  v16 = &v44;
  v44 = v10;
  sub_1C5409664(&v44, &v41);
  v40 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  v25 = v38[20];
  v19 = v38[21];
  v20 = v39;
  sub_1C5373718(v16);
  sub_1C540D4D4(v26, v38);
  v22 = swift_allocObject();
  memcpy((v22 + 16), v26, __n);
  sub_1C540D4D4(v26, &v37);
  v24 = v36;
  v36[2] = v26;
  v18 = sub_1C54143D0();
  sub_1C54188A4();
  sub_1C55951F4();
  sub_1C540D6F0(v26);
  v30 = sub_1C5414DAC();
  sub_1C540EFD8(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_1C540EFD8(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

uint64_t sub_1C54108A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v11 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v21 = a2;
  v20 = a3;
  v13 = sub_1C55954B4();
  v12 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v13, v11, v17, v6);
  v15 = &v10 - v12;
  (*(*(v8 - 8) + 16))(v7);
  swift_storeEnumTagMultiPayload();
  return sub_1C55954C4();
}

uint64_t sub_1C5410998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = &v72;
  v40 = a2;
  v74 = 0;
  v44 = &v72;
  v72 = 0u;
  v73 = 0u;
  v3 = sub_1C5594794();
  v19 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v20 = &v18 - v19;
  v74 = a1;
  sub_1C540A500(&v18 - v19);
  v68 = sub_1C55959F4();
  v69 = v7;
  v70 = v8;
  v71 = v9;
  v22 = v68;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v21 = sub_1C5595914();
  v64 = v22;
  v65 = v23;
  v38 = 1;
  v66 = v24 & 1;
  v67 = v25;
  v60 = sub_1C55959C4();
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v29 = v60;
  v27 = v10;
  v28 = v11;
  v30 = v12;

  sub_1C5412EA0(v22, v23, v24 & 1);

  v13 = sub_1C5410CD0();
  v26 = &v59;
  v59 = v13;
  v55 = v29;
  v56 = v27;
  v57 = v28 & 1 & v38;
  v58 = v30;
  v51 = sub_1C5595994();
  v52 = v14;
  v53 = v15;
  v54 = v16;
  v31 = v51;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  sub_1C5410D10(v26);
  sub_1C5412EA0(v29, v27, v28 & 1);

  v35 = v48;
  v48[0] = v31;
  v48[1] = v32;
  v49 = v33 & 1 & v38;
  v50 = v34;
  v41 = MEMORY[0x1E6981148];
  v42 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v48, MEMORY[0x1E6981148], v44);
  sub_1C5414260(v35);
  v36 = v72;
  v37 = v73;
  v39 = *(&v73 + 1);
  sub_1C54130AC(v72, *(&v72 + 1), v73 & 1);
  sub_1C5594CF4();
  v43 = &v45;
  v45 = v36;
  v46 = v37 & 1 & v38;
  v47 = v39;
  sub_1C540EFD8(&v45, v41, v40);
  sub_1C5414260(v43);
  return sub_1C5414260(v44);
}

unint64_t sub_1C5410D3C()
{
  v2 = qword_1EC15BE30;
  if (!qword_1EC15BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDA8, &qword_1C55ADB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD98, &qword_1C55ADB18);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD90, &qword_1C55ADB10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD88, &qword_1C55ADB08);
    sub_1C540D818();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5410EE0()
{
  v2 = qword_1EC159FF8;
  if (!qword_1EC159FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE40, &qword_1C55ADB80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5410F8C()
{
  v2 = qword_1EC15BE48;
  if (!qword_1EC15BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDB8, &qword_1C55ADB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDA8, &qword_1C55ADB28);
    sub_1C5410D3C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54110A4()
{
  v2 = qword_1EC15BE50;
  if (!qword_1EC15BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDC0, &qword_1C55ADB40);
    sub_1C5410F8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541116C(void *a1)
{
  v14 = a1;
  v5 = a1[12];
  swift_unknownObjectRetain();
  swift_getObjectType();
  sub_1C540D4D4(a1, v13);
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0xA0uLL);
  v11 = sub_1C5414330;
  v12 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_1C541153C;
  v10 = &block_descriptor_0;
  v4 = _Block_copy(&aBlock);

  [v5 fetchWalletCardsWithCompletion_];
  _Block_release(v4);
  return swift_unknownObjectRelease();
}

unint64_t sub_1C54112A4()
{
  v2 = qword_1EC15BE58;
  if (!qword_1EC15BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDC8, &qword_1C55ADB48);
    sub_1C54110A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5411348(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for CGSize(uint64_t a1)
{
  v5 = qword_1EC15BE98;
  if (!qword_1EC15BE98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15BE98);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1C5411414(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  sub_1C5594CF4();
  v8 = a1;
  if (a1)
  {
    v9 = v8;
  }

  else
  {
    type metadata accessor for AAUIWalletCardListItem();
    v9 = sub_1C5596E04();
  }

  v12 = *(a2 + 32);
  sub_1C5409B98(&v12, &v7);
  sub_1C5409B98(&v12, &v6);
  v5 = v12;
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50, &unk_1C55ADA70);
  sub_1C5595F94();
  sub_1C5409BF0(&v5);
  sub_1C5409BF0(&v12);
}

uint64_t sub_1C541153C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);

  v3 = MEMORY[0x1E69E5928](a2, v2);
  if (a2)
  {
    type metadata accessor for AAUIWalletCardListItem();
    sub_1C5596714();
    v3 = MEMORY[0x1E69E5920](a2);
  }

  v5(v3);
}

void sub_1C5411614(void *a1@<X8>)
{
  sub_1C55951C4();
  *a1 = v1;
  a1[1] = v2;
}

void sub_1C541165C(uint64_t *result, double *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0;
  v3 = result[1];
  v12 = *result;
  v13 = v3;
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  v9 = a3;
  if (v10 != 0.0 || v5 != 0.0)
  {
    v14 = *(a3 + 48);
    v15 = *(a3 + 64);
    sub_1C5409F74(&v14, v8);
    sub_1C5409F74(&v14, v7);
    v6[0] = v14;
    v6[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
    sub_1C5595F94();
    sub_1C5409FBC(v6);
    sub_1C5409FBC(&v14);
  }
}

unint64_t sub_1C54117BC()
{
  v2 = qword_1EC15BE60;
  if (!qword_1EC15BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDD0, &qword_1C55ADB50);
    sub_1C54112A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5411860()
{
  v2 = qword_1EC15BE68;
  if (!qword_1EC15BE68)
  {
    type metadata accessor for CGSize(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54118E0()
{
  v2 = qword_1EC15BE70;
  if (!qword_1EC15BE70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BE70);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1C541195C()
{
  if ([objc_opt_self() isSolariumEnabled])
  {
    return 0.0;
  }

  else
  {
    return 15.0;
  }
}

void *sub_1C54119C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v40 = a1;
  v39 = a2 & 1;
  v38 = a3;
  v36 = a4;
  v37 = a5;
  LOBYTE(__b[0]) = sub_1C5409594(0) & 1;
  __b[1] = v6;
  LOBYTE(__b[2]) = sub_1C5409594(0) & 1;
  __b[3] = v7;
  type metadata accessor for AAUIWalletCardListItem();
  v8 = sub_1C5596E04();
  __b[4] = sub_1C5409A9C(v8);
  __b[5] = v9;
  v32 = sub_1C5409E40(0, 0, 1);
  v33 = v10;
  v34 = v11;
  v35 = v12;
  __b[6] = v32;
  __b[7] = v10;
  LOBYTE(__b[8]) = v11 & 1;
  __b[9] = v12;
  v13 = sub_1C55965F4("DATA_SYNCED_WITH_ICLOUD", 23, 1);
  v21 = sub_1C54637B4(v13, v14);
  v22 = v15;

  __b[15] = v21;
  __b[16] = v22;
  v16 = sub_1C55965F4("LEARN_MORE_ELLIPSIS", 19, 1);
  v23 = sub_1C54637B4(v16, v17);
  v24 = v18;

  __b[17] = v23;
  __b[18] = v24;
  __b[19] = sub_1C541195C();
  MEMORY[0x1E69E5928](a1, v19);
  __b[10] = a1;
  LOBYTE(__b[11]) = a2;
  swift_unknownObjectRetain();
  __b[12] = a3;
  sub_1C5594CF4();
  __b[13] = a4;
  __b[14] = a5;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1C540D4D4(__dst, v31);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  sub_1C540D6F0(__b);
  return memcpy(a6, __dst, 0xA0uLL);
}

uint64_t sub_1C5411CE0()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5411D0C(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_1C5411D68()
{
  v2 = *(v0 + 8);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5411DA0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1C5411E0C()
{
  v2 = *(v0 + 24);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5411E44(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1C5411EB0@<X0>(uint64_t a1@<X8>)
{
  memset(&v11[25], 0, 0x28uLL);
  memset(v11, 0, 0xC8uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v11[25] = __dst[0];
  v11[26] = __dst[1];
  v11[27] = __dst[2];
  v11[28] = __dst[3];
  v11[29] = __dst[4];
  sub_1C5412728(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE78, &qword_1C55ADB88);
  sub_1C5412CAC();
  sub_1C5412C88();
  sub_1C5596024();
  sub_1C5412D34(v3);
  memcpy(v13, v10, sizeof(v13));
  memcpy(v8, v13, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE88, qword_1C55ADB90);
  sub_1C5412D78();
  sub_1C540EFD8(v8, v5, v11);
  sub_1C5412E00(v8);
  memcpy(v14, v11, sizeof(v14));
  sub_1C5412EE4(v14, v7);
  memcpy(v6, v14, sizeof(v6));
  sub_1C540EFD8(v6, v5, a1);
  sub_1C5412E00(v6);
  return sub_1C5412E00(v11);
}

void *sub_1C541208C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = &v91;
  v53 = a1;
  v50 = a2;
  v127 = 0;
  v126 = 0u;
  v125 = 0u;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  v2 = *a1;
  v3 = a1[1];
  v130 = *(a1 + 4);
  v129 = v3;
  v128 = v2;
  v57 = *(&v2 + 1);
  v51 = v2;
  v58 = v3;
  v52 = v130;
  v54 = sub_1C5595F04();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v53, v54, v4, v5);
  v59 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v125 = v7;
  *(&v125 + 1) = v57;
  v126 = v58;
  v127 = v8;
  v131 = *v9;
  sub_1C5413AF4(&v131, v114);
  v132 = v131;
  if (v131)
  {
    v39 = v132;
    v35 = sub_1C54127B4();
    v36 = v10;
    v37 = v11;
    v38 = v12;
    sub_1C54127C8(v59);
    v40 = sub_1C5595F44();
    (*(v56 + 8))(v59, v54);

    v65 = v40;
    v41 = &v65;
    sub_1C5595B14();
    sub_1C5410D10(v41);
    v62[0] = v114[1];
    v62[1] = v114[2];
    v63 = v115;
    v64 = v116;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8, &unk_1C55ADDF0);
    v43 = sub_1C5413D10();
    sub_1C5410F68();
    v44 = v62;
    sub_1C5595D14();
    sub_1C5410D10(v44);
    v66 = v49[31];
    v13 = v49[32];
    v14 = v49[33];
    v15 = v49[34];
    v70 = v117;
    v69 = v15;
    v68 = v14;
    v67 = v13;
    v60[0] = v66;
    v61 = v117;
    v60[3] = v15;
    v60[2] = v14;
    v60[1] = v13;
    v46 = sub_1C5595E54();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8, &qword_1C55B7380);
    sub_1C5413C6C();
    v47 = v60;
    sub_1C5595B94();

    sub_1C5410D10(v47);
    v72 = v119;
    v71 = v118;
    v76 = v123;
    v75 = v122;
    v74 = v121;
    v73 = v120;
    v78 = v119;
    v77 = v118;
    v82 = v123;
    v81 = v122;
    v80 = v121;
    v79 = v120;
    v134 = v119;
    v133 = v118;
    v138 = v123;
    v137 = v122;
    v136 = v121;
    v135 = v120;
  }

  else
  {
    v48 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v134 = 0u;
    v133 = 0u;
    v138 = 0;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
  }

  v95[1] = v134;
  v95[0] = v133;
  v96 = v138;
  v95[4] = v137;
  v95[3] = v136;
  v95[2] = v135;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEA0, &qword_1C55ADDD8);
  v29 = sub_1C5413B2C();
  v34 = v124;
  v25[0] = v95;
  sub_1C540EFD8(v95, v27, v124);
  sub_1C5413E38(v25[0]);
  v25[3] = sub_1C5595434();
  sub_1C5412728(v53, v90);
  v25[4] = v25;
  MEMORY[0x1EEE9AC00](v25, v16, v17, v18);
  v25[1] = &v25[-4];
  v25[-2] = v19;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0, &unk_1C55ADE00);
  sub_1C5413E98();
  sub_1C5596064();
  sub_1C5412D34(v53);
  v20 = *v49;
  v98 = v49[1];
  v97 = v20;
  v21 = v49[2];
  v22 = v49[3];
  v23 = v49[4];
  v102 = v92;
  v101 = v23;
  v100 = v22;
  v99 = v21;
  v88[1] = v98;
  v88[0] = v97;
  v89 = v92;
  v88[4] = v23;
  v88[3] = v22;
  v88[2] = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00, &unk_1C55B7B00);
  v30 = sub_1C5413F20();
  v33 = v93;
  v26 = v88;
  sub_1C540EFD8(v88, v28, v93);
  sub_1C5413FA8(v26);
  v32 = v86;
  sub_1C5414014(v34, v86);
  v87[0] = v32;
  v31 = v85;
  sub_1C54140E0(v33, v85);
  v87[1] = v31;
  v84[0] = v27;
  v84[1] = v28;
  v83[0] = v29;
  v83[1] = v30;
  sub_1C540F5A0(v87, 2uLL, v84, v83, v50);
  sub_1C5413FA8(v31);
  sub_1C5413E38(v32);
  sub_1C5413FA8(v33);
  return sub_1C5413E38(v34);
}

void *sub_1C5412728(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = a1[1];
  v5 = a1[2];
  sub_1C5594CF4();
  a2[2] = v5;
  a2[3] = a1[3];
  v7 = a1[4];
  sub_1C5594CF4();
  result = a2;
  a2[4] = v7;
  return result;
}

uint64_t sub_1C54127C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6981630];
  v1 = sub_1C5595F04();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1C5412834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v87, 0, sizeof(v87));
  memset(v69, 0, sizeof(v69));
  v88 = a1;
  v90 = *(a1 + 8);
  sub_1C5402BDC(&v90, &v86);
  v85 = v90;
  sub_1C54141E8();
  v81 = sub_1C5595A04();
  v82 = v2;
  v83 = v3;
  v84 = v4;
  v18 = v81;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  sub_1C5595924();
  v77 = v18;
  v78 = v19;
  v79 = v20 & 1;
  v80 = v21;
  v73 = sub_1C55959C4();
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v22 = v73;
  v23 = v5;
  v24 = v6;
  v25 = v7;

  sub_1C5412EA0(v18, v19, v20 & 1);

  v70[0] = v22;
  v70[1] = v23;
  v71 = v24 & 1;
  v72 = v25;
  v36 = MEMORY[0x1E6981148];
  v37 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v70, MEMORY[0x1E6981148], v87);
  sub_1C5414260(v70);
  v89 = *(a1 + 24);
  sub_1C5402BDC(&v89, &v68);
  v67 = v89;
  v63 = sub_1C5595A04();
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  sub_1C5595814();
  v59 = v63;
  v60 = v27;
  v61 = v28 & 1;
  v62 = v29;
  v55 = sub_1C55959C4();
  v56 = v11;
  v57 = v12;
  v58 = v13;
  v30 = v11;
  v31 = v12;
  v32 = v13;

  sub_1C5412EA0(v63, v27, v28 & 1);

  sub_1C5595E64();
  v51 = v55;
  v52 = v30;
  v53 = v31 & 1;
  v54 = v32;
  v47 = sub_1C5595984();
  v48 = v14;
  v49 = v15;
  v50 = v16;
  v33 = v14;
  v34 = v15;
  v35 = v16;

  sub_1C5412EA0(v55, v30, v31 & 1);

  v44[0] = v47;
  v44[1] = v33;
  v45 = v34 & 1;
  v46 = v35;
  sub_1C540EFD8(v44, v36, v69);
  sub_1C5414260(v44);
  sub_1C54142A8(v87, v42);
  v43[0] = v42;
  sub_1C54142A8(v69, v41);
  v43[1] = v41;
  v40[0] = v36;
  v40[1] = v36;
  v39[0] = v37;
  v39[1] = v37;
  sub_1C540F5A0(v43, 2uLL, v40, v39, a2);
  sub_1C5414260(v41);
  sub_1C5414260(v42);
  sub_1C5414260(v69);
  return sub_1C5414260(v87);
}

unint64_t sub_1C5412CAC()
{
  v2 = qword_1EC15BE80;
  if (!qword_1EC15BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE78, &qword_1C55ADB88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE80);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C5412D34(void *a1)
{
}

unint64_t sub_1C5412D78()
{
  v2 = qword_1EC15BE90;
  if (!qword_1EC15BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE88, qword_1C55ADB90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5412E00(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }

  sub_1C5412EA0(*(a1 + 136), *(a1 + 144), *(a1 + 152) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C5412EA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C5412EE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 24))
  {
    v11 = *(a1 + 24);

    *(a2 + 24) = v11;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 40) = *(a1 + 40);
    memcpy((a2 + 48), (a1 + 48), 0x30uLL);
    v12 = *(a1 + 96);

    *(a2 + 96) = v12;
    v13 = *(a1 + 104);

    *(a2 + 104) = v13;
  }

  else
  {
    memcpy((a2 + 24), (a1 + 24), 0x58uLL);
  }

  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 136) = v3;
  *(a2 + 144) = v4;
  *(a2 + 152) = v5 & 1;
  v6 = *(a1 + 160);
  sub_1C5594CF4();
  *(a2 + 160) = v6;
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 168) = v7;
  *(a2 + 176) = v8;
  *(a2 + 184) = v9 & 1;
  v10 = *(a1 + 192);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 192) = v10;
  return result;
}

uint64_t sub_1C54130AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C5594CF4();
  }
}

uint64_t sub_1C54131D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 32)))
      {
        v3 = *(a1 + 32);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1C54132E8(void *result, int a2, int a3)
{
  v3 = result + 20;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[4] = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5413528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5413640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C5413838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C5413944(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

void *sub_1C5413AF4(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1C5413B2C()
{
  v2 = qword_1EC15BEA8;
  if (!qword_1EC15BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEA0, &qword_1C55ADDD8);
    sub_1C5413BC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413BC4()
{
  v2 = qword_1EC15BEB0;
  if (!qword_1EC15BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15BEB8, &unk_1C55ADDE0);
    sub_1C5413C6C();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413C6C()
{
  v2 = qword_1EC15A010;
  if (!qword_1EC15A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15BEC8, &qword_1C55B7380);
    sub_1C5413D10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413D10()
{
  v2 = qword_1EC15A020;
  if (!qword_1EC15A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BED8, &unk_1C55ADDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413DB0()
{
  v2 = qword_1EC15BEE0;
  if (!qword_1EC15BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEE8, qword_1C55AFB30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5413E38(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

unint64_t sub_1C5413E98()
{
  v2 = qword_1EC15BEF8;
  if (!qword_1EC15BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEF0, &unk_1C55ADE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413F20()
{
  v2 = qword_1EC15BF08;
  if (!qword_1EC15BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF00, &unk_1C55B7B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5413FA8(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

void *sub_1C5414014(void *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;

    *a2 = v3;
    a2[1] = a1[1];
    *(a2 + 8) = *(a1 + 8);
    memcpy(a2 + 3, a1 + 3, 0x30uLL);
    v4 = a1[9];

    a2[9] = v4;
    v5 = a1[10];

    a2[10] = v5;
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

uint64_t sub_1C54140E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v12 = *(a1 + 80);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 80) = v12;
  return result;
}

unint64_t sub_1C54141E8()
{
  v2 = qword_1EC159FB0;
  if (!qword_1EC159FB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414260(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_1C54142A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C54143D0()
{
  v2 = qword_1EC15BF90;
  if (!qword_1EC15BF90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C541444C()
{
  v2 = qword_1EC15BF98;
  if (!qword_1EC15BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF68, &qword_1C55ADE60);
    sub_1C54143D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54144F8()
{
  v2 = qword_1EC15BFA0;
  if (!qword_1EC15BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF70, &qword_1C55ADE68);
    sub_1C541444C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54145A0()
{
  v2 = qword_1EC15BFA8;
  if (!qword_1EC15BFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BFB0, &unk_1C55B7210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414628(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);

  return a1;
}

unint64_t sub_1C54146B8()
{
  v2 = qword_1EC15BFB8;
  if (!qword_1EC15BFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF40, &qword_1C55ADE38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414740(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
    (*(*(v2 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90) + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
    if (!(*(*(v6 - 8) + 48))(v5, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
      (*(*(v3 - 8) + 8))(v5);
    }
  }

  return a1;
}

char *sub_1C54148F4(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90);
    __dst = &a2[*(v4 + 48)];
    __src = &a1[*(v4 + 48)];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(__src, 1))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
      (*(*(v5 - 8) + 32))(__dst, __src);
      *&__dst[*(v11 + 36)] = *&__src[*(v11 + 36)];
      (*(v12 + 56))();
    }

    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

unint64_t sub_1C5414BD0()
{
  v2 = qword_1EC15BFC8;
  if (!qword_1EC15BFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD48, &qword_1C55B6D60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414C58()
{
  v2 = qword_1EC15BFD0;
  if (!qword_1EC15BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF30, &qword_1C55ADE28);
    sub_1C5414D00();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414D00()
{
  v2 = qword_1EC15BFD8;
  if (!qword_1EC15BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF28, &qword_1C55ADE20);
    sub_1C5414DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414DAC()
{
  v2 = qword_1EC15BFE0;
  if (!qword_1EC15BFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BFE8, &qword_1C55ADE98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414E34(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C5414F08(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_1C5415064(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

char *sub_1C5415114(char *a1, char *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
    (*(*(v2 - 8) + 16))(a2, a1);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50) + 36);
    v11 = *&a1[v10];

    *&a2[v10] = v11;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90);
    __dst = &a2[*(v3 + 48)];
    __src = &a1[*(v3 + 48)];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(__src, 1))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
      (*(*(v4 - 8) + 16))(__dst, __src);
      v8 = *(v14 + 36);
      v9 = *&__src[v8];

      *&__dst[v8] = v9;
      (*(v15 + 56))();
    }

    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

char *sub_1C541541C(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_1C5415590()
{
  v2 = qword_1EC15BFF0;
  if (!qword_1EC15BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF60, &qword_1C55ADE58);
    sub_1C54146B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415628()
{
  v2 = qword_1EC15BFF8;
  if (!qword_1EC15BFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF38, &qword_1C55ADE30);
    sub_1C5414C58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54156C0(uint64_t a1, uint64_t a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
  v23 = *(*(v22 - 8) + 16);
  v23(a2, a1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  v25 = *(v24 + 36);
  v27 = *(a1 + v25);

  *(a2 + v25) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000, &qword_1C55ADEA0);
  v29 = *(v28 + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(a1 + v29, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
    memcpy((a2 + v29), (a1 + v29), *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
    (*(*(v2 - 8) + 16))();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50) + 36);
    v18 = *(a1 + v29 + v17);

    *(a2 + v29 + v17) = v18;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90);
    __dst = (a2 + v29 + *(v3 + 48));
    __src = (a1 + v29 + *(v3 + 48));
    v21 = *(v24 - 8);
    if ((*(v21 + 48))())
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }

    else
    {
      (v23)(__dst, __src, v22);
      v15 = *(v24 + 36);
      v16 = *&__src[v15];

      *&__dst[v15] = v16;
      (*(v21 + 56))();
    }

    (*(v32 + 56))(a2 + v29, 0, 1, v31);
  }

  v11 = (a2 + *(v28 + 64));
  v12 = (a1 + *(v28 + 64));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
    memcpy(v11, v12, *(*(v7 - 8) + 64));
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
    (*(*(v6 - 8) + 16))(v11, v12);
    v9 = *(v13 + 36);
    v10 = *&v12[v9];

    *&v11[v9] = v10;
    (*(v14 + 56))();
  }

  return a2;
}

unint64_t sub_1C5415BF4()
{
  v2 = qword_1EC15C008;
  if (!qword_1EC15C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF80, &qword_1C55ADE78);
    sub_1C5415C9C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415C9C()
{
  v2 = qword_1EC15C010;
  if (!qword_1EC15C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF78, &qword_1C55ADE70);
    sub_1C5415D48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415D48()
{
  v2 = qword_1EC15C018;
  if (!qword_1EC15C018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C020, &qword_1C55ADEA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415DD0()
{
  v2 = qword_1EC15C028;
  if (!qword_1EC15C028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF20, &qword_1C55ADE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5415E58(uint64_t a1)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
  v9 = *(*(v8 - 8) + 8);
  v9(a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000, &qword_1C55ADEA0);
  v12 = *(v11 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
  if (!(*(*(v1 - 8) + 48))(a1 + v12, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
    (*(*(v2 - 8) + 8))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);

    v7 = a1 + v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90) + 48);
    if (!(*(*(v10 - 8) + 48))())
    {
      (v9)(v7, v8);
    }
  }

  v5 = a1 + *(v11 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
  if (!(*(*(v6 - 8) + 48))(v5, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_1C541613C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030, &qword_1C55ADEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    v20 = *(*(v19 - 8) + 32);
    v20(a2, a1);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
    *(a2 + *(v21 + 36)) = *(a1 + *(v21 + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000, &qword_1C55ADEA0);
    v23 = (a2 + *(v22 + 48));
    v24 = (a1 + *(v22 + 48));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
      memcpy(v23, v24, *(*(v8 - 8) + 64));
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
      (*(*(v4 - 8) + 32))(v23, v24);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);
      *&v23[*(v5 + 36)] = *&v24[*(v5 + 36)];
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90);
      __dst = &v23[*(v6 + 48)];
      __src = &v24[*(v6 + 48)];
      v18 = *(v21 - 8);
      if ((*(v18 + 48))())
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
        memcpy(__dst, __src, *(*(v7 - 8) + 64));
      }

      else
      {
        (v20)(__dst, __src, v19);
        *&__dst[*(v21 + 36)] = *&__src[*(v21 + 36)];
        (*(v18 + 56))();
      }

      (*(v26 + 56))(v23, 0, 1, v25);
    }

    v12 = (a2 + *(v22 + 64));
    v13 = (a1 + *(v22 + 64));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
      memcpy(v12, v13, *(*(v10 - 8) + 64));
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
      (*(*(v9 - 8) + 32))(v12, v13);
      *&v12[*(v14 + 36)] = *&v13[*(v14 + 36)];
      (*(v15 + 56))();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78);
    *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C54166BC()
{
  v2 = qword_1EC15C038;
  if (!qword_1EC15C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF18, &qword_1C55ADE10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5416764(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030, &qword_1C55ADEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    v24 = *(*(v23 - 8) + 16);
    v24(a2, a1);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
    v26 = *(v25 + 36);
    v27 = *(a1 + v26);

    *(a2 + v26) = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000, &qword_1C55ADEA0);
    v29 = (a2 + *(v28 + 48));
    v30 = (a1 + *(v28 + 48));
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60, &qword_1C55ADE58);
      memcpy(v29, v30, *(*(v6 - 8) + 64));
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
      (*(*(v3 - 8) + 16))(v29, v30);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50) + 36);
      v19 = *&v30[v18];

      *&v29[v18] = v19;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90);
      __dst = &v29[*(v4 + 48)];
      __src = &v30[*(v4 + 48)];
      v22 = *(v25 - 8);
      if ((*(v22 + 48))())
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
        memcpy(__dst, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        (v24)(__dst, __src, v23);
        v16 = *(v25 + 36);
        v17 = *&__src[v16];

        *&__dst[v16] = v17;
        (*(v22 + 56))();
      }

      (*(v32 + 56))(v29, 0, 1, v31);
    }

    v12 = (a2 + *(v28 + 64));
    v13 = (a1 + *(v28 + 64));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38, &qword_1C55ADE30);
      memcpy(v12, v13, *(*(v8 - 8) + 64));
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
      (*(*(v7 - 8) + 16))(v12, v13);
      v10 = *(v14 + 36);
      v11 = *&v13[v10];

      *&v12[v10] = v11;
      (*(v15 + 56))();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
    (*(*(v2 - 8) + 16))(a2, a1);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78) + 36);
    v34 = *(a1 + v33);

    *(a2 + v33) = v34;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C5416D4C()
{
  v2 = qword_1EC15C040;
  if (!qword_1EC15C040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF88, &unk_1C55ADE80);
    sub_1C5415BF4();
    sub_1C5415DD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5416DF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030, &qword_1C55ADEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    v10 = *(*(v9 - 8) + 8);
    v10(a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000, &qword_1C55ADEA0);
    v13 = a1 + *(v12 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40, &qword_1C55ADE38);
    if (!(*(*(v2 - 8) + 48))(v13, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
      (*(*(v3 - 8) + 8))(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);

      v8 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90) + 48);
      if (!(*(*(v11 - 8) + 48))())
      {
        (v10)(v8, v9);
      }
    }

    v6 = a1 + *(v12 + 64);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);
    if (!(*(*(v7 - 8) + 48))(v6, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
      (*(*(v4 - 8) + 8))(v6);
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
    (*(*(v1 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78);
  }

  return a1;
}

uint64_t sub_1C541716C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28);

  return a1;
}

uint64_t sub_1C54171FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28, &qword_1C55ADE20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30, &qword_1C55ADE28) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C54172B4()
{
  v2 = qword_1EC15C050;
  if (!qword_1EC15C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C048, &qword_1C55ADEB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C541733C()
{
  v2 = qword_1EC15C058;
  if (!qword_1EC15C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF50, &qword_1C55ADE48);
    sub_1C54172B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54173E8()
{
  v2 = qword_1EC15C060;
  if (!qword_1EC15C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF58, &qword_1C55ADE50);
    sub_1C541733C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417490(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);

  return a1;
}

uint64_t sub_1C5417520(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C54175F4(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_1C5417750(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

char *sub_1C5417800(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_1C5417974()
{
  v2 = qword_1EC15C068;
  if (!qword_1EC15C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF48, &qword_1C55ADE40);
    sub_1C54144F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417A0C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50) + 36);
  v10 = *(a1 + v8);

  *(a2 + v8) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90) + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1 + v11, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48, &qword_1C55ADE40);
    memcpy((a2 + v11), (a1 + v11), *(*(v4 - 8) + 64));
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    (*(*(v3 - 8) + 16))();
    v6 = *(v13 + 36);
    v7 = *(a1 + v11 + v6);

    *(a2 + v11 + v6) = v7;
    (*(v14 + 56))();
  }

  return a2;
}

uint64_t sub_1C5417C5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50, &qword_1C55ADE48);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58, &qword_1C55ADE50);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0, &qword_1C55ADE90) + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70, &qword_1C55ADE68);
  if (!(*(*(v6 - 8) + 48))(a1 + v4, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68, &qword_1C55ADE60);
    (*(*(v2 - 8) + 8))();
  }

  return a1;
}

uint64_t sub_1C5417DE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78);

  return a1;
}

uint64_t sub_1C5417E70(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78, &qword_1C55ADE70);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80, &qword_1C55ADE78) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C5417F20()
{
  v2 = qword_1EC15C088;
  if (!qword_1EC15C088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C078, &qword_1C55ADEC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417FA8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078, &qword_1C55ADEC8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
    (*(*(v2 - 8) + 8))(a1);
    if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090, &qword_1C55ADED8) + 48) + 16))
    {
    }
  }

  return a1;
}

char *sub_1C54180BC(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078, &qword_1C55ADEC8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080, &qword_1C55ADED0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090, &qword_1C55ADED8);
    memcpy(&a2[*(v3 + 48)], &a1[*(v3 + 48)], 0x28uLL);
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

uint64_t sub_1C5418240(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C54182F4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070, &qword_1C55ADEC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_1C5418428(char *a1, char *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078, &qword_1C55ADEC8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080, &qword_1C55ADED0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090, &qword_1C55ADED8);
    __dst = &a2[*(v3 + 48)];
    __src = &a1[*(v3 + 48)];
    if (*(__src + 2))
    {
      v6 = *__src;

      *__dst = v6;
      *(__dst + 1) = *(__src + 1);
      v7 = *(__src + 2);
      sub_1C5594CF4();
      *(__dst + 2) = v7;
      *(__dst + 3) = *(__src + 3);
      v8 = *(__src + 4);
      sub_1C5594CF4();
      *(__dst + 4) = v8;
    }

    else
    {
      memcpy(__dst, __src, 0x28uLL);
    }

    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

void *sub_1C5418630(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8, &qword_1C55ADE98);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070, &qword_1C55ADEC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C5418764()
{
  v2 = qword_1EC15C098;
  if (!qword_1EC15C098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C080, &qword_1C55ADED0);
    sub_1C5417F20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54187FC()
{
  v2 = qword_1EC15C0A0;
  if (!qword_1EC15C0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C070, &qword_1C55ADEC0);
    sub_1C5414DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54188A4()
{
  v2 = qword_1EC15C0A8;
  if (!qword_1EC15C0A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541891C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    sub_1C5594CF4();
    return sub_1C5594CF4();
  }

  return v5;
}

unint64_t sub_1C5418970()
{
  v2 = qword_1EC15C0B8;
  if (!qword_1EC15C0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C0B0, &qword_1C55ADEE0);
    sub_1C54143D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0B8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5418A08(void *a1)
{
  if (a1[2])
  {
  }

  return a1;
}

uint64_t sub_1C5418A60(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090, &qword_1C55ADED8) + 48);
  if (*(a1 + v10 + 16))
  {
    v4 = *(a1 + v10);

    v6 = (a2 + v10);
    *v6 = v4;
    v6[1] = *(a1 + v10 + 8);
    v5 = *(a1 + v10 + 16);
    sub_1C5594CF4();
    v6[2] = v5;
    v6[3] = *(a1 + v10 + 24);
    v7 = *(a1 + v10 + 32);
    sub_1C5594CF4();
    v6[4] = v7;
  }

  else
  {
    memcpy((a2 + v10), (a1 + v10), 0x28uLL);
  }

  return a2;
}

uint64_t sub_1C5418BB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048, &qword_1C55ADEB8);
  (*(*(v1 - 8) + 8))(a1);
  if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090, &qword_1C55ADED8) + 48) + 16))
  {
  }

  return a1;
}

unint64_t sub_1C5418C84()
{
  v2 = qword_1EC159F00;
  if (!qword_1EC159F00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC159F00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for UIUserInterfaceIdiom(uint64_t a1)
{
  v5 = qword_1EC15C0E0;
  if (!qword_1EC15C0E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C0E0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5418D80()
{
  v2 = qword_1EC15C0C8;
  if (!qword_1EC15C0C8)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0C8);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5418E00(uint64_t a2@<X8>)
{
  sub_1C5418E3C();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

void *sub_1C5418EB8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

id sub_1C5418FC8(void *a1)
{
  v42 = a1;
  v52 = 0;
  v64 = 0;
  v63 = 0;
  v60 = 0;
  v41 = 0;
  v49 = sub_1C5594C74();
  v43 = v49;
  v44 = *(v49 - 8);
  v48 = v44;
  v45 = v44;
  v46 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42, v49, v1, v2);
  v3 = &v19 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v3;
  v64 = v4;
  v63 = v5;
  v6 = sub_1C54B05F8();
  (*(v48 + 16))(v3, v6, v49);
  v54 = sub_1C5594C54();
  v50 = v54;
  v53 = sub_1C5596974();
  v51 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v55 = sub_1C5596E04();
  if (os_log_type_enabled(v54, v53))
  {
    v7 = v41;
    v32 = sub_1C5596A74();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v30 = 0;
    v33 = sub_1C5419DC0(0, v29, v29);
    v31 = v33;
    v34 = sub_1C5419DC0(v30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v59 = v32;
    v58 = v33;
    v57 = v34;
    v35 = 0;
    v36 = &v59;
    sub_1C5419E14(0, &v59);
    sub_1C5419E14(v35, v36);
    v56 = v55;
    v37 = &v19;
    MEMORY[0x1EEE9AC00](&v19, v8, v9, v10);
    v38 = &v19 - 6;
    *(&v19 - 4) = v11;
    *(&v19 - 3) = &v58;
    *(&v19 - 2) = &v57;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v40 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v50, v51, "Creating RecoveryContactsView.", v28, 2u);
      v26 = 0;
      sub_1C5419E74(v31, 0, v29);
      sub_1C5419E74(v34, v26, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v27 = v40;
    }
  }

  else
  {

    v27 = v41;
  }

  (*(v45 + 8))(v47, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0F0, &qword_1C55ADF68);
  v12 = v42;
  memset(v61, 0, sizeof(v61));
  v20 = type metadata accessor for RecoveryContactsViewModel(0);
  v13 = sub_1C5404CB4();
  v21 = v62;
  sub_1C54768EC(v42, v61, v20, v13, v62);
  v25 = sub_1C5595484();
  v60 = v25;
  v14 = v25;
  v15 = sub_1C55965F4("RECOVERY_CONTACTS_VIEW_NAVIGATION_TITLE", 39, 1);
  v22 = v16;
  sub_1C54637B4(v15, v16);
  v23 = v17;
  v24 = sub_1C5596554();

  [v25 setTitle_];

  return v25;
}

void *sub_1C54195EC(void *a1)
{
  v13 = a1;
  v18 = 0;
  v17 = 0;
  v12 = sub_1C5594994();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v1, v2, v3);
  v11 = &v8 - v8;
  v18 = v4;
  v17 = v5;
  sub_1C5594984();
  v14 = sub_1C5594944();
  v15 = v6;
  (*(v9 + 8))(v11, v12);
  v16 = sub_1C5419708(v13, v14, v15);

  return v16;
}

void *sub_1C5419708(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v35 = a2;
  v34 = a1;
  v45 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v32 = 0;
  v42 = sub_1C5594C74();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34, v35, v33, v42);
  v3 = &v17 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v3;
  v56 = v4;
  v54 = v5;
  v55 = v6;
  v53 = v7;
  v8 = sub_1C54B05F8();
  (*(v41 + 16))(v3, v8, v42);
  v47 = sub_1C5594C54();
  v43 = v47;
  v46 = sub_1C5596974();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v48 = sub_1C5596E04();
  if (os_log_type_enabled(v47, v46))
  {
    v9 = v32;
    v23 = sub_1C5596A74();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v21 = 0;
    v24 = sub_1C5419DC0(0, v20, v20);
    v22 = v24;
    v25 = sub_1C5419DC0(v21, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v52 = v23;
    v51 = v24;
    v50 = v25;
    v26 = 0;
    v27 = &v52;
    sub_1C5419E14(0, &v52);
    sub_1C5419E14(v26, v27);
    v49 = v48;
    v28 = &v17;
    MEMORY[0x1EEE9AC00](&v17, v10, v11, v12);
    v29 = &v17 - 6;
    *(&v17 - 4) = v13;
    *(&v17 - 3) = &v51;
    *(&v17 - 2) = &v50;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v31 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v43, v44, "Creating RecoveryContactsViewModel.", v19, 2u);
      v17 = 0;
      sub_1C5419E74(v22, 0, v20);
      sub_1C5419E74(v25, v17, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v38 + 8))(v40, v36);
  type metadata accessor for RecoveryContactsViewModel(0);
  v14 = v34;
  sub_1C5594CF4();
  v15 = sub_1C54045FC();
  return sub_1C5404604(v34, v15 & 1, v35, v33);
}

id RecoveryContactsViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for RecoveryContactsViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id RecoveryContactsViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5419DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1C5596A74();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5419E14(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1C5419E74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1C5596A64();
    return sub_1C5596A54();
  }

  return result;
}

unint64_t sub_1C5419F0C()
{
  v2 = qword_1EC159F80;
  if (!qword_1EC159F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541A0AC()
{
  type metadata accessor for NameAndPhotoSharingViewModel(0);
  v4 = sub_1C54907D0();
  v2 = sub_1C5490840();
  v3 = sub_1C5490880();
  v0 = sub_1C54908AC();
  result = sub_1C54908D8(v4, v2, v3, v0);
  qword_1EC160008 = result;
  return result;
}

uint64_t *sub_1C541A114()
{
  if (qword_1EC160000 != -1)
  {
    swift_once();
  }

  return &qword_1EC160008;
}

uint64_t static NameAndPhotoSharingViewModelKey.defaultValue.getter()
{
  v1 = *sub_1C541A114();

  return v1;
}

uint64_t sub_1C541A1A4@<X0>(uint64_t *a1@<X8>)
{
  result = static NameAndPhotoSharingViewModelKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter()
{
  sub_1C541A21C();
  sub_1C55969E4();
  return v1;
}

unint64_t sub_1C541A21C()
{
  v2 = qword_1EC15C0F8;
  if (!qword_1EC15C0F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0F8);
    return WitnessTable;
  }

  return v2;
}

double sub_1C541A298@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a3 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C541A304(uint64_t *a1, void *a2)
{
  v3 = *a1;

  v5 = *a2;
  MEMORY[0x1E69E5928](*a2, a2);
  RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter(uint64_t a1)
{

  sub_1C541A21C();
  sub_1C55969F4();
}

uint64_t (*RUIDecodingUserInfo.nameAndPhotoSharingViewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
  return sub_1C541A458;
}

uint64_t sub_1C541A458(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter(*a1);
  }

  v3 = *a1;

  RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter(v3);
}

uint64_t getEnumTagSinglePayload for NameAndPhotoSharingViewModelKey(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for NameAndPhotoSharingViewModelKey(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1C541A7F8@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v17 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v11 = &v8 - v9;
  v17 = v1;
  (*(*v1 + 312))(v6);

  v12 = sub_1C5594924();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if ((v15)(v11, 1) == 1)
  {
    (*(v13 + 16))(v8, v10 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v12);
    if (v15(v11, 1, v12) != 1)
    {
      sub_1C541A9D8(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v8, v11, v12);
  }
}

uint64_t sub_1C541A9D8(uint64_t a1)
{
  v3 = sub_1C5594924();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C541AA80@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  swift_beginAccess();
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C541AB0C(uint64_t a1)
{
  v12 = a1;
  v13 = sub_1C5594924();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541ACF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v12 = a1;
  v13 = 0;
  v11 = sub_1C5594924();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11, v12, v11, v2);
  v7 = &v6 - v6;
  v13 = v4;
  (*(v9 + 16))(v3);
  (*(v9 + 32))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1C541AE10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 944))();

  v5 = v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  swift_beginAccess();
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t sub_1C541AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v8 = a1;
  v15 = sub_1C5594924();
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v2, v3, v4);
  v14 = &v8 - v9;
  v10 = *v5;

  v17 = v10;
  v16 = v10;
  (*(*v10 + 264))(v6);
  (*(v11 + 32))(v13, v14, v15);
}

uint64_t sub_1C541B020(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v9 = a2;
  v2 = sub_1C5594924();
  v8 = *(v2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2, v6, v2, v3);
  v10 = &v6 - v7;
  (*(v8 + 16))(v4);
  v11 = *v9;

  v13 = v11;
  v12 = v11;
  (*(*v11 + 272))(v10);
}

uint64_t sub_1C541B12C(uint64_t a1)
{
  v36 = a1;
  v24 = 0;
  v46 = 0;
  v45 = 0;
  v23 = 0;
  v38 = sub_1C5594924();
  v25 = v38;
  v26 = *(v38 - 8);
  v37 = v26;
  v27 = v26;
  v28 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v36, v38, v2, 0);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v14 - v30;
  MEMORY[0x1EEE9AC00](v3, &v14 - v30, v4, v5);
  v39 = &v14 - v30;
  v31 = &v14 - v30;
  v46 = v6;
  v45 = v1;
  v32 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v35 = &v44;
  swift_beginAccess();
  v33 = *(v37 + 16);
  v34 = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v39, v32, v38);
  swift_endAccess();
  sub_1C54290E8();
  v42 = sub_1C542908C(v39, v36);
  v40 = *(v37 + 8);
  v41 = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v39, v38);
  if ((v42 & 1) == 0)
  {
    v33(v31, v36, v25);
    v33(v29, v31, v25);
    v15 = v22 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
    v16 = &v43;
    swift_beginAccess();
    (*(v27 + 40))(v15, v29, v25);
    swift_endAccess();
    v40(v31, v25);
    v17 = v23;
    return (v40)(v36, v25, v17);
  }

  v7 = v22;
  v8 = v23;
  KeyPath = swift_getKeyPath();
  v18 = KeyPath;

  v20 = &v14;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v14, v9, v10);
  *(&v14 - 2) = v7;
  *(&v14 - 1) = v12;
  (*(*v7 + 952))(v11);
  v21 = v8;
  if (!v8)
  {

    v17 = v21;
    return (v40)(v36, v25, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C541B514(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v9 = a2;
  v25 = 0;
  v24 = 0;
  v22 = sub_1C5594924();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v11 = *(v19 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v9, v22, v2);
  v17 = &v9 - v10;
  v12 = v10;
  v6 = MEMORY[0x1EEE9AC00](&v9 - v10, v3, v4, v5);
  v21 = &v9 - v12;
  v25 = v15;
  v24 = v7;
  v14 = *(v19 + 16);
  v13 = v19 + 16;
  v14(v6);
  (v14)(v17, v21, v22);
  v16 = v15 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v18 = &v23;
  swift_beginAccess();
  (*(v19 + 40))(v16, v17, v22);
  swift_endAccess();
  return (*(v19 + 8))(v21, v22);
}

void (*sub_1C541B6E0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 6379);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 6379);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541AC4C();
  return sub_1C541B8C0;
}

void sub_1C541B8C0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541B97C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541B97C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541B97C(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541BB18@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  swift_beginAccess();
  sub_1C5429288(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C541BB74(uint64_t a1)
{
  v11 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v8 = &v7 - v7;
  sub_1C5429288(v5, &v7 - v7);
  v9 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v10 = &v12;
  swift_beginAccess();
  sub_1C54293B0(v8, v9);
  swift_endAccess();
  return sub_1C541A9D8(v11);
}

uint64_t sub_1C541BCA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v11 = a1;
  v12 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v10 = &v7 - v8;
  v12 = v5;
  sub_1C5429288(v5, &v7 - v8);
  sub_1C54295D8(v10, v9);
  return sub_1C541A9D8(v11);
}

uint64_t sub_1C541BD58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 944))();

  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  swift_beginAccess();
  sub_1C5429288(v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C541BE18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v9 = a1;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v12 = &v8 - v10;
  v11 = *v5;

  v15 = v11;
  v14 = v11;
  (*(*v11 + 312))(v6);
  sub_1C54295D8(v12, v13);
}

uint64_t sub_1C541BF10(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  v10 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v2, v3, v4);
  v11 = &v7 - v9;
  sub_1C5429288(v5, &v7 - v9);
  v12 = *v10;

  v14 = v12;
  v13 = v12;
  (*(*v12 + 320))(v11);
}

uint64_t sub_1C541C004(const void *a1)
{
  v32 = a1;
  v25 = 0;
  v39 = 0;
  v38 = 0;
  v24 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v26 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32, v2, v3, 0);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v15 - v28;
  MEMORY[0x1EEE9AC00](v4, &v15 - v28, v5, v6);
  v34 = &v15 - v28;
  v29 = &v15 - v28;
  v39 = v7;
  v38 = v1;
  v30 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v31 = &v37;
  swift_beginAccess();
  sub_1C5429288(v30, v34);
  swift_endAccess();
  sub_1C5429700();
  v35 = sub_1C542908C(v34, v32);
  sub_1C541A9D8(v34);
  if ((v35 & 1) == 0)
  {
    sub_1C5429288(v32, v29);
    sub_1C5429288(v29, v27);
    v16 = (v23 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
    v17 = &v36;
    swift_beginAccess();
    sub_1C54293B0(v27, v16);
    swift_endAccess();
    sub_1C541A9D8(v29);
    v18 = v24;
    return sub_1C541A9D8(v32);
  }

  v8 = v23;
  v9 = v24;
  KeyPath = swift_getKeyPath();
  v19 = KeyPath;

  v21 = &v15;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v15, v10, v11);
  *(&v15 - 2) = v8;
  *(&v15 - 1) = v13;
  (*(*v8 + 952))(v12);
  v22 = v9;
  if (!v9)
  {

    v18 = v22;
    return sub_1C541A9D8(v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C541C2D0(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v12 = a2;
  v23 = 0;
  v22 = 0;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v2, v3, v4);
  v17 = &v11 - v13;
  v15 = v13;
  MEMORY[0x1EEE9AC00](v5, &v11 - v13, v6, v7);
  v20 = &v11 - v15;
  v23 = v8;
  v22 = v9;
  sub_1C5429288(v9, &v11 - v15);
  sub_1C5429288(v20, v17);
  v18 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v19 = &v21;
  swift_beginAccess();
  sub_1C54293B0(v17, v18);
  swift_endAccess();
  return sub_1C541A9D8(v20);
}

void (*sub_1C541C410(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 57383);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 57383);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541BC44();
  return sub_1C541C5F0;
}

void sub_1C541C5F0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541C6AC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541C6AC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541C6AC(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541C820()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C541C888(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C541C974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1E69E5928](a1, a2);
  *a3 = a1;
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C541C9C4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4, v1);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C541CA90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 360))(v2);
}

uint64_t sub_1C541CB18(void *a1, uint64_t *a2)
{
  sub_1C5402C1C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 368))(v4);
}

void sub_1C541CBAC(void *a1)
{
  v25 = a1;
  v33 = 0;
  v21 = 0;
  v34 = a1;
  v22 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  v23 = &v32;
  swift_beginAccess();
  v24 = *v22;
  v2 = v24;
  swift_endAccess();
  v31 = v24;
  v30 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C120, &qword_1C55AE0F8);
  sub_1C5429878();
  v27 = &v31;
  v28 = sub_1C542908C(&v31, &v30);
  sub_1C5401EF8(&v31);
  if (v28)
  {
    v3 = v20;
    v4 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;

    v5 = v25;
    v18 = &v12;
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v12, v6, v7);
    (*(*v3 + 952))(v8);
    v19 = v4;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v10 = v25;
    v13 = (v20 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
    v14 = &v29;
    swift_beginAccess();
    v11 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

double sub_1C541CE24(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a2, v2);
  v6 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a2;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

void (*sub_1C541CEE4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 46684);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 46684);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541C910();
  return sub_1C541D0C4;
}

void sub_1C541D0C4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541D180(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541D180(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541D180(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541D2BC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C541D328(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C541D40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C5594CF4();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1C541D470()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  v4 = *v3;
  sub_1C5594CF4();
  swift_endAccess();
  return v4;
}

uint64_t sub_1C541D540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 408))(v2);
  a2[1] = v3;
}

uint64_t sub_1C541D5CC(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 416))(v4, v6);
}

uint64_t sub_1C541D66C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v33 = 0;
  v20 = 0;
  v34 = a1;
  v35 = a2;
  v21 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  v22 = &v32;
  swift_beginAccess();
  v23 = *v21;
  v24 = v21[1];
  sub_1C5594CF4();
  swift_endAccess();
  v31[0] = v23;
  v31[1] = v24;
  v30[0] = v25;
  v30[1] = v26;
  v27 = v31;
  v28 = sub_1C542908C(v31, v30);
  sub_1C5401ECC(v31);
  if (v28)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    sub_1C5594CF4();
    v17 = &v11;
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v11, v5, v6);
    (*(*v3 + 952))(v7);
    v18 = v4;

    v14 = v18;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v12 = (v19 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
    v13 = &v29;
    swift_beginAccess();
    v8 = v12;
    v9 = v26;
    *v12 = v25;
    v8[1] = v9;

    swift_endAccess();

    v14 = v20;
  }
}

uint64_t sub_1C541D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  v6 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;

  swift_endAccess();
}

void (*sub_1C541D9D8(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 47820);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 47820);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541D3A8();
  return sub_1C541DBB8;
}

void sub_1C541DBB8(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541DC74(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541DC74(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541DC74(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541DDB0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C541DDEC()
{
  result = sub_1C55965F4("⚠️", 6, 0);
  qword_1EC16B420 = result;
  qword_1EC16B428 = v1;
  return result;
}

uint64_t *sub_1C541DE30()
{
  if (qword_1EC160090 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B420;
}

uint64_t sub_1C541DE90()
{
  v1 = *sub_1C541DE30();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C541DECC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C541DF2C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C541E000()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541E060(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541E140()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541E204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 480))(v2) & 1;
}

uint64_t sub_1C541E290(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 488))(v4 & 1);
}

uint64_t sub_1C541E318(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C541E534(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541E5B0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 7895);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 7895);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541E0BC();
  return sub_1C541E790;
}

void sub_1C541E790(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541E84C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541E84C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541E84C(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541E994()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541E9F4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541EAB4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541EB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 528))(v2) & 1;
}

uint64_t sub_1C541EC04(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 536))(v4 & 1);
}

uint64_t sub_1C541EC8C(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C541EEA8(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541EF24(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 13436);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 13436);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541EA50();
  return sub_1C541F104;
}

void sub_1C541F104(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541F1C0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541F1C0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541F1C0(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541F2FC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541F35C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541F41C()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541F4E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 576))(v2) & 1;
}

uint64_t sub_1C541F56C(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 584))(v4 & 1);
}

uint64_t sub_1C541F5F4(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C541F810(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541F88C(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 1520);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 1520);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541F3B8();
  return sub_1C541FA6C;
}

void sub_1C541FA6C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541FB28(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541FB28(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541FB28(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C541FC64()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541FCC4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541FD84()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541FE48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 624))(v2) & 1;
}

uint64_t sub_1C541FED4(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 632))(v4 & 1);
}

uint64_t sub_1C541FF5C(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C5420178(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C54201F4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 21308);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 21308);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541FD20();
  return sub_1C54203D4;
}

void sub_1C54203D4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420490(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420490(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5420490(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C54205CC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C542062C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C54206EC()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C54207B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 672))(v2) & 1;
}

uint64_t sub_1C542083C(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 680))(v4 & 1);
}

uint64_t sub_1C54208C4(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C5420AE0(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C5420B5C(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 63188);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 63188);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5420688();
  return sub_1C5420D3C;
}

void sub_1C5420D3C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420DF8(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420DF8(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5420DF8(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C5420F34()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C5420F94(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5421054()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C5421118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 720))(v2) & 1;
}

uint64_t sub_1C54211A4(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 728))(v4 & 1);
}

uint64_t sub_1C542122C(int a1)
{
  v22 = a1;
  v17 = a1;
  v27 = 0;
  v18 = 0;
  v28 = a1;
  v19 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  v20 = &v26;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v25 = v21;
  v24 = v22;
  if (sub_1C542908C(&v25, &v24))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
    v10 = v23;
    swift_beginAccess();
    *v9 = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1C5421448(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C54214C4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 23095);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 23095);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5420FF0();
  return sub_1C54216A4;
}

void sub_1C54216A4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5421760(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5421760(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5421760(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C542189C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate;
  v2 = sub_1C5594924();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5421908()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5421970(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5421A5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1E69E5928](a1, a2);
  *a3 = a1;
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5421AB4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4, v1);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C5421B80@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C5421AB4();
}

uint64_t sub_1C5421BDC(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);

  sub_1C5421C58(v3);
}

void sub_1C5421C58(void *a1)
{
  v25 = a1;
  v24 = 0;
  v31 = 0;
  v21 = 0;
  v32 = a1;
  v22 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  v23 = &v30;
  swift_beginAccess();
  v27 = *v22;
  v2 = v27;
  swift_endAccess();
  v26 = type metadata accessor for PendingBirthdayModel(0);
  sub_1C5429C5C();
  v28 = sub_1C5429BE8(v27, v25, v26);

  if (v28)
  {
    v3 = v20;
    v4 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;

    v5 = v25;
    v18 = &v12;
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v12, v6, v7);
    (*(*v3 + 952))(v8);
    v19 = v4;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v10 = v25;
    v13 = (v20 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
    v14 = &v29;
    swift_beginAccess();
    v11 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

double sub_1C5421EB0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a2, v2);
  v6 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a2;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

void (*sub_1C5421F74(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 65003);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 65003);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54219F8();
  return sub_1C5422154;
}

void sub_1C5422154(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422210(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422210(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5422210(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C542234C()
{
  sub_1C5594E24();
  sub_1C5429D08();
  return sub_1C5596424();
}

uint64_t sub_1C5422384()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54223E4(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C54224B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C5594CF4();
  *a2 = a1;
}

uint64_t sub_1C5422500()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  v4 = *v3;
  sub_1C5594CF4();
  swift_endAccess();
  return v4;
}

uint64_t sub_1C54225C4@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C5422500();
}

uint64_t sub_1C5422620(void *a1, void *a2)
{
  sub_1C540955C(a1, &v4);
  v3 = v4;

  sub_1C5422688(v3);
}

uint64_t sub_1C5422688(uint64_t a1)
{
  v21 = a1;
  v29 = 0;
  v17 = 0;
  v30 = a1;
  v18 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  v19 = &v28;
  swift_beginAccess();
  v20 = *v18;
  sub_1C5594CF4();
  swift_endAccess();
  v27 = v20;
  v26 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C150, &qword_1C55AE268);
  sub_1C5429D88();
  v23 = &v27;
  v24 = sub_1C542908C(&v27, &v26);
  sub_1C541439C(&v27);
  if (v24)
  {
    v2 = v16;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    sub_1C5594CF4();
    v14 = &v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v8, v4, v5);
    (*(*v2 + 952))(v6);
    v15 = v3;

    v11 = v15;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v9 = (v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
    v10 = &v25;
    swift_beginAccess();
    *v9 = v21;

    swift_endAccess();

    v11 = v17;
  }
}

uint64_t sub_1C5422900(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  v4 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  *v4 = a2;

  swift_endAccess();
}

void (*sub_1C54229A4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 46432);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 46432);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5422454();
  return sub_1C5422B84;
}

void sub_1C5422B84(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422C40(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422C40(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5422C40(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C5422D94()
{
  v0 = sub_1C55965F4("Birthday", 8, 1);
  v3 = sub_1C54637B4(v0, v1);

  return v3;
}

uint64_t *sub_1C5422E90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v75 = a1;
  v67 = a2;
  v65 = a3;
  v71 = a4;
  v81 = a5;
  v66 = a6;
  v7 = v6;
  v83 = v7;
  v58 = *v7;
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  v59 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v60 = &v53 - v59;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v61 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v62 = &v53 - v61;
  v63 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v53 - v61, v18, v19, v20);
  v90 = &v53 - v63;
  v64 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v53 - v63, v22, v23, v24);
  v86 = &v53 - v64;
  v73 = 0;
  v92 = sub_1C5594924();
  v88 = *(v92 - 8);
  v89 = v92 - 8;
  v69 = v88[8];
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75, v67, v65, v92);
  v70 = &v53 - v68;
  v29 = MEMORY[0x1EEE9AC00](v25, v26, v27, v28);
  v78 = &v53 - v30;
  v101 = v31;
  v100 = v32;
  v98 = v33;
  v99 = v71;
  v97 = a5;
  v96 = v34;
  v95 = v83;
  v82 = &qword_1EC160000;
  v35 = v88[7];
  v91 = 1;
  v35(v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB, 1, v29);
  v36 = v73;
  v37 = v83;
  *(v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings) = v73;
  *(v37 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask) = v36;
  v72 = 0;
  sub_1C541E120(0, v37 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  sub_1C541E120(v91 & 1, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  sub_1C541E120(v72 & 1, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  sub_1C541E120(v72 & 1, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  sub_1C541E120(v72 & 1, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  sub_1C541E120(v72 & 1, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  v74 = sub_1C5594E24();
  sub_1C5429D08();
  v38 = sub_1C5596424();
  sub_1C54224B8(v38, (v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables));
  v39 = sub_1C5428020();
  sub_1C5421A5C(v39, *v83, (v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter));
  sub_1C5594B14();
  v76 = v88[2];
  v77 = v88 + 2;
  v76(v78, v75, v92);
  v79 = v88[4];
  v80 = v88 + 4;
  v79(v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v78, v92);
  MEMORY[0x1E69E5928](a5, v40);
  v41 = sub_1C5421A5C(a5, *v83, (v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel));
  v42 = *a5;
  v87 = MEMORY[0x1E69E7D40];
  (*((v42 & *MEMORY[0x1E69E7D40]) + 0x68))(v41);
  v43 = v81;
  v85 = *v83;
  v84 = v83 + v82[23];
  sub_1C541A9D8(v84);
  v44 = sub_1C541BCA8(v86, v84);
  (*((*v43 & *v87) + 0x68))(v44);
  v93 = v88[6];
  v94 = v88 + 6;
  if (v93(v90, v91, v92) == 1)
  {
    v76(v70, v75, v92);
    if (v93(v90, 1, v92) != 1)
    {
      sub_1C541A9D8(v90);
    }
  }

  else
  {
    v79(v70, v90, v92);
  }

  v45 = v81;
  v46 = sub_1C541ACF0(v70, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday);
  (*((*v45 & *MEMORY[0x1E69E7D40]) + 0x68))(v46);
  v57 = (v93)(v62, 1, v92) != 1;
  v56 = v57;
  sub_1C541A9D8(v62);
  sub_1C541E120(v56, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  sub_1C5423BF8(v67, v60);
  sub_1C5429EA0(v60, v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange);
  MEMORY[0x1E69E5928](v66, v47);
  *(v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider) = v66;
  if ([objc_opt_self() deviceIsiPad])
  {
    v55 = 20.0;
  }

  else
  {
    v55 = 16.0;
  }

  v48 = v83;
  v49 = v71;
  v50 = v65;
  *(v83 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_horizontalPadding) = v55;
  sub_1C541D40C(v50, v49, (v48 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title));
  sub_1C5424348();
  sub_1C54250DC();
  MEMORY[0x1E69E5920](v66);
  v51 = MEMORY[0x1E69E5920](v81);
  v54 = v88[1];
  v53 = v88 + 1;
  v54(v67, v92, v51);
  (v54)(v75, v92);
  return v83;
}

void sub_1C5423988(void *a1)
{
  v25 = a1;
  v24 = 0;
  v31 = 0;
  v21 = 0;
  v32 = a1;
  v22 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  v23 = &v30;
  swift_beginAccess();
  v27 = *v22;
  v2 = v27;
  swift_endAccess();
  v26 = sub_1C5429F54();
  sub_1C5429FB8();
  v28 = sub_1C5429BE8(v27, v25, v26);

  if (v28)
  {
    v3 = v20;
    v4 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;

    v5 = v25;
    v18 = &v12;
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v12, v6, v7);
    (*(*v3 + 952))(v8);
    v19 = v4;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v10 = v25;
    v13 = (v20 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
    v14 = &v29;
    swift_beginAccess();
    v11 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

uint64_t sub_1C5423BF8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v55 = a1;
  v36 = "Fatal error";
  v37 = "Unexpectedly found nil while unwrapping an Optional value";
  v38 = "AppleAccountUI/BirthdayPickerRowViewModel.swift";
  v39 = "Range requires lowerBound <= upperBound";
  v40 = "Swift/ClosedRange.swift";
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178, &qword_1C55AE298);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v2, v3, v4);
  v43 = &v28 - v42;
  v44 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v45 = &v28 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v10, v11, v12);
  v48 = &v28 - v47;
  v72 = &v28 - v47;
  v51 = 0;
  v59 = sub_1C5594A64();
  v56 = *(v59 - 8);
  v57 = v59 - 8;
  v49 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v13, v14, v15);
  v58 = &v28 - v49;
  v63 = sub_1C5594A74();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v50 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63, v16, v17, v18);
  v62 = &v28 - v50;
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v19, v20, v21);
  v66 = &v28 - v52;
  v68 = sub_1C5594924();
  v64 = *(v68 - 8);
  v65 = v68 - 8;
  v53 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v22, v23, v24);
  v54 = &v28 - v53;
  v71 = &v28 - v53;
  v70 = v25;
  v69 = v26;
  sub_1C5594A44();
  (*(v56 + 104))(v58, *MEMORY[0x1E6969A68], v59);
  sub_1C5409740();
  v67 = 1;
  sub_1C5594A34();
  (*(v56 + 8))(v58, v59);
  (*(v60 + 8))(v62, v63);
  if ((*(v64 + 48))(v66, v67, v68) == 1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v33 = *(v64 + 32);
  v34 = v64 + 32;
  v33(v54, v66, v68);
  sub_1C542A064();
  if ((sub_1C55964B4() & 1) == 0)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v29 = *(v64 + 16);
  v28 = v64 + 16;
  v29(v45, v54, v68);
  v29(v45 + *(v41 + 48), v55, v68);
  sub_1C542A0E4(v45, v43);
  v30 = v43 + *(v41 + 48);
  (v33)(v48);
  v32 = *(v64 + 8);
  v31 = v64 + 8;
  v32(v30, v68);
  sub_1C542A198(v45, v43);
  v33((v48 + *(v46 + 36)), (v43 + *(v41 + 48)), v68);
  v32(v43, v68);
  sub_1C54297C4(v48, v35);
  sub_1C542A24C(v48);
  return (v32)(v54, v68);
}

uint64_t sub_1C5424348()
{
  v29 = MEMORY[0x1E69E85E0];
  v30 = &unk_1C55AE2B0;
  v36 = 0;
  v35 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v31 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v32 = &v19 - v31;
  v36 = v0;
  v33 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  *&v6 = MEMORY[0x1E69E5928](v33, v5).n128_u64[0];
  v34 = [v33 ageRangeCache];
  *&v8 = MEMORY[0x1E69E5920](v33).n128_u64[0];
  if (v34)
  {
    v27 = v34;
    v24 = v34;
    v25 = [v34 ageRangeSettings];
    MEMORY[0x1E69E5920](v24);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v22 = v23;
    v9 = v28;
    v21 = v23;
    v35 = v23;
    v10 = MEMORY[0x1E69E5928](v23, v7);
    (*(*v9 + 368))(v21, v10);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    v19 = 0;
    v11 = sub_1C5596814();
    (*(*(v11 - 8) + 56))(v32, 1);

    sub_1C55967E4();
    v20 = sub_1C55967D4();
    v12 = swift_allocObject();
    v13 = v29;
    v14 = v28;
    v15 = v19;
    v16 = v32;
    v17 = v30;
    v12[2] = v20;
    v12[3] = v13;
    v12[4] = v14;
    sub_1C54061EC(v15, v15, v16, v17, v12, MEMORY[0x1E69E7CA8] + 8);
  }

  return sub_1C54250DC();
}

uint64_t sub_1C54245FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v4[18] = v4;
  v4[19] = 0;
  v4[21] = 0;
  v5 = sub_1C5594C74();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[19] = a4;
  sub_1C55967E4();
  v4[30] = sub_1C55967D4();
  v4[31] = sub_1C55967A4();
  v4[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5424738);
}

uint64_t sub_1C5424738(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  *(v2 + 144) = v2;
  v6 = *(v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  *(v2 + 264) = v6;
  MEMORY[0x1E69E5928](v6, a2);
  *(v2 + 16) = *(v2 + 144);
  *(v2 + 56) = v2 + 160;
  *(v2 + 24) = sub_1C5424884;
  v5 = swift_continuation_init();
  *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1C8, &qword_1C55AE468);
  *(v2 + 112) = v5;
  *(v2 + 80) = MEMORY[0x1E69E9820];
  *(v2 + 88) = 1107296256;
  *(v2 + 92) = 0;
  *(v2 + 96) = sub_1C5424EE4;
  *(v2 + 104) = &block_descriptor_1;
  [v6 refreshAgeRangeWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v2 + 16);
}

uint64_t sub_1C5424884()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[34] = v1;
  if (v1)
  {
    v2 = sub_1C5424AE0;
  }

  else
  {
    v2 = sub_1C54249EC;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54249EC()
{
  v4 = v0[33];
  v1 = v0[26];
  v0[18] = v0;
  (*(*v1 + 368))(v0[20]);
  MEMORY[0x1E69E5920](v4);

  v2 = *(v0[18] + 8);

  return v2();
}

uint64_t sub_1C5424AE0()
{
  v18 = v0[34];
  v17 = v0[33];
  v16 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v17);
  v1 = v18;
  v0[21] = v18;
  v2 = sub_1C54B05F8();
  (*(v19 + 16))(v16, v2, v20);
  v22 = sub_1C5594C54();
  v21 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v23 = sub_1C5596E04();
  if (os_log_type_enabled(v22, v21))
  {
    buf = sub_1C5596A74();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v12 = sub_1C5419DC0(0, v10, v10);
    v13 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v15 + 176) = buf;
    *(v15 + 184) = v12;
    *(v15 + 192) = v13;
    sub_1C5419E14(0, (v15 + 176));
    sub_1C5419E14(0, (v15 + 176));
    *(v15 + 200) = v23;
    v14 = swift_task_alloc();
    v14[2] = v15 + 176;
    v14[3] = v15 + 184;
    v14[4] = v15 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, v22, v21, "Encountered error fetching age range cache.", buf, 2u);
    sub_1C5419E74(v12, 0, v10);
    sub_1C5419E74(v13, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v9 = *(v15 + 272);
  v7 = *(v15 + 232);
  v8 = *(v15 + 216);
  v6 = *(v15 + 224);
  v3 = MEMORY[0x1E69E5920](v22);
  (*(v6 + 8))(v7, v8, v3);

  v4 = *(*(v15 + 144) + 8);

  return v4();
}

double sub_1C5424EE4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v3);
  v13 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    v8 = sub_1C5429990();
    sub_1C542501C(v13, a3, v8);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v4);
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      sub_1C5596E44();
      __break(1u);
    }

    v14 = v9;
    v5 = sub_1C5429990();
    sub_1C5425080(v13, &v14, v5);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C542501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E4F0, &qword_1C55AE470);
  return sub_1C542AC5C(v7, a1, a3, v3, MEMORY[0x1E69E7288]);
}

uint64_t sub_1C54250DC()
{
  v8 = sub_1C542A3C8;
  v18 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450, &qword_1C55AE2B8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v1, v2, v3);
  v12 = &v5 - v6;
  v18 = v0;
  v7 = sub_1C5421AB4();
  (*((*v7 & *MEMORY[0x1E69E7D40]) + 0x80))();
  MEMORY[0x1E69E5920](v7);
  v9 = swift_allocObject();

  swift_weakInit();

  sub_1C542A3D0();
  v16 = sub_1C5594EB4();

  (*(v10 + 8))(v12, v13);
  v14 = v17;
  v15 = sub_1C54229A4(v17);
  sub_1C5594E14();
  v15();
}

uint64_t sub_1C54252E0(const void *a1, uint64_t a2)
{
  v51 = a1;
  v49 = a2;
  v40 = MEMORY[0x1E69E85E0];
  v50 = 0;
  v41 = &unk_1C55AE448;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v43 = &v30 - v42;
  v44 = sub_1C5594924();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v6, v7, v8);
  v48 = &v30 - v47;
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8);
  v53 = v52;
  v54 = *(v52 + 64);
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v49, v9, v50);
  v56 = &v30 - v55;
  v57 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v12, &v30 - v55, v13);
  v58 = &v30 - v57;
  v65 = v14;
  v59 = v15 + 16;
  v64 = v15 + 16;
  v60 = &v63;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v39 = Strong;
    v17 = Strong;
    v36 = Strong;
    v62 = Strong;
    sub_1C5429288(v51, v58);
    v18 = (*(*v17 + 320))(v58);
    (*(*v36 + 312))(v18);

    v37 = *(v45 + 48);
    v38 = v45 + 48;
    if (v37(v56, 1, v44) == 1)
    {
      (*(v45 + 16))(v48, v36 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v44);
      if (v37(v56, 1, v44) != 1)
      {
        sub_1C541A9D8(v56);
      }
    }

    else
    {
      (*(v45 + 32))(v48, v56, v44);
    }

    v19 = v36;

    (*(*v19 + 272))(v48);
    v34 = 0;
    v20 = sub_1C5596814();
    (*(*(v20 - 8) + 56))(v43, 1);
    sub_1C5429288(v51, v58);

    sub_1C55967E4();
    v31 = sub_1C55967D4();
    v32 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v33 = (v32 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v40;
    v23 = v32;
    v24 = v21;
    v25 = v58;
    v35 = v24;
    *(v24 + 16) = v31;
    *(v24 + 24) = v22;
    sub_1C54295D8(v25, (v24 + v23));
    v26 = v34;
    v27 = v43;
    v28 = v41;
    v29 = v35;
    *(v35 + v33) = v36;
    sub_1C54061EC(v26, v26, v27, v28, v29, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1C5425874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_1C55967E4();
  v5[7] = sub_1C55967D4();
  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C542593C);
}

uint64_t sub_1C542593C()
{
  v5 = *(v0 + 40);
  *(v0 + 16) = v0;
  v1 = sub_1C5594924();
  if ((*(*(v1 - 8) + 48))(v5, 1) == 1)
  {
    (*(**(v4 + 48) + 728))(0);
  }

  else
  {
    (*(**(v4 + 48) + 728))(1);
  }

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1C5425AF8(uint64_t a1)
{
  v78 = a1;
  v73 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v84 = 0;
  v83 = 0;
  v65 = sub_1C5594C74();
  v66 = *(v65 - 8);
  v67 = v66;
  MEMORY[0x1EEE9AC00](0, v65, v2, v3);
  v68 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C5594924();
  v70 = *(v69 - 8);
  v71 = v70;
  MEMORY[0x1EEE9AC00](v73, v69, v5, v6);
  v72 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C55946F4();
  v75 = *(v74 - 8);
  v76 = v75;
  MEMORY[0x1EEE9AC00](v73, v74, v8, v9);
  v77 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v77;
  v79 = sub_1C5594A74();
  v80 = *(v79 - 8);
  v81 = v80;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v78, v79, v11, v12);
  v82 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v82;
  v91 = v15;
  v90 = v1;
  v89 = (*(*v1 + 360))(v13);
  if (v89)
  {
    v60 = v89;
    v16 = v89;
    sub_1C5401EF8(&v89);
    v61 = [v60 u13Limit];

    v62 = v61;
    v63 = 0;
  }

  else
  {
    sub_1C5401EF8(&v89);
    v62 = 0;
    v63 = 1;
  }

  v59 = v62;
  if (v63)
  {
    v20 = v68;
    v21 = sub_1C54B05F8();
    (*(v67 + 16))(v20, v21, v65);
    v48 = sub_1C5594C54();
    v45 = v48;
    v47 = sub_1C5596954();
    v46 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v49 = sub_1C5596E04();
    if (os_log_type_enabled(v48, v47))
    {
      v44 = v64;
      v36 = sub_1C5596A74();
      v32 = v36;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v34 = 0;
      v37 = sub_1C5419DC0(0, v33, v33);
      v35 = v37;
      v38 = sub_1C5419DC0(v34, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88 = v36;
      v87 = v37;
      v86 = v38;
      v39 = 0;
      v40 = &v88;
      sub_1C5419E14(0, &v88);
      sub_1C5419E14(v39, v40);
      v85 = v49;
      v41 = v28;
      MEMORY[0x1EEE9AC00](v28, v22, v23, v24);
      v42 = &v28[-6];
      v28[-4] = v25;
      v28[-3] = &v87;
      v28[-2] = &v86;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      v26 = v44;
      sub_1C55966B4();
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v45, v46, "BirthdayPickerRowViewModel - Missing age range settings.", v32, 2u);
        v31 = 0;
        sub_1C5419E74(v35, 0, v33);
        sub_1C5419E74(v38, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    (*(v67 + 8))(v68, v65);
    sub_1C542A458();
    v28[1] = 0;
    v29 = 0;
    v30 = swift_allocError();
    swift_willThrow();
    return v29;
  }

  else
  {
    v58 = v59;
    v52 = v59;
    v84 = v59;
    sub_1C5594A44();
    v54 = sub_1C5594A64();
    v53 = sub_1C5596E04();
    (*(*(v54 - 8) + 104))(v17, *MEMORY[0x1E6969A68]);
    sub_1C540FCD8();
    v55 = v18;
    sub_1C542A64C();
    v56 = sub_1C5596874();
    sub_1C5594914();
    sub_1C55949F4();
    (*(v71 + 8))(v72, v69);

    v57 = sub_1C55946E4();
    if ((v19 & 1) != 0 || (v51 = v57, v83 = v51, v51 >= v52))
    {
      (*(v76 + 8))(v77, v74);
      (*(v81 + 8))(v82, v79);
      v50 = 0;
    }

    else
    {
      (*(v76 + 8))(v77, v74);
      (*(v81 + 8))(v82, v79);
      v50 = 1;
    }

    return v50 & 1;
  }
}

uint64_t sub_1C5426418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v57 = a1;
  v31 = "Fatal error";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v33 = "AppleAccountUI/BirthdayPickerRowViewModel.swift";
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v34 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v78 = &v29 - v34;
  v77 = 0;
  v35 = sub_1C55946F4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77, v6, v7, v8);
  v72 = &v29 - v38;
  v86 = &v29 - v38;
  v39 = (*(*(sub_1C5594AA4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77, v9, v10, v11);
  v68 = &v29 - v39;
  v65 = sub_1C55949D4();
  v45 = *(v65 - 8);
  v46 = v65 - 8;
  v40 = (v45[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77, v12, v13, v14);
  v64 = &v29 - v40;
  v74 = sub_1C5594A74();
  v59 = *(v74 - 8);
  v60 = v74 - 8;
  v43 = v59[8];
  v41 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64, v15, v65, v16);
  v69 = &v29 - v41;
  v85 = &v29 - v41;
  v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v18, v19, v20);
  v73 = &v29 - v42;
  v24 = MEMORY[0x1EEE9AC00](v21, &v29 - v42, v22, v23);
  v47 = &v29 - v25;
  v84 = &v29 - v25;
  v83 = v57;
  v82 = v44;
  v61 = MEMORY[0x1E6969868];
  v63 = v45[13];
  v62 = v45 + 13;
  v63(v24);
  sub_1C55949E4();
  v67 = v45[1];
  v66 = v45 + 1;
  v67(v64, v65);
  sub_1C5594A94();
  sub_1C5594A54();
  v71 = v59[2];
  v70 = v59 + 2;
  v71(v73, v47, v74);
  v55 = sub_1C5594A64();
  v54 = sub_1C5596E04();
  v51 = v26;
  v48 = *(v55 - 8);
  v49 = v55 - 8;
  v53 = *(v48 + 104);
  v52 = v48 + 104;
  v53();
  v50 = *(v48 + 72);
  (v53)(v51 + v50, *MEMORY[0x1E6969A78], v55);
  (v53)(v51 + 2 * v50, *MEMORY[0x1E6969A48], v55);
  sub_1C540FCD8();
  v56 = v27;
  sub_1C542A64C();
  v58 = sub_1C5596874();
  sub_1C5594A04();

  v76 = v59[1];
  v75 = v59 + 1;
  v76(v73, v74);
  (v63)(v64, *v61, v65);
  sub_1C55949E4();
  v67(v64, v65);
  sub_1C5426C34(v68);
  sub_1C5594A54();
  v71(v73, v69, v74);
  sub_1C5594A24();
  v76(v73, v74);
  v79 = sub_1C5594924();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  if ((*(v80 + 48))(v78, 1) == 1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  (*(v80 + 32))(v30, v78, v79);
  v76(v69, v74);
  (*(v36 + 8))(v72, v35);
  return (v76)(v47, v74);
}

uint64_t sub_1C5426C34@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1C0, &qword_1C55AE438);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v10 = &v6 - v8;
  v9 = 0;
  sub_1C5594A84();
  v11 = sub_1C5594AA4();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  result = (*(v12 + 48))(v10, 1);
  if (result != 1)
  {
    return (*(v12 + 32))(v7, v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5426D5C(uint64_t a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 304) = 0;
  v3 = sub_1C5594C74();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5426EBC);
}

uint64_t sub_1C5426EBC()
{
  v1 = v0[23];
  v2 = v0[22];
  v0[2] = v0;
  v44 = (*(*v1 + 864))(v2);
  *(v43 + 304) = (v44 & 1) == 0;
  if (v44)
  {
    v13 = *(v43 + 216);
    v25 = *(v43 + 192);
    v24 = *(v43 + 200);
    v14 = sub_1C54B05F8();
    (*(v24 + 16))(v13, v14, v25);
    oslog = sub_1C5594C54();
    v26 = sub_1C5596934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v28 = sub_1C5596E04();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_1C5596A74();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v21 = sub_1C5419DC0(0, v19, v19);
      v22 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v43 + 80) = buf;
      *(v43 + 88) = v21;
      *(v43 + 96) = v22;
      sub_1C5419E14(0, (v43 + 80));
      sub_1C5419E14(0, (v43 + 80));
      *(v43 + 104) = v28;
      v23 = swift_task_alloc();
      v23[2] = v43 + 80;
      v23[3] = v43 + 88;
      v23[4] = v43 + 96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, oslog, v26, "BirthdayPickerRowViewModel - Skip clearing. DOB is not U13", buf, 2u);
      sub_1C5419E74(v21, 0, v19);
      sub_1C5419E74(v22, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v17 = *(v43 + 216);
    v18 = *(v43 + 192);
    v16 = *(v43 + 200);
    v15 = MEMORY[0x1E69E5920](oslog);
    (*(v16 + 8))(v17, v18, v15);

    v11 = *(*(v43 + 16) + 8);
  }

  else
  {
    v3 = *(v43 + 232);
    v39 = *(v43 + 192);
    v38 = *(v43 + 200);
    v4 = sub_1C54B05F8();
    v5 = *(v38 + 16);
    *(v43 + 240) = v5;
    *(v43 + 248) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v3, v4, v39);
    v41 = sub_1C5594C54();
    v40 = sub_1C5596934();
    *(v43 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v42 = sub_1C5596E04();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = sub_1C5596A74();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v35 = sub_1C5419DC0(0, v33, v33);
      v36 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v43 + 144) = v34;
      *(v43 + 152) = v35;
      *(v43 + 160) = v36;
      sub_1C5419E14(0, (v43 + 144));
      sub_1C5419E14(0, (v43 + 144));
      *(v43 + 168) = v42;
      v37 = swift_task_alloc();
      v37[2] = v43 + 144;
      v37[3] = v43 + 152;
      v37[4] = v43 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v41, v40, "BirthdayPickerRowViewModel - Attempting to clear DOB", v34, 2u);
      sub_1C5419E74(v35, 0, v33);
      sub_1C5419E74(v36, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    *(v43 + 264) = 0;
    v30 = *(v43 + 232);
    v31 = *(v43 + 192);
    v29 = *(v43 + 200);
    v6 = MEMORY[0x1E69E5920](v41);
    v7 = *(v29 + 8);
    *(v43 + 272) = v7;
    *(v43 + 280) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v30, v31, v6);
    v8 = sub_1C5421AB4();
    *(v43 + 288) = v8;
    v9 = *((*v8 & *MEMORY[0x1E69E7D40]) + 0xD8);
    v32 = (v9 + *v9);
    v10 = swift_task_alloc();
    v11 = v32;
    *(v43 + 296) = v10;
    *v10 = *(v43 + 16);
    v10[1] = sub_1C5427B08;
  }

  return v11();
}

uint64_t sub_1C5427B08()
{
  v2 = *(*v0 + 288);
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5427C40);
}

uint64_t sub_1C5427C40(uint64_t a1)
{
  v18 = v1[30];
  v2 = v1[28];
  v17 = v1[24];
  v1[2] = v1;
  v3 = sub_1C54B05F8();
  v18(v2, v3, v17);
  v20 = sub_1C5594C54();
  v19 = sub_1C5596934();
  v21 = sub_1C5596E04();
  if (os_log_type_enabled(v20, v19))
  {
    v4 = *(v16 + 264);
    buf = sub_1C5596A74();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v13 = sub_1C5419DC0(0, v11, v11);
    v14 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v16 + 112) = buf;
    *(v16 + 120) = v13;
    *(v16 + 128) = v14;
    sub_1C5419E14(0, (v16 + 112));
    sub_1C5419E14(0, (v16 + 112));
    *(v16 + 136) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 112;
    v15[3] = v16 + 120;
    v15[4] = v16 + 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    if (v4)
    {
    }

    _os_log_impl(&dword_1C5355000, v20, v19, "BirthdayPickerRowViewModel - Cleared pending DOB", buf, 2u);
    sub_1C5419E74(v13, 0, v11);
    sub_1C5419E74(v14, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v10 = *(v16 + 272);
  v8 = *(v16 + 224);
  v9 = *(v16 + 192);
  v6 = MEMORY[0x1E69E5920](v20);
  v10(v8, v9, v6);

  v7 = *(*(v16 + 16) + 8);

  return v7();
}

id sub_1C5428020()
{
  sub_1C5429F54();
  v1 = sub_1C5404B48();
  [v1 setDateStyle_];
  [v1 setTimeStyle_];
  return v1;
}

uint64_t sub_1C5428094()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C54280FC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C54281E8()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4, v1);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C54282B4@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C54281E8();
}

uint64_t sub_1C5428310(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);

  sub_1C5423988(v3);
}

double sub_1C542838C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a2, v2);
  v6 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a2;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

void (*sub_1C5428450(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 5967);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 5967);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5428184();
  return sub_1C5428630;
}

void sub_1C5428630(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54286EC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54286EC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54286EC(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C5428828()
{
  v16 = 0;
  v9 = sub_1C5594924();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v10 = v6 - v6[0];
  v16 = v0;
  v12 = sub_1C54281E8();
  (*(*v6[1] + 264))();
  v11 = sub_1C55948E4();
  (*(v7 + 8))(v10, v9);
  v13 = [v12 stringFromDate_];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  v14 = sub_1C5596574();
  v15 = v4;
  MEMORY[0x1E69E5920](v13);
  return v14;
}

uint64_t sub_1C54289AC()
{
  v10 = v0;
  v3 = sub_1C54229A4(v9);
  sub_1C5594E24();
  sub_1C5429D08();
  sub_1C5428BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C150, &qword_1C55AE268);
  sub_1C5596894();
  v3();
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 8);
  v6(v8 + v4);
  sub_1C541A9D8(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  sub_1C542A24C(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange);
  sub_1C5401EF8((v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings));
  sub_1C5401ECC(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider));
  sub_1C5410D10((v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask));
  (v6)(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v5);
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel));
  sub_1C541439C((v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables));
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter));
  v7 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v8 + v7);
  return v8;
}

uint64_t sub_1C5428C68@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5428CD4(void *a1)
{
  v9 = a1;
  v18 = 0;
  v16 = 0;
  v7 = *a1;
  v14 = sub_1C5594B24();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = MEMORY[0x1EEE9AC00](v9, v1, v14, v2);
  v13 = &v7 - v4;
  v18 = v5;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v16 = v8;
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C5429194();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C5428E44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v34 = a4;
  v15 = *a1;
  v13 = sub_1C5594B24();
  v16 = *(v13 - 8);
  v14 = v13 - 8;
  v6 = MEMORY[0x1EEE9AC00](v20, v21, v13, v5);
  v17 = v12 - v7;
  v33 = v8;
  v32 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v9;
  v31 = v22;
  v29 = v18;
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C5429194();
  v10 = v24;
  sub_1C5594AD4();
  v26 = v10;
  v27 = v10;
  if (v10)
  {
    v12[1] = v27;
  }

  return (*(v16 + 8))(v17, v13);
}

unint64_t sub_1C54290E8()
{
  v2 = qword_1EC15C100;
  if (!qword_1EC15C100)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429194()
{
  v2 = qword_1EC15C108;
  if (!qword_1EC15C108)
  {
    type metadata accessor for BirthdayPickerRowViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for BirthdayPickerRowViewModel(uint64_t a1)
{
  v2 = qword_1EC160380;
  if (!qword_1EC160380)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1C5429288(const void *a1, void *a2)
{
  v6 = sub_1C5594924();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1C54293B0(const void *a1, void *a2)
{
  v7 = sub_1C5594924();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_1C54295D8(const void *a1, void *a2)
{
  v6 = sub_1C5594924();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C5429700()
{
  v2 = qword_1EC15C110;
  if (!qword_1EC15C110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E370, &qword_1C55AE070);
    sub_1C54290E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54297C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  (v6)(a2 + *(v2 + 36), a1 + *(v2 + 36), v5);
  return a2;
}