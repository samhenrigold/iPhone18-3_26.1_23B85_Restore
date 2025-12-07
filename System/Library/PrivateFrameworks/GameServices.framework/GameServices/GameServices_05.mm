uint64_t sub_1D84B9A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t LeaderboardSetDescription.id.setter()
{
  OUTLINED_FUNCTION_129_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardSetDescription.groupId.setter()
{
  OUTLINED_FUNCTION_129_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LeaderboardSetDescription.title.setter()
{
  OUTLINED_FUNCTION_129_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t LeaderboardSetDescription.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t LeaderboardSetDescription.init(id:groupId:title:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v9 = *a7;
  v10 = a7[1];
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;

  a8[6] = v9;
  a8[7] = v10;
  return result;
}

BOOL static LeaderboardSetDescription.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[7];
  if (!v11 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v2 == v8 && v4 == v7;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3 != v9 || v5 != v10)
  {
    OUTLINED_FUNCTION_206_1();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
      OUTLINED_FUNCTION_125_0();
      sub_1D848211C(v15);
      swift_bridgeObjectRetain_n();

      v16 = sub_1D8581208();

      return (v16 & 1) != 0;
    }

LABEL_25:

    return 0;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1D84B9E90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (v4 = a1, (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_222_1();
    v7 = v3 && a2 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_439(1819568500);
      v9 = v3 && a2 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_7(v8, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_439(1734438249);
        if (v3 && a2 == 0xE500000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_7(v10, 0xE500000000000000);
          OUTLINED_FUNCTION_369();
          if (v4)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

unint64_t sub_1D84B9F90(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644970756F7267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_232_1(1819568500);
      break;
    case 3:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84BA004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B9E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84BA02C()
{
  sub_1D84BB3DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84BA064()
{
  sub_1D84BB3DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardSetDescription.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AF8, &qword_1D85982D8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_252_1();
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84BB3DC();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  sub_1D8581A08();
  if (!v0)
  {
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
    OUTLINED_FUNCTION_191_1();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v8);
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    OUTLINED_FUNCTION_228_0();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardSetDescription.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  sub_1D85812B8();
  if (v2)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  sub_1D85812B8();
  if (!v3)
  {
    return OUTLINED_FUNCTION_402();
  }

  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v4);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
}

uint64_t LeaderboardSetDescription.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  LeaderboardSetDescription.hash(into:)(v2);
  return sub_1D8581B98();
}

void LeaderboardSetDescription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39B00, &qword_1D85982E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_260(v25, v25[3]);
  sub_1D84BB3DC();
  sub_1D8581BA8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_151_0();
    v29 = sub_1D8581908();
    v31 = v30;
    OUTLINED_FUNCTION_151_0();
    v41 = sub_1D8581898();
    v43 = v32;
    LOBYTE(v48[0]) = 2;
    OUTLINED_FUNCTION_151_0();
    v40 = sub_1D8581908();
    v42 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v34);
    sub_1D85818E8();
    v35 = OUTLINED_FUNCTION_103_0();
    v36(v35);
    v37 = v50;

    *&v44 = v29;
    *(&v44 + 1) = v31;
    *&v45 = v41;
    *(&v45 + 1) = v43;
    *&v46 = v40;
    *(&v46 + 1) = v42;
    v47 = v50;
    v38 = v45;
    *v27 = v44;
    v27[1] = v38;
    v39 = v47;
    v27[2] = v46;
    v27[3] = v39;
    sub_1D84BB430(&v44, v48);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v48[0] = v29;
    v48[1] = v31;
    v48[2] = v41;
    v48[3] = v43;
    v48[4] = v40;
    v48[5] = v42;
    v49 = v37;
    sub_1D84BB468(v48);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84BA694(uint64_t a1)
{
  sub_1D8581B58();
  LeaderboardSetDescription.hash(into:)(v2);
  return sub_1D8581B98();
}

uint64_t sub_1D84BAB00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1D8436A4C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D8581AB8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84BACA0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D84BACE8(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA7191F0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_1D85812B8();

        sub_1D85812B8();

        result = sub_1D8581B98();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84BAE48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1D84BAEC4()
{
  result = qword_1ECA43DD0;
  if (!qword_1ECA43DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DD0);
  }

  return result;
}

unint64_t sub_1D84BAF38()
{
  result = qword_1ECA43DD8;
  if (!qword_1ECA43DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DD8);
  }

  return result;
}

uint64_t sub_1D84BAF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D84BAFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D84BB06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurringLeaderboardProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84BB0D0()
{
  result = qword_1ECA43DE0;
  if (!qword_1ECA43DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DE0);
  }

  return result;
}

unint64_t sub_1D84BB124()
{
  result = qword_1ECA39AA0;
  if (!qword_1ECA39AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AA0);
  }

  return result;
}

unint64_t sub_1D84BB178()
{
  result = qword_1ECA39AB8;
  if (!qword_1ECA39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AB8);
  }

  return result;
}

unint64_t sub_1D84BB1CC()
{
  result = qword_1ECA39AD0;
  if (!qword_1ECA39AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AD0);
  }

  return result;
}

unint64_t sub_1D84BB220(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84BB288()
{
  result = qword_1ECA39AE0;
  if (!qword_1ECA39AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AE0);
  }

  return result;
}

uint64_t sub_1D84BB2DC()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

uint64_t sub_1D84BB334()
{
  v1 = OUTLINED_FUNCTION_85_1();
  v2(v1);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D84BB388()
{
  result = qword_1ECA43DE8;
  if (!qword_1ECA43DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DE8);
  }

  return result;
}

unint64_t sub_1D84BB3DC()
{
  result = qword_1ECA43DF0[0];
  if (!qword_1ECA43DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43DF0);
  }

  return result;
}

unint64_t sub_1D84BB544(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3();
  result = sub_1D84A8E00(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84BB600()
{
  result = qword_1ECA39B18;
  if (!qword_1ECA39B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B18);
  }

  return result;
}

unint64_t sub_1D84BB658()
{
  result = qword_1ECA39B20;
  if (!qword_1ECA39B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B20);
  }

  return result;
}

unint64_t sub_1D84BB6B0()
{
  result = qword_1ECA39B28;
  if (!qword_1ECA39B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B28);
  }

  return result;
}

unint64_t sub_1D84BB708()
{
  result = qword_1ECA39B30;
  if (!qword_1ECA39B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B30);
  }

  return result;
}

unint64_t sub_1D84BB760()
{
  result = qword_1ECA39B38;
  if (!qword_1ECA39B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B38);
  }

  return result;
}

unint64_t sub_1D84BB7B8()
{
  result = qword_1ECA39B40;
  if (!qword_1ECA39B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B40);
  }

  return result;
}

unint64_t sub_1D84BB8C4()
{
  result = qword_1ECA39B60;
  if (!qword_1ECA39B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B60);
  }

  return result;
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_131();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_191(v16);

  return v19(v13, v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardEntries(leaderboards:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_54();
  v26 = v12 + *v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_176(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_191(v14);
  OUTLINED_FUNCTION_207();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, v26, a12);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_54();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_82_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_54();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_82_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.submit(entries:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  OUTLINED_FUNCTION_131();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_0(v4);
  OUTLINED_FUNCTION_309_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
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

uint64_t sub_1D84BC394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC3D0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84BC45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC498(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84BC508()
{
  result = sub_1D8580EA8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D84BC5A4()
{
  sub_1D84BC888(319, &qword_1EE0E0060, MEMORY[0x1E69E6158]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D84BC708(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_136_0(v3, &qword_1ECA39B70, &qword_1ECA389C8, &qword_1D8590820);
    if (v5 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_136_0(v3, &qword_1ECA39B78, &qword_1ECA39AA8, &qword_1D859A9B0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D84BC888(319, &qword_1ECA39B80, &type metadata for ReleaseState);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D84BC888(319, &qword_1ECA39B88, &type metadata for LeaderboardVisibility);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_413();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D84BC708(uint64_t a1)
{
  if (!qword_1ECA39B68)
  {
    type metadata accessor for RecurringLeaderboardProperties(255);
    v1 = sub_1D85816F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA39B68);
    }
  }
}

void sub_1D84BC788()
{
  sub_1D84BC888(319, &qword_1ECA39B90, MEMORY[0x1E69E6530]);
  if (v0 <= 0x3F)
  {
    v1 = sub_1D8580EA8();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_135_0(v1, &qword_1ECA39B98, &qword_1ECA39BA0, &unk_1D8599048);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_135_0(v3, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_413();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D84BC888(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D85816F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D84BC8D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D84BC94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 64))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LeaderboardEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices20LeaderboardTimeScopeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices14GameWithPlayerV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84BCDDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D84BCEAC()
{
  result = qword_1ECA458B0[0];
  if (!qword_1ECA458B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA458B0);
  }

  return result;
}

unint64_t sub_1D84BCF04()
{
  result = qword_1ECA45CC0[0];
  if (!qword_1ECA45CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA45CC0);
  }

  return result;
}

unint64_t sub_1D84BCF5C()
{
  result = qword_1ECA45ED0[0];
  if (!qword_1ECA45ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA45ED0);
  }

  return result;
}

unint64_t sub_1D84BCFB4()
{
  result = qword_1ECA460E0[0];
  if (!qword_1ECA460E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA460E0);
  }

  return result;
}

unint64_t sub_1D84BD00C()
{
  result = qword_1ECA462F0[0];
  if (!qword_1ECA462F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA462F0);
  }

  return result;
}

unint64_t sub_1D84BD064()
{
  result = qword_1ECA46500[0];
  if (!qword_1ECA46500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46500);
  }

  return result;
}

unint64_t sub_1D84BD0BC()
{
  result = qword_1ECA46710[0];
  if (!qword_1ECA46710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46710);
  }

  return result;
}

unint64_t sub_1D84BD114()
{
  result = qword_1ECA46820;
  if (!qword_1ECA46820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46820);
  }

  return result;
}

unint64_t sub_1D84BD16C()
{
  result = qword_1ECA46828[0];
  if (!qword_1ECA46828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46828);
  }

  return result;
}

unint64_t sub_1D84BD1C4()
{
  result = qword_1ECA468B0;
  if (!qword_1ECA468B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA468B0);
  }

  return result;
}

unint64_t sub_1D84BD21C()
{
  result = qword_1ECA468B8[0];
  if (!qword_1ECA468B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA468B8);
  }

  return result;
}

