uint64_t sub_1D614F540(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

void sub_1D614F57C(uint64_t a1)
{
  if (!qword_1EDF281C8)
  {
    type metadata accessor for FormatPostPurchaseData(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF281C8);
    }
  }
}

uint64_t sub_1D614F5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D614F63C(unint64_t result)
{
  if ((result & 0xF000000000000007) != 0x7000000000000007)
  {
    return sub_1D614F658(result);
  }

  return v1;
}

double sub_1D614F658(unint64_t a1)
{
  if (((a1 >> 57) & 0xF8 | a1 & 7 | 0x20) != 0x7F)
  {
  }

  return result;
}

double sub_1D614F680(unint64_t result)
{
  if ((result & 0xF000000000000007) != 0x7000000000000007)
  {
    return sub_1D614F69C(result);
  }

  return v1;
}

double sub_1D614F69C(unint64_t a1)
{
  if (((a1 >> 57) & 0xF8 | a1 & 7 | 0x20) != 0x7F)
  {
  }

  return result;
}

uint64_t sub_1D614F6C4(uint64_t a1, uint64_t a2)
{
  sub_1D614F728();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D614F728()
{
  if (!qword_1EDF24810)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24810);
    }
  }
}

void sub_1D614F834()
{
  if (!qword_1EC884498)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884498);
    }
  }
}

void sub_1D614F890(uint64_t a1)
{
  if (!qword_1EC8844A0)
  {
    sub_1D614F728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8844A0);
    }
  }
}

uint64_t sub_1D614F8F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D614F964(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D726210C();
  v9 = v8;

  v64 = v7;
  v65 = v9;
  sub_1D725795C();
  sub_1D5BF4D9C();
  v10 = sub_1D7263A4C();
  v12 = v11;
  v13 = *(v3 + 8);
  v59 = v3 + 8;
  v60 = v2;
  v58 = v13;
  v13(v6, v2);

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_38:

    return;
  }

  v64 = v10;
  v65 = v12;
  v62 = 44;
  v63 = 0xE100000000000000;
  v15 = sub_1D72639FC();

  v16 = *(v15 + 16);
  if (!v16)
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v41 = 0;
    v42 = *(v18 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    while (v42 != v41)
    {
      if (v41 >= *(v18 + 16))
      {
        goto LABEL_40;
      }

      v44 = *(v18 + 8 * v41++ + 32);
      if (*(v44 + 16))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998EFC(0, *(v43 + 16) + 1, 1);
          v43 = v64;
        }

        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D6998EFC((v46 > 1), v47 + 1, 1);
          v43 = v64;
        }

        *(v43 + 16) = v47 + 1;
        *(v43 + 8 * v47 + 32) = v44;
      }
    }

    goto LABEL_38;
  }

  v61 = MEMORY[0x1E69E7CC0];
  sub_1D6998EFC(0, v16, 0);
  v17 = 0;
  v18 = v61;
  v50 = v15;
  v51 = v15 + 32;
  v49 = v16;
  while (v17 < *(v15 + 16))
  {
    v55 = v17;
    v56 = v18;
    v19 = (v51 + 16 * v17);
    v20 = v19[1];
    v64 = *v19;
    v65 = v20;
    v54 = v20;

    sub_1D725795C();
    v21 = sub_1D7263A4C();
    v23 = v22;
    v58(v6, v60);
    v64 = v21;
    v65 = v23;
    v62 = 32;
    v63 = 0xE100000000000000;
    v24 = sub_1D72639FC();

    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = v24 + 40;
      v52 = v25 - 1;
      v57 = MEMORY[0x1E69E7CC0];
      v53 = v24 + 40;
      while (2)
      {
        v28 = (v27 + 16 * v26);
        v29 = v26;
        while (1)
        {
          if (v29 >= *(v24 + 16))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v26 = v29 + 1;
          v30 = *v28;
          v64 = *(v28 - 1);
          v65 = v30;

          sub_1D725795C();
          v31 = sub_1D7263A4C();
          v33 = v32;
          v58(v6, v60);

          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            break;
          }

          v28 += 2;
          ++v29;
          if (v25 == v26)
          {
            goto LABEL_23;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1D5B858EC(0, *(v57 + 2) + 1, 1, v57);
        }

        v36 = *(v57 + 2);
        v35 = *(v57 + 3);
        if (v36 >= v35 >> 1)
        {
          v57 = sub_1D5B858EC((v35 > 1), v36 + 1, 1, v57);
        }

        v37 = v57;
        *(v57 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v31;
        *(v38 + 5) = v33;
        v27 = v53;
        if (v52 != v29)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:

    v18 = v56;
    v61 = v56;
    v40 = *(v56 + 16);
    v39 = *(v56 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1D6998EFC((v39 > 1), v40 + 1, 1);
      v18 = v61;
    }

    v17 = v55 + 1;
    *(v18 + 16) = v40 + 1;
    *(v18 + 8 * v40 + 32) = v57;
    v15 = v50;
    if (v17 == v49)
    {

      goto LABEL_29;
    }
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1D614FE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D614FED4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1D614FF30(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x746C75736572;
    v6 = 0x6D65726975716572;
    if (a1 != 8)
    {
      v6 = 0x74616D726F66;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74756F79616CLL;
    if (a1 != 5)
    {
      v7 = 0x6E4974756F79616CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x70756F7267;
    v2 = 0x73656D656874;
    if (a1 != 3)
    {
      v2 = 0x736D657469;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D615006C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D614FF30(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61500D0(uint64_t a1)
{
  sub_1D614FF30(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6150124(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D614FF30(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6150184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D61502D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D61501B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D614FF30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D61501F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D614FF30(*a1);
  v5 = v4;
  if (v3 == sub_1D614FF30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D615027C()
{
  result = qword_1EC8844A8;
  if (!qword_1EC8844A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844A8);
  }

  return result;
}

unint64_t sub_1D61502D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

NewsFeed::FormatFontDesign_optional __swiftcall FormatFontDesign.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFontDesign.rawValue.getter()
{
  v1 = 0x746C7561666564;
  v2 = 0x6669726573;
  if (*v0 != 2)
  {
    v2 = 0x636170736F6E6F6DLL;
  }

  if (*v0)
  {
    v1 = 0x6465646E756F72;
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

unint64_t sub_1D6150404()
{
  result = qword_1EC8844B0;
  if (!qword_1EC8844B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844B0);
  }

  return result;
}

uint64_t sub_1D6150458()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D615051C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61505CC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6150698(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE500000000000000;
  v5 = 0x6669726573;
  if (*v1 != 2)
  {
    v5 = 0x636170736F6E6F6DLL;
    v4 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v3 = 0x6465646E756F72;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D6150718(uint64_t a1)
{
  *(a1 + 8) = sub_1D6150748();
  result = sub_1D615079C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6150748()
{
  result = qword_1EC8844B8;
  if (!qword_1EC8844B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844B8);
  }

  return result;
}

unint64_t sub_1D615079C()
{
  result = qword_1EC8844C0;
  if (!qword_1EC8844C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844C0);
  }

  return result;
}

unint64_t sub_1D61507F0(uint64_t a1)
{
  result = sub_1D6150818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6150818()
{
  result = qword_1EC8844C8;
  if (!qword_1EC8844C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844C8);
  }

  return result;
}

unint64_t sub_1D615086C(void *a1)
{
  a1[1] = sub_1D61508A4();
  a1[2] = sub_1D61508F8();
  result = sub_1D6150404();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61508A4()
{
  result = qword_1EDF304C8;
  if (!qword_1EDF304C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304C8);
  }

  return result;
}

unint64_t sub_1D61508F8()
{
  result = qword_1EDF113C0;
  if (!qword_1EDF113C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113C0);
  }

  return result;
}

uint64_t sub_1D61509E8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[7];
      v41 = v7[6];
      v42[0] = v10;
      *(v42 + 9) = *(v7 + 121);
      v11 = v7[1];
      v12 = v7[3];
      v37 = v7[2];
      v38 = v12;
      v13 = v7[3];
      v14 = v7[5];
      v39 = v7[4];
      v40 = v14;
      v15 = v7[1];
      v36[0] = *v7;
      v36[1] = v15;
      v16 = v7[7];
      v34 = v41;
      v35[0] = v16;
      *(v35 + 9) = *(v7 + 121);
      v30 = v37;
      v31 = v13;
      v32 = v39;
      v33 = v9;
      v28 = v36[0];
      v29 = v11;
      sub_1D5ECF2C4(v36, &v20);
      v17 = a1(&v28);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v34;
      v27[0] = v35[0];
      *(v27 + 9) = *(v35 + 9);
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v20 = v28;
      v21 = v29;
      sub_1D5ECF320(&v20);
      v18 = v8-- == 0;
      v7 += 9;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v34;
    v27[0] = v35[0];
    *(v27 + 9) = *(v35 + 9);
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v20 = v28;
    v21 = v29;
    sub_1D5ECF320(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D6150B4C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1DA6FB460](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D7263BFC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

double FeedCursorContainer.tracker.getter(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1D6151884(a1);

  return result;
}

uint64_t FeedCursorContainer.cursor()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    type metadata accessor for FeedCursor(255, a2, a3, a4);
    sub_1D725BC0C();

    return sub_1D725BA6C();
  }

  else
  {
    type metadata accessor for FeedCursor(255, a2, a3, a4);
    sub_1D725BC0C();

    return sub_1D725BB0C();
  }
}

void FeedCursorContainer.walkCursorChain(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    a1(a3);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    FeedCursor.walkCursorChain(_:)(sub_1D6151968);
  }
}

unint64_t FeedCursorContainer.init(optionalCursor:)(unint64_t result)
{
  if (!result)
  {
    return 0xF000000000000007;
  }

  return result;
}

double FeedCursorContainer.serviceState.getter(unint64_t a1)
{
  sub_1D61519B4(a1);

  return result;
}

uint64_t FeedCursorContainer.feedJournal.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v3 = &qword_1EDFFC678;
  }

  else
  {
    v3 = (*a1 + 240);
  }

  v4 = (a1 + *v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t FeedCursorContainer.canExpand.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FeedCursorContainer.feedMode.getter(a1, a2, a3, &v6);
  if (v6 == 1)
  {

    return 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    result = 0;
    if ((v5 & 1) == 0)
    {
      if (a1 < 0)
      {
        return 1;
      }

      else
      {
        return FeedCursor.canExpand.getter() & 1;
      }
    }
  }

  return result;
}

uint64_t FeedCursorContainer.shouldWriteGroupsToDatabase.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  v2 = v1 > 6;
  v3 = 0x63u >> v1;
  if (v2)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_1D6150F80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D5E6D548;

  return sub_1D5EDBDA8();
}

Swift::Int_optional __swiftcall FeedCursorContainer.depthOfKnownGroup(_:)(Swift::String a1)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v9 = sub_1D6151144(v1, v2, v3);
  v19[0] = countAndFlagsBits;
  v19[1] = object;
  v18[2] = v19;
  v10 = sub_1D5BD0418(sub_1D5BD04E0, v18, v9);

  if (v10)
  {
    v11 = 0;
LABEL_13:
    v17 = 0;
    goto LABEL_16;
  }

  v12 = sub_1D6151340(v6, v5, v4);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v12 + 40);
    while (1)
    {
      v16 = *(v15 - 1) == countAndFlagsBits && *v15 == object;
      if (v16 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      ++v14;
      v15 += 2;
      if (v13 == v14)
      {
        goto LABEL_11;
      }
    }

    v11 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v11 = 0;
    v17 = 1;
  }

LABEL_16:
  result.value = v11;
  result.is_nil = v17;
  return result;
}

uint64_t sub_1D6151144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedDeferredCursorGroup(255, a2, a3, v14);
    v7 = sub_1D72627FC();

    WitnessTable = swift_getWitnessTable();
    v10 = MEMORY[0x1E69E6158];
    v11 = MEMORY[0x1E69E73E0];
    v12 = MEMORY[0x1E69E7410];
    v13 = sub_1D6151A54;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedCursorGroup(255, a2, a3, v6);
    v7 = sub_1D72627FC();

    WitnessTable = swift_getWitnessTable();
    v10 = MEMORY[0x1E69E6158];
    v11 = MEMORY[0x1E69E73E0];
    v12 = MEMORY[0x1E69E7410];
    v13 = sub_1D6151AEC;
  }

  v15 = sub_1D5B874E4(v13, KeyPath, v7, v10, v11, WitnessTable, v12, v9);

  return v15;
}

uint64_t sub_1D6151340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FeedDatabaseGroup(255, a2, a3, v6);
  v7 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D5B874E4(sub_1D61519FC, KeyPath, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

uint64_t sub_1D6151460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedDeferredCursorGroup(255, a2, a3, v14);
    v7 = sub_1D72627FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    v11 = MEMORY[0x1E69E73E0];
    v12 = MEMORY[0x1E69E7410];
    v13 = sub_1D6151A54;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedCursorGroup(255, a2, a3, v6);
    v7 = sub_1D72627FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    v11 = MEMORY[0x1E69E73E0];
    v12 = MEMORY[0x1E69E7410];
    v13 = sub_1D6151AEC;
  }

  v15 = sub_1D5B874E4(v13, KeyPath, v7, AssociatedTypeWitness, v11, WitnessTable, v12, v10);

  return v15;
}

uint64_t sub_1D6151728()
{
  v1 = sub_1D5BFB900(*v0);

  return v1;
}

uint64_t static FeedCursorContainer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      type metadata accessor for FeedDeferredCursor(0, a3, a4, a4);

      v6 = static FeedDeferredCursor.== infix(_:_:)(v8, a2 & 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    }
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for FeedCursor(0, a3, a4, a4);

    v6 = static FeedCursor.== infix(_:_:)(v5, a2);
LABEL_7:
    v7 = v6;

    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_1D6151830(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6151884(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v1 = &qword_1EDFFC638;
  }

  else
  {
    v1 = (*a1 + 280);
  }

  return *(a1 + *v1);
}

uint64_t sub_1D61518CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6150F80(a1);
}

double sub_1D6151968(uint64_t a1)
{
  v2 = *(v1 + 16);

  v2(v3);

  return result;
}

uint64_t sub_1D61519B4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v1 = &qword_1EDFFC668;
  }

  else
  {
    v1 = (*a1 + 264);
  }

  return *(a1 + *v1);
}

void sub_1D61519FC(uint64_t *a1)
{

  swift_getAtKeyPath();
}

uint64_t keypath_get_2Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = a3(0, *(a1 + a2 - 16), *(a1 + a2 - 8));
  result = a4(v7);
  *a5 = result;
  a5[1] = v9;
  return result;
}

uint64_t static FormatItemNodeActionBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a2 + 50);
  v14 = *(a1 + 50);
  v15 = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = *(a1 + 32);
  v12 = v2;
  v13 = v14;
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v3;
  v10 = v4;
  return _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0(v11, v8) & 1;
}

uint64_t sub_1D6151BA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a2 + 50);
  v14 = *(a1 + 50);
  v15 = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = *(a1 + 32);
  v12 = v2;
  v13 = v14;
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v3;
  v10 = v4;
  return static FormatCommandBinding.== infix(_:_:)(v11, v8) & 1;
}

unint64_t sub_1D6151C1C(uint64_t a1)
{
  result = sub_1D6151C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6151C44()
{
  result = qword_1EC8844D0;
  if (!qword_1EC8844D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844D0);
  }

  return result;
}

unint64_t sub_1D6151C98(void *a1)
{
  a1[1] = sub_1D6151CD0();
  a1[2] = sub_1D6151D24();
  result = sub_1D6151D78();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6151CD0()
{
  result = qword_1EDF225D0;
  if (!qword_1EDF225D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225D0);
  }

  return result;
}

unint64_t sub_1D6151D24()
{
  result = qword_1EDF0AFE8;
  if (!qword_1EDF0AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFE8);
  }

  return result;
}

unint64_t sub_1D6151D78()
{
  result = qword_1EC8844D8;
  if (!qword_1EC8844D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844D8);
  }

  return result;
}

uint64_t sub_1D6151DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1D725ABEC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1D5C8A4FC(0, &unk_1EDF17770, sub_1D6152704, MEMORY[0x1E69D6C08]);
  v3[9] = swift_task_alloc();
  v5 = sub_1D725A9BC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6151F58, 0, 0);
}

