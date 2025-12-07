uint64_t storeEnumTagSinglePayload for ArticleScoringConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DABCBD80()
{
  result = qword_1ECBE8980;
  if (!qword_1ECBE8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8980);
  }

  return result;
}

unint64_t sub_1DABCBDD8()
{
  result = qword_1EE124558;
  if (!qword_1EE124558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124558);
  }

  return result;
}

unint64_t sub_1DABCBE30()
{
  result = qword_1EE124560;
  if (!qword_1EE124560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124560);
  }

  return result;
}

uint64_t sub_1DABCBE84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001DACEC4D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACEC4F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC510 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC530 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC550 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACEC570 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC5A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE2350 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE2270 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE2310 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACE22D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEC5C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACEC5E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACEC600 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEC620 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACEC640 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACE2600 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEC660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6769655769626174 && a2 == 0xEA00000000007468)
  {

    return 19;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1DABCC4CC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = sub_1DAB4C5AC(&v17);
  v3 = 0;
  v4 = v17;
  v5 = *(v17 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v4 + 48 * v3;
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = (v7 + 48);
    ++v3;
    v9 = *(v7 + 56);
    v7 += 48;
    if (v9)
    {
      v10 = *v8;
      sub_1DACB71E4();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA9A3B0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1DAA9A3B0((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      goto LABEL_2;
    }
  }

  if (*(v6 + 16))
  {
    MEMORY[0x1EEE9AC00](v14);
    sub_1DAA9CB70(0);
    sub_1DACB8BB4();

    v15 = sub_1DACB89D4();
    sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    v16 = sub_1DACB8A64();

    return v16;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
    sub_1DAA61774(0);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABCC6F4@<X0>(char **a2@<X8>)
{
  v3 = sub_1DACB71E4();
  v4 = sub_1DABCC838(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_1DABCC78C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1DABB4648();
  sub_1DAA61774(0);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABCC7E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return sub_1DAA9C8F8(v2, v3, v4);
}

char *sub_1DABCC838(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  result = sub_1DACB71E4();
  v7 = 0;
  v8 = 0;
  v34 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v33 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v7)
    {
      v11 = *(v7 + 16);
      if (v8 == v11)
      {
        break;
      }

      if (v8 >= v11)
      {
        goto LABEL_39;
      }

      v16 = v7 + 16 * v8;
      result = *(v16 + 40);
      v31 = *(v16 + 32);
      v32 = result;
      if (v34)
      {
        result = sub_1DACB71E4();
        v17 = v10;
      }

      else
      {
        v18 = *(v10 + 3);
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v35 = v20;
        sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v17);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 17;
        }

        v23 = v22 >> 4;
        *(v17 + 2) = v35;
        *(v17 + 3) = 2 * (v22 >> 4);
        v24 = v17 + 32;
        v25 = *(v10 + 3) >> 1;
        v33 = &v17[16 * v25 + 32];
        v34 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        if (*(v10 + 2))
        {
          v26 = v10 + 32;
          if (v17 != v10 || v24 >= &v26[16 * v25])
          {
            memmove(v24, v26, 16 * v25);
          }

          sub_1DACB71E4();
          *(v10 + 2) = 0;
        }

        else
        {
          sub_1DACB71E4();
        }
      }

      v27 = __OFSUB__(v34--, 1);
      if (v27)
      {
        goto LABEL_40;
      }

      ++v8;
      *v33 = v31;
      *(v33 + 1) = v32;
      v33 += 16;
      v10 = v17;
    }

    if (!v5)
    {
      break;
    }

    v12 = v9;
LABEL_14:
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v15 = *(*(a1 + 56) + ((v12 << 9) | (8 * v14)));
    sub_1DACB71E4();

    v8 = 0;
    v7 = v15;
  }

  v13 = v9;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v12 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v13;
    if (v5)
    {
      v9 = v12;
      goto LABEL_14;
    }
  }

  sub_1DAA54B38(a1);

  v28 = *(v10 + 3);
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v34);
  v30 = v29 - v34;
  if (!v27)
  {
    *(v10 + 2) = v30;
    return v10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

StocksCore::ExchangeStatus_optional __swiftcall ExchangeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExchangeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465736F6C63;
  v4 = 0x656B72614D657270;
  if (v1 != 3)
  {
    v4 = 0x756F487265746661;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852141679;
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

unint64_t sub_1DABCCBE8()
{
  result = qword_1ECBE8988;
  if (!qword_1ECBE8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8988);
  }

  return result;
}

uint64_t sub_1DABCCC3C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABCCD1C(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABCCDE8(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t type metadata accessor for SparklineOperation(uint64_t a1)
{
  result = qword_1EE121DA0;
  if (!qword_1EE121DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1DABCCFF4()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8BD4();
  v4 = sub_1DACB7A64();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  result = 1;
  if (v6)
  {
    v9[2] = v4;
    v9[3] = v6;
    v9[0] = 0xD000000000000010;
    v9[1] = 0x80000001DACEC850;
    sub_1DAA642D8();
    v7 = sub_1DACB9B64();

    if (v7)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DABCD140(uint64_t a1, uint64_t a2)
{
  v14 = *(v2 + qword_1EE121DB0);
  sub_1DACB71E4();
  sub_1DACA8764(&v14);
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DABCFE18();
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DABCFE94(0);
    v8 = 32;
    do
    {
      MEMORY[0x1EEE9AC00](v7);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  v9 = sub_1DACB89D4();
  sub_1DAA5FC7C(0, &qword_1EE11FCA0, type metadata accessor for Chart);
  sub_1DACB8934();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A64();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t *sub_1DABCD438(uint64_t *result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      type metadata accessor for Chart(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

uint64_t sub_1DABCD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v56 = a4;
  v54 = a3;
  v10 = sub_1DACB7CC4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB8204();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7684();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v53 = v18;
  sub_1DACB71F4();
  v19 = sub_1DACB98E4();
  sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740]);
  v20 = swift_allocObject();
  v48 = xmmword_1DACC1D20;
  *(v20 + 16) = xmmword_1DACC1D20;
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E1277130](a5, MEMORY[0x1E69E6158]);
  v24 = v23;
  *(v20 + 56) = v21;
  *(v20 + 64) = sub_1DAA443C8();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_1DAA41DCC();
  v25 = sub_1DACB9AD4();
  sub_1DACB8C64("Fetching sparklines for %{public}@", 34, 2, &dword_1DAA3F000, v25, v19, v20);

  v26 = *(a5 + 16);
  v55 = a5;
  if (v26)
  {
    v47 = a6;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1DAB25DF8(0, v26, 0);
    v27 = v57;
    v28 = a5 + 40;
    do
    {
      sub_1DACB71E4();
      sub_1DACB7674();

      v57 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1DAB25DF8((v29 > 1), v30 + 1, 1);
        v27 = v57;
      }

      *(v27 + 16) = v30 + 1;
      (*(v15 + 32))(v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30, v17, v14);
      v28 += 16;
      --v26;
    }

    while (v26);
    v31 = v56;
    a6 = v47;
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v31 = v56;
    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1DABCFF24(0);
  sub_1DACB71F4();
  sub_1DAA4BDD8(v32);
  (*(v50 + 104))(v49, *MEMORY[0x1E69D6490], v51);
  sub_1DACB7CB4();
  v33 = sub_1DACB84D4();
  sub_1DAA4DD10(0, &qword_1EE11F4B8, &qword_1EE11FF98, MEMORY[0x1E69D67B0]);
  v34 = swift_allocObject();
  *(v34 + 16) = v48;
  sub_1DACB8BD4();
  v35 = v57;
  v36 = v58;
  v37 = type metadata accessor for SparklinesRequestSigner();
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v36;
  *(v34 + 56) = v37;
  *(v34 + 64) = sub_1DAA8053C(qword_1EE121050, type metadata accessor for SparklinesRequestSigner, &unk_1DACD2768);
  *(v34 + 32) = v38;
  sub_1DACB84E4();
  v39 = swift_allocObject();
  *(v39 + 16) = v32;
  sub_1DACB71F4();
  sub_1DACB84C4();
  v40 = swift_allocObject();
  v40[2] = v55;
  v40[3] = a6;
  v42 = v53;
  v41 = v54;
  v40[4] = sub_1DAA7390C;
  v40[5] = v42;
  v40[6] = v39;
  v40[7] = v41;
  v40[8] = v31;
  sub_1DACB71F4();
  v43 = v33;
  sub_1DACB71E4();
  v44 = a6;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v43 start];
}

uint64_t sub_1DABCDAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB8754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DAADC74C(0, v8[2] + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DAADC74C((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_1DABCDC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = *a1;
  if (*(a1 + 8))
  {
    v18 = sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DACC1D20;
    v99 = 0;
    v100 = 0xE000000000000000;
    v101 = v17;
    sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
    sub_1DACB9DD4();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1DAA443C8();
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    sub_1DAA41DCC();
    v20 = sub_1DACB9AD4();
    sub_1DACB8C64("Failed to fetch sparklines with error: %{public}@", 49, 2, &dword_1DAA3F000, v20, v18, v19);

    a7(v17);
    swift_beginAccess();
    v21 = sub_1DACB71E4();
    sub_1DABD07D4(v21);
  }

  v96 = a5;
  v97 = a4;
  v98 = v17;
  v94 = a3;
  v95 = &v90 - v16;
  v22 = *(a2 + 16);
  v93 = a6;
  if (!v22)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v15);
    sub_1DABD0038(0);
    v46 = sub_1DACB9154();

    MEMORY[0x1EEE9AC00](v47);
    v48 = v94;
    v98 = type metadata accessor for Chart(0);
    v49 = sub_1DACB9154();
    (v97)();
    v50 = *(v48 + qword_1EE121DB0);
    v22 = *(v50 + 16);
    if (!v22)
    {
      v53 = MEMORY[0x1E69E7CC0];
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_52;
    }

    v97 = v49;
    v51 = 0;
    v52 = v50 + 40;
    v91 = v22 - 1;
    v53 = MEMORY[0x1E69E7CC0];
    v54 = v95;
    v92 = v50 + 40;
    do
    {
      v96 = v53;
      v55 = (v52 + 16 * v51);
      v56 = v51;
      while (1)
      {
        if (v56 >= *(v50 + 16))
        {
          goto LABEL_55;
        }

        v58 = *(v55 - 1);
        v57 = *v55;
        v51 = v56 + 1;
        v59 = *(v46 + 16);
        sub_1DACB71E4();
        if (!v59)
        {
          break;
        }

        sub_1DAA4BF3C(v58, v57);
        if ((v60 & 1) == 0)
        {
          break;
        }

        v55 += 2;
        ++v56;
        if (v22 == v51)
        {
          v53 = v96;
          goto LABEL_30;
        }
      }

      v61 = v96;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAA5859C(0, v61[2] + 1, 1);
        v61 = v99;
      }

      v64 = v61[2];
      v63 = v61[3];
      if (v64 >= v63 >> 1)
      {
        sub_1DAA5859C((v63 > 1), v64 + 1, 1);
        v61 = v99;
      }

      v61[2] = v64 + 1;
      v65 = &v61[2 * v64];
      v65[4] = v58;
      v65[5] = v57;
      v52 = v92;
      v54 = v95;
      v53 = v61;
    }

    while (v91 != v56);
LABEL_30:
    v66 = *(v50 + 16);
    if (!v66)
    {
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_52;
    }

    v96 = v53;
    v67 = 0;
    v68 = (v98 - 8);
    v69 = v50 + 40;
    v91 = v66 - 1;
    v22 = MEMORY[0x1E69E7CC0];
    v92 = v50 + 40;
LABEL_32:
    v95 = v22;
    v70 = (v69 + 16 * v67);
    v71 = v67;
    while (1)
    {
      if (v71 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (*(v46 + 16))
      {
        v73 = *(v70 - 1);
        v72 = *v70;
        sub_1DACB71E4();
        sub_1DAA4BF3C(v73, v72);
        if (v74)
        {
          v75 = v97;
          if (!*(v97 + 16))
          {
            v77 = *v68;
LABEL_42:
            (*(v77 + 56))(v54, 1, 1, v98);
            sub_1DABD0EF8(v54, qword_1EE120360, type metadata accessor for Chart);
            v81 = v95;
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v99 = v81;
            if ((v82 & 1) == 0)
            {
              sub_1DAA5859C(0, *(v81 + 2) + 1, 1);
              v81 = v99;
            }

            v84 = *(v81 + 2);
            v83 = *(v81 + 3);
            v85 = (v84 + 1);
            if (v84 >= v83 >> 1)
            {
              v95 = (v84 + 1);
              sub_1DAA5859C((v83 > 1), v84 + 1, 1);
              v85 = v95;
              v81 = v99;
            }

            v67 = v71 + 1;
            *(v81 + 2) = v85;
            v86 = &v81[16 * v84];
            *(v86 + 4) = v73;
            *(v86 + 5) = v72;
            v69 = v92;
            v87 = v91 == v71;
            v22 = v81;
            if (v87)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          v76 = sub_1DAA4BF3C(v73, v72);
          v77 = *v68;
          if ((v78 & 1) == 0)
          {
            goto LABEL_42;
          }

          v79 = *(v75 + 56);
          v80 = *v68;
          sub_1DAA85F70(v79 + *(v77 + 72) * v76, v54, type metadata accessor for Chart);

          (*(v80 + 56))(v54, 0, 1, v98);
          sub_1DABD0EF8(v54, qword_1EE120360, type metadata accessor for Chart);
        }

        else
        {
        }
      }

      ++v71;
      v70 += 2;
      if (v66 == v71)
      {
        v22 = v95;
        v53 = v96;
        goto LABEL_52;
      }
    }
  }

  v23 = (a2 + 40);
  v24 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v28 = *(v23 - 1);
    v27 = *v23;
    v29 = sub_1DACB93B4();
    v31 = v30;
    swift_bridgeObjectRetain_n();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v24;
    v33 = sub_1DAA4BF3C(v29, v31);
    v35 = v24[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (v24[3] < v38)
    {
      sub_1DAAA2514(v38, v32);
      v33 = sub_1DAA4BF3C(v29, v31);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_59;
      }

LABEL_12:
      if (v39)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (v32)
    {
      goto LABEL_12;
    }

    v45 = v33;
    sub_1DAB65314();
    v33 = v45;
    if (v39)
    {
LABEL_5:
      v25 = v33;

      v24 = v99;
      v26 = (v99[7] + 16 * v25);
      *v26 = v28;
      v26[1] = v27;

      goto LABEL_6;
    }

LABEL_13:
    v24 = v99;
    v99[(v33 >> 6) + 8] |= 1 << v33;
    v41 = (v24[6] + 16 * v33);
    *v41 = v29;
    v41[1] = v31;
    v42 = (v24[7] + 16 * v33);
    *v42 = v28;
    v42[1] = v27;

    v43 = v24[2];
    v37 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v37)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    v24[2] = v44;
LABEL_6:
    v23 += 2;
    if (!--v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v53 = v96;
LABEL_52:

  sub_1DABD06C8(v53);
  swift_beginAccess();
  v88 = sub_1DACB71E4();
  sub_1DABCF0F0(v88, v53, v22);
}

uint64_t sub_1DABCE51C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = a4[2];
  v9 = a4[3];
  if (*(a5 + 16))
  {
    v12 = sub_1DAA4BF3C(*a3, a3[1]);
    if (v13)
    {
      v14 = *(*(a5 + 56) + 16 * v12);
      v15 = sub_1DACB71E4();
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *a1 = v14;
  a1[1] = v15;
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v9;
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB71E4();
}

void sub_1DABCE5CC(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v18 = a5;
  v21 = a2;
  v20 = a1;
  sub_1DABD0C68(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v11 = a3[1];
  v13 = a4[1];
  v14 = objc_autoreleasePoolPush();
  v15 = v19;
  sub_1DABCE6E4(v18, v13, v12, v11, v10);
  objc_autoreleasePoolPop(v14);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v8 + 48);
    *v20 = *v10;
    sub_1DABD0D10(&v10[v16], v21);
  }
}

uint64_t sub_1DABCE6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, char *a5@<X8>)
{
  v39 = a3;
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Chart(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((a1 + qword_1EE121DD0), *(a1 + qword_1EE121DD0 + 24));
  v40 = sub_1DAB681FC(MEMORY[0x1E69E7CC0]);
  sub_1DACB71F4();
  sub_1DABD0578(a2, 0, &v40);

  v16 = sub_1DACB71E4();
  sub_1DAB859D4(v16, v11);
  swift_bridgeObjectRelease_n();
  v38 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DABD0EF8(v11, qword_1EE120360, type metadata accessor for Chart);
    v17 = sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DACC1D40;
    v19 = a4;
    v20 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1DAA443C8();
    *(v18 + 64) = v21;
    *(v18 + 32) = v39;
    *(v18 + 40) = v19;
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = a2;
    sub_1DACB71E4();
    sub_1DACB9DD4();
    v22 = v40;
    v23 = v41;
    *(v18 + 96) = v20;
    *(v18 + 104) = v21;
    *(v18 + 72) = v22;
    *(v18 + 80) = v23;
    sub_1DAA41DCC();
    v24 = sub_1DACB9AD4();
    sub_1DACB8C64("Failed to generate sparkline model for %{public}@ from %{public}@", 65, 2, &dword_1DAA3F000, v24, v17, v18);

    sub_1DABD0C68(0);
    v26 = *(v25 + 48);
    *a5 = 0;
    *(a5 + 1) = 0;
    return (*(v38 + 56))(&a5[v26], 1, 1, v12);
  }

  else
  {
    sub_1DABD0D90(v11, v15, type metadata accessor for Chart);
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DACC1D40;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1DAA443C8();
    *(v28 + 64) = v29;
    *(v28 + 32) = v39;
    *(v28 + 40) = a4;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1DACB7CC4();
    v37 = v12;
    sub_1DACB71E4();
    sub_1DACB9DD4();
    MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
    sub_1DAA49610(0);
    sub_1DACB9DD4();
    v30 = v40;
    v31 = v41;
    *(v28 + 96) = MEMORY[0x1E69E6158];
    *(v28 + 104) = v29;
    *(v28 + 72) = v30;
    *(v28 + 80) = v31;
    sub_1DAA41DCC();
    v32 = sub_1DACB9AD4();
    v33 = sub_1DACB9914();
    sub_1DACB8C64("Fetched sparkline model for %{public}@ with date range %{public}@", 65, 2, &dword_1DAA3F000, v32, v33, v28);

    sub_1DABD0C68(0);
    v35 = *(v34 + 48);
    *a5 = v39;
    *(a5 + 1) = a4;
    sub_1DACB71E4();
    sub_1DABCEBE4(v15, &a5[v35], 600.0);
    sub_1DAA86550(v15, type metadata accessor for Chart);
    return (*(v38 + 56))(&a5[v35], 0, 1, v37);
  }
}

uint64_t sub_1DABCEBE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v52 = a2;
  v54 = type metadata accessor for Chart.Entry(0);
  v5 = *(v54 - 8);
  v6 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = sub_1DACB7CC4();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1DACB7F54();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v14;
  sub_1DAA49610(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DABCF778(a1, a3);
  v19 = type metadata accessor for Chart(0);
  sub_1DAA85F70(a1 + v19[5], v17, sub_1DAA49610);
  v20 = v19[7];
  v21 = a1;
  v22 = a1 + v19[6];
  v46 = *v22;
  v45 = v22[8];
  v44 = v12;
  v23 = *(v12 + 16);
  v24 = v14;
  v25 = v49;
  v23(v24, v21 + v20, v49);
  sub_1DACB7CB4();
  v26 = v52;
  *v52 = v18;
  v27 = v26 + v19[5];
  v43 = v17;
  sub_1DAA85F70(v17, v27, sub_1DAA49610);
  v28 = v26 + v19[6];
  v29 = v47;
  *v28 = v46;
  v28[8] = v45;
  v23(v26 + v19[7], v29, v25);
  v46 = v19;
  (*(v50 + 16))(v26 + v19[8], v48, v51);
  v30 = v18[2];
  result = sub_1DACB71E4();
  v32 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v33 = 0;
    while (v33 < v18[2])
    {
      v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v35 = *(v5 + 72);
      sub_1DAA85F70(v18 + v34 + v35 * v33, v9, type metadata accessor for Chart.Entry);
      v36 = &v9[*(v54 + 36)];
      if ((v36[8] & 1) != 0 || *v36 <= 0.0)
      {
        result = sub_1DAA86550(v9, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DABD0D90(v9, v53, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v32 + 16) + 1, 1);
          v32 = v55;
        }

        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1DAA83020((v38 > 1), v39 + 1, 1);
          v32 = v55;
        }

        *(v32 + 16) = v39 + 1;
        result = sub_1DABD0D90(v53, v32 + v34 + v39 * v35, type metadata accessor for Chart.Entry);
      }

      if (v30 == ++v33)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v40 = *(v32 + 16);

    (*(v50 + 8))(v48, v51);
    (*(v44 + 8))(v47, v49);
    result = sub_1DAA86550(v43, sub_1DAA49610);
    v41 = &unk_1F567E480;
    if (!v40)
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    *(v52 + v46[9]) = v41;
  }

  return result;
}

uint64_t sub_1DABCF0F0(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = a3;
  v65 = sub_1DACB8754();
  v6 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NetworkEvent(0);
  v8 = *(v64 - 8);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  if (sub_1DABCCFF4())
  {
    v54 = v13;
    v14 = *(*(v3 + qword_1EE121DB0) + 16);
    v15 = a2[2];
    sub_1DAA4D678(v3 + qword_1EE121DC8, v67);
    v16 = v68;
    v17 = v69;
    v18 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v19 = *(a1 + 16);
    if (v19)
    {
      v51 = v18;
      v52 = v17;
      v53 = v16;
      v58 = v14 - v15;
      v66 = MEMORY[0x1E69E7CC0];
      v61 = a2;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB25BB8(0, v19, 0);
      v20 = a1;
      v21 = v66;
      v23 = *(v6 + 16);
      v22 = v6 + 16;
      v24 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v56 = *(v22 + 56);
      v57 = v23;
      v55 = (v22 + 16);
      v25 = v14;
      v26 = v54;
      v59 = v25;
      v60 = v22;
      do
      {
        v27 = v8;
        v28 = v62;
        v29 = v65;
        v57(v62, v24, v65);
        sub_1DAA8C2EC(0);
        v31 = (v26 + *(v30 + 48));
        (*v55)(v26, v28, v29);
        v32 = v58;
        *v31 = v25;
        v31[1] = v32;
        v33 = v63;
        v31[2] = v61;
        v31[3] = v33;
        v31[4] = 0;
        v31[5] = 0;
        swift_storeEnumTagMultiPayload();
        v66 = v21;
        v34 = *(v21 + 16);
        v35 = *(v21 + 24);
        sub_1DACB71E4();
        sub_1DACB71E4();
        if (v34 >= v35 >> 1)
        {
          sub_1DAB25BB8((v35 > 1), v34 + 1, 1);
          v21 = v66;
        }

        *(v21 + 16) = v34 + 1;
        v8 = v27;
        sub_1DABD0D90(v26, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v34, type metadata accessor for NetworkEvent);
        v24 += v56;
        --v19;
        v25 = v59;
      }

      while (v19);

      v17 = v52;
      v16 = v53;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v47 = v21;
    v48 = v16;
    v49 = v17;
  }

  else
  {
    sub_1DAA4D678(v3 + qword_1EE121DC8, v67);
    v36 = v68;
    v37 = v69;
    v38 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v39 = a1;
    v40 = *(a1 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v61 = v38;
      v62 = v37;
      v63 = v36;
      v66 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v40, 0);
      v42 = *(v6 + 16);
      v41 = v66;
      v43 = v39 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v44 = *(v6 + 72);
      do
      {
        v42(v11, v43, v65);
        swift_storeEnumTagMultiPayload();
        v66 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1DAB25BB8((v45 > 1), v46 + 1, 1);
          v41 = v66;
        }

        *(v41 + 16) = v46 + 1;
        sub_1DABD0D90(v11, v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v46, type metadata accessor for NetworkEvent);
        v43 += v44;
        --v40;
      }

      while (v40);
      v37 = v62;
      v36 = v63;
    }

    v47 = v41;
    v48 = v36;
    v49 = v37;
  }

  sub_1DACAB38C(v47, v48, v49);

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1DABCF604()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121DD0));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121DC8));
}