unint64_t sub_1D84BD274()
{
  result = qword_1ECA46940;
  if (!qword_1ECA46940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46940);
  }

  return result;
}

unint64_t sub_1D84BD2CC()
{
  result = qword_1ECA46948[0];
  if (!qword_1ECA46948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46948);
  }

  return result;
}

unint64_t sub_1D84BD324()
{
  result = qword_1ECA469D0;
  if (!qword_1ECA469D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA469D0);
  }

  return result;
}

unint64_t sub_1D84BD37C()
{
  result = qword_1ECA469D8[0];
  if (!qword_1ECA469D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA469D8);
  }

  return result;
}

unint64_t sub_1D84BD3D4()
{
  result = qword_1ECA46A60;
  if (!qword_1ECA46A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46A60);
  }

  return result;
}

unint64_t sub_1D84BD42C()
{
  result = qword_1ECA46A68[0];
  if (!qword_1ECA46A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46A68);
  }

  return result;
}

unint64_t sub_1D84BD484()
{
  result = qword_1ECA46AF0;
  if (!qword_1ECA46AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46AF0);
  }

  return result;
}

unint64_t sub_1D84BD4DC()
{
  result = qword_1ECA46AF8[0];
  if (!qword_1ECA46AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46AF8);
  }

  return result;
}

unint64_t sub_1D84BD534()
{
  result = qword_1ECA46B80;
  if (!qword_1ECA46B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46B80);
  }

  return result;
}

unint64_t sub_1D84BD58C()
{
  result = qword_1ECA46B88[0];
  if (!qword_1ECA46B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46B88);
  }

  return result;
}

unint64_t sub_1D84BD5E4()
{
  result = qword_1ECA46C10;
  if (!qword_1ECA46C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46C10);
  }

  return result;
}

unint64_t sub_1D84BD63C()
{
  result = qword_1ECA46C18[0];
  if (!qword_1ECA46C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46C18);
  }

  return result;
}

unint64_t sub_1D84BD694()
{
  result = qword_1ECA46CA0;
  if (!qword_1ECA46CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46CA0);
  }

  return result;
}

unint64_t sub_1D84BD6EC()
{
  result = qword_1ECA46CA8[0];
  if (!qword_1ECA46CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46CA8);
  }

  return result;
}

unint64_t sub_1D84BD740()
{
  result = qword_1ECA39BA8;
  if (!qword_1ECA39BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BA8);
  }

  return result;
}

unint64_t sub_1D84BD794()
{
  result = qword_1ECA39BB0;
  if (!qword_1ECA39BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BB0);
  }

  return result;
}

unint64_t sub_1D84BD7E8()
{
  result = qword_1ECA39BB8;
  if (!qword_1ECA39BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BB8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_21_0(uint64_t a1)
{

  return sub_1D84A8E00(a1);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v1 = *(type metadata accessor for LeaderboardDescription(0) + 24);
  v2 = type metadata accessor for RecurringLeaderboardProperties(0);
  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_110_1()
{
  *(v0 + 120) = $DistributedLeaderboardServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

unint64_t OUTLINED_FUNCTION_138_0(uint64_t a1)
{

  return sub_1D84AB4D0(a1);
}

unint64_t OUTLINED_FUNCTION_139_0(uint64_t a1)
{

  return sub_1D84AB4D0(a1);
}

uint64_t OUTLINED_FUNCTION_205_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = v3[1];
  *(v2 - 96) = *v3;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_208_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = v17;
  v13[1] = v16;
  v13[2] = v15;
  v13[3] = a11;

  return sub_1D84BAFFC(a13, v13 + v14);
}

unint64_t OUTLINED_FUNCTION_212_1(uint64_t a1)
{

  return sub_1D84A8E00(a1);
}

uint64_t OUTLINED_FUNCTION_228_0()
{
}

uint64_t OUTLINED_FUNCTION_231_1()
{
}

uint64_t OUTLINED_FUNCTION_235_1()
{
}

uint64_t OUTLINED_FUNCTION_237_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8581BA8();
}

void *OUTLINED_FUNCTION_238_1()
{

  return sub_1D8581958();
}

void OUTLINED_FUNCTION_252_1()
{
  v2 = v0[2];
  *(v1 - 120) = v0[3];
  *(v1 - 112) = v2;
  v3 = v0[4];
  *(v1 - 136) = v0[5];
  *(v1 - 128) = v3;
}

uint64_t OUTLINED_FUNCTION_271_0()
{
}

uint64_t OUTLINED_FUNCTION_272_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_275_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_278_1(uint64_t a1)
{

  return _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
}

uint64_t OUTLINED_FUNCTION_284_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedActivitiesMessageExtensionServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v5);
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v1);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedActivitiesMessageExtensionServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84BDFC4()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedActivitiesMessageExtensionServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedActivitiesMessageExtensionServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v3);
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_0_4();
    sub_1D84C3D90(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84BE204@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84BE290()
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84BE2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84BE370()
{
  OUTLINED_FUNCTION_204();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  v3 = OUTLINED_FUNCTION_188();

  return (sub_1D84BE424)(v3);
}

uint64_t sub_1D84BE424(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 185) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1D8581018();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84BE5BC);
}

uint64_t sub_1D84BE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&dword_1D859A440);
    v16 = swift_task_alloc();
    *(v14 + 160) = v16;
    *v16 = v14;
    v16[1] = sub_1D84BE920;
    OUTLINED_FUNCTION_207_0(*(v14 + 56));
    OUTLINED_FUNCTION_240();

    __asm { BR              X3 }
  }

  *(v14 + 152) = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v15);
  v19 = *(v14 + 64);
  *(v14 + 40) = *(v14 + 56);
  *(v14 + 48) = v19;

  v20 = OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60(v20, v21, v22, v23, v14 + 40);
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v24, v25);
  *(v14 + 184) = *(v14 + 185);
  OUTLINED_FUNCTION_229(0x65706F6373, v26, v27, v28, v14 + 184);
  sub_1D8474444();
  sub_1D8474498();
  v29 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {

    v32 = OUTLINED_FUNCTION_69_1();
    v33(v32);
    v34 = OUTLINED_FUNCTION_150();
    v35(v34);
    OUTLINED_FUNCTION_331();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  *(v14 + 168) = v38;
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v39);
  *v38 = v14;
  v38[1] = sub_1D84BEA5C;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v40, v41, v42, v43, v44, v45, v46);
}

uint64_t sub_1D84BE920()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D84BEA5C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84BEB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84BEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_1D8581018();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 152) = v12;
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 168) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 176) = v14;
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v5;
  v17 = v5[1];
  *(v1 + 184) = v15;
  *(v1 + 192) = v16;
  *(v1 + 200) = v17;
  *(v1 + 250) = *v3;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v18);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84BEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_185();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v17 = *(v14 + 192);
    v16 = *(v14 + 200);
    *(v14 + 72) = *(v14 + 112);
    *(v14 + 40) = v17;
    LOBYTE(v17) = *(v14 + 250);
    *(v14 + 48) = v16;
    *(v14 + 248) = v17;
    OUTLINED_FUNCTION_54();
    v18 = swift_task_alloc();
    *(v14 + 232) = v18;
    *v18 = v14;
    v18[1] = sub_1D84BF3F0;
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v15 = *(v14 + 88);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v14 + 208) = *(v14 + 80);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v15)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v21 = *(v14 + 200);
  *(v14 + 56) = *(v14 + 192);
  *(v14 + 64) = v21;

  v22 = OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60(v22, v23, v24, v25, v14 + 56);
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v26, v27);
  *(v14 + 249) = *(v14 + 250);
  OUTLINED_FUNCTION_229(0x65706F6373, v28, v29, v30, v14 + 249);
  sub_1D8474444();
  sub_1D8474498();
  v31 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {

    v34 = OUTLINED_FUNCTION_69_1();
    v35(v34);
    v36 = OUTLINED_FUNCTION_150();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v40 = swift_task_alloc();
  *(v14 + 216) = v40;
  *v40 = v14;
  OUTLINED_FUNCTION_145_0(v40);
  OUTLINED_FUNCTION_53(v41);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v42, v43, v44, v45, v46, v47, v48);
}

uint64_t sub_1D84BF22C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84BF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84BF3F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84BF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_69_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_166();
  v15(v14);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84BF5F8()
{
  OUTLINED_FUNCTION_174();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84BF674(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D84BF8AC;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D84BF8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[4];
  v14 = v12[3];
  v15 = v12[2];
  OUTLINED_FUNCTION_171_0();
  v17 = v16;
  OUTLINED_FUNCTION_37();
  *v18 = v17;

  (*(v14 + 8))(v13, v15);
  v19 = OUTLINED_FUNCTION_188();
  v20(v19);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1D84BFA74()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_24(&unk_1D859A438);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  v3 = OUTLINED_FUNCTION_188();

  return v5(v3);
}

uint64_t sub_1D84BFB10(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84BFC3C);
}

uint64_t sub_1D84BFC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859A438);
    v16 = swift_task_alloc();
    v14[17] = v16;
    *v16 = v14;
    v16[1] = sub_1D84BFF10;
    OUTLINED_FUNCTION_207_0(v14[7]);
    OUTLINED_FUNCTION_240();

    __asm { BR              X2 }
  }

  v14[16] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v15);
  v19 = v14[8];
  v14[5] = v14[7];
  v14[6] = v19;

  v20 = OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60(v20, v21, v22, v23, (v14 + 5));
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v26);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v27)
  {

    v28 = OUTLINED_FUNCTION_49_0();
    v29(v28);
    OUTLINED_FUNCTION_331();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  v14[18] = v32;
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v33);
  *v32 = v14;
  v32[1] = sub_1D849BF18;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_1D84BFF10()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[18] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[19] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v3;
  v13 = v3[1];
  v1[20] = v11;
  v1[21] = v12;
  v1[22] = v13;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84C0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_185();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v14[9] = v14[14];
    v16 = v14[22];
    v14[5] = v14[21];
    v14[6] = v16;
    OUTLINED_FUNCTION_54();
    v17 = swift_task_alloc();
    v14[26] = v17;
    *v17 = v14;
    v17[1] = sub_1D84C0604;
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X3, X16 }
  }

  v15 = v14[11];
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v14[23] = v14[10];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v15)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v20 = v14[22];
  v14[7] = v14[21];
  v14[8] = v20;

  v21 = OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60(v21, v22, v23, v24, (v14 + 7));
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {

    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_11:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v33 = swift_task_alloc();
  v14[24] = v33;
  *v33 = v14;
  OUTLINED_FUNCTION_145_0(v33);
  OUTLINED_FUNCTION_53(v34);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1D84C0468()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84C0560()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84C0604()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84C0730(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84B0F8C;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D84C08B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  OUTLINED_FUNCTION_24(&dword_1D859A430);
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  v11[1] = sub_1D8442FA8;

  return v14(a1, v5, v6, a3, v8, v9);
}

uint64_t sub_1D84C0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C0B94);
}