uint64_t sub_1D6151F58()
{
  v14 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v0[5];
    v7 = sub_1D5B9A6D8(v5, 0);
    v8 = sub_1D5B9A6EC(&v13, v7 + 4, v5, v6);
    v9 = v13;

    result = sub_1D5BA45DC(v9);
    if (v8 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[13] = v7;
  v12 = (*(v4 + 48) + **(v4 + 48));
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1D615212C;

  return v12(v7, v3, v4);
}

uint64_t sub_1D615212C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1D615251C;
  }

  else
  {

    v4 = sub_1D6152248;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void *sub_1D6152248()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C8A65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v17 = *(v0 + 120) + 32;
  v18 = (*(v0 + 56) + 16);
  v19 = v1 & 0xC000000000000001;
  v5 = v22;
  v20 = *(v0 + 88);
  v21 = v2;
  do
  {
    if (v19)
    {
      v6 = MEMORY[0x1DA6FB460](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      swift_unknownObjectRetain();
    }

    *(v0 + 16) = v6;
    v7 = qword_1EDF17D08;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = __swift_project_value_buffer(v9, qword_1EDF17D10);
    (*v18)(v8, v10, v9);
    v11 = swift_task_alloc();
    *v11 = sub_1D6152704();
    swift_getKeyPath();

    sub_1D725BF6C();
    sub_1D725A9AC();
    swift_unknownObjectRelease();
    v13 = *(v22 + 16);
    v12 = *(v22 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D5C8A65C((v12 > 1), v13 + 1, 1);
    }

    v14 = *(v0 + 96);
    v15 = *(v0 + 80);
    ++v4;
    *(v22 + 16) = v13 + 1;
    (*(v20 + 32))(v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13, v14, v15);
  }

  while (v21 != v4);

LABEL_16:
  **(v0 + 24) = v5;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D615251C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61525A4(uint64_t a1)
{
  v3 = *v1;
  sub_1D5C8A4FC(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return sub_1D725BA6C();
}

uint64_t sub_1D6152658(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D6151DDC(a1, v5, v4);
}

unint64_t sub_1D6152704()
{
  result = qword_1EDF3C750;
  if (!qword_1EDF3C750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C750);
  }

  return result;
}

double sub_1D61527E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v99 = a1;
  v91 = a3;
  sub_1D5F7BAC0();
  v98 = v4;
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v102 = &v86 - v9;
  v10 = type metadata accessor for DebugFormatCacheFile(0);
  v90 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = (&v86 - v15);
  sub_1D61547C8(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615474C(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v101 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v86 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v29 = *(aBlock + 16);

  v30 = *(v29 + 24);
  v97 = *(v29 + 16);
  v105 = v30;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v31 = *(aBlock + 16);

  v32 = (v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v33 = v32[1];
  v96 = *v32;
  v100 = v33;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v34 = *(aBlock + 16);

  v35 = (v34 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  swift_beginAccess();
  v36 = v35[1];
  v95 = *v35;
  v104 = v36;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v37 = *(aBlock + 16);

  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  v39 = *(v37 + v38);

  if (v39 == 4)
  {
    v106 = 0xE800000000000000;
    v94 = 0x6C61636974726576;
  }

  else
  {
    aBlock = 0;
    v109 = 0xE000000000000000;
    MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
    v107 = v39;
    sub_1D7263F9C();
    v94 = aBlock;
    v106 = v109;
  }

  *v20 = sub_1D726125C();
  *(v20 + 1) = 0;
  v20[16] = 1;
  sub_1D6155418(0, v40);
  sub_1D615338C(v99, a2, &v20[*(v41 + 44)]);
  v42 = sub_1D72615EC();
  sub_1D61547FC(0);
  v44 = &v20[*(v43 + 36)];
  *v44 = v42;
  *(v44 + 8) = xmmword_1D72A38C0;
  *(v44 + 24) = xmmword_1D72A38C0;
  v44[40] = 0;
  v45 = &v20[*(v17 + 36)];
  *v45 = xmmword_1D7286690;
  *(v45 + 1) = xmmword_1D72866A0;
  v45[32] = 0;
  sub_1D7260EDC();
  sub_1D61552B8();
  sub_1D72617DC();
  sub_1D61556D4(v20, sub_1D61547C8);
  v46 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v112 = sub_1D6F34AFC;
  v113 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v110 = sub_1D6E0CD34;
  v111 = &block_descriptor_26;
  v47 = _Block_copy(&aBlock);
  [v46 initWithDynamicProvider_];
  _Block_release(v47);

  aBlock = sub_1D726189C();
  *&v28[*(v22 + 36)] = sub_1D726199C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v48 = *(aBlock + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v49 = *(aBlock + 16);

  v51 = *(v49 + 16);
  v50 = *(v49 + 24);

  if (!*(v48 + 16))
  {
    v55 = v28;

    goto LABEL_11;
  }

  v52 = sub_1D6D62CD8(v51, v50, 3);
  v54 = v53;

  v55 = v28;
  if ((v54 & 1) == 0)
  {
LABEL_11:

    v64 = 0;
    v63 = 0;
    v90 = 0;
    v92 = 0;
    LODWORD(v99) = 0;
    goto LABEL_12;
  }

  v56 = *(v48 + 56) + *(v90 + 72) * v52;
  v57 = v92;
  sub_1D6155514(v56, v92, type metadata accessor for DebugFormatCacheFile);

  v58 = v57;
  v59 = v88;
  sub_1D61554B0(v58, v88);
  v60 = *v59;
  v61 = v59[1];
  aBlock = 47;
  v109 = 0xE100000000000000;
  MEMORY[0x1DA6F9910](v60, v61);
  v90 = aBlock;
  v92 = v109;
  if (sub_1D6154278(v99, a2))
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  LODWORD(v99) = v62;
  sub_1D615557C(v59, type metadata accessor for DebugFormatCacheFile);
  v63 = 0xE600000000000000;
  v64 = 0x656372756F53;
LABEL_12:
  v88 = v63;
  aBlock = 0;
  LOBYTE(v109) = 1;
  sub_1D7260EDC();
  v65 = v102;
  sub_1D72617DC();
  v89 = v55;
  v66 = v101;
  sub_1D5D7E650(v55, v101);
  v67 = v93;
  v68 = *(v93 + 16);
  v69 = v98;
  v68(v103, v65, v98);
  v70 = v91;
  *v91 = 0x696669746E656449;
  v70[1] = 0xEA00000000007265;
  v71 = v105;
  v70[2] = v97;
  v70[3] = v71;
  *(v70 + 32) = 2;
  v70[5] = 1701667150;
  v70[6] = 0xE400000000000000;
  v72 = v100;
  v70[7] = v96;
  v70[8] = v72;
  *(v70 + 72) = 2;
  v70[10] = 0x7470697263736544;
  v70[11] = 0xEB000000006E6F69;
  v73 = v104;
  v70[12] = v95;
  v70[13] = v73;
  *(v70 + 112) = 2;
  v70[15] = 0x6F69746365726944;
  v70[16] = 0xE90000000000006ELL;
  v74 = v106;
  v70[17] = v94;
  v70[18] = v74;
  *(v70 + 152) = 2;
  sub_1D6154694(0);
  v76 = v75;
  sub_1D5D7E650(v66, v70 + *(v75 + 96));
  v77 = v70 + *(v76 + 112);
  v87 = v64;
  *v77 = v64;
  *(v77 + 1) = v63;
  v78 = v90;
  v79 = v92;
  *(v77 + 2) = v90;
  *(v77 + 3) = v79;
  v77[32] = v99;
  v80 = v70 + *(v76 + 128);
  v81 = v103;
  v68(v80, v103, v69);

  v82 = v87;
  v83 = v88;
  sub_1D60531A0(v87, v88);
  v84 = *(v67 + 8);
  v84(v102, v69);
  sub_1D61556D4(v89, sub_1D615474C);
  v84(v81, v69);
  sub_1D5D559EC(v82, v83, v78, v79);
  sub_1D61556D4(v101, sub_1D615474C);

  return result;
}

void sub_1D615338C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a2;
  v78 = a1;
  v95 = a3;
  v3 = sub_1D726143C();
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v92 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D72614DC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v6);
  v76 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154B38(0);
  v85 = v8;
  v83 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154A84(0, v10);
  v84 = v12;
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v81 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154A08(0);
  v86 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615497C(0, &qword_1EC884528, sub_1D6154A08, sub_1D6155174, MEMORY[0x1E697CF10]);
  v91 = v19;
  v90 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v96 = &v75 - v24;
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v75 - v27;
  sub_1D726121C();
  v29 = sub_1D726170C();
  v31 = v30;
  v33 = v32;
  v34 = sub_1D726163C();
  (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
  sub_1D726167C();
  sub_1D6155640(v28);
  v35 = sub_1D72616DC();
  v37 = v36;
  v39 = v38;

  sub_1D5F26348(v29, v31, v33 & 1);

  sub_1D726187C();
  v40 = sub_1D72616BC();
  v42 = v41;
  v77 = v43;
  v80 = v44;

  v45 = v39 & 1;
  v46 = v75;
  sub_1D5F26348(v35, v37, v45);
  v47 = v76;

  sub_1D72615AC();
  v97 = v78;
  v98 = v79;
  sub_1D6154BCC(0);
  sub_1D615579C(&qword_1EC8845B0, sub_1D6154BCC, MEMORY[0x1E69817F8]);
  sub_1D7260E7C();
  sub_1D72614CC();
  sub_1D5B58338(0, &qword_1EC884608, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v49 = sub_1D72615CC();
  *(inited + 32) = v49;
  v50 = sub_1D72615AC();
  *(inited + 33) = v50;
  sub_1D72615BC();
  sub_1D72615BC();
  if (sub_1D72615BC() != v49)
  {
    sub_1D72615BC();
  }

  sub_1D72615BC();
  if (sub_1D72615BC() != v50)
  {
    sub_1D72615BC();
  }

  sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38, MEMORY[0x1E697BE60]);
  v51 = v81;
  v52 = v85;
  sub_1D72617EC();
  (*(v87 + 8))(v47, v88);
  (*(v83 + 8))(v46, v52);
  LOBYTE(v52) = sub_1D72615DC();
  sub_1D7260E5C();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  (*(v82 + 32))(v18, v51, v84);
  v61 = v86;
  v62 = &v18[*(v86 + 36)];
  *v62 = v52;
  *(v62 + 1) = v54;
  *(v62 + 2) = v56;
  *(v62 + 3) = v58;
  *(v62 + 4) = v60;
  v62[40] = 0;
  v63 = sub_1D72615DC();
  v64 = v92;
  sub_1D726142C();
  v65 = sub_1D6155174();
  v66 = v96;
  MEMORY[0x1DA6F8E40](v63, 0x4030000000000000, 0, v64, v61, v65);
  (*(v93 + 8))(v64, v94);
  sub_1D61556D4(v18, sub_1D6154A08);
  v99 = v77 & 1;
  v67 = v90;
  v68 = *(v90 + 16);
  v69 = v89;
  v70 = v91;
  v71.n128_f64[0] = v68(v89, v66, v91);
  LOBYTE(v63) = v99;
  v72 = v95;
  *v95 = v40;
  v72[1] = v42;
  *(v72 + 16) = v63;
  v72[3] = v80;
  sub_1D61548D0(0, v71);
  v68(v72 + *(v73 + 48), v69, v70);
  sub_1D5F26358(v40, v42, v63);
  v74 = *(v67 + 8);

  v74(v96, v70);
  v74(v69, v70);
  sub_1D5F26348(v40, v42, v99);
}

uint64_t sub_1D6153CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1D72611CC();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  sub_1D6155734(0);
  return sub_1D6153D30(a1, a2);
}

uint64_t sub_1D6153D30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v2 = *(v9 + 2);

  v3 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  swift_beginAccess();
  v4 = *(v2 + v3);

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1D5B9A6D8(*(v4 + 16), 0);
  v7 = sub_1D5B9A6EC(&v9, v6 + 4, v5, v4);
  sub_1D5BA45DC(v9);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = v6;

  sub_1D5F81CCC(&v9);

  swift_getKeyPath();
  sub_1D5B58338(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D6154D18(0, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
  sub_1D6154F28();
  sub_1D615501C();
  return sub_1D72619DC();
}

double sub_1D6153F5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v42 - v7;
  v9 = *a1;
  v10 = a1[1];
  v43 = v9;
  v44 = v10;
  sub_1D5BF4D9C();

  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1D726163C();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_1D726167C();
  sub_1D6155640(v8);
  v17 = sub_1D72616DC();
  v19 = v18;
  v21 = v20;

  sub_1D5F26348(v11, v13, v15 & 1);

  LODWORD(v43) = sub_1D726144C();
  v22 = sub_1D72616CC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1D5F26348(v17, v19, v21 & 1);

  LOBYTE(v13) = sub_1D72615EC();
  LOBYTE(v19) = v26 & 1;
  LOBYTE(v43) = v26 & 1;
  v45 = 0;
  sub_1D6154D18(0, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
  v30 = a2 + *(v29 + 36);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1D726123C();
  (*(*(v32 - 8) + 104))(v30, v31, v32);
  v33 = [objc_opt_self() tertiarySystemBackgroundColor];
  v34 = sub_1D726189C();
  sub_1D6154E78(0);
  *(v30 + *(v35 + 52)) = v34;
  *(v30 + *(v35 + 56)) = 256;
  v36 = sub_1D7261A5C();
  v38 = v37;
  sub_1D6154DE4(0);
  v40 = (v30 + *(v39 + 36));
  *v40 = v36;
  v40[1] = v38;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v19;
  *(a2 + 24) = v28;
  *(a2 + 32) = v13;
  result = 4.0;
  *(a2 + 40) = xmmword_1D72A38D0;
  *(a2 + 56) = xmmword_1D72A38D0;
  *(a2 + 72) = 0;
  return result;
}

BOOL sub_1D6154278(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (!v15)
  {
    return 0;
  }

  if (*(v15 + 16))
  {
    sub_1D6155514(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, type metadata accessor for DebugFormatCompilerResultEntry);

    v7 = *&v6[*(v2 + 24)];

    sub_1D615557C(v6, type metadata accessor for DebugFormatCompilerResultEntry);
    v8 = 0;
    v9 = *(v7 + 16);
    do
    {
      v10 = v9 != v8;
      if (v9 == v8)
      {
        break;
      }

      v11 = *(type metadata accessor for DebugFormatCacheFile(0) - 8);
      v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8++;
    }

    while (*(v12 + 24) != 1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

double sub_1D615446C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7475626972747441;
  *(a1 + 8) = 0xEA00000000007365;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D61544A4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 1;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 1;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D61555DC(0, &qword_1EC8844E0, sub_1D6154694, MEMORY[0x1E6981F40]);
  sub_1D5F7BB40();
  sub_1D6155254(&qword_1EC8845F8, &qword_1EC8844E0, sub_1D6154694, v6);

  return sub_1D7260FFC();
}

void sub_1D6154694(uint64_t a1)
{
  if (!qword_1EC8844E8)
  {
    sub_1D615474C(255);
    sub_1D5B58338(255, &qword_1EC8845F0, &type metadata for DebugFormatRowView, MEMORY[0x1E69E6720]);
    sub_1D5F7BAC0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC8844E8);
    }
  }
}

void sub_1D615481C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884510)
  {
    sub_1D61555DC(255, &qword_1EC884518, sub_1D61548D0, MEMORY[0x1E6981F40]);
    sub_1D6155254(&qword_1EC8845C8, &qword_1EC884518, sub_1D61548D0, v2);
    v3 = sub_1D726198C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC884510);
    }
  }
}

void sub_1D61548D0(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884520)
  {
    sub_1D615497C(255, &qword_1EC884528, sub_1D6154A08, sub_1D6155174, MEMORY[0x1E697CF10]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884520);
    }
  }
}

void sub_1D615497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1D6154A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726101C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6154A84(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884538)
  {
    sub_1D6154B38(255);
    sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38, MEMORY[0x1E697BE60]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884538);
    }
  }
}

void sub_1D6154B38(uint64_t a1)
{
  if (!qword_1EC884540)
  {
    sub_1D6154BCC(255);
    sub_1D615579C(&qword_1EC8845B0, sub_1D6154BCC, MEMORY[0x1E69817F8]);
    v1 = sub_1D7260E6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884540);
    }
  }
}

void sub_1D6154BCC(uint64_t a1)
{
  if (!qword_1EC884548)
  {
    sub_1D6154C30(255);
    sub_1D6154FA4();
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884548);
    }
  }
}

void sub_1D6154C30(uint64_t a1)
{
  if (!qword_1EC884550)
  {
    sub_1D5B58338(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6154D18(255, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
    sub_1D6154F28();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884550);
    }
  }
}

void sub_1D6154D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6154D8C()
{
  if (!qword_1EC884560)
  {
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884560);
    }
  }
}

void sub_1D6154DE4(uint64_t a1)
{
  if (!qword_1EC884568)
  {
    sub_1D6154E78(255);
    sub_1D615579C(&qword_1EC884580, sub_1D6154E78, MEMORY[0x1E697DB78]);
    v1 = sub_1D726134C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884568);
    }
  }
}

void sub_1D6154E78(uint64_t a1)
{
  if (!qword_1EC884570)
  {
    sub_1D72619CC();
    sub_1D615579C(&qword_1EC884578, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    v1 = sub_1D7260E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884570);
    }
  }
}

unint64_t sub_1D6154F28()
{
  result = qword_1EC884588;
  if (!qword_1EC884588)
  {
    sub_1D5B58338(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884588);
  }

  return result;
}

unint64_t sub_1D6154FA4()
{
  result = qword_1EC884590;
  if (!qword_1EC884590)
  {
    sub_1D6154C30(255);
    sub_1D615501C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884590);
  }

  return result;
}

unint64_t sub_1D615501C()
{
  result = qword_1EC884598;
  if (!qword_1EC884598)
  {
    sub_1D6154D18(255, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
    sub_1D61550FC();
    sub_1D615579C(&qword_1EC8845A8, sub_1D6154DE4, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884598);
  }

  return result;
}

unint64_t sub_1D61550FC()
{
  result = qword_1EC8845A0;
  if (!qword_1EC8845A0)
  {
    sub_1D6154D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845A0);
  }

  return result;
}

unint64_t sub_1D6155174()
{
  result = qword_1EC8845C0;
  if (!qword_1EC8845C0)
  {
    sub_1D6154A08(255);
    sub_1D6154B38(255);
    sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845C0);
  }

  return result;
}

uint64_t sub_1D6155254(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D61555DC(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61552B8()
{
  result = qword_1EC8845D0;
  if (!qword_1EC8845D0)
  {
    sub_1D61547C8(255);
    sub_1D6155368();
    sub_1D615579C(&qword_1EC8845E8, sub_1D5F7B9E4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845D0);
  }

  return result;
}

unint64_t sub_1D6155368()
{
  result = qword_1EC8845D8;
  if (!qword_1EC8845D8)
  {
    sub_1D61547FC(255);
    sub_1D615579C(&qword_1EC8845E0, sub_1D615481C, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845D8);
  }

  return result;
}

void sub_1D6155418(uint64_t a1, __n128 a2)
{
  if (!qword_1EC884600)
  {
    sub_1D61555DC(255, &qword_1EC884518, sub_1D61548D0, MEMORY[0x1E6981F40]);
    v2 = sub_1D7260F3C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC884600);
    }
  }
}

uint64_t sub_1D61554B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6155514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D615557C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61555DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6155640(uint64_t a1)
{
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61556D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6155734(uint64_t a1)
{
  if (!qword_1EC884610)
  {
    sub_1D6154C30(255);
    v1 = sub_1D7260F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884610);
    }
  }
}

uint64_t sub_1D615579C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D61557E4(uint64_t a1)
{
  if (!qword_1EC884620)
  {
    sub_1D61555DC(255, &qword_1EC8844E0, sub_1D6154694, MEMORY[0x1E6981F40]);
    sub_1D5F7BB40();
    sub_1D6155254(&qword_1EC8845F8, &qword_1EC8844E0, sub_1D6154694, v1);
    v2 = sub_1D726100C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC884620);
    }
  }
}

uint64_t static FormatSlotItemTagFilterNotCondition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v5);
  v3 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v6, &v5);
  sub_1D5F33D8C(v5);
  sub_1D5F33D8C(v6);
  return v3 & 1;
}

double FormatSlotItemTagFilterNotCondition.condition.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5F33D5C(v2);
}

unint64_t sub_1D6155928(uint64_t a1)
{
  result = sub_1D6155950();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6155950()
{
  result = qword_1EC884628;
  if (!qword_1EC884628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884628);
  }

  return result;
}

unint64_t sub_1D61559A4(void *a1)
{
  a1[1] = sub_1D61559DC();
  a1[2] = sub_1D6155A30();
  result = sub_1D6155A84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61559DC()
{
  result = qword_1EC884630;
  if (!qword_1EC884630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884630);
  }

  return result;
}

unint64_t sub_1D6155A30()
{
  result = qword_1EC884638;
  if (!qword_1EC884638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884638);
  }

  return result;
}

unint64_t sub_1D6155A84()
{
  result = qword_1EC884640;
  if (!qword_1EC884640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884640);
  }

  return result;
}

uint64_t sub_1D6155B08(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v5);
  v3 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v6, &v5);
  sub_1D5F33D8C(v5);
  sub_1D5F33D8C(v6);
  return v3 & 1;
}

uint64_t FeedClusteringResult.topicClusteringResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

NewsFeed::FeedClusteringResult __swiftcall FeedClusteringResult.init(channelClusteringResult:topicClusteringResult:inventoryItemsByTagID:)(NewsFeed::FeedChannelClusteringResult channelClusteringResult, NewsFeed::FeedTopicClusteringResult topicClusteringResult, Swift::OpaquePointer inventoryItemsByTagID)
{
  *v3 = *channelClusteringResult.clusters._rawValue;
  *(v3 + 8) = *topicClusteringResult.clusters._rawValue;
  *(v3 + 24) = topicClusteringResult.orphanedItems._rawValue;
  result.topicClusteringResult = topicClusteringResult;
  result.inventoryItemsByTagID = inventoryItemsByTagID;
  result.channelClusteringResult = channelClusteringResult;
  return result;
}

unint64_t static FeedClusteringResult.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D605D378(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = result;
  return result;
}

uint64_t FeedClusteringResult.scoredItems.getter()
{
  FeedChannelClusteringResult.scoredItems.getter();
  FeedTopicClusteringResult.scoredItems.getter();
  sub_1D6985340(v0);
  sub_1D6155CCC();
  sub_1D6155D1C();
  sub_1D6155D74();
  v1 = sub_1D726239C();

  return v1;
}

void sub_1D6155CCC()
{
  if (!qword_1EDF052B0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF052B0);
    }
  }
}

unint64_t sub_1D6155D1C()
{
  result = qword_1EDF052A0;
  if (!qword_1EDF052A0)
  {
    sub_1D6155CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052A0);
  }

  return result;
}

unint64_t sub_1D6155D74()
{
  result = qword_1EDF154E0;
  if (!qword_1EDF154E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF154E0);
  }

  return result;
}

id FCSportsProviding.navigationBarBackgroundColor.getter()
{
  if ([v0 isSportsEvent])
  {
    v1 = [objc_opt_self() clearColor];

    return v1;
  }

  else
  {
    v3 = [v0 asSports];
    if (v3 && (v4 = [v3 sportsTheme], swift_unknownObjectRelease(), v4) && (v5 = objc_msgSend(v4, sel_sportsPrimaryColor), swift_unknownObjectRelease(), v5))
    {
      v6 = [v5 ne_color];

      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v15[4] = sub_1D5FCF5F4;
      v15[5] = v7;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1D6E0CD34;
      v15[3] = &block_descriptor_27;
      v9 = _Block_copy(v15);
      v10 = [v8 initWithDynamicProvider_];
      _Block_release(v9);

      return v10;
    }

    else
    {
      v11 = objc_opt_self();
      v12 = [v11 secondarySystemBackgroundColor];
      v13 = [v11 systemBackgroundColor];
      v14 = [v11 ts:v12 dynamicColor:v13 withDarkStyleVariant:?];

      return v14;
    }
  }
}

id FCSportsProviding.navigationBarForegroundColor.getter()
{
  if ([v0 isSportsEvent])
  {
    v1 = [objc_opt_self() whiteColor];

    return v1;
  }

  else
  {
    v3 = FCSportsProviding.navigationBarBackgroundColor.getter();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v8[4] = sub_1D61561B0;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D6E0CD34;
    v8[3] = &block_descriptor_6_0;
    v6 = _Block_copy(v8);
    v7 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    return v7;
  }
}

