uint64_t sub_1B8539D48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8539E28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B851F914;

  return sub_1B8539088(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1B8539F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8539F30, 0, 0);
}

uint64_t sub_1B8539F30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1B853A058;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1B853A058()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B853A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1B853B0C8(a1, v19 - v9);
  v11 = sub_1B8566108();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B853B060(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B85660E8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B85660F8();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1B853A320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], a2);
}

void *Array.elementClosestInIndex<A>(to:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_1B85660C8();
  swift_getWitnessTable();
  result = sub_1B85661B8();
  if (v10)
  {
    goto LABEL_2;
  }

  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else if (!__OFADD__(v9, 1))
  {
    if (v9 + 1 < sub_1B8566088() || ((v9 - 1) & 0x8000000000000000) == 0)
    {
      sub_1B85660D8();
      v8 = 0;
      return (*(*(a3 - 8) + 56))(a5, v8, 1, a3);
    }

LABEL_2:
    v8 = 1;
    return (*(*(a3 - 8) + 56))(a5, v8, 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t Array.stablePartition(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v19 - v12;
  v13 = sub_1B8565CA8();
  v27 = v13;
  v26[1] = sub_1B8565CA8();
  if (sub_1B8566088())
  {
    v14 = 0;
    v24 = (v6 + 16);
    v19 = v7;
    v20 = (v6 + 32);
    while (1)
    {
      v15 = sub_1B8566068();
      sub_1B8566018();
      if (v15)
      {
        v16 = *(v6 + 16);
        v16(v25, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, a4);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1B8566458();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v26[0] = result;
        v16 = *v24;
        (*v24)(v25, v26, a4);
        swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
          return v27;
        }
      }

      (*v20)(v11, v25, a4);
      v22(v11);
      v16(v21, v11, a4);
      sub_1B85660C8();
      sub_1B8566098();
      (*(v6 + 8))(v11, a4);
      ++v14;
      if (v17 == sub_1B8566088())
      {
        return v27;
      }
    }
  }

  return v13;
}

uint64_t Array<A>.removingDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B8566088() < 2)
  {
  }

  else
  {
    v6 = sub_1B8566048();
    if (sub_1B8566088())
    {
      sub_1B853AB44(v6, a2, a3);
    }

    MEMORY[0x1EEE9AC00](v7);
    sub_1B85660C8();

    swift_getWitnessTable();
    a1 = sub_1B85664B8();
  }

  return a1;
}

BOOL sub_1B853A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;

  v12 = sub_1B8566168();

  if ((v12 & 1) == 0)
  {
    (*(v6 + 16))(v9, a1, a3);
    sub_1B8566178();
    sub_1B8566148();
    (*(v6 + 8))(v11, a3);
  }

  return (v12 & 1) == 0;
}

uint64_t sub_1B853AAF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B853AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  if (sub_1B8566088())
  {
    sub_1B85663F8();
    v15 = sub_1B85663E8();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1B8566088();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1B8566068();
    sub_1B8566018();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B8566458();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1B8565CF8();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1B8565D58();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B853AF44(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B851F31C;

  return sub_1B8539F00(a1, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t sub_1B853B060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B853B0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall Data.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  v4 = sub_1B85659A8();
  [(WBSSQLiteStatement *)to bindData:v4 atParameterIndex:at];
}

Swift::Void __swiftcall Int.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    [WBSSQLiteStatement bindInt:sel_bindInt_atParameterIndex_ atParameterIndex:?];
    return;
  }

  __break(1u);
}