uint64_t sub_1D84C0B94()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v0[29] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
    v7 = v0[12];
    v0[5] = v0[11];
    v0[6] = v7;

    v8 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v8, v9, v10, v11, (v0 + 5));
    OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v12, v13);
    v0[9] = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E8, &unk_1D859A110);
    v14 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v14, v15, v16, v17, (v0 + 9));
    sub_1D849DDF4();
    sub_1D849DF50();
    v18 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v18);
    v19 = v0[15];
    v0[7] = v0[14];
    v0[8] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v20 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v20, v21, v22, v23, (v0 + 7));
    sub_1D84751F0();
    sub_1D8475274();
    v24 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39828, &qword_1D85962C8);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v26);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v27);
    v28 = OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v28, v29);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v30)
    {
      v52 = v0[26];
      v53 = v0[28];
      v31 = v0[21];
      v32 = v0[22];
      v33 = v0[20];

      (*(v31 + 8))(v32, v33);
      v34 = OUTLINED_FUNCTION_69_1();
      v36 = v35(v34);
      v44 = OUTLINED_FUNCTION_224(v36, v37, v38, v39, v40, v41, v42, v43, v51, v52, v53);
      v45(v44);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v46();
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v48 = swift_task_alloc();
      v0[31] = v48;
      OUTLINED_FUNCTION_0_4();
      sub_1D84C3D90(v49);
      *v48 = v0;
      v48[1] = sub_1D84C11B4;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_170();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[30] = v2;
    *v2 = v3;
    v2[1] = sub_1D84C1054;
    OUTLINED_FUNCTION_44_0();

    return v4();
  }
}

uint64_t sub_1D84C1054()
{
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D84C11B4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 160) = v6;
  *(v1 + 168) = v0;
  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  *(v1 + 128) = v9;
  *(v1 + 136) = v10;
  v11 = sub_1D8581018();
  *(v1 + 176) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 184) = v12;
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 200) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 208) = v14;
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  *(v1 + 224) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 232) = v16;
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 248) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 256) = v18;
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v5;
  v21 = v5[1];
  *(v1 + 264) = v19;
  *(v1 + 272) = v20;
  *(v1 + 280) = v21;
  *(v1 + 288) = *v3;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v22);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84C1648()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 144);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v0 + 304) = *(v0 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v1)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v48();
    }

    v9 = *(v0 + 280);
    *(v0 + 72) = *(v0 + 272);
    *(v0 + 80) = v9;

    v10 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v10, v11, v12, v13, v0 + 72);
    OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v14, v15);
    *(v0 + 120) = *(v0 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E8, &unk_1D859A110);
    v16 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v16, v17, v18, v19, v0 + 120);
    sub_1D849DDF4();
    sub_1D849DF50();
    v20 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v20);
    v21 = *(v0 + 296);
    *(v0 + 88) = *(v0 + 288);
    *(v0 + 96) = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v22 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v22, v23, v24, v25, v0 + 88);
    sub_1D84751F0();
    sub_1D8475274();
    v26 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39828, &qword_1D85962C8);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v28);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v29);
    v30 = OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v30, v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {
      v54 = *(v0 + 248);
      v55 = *(v0 + 264);
      v33 = *(v0 + 208);
      v34 = *(v0 + 216);
      v35 = *(v0 + 200);

      (*(v33 + 8))(v34, v35);
      v36 = OUTLINED_FUNCTION_69_1();
      v38 = v37(v36);
      v46 = OUTLINED_FUNCTION_224(v38, v39, v40, v41, v42, v43, v44, v45, v53, v54, v55);
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 312) = v50;
    *v50 = v51;
    v50[1] = sub_1D84C1B5C;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    *(v0 + 104) = *(v0 + 168);
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    *(v0 + 56) = *(v0 + 288);
    OUTLINED_FUNCTION_54();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 328) = v4;
    *v4 = v5;
    v4[1] = sub_1D84C1D34;
    OUTLINED_FUNCTION_44_0();

    return v6();
  }
}

uint64_t sub_1D84C1B5C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84C1D34()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84C1F58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D84C2274;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D84C2274()
{
  OUTLINED_FUNCTION_153();
  v1 = v0[10];
  v14 = v0[9];
  v2 = v0[8];
  v3 = v0[7];
  v13 = v0[6];
  v4 = v0[5];
  v5 = v0[4];
  v6 = v0[3];
  v7 = v0[2];
  OUTLINED_FUNCTION_171_0();
  v9 = v8;
  OUTLINED_FUNCTION_37();
  *v10 = v9;

  (*(v6 + 8))(v5, v7);
  (*(v13 + 8))(v3, v4);
  (*(v14 + 8))(v1, v2);

  OUTLINED_FUNCTION_146();

  return v11();
}

uint64_t sub_1D84C24E4()
{
  OUTLINED_FUNCTION_174();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return sub_1D84C2674(v1);
}

uint64_t sub_1D84C2588()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_69_2();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D84C2674(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C279C);
}

uint64_t sub_1D84C279C()
{
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v0[15] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v1);
    v0[5] = v0[7];

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_63_0(v5, 0x80000001D8584940, v6, 0x80000001D8584940, (v0 + 5));
    OUTLINED_FUNCTION_30();
    sub_1D84C37F0(v7);
    OUTLINED_FUNCTION_32();
    sub_1D84C37F0(v8);
    v9 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    v11 = OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v11, v12);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v13)
    {

      v14 = OUTLINED_FUNCTION_49_0();
      v15(v14);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_48();

      return v16();
    }

    else
    {
      sub_1D8581028();
      v17 = swift_task_alloc();
      v0[17] = v17;
      OUTLINED_FUNCTION_0_4();
      sub_1D84C3D90(v18);
      OUTLINED_FUNCTION_168();
      *v17 = v19;
      v17[1] = sub_1D84C2C64;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859A428);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1D84C2B28;
    v3 = OUTLINED_FUNCTION_207_0(v0[7]);

    return v21(v3);
  }
}

uint64_t sub_1D84C2B28()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D84C2C64()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84C2D5C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v6 = sub_1D8581018();
  v1[14] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v1[17] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v10);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84C2F14()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v0[20] = v0[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v1)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v17();
    }

    v0[7] = v0[9];

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_63_0(v6, 0x80000001D8584940, v7, 0x80000001D8584940, (v0 + 7));
    OUTLINED_FUNCTION_30();
    sub_1D84C37F0(v8);
    OUTLINED_FUNCTION_32();
    sub_1D84C37F0(v9);
    v10 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    v12 = OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v12, v13);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v14)
    {

      v15 = OUTLINED_FUNCTION_49_0();
      v16(v15);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[21] = v19;
    *v19 = v20;
    v19[1] = sub_1D84C32CC;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v0[5] = v0[13];
    OUTLINED_FUNCTION_54();
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1D84C3474;
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_44_0();

    return v3();
  }
}

uint64_t sub_1D84C32CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84C33C4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84C3474()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_16_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9);
  }

  else
  {

    OUTLINED_FUNCTION_69_2();

    return v10(v3);
  }
}

uint64_t sub_1D84C35B8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84C3660(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84B2420;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

unint64_t sub_1D84C37F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84C3880(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84C3D90(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84C3918()
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v0);
  v1 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v1);
}

uint64_t sub_1D84C398C(uint64_t a1)
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v1);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84C3A10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v4);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D84C3CD8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  result = sub_1D84C3D90(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84C3D90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.refreshGameActivity(game:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_54();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_176(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_191(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  v6 = OUTLINED_FUNCTION_310();

  return v7(v6);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_54();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_176(v13);
  *v14 = v15;
  v14[1] = sub_1D8442FA8;

  return v17(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  v6 = OUTLINED_FUNCTION_310();

  return v7(v6);
}

uint64_t sub_1D84C4238()
{
  OUTLINED_FUNCTION_148();
  v2 = v1;
  OUTLINED_FUNCTION_153();
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_69_2();

  return v5(v2);
}

uint64_t DefaultGameActivityEnvironment.language.setter()
{
  OUTLINED_FUNCTION_129_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  OUTLINED_FUNCTION_507_0(v0);
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_394_0();

  return v2(v1);
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.setter()
{
  v3 = OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_507_0(v3);
  OUTLINED_FUNCTION_4_0();
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for DefaultGameActivityEnvironment(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t DefaultGameActivityEnvironment.init(language:partyStartURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  OUTLINED_FUNCTION_507_0(0);
  OUTLINED_FUNCTION_4_0();
  v8 = *(v7 + 32);

  return v8(&a4[v4], a3);
}

uint64_t static DefaultGameActivityEnvironment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DefaultGameActivityEnvironment(0);

  return sub_1D8580D58();
}

uint64_t sub_1D84C4610()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_216_1();
  v4 = v4 && v3 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_195_1();
    if (v1 == v6 && v0 == v7)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7(v6, v7);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_364();
      if (v4)
      {
        return v9 + 1;
      }

      else
      {
        return v9;
      }
    }
  }
}

uint64_t sub_1D84C468C(char a1)
{
  if (a1)
  {
    return 0x6174537974726170;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_1D84C46D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C4610();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C4700()
{
  sub_1D84C48E8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C4738()
{
  sub_1D84C48E8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t DefaultGameActivityEnvironment.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39BE0, &qword_1D859A788);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_200();
  v6 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v6, v7);
  sub_1D84C48E8();
  OUTLINED_FUNCTION_377_0(&type metadata for DefaultGameActivityEnvironment.CodingKeys);
  sub_1D8581A08();
  if (!v0)
  {
    type metadata accessor for DefaultGameActivityEnvironment(0);
    OUTLINED_FUNCTION_378_0();
    sub_1D8580D78();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v8);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_1D84C48E8()
{
  result = qword_1ECA47130;
  if (!qword_1ECA47130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47130);
  }

  return result;
}

uint64_t DefaultGameActivityEnvironment.hash(into:)(uint64_t a1)
{
  sub_1D85812B8();
  type metadata accessor for DefaultGameActivityEnvironment(0);
  sub_1D8580D78();
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v1);
  OUTLINED_FUNCTION_188();
  return sub_1D85811E8();
}

unint64_t sub_1D84C49BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t DefaultGameActivityEnvironment.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  sub_1D85812B8();
  OUTLINED_FUNCTION_507_0(0);
  OUTLINED_FUNCTION_3_4();
  v2 = sub_1D84C49BC(v1);
  OUTLINED_FUNCTION_524_0(v2, v3);
  return sub_1D8581B98();
}

void DefaultGameActivityEnvironment.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  v41 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v40 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39BF8, &qword_1D859A790);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_199();
  v32 = type metadata accessor for DefaultGameActivityEnvironment(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v34 = OUTLINED_FUNCTION_344_1();
  OUTLINED_FUNCTION_260(v34, v35);
  sub_1D84C48E8();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    *v23 = sub_1D8581908();
    v23[1] = v36;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v37);
    sub_1D8581958();
    v38 = OUTLINED_FUNCTION_387_0();
    v39(v38);
    (*(v40 + 32))(v23 + *(v32 + 20), v30, v41);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_2();
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C4D60(uint64_t a1)
{
  sub_1D8581B58();
  sub_1D85812B8();
  sub_1D8580D78();
  OUTLINED_FUNCTION_3_4();
  v2 = sub_1D84C49BC(v1);
  OUTLINED_FUNCTION_524_0(v2, v3);
  return sub_1D8581B98();
}

GameServices::ActivityInstanceDeletionResult __swiftcall ActivityInstanceDeletionResult.init(deleted:remaining:)(Swift::Int deleted, Swift::Int remaining)
{
  *v2 = deleted;
  v2[1] = remaining;
  result.remaining = remaining;
  result.deleted = deleted;
  return result;
}

uint64_t static ActivityInstanceDeletionResult.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1D84C4E28()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646574656C6564 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7(0x646574656C6564, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6E696E69616D6572 && v0 == 0xE900000000000067)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x6E696E69616D6572, 0xE900000000000067);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D84C4ED0(char a1)
{
  if (a1)
  {
    return 0x6E696E69616D6572;
  }

  else
  {
    return 0x646574656C6564;
  }
}