uint64_t sub_1D6156160(uint64_t a1, id a2)
{
  v2 = [a2 resolvedColorWithTraitCollection_];
  v3 = sub_1D726355C();

  return v3;
}

uint64_t FormatBindingTextExpressionLogic.Compare.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBindingTextExpressionLogic.Binding.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1D5FD78CC(v7, v6);
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO0D0V2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v25[0] = *a1;
  v25[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v25[2] = a1[2];
  v5 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v5;
  v7 = *a2;
  v6 = *(a2 + 16);
  v27[2] = *(a2 + 32);
  v21 = v4;
  v22 = v3;
  v23 = a1[2];
  v26 = *(a1 + 24);
  v8 = *(a1 + 50);
  v28 = *(a2 + 48);
  v9 = *(a2 + 50);
  v24 = *(a1 + 24);
  v17 = v7;
  v18 = v6;
  v19 = *(a2 + 32);
  v20 = *(a2 + 48);
  sub_1D5FD78CC(v25, v31);
  sub_1D5FD78CC(v27, v31);
  v10 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v21, &v17);
  v29[0] = v17;
  v29[1] = v18;
  v29[2] = v19;
  v30 = v20;
  sub_1D5FD7B18(v29);
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = v23;
  v32 = v24;
  sub_1D5FD7B18(v31);
  if (v10)
  {
    LOBYTE(v21) = v8;
    LOBYTE(v17) = v9;
    v11 = FormatOperator.rawValue.getter();
    v13 = v12;
    if (v11 == FormatOperator.rawValue.getter() && v13 == v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1D72646CC();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 32);
  v6 = *(a1 + 50);
  v58 = *(a1 + 48);
  v7 = v58 | (v6 << 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 50);
  v15 = *(a2 + 48);
  v16 = v15 | (v14 << 16);
  v55[0] = v3;
  v55[1] = v2;
  v56 = v5;
  v57 = v4;
  v59 = v6;
  v60 = v8;
  v61 = v9;
  v62 = v11;
  v63 = v10;
  v64 = v13;
  v65 = v12;
  v67 = v14;
  v17 = v6 >> 5;
  v66 = v15;
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if ((v16 & 0xE00000) != 0x200000)
        {
          goto LABEL_30;
        }
      }

      else if ((v16 & 0xE00000) != 0x400000)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else if ((v16 & 0xFFFFFF) >= 0x200000)
    {
      goto LABEL_30;
    }

    v42 = v5;
    v45 = v4;
    if (v3 != v8 || v2 != v9)
    {
      v33 = sub_1D72646CC();
      v34 = v12;
      v22 = v33;
      sub_1D5CA8444(v8, v9, v11, v10, v13, v34, v16);
      sub_1D5CA8444(v3, v2, v42, *(&v42 + 1), v45, *(&v45 + 1), v7);
      sub_1D6157558(v55);
      return v22 & 1;
    }

    sub_1D5CA8444(v3, v2, v11, v10, v13, v12, v15 | (v14 << 16));
    sub_1D5CA8444(v3, v2, v42, *(&v42 + 1), v45, *(&v45 + 1), v7);
    goto LABEL_22;
  }

  if (v17 > 4)
  {
    if (v17 == 5)
    {
      if ((v16 & 0xE00000) == 0xA00000)
      {
        *&v50 = v3;
        *(&v50 + 1) = v2;
        v51 = v5;
        v52 = v4;
        v53 = v7;
        v54 = (v7 & 0x1FFFFF) >> 16;
        v47[0] = v8;
        v47[1] = v9;
        v47[2] = v11;
        v47[3] = v10;
        v47[4] = v13;
        v47[5] = v12;
        v48 = v15;
        v49 = BYTE2(v16) & 0x1F;
        v41 = v5;
        v44 = v4;
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        v40 = v12;
        v22 = _s8NewsFeed32FormatBindingTextExpressionLogicO0D0V2eeoiySbAE_AEtFZ_0(&v50, v47);
        sub_1D6157558(v55);
        sub_1D5CA8488(v8, v9, v11, v10, v13, v40, v16);
        sub_1D5CA8488(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        return v22 & 1;
      }

      *&v50 = v3;
      *(&v50 + 1) = v2;
      v51 = v5;
      v52 = v4;
      v53 = v7;
      v54 = (v7 & 0x1FFFFF) >> 16;
      sub_1D6157520(&v50, v47);
      goto LABEL_31;
    }

    if (v5 | v2 | v3 | v4 | *(&v5 + 1) | *(&v4 + 1) || v7 != 12582912)
    {
      if ((v16 & 0xE00000) != 0xC00000 || (v16 & 0xFFFFFF) != 0xC00000 || v8 != 1 || v11 | v9 | v10 | v13 | v12)
      {
        goto LABEL_31;
      }
    }

    else if ((v16 & 0xE00000) != 0xC00000 || v11 | v9 | v8 | v10 | v13 | v12 || (v16 & 0xFFFFFF) != 0xC00000)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_1D6157558(v55);
    v22 = 1;
    return v22 & 1;
  }

  if (v17 != 3)
  {
    if ((v16 & 0xE00000) == 0x800000)
    {
      v43 = *(&v5 + 1);
      v46 = v4;
      v39 = v5;
      if (v3 == v8 && v2 == v9 || (sub_1D72646CC() & 1) != 0)
      {
        LOBYTE(v50) = v39;
        LOBYTE(v47[0]) = v11;
        v36 = FormatOperator.rawValue.getter();
        v38 = v23;
        if (v36 == FormatOperator.rawValue.getter() && v38 == v24)
        {
          v37 = 1;
        }

        else
        {
          v37 = sub_1D72646CC();
        }

        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        sub_1D6157558(v55);

        sub_1D5CA8488(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8488(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        if (v37)
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
      v28 = v43;
      v30 = *(&v46 + 1);
      v29 = v46;
      v25 = v3;
      v26 = v2;
      v27 = v39;
      v31 = v7;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if ((v16 & 0xE00000) != 0x600000)
  {
LABEL_31:
    v25 = v8;
    v26 = v9;
    v27 = v11;
    v28 = v10;
    v29 = v13;
    v30 = v12;
    v31 = v16;
LABEL_32:
    sub_1D5CA8444(v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_33;
  }

  if (v3 != v8)
  {
LABEL_33:
    sub_1D6157558(v55);
    goto LABEL_34;
  }

  LOBYTE(v50) = v2;
  LOBYTE(v47[0]) = v9;
  v18 = FormatOperator.rawValue.getter();
  v20 = v19;
  if (v18 != FormatOperator.rawValue.getter() || v20 != v21)
  {
    v35 = sub_1D72646CC();
    sub_1D6157558(v55);

    if (v35)
    {
LABEL_53:
      v22 = 1;
      return v22 & 1;
    }

LABEL_34:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D6157558(v55);

  v22 = 1;
  return v22 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO6LengthV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = FormatOperator.rawValue.getter();
    v4 = v3;
    if (v2 == FormatOperator.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1D72646CC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO7CompareV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v4 = FormatOperator.rawValue.getter();
    v6 = v5;
    if (v4 == FormatOperator.rawValue.getter() && v6 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1D72646CC();
    }
  }

  return v3 & 1;
}

unint64_t sub_1D6156CBC(uint64_t a1)
{
  result = sub_1D6156CE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6156CE4()
{
  result = qword_1EC884648;
  if (!qword_1EC884648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884648);
  }

  return result;
}

unint64_t sub_1D6156D78()
{
  result = qword_1EC884650;
  if (!qword_1EC884650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884650);
  }

  return result;
}

unint64_t sub_1D6156DCC()
{
  result = qword_1EC884658;
  if (!qword_1EC884658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884658);
  }

  return result;
}

unint64_t sub_1D6156E20()
{
  result = qword_1EC884660;
  if (!qword_1EC884660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884660);
  }

  return result;
}

unint64_t sub_1D6156E74(uint64_t a1)
{
  result = sub_1D6156E9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6156E9C()
{
  result = qword_1EC884668;
  if (!qword_1EC884668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884668);
  }

  return result;
}

unint64_t sub_1D6156F30()
{
  result = qword_1EDF1F258;
  if (!qword_1EDF1F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F258);
  }

  return result;
}

unint64_t sub_1D6156F84()
{
  result = qword_1EDF082A0;
  if (!qword_1EDF082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082A0);
  }

  return result;
}

unint64_t sub_1D6156FD8()
{
  result = qword_1EC884670;
  if (!qword_1EC884670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884670);
  }

  return result;
}

unint64_t sub_1D615702C(uint64_t a1)
{
  result = sub_1D6157054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6157054()
{
  result = qword_1EC884678;
  if (!qword_1EC884678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884678);
  }

  return result;
}

unint64_t sub_1D61570E8()
{
  result = qword_1EDF082B0;
  if (!qword_1EDF082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082B0);
  }

  return result;
}

unint64_t sub_1D615713C()
{
  result = qword_1EDF082B8;
  if (!qword_1EDF082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082B8);
  }

  return result;
}

unint64_t sub_1D6157190()
{
  result = qword_1EC884680;
  if (!qword_1EC884680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884680);
  }

  return result;
}

unint64_t sub_1D61571E4(uint64_t a1)
{
  result = sub_1D615720C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615720C()
{
  result = qword_1EC884688;
  if (!qword_1EC884688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884688);
  }

  return result;
}

uint64_t sub_1D61572A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61572F4()
{
  result = qword_1EC884690;
  if (!qword_1EC884690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884690);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed32FormatBindingTextExpressionLogicO(uint64_t a1)
{
  v1 = *(a1 + 50);
  if ((v1 >> 6) <= 2u)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D6157368(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_1D6157384(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 48);
    result += 48;
    v3 = (v2 | (*(result + 2) << 16)) & 0xF07FF | (a2 << 21);
    *result = v2 & 0x7FF;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 50) = -64;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatLayoutExpression(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 9))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D615744C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F2 && *(a1 + 51))
  {
    return (*a1 + 498);
  }

  v3 = ((*(a1 + 48) >> 3) & 1 | (2 * *(a1 + 49))) ^ 0x1FF;
  if (v3 >= 0x1F1)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61574A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 498;
    if (a3 >= 0x1F2)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F2)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (-a2 & 1);
      *(result + 49) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_1D6157558(uint64_t a1)
{
  sub_1D61575B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61575B4()
{
  if (!qword_1EC884698)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884698);
    }
  }
}

uint64_t FormatCustomNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatCustomNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatCustomNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatCustomNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

uint64_t FormatCustomNodeStyle.__allocating_init(identifier:class:ignoresSmartInvertColors:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  swift_beginAccess();
  *(v14 + 64) = a7;
  return v14;
}

uint64_t FormatCustomNodeStyle.init(identifier:class:ignoresSmartInvertColors:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  swift_beginAccess();
  *(v7 + 64) = a7;
  return v7;
}

uint64_t FormatCustomNodeStyle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatCustomNodeStyle.init(from:)(a1);
  return v2;
}

uint64_t FormatCustomNodeStyle.init(from:)(void *a1)
{
  v2 = v1;
  v58 = *v2;
  v4 = type metadata accessor for FormatOption(0);
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61582C4(0, &qword_1EDF3BCA0, sub_1D6158160, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v55 = &v53 - v9;
  v10 = sub_1D725895C();
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615AD94(0, &qword_1EDF19C10, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v53 - v18;
  v20 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D6158270();
  v21 = v60;
  sub_1D7264B0C();
  if (v21)
  {
    v22 = v61;
LABEL_9:
    swift_deallocPartialClassInstance();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v59);
    return v22;
  }

  v23 = v57;
  v24 = v10;
  v64 = 0;
  v25 = sub_1D726422C();
  v53 = 0;
  v22 = v61;
  v60 = v19;
  if (v26)
  {
    v27 = v26;
    v28 = v25;
  }

  else
  {
    v29 = v13;
    sub_1D725894C();
    v28 = sub_1D725893C();
    v27 = v30;
    (*(v23 + 8))(v29, v24);
  }

  swift_beginAccess();
  *(v22 + 16) = v28;
  *(v22 + 24) = v27;
  LOBYTE(v63) = 1;
  v31 = v60;
  v32 = v53;
  v33 = sub_1D72642BC();
  v35 = v16;
  if (v32)
  {
    (*(v16 + 8))(v31, v15);

    goto LABEL_9;
  }

  *(v22 + 32) = v33;
  *(v22 + 40) = v34;
  LOBYTE(v63) = 2;
  *(v22 + 48) = sub_1D726423C();
  sub_1D61582C4(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  LOBYTE(v62) = 3;
  sub_1D5C4D790(&qword_1EDF1B350, &unk_1EDF45930, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6330]);
  sub_1D726427C();
  *(v22 + 56) = v63;
  sub_1D6158160(0);
  v38 = v37;
  LOBYTE(v63) = 4;
  sub_1D6158328(&qword_1EDF3BCB0, 255, sub_1D6158160, MEMORY[0x1E69D64C8]);
  v39 = v55;
  sub_1D726427C();
  v40 = *(v38 - 8);
  if ((*(v40 + 48))(v39, 1, v38) == 1)
  {
    sub_1D615A658(v39, &qword_1EDF3BCA0, sub_1D6158160);
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v41 = sub_1D725A74C();
    (*(v40 + 8))(v39, v38);
  }

  swift_beginAccess();
  *(v22 + 64) = v41;
  v42 = *(v22 + 56);
  if (!v42)
  {
LABEL_21:
    (*(v35 + 8))(v60, v15);
    goto LABEL_10;
  }

  v43 = *(v42 + 16);

  v44 = v54;
  if (!v43)
  {
LABEL_20:

    goto LABEL_21;
  }

  v45 = 0;
  while (v45 < *(v42 + 16))
  {
    v46 = sub_1D5D2477C(v42 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, v44);
    v62 = v44[2];
    FormatOptionValue.type.getter(v46, &v65);
    if (v65 == 2)
    {

      v48 = *v44;
      v47 = v44[1];
      v50 = *(v22 + 32);
      v49 = *(v22 + 40);
      sub_1D5E2D970();
      swift_allocError();
      *v51 = v48;
      v51[1] = v47;
      v51[2] = v50;
      v51[3] = v49;
      v51[4] = 0x1000000000000000;
      swift_willThrow();
      v52 = *(v35 + 8);

      v52(v60, v15);
      sub_1D5D288C4(v44, type metadata accessor for FormatOption);

      goto LABEL_10;
    }

    ++v45;
    result = sub_1D5D288C4(v44, type metadata accessor for FormatOption);
    if (v43 == v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6158160(uint64_t a1)
{
  if (!qword_1EDF3BCA8)
  {
    sub_1D61581C8();
    sub_1D615821C();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BCA8);
    }
  }
}

unint64_t sub_1D61581C8()
{
  result = qword_1EDF29A18;
  if (!qword_1EDF29A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A18);
  }

  return result;
}

unint64_t sub_1D615821C()
{
  result = qword_1EDF29A20;
  if (!qword_1EDF29A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A20);
  }

  return result;
}

unint64_t sub_1D6158270()
{
  result = qword_1EDF29A50;
  if (!qword_1EDF29A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A50);
  }

  return result;
}