uint64_t sub_1DABCF674(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121DD0));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121DC8));
}

uint64_t sub_1DABCF6F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DABCD140(sub_1DAADF554, v4);
}

void *sub_1DABCF778(uint64_t *a1, double a2)
{
  sub_1DABD0DF8(0);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chart.Entry(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - v24;
  v26 = *(v8 + 56);
  v26(&v51 - v24, 1, 1, v7);
  v27 = *a1;
  v28 = sub_1DACB71E4();
  v61 = v25;
  v29 = sub_1DABD0160(v28, v25, a2);

  v30 = *(v27 + 16);
  if (!v30)
  {
    goto LABEL_18;
  }

  v55 = v6;
  v31 = v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v33 = *(v8 + 72);
  sub_1DAA85F70(v31 + v33 * (v30 - 1), v14, type metadata accessor for Chart.Entry);
  v34 = v29[2];
  v52 = v33;
  v53 = v32;
  v56 = v29;
  if (v34)
  {
    sub_1DAA85F70(v29 + v32 + (v34 - 1) * v33, v23, type metadata accessor for Chart.Entry);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v26(v23, v35, 1, v7);
  v57 = v14;
  sub_1DAA85F70(v14, v20, type metadata accessor for Chart.Entry);
  v26(v20, 0, 1, v7);
  v36 = *(v60 + 48);
  v37 = v55;
  sub_1DABD0E78(v23, v55);
  sub_1DABD0E78(v20, v37 + v36);
  v38 = *(v8 + 48);
  if (v38(v37, 1, v7) == 1)
  {
    sub_1DABD0EF8(v20, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
    v39 = v38(v37 + v36, 1, v7);
    v29 = v56;
    v40 = v57;
    if (v39 == 1)
    {
      sub_1DABD0EF8(v37, qword_1EE120438, type metadata accessor for Chart.Entry);
LABEL_17:
      sub_1DAA86550(v40, type metadata accessor for Chart.Entry);
      goto LABEL_18;
    }
  }

  else
  {
    v41 = v58;
    sub_1DABD0E78(v37, v58);
    v42 = v38(v37 + v36, 1, v7);
    v29 = v56;
    if (v42 != 1)
    {
      v48 = v54;
      sub_1DABD0D90(v37 + v36, v54, type metadata accessor for Chart.Entry);
      v49 = sub_1DAB26FE4(v41, v48);
      sub_1DAA86550(v48, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v20, qword_1EE120438, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
      sub_1DAA86550(v41, type metadata accessor for Chart.Entry);
      sub_1DABD0EF8(v37, qword_1EE120438, type metadata accessor for Chart.Entry);
      v40 = v57;
      v43 = v53;
      if (v49)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    sub_1DABD0EF8(v20, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DABD0EF8(v23, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DAA86550(v41, type metadata accessor for Chart.Entry);
    v40 = v57;
  }

  sub_1DAA86550(v37, sub_1DABD0DF8);
  v43 = v53;
LABEL_11:
  v44 = v59;
  sub_1DAA85F70(v40, v59, type metadata accessor for Chart.Entry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DAADC780(0, v29[2] + 1, 1, v29);
  }

  v45 = v52;
  v47 = v29[2];
  v46 = v29[3];
  if (v47 >= v46 >> 1)
  {
    v29 = sub_1DAADC780((v46 > 1), v47 + 1, 1, v29);
  }

  sub_1DAA86550(v40, type metadata accessor for Chart.Entry);
  v29[2] = v47 + 1;
  sub_1DABD0D90(v44, v29 + v43 + v47 * v45, type metadata accessor for Chart.Entry);
LABEL_18:
  sub_1DABD0EF8(v61, qword_1EE120438, type metadata accessor for Chart.Entry);
  return v29;
}

unint64_t sub_1DABCFE18()
{
  result = qword_1EE11FA38;
  if (!qword_1EE11FA38)
  {
    sub_1DAA61680(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA38);
  }

  return result;
}

void sub_1DABCFE94(uint64_t a1)
{
  if (!qword_1EE11FE68)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCA0, type metadata accessor for Chart);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE68);
    }
  }
}

void sub_1DABCFF24(uint64_t a1)
{
  if (!qword_1EE11FFA0)
  {
    sub_1DABCFFB8(255);
    sub_1DAA8053C(&qword_1EE11FFC0, sub_1DABCFFB8, MEMORY[0x1E69D65C0]);
    v1 = sub_1DACB8514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFA0);
    }
  }
}

void sub_1DABCFFB8(uint64_t a1)
{
  if (!qword_1EE11FFB8)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCC0, sub_1DABD0038);
    sub_1DABD0094();
    v1 = sub_1DACB84B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFB8);
    }
  }
}

void sub_1DABD0038(uint64_t a1)
{
  if (!qword_1EE122100)
  {
    v2 = sub_1DAAE629C();
    v4 = type metadata accessor for YahooBaseResponse(a1, &type metadata for YahooChartResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE122100);
    }
  }
}

unint64_t sub_1DABD0094()
{
  result = qword_1EE11FCB8;
  if (!qword_1EE11FCB8)
  {
    sub_1DAA5FC7C(255, &qword_1EE11FCC0, sub_1DABD0038);
    sub_1DAA8053C(qword_1EE122108, sub_1DABD0038, &unk_1DACDD7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCB8);
  }

  return result;
}

uint64_t sub_1DABD0160(uint64_t a1, uint64_t a2, double a3)
{
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Chart.Entry(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v15 + 72);
    v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v39;
    v42 = (v15 + 48);
    v38 = (v15 + 56);
    v21 = MEMORY[0x1E69E7CC0];
    v43 = v9;
    v40 = v12;
    v41 = v19;
    while (1)
    {
      sub_1DAA85F70(v20, v17, type metadata accessor for Chart.Entry);
      sub_1DABD0E78(a2, v8);
      if ((*v42)(v8, 1, v9) == 1)
      {
        break;
      }

      v22 = v8;
      v23 = v12;
      v24 = v8;
      v25 = a2;
      v26 = v37;
      sub_1DABD0D90(v22, v37, type metadata accessor for Chart.Entry);
      sub_1DACB7C54();
      v28 = v27;
      sub_1DACB7C54();
      v19 = v41;
      v30 = v29;
      v31 = v26;
      a2 = v25;
      v8 = v24;
      v12 = v23;
      v9 = v43;
      sub_1DAA86550(v31, type metadata accessor for Chart.Entry);
      if (v28 - v30 >= a3)
      {
        goto LABEL_8;
      }

      sub_1DAA86550(v17, type metadata accessor for Chart.Entry);
LABEL_4:
      v20 += v19;
      if (!--v18)
      {
        return v21;
      }
    }

    sub_1DABD0EF8(v8, qword_1EE120438, type metadata accessor for Chart.Entry);
LABEL_8:
    sub_1DABD0EF8(a2, qword_1EE120438, type metadata accessor for Chart.Entry);
    sub_1DAA85F70(v17, a2, type metadata accessor for Chart.Entry);
    (*v38)(a2, 0, 1, v9);
    sub_1DABD0D90(v17, v12, type metadata accessor for Chart.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DAA83020(0, *(v21 + 16) + 1, 1);
      v19 = v41;
      v21 = v44;
    }

    v34 = *(v21 + 16);
    v33 = *(v21 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1DAA83020((v33 > 1), v34 + 1, 1);
      v19 = v41;
      v21 = v44;
    }

    *(v21 + 16) = v34 + 1;
    v12 = v40;
    sub_1DABD0D90(v40, v21 + v39 + v34 * v19, type metadata accessor for Chart.Entry);
    v9 = v43;
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DABD0578(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v6 = a2;
    for (i = (result + 56); ; i += 4)
    {
      v8 = *(i - 2);
      v9 = *i;
      v10 = *(i - 8);
      v11[0] = *(i - 3);
      v11[1] = v8;
      v12 = v10;
      v13 = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAC4CA90(v11, v6, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1DABD0674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DABD06C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1DACB9904();
    sub_1DAA4DD10(0, &qword_1EE123B20, &qword_1EE123B00, MEMORY[0x1E69E7740]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DACC1D20;
    v4 = MEMORY[0x1E69E6158];
    v5 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v7 = v6;
    *(v3 + 56) = v4;
    *(v3 + 64) = sub_1DAA443C8();
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    sub_1DAA41DCC();
    v8 = sub_1DACB9AD4();
    sub_1DACB8C64("Sparkline response is missing entries for %{public}@", 52, 2, &dword_1DAA3F000, v8, v2, v3);
  }
}

uint64_t sub_1DABD07D4(uint64_t a1)
{
  v2 = v1;
  v48 = sub_1DACB8754();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NetworkEvent(0);
  v7 = *(v53 - 8);
  v8 = MEMORY[0x1EEE9AC00](v53);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v45 - v11;
  if (sub_1DABCCFF4())
  {
    sub_1DAA4D678(v1 + qword_1EE121DC8, v55);
    v13 = v56;
    v14 = v57;
    v15 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v16 = *(a1 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v45[1] = v15;
      v46 = v14;
      v47 = v13;
      v54 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v16, 0);
      v17 = v54;
      v18 = *(*(v2 + qword_1EE121DB0) + 16);
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v50 = v20;
      v51 = v18;
      v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v49 = *(v19 + 56);
      v52 = v19;
      v22 = (v19 + 16);
      v23 = v48;
      do
      {
        v50(v6, v21, v23);
        sub_1DAA8C2EC(0);
        v25 = &v12[*(v24 + 48)];
        (*v22)(v12, v6, v23);
        *v25 = v51;
        *(v25 + 1) = 0;
        v26 = MEMORY[0x1E69E7CC0];
        *(v25 + 2) = MEMORY[0x1E69E7CC0];
        *(v25 + 3) = v26;
        *(v25 + 4) = 0;
        *(v25 + 5) = 0;
        swift_storeEnumTagMultiPayload();
        v54 = v17;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1DAB25BB8((v27 > 1), v28 + 1, 1);
          v23 = v48;
          v17 = v54;
        }

        *(v17 + 16) = v28 + 1;
        sub_1DABD0D90(v12, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, type metadata accessor for NetworkEvent);
        v21 += v49;
        --v16;
      }

      while (v16);
      v14 = v46;
      v13 = v47;
    }

    v41 = v17;
    v42 = v13;
    v43 = v14;
  }

  else
  {
    sub_1DAA4D678(v1 + qword_1EE121DC8, v55);
    v29 = v56;
    v30 = v57;
    v31 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v32 = *(a1 + 16);
    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v49 = v31;
      v50 = v30;
      v51 = v29;
      v54 = MEMORY[0x1E69E7CC0];
      sub_1DAB25BB8(0, v32, 0);
      v35 = *(v4 + 16);
      v34 = v4 + 16;
      v52 = v35;
      v33 = v54;
      v36 = a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v37 = *(v34 + 56);
      v38 = v48;
      do
      {
        v52(v10, v36, v38);
        swift_storeEnumTagMultiPayload();
        v54 = v33;
        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1DAB25BB8((v39 > 1), v40 + 1, 1);
          v38 = v48;
          v33 = v54;
        }

        *(v33 + 16) = v40 + 1;
        sub_1DABD0D90(v10, v33 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v40, type metadata accessor for NetworkEvent);
        v36 += v37;
        --v32;
      }

      while (v32);
      v30 = v50;
      v29 = v51;
    }

    v41 = v33;
    v42 = v29;
    v43 = v30;
  }

  sub_1DACAB38C(v41, v42, v43);

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