uint64_t sub_1D84C4F14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C4E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C4F3C()
{
  sub_1D84C50E0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C4F74()
{
  sub_1D84C50E0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ActivityInstanceDeletionResult.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C08, &qword_1D859A798);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84C50E0();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_232();
  sub_1D8581A38();
  if (!v0)
  {
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v4 = OUTLINED_FUNCTION_291();
  v5(v4);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84C50E0()
{
  result = qword_1ECA47138;
  if (!qword_1ECA47138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47138);
  }

  return result;
}

uint64_t ActivityInstanceDeletionResult.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1DA7191F0](*v0);
  return MEMORY[0x1DA7191F0](v1);
}

uint64_t ActivityInstanceDeletionResult.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_379(a1);
  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

void ActivityInstanceDeletionResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C10, &qword_1D859A7A0);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_260(v25, v25[3]);
  sub_1D84C50E0();
  sub_1D8581BA8();
  if (!v22)
  {
    v32 = sub_1D8581938();
    OUTLINED_FUNCTION_378_0();
    v33 = sub_1D8581938();
    (*(v30 + 8))(v23, v28);
    *v27 = v32;
    v27[1] = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C536C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D8581B58();
  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

uint64_t static GameActivityDefinitionFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4 >> 5)
  {
    case 1u:
      if ((v7 & 0xE0) != 0x20)
      {

        goto LABEL_23;
      }

      v37 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        OUTLINED_FUNCTION_491_0();
        v20 = sub_1D8581AB8();
        v39 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v42, v43, v44);
        goto LABEL_11;
      }

      sub_1D84C55D0(v37, v3, v4);
      v61 = OUTLINED_FUNCTION_150();
      sub_1D84C55D0(v61, v62, v7);
      v63 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v63, v64, v65);
      v66 = OUTLINED_FUNCTION_150();
      sub_1D84C55FC(v66, v67, v7);
      v20 = 1;
      return v20 & 1;
    case 2u:
      if ((v7 & 0xE0) == 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    case 3u:
      if ((v7 & 0xE0) != 0x60)
      {
        goto LABEL_23;
      }

      v33 = sub_1D84C5B38(*a1, *a2);
      goto LABEL_10;
    case 4u:
      if ((v7 & 0xE0) != 0x80)
      {
        goto LABEL_23;
      }

      v33 = sub_1D844AB18(*a1, *a2);
LABEL_10:
      v20 = v33;
LABEL_11:
      v34 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v34, v35, v36);
      v30 = OUTLINED_FUNCTION_95_1();
      goto LABEL_12;
    case 5u:
      if ((v7 & 0xE0) != 0xA0)
      {
        goto LABEL_23;
      }

LABEL_20:
      v45 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v45, v46, v47);
      v48 = OUTLINED_FUNCTION_95_1();
      sub_1D84C55FC(v48, v49, v50);
      v20 = v5 ^ v2 ^ 1;
      return v20 & 1;
    default:
      if (v7 >= 0x20)
      {
        OUTLINED_FUNCTION_150();
        sub_1D84C55F4();
LABEL_23:
        v51 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55FC(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v57, v58, v59);
        v20 = 0;
      }

      else
      {
        v70[0] = *a1;
        v70[1] = v3;
        v71 = v4 & 1;
        v68[0] = v5;
        v68[1] = v6;
        v69 = v7 & 1;
        v8 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v8, v9, v10);
        v11 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v11, v12, v13);
        v14 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v17, v18, v19);
        v20 = static GameActivityStaticStat.== infix(_:_:)(v70, v68);
        v21 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55FC(v21, v22, v23);
        v24 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v27, v28, v29);
        v30 = OUTLINED_FUNCTION_98_0();
LABEL_12:
        sub_1D84C55FC(v30, v31, v32);
      }

      return v20 & 1;
  }
}

uint64_t sub_1D84C55D0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 5 == 1)
  {
  }

  if (!(a3 >> 5))
  {
    return sub_1D84C55F4();
  }

  return v3;
}

uint64_t sub_1D84C55FC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 5 == 1)
  {
  }

  if (!(a3 >> 5))
  {
    return sub_1D84C5620();
  }

  return v3;
}