void sub_1D61582C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6158328(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatCustomNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D61582C4(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v159 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v164 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v165 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v166 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v159 - v20;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v159 - v25;
  sub_1D615A52C(0, v24);
  v175 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = sub_1D6158270();
  sub_1D5D2EE70(v4, &type metadata for FormatCustomNodeStyle.CodingKeys, v34, v31, v4, &type metadata for FormatCustomNodeStyle.CodingKeys, &type metadata for FormatVersions.JazzkonG, v32, v30, v33, &off_1F51F6BF8);
  swift_beginAccess();
  v173 = v2;
  v35 = v2[2];
  v36 = v2[3];
  v37 = qword_1EDF31EA8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD18);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v171 = v40 + 16;
  v172 = v41;
  v41(v26, v39, v38);
  v174 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v42 = sub_1D725895C();
  v43 = (*(*(v42 - 8) + 48))(v8, 1, v42);
  v168 = v39;
  v169 = v38;
  v170 = v21;
  if (v43 == 1)
  {
    v163 = v35;
    sub_1D615A658(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    v44 = v175;
    v45 = &v30[*(v175 + 11)];
    v47 = *v45;
    v46 = *(v45 + 1);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v46;
    sub_1D615AD94(0, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    v50 = v49;
    sub_1D615A5C8(v51);

    v167 = v50;
    v52 = sub_1D72647CC();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    v54 = &v30[*(v44 + 9)];
    v55 = *(v54 + 3);
    v56 = *(v54 + 4);
    v57 = __swift_project_boxed_opaque_existential_1(v54, v55);
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v159 - 4) = sub_1D5B4AA6C;
    *(&v159 - 3) = 0;
    v157 = sub_1D615A6C8;
    v158 = v48;
    v61 = v176;
    v63 = sub_1D5D2F7A4(v26, sub_1D60566B0, v62, sub_1D60565EC, (&v159 - 6), v55, v56);
    v176 = v61;
    if (v61)
    {
      sub_1D5D288C4(v26, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D288C4(v30, sub_1D615A52C);
    }

    v93 = v63;

    if (v93)
    {
      LOBYTE(v177) = 0;
      v178 = v163;
      v179 = v36;
      v94 = v176;
      sub_1D72647EC();

      sub_1D5D288C4(v26, type metadata accessor for FormatVersionRequirement);
      v39 = v168;
      v38 = v169;
      v65 = v175;
      if (v94)
      {
        v92 = v30;
        return sub_1D5D288C4(v92, sub_1D615A52C);
      }

      v176 = 0;
      v21 = v170;
    }

    else
    {
      sub_1D5D288C4(v26, type metadata accessor for FormatVersionRequirement);

      v39 = v168;
      v38 = v169;
      v65 = v175;
      v21 = v170;
    }
  }

  else
  {
    sub_1D5D288C4(v26, type metadata accessor for FormatVersionRequirement);

    sub_1D615A658(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    v65 = v175;
  }

  v66 = v173[4];
  v67 = v173[5];
  v172(v21, v39, v38);
  swift_storeEnumTagMultiPayload();
  v178 = v66;
  v179 = v67;
  LOBYTE(v177) = 1;
  v68 = &v30[*(v65 + 11)];
  v69 = *v68;
  v70 = *(v68 + 1);
  v71 = swift_allocObject();
  v167 = &v159;
  *(v71 + 16) = 1;
  *(v71 + 24) = v69;
  *(v71 + 32) = v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v159 - 4) = sub_1D5B4AA6C;
  *(&v159 - 3) = 0;
  v157 = sub_1D615B4A0;
  v158 = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = 1;
  v161 = v69;
  *(v74 + 24) = v69;
  *(v74 + 32) = v70;
  sub_1D615AD94(0, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
  v76 = v75;
  v78 = sub_1D615A5C8(v77);
  swift_retain_n();
  v162 = v76;
  v163 = v78;
  v79 = sub_1D72647CC();
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = 1;
  v81 = *(v65 + 9);
  v175 = v30;
  v82 = &v30[v81];
  v83 = *&v30[v81 + 24];
  v84 = *&v30[v81 + 32];
  v85 = __swift_project_boxed_opaque_existential_1(v82, v83);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v159 - 4) = sub_1D60565EC;
  *(&v159 - 3) = (&v159 - 6);
  v157 = sub_1D615B4A0;
  v158 = v74;
  v89 = v170;
  v90 = v176;
  sub_1D5D2BC70(v170, sub_1D60566B0, v91, sub_1D60565EC, (&v159 - 6), v83, v84);
  if (!v90)
  {
    v159 = v82;
    v160 = v70;

    sub_1D72647EC();
    v176 = 0;
    sub_1D5D288C4(v89, type metadata accessor for FormatVersionRequirement);

    v95 = v173;
    v96 = *(v173 + 48);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v97 = v169;
    v98 = __swift_project_value_buffer(v169, qword_1EDFFCDE0);
    v99 = v172;
    v172(v166, v98, v97);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v178) = 2;
    v100 = swift_allocObject();
    v102 = v100;
    *(v100 + 16) = 2;
    v103 = v161;
    v104 = v160;
    *(v100 + 24) = v161;
    *(v100 + 32) = v104;
    if (v96 == 2)
    {

      v105 = v175;
      v106 = v165;
    }

    else
    {
      v170 = &v159;
      LOBYTE(v177) = v96 & 1;
      MEMORY[0x1EEE9AC00](v100, v101);
      *(&v159 - 4) = sub_1D5B4AA6C;
      *(&v159 - 3) = 0;
      v157 = sub_1D615B4A0;
      v158 = v102;
      v126 = swift_allocObject();
      *(v126 + 16) = 2;
      *(v126 + 24) = v103;
      *(v126 + 32) = v104;
      swift_retain_n();
      v127 = sub_1D72647CC();
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = 2;
      v129 = *(v159 + 3);
      v130 = *(v159 + 4);
      v131 = __swift_project_boxed_opaque_existential_1(v159, v129);
      MEMORY[0x1EEE9AC00](v131, v132);
      MEMORY[0x1EEE9AC00](v133, v134);
      *(&v159 - 4) = sub_1D615B4A4;
      *(&v159 - 3) = (&v159 - 6);
      v157 = sub_1D615B4A0;
      v158 = v126;
      v135 = v166;
      v136 = v176;
      v138 = sub_1D5D2F7A4(v166, sub_1D615B49C, v137, sub_1D615B4A4, (&v159 - 6), v129, v130);
      if (v136)
      {
        sub_1D5D288C4(v135, type metadata accessor for FormatVersionRequirement);

        v105 = v175;
LABEL_40:
        v92 = v105;
        return sub_1D5D288C4(v92, sub_1D615A52C);
      }

      v139 = v138;

      if (v139)
      {
        v105 = v175;
        sub_1D72647EC();
        v97 = v169;
        v104 = v160;
        v95 = v173;
        v176 = 0;
        v106 = v165;
        v99 = v172;
      }

      else
      {
        v176 = 0;
        v105 = v175;
        v106 = v165;
        v97 = v169;
        v99 = v172;
        v104 = v160;
        v95 = v173;
      }
    }

    sub_1D5D288C4(v166, type metadata accessor for FormatVersionRequirement);

    v107 = v95[7];
    v99(v106, v168, v97);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v177) = 3;
    v108 = swift_allocObject();
    v110 = v108;
    *(v108 + 16) = 3;
    v111 = v161;
    *(v108 + 24) = v161;
    *(v108 + 32) = v104;
    if (v107)
    {
      v170 = &v159;
      v178 = v107;
      MEMORY[0x1EEE9AC00](v108, v109);
      *(&v159 - 4) = sub_1D5B4AA6C;
      *(&v159 - 3) = 0;
      v157 = sub_1D615B4A0;
      v158 = v110;
      v112 = swift_allocObject();
      *(v112 + 16) = 3;
      *(v112 + 24) = v111;
      *(v112 + 32) = v104;
      swift_retain_n();

      v113 = sub_1D72647CC();
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = 3;
      v115 = *(v159 + 3);
      v116 = *(v159 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v159, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v159 - 4) = sub_1D60565EC;
      *(&v159 - 3) = (&v159 - 6);
      v157 = sub_1D615B4A0;
      v158 = v112;
      v121 = v176;
      v123 = sub_1D5D2F7A4(v106, sub_1D615B49C, v122, sub_1D615B4A4, (&v159 - 6), v115, v116);
      v124 = v121;
      if (v121)
      {

        v105 = v175;
        v125 = v165;
LABEL_39:
        sub_1D5D288C4(v125, type metadata accessor for FormatVersionRequirement);
        goto LABEL_40;
      }

      v140 = v123;

      if (v140)
      {
        sub_1D61582C4(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D5C4D790(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
        v105 = v175;
        sub_1D72647EC();
        v97 = v169;
        v104 = v160;
        v141 = v173;

        sub_1D5D288C4(v165, type metadata accessor for FormatVersionRequirement);
LABEL_33:
        swift_beginAccess();
        v142 = v141[8];
        v143 = v164;
        v172(v164, v168, v97);
        swift_storeEnumTagMultiPayload();
        if (*(v142 + 16))
        {
          v144 = swift_allocObject();
          v145 = v105;
          *(v144 + 16) = 4;
          *(v144 + 24) = v161;
          *(v144 + 32) = v104;

          v146 = sub_1D72647CC();
          v147 = swift_allocObject();
          *(v147 + 16) = v146;
          *(v147 + 24) = 4;
          v148 = *(v159 + 3);
          v149 = *(v159 + 4);
          v150 = __swift_project_boxed_opaque_existential_1(v159, v148);
          MEMORY[0x1EEE9AC00](v150, v151);
          MEMORY[0x1EEE9AC00](v152, v153);
          *(&v159 - 4) = sub_1D5B4AA6C;
          *(&v159 - 3) = 0;
          v157 = sub_1D615B4A0;
          v158 = v144;
          v155 = sub_1D5D2F7A4(v143, sub_1D615B49C, v154, sub_1D615B4A4, (&v159 - 6), v148, v149);
          if (v124)
          {
            sub_1D5D288C4(v143, type metadata accessor for FormatVersionRequirement);

            v92 = v145;
            return sub_1D5D288C4(v92, sub_1D615A52C);
          }

          v156 = v155;

          if ((v156 & 1) == 0)
          {
            sub_1D5D288C4(v143, type metadata accessor for FormatVersionRequirement);

            v92 = v175;
            return sub_1D5D288C4(v92, sub_1D615A52C);
          }

          v180 = 4;
          v177 = v142;
          sub_1D615A7A8();
          sub_1D615A7F8();
          v105 = v175;
          sub_1D72647EC();
        }

        v125 = v143;
        goto LABEL_39;
      }

      sub_1D5D288C4(v165, type metadata accessor for FormatVersionRequirement);
      v105 = v175;
      v97 = v169;
      v104 = v160;
    }

    else
    {

      sub_1D5D288C4(v106, type metadata accessor for FormatVersionRequirement);

      v124 = v176;
    }

    v141 = v173;
    goto LABEL_33;
  }

  sub_1D5D288C4(v89, type metadata accessor for FormatVersionRequirement);

  v92 = v175;
  return sub_1D5D288C4(v92, sub_1D615A52C);
}

uint64_t sub_1D6159810()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61598FC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61599D4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6159ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D615AD48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6159AEC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0x80000001D73BAF80;
  v6 = 0xD000000000000018;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE900000000000073;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7373616C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D6159B94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x726F7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7373616C63;
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

unint64_t sub_1D6159C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D615AD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6159C60(uint64_t a1)
{
  v2 = sub_1D6158270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6159C9C(uint64_t a1)
{
  v2 = sub_1D6158270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6159CD8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D844(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v48 = sub_1D698D6DC(0, v5, 0, v6);
  v51 = *(v4 + 16);
  if (v51)
  {
    v8 = 0;
    v49 = v4;
    v50 = v4 + 32;
    while (v8 < *(v4 + 16))
    {
      v58 = v7;
      v9 = v50 + 32 * v8;
      v11 = *v9;
      v10 = *(v9 + 8);
      v53 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = qword_1EDF2AB18;

      v54 = v12;

      if (v13 != -1)
      {
        swift_once();
      }

      v52 = v11;
      v61[0] = v11;
      v61[1] = v10;
      v56 = v10;

      v14 = sub_1D6844380(v61);

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = 32;
        while (1)
        {
          if (v16 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v19 = *(v14 + v17 + 16);
          v18 = *(v14 + v17 + 32);
          v20 = *(v14 + v17);
          v63 = *(v14 + v17 + 48);
          v62[1] = v19;
          v62[2] = v18;
          v62[0] = v20;
          v21 = v19;
          sub_1D5E3B610(v62, v61);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v16;
          sub_1D5E3B66C(v62);
          v17 += 56;
          if (v15 == v16)
          {
            goto LABEL_3;
          }
        }

        sub_1D5E3B66C(v62);
        if (v21 <= 1)
        {
          v7 = v58;
          v26 = *(v58 + 2);
          v25 = *(v58 + 3);
          if (v26 >= v25 >> 1)
          {
            v7 = sub_1D698D844((v25 > 1), v26 + 1, 1, v58);
          }

          v4 = v49;
          *(v7 + 2) = v26 + 1;
          v27 = &v7[32 * v26];
          *(v27 + 4) = v52;
          *(v27 + 5) = v56;
          v27[48] = v53;
          *(v27 + 7) = v54;
        }

        else
        {
          v22 = v48[2];
          v23 = v48[3];

          if (v22 >= v23 >> 1)
          {
            v48 = sub_1D698D6DC((v23 > 1), v22 + 1, 1, v48);
          }

          v4 = v49;

          v48[2] = v22 + 1;
          v24 = &v48[5 * v22];
          v24[4] = v52;
          v24[5] = v56;
          *(v24 + 48) = v53;
          v24[7] = v54;
          v24[8] = v21;
          v7 = v58;
        }
      }

      else
      {
LABEL_3:

        v7 = v58;
        v4 = v49;
      }

      if (++v8 == v51)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:

    sub_1D615AD94(0, &unk_1EDF217F0, sub_1D615ADFC, &type metadata for FormatCustomNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v28 = sub_1D72626AC();

    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 56);
      do
      {
        v31 = *(v30 - 2);
        v59 = *(v30 - 3);
        v32 = *(v30 - 8);
        v33 = *v30;
        v35 = *(v7 + 2);
        v34 = *(v7 + 3);
        v36 = v7;

        if (v35 >= v34 >> 1)
        {
          v36 = sub_1D698D844((v34 > 1), v35 + 1, 1, v7);
        }

        v30 += 5;
        *(v36 + 2) = v35 + 1;
        v7 = v36;
        v37 = &v36[32 * v35];
        *(v37 + 4) = v59;
        *(v37 + 5) = v31;
        v37[48] = v32;
        *(v37 + 7) = v33;
        --v29;
      }

      while (v29);
    }

    v38 = *(v7 + 2);

    if (!v38)
    {
LABEL_32:

      return;
    }

    v39 = 0;
    v40 = (v7 + 56);
    v60 = v7;
    while (v39 < *(v7 + 2))
    {
      v46 = *v40;
      v47 = *(v40 - 8);
      swift_beginAccess();
      if (v47 == 2)
      {
        LOBYTE(v47) = *(v2 + 48);
      }

      ++v39;
      v41 = *(v2 + 24);
      v42 = *(v2 + 40);
      v55 = *(v2 + 32);
      v57 = *(v2 + 16);
      v43 = *(v2 + 56);

      v44 = sub_1D6FCAE0C(v46, v43);
      swift_beginAccess();
      v45 = *(v2 + 64);

      v2 = swift_allocObject();
      swift_beginAccess();
      *(v2 + 16) = v57;
      *(v2 + 24) = v41;
      *(v2 + 32) = v55;
      *(v2 + 40) = v42;
      *(v2 + 48) = v47;
      *(v2 + 56) = v44;
      swift_beginAccess();
      *(v2 + 64) = v45;

      v40 += 4;
      v7 = v60;
      if (v38 == v39)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D615A288()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v1 + 48);
  v7 = v1[7];

  if (v7)
  {
    v7 = sub_1D600BB30(v7);
  }

  swift_beginAccess();
  v8 = v1[8];
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  swift_beginAccess();
  *(v9 + 64) = v8;

  return v9;
}

void *FormatCustomNodeStyle.deinit()
{

  return v0;
}

uint64_t FormatCustomNodeStyle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D615A444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatCustomNodeStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t FormatCustomNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D615A52C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF087B0)
  {
    sub_1D615AD94(255, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    v4 = v3;
    v6 = sub_1D615A5C8(v5);
    v8 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v4, v6, v7);
    if (!v9)
    {
      atomic_store(v8, &qword_1EDF087B0);
    }
  }
}

unint64_t sub_1D615A5C8(__n128 a1)
{
  result = qword_1EDF02670;
  if (!qword_1EDF02670)
  {
    sub_1D615AD94(255, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02670);
  }

  return result;
}

uint64_t sub_1D615A658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D61582C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D615A6F4(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5B67740(0, &qword_1EDF01CF0, &qword_1EDF01CC8, MEMORY[0x1E69E7C30], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCustomNodeStyle.CodingKeys;
  *(inited + 64) = sub_1D6158270();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

void sub_1D615A7A8()
{
  if (!qword_1EDF04DF8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04DF8);
    }
  }
}

unint64_t sub_1D615A7F8()
{
  result = qword_1EDF04DF0;
  if (!qword_1EDF04DF0)
  {
    sub_1D615A7A8();
    sub_1D615821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DF0);
  }

  return result;
}

uint64_t _s8NewsFeed21FormatCustomNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v3)
    {
      if (!v5)
      {
        return 0;
      }

      v8 = sub_1D633BCCC(v3, v5);

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1D615A940(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6158328(&qword_1EDF29A08, a2, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
  a1[2] = sub_1D6158328(&qword_1EDF0E2E8, v3, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
  result = sub_1D6158328(&qword_1EC8846A0, v4, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D615AA10(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = sub_1D6158328(&qword_1EDF29A08, a2, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
  result = sub_1D6158328(&qword_1EDF0E2E8, v3, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D615AA94(uint64_t a1)
{
  result = sub_1D615AABC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615AABC()
{
  result = qword_1EC8846A8;
  if (!qword_1EC8846A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846A8);
  }

  return result;
}

unint64_t sub_1D615AB10(uint64_t a1)
{
  *(a1 + 8) = sub_1D61581C8();
  result = sub_1D615821C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D615AB40(void *a1)
{
  a1[1] = sub_1D61581C8();
  a1[2] = sub_1D615821C();
  result = sub_1D615AB78();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615AB78()
{
  result = qword_1EC8846B0;
  if (!qword_1EC8846B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846B0);
  }

  return result;
}

unint64_t sub_1D615AC44()
{
  result = qword_1EC8846B8;
  if (!qword_1EC8846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846B8);
  }

  return result;
}

unint64_t sub_1D615AC9C()
{
  result = qword_1EDF29A58;
  if (!qword_1EDF29A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A58);
  }

  return result;
}

unint64_t sub_1D615ACF4()
{
  result = qword_1EDF29A60;
  if (!qword_1EDF29A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A60);
  }

  return result;
}

unint64_t sub_1D615AD48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void sub_1D615AD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D615ADFC()
{
  result = qword_1EDF29A10;
  if (!qword_1EDF29A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A10);
  }

  return result;
}

void *sub_1D615AE50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FormatOption(0);
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v43 - v8;
  sub_1D5EA74B8(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF032C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D61582C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v46 = *(v11 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v45 = v16;
  v18 = (v17 + v16);
  v43[0] = a2;
  if (a2)
  {
    v19 = *(a2 + 40);
    v44 = *(a2 + 32);
    v20 = v19;

    v21 = sub_1D615A288();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 64) = 0x2800000000000000;
    v23 = sub_1D601118C;
  }

  else
  {
    v23 = sub_1D70DD9D8;
    v22 = 0;
    v44 = 0;
    v20 = 0xE000000000000000;
  }

  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = &v18[*(v24 + 24)];
  *v25 = v23;
  v25[1] = v22;
  v26 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  *v18 = v44;
  *(v18 + 1) = v20;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v27 = &v18[*(v24 + 28)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  v28 = *(v24 - 8);
  v44 = *(v28 + 56);
  v43[1] = v28 + 56;
  v44(v18, 0, 1, v24);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v17, v49);
  swift_setDeallocating();
  sub_1D5D288C4(v18, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(inited + 32) = v29;
  *(v29 + 48) = v50;
  v30 = v49[1];
  *(v29 + 16) = v49[0];
  *(v29 + 32) = v30;
  if (!v43[0] || (v31 = *(v43[0] + 56)) == 0)
  {
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
LABEL_14:
    sub_1D6795150(0x756C61562D79654BLL, 0xEA00000000007365, 0, 0, v33, v51);

    *(inited + 96) = &type metadata for FormatInspectionGroup;
    *(inited + 104) = &off_1F518B2C0;
    v40 = swift_allocObject();
    *(inited + 72) = v40;
    *(v40 + 48) = v52;
    v41 = v51[1];
    *(v40 + 16) = v51[0];
    *(v40 + 32) = v41;
    v42 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5B67740(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    return v42;
  }

  v43[0] = inited;
  *&v51[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D69972A4(0, v32, 0);
  v35 = 0;
  v33 = *&v51[0];
  v36 = v31 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  while (v35 < *(v31 + 16))
  {
    sub_1D5D2477C(v36 + *(v48 + 72) * v35, v9);
    v37 = v47;
    sub_1D5D2477C(v9, v47);
    sub_1D68B1FA4(v37, v14);
    v44(v14, 0, 1, v24);
    sub_1D5D288C4(v9, type metadata accessor for FormatOption);
    *&v51[0] = v33;
    v39 = *(v33 + 16);
    v38 = *(v33 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1D69972A4((v38 > 1), v39 + 1, 1);
      v33 = *&v51[0];
    }

    ++v35;
    *(v33 + 16) = v39 + 1;
    result = sub_1D5E4F52C(v14, v33 + v45 + v39 * v46);
    if (v32 == v35)
    {
      inited = v43[0];
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1D615B4A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      sub_1D5EB1500(v8);

      sub_1D5F9EB60(v8, v9, &v17);
      v10 = v17;
      sub_1D615B4A8(a1, a2);
      sub_1D5EB15C4(v8);

      sub_1D5EB15C4(v10);
    }

    else if (v5 == 0x8000000000000000)
    {
      *a2 = 0x8000000000000000;
    }

    else
    {
      *a2 = 0x8000000000000008;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v13 = swift_allocObject();

    v14 = sub_1D6E8DD40(v12, v11);
    v16 = v15;

    *(v13 + 16) = v14;
    *(v13 + 24) = v16;
    *a2 = v13;
  }
}

BOOL static FormatVisibility.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v14[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v14[1] = v5;
        v13[0] = v7;
        v13[1] = v6;
        sub_1D5EB1500(v3);
        sub_1D5EB1500(v2);
        sub_1D5EB1500(v7);

        if (static FormatVisibility.== infix(_:_:)(v14, v13))
        {

          v8 = sub_1D63554CC(v5, v6);

          sub_1D5EB15C4(v7);

          sub_1D5EB15C4(v2);
          sub_1D5EB15C4(v3);
          return (v8 & 1) != 0;
        }

        sub_1D5EB15C4(v7);

LABEL_19:
        sub_1D5EB15C4(v2);
        sub_1D5EB15C4(v3);
        return 0;
      }

LABEL_18:
      sub_1D5EB1500(*a2);
      sub_1D5EB1500(v2);
      goto LABEL_19;
    }

    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_18;
      }

      sub_1D5EB15C4(0x8000000000000000);
      v12 = 0x8000000000000000;
    }

    else
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_18;
      }

      sub_1D5EB15C4(0x8000000000000008);
      v12 = 0x8000000000000008;
    }
  }

  else
  {
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    if (*(v2 + 16) != *(v3 + 16) || *(v2 + 24) != *(v3 + 24))
    {
      v10 = sub_1D72646CC();
      sub_1D5EB1500(v3);
      sub_1D5EB1500(v2);
      sub_1D5EB15C4(v2);
      sub_1D5EB15C4(v3);
      return v10 & 1;
    }

    sub_1D5EB1500(v3);
    sub_1D5EB1500(v2);
    sub_1D5EB15C4(v2);
    v12 = v3;
  }

  sub_1D5EB15C4(v12);
  return 1;
}

uint64_t FormatVisibility.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v10 = 0x3A74697265686E69;
    sub_1D5BF4D9C();
    v4 = sub_1D72639FC();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 16 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    MEMORY[0x1DA6F9910](v8, v7);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = 0;
    sub_1D5EB1500(v3);

    MEMORY[0x1DA6F9910](0x726F7463656C6573, 0xE90000000000003ALL);
    sub_1D615B98C(0);
    sub_1D7263F9C();
    sub_1D5EB15C4(v3);
LABEL_12:

    return v10;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x7465736E75;
  }

  else
  {
    return 0x6E6564646968;
  }
}

void sub_1D615B98C(uint64_t a1)
{
  if (!qword_1EDF0F900)
  {
    v2 = sub_1D615B9E8();
    v4 = type metadata accessor for FormatSelectorValue(a1, &type metadata for FormatVisibility, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0F900);
    }
  }
}

unint64_t sub_1D615B9E8()
{
  result = qword_1EDF11070;
  if (!qword_1EDF11070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11070);
  }

  return result;
}