void sub_1DABD0C68(uint64_t a1)
{
  if (!qword_1EE11FBE0)
  {
    sub_1DAA61680(255, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    sub_1DABD0674(255, qword_1EE120360, type metadata accessor for Chart);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FBE0);
    }
  }
}

uint64_t sub_1DABD0D10(uint64_t a1, uint64_t a2)
{
  sub_1DABD0674(0, qword_1EE120360, type metadata accessor for Chart);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABD0D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DABD0DF8(uint64_t a1)
{
  if (!qword_1EE120430)
  {
    sub_1DABD0674(255, qword_1EE120438, type metadata accessor for Chart.Entry);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE120430);
    }
  }
}

uint64_t sub_1DABD0E78(uint64_t a1, uint64_t a2)
{
  sub_1DABD0674(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABD0EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DABD0674(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DABD0F54()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD0F84()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD0FB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1DABD0FC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABD1064()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DABD1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DABD116C(uint64_t a1)
{
  v2 = sub_1DABD1380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD11A8(uint64_t a1)
{
  v2 = sub_1DABD1380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD11E4(void *a1)
{
  sub_1DABD2C08(0, &qword_1EE123B90, sub_1DABD1380, &type metadata for ExternalAnalyticsQueryParameterConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD1380();
  sub_1DACBA304();
  v13 = 0;
  v9 = v11[3];
  sub_1DACBA094();
  if (!v9)
  {
    v12 = 1;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DABD1380()
{
  result = qword_1EE124318[0];
  if (!qword_1EE124318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124318);
  }

  return result;
}

uint64_t sub_1DABD13D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1DABD2C08(0, &qword_1EE123C48, sub_1DABD1380, &type metadata for ExternalAnalyticsQueryParameterConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD1380();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  v20 = 0;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  v17 = v10;
  v19 = 1;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *v9 = v17;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v15;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD1638(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABD16DC()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD170C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DABD1764()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD1794(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DABD17EC()
{
  v1 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABD181C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1DABD1894@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v11 = a11;
  v12 = MEMORY[0x1E69E7CC0];
  *a9 = result;
  *(a9 + 8) = a2;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = v12;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (a8)
  {
    v14 = a8;
  }

  else
  {
    v14 = v12;
  }

  if (!a11)
  {
    v11 = v12;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = v14;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = v11;
  return result;
}

uint64_t sub_1DABD18DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABD2C08(0, &qword_1EE123C58, sub_1DABD2510, &type metadata for ExternalAnalyticsConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - v8;
  v10 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DABD2510();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v7;
    v78 = MEMORY[0x1E69E7CC0];
    v77 = 0;
    sub_1DACB9F84();
    v12 = v9;
    v13 = v76;
    v72 = v75;
    v14 = MEMORY[0x1E69E7CC0];
    if (!v76)
    {
      swift_beginAccess();
      v14 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[16 * v16];
      *(v17 + 4) = 0xD000000000000010;
      *(v17 + 5) = 0x80000001DACEC950;
      v78 = v14;
      swift_endAccess();
    }

    v77 = 1;
    sub_1DACB9F84();
    v70 = v75;
    v71 = v76;
    if (!v76)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = 0x636974796C616E61;
      *(v20 + 5) = 0xEB00000000644973;
      v78 = v14;
      swift_endAccess();
    }

    v77 = 2;
    sub_1DACB9F84();
    v66 = v75;
    v67 = 0;
    v68 = v76;
    v69 = v6;
    v65 = a2;
    if (!v76)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = 0xD000000000000017;
      *(v23 + 5) = 0x80000001DACEC970;
      v78 = v14;
      swift_endAccess();
    }

    v77 = 3;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    v25 = v24;
    v26 = sub_1DAA963BC(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v27 = v69;
    v28 = v67;
    sub_1DACB9F84();
    if (v28)
    {
      (*(v11 + 8))(v12, v27);

      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    v64 = v26;
    v67 = v25;
    v29 = v75;
    if (!v75)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v31 = *(v14 + 2);
      v30 = *(v14 + 3);
      if (v31 >= v30 >> 1)
      {
        v14 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v14);
      }

      *(v14 + 2) = v31 + 1;
      v32 = &v14[16 * v31];
      strcpy(v32 + 32, "proxyHostNames");
      v32[47] = -18;
      v78 = v14;
      swift_endAccess();
      v29 = 0;
    }

    v77 = 4;
    sub_1DAA488A4(0, &qword_1EE123ED8, &type metadata for ExternalAnalyticsQueryParameterConfig);
    sub_1DABD2C70(&qword_1EE123EC8, sub_1DABD29A8, MEMORY[0x1E69E6330]);
    sub_1DACB9F84();
    v63 = v75;
    if (!v75)
    {
      swift_beginAccess();
      v33 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v14 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v14);
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[16 * v35];
      *(v36 + 4) = 0xD000000000000014;
      *(v36 + 5) = 0x80000001DACEC990;
      v78 = v14;
      swift_endAccess();
      v29 = v33;
    }

    LOBYTE(v75) = 5;
    sub_1DACB9F84();
    v37 = v77;
    if (v77 == 2)
    {
      v62 = 2;
      swift_beginAccess();
      v38 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v40 = *(v14 + 2);
      v39 = *(v14 + 3);
      if (v40 >= v39 >> 1)
      {
        v14 = sub_1DAA9A3B0((v39 > 1), v40 + 1, 1, v14);
      }

      *(v14 + 2) = v40 + 1;
      v41 = &v14[16 * v40];
      *(v41 + 4) = 0xD000000000000010;
      *(v41 + 5) = 0x80000001DACEC9B0;
      v78 = v14;
      swift_endAccess();
      v29 = v38;
      v37 = v62;
    }

    LOBYTE(v75) = 6;
    sub_1DACB9F84();
    v43 = v74;
    if (v74)
    {
      v44 = *(v14 + 2);
      v45 = MEMORY[0x1E69E7CC0];
      if (!v29)
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      if (v63)
      {
        v45 = v63;
      }

      v64 = v45;
      LODWORD(v63) = v37 & 1;
      if (!v44)
      {
        sub_1DAA41DCC();
        v54 = sub_1DACB9AD4();
        v56 = sub_1DACB9914();
        sub_1DACB8C64("loaded external anlaytics configuration with no need for fallback values", 72, 2, &dword_1DAA3F000, v54, v56, MEMORY[0x1E69E7CC0]);
        a2 = v65;
        goto LABEL_59;
      }

      v61 = v29;
      v46 = v67;
      a2 = v65;
    }

    else
    {
      v62 = v37;
      v47 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v49 = *(v14 + 2);
      v48 = *(v14 + 3);
      if (v49 >= v48 >> 1)
      {
        v14 = sub_1DAA9A3B0((v48 > 1), v49 + 1, 1, v14);
      }

      *(v14 + 2) = v49 + 1;
      v50 = &v14[16 * v49];
      *(v50 + 4) = 0x69666F72506E7076;
      *(v50 + 5) = 0xEF73656D614E656CLL;
      if (v47)
      {
        v51 = v47;
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
      }

      v61 = v51;
      v52 = v63;
      if (!v63)
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      v64 = v52;
      LODWORD(v63) = v62 & 1;
      v43 = MEMORY[0x1E69E7CC0];
      v46 = v67;
    }

    sub_1DAA41D64(0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1DACC1D20;
    *(v53 + 56) = v46;
    *(v53 + 64) = sub_1DAAF691C();
    *(v53 + 32) = v14;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v54 = sub_1DACB9AD4();
    v55 = sub_1DACB9914();
    sub_1DACB8C64("loaded external anlaytics configuration with fallback values for keys: %@", 73, 2, &dword_1DAA3F000, v54, v55, v53);

    v29 = v61;
LABEL_59:

    (*(v11 + 8))(v12, v69);

    *a2 = v72;
    *(a2 + 8) = v13;
    v57 = v71;
    *(a2 + 16) = v70;
    *(a2 + 24) = v57;
    v58 = v68;
    *(a2 + 32) = v66;
    *(a2 + 40) = v58;
    v59 = v64;
    *(a2 + 48) = v29;
    *(a2 + 56) = v59;
    *(a2 + 64) = v63;
    *(a2 + 65) = v74;
    *(a2 + 68) = *(&v74 + 3);
    *(a2 + 72) = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

unint64_t sub_1DABD240C()
{
  v1 = *v0;
  v2 = 0x636974796C616E61;
  v3 = 0x69666F72506E7076;
  if (v1 == 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0x736F4879786F7270;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1DABD2510()
{
  result = qword_1EE124420;
  if (!qword_1EE124420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124420);
  }

  return result;
}

uint64_t sub_1DABD2564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD30DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD2598(uint64_t a1)
{
  v2 = sub_1DABD2510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD25D4(uint64_t a1)
{
  v2 = sub_1DABD2510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD2610(void *a1)
{
  sub_1DABD2C08(0, &qword_1EE123BA0, sub_1DABD2510, &type metadata for ExternalAnalyticsConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v8;
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v10 = *(v1 + 48);
  v22 = *(v1 + 56);
  v23 = v10;
  v21 = *(v1 + 64);
  v20 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD2510();
  v11 = v4;
  sub_1DACBA304();
  LOBYTE(v30) = 0;
  v12 = v28;
  sub_1DACBA024();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = v22;
  v13 = v23;
  LOBYTE(v30) = 1;
  sub_1DACBA024();
  LOBYTE(v30) = 2;
  sub_1DACBA024();
  v16 = v5;
  v30 = v13;
  v29 = 3;
  sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
  v18 = v17;
  v19 = sub_1DAA963BC(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  v27 = v19;
  v28 = v18;
  v30 = v14;
  v29 = 4;
  sub_1DAA488A4(0, &qword_1EE123ED8, &type metadata for ExternalAnalyticsQueryParameterConfig);
  sub_1DABD2C70(&qword_1EE123ED0, sub_1DABD2CEC, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  LOBYTE(v30) = 5;
  sub_1DACBA0A4();
  v30 = v20;
  v29 = 6;
  sub_1DACBA0E4();
  return (*(v16 + 8))(v7, v11);
}

unint64_t sub_1DABD29A8()
{
  result = qword_1EE1242F8;
  if (!qword_1EE1242F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242F8);
  }

  return result;
}

uint64_t sub_1DABD29FC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);
  v11 = a1[9];
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v41 = *(a2 + 56);
      v43 = a1[6];
      v40 = *(a2 + 64);
      v38 = *(a2 + 72);
      v39 = a1[7];
      v37 = *(a1 + 64);
      v21 = a1[9];
      v22 = a1[5];
      v23 = a1[4];
      v24 = *(a2 + 40);
      v25 = *(a2 + 32);
      v26 = a1[2];
      v27 = *(a2 + 16);
      v28 = sub_1DACBA174();
      v13 = v27;
      v4 = v26;
      v14 = v25;
      v16 = v24;
      v5 = v23;
      v7 = v22;
      v11 = v21;
      v10 = v37;
      v20 = v38;
      v9 = v39;
      v19 = v40;
      v18 = v41;
      v8 = v43;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v42 = v11;
      v44 = v16;
      v29 = v7;
      v30 = v5;
      v31 = v14;
      v32 = sub_1DACBA174();
      v14 = v31;
      v11 = v42;
      v16 = v44;
      v5 = v30;
      v7 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  if (v5 != v14 || v7 != v16)
  {
    v33 = v11;
    v34 = sub_1DACBA174();
    v11 = v33;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v35 = v11;
  if (sub_1DAA51414(v8, v17) & 1) == 0 || (sub_1DAC37080(v9, v18) & 1) == 0 || ((v10 ^ v19))
  {
    return 0;
  }

  return sub_1DAA51414(v35, v20);
}

void sub_1DABD2C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DABD2C70(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123ED8, &type metadata for ExternalAnalyticsQueryParameterConfig);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD2CEC()
{
  result = qword_1EE124300;
  if (!qword_1EE124300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124300);
  }

  return result;
}

uint64_t sub_1DABD2D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABD2D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QuoteSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DABD2ED0()
{
  result = qword_1ECBE8990;
  if (!qword_1ECBE8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8990);
  }

  return result;
}

unint64_t sub_1DABD2F28()
{
  result = qword_1ECBE8998;
  if (!qword_1ECBE8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8998);
  }

  return result;
}

unint64_t sub_1DABD2F80()
{
  result = qword_1EE124410;
  if (!qword_1EE124410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124410);
  }

  return result;
}

unint64_t sub_1DABD2FD8()
{
  result = qword_1EE124418;
  if (!qword_1EE124418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124418);
  }

  return result;
}

unint64_t sub_1DABD3030()
{
  result = qword_1EE124308;
  if (!qword_1EE124308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124308);
  }

  return result;
}

unint64_t sub_1DABD3088()
{
  result = qword_1EE124310;
  if (!qword_1EE124310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124310);
  }

  return result;
}

uint64_t sub_1DABD30DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DACEC950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xEB00000000644973 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC970 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F4879786F7270 && a2 == 0xEE0073656D614E74 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEC990 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACEC9B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69666F72506E7076 && a2 == 0xEF73656D614E656CLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_1DABD33B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1DABD34C8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1DACB92F4();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v13;
      v8 = &v2[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
      *v8 = v12;
      *(v8 + 1) = v7;
      v11.receiver = v2;
      v11.super_class = ObjectType;
      v9 = objc_msgSendSuper2(&v11, sel_init);

      return v9;
    }
  }

  else
  {

    sub_1DAADFA60(v16);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DABD3684(uint64_t a1, uint64_t a2)
{
  sub_1DABD3860();
  sub_1DACB71E4();
  return sub_1DACB9A44();
}

unint64_t sub_1DABD3860()
{
  result = qword_1EE11F7C0;
  if (!qword_1EE11F7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F7C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchlistIntentError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL sub_1DABD39D4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1DABD39F0(uint64_t a1, unint64_t a2)
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
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = sub_1DACB9C84();
        v12 = v11;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1DACB9D24();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
            v12 = 3;
          }

          else
          {
            v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
            v12 = 4;
          }

          goto LABEL_15;
        }

        if (v14 == 1)
        {
LABEL_14:
          v12 = 1;
        }

        else
        {
          v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
          v12 = 2;
        }
      }

LABEL_15:
      result = SCIsCJKCharacter(v10);
      if (!result)
      {
        v5 += v12;
        if (v5 < v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t sub_1DABD3B98(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1DACB71E4();
  return a1;
}

id sub_1DABD3BF0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v54 = a1;
  v55 = a2;
  v8 = sub_1DACB8204();
  v50 = v8;
  v53 = *(v8 - 8);
  v9 = v53;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v11;
  v46 = sub_1DACB7CC4();
  v56 = *(v46 - 8);
  v12 = v56;
  MEMORY[0x1EEE9AC00](v46);
  v49 = *a3;
  v47 = *(v12 + 16);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47();
  sub_1DAA4D678(v5 + 16, v67);
  sub_1DAA4D678(v5 + 56, v66);
  v51 = *(v9 + 16);
  v51(v11, a5, v8);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v66, v66[3]);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v16;
  v23 = *v20;
  v24 = type metadata accessor for YahooChartModelEngine();
  v64 = v24;
  v65 = &off_1F5690098;
  v63[0] = v22;
  v25 = type metadata accessor for YahooBaseOperationFactory();
  v61 = v25;
  v62 = &off_1F56825C8;
  v60[0] = v23;
  v26 = type metadata accessor for YahooChartOperation(0);
  v27 = objc_allocWithZone(v26);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v30;
  v37 = *v34;
  v59[3] = v24;
  v59[4] = &off_1F5690098;
  v59[0] = v36;
  v58[3] = v25;
  v58[4] = &off_1F56825C8;
  v58[0] = v37;
  v38 = &v27[qword_1EE1263E0];
  v39 = v55;
  *v38 = v54;
  v38[1] = v39;
  v27[qword_1EE1263E8] = v49;
  v40 = v48;
  v41 = v46;
  (v47)(&v27[qword_1ECBE6B58], v48, v46);
  sub_1DAA4D678(v59, &v27[qword_1EE1263F0]);
  sub_1DAA4D678(v58, &v27[qword_1EE1263F8]);
  v42 = v52;
  v43 = v50;
  v51(&v27[qword_1EE126400], v52, v50);
  v57.receiver = v27;
  v57.super_class = v26;
  sub_1DACB71E4();
  v44 = objc_msgSendSuper2(&v57, sel_init);
  (*(v53 + 8))(v42, v43);
  (*(v56 + 8))(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v44;
}

uint64_t sub_1DABD41AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t WidgetQuote.currencyCode.getter()
{
  v1 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t WidgetQuote.init(price:priceChange:marketCapitalization:currencyCode:exchangeStatus:exchangeNextOpen:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v12 = *a10;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  v13 = a9 + *(type metadata accessor for WidgetQuote(0) + 36);

  return sub_1DABD4334(a11, v13);
}

uint64_t sub_1DABD4334(uint64_t a1, uint64_t a2)
{
  sub_1DAA492B4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WidgetQuote.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  v5 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v5;
  v6 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v6;
  v7 = *(a1 + 120);
  *(a2 + 48) = *(a1 + 112);
  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 128);
  v8 = *(type metadata accessor for Quote(0) + 60);
  v9 = type metadata accessor for WidgetQuote(0);
  sub_1DAA89C00(a1 + v8, a2 + *(v9 + 36), sub_1DAA492B4);
  sub_1DACB71E4();
  return sub_1DAA88DD8(a1, type metadata accessor for Quote);
}

uint64_t sub_1DABD4464()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0x79636E6572727563;
  v4 = 0x65676E6168637865;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168436563697270;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABD453C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD4E5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD4564(uint64_t a1)
{
  v2 = sub_1DABD4C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD45A0(uint64_t a1)
{
  v2 = sub_1DABD4C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetQuote.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DABD4CB8(0, &qword_1ECBE89A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD4C64();
  sub_1DACBA304();
  v11[15] = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v11[14] = 1;
    sub_1DACBA044();
    v11[13] = 2;
    sub_1DACBA044();
    v11[12] = 3;
    sub_1DACBA024();
    v11[11] = *(v3 + 64);
    v11[10] = 4;
    sub_1DAA7F2E0();
    sub_1DACBA0E4();
    type metadata accessor for WidgetQuote(0);
    v11[9] = 5;
    sub_1DACB7CC4();
    sub_1DAA5D520(&qword_1EE125288, MEMORY[0x1E6969538]);
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t WidgetQuote.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABD4CB8(0, &qword_1ECBE89B8, MEMORY[0x1E69E6F48]);
  v24 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for WidgetQuote(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DABD4C64();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v22 = v11;
  v15 = v6;
  v32 = 0;
  v16 = v24;
  *v13 = sub_1DACB9F54();
  v13[8] = v17 & 1;
  v31 = 1;
  *(v13 + 2) = sub_1DACB9F54();
  v13[24] = v18 & 1;
  v30 = 2;
  *(v13 + 4) = sub_1DACB9F54();
  v13[40] = v19 & 1;
  v29 = 3;
  *(v13 + 6) = sub_1DACB9F34();
  *(v13 + 7) = v20;
  v27 = 4;
  sub_1DABC5A78();
  sub_1DACB9FE4();
  v13[64] = v28;
  sub_1DACB7CC4();
  v26 = 5;
  sub_1DAA5D520(&qword_1EE123A38, MEMORY[0x1E6969558]);
  sub_1DACB9F84();
  (*(v8 + 8))(v10, v16);
  sub_1DABD4334(v15, &v13[*(v22 + 36)]);
  sub_1DAA89C00(v13, v23, type metadata accessor for WidgetQuote);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1DAA88DD8(v13, type metadata accessor for WidgetQuote);
}

unint64_t sub_1DABD4C64()
{
  result = qword_1ECBE89B0;
  if (!qword_1ECBE89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89B0);
  }

  return result;
}

void sub_1DABD4CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABD4C64();
    v7 = a3(a1, &type metadata for WidgetQuote.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABD4D58()
{
  result = qword_1ECBE89C0;
  if (!qword_1ECBE89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89C0);
  }

  return result;
}

unint64_t sub_1DABD4DB0()
{
  result = qword_1ECBE89C8;
  if (!qword_1ECBE89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89C8);
  }

  return result;
}

unint64_t sub_1DABD4E08()
{
  result = qword_1ECBE89D0;
  if (!qword_1ECBE89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89D0);
  }

  return result;
}

uint64_t sub_1DABD4E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DABD5074(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABD509C, 0, 0);
}

uint64_t sub_1DABD509C()
{
  *(v0 + 56) = (*(*(v0 + 40) + 8))(*(v0 + 24), *(v0 + 80), *(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1DABD515C;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABD515C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DAB873F0;
  }

  else
  {

    v2 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1DABD5290()
{
  v1 = *v0;
  v2 = 0x73756C507377656ELL;
  v3 = 0x6574726143616C61;
  if (v1 != 4)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0x6F69647561;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABD5348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD83D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD5370(uint64_t a1)
{
  v2 = sub_1DABD77F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD53AC(uint64_t a1)
{
  v2 = sub_1DABD77F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexiblePaywall.encode(to:)(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123C18, sub_1DABD77F0, &type metadata for FlexiblePaywall.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v44 = v1[5];
  v45 = v11;
  v12 = v1[6];
  v42 = v1[7];
  v43 = v12;
  v13 = v1[8];
  v40 = v1[9];
  v41 = v13;
  v14 = v1[10];
  v38 = v1[11];
  v39 = v14;
  v15 = v1[13];
  v34 = v1[12];
  v35 = v15;
  v16 = v1[15];
  v36 = v1[14];
  v37 = v16;
  v17 = v1[17];
  v30 = v1[16];
  v31 = v17;
  v18 = v1[19];
  v32 = v1[18];
  v33 = v18;
  v29 = v1[20];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7844(v7, v8, v9, v10);
  sub_1DABD77F0();
  sub_1DACBA304();
  v49 = v7;
  v50 = v8;
  v19 = v46;
  v51 = v9;
  v52 = v10;
  v20 = v6;
  v53 = 0;
  sub_1DABD78AC();
  v21 = v48;
  sub_1DACBA074();
  if (v21)
  {
    sub_1DABD7900(v49);
    return (*(v47 + 8))(v6, v19);
  }

  else
  {
    v23 = v38;
    v24 = v39;
    v26 = v40;
    v25 = v41;
    v27 = v47;
    sub_1DABD7900(v49);
    v49 = v45;
    v50 = v44;
    v51 = v43;
    v52 = v42;
    v53 = 1;
    sub_1DABD7844(v45, v44, v43, v42);
    sub_1DACBA074();
    sub_1DABD7900(v49);
    v49 = v25;
    v50 = v26;
    v51 = v24;
    v52 = v23;
    v53 = 2;
    sub_1DABD7844(v25, v26, v24, v23);
    sub_1DACBA074();
    sub_1DABD7900(v49);
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v53 = 3;
    sub_1DABD7844(v34, v35, v36, v37);
    sub_1DACBA074();
    sub_1DABD7900(v49);
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = 4;
    sub_1DABD7844(v30, v31, v32, v33);
    sub_1DACBA074();
    sub_1DABD7900(v49);
    v49 = v29;
    v53 = 5;
    sub_1DABD7964();
    sub_1DABD7A18(&qword_1EE123FF8, sub_1DAA96B08, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1DACBA074();
    return (*(v27 + 8))(v20, v19);
  }
}

uint64_t FlexiblePaywall.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1DABD7DD4(0, &qword_1EE123CD8, sub_1DABD77F0, &type metadata for FlexiblePaywall.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABD77F0();
  v45 = v8;
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v43 = v6;
  v10 = v44;
  LOBYTE(v47) = 0;
  sub_1DABD79C4();
  v11 = v5;
  sub_1DACB9F84();
  v12 = v58;
  *(&v42 + 1) = *(&v59 + 1);
  v13 = v59;
  LOBYTE(v47) = 1;
  sub_1DACB9F84();
  v39 = v12;
  v40 = v58;
  v41 = v59;
  *&v42 = v13;
  v38 = *(&v59 + 1);
  LOBYTE(v47) = 2;
  sub_1DACB9F84();
  v33 = v58;
  v34 = v59;
  LOBYTE(v47) = 3;
  sub_1DACB9F84();
  v31 = v58;
  v32 = v59;
  LOBYTE(v47) = 4;
  sub_1DACB9F84();
  v14 = v58;
  v36 = v59;
  v37 = *(&v58 + 1);
  v30 = *(&v59 + 1);
  sub_1DABD7964();
  v72[0] = 5;
  sub_1DABD7A18(&qword_1EE123FF0, sub_1DAB3D9FC, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1DACB9F84();
  v35 = v14;
  (*(v43 + 8))(v45, v11);
  v15 = v73;
  v17 = v38;
  v16 = v39;
  *&v47 = v39;
  *(&v47 + 1) = *(&v12 + 1);
  v18 = *(&v42 + 1);
  v48 = v42;
  v49 = v40;
  *&v50 = v41;
  *(&v50 + 1) = v38;
  v51 = v33;
  v52 = v34;
  v53 = v31;
  v54 = v32;
  *&v55 = v14;
  *(&v55 + 1) = v37;
  v19 = v36;
  *&v56 = v36;
  *(&v56 + 1) = v30;
  v57 = v73;
  v20 = v34;
  *(v10 + 64) = v33;
  *(v10 + 80) = v20;
  v21 = v53;
  v22 = v54;
  v23 = v55;
  v24 = v56;
  *(v10 + 160) = v15;
  *(v10 + 128) = v23;
  *(v10 + 144) = v24;
  *(v10 + 96) = v21;
  *(v10 + 112) = v22;
  v25 = v47;
  v26 = v48;
  v27 = v50;
  *(v10 + 32) = v49;
  *(v10 + 48) = v27;
  *v10 = v25;
  *(v10 + 16) = v26;
  sub_1DABD7A90(&v47, &v58);
  __swift_destroy_boxed_opaque_existential_1(v46);
  *&v58 = v16;
  *(&v58 + 1) = *(&v12 + 1);
  *&v59 = v42;
  *(&v59 + 1) = v18;
  v60 = v40;
  v61 = v41;
  v62 = v17;
  v63 = v33;
  v64 = v34;
  v65 = v31;
  v66 = v32;
  v67 = v35;
  v68 = v37;
  v69 = v19;
  v70 = v30;
  v71 = v15;
  return sub_1DAB3DCE4(&v58);
}

uint64_t sub_1DABD5E24()
{
  v1 = 0x53656C6369747261;
  if (*v0)
  {
    v1 = 0x48656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DABD5EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD85D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD5EE0(uint64_t a1)
{
  v2 = sub_1DABD7AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD5F1C(uint64_t a1)
{
  v2 = sub_1DABD7AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD5F58(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123B88, sub_1DABD7AC8, &type metadata for FlexiblePaywallResourceByLocationConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7AC8();
  sub_1DACB71E4();
  sub_1DACBA304();
  v20 = v9;
  v19 = 0;
  sub_1DAA61590(0, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
  sub_1DABD7B70(&qword_1EE123F30, sub_1DABD7B1C, MEMORY[0x1E69E6300]);
  v11 = v18;
  sub_1DACBA074();
  if (v11)
  {
  }

  else
  {
    v12 = v16;

    v20 = v17;
    v19 = 1;
    sub_1DACBA074();
    v20 = v12;
    v19 = 2;
    sub_1DACBA074();
    v20 = v15;
    v19 = 3;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABD6214@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DABD7DD4(0, &qword_1EE123C40, sub_1DABD7AC8, &type metadata for FlexiblePaywallResourceByLocationConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7AC8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v19 = a2;
  sub_1DAA61590(0, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
  v21 = 0;
  sub_1DABD7B70(&qword_1EE123F28, sub_1DABD7C00, MEMORY[0x1E69E6330]);
  v10 = v20;
  sub_1DACB9F84();
  v18 = v22;
  v21 = 1;
  sub_1DACB9F84();
  v17 = v22;
  v21 = 2;
  sub_1DACB9F84();
  v16 = v22;
  v21 = 3;
  sub_1DACB9F84();
  (*(v9 + 8))(v8, v10);
  v12 = v22;
  v13 = v19;
  v15 = v16;
  v14 = v17;
  *v19 = v18;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v12;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD6614()
{
  v1 = 0x656372756F736572;
  v2 = 0x567377654E78616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7250646C756F6873;
  }

  if (*v0)
  {
    v1 = 0x567377654E6E696DLL;
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

uint64_t sub_1DABD66B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD874C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD66E0(uint64_t a1)
{
  v2 = sub_1DABD7D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD671C(uint64_t a1)
{
  v2 = sub_1DABD7D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD6758(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123BE0, sub_1DABD7D80, &type metadata for FlexiblePaywallResource.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 16);
  v12[3] = *(v1 + 24);
  v12[4] = v8;
  v9 = *(v1 + 32);
  v12[1] = *(v1 + 40);
  v12[2] = v9;
  v13 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7D80();
  sub_1DACBA304();
  v17 = 0;
  v10 = v12[5];
  sub_1DACBA094();
  if (!v10)
  {
    v16 = 1;
    sub_1DACBA024();
    v15 = 2;
    sub_1DACBA024();
    v14 = 3;
    sub_1DACBA034();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABD6950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1DABD7DD4(0, &qword_1EE123C98, sub_1DABD7D80, &type metadata for FlexiblePaywallResource.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7D80();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v27;
  v31 = 0;
  v11 = sub_1DACB9FA4();
  v26 = v12;
  v30 = 1;
  v13 = sub_1DACB9F34();
  v25 = v14;
  v23 = v13;
  v29 = 2;
  v22 = sub_1DACB9F34();
  v24 = v15;
  v28 = 3;
  v17 = sub_1DACB9F44();
  (*(v9 + 8))(v8, v5);
  v19 = v25;
  v18 = v26;
  *v10 = v11;
  *(v10 + 8) = v18;
  v20 = v22;
  *(v10 + 16) = v23;
  *(v10 + 24) = v19;
  v21 = v24;
  *(v10 + 32) = v20;
  *(v10 + 40) = v21;
  *(v10 + 48) = v17;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD6C94(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  if (v4)
  {
    if (!v8 || (sub_1DAC37F9C(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10 || (sub_1DAC37F9C(v6, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (sub_1DAC37F9C(v5, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v7)
  {
    if (v11 && (sub_1DAC37F9C(v7, v11) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10StocksCore15FlexiblePaywallV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v78 = a1[4];
  v79 = a1[5];
  v80 = a1[6];
  v81 = a1[7];
  v74 = a1[8];
  v75 = a1[9];
  v7 = a1[10];
  v6 = a1[11];
  v9 = a1[12];
  v8 = a1[13];
  v11 = a1[14];
  v10 = a1[15];
  v13 = a1[16];
  v12 = a1[17];
  v68 = a1[18];
  v69 = a1[19];
  v14 = a1[20];
  v16 = *a2;
  v15 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v19 = a2[5];
  v76 = a2[4];
  v20 = a2[6];
  v77 = a2[7];
  v70 = a2[8];
  v71 = a2[9];
  v72 = a2[10];
  v21 = a2[12];
  v73 = a2[11];
  v23 = a2[13];
  v22 = a2[14];
  v24 = a2[15];
  v25 = a2[16];
  v27 = a2[17];
  v26 = a2[18];
  v29 = a2[19];
  v28 = a2[20];
  if (v2 == 1)
  {
    v66 = v7;
    v67 = v6;
    v58 = a2[12];
    v59 = a2[13];
    v60 = a2[14];
    v61 = a2[15];
    v62 = v9;
    v63 = v8;
    v64 = v11;
    v65 = v10;
    v52 = a2[16];
    v53 = a2[17];
    v54 = a2[18];
    v55 = a2[19];
    v50 = a2[20];
    v51 = v14;
    v56 = v13;
    v57 = v12;
    sub_1DABD7844(1, v3, v5, v4);
    if (v16 == 1)
    {
      sub_1DABD7844(1, v15, v18, v17);
      sub_1DABD7900(1);
      goto LABEL_10;
    }

    sub_1DABD7844(v16, v15, v18, v17);
LABEL_7:
    v89 = v2;
    v90 = v3;
    v91 = v5;
    v92 = v4;
    v93 = v16;
    v94 = v15;
    v95 = v18;
LABEL_8:
    v96 = v17;
LABEL_26:
    sub_1DABD88D0(&v89);
    return 0;
  }

  v89 = v2;
  v90 = v3;
  v91 = v5;
  v92 = v4;
  if (v16 == 1)
  {
    sub_1DABD7844(v2, v3, v5, v4);
    sub_1DABD7844(1, v15, v18, v17);
    sub_1DABD7844(v2, v3, v5, v4);

    goto LABEL_7;
  }

  v66 = v7;
  v67 = v6;
  v58 = v21;
  v59 = v23;
  v60 = v22;
  v61 = v24;
  v62 = v9;
  v63 = v8;
  v64 = v11;
  v65 = v10;
  v52 = v25;
  v53 = v27;
  v54 = v26;
  v55 = v29;
  v50 = v28;
  v51 = v14;
  v56 = v13;
  v57 = v12;
  v85 = v16;
  v86 = v15;
  v87 = v18;
  v88 = v17;
  v48 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v2, v3, v5, v4);
  sub_1DABD7844(v16, v15, v18, v17);
  sub_1DABD7844(v2, v3, v5, v4);

  sub_1DABD7900(v2);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v78 == 1)
  {
    v31 = v79;
    v30 = v80;
    v32 = v81;
    sub_1DABD7844(1, v79, v80, v81);
    v33 = v76;
    if (v76 == 1)
    {
      sub_1DABD7844(1, v19, v20, v77);
      sub_1DABD7900(1);
      goto LABEL_18;
    }

    v34 = v77;
    sub_1DABD7844(v76, v19, v20, v77);
LABEL_16:
    v89 = v78;
    v90 = v31;
    v91 = v30;
    v92 = v32;
    v93 = v33;
    v94 = v19;
    v95 = v20;
    v96 = v34;
    goto LABEL_26;
  }

  v31 = v79;
  v30 = v80;
  v89 = v78;
  v90 = v79;
  v32 = v81;
  v91 = v80;
  v92 = v81;
  v33 = v76;
  if (v76 == 1)
  {
    sub_1DABD7844(v78, v79, v80, v81);
    v34 = v77;
    sub_1DABD7844(1, v19, v20, v77);
    sub_1DABD7844(v78, v79, v80, v81);

    goto LABEL_16;
  }

  v85 = v76;
  v86 = v19;
  v87 = v20;
  v88 = v77;
  v49 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v78, v79, v80, v81);
  sub_1DABD7844(v76, v19, v20, v77);
  sub_1DABD7844(v78, v79, v80, v81);

  sub_1DABD7900(v78);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (v74 == 1)
  {
    v35 = v75;
    v36 = v66;
    v37 = v67;
    sub_1DABD7844(1, v75, v66, v67);
    v38 = v70;
    if (v70 == 1)
    {
      sub_1DABD7844(1, v71, v72, v73);
      sub_1DABD7900(1);
      goto LABEL_30;
    }

    v40 = v71;
    v39 = v72;
    v41 = v73;
    sub_1DABD7844(v70, v71, v72, v73);
LABEL_24:
    v89 = v74;
    goto LABEL_25;
  }

  v35 = v75;
  v89 = v74;
  v90 = v75;
  v37 = v67;
  v91 = v66;
  v92 = v67;
  v38 = v70;
  if (v70 == 1)
  {
    v36 = v66;
    sub_1DABD7844(v74, v75, v66, v67);
    v40 = v71;
    v39 = v72;
    v41 = v73;
    sub_1DABD7844(1, v71, v72, v73);
    sub_1DABD7844(v74, v75, v66, v67);

    goto LABEL_24;
  }

  v85 = v70;
  v86 = v71;
  v87 = v72;
  v88 = v73;
  v82 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v74, v75, v66, v67);
  sub_1DABD7844(v70, v71, v72, v73);
  sub_1DABD7844(v74, v75, v66, v67);

  sub_1DABD7900(v74);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if (v62 == 1)
  {
    v35 = v63;
    v36 = v64;
    v37 = v65;
    sub_1DABD7844(1, v63, v64, v65);
    if (v58 == 1)
    {
      sub_1DABD7844(1, v59, v60, v61);
      sub_1DABD7900(1);
      goto LABEL_37;
    }

    v40 = v59;
    v39 = v60;
    v41 = v61;
    v38 = v58;
    sub_1DABD7844(v58, v59, v60, v61);
    v89 = 1;
LABEL_25:
    v90 = v35;
    v91 = v36;
    v92 = v37;
    v93 = v38;
    v94 = v40;
    v95 = v39;
    v96 = v41;
    goto LABEL_26;
  }

  v35 = v63;
  v36 = v64;
  v89 = v62;
  v90 = v63;
  v37 = v65;
  v91 = v64;
  v92 = v65;
  if (v58 == 1)
  {
    v38 = 1;
    sub_1DABD7844(v62, v63, v64, v65);
    v40 = v59;
    v39 = v60;
    v41 = v61;
    sub_1DABD7844(1, v59, v60, v61);
    sub_1DABD7844(v62, v63, v64, v65);

    v89 = v62;
    goto LABEL_25;
  }

  v85 = v58;
  v86 = v59;
  v87 = v60;
  v88 = v61;
  v83 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v62, v63, v64, v65);
  sub_1DABD7844(v58, v59, v60, v61);
  sub_1DABD7844(v62, v63, v64, v65);

  sub_1DABD7900(v62);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  if (v56 != 1)
  {
    v43 = v57;
    v89 = v56;
    v90 = v57;
    v91 = v68;
    v92 = v69;
    if (v52 != 1)
    {
      v85 = v52;
      v86 = v53;
      v87 = v54;
      v88 = v55;
      v84 = sub_1DABD6C94(&v89, &v85);
      sub_1DABD7844(v56, v57, v68, v69);
      sub_1DABD7844(v52, v53, v54, v55);
      sub_1DABD7844(v56, v57, v68, v69);

      sub_1DABD7900(v56);
      if ((v84 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_45;
    }

    v44 = 1;
    sub_1DABD7844(v56, v57, v68, v69);
    v46 = v53;
    v45 = v54;
    v17 = v55;
    sub_1DABD7844(1, v53, v54, v55);
    sub_1DABD7844(v56, v57, v68, v69);

    goto LABEL_43;
  }

  v43 = v57;
  sub_1DABD7844(1, v57, v68, v69);
  v44 = v52;
  if (v52 != 1)
  {
    v46 = v53;
    v45 = v54;
    v17 = v55;
    sub_1DABD7844(v52, v53, v54, v55);
LABEL_43:
    v89 = v56;
    v90 = v43;
    v91 = v68;
    v92 = v69;
    v93 = v44;
    v94 = v46;
    v95 = v45;
    goto LABEL_8;
  }

  sub_1DABD7844(1, v53, v54, v55);
  sub_1DABD7900(1);
LABEL_45:
  if (v51)
  {
    if (v50)
    {
      sub_1DACB71E4();
      v47 = sub_1DABDB178(v51, v50);

      if (v47)
      {
        return 1;
      }
    }
  }

  else if (!v50)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DABD77F0()
{
  result = qword_1EE124EA8;
  if (!qword_1EE124EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EA8);
  }

  return result;
}

uint64_t sub_1DABD7844(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DABD78AC()
{
  result = qword_1EE1242D8;
  if (!qword_1EE1242D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242D8);
  }

  return result;
}

uint64_t sub_1DABD7900(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1DABD7964()
{
  if (!qword_1EE124000)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124000);
    }
  }
}

unint64_t sub_1DABD79C4()
{
  result = qword_1EE1242D0;
  if (!qword_1EE1242D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242D0);
  }

  return result;
}

uint64_t sub_1DABD7A18(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DABD7964();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD7AC8()
{
  result = qword_1EE1242F0;
  if (!qword_1EE1242F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242F0);
  }

  return result;
}

unint64_t sub_1DABD7B1C()
{
  result = qword_1EE1247D0;
  if (!qword_1EE1247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247D0);
  }

  return result;
}

uint64_t sub_1DABD7B70(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61590(255, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD7C00()
{
  result = qword_1EE1247C8;
  if (!qword_1EE1247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247C8);
  }

  return result;
}

uint64_t sub_1DABD7C54(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_1DABD7D80()
{
  result = qword_1EE1247E8;
  if (!qword_1EE1247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247E8);
  }

  return result;
}

void sub_1DABD7DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DABD7E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t sub_1DABD7F04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DABD7F60(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DABD7FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DABD8028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DABD80BC()
{
  result = qword_1ECBE89D8;
  if (!qword_1ECBE89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89D8);
  }

  return result;
}

unint64_t sub_1DABD8114()
{
  result = qword_1ECBE89E0;
  if (!qword_1ECBE89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89E0);
  }

  return result;
}

unint64_t sub_1DABD816C()
{
  result = qword_1ECBE89E8;
  if (!qword_1ECBE89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89E8);
  }

  return result;
}

unint64_t sub_1DABD81C4()
{
  result = qword_1EE1247D8;
  if (!qword_1EE1247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247D8);
  }

  return result;
}

unint64_t sub_1DABD821C()
{
  result = qword_1EE1247E0;
  if (!qword_1EE1247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247E0);
  }

  return result;
}

unint64_t sub_1DABD8274()
{
  result = qword_1EE1242E0;
  if (!qword_1EE1242E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242E0);
  }

  return result;
}

unint64_t sub_1DABD82CC()
{
  result = qword_1EE1242E8;
  if (!qword_1EE1242E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242E8);
  }

  return result;
}

unint64_t sub_1DABD8324()
{
  result = qword_1EE124E98;
  if (!qword_1EE124E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E98);
  }

  return result;
}

unint64_t sub_1DABD837C()
{
  result = qword_1EE124EA0;
  if (!qword_1EE124EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EA0);
  }

  return result;
}

uint64_t sub_1DABD83D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73756C507377656ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACECB80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACECBA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574726143616C61 && a2 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACECBC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DABD85D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656C6369747261 && a2 == 0xEB0000000074666FLL;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48656C6369747261 && a2 == 0xEB00000000647261 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACECBE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACECC00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABD874C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646C756F6873 && a2 == 0xED00006D72617765)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABD88D0(uint64_t a1)
{
  sub_1DABD892C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DABD892C(uint64_t a1)
{
  if (!qword_1ECBE89F0)
  {
    sub_1DAA61590(255, &unk_1EE126798, &type metadata for FlexiblePaywallResourceByLocationConfig, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE89F0);
    }
  }
}

uint64_t sub_1DABD89B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DABD8A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DABD8A64(void *a1)
{
  sub_1DABDA220(0, &qword_1ECBE8A18, sub_1DABDA1CC, &type metadata for SDSCurrencyResponse.CurrencyItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABDA1CC();
  sub_1DACBA304();
  v13 = 0;
  sub_1DACBA094();
  if (!v1)
  {
    v12 = 1;
    sub_1DACBA094();
    v11 = 2;
    sub_1DACBA0B4();
    v10 = 3;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABD8C30(void *a1)
{
  v3 = v1;
  sub_1DABDA220(0, &qword_1ECBE89F8, sub_1DABD9DD4, &type metadata for SDSCurrencyResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD9DD4();
  sub_1DACBA304();
  *&v12[0] = *v3;
  v14 = 0;
  sub_1DABD9E28();
  sub_1DABD9F34(&qword_1ECBE8A00, sub_1DABD9FA0, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1DACBA094();
    LOBYTE(v12[0]) = 2;
    sub_1DACBA094();
    v11 = *(v3 + 56);
    v12[0] = *(v3 + 40);
    v12[1] = v11;
    v13 = *(v3 + 72);
    v14 = 3;
    sub_1DAA6EF04();
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DABD8E80()
{
  v1 = 0x6563697270;
  if (*v0 != 2)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DABD8EF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD93C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD8F1C(uint64_t a1)
{
  v2 = sub_1DABDA1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD8F58(uint64_t a1)
{
  v2 = sub_1DABDA1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABD8F94@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DABD9534(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DABD8FFC(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1DACBA174();
    result = 0;
    if ((v13 & 1) == 0 || v4 != v9)
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t sub_1DABD9120()
{
  v1 = 0x79636E6572727563;
  v2 = 0x7243656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x646174654D736473;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
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

uint64_t sub_1DABD91C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABD9820(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABD91E8(uint64_t a1)
{
  v2 = sub_1DABD9DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD9224(uint64_t a1)
{
  v2 = sub_1DABD9DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DABD9260@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DABD99A0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_1DABD92C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 7);
  v17[0] = *(a1 + 5);
  v17[1] = v7;
  v18 = a1[9];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 5);
  v14 = *(a2 + 7);
  v20 = a2[9];
  v19[0] = v13;
  v19[1] = v14;
  return (sub_1DAC37210(v2, v8) & 1) != 0 && (v3 == v9 && v5 == v11 || (sub_1DACBA174() & 1) != 0) && (v4 == v10 && v6 == v12 || (sub_1DACBA174() & 1) != 0) && sub_1DAC3C194(v17, v19);
}

uint64_t sub_1DABD93C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79636E6572727563 && a2 == 0xEC0000006D6F7246;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEA00000000006F54 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABD9534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_1DABDA220(0, &qword_1EE11CF78, sub_1DABDA1CC, &type metadata for SDSCurrencyResponse.CurrencyItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABDA1CC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v27;
  v31 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v26 = v11;
  v30 = 1;
  v24 = sub_1DACB9FA4();
  v25 = v14;
  v29 = 2;
  sub_1DACB9FC4();
  v16 = v15;
  v28 = 3;
  v17 = sub_1DACB9FA4();
  v19 = v18;
  v20 = v17;
  (*(v9 + 8))(v8, v5);
  sub_1DACB71E4();
  v21 = v25;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);

  *v10 = v26;
  v10[1] = v13;
  v10[2] = v24;
  v10[3] = v21;
  v10[4] = v16;
  v10[5] = v20;
  v10[6] = v19;
  return result;
}

uint64_t sub_1DABD9820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6572727563 && a2 == 0xED0000736D657449;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7243656372756F73 && a2 == 0xEF74416465746165 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646174654D736473 && a2 == 0xEB00000000617461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABD99A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABDA220(0, &qword_1EE11CF80, sub_1DABD9DD4, &type metadata for SDSCurrencyResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD9DD4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  sub_1DABD9E28();
  LOBYTE(v31) = 0;
  sub_1DABD9F34(&qword_1EE11D158, sub_1DABD9E78, MEMORY[0x1E69E6330]);
  v10 = v30;
  sub_1DACB9FE4();
  v11 = v36[0];
  LOBYTE(v36[0]) = 1;
  v12 = sub_1DACB9FA4();
  v29 = v13;
  v27 = v12;
  LOBYTE(v36[0]) = 2;
  v26 = sub_1DACB9FA4();
  v28 = v14;
  v40 = 3;
  sub_1DAA6EEB0();
  sub_1DACB9FE4();
  (*(v9 + 8))(v8, v10);
  v30 = v37;
  v24 = *(&v38 + 1);
  v25 = v38;
  v15 = *(&v39 + 1);
  v23 = v39;
  *&v31 = v11;
  v16 = v27;
  *(&v31 + 1) = v27;
  v17 = v29;
  *&v32 = v29;
  v18 = v26;
  *(&v32 + 1) = v26;
  v19 = v28;
  *&v33 = v28;
  *(&v33 + 1) = v37;
  v34 = v38;
  v35 = v39;
  sub_1DABD9ECC(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v11;
  v36[1] = v16;
  v36[2] = v17;
  v36[3] = v18;
  v36[4] = v19;
  v36[5] = v30;
  v36[6] = v25;
  v36[7] = v24;
  v36[8] = v23;
  v36[9] = v15;
  result = sub_1DABD9F04(v36);
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  a2[4] = v35;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  return result;
}

unint64_t sub_1DABD9DD4()
{
  result = qword_1EE11E6A8;
  if (!qword_1EE11E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6A8);
  }

  return result;
}

void sub_1DABD9E28()
{
  if (!qword_1EE11D160)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D160);
    }
  }
}

unint64_t sub_1DABD9E78()
{
  result = qword_1EE11E678;
  if (!qword_1EE11E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E678);
  }

  return result;
}

uint64_t sub_1DABD9F34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DABD9E28();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD9FA0()
{
  result = qword_1ECBE8A08;
  if (!qword_1ECBE8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A08);
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

uint64_t sub_1DABDA020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DABDA068(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DABDA0C8()
{
  result = qword_1ECBE8A10;
  if (!qword_1ECBE8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A10);
  }

  return result;
}

unint64_t sub_1DABDA120()
{
  result = qword_1EE11E698;
  if (!qword_1EE11E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E698);
  }

  return result;
}

unint64_t sub_1DABDA178()
{
  result = qword_1EE11E6A0;
  if (!qword_1EE11E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6A0);
  }

  return result;
}

unint64_t sub_1DABDA1CC()
{
  result = qword_1EE11E690;
  if (!qword_1EE11E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E690);
  }

  return result;
}

void sub_1DABDA220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DABDA29C()
{
  result = qword_1ECBE8A20;
  if (!qword_1ECBE8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A20);
  }

  return result;
}

unint64_t sub_1DABDA2F4()
{
  result = qword_1EE11E680;
  if (!qword_1EE11E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E680);
  }

  return result;
}

unint64_t sub_1DABDA34C()
{
  result = qword_1EE11E688;
  if (!qword_1EE11E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E688);
  }

  return result;
}

uint64_t sub_1DABDA3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA8EE80();
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABDA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(a10 + 16))(a6, a7, a8, 0, a9);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A64();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DABDA558(uint64_t a1, void (*a2)(void *))
{
  if (qword_1EE11EDA0 != -1)
  {
    swift_once();
  }

  v4[0] = qword_1EE11EDA8;
  v4[1] = *algn_1EE11EDB0;
  sub_1DACB71E4();
  sub_1DACB71E4();
  a2(v4);
}

uint64_t sub_1DABDA600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = a3;
    v19 = a2;
    v17 = a4;
    v8 = a5;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v5, 0);
    v6 = v20;
    v9 = (a1 + 56);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      sub_1DACB71E4();
      if (v13 >= v12 >> 1)
      {
        sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 17;
      --v5;
    }

    while (v5);
    a5 = v8;
    a4 = v17;
    a3 = v18;
    a2 = v19;
  }

  v15 = sub_1DABDA3A0(v6, a2, a3, a4, a5);

  return v15;
}

void sub_1DABDA70C(void *a2@<X8>)
{
  v3 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v5 = sub_1DACB9AD4();
  sub_1DACB8C64("Recovering from failed sparkline fetch due to error %{public}@", 62, 2, &dword_1DAA3F000, v5, v3, v4);

  *a2 = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1DABDA840(uint64_t a1)
{
  v2 = v1;
  sub_1DACB8144();
  swift_beginAccess();
  v4 = *(v1 + 136);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_1DACB9E14();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v5)
  {
    v11 = v2;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v6, v4);
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v9 = v12;
          v2 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      ++v6;
      if (v2 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v2 + 136) = v9;

  return sub_1DACB8154();
}

uint64_t sub_1DABDA9DC(uint64_t a1)
{
  v2 = v1;
  sub_1DACB8144();
  swift_beginAccess();
  v4 = *(v1 + 144);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_1DACB9E14();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v5)
  {
    v11 = v2;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v6, v4);
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v9 = v12;
          v2 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      ++v6;
      if (v2 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v2 + 144) = v9;

  return sub_1DACB8154();
}

uint64_t sub_1DABDAB78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDAC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB88D4();
  v71 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - v8;
  sub_1DAA8A968(0, &qword_1EE11FBE8, &qword_1EE11FBF0, MEMORY[0x1E69D6A58]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v65 = (&v60 - v12);
  v66 = v13;
  v64 = a2;
  v14 = 0;
  v61 = a1;
  v15 = *(a1 + 64);
  v60 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v67 = v71 + 16;
  v68 = (v71 + 32);
  v62 = v7;
  v63 = (v71 + 8);
  v20 = &qword_1EE11FBF0;
  while (v18)
  {
    v69 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v61 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v70;
    v29 = v71;
    (*(v71 + 16))(v70, *(v61 + 56) + *(v71 + 72) * v21, v4);
    sub_1DAA8A9C0(0, v20, MEMORY[0x1E69D6A58]);
    v32 = v31;
    v33 = *(v31 + 48);
    v34 = v66;
    *v66 = v27;
    *(v34 + 1) = v28;
    v35 = *(v29 + 32);
    v36 = v34;
    v35(&v34[v33], v30, v4);
    (*(*(v32 - 8) + 56))(v36, 0, 1, v32);
    sub_1DACB71E4();
LABEL_17:
    v37 = MEMORY[0x1E69D6A58];
    v38 = v36;
    v39 = v65;
    sub_1DAA93038(v38, v65, &qword_1EE11FBE8, v20, MEMORY[0x1E69D6A58]);
    v40 = v20;
    sub_1DAA8A9C0(0, v20, v37);
    v41 = (*(*(v32 - 8) + 48))(v39, 1, v32);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v32 + 48);
    v44 = v39;
    v45 = *v39;
    v46 = v39[1];
    v47 = v62;
    (*v68)(v62, v44 + v43, v4);
    v48 = v45;
    v49 = v64;
    v50 = sub_1DAA4BF3C(v48, v46);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      (*v63)(v47, v4);
      return 0;
    }

    v53 = v71;
    v54 = *(v49 + 56) + *(v71 + 72) * v50;
    v55 = v70;
    (*(v71 + 16))(v70, v54, v4);
    sub_1DAA8AD7C(&qword_1EE11FF78, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v56 = sub_1DACB9264();
    v57 = *(v53 + 8);
    v57(v55, v4);
    result = (v57)(v47, v4);
    v20 = v40;
    v18 = v69;
    if ((v56 & 1) == 0)
    {
      return v42;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      sub_1DAA8A9C0(0, v20, MEMORY[0x1E69D6A58]);
      v32 = v58;
      v59 = v66;
      (*(*(v58 - 8) + 56))(v66, 1, 1, v58);
      v69 = 0;
      v14 = v23;
      v36 = v59;
      goto LABEL_17;
    }

    v25 = *(v60 + 8 * v24);
    ++v14;
    if (v25)
    {
      v69 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABDB178(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v3 + 56) + 168 * v10;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v69 = *v18;
      v70 = v20;
      v71 = v19;
      v21 = *(v18 + 96);
      v23 = *(v18 + 48);
      v22 = *(v18 + 64);
      v74 = *(v18 + 80);
      v75 = v21;
      v72 = v23;
      v73 = v22;
      v25 = *(v18 + 128);
      v24 = *(v18 + 144);
      v26 = *(v18 + 112);
      v79 = *(v18 + 160);
      v77 = v25;
      v78 = v24;
      v76 = v26;
      v27 = *(v18 + 144);
      v88 = *(v18 + 128);
      v89 = v27;
      v90 = *(v18 + 160);
      v28 = *(v18 + 80);
      v84 = *(v18 + 64);
      v85 = v28;
      v29 = *(v18 + 112);
      v86 = *(v18 + 96);
      v87 = v29;
      v30 = *(v18 + 16);
      v80 = *v18;
      v81 = v30;
      v31 = *(v18 + 48);
      v82 = *(v18 + 32);
      v83 = v31;
      v91 = v16;
      v92 = v17;
      v95 = v82;
      v96 = v31;
      v93 = v80;
      v94 = v30;
      v97 = v84;
      v98 = v85;
      v103 = v90;
      v101 = v88;
      v102 = v89;
      v99 = v86;
      v100 = v87;
      nullsub_1();
      sub_1DACB71E4();
      sub_1DABD7A90(&v69, v67);
      v32 = v91;
      v33 = v92;
      v112 = v101;
      v113 = v102;
      v114 = v103;
      v108 = v97;
      v109 = v98;
      v110 = v99;
      v111 = v100;
      v104 = v93;
      v105 = v94;
      v35 = v95;
      v34 = v96;
      v12 = v4;
LABEL_16:
      v106 = v35;
      v107 = v34;
      v101 = v112;
      v102 = v113;
      v103 = v114;
      v97 = v108;
      v98 = v109;
      v99 = v110;
      v100 = v111;
      v93 = v104;
      v94 = v105;
      v95 = v35;
      v96 = v34;
      v91 = v32;
      v92 = v33;
      result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v91);
      if (result == 1)
      {
        break;
      }

      v88 = v112;
      v89 = v113;
      v90 = v114;
      v84 = v108;
      v85 = v109;
      v86 = v110;
      v87 = v111;
      v80 = v104;
      v81 = v105;
      v82 = v106;
      v83 = v107;
      v36 = sub_1DAA4BF3C(v32, v33);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        v77 = v112;
        v78 = v113;
        v79 = v114;
        v73 = v108;
        v74 = v109;
        v75 = v110;
        v76 = v111;
        v69 = v104;
        v70 = v105;
        v71 = v106;
        v72 = v107;
        sub_1DAB3DCE4(&v69);
        return 0;
      }

      v39 = *(a2 + 56) + 168 * v36;
      v41 = *(v39 + 16);
      v40 = *(v39 + 32);
      v65[0] = *v39;
      v65[1] = v41;
      v65[2] = v40;
      v42 = *(v39 + 96);
      v44 = *(v39 + 48);
      v43 = *(v39 + 64);
      v65[5] = *(v39 + 80);
      v65[6] = v42;
      v65[3] = v44;
      v65[4] = v43;
      v46 = *(v39 + 128);
      v45 = *(v39 + 144);
      v47 = *(v39 + 112);
      v66 = *(v39 + 160);
      v65[8] = v46;
      v65[9] = v45;
      v65[7] = v47;
      v48 = *(v39 + 144);
      v62 = *(v39 + 128);
      v63 = v48;
      v64 = *(v39 + 160);
      v49 = *(v39 + 80);
      v58 = *(v39 + 64);
      v59 = v49;
      v50 = *(v39 + 112);
      v60 = *(v39 + 96);
      v61 = v50;
      v51 = *(v39 + 16);
      v54 = *v39;
      v55 = v51;
      v52 = *(v39 + 48);
      v56 = *(v39 + 32);
      v57 = v52;
      sub_1DABD7A90(v65, &v69);
      v53 = static FlexiblePaywall.== infix(_:_:)(&v54, &v80);
      v67[8] = v62;
      v67[9] = v63;
      v68 = v64;
      v67[4] = v58;
      v67[5] = v59;
      v67[6] = v60;
      v67[7] = v61;
      v67[0] = v54;
      v67[1] = v55;
      v67[2] = v56;
      v67[3] = v57;
      sub_1DAB3DCE4(v67);
      v77 = v88;
      v78 = v89;
      v79 = v90;
      v73 = v84;
      v74 = v85;
      v75 = v86;
      v76 = v87;
      v69 = v80;
      v70 = v81;
      v71 = v82;
      v72 = v83;
      result = sub_1DAB3DCE4(&v69);
      if ((v53 & 1) == 0)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_1DABDB628(&v91);
        v7 = 0;
        v114 = v103;
        v32 = v91;
        v33 = v92;
        v112 = v101;
        v113 = v102;
        v108 = v97;
        v109 = v98;
        v110 = v99;
        v111 = v100;
        v104 = v93;
        v105 = v94;
        v35 = v95;
        v34 = v96;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_1DABDB628(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1DABDB680(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v22[0];
  v24 = v22[0];
  sub_1DABDB980();
  sub_1DACB7874();
  if (v23 != 2)
  {
    if (v23 == 11)
    {

      return;
    }

    goto LABEL_16;
  }

  v20 = v3;
  v4 = sub_1DACB7894();
  v5 = sub_1DACB9324();
  if (!*(v4 + 16))
  {

    goto LABEL_15;
  }

  v7 = sub_1DAA4BF3C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1DAA7C694(*(v4 + 56) + 32 * v7, v22);

  sub_1DABDB9D8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v10 = v21;
  v11 = [v21 allValues];
  v12 = sub_1DACB9644();

  v13 = v12 + 32;
  v14 = -*(v12 + 16);
  v15 = -1;
  while (1)
  {
    if (v14 + v15 == -1)
    {
LABEL_13:

      return;
    }

    if (++v15 >= *(v12 + 16))
    {
      break;
    }

    sub_1DAA7C694(v13, v22);
    sub_1DAA7C694(v22, &v20);
    sub_1DABDBA24();
    if (!swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(v22);
      return;
    }

    v13 += 32;
    v16 = v21;
    swift_getErrorValue();
    sub_1DABDB680(v19[2]);
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1(v22);
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1DABDB980()
{
  result = qword_1EE11D218;
  if (!qword_1EE11D218)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D218);
  }

  return result;
}

unint64_t sub_1DABDB9D8()
{
  result = qword_1ECBE8A28;
  if (!qword_1ECBE8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBE8A28);
  }

  return result;
}

unint64_t sub_1DABDBA24()
{
  result = qword_1EE123B10;
  if (!qword_1EE123B10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123B10);
  }

  return result;
}

uint64_t sub_1DABDBB10()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE8A30);
  __swift_project_value_buffer(v6, qword_1ECBE8A30);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DABDBD28()
{
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE8A48);
  __swift_project_value_buffer(v10, qword_1ECBE8A48);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DABDC054()
{
  sub_1DABDD7EC(0, &qword_1ECBE8A60, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABDD7EC(0, &qword_1ECBE8A68, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DAB1FA2C();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABDC288(0);
  sub_1DACB7234();

  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABDC338(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

void sub_1DABDC288(uint64_t a1)
{
  if (!qword_1ECBE8A70)
  {
    sub_1DAB2AF6C(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8A70);
    }
  }
}

uint64_t sub_1DABDC30C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

void sub_1DABDC338(uint64_t a1)
{
  if (!qword_1ECBE8A78)
  {
    sub_1DABDD7EC(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8A78);
    }
  }
}

uint64_t sub_1DABDC3D0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SymbolEntity(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DAAA2C80(a1, &v10 - v7);
  sub_1DAAA2C80(v8, v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v8);
}

uint64_t sub_1DABDC4CC(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2C80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DABDC55C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t (*sub_1DABDC5D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABDC668(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DABDC6AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DABDC744@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v59 = sub_1DACB7274();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6AA44(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = v42 - v5;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = v42 - v7;
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = v42 - v9;
  v10 = sub_1DACB78E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB7904();
  v53 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v42[1] = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB2AF6C(0);
  v49 = v19;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21 = *(v11 + 104);
  v46 = *MEMORY[0x1E6968DF0];
  v20 = v46;
  v47 = v10;
  v21(v13, v46, v10);
  v45 = v21;
  v48 = v11 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21(v13, v20, v10);
  v22 = v61;
  sub_1DACB7914();
  v23 = *(v17 + 56);
  v52 = v17 + 56;
  v54 = v23;
  v23(v22, 0, 1, v16);
  v24 = type metadata accessor for SymbolEntity(0);
  (*(*(v24 - 8) + 56))(v55, 1, 1, v24);
  v25 = sub_1DACB6E84();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v43 = v27;
  v44 = v26 + 56;
  v28 = v56;
  v27(v56, 1, 1, v25);
  v27(v57, 1, 1, v25);
  *&v63 = sub_1DAB1CC4C();
  *(&v63 + 1) = v29;
  *&v64 = v30;
  *(&v64 + 1) = v31;
  v50 = *MEMORY[0x1E695A500];
  v32 = *(v62 + 104);
  v62 += 104;
  v51 = v32;
  v32(v58);
  sub_1DAAF59D0();
  *v60 = sub_1DACB7004();
  sub_1DABDD7EC(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v55 = v33;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v34 = v46;
  v35 = v47;
  v36 = v45;
  v45(v13, v46, v47);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v36(v13, v34, v35);
  v37 = v61;
  sub_1DACB7914();
  v54(v37, 0, 1, v53);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v38 = v43;
  v43(v28, 1, 1, v25);
  v38(v57, 1, 1, v25);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  sub_1DACB6D94();
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  sub_1DACB6D84();
  *&v63 = sub_1DACB6D54();
  v51(v58, v50, v59);
  sub_1DAAF4218();
  sub_1DAADA468();
  v39 = sub_1DACB6FF4();
  v40 = v60;
  v60[1] = v39;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v40[2] = result;
  return result;
}

uint64_t sub_1DABDD02C(uint64_t a1)
{
  *(v2 + 128) = a1;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABDD0E8, 0, 0);
}

uint64_t sub_1DABDD0E8(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_1DACB6D24();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v1[7] = v4;
  v1[8] = v3;
  v1[9] = v2;
  v7 = *(v6 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v1[21] = v8;
  *v8 = v1;
  v8[1] = sub_1DABDD264;

  return (v10)(v1 + 7, v5, v6);
}

uint64_t sub_1DABDD264()
{
  v2 = *v1;
  v2[22] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v3 = sub_1DAB2C368;
  }

  else
  {
    v3 = sub_1DABDD384;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABDD384()
{
  v10 = v0;
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  sub_1DACB6FB4();
  v2 = type metadata accessor for SymbolEntity(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1DAAF42EC(&v8, v1, &v6);
  v3 = v7;
  *(v0 + 104) = v6;
  *(v0 + 120) = v3;
  sub_1DAAF3184();
  sub_1DACB6E94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DABDD4C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABDD574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABDD02C(a1);
}

uint64_t sub_1DABDD610(uint64_t a1)
{
  v2 = sub_1DAB1FA2C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DABDD650()
{
  result = qword_1EE11DD28;
  if (!qword_1EE11DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD28);
  }

  return result;
}

unint64_t sub_1DABDD6A8()
{
  result = qword_1EE11DD38;
  if (!qword_1EE11DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD38);
  }

  return result;
}

unint64_t sub_1DABDD75C()
{
  result = qword_1ECBE8A80;
  if (!qword_1ECBE8A80)
  {
    sub_1DABDD7EC(255, &qword_1ECBE8A88, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A80);
  }

  return result;
}

void sub_1DABDD7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DABDD854()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABDD884(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = *a2;
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_1DAA4E108(v6, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_1DABDDA10(uint64_t a1)
{
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_1DAA4E108(v5, v1 + v8);
  return swift_endAccess();
}

void (*sub_1DABDDB30(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1DAA4A0F8(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  v9 = sub_1DACB7AB4();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_1DAA4DA94(v11);
  return sub_1DABDDC44;
}

void sub_1DABDDC44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
    swift_beginAccess();
    sub_1DAA4E108(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
    swift_beginAccess();
    sub_1DAA4E108(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1DABDDDF0()
{

  sub_1DAA4DDD0(v0 + OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL);
  v1 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v2 = sub_1DACB8034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1DABDDE78()
{

  sub_1DAA4DDD0(v0 + OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL);
  v1 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v2 = sub_1DACB8034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1DACB9364();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7BE4();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA53064(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v69 - v12;
  v14 = sub_1DACB7AB4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DACB7454();
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v73 = v18;
  v81 = a1;
  sub_1DACB7494();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1DAA92910(v13, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
LABEL_11:
    a1 = v81;
LABEL_12:
    v46 = sub_1DACB9904();
    sub_1DAA53064(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1DACC1D20;
    v48 = sub_1DACB74D4();
    sub_1DABDEF34(&qword_1ECBE8A90, MEMORY[0x1E6967EC8], MEMORY[0x1E6967EE0]);
    v49 = sub_1DACBA114();
    v51 = v50;
    *(v47 + 56) = MEMORY[0x1E69E6158];
    *(v47 + 64) = sub_1DAA443C8();
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    sub_1DAA41DCC();
    v52 = sub_1DACB9AD4();
    sub_1DACB8C64("Failed to sign request because it's malformed: %@", 49, 2, &dword_1DAA3F000, v52, v46, v47);

    return (*(*(v48 - 8) + 16))(v82, a1, v48);
  }

  (*(v15 + 32))(v17, v13, v14);
  v21 = sub_1DACB7A64();
  if (!v22)
  {
    (*(v15 + 8))(v17, v14);
LABEL_10:

    goto LABEL_11;
  }

  v23 = v21;
  v24 = v22;
  v25 = sub_1DACB7A84();
  if (!v26)
  {
    (*(v15 + 8))(v17, v14);

    goto LABEL_10;
  }

  v71 = v26;
  v72 = v15;
  v70 = v25;
  v27 = sub_1DABDE8B4(v10);
  MEMORY[0x1E1274FD0](v27);
  sub_1DABDEF34(&qword_1EE123A58, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
  v28 = v76;
  sub_1DACB7CA4();
  (*(v75 + 8))(v7, v28);
  (*(v74 + 8))(v10, v8);
  v30 = v83[0];
  v29 = v83[1];
  sub_1DAAA129C(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  v32 = v24;
  v33 = v31;
  *(v31 + 16) = xmmword_1DACC4A00;
  *(v31 + 32) = v73;
  *(v31 + 40) = v20;
  *(v31 + 48) = v23;
  *(v31 + 56) = v32;
  *(v31 + 64) = sub_1DACB7A74();
  v33[9] = v34;
  v33[10] = 63;
  v33[11] = 0xE100000000000000;
  v35 = v71;
  v33[12] = v70;
  v33[13] = v35;
  v33[14] = v30;
  v33[15] = v29;
  v83[0] = v33;
  sub_1DAAA129C(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  sub_1DACB71E4();
  v36 = sub_1DACB9214();
  v37 = v17;
  v39 = v38;

  v40 = v77;
  sub_1DACB9354();
  v41 = sub_1DACB9334();
  v43 = v42;
  (*(v78 + 8))(v40, v79);
  if (v43 >> 60 == 15)
  {
    (*(v72 + 8))(v37, v14);

    v44 = sub_1DACB74D4();
    return (*(*(v44 - 8) + 16))(v82, v81, v44);
  }

  else
  {
    v53 = sub_1DABDF368(v41, v43, *(v80 + 16), *(v80 + 24));
    v80 = v14;
    v54 = v53;
    v56 = v55;
    v57 = sub_1DACB7B54();
    v78 = v41;
    v79 = v37;
    v58 = v57;
    v60 = v59;
    v83[0] = 0;
    v83[1] = 0xE000000000000000;
    sub_1DACB9C94();

    strcpy(v83, "HHMAC;date=");
    BYTE5(v83[1]) = 0;
    HIWORD(v83[1]) = -5120;
    MEMORY[0x1E1276F20](v30, v29);

    MEMORY[0x1E1276F20](0x74616E6769733B22, 0xED0000223D657275);
    MEMORY[0x1E1276F20](v58, v60);

    MEMORY[0x1E1276F20](34, 0xE100000000000000);
    v62 = v83[0];
    v61 = v83[1];
    sub_1DAA53064(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1DACC1D40;
    v64 = MEMORY[0x1E69E6158];
    *(v63 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1DAA443C8();
    *(v63 + 32) = v36;
    *(v63 + 40) = v39;
    *(v63 + 96) = v64;
    *(v63 + 104) = v65;
    *(v63 + 64) = v65;
    *(v63 + 72) = v62;
    *(v63 + 80) = v61;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v66 = sub_1DACB9AD4();
    v67 = sub_1DACB9914();
    sub_1DACB8C64("SparklinesRequestSigner: Signed string '%@', setting Authorization: %@", 70, 2, &dword_1DAA3F000, v66, v67, v63);

    v68 = sub_1DACB74D4();
    (*(*(v68 - 8) + 16))(v82, v81, v68);
    sub_1DACB74C4();

    sub_1DAA563C0(v54, v56);
    sub_1DAB4D534(v78, v43);
    return (*(v72 + 8))(v79, v80);
  }
}

uint64_t sub_1DABDE8B4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_1DAA53064(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v24 - v2;
  v31 = sub_1DACB77D4();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1DACB7CC4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7EE4();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7EA4();
  sub_1DACB7CB4();
  sub_1DAA53064(0, &qword_1EE11F540, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1DACB7ED4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = 4 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC5AA0;
  v15 = v14 + v12;
  v16 = *(v10 + 104);
  v16(v15, *MEMORY[0x1E6969A68], v9);
  v16(v15 + v11, *MEMORY[0x1E6969A78], v9);
  v16(v15 + 2 * v11, *MEMORY[0x1E6969A48], v9);
  v17 = 3 * v11;
  v18 = v26;
  v16(v15 + v17, *MEMORY[0x1E6969A58], v9);
  v16(v15 + v13, *MEMORY[0x1E6969A88], v9);
  sub_1DABDF054(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DACB7E84();

  sub_1DACB77A4();
  if (v19)
  {
    (*(v29 + 8))(v18, v31);
    (*(v27 + 8))(v8, v28);
    v20 = v5;
    v21 = v32;
    v22 = v30;
  }

  else
  {
    sub_1DACB77B4();
    v20 = v25;
    sub_1DACB7E94();
    (*(v29 + 8))(v18, v31);
    (*(v27 + 8))(v8, v28);
    v22 = v30;
    v21 = v32;
    if ((*(v30 + 48))(v20, 1, v32) == 1)
    {
      sub_1DAA92910(v20, &qword_1EE125280, MEMORY[0x1E6969530]);
      v20 = v5;
    }

    else
    {
      (*(v22 + 8))(v5, v21);
    }
  }

  return (*(v22 + 32))(v33, v20, v21);
}

const void *sub_1DABDEDEC@<X0>(const void *data@<X0>, _BYTE *macOut@<X5>, const void *a3@<X1>, size_t a4@<X2>, unint64_t a5@<X3>, size_t a6@<X4>, unint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v11 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v11 != 2)
    {
      a4 = 0;
      goto LABEL_11;
    }

    v13 = *(a4 + 16);
    v12 = *(a4 + 24);
    a4 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v11)
  {
    a4 = BYTE6(a5);
LABEL_11:
    CCHmac(2u, a3, a4, data, a6, macOut);
    v14 = sub_1DABDF508(macOut, a7);
    v16 = v15;
    data = MEMORY[0x1E1278C00](macOut, -1, -1);
    *a8 = v14;
    a8[1] = v16;
    return data;
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    a4 = HIDWORD(a4) - a4;
    goto LABEL_11;
  }

  __break(1u);
  return data;
}

uint64_t sub_1DABDEEB4()
{
  sub_1DAA563C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDEF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DABDEF7C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABDEF9C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1DABDF054(uint64_t a1)
{
  v2 = sub_1DACB7ED4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DABDF5B8(0);
    v9 = sub_1DACB9C44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DABDEF34(&qword_1EE123A18, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1DACB91E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1DABDEF34(&qword_1EE123A10, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1DACB9264();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DABDF368(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v5 = swift_slowAlloc();
    MEMORY[0x1EEE9AC00](v5);
    sub_1DACB7B34();
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DABDF508(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DABDEF9C(a1, &a1[a2]);
  }

  sub_1DACB7794();
  swift_allocObject();
  sub_1DACB7744();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DACB7B04();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_1DABDF5B8(uint64_t a1)
{
  if (!qword_1EE11F768)
  {
    sub_1DACB7ED4();
    sub_1DABDEF34(&qword_1EE123A18, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1DACB9C54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F768);
    }
  }
}

uint64_t type metadata accessor for YahooSearchOperation(uint64_t a1)
{
  result = qword_1ECBE8AB0;
  if (!qword_1ECBE8AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DABDF698(uint64_t a1)
{
  result = sub_1DACB8204();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DABDF748(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v63 = a1;
  v65 = 0x73752D6E65;
  v3 = sub_1DACB8204();
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7AB4();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DACB7CC4();
  v61 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE8AA0), *(v2 + qword_1ECBE8AA0 + 24));
  sub_1DAB361BC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x72656B636974;
  *(inited + 40) = 0xE600000000000000;
  v14 = *(v2 + qword_1ECBE8A98 + 8);
  *(inited + 48) = *(v2 + qword_1ECBE8A98);
  *(inited + 56) = v14;
  sub_1DACB71E4();
  v60 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAADF594(inited + 32);
  v58 = qword_1ECBE8AA8;
  sub_1DABE0624();
  sub_1DACB7CB4();
  v55 = *v12;
  v15 = objc_opt_self();
  v16 = [v15 sharedPreferences];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 stocksLanguageCode];
    if (v18)
    {
      v19 = v18;
      v65 = sub_1DACB9324();
      v59 = v20;
    }

    else
    {
      v59 = 0xE500000000000000;
    }

    v21 = [v17 stocksCountryCode];
    if (v21)
    {
      v22 = v21;
      v56 = sub_1DACB9324();
      v57 = v23;

      goto LABEL_9;
    }
  }

  else
  {
    v59 = 0xE500000000000000;
  }

  v57 = 0xE200000000000000;
  v56 = 21333;
LABEL_9:
  v24 = [v15 sharedPreferences];
  if (v24)
  {
    v25 = v24;
    v66 = v5;
    v26 = [v24 stocksYQLBaseURL];

    if (v26)
    {
      v49 = 0x80000001DACED030;
      v51 = v7;
      sub_1DACB7A44();

      sub_1DAA4D678(v55 + 16, v71);
      v27 = v61;
      v52 = *(v61 + 16);
      v53 = v11;
      v52(v67, v11, v68);
      v28 = v54;
      v55 = *(v54 + 16);
      v55(v69, v58 + v2, v3);
      sub_1DABE0678(0);
      v58 = v29;
      v30 = objc_allocWithZone(v29);
      v31 = v28;
      v50 = v3;
      v32 = MEMORY[0x1E69E7D40];
      *(v30 + *((*MEMORY[0x1E69E7D40] & *v30) + qword_1EE13E4B0 + 16)) = 0;
      v33 = v62;
      (*(v62 + 16))(v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 24), v7, v66);
      v34 = (v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 32));
      *v34 = 0xD000000000000015;
      v34[1] = v49;
      *(v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 40)) = v60;
      v35 = (v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 48));
      v36 = v59;
      *v35 = v65;
      v35[1] = v36;
      v37 = v57;
      v35[2] = v56;
      v35[3] = v37;
      sub_1DAA4D678(v71, v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 56));
      v39 = v67;
      v38 = v68;
      v52(v30 + *((*v32 & *v30) + qword_1EE13E4B0 + 64), v67, v68);
      v40 = *v32 & *v30;
      v41 = v69;
      v42 = v50;
      v55(v30 + *(v40 + qword_1EE13E4B0 + 72), v69, v50);
      v70.receiver = v30;
      v70.super_class = v58;
      v43 = objc_msgSendSuper2(&v70, sel_init);
      (*(v31 + 8))(v41, v42);
      v44 = *(v27 + 8);
      v44(v39, v38);
      __swift_destroy_boxed_opaque_existential_1(v71);
      (*(v33 + 8))(v51, v66);
      v44(v53, v38);
      v45 = swift_allocObject();
      v46 = v64;
      *(v45 + 16) = v63;
      *(v45 + 24) = v46;
      v47 = v43;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v47 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DABDFFA4(uint64_t a1, void (*a2)(uint64_t, void))
{
  v2 = a2;
  if (*(a1 + 32))
  {
    return (a2)(*a1, 1);
  }

  v4 = *(a1 + 8);
  result = MEMORY[0x1E69E7CD0];
  v53 = MEMORY[0x1E69E7CD0];
  v41 = *(v4 + 16);
  if (v41)
  {
    v5 = 0;
    v39 = v4 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v40 = v4;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = (v39 + 80 * v5);
      v9 = v7[2];
      v8 = v7[3];
      v10 = v7[5];
      v49 = v7[4];
      v45 = *v7;
      v11 = v7[9];
      v47 = v6;
      v48 = v7[8];
      v12 = v53;
      v46 = v7[1];
      if (*(v53 + 16))
      {
        sub_1DACBA284();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB9404();
        v13 = sub_1DACBA2C4();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(v12 + 48) + 16 * v15);
            v18 = *v17 == v9 && v17[1] == v8;
            if (v18 || (sub_1DACBA174() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v6 = v47;
          goto LABEL_6;
        }
      }

      else
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

LABEL_19:
      sub_1DACB71E4();
      sub_1DAA4C8A0(&v51, v9, v8);

      sub_1DAC4A894(&v50);

      v19 = v50;
      v51 = v49;
      v52 = v10;
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](58, 0xE100000000000000);
      MEMORY[0x1E1276F20](v9, v8);
      v20 = v51;
      v42 = v52;
      v21 = qword_1EE122610;
      sub_1DACB71E4();
      if (v21 != -1)
      {
        swift_once();
      }

      v22 = qword_1EE13E388;
      v6 = v47;
      v44 = v19;
      v43 = v20;
      if (*(qword_1EE13E388 + 16) && (v23 = sub_1DAA4BF3C(v9, v8), (v24 & 1) != 0))
      {
        v25 = v23;

        v26 = (*(v22 + 56) + 16 * v25);
        v11 = v26[1];
        v48 = *v26;
        sub_1DACB71E4();
      }

      else if (!v11)
      {
        sub_1DACB71E4();
        v48 = v9;
        v11 = v8;
      }

      v27 = qword_1EE13E390;
      v28 = v9;
      v29 = v8;
      if (*(qword_1EE13E390 + 16))
      {
        v30 = sub_1DAA4BF3C(v9, v8);
        v28 = v9;
        v29 = v8;
        if (v31)
        {
          v32 = v30;

          v33 = (*(v27 + 56) + 16 * v32);
          v28 = *v33;
          v29 = v33[1];
          sub_1DACB71E4();
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA5A0A8(0, *(v47 + 16) + 1, 1, v47);
        v6 = result;
      }

      v35 = *(v6 + 16);
      v34 = *(v6 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_1DAA5A0A8((v34 > 1), v35 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v35 + 1;
      v36 = v6 + 136 * v35;
      *(v36 + 32) = v43;
      *(v36 + 40) = v42;
      *(v36 + 48) = v9;
      *(v36 + 56) = v8;
      *(v36 + 64) = v45;
      *(v36 + 72) = v46;
      *(v36 + 80) = v49;
      *(v36 + 88) = v10;
      *(v36 + 96) = v44;
      v37 = *(&v51 + 3);
      *(v36 + 97) = v51;
      *(v36 + 100) = v37;
      *(v36 + 104) = v48;
      *(v36 + 112) = v11;
      *(v36 + 120) = v28;
      *(v36 + 128) = v29;
      *(v36 + 152) = 0u;
      *(v36 + 136) = 0u;
LABEL_6:
      ++v5;
      v4 = v40;
      if (v5 == v41)
      {
        v2 = a2;
        goto LABEL_36;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v2(v6, 0);
}

uint64_t sub_1DABE0474()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE8AA0));
  v1 = qword_1ECBE8AA8;
  v2 = sub_1DACB8204();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1DABE0500(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE8AA0));
  v2 = qword_1ECBE8AA8;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1DABE0590(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DABDF748(sub_1DABE0618, v4);
}

unint64_t sub_1DABE0624()
{
  result = qword_1ECBE8AC0;
  if (!qword_1ECBE8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AC0);
  }

  return result;
}

void sub_1DABE0678(uint64_t a1)
{
  if (!qword_1ECBE8AC8)
  {
    v2 = sub_1DABE0624();
    v4 = type metadata accessor for YahooBaseOperation(a1, &type metadata for YahooSearchResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECBE8AC8);
    }
  }
}

void sub_1DABE06DC(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[5];
      v9 = v7[7];
      v49 = v7[6];
      v50 = v9;
      v10 = v7[1];
      v11 = v7[3];
      v45 = v7[2];
      v46 = v11;
      v12 = v7[3];
      v13 = v7[5];
      v47 = v7[4];
      v48 = v13;
      v14 = v7[1];
      v43 = *v7;
      v44 = v14;
      v15 = v7[7];
      v40 = v49;
      v41 = v15;
      v36 = v45;
      v37 = v12;
      v38 = v47;
      v39 = v8;
      v51 = *(v7 + 16);
      v42 = *(v7 + 16);
      v34 = v43;
      v35 = v10;
      sub_1DAA806E4(&v43, &v25);
      v16 = a1(&v34);
      if (v3)
      {
        v31 = v40;
        v32 = v41;
        v33 = v42;
        v27 = v36;
        v28 = v37;
        v29 = v38;
        v30 = v39;
        v25 = v34;
        v26 = v35;
        sub_1DAA9B1C8(&v25);
        return;
      }

      if (v16)
      {
        break;
      }

      v31 = v40;
      v32 = v41;
      v33 = v42;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v25 = v34;
      v26 = v35;
      sub_1DAA9B1C8(&v25);
      v7 = (v7 + 136);
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v31 = v40;
    v32 = v41;
    v33 = v42;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    nullsub_1();
    v22 = v32;
    *(a3 + 96) = v31;
    *(a3 + 112) = v22;
    *(a3 + 128) = v33;
    v23 = v28;
    *(a3 + 32) = v27;
    *(a3 + 48) = v23;
    v24 = v30;
    *(a3 + 64) = v29;
    *(a3 + 80) = v24;
    v21 = v25;
    v20 = v26;
  }

  else
  {
LABEL_6:
    sub_1DAAD4FA4(&v43);
    v17 = v50;
    *(a3 + 96) = v49;
    *(a3 + 112) = v17;
    *(a3 + 128) = v51;
    v18 = v46;
    *(a3 + 32) = v45;
    *(a3 + 48) = v18;
    v19 = v48;
    *(a3 + 64) = v47;
    *(a3 + 80) = v19;
    v21 = v43;
    v20 = v44;
  }

  *a3 = v21;
  *(a3 + 16) = v20;
}

uint64_t sub_1DABE08AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE0930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_1DAA4D678(v4 + 56, v30);
  v8 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = v8;
    v26 = a4;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v10, 0);
    v11 = v29;
    v27 = a1;
    v12 = (a1 + 56);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      sub_1DACB71E4();
      if (v16 >= v15 >> 1)
      {
        sub_1DAA5859C((v15 > 1), v16 + 1, 1);
      }

      *(v29 + 16) = v16 + 1;
      v17 = v29 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 17;
      --v10;
    }

    while (v10);
    a1 = v27;
    a4 = v26;
    v8 = v25;
  }

  (*(v9 + 8))(v11, 1, v8, v9);

  v18 = *(v5 + 104);
  ObjectType = swift_getObjectType();
  (*(v18 + 24))(ObjectType, v18);
  v20 = sub_1DACB89D4();
  sub_1DACB89C4();

  __swift_destroy_boxed_opaque_existential_1(v30);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4 & 1;
  *(v21 + 40) = v5;
  sub_1DACB71E4();
  sub_1DACB71F4();
  v22 = sub_1DACB89D4();
  sub_1DABBEA00(0);
  v23 = sub_1DACB8A74();

  return v23;
}

uint64_t sub_1DABE0B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v70 = a5;
  v63 = a4;
  v75 = a3;
  v65 = a2;
  v8 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v16 = qword_1EE11FDD0;
  sub_1DACB71E4();
  v69 = v10;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v17 = v14;
  if (v16 != -1)
  {
LABEL_26:
    swift_once();
  }

  v18 = sub_1DACB8C94();
  __swift_project_value_buffer(v18, qword_1EE11FDD8);
  sub_1DACB71E4();
  v19 = sub_1DACB8C74();
  v20 = sub_1DACB9914();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v13;
  v68 = v12;
  v66 = v15;
  v64 = v17;
  v71 = a6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v78[0] = v12;
    *v22 = 136446210;
    sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v23 = sub_1DACB9134();
    v13 = v24;
    v25 = sub_1DAA7ABE4(v23, v24, v78);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_1DAA3F000, v19, v20, "Fetching headlines for feed ids %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v22, -1, -1);
  }

  v26 = v11 + 64;
  v15 = v78;
  v27 = 1 << *(v11 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v17 = v28 & *(v11 + 64);
  a6 = ((v27 + 63) >> 6);
  v74 = v75 + 32;
  sub_1DACB71E4();
  v29 = 0;
  v80 = MEMORY[0x1E69E7CC8];
  v72 = v11 + 64;
  v73 = v11;
LABEL_8:
  v32 = v29;
  if (!v17)
  {
    goto LABEL_10;
  }

  do
  {
    v29 = v32;
LABEL_13:
    v33 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v34 = v33 | (v29 << 6);
    v35 = *(v11 + 56);
    v36 = (*(v11 + 48) + 16 * v34);
    v37 = *v36;
    v38 = v36[1];
    v76 = *(v35 + 8 * v34);
    v12 = (*(v75 + 16) + 1);
    v39 = v74;
    while (1)
    {
      v13 = v39 + 136;
      v12 = (v12 - 1);
      if (!v12)
      {
        break;
      }

      v41 = *(v39 + 112);
      v78[6] = *(v39 + 96);
      v78[7] = v41;
      v79 = *(v39 + 128);
      v42 = *(v39 + 48);
      v78[2] = *(v39 + 32);
      v78[3] = v42;
      v43 = *(v39 + 80);
      v78[4] = *(v39 + 64);
      v78[5] = v43;
      v44 = *(v39 + 16);
      v78[0] = *v39;
      v78[1] = v44;
      if (v44 != __PAIR128__(v38, v37))
      {
        v40 = sub_1DACBA174();
        v39 = v13;
        if ((v40 & 1) == 0)
        {
          continue;
        }
      }

      v12 = v76;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DAA806E4(v78, &v77);
      v30 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v30;
      sub_1DACA5D84(v12, v78, isUniquelyReferenced_nonNull_native);
      sub_1DAA9B1C8(v78);

      v80 = v77;
      v26 = v72;
      v11 = v73;
      goto LABEL_8;
    }

    v32 = v29;
    v26 = v72;
    v11 = v73;
  }

  while (v17);
  while (1)
  {
LABEL_10:
    v29 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v29 >= a6)
    {
      break;
    }

    v17 = *(v26 + 8 * v29);
    ++v32;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  if (v70)
  {
    v46 = v71;
    v47 = v71[17];
    v48 = v71[18];
    __swift_project_boxed_opaque_existential_1(v71 + 14, v47);
    v49 = v62;
    (*(v48 + 8))(v47, v48);
    v50 = *(v49 + 64);
    result = sub_1DAA640AC(v49);
    if ((v50 & 0x8000000000000000) == 0)
    {
LABEL_24:
      MEMORY[0x1EEE9AC00](result);
      v51 = v65;
      v52 = v80;
      *(&v61 - 4) = v65;
      *(&v61 - 3) = v52;
      *(&v61 - 2) = v50;
      *(&v61 - 1) = v46;
      sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
      sub_1DACB8BB4();

      v53 = swift_allocObject();
      v55 = v68;
      v54 = v69;
      v53[2] = v51;
      v53[3] = v54;
      v56 = v66;
      v57 = v67;
      v53[4] = v55;
      v53[5] = v57;
      v58 = v64;
      v53[6] = v56;
      v53[7] = v58;
      sub_1DACB71F4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v80 = v58;
      v59 = sub_1DACB89D4();
      sub_1DABBEA00(0);
      v60 = sub_1DACB8A54();

      return v60;
    }

    __break(1u);
  }

  v46 = v71;
  v50 = v63;
  if ((v63 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABE117C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v25 = a2;
  v6 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DACB7CC4();
  v9 = *(v24 - 8);
  v10 = MEMORY[0x1EEE9AC00](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = a1[5];
  v23 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
  sub_1DACB7CB4();
  v17 = a4[17];
  v16 = a4[18];
  __swift_project_boxed_opaque_existential_1(a4 + 14, v17);
  (*(v16 + 8))(v17, v16);
  sub_1DAA640AC(v8);
  sub_1DACB7BF4();
  v18 = *(v9 + 8);
  v19 = v24;
  v18(v12, v24);
  v20 = sub_1DAB6F830(v25, v26, v14, v15, v23);
  v18(v14, v19);
  return v20;
}

uint64_t sub_1DABE1378(uint64_t *a1, void *a2, __int128 *a3)
{
  v6 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a2[17];
  v11 = a2[18];
  __swift_project_boxed_opaque_existential_1(a2 + 14, v10);
  (*(v11 + 8))(v10, v11);
  v12 = sub_1DABE3CFC();
  v13 = a3[1];
  v124 = *a3;
  v125 = v13;
  *&v126 = *(a3 + 4);
  v14 = a2[19];
  swift_getObjectType();
  sub_1DABE3D48(a3, &v114);
  swift_unknownObjectRetain();
  v15 = sub_1DAC1EFD0(&v124, v14, v12);
  v16 = MEMORY[0x1E69E6F90];
  sub_1DAA488F0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC7630;
  *(v17 + 32) = v8[45];
  v72 = v17 + 32;
  *(v17 + 40) = v8[46];
  *(v17 + 89) = 3;
  sub_1DAA488F0(0, &qword_1EE11F518, &type metadata for HeadlineCondition, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D40;
  *(v18 + 32) = 4;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0;
  *(v18 + 80) = 9;
  v70 = v8;
  *(v18 + 88) = v8[47];
  *(v18 + 136) = 5;
  *(v17 + 96) = v18;
  *(v17 + 153) = 5;
  *(v17 + 160) = 3;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0;
  *(v17 + 208) = 9;
  *(v17 + 217) = 4;
  *(v17 + 240) = 0u;
  *(v17 + 256) = 0u;
  *(v17 + 224) = 0u;
  *(v17 + 272) = 9;
  *(v17 + 281) = 4;
  *(v17 + 288) = v15;
  sub_1DAA4D678((a2 + 14), v17 + 296);
  *(v17 + 336) = 0;
  *(v17 + 345) = 4;
  v134 = *(a3 + 1);
  *(v17 + 352) = v134;
  *(v17 + 400) = 3;
  *(v17 + 409) = 4;
  v19 = MEMORY[0x1E69E7CC0];
  *(v17 + 416) = MEMORY[0x1E69E7CC0];
  *(v17 + 473) = 0;
  *(v17 + 480) = v19;
  *(v17 + 537) = 1;
  v20 = *(v9 + 16);
  v69 = v15;
  sub_1DABE3DA4(&v134, &v124);
  if (!v20)
  {
    v23 = v19;
    v24 = v71;
LABEL_14:
    v71 = v24;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v72 = *(v23 + 2);
    if (!v72)
    {
      v45 = MEMORY[0x1E69E7CC8];
LABEL_30:

      *&v124 = v45;
      sub_1DABE3F20(0, &qword_1EE11D400, sub_1DABBEA00);
      swift_allocObject();
      v67 = sub_1DACB8AE4();

      sub_1DAA640AC(v70);
      return v67;
    }

    v43 = 0;
    v44 = (v23 + 32);
    v45 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v43 >= *(v23 + 2))
      {
        goto LABEL_32;
      }

      v24 = v23;
      v46 = v44[1];
      v124 = *v44;
      v125 = v46;
      v47 = v44[2];
      v48 = v44[3];
      v49 = v44[5];
      v128 = v44[4];
      v129 = v49;
      v126 = v47;
      v127 = v48;
      v50 = v44[6];
      v51 = v44[7];
      v52 = v44[9];
      v132 = v44[8];
      v133 = v52;
      v130 = v50;
      v131 = v51;
      sub_1DAB5916C(&v125 + 8, &v94);
      v110 = v100;
      v111 = v101;
      *&v112 = v102;
      v106 = v96;
      v107 = v97;
      v108 = v98;
      v109 = v99;
      v104 = v94;
      v105 = v95;
      v53 = v124;
      sub_1DAB07228(&v124, &v114);
      sub_1DAB59344(&v125 + 8, &v114);
      sub_1DACB71E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v114 = v45;
      v55 = sub_1DAB095DC(&v104);
      v57 = v45[2];
      v58 = (v56 & 1) == 0;
      v59 = __OFADD__(v57, v58);
      v60 = v57 + v58;
      if (v59)
      {
        goto LABEL_33;
      }

      v61 = v56;
      if (v45[3] < v60)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v66 = v55;
      sub_1DAB66728();
      v55 = v66;
      v45 = v114;
      if (v61)
      {
LABEL_16:
        sub_1DAB7669C(&v125 + 8);
        goto LABEL_17;
      }

LABEL_25:
      v45[(v55 >> 6) + 8] |= 1 << v55;
      v63 = v45[6] + 136 * v55;
      *(v63 + 80) = v109;
      *(v63 + 96) = v110;
      *(v63 + 112) = v111;
      *(v63 + 128) = v112;
      *(v63 + 16) = v105;
      *(v63 + 32) = v106;
      *(v63 + 48) = v107;
      *(v63 + 64) = v108;
      *v63 = v104;
      *(v45[7] + 8 * v55) = MEMORY[0x1E69E7CC0];
      v64 = v45[2];
      v59 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v59)
      {
        goto LABEL_34;
      }

      v45[2] = v65;
LABEL_17:
      ++v43;
      sub_1DAC2899C(v53);
      sub_1DAB07030(&v124);
      v44 += 10;
      v23 = v24;
      if (v72 == v43)
      {
        goto LABEL_30;
      }
    }

    sub_1DAB61D98(v60, isUniquelyReferenced_nonNull_native);
    v45 = v114;
    v55 = sub_1DAB095DC(&v104);
    if ((v61 & 1) != (v62 & 1))
    {
      goto LABEL_36;
    }

LABEL_24:
    if (v61)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v21 = 0;
  v22 = (v9 + 32);
  v23 = MEMORY[0x1E69E7CC0];
  v24 = v71;
  while (v21 < *(v9 + 16))
  {
    v25 = v22[1];
    v124 = *v22;
    v125 = v25;
    v26 = v22[2];
    v27 = v22[3];
    v28 = v22[5];
    v128 = v22[4];
    v129 = v28;
    v126 = v26;
    v127 = v27;
    v29 = v22[6];
    v30 = v22[7];
    v31 = v22[9];
    v132 = v22[8];
    v133 = v31;
    v130 = v29;
    v131 = v30;
    v120 = v22[6];
    v121 = v22[7];
    v122 = v22[8];
    v123 = v22[9];
    v116 = v22[2];
    v117 = v22[3];
    v118 = v22[4];
    v119 = v22[5];
    v114 = *v22;
    v115 = v22[1];
    sub_1DAB07228(&v124, &v104);
    sub_1DABE1B90(&v114, v17, 1, &v104);
    if (v24)
    {
      goto LABEL_35;
    }

    v93[6] = v120;
    v93[7] = v121;
    v93[8] = v122;
    v93[9] = v123;
    v93[2] = v116;
    v93[3] = v117;
    v93[4] = v118;
    v93[5] = v119;
    v93[0] = v114;
    v93[1] = v115;
    sub_1DAB07030(v93);
    v100 = v110;
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v96 = v106;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v94 = v104;
    v95 = v105;
    if (sub_1DAB76AC8(&v94) == 1)
    {
      v89 = v110;
      v90 = v111;
      v91 = v112;
      v92 = v113;
      v85 = v106;
      v86 = v107;
      v87 = v108;
      v88 = v109;
      v83 = v104;
      v84 = v105;
      sub_1DABE3E2C(&v83);
    }

    else
    {
      v89 = v110;
      v90 = v111;
      v91 = v112;
      v92 = v113;
      v85 = v106;
      v86 = v107;
      v87 = v108;
      v88 = v109;
      v83 = v104;
      v84 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DAADBEDC(0, *(v23 + 2) + 1, 1, v23);
      }

      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      v34 = v23;
      if (v33 >= v32 >> 1)
      {
        v34 = sub_1DAADBEDC((v32 > 1), v33 + 1, 1, v23);
      }

      v77 = v87;
      v78 = v88;
      v75 = v85;
      v76 = v86;
      v81 = v91;
      v82 = v92;
      v79 = v89;
      v80 = v90;
      v73 = v83;
      v74 = v84;
      *(v34 + 2) = v33 + 1;
      v23 = v34;
      v35 = &v34[160 * v33];
      v36 = v74;
      *(v35 + 2) = v73;
      *(v35 + 3) = v36;
      v37 = v75;
      v38 = v76;
      v39 = v78;
      *(v35 + 6) = v77;
      *(v35 + 7) = v39;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;
      v40 = v79;
      v41 = v80;
      v42 = v82;
      *(v35 + 10) = v81;
      *(v35 + 11) = v42;
      *(v35 + 8) = v40;
      *(v35 + 9) = v41;
    }

    ++v21;
    v22 += 10;
    if (v20 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  v100 = v120;
  v101 = v121;
  v102 = v122;
  v103 = v123;
  v96 = v116;
  v97 = v117;
  v98 = v118;
  v99 = v119;
  v94 = v114;
  v95 = v115;
  sub_1DAB07030(&v94);

  __break(1u);
LABEL_36:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}