uint64_t sub_1D84C5628(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v5 = 0x64657469766E69;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x64656E696F6ALL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x64657469766E69;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x64656E696F6ALL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1952867692;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5754(unsigned __int8 a1, char a2)
{
  v2 = 0x6465766965636572;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6465766965636572;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E69646E6570;
      break;
    case 2:
      v5 = 0x65726576696C6564;
      goto LABEL_5;
    case 3:
      v5 = 0x65737365636F7270;
LABEL_5:
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
      break;
    case 2:
      v2 = 0x65726576696C6564;
      goto LABEL_10;
    case 3:
      v2 = 0x65737365636F7270;
LABEL_10:
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C58A0(unsigned __int8 a1, char a2)
{
  v2 = 0x746553746F6ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746553746F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x696C616974696E69;
      v3 = 0xEB0000000064657ALL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 0x657472617473;
      goto LABEL_6;
    case 3:
      v5 = 0x646573756170;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v6 = 0x656D75736572;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6465646E65;
      break;
    case 6:
      v3 = 0x80000001D8585CA0;
      v5 = 0xD000000000000012;
      break;
    case 7:
      v5 = 0xD000000000000017;
      v7 = "participantChanged";
      goto LABEL_9;
    case 8:
      v3 = 0x80000001D8585CE0;
      v5 = 0xD00000000000001ALL;
      break;
    case 9:
      v5 = 0xD000000000000017;
      v7 = "achievementProgressUpdated";
LABEL_9:
      v3 = v7 | 0x8000000000000000;
      break;
    case 10:
      v3 = 0x80000001D8585D20;
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x696C616974696E69;
      v8 = 0xEB0000000064657ALL;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v9 = 0x657472617473;
      goto LABEL_19;
    case 3:
      v2 = 0x646573756170;
      break;
    case 4:
      v8 = 0xE700000000000000;
      v9 = 0x656D75736572;
LABEL_19:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6465646E65;
      break;
    case 6:
      v8 = 0x80000001D8585CA0;
      v2 = 0xD000000000000012;
      break;
    case 7:
      v2 = 0xD000000000000017;
      v10 = "participantChanged";
      goto LABEL_22;
    case 8:
      v8 = 0x80000001D8585CE0;
      v2 = 0xD00000000000001ALL;
      break;
    case 9:
      v2 = 0xD000000000000017;
      v10 = "achievementProgressUpdated";
LABEL_22:
      v8 = v10 | 0x8000000000000000;
      break;
    case 10:
      v8 = 0x80000001D8585D20;
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8581AB8();
  }

  return v12 & 1;
}

uint64_t sub_1D84C5B38(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E6F7268636E7973;
    }

    else
    {
      v5 = 0x6F7268636E797361;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000073756FLL;
    }

    else
    {
      v6 = 0xEC00000073756F6ELL;
    }
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E6F7268636E7973;
    }

    else
    {
      v3 = 0x6F7268636E797361;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000073756FLL;
    }

    else
    {
      v2 = 0xEC00000073756F6ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5C58(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701602409;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657669746361;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x646573756170;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6465646E65;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701602409;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657669746361;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x646573756170;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6465646E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5DAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1952543859 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(1952543859, 0xE400000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84C5E14()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_430_0();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_237();
    v7 = v1 == v6 && v0 == 0xEA00000000006E6FLL;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xEA00000000006E6FLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == 0x7669686372417369 && v0 == 0xEA00000000006465;
      if (v8 || (OUTLINED_FUNCTION_7(0x7669686372417369, 0xEA00000000006465) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_335_1();
        v11 = v4 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_7(v9, 0xE900000000000065) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_223();
          v14 = v1 == v12 && v0 == v13;
          if (v14 || (OUTLINED_FUNCTION_7(v12, v13) & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_184_0();
            if (v1 == v16 && v15 == v0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_94_0(17, v15);
              OUTLINED_FUNCTION_369();
              if (v1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D84C5F78()
{
  OUTLINED_FUNCTION_430_0();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_237();
      break;
    case 2:
      OUTLINED_FUNCTION_443_0();
      break;
    case 3:
      OUTLINED_FUNCTION_249_0();
      break;
    case 4:
      OUTLINED_FUNCTION_223();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84C602C()
{
  OUTLINED_FUNCTION_395_0();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(25705, 0xE200000000000000, v1);
    OUTLINED_FUNCTION_369();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84C60BC()
{
  sub_1D84D7B58();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C60F4()
{
  sub_1D84D7B58();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C5E14();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C615C()
{
  sub_1D84D790C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C6194()
{
  sub_1D84D790C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C61F4()
{
  sub_1D84D7B04();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C622C()
{
  sub_1D84D7B04();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6264()
{
  sub_1D84D7AB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C629C()
{
  sub_1D84D7AB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C62D4()
{
  sub_1D84D7A08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C630C()
{
  sub_1D84D7A08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6344()
{
  sub_1D84D79B4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C637C()
{
  sub_1D84D79B4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C63B4()
{
  sub_1D84D7960();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C63EC()
{
  sub_1D84D7960();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityDefinitionFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C18, &qword_1D859A7A8);
  OUTLINED_FUNCTION_1();
  v30 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C20, &qword_1D859A7B0);
  OUTLINED_FUNCTION_1();
  v29 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C28, &qword_1D859A7B8);
  OUTLINED_FUNCTION_1();
  v28 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C30, &qword_1D859A7C0);
  OUTLINED_FUNCTION_1();
  v27 = v9;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C38, &qword_1D859A7C8);
  OUTLINED_FUNCTION_1();
  v26 = v11;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_160();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C40, &qword_1D859A7D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C48, &qword_1D859A7D8);
  OUTLINED_FUNCTION_1();
  v33 = v15;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_250_0();
  v31 = *(v0 + 8);
  v32 = *v0;
  v17 = *(v0 + 16);
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84D790C();
  sub_1D8581BB8();
  switch(v17 >> 5)
  {
    case 1u:
      LOBYTE(v34[0]) = 1;
      sub_1D84D7B04();
      OUTLINED_FUNCTION_101_0(&type metadata for GameActivityDefinitionFilter.DefinitionCodingKeys, v34);
      v23 = v26;
      OUTLINED_FUNCTION_256_2();
      sub_1D8581A08();
      goto LABEL_8;
    case 2u:
      LOBYTE(v34[0]) = 2;
      sub_1D84D7AB0();
      OUTLINED_FUNCTION_101_0(&type metadata for GameActivityDefinitionFilter.IsArchivedCodingKeys, v34);
      v23 = v27;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A18();
      goto LABEL_8;
    case 3u:
      LOBYTE(v34[0]) = 3;
      sub_1D84D7A08();
      OUTLINED_FUNCTION_101_0(&type metadata for GameActivityDefinitionFilter.PlayStyleCodingKeys, v34);
      LOBYTE(v34[0]) = v32;
      sub_1D84D7A5C();
      v23 = v28;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_482_0();
      sub_1D84D79B4();
      OUTLINED_FUNCTION_101_0(&type metadata for GameActivityDefinitionFilter.ReleaseStateCodingKeys, v34);
      LOBYTE(v34[0]) = v32;
      sub_1D8466A84();
      v23 = v29;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_488_0();
      sub_1D84D7960();
      OUTLINED_FUNCTION_101_0(&type metadata for GameActivityDefinitionFilter.SupportsPartyCodeCodingKeys, v34);
      v23 = v30;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A18();
LABEL_8:
      v24 = OUTLINED_FUNCTION_275();
      v25(v24, v23);
      v20 = OUTLINED_FUNCTION_276();
      v22 = v13;
      break;
    default:
      LOBYTE(v34[0]) = 0;
      sub_1D84D7B58();
      OUTLINED_FUNCTION_516_0(&type metadata for GameActivityDefinitionFilter.AssociatedWithCodingKeys, v34);
      v34[0] = v32;
      v34[1] = v31;
      v35 = v17 & 1;
      sub_1D84D7BAC();
      sub_1D8581A58();
      v18 = OUTLINED_FUNCTION_228();
      v19(v18);
      v20 = OUTLINED_FUNCTION_275();
      v22 = v33;
      break;
  }

  v21(v20, v22);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityDefinitionFilter.hash(into:)(unint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  switch(v3 >> 5)
  {
    case 1u:
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_188();

      return sub_1D85812B8();
    case 2u:
      v6 = 2;
      goto LABEL_12;
    case 3u:
      MEMORY[0x1DA7191F0](3);
      if (!v2)
      {
        OUTLINED_FUNCTION_332_1();
      }

      sub_1D85812B8();

    case 4u:
      MEMORY[0x1DA7191F0](4);
      sub_1D846779C();
      return sub_1D85811E8();
    case 5u:
      v6 = 5;
LABEL_12:
      MEMORY[0x1DA7191F0](v6);
      return sub_1D8581B78();
    default:
      OUTLINED_FUNCTION_429();
      if (v3)
      {
        OUTLINED_FUNCTION_447();
      }

      else
      {
        OUTLINED_FUNCTION_429();
      }

      v4 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_235_0();
      sub_1D848211C(v8);
      OUTLINED_FUNCTION_293_1();
      return sub_1D85811E8();
  }
}

uint64_t GameActivityDefinitionFilter.hashValue.getter()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  v8 = OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  GameActivityDefinitionFilter.hash(into:)(v8);
  return sub_1D8581B98();
}

void GameActivityDefinitionFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v69 = v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C70, &qword_1D859A7F0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_196();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C78, &qword_1D859A7F8);
  OUTLINED_FUNCTION_1();
  v70 = v6;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  v71 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C80, &qword_1D859A800);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_409_0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C88, &qword_1D859A808);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C90, &qword_1D859A810);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C98, &qword_1D859A818);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CA0, &unk_1D859A820);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_199();
  v72 = v3;
  v15 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v15, v16);
  sub_1D84D790C();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (!v0)
  {
    v17 = sub_1D8581968();
    sub_1D8440880(v17, 0);
    v19 = v18;
    if (v21 != v20 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v26 == v27)
      {
        __break(1u);
        return;
      }

      v28 = *(v25 + v23);
      sub_1D84408DC(v23 + 1, v22, v19, v25, v23, v24);
      v30 = v29;
      v32 = v31;
      swift_unknownObjectRelease();
      if (v30 == (v32 >> 1))
      {
        v33 = v0;
        switch(v28)
        {
          case 1:
            LOBYTE(v73[0]) = 1;
            sub_1D84D7B04();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.DefinitionCodingKeys, v73);
            v33 = 0;
            v56 = v1;
            sub_1D8581908();
            OUTLINED_FUNCTION_343_1();
            swift_unknownObjectRelease();
            v58 = OUTLINED_FUNCTION_110_2();
            v59(v58);
            v60 = OUTLINED_FUNCTION_106_1();
            v61(v60);
            v57 = 32;
            v30 = v72;
            break;
          case 2:
            LOBYTE(v73[0]) = 2;
            sub_1D84D7AB0();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.IsArchivedCodingKeys, v73);
            OUTLINED_FUNCTION_411_0();
            v43 = sub_1D8581918();
            swift_unknownObjectRelease();
            v44 = OUTLINED_FUNCTION_110_2();
            v45(v44);
            v46 = OUTLINED_FUNCTION_36_2();
            v47(v46);
            v56 = v43 & 1;
            v57 = 64;
            break;
          case 3:
            LOBYTE(v73[0]) = 3;
            sub_1D84D7A08();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.PlayStyleCodingKeys, v73);
            OUTLINED_FUNCTION_411_0();
            sub_1D84E8B94();
            OUTLINED_FUNCTION_243_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v48 = OUTLINED_FUNCTION_110_2();
            v49(v48);
            v50 = OUTLINED_FUNCTION_36_2();
            v51(v50);
            v56 = LOBYTE(v73[0]);
            v57 = 96;
            break;
          case 4:
            OUTLINED_FUNCTION_482_0();
            sub_1D84D79B4();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.ReleaseStateCodingKeys, v73);
            OUTLINED_FUNCTION_411_0();
            sub_1D847387C();
            OUTLINED_FUNCTION_259_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            (*(v70 + 8))(v71, v68);
            v41 = OUTLINED_FUNCTION_36_2();
            v42(v41);
            v33 = 0;
            v56 = LOBYTE(v73[0]);
            v57 = 0x80;
            break;
          case 5:
            OUTLINED_FUNCTION_488_0();
            sub_1D84D7960();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.SupportsPartyCodeCodingKeys, v73);
            OUTLINED_FUNCTION_411_0();
            v62 = sub_1D8581918();
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_212_0();
            v64(v63, v67);
            v65 = OUTLINED_FUNCTION_36_2();
            v66(v65);
            v33 = 0;
            v56 = v62 & 1;
            v57 = -96;
            break;
          default:
            LOBYTE(v73[0]) = 0;
            sub_1D84D7B58();
            OUTLINED_FUNCTION_173_0(&type metadata for GameActivityDefinitionFilter.AssociatedWithCodingKeys, v73);
            OUTLINED_FUNCTION_411_0();
            sub_1D84E8BE8();
            OUTLINED_FUNCTION_243_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v52 = OUTLINED_FUNCTION_110_2();
            v53(v52);
            v54 = OUTLINED_FUNCTION_36_2();
            v55(v54);
            v56 = v73[0];
            v33 = v73[1];
            v57 = v74;
            break;
        }

        *v69 = v56;
        *(v69 + 8) = v33;
        *(v69 + 16) = v57;
        __swift_destroy_boxed_opaque_existential_1(v30);
        goto LABEL_10;
      }
    }

    v34 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v34, MEMORY[0x1E69E6B28]);
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v36 = &type metadata for GameActivityDefinitionFilter;
    v37 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v37);
    OUTLINED_FUNCTION_206_0();
    (*(v38 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_36_2();
    v40(v39);
  }

  __swift_destroy_boxed_opaque_existential_1(v72);
LABEL_10:
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C75DC()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  v8 = OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  GameActivityDefinitionFilter.hash(into:)(v8);
  return sub_1D8581B98();
}

uint64_t static GameActivityFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_20;
      }

      v42 = OUTLINED_FUNCTION_183();
      v20 = sub_1D84C78BC(v42, v43);
      v44 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C3C(v44, v45, 1);
      v46 = OUTLINED_FUNCTION_506();
      sub_1D84E8C3C(v46, v47, 1);
      v48 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v48, v49, 1);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 1;
      goto LABEL_19;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_20;
      }

      v32 = OUTLINED_FUNCTION_183();
      v20 = sub_1D84C78BC(v32, v33);
      v34 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C3C(v34, v35, 2);
      v36 = OUTLINED_FUNCTION_506();
      sub_1D84E8C3C(v36, v37, 2);
      v38 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v38, v39, 2);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 2;
      goto LABEL_19;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      v20 = sub_1D84C5C58(*a1, *a2);
      v40 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v40, v41, 3);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 3;
      goto LABEL_19;
    case 4:
      if (v7 != 4)
      {
        goto LABEL_21;
      }

      v20 = sub_1D84C5754(*a1, *a2);
      v30 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v30, v31, 4);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 4;
      goto LABEL_19;
    case 5:
      if (v7 != 5)
      {
        goto LABEL_20;
      }

      v50 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v20 = OUTLINED_FUNCTION_333_0(v50, v2, v6);
        v52 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v52, v53, 5);
        v54 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v54, v55, 5);
        v56 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v56, v57, 5);
        v27 = OUTLINED_FUNCTION_506();
        v29 = 5;
        goto LABEL_19;
      }

      sub_1D84E8C3C(v50, v2, 5);
      v65 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C3C(v65, v66, 5);
      v67 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v67, v68, 5);
      v69 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v69, v70, 5);
      v20 = 1;
      break;
    default:
      if (*(a2 + 16))
      {
LABEL_20:

LABEL_21:
        v58 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v58, v59, v7);
        v60 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v60, v61, v4);
        v62 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v62, v63, v7);
        v20 = 0;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v8, v9, 0);
        v10 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v10, v11, 0);
        v12 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v12, v13, 0);
        v14 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v14, v15, 0);
        v16 = OUTLINED_FUNCTION_146_1();
        v20 = sub_1D844A4B0(v16, v17, v6, v5, v18, v19);
        v21 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v21, v22, 0);
        v23 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v23, v24, 0);
        v25 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v25, v26, 0);
        v27 = OUTLINED_FUNCTION_146_1();
        v29 = 0;