unint64_t sub_1D615BA3C(uint64_t a1)
{
  result = sub_1D615B9E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615BA64(void *a1)
{
  a1[1] = sub_1D5DF6A0C();
  a1[2] = sub_1D5DF6A60();
  result = sub_1D615BA9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615BA9C()
{
  result = qword_1EDF11078;
  if (!qword_1EDF11078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11078);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatVisibilityO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *sub_1D615BB10(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id FCColor.formatColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  [v1 red];
  v5 = v4 * 255.0;
  [v1 green];
  v7 = v6 * 255.0;
  [v1 blue];
  v9 = v8 * 255.0;
  result = [v1 alpha];
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v9;
  *(v3 + 40) = v11;
  *(v3 + 48) = 0;
  *a1 = v3 | 0x6000000000000000;
  return result;
}

id FCColor.ne_dynamicColor(darkStyleColor:)(void *a1)
{
  [v1 red];
  v4 = v3;
  [v1 green];
  v6 = v5;
  [v1 blue];
  v8 = v7;
  [v1 alpha];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v4 green:v6 blue:v8 alpha:v9];
  if (a1)
  {
    v11 = result;
    v12 = a1;
    [v12 red];
    v14 = v13;
    [v12 green];
    v16 = v15;
    [v12 blue];
    v18 = v17;
    [v12 alpha];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v14 green:v16 blue:v18 alpha:v19];
    v21 = [objc_opt_self() ts:v11 dynamicColor:v20 withDarkStyleVariant:?];

    return v21;
  }

  return result;
}

id sub_1D615BD70(void *a1)
{
  v1 = a1;
  FCColor.ne_color.getter();
  v3 = v2;

  return v3;
}

void FCColor.ne_color.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v4[4] = sub_1D615BF64;
  v4[5] = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D615BF6C;
  v4[3] = &block_descriptor_28;
  v3 = _Block_copy(v4);

  [v0 readDeconstructedRepresentationWithAcccessor_];
  _Block_release(v3);
  swift_beginAccess();
  if (*v2)
  {
    *v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D615BED0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

double sub_1D615BF6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);

  return result;
}

uint64_t type metadata accessor for DebugFormatUploadHiddenEntry(uint64_t a1)
{
  result = qword_1EC8846C0;
  if (!qword_1EC8846C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D615C054(uint64_t a1)
{
  result = type metadata accessor for FormatPackageInventory(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatUploadHiddenReason(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatIssueCoverNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatIssueCoverNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatIssueCoverNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatIssueCoverNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatIssueCoverNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatIssueCoverNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D615EBB8(v9, v8, sub_1D615C3A4);
}

void sub_1D615C3A4()
{
  if (!qword_1EDF33718)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33718);
    }
  }
}

double FormatIssueCoverNodeStyle.traits.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;

  return result;
}

uint64_t FormatIssueCoverNodeStyle.__allocating_init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a8;
  v20 = a8[1];
  LOBYTE(a8) = *(a8 + 16);
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = a7;
  *(v17 + 72) = v19;
  *(v17 + 80) = v20;
  *(v17 + 88) = a8;
  v21 = *(a9 + 48);
  *(v17 + 128) = *(a9 + 32);
  *(v17 + 144) = v21;
  *(v17 + 160) = *(a9 + 64);
  *(v17 + 176) = *(a9 + 80);
  v22 = *(a9 + 16);
  *(v17 + 96) = *a9;
  *(v17 + 112) = v22;
  *(v17 + 177) = a10;
  swift_beginAccess();
  *(v17 + 184) = a11;
  return v17;
}

uint64_t FormatIssueCoverNodeStyle.init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11)
{
  v16 = *a6;
  v18 = *a8;
  v17 = a8[1];
  v19 = *(a8 + 16);
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  *(v11 + 48) = a5;
  *(v11 + 56) = v16;
  *(v11 + 64) = a7;
  *(v11 + 72) = v18;
  *(v11 + 80) = v17;
  *(v11 + 88) = v19;
  v20 = *(a9 + 48);
  *(v11 + 128) = *(a9 + 32);
  *(v11 + 144) = v20;
  *(v11 + 160) = *(a9 + 64);
  *(v11 + 176) = *(a9 + 80);
  v21 = *(a9 + 16);
  *(v11 + 96) = *a9;
  *(v11 + 112) = v21;
  *(v11 + 177) = a10;
  swift_beginAccess();
  *(v11 + 184) = a11;
  return v11;
}

uint64_t sub_1D615C6B8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v8 = v2[6];
  swift_beginAccess();
  v216 = a1;
  v9 = *(a1 + 48);
  v249 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_102;
  }

  v211 = v2;
  v213 = v6;
  v215 = v4;
  sub_1D615EA3C(0);
  v214 = v5;

  v212 = v7;

  sub_1D7261DAC();
  v229 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 16);
  v13 = v8;
  v218 = v9;
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = 0;
  v15 = (v8 + 32);
  v16 = v12 - 1;
  while (1)
  {
    v17 = v15[1];
    v260 = *v15;
    v261 = v17;
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[5];
    v264 = v15[4];
    v265 = v20;
    v262 = v18;
    v263 = v19;
    v21 = v15[6];
    v22 = v15[7];
    v23 = v15[8];
    v269 = *(v15 + 18);
    v267 = v22;
    v268 = v23;
    v266 = v21;
    v24 = v260;
    sub_1D615EAA0(&v260, &v250);
    sub_1D615EAA0(&v260, &v250);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v231 = v249;
    v26 = sub_1D6D8CB60();
    v28 = v249[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v32 = v27;
    if (v249[3] < v31)
    {
      sub_1D6D6D9A8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D6D8CB60();
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_103;
      }

LABEL_9:
      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v50 = v26;
    sub_1D6D82278();
    v26 = v50;
    if (v32)
    {
LABEL_10:
      v34 = v231;
      v35 = *(v231 + 56) + 152 * v26;
      v36 = *(v35 + 16);
      v250 = *v35;
      v251 = v36;
      v37 = *(v35 + 80);
      v39 = *(v35 + 32);
      v38 = *(v35 + 48);
      v254 = *(v35 + 64);
      v255 = v37;
      v252 = v39;
      v253 = v38;
      v41 = *(v35 + 112);
      v40 = *(v35 + 128);
      v42 = *(v35 + 96);
      v259 = *(v35 + 144);
      v257 = v41;
      v258 = v40;
      v256 = v42;
      v43 = v261;
      *v35 = v260;
      *(v35 + 16) = v43;
      v44 = v262;
      v45 = v263;
      v46 = v265;
      *(v35 + 64) = v264;
      *(v35 + 80) = v46;
      *(v35 + 32) = v44;
      *(v35 + 48) = v45;
      v47 = v266;
      v48 = v267;
      v49 = v268;
      *(v35 + 144) = v269;
      *(v35 + 112) = v48;
      *(v35 + 128) = v49;
      *(v35 + 96) = v47;
      sub_1D615EAD8(&v250);
      goto LABEL_14;
    }

LABEL_12:
    v34 = v231;
    *(v231 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    *(v34[6] + 16 * v26) = v24;
    v51 = v34[7] + 152 * v26;
    v52 = v269;
    v54 = v267;
    v53 = v268;
    *(v51 + 96) = v266;
    *(v51 + 112) = v54;
    *(v51 + 128) = v53;
    *(v51 + 144) = v52;
    v56 = v264;
    v55 = v265;
    v57 = v263;
    *(v51 + 32) = v262;
    *(v51 + 48) = v57;
    *(v51 + 64) = v56;
    *(v51 + 80) = v55;
    v58 = v261;
    *v51 = v260;
    *(v51 + 16) = v58;
    v59 = v34[2];
    v30 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v30)
    {
      goto LABEL_98;
    }

    v34[2] = v60;

LABEL_14:
    v249 = v34;

    sub_1D615EAD8(&v260);
    v62 = *(v229 + 2);
    v61 = *(v229 + 3);
    if (v62 >= v61 >> 1)
    {
      v229 = sub_1D698F4BC((v61 > 1), v62 + 1, 1, v229);
    }

    *(v229 + 2) = v62 + 1;
    *&v229[16 * v62 + 32] = v24;
    if (v16 == v14)
    {
      break;
    }

    ++v14;
    v15 = (v15 + 152);
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_94;
    }
  }

  v9 = v218;
LABEL_20:
  v63 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v64 = *(v9 + 16);
  if (!v64)
  {
    goto LABEL_64;
  }

  v65 = 0;
  v66 = v64 - 1;
  v67 = 32;
  v217 = v64 - 1;
  while (2)
  {
    v68 = *(v9 + v67 + 16);
    v260 = *(v9 + v67);
    v261 = v68;
    v69 = *(v9 + v67 + 32);
    v70 = *(v9 + v67 + 48);
    v71 = *(v9 + v67 + 80);
    v264 = *(v9 + v67 + 64);
    v265 = v71;
    v262 = v69;
    v263 = v70;
    v72 = *(v9 + v67 + 96);
    v73 = *(v9 + v67 + 112);
    v74 = *(v9 + v67 + 128);
    v269 = *(v9 + v67 + 144);
    v267 = v73;
    v268 = v74;
    v266 = v72;
    v75 = v260;
    v76 = v249;
    if (!v249[2])
    {
      sub_1D615EAA0(&v260, &v250);
LABEL_41:
      sub_1D615EAA0(&v260, &v250);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v231 = v76;
      v107 = sub_1D6D8CB60();
      v109 = v76[2];
      v110 = (v108 & 1) == 0;
      v30 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v30)
      {
        goto LABEL_97;
      }

      v112 = v108;
      if (v76[3] >= v111)
      {
        if ((v106 & 1) == 0)
        {
          v143 = v107;
          sub_1D6D82278();
          v107 = v143;
          if (v112)
          {
            goto LABEL_47;
          }

          goto LABEL_52;
        }
      }

      else
      {
        sub_1D6D6D9A8(v111, v106);
        v107 = sub_1D6D8CB60();
        if ((v112 & 1) != (v113 & 1))
        {
          goto LABEL_103;
        }
      }

      if (v112)
      {
LABEL_47:
        v114 = v231;
        v115 = *(v231 + 56) + 152 * v107;
        v116 = *(v115 + 16);
        v250 = *v115;
        v251 = v116;
        v117 = *(v115 + 80);
        v119 = *(v115 + 32);
        v118 = *(v115 + 48);
        v254 = *(v115 + 64);
        v255 = v117;
        v252 = v119;
        v253 = v118;
        v121 = *(v115 + 112);
        v120 = *(v115 + 128);
        v122 = *(v115 + 96);
        v259 = *(v115 + 144);
        v257 = v121;
        v258 = v120;
        v256 = v122;
        v123 = v261;
        *v115 = v260;
        *(v115 + 16) = v123;
        v124 = v262;
        v125 = v263;
        v126 = v265;
        *(v115 + 64) = v264;
        *(v115 + 80) = v126;
        *(v115 + 32) = v124;
        *(v115 + 48) = v125;
        v127 = v266;
        v128 = v267;
        v129 = v268;
        *(v115 + 144) = v269;
        *(v115 + 112) = v128;
        *(v115 + 128) = v129;
        *(v115 + 96) = v127;
        sub_1D615EAD8(&v250);
        goto LABEL_54;
      }

LABEL_52:
      v114 = v231;
      *(v231 + 8 * (v107 >> 6) + 64) |= 1 << v107;
      *(v114[6] + 16 * v107) = v75;
      v144 = v114[7] + 152 * v107;
      v145 = v269;
      v147 = v267;
      v146 = v268;
      *(v144 + 96) = v266;
      *(v144 + 112) = v147;
      *(v144 + 128) = v146;
      *(v144 + 144) = v145;
      v149 = v264;
      v148 = v265;
      v150 = v263;
      *(v144 + 32) = v262;
      *(v144 + 48) = v150;
      *(v144 + 64) = v149;
      *(v144 + 80) = v148;
      v151 = v261;
      *v144 = v260;
      *(v144 + 16) = v151;
      v152 = v114[2];
      v30 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v30)
      {
        goto LABEL_99;
      }

      v114[2] = v153;