id sub_1B853B228(id result)
{
  if (*v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (*v1 <= 0x7FFFFFFF)
  {
    return [result bindInt_atParameterIndex_];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall String.bind(to:at:)(WBSSQLiteStatement *to, Swift::Int at)
{
  v4 = sub_1B8565D68();
  [(WBSSQLiteStatement *)to bindString:v4 atParameterIndex:at];
}

void sub_1B853B2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v10 = (a5)(*v6, v6[1], a3, a4);
  [a1 *a6];
}

void WBSSQLiteDatabase.performTransaction(_:)(void (*a1)(void))
{
  WBSSQLiteDatabase.executeQuery(_:_:)(0xD000000000000011, 0x80000001B858E550, MEMORY[0x1E69E7CC0]);
  if (!v1)
  {
    a1();
    WBSSQLiteDatabase.executeQuery(_:_:)(0xD000000000000012, 0x80000001B858E590, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B853B45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A958, &qword_1B8574C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B853B4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A958, &qword_1B8574C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B853B534(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::String_optional __swiftcall WBSSavedAccount.stableIDString()()
{
  v0 = sub_1B8565DF8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  WBSSavedAccount.stableID.getter(v13);
  v1 = WBSSavedAccount.StableID.encode()();
  v11[4] = v13[4];
  v11[5] = v13[5];
  v12 = v14;
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  v11[3] = v13[3];
  v2 = v1;
  v4 = v3;
  sub_1B853BAE0(v11);
  sub_1B8565DE8();
  v5 = sub_1B8565DC8();
  v7 = v6;
  sub_1B851D53C(v2, v4);
  v8 = v7;
  v9 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t WBSSavedAccount.stableID.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 user];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_1B8565DA8();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = [v1 user]) != 0)
  {
    v10 = v9;
    v11 = sub_1B8565DA8();
    v52 = v12;
    v53 = v11;
  }

  else
  {
LABEL_7:
    v52 = 0;
    v53 = 0;
  }

  v13 = [v1 sites];
  if (v13 && (v14 = v13, v15 = sub_1B8566008(), v14, v16 = *(v15 + 16), , v16) && (v17 = [v1 sites]) != 0)
  {
    v18 = v17;
    v51 = sub_1B8566008();
  }

  else
  {
    v51 = 0;
  }

  v19 = [v1 passkeyCredentialID];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B8565DA8();
    v49 = v22;
    v50 = v21;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v23 = [v1 passkeyRelyingPartyID];
  if (v23)
  {
    v24 = v23;
    v47 = sub_1B8565DA8();
    v26 = v25;
  }

  else
  {
    v47 = 0;
    v26 = 0;
  }

  v27 = [v1 sharedGroupID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1B8565DA8();
    v31 = v30;

    if (v29 == sub_1B8565DA8() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1B8566758();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  v29 = 0;
  v31 = 0;
LABEL_26:
  v34 = [v1 signInWithAppleAccount];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 clientID];
    v37 = sub_1B8565DA8();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = [v1 signInWithAppleAccount];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 userID];
    v43 = sub_1B8565DA8();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *a1 = v53;
  a1[1] = v52;
  a1[2] = v51;

  a1[3] = v50;
  a1[4] = v49;

  a1[5] = v48;
  a1[6] = v26;

  a1[7] = v29;
  a1[8] = v31;

  a1[9] = v37;
  a1[10] = v39;

  a1[11] = v43;
  a1[12] = v45;
  return result;
}

void sub_1B853BA7C(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B8565DA8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id WBSSavedAccount.sharedGroupID.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 sharedGroupID];
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_1B8565DA8();
  v7 = v6;

  if (v5 == sub_1B8565DA8() && v7 == v8)
  {

LABEL_9:

LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v10 = sub_1B8566758();

  if (v10)
  {
    goto LABEL_9;
  }

  *a1 = v5;
  a1[1] = v7;
  return result;
}

void sub_1B853BC04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 < 0 || a1 >= a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  a3 = a1 * a4;
  a5 = (a1 * a4) >> 64;
  if (a5 != (a1 * a4) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  a5 = (a1 + 1) * a4;
  if (((a1 + 1) * a4) >> 64 != a5 >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a5 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(a2 + 16);
  if (v5 < a3 || v5 < a5)
  {
    goto LABEL_16;
  }

  if (v5 == a5 - a3)
  {

    return;
  }

LABEL_17:
  sub_1B853F47C(a2, a2 + 32, a3, (2 * a5) | 1);
}

uint64_t sub_1B853BD18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B853C2B0(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

_OWORD *WBSSavedAccountSearchMatch.__allocating_init(score:matchingType:matchingRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = a1;
  *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
  result = swift_allocObject();
  result[1] = xmmword_1B85740E0;
  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    *(result + 4) = a3;
    *(result + 5) = a3 + a4;
    *&v9[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = result;
    v11.receiver = v9;
    v11.super_class = v4;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  return result;
}

_OWORD *WBSSavedAccountSearchMatch.init(score:matchingType:matchingRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = a1;
  *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
  result = swift_allocObject();
  result[1] = xmmword_1B85740E0;
  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    *(result + 4) = a3;
    *(result + 5) = a3 + a4;
    *&v4[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = result;
    v8.receiver = v4;
    v8.super_class = type metadata accessor for WBSSavedAccountSearchMatch();
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

id WBSSavedAccountSearchMatch.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSSavedAccountSearchMatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSSavedAccountSearchMatch();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WBSSavedAccountMatchingType.debugDescription.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x4565746176697270;
      }

      if (a1 == 7)
      {
        return 0x614D786966657270;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x4E65636976726573;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1919251317;
      }

      if (a1 == 1)
      {
        return 0x6E69616D6F64;
      }

LABEL_18:
      v2 = sub_1B8566728();
      MEMORY[0x1B8CBF120](v2);

      MEMORY[0x1B8CBF120](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    if (a1 == 2)
    {
      return 0x7365746F6ELL;
    }

    else
    {
      return 0x69546D6F74737563;
    }
  }
}

unint64_t sub_1B853C2D8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B853FB2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B8566438();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B8566498() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_1B853C428(uint64_t a1, uint64_t a2)
{
  v39 = sub_1B8566858();
  v2 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B85740E0;
  *(v4 + 32) = 0;
  v5 = sub_1B85493A8(&unk_1F3060F28);
  swift_arrayDestroy();
  result = sub_1B8565E78();
  if (result < 1)
  {
    goto LABEL_54;
  }

  if (result == 1)
  {
LABEL_51:

    return v4;
  }

  v7 = result;
  v37 = (v2 + 8);
  v40 = v5;
  v41 = v5 + 56;
  v8 = 1;
  while (v8 != v7)
  {
    sub_1B8565EA8();
    result = sub_1B8565F58();
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v10 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      goto LABEL_53;
    }

    v11 = result;
    v12 = v9;
    if ((v9 & 0x1000000000000000) != 0)
    {
      v17 = sub_1B8565E38();
    }

    else
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v14 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = sub_1B8566498();
        }

        v14 = *v13;
      }

      v15 = v14;
      v16 = (__clz(~v14) - 24) << 16;
      if (v15 < 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 65541;
      }
    }

    v18 = 4 * v10;
    if (4 * v10 == v17 >> 14)
    {
      result = sub_1B853C2D8(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_55;
      }

      v19 = v38;
      sub_1B8566868();
      v20 = sub_1B8566838();
      (*v37)(v19, v39);
      if (v20)
      {
        goto LABEL_45;
      }
    }

    if ((sub_1B8565D28() & 1) == 0)
    {

      v21 = v40;
      goto LABEL_29;
    }

    v21 = v40;
    if ((v12 & 0x1000000000000000) != 0)
    {
      if (v18 != sub_1B8565E38() >> 14)
      {
        goto LABEL_42;
      }
    }

    else if (v18 != ((4 * sub_1B8566428()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_42;
    }

    result = sub_1B853C2D8(v11, v12);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    v32 = v38;
    sub_1B8566868();
    v33 = sub_1B8566848();
    (*v37)(v32, v39);
    if (v33)
    {
      goto LABEL_45;
    }

LABEL_42:
    if ((sub_1B8565D28() & 1) == 0)
    {
      goto LABEL_45;
    }

    v34 = sub_1B8565D18();

    if ((v34 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_29:
    sub_1B8565EA8();
    v22 = sub_1B8565F58();
    v24 = v23;
    if (*(v21 + 16))
    {
      v25 = v22;
      sub_1B85667D8();
      sub_1B8565D38();
      v26 = sub_1B8566808();
      v27 = -1 << *(v21 + 32);
      v28 = v26 & ~v27;
      if ((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(v21 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1B8566758() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_45:

LABEL_46:
        v36 = *(v4 + 16);
        v35 = *(v4 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_1B853525C((v35 > 1), v36 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v36 + 1;
        *(v4 + 8 * v36 + 32) = v8;
        goto LABEL_6;
      }
    }

LABEL_5:

LABEL_6:
    if (++v8 == v7)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_1B853C8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = __OFSUB__(a1, 1);
  v10 = a1 - 1;
  if (v9)
  {
LABEL_47:
    __break(1u);
  }

  else
  {
    sub_1B853BC04(v10, a2, a3, a4, a8);
    v14 = v13;
    v15 = 0;
    v16 = *(v13 + 16);
    v17 = v13 + 40;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v19 = (v17 + 16 * v15);
    while (v16 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_46;
      }

      ++v15;
      v20 = *v19;
      v19 += 16;
      if ((v20 & 1) == 0)
      {
        v21 = *(v19 - 3);
        v40 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B8535360(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1B8535360((v22 > 1), v23 + 1, 1, v18);
        }

        *(v18 + 2) = v23 + 1;
        v24 = &v18[16 * v23];
        *(v24 + 4) = v15 - 1;
        *(v24 + 5) = v21;
        v17 = v40;
        goto LABEL_3;
      }
    }

    v25 = *(v18 + 2);
    if (!v25)
    {

      return;
    }

    v26 = *(v18 + 4);
    v27 = v25 - 1;
    if (v27)
    {
      v28 = *(v18 + 5);
      v29 = (v18 + 56);
      do
      {
        if (v28 < *v29)
        {
          v26 = *(v29 - 1);
        }

        if (v28 <= *v29)
        {
          v28 = *v29;
        }

        v29 += 2;
        --v27;
      }

      while (v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B85740E0;
    *(v30 + 32) = v26;
    v31 = a1 - 1;
    if (a1 >= 1)
    {
      v32 = v30;
      if (a1 == 1)
      {
LABEL_37:
        sub_1B853BD18(v32);
        return;
      }

      v33 = *(a5 + 16);
      while (v31 + 1 <= a1)
      {
        if (v31 >= a6)
        {
          goto LABEL_39;
        }

        if (v26 < 0)
        {
          goto LABEL_40;
        }

        if (v26 >= a7)
        {
          goto LABEL_41;
        }

        v34 = v31 * a7;
        if ((v31 * a7) >> 64 != (v31 * a7) >> 63)
        {
          goto LABEL_42;
        }

        v9 = __OFADD__(v34, v26);
        v35 = v34 + v26;
        if (v9)
        {
          goto LABEL_43;
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v35 >= v33)
        {
          goto LABEL_45;
        }

        v36 = a5 + 32 + 16 * v35;
        if ((*(v36 + 8) & 1) == 0)
        {
          v26 = *v36;
          v38 = *(v32 + 2);
          v37 = *(v32 + 3);
          if (v38 >= v37 >> 1)
          {
            v32 = sub_1B853525C((v37 > 1), v38 + 1, 1, v32);
          }

          *(v32 + 2) = v38 + 1;
          *&v32[8 * v38 + 32] = v26;
        }

        if (!--v31)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  __break(1u);
}

char *sub_1B853CB3C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a1 + 4;
  v2 = a1[4];
  if (v1 != 1)
  {
    v10 = a1 + 5;
    v4 = MEMORY[0x1E69E7CC0];
    v11 = a1[2];
    while (v11)
    {
      v13 = *(v10 - 1);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      v15 = *v10;
      if (*v10 != v14)
      {
        if (v14 < v2)
        {
          goto LABEL_25;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B8535374(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_1B8535374((v16 > 1), v17 + 1, 1, v4);
        }

        *(v4 + 2) = v17 + 1;
        v12 = &v4[16 * v17];
        *(v12 + 4) = v2;
        *(v12 + 5) = v14;
        v2 = v15;
      }

      ++v10;
      if (--v11 == 1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v5 = v3[v1 - 1];
  v1 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 < v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v4 = sub_1B8535374(0, *(v4 + 2) + 1, 1, v4);
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1B8535374((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v1;
  return v4;
}

uint64_t _sSo15WBSSavedAccountC10SafariCoreE16fuzzyMatchString_4with12matchingTypeAC0ab6SearchF0CSgSS_SSSo0ab8MatchingJ0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = sub_1B8565E18();
  v10 = v9;
  v139 = a3;
  v140 = a4;
  v145 = 32;
  v146 = 0xE100000000000000;
  v143 = 0;
  v144 = 0xE000000000000000;
  v116 = sub_1B852675C();
  v115 = MEMORY[0x1E69E6158];
  sub_1B85662B8();
  v11 = sub_1B8565E18();
  v13 = v12;

  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = sub_1B8565E78();
  if (sub_1B8565E78() < v15)
  {
    goto LABEL_6;
  }

  v126 = sub_1B853C428(v8, v10);
  v17 = sub_1B8565E78();
  result = sub_1B8565E78();
  v18 = v17 * result;
  v131 = v17;
  v133 = result;
  if ((v17 * result) >> 64 != (v17 * result) >> 63)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v18 < 0)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A978, &qword_1B8574C90);
    v19 = sub_1B8566058();
    v20 = v19;
    *(v19 + 16) = v18;
    v21 = 32;
    v22 = v18;
    do
    {
      v23 = v19 + v21;
      *v23 = 0;
      *(v23 + 8) = 1;
      v21 += 16;
      --v22;
    }

    while (v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A978, &qword_1B8574C90);
    v24 = sub_1B8566058();
    v25 = v24;
    *(v24 + 16) = v18;
    v26 = 32;
    do
    {
      v27 = v24 + v26;
      *v27 = 0;
      *(v27 + 8) = 1;
      v26 += 16;
      --v18;
    }

    while (v18);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
  }

  v117 = a5;
  v139 = v11;
  v140 = v13;
  v141 = 0;
  v142 = v14;
  result = sub_1B8565ED8();
  v137 = result;
  v132 = v8;
  v123 = v25;
  v134 = v28;
  if (!v28)
  {
    v35 = v131;
    goto LABEL_138;
  }

  v29 = 0;
  v30 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v30 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 7;
  if (((v10 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
  {
    v31 = 11;
  }

  v32 = 4 * v30;
  v122 = v25 + 32;
  v33 = -v133;
  v125 = v133 & ~(v133 >> 63);
  v118 = v31 | (v30 << 16);
  v34 = 40 - 16 * v133;
  v121 = v34;
  v35 = v131;
  v128 = v32;
LABEL_23:
  v36 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_206;
  }

  v135 = v29;
  if (v29)
  {
    sub_1B853BC04(v29 - 1, v20, v35, v133, v34);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = 0;
      v40 = (v37 + 40);
      while (*v40 == 1)
      {
        ++v39;
        v40 += 16;
        if (v38 == v39)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      v39 = -1;
    }

    v41 = v20;

    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_207;
    }
  }

  else
  {
    v41 = v20;
    v42 = 0;
    if (__OFADD__(-1, 1))
    {
      goto LABEL_207;
    }
  }

  if (v42 < 0)
  {
    goto LABEL_208;
  }

  v119 = v36;

  result = sub_1B8565E98();
  if (v43)
  {
    v44 = v118;
  }

  else
  {
    v44 = result;
  }

  v45 = v44 >> 14;
  if (v32 < v44 >> 14)
  {
    goto LABEL_209;
  }

  if (v45 == v32)
  {
    goto LABEL_162;
  }

  v46 = 0;
  if (v43)
  {
    v47 = 0;
  }

  else
  {
    v47 = v42;
  }

  v49 = v135 < 1 || v135 > v35;
  v120 = v49;
  v129 = v44 >> 14;
  v130 = (v135 - 1) * v133;
  v127 = v135 * v133;
  v50 = v44 >> 14;
  v20 = v41;
  while (1)
  {
    v124 = v46;
    v136 = v20 + 40;
    v51 = v47;
    while (1)
    {
      if (v50 < v45 || v50 >= v32)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      v52 = v47;
      v53 = v20;
      v54 = v132;
      v55 = sub_1B8565F58();
      v57 = v56;
      result = sub_1B8565E88();
      v47 = (v47 + 1);
      if (__OFADD__(v52, 1))
      {
        goto LABEL_179;
      }

      v58 = result;
      if (v137 == v55 && v134 == v57)
      {
        break;
      }

      v59 = sub_1B8566758();

      v20 = v53;
      v35 = v131;
      if (v59)
      {
        goto LABEL_58;
      }

LABEL_92:
      v50 = v58 >> 14;
      v51 = (v51 + 1);
      v32 = v128;
      v45 = v129;
      if (v58 >> 14 == v128)
      {

        v25 = v123;
        if ((v124 & 1) == 0)
        {
          goto LABEL_163;
        }

LABEL_135:
        result = sub_1B8565ED8();
        v137 = result;
        v33 += v133;
        v34 = 16 * v133;
        v121 += 16 * v133;
        v29 = v119;
        v134 = v86;
        if (!v86)
        {
LABEL_138:

          sub_1B853C8B4(v35, v20, v35, v133, v25, v35, v133, v87);
          if (!v88)
          {

            goto LABEL_6;
          }

          v52 = v88;
          result = v35 - 1;
          if (!__OFSUB__(v35, 1))
          {
            sub_1B853BC04(result, v20, v35, v133, v89);
            v91 = *(v90 + 16);
            if (v91)
            {
              v92 = (v90 + 40);
              v54 = MEMORY[0x1E69E7CC0];
              do
              {
                if ((*v92 & 1) == 0)
                {
                  v93 = *(v92 - 1);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v54 = sub_1B853525C(0, *(v54 + 2) + 1, 1, v54);
                  }

                  v95 = *(v54 + 2);
                  v94 = *(v54 + 3);
                  if (v95 >= v94 >> 1)
                  {
                    v54 = sub_1B853525C((v94 > 1), v95 + 1, 1, v54);
                  }

                  *(v54 + 2) = v95 + 1;
                  *&v54[8 * v95 + 32] = v93;
                }

                v92 += 16;
                --v91;
              }

              while (v91);
            }

            else
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            v73 = *(v54 + 2);
            if (v73)
            {
              v35 = *(v54 + 4);
              v76 = v73 - 1;
              if (v73 == 1)
              {
                v96 = v117;
                goto LABEL_171;
              }

LABEL_158:
              v96 = v117;
              if (v73 >= 5)
              {
                v97 = v76 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v98 = vdupq_n_s64(v35);
                v99 = (v54 + 56);
                v100 = v76 & 0xFFFFFFFFFFFFFFFCLL;
                v101 = v98;
                do
                {
                  v98 = vbslq_s8(vcgtq_s64(v98, v99[-1]), v98, v99[-1]);
                  v101 = vbslq_s8(vcgtq_s64(v101, *v99), v101, *v99);
                  v99 += 2;
                  v100 -= 4;
                }

                while (v100);
                v102 = vbslq_s8(vcgtq_s64(v98, v101), v98, v101);
                v103 = vextq_s8(v102, v102, 8uLL).u64[0];
                v35 = vbsl_s8(vcgtd_s64(v102.i64[0], v103), *v102.i8, v103);
                if (v76 != (v76 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v97 = 1;
LABEL_167:
                v104 = v73 - v97;
                v105 = &v54[8 * v97 + 32];
                do
                {
                  v107 = *v105++;
                  v106 = v107;
                  if (v35 <= v107)
                  {
                    v35 = v106;
                  }

                  --v104;
                }

                while (v104);
              }

LABEL_171:

              v108 = sub_1B8565E78();

              if (v35 != v108 || (v62 = __OFADD__(v35, 1), ++v35, !v62))
              {
                if (v96 > 5)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = qword_1B8574C98[v96];
                }

                v62 = __OFADD__(v35, v109);
                v110 = v35 + v109;
                if (!v62)
                {
                  v111 = sub_1B853CB3C(v52);

                  v112 = type metadata accessor for WBSSavedAccountSearchMatch();
                  v113 = objc_allocWithZone(v112);
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score] = v110;
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType] = v96;
                  *&v113[OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges] = v111;
                  v138.receiver = v113;
                  v138.super_class = v112;
                  v114 = objc_msgSendSuper2(&v138, sel_init, v115, v116, v116, v116);

                  return v114;
                }

LABEL_213:
                __break(1u);
              }

              __break(1u);
              return result;
            }

LABEL_6:

            goto LABEL_7;
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        goto LABEL_23;
      }
    }

    v20 = v53;
    v35 = v131;
LABEL_58:
    v60 = v135;
    if (v135)
    {
      v61 = v52 - 1;
      if (__OFSUB__(v52, 1))
      {
        goto LABEL_190;
      }

      if (v61 < 0 || v61 >= v133 || v135 > v35)
      {
        goto LABEL_191;
      }

      if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
      {
        goto LABEL_192;
      }

      v62 = __OFADD__(v130, v61);
      v63 = v130 + v61;
      if (v62)
      {
        goto LABEL_193;
      }

      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_194;
      }

      if (v63 >= *(v20 + 16))
      {
        goto LABEL_195;
      }

      if (*(v136 + 16 * v63) != 1)
      {
        goto LABEL_95;
      }
    }

    v64 = 0;
    v65 = *(v126 + 16);
    do
    {
      if (v65 == v64)
      {
        if (v135)
        {
          if (v52 < 0)
          {
            goto LABEL_203;
          }

          if (v52)
          {
            v67 = 0;
            while (1)
            {
              v60 = v135;
              if (v135 > v35)
              {
                goto LABEL_180;
              }

              if (v67 == v125)
              {
                goto LABEL_181;
              }

              if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
              {
                goto LABEL_182;
              }

              if (v33 < 0)
              {
                goto LABEL_183;
              }

              if ((v130 + v67) >= *(v20 + 16))
              {
                goto LABEL_184;
              }

              if (*(v136 + 16 * (v130 + v67)) != 1)
              {
                if (!v65)
                {
                  goto LABEL_95;
                }

                v68 = (v126 + 32);
                v69 = *(v126 + 16);
                while (1)
                {
                  v71 = *v68++;
                  v70 = v71;
                  if (v67 < v71 && v52 >= v70)
                  {
                    break;
                  }

                  if (!--v69)
                  {
                    goto LABEL_95;
                  }
                }
              }

              if (++v67 == v52)
              {
                goto LABEL_92;
              }
            }
          }
        }

        goto LABEL_92;
      }

      v66 = *(v126 + 32 + 8 * v64++);
    }

    while (v66 != v52);
    if (!v135)
    {
      if (v52 < 0 || v52 >= v133 || v35 <= 0)
      {
        goto LABEL_185;
      }

      if ((v135 * v133) >> 64 != (v135 * v133) >> 63)
      {
        goto LABEL_186;
      }

      v81 = 1;
      goto LABEL_126;
    }

LABEL_95:
    if (v52 < 0)
    {
      goto LABEL_196;
    }

    if (v52)
    {
      break;
    }

    v73 = 0;
    v76 = 0x8000000000000000;
    v77 = 1;
LABEL_112:
    v81 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_197;
    }

    if (v60 >= v35 || v52 >= v133)
    {
      goto LABEL_198;
    }

    if ((v135 * v133) >> 64 != (v135 * v133) >> 63)
    {
      goto LABEL_199;
    }

    v82 = v127 + v52;
    if (__OFADD__(v127, v52))
    {
      goto LABEL_200;
    }

    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_201;
    }

    if (v82 >= *(v123 + 16))
    {
      goto LABEL_202;
    }

    v83 = v122 + 16 * v82;
    *v83 = v73;
    *(v83 + 8) = v77 & 1;
    if ((v52 | v60) < 0)
    {
      goto LABEL_185;
    }

LABEL_126:
    v62 = __OFADD__(v127, v52);
    v84 = v127 + v52;
    if (v62)
    {
      goto LABEL_187;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v32 = v128;
      v45 = v129;
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }
    }

    else
    {
      result = sub_1B853C2C4(v20);
      v20 = result;
      v32 = v128;
      v45 = v129;
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }
    }

    if (v84 >= *(v20 + 16))
    {
      goto LABEL_189;
    }

    v85 = v20 + 16 * v84;
    *(v85 + 32) = v81;
    *(v85 + 40) = 0;
    v50 = v58 >> 14;
    v46 = 1;
    if (v58 >> 14 == v32)
    {

      v25 = v123;
      goto LABEL_135;
    }
  }

  if (v120)
  {
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (((v135 - 1) * v133) >> 64 != ((v135 - 1) * v133) >> 63)
  {
    goto LABEL_205;
  }

  v73 = 0;
  v74 = 0;
  v75 = (v20 + v121);
  v76 = 0x8000000000000000;
  v77 = 1;
  while (1)
  {
    if (v125 == v74)
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v33 < 0)
    {
      goto LABEL_156;
    }

    if (v33 + v74 >= *(v20 + 16))
    {
      goto LABEL_157;
    }

    if ((*v75 & 1) == 0)
    {
      break;
    }

LABEL_100:
    v75 += 16;
    ++v74;
    v51 = (v51 - 1);
    if (!v51)
    {
      goto LABEL_112;
    }
  }

  v78 = v51 - 1;
  if (!__OFSUB__(v51, 1))
  {
    v79 = *(v75 - 1);
    v62 = __OFSUB__(v79, v78);
    v80 = v79 - v78;
    if (v62)
    {
      goto LABEL_161;
    }

    if (v76 < v80)
    {
      v73 = v74;
    }

    v77 &= v76 >= v80;
    if (v76 < v80)
    {
      v76 = v80;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:

LABEL_163:

LABEL_7:

  return 0;
}

void __swiftcall UI_STRING_PLURAL_VAR(_:_:_:_:)(SafariCore::WBSLocalizedPluralVariable *__return_ptr retstr, SafariCore::WBSLocalizedStringLiteral a2, SafariCore::WBSLocalizedStringLiteral a3, SafariCore::WBSLocalizedStringLiteral a4, SafariCore::WBSLocalizedStringLiteral a5)
{
  v5 = *a2.stringValue._countAndFlagsBits;
  a2.stringValue._countAndFlagsBits = *(a2.stringValue._countAndFlagsBits + 8);
  v6 = *a2.stringValue._object;
  v7 = *(a2.stringValue._object + 1);
  v8 = *a3.stringValue._countAndFlagsBits;
  v9 = *(a3.stringValue._countAndFlagsBits + 8);
  v10 = *a3.stringValue._object;
  v11 = *(a3.stringValue._object + 1);
  retstr->name._countAndFlagsBits = v5;
  retstr->name._object = a2.stringValue._countAndFlagsBits;
  retstr->type._countAndFlagsBits = v6;
  retstr->type._object = v7;
  retstr->oneFormatString._countAndFlagsBits = v8;
  retstr->oneFormatString._object = v9;
  retstr->otherFormatString._countAndFlagsBits = v10;
  retstr->otherFormatString._object = v11;
}

unint64_t sub_1B853D90C()
{
  result = qword_1EBA8A980;
  if (!qword_1EBA8A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A980);
  }

  return result;
}

unint64_t sub_1B853D970()
{
  result = qword_1EBA8A988;
  if (!qword_1EBA8A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A988);
  }

  return result;
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

uint64_t sub_1B853D9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B853DA38(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1B853DAA8(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1B8535CCC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B8565888();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B85658A8();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B8565888();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B85658A8();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B85740E0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B8565DD8();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1B8535CCC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t Data.init(base64URLEncoded:)(uint64_t a1, uint64_t a2)
{
  sub_1B852675C();
  sub_1B85662B8();

  sub_1B85662B8();

  v2 = sub_1B8565E78();
  v3 = v2 & 3;
  if (v2 <= 0)
  {
    v3 = -(-v2 & 3);
  }

  if (v3 >= 1)
  {
    v4 = sub_1B8565F48();
    v6 = v5;

    MEMORY[0x1B8CBF120](v4, v6);
  }

  v7 = sub_1B8565978();

  return v7;
}

uint64_t sub_1B853DFB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1B8535CEC(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1B8535CEC((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

size_t Data.init(randomWithLength:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1B8566058();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    if (SecRandomCopyBytes(0, v1, (v2 + 32)))
    {

      return 0;
    }

    else
    {
      v3 = sub_1B8540950(v2);

      return v3;
    }
  }

  return result;
}

Swift::String __swiftcall Data.hexString()()
{
  sub_1B853DAA8(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA8A700, &qword_1B8574550);
  sub_1B8540A4C(&qword_1EBA8A998, &unk_1EBA8A700, &qword_1B8574550, MEMORY[0x1E69E6310]);
  v2 = sub_1B8565D48();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = sub_1B8565868();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8565848();

  v8 = sub_1B8565E78();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B85403F8(v8, 0);

    v11 = sub_1B8540330(&v92, v10 + 4, v9, a1, a2);

    if (v11 != v9)
    {
      goto LABEL_203;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1B853EE70(&unk_1F3060FB8, v10);
  v14 = swift_arrayDestroy();
  if (v13)
  {
    v12 = v10[2];
    if (v12)
    {
LABEL_204:
      if (v12 >= 2)
      {
        v81 = 2;
      }

      else
      {
        v81 = v12;
      }

      sub_1B853F54C(v10, (v10 + 4), v81, (2 * v12) | 1);
      v83 = v82;

      v10 = v83;
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  v84[-2] = v7;
  v15 = sub_1B853DFB0(sub_1B8540A2C, &v84[-4], v10);
  v16 = v15;
  v17 = v15[2];
  if (v17)
  {
    v96 = xmmword_1B8574E30;
    v90 = v15;
    v86 = v5;
    v87 = v4;
    v84[1] = a2;
    v85 = v7;
    if ((v17 & 1) == 0)
    {
      v18 = v17;
      v5 = 0;
LABEL_98:
      v46 = v16 + 4;
      v88 = &v92 + 1;
      v89 = xmmword_1B85740F0;
      v10 = &qword_1EBA8A9A0;
      v4 = &qword_1B8574E40;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
        v47 = swift_allocObject();
        *(v47 + 16) = v89;
        v48 = v16[2];
        if (v5 >= v48)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:

          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v49 = &v46[2 * v5];
        v51 = *v49;
        v50 = v49[1];
        *(v47 + 32) = v51;
        *(v47 + 40) = v50;
        if (v5 + 1 >= v48)
        {
          goto LABEL_197;
        }

        v52 = &v46[2 * v5 + 2];
        v53 = v52[1];
        *(v47 + 48) = *v52;
        *(v47 + 56) = v53;
        v92 = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B8, &qword_1B8574E48);
        sub_1B8540A4C(&qword_1EBA8A9C0, &qword_1EBA8A9B8, &qword_1B8574E48, MEMORY[0x1E69E6328]);
        v54 = sub_1B8565F68();
        v56 = HIBYTE(v55) & 0xF;
        v12 = v54 & 0xFFFFFFFFFFFFLL;
        if ((v55 & 0x2000000000000000) != 0)
        {
          v57 = HIBYTE(v55) & 0xF;
        }

        else
        {
          v57 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (!v57)
        {
          goto LABEL_198;
        }

        if ((v55 & 0x1000000000000000) != 0)
        {
          LOWORD(v60) = sub_1B853FD5C(v54, v55, 16);

          if ((v60 & 0x100) != 0)
          {
            goto LABEL_216;
          }

          goto LABEL_189;
        }

        if ((v55 & 0x2000000000000000) != 0)
        {
          v92 = v54;
          v93 = v55 & 0xFFFFFFFFFFFFFFLL;
          v12 = v54;
          if (v54 == 43)
          {
            if (!v56)
            {
              goto LABEL_199;
            }

            v12 = v56 - 1;
            if (v56 != 1)
            {
              LOBYTE(v60) = 0;
              v70 = v88;
              while (1)
              {
                v71 = *v70;
                v72 = v71 - 48;
                if ((v71 - 48) >= 0xA)
                {
                  if ((v71 - 65) < 6)
                  {
                    v72 = v71 - 55;
                  }

                  else
                  {
                    if ((v71 - 97) > 5)
                    {
                      break;
                    }

                    v72 = v71 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                LOBYTE(v60) = v72 + 16 * v60;
                ++v70;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v54 == 45)
          {
            if (!v56)
            {
              goto LABEL_202;
            }

            v12 = v56 - 1;
            if (v56 != 1)
            {
              LOBYTE(v60) = 0;
              v64 = v88;
              while (1)
              {
                v65 = *v64;
                v66 = v65 - 48;
                if ((v65 - 48) >= 0xA)
                {
                  if ((v65 - 65) < 6)
                  {
                    v66 = v65 - 55;
                  }

                  else
                  {
                    if ((v65 - 97) > 5)
                    {
                      break;
                    }

                    v66 = v65 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                v60 = 16 * (v60 & 0xF) - v66;
                if ((v60 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v64;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v56)
          {
            LOBYTE(v60) = 0;
            v75 = &v92;
            while (1)
            {
              v76 = *v75;
              v77 = v76 - 48;
              if ((v76 - 48) >= 0xA)
              {
                if ((v76 - 65) < 6)
                {
                  v77 = v76 - 55;
                }

                else
                {
                  if ((v76 - 97) > 5)
                  {
                    break;
                  }

                  v77 = v76 - 87;
                }
              }

              if (v60 > 0xFu)
              {
                break;
              }

              LOBYTE(v60) = v77 + 16 * v60;
              v75 = (v75 + 1);
              if (!--v56)
              {
                LOBYTE(v12) = 0;
                goto LABEL_188;
              }
            }
          }
        }

        else
        {
          if ((v54 & 0x1000000000000000) != 0)
          {
            v58 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v58 = sub_1B8566498();
            v12 = v80;
          }

          v59 = *v58;
          if (v59 == 43)
          {
            if (v12 < 1)
            {
              goto LABEL_200;
            }

            if (--v12)
            {
              if (!v58)
              {
                goto LABEL_176;
              }

              LOBYTE(v60) = 0;
              v67 = v58 + 1;
              while (1)
              {
                v68 = *v67;
                v69 = v68 - 48;
                if ((v68 - 48) >= 0xA)
                {
                  if ((v68 - 65) < 6)
                  {
                    v69 = v68 - 55;
                  }

                  else
                  {
                    if ((v68 - 97) > 5)
                    {
                      break;
                    }

                    v69 = v68 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                LOBYTE(v60) = v69 + 16 * v60;
                ++v67;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v59 == 45)
          {
            if (v12 < 1)
            {
              goto LABEL_201;
            }

            if (--v12)
            {
              if (!v58)
              {
                goto LABEL_176;
              }

              LOBYTE(v60) = 0;
              v61 = v58 + 1;
              while (1)
              {
                v62 = *v61;
                v63 = v62 - 48;
                if ((v62 - 48) >= 0xA)
                {
                  if ((v62 - 65) < 6)
                  {
                    v63 = v62 - 55;
                  }

                  else
                  {
                    if ((v62 - 97) > 5)
                    {
                      break;
                    }

                    v63 = v62 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                v60 = 16 * (v60 & 0xF) - v63;
                if ((v60 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v61;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v12)
          {
            if (!v58)
            {
LABEL_176:
              LOBYTE(v60) = 0;
              LOBYTE(v12) = 0;
              goto LABEL_188;
            }

            LOBYTE(v60) = 0;
            while (1)
            {
              v73 = *v58;
              v74 = v73 - 48;
              if ((v73 - 48) >= 0xA)
              {
                if ((v73 - 65) < 6)
                {
                  v74 = v73 - 55;
                }

                else
                {
                  if ((v73 - 97) > 5)
                  {
                    break;
                  }

                  v74 = v73 - 87;
                }
              }

              if (v60 > 0xFu)
              {
                break;
              }

              LOBYTE(v60) = v74 + 16 * v60;
              ++v58;
              if (!--v12)
              {
                goto LABEL_188;
              }
            }
          }
        }

        LOBYTE(v60) = 0;
        LOBYTE(v12) = 1;
LABEL_188:
        v91 = v12;
        v78 = v12;

        if (v78)
        {
          goto LABEL_216;
        }

LABEL_189:
        v79 = *(&v96 + 1) >> 62;
        if ((*(&v96 + 1) >> 62) <= 1)
        {
          if (v79)
          {
            v7 = v96 >> 32;
          }

          else
          {
            v7 = BYTE14(v96);
          }
        }

        else if (v79 == 2)
        {
          v7 = *(v96 + 24);
        }

        else
        {
          v7 = 0;
        }

        v5 += 2;
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9A0, &qword_1B8574E40);
        v94 = a2;
        v95 = sub_1B8540A4C(&qword_1EBA8A9A8, &qword_1EBA8A9A0, &qword_1B8574E40, MEMORY[0x1E696A0B0]);
        LOBYTE(v92) = v60;
        v91 = *__swift_project_boxed_opaque_existential_0(&v92, a2);
        sub_1B8565998();
        __swift_destroy_boxed_opaque_existential_0(&v92);
        v16 = v90;
        if (v5 >= v18)
        {
          goto LABEL_96;
        }
      }
    }

    v20 = v15[4];
    v21 = v15[5];
    v22 = HIBYTE(v21) & 0xF;
    v23 = v20 & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v24 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      if ((v21 & 0x1000000000000000) == 0)
      {
        if ((v21 & 0x2000000000000000) != 0)
        {
          v92 = v15[4];
          v93 = v21 & 0xFFFFFFFFFFFFFFLL;
          if (v20 != 43)
          {
            if (v20 != 45)
            {
              if (!v22)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = 0;
              v41 = &v92;
              while (1)
              {
                v42 = *v41;
                v43 = v42 - 48;
                if ((v42 - 48) >= 0xA)
                {
                  if ((v42 - 65) < 6)
                  {
                    v43 = v42 - 55;
                  }

                  else
                  {
                    if ((v42 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v43 = v42 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  goto LABEL_93;
                }

                LOBYTE(v20) = v43 + 16 * v20;
                v41 = (v41 + 1);
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }

            if (v22)
            {
              if (!--v22)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = 0;
              v30 = &v92 + 1;
              while (1)
              {
                v31 = *v30;
                v32 = v31 - 48;
                if ((v31 - 48) >= 0xA)
                {
                  if ((v31 - 65) < 6)
                  {
                    v32 = v31 - 55;
                  }

                  else
                  {
                    if ((v31 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v32 = v31 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  goto LABEL_93;
                }

                LODWORD(v20) = 16 * (v20 & 0xF) - v32;
                if ((v20 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_93;
                }

                ++v30;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_213;
          }

          if (v22)
          {
            if (!--v22)
            {
              goto LABEL_93;
            }

            LOBYTE(v20) = 0;
            v36 = &v92 + 1;
            while (1)
            {
              v37 = *v36;
              v38 = v37 - 48;
              if ((v37 - 48) >= 0xA)
              {
                if ((v37 - 65) < 6)
                {
                  v38 = v37 - 55;
                }

                else
                {
                  if ((v37 - 97) > 5)
                  {
                    goto LABEL_93;
                  }

                  v38 = v37 - 87;
                }
              }

              if (v20 > 0xFu)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = v38 + 16 * v20;
              ++v36;
              if (!--v22)
              {
                goto LABEL_94;
              }
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
        }

        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_211;
        }

        for (i = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1B8566498())
        {
          v26 = *i;
          if (v26 == 43)
          {
            if (v23 < 1)
            {
              goto LABEL_214;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v20) = 0;
              v33 = i + 1;
              while (1)
              {
                v34 = *v33;
                v35 = v34 - 48;
                if ((v34 - 48) >= 0xA)
                {
                  if ((v34 - 65) < 6)
                  {
                    v35 = v34 - 55;
                  }

                  else
                  {
                    if ((v34 - 97) > 5)
                    {
                      break;
                    }

                    v35 = v34 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  break;
                }

                LOBYTE(v20) = v35 + 16 * v20;
                ++v33;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v26 == 45)
          {
            if (v23 < 1)
            {
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v20) = 0;
              v27 = i + 1;
              while (1)
              {
                v28 = *v27;
                v29 = v28 - 48;
                if ((v28 - 48) >= 0xA)
                {
                  if ((v28 - 65) < 6)
                  {
                    v29 = v28 - 55;
                  }

                  else
                  {
                    if ((v28 - 97) > 5)
                    {
                      break;
                    }

                    v29 = v28 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  break;
                }

                LODWORD(v20) = 16 * (v20 & 0xF) - v29;
                if ((v20 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v27;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v23)
          {
            if (!i)
            {
LABEL_82:
              LOBYTE(v20) = 0;
              LOBYTE(v22) = 0;
              goto LABEL_94;
            }

            LOBYTE(v20) = 0;
            while (1)
            {
              v39 = *i;
              v40 = v39 - 48;
              if ((v39 - 48) >= 0xA)
              {
                if ((v39 - 65) < 6)
                {
                  v40 = v39 - 55;
                }

                else
                {
                  if ((v39 - 97) > 5)
                  {
                    break;
                  }

                  v40 = v39 - 87;
                }
              }

              if (v20 > 0xFu)
              {
                break;
              }

              LOBYTE(v20) = v40 + 16 * v20;
              ++i;
              if (!--v23)
              {
                LOBYTE(v22) = 0;
                goto LABEL_94;
              }
            }
          }

LABEL_93:
          LOBYTE(v20) = 0;
          LOBYTE(v22) = 1;
LABEL_94:
          v91 = v22;
          if ((v22 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_210:
          __break(1u);
LABEL_211:
          ;
        }
      }
    }

    else
    {
      __break(1u);
    }

    LOWORD(v20) = sub_1B853FD5C(v20, v21, 16);

    if ((v20 & 0x100) != 0)
    {
      goto LABEL_210;
    }

LABEL_95:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9A0, &qword_1B8574E40);
    v94 = v44;
    v95 = sub_1B8540A4C(&qword_1EBA8A9A8, &qword_1EBA8A9A0, &qword_1B8574E40, MEMORY[0x1E696A0B0]);
    LOBYTE(v92) = v20;
    v91 = *__swift_project_boxed_opaque_existential_0(&v92, v44);
    v5 = 1;
    sub_1B8565998();
    __swift_destroy_boxed_opaque_existential_0(&v92);
    v18 = v17;
    v16 = v90;
    if (v17 != 1)
    {
      goto LABEL_98;
    }

LABEL_96:

    v19 = v96;
    v5 = v86;
    v4 = v87;
    v7 = v85;
  }

  else
  {

    v19 = 0;
  }

  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t sub_1B853EE70(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_1B8566758();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1B853EF2C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *a1;
  }

  v4 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  if (sub_1B854047C(0xFuLL, v4 | (v3 << 16), v1, v2) != 1)
  {
    return 0;
  }

  result = sub_1B853EFC8(v1, v2);
  if ((result & 0x100000000) == 0)
  {
    return sub_1B8565858() & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B853EFC8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B853FB2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1B8566438();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B8566498();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

Swift::String __swiftcall Data.base64URLEncodedString(includePadding:)(Swift::Bool includePadding)
{
  sub_1B85659B8();
  sub_1B852675C();
  sub_1B85662B8();

  v2 = sub_1B85662B8();
  v4 = v3;

  if (!includePadding)
  {
    v2 = sub_1B85662B8();
    v6 = v5;

    v4 = v6;
  }

  v7 = v2;
  v8 = v4;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void *sub_1B853F328(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B85659A8();
  v11[0] = 0;
  v7 = [v6 *a4];

  v8 = v11[0];
  if (v7)
  {
    v9 = sub_1B85659D8();
  }

  else
  {
    v9 = v8;
    sub_1B85658D8();

    swift_willThrow();
  }

  return v9;
}

void *sub_1B853F408(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A878, &qword_1B8574768);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1B853F47C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A920, &qword_1B8574B40);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B853F54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B853F624(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B8565F88();
  v6 = sub_1B853F6A4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B853F6A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B85662A8();
    if (!v9 || (v10 = v9, v11 = sub_1B853F408(v9, 0), v12 = sub_1B853F7FC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B8565E58();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8565E58();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B8566498();
LABEL_4:

  return sub_1B8565E58();
}

unint64_t sub_1B853F7FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B853FA1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8565F18();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B8566498();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B853FA1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B8565EF8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B853FA1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8565F28();
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
    v5 = MEMORY[0x1B8CBF160](15, a1 >> 16);
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

_BYTE *sub_1B853FA98@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1B8540798(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B85408D4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B8540850(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1B853FB2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B853FBC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B853FC38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B853FBC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B853FA1C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B853FC38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B8566498();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unsigned __int8 *sub_1B853FD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1B8565F78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B853F624(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8566498();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B8540330(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1B8565ED8();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B85403F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9B0, &unk_1B8576970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1B854047C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1B854068C(a1, a3, a4);
  v8 = sub_1B854068C(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B8565E38();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_1B8566498();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B8565E48();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1B8566498();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_1B854068C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B8540724(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B853FC38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B8540724(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B853FA1C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8540798(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1B8540850(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B85658B8();
  swift_allocObject();
  result = sub_1B8565878();
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

uint64_t sub_1B85408D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B85658B8();
  swift_allocObject();
  result = sub_1B8565878();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B8565988();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B8540950(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9C8, &qword_1B8574E50);
  v10 = sub_1B8540A4C(&qword_1EBA8A9D0, &qword_1EBA8A9C8, &qword_1B8574E50, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1B853FA98(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_1B8540A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id sub_1B8540B14@<X0>(void *a1@<X8>)
{
  sub_1B8565FA8();
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *a1 = result;
  return result;
}

unint64_t sub_1B8540B80()
{
  result = qword_1EBA8A9D8;
  if (!qword_1EBA8A9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A9D8);
  }

  return result;
}

uint64_t sub_1B8540C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8566298();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v17 - v13;
  (*(v9 + 16))(v11, a1, a2);
  sub_1B8565FB8();
  v15 = *(a3 - 8);
  result = (*(v15 + 48))(v14, 1, a3);
  if (result != 1)
  {
    return (*(v15 + 32))(a5, v14, a3);
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.safari_dict(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A9E0, &qword_1B8574E58);
  sub_1B8540E74(v4, &v6);
  return v6;
}

uint64_t sub_1B8540E74@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B8565CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F8, &qword_1B8574548);
  v7 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a5, v7 ^ 1u, 1, a4);
}

uint64_t Dictionary<>.safari_array<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B85660C8();
  sub_1B8540E74(v4, &v6);
  return v6;
}

id WBSPasswordManagerTestOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSPasswordManagerTestOptions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSPasswordManagerTestOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WBSPasswordManagerTestOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSPasswordManagerTestOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B854109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8541118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85411EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B854109C(a1, &v14 - v9);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_1B8541118(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_1B85412B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B854109C(v2 + v4, a2);
}

uint64_t sub_1B8541318(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1B8541118(a1, v2 + v4);
  return swift_endAccess();
}

id WBSWebsitePasskeyAvailabilityInfo.__allocating_init(supportsPasskeys:enrollURL:manageURL:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v10 = sub_1B8565938();
  v11 = *(*(v10 - 8) + 56);
  v11(&v8[v9], 1, 1, v10);
  v12 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v11(&v8[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v10);
  v8[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = a1;
  swift_beginAccess();
  sub_1B854167C(a2, &v8[v9]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(a3, &v8[v12]);
  swift_endAccess();
  v15.receiver = v8;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1B85416EC(a3);
  sub_1B85416EC(a2);
  return v13;
}

id WBSWebsitePasskeyAvailabilityInfo.init(supportsPasskeys:enrollURL:manageURL:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v8 = sub_1B8565938();
  v9 = *(*(v8 - 8) + 56);
  v9(&v3[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v9(&v3[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v8);
  v3[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = a1;
  swift_beginAccess();
  sub_1B854167C(a2, &v3[v7]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(a3, &v3[v10]);
  swift_endAccess();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B85416EC(a3);
  sub_1B85416EC(a2);
  return v11;
}

uint64_t sub_1B854167C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85416EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(uint64_t a1)
{
  result = qword_1EBA8A9F0;
  if (!qword_1EBA8A9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WBSWebsitePasskeyAvailabilityInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSWebsitePasskeyAvailabilityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B854109C(v4 + v5, a3);
}

void sub_1B8541B98(uint64_t a1)
{
  sub_1B8541D98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B8541D98(uint64_t a1)
{
  if (!qword_1EBA8AA00)
  {
    sub_1B8565938();
    v1 = sub_1B8566298();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA8AA00);
    }
  }
}

Swift::String __swiftcall Error.loggerDescription()()
{
  v1 = v0;
  v2 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_1B8566738();
  if (v6)
  {
    v7 = v6;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = swift_allocError();
    (*(v2 + 32))(v8, v4, v1);
  }

  v9 = sub_1B85658C8();

  v10 = [v9 safari_privacyPreservingDescription];
  v11 = sub_1B8565DA8();
  v13 = v12;

  MEMORY[0x1B8CBF120](v11, v13);

  v14 = v17;
  v15 = v18;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

unint64_t WBSShareablePasskey.init(relyingParty:metadata:privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = v7;
  v8 = type metadata accessor for WBSShareablePasskey(0);
  v9 = v8[6];
  v10 = sub_1B8565C48();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a5[v9], a4, v10);
  result = sub_1B8565DA8();
  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_65;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B8566498();
      v15 = v39;
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        if (--v15)
        {
          v18 = 0;
          if (result)
          {
            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_61;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_61;
              }

              ++v25;
              if (!--v15)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v17 != 45)
    {
      if (v15)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              goto LABEL_61;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v18 = 0;
      LOBYTE(v15) = 1;
LABEL_62:
      v41 = v15;
      v36 = v15;

      if ((v36 & 1) == 0)
      {
LABEL_63:
        result = (*(v11 + 8))(a4, v10);
        *&a5[v8[7]] = v18;
        *&a5[v8[8]] = 256;
        return result;
      }

      do
      {
LABEL_65:
        __break(1u);
LABEL_66:
        v41 = 0;
        v18 = sub_1B85437C4(result, v13, 10);
        v38 = v37;
      }

      while ((v38 & 1) != 0);
      goto LABEL_63;
    }

    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v15) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v40[0] = result;
  v40[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v33 = v40;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v14)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v40 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v14)
  {
    v15 = v14 - 1;
    if (v14 != 1)
    {
      v18 = 0;
      v28 = v40 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for WBSShareablePasskey(uint64_t a1)
{
  result = qword_1EBA8AA48;
  if (!qword_1EBA8AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WBSShareablePasskey.exportedData()()
{
  sub_1B8565AA8();
  swift_allocObject();
  sub_1B8565A98();
  type metadata accessor for WBSShareablePasskey(0);
  sub_1B8543DF0(&qword_1EBA8A948, type metadata accessor for WBSShareablePasskey, &protocol conformance descriptor for WBSShareablePasskey);
  v0 = sub_1B8565A88();

  return v0;
}

uint64_t sub_1B854246C()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

uint64_t sub_1B8542534(uint64_t a1)
{
  sub_1B8565D38();
}

uint64_t sub_1B85425E8()
{
  sub_1B85667D8();
  sub_1B8565D38();

  return sub_1B8566808();
}

unint64_t sub_1B85426AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8544540(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B85426DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28786;
  v5 = 0xE400000000000000;
  v6 = 1986622064;
  v7 = 0x657A69735F79656BLL;
  if (v2 != 3)
  {
    v7 = 0x657079745F79656BLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1B8542760()
{
  v1 = *v0;
  v2 = 28786;
  v3 = 1986622064;
  v4 = 0x657A69735F79656BLL;
  if (v1 != 3)
  {
    v4 = 0x657079745F79656BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6775156;
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

unint64_t sub_1B85427E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8544540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8542820(uint64_t a1)
{
  v2 = sub_1B8543D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B854285C(uint64_t a1)
{
  v2 = sub_1B8543D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WBSShareablePasskey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA08, &qword_1B8574EF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8543D50();
  sub_1B8566828();
  LOBYTE(v19) = 0;
  sub_1B85666E8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v4;
  v8 = sub_1B8565AD8();
  v17 = &v15;
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8543DA4();
  sub_1B8543DF0(&qword_1ED9856C0, sub_1B8543DA4, MEMORY[0x1E69E81B8]);

  v11 = sub_1B8565CB8();
  v12 = [objc_opt_self() cborWithDictionary_];

  sub_1B8565AB8();

  LOBYTE(v19) = 1;
  sub_1B8544124(&qword_1EBA8AA18, MEMORY[0x1EEE84298]);
  sub_1B8566708();
  (*(v16 + 8))(v10, v8);
  type metadata accessor for WBSShareablePasskey(0);
  v19 = MEMORY[0x1B8CBEE80]();
  v20 = v13;
  v21 = 2;
  sub_1B8543E38();
  sub_1B8566708();
  sub_1B851D53C(v19, v20);
  v14 = v18;
  LOBYTE(v19) = 4;
  sub_1B85666F8();
  LOBYTE(v19) = 3;
  sub_1B85666F8();
  return (*(v14 + 8))(v6, v3);
}

BOOL static P256.Signing.PrivateKey.== infix(_:_:)()
{
  v0 = sub_1B8565C18();
  v2 = v1;
  v3 = sub_1B8565C18();
  v5 = v4;
  v6 = sub_1B8543E8C(v0, v2, v3, v4);
  sub_1B851D53C(v3, v5);
  sub_1B851D53C(v0, v2);
  return v6;
}

uint64_t WBSShareablePasskey.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = sub_1B8565C48();
  v65 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA28, &qword_1B8574EF8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v13 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v13);
  sub_1B8543D50();
  v14 = v67;
  sub_1B8566818();
  if (!v14)
  {
    v63 = v6;
    v64 = v8;
    v67 = v10;
    LOBYTE(v70) = 0;
    v15 = sub_1B8566698();
    v17 = v16;
    v60 = v15;
    v18 = sub_1B8565AD8();
    v61 = &v49;
    v19 = *(v18 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    LOBYTE(v70) = 1;
    sub_1B8544124(&qword_1EBA8AA30, MEMORY[0x1EEE842A0]);
    v62 = v9;
    sub_1B85666B8();
    v58 = v18;
    v59 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v69) = 2;
    sub_1B8544168();
    sub_1B85666B8();
    v21 = v70;
    v22 = v71;
    LOBYTE(v70) = 3;
    v56 = sub_1B85666A8();
    v57 = v21;
    LOBYTE(v70) = 4;
    v24 = sub_1B85666A8();
    v54 = v22;
    v52 = v24;
    v53 = &v49;
    MEMORY[0x1EEE9AC00](v24);
    v25 = v19;
    v26 = *(v19 + 16);
    v27 = v58;
    v26(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v58);
    v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = sub_1B8565AC8();
    v29 = [v28 dictionary];

    if (v29)
    {
      v50 = v17;
      sub_1B8543DA4();
      sub_1B8543DF0(&qword_1ED9856C0, sub_1B8543DA4, MEMORY[0x1E69E81B8]);
      v49 = sub_1B8565CC8();

      v30 = *(v25 + 8);
      v51 = v25 + 8;
      (v30)(v55, v27);
      v70 = v52;
      v31 = sub_1B8566728();
      v33 = v32;
      if (v31 == sub_1B8565DA8() && v33 == v34)
      {

        v35 = v66;
      }

      else
      {
        v38 = sub_1B8566758();

        v35 = v66;
        if ((v38 & 1) == 0)
        {

          v72 = 4;
          v70 = 0;
          v71 = 0xE000000000000000;
          sub_1B8566448();

          v70 = 0xD000000000000014;
          v71 = 0x80000001B858E820;
          v69 = v52;
          v45 = sub_1B8566728();
          MEMORY[0x1B8CBF120](v45);

          v37 = v62;
          sub_1B8566488();
          swift_allocError();
          sub_1B85441BC();
          sub_1B8566478();

          swift_willThrow();
          sub_1B851D53C(v57, v54);
          (v30)(v59, v27);
          goto LABEL_14;
        }
      }

      v66 = v30;
      if (v56 == 256)
      {
        v56 = v12;
        v39 = v57;
        v40 = v54;
        v70 = v57;
        v71 = v54;
        sub_1B852550C(v57, v54);
        v41 = v64;
        sub_1B8565C38();
        v42 = v67;
        v70 = v49;
        v46 = v41;
        v47 = v65;
        v48 = v63;
        (*(v65 + 16))(v63, v46, v3);
        WBSShareablePasskey.init(relyingParty:metadata:privateKey:)(v60, v50, &v70, v48, v35);
        sub_1B851D53C(v39, v40);
        (*(v47 + 8))(v64, v3);
        (v66)(v59, v27);
        (*(v42 + 8))(v56, v62);
        return __swift_destroy_boxed_opaque_existential_0(v68);
      }

      v43 = v56;

      v72 = 3;
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1B8566448();

      v70 = 0xD000000000000014;
      v71 = 0x80000001B858E840;
      v69 = v43;
      v44 = sub_1B8566728();
      MEMORY[0x1B8CBF120](v44);

      v37 = v62;
      sub_1B8566488();
      swift_allocError();
      sub_1B85441BC();
      sub_1B8566478();

      swift_willThrow();
      sub_1B851D53C(v57, v54);
      (v66)(v59, v27);
    }

    else
    {

      v36 = *(v25 + 8);
      v36(v55, v27);
      LOBYTE(v70) = 1;
      v37 = v62;
      sub_1B8566488();
      swift_allocError();
      sub_1B85441BC();
      sub_1B8566478();
      swift_willThrow();
      sub_1B851D53C(v57, v54);
      v36(v59, v27);
    }

LABEL_14:
    (*(v67 + 8))(v12, v37);
  }

  return __swift_destroy_boxed_opaque_existential_0(v68);
}

BOOL sub_1B8543740()
{
  v0 = sub_1B8565C18();
  v2 = v1;
  v3 = sub_1B8565C18();
  v5 = v4;
  v6 = sub_1B8543E8C(v0, v2, v3, v4);
  sub_1B851D53C(v3, v5);
  sub_1B851D53C(v0, v2);
  return v6;
}

unsigned __int8 *sub_1B85437C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B8565F78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B853F624(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8566498();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1B8543D50()
{
  result = qword_1EBA8AA10;
  if (!qword_1EBA8AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA10);
  }

  return result;
}

unint64_t sub_1B8543DA4()
{
  result = qword_1ED9856B8;
  if (!qword_1ED9856B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9856B8);
  }

  return result;
}

uint64_t sub_1B8543DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8543E38()
{
  result = qword_1EBA8AA20;
  if (!qword_1EBA8AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA20);
  }

  return result;
}

BOOL sub_1B8543E8C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B852550C(a3, a4);
          return sub_1B8534838(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s10SafariCore19WBSShareablePasskeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B8566758()) && (v5 = a1[2], v6 = a2[2], , , sub_1B8553AB4(v5, v6), v8 = v7, , , (v8) && (v9 = type metadata accessor for WBSShareablePasskey(0), v10 = sub_1B8565C18(), v12 = v11, v13 = sub_1B8565C18(), v15 = v14, v16 = sub_1B8543E8C(v10, v12, v13, v14), sub_1B851D53C(v13, v15), sub_1B851D53C(v10, v12), v16) && *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28)))
  {
    return *(a1 + *(v9 + 32)) == *(a2 + *(v9 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8544124(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B8565AD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8544168()
{
  result = qword_1EBA8AA38;
  if (!qword_1EBA8AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA38);
  }

  return result;
}

unint64_t sub_1B85441BC()
{
  result = qword_1EBA8AA40;
  if (!qword_1EBA8AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8AA28, &qword_1B8574EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA40);
  }

  return result;
}

uint64_t sub_1B8544248(uint64_t a1)
{
  result = sub_1B8565C48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WBSShareablePasskey.AirDropCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WBSShareablePasskey.AirDropCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B854443C()
{
  result = qword_1EBA8AA58;
  if (!qword_1EBA8AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA58);
  }

  return result;
}

unint64_t sub_1B8544494()
{
  result = qword_1EBA8AA60;
  if (!qword_1EBA8AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA60);
  }

  return result;
}

unint64_t sub_1B85444EC()
{
  result = qword_1EBA8AA68;
  if (!qword_1EBA8AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA68);
  }

  return result;
}

unint64_t sub_1B8544540(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8566658();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t WBSWebsitePasskeyEndpointsServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

uint64_t sub_1B8544628()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

uint64_t sub_1B854469C()
{
  v1 = *v0;
  sub_1B85667D8();
  MEMORY[0x1B8CBFA40](v1);
  return sub_1B8566808();
}

void sub_1B85446E0()
{
  v0 = [objc_opt_self() safari_ephemeralSessionConfiguration];
  v1 = sub_1B8565D68();
  [v0 set:v1 sourceApplicationSecondaryIdentifier:?];

  qword_1EBA8AA70 = v0;
}

id static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.getter()
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EBA8AA70;

  return v0;
}

void static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.setter(uint64_t a1)
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBA8AA70;
  qword_1EBA8AA70 = a1;
}

uint64_t (*static WBSWebsitePasskeyEndpointsService.privateRelayURLSessionConfiguration.modify(uint64_t a1))(void)
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1B85448EC@<X0>(void *a1@<X8>)
{
  if (qword_1EBA8A528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBA8AA70;
  *a1 = qword_1EBA8AA70;

  return v2;
}

void sub_1B8544978(id *a1)
{
  v1 = qword_1EBA8A528;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EBA8AA70;
  qword_1EBA8AA70 = v2;
}

uint64_t WBSWebsitePasskeyEndpointsService.__allocating_init(urlSessionConfiguration:maximumURLLength:maximumPayloadSize:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t WBSWebsitePasskeyEndpointsService.init(urlSessionConfiguration:maximumURLLength:maximumPayloadSize:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_1B8544A6C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA78, &qword_1B8575148);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v4 = sub_1B8565798();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v5 = sub_1B8565938();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8544C30, 0, 0);
}

uint64_t sub_1B8544C30()
{
  v21 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  sub_1B8546234(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B8456588(v0[34], &qword_1EBA8A550, &qword_1B8574120);
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8565B78();
    __swift_project_value_buffer(v4, qword_1ED985C68);

    v5 = sub_1B8565B48();
    v6 = sub_1B8566208();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[22];
      v7 = v0[23];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1B8525560(v8, v7, &v20);
      _os_log_impl(&dword_1B8447000, v5, v6, "Invalid URL for domain: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CC1710](v10, -1, -1);
      MEMORY[0x1B8CC1710](v9, -1, -1);
    }

    sub_1B8546D88();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[24];
    (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    v0[38] = [objc_opt_self() sessionWithConfiguration_];
    v15 = objc_allocWithZone(MEMORY[0x1E695AC18]);
    v16 = sub_1B85658F8();
    v17 = [v15 initWithURL_];
    v0[39] = v17;

    [v17 setTimeoutInterval_];
    [v17 _setPrivacyProxyStrictFailClosed_];
    sub_1B8565788();
    v18 = swift_task_alloc();
    v0[40] = v18;
    *v18 = v0;
    v18[1] = sub_1B8544FD0;
    v19 = v0[31];

    return MEMORY[0x1EEDC6260](v19, 0);
  }
}

uint64_t sub_1B8544FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[41] = a1;
  v6[42] = a2;
  v6[43] = a3;
  v6[44] = v3;

  (*(v5[30] + 8))(v5[31], v5[29]);
  if (v3)
  {
    v7 = sub_1B8545FA4;
  }

  else
  {
    v7 = sub_1B8545144;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8545144()
{
  v127 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8565B78();
    __swift_project_value_buffer(v13, qword_1ED985C68);

    v14 = sub_1B8565B48();
    v15 = sub_1B8566218();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v126[0] = v19;
      *v18 = 136642819;
      *(v18 + 4) = sub_1B8525560(v17, v16, v126);
      _os_log_impl(&dword_1B8447000, v14, v15, "Non-HTTP response for domain: %{sensitive}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CC1710](v19, -1, -1);
      MEMORY[0x1B8CC1710](v18, -1, -1);
    }

    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    sub_1B8546D88();
    v24 = swift_allocError();
    *v25 = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  v2 = v1;
  v3 = *(v0 + 344);
  if ([v2 statusCode] != 200)
  {
    if ([v2 statusCode] != 404)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 344);
      v67 = sub_1B8565B78();
      __swift_project_value_buffer(v67, qword_1ED985C68);
      v68 = v66;

      v69 = sub_1B8565B48();
      v70 = sub_1B8566218();

      v71 = os_log_type_enabled(v69, v70);
      v73 = *(v0 + 336);
      v72 = *(v0 + 344);
      v74 = *(v0 + 328);
      v75 = *(v0 + 312);
      if (v71)
      {
        v121 = *(v0 + 328);
        v125 = *(v0 + 312);
        v77 = *(v0 + 176);
        v76 = *(v0 + 184);
        v118 = *(v0 + 336);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v126[0] = v79;
        *v78 = 136643075;
        *(v78 + 4) = sub_1B8525560(v77, v76, v126);
        *(v78 + 12) = 2048;
        *(v78 + 14) = [v2 statusCode];

        _os_log_impl(&dword_1B8447000, v69, v70, "Domain %{sensitive}s returned HTTP status code: %ld", v78, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x1B8CC1710](v79, -1, -1);
        MEMORY[0x1B8CC1710](v78, -1, -1);

        sub_1B8546D88();
        v24 = swift_allocError();
        *v80 = 1;
        swift_willThrow();

        sub_1B851D53C(v121, v118);
      }

      else
      {

        sub_1B8546D88();
        v24 = swift_allocError();
        *v81 = 1;
        swift_willThrow();

        sub_1B851D53C(v74, v73);
      }

      goto LABEL_25;
    }

    v112 = *(v0 + 344);
    v114 = *(v0 + 328);
    v123 = *(v0 + 312);
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    v116 = *(v0 + 336);
    v28 = *(v0 + 256);
    v29 = *(v0 + 264);

    v30 = *(v27 + 56);
    v30(v29, 1, 1, v26);
    v30(v28, 1, 1, v26);
    v31 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(0);
    v32 = objc_allocWithZone(v31);
    v33 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
    v30(&v32[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL], 1, 1, v26);
    v34 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
    v30(&v32[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v26);
    v32[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = 0;
    swift_beginAccess();
    sub_1B854167C(v29, &v32[v33]);
    swift_endAccess();
    swift_beginAccess();
    sub_1B854167C(v28, &v32[v34]);
    swift_endAccess();
    *(v0 + 112) = v32;
    *(v0 + 120) = v31;
    v120 = objc_msgSendSuper2((v0 + 112), sel_init);
    sub_1B851D53C(v114, v116);

    v35 = (v0 + 256);
    v124 = *(v0 + 264);
    goto LABEL_15;
  }

  v4 = sub_1B8565D68();
  v5 = [v2 valueForHTTPHeaderField_];

  if (!v5 || (sub_1B8565DA8(), v5, v6 = sub_1B8565E18(), v8 = v7, , *(v0 + 128) = v6, *(v0 + 136) = v8, *(v0 + 144) = 0xD000000000000010, *(v0 + 152) = 0x80000001B858E860, sub_1B852675C(), LOBYTE(v6) = sub_1B85662C8(), result = , (v6 & 1) == 0))
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v41 = sub_1B8565B78();
    __swift_project_value_buffer(v41, qword_1ED985C68);

    v42 = sub_1B8565B48();
    v43 = sub_1B8566218();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = *(v0 + 176);
      v44 = *(v0 + 184);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v126[0] = v47;
      *v46 = 136642819;
      *(v46 + 4) = sub_1B8525560(v45, v44, v126);
      _os_log_impl(&dword_1B8447000, v42, v43, "Domain %{sensitive}s returned response of invalid content type.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1B8CC1710](v47, -1, -1);
      MEMORY[0x1B8CC1710](v46, -1, -1);
    }

    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    sub_1B8546D88();
    v24 = swift_allocError();
    v49 = 1;
    goto LABEL_23;
  }

  v10 = *(v0 + 336);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_44;
    }

    v82 = *(*(v0 + 328) + 16);
    v83 = *(*(v0 + 328) + 24);
    v84 = __OFSUB__(v83, v82);
    v12 = v83 - v82;
    if (!v84)
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_41:
    v85 = *(v0 + 328);
    v86 = *(v0 + 332);
    v84 = __OFSUB__(v86, v85);
    LODWORD(v12) = v86 - v85;
    if (v84)
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_44;
  }

  if (v11)
  {
    goto LABEL_41;
  }

  v12 = BYTE6(v10);
LABEL_44:
  if (*(*(v0 + 192) + 32) < v12)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v87 = sub_1B8565B78();
    __swift_project_value_buffer(v87, qword_1ED985C68);

    v88 = sub_1B8565B48();
    v89 = sub_1B8566218();

    if (os_log_type_enabled(v88, v89))
    {
      v91 = *(v0 + 176);
      v90 = *(v0 + 184);
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v126[0] = v93;
      *v92 = 136642819;
      *(v92 + 4) = sub_1B8525560(v91, v90, v126);
      _os_log_impl(&dword_1B8447000, v88, v89, "Domain %{sensitive}s returned payload size exceed client set limit.", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x1B8CC1710](v93, -1, -1);
      MEMORY[0x1B8CC1710](v92, -1, -1);
    }

    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    sub_1B8546D88();
    v24 = swift_allocError();
    v49 = 2;
LABEL_23:
    *v48 = v49;
    swift_willThrow();

LABEL_24:
    sub_1B851D53C(v22, v20);

LABEL_25:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v50 = sub_1B8565B78();
    __swift_project_value_buffer(v50, qword_1ED985C68);

    v51 = v24;
    v52 = sub_1B8565B48();
    v53 = sub_1B8566218();

    if (os_log_type_enabled(v52, v53))
    {
      v55 = *(v0 + 176);
      v54 = *(v0 + 184);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v126[0] = v58;
      *v56 = 136643075;
      *(v56 + 4) = sub_1B8525560(v55, v54, v126);
      *(v56 + 12) = 2112;
      v59 = v24;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v60;
      *v57 = v60;
      _os_log_impl(&dword_1B8447000, v52, v53, "Error checking passkey support for domain %{sensitive}s: %@", v56, 0x16u);
      sub_1B8456588(v57, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1B8CC1710](v58, -1, -1);
      MEMORY[0x1B8CC1710](v56, -1, -1);
    }

    v62 = *(v0 + 296);
    v61 = *(v0 + 304);
    v63 = *(v0 + 280);
    v64 = *(v0 + 288);
    swift_willThrow();
    [v61 finishTasksAndInvalidate];

    (*(v64 + 8))(v62, v63);

    v65 = *(v0 + 8);

    return v65();
  }

  v94 = *(v0 + 352);
  v95 = *(v0 + 200);
  sub_1B85463F8(*(v0 + 224), (*(v0 + 224) + *(v95 + 48)), *(v0 + 328), v10);
  v24 = v94;
  v96 = *(v0 + 336);
  v97 = *(v0 + 344);
  v98 = *(v0 + 328);
  v99 = *(v0 + 312);
  if (v24)
  {

    sub_1B851D53C(v98, v96);
    goto LABEL_25;
  }

  v119 = *(v0 + 312);
  v35 = (v0 + 208);
  v100 = *(v0 + 208);
  v115 = *(v0 + 328);
  v101 = *(v0 + 280);
  v102 = *(v0 + 288);
  v103 = *(v0 + 216);
  v104 = *(v0 + 224);
  v110 = v103;
  v111 = v100;
  v117 = v104;
  sub_1B8546DDC(v104, v103);
  v124 = v103 + *(v95 + 48);
  sub_1B8546DDC(v104, v100);
  v105 = *(v95 + 48);
  v122 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(0);
  v106 = objc_allocWithZone(v122);
  v113 = v96;
  v107 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v108 = *(v102 + 56);
  v108(&v106[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL], 1, 1, v101);
  v109 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v108(&v106[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL], 1, 1, v101);
  v106[OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys] = 1;
  swift_beginAccess();
  sub_1B854167C(v110, &v106[v107]);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(v111 + v105, &v106[v109]);
  swift_endAccess();
  *(v0 + 160) = v106;
  *(v0 + 168) = v122;
  v120 = objc_msgSendSuper2((v0 + 160), sel_init);
  sub_1B851D53C(v115, v113);

  sub_1B8456588(v117, &qword_1EBA8AA78, &qword_1B8575148);
  sub_1B8456588(v111 + v105, &qword_1EBA8A550, &qword_1B8574120);
  sub_1B8456588(v110, &qword_1EBA8A550, &qword_1B8574120);
LABEL_15:
  v37 = *(v0 + 296);
  v36 = *(v0 + 304);
  v39 = *(v0 + 280);
  v38 = *(v0 + 288);
  sub_1B8456588(*v35, &qword_1EBA8A550, &qword_1B8574120);
  sub_1B8456588(v124, &qword_1EBA8A550, &qword_1B8574120);
  [v36 finishTasksAndInvalidate];

  (*(v38 + 8))(v37, v39);

  v40 = *(v0 + 8);

  return v40(v120);
}

uint64_t sub_1B8545FA4()
{
  v20 = v0;

  v1 = *(v0 + 352);
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);

  v3 = v1;
  v4 = sub_1B8565B48();
  v5 = sub_1B8566218();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136643075;
    *(v8 + 4) = sub_1B8525560(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B8447000, v4, v5, "Error checking passkey support for domain %{sensitive}s: %@", v8, 0x16u);
    sub_1B8456588(v9, &qword_1EBA8A8A0, &qword_1B85747C0);
    MEMORY[0x1B8CC1710](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CC1710](v10, -1, -1);
    MEMORY[0x1B8CC1710](v8, -1, -1);
  }

  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 280);
  v16 = *(v0 + 288);
  swift_willThrow();
  [v13 finishTasksAndInvalidate];

  (*(v16 + 8))(v14, v15);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B8546234@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1B8565D68();
  v6 = [v5 safari_bestURLForUserTypedString];

  if (v6)
  {
    v7 = [v6 safari_wellKnownPasskeyEndpointsURL];

    if (v7)
    {
      sub_1B8565908();

      v8 = sub_1B8565938();
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = sub_1B8565938();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    return sub_1B85473EC(v4, a1);
  }

  else
  {
    v9 = sub_1B8565938();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1B85463F8(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B85657C8();
  swift_allocObject();
  sub_1B85657B8();
  sub_1B8547398();
  sub_1B85657A8();

  if (!v4)
  {
    if (v10)
    {

      sub_1B85465A0(a1);

      if (v11)
      {
LABEL_4:

        sub_1B85465A0(a2);
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v8 = sub_1B8565938();
      (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v9 = sub_1B8565938();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  return result;
}

uint64_t sub_1B85465A0@<X0>(char *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B8565938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) < sub_1B8565E78())
  {
    goto LABEL_11;
  }

  sub_1B8565928();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v12 = *(v9 + 32);
    v12(v11, v7, v8);
    sub_1B8565918();
    if (v13)
    {
      v14 = sub_1B8565E18();
      v16 = v15;

      if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = sub_1B8566758();

        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v12(a3, v11, v8);
      v19 = 0;
      return (*(v9 + 56))(a3, v19, 1, v8);
    }

LABEL_10:
    (*(v9 + 8))(v11, v8);
    goto LABEL_11;
  }

  sub_1B8456588(v7, &qword_1EBA8A550, &qword_1B8574120);
LABEL_11:
  v19 = 1;
  return (*(v9 + 56))(a3, v19, 1, v8);
}

uint64_t WBSWebsitePasskeyEndpointsService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B8546860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AAA8, &qword_1B85753A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854770C();
  sub_1B8566828();
  v14 = 0;
  sub_1B85666C8();
  if (!v5)
  {
    v13 = 1;
    sub_1B85666C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B85469F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8546A9C;

  return sub_1B8544A6C(a1, a2);
}

uint64_t sub_1B8546A9C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B8546BB4()
{
  if (*v0)
  {
    return 0x6567616E616DLL;
  }

  else
  {
    return 0x6C6C6F726E65;
  }
}

uint64_t sub_1B8546BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C6F726E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B8566758() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616E616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8566758();

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

uint64_t sub_1B8546CC0(uint64_t a1)
{
  v2 = sub_1B854770C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8546CFC(uint64_t a1)
{
  v2 = sub_1B854770C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8546D38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8547528(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1B8546D88()
{
  result = qword_1EBA8AA80;
  if (!qword_1EBA8AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA80);
  }

  return result;
}

uint64_t sub_1B8546DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA78, &qword_1B8575148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8546E50()
{
  result = qword_1EBA8AA88;
  if (!qword_1EBA8AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA88);
  }

  return result;
}

uint64_t dispatch thunk of WBSWebsitePasskeyEndpointsServiceProviding.checkPasskeySupport(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B85479B8;

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for WBSWebsitePasskeyEndpointsServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WBSWebsitePasskeyEndpointsServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of WBSWebsitePasskeyEndpointsService.checkPasskeySupport(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B854729C;

  return v8(a1, a2);
}

uint64_t sub_1B854729C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1B8547398()
{
  result = qword_1EBA8AA90;
  if (!qword_1EBA8AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AA90);
  }

  return result;
}

uint64_t sub_1B85473EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8547468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1B85474C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B8547528(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AA98, &qword_1B8575398);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B854770C();
  sub_1B8566818();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1B8566678();
    v10 = 1;
    sub_1B8566678();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B854770C()
{
  result = qword_1EBA8AAA0;
  if (!qword_1EBA8AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AAA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WBSWebsitePasskeyEndpointsService.PasskeyEndpoints.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WBSWebsitePasskeyEndpointsService.PasskeyEndpoints.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B85478B4()
{
  result = qword_1EBA8AAB0;
  if (!qword_1EBA8AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AAB0);
  }

  return result;
}

unint64_t sub_1B854790C()
{
  result = qword_1EBA8AAB8;
  if (!qword_1EBA8AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AAB8);
  }

  return result;
}

unint64_t sub_1B8547964()
{
  result = qword_1EBA8AAC0;
  if (!qword_1EBA8AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AAC0);
  }

  return result;
}

uint64_t sub_1B85479BC(uint64_t a1, uint64_t a2)
{
  sub_1B851F688(a1, v4);
  if (swift_dynamicCast())
  {
    sub_1B851F688(a2, v4);
    swift_dynamicCast();
  }

  return 0;
}

uint64_t sub_1B8547A60()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t sub_1B8547A98()
{
  v0 = sub_1B8547A60();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B8547AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8565DA8();
  v6 = v5;
  if (v4 == sub_1B8565DA8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1B8566758();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B8566308();
  v11 = *(a1 + 24);
  v12 = *(a2 + 24);

  v13 = MEMORY[0x1B8CBF550](v11, v12);

  return v13 & 1;
}

uint64_t sub_1B8547BC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B8565DA8();
  v3 = v2;
  sub_1B8565D38();

  sub_1B85664A8();
  return sub_1B8565D08();
}

uint64_t sub_1B8547C78()
{
  sub_1B85667D8();
  sub_1B8547BC8(v1);
  return sub_1B8566808();
}

uint64_t sub_1B8547D00()
{
  sub_1B85667D8();
  sub_1B8547BC8(v1);
  return sub_1B8566808();
}

id sub_1B8547D40()
{
  result = [objc_allocWithZone(WBSManagedFeatureAvailability) init];
  qword_1EBA8AAC8 = result;
  return result;
}

id static WBSManagedFeatureAvailability.shared.getter()
{
  if (qword_1EBA8A530 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBA8AAC8;

  return v1;
}

uint64_t sub_1B8547E2C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___WBSManagedFeatureAvailability_rebroadcastedNotifications;
  swift_beginAccess();
  if (!*(*&v3[v8] + 16) || (, sub_1B853573C(a1), v10 = v9, , (v10 & 1) == 0))
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B8566358())
    {
      v11 = sub_1B8549508(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    swift_beginAccess();
    v12 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21 = *&v3[v8];
    *&v3[v8] = 0x8000000000000000;
    sub_1B85543F8(v11, v12, isUniquelyReferenced_nonNull_native);

    *&v3[v8] = v21;
    swift_endAccess();
    v14 = [objc_opt_self() defaultCenter];
    [v14 addObserver:v4 selector:sel_handleNotificationWithNotification_ name:v12 object:0];
  }

  swift_beginAccess();
  v15 = sub_1B85481C4(v23, a1);
  if (*v16)
  {
    v22 = MEMORY[0x1E69E6370];
    v17 = v4;
    swift_getAtKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    sub_1B851F84C(&v21, (v18 + 32));
    *(v18 + 64) = sub_1B85479BC;
    *(v18 + 72) = 0;
    v19 = a2;

    sub_1B8557130(&v21, v18);
    (v15)(v23, 0);
    swift_endAccess();
  }

  else
  {
    (v15)(v23, 0);
    return swift_endAccess();
  }
}

uint64_t (*sub_1B85481C4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B8548FEC(v4, a2);
  return sub_1B854823C;
}

void sub_1B854823C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1B8548288(void *a1)
{
  v2 = v1;
  v3 = [a1 name];
  v4 = OBJC_IVAR___WBSManagedFeatureAvailability_rebroadcastedNotifications;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!*(v5 + 16) || (v6 = sub_1B853573C(v3), (v7 & 1) == 0))
  {

    swift_endAccess();
    return;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  swift_endAccess();

  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1B8566348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940);
    sub_1B8549A3C();
    sub_1B8566158();
    v8 = v29[4];
    v9 = v29[5];
    v10 = v29[6];
    v11 = v29[7];
    v12 = v29[8];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);
  }

  v16 = (v10 + 64) >> 6;
  while (v8 < 0)
  {
    v22 = sub_1B8566378();
    if (!v22 || (v28[0] = v22, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8AB60, &unk_1B8576940), swift_dynamicCast(), v21 = v29[0], v19 = v11, v20 = v12, !v29[0]))
    {
LABEL_24:
      sub_1B852D3B0(v8);
      return;
    }

LABEL_22:
    v28[0] = v2;
    v23 = v2;

    swift_getAtPartialKeyPath();

    v24 = *(v21 + 64);
    swift_beginAccess();
    sub_1B851F688(v21 + 32, v28);

    LOBYTE(v23) = v24(v28, v29);

    __swift_destroy_boxed_opaque_existential_0(v28);
    if (v23)
    {
      swift_beginAccess();
      __swift_assign_boxed_opaque_existential_0((v21 + 32), v29);
      swift_endAccess();
      v25 = [objc_opt_self() defaultCenter];
      v26 = *(v21 + 16);
      [v25 postNotificationName:v26 object:{objc_msgSend(a1, sel_object)}];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    v11 = v19;
    v12 = v20;
  }

  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_18:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_24;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1B8548684(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8566328() + 1) & ~v5;
    do
    {
      sub_1B852D3B8(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1B8566388();
      result = sub_1B851F7F8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B8548828(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8566328() + 1) & ~v5;
    do
    {
      sub_1B85667D8();

      sub_1B8565D38();
      v10 = sub_1B8566808();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B85489D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8566328() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1B8566278();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B8548B64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8566328() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B85667C8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B8548CD4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8566328() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1B8565DA8();
      sub_1B85667D8();
      v10 = v9;
      sub_1B8565D38();
      v11 = sub_1B8566808();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}