LABEL_19:
        sub_1D84E8C7C(v27, v28, v29);
      }

      break;
  }

  return v20 & 1;
}

uint64_t sub_1D84C78BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D8581AB8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D84C7948(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for AchievementProgress(0);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DB0, &qword_1D859A9C0);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v34 - v5;
  v7 = type metadata accessor for GameActivityRuntimeStat(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v35 = v16;
  v36 = &v34 - v15;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v39 = *(v14 + 72);
  v40 = v6;
  v34 = v10;
  while (1)
  {
    sub_1D84EA648();
    sub_1D84EA648();
    v21 = &v6[*(v41 + 48)];
    sub_1D84EA648();
    sub_1D84EA648();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v23 = v35;
    sub_1D84EA648();
    v24 = v23[1];
    v25 = v23[5];
    v26 = v7;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_15;
    }

    v27 = v23[4];
    v28 = *v21;
    v29 = *(v21 + 1);
    v30 = *(v21 + 4);
    v31 = *(v21 + 5);
    v48 = *v23;
    v49 = v24;
    v50 = *(v23 + 1);
    v51 = v27;
    v52 = v25;
    v43 = v28;
    v44 = v29;
    v45 = *(v21 + 1);
    v46 = v30;
    v47 = v31;
    sub_1D84BB658();
    v32 = sub_1D8581208();

    v6 = v40;

    sub_1D84EB2B8();
    v7 = v26;
    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    v20 += v39;
    v19 += v39;
    if (!--v17)
    {
      return 1;
    }
  }

  sub_1D84EA648();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D84EB32C();
    sub_1D84C49BC(&unk_1ECA39DB8);
    v22 = sub_1D8581208();
    v6 = v40;
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  sub_1D84EB2B8();
LABEL_15:
  sub_1D8436E18(v6, &qword_1ECA39DB0, &qword_1D859A9C0);
LABEL_16:
  sub_1D84EB2B8();
  sub_1D84EB2B8();
  return 0;
}

uint64_t sub_1D84C7E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(7562345, 0xE300000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84C7F00()
{
  sub_1D843BFB4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C7F38()
{
  sub_1D843BFB4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C7F70()
{
  sub_1D843C008();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C7FA8()
{
  sub_1D843C008();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C8008(uint64_t a1)
{
  sub_1D84E8E60();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1D84C8040(uint64_t a1)
{
  sub_1D84E8E60();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

uint64_t sub_1D84C80C0(uint64_t a1)
{
  sub_1D84E8E0C();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1D84C80F8(uint64_t a1)
{
  sub_1D84E8E0C();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

uint64_t sub_1D84C8130(uint64_t a1)
{
  sub_1D84E8DB8();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1D84C8168(uint64_t a1)
{
  sub_1D84E8DB8();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

uint64_t sub_1D84C81A0(uint64_t a1)
{
  sub_1D84E8CBC();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1D84C81D8(uint64_t a1)
{
  sub_1D84E8CBC();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

uint64_t sub_1D84C8210(uint64_t a1)
{
  sub_1D84E8D10();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1D84C8248(uint64_t a1)
{
  sub_1D84E8D10();
  v1 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

uint64_t GameActivityFilter.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v8 = 1;
      goto LABEL_11;
    case 2:
      v8 = 2;
LABEL_11:
      MEMORY[0x1DA7191F0](v8);
      v9 = OUTLINED_FUNCTION_188();

      result = sub_1D84E849C(v9, v10);
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);

      result = sub_1D84C8B98(a1, v2);
      break;
    case 4:
      MEMORY[0x1DA7191F0](4);

      result = sub_1D84C8974(a1, v2);
      break;
    case 5:
      MEMORY[0x1DA7191F0](5);
      OUTLINED_FUNCTION_188();

      result = sub_1D85812B8();
      break;
    default:
      OUTLINED_FUNCTION_429();
      v4 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_235_0();
      sub_1D848211C(v6);
      OUTLINED_FUNCTION_293_1();
      result = sub_1D85811E8();
      break;
  }

  return result;
}

uint64_t GameActivityFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D8581B58();
  switch(v2)
  {
    case 1:
      v10 = 1;
      goto LABEL_7;
    case 2:
      v10 = 2;
LABEL_7:
      MEMORY[0x1DA7191F0](v10);
      sub_1D84E849C(v12, v1);
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);
      sub_1D84C8B98(v12, v1);
      break;
    case 4:
      MEMORY[0x1DA7191F0](4);
      sub_1D84C8974(v12, v1);
      break;
    case 5:
      MEMORY[0x1DA7191F0](5);
      sub_1D85812B8();
      break;
    default:
      MEMORY[0x1DA7191F0](0);
      v3 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_231();
      v6 = sub_1D848211C(v5);
      OUTLINED_FUNCTION_525_0(v6, v7, v8, v9);
      break;
  }

  return sub_1D8581B98();
}

uint64_t sub_1D84C8538()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  v8 = OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  GameActivityFilter.hash(into:)(v8);
  return sub_1D8581B98();
}

GameServices::GameActivityUpdateContext_optional __swiftcall GameActivityUpdateContext.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void GameActivityUpdateContext.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_445_0(0x657472617473);
      break;
    case 3:
      OUTLINED_FUNCTION_379_0();
      break;
    case 4:
      OUTLINED_FUNCTION_445_0(0x656D75736572);
      break;
    case 7:
    case 9:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

void sub_1D84C86E8(void *a1@<X8>)
{
  GameActivityUpdateContext.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D84C8710()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AF8();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84C8758()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AF8();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84C87D8(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_379(a1);
  a2(v5, a1);
  return sub_1D8581B98();
}

uint64_t sub_1D84C8828(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84C88D0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8974(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8A2C(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8B98(uint64_t a1, char a2)
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8C84(uint64_t a1, char a2)
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84C8D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1D8581B58();
  a3(v6, a2);
  return sub_1D8581B98();
}

void *static $DistributedGameActivityServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v5);
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v6);
  OUTLINED_FUNCTION_368();
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedGameActivityServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v1);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameActivityServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedGameActivityServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84C8F7C()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedGameActivityServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameActivityServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameActivityServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v3);
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v4);

  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_7_0();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedGameActivityServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84C91D0@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameActivityServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C925C()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84C92BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84C9338()
{
  OUTLINED_FUNCTION_475();
  v6 = v0;
  OUTLINED_FUNCTION_204();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_188();

  return (sub_1D84C93E8)(v4);
}

uint64_t sub_1D84C93E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 185) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1D8581018();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C9580);
}

uint64_t sub_1D84C9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 152) = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    v27 = *(v15 + 64);
    *(v15 + 40) = *(v15 + 56);
    *(v15 + 48) = v27;

    v28 = OUTLINED_FUNCTION_167();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_60(v30, v31, v32, v33, v15 + 40);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    *(v15 + 184) = *(v15 + 185);
    OUTLINED_FUNCTION_229(0x65706F6373, v38, v39, v40, v15 + 184);
    sub_1D8474444();
    sub_1D8474498();
    v41 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {

      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    *(v15 + 168) = v56;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v57);
    OUTLINED_FUNCTION_217();
    *v56 = v58;
    v56[1] = sub_1D84C98D0;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859E550);
    v17 = swift_task_alloc();
    *(v15 + 160) = v17;
    *v17 = v15;
    v17[1] = sub_1D849AABC;
    OUTLINED_FUNCTION_207_0(*(v15 + 56));
    OUTLINED_FUNCTION_240();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84C98D0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84C99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_1D8581018();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 152) = v12;
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 168) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 176) = v14;
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v5;
  v17 = v5[1];
  *(v1 + 184) = v15;
  *(v1 + 192) = v16;
  *(v1 + 200) = v17;
  *(v1 + 250) = *v3;
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84C9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 88);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 208) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
    }

    v29 = *(v14 + 200);
    *(v14 + 56) = *(v14 + 192);
    *(v14 + 64) = v29;

    v30 = OUTLINED_FUNCTION_167();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_60(v32, v33, v34, v35, v14 + 56);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v37);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    *(v14 + 249) = *(v14 + 250);
    OUTLINED_FUNCTION_229(0x65706F6373, v40, v41, v42, v14 + 249);
    sub_1D8474444();
    sub_1D8474498();
    v43 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {

      v46 = OUTLINED_FUNCTION_52();
      v47(v46);
      v48 = OUTLINED_FUNCTION_51_0();
      v49(v48);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v58 = swift_task_alloc();
    *(v14 + 216) = v58;
    *v58 = v14;
    OUTLINED_FUNCTION_145_0(v58);
    OUTLINED_FUNCTION_53(v59);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v60, v61, v62, v63, v64, v65, v66);
  }

  else
  {
    v17 = *(v14 + 192);
    v16 = *(v14 + 200);
    *(v14 + 72) = *(v14 + 112);
    *(v14 + 40) = v17;
    LOBYTE(v17) = *(v14 + 250);
    *(v14 + 48) = v16;
    *(v14 + 248) = v17;
    OUTLINED_FUNCTION_54();
    v68 = v18 + *v18;
    v19 = swift_task_alloc();
    *(v14 + 232) = v19;
    *v19 = v14;
    v19[1] = sub_1D84CA178;
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v68, a12, a13, a14);
  }
}