LABEL_54:
      v249 = v114;
      v154 = *(v63 + 2);
      v155 = *(v63 + 3);

      if (v154 >= v155 >> 1)
      {
        v63 = sub_1D698F4BC((v155 > 1), v154 + 1, 1, v63);
      }

      sub_1D615EAD8(&v260);
      *(v63 + 2) = v154 + 1;
      *&v63[16 * v154 + 32] = v75;
      if (v66 == v65)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    sub_1D615EAA0(&v260, &v250);
    v77 = sub_1D6D8CB60();
    if ((v78 & 1) == 0)
    {
      goto LABEL_41;
    }

    v79 = v76[7] + 152 * v77;
    v80 = *(v79 + 16);
    v250 = *v79;
    v251 = v80;
    v81 = *(v79 + 80);
    v83 = *(v79 + 32);
    v82 = *(v79 + 48);
    v254 = *(v79 + 64);
    v255 = v81;
    v252 = v83;
    v253 = v82;
    v84 = *(v79 + 96);
    v85 = *(v79 + 112);
    v86 = *(v79 + 128);
    v259 = *(v79 + 144);
    v257 = v85;
    v258 = v86;
    v256 = v84;
    v87 = v251;
    if (!v251)
    {
      v87 = v261;
    }

    v88 = *(&v251 + 1);
    if (!*(&v251 + 1))
    {
    }

    v221 = v88;
    v89 = *(&v252 + 1);
    v90 = v252;
    v91 = v253;
    v227 = *(&v252 + 1);
    v223 = v252;
    v225 = v253;
    if (v253 >= 0xFEu)
    {
      v227 = *(&v262 + 1);
      v90 = v262;
      v225 = v263;
      sub_1D5ED34B0(v262, *(&v262 + 1), v263);
    }

    v222 = v87;
    v92 = &v253 + 8;
    if (BYTE8(v258) == 254)
    {
      v92 = &v263 + 8;
      sub_1D615EBB8(&v263 + 8, &v231, sub_1D615C3A4);
    }

    v93 = *(v92 + 3);
    v243 = *(v92 + 2);
    v244 = v93;
    v245 = *(v92 + 4);
    v246 = v92[80];
    v94 = *(v92 + 1);
    v95 = BYTE9(v258);
    if (BYTE9(v258) == 2)
    {
      v95 = BYTE9(v268);
    }

    v220 = v95;
    v96 = v259;
    v241 = *v92;
    v242 = v94;
    if (!v259)
    {
    }

    v219 = v96;
    v97 = v250;
    *&v247[39] = v243;
    *&v247[55] = v244;
    *&v247[71] = v245;
    v247[87] = v246;
    *&v247[7] = v241;
    *&v247[23] = v242;
    sub_1D615EAA0(&v250, &v231);

    sub_1D5ED34B0(v223, v89, v91);
    sub_1D615EBB8(&v253 + 8, &v231, sub_1D615C3A4);

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v248 = v76;
    v99 = sub_1D6D8CB60();
    v101 = v76[2];
    v102 = (v100 & 1) == 0;
    v30 = __OFADD__(v101, v102);
    v103 = v101 + v102;
    if (v30)
    {
      goto LABEL_100;
    }

    v104 = v100;
    if (v76[3] >= v103)
    {
      v66 = v217;
      if (v98)
      {
        goto LABEL_49;
      }

      v156 = v99;
      sub_1D6D82278();
      v99 = v156;
      v130 = v221;
      if ((v104 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_50:
      v131 = v248;
      v132 = v248[7] + 152 * v99;
      v133 = *(v132 + 16);
      v231 = *v132;
      v232 = v133;
      v134 = *(v132 + 80);
      v136 = *(v132 + 32);
      v135 = *(v132 + 48);
      v235 = *(v132 + 64);
      v236 = v134;
      v233 = v136;
      v234 = v135;
      v138 = *(v132 + 112);
      v137 = *(v132 + 128);
      v139 = *(v132 + 96);
      v240 = *(v132 + 144);
      v238 = v138;
      v239 = v137;
      v237 = v139;
      *v132 = v97;
      *(v132 + 16) = v222;
      *(v132 + 24) = v130;
      *(v132 + 32) = v90;
      *(v132 + 40) = v227;
      *(v132 + 48) = v225;
      v140 = *v247;
      *(v132 + 65) = *&v247[16];
      *(v132 + 49) = v140;
      *(v132 + 129) = *&v247[80];
      v141 = *&v247[48];
      *(v132 + 113) = *&v247[64];
      v142 = *&v247[32];
      *(v132 + 97) = v141;
      *(v132 + 81) = v142;
      *(v132 + 137) = v220;
      *(v132 + 144) = v219;
      sub_1D615EAD8(&v231);
    }

    else
    {
      sub_1D6D6D9A8(v103, v98);
      v99 = sub_1D6D8CB60();
      v66 = v217;
      if ((v104 & 1) != (v105 & 1))
      {
        goto LABEL_103;
      }

LABEL_49:
      v130 = v221;
      if (v104)
      {
        goto LABEL_50;
      }

LABEL_59:
      v131 = v248;
      v248[(v99 >> 6) + 8] |= 1 << v99;
      *(v131[6] + 16 * v99) = v97;
      v157 = v131[7] + 152 * v99;
      v158 = *v247;
      *(v157 + 65) = *&v247[16];
      *(v157 + 49) = v158;
      v159 = *&v247[48];
      *(v157 + 113) = *&v247[64];
      v160 = *&v247[32];
      *(v157 + 97) = v159;
      *v157 = v97;
      *(v157 + 16) = v222;
      *(v157 + 24) = v130;
      *(v157 + 32) = v90;
      *(v157 + 40) = v227;
      *(v157 + 48) = v225;
      *(v157 + 129) = *&v247[80];
      *(v157 + 81) = v160;
      *(v157 + 137) = v220;
      *(v157 + 144) = v219;
      v161 = v131[2];
      v30 = __OFADD__(v161, 1);
      v162 = v161 + 1;
      if (v30)
      {
        goto LABEL_101;
      }

      v131[2] = v162;
    }

    sub_1D615EAD8(&v250);
    sub_1D615EAD8(&v260);
    v249 = v131;
    v9 = v218;
    if (v66 == v65)
    {
      goto LABEL_64;
    }

LABEL_62:
    ++v65;
    v67 += 152;
    if (v65 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:

  *&v260 = v63;

  sub_1D6985DAC(v163);
  v164 = v260;
  v165 = *(v260 + 16);
  if (v165)
  {
    v166 = 0;
    v228 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v167 = v63;
    v168 = v249;
    v169 = v164 + 40 + 16 * v166;
    v170 = v166;
    while (v170 < v165)
    {
      v166 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        goto LABEL_96;
      }

      if (v168[2])
      {

        v171 = sub_1D6D8CB60();
        if (v172)
        {
          v173 = v168[7] + 152 * v171;
          v174 = *(v173 + 16);
          v260 = *v173;
          v261 = v174;
          v175 = *(v173 + 80);
          v177 = *(v173 + 32);
          v176 = *(v173 + 48);
          v264 = *(v173 + 64);
          v265 = v175;
          v262 = v177;
          v263 = v176;
          v178 = *(v173 + 96);
          v179 = *(v173 + 112);
          v180 = *(v173 + 128);
          v269 = *(v173 + 144);
          v267 = v179;
          v268 = v180;
          v266 = v178;
          sub_1D615EAA0(&v260, &v250);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v228 = sub_1D698E0D0(0, *(v228 + 2) + 1, 1, v228);
          }

          v63 = v167;
          v182 = *(v228 + 2);
          v181 = *(v228 + 3);
          if (v182 >= v181 >> 1)
          {
            v228 = sub_1D698E0D0((v181 > 1), v182 + 1, 1, v228);
          }

          *(v228 + 2) = v182 + 1;
          v183 = &v228[152 * v182];
          v184 = v261;
          *(v183 + 2) = v260;
          *(v183 + 3) = v184;
          v185 = v262;
          v186 = v263;
          v187 = v265;
          *(v183 + 6) = v264;
          *(v183 + 7) = v187;
          *(v183 + 4) = v185;
          *(v183 + 5) = v186;
          v188 = v266;
          v189 = v267;
          v190 = v268;
          *(v183 + 22) = v269;
          *(v183 + 9) = v189;
          *(v183 + 10) = v190;
          *(v183 + 8) = v188;
          if (v166 != v165)
          {
            goto LABEL_66;
          }

          goto LABEL_81;
        }
      }

      ++v170;
      v169 += 16;
      if (v166 == v165)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_95;
  }

  v228 = MEMORY[0x1E69E7CC0];
LABEL_81:

  v191 = v211[7];
  if (!v191)
  {
  }

  v224 = v191;
  v192 = v211[8];
  if (!v192)
  {
    v192 = *(v216 + 64);
  }

  v193 = v211[9];
  v194 = v211[10];
  v195 = *(v211 + 88);
  v196 = v193;
  v226 = v194;
  v197 = *(v211 + 88);
  if (v195 >= 0xFE)
  {
    v196 = *(v216 + 72);
    v194 = *(v216 + 80);
    v197 = *(v216 + 88);
    sub_1D5ED34B0(v196, v194, v197);
  }

  LOBYTE(v265) = *(v211 + 176);
  v198 = *(v211 + 9);
  v262 = *(v211 + 8);
  v263 = v198;
  v264 = *(v211 + 10);
  v199 = *(v211 + 7);
  v260 = *(v211 + 6);
  v261 = v199;
  v230 = v193;
  if (v265 == 254)
  {
    v200 = *(v216 + 144);
    v233 = *(v216 + 128);
    v234 = v200;
    v235 = *(v216 + 160);
    LOBYTE(v236) = *(v216 + 176);
    v201 = *(v216 + 112);
    v231 = *(v216 + 96);
    v232 = v201;
    sub_1D615EBB8(&v231, &v250, sub_1D615C3A4);
    v252 = v233;
    v253 = v234;
    v254 = v235;
    LOBYTE(v255) = v236;
    v202 = v231;
    v203 = v232;
  }

  else
  {
    v204 = *(v211 + 9);
    v252 = *(v211 + 8);
    v253 = v204;
    v254 = *(v211 + 10);
    LOBYTE(v255) = *(v211 + 176);
    v202 = *(v211 + 6);
    v203 = *(v211 + 7);
  }

  v250 = v202;
  v251 = v203;
  v205 = *(v211 + 177);
  if (v205 == 2)
  {
    LOBYTE(v205) = *(v216 + 177);
  }

  swift_beginAccess();
  v206 = v211[23];
  v207 = swift_allocObject();
  swift_beginAccess();
  *(v207 + 16) = v215;
  *(v207 + 24) = v214;
  *(v207 + 32) = v213;
  *(v207 + 40) = v212;
  swift_beginAccess();
  *(v207 + 48) = v228;
  *(v207 + 56) = v224;
  *(v207 + 64) = v192;
  *(v207 + 72) = v196;
  *(v207 + 80) = v194;
  *(v207 + 88) = v197;
  v208 = v253;
  *(v207 + 128) = v252;
  *(v207 + 144) = v208;
  *(v207 + 160) = v254;
  *(v207 + 176) = v255;
  v209 = v251;
  *(v207 + 96) = v250;
  *(v207 + 112) = v209;
  *(v207 + 177) = v205;
  swift_beginAccess();
  *(v207 + 184) = v206;

  sub_1D5ED34B0(v230, v226, v195);
  sub_1D615EBB8(&v260, &v231, sub_1D615C3A4);

  return v207;
}

void sub_1D615D56C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698E0D0(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v79 = sub_1D698DF68(0, v5, 0, v6);
  v83 = *(v4 + 16);
  if (v83)
  {
    v8 = 0;
    v81 = v2;
    v82 = v4 + 32;
    v80 = v4;
    while (1)
    {
      v9 = v82 + 152 * v8;
      v10 = *(v9 + 16);
      v95 = *v9;
      v96 = v10;
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v13 = *(v9 + 80);
      v99 = *(v9 + 64);
      v100 = v13;
      v97 = v11;
      v98 = v12;
      v14 = *(v9 + 96);
      v15 = *(v9 + 112);
      v16 = *(v9 + 128);
      *&v104 = *(v9 + 144);
      v102 = v15;
      v103 = v16;
      v101 = v14;
      v17 = v95;
      sub_1D615EAA0(&v95, &v85);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v85 = v17;

      v18 = sub_1D6844380(&v85);

      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = 32;
        while (1)
        {
          if (v20 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v23 = *(v18 + v21 + 16);
          v22 = *(v18 + v21 + 32);
          v24 = *(v18 + v21);
          v106 = *(v18 + v21 + 48);
          v105[1] = v23;
          v105[2] = v22;
          v105[0] = v24;
          v25 = v23;
          sub_1D5E3B610(v105, &v85);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v20;
          sub_1D5E3B66C(v105);
          v21 += 56;
          if (v19 == v20)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v105);
        if (v25 <= 1)
        {
          v38 = *(v7 + 2);
          v37 = *(v7 + 3);
          v26 = v80;
          v2 = v81;
          if (v38 >= v37 >> 1)
          {
            v7 = sub_1D698E0D0((v37 > 1), v38 + 1, 1, v7);
          }

          *(v7 + 2) = v38 + 1;
          v39 = &v7[152 * v38];
          v40 = v96;
          *(v39 + 2) = v95;
          *(v39 + 3) = v40;
          v41 = v97;
          v42 = v98;
          v43 = v100;
          *(v39 + 6) = v99;
          *(v39 + 7) = v43;
          *(v39 + 4) = v41;
          *(v39 + 5) = v42;
          v44 = v101;
          v45 = v102;
          v46 = v103;
          *(v39 + 22) = v104;
          *(v39 + 9) = v45;
          *(v39 + 10) = v46;
          *(v39 + 8) = v44;
        }

        else
        {
          v91 = v101;
          v92 = v102;
          v93 = v103;
          v94 = v104;
          v87 = v97;
          v88 = v98;
          v89 = v99;
          v90 = v100;
          v85 = v95;
          v86 = v96;
          sub_1D615EAA0(&v95, v84);
          v26 = v80;
          v28 = v79[2];
          v27 = v79[3];
          v2 = v81;
          if (v28 >= v27 >> 1)
          {
            v79 = sub_1D698DF68((v27 > 1), v28 + 1, 1, v79);
          }

          sub_1D615EAD8(&v95);
          v79[2] = v28 + 1;
          v29 = &v79[20 * v28];
          v30 = v86;
          *(v29 + 2) = v85;
          *(v29 + 3) = v30;
          v31 = v87;
          v32 = v88;
          v33 = v90;
          *(v29 + 6) = v89;
          *(v29 + 7) = v33;
          *(v29 + 4) = v31;
          *(v29 + 5) = v32;
          v34 = v91;
          v35 = v93;
          v36 = v94;
          *(v29 + 9) = v92;
          *(v29 + 10) = v35;
          *(v29 + 8) = v34;
          v29[22] = v36;
          v29[23] = v25;
        }
      }

      else
      {
LABEL_10:
        sub_1D615EAD8(&v95);

        v26 = v80;
        v2 = v81;
      }

      if (++v8 == v83)
      {
        break;
      }

      if (v8 >= *(v26 + 16))
      {
        goto LABEL_34;
      }
    }
  }

  sub_1D615EB08(0);
  v47 = sub_1D72626AC();

  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v48 - 1;
    for (i = 32; ; i += 160)
    {
      v51 = *(v47 + i + 16);
      v95 = *(v47 + i);
      v96 = v51;
      v52 = *(v47 + i + 32);
      v53 = *(v47 + i + 48);
      v54 = *(v47 + i + 80);
      v99 = *(v47 + i + 64);
      v100 = v54;
      v97 = v52;
      v98 = v53;
      v55 = *(v47 + i + 96);
      v56 = *(v47 + i + 112);
      v57 = *(v47 + i + 144);
      v103 = *(v47 + i + 128);
      v104 = v57;
      v101 = v55;
      v102 = v56;
      sub_1D615EBB8(&v95, &v85, sub_1D615EB08);
      v59 = *(v7 + 2);
      v58 = *(v7 + 3);
      if (v59 >= v58 >> 1)
      {
        v7 = sub_1D698E0D0((v58 > 1), v59 + 1, 1, v7);
      }

      *(v7 + 2) = v59 + 1;
      v60 = &v7[152 * v59];
      v61 = v96;
      *(v60 + 2) = v95;
      *(v60 + 3) = v61;
      v62 = v97;
      v63 = v98;
      v64 = v100;
      *(v60 + 6) = v99;
      *(v60 + 7) = v64;
      *(v60 + 4) = v62;
      *(v60 + 5) = v63;
      v65 = v101;
      v66 = v102;
      v67 = v103;
      *(v60 + 22) = v104;
      *(v60 + 9) = v66;
      *(v60 + 10) = v67;
      *(v60 + 8) = v65;
      if (!v49)
      {
        break;
      }

      --v49;
    }
  }

  v68 = *(v7 + 2);

  if (v68)
  {
    v69 = 0;
    v70 = v7 + 32;
    while (v69 < *(v7 + 2))
    {
      v71 = *(v70 + 1);
      v95 = *v70;
      v96 = v71;
      v72 = *(v70 + 2);
      v73 = *(v70 + 3);
      v74 = *(v70 + 5);
      v99 = *(v70 + 4);
      v100 = v74;
      v97 = v72;
      v98 = v73;
      v75 = *(v70 + 6);
      v76 = *(v70 + 7);
      v77 = *(v70 + 8);
      *&v104 = *(v70 + 18);
      v102 = v76;
      v103 = v77;
      v101 = v75;
      ++v69;
      v91 = v75;
      v92 = v76;
      v93 = v77;
      v94 = v104;
      v87 = v97;
      v88 = v98;
      v89 = v99;
      v90 = v74;
      v85 = v95;
      v86 = v96;
      swift_allocObject();
      sub_1D615EAA0(&v95, v84);
      v78 = sub_1D615EC20(v2, &v85);

      v70 += 152;
      v2 = v78;
      if (v68 == v69)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_31:
  }
}

uint64_t sub_1D615DB10()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v30 = v0[2];
  v3 = v0[5];
  v28 = v0[4];
  swift_beginAccess();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];

  if (v6)
  {
    v26 = sub_1D600CADC(v6);
  }

  else
  {
    v26 = 0;
  }

  v29 = v2;
  v7 = v1[9];
  v8 = v1[10];
  v9 = *(v1 + 88);
  v10 = *(v1 + 9);
  v34 = *(v1 + 8);
  v35 = v10;
  v36 = *(v1 + 10);
  v37 = *(v1 + 176);
  v11 = v37;
  v12 = *(v1 + 7);
  v32 = *(v1 + 6);
  v33 = v12;
  v27 = v3;
  if (v37 == 254)
  {
    sub_1D5ED34B0(v7, v8, v9);
    v13 = v32;
    v14 = DWORD2(v32);
    LODWORD(v15) = HIDWORD(v32);
    v16 = *(&v33 + 1);
    v17 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
  }

  else
  {
    v25 = v36;
    v15 = *(&v34 + 1);
    v16 = *(&v33 + 1);
    v17 = v33;
    v14 = DWORD2(v32);
    v13 = v32;
    v24 = v35;
    v31[17] = v34;
    sub_1D615EBB8(&v32, v31, sub_1D615C3A4);
    sub_1D615EBB8(&v32, v31, sub_1D615C3A4);
    sub_1D5ED34B0(v7, v8, v9);
    sub_1D6E0CAE0(v31);

    sub_1D615F660(&v32, sub_1D615C3A4);
    *&v18 = v31[0];
    *(&v18 + 1) = v15;
    v23 = v18;
  }

  v19 = *(v1 + 177);
  swift_beginAccess();
  v20 = v1[23];
  v21 = swift_allocObject();
  swift_beginAccess();
  *(v21 + 16) = v30;
  *(v21 + 24) = v29;
  *(v21 + 32) = v28;
  *(v21 + 40) = v27;
  swift_beginAccess();
  *(v21 + 48) = v4;
  *(v21 + 56) = v5;
  *(v21 + 64) = v26;
  *(v21 + 72) = v7;
  *(v21 + 80) = v8;
  *(v21 + 88) = v9;
  *(v21 + 96) = v13;
  *(v21 + 104) = v14;
  *(v21 + 108) = v15;
  *(v21 + 112) = v17;
  *(v21 + 120) = v16;
  *(v21 + 128) = v23;
  *(v21 + 144) = v24;
  *(v21 + 160) = v25;
  *(v21 + 176) = v11;
  *(v21 + 177) = v19;
  swift_beginAccess();
  *(v21 + 184) = v20;

  return v21;
}

uint64_t FormatIssueCoverNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D600ECE4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return v0;
}

uint64_t FormatIssueCoverNodeStyle.__deallocating_deinit()
{
  FormatIssueCoverNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D615DEC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6668DBC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FormatIssueCoverNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatIssueCoverNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatIssueCoverNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D615EBB8(v9, v8, sub_1D615C3A4);
}

uint64_t _s8NewsFeed25FormatIssueCoverNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v40 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 13);
  v77 = *(a1 + 11);
  v78 = v10;
  v79 = *(a1 + 15);
  v80 = *(a1 + 136);
  v11 = *(a1 + 9);
  v75 = *(a1 + 7);
  v76 = v11;
  v39 = *(a1 + 137);
  v12 = a1[18];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 48);
  v86 = *(a2 + 136);
  v20 = *(a2 + 15);
  v21 = *(a2 + 11);
  v84 = *(a2 + 13);
  v85 = v20;
  v22 = *(a2 + 7);
  v82 = *(a2 + 9);
  v83 = v21;
  v81 = v22;
  v38 = *(a2 + 137);
  v37 = a2[18];
  if ((v4 != v13 || v5 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    v36 = v12;

    sub_1D633A310(v6, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
LABEL_8:
      if (!v16)
      {
        return 0;
      }

      sub_1D633C9E8(v8, v16);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    v36 = v12;

    if (v8)
    {
      goto LABEL_8;
    }
  }

  if (v16)
  {
    return 0;
  }

LABEL_14:
  if (v9 > 0xFD)
  {
    v27 = v40;
    sub_1D5ED34B0(v7, v40, v9);
    sub_1D5ED34B0(v17, v18, v19);
    if (v19 > 0xFD)
    {
      sub_1D5ED348C(v7, v40, v9);
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5ED348C(v7, v27, v9);
    sub_1D5ED348C(v17, v18, v19);
    return 0;
  }

  v27 = v40;
  *&v57 = v7;
  *(&v57 + 1) = v40;
  LOBYTE(v58) = v9;
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(v7, v40, v9);
    sub_1D5ED34B0(v17, v18, v19);
    sub_1D5ED34B0(v7, v40, v9);
    sub_1D5ED34A0(v7, v40, v9);
    goto LABEL_19;
  }

  *v69 = v17;
  *&v69[8] = v18;
  v69[16] = v19;
  sub_1D5ED34B0(v7, v40, v9);
  sub_1D5ED34B0(v17, v18, v19);
  sub_1D5ED34B0(v7, v40, v9);
  v28 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v57, v69);
  sub_1D5ED34A0(*v69, *&v69[8], v69[16]);
  sub_1D5ED34A0(v57, *(&v57 + 1), v58);
  sub_1D5ED348C(v7, v40, v9);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v72 = v77;
  v73 = v78;
  v74 = v79;
  v70 = v75;
  v71 = v76;
  *&v69[23] = v82;
  *&v69[39] = v83;
  *&v69[55] = v84;
  *&v69[71] = v85;
  v29 = v80;
  *&v69[7] = v81;
  v30 = v86;
  if (v80 == 254)
  {
    if (v86 == 254)
    {
      v59 = v77;
      v60 = v78;
      v61 = v79;
      v57 = v75;
      v58 = v76;
      v62 = -2;
      sub_1D615EBB8(&v75, &v51, sub_1D615C3A4);
      sub_1D615EBB8(&v81, &v51, sub_1D615C3A4);
      sub_1D615F660(&v57, sub_1D615C3A4);
      goto LABEL_31;
    }

    sub_1D615EBB8(&v75, &v57, sub_1D615C3A4);
    sub_1D615EBB8(&v81, &v57, sub_1D615C3A4);
LABEL_27:
    v59 = v72;
    v60 = v73;
    v61 = v74;
    v57 = v70;
    v58 = v71;
    v65 = *&v69[32];
    v66 = *&v69[48];
    *v67 = *&v69[64];
    v63 = *v69;
    v62 = v29;
    *&v67[15] = *&v69[79];
    v64 = *&v69[16];
    v68 = v30;
    sub_1D615F660(&v57, sub_1D615F6C0);
    return 0;
  }

  v59 = v77;
  v60 = v78;
  v61 = v79;
  v57 = v75;
  v58 = v76;
  v62 = v80;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  v51 = v75;
  v52 = v76;
  if (v86 == 254)
  {
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v45 = v57;
    v46 = v58;
    sub_1D615EBB8(&v75, v43, sub_1D615C3A4);
    sub_1D615EBB8(&v81, v43, sub_1D615C3A4);
    sub_1D615EBB8(&v57, v43, sub_1D615C3A4);
    sub_1D601144C(&v45);
    goto LABEL_27;
  }

  v47 = v83;
  v48 = v84;
  v49 = v85;
  v45 = v81;
  v46 = v82;
  v50 = v86;
  sub_1D615EBB8(&v75, v43, sub_1D615C3A4);
  sub_1D615EBB8(&v81, v43, sub_1D615C3A4);
  sub_1D615EBB8(&v57, v43, sub_1D615C3A4);
  v32 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v51, &v45);
  v41[2] = v47;
  v41[3] = v48;
  v41[4] = v49;
  v42 = v50;
  v41[0] = v45;
  v41[1] = v46;
  sub_1D601144C(v41);
  v43[2] = v53;
  v43[3] = v54;
  v43[4] = v55;
  v44 = v56;
  v43[0] = v51;
  v43[1] = v52;
  sub_1D601144C(v43);
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v45 = v70;
  v46 = v71;
  v50 = v29;
  sub_1D615F660(&v45, sub_1D615C3A4);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (v39 == 2)
  {
    v33 = v36;
    if (v38 != 2)
    {
      return 0;
    }

    goto LABEL_36;
  }

  result = 0;
  v33 = v36;
  if (v38 != 2 && ((v38 ^ v39) & 1) == 0)
  {
LABEL_36:
    if (v33)
    {
      if (v37)
      {

        sub_1D633D840(v33, v37);
        v35 = v34;

        if (v35)
        {
          return 1;
        }
      }
    }

    else if (!v37)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D615E66C(uint64_t a1)
{
  result = sub_1D615E7C8(&qword_1EC8846D0, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D615E6D4(uint64_t a1)
{
  *(a1 + 16) = sub_1D615E7C8(&qword_1EDF0C2C8, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  result = sub_1D615E7C8(&qword_1EDF0C2D0, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D615E73C(void *a1)
{
  a1[1] = sub_1D615E7C8(&qword_1EDF0C2C8, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  a1[2] = sub_1D615E7C8(&qword_1EDF0C2D0, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  result = sub_1D615E7C8(&qword_1EC8846D8, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D615E7C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatIssueCoverNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D615E808(uint64_t a1)
{
  result = sub_1D615E830();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615E830()
{
  result = qword_1EC8846E0;
  if (!qword_1EC8846E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846E0);
  }

  return result;
}

unint64_t sub_1D615E884(uint64_t a1)
{
  *(a1 + 8) = sub_1D615E8B4();
  result = sub_1D615E908();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D615E8B4()
{
  result = qword_1EDF0C2D8;
  if (!qword_1EDF0C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C2D8);
  }

  return result;
}

unint64_t sub_1D615E908()
{
  result = qword_1EDF0C2E0;
  if (!qword_1EDF0C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C2E0);
  }

  return result;
}

unint64_t sub_1D615E95C(void *a1)
{
  a1[1] = sub_1D615E8B4();
  a1[2] = sub_1D615E908();
  result = sub_1D615E994();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615E994()
{
  result = qword_1EC8846E8;
  if (!qword_1EC8846E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846E8);
  }

  return result;
}

void sub_1D615EA3C(uint64_t a1)
{
  if (!qword_1EC8846F0)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8846F0);
    }
  }
}

void sub_1D615EB08(uint64_t a1)
{
  if (!qword_1EC8846F8)
  {
    v2 = sub_1D615EB64();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatIssueCoverNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC8846F8);
    }
  }
}

unint64_t sub_1D615EB64()
{
  result = qword_1EC88EE30;
  if (!qword_1EC88EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EE30);
  }

  return result;
}

uint64_t sub_1D615EBB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D615EC20(uint64_t a1, __int128 *a2)
{
  v4 = a2[7];
  *&v43[48] = a2[6];
  *&v43[64] = v4;
  *&v43[80] = a2[8];
  v44 = *(a2 + 18);
  v5 = a2[3];
  v42 = a2[2];
  *v43 = v5;
  v6 = a2[5];
  *&v43[16] = a2[4];
  *&v43[32] = v6;
  v7 = a2[1];
  v40 = *a2;
  v41 = v7;
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v8;
  *(v2 + 24) = v9;
  v10 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v10;
  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v11;
  v12 = v41;
  if (!v41)
  {
  }

  *(v2 + 56) = v12;
  v13 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
  }

  *(v2 + 64) = v13;
  v15 = *(&v42 + 1);
  v14 = v42;
  v16 = v43[0];
  v17 = *(&v42 + 1);
  v27 = v42;
  v18 = v43[0];
  if (v43[0] >= 0xFEu)
  {
    v14 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    sub_1D5ED34B0(v14, v17, v18);
  }

  *(v2 + 72) = v14;
  *(v2 + 80) = v17;
  *(v2 + 88) = v18;
  if (v43[88] == 254)
  {
    v19 = *(a1 + 144);
    v30 = *(a1 + 128);
    v31 = v19;
    v32 = *(a1 + 160);
    v33 = *(a1 + 176);
    v20 = *(a1 + 112);
    v28 = *(a1 + 96);
    v29 = v20;
    sub_1D615EBB8(&v28, &v34, sub_1D615C3A4);
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v34 = v28;
    v35 = v29;
    v36 = v30;
  }

  else
  {
    v37 = *&v43[56];
    v38 = *&v43[72];
    v39 = v43[88];
    v34 = *&v43[8];
    v35 = *&v43[24];
    v36 = *&v43[40];
  }

  v21 = v37;
  v22 = v38;
  v23 = v35;
  *(v2 + 128) = v36;
  *(v2 + 144) = v21;
  *(v2 + 160) = v22;
  *(v2 + 176) = v39;
  *(v2 + 96) = v34;
  *(v2 + 112) = v23;
  v24 = v43[89];
  if (v43[89] == 2)
  {
    v24 = *(a1 + 177);
  }

  *(v2 + 177) = v24;
  v25 = v44;

  sub_1D5ED34B0(v27, v15, v16);
  sub_1D615EBB8(&v43[8], &v28, sub_1D615C3A4);

  sub_1D615EAD8(&v40);
  if (!v25)
  {
    swift_beginAccess();
    v25 = *(a1 + 184);
  }

  swift_beginAccess();
  *(v2 + 184) = v25;
  return v2;
}

void *sub_1D615EEF4(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v79 = a1[6];
  v80 = v3;
  v81 = a1[8];
  v82 = *(a1 + 18);
  v4 = a1[3];
  v75 = a1[2];
  v76 = v4;
  v5 = a1[5];
  v77 = a1[4];
  v78 = v5;
  v6 = a1[1];
  v73 = *a1;
  v74 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7274590;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v54 = *(*(v9 - 8) + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v53 = v10;
  v12 = (v11 + v10);
  if (a2)
  {
    v13 = *(a2 + 40);
    v52 = *(a2 + 32);

    v14 = sub_1D615DB10();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x5000000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v52 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v12 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v11 + v53) = v52;
  v12[2] = 0;
  v12[3] = 0;
  v12[1] = v13;
  v20 = v12 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  (v21)(v12, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v69);
  swift_setDeallocating();
  sub_1D615F660(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v8 + 32) = v22;
  v23 = v69[1];
  *(v22 + 16) = v69[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v70;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7274590;
  v25 = v24 + v53;
  v26 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6F65646956, 0xE500000000000000, (v24 + v53));
  v21(v24 + v53, 0, 1, v17, v26);
  if (a2)
  {
    v27 = v21;
    v28 = *(a2 + 56);

    v29 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v28, (v25 + v54));
    v27(v25 + v54, 0, 1, v17, v29);
    v30 = *(a2 + 177);
  }

  else
  {
    v31 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v25 + v54));
    v21(v25 + v54, 0, 1, v17, v31);
    v30 = 2;
    v27 = v21;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v30, (v25 + 2 * v54));
  (v27)(v25 + 2 * v54, 0, 1, v17);
  if (a2)
  {
    swift_beginAccess();
    v32 = *(a2 + 184);
  }

  else
  {
    v32 = 0;
  }

  v33 = sub_1D7123F44(0x737469617254, 0xE600000000000000, v32, (v25 + 3 * v54));
  v27(v25 + 3 * v54, 0, 1, v17, v33);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v24, v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v34 = swift_allocObject();
  *(v8 + 72) = v34;
  v35 = v71[1];
  *(v34 + 16) = v71[0];
  *(v34 + 32) = v35;
  *(v34 + 48) = v72;
  v67[6] = v79;
  v67[7] = v80;
  v67[8] = v81;
  v68 = v82;
  v67[2] = v75;
  v67[3] = v76;
  v67[4] = v77;
  v67[5] = v78;
  v67[0] = v73;
  v67[1] = v74;
  if (a2)
  {
    v36 = *(a2 + 72);
    v37 = *(a2 + 80);
    v38 = *(a2 + 88);
    sub_1D5ED34B0(v36, v37, v38);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = -2;
  }

  *&v61 = v36;
  *(&v61 + 1) = v37;
  LOBYTE(v62) = v38;
  v39 = sub_1D6D9893C(v67, &v61);
  sub_1D5ED348C(v61, *(&v61 + 1), v62);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v39;
  if (a2)
  {
    v40 = *(a2 + 128);
    v41 = *(a2 + 160);
    v64 = *(a2 + 144);
    v65 = v41;
    v66 = *(a2 + 176);
    v42 = *(a2 + 112);
    v61 = *(a2 + 96);
    v62 = v42;
    v63 = v40;
    sub_1D615EBB8(&v61, &v55, sub_1D615C3A4);
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    v47 = v65;
    v48 = v66;
  }

  else
  {
    v43 = 0uLL;
    v48 = -2;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v55 = v43;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v49 = sub_1D686F740(&v73, &v55);
  v64 = v58;
  v65 = v59;
  v66 = v60;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  sub_1D615F660(&v61, sub_1D615C3A4);
  *(v8 + 176) = &type metadata for FormatInspection;
  *(v8 + 184) = &off_1F51E3FD0;
  *(v8 + 152) = v49;
  v50 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v50;
}

uint64_t sub_1D615F660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D615F6C0(uint64_t a1)
{
  if (!qword_1EC8822D8)
  {
    sub_1D615C3A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8822D8);
    }
  }
}

uint64_t IssueCover.identifier.getter()
{
  if (*(v0 + 56) > 1u)
  {
    return 1701736302;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t IssueCover.ImageModel.init(issue:aspectRatio:assetHandle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t IssueCover.LayeredModel.init(issue:aspectRatio:json:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t IssueCover.Kind.description.getter()
{
  v1 = 0x4D6465726579616CLL;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

NewsFeed::IssueCover::Kind_optional __swiftcall IssueCover.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D615F874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4D6465726579616CLL;
  v4 = 0xEC00000061696465;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x4D6465726579616CLL;
  v8 = 0xEC00000061696465;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6567616D69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D615F974()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D615FA14(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D615FAA0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D615FB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000061696465;
  v5 = 0x4D6465726579616CLL;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D615FBA4()
{
  v1 = 0x4D6465726579616CLL;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1D615FBFC()
{
  if (*(v0 + 56) > 1u)
  {
    return 1701736302;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

double IssueCover.aspectRatio.getter()
{
  result = 0.75;
  if (*(v0 + 56) == 1)
  {
    result = *(v0 + 8);
  }

  if (!*(v0 + 56))
  {
    return *(v0 + 8);
  }

  return result;
}

void IssueCover.imageModel.getter(void *a1@<X8>)
{
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v2 = *(v1 + 6);
    v6 = v2;
    v3 = v1[2];
  }

  else
  {
    v2 = *(v1 + 2);
    v6 = v2;
    v3 = *v1;
  }

  *a1 = v3;
  a1[2] = v2;
  v4 = v3;

  v5 = v6;
}

unint64_t sub_1D615FD24()
{
  result = qword_1EC884700;
  if (!qword_1EC884700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884700);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10IssueCoverO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1D615FD94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t FeedServiceType.fetchAll(from:until:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1D726275C();
  v10 = sub_1D617B760(&v12, v9, a2, a3, a4, a5);

  return v10;
}

uint64_t FeedService.__allocating_init(feed:cursorFactory:personalizationService:offlineProvider:)(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  FeedService.init(feed:cursorFactory:personalizationService:offlineProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FeedService.__allocating_init(feed:cursorFactory:personalizationService:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  FeedService.init(feed:cursorFactory:personalizationService:)(a1, a2, a3);
  return v6;
}

double FeedService.state(context:)()
{
  sub_1D617C808();

  return result;
}

uint64_t sub_1D616003C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1D61603CC;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_1D6160164;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6160164()
{
  v15 = v0;
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v14 = v0[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_1D5D0EA94(v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v7 = *(v2 + 32);

  v7(&v14, v6, v3, v2);

  v8 = v0[29];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  sub_1D5D10534(v9, v0[17]);

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12(v8);
}

uint64_t sub_1D61602FC()
{

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1D5D10534(v1, v0[17]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D61603CC()
{

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1D5D10534(v1, v0[17]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t FeedService.fetchReplaceGroup(from:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FeedReplaceLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;
  type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  sub_1D725BC0C();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v4;
  *(v15 + 3) = v3;
  *(v15 + 4) = v1;
  (*(v9 + 32))(&v15[v14], v12, v8);

  return sub_1D725BA6C();
}

uint64_t sub_1D616069C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D5E6D548;

  return sub_1D616073C(a3);
}

uint64_t sub_1D616073C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6160784, 0, 0);
}

uint64_t sub_1D6160784()
{
  v1 = v0[6];
  v0[7] = *(v0[5] + 112);
  v2 = *(v1 + 88);
  v0[8] = v2;
  v3 = *(v2 + 48);
  v4 = *(v1 + 80);
  v0[9] = v4;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D61608BC;
  v6 = v0[4];

  return (v8)(v0 + 2, v6, v4, v2);
}

uint64_t sub_1D61608BC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D6160B60;
  }

  else
  {
    v2 = sub_1D61609D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D61609D0()
{
  v16 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FeedReplaceLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  static FeedLocation.container(_:)(*(v4 + *(v10 + 36)), &v15);
  v11 = sub_1D5D0EA94(v6 | 0x2000000000000000, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = *(v2 + 32);

  v12(&v15, v11, v1, v2);

  v13 = v0[1];

  return v13(v6 | 0x2000000000000000);
}

uint64_t sub_1D6160B78(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = sub_1D726393C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v30 = a1;
  v21 = type metadata accessor for FeedLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  FeedLocation.serviceConfig.getter(v21, v22, v23, v14);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v24 = a2[2];
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24 = sub_1D617C808();
    v25 = *(v28 + 8);

    v25(v9, v29);
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  return v24;
}

uint64_t sub_1D6160F2C(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v5 + 104) = v4;
  *(v5 + 96) = a4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  v7 = *v4;
  *(v5 + 112) = *v4;
  v8 = *a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v5 + 120) = swift_task_alloc();
  v10 = *(v8 + 88);
  *(v5 + 128) = v10;
  v11 = *(v8 + 80);
  *(v5 + 136) = v11;
  *(v5 + 144) = swift_getAssociatedTypeWitness();
  v12 = sub_1D726393C();
  *(v5 + 152) = v12;
  *(v5 + 160) = *(v12 - 8);
  *(v5 + 168) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v9);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v13 = sub_1D726393C();
  *(v5 + 192) = v13;
  *(v5 + 200) = *(v13 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = *(v7 + 88);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v5 + 224) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 232) = AssociatedTypeWitness;
  *(v5 + 240) = *(AssociatedTypeWitness - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v15 = swift_checkMetadataState();
  *(v5 + 264) = v15;
  *(v5 + 272) = *(v15 - 8);
  *(v5 + 280) = swift_task_alloc();
  v17 = type metadata accessor for FeedServiceFetchResult.Internal(0, v11, v10, v16);
  *(v5 + 288) = v17;
  *(v5 + 296) = *(v17 - 8);
  *(v5 + 304) = swift_task_alloc();
  v18 = swift_task_alloc();
  v19 = *a1;
  *(v5 + 312) = v18;
  *(v5 + 320) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1D6161390, 0, 0);
}

uint64_t sub_1D6161390()
{
  v0[2] = v0[11];
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v1 = swift_task_alloc();
    *(v0 + 41) = v1;
    *v1 = v0;
    v1[1] = sub_1D6161590;
    v2 = *(v0 + 39);
    v3 = v0[12];
    v4 = *(v0 + 10);

    return sub_1D6163FF4(v2, v4, v3);
  }

  else
  {
    v6 = *(v0 + 11);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    FeedCursorContainer.init(cursor:)();
    *(v7 + 24) = v8;

    v9 = *(v0 + 1);

    return v9(v7 | 0x2000000000000000);
  }
}

uint64_t sub_1D6161590()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D6163924;
  }

  else
  {
    v2 = sub_1D61616A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D61616A4()
{
  v184 = v0;
  (*(v0[37] + 16))(v0[38], v0[39], v0[36]);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v2 = v0[38];
    v4 = v0[34];
    v3 = v0[35];
    v5 = v0[33];
    type metadata accessor for FeedCursor(255, v0[17], v0[16], v1);
    v6 = *(v2 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v4 + 32))(v3, v2, v5);
    v0[43] = sub_1D6F72868();
    v7 = sub_1D5F35B18();
    if ((v7 - 1) <= 2u)
    {
      v8 = v7;
      v9 = v0[10];
      v10 = *(v0[13] + 48);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_1D7279960;
      v13 = *(v9 + 32);
      v174 = v6;
      v152 = v10;
      v170 = v8;
      if (v13 <= 2)
      {
        if (*(v9 + 32))
        {
          if (v13 == 1)
          {
            v161 = 1852138867;
            v49 = 0xE400000000000000;
LABEL_44:
            v157 = v49;
            goto LABEL_45;
          }

          v57 = 0x6E657A6F7246;
        }

        else
        {
          v57 = 0x657669746341;
        }
      }

      else
      {
        if (*(v9 + 32) > 4u)
        {
          if (v13 == 5)
          {
            v50 = 0x6C6F6F706552;
          }

          else
          {
            v50 = 0x646E61707845;
          }

          v161 = v50 & 0xFFFFFFFFFFDFLL | 0x6465000000000020;
          v49 = 0xE800000000000000;
          goto LABEL_44;
        }

        if (v13 == 3)
        {
          v157 = 0xE900000000000064;
          v161 = 0x656546664F646E65;
LABEL_45:
          v58 = v0[32];
          v59 = v0[33];
          v60 = v0[29];
          v168 = v0[30];
          v61 = v0[28];
          v62 = MEMORY[0x1E69E6158];
          *(v11 + 56) = MEMORY[0x1E69E6158];
          v63 = sub_1D5B7E2C0();
          v12[8] = v63;
          v12[4] = v161;
          v12[5] = v157;
          v65 = *(v9 + 16);
          v64 = *(v9 + 24);
          v12[12] = v62;
          v12[13] = v63;
          v12[9] = v65;
          v12[10] = v64;

          v66 = sub_1D725AA4C();
          v12[17] = v62;
          v12[18] = v63;
          v12[14] = v66;
          v12[15] = v67;
          (*(v61 + 64))(v59, v61);
          v12[22] = v62;
          v12[23] = v63;
          swift_getAssociatedConformanceWitness();
          sub_1D726257C();
          (*(v168 + 8))(v58, v60);
          if (v170 == 1)
          {
            v68 = "dedupNextAsyncManifestGroups";
            v69 = 0xD000000000000010;
          }

          else if (v170 == 2)
          {
            v68 = "dedupNextSyncDatabaseGroups";
            v69 = 0xD00000000000001CLL;
          }

          else
          {
            v68 = "GroupIdentifiers";
            v69 = 0xD00000000000001BLL;
          }

          v70 = v62;
          v164 = v0[40];
          v137 = v0[35];
          v71 = v0[26];
          v135 = v0[27];
          v149 = v0[25];
          v72 = v0[23];
          v159 = v0[24];
          v73 = v0[21];
          v74 = v0[22];
          v142 = v0[20];
          v75 = v0[18];
          v145 = v0[19];
          v76 = v0[17];
          v132 = v0[15];
          v133 = v0[14];
          v12[27] = v70;
          v12[28] = v63;
          v12[24] = v69;
          v12[25] = v68 | 0x8000000000000000;
          v77 = sub_1D7262EDC();
          sub_1D725C30C("Service attempting to emit group from %{public}@ cursor %{public}@ with a consumed identifier=%{public}@, kind=%{public}@, dedupResult=%{public}@", 145, 2, &dword_1D5B42000, v152, v77, v12);

          (*(*(v76 - 8) + 56))(v71, 1, 1, v76);
          v177 = 7;
          v78 = sub_1D725891C();
          v79 = *(*(v78 - 8) + 56);
          v79(v72, 1, 1, v78);
          v79(v74, 1, 1, v78);
          (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
          v80 = type metadata accessor for FeedContext(0);
          (*(*(v80 - 8) + 56))(v132, 1, 1, v80);
          v81 = *(v174 + *(*v174 + 240));
          v82 = swift_task_alloc();
          v82[2] = *(v133 + 80);
          v82[3] = v135;
          v82[4] = v137;

          v83 = sub_1D5FBD65C(sub_1D617CC54, v82, v81);

          FeedJournal.init(entries:)(v83, &v178);
          v180 = v178;
          v181 = v179;
          v182 = 0;
          v183 = 256;
          v84 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v71, 0, &v177, v72, v74, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v73, v132, &v180, &v182, 0, 0, 0);
          v0[44] = v84;

          sub_1D5C086A4(v180, *(&v180 + 1), v181);
          v85 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v132, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v142 + 8))(v73, v145);
          v86 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v74, &qword_1EDF45B00, MEMORY[0x1E6969530], v85, sub_1D5B6BFD8);
          sub_1D5B88AA0(v72, &qword_1EDF45B00, v86, v85, sub_1D5B6BFD8);
          (*(v149 + 8))(v71, v159);
          v0[9] = v164;
          v87 = sub_1D726275C();
          v0[45] = v87;
          v88 = swift_task_alloc();
          v0[46] = v88;
          *v88 = v0;
          v88[1] = sub_1D6162D30;
          v89 = *(v0 + 12);
          v90 = v0 + 9;
          v91 = v84;
          goto LABEL_68;
        }

        v57 = 0x646568636143;
      }

      v161 = v57 | 0x20;
      v49 = 0xE600000000000000;
      goto LABEL_44;
    }

    v22 = *(v0[28] + 80);
    (v22)(&v180, v0[33]);
    v23 = v180;
    v24 = v6 + *(*v6 + 232);
    v25 = type metadata accessor for FeedContext(0);
    v26 = *(v25 + 24);
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v23)
    {
      if (*(v24 + v26))
      {
        goto LABEL_31;
      }
    }

    else if ((*(v24 + v26) & 1) == 0)
    {
LABEL_31:
      v51 = v0[10];
      v52 = *(v0[13] + 48);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      v54 = v53;
      *(v53 + 16) = xmmword_1D7279960;
      v55 = *(v51 + 32);
      v176 = v6;
      v141 = v25;
      v167 = v26;
      v172 = v24;
      v163 = v52;
      v154 = v22;
      if (v55 <= 2)
      {
        if (*(v51 + 32))
        {
          if (v55 == 1)
          {
            v148 = 0xE400000000000000;
            v56 = 1852138835;
          }

          else
          {
            v148 = 0xE600000000000000;
            v56 = 0x6E657A6F7246;
          }
        }

        else
        {
          v148 = 0xE600000000000000;
          v56 = 0x657669746341;
        }
      }

      else if (*(v51 + 32) > 4u)
      {
        v148 = 0xE800000000000000;
        if (v55 == 5)
        {
          v92 = 0x6C6F6F706552;
        }

        else
        {
          v92 = 0x646E61707845;
        }

        v56 = v92 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else if (v55 == 3)
      {
        v148 = 0xEB00000000646565;
        v56 = 0x4620666F20646E45;
      }

      else
      {
        v148 = 0xE600000000000000;
        v56 = 0x646568636143;
      }

      v146 = v56;
      v93 = v0[33];
      v95 = v0[30];
      v94 = v0[31];
      v96 = v0[28];
      v97 = v0[29];
      v98 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v99 = sub_1D5B7E2C0();
      *(v54 + 64) = v99;
      *(v54 + 32) = v146;
      *(v54 + 40) = v148;
      v100 = sub_1D725AA4C();
      *(v54 + 96) = v98;
      *(v54 + 104) = v99;
      *(v54 + 72) = v100;
      *(v54 + 80) = v101;
      (*(v96 + 64))(v93, v96);
      *(v54 + 136) = v98;
      *(v54 + 144) = v99;
      swift_getAssociatedConformanceWitness();
      sub_1D726257C();
      (*(v95 + 8))(v94, v97);
      v154(&v180, v93, v96);
      if (v180 > 1u)
      {
        v102 = v163;
        if (v180 == 2)
        {
          v103 = 0xE400000000000000;
          v104 = 1752461122;
        }

        else
        {
          v103 = 0xE700000000000000;
          v104 = 0x7265687469654ELL;
        }
      }

      else
      {
        v102 = v163;
        if (v180)
        {
          v103 = 0xE600000000000000;
          v104 = 0x646961706E55;
        }

        else
        {
          v103 = 0xE400000000000000;
          v104 = 1684627792;
        }
      }

      v105 = v0[35];
      v106 = v0[27];
      v150 = v0[26];
      v155 = v0[23];
      v160 = v0[22];
      v107 = v0[16];
      v108 = v0[17];
      *(v54 + 176) = MEMORY[0x1E69E6158];
      *(v54 + 184) = v99;
      *(v54 + 152) = v104;
      *(v54 + 160) = v103;
      v109 = *(v172 + v167);
      v110 = v0[14];
      v111 = MEMORY[0x1E69E63A8];
      *(v54 + 216) = MEMORY[0x1E69E6370];
      *(v54 + 224) = v111;
      *(v54 + 192) = v109;
      v112 = sub_1D7262EDC();
      sub_1D725C30C("Service skipping group emitted from %{public}@ cursor with identifier=%{public}@, kind=%{public}@, paidVisibility=%{public}@, isSubscribed=%d", 141, 2, &dword_1D5B42000, v102, v112, v54);

      v0[7] = *(v176 + qword_1EDFFCF40);
      v113 = swift_task_alloc();
      v169 = *(v110 + 80);
      v113[2] = v169;
      v113[3] = v106;
      v113[4] = v105;
      type metadata accessor for FeedCursorGroup(255, v108, v107, v114);
      sub_1D72627FC();

      swift_getWitnessTable();
      v115 = sub_1D7263E7C();

      (*(*(v108 - 8) + 56))(v150, 1, 1, v108);
      v177 = 7;
      v116 = sub_1D725891C();
      v117 = *(*(v116 - 8) + 56);
      v117(v155, 1, 1, v116);
      v117(v160, 1, 1, v116);
      v118 = *(v176 + qword_1EDFFCEF8);
      v119 = sub_1D726279C();

      v120 = sub_1D726279C();

      v121 = v119 - v120;
      if (__OFSUB__(v119, v120))
      {
        __break(1u);
      }

      else
      {
        v173 = v115;
        v165 = (v118 + v121);
        if (!__OFADD__(v118, v121))
        {
          v122 = v0[35];
          v156 = v0[40];
          v123 = v0[27];
          v139 = v0[26];
          v147 = v0[25];
          v151 = v0[24];
          v136 = v0[22];
          v138 = v0[23];
          v134 = v0[21];
          v140 = v0[20];
          v143 = v0[19];
          v124 = v0[15];
          (*(*(v0[18] - 8) + 56))();
          (*(*(v141 - 8) + 56))(v124, 1, 1);
          v125 = *(v176 + *(*v176 + 240));
          v126 = swift_task_alloc();
          v126[2] = v169;
          v126[3] = v123;
          v126[4] = v122;
          v126[5] = v176;

          v127 = sub_1D5FBD65C(sub_1D617CC34, v126, v125);

          FeedJournal.init(entries:)(v127, &v178);
          v180 = v178;
          v181 = v179;
          v182 = 0;
          v183 = 256;
          v128 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v139, 0, &v177, v138, v136, 0, 0, 0, 0, v173, 0, v165, 0, 0, 1, 0, 1, 0, 0, v134, v124, &v180, &v182, 0, 0, 0);
          v0[49] = v128;

          sub_1D5C086A4(v180, *(&v180 + 1), v181);
          v129 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v124, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v140 + 8))(v134, v143);
          v130 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v136, &qword_1EDF45B00, MEMORY[0x1E6969530], v129, sub_1D5B6BFD8);
          sub_1D5B88AA0(v138, &qword_1EDF45B00, v130, v129, sub_1D5B6BFD8);
          (*(v147 + 8))(v139, v151);
          v0[8] = v156;
          v87 = sub_1D726275C();
          v0[50] = v87;
          v131 = swift_task_alloc();
          v0[51] = v131;
          *v131 = v0;
          v131[1] = sub_1D6162FA8;
          v89 = *(v0 + 12);
          v90 = v0 + 8;
          v91 = v128;
LABEL_68:

          sub_1D6160F2C(v90, v91, v87, v89);
          return;
        }
      }

      __break(1u);
      return;
    }

    v32 = v0[40];

    v0[6] = v32;
    v29 = v0 + 6;
    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    v31 = sub_1D6163224;
    goto LABEL_19;
  }

  v14 = v0[40];
  v15 = v0[38];
  v16 = *v15;
  v0[57] = *v15;
  if (v14 >> 60 == 4)
  {
    v17 = v0[39];
    v18 = v0[36];
    v19 = v0[37];
    type metadata accessor for FeedServiceError(0, v0[17], v0[16], v1);
    swift_getWitnessTable();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 6;
    swift_willThrow();

    (*(v19 + 8))(v17, v18);

    v21 = v0[1];

    v21();
  }

  else
  {
    v28 = v0[16];
    v27 = v0[17];
    v0[3] = *(v16 + qword_1EDFFCF10);
    type metadata accessor for FeedGroupEmitter(255, v27, v28, v1);
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v0[5] = v0[40];
      v29 = v0 + 5;
      v30 = swift_task_alloc();
      v0[58] = v30;
      *v30 = v0;
      v31 = sub_1D6163484;
LABEL_19:
      v30[1] = v31;
      v33 = v0[39];
      v34 = *(v0 + 12);

      sub_1D6164CE0(v29, v33, v34);
      return;
    }

    v35 = v0[23];
    v171 = v0[25];
    v175 = v0[24];
    v153 = v35;
    v158 = v0[26];
    v37 = v0[21];
    v36 = v0[22];
    v162 = v0[20];
    v166 = v0[19];
    v38 = v0[18];
    v144 = v0[15];
    (*(*(v0[17] - 8) + 56))();
    v177 = 7;
    v39 = sub_1D725891C();
    v40 = *(*(v39 - 8) + 56);
    v40(v35, 1, 1, v39);
    v41 = v36;
    v40(v36, 1, 1, v39);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v42 = type metadata accessor for FeedContext(0);
    (*(*(v42 - 8) + 56))(v144, 1, 1, v42);

    FeedJournal.init(entries:)(v43, &v178);
    v180 = v178;
    v181 = v179;
    v182 = 0;
    v183 = 256;
    v44 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v158, 0, &v177, v153, v36, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v37, v144, &v180, &v182, 0, 0, 0);
    v0[61] = v44;
    sub_1D5C086A4(v180, *(&v180 + 1), v181);
    v45 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v144, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v162 + 8))(v37, v166);
    v46 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v41, &qword_1EDF45B00, MEMORY[0x1E6969530], v45, sub_1D5B6BFD8);
    sub_1D5B88AA0(v153, &qword_1EDF45B00, v46, v45, sub_1D5B6BFD8);
    (*(v171 + 8))(v158, v175);
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    v0[4] = v47 | 0x5000000000000000;

    v48 = swift_task_alloc();
    v0[62] = v48;
    *v48 = v0;
    v48[1] = sub_1D61636C4;

    sub_1D5C795F8(v0 + 4);
  }
}