uint64_t sub_1D84C9FC0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84CA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84CA178()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84CA2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84CA370()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_24(&unk_1D859E548);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  v3 = OUTLINED_FUNCTION_188();

  return v5(v3);
}

uint64_t sub_1D84CA40C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CA538);
}

uint64_t sub_1D84CA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[16] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v27 = v15[8];
    v15[5] = v15[7];
    v15[6] = v27;

    v28 = OUTLINED_FUNCTION_167();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_60(v30, v31, v32, v33, (v15 + 5));
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v15[18] = v50;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v51);
    OUTLINED_FUNCTION_217();
    *v50 = v52;
    v50[1] = sub_1D849BF18;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E548);
    v17 = swift_task_alloc();
    v15[17] = v17;
    *v17 = v15;
    v17[1] = sub_1D849BE00;
    OUTLINED_FUNCTION_207_0(v15[7]);
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[18] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[19] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v3;
  v13 = v3[1];
  v1[20] = v11;
  v1[21] = v12;
  v1[22] = v13;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84CA90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[11];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[23] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    }

    v27 = v14[22];
    v14[7] = v14[21];
    v14[8] = v27;

    v28 = OUTLINED_FUNCTION_167();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_60(v30, v31, v32, v33, (v14 + 7));
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v14[24] = v50;
    *v50 = v14;
    OUTLINED_FUNCTION_145_0(v50);
    OUTLINED_FUNCTION_53(v51);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    v14[9] = v14[14];
    OUTLINED_FUNCTION_38(v14[22]);
    OUTLINED_FUNCTION_54();
    v60 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[26] = v17;
    *v17 = v14;
    v17[1] = sub_1D849C6F4;
    OUTLINED_FUNCTION_239();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v60, a12, a13, a14);
  }
}

uint64_t sub_1D84CAC2C()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  OUTLINED_FUNCTION_24(&unk_1D859E540);
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  v11[1] = sub_1D8442F30;

  return v14(v3, v5, v6, v1, v8, v9);
}

uint64_t sub_1D84CACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CAF00);
}

uint64_t DistributedGameActivityServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 160) = v6;
  *(v1 + 168) = v0;
  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  *(v1 + 128) = v9;
  *(v1 + 136) = v10;
  v11 = sub_1D8581018();
  *(v1 + 176) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 184) = v12;
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 200) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 208) = v14;
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  *(v1 + 224) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 232) = v16;
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 248) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 256) = v18;
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v5;
  v21 = v5[1];
  *(v1 + 264) = v19;
  *(v1 + 272) = v20;
  *(v1 + 280) = v21;
  *(v1 + 288) = *v3;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84CBA30()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84CBB7C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E538);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D84CBC14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CBD3C);
}

uint64_t sub_1D84CBD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859E538);
    v15 = swift_task_alloc();
    v13[16] = v15;
    *v15 = v13;
    v15[1] = sub_1D84F0BB8;
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  v13[15] = OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_354();
  v14 = type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_453_0(v25, v26, v27, v28, v29);
  sub_1D849EA88();
  sub_1D849EB38();
  v30 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
  sub_1D849EBE8();
  sub_1D849ED24();
  v32 = OUTLINED_FUNCTION_16();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v32, v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {

    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v38);
  OUTLINED_FUNCTION_168();
  *v37 = v39;
  v37[1] = sub_1D8484458;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameActivityServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84CC130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_453_0(v27, v28, v29, v30, v31);
    sub_1D849EA88();
    sub_1D849EB38();
    v32 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    v34 = OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v34, v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_294(v47);
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[23] = v17;
    *v17 = v14;
    v17[1] = sub_1D84CC47C;
    OUTLINED_FUNCTION_207_0(v14[9]);
    OUTLINED_FUNCTION_169();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84CC47C()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9);
  }

  else
  {

    OUTLINED_FUNCTION_69_2();

    return v10(v3);
  }
}

uint64_t sub_1D84CC5BC()
{
  OUTLINED_FUNCTION_426();
  v7 = v0;
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_50(&unk_1D859E530);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_97(v2);
  *v3 = v4;
  v3[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_269_1();

  return v6();
}

uint64_t sub_1D84CC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = a7;
  v8[18] = v7;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1D8581018();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CC89C);
}

uint64_t sub_1D84CC89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15[32] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
    }

    v30 = v15[13];
    v15[5] = v15[12];
    v15[6] = v30;

    v31 = OUTLINED_FUNCTION_167();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_60(v33, v34, v35, v36, (v15 + 5));
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v37);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v38);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    v15[9] = v15[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v15[10] = v15[15];

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v41 = v15[17];
    v15[7] = v15[16];
    v15[8] = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v42 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v42, v43, v44, v45, (v15 + 7));
    sub_1D84751F0();
    sub_1D8475274();
    v46 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    v48 = OUTLINED_FUNCTION_325();
    __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
    OUTLINED_FUNCTION_26(&qword_1ECA39908);
    OUTLINED_FUNCTION_25(&qword_1ECA39910);
    v50 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v50, v51);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v52)
    {
      v53 = v15[30];
      a10 = v15[29];
      a11 = v15[31];
      a9 = v15[28];
      v54 = v15[26];
      v56 = v15[24];
      v55 = v15[25];
      v58 = v15[22];
      v57 = v15[23];

      (*(v57 + 8))(v56, v58);
      v59 = *(v54 + 8);
      v60 = OUTLINED_FUNCTION_258();
      v59(v60);
      (v59)(a9, v55);
      (*(v53 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v69 = swift_task_alloc();
    v15[34] = v69;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v70);
    OUTLINED_FUNCTION_217();
    *v69 = v71;
    v69[1] = sub_1D84CCDB8;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D859E530);
    v73 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v15[33] = v18;
    *v18 = v19;
    v18[1] = sub_1D849F634;
    OUTLINED_FUNCTION_169();

    return v27(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v73, a12, a13, a14);
  }
}

uint64_t sub_1D84CCDB8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameActivityServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 176) = v6;
  *(v1 + 184) = v0;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 144) = v9;
  *(v1 + 152) = v10;
  *(v1 + 136) = v11;
  v12 = sub_1D8581018();
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 200) = v13;
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 216) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 224) = v15;
  *(v1 + 232) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  *(v1 + 240) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 248) = v17;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 272) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 280) = v19;
  v20 = OUTLINED_FUNCTION_332();
  v21 = *v5;
  v22 = v5[1];
  *(v1 + 288) = v20;
  *(v1 + 296) = v21;
  *(v1 + 304) = v22;
  *(v1 + 312) = *v3;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84CD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 160);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 328) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }

    v31 = *(v14 + 304);
    *(v14 + 72) = *(v14 + 296);
    *(v14 + 80) = v31;

    v32 = OUTLINED_FUNCTION_167();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_60(v34, v35, v36, v37, v14 + 72);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v38);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v39);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v40, v41);
    *(v14 + 120) = *(v14 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    *(v14 + 128) = *(v14 + 152);

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v42 = *(v14 + 320);
    *(v14 + 88) = *(v14 + 312);
    *(v14 + 96) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v43 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v43, v44, v45, v46, v14 + 88);
    sub_1D84751F0();
    sub_1D8475274();
    v47 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v48);
    v49 = OUTLINED_FUNCTION_325();
    __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    OUTLINED_FUNCTION_26(&qword_1ECA39908);
    OUTLINED_FUNCTION_25(&qword_1ECA39910);
    v51 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v51, v52);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v53)
    {
      v54 = *(v14 + 280);
      a10 = *(v14 + 272);
      a11 = *(v14 + 288);
      a9 = *(v14 + 264);
      v55 = *(v14 + 248);
      v57 = *(v14 + 232);
      v56 = *(v14 + 240);
      v59 = *(v14 + 216);
      v58 = *(v14 + 224);

      (*(v58 + 8))(v57, v59);
      v60 = *(v55 + 8);
      v61 = OUTLINED_FUNCTION_258();
      v60(v61);
      (v60)(a9, v56);
      (*(v54 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 336) = v70;
    *v70 = v71;
    v70[1] = sub_1D84CD828;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(v14 + 296);
    v16 = *(v14 + 304);
    *(v14 + 104) = *(v14 + 184);
    *(v14 + 40) = v17;
    *(v14 + 48) = v16;
    *(v14 + 56) = *(v14 + 312);
    OUTLINED_FUNCTION_54();
    v73 = v18 + *v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 352) = v19;
    *v19 = v20;
    v19[1] = sub_1D84A03D4;
    OUTLINED_FUNCTION_169();

    return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v73, a12, a13, a14);
  }
}

uint64_t sub_1D84CD828()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84CDB04()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E528);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D84CDB9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CDCC4);
}

uint64_t sub_1D84CDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859E528);
    v15 = swift_task_alloc();
    v13[16] = v15;
    *v15 = v13;
    v15[1] = sub_1D84C2B28;
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  v13[15] = OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_354();
  v14 = type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
  OUTLINED_FUNCTION_280_0();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_396_0(v25, v26, v27, v28, v29);
  sub_1D84A214C();
  sub_1D84A21FC();
  v30 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
  sub_1D84A22AC();
  sub_1D84A23E8();
  v32 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v32, v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {

    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v38);
  OUTLINED_FUNCTION_168();
  *v37 = v39;
  v37[1] = sub_1D84A1480;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameActivityServiceProtocol<>.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84CE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_396_0(v27, v28, v29, v30, v31);
    sub_1D84A214C();
    sub_1D84A21FC();
    v32 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A22AC();
    sub_1D84A23E8();
    v34 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v34, v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_294(v47);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[23] = v17;
    *v17 = v14;
    v17[1] = sub_1D84CE3A8;
    OUTLINED_FUNCTION_207_0(v14[9]);
    OUTLINED_FUNCTION_169();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84CE3A8()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v5 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9);
  }

  else
  {

    OUTLINED_FUNCTION_69_2();

    return v10(v3);
  }
}

uint64_t sub_1D84CE4E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return sub_1D84CE594(v0, v2);
}

uint64_t sub_1D84CE594(uint64_t a1, char a2)
{
  *(v3 + 177) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1D8581018();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = type metadata accessor for GameActivityInstance(0);
  *(v3 + 112) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CE758);
}

uint64_t sub_1D84CE758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 144) = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v27);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v28 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v28);
    *(v15 + 176) = *(v15 + 177);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    v29 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {

      v32 = OUTLINED_FUNCTION_52();
      v33(v32);
      v34 = OUTLINED_FUNCTION_51_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v44 = swift_task_alloc();
    *(v15 + 160) = v44;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v45);
    OUTLINED_FUNCTION_217();
    *v44 = v46;
    v44[1] = sub_1D84A2BFC;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859E520);
    v17 = swift_task_alloc();
    *(v15 + 152) = v17;
    *v17 = v15;
    v17[1] = sub_1D84A2AAC;
    OUTLINED_FUNCTION_207_0(*(v15 + 40));
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 56) = v7;
  v8 = sub_1D8581018();
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 104) = v9;
  *(v1 + 112) = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v1 + 120) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 128) = v11;
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v12 = type metadata accessor for GameActivityInstance(0);
  *(v1 + 144) = v12;
  OUTLINED_FUNCTION_363(v12);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v1 + 160) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 168) = v14;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  *(v1 + 226) = *v3;
  v15 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84CEC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 64);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 184) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v28);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v29 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v29);
    *(v14 + 225) = *(v14 + 226);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    v30 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {

      v33 = OUTLINED_FUNCTION_52();
      v34(v33);
      v35 = OUTLINED_FUNCTION_51_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v45 = swift_task_alloc();
    *(v14 + 192) = v45;
    *v45 = v14;
    v45[1] = sub_1D84CEFEC;
    OUTLINED_FUNCTION_53(*(v14 + 88));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v46, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    v16 = *(v14 + 226);
    *(v14 + 40) = *(v14 + 88);
    *(v14 + 224) = v16;
    OUTLINED_FUNCTION_54();
    v54 = v17 + *v17;
    v18 = swift_task_alloc();
    *(v14 + 208) = v18;
    *v18 = v14;
    v18[1] = sub_1D84A3570;
    OUTLINED_FUNCTION_207_0(*(v14 + 56));
    OUTLINED_FUNCTION_239();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v54, a12, a13, a14);
  }
}

uint64_t sub_1D84CEFEC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84CF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_452_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84CF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_452_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84CF270()
{
  OUTLINED_FUNCTION_475();
  v7 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E518);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_97(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_373_0(v2);

  return v5(v4);
}

uint64_t sub_1D84CF308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D40, &qword_1D859A930);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CF434);
}

uint64_t sub_1D84CF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[17] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v26 = v13[9];
    v13[5] = v13[8];
    v13[6] = v26;

    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_300_1();
    OUTLINED_FUNCTION_434_0();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {

      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v45 = swift_task_alloc();
    v13[19] = v45;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v46);
    OUTLINED_FUNCTION_217();
    *v45 = v47;
    v45[1] = sub_1D84CF72C;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E518);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[18] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_420_0(v15);
    OUTLINED_FUNCTION_197();

    return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84CF72C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameActivityServiceProtocol<>.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D40, &qword_1D859A930);
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v0;
  v13 = v0[1];
  v1[21] = v11;
  v1[22] = v12;
  v1[23] = v13;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84CF920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[12];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[24] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    v28 = v14[23];
    v14[7] = v14[22];
    v14[8] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_300_1();
    OUTLINED_FUNCTION_434_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[25] = v47;
    *v47 = v48;
    v47[1] = sub_1D84CFC68;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v14[9] = v14[15];
    OUTLINED_FUNCTION_38(v14[23]);
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[27] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_374_0(v17);
    OUTLINED_FUNCTION_169();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84CFC68()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84CFD60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84CFE88()
{
  OUTLINED_FUNCTION_475();
  v7 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E510);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_97(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_373_0(v2);

  return v5(v4);
}

uint64_t sub_1D84CFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D004C);
}

uint64_t sub_1D84D004C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[17] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    v26 = v13[9];
    v13[5] = v13[8];
    v13[6] = v26;

    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_115_0(7499622, 0xE300000000000000, v29, v30, v31);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v33);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {

      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v13[19] = v48;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v49);
    OUTLINED_FUNCTION_217();
    *v48 = v50;
    v48[1] = sub_1D84D0458;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E510);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[18] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_420_0(v15);
    OUTLINED_FUNCTION_197();

    return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84D0340()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D84D0458()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84D0550()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_522();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84D05F4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_522();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameActivityServiceProtocol<>.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v0;
  v13 = v0[1];
  v1[21] = v11;
  v1[22] = v12;
  v1[23] = v13;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84D0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[12];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[24] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    }

    v28 = v14[23];
    v14[7] = v14[22];
    v14[8] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_115_0(7499622, 0xE300000000000000, v31, v32, v33);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[25] = v50;
    *v50 = v51;
    v50[1] = sub_1D84D0ADC;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v14[9] = v14[15];
    OUTLINED_FUNCTION_38(v14[23]);
    OUTLINED_FUNCTION_54();
    v53 = v16 + *v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[27] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_374_0(v17);
    OUTLINED_FUNCTION_169();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D84D0ADC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84D0BD4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_521_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84D0C78()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84D0DA0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_521_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84D0E48()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84D0EB0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_24(&unk_1D859E508);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  v3 = OUTLINED_FUNCTION_506();

  return v5(v3);
}

uint64_t sub_1D84D0F4C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D8581018();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for GameActivityInstance(0);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D1110);
}

uint64_t sub_1D84D1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[20] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v27);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v28 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v28);
    v15[5] = v15[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_433_0(v29, v30, v31, v32, v33);
    sub_1D84769B4();
    sub_1D8476AE8();
    v34 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v49 = swift_task_alloc();
    v15[22] = v49;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v50);
    OUTLINED_FUNCTION_217();
    *v49 = v51;
    v49[1] = sub_1D84A4228;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E508);
    v17 = swift_task_alloc();
    v15[21] = v17;
    *v17 = v15;
    v17[1] = sub_1D84A40D8;
    OUTLINED_FUNCTION_207_0(v15[6]);
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1D8581018();
  v1[14] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_332();
  v11 = type metadata accessor for GameActivityInstance(0);
  v1[20] = v11;
  OUTLINED_FUNCTION_363(v11);
  v1[21] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v1[22] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_332();
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84D15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v27);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v28 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v28);
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_433_0(v29, v30, v31, v32, v33);
    sub_1D84769B4();
    sub_1D8476AE8();
    v34 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v49 = swift_task_alloc();
    v14[26] = v49;
    *v49 = v14;
    v49[1] = sub_1D84D19A4;
    OUTLINED_FUNCTION_53(v14[13]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v50, v51, v52, v53, v54, v55, v56);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v58 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[28] = v17;
    *v17 = v14;
    v17[1] = sub_1D84D1A9C;
    OUTLINED_FUNCTION_207_0(v14[8]);
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v58, a12, a13, a14);
  }
}

uint64_t sub_1D84D19A4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84D1A9C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84D1BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_520_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84D1CA8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_520_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84D1D20()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_24(&unk_1D859E500);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);

  return v4();
}

uint64_t sub_1D84D1DAC()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D1E6C);
}

uint64_t sub_1D84D20B4()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_332();
  v7 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v7);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84D227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[8];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D58, &qword_1D859A968), sub_1D84EAE60(), sub_1D84EAF18(), v17 = OUTLINED_FUNCTION_16(), OUTLINED_FUNCTION_353(v17, v18), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v19))
    {
      OUTLINED_FUNCTION_342();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v39;
      *v39 = v40;
      v39[1] = sub_1D84663B8;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[10]);
    OUTLINED_FUNCTION_54();
    v42 = v29 + *v29;
    v30 = swift_task_alloc();
    v14[18] = v30;
    *v30 = v14;
    OUTLINED_FUNCTION_340_1(v30);
    OUTLINED_FUNCTION_169();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v42, a12, a13, a14);
  }
}

uint64_t sub_1D84D2508()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_505_0();

    return v9(v8);
  }
}

uint64_t sub_1D84D2638()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_24(&unk_1D859E4F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);

  return v4();
}

uint64_t sub_1D84D26C4()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D2784);
}

uint64_t sub_1D84D29CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_332();
  v7 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v7);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84D2B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[8];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D70, &qword_1D859A980), sub_1D84EB084(), sub_1D84EB13C(), v17 = OUTLINED_FUNCTION_16(), OUTLINED_FUNCTION_353(v17, v18), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v19))
    {
      OUTLINED_FUNCTION_342();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v39;
      *v39 = v40;
      v39[1] = sub_1D84D2DF8;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[10]);
    OUTLINED_FUNCTION_54();
    v42 = v29 + *v29;
    v30 = swift_task_alloc();
    v14[18] = v30;
    *v30 = v14;
    OUTLINED_FUNCTION_340_1(v30);
    OUTLINED_FUNCTION_169();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v42, a12, a13, a14);
  }
}

uint64_t sub_1D84D2DF8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84D2EF0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_505_0();

    return v9(v8);
  }
}

uint64_t sub_1D84D3020(uint64_t a1)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v1);
  v2 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v2);
}

uint64_t sub_1D84D3094(uint64_t a1)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v1);
  sub_1D843D180();
  OUTLINED_FUNCTION_368();
  return sub_1D8580FD8();
}

uint64_t sub_1D84D3114@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v4);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_269_1();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

GameServices::GameActivityPlayStyle_optional __swiftcall GameActivityPlayStyle.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}