uint64_t sub_1D6162D30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_1D6163C44;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_1D6162E68;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6162E68()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[48];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6162FA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = sub_1D6163D80;
  }

  else
  {
    *(v4 + 424) = a1;
    v5 = sub_1D61630E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61630E0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[53];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6163224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_1D6163EC0;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_1D616334C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D616334C()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[56];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6163484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_1D6163A10;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_1D61635AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61635AC()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  v6 = v0[60];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1D61636C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {

    v5 = sub_1D6163B24;
  }

  else
  {
    *(v4 + 512) = a1;

    v5 = sub_1D6163800;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6163800()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  v6 = v0[64];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1D6163924()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6163A10()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6163B24()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6163C44()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163D80()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163EC0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163FF4(uint64_t a1, void *a2, double a3)
{
  *(v4 + 176) = v3;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6164044, 0, 0);
}

uint64_t sub_1D6164044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = v4;
  v5 = FeedCursor.nextSlotIndex.getter(a1, a2, a3, a4);
  if ((FeedCursor.reachedEnd.getter(v5, v6, v7, v8) & 1) == 0)
  {
    v12 = *(v4 + 184);
    *(v4 + 96) = *(*(v4 + 160) + qword_1EDFFCF38);
    v13 = *(v12 + 80);
    v14 = *(v12 + 88);
    type metadata accessor for FeedDatabaseGroup(255, v13, v14, v9);
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    v16 = *(v4 + 104);
    *(v4 + 192) = v16;
    if (v16)
    {
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E6530];
      *(v17 + 16) = xmmword_1D7270C10;
      v19 = MEMORY[0x1E69E65A8];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = v5;
      v20 = sub_1D726279C();
      *(v17 + 96) = v18;
      *(v17 + 104) = v19;
      *(v17 + 72) = v20;
      sub_1D7262EDC();
      sub_1D725C30C("Service attempting to create group from a database group, slot=%ld, available=%ld", v58, v59);

      v21 = swift_task_alloc();
      *(v4 + 200) = v21;
      *v21 = v4;
      v21[1] = sub_1D616485C;
      v22 = *(v4 + 168);
      v23 = *(v4 + 152);
      v24 = *(v4 + 160);

      return sub_1D6167360(v23, v16, v24, v22);
    }

    *(v4 + 120) = v5;
    type metadata accessor for FeedGroupEmitter(255, v13, v14, v15);
    sub_1D72627FC();
    v27 = MEMORY[0x1E69E6530];
    sub_1D7261E3C();
    v28 = *(v4 + 112);
    *(v4 + 216) = v28;
    if (v28)
    {
      *(v4 + 136) = v28;
      swift_getWitnessTable();
      if ((sub_1D7262CCC() & 1) == 0)
      {
        v45 = *(*(v4 + 176) + 48);
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1D7270C10;
        v47 = MEMORY[0x1E69E65A8];
        *(v46 + 56) = v27;
        *(v46 + 64) = v47;
        *(v46 + 32) = v5;
        v61 = 0;
        v62 = 0xE000000000000000;
        *(v4 + 144) = v28;
        swift_getWitnessTable();
        sub_1D726466C();
        v48 = v61;
        v49 = v62;
        *(v46 + 96) = MEMORY[0x1E69E6158];
        *(v46 + 104) = sub_1D5B7E2C0();
        *(v46 + 72) = v48;
        *(v46 + 80) = v49;
        v50 = sub_1D7262EDC();
        sub_1D725C30C("Service attempting to create group from slotted emitter, slot=%ld, available=%{public}@", 87, 2, &dword_1D5B42000, v45, v50, v46);

        sub_1D5BEE1B8(0, &unk_1EDF19500, v27, MEMORY[0x1E69E6F90]);
        v51 = swift_allocObject();
        *(v4 + 224) = v51;
        *(v51 + 16) = xmmword_1D7273AE0;
        *(v51 + 32) = v5;
        v52 = swift_task_alloc();
        *(v4 + 232) = v52;
        *v52 = v4;
        v52[1] = sub_1D61649D4;
        v53 = *(v4 + 168);
        v54 = *(v4 + 152);
        v55 = *(v4 + 160);

        return sub_1D6169034(v54, v28, v55, v51, v53);
      }
    }

    v29 = *(v4 + 160);
    v30 = *(*(v4 + 176) + 48);
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7270C10;
    v32 = MEMORY[0x1E69E65A8];
    *(v31 + 56) = v27;
    *(v31 + 64) = v32;
    *(v31 + 32) = v5;
    v61 = 0;
    v62 = 0xE000000000000000;
    *(v4 + 128) = *(v29 + qword_1EDFFCF48);
    swift_getWitnessTable();
    sub_1D726466C();
    v34 = v61;
    v33 = v62;
    *(v31 + 96) = MEMORY[0x1E69E6158];
    *(v31 + 104) = sub_1D5B7E2C0();
    *(v31 + 72) = v34;
    *(v31 + 80) = v33;
    v35 = sub_1D7262EDC();
    sub_1D725C30C("Service attempting to create group from open emitters, slot=%ld, available=%{public}@", 85, 2, &dword_1D5B42000, v30, v35, v31);

    v38 = swift_task_alloc();
    *(v4 + 248) = v38;
    *v38 = v4;
    v38[1] = sub_1D6164B1C;
    v39 = *(v4 + 168);
    v40 = *(v4 + 152);
    v41 = *(v4 + 160);

    return sub_1D6170884(v40, v41, v39, v36, v37);
  }

  sub_1D617CCB4(*(v4 + 176) + 120, v4 + 56);
  if (!*(v4 + 80))
  {
    sub_1D617D2E4(v4 + 56, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
LABEL_19:
    v44 = *(v4 + 184);
    **(v4 + 152) = *(v4 + 160);
    type metadata accessor for FeedServiceFetchResult.Internal(0, *(v44 + 80), *(v44 + 88), v26);
    swift_storeEnumTagMultiPayload();
    v60 = *(v4 + 8);

    return v60();
  }

  sub_1D5B63F14((v4 + 56), v4 + 16);
  v11 = *(v4 + 40);
  v10 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v11);
  if (!FeedOfflineProviding.isOffline.getter(v11, v10))
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    goto LABEL_19;
  }

  FeedCursor.feedMode.getter(&v61);
  if (v61 == 1)
  {

    goto LABEL_18;
  }

  v42 = sub_1D72646CC();

  if (v42)
  {
    goto LABEL_18;
  }

  type metadata accessor for FeedServiceError(0, *(*(v4 + 184) + 80), *(*(v4 + 184) + 88), v43);
  swift_getWitnessTable();
  swift_allocError();
  *v56 = 2;
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 6;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1((v4 + 16));
  v57 = *(v4 + 8);

  return v57();
}

uint64_t sub_1D616485C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D6164C10;
  }

  else
  {
    v2 = sub_1D6164970;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6164970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61649D4()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6164C74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6164B1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6164C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6164C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6164CE0(uint64_t *a1, uint64_t a2, double a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  v6 = *v3;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = *(v6 + 88);
  *(v4 + 168) = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 176) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 184) = AssociatedConformanceWitness;
  *(v4 + 192) = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  *(v4 + 200) = v10;
  *(v4 + 208) = *(v10 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v11 = sub_1D726393C();
  *(v4 + 264) = v11;
  *(v4 + 272) = *(v11 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  *(v4 + 296) = v12;
  *(v4 + 304) = *(v12 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v14 = type metadata accessor for FeedServiceFetchResult.Internal(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  *(v4 + 328) = v14;
  *(v4 + 336) = *(v14 - 8);
  *(v4 + 344) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a1;
  *(v4 + 352) = v15;
  *(v4 + 360) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D61650DC, 0, 0);
}

uint64_t sub_1D61650DC()
{
  v83 = v0;
  v1 = *(v0[42] + 16);
  v1(v0[44], v0[15], v0[41]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v0[44];
    v27 = v0[40];
    v28 = v0[37];
    v29 = v0[38];
    v31 = v0[22];
    v30 = v0[23];
    type metadata accessor for FeedCursor(255, v31, v30, v3);
    swift_getTupleTypeMetadata2();
    (*(v29 + 32))(v27, v26, v28);
    type metadata accessor for FeedCursorContainer(255, v31, v30, v32);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = swift_allocBox();
    v36 = v35;
    v37 = *(TupleTypeMetadata2 + 48);
    (*(v29 + 16))(v35, v27, v28);
    FeedCursorContainer.init(cursor:)();
    *(v36 + v37) = v38;

    v76 = sub_1D5D0E228(v34);

    (*(v29 + 8))(v27, v28);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[44];
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[37];
    type metadata accessor for FeedCursor(255, v0[22], v0[23], v3);
    v8 = *(v4 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v6 + 32))(v5, v4, v7);
    v9 = *(*v8 + 272);
    swift_beginAccess();
    v12 = v0[38];
    v11 = v0[39];
    v13 = v0[37];
    v15 = v0[22];
    v14 = v0[23];
    if (*(v8 + v9))
    {
      v16 = *(v0[17] + 48);
      v17 = sub_1D7262EDC();
      sub_1D725C30C("Service converted last group to next group for chained cursor", 61, 2, &dword_1D5B42000, v16, v17, MEMORY[0x1E69E7CC0]);
      type metadata accessor for FeedCursorContainer(255, v15, v14, v18);
      v19 = swift_getTupleTypeMetadata2();
      v20 = swift_allocBox();
      v22 = v21;
      v23 = *(v19 + 48);
      (*(v12 + 16))(v21, v11, v13);
      FeedCursorContainer.init(cursor:)();
      *(v22 + v23) = v24;

      v25 = v20;
    }

    else
    {
      type metadata accessor for FeedCursorContainer(255, v0[22], v0[23], v10);
      v45 = swift_getTupleTypeMetadata2();
      v46 = swift_allocBox();
      v48 = v47;
      v49 = *(v45 + 48);
      (*(v12 + 16))(v47, v11, v13);
      FeedCursorContainer.init(cursor:)();
      *(v48 + v49) = v50;

      v25 = v46 | 0x4000000000000000;
    }

    v76 = sub_1D5D0E228(v25);

    (*(v12 + 8))(v11, v13);
    goto LABEL_12;
  }

  v39 = v0[44];
  v40 = *v39;
  v0[46] = *v39;
  v41 = *(*v40 + 272);
  swift_beginAccess();
  v42 = *(v40 + v41);
  v0[47] = v42;
  if (!v42)
  {
    if ((v0[45] >> 60) - 5 >= 2)
    {
      v65 = v0[43];
      v66 = v0[41];
      v68 = v0[22];
      v67 = v0[23];
      v69 = v0[15];

      v1(v65, v69, v66);
      v76 = sub_1D6E57FB8(v65, v68, v67, v70);
    }

    else
    {
      v72 = v0[35];
      v75 = v0[34];
      v77 = v0[33];
      v53 = v0[29];
      v52 = v0[30];
      v71 = v52;
      v54 = v0[27];
      v55 = v0[24];
      v73 = v0[26];
      v74 = v0[25];
      v56 = v0[18];
      (*(*(v0[22] - 8) + 56))();
      v78 = 3;
      v57 = sub_1D725891C();
      v58 = *(*(v57 - 8) + 56);
      v58(v52, 1, 1, v57);
      v58(v53, 1, 1, v57);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      v59 = type metadata accessor for FeedContext(0);
      (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
      v80 = 0;
      v81 = 0;
      v79 = 0u;
      v82 = 256;
      v60 = v53;
      FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v72, 0, &v78, v71, v53, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v54, v56, &v79, &v81, 0, 0, 0);

      v61 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v56, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v73 + 8))(v54, v74);
      v62 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v60, &qword_1EDF45B00, MEMORY[0x1E6969530], v61, sub_1D5B6BFD8);
      sub_1D5B88AA0(v71, &qword_1EDF45B00, v62, v61, sub_1D5B6BFD8);
      (*(v75 + 8))(v72, v77);
      v63 = swift_allocObject();
      FeedCursorContainer.init(cursor:)();
      *(v63 + 16) = v64;
      v76 = v63 | 0x8000000000000000;
    }

LABEL_12:

    v51 = v0[1];

    return v51(v76);
  }

  v43 = swift_task_alloc();
  v0[48] = v43;
  *v43 = v0;
  v43[1] = sub_1D61658F4;

  return sub_1D6F72B98();
}