uint64_t sub_1C9951BD0(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_1C9951C2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = sub_1C97A2CEC(&qword_1EC3CDD50, &qword_1C9AB9CC8);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99536FC();
  sub_1C9A93DD8();
  v16 = 0;
  sub_1C9953B28();
  sub_1C9A939C8();
  if (!v4)
  {
    v15 = 1;
    sub_1C9953B28();
    sub_1C9A939E8();
    v14 = 2;
    sub_1C9953B28();
    sub_1C9A93A08();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C9951DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1C9A92528();
  v7 = 0.0;
  if (a5 != 0.0)
  {
    v7 = a5;
  }

  MEMORY[0x1CCA919B0](*&v7);
  return MEMORY[0x1CCA91980](a4);
}

uint64_t sub_1C9951E10(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C9A93CC8();
  sub_1C9951DC0(v9, a1, a2, a3, a4);
  return sub_1C9A93D18();
}

double sub_1C9951E80(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CDD40, &qword_1C9AB9CC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99536FC();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97C2CA4();
    sub_1C9A938A8();
    sub_1C97C2CA4();
    sub_1C9A938C8();
    v2 = v6;
    sub_1C97C2CA4();
    sub_1C9A938E8();
    v7 = sub_1C9953B18();
    v8(v7);
  }

  sub_1C97A592C(a1);
  return v2;
}

uint64_t sub_1C9952080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C9ADA4D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9952150(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

uint64_t sub_1C995218C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CDD28, &qword_1C9AB9CB8);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9953588();
  sub_1C9A93DD8();
  v14 = a2;
  v13[15] = 0;
  sub_1C97A2CEC(&qword_1EC3CDD10, &qword_1C9AB9CB0);
  sub_1C9953630(&qword_1EC3CDD30, sub_1C99536A8, MEMORY[0x1E69E6300]);
  sub_1C9953B28();
  sub_1C9A93A18();
  if (!v3)
  {
    v13[14] = 1;
    sub_1C9953B28();
    sub_1C9A93A08();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C995236C(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C99523C4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CDD00, &qword_1C9AB9CA8);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1C97A5A8C(a1, v9);
  sub_1C9953588();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97A2CEC(&qword_1EC3CDD10, &qword_1C9AB9CB0);
    v11[7] = 0;
    sub_1C9953630(&qword_1EC3CDD18, sub_1C99535DC, MEMORY[0x1E69E6330]);
    sub_1C9A938F8();
    v9 = v12;
    v11[6] = 1;
    sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C99525C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9951AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99525EC(uint64_t a1)
{
  v2 = sub_1C99536FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9952628(uint64_t a1)
{
  v2 = sub_1C99536FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9952684()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = v0[3];
  sub_1C9A93CC8();
  sub_1C9951DC0(v6, v1, v2, v4, v3);
  return sub_1C9A93D18();
}

void sub_1C99526EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C9951E80(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

uint64_t sub_1C9952770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9952080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9952798(uint64_t a1)
{
  v2 = sub_1C9953588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99527D4(uint64_t a1)
{
  v2 = sub_1C9953588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9952820()
{
  v1 = *(v0 + 8);
  sub_1C9A93CC8();
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9952878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99523C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1C99528D4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = *a3;
  if (*(a1 + 16) == *(*a3 + 16))
  {

    v9 = sub_1C99516A4(a1, v5, a5);

    v10 = *(v9 + 16);
    if (v10)
    {
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C97B7C28(0, v10, 0);
      v11 = v37;
      v12 = *(v37 + 16);
      v13 = (v9 + 56);
      do
      {
        v15 = *v13;
        v13 += 4;
        v14 = v15;
        v16 = *(v37 + 24);
        if (v12 >= v16 >> 1)
        {
          sub_1C97B7C28(v16 > 1, v12 + 1, 1);
        }

        *(v37 + 16) = v12 + 1;
        *(v37 + 8 * v12++ + 32) = v14;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v17 = 0;
    *a3 = v11;
    v18 = *(v9 + 16);
    v19 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v20 = v9 + 32 * v17;
    while (v18 != v17)
    {
      if (v17 >= *(v9 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      ++v17;
      v21 = (v20 + 32);
      v22 = *(v20 + 40);
      v20 += 32;
      if (v22)
      {
        v23 = *v21;
        v24 = v21[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C97E6BC0();
          v19 = v27;
        }

        v25 = *(v19 + 16);
        if (v25 >= *(v19 + 24) >> 1)
        {
          sub_1C97E6BC0();
          v19 = v28;
        }

        *(v19 + 16) = v25 + 1;
        v26 = (v19 + 24 * v25);
        v26[4] = v23;
        v26[5] = v22;
        v26[6] = v24;
        goto LABEL_11;
      }
    }

    v29 = *(v19 + 16);
    if (!v29)
    {

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        return;
      }

      goto LABEL_34;
    }

    v30 = *(v19 + 48);

    v31 = 1;
LABEL_22:
    v32 = 24 * v31;
    while (v29 != v31)
    {
      if (v31 >= *(v19 + 16))
      {
        goto LABEL_33;
      }

      ++v31;
      v33 = *(v19 + v32 + 48);
      v32 += 24;
      if (v30 <= v33)
      {

        v30 = v33;
        goto LABEL_22;
      }
    }

    v34 = *a4;
    if (*a4 >= a2)
    {
      *a4 = 0;
    }

    else
    {

      *a4 = v34 + 1;
    }
  }

  else
  {
    sub_1C9952C18();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1C9952C18()
{
  result = qword_1EC3CDCD0;
  if (!qword_1EC3CDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCD0);
  }

  return result;
}

uint64_t (*sub_1C9952C6C(uint64_t a1, uint64_t a2, uint64_t *a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28(0, v8, 0);
    v9 = v16;
    v10 = *(v16 + 16);
    do
    {
      v11 = *(v16 + 24);
      if (v10 >= v11 >> 1)
      {
        sub_1C97B7C28(v11 > 1, v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      *(v16 + 8 * v10++ + 32) = 0;
      --v8;
    }

    while (v8);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v12;
  v14[5] = v13;
  v14[6] = v5;
  v14[7] = v6;
  v14[8] = v7;

  return sub_1C9953380;
}

uint64_t sub_1C9952DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v46 = *a2;
  v50 = *(a2 + 8);
  v48 = *(a2 + 12);
  v16 = *(a2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  sub_1C99528D4(a3, a4, (a5 + 16), (a6 + 16), a1);
  if (v10)
  {
    swift_endAccess();
    return swift_endAccess();
  }

  v20 = v18;
  v45 = v16;
  if (!v18)
  {
    v21 = 0;
    v42 = 0;
    v38 = 0;
    v54 = 0;
    v49 = 0;
    v51 = 0;
    v39 = 0;
    v29 = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_17;
  }

  v21 = v17;
  v22 = 0;
  v23 = *(a3 + 16);
  v24 = (a3 + 40);
  v25 = a1;
  while (1)
  {
    if (v23 == v22)
    {
      goto LABEL_20;
    }

    if (*(v24 - 1) == v21 && v20 == *v24)
    {
      break;
    }

    v27 = sub_1C9A93B18();
    v25 = a1;
    if (v27)
    {
      break;
    }

    ++v22;
    v24 += 4;
  }

  v28 = *(a5 + 16);
  if (v22 >= *(v28 + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    for (i = 171; ; i = 175)
    {
      sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "SoundAnalysis/SoundActionsUtils.swift", 37, 2, i);
      __break(1u);
LABEL_22:
      ;
    }
  }

  v29 = *(v28 + 8 * v22 + 32);
  v30 = sub_1C9878464(v21, v20, v25);
  if (v31)
  {
    goto LABEL_22;
  }

  v44 = v30;
  v56 = a7;
  v57 = a8;
  v58 = a10;
  v32 = __OFSUB__(v29, 1);
  v33 = v29 - 1;
  LODWORD(v29) = v50;
  if (v32)
  {
    goto LABEL_19;
  }

  sub_1C98B2718(&v56, v33, &v59);
  v56 = v46;
  v57 = __PAIR64__(v48, v50);
  v58 = v45;
  sub_1C98B2694();
  v34 = v59;
  v35 = v62;
  v37 = v60;
  v36 = v61;
  v55 = v48;
  sub_1C98B2620();
  v54 = v35;
  v51 = v37;
  v38 = v34;
  sub_1C98B2694();
  v49 = v46;
  v39 = v45;
  v29 = v29;
  v40 = v36 << 32;
  v41 = v55 << 32;
  v42 = v44;
LABEL_17:
  swift_endAccess();
  result = swift_endAccess();
  *a9 = v21;
  a9[1] = v20;
  a9[2] = v42;
  a9[3] = v38;
  a9[4] = v40 | v51;
  a9[5] = v54;
  a9[6] = v49;
  a9[7] = v41 | v29;
  a9[8] = v39;
  return result;
}

char *sub_1C9953118(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, void *), char *a4)
{
  v8 = sub_1C9805AC4(a1);
  if (!v4)
  {
    v9 = *(a2 + 40);
    v25[0] = *a2;
    v25[1] = *(a2 + 8);
    v26 = *(a2 + 16);
    v27 = *(a2 + 32);
    v28 = v9;
    a3(__src, v8, v25);

    memcpy(__dst, __src, sizeof(__dst));
    v12 = __dst[1];
    if (__dst[1])
    {
      v21 = __dst[8];
      v14 = __dst[5];
      v13 = __dst[6];
      v15 = __dst[3];
      v16 = __dst[2];
      v17 = __dst[0];
      a4 = [objc_allocWithZone(type metadata accessor for SNSoundActionsResult(v11)) init];
      v18 = &a4[OBJC_IVAR___SNSoundActionsResult_impl];
      v19 = __dst[7];
      v20 = __dst[4];
      *(v18 + 7) = v17;
      *(v18 + 8) = v12;
      memcpy(v23, __dst, sizeof(v23));
      sub_1C99532A8(v23, v22);
      *(v18 + 6) = v16;

      sub_1C9953318(__dst);
      v30[0] = v15;
      v30[1] = v20;
      v30[2] = v14;
      v30[3] = v13;
      v30[4] = v19;
      v30[5] = v21;
      SNSoundActionsResult.timeRange.setter(v30);
    }

    else
    {
      return 0;
    }
  }

  return a4;
}

uint64_t sub_1C99532A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CDCD8, &qword_1C9AB99F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9953318(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CDCE0, &qword_1C9AB99F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C99533D8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9953484()
{
  result = qword_1EC3CDCE8;
  if (!qword_1EC3CDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCE8);
  }

  return result;
}

unint64_t sub_1C99534DC()
{
  result = qword_1EC3CDCF0;
  if (!qword_1EC3CDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCF0);
  }

  return result;
}

unint64_t sub_1C9953534()
{
  result = qword_1EC3CDCF8;
  if (!qword_1EC3CDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCF8);
  }

  return result;
}

unint64_t sub_1C9953588()
{
  result = qword_1EC3CDD08;
  if (!qword_1EC3CDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD08);
  }

  return result;
}

unint64_t sub_1C99535DC()
{
  result = qword_1EC3CDD20;
  if (!qword_1EC3CDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD20);
  }

  return result;
}

uint64_t sub_1C9953630(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CDD10, &qword_1C9AB9CB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C99536A8()
{
  result = qword_1EC3CDD38;
  if (!qword_1EC3CDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD38);
  }

  return result;
}

unint64_t sub_1C99536FC()
{
  result = qword_1EC3CDD48;
  if (!qword_1EC3CDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsUtils.PostProcessingBlueprint.Action.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsUtils.PostProcessingBlueprint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C995390C()
{
  result = qword_1EC3CDD58;
  if (!qword_1EC3CDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD58);
  }

  return result;
}

unint64_t sub_1C9953964()
{
  result = qword_1EC3CDD60;
  if (!qword_1EC3CDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD60);
  }

  return result;
}

unint64_t sub_1C99539BC()
{
  result = qword_1EC3CDD68;
  if (!qword_1EC3CDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD68);
  }

  return result;
}

unint64_t sub_1C9953A14()
{
  result = qword_1EC3CDD70;
  if (!qword_1EC3CDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD70);
  }

  return result;
}

unint64_t sub_1C9953A6C()
{
  result = qword_1EC3CDD78;
  if (!qword_1EC3CDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD78);
  }

  return result;
}

unint64_t sub_1C9953AC4()
{
  result = qword_1EC3CDD80;
  if (!qword_1EC3CDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDD80);
  }

  return result;
}

uint64_t sub_1C9953B34()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CE5D8, &qword_1C9ABC330);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  v8 = v0;
  sub_1C996FE74(&unk_1EC3CE4C8);
  sub_1C9A92028();
  sub_1C9A91D88();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C996F9D4;
  *(v5 + 24) = 0;
  sub_1C97A2CEC(&qword_1EC3CE5E0, &qword_1C9ABC338);
  sub_1C996FE74(&unk_1EC3CE5E8);
  sub_1C996FE74(&unk_1EC3CE5F0);
  sub_1C9A92078();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C9953D8C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v79 = a3;
  v73 = a4;
  v71 = sub_1C97A2CEC(&qword_1EC3C7740, &qword_1C9A9FD48);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v60 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3CD5C0, &qword_1C9AB7980);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v60 - v9;
  v10 = sub_1C9A91748();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  sub_1C9A91738();
  v81 = 0;
  v82 = 0xE000000000000000;
  LODWORD(v78) = a1;
  v83 = a1;
  sub_1C9A93728();
  v18 = v81;
  v19 = v82;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v20 = sub_1C9A91B58();
  v21 = sub_1C97BFF6C(v20, qword_1EC3D3108);
  v64 = *(v80 + 16);
  v65 = v80 + 16;
  v64(v15, v17, v10);

  v66 = v21;
  v22 = sub_1C9A91B38();
  v23 = sub_1C9A92FC8();

  LODWORD(v75) = v23;
  v76 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v81 = v26;
    *v25 = 136315394;
    sub_1C996D568(&qword_1EC3C5480);
    v27 = sub_1C9A93A98();
    v63 = v17;
    v28 = v10;
    v30 = v29;
    v77 = *(v80 + 8);
    v77(v15, v28);
    v31 = sub_1C9849140(v27, v30, &v81);
    v10 = v28;
    v17 = v63;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1C9849140(v18, v19, &v81);
    v32 = v76;
    _os_log_impl(&dword_1C9788000, v76, v75, "Started Creating Sound Recognition Session %s (%s)", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v26, -1, -1);
    v33 = v25;
    v5 = v62;
    MEMORY[0x1CCA93280](v33, -1, -1);
  }

  else
  {

    v77 = *(v80 + 8);
    v77(v15, v10);
  }

  v34 = sub_1C99586E4(v78, v17, v79, a2);
  if (v5)
  {

    return (v77)(v17, v10);
  }

  else
  {
    v36 = v34;
    v79 = 0;
    v37 = swift_allocObject();
    v37[2] = sub_1C9945DA8;
    v37[3] = 0;
    v37[4] = v36;
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    v38 = v67;
    sub_1C9A91EF8();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1C9A935B8();

    v81 = 0xD000000000000018;
    v82 = 0x80000001C9AD9E50;
    v76 = sub_1C996D568(&qword_1EC3C5480);
    v39 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v39);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v78 = v18;
    MEMORY[0x1CCA90230](v18, v19);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v40 = v68;
    sub_1C993AFD4();

    (*(v69 + 8))(v38, v71);
    sub_1C996FE74(&unk_1EC3CD5D8);
    v41 = v72;
    v42 = sub_1C9A91F28();
    (*(v70 + 8))(v40, v41);
    v43 = v73;
    v44 = v64;
    v64(v73, v17, v10);
    *&v43[*(type metadata accessor for SoundRecognition.Session(0) + 20)] = v42;
    v45 = v74;
    v44(v74, v17, v10);

    v46 = sub_1C9A91B38();
    v47 = sub_1C9A92FC8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v49 = 136315394;
      v50 = sub_1C9A93A98();
      v51 = v77;
      v52 = v50;
      v53 = v10;
      v61 = v10;
      v55 = v54;
      v63 = v17;
      v77(v48, v53);
      v56 = sub_1C9849140(v52, v55, &v81);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      v57 = sub_1C9849140(v78, v19, &v81);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_1C9788000, v46, v47, "Finished Creating Sound Recognition Session %s (%s)", v49, 0x16u);
      v58 = v75;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v58, -1, -1);
      MEMORY[0x1CCA93280](v49, -1, -1);

      return v51(v63, v61);
    }

    else
    {

      v59 = v77;
      v77(v45, v10);
      return v59(v17, v10);
    }
  }
}

uint64_t sub_1C9954680@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v79 = a3;
  v73 = a4;
  v71 = sub_1C97A2CEC(&qword_1EC3C7740, &qword_1C9A9FD48);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v60 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3CD5C0, &qword_1C9AB7980);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v60 - v9;
  v10 = sub_1C9A91748();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  sub_1C9A91738();
  v81 = 0;
  v82 = 0xE000000000000000;
  LODWORD(v78) = a1;
  v83 = a1;
  sub_1C9A93728();
  v18 = v81;
  v19 = v82;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v20 = sub_1C9A91B58();
  v21 = sub_1C97BFF6C(v20, qword_1EC3D3108);
  v64 = *(v80 + 16);
  v65 = v80 + 16;
  v64(v15, v17, v10);

  v66 = v21;
  v22 = sub_1C9A91B38();
  v23 = sub_1C9A92FC8();

  LODWORD(v75) = v23;
  v76 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v81 = v26;
    *v25 = 136315394;
    sub_1C996D568(&qword_1EC3C5480);
    v27 = sub_1C9A93A98();
    v63 = v17;
    v28 = v10;
    v30 = v29;
    v77 = *(v80 + 8);
    v77(v15, v28);
    v31 = sub_1C9849140(v27, v30, &v81);
    v10 = v28;
    v17 = v63;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1C9849140(v18, v19, &v81);
    v32 = v76;
    _os_log_impl(&dword_1C9788000, v76, v75, "Started Creating Sound Recognition Session %s (%s)", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v26, -1, -1);
    v33 = v25;
    v5 = v62;
    MEMORY[0x1CCA93280](v33, -1, -1);
  }

  else
  {

    v77 = *(v80 + 8);
    v77(v15, v10);
  }

  v34 = sub_1C99588D4(v78, v17, v79, a2);
  if (v5)
  {

    return (v77)(v17, v10);
  }

  else
  {
    v36 = v34;
    v79 = 0;
    v37 = swift_allocObject();
    v37[2] = sub_1C9945DA8;
    v37[3] = 0;
    v37[4] = v36;
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    v38 = v67;
    sub_1C9A91EF8();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1C9A935B8();

    v81 = 0xD000000000000018;
    v82 = 0x80000001C9AD9E50;
    v76 = sub_1C996D568(&qword_1EC3C5480);
    v39 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v39);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v78 = v18;
    MEMORY[0x1CCA90230](v18, v19);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v40 = v68;
    sub_1C993AFD4();

    (*(v69 + 8))(v38, v71);
    sub_1C996FE74(&unk_1EC3CD5D8);
    v41 = v72;
    v42 = sub_1C9A91F28();
    (*(v70 + 8))(v40, v41);
    v43 = v73;
    v44 = v64;
    v64(v73, v17, v10);
    *&v43[*(type metadata accessor for SoundRecognition.Session(0) + 20)] = v42;
    v45 = v74;
    v44(v74, v17, v10);

    v46 = sub_1C9A91B38();
    v47 = sub_1C9A92FC8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v49 = 136315394;
      v50 = sub_1C9A93A98();
      v51 = v77;
      v52 = v50;
      v53 = v10;
      v61 = v10;
      v55 = v54;
      v63 = v17;
      v77(v48, v53);
      v56 = sub_1C9849140(v52, v55, &v81);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      v57 = sub_1C9849140(v78, v19, &v81);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_1C9788000, v46, v47, "Finished Creating Sound Recognition Session %s (%s)", v49, 0x16u);
      v58 = v75;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v58, -1, -1);
      MEMORY[0x1CCA93280](v49, -1, -1);

      return v51(v63, v61);
    }

    else
    {

      v59 = v77;
      v77(v45, v10);
      return v59(v17, v10);
    }
  }
}

void sub_1C9954F74()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v73 = v7;
  v8 = sub_1C97A2CEC(&qword_1EC3C77C0, &qword_1C9ABC210);
  sub_1C97ABF78(v8, &v79);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  sub_1C97ABFB4(v10);
  v11 = sub_1C97A2CEC(&qword_1EC3CE3D8, &qword_1C9ABC218);
  sub_1C97ABF78(v11, &v80);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C9A91748();
  sub_1C97AE9C8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435A0();
  v74 = v18 - v19;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C9971634();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98BBB18();
  sub_1C9A91738();
  sub_1C9971228();
  sub_1C9971600(v22);
  MEMORY[0x1CCA90230](*v6, v6[1]);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v23 = sub_1C9A91B58();
  sub_1C97BFF6C(v23, qword_1EC3D3108);
  v24 = sub_1C9971360();
  v72 = v25;
  v25(v24);

  v26 = sub_1C9A91B38();
  v27 = sub_1C9A92FC8();

  v75 = v27;
  if (os_log_type_enabled(v26, v27))
  {
    v81 = v16;
    v28 = sub_1C99716C8();
    swift_slowAlloc();
    *v28 = 136446466;
    sub_1C9970F78();
    sub_1C996D568(v29);
    sub_1C9A93A98();
    v30 = *(v81 + 8);
    v31 = sub_1C9971360();
    v30(v31);
    v32 = sub_1C98B7774();
    v35 = sub_1C9849140(v32, v33, v34);

    *(v28 + 4) = v35;
    v36 = v30;
    v2 = v1;
    *(v28 + 12) = 2080;
    v37 = sub_1C9971590();
    *(v28 + 14) = sub_1C9849140(v37, v77, v38);
    sub_1C9971688(&dword_1C9788000, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v75);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v36 = *(v16 + 8);
    v39 = sub_1C99715D4();
    v36(v39);
  }

  sub_1C9971584();
  memcpy(v40, v41, v42);
  sub_1C9963CD8(v78, v4);
  if (v2)
  {
    (v36)(v0, v14);
  }

  else
  {
    v76 = v36;
    v43 = sub_1C9813668();
    sub_1C97A2CEC(v43, v44);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v45);
    sub_1C97E89F0();
    v46 = sub_1C9A91F28();

    sub_1C97DAA28();
    v47 = swift_allocObject();
    v47[2] = sub_1C9970F50;
    v47[3] = 0;
    v47[4] = v46;
    sub_1C9A91EF8();
    sub_1C99713F4();

    sub_1C99712E4();
    sub_1C99715EC(v48);
    sub_1C9970F78();
    sub_1C996D568(v49);
    v50 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v50);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    v51 = sub_1C9971590();
    MEMORY[0x1CCA90230](v51);
    sub_1C99714F4();
    sub_1C993B0C8();

    sub_1C97DAA58();
    v52();
    v53 = sub_1C9971158(&unk_1EC3CE3F8);
    v54 = sub_1C9813A90(v53, v53);
    sub_1C97DAA58();
    v55 = sub_1C9871794();
    v56(v55);
    v57 = sub_1C97AEB30();
    v72(v57);
    *(v73 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v54;
    (v72)(v74, v0, v14);

    v58 = sub_1C9A91B38();
    v59 = sub_1C9A92FC8();

    if (os_log_type_enabled(v58, v59))
    {
      sub_1C99716C8();
      sub_1C9971668();
      *v74 = 136446466;
      sub_1C9A93A98();
      v60 = sub_1C98B7774();
      v76(v60);
      v61 = sub_1C98BBB4C();
      v64 = sub_1C9849140(v61, v62, v63);

      *(v74 + 4) = v64;
      *(v74 + 12) = 2080;
      v65 = sub_1C9971590();
      v67 = sub_1C9849140(v65, v77, v66);

      *(v74 + 14) = v67;
      sub_1C9971648(&dword_1C9788000, v68, v69, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)");
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      (v76)(v0, v14);
    }

    else
    {

      v70 = sub_1C997159C();
      v76(v70);
      v71 = sub_1C99715D4();
      v76(v71);
    }
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C99557B8@<X0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v72 = sub_1C97A2CEC(&qword_1EC3C77C0, &qword_1C9ABC210);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v62 - v7;
  v73 = sub_1C97A2CEC(&qword_1EC3CE3D8, &qword_1C9ABC218);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v62 - v8;
  v9 = sub_1C9A91748();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  sub_1C9A91738();
  v79 = 0x206D6F74737563;
  v80 = 0xE700000000000000;
  v18 = *a1;
  v19 = *(a1 + 1);
  v77 = a1;
  MEMORY[0x1CCA90230](v18, v19);
  v78 = v79;
  v20 = v80;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v21 = sub_1C9A91B58();
  v22 = sub_1C97BFF6C(v21, qword_1EC3D3108);
  v23 = *(v10 + 16);
  v66 = v10 + 16;
  v65 = v23;
  v23(v15, v17, v9);

  v67 = v22;
  v24 = sub_1C9A91B38();
  LODWORD(v22) = sub_1C9A92FC8();

  LODWORD(v76) = v22;
  if (os_log_type_enabled(v24, v22))
  {
    v25 = swift_slowAlloc();
    v82 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v62 = v20;
    v63 = v27;
    v79 = v27;
    *v26 = 136446466;
    sub_1C996D568(&qword_1EC3C5480);
    v28 = sub_1C9A93A98();
    v29 = v17;
    v30 = v9;
    v32 = v31;
    v64 = a2;
    v33 = *(v82 + 8);
    v33(v15, v30);
    v34 = sub_1C9849140(v28, v32, &v79);
    v9 = v30;
    v17 = v29;

    *(v26 + 4) = v34;
    v35 = v33;
    v4 = v3;
    a2 = v64;
    *(v26 + 12) = 2080;
    v20 = v62;
    *(v26 + 14) = sub_1C9849140(v78, v62, &v79);
    _os_log_impl(&dword_1C9788000, v24, v76, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v26, 0x16u);
    v36 = v63;
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v36, -1, -1);
    v37 = v26;
    v10 = v82;
    MEMORY[0x1CCA93280](v37, -1, -1);
  }

  else
  {

    v35 = *(v10 + 8);
    v35(v15, v9);
  }

  memcpy(__dst, v77 + 16, sizeof(__dst));
  v38 = sub_1C9964664(__dst, a2);
  if (v4)
  {
    v35(v17, v9);
  }

  else
  {
    v76 = 0;
    v77 = v35;
    v82 = v10;
    v79 = v38;
    sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
    sub_1C996FE74(&unk_1EC3CCE80);
    v40 = sub_1C9A91F28();

    v41 = swift_allocObject();
    v41[2] = sub_1C9970F50;
    v41[3] = 0;
    v41[4] = v40;
    v42 = v68;
    sub_1C9A91EF8();
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1C9A935B8();

    v79 = 0xD000000000000026;
    v80 = 0x80000001C9ADA6A0;
    v64 = sub_1C996D568(&qword_1EC3C5480);
    v43 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v43);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v78, v20);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    v44 = v69;
    sub_1C993B0C8();

    (*(v70 + 8))(v42, v72);
    sub_1C996FE74(&unk_1EC3CE3F8);
    v45 = v73;
    v46 = sub_1C9A91F28();
    (*(v71 + 8))(v44, v45);
    v47 = v74;
    v48 = v65;
    v65(v74, v17, v9);
    *&v47[*(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)] = v46;
    v49 = v75;
    v48(v75, v17, v9);

    v50 = sub_1C9A91B38();
    v51 = sub_1C9A92FC8();

    v52 = v17;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = v49;
      v54 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v54 = 136446466;
      v55 = sub_1C9A93A98();
      v74 = v52;
      v57 = v56;
      v77(v53, v9);
      v58 = sub_1C9849140(v55, v57, &v79);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = sub_1C9849140(v78, v20, &v79);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_1C9788000, v50, v51, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)", v54, 0x16u);
      v60 = v73;
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v60, -1, -1);
      MEMORY[0x1CCA93280](v54, -1, -1);

      return (v77)(v74, v9);
    }

    else
    {

      v61 = v77;
      v77(v49, v9);
      return (v61)(v17, v9);
    }
  }
}

void sub_1C99561D4()
{
  sub_1C97AEB94();
  v2 = v1;
  v73 = v3;
  v74 = v4;
  v72 = v5;
  v7 = v6;
  v68 = v8;
  v66 = sub_1C97A2CEC(&qword_1EC3C77C0, &qword_1C9ABC210);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v67 = sub_1C97A2CEC(&qword_1EC3CE3D8, &qword_1C9ABC218);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v11 = sub_1C9A91748();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C98435A0();
  v69 = v15 - v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C9971634();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98BBB18();
  sub_1C9A91738();
  sub_1C9971228();
  v77 = v19;
  v78 = v20;
  v71 = v7;
  MEMORY[0x1CCA90230](*v7, v7[1]);
  v21 = v78;
  v76 = v77;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v22 = sub_1C9A91B58();
  sub_1C97BFF6C(v22, qword_1EC3D3108);
  v23 = sub_1C9971360();
  v65 = v24;
  v24(v23);

  v25 = sub_1C9A91B38();
  v26 = sub_1C9A92FC8();

  v70 = v26;
  v75 = v78;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_1C99716C8();
    v77 = swift_slowAlloc();
    *v27 = 136446466;
    sub_1C9970F78();
    sub_1C996D568(v28);
    sub_1C9A93A98();
    v29 = *(v13 + 8);
    v30 = sub_1C9971360();
    v29(v30);
    v31 = sub_1C98B7774();
    v34 = sub_1C9849140(v31, v32, v33);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1C9849140(v76, v21, &v77);
    sub_1C9971688(&dword_1C9788000, "Started Creating Accessibility Sound Recognition Session %{public}s (%s)", v70);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v2 = v1;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v29 = *(v13 + 8);
    v35 = sub_1C99715D4();
    v29(v35);
  }

  v36 = sub_1C9963BE8(v71, v72, v73, v74);
  if (v2)
  {
    (v29)(v0, v11);
  }

  else
  {
    v37 = v36;
    sub_1C97DAA28();
    v38 = swift_allocObject();
    v38[2] = sub_1C9970F50;
    v38[3] = 0;
    v38[4] = v37;
    v39 = sub_1C9813668();
    sub_1C97A2CEC(v39, v40);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v41);
    sub_1C9A91EF8();
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C99712E4();
    v77 = v43;
    v78 = v42;
    sub_1C9970F78();
    sub_1C996D568(v44);
    v45 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v45);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v76, v21);
    sub_1C99714F4();
    sub_1C993B0C8();

    v46 = sub_1C997121C();
    v47(v46, v66);
    v48 = sub_1C9971158(&unk_1EC3CE3F8);
    v49 = sub_1C9813A90(v48, v48);
    v50 = sub_1C9945F10();
    v51(v50, v67);
    v52 = sub_1C97AEB30();
    v65(v52);
    *(v68 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v49;
    (v65)(v69, v0, v11);

    v53 = sub_1C9A91B38();
    v54 = sub_1C9A92FC8();

    if (os_log_type_enabled(v53, v54))
    {
      sub_1C99716C8();
      v77 = sub_1C9971668();
      *v69 = 136446466;
      sub_1C9A93A98();
      v55 = sub_1C98B7774();
      v29(v55);
      v56 = sub_1C98BBB4C();
      v59 = sub_1C9849140(v56, v57, v58);

      *(v69 + 4) = v59;
      *(v69 + 12) = 2080;
      v60 = sub_1C9849140(v76, v75, &v77);

      *(v69 + 14) = v60;
      sub_1C9971648(&dword_1C9788000, v61, v62, "Finished Creating Accessibility Sound Recognition Session %{public}s (%s)");
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      (v29)(v0, v11);
    }

    else
    {

      v63 = sub_1C997159C();
      v29(v63);
      v64 = sub_1C99715D4();
      v29(v64);
    }
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C9956924()
{
  sub_1C988A500();
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0(&qword_1EC3C5E00);
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  memcpy(v5, &unk_1EC3D3360, 0x41uLL);
  v6 = v1;
  v7 = v0;
  sub_1C97E2DB0(__dst, v4);
  v2 = sub_1C985F310();
  sub_1C97DA1E0(v5, &qword_1EC3C76A0, &unk_1C9AA4F40);
  return v2;
}

char *sub_1C99569EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v61 = a2;
  v59 = a1;
  v5 = sub_1C97A2CEC(&unk_1EC3CD650, &qword_1C9ACA900);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v42 - v6;
  v53 = sub_1C97A2CEC(&unk_1EC3CE340, &qword_1C9AB79E0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v42 - v7;
  v50 = sub_1C97A2CEC(&unk_1EC3CD660, &qword_1C9AB79E8);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v42 - v8;
  v10 = sub_1C97A2CEC(&unk_1EC3CE350, &unk_1C9AB79F0);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v16 = sub_1C9A91C28();
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v42 - v21;
  v22 = *(a4 + 16);
  v64[0] = *a4;
  v64[1] = v22;
  v65 = *(a4 + 32);
  v23 = v63;
  sub_1C9956924();
  if (!v23)
  {
    v62 = v20;
    v63 = v19;
    v43 = v9;
    v44 = v12;
    v45 = v10;
    v61 = 0;
    v24 = sub_1C9832398();
    v46 = v24;

    v66 = v24;
    v25 = v56;
    (*(v56 + 104))(v18, *MEMORY[0x1E695BD20], v16);
    *v15 = sub_1C993F164;
    v15[1] = 0;
    v26 = v57;
    v27 = v58;
    (*(v57 + 104))(v15, *MEMORY[0x1E695BD48], v58);
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C996FE74(&unk_1EC3C4A90);
    v28 = v60;
    sub_1C9A92018();
    (*(v26 + 8))(v15, v27);
    (*(v25 + 8))(v18, v16);

    v18 = &v42;
    MEMORY[0x1EEE9AC00](v29);
    *(&v42 - 4) = v59;
    *(&v42 - 3) = v64;
    *(&v42 - 2) = v28;
    v30 = v61;
    v31 = sub_1C993B6C4();
    if (v30)
    {
      (*(v62 + 8))(v28, v63);
    }

    else
    {
      v66 = v31;
      sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
      sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
      v33 = v28;
      sub_1C996FE74(&qword_1EC3C9B50);
      v34 = v49;
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
      v35 = v47;
      v36 = v55;
      sub_1C9A91CA8();
      (*(v54 + 8))(v34, v36);
      v37 = v43;
      v38 = v53;
      sub_1C9A91CA8();
      (*(v51 + 8))(v35, v38);
      v39 = v44;
      v40 = v50;
      sub_1C9A91CA8();
      (*(v48 + 8))(v37, v40);
      sub_1C996FE74(&qword_1EC3CD688);
      v41 = v45;
      v18 = sub_1C9A91F28();

      (*(v52 + 8))(v39, v41);
      (*(v62 + 8))(v33, v63);
    }
  }

  return v18;
}

char *sub_1C9957210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v61 = a3;
  v60 = a2;
  v58 = a1;
  v54 = sub_1C97A2CEC(&unk_1EC3CD650, &qword_1C9ACA900);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v41 - v5;
  v52 = sub_1C97A2CEC(&unk_1EC3CE340, &qword_1C9AB79E0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v41 - v6;
  v49 = sub_1C97A2CEC(&unk_1EC3CD660, &qword_1C9AB79E8);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v41 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE350, &unk_1C9AB79F0);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v57 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = (&v41 - v12);
  v14 = sub_1C9A91C28();
  v55 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v41 - v19;
  v20 = a4[1];
  v63[0] = *a4;
  v63[1] = v20;
  v21 = a4[3];
  v64 = a4[2];
  v65 = v21;
  v66 = v63[0];
  v67 = v20;
  v68 = v64;
  v69 = v21;
  v22 = v62;
  sub_1C985F378(v60, v61);
  if (!v22)
  {
    v61 = v18;
    v62 = v17;
    v42 = v8;
    v43 = v11;
    v44 = v9;
    v60 = 0;
    v23 = sub_1C9832398();
    v45 = v23;

    v70 = v23;
    v24 = v55;
    (*(v55 + 104))(v16, *MEMORY[0x1E695BD20], v14);
    *v13 = sub_1C993F164;
    v13[1] = 0;
    v25 = v56;
    v26 = v57;
    (*(v56 + 104))(v13, *MEMORY[0x1E695BD48], v57);
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C996FE74(&unk_1EC3C4A90);
    v27 = v59;
    sub_1C9A92018();
    (*(v25 + 8))(v13, v26);
    (*(v24 + 8))(v16, v14);

    v16 = &v41;
    MEMORY[0x1EEE9AC00](v28);
    *(&v41 - 4) = v58;
    *(&v41 - 3) = v63;
    *(&v41 - 2) = v27;
    v29 = v60;
    v30 = sub_1C993B6C4();
    if (v29)
    {
      (*(v61 + 8))(v27, v62);
    }

    else
    {
      v70 = v30;
      sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
      sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
      v32 = v27;
      sub_1C996FE74(&qword_1EC3C9B50);
      v33 = v48;
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
      v34 = v46;
      v35 = v54;
      sub_1C9A91CA8();
      (*(v53 + 8))(v33, v35);
      v36 = v42;
      v37 = v52;
      sub_1C9A91CA8();
      (*(v50 + 8))(v34, v37);
      v38 = v43;
      v39 = v49;
      sub_1C9A91CA8();
      (*(v47 + 8))(v36, v39);
      sub_1C996FE74(&qword_1EC3CD688);
      v40 = v44;
      v16 = sub_1C9A91F28();

      (*(v51 + 8))(v38, v40);
      (*(v61 + 8))(v32, v62);
    }
  }

  return v16;
}

char *sub_1C9957AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a1;
  v25 = sub_1C9A91408();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C9A91558();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&unk_1EC3CE360, &unk_1C9AB7A08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C996FE74(&qword_1EC3CD6A0);
  sub_1C9A91F68();
  sub_1C996FE74(&unk_1EC3CE370);
  v12 = sub_1C9A91F28();
  v13 = v24;
  (*(v9 + 8))(v11, v8);
  v28 = 0x6A2E657069636572;
  v29 = 0xEB000000006E6F73;
  v14 = v25;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v25);
  sub_1C98449A8();
  sub_1C9A91538();
  (*(v3 + 8))(v5, v14);
  v15 = v7;
  v16 = v26;
  v17 = sub_1C9A915A8();
  if (v16)
  {

    (*(v27 + 8))(v7, v30);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v22 = sub_1C98DB63C(v17, v18);
    MEMORY[0x1EEE9AC00](v22);
    v23[-2] = v13;
    v5 = sub_1C99F437C(v12, sub_1C986F178, &v23[-4], v22);
    sub_1C97A5978(v19, v20);

    (*(v27 + 8))(v15, v30);
  }

  return v5;
}

char *sub_1C9957EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a1;
  v25 = sub_1C9A91408();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C9A91558();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&unk_1EC3CE360, &unk_1C9AB7A08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C996FE74(&qword_1EC3CD6A0);
  sub_1C9A91F68();
  sub_1C996FE74(&unk_1EC3CE370);
  v12 = sub_1C9A91F28();
  v13 = v24;
  (*(v9 + 8))(v11, v8);
  v28 = 0x6A2E657069636572;
  v29 = 0xEB000000006E6F73;
  v14 = v25;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v25);
  sub_1C98449A8();
  sub_1C9A91538();
  (*(v3 + 8))(v5, v14);
  v15 = v7;
  v16 = v26;
  v17 = sub_1C9A915A8();
  if (v16)
  {

    (*(v27 + 8))(v7, v30);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v22 = sub_1C98DB63C(v17, v18);
    MEMORY[0x1EEE9AC00](v22);
    v23[-2] = v13;
    v5 = sub_1C99F437C(v12, sub_1C9970EF0, &v23[-4], v22);
    sub_1C97A5978(v19, v20);

    (*(v27 + 8))(v15, v30);
  }

  return v5;
}

uint64_t sub_1C9958344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C97A2CEC(&unk_1EC3CE320, &unk_1C9AB79D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = sub_1C99569EC(a1, a2, a3, a4);
  if (!v4)
  {
    v16[1] = v14;
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C996FE74(&unk_1EC3CE330);
    v5 = sub_1C9A91F28();
    (*(v11 + 8))(v13, v10);
  }

  return v5;
}

uint64_t sub_1C9958514(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v10 = sub_1C97A2CEC(&unk_1EC3CE320, &unk_1C9AB79D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = sub_1C9957210(a1, a2, a3, a4);
  if (!v4)
  {
    v16[1] = v14;
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C996FE74(&unk_1EC3CE330);
    v5 = sub_1C9A91F28();
    (*(v11 + 8))(v13, v10);
  }

  return v5;
}

uint64_t sub_1C99586E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C9A91558();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = sub_1C9942FF4(a1);
  sub_1C98C73E0(v14, v11);
  if (!v4)
  {
    (*(v8 + 32))(v13, v11, v7);
    if (a1)
    {
      v15 = 96;
    }

    else
    {
      v15 = 74;
    }

    v17[1] = sub_1C9958344(v13, v15, 48, a4);
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    a4 = sub_1C9A91F28();

    (*(v8 + 8))(v13, v7);
  }

  return a4;
}

_OWORD *sub_1C99588D4(char a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = sub_1C9A91558();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = sub_1C9942FF4(a1);
  sub_1C98C73E0(v14, v11);
  if (!v4)
  {
    (*(v8 + 32))(v13, v11, v7);
    if (a1)
    {
      v15 = 96;
    }

    else
    {
      v15 = 74;
    }

    v17[1] = sub_1C9958514(v13, v15, 48, a4);
    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    a4 = sub_1C9A91F28();

    (*(v8 + 8))(v13, v7);
  }

  return a4;
}

uint64_t sub_1C9958AC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[7];
  v8 = v1[8];
  v11 = v1[9];
  v10 = v1[10];
  v13 = v1[11];
  v12 = v1[12];
  v15 = v1[13];
  v16 = v1[14];
  v17 = v1[15];
  *a1 = *v1;
  a1[1] = &unk_1F492A6F0;
  a1[2] = v2;
  a1[3] = &unk_1F492A728;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = &unk_1F492A768;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = &unk_1F492A7A8;
  a1[10] = v7;
  a1[11] = v9;
  a1[12] = &unk_1F492A7E8;
  a1[13] = v8;
  a1[14] = v11;
  a1[15] = &unk_1F492A828;
  a1[16] = v10;
  a1[17] = v13;
  a1[18] = &unk_1F492A868;
  a1[19] = v12;
  a1[20] = v15;
  a1[21] = &unk_1F492A898;
  a1[22] = v16;
  a1[23] = v17;
}

uint64_t *sub_1C9958C28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v4 = result;
    v20 = result[2];
    v5 = result[4];
    v6 = result[7];
    v7 = result[8];
    v16 = result[10];
    v17 = result[5];
    v19 = result[11];
    v8 = result[13];
    v14 = result[16];
    v15 = result[14];
    v18 = result[17];
    v9 = result[19];
    v12 = result[22];
    v13 = result[20];
    v21 = result[23];
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    sub_1C99711A0();
    result = sub_1C996FC78(v4);
    *a2 = v3;
    *&v10 = v5;
    *(&v10 + 1) = v17;
    *(a2 + 8) = v20;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *&v10 = v16;
    *(&v10 + 1) = v19;
    *&v11 = v8;
    *(&v11 + 1) = v15;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *&v10 = v14;
    *(&v10 + 1) = v18;
    *&v11 = v9;
    *(&v11 + 1) = v13;
    *(a2 + 80) = v10;
    *(a2 + 96) = v11;
    *(a2 + 112) = v12;
    *(a2 + 120) = v21;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1C9958DEC()
{
  sub_1C988A500();
  swift_getWitnessTable();
  sub_1C9958F48();
}

uint64_t sub_1C9958E84(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = a2;
  v14 = a3;
  sub_1C97E2DB0(__src, v8);
  v6 = sub_1C98B2AB0();
  memcpy(v8, __dst, sizeof(v8));
  v9 = a2;
  v10 = a3;
  sub_1C97DA1E0(v8, &qword_1EC3CE610, &qword_1C9AAEBF0);
  return v6;
}

void sub_1C9958F48()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C99713D4(AssociatedTypeWitness, v6, v7, v8, &unk_1C9AFD9F8);
  v13 = sub_1C99713D4(v9, v10, v11, v12, &unk_1C9AFDA00);
  v17 = sub_1C99713D4(v13, v14, v15, v16, &unk_1C9AFDA08);
  v26[0] = AssociatedTypeWitness;
  v26[1] = v9;
  v26[2] = v13;
  v26[3] = v17;
  type metadata accessor for SharedSoundPrintK.Configuration(0, v26);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97FB2C8();
  sub_1C99715E0();
  sub_1C99614E0(v19, v20, v21, v22, v13, v17, v23);
  (*(v2 + 40))(v0, v4, v2);
  v24 = sub_1C97FB300();
  v25(v24);
  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t sub_1C99590D8()
{
  v6[3] = &unk_1F492E308;
  v6[4] = &off_1F492E690;
  v2 = swift_allocObject();
  v6[0] = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);

  v4 = sub_1C99A7FC0(v6, 0xD000000000000035, 0x80000001C9ADA6D0);
  if (!v1)
  {
    LOBYTE(v0) = v4;
  }

  sub_1C97A592C(v6);
  return v0 & 1;
}

uint64_t sub_1C99591B8()
{
  sub_1C988A500();
  if (qword_1EC3C5E00 != -1)
  {
    sub_1C97E88A0(&qword_1EC3C5E00);
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  return sub_1C9958E84(__dst, v1, v0);
}

id static AccessibilitySoundRecognition.isSupported.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v1 = sub_1C99B590C();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return (v1 != 0);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v7 = MGGetProductType();
      if (qword_1EC3C5D98 != -1)
      {
        sub_1C9871824(&qword_1EC3C5D98);
      }

      v8 = qword_1EC3D31E8;

      return sub_1C98F4044(v7, v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9959488(char a1)
{
  result = 0x616C41656B6F6D73;
  switch(a1)
  {
    case 1:
      result = 0x7373657274736964;
      break;
    case 2:
      result = 1885693282;
      break;
    case 3:
      result = 0x72657A7A7562;
      break;
    case 4:
      result = 0x6E726F48726163;
      break;
    case 5:
      result = 0x776F654D746163;
      break;
    case 6:
      result = 0x6867756F63;
      break;
    case 7:
      v3 = 1735289188;
      goto LABEL_13;
    case 8:
      result = 0x6B726142676F64;
      break;
    case 9:
      v3 = 1919905636;
LABEL_13:
      result = v3 | 0x6C6C654200000000;
      break;
    case 10:
      result = 0x636F6E4B726F6F64;
      break;
    case 11:
      result = 0x72616C4165726966;
      break;
    case 12:
      result = 0x6572427373616C67;
      break;
    case 13:
      result = 0x6857656C7474656BLL;
      break;
    case 14:
      result = 0x74756F6873;
      break;
    case 15:
      result = 0x616C416E65726973;
      break;
    case 16:
      result = 0x6E75527265746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9959660(uint64_t a1)
{
  v2 = sub_1C996C5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995969C(uint64_t a1)
{
  v2 = sub_1C996C5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99596D8(uint64_t a1)
{
  v2 = sub_1C996C57C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959714(uint64_t a1)
{
  v2 = sub_1C996C57C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959750(uint64_t a1)
{
  v2 = sub_1C996C528();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995978C(uint64_t a1)
{
  v2 = sub_1C996C528();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99597C8(uint64_t a1)
{
  v2 = sub_1C996C4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959804(uint64_t a1)
{
  v2 = sub_1C996C4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959860(uint64_t a1)
{
  v2 = sub_1C996C0E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995989C(uint64_t a1)
{
  v2 = sub_1C996C0E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99598D8(uint64_t a1)
{
  v2 = sub_1C996C480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959914(uint64_t a1)
{
  v2 = sub_1C996C480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959950(uint64_t a1)
{
  v2 = sub_1C996C42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995998C(uint64_t a1)
{
  v2 = sub_1C996C42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99599C8(uint64_t a1)
{
  v2 = sub_1C996C624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959A04(uint64_t a1)
{
  v2 = sub_1C996C624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959A40(uint64_t a1)
{
  v2 = sub_1C996C3D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959A7C(uint64_t a1)
{
  v2 = sub_1C996C3D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959AB8(uint64_t a1)
{
  v2 = sub_1C996C384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959AF4(uint64_t a1)
{
  v2 = sub_1C996C384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959B30(uint64_t a1)
{
  v2 = sub_1C996C330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959B6C(uint64_t a1)
{
  v2 = sub_1C996C330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959BA8(uint64_t a1)
{
  v2 = sub_1C996C2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959BE4(uint64_t a1)
{
  v2 = sub_1C996C2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959C20(uint64_t a1)
{
  v2 = sub_1C996C288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959C5C(uint64_t a1)
{
  v2 = sub_1C996C288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959C98(uint64_t a1)
{
  v2 = sub_1C996C234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959CD4(uint64_t a1)
{
  v2 = sub_1C996C234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959D10(uint64_t a1)
{
  v2 = sub_1C996C1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959D4C(uint64_t a1)
{
  v2 = sub_1C996C1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959D88(uint64_t a1)
{
  v2 = sub_1C996C18C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959DC4(uint64_t a1)
{
  v2 = sub_1C996C18C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959E00(uint64_t a1)
{
  v2 = sub_1C996C678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959E3C(uint64_t a1)
{
  v2 = sub_1C996C678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9959E78(uint64_t a1)
{
  v2 = sub_1C996C138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9959EB4(uint64_t a1)
{
  v2 = sub_1C996C138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.BuiltInDetectorIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  sub_1C97A2CEC(&qword_1EC3CDD90, &qword_1C9AB9F20);
  sub_1C97AE9C8();
  v163[0] = v28;
  v163[1] = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v162[2] = v30;
  sub_1C97A2CEC(&qword_1EC3CDD98, &qword_1C9AB9F28);
  sub_1C97AE9C8();
  v162[0] = v32;
  v162[1] = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v161[2] = v34;
  sub_1C97A2CEC(&qword_1EC3CDDA0, &qword_1C9AB9F30);
  sub_1C97AE9C8();
  v161[0] = v36;
  v161[1] = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v160[2] = v38;
  sub_1C97A2CEC(&qword_1EC3CDDA8, &qword_1C9AB9F38);
  sub_1C97AE9C8();
  v160[0] = v40;
  v160[1] = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v159[2] = v42;
  sub_1C97A2CEC(&qword_1EC3CDDB0, &qword_1C9AB9F40);
  sub_1C97AE9C8();
  v159[0] = v44;
  v159[1] = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v158 = v46;
  sub_1C97A2CEC(&qword_1EC3CDDB8, &qword_1C9AB9F48);
  sub_1C97AE9C8();
  v156 = v48;
  v157 = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v155 = v50;
  v51 = sub_1C97A2CEC(&qword_1EC3CDDC0, &qword_1C9AB9F50);
  sub_1C97ABF78(v51, &a18);
  v154 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&qword_1EC3CDDC8, &qword_1C9AB9F58);
  sub_1C97ABF78(v55, &a15);
  v153 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  sub_1C97ABFB4(v58);
  v59 = sub_1C97A2CEC(&qword_1EC3CDDD0, &qword_1C9AB9F60);
  sub_1C97ABF78(v59, &a12);
  v152 = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  sub_1C97ABFB4(v62);
  v63 = sub_1C97A2CEC(&qword_1EC3CDDD8, &qword_1C9AB9F68);
  sub_1C97ABF78(v63, &a9);
  v151 = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AC02C();
  sub_1C97ABFB4(v66);
  v67 = sub_1C97A2CEC(&qword_1EC3CDDE0, &qword_1C9AB9F70);
  sub_1C97ABF78(v67, v165);
  v150 = v68;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AC02C();
  sub_1C97ABFB4(v70);
  v71 = sub_1C97A2CEC(&qword_1EC3CDDE8, &qword_1C9AB9F78);
  sub_1C97ABF78(v71, v163);
  v149 = v72;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C97AC02C();
  sub_1C97ABFB4(v74);
  v75 = sub_1C97A2CEC(&qword_1EC3CDDF0, &qword_1C9AB9F80);
  sub_1C97ABF78(v75, v162);
  v148 = v76;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AC02C();
  sub_1C97ABFB4(v78);
  v79 = sub_1C97A2CEC(&qword_1EC3CDDF8, &qword_1C9AB9F88);
  sub_1C97ABF78(v79, v161);
  v147 = v80;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C97AC02C();
  sub_1C97ABFB4(v82);
  v83 = sub_1C97A2CEC(&qword_1EC3CDE00, &qword_1C9AB9F90);
  sub_1C97ABF78(v83, v160);
  v146 = v84;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C97AC02C();
  sub_1C97ABFB4(v86);
  v87 = sub_1C97A2CEC(&qword_1EC3CDE08, &qword_1C9AB9F98);
  sub_1C97ABF78(v87, v159);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&qword_1EC3CDE10, &qword_1C9AB9FA0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C97FB2C8();
  v165[0] = sub_1C97A2CEC(&qword_1EC3CDE18, &qword_1C9AB9FA8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C97E86E4();
  v91 = *v24;
  sub_1C97BE20C(v26, v26[3]);
  sub_1C996C0E4();
  v164 = v21;
  sub_1C9A93DD8();
  switch(v91)
  {
    case 1:
      sub_1C97FB3CC();
      v126 = sub_1C996C624();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DistressedBabyCodingKeys, &a10 + 7, v127, v128, v126);
      v92 = sub_1C997107C();
      v107 = v159;
      goto LABEL_20;
    case 2:
      HIBYTE(a10) = 2;
      v114 = sub_1C996C5D0();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.BeepCodingKeys, &a10 + 7, v115, v116, v114);
      v92 = sub_1C997107C();
      v107 = v160;
      goto LABEL_20;
    case 3:
      HIBYTE(a10) = 3;
      v120 = sub_1C996C57C();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.BuzzerCodingKeys, &a10 + 7, v121, v122, v120);
      v92 = sub_1C997107C();
      v107 = v161;
      goto LABEL_20;
    case 4:
      HIBYTE(a10) = 4;
      v104 = sub_1C996C528();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CarHornCodingKeys, &a10 + 7, v105, v106, v104);
      v92 = sub_1C997107C();
      v107 = v162;
      goto LABEL_20;
    case 5:
      HIBYTE(a10) = 5;
      v129 = sub_1C996C4D4();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CatMeowCodingKeys, &a10 + 7, v130, v131, v129);
      v92 = sub_1C997107C();
      v107 = v163;
      goto LABEL_20;
    case 6:
      HIBYTE(a10) = 6;
      v135 = sub_1C996C480();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CoughCodingKeys, &a10 + 7, v136, v137, v135);
      v92 = sub_1C997107C();
      v107 = v165;
      goto LABEL_20;
    case 7:
      HIBYTE(a10) = 7;
      v123 = sub_1C996C42C();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DingBellCodingKeys, &a10 + 7, v124, v125, v123);
      v92 = sub_1C997107C();
      v107 = &a9;
      goto LABEL_20;
    case 8:
      sub_1C9971558();
      v141 = sub_1C996C3D8();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DogBarkCodingKeys, &a10 + 7, v142, v143, v141);
      v92 = sub_1C997107C();
      v107 = &a12;
      goto LABEL_20;
    case 9:
      HIBYTE(a10) = 9;
      v111 = sub_1C996C384();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DoorBellCodingKeys, &a10 + 7, v112, v113, v111);
      v92 = sub_1C997107C();
      v107 = &a15;
      goto LABEL_20;
    case 10:
      HIBYTE(a10) = 10;
      v138 = sub_1C996C330();
      sub_1C997108C(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DoorKnockCodingKeys, &a10 + 7, v139, v140, v138);
      v92 = sub_1C997107C();
      v107 = &a18;
LABEL_20:
      v93 = *(v107 - 32);
      break;
    case 11:
      HIBYTE(a10) = 11;
      v101 = sub_1C996C2DC();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.FireAlarmCodingKeys, &a10 + 7, v102, v103, v101);
      goto LABEL_16;
    case 12:
      HIBYTE(a10) = 12;
      v108 = sub_1C996C288();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.GlassBreakingCodingKeys, &a10 + 7, v109, v110, v108);
      goto LABEL_16;
    case 13:
      HIBYTE(a10) = 13;
      v132 = sub_1C996C234();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.KettleWhistlingCodingKeys, &a10 + 7, v133, v134, v132);
      goto LABEL_16;
    case 14:
      HIBYTE(a10) = 14;
      v98 = sub_1C996C1E0();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.ShoutCodingKeys, &a10 + 7, v99, v100, v98);
      goto LABEL_16;
    case 15:
      HIBYTE(a10) = 15;
      v117 = sub_1C996C18C();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.SirenAlarmCodingKeys, &a10 + 7, v118, v119, v117);
      goto LABEL_16;
    case 16:
      HIBYTE(a10) = 16;
      v95 = sub_1C996C138();
      sub_1C99710E0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.WaterRunningCodingKeys, &a10 + 7, v96, v97, v95);
LABEL_16:
      v92 = sub_1C9971210();
      break;
    default:
      HIBYTE(a10) = 0;
      sub_1C996C678();
      sub_1C9A93988();
      sub_1C97DAA58();
      v92 = sub_1C98DE2C4();
      break;
  }

  v94(v92, v93);
  v144 = sub_1C97BE374();
  v145(v144);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.BuiltInDetectorIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  v1 = sub_1C997154C();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.BuiltInDetectorIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v27;
  a23 = v28;
  v163[0] = v24;
  v30 = v29;
  v159 = v31;
  sub_1C97A2CEC(&qword_1EC3CDEB0, &qword_1C9AB9FB0);
  sub_1C97AE9C8();
  v150 = v33;
  v151 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v158 = v35;
  v149 = sub_1C97A2CEC(&qword_1EC3CDEB8, &qword_1C9AB9FB8);
  sub_1C97AE9C8();
  v148 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v157[1] = v38;
  v39 = sub_1C97A2CEC(&qword_1EC3CDEC0, &qword_1C9AB9FC0);
  sub_1C97ABF78(v39, &a20);
  v147 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v157[0] = v42;
  v43 = sub_1C97A2CEC(&qword_1EC3CDEC8, &qword_1C9AB9FC8);
  sub_1C97ABF78(v43, &a18);
  v146 = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v156[1] = v46;
  v47 = sub_1C97A2CEC(&qword_1EC3CDED0, &qword_1C9AB9FD0);
  sub_1C97ABF78(v47, &a16);
  v145 = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v156[0] = v50;
  v51 = sub_1C97A2CEC(&qword_1EC3CDED8, &qword_1C9AB9FD8);
  sub_1C97ABF78(v51, &a14);
  v144 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  v155[1] = v54;
  v55 = sub_1C97A2CEC(&qword_1EC3CDEE0, &qword_1C9AB9FE0);
  sub_1C97ABF78(v55, &a9);
  v143 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v155[0] = v58;
  v59 = sub_1C97A2CEC(&qword_1EC3CDEE8, &qword_1C9AB9FE8);
  sub_1C97ABF78(v59, v163);
  v142 = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  v154[1] = v62;
  v63 = sub_1C97A2CEC(&qword_1EC3CDEF0, &qword_1C9AB9FF0);
  sub_1C97ABF78(v63, &v161);
  v141 = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AC02C();
  v161 = v66;
  v67 = sub_1C97A2CEC(&qword_1EC3CDEF8, &qword_1C9AB9FF8);
  sub_1C97ABF78(v67, v160);
  v140 = v68;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AC02C();
  v160[1] = v70;
  v71 = sub_1C97A2CEC(&qword_1EC3CDF00, &qword_1C9ABA000);
  sub_1C97ABF78(v71, &v158);
  v139 = v72;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C97AC02C();
  v160[0] = v74;
  v75 = sub_1C97A2CEC(&qword_1EC3CDF08, &qword_1C9ABA008);
  sub_1C97ABF78(v75, v157);
  v138 = v76;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AC02C();
  v154[0] = v78;
  v79 = sub_1C97A2CEC(&qword_1EC3CDF10, &qword_1C9ABA010);
  sub_1C97ABF78(v79, v156);
  v137 = v80;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C97AC02C();
  v153[1] = v82;
  v83 = sub_1C97A2CEC(&qword_1EC3CDF18, &qword_1C9ABA018);
  sub_1C97ABF78(v83, v155);
  v136 = v84;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C97AC02C();
  v153[0] = v86;
  v87 = sub_1C97A2CEC(&qword_1EC3CDF20, &qword_1C9ABA020);
  sub_1C97ABF78(v87, v154);
  v135 = v88;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C97AC02C();
  v152 = v90;
  v91 = sub_1C97A2CEC(&qword_1EC3CDF28, &qword_1C9ABA028);
  sub_1C97ABF78(v91, v153);
  v134 = v92;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C9945F4C();
  v94 = sub_1C97A2CEC(&qword_1EC3CDF30, &qword_1C9ABA030);
  sub_1C97AE9C8();
  v133 = v95;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C97FB2D8();
  v97 = sub_1C97A2CEC(&unk_1EC3CDF38, &unk_1C9ABA038);
  sub_1C97AE9C8();
  v99 = v98;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C98550DC();
  v162 = v30;
  v101 = sub_1C98138D4();
  sub_1C97BE20C(v101, v102);
  sub_1C996C0E4();
  sub_1C993AF40();
  v103 = v163[0];
  sub_1C9A93DB8();
  if (!v103)
  {
    v131 = v26;
    v130 = v94;
    v132 = v23;
    v104 = v161;
    v163[0] = v99;
    sub_1C9A93958();
    sub_1C98EE524();
    if (v106 != v105 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v109 == v110)
      {
        __break(1u);
        return;
      }

      v129 = *(v108 + v107);
      sub_1C98EE520();
      v112 = v111;
      v114 = v113;
      swift_unknownObjectRelease();
      if (v112 == v114 >> 1)
      {
        v115 = v159;
        switch(v129)
        {
          case 1:
            sub_1C97FB3CC();
            sub_1C996C624();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DistressedBabyCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v153;
            goto LABEL_27;
          case 2:
            a13 = 2;
            sub_1C996C5D0();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.BeepCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v154;
            goto LABEL_27;
          case 3:
            a13 = 3;
            sub_1C996C57C();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.BuzzerCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v155;
            goto LABEL_27;
          case 4:
            a13 = 4;
            sub_1C996C528();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CarHornCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v156;
            goto LABEL_27;
          case 5:
            a13 = 5;
            sub_1C996C4D4();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CatMeowCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v157;
            goto LABEL_27;
          case 6:
            a13 = 6;
            sub_1C996C480();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.CoughCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &v158;
            goto LABEL_27;
          case 7:
            a13 = 7;
            sub_1C996C42C();
            sub_1C991A6A0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DingBellCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v160;
            goto LABEL_27;
          case 8:
            sub_1C9971558();
            sub_1C996C3D8();
            sub_1C991A6A0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DogBarkCodingKeys, &a13);
            swift_unknownObjectRelease();
            sub_1C97DAA58();
            v116 = v104;
            v118 = &v161;
            goto LABEL_27;
          case 9:
            a13 = 9;
            sub_1C996C384();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DoorBellCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = v163;
            goto LABEL_27;
          case 10:
            a13 = 10;
            sub_1C996C330();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.DoorKnockCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &a9;
            goto LABEL_27;
          case 11:
            a13 = 11;
            sub_1C996C2DC();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.FireAlarmCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &a14;
            goto LABEL_27;
          case 12:
            a13 = 12;
            sub_1C996C288();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.GlassBreakingCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &a16;
            goto LABEL_27;
          case 13:
            a13 = 13;
            sub_1C996C234();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.KettleWhistlingCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &a18;
            goto LABEL_27;
          case 14:
            a13 = 14;
            sub_1C996C1E0();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.ShoutCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &a20;
            goto LABEL_27;
          case 15:
            a13 = 15;
            sub_1C996C18C();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.SirenAlarmCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v126 = v149;
            goto LABEL_28;
          case 16:
            a13 = 16;
            sub_1C996C138();
            v125 = v158;
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.WaterRunningCodingKeys, &a13);
            swift_unknownObjectRelease();
            (*(v150 + 8))(v125, v151);
            goto LABEL_29;
          default:
            a13 = 0;
            sub_1C996C678();
            sub_1C9970FF0(&type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier.SmokeAlarmCodingKeys, &a13);
            swift_unknownObjectRelease();
            v116 = sub_1C9945E3C();
            v118 = &v148;
LABEL_27:
            v126 = *(v118 - 32);
LABEL_28:
            v117(v116, v126);
LABEL_29:
            v127 = sub_1C9945F10();
            v128(v127, v97);
            v124 = v162;
            *v115 = v129;
            break;
        }

        goto LABEL_10;
      }
    }

    v119 = v163[0];
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v121 = v120;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v121 = &type metadata for AccessibilitySoundRecognition.BuiltInDetectorIdentifier;
    v122 = sub_1C9A93868();
    sub_1C98994EC(v122);
    sub_1C97AEB3C();
    (*(v123 + 104))(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v119 + 8))(v25, v97);
  }

  v124 = v162;
LABEL_10:
  sub_1C97A592C(v124);
  sub_1C97AEB5C();
}

uint64_t sub_1C995BA9C()
{
  sub_1C9A93CC8();
  AccessibilitySoundRecognition.BuiltInDetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t static AccessibilitySoundRecognition.DetectorIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = sub_1C9A91748();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3CDF48, &qword_1C9ABA048);
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = *(v17 + 56);
  sub_1C996D918();
  sub_1C996D918();
  sub_1C9813668();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C9970F90();
    sub_1C98B7774();
    sub_1C996D918();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v14 == v19[v20];
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97DA1E0(v19, &qword_1EC3CDF48, &qword_1C9ABA048);
    v22 = 0;
    return v22 & 1;
  }

  sub_1C9970F90();
  sub_1C988EB2C();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v3 + 8))(v11, v27);
    goto LABEL_8;
  }

  v21 = v27;
  (*(v3 + 32))(v7, &v19[v20], v27);
  v22 = sub_1C9A91708();
  v23 = *(v3 + 8);
  v23(v7, v21);
  v23(v11, v21);
LABEL_6:
  sub_1C99710B0();
  sub_1C996D864(v19, v24);
  return v22 & 1;
}

uint64_t sub_1C995BD78(uint64_t a1)
{
  v2 = sub_1C996D4C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BDB4(uint64_t a1)
{
  v2 = sub_1C996D4C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995BE08(uint64_t a1)
{
  v2 = sub_1C996D418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BE44(uint64_t a1)
{
  v2 = sub_1C996D418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995BE80(uint64_t a1)
{
  v2 = sub_1C996D46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995BEBC(uint64_t a1)
{
  v2 = sub_1C996D46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.DetectorIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CDF50, &qword_1C9ABA050);
  sub_1C97AE9C8();
  v48 = v27;
  v49 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v47 = v29;
  sub_1C9A91748();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEAD8();
  v31 = sub_1C97A2CEC(&qword_1EC3CDF58, &qword_1C9ABA058);
  sub_1C97AE9C8();
  v46 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C9945F4C();
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AEAD8();
  v50 = sub_1C97A2CEC(&qword_1EC3CDF60, &qword_1C9ABA060);
  sub_1C97AE9C8();
  v36 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97FB2D8();
  v38 = sub_1C99460A8();
  sub_1C97BE20C(v38, v39);
  sub_1C996D418();
  sub_1C9971448();
  sub_1C9A93DD8();
  sub_1C9970F90();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_1C99715BC();
    v41(v40);
    sub_1C97FB3CC();
    sub_1C996D46C();
    v42 = v50;
    sub_1C99714B8();
    sub_1C9A93988();
    sub_1C9970F78();
    sub_1C996D568(v43);
    sub_1C9A93A18();
    (*(v48 + 8))(v47, v49);
    v44 = sub_1C99715BC();
    v45(v44);
  }

  else
  {
    sub_1C996D4C0();
    v42 = v50;
    sub_1C99714B8();
    sub_1C9A93988();
    sub_1C996D514();
    sub_1C9A93A18();
    (*(v46 + 8))(v24, v31);
  }

  (*(v36 + 8))(v25, v42);
  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)()
{
  sub_1C98EE70C();
  v0 = sub_1C9A91748();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = (v9 - v8);
  sub_1C9970F90();
  sub_1C9871794();
  sub_1C996D918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C984ADE8();
    v12(v11);
    MEMORY[0x1CCA91980](1);
    sub_1C9970F78();
    sub_1C996D568(v13);
    sub_1C9A92398();
    return (*(v2 + 8))(v6, v0);
  }

  else
  {
    v15 = *v10;
    MEMORY[0x1CCA91980](0);
    return MEMORY[0x1CCA91980](v15);
  }
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.DetectorIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1C97AEB94();
  v91 = v25;
  v27 = v26;
  v86 = v28;
  v90 = sub_1C97A2CEC(&qword_1EC3CDF98, &qword_1C9ABA068);
  sub_1C97AE9C8();
  v87 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v85 = v31;
  sub_1C97A2CEC(&qword_1EC3CDFA0, &qword_1C9ABA070);
  sub_1C97AE9C8();
  v82 = v33;
  v83 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v84 = v35;
  sub_1C97A2CEC(&qword_1EC3CDFA8, &qword_1C9ABA078);
  sub_1C97AE9C8();
  v88 = v37;
  v89 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C98550DC();
  v39 = type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C98435A0();
  v43 = v41 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = v80 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = v80 - v48;
  sub_1C97BE20C(v27, v27[3]);
  sub_1C996D418();
  sub_1C993AF40();
  v50 = v91;
  sub_1C9A93DB8();
  if (!v50)
  {
    v80[0] = v47;
    v80[1] = v49;
    v80[2] = v43;
    v81 = v39;
    v91 = v27;
    v51 = v89;
    sub_1C9A93958();
    sub_1C98EE524();
    if (v53 != v52 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v56 == v57)
      {
        __break(1u);
        return;
      }

      v92 = *(v55 + v54);
      sub_1C98EE520();
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      if (v59 == v61 >> 1)
      {
        if (v92)
        {
          sub_1C97FB3CC();
          sub_1C996D46C();
          sub_1C99711BC();
          sub_1C9A93858();
          sub_1C9A91748();
          sub_1C9970F78();
          sub_1C996D568(v62);
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v72 = sub_1C9971360();
          v73(v72);
          v74 = sub_1C9971398();
          v75(v74);
        }

        else
        {
          sub_1C996D4C0();
          sub_1C99711BC();
          sub_1C9A93858();
          sub_1C996D5AC();
          v71 = v83;
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v76 = sub_1C9971210();
          v77(v76, v71);
          v78 = sub_1C997121C();
          v79(v78, v51);
          *v80[0] = a13;
        }

        swift_storeEnumTagMultiPayload();
        sub_1C9970F90();
        sub_1C996D8BC();
        sub_1C9970F90();
        sub_1C98BBB4C();
        sub_1C996D8BC();
        v70 = v91;
        goto LABEL_10;
      }
    }

    v63 = v81;
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v65 = v64;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v65 = v63;
    v66 = sub_1C9A93868();
    sub_1C98994EC(v66);
    sub_1C97AEB3C();
    (*(v67 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v68 = sub_1C997121C();
    v69(v68, v51);
    v27 = v91;
  }

  v70 = v27;
LABEL_10:
  sub_1C97A592C(v70);
  sub_1C97AEB5C();
}

BOOL sub_1C995CA78()
{
  sub_1C98AE1E8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C9971510(__src);
  sub_1C997138C();
  memcpy(v3, v4, v5);
  sub_1C9971510(&v30);
  sub_1C997138C();
  memcpy(v6, v7, v8);
  sub_1C99716E0(v31);
  if (!v17)
  {
    nullsub_1();
    v16 = *v15;
    memcpy(__dst, __src, 0xD1uLL);
    sub_1C99716E0(__dst);
    if (!v17)
    {
      nullsub_1();
      v21 = *v20;
      sub_1C97DA1E0(v29, &qword_1EC3CE658, &unk_1C9ABC360);
      return v16 == v21;
    }

    nullsub_1();
    goto LABEL_14;
  }

  nullsub_1();
  v10 = v9;
  memcpy(__dst, __src, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (!v17)
  {
    nullsub_1();
    memcpy(v24, v27, 0xD1uLL);
    nullsub_1();
    sub_1C98ACCA8();
LABEL_14:
    v18 = __src;
    v19 = __dst;
LABEL_15:
    sub_1C996D710(v18, v19);
    sub_1C97DA1E0(v29, &qword_1EC3CE658, &unk_1C9ABC360);
    return 0;
  }

  nullsub_1();
  v12 = v11;
  v13 = *v10 == *v11 && v10[1] == v11[1];
  if (!v13 && (sub_1C9A93B18() & 1) == 0)
  {
    sub_1C996D710(__src, v24);
    v18 = v27;
    v19 = v24;
    goto LABEL_15;
  }

  memcpy(v26, v10 + 2, sizeof(v26));
  memcpy(v23, v12 + 2, 0xC0uLL);
  v14 = sub_1C9962A98(v26, v23);
  sub_1C996D710(__src, v24);
  sub_1C996D710(v27, v24);
  sub_1C97DA1E0(v29, &qword_1EC3CE658, &unk_1C9ABC360);
  return v14;
}

uint64_t sub_1C995CC84()
{
  sub_1C98AE1E8();
  v3 = v1 == 0x6E49746C697562 && v2 == 0xE700000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6D6F74737563 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1C9A93B18();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C995CD44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726F736E6574 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C995CE04(char a1)
{
  if (a1)
  {
    return 0x73726F736E6574;
  }

  else
  {
    return 25705;
  }
}

void sub_1C995CE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE2B0, &qword_1C9ABC180);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97E86E4();
  v28 = sub_1C97A2CEC(&qword_1EC3CE2B8, &qword_1C9ABC188);
  sub_1C97AE9C8();
  v45 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C9945F6C();
  v46 = sub_1C97A2CEC(&qword_1EC3CE2C0, &qword_1C9ABC190);
  sub_1C97AE9C8();
  v32 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97FB2C8();
  v34 = sub_1C99460A8();
  sub_1C97BE20C(v34, v35);
  sub_1C996F830();
  sub_1C9971614();
  sub_1C9A93DD8();
  memcpy(v48, v23, 0xD1uLL);
  if (sub_1C986EFE0(v48) == 1)
  {
    nullsub_1();
    v37 = v36;
    sub_1C996F884();
    sub_1C9A93988();
    LOBYTE(v47[0]) = 0;
    sub_1C9A939C8();
    if (!v24)
    {
      memcpy(v47, (v37 + 16), sizeof(v47));
      sub_1C98DDC18();
      sub_1C9A93A18();
    }

    v38 = sub_1C993AD28();
    v39(v38);
    (*(v32 + 8))(v25, v46);
  }

  else
  {
    nullsub_1();
    v41 = *v40;
    sub_1C996F8D8();
    sub_1C9A93988();
    LOBYTE(v47[0]) = v41;
    sub_1C996D514();
    sub_1C9A93A18();
    (*(v45 + 8))(v26, v28);
    v42 = sub_1C98DE2C4();
    v44(v42, v43);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

void sub_1C995D164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v27 = v26;
  v59 = v28;
  sub_1C97A2CEC(&qword_1EC3CE2E0, &qword_1C9ABC198);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98550DC();
  sub_1C97A2CEC(&qword_1EC3CE2E8, &qword_1C9ABC1A0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C9945F6C();
  v31 = sub_1C97A2CEC(&unk_1EC3CE2F0, &qword_1C9ABC1A8);
  sub_1C97AE9C8();
  v60 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C98021C4();
  v34 = sub_1C98138D4();
  sub_1C97BE20C(v34, v35);
  sub_1C996F830();
  sub_1C9A93DB8();
  if (!v24)
  {
    sub_1C9A93958();
    sub_1C98EE524();
    if (v37 != v36 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v65 = *(v39 + v38);
      sub_1C98EE520();
      v43 = v42;
      v45 = v44;
      swift_unknownObjectRelease();
      if (v43 == v45 >> 1)
      {
        if (v65)
        {
          LOBYTE(v62[0]) = 1;
          sub_1C996F884();
          sub_1C99716A8(&type metadata for AccessibilitySoundRecognition.DetectorSpecification.CustomCodingKeys, v62);
          LOBYTE(v62[0]) = 0;
          v52 = sub_1C9A938A8();
          v54 = v53;
          v61 = v52;
          sub_1C97FB3CC();
          sub_1C98DDCC8();
          sub_1C99711BC();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v57 = sub_1C9971564();
          v58(v57);
          (*(v60 + 8))(v25, v31);
          memcpy(&v62[2], v63, 0xC0uLL);
          v62[0] = v61;
          v62[1] = v54;
          sub_1C996D704(v62);
        }

        else
        {
          LOBYTE(v62[0]) = 0;
          sub_1C996F8D8();
          sub_1C99716A8(&type metadata for AccessibilitySoundRecognition.DetectorSpecification.BuiltInCodingKeys, v62);
          sub_1C996D5AC();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v55 = sub_1C99715B0();
          v56(v55);
          (*(v60 + 8))(v25, v31);
          LOBYTE(v62[0]) = v63[0];
          sub_1C996D6FC(v62);
        }

        memcpy(v64, v62, sizeof(v64));
        memcpy(v59, v64, 0xD1uLL);
        sub_1C97A592C(v27);
        goto LABEL_10;
      }
    }

    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v47 = v46;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v47 = &type metadata for AccessibilitySoundRecognition.DetectorSpecification;
    v48 = sub_1C9A93868();
    sub_1C98994EC(v48);
    sub_1C97AEB3C();
    (*(v49 + 104))(v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_1C997121C();
    v51(v50, v31);
  }

  sub_1C97A592C(v27);
LABEL_10:
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C995D748()
{
  sub_1C9A93CC8();
  AccessibilitySoundRecognition.DetectorIdentifier.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t sub_1C995D788(uint64_t a1)
{
  v2 = sub_1C996F8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D7C4(uint64_t a1)
{
  v2 = sub_1C996F8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D800(uint64_t a1)
{
  v2 = sub_1C996F830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D83C(uint64_t a1)
{
  v2 = sub_1C996F830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C995CD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C995D8A8(uint64_t a1)
{
  v2 = sub_1C996F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D8E4(uint64_t a1)
{
  v2 = sub_1C996F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995D99C(uint64_t a1)
{
  v2 = sub_1C996D654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995D9D8(uint64_t a1)
{
  v2 = sub_1C996D654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995DA14(uint64_t a1)
{
  v2 = sub_1C996D600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995DA50(uint64_t a1)
{
  v2 = sub_1C996D600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C995DA8C(uint64_t a1)
{
  v2 = sub_1C996D6A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C995DAC8(uint64_t a1)
{
  v2 = sub_1C996D6A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.Detection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CDFC0, &qword_1C9ABA080);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CDFC8, &qword_1C9ABA088);
  sub_1C97AE9C8();
  v41 = v28;
  v42 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97FB2D8();
  v30 = sub_1C97A2CEC(&qword_1EC3CDFD0, &qword_1C9ABA090);
  sub_1C97AE9C8();
  v32 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97E86E4();
  v34 = *v23;
  v35 = sub_1C99715BC();
  sub_1C97BE20C(v35, v36);
  sub_1C996D600();
  sub_1C9A93DD8();
  v37 = (v32 + 8);
  if (v34)
  {
    sub_1C97FB3CC();
    sub_1C996D654();
    sub_1C99714B8();
    sub_1C9A93988();
    v38 = sub_1C9971210();
  }

  else
  {
    sub_1C996D6A8();
    sub_1C99714B8();
    sub_1C9A93988();
    v39 = v42;
    v40 = *(v41 + 8);
    v38 = v25;
  }

  v40(v38, v39);
  (*v37)(v24, v30);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.Detection.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  v1 = sub_1C997154C();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.Detection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v55 = v26;
  v56 = sub_1C97A2CEC(&qword_1EC3CDFF0, &qword_1C9ABA098);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C9945F4C();
  v28 = sub_1C97A2CEC(&qword_1EC3CDFF8, &qword_1C9ABA0A0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98021C4();
  v30 = sub_1C97A2CEC(&qword_1EC3CE000, &qword_1C9ABA0A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97FB2C8();
  sub_1C97BE20C(v25, v25[3]);
  sub_1C996D600();
  sub_1C9971614();
  sub_1C9A93DB8();
  if (!v23)
  {
    v57 = v25;
    sub_1C9A93958();
    sub_1C98EE524();
    if (v33 != v32 >> 1)
    {
      sub_1C9899564();
      sub_1C9971540();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v38 = *(v35 + v34);
      sub_1C98EE520();
      v40 = v39;
      v42 = v41;
      swift_unknownObjectRelease();
      if (v40 == v42 >> 1)
      {
        if (v38)
        {
          sub_1C97FB3CC();
          sub_1C996D654();
          sub_1C99711BC();
          sub_1C9A93858();
          v43 = v55;
          swift_unknownObjectRelease();
          v44 = sub_1C997121C();
          v46 = v56;
        }

        else
        {
          sub_1C996D6A8();
          sub_1C99711BC();
          sub_1C9A93858();
          v43 = v55;
          swift_unknownObjectRelease();
          v44 = sub_1C997121C();
          v46 = v28;
        }

        v45(v44, v46);
        v53 = sub_1C97FB300();
        v54(v53);
        *v43 = v38;
        sub_1C97A592C(v57);
        goto LABEL_10;
      }
    }

    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v48 = v47;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v48 = &type metadata for AccessibilitySoundRecognition.Detection;
    v49 = sub_1C9A93868();
    sub_1C98994EC(v49);
    sub_1C97AEB3C();
    (*(v50 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_1C9899528();
    v52(v51, v30);
    v25 = v57;
  }

  sub_1C97A592C(v25);
LABEL_10:
  sub_1C9971578();
  sub_1C97AEB5C();
}

unint64_t AccessibilitySoundRecognition.Request.description.getter()
{
  memcpy(__dst, v0, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (v1)
  {
    nullsub_1();
    v3 = *(v2 + 8);
    sub_1C9A935B8();

    v6 = 0xD00000000000002BLL;
    v4 = sub_1C997154C();
    MEMORY[0x1CCA90230](v4, v3);
  }

  else
  {
    nullsub_1();
    v6 = 0;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000024, 0x80000001C9ADA560);
    sub_1C9A93728();
  }

  return v6;
}

void *AccessibilitySoundRecognition.Request.init(detectorIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AccessibilitySoundRecognition.DetectorIdentifier(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = (v6 - v5);
  sub_1C9970F90();
  sub_1C9971264();
  sub_1C996D918();
  sub_1C984ADE8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C99710B0();
    sub_1C996D864(v7, v10);
    result = sub_1C9A93778("Fatal error", 11, 2, 0xD00000000000001FLL, 0x80000001C9ADA5D0, "SoundAnalysis/AccessibilitySoundRecognition.swift", 49, 2, 395);
    __break(1u);
  }

  else
  {
    sub_1C99710B0();
    sub_1C996D864(a1, v8);
    __src[0] = *v7;
    sub_1C996D6FC(__src);
    return memcpy(a2, __src, 0xD1uLL);
  }

  return result;
}

void AccessibilitySoundRecognition.Request.init(customModel:)()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C9A91558();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  sub_1C99714C4();
  v4();
  sub_1C995E5A0();
  if (v0)
  {
    v5 = sub_1C9813668();
    v6(v5);
  }

  else
  {
    memcpy(v12, v14, sizeof(v12));
    v7 = sub_1C9A91478();
    v9 = v8;
    v10 = sub_1C9813668();
    v11(v10);
    v13[0] = v7;
    v13[1] = v9;
    memcpy(&v13[2], v12, 0xC0uLL);
    sub_1C996D704(v13);
    memcpy(v2, v13, 0xD1uLL);
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C995E5A0()
{
  sub_1C97AEB94();
  v3 = v2;
  v279 = v4;
  v307 = sub_1C9A91978();
  sub_1C97AE9C8();
  v305 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v306 = v8 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE660, &qword_1C9AAEF88);
  v10 = sub_1C97DACE4(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  v288 = v11 - v12;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435C8();
  v291 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435C8();
  v293 = v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435C8();
  v295 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435C8();
  v297 = v20;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98435C8();
  v299 = v22;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C98435C8();
  v300 = v24;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v25);
  v304 = &v265 - v26;
  v308 = sub_1C9A919A8();
  sub_1C97AE9C8();
  v303 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C98435A0();
  v280 = v29 - v30;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C98435C8();
  v281 = v32;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C98435C8();
  v282 = v34;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C98435C8();
  v283 = v36;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C98435C8();
  v284 = v38;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C98435C8();
  v285 = v40;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C98435C8();
  v286 = v42;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C98435C8();
  v287 = v44;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C98435C8();
  v289 = v46;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C98435C8();
  v290 = v48;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C98435C8();
  v292 = v50;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C98435C8();
  v294 = v52;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C98435C8();
  v296 = v54;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C98435C8();
  v298 = v56;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C98435C8();
  v301 = v58;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v59);
  v302 = &v265 - v60;
  v61 = sub_1C97A2CEC(&qword_1EC3CB2C0, &qword_1C9ABC370);
  sub_1C97DACE4(v61);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C97AEA4C();
  v63 = sub_1C9A91828();
  sub_1C97AE9C8();
  v309 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1C97AEAD8();
  v68 = v67 - v66;
  v69 = sub_1C9A91558();
  sub_1C97AE9C8();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AEAD8();
  v75 = v74 - v73;
  v76 = type metadata accessor for ModelFeatureExtractor(0);
  v77 = sub_1C97DACE4(v76);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C97AEAD8();
  v80 = v79 - v78;
  (*(v71 + 16))(v75, v3, v69);
  sub_1C98B8EA8();
  if (v0)
  {
    (*(v71 + 8))(v3, v69);
    goto LABEL_30;
  }

  v277 = v69;
  v275 = 0;
  v276 = v68;
  v278 = v3;
  sub_1C98B9028(0x6F696475615F6474, 0xE800000000000000, v1);
  v81 = v80;
  if (sub_1C97ABF20(v1, 1, v63) == 1)
  {
    sub_1C97DA1E0(v1, &qword_1EC3CB2C0, &qword_1C9ABC370);
    type metadata accessor for SNError(v82);
    sub_1C9820900(0x80000001C9AD4AA0, 0xD000000000000034, "_AccessibilitySoundRecognition");
    swift_willThrow();
    v83 = sub_1C9971100();
    v84(v83);
LABEL_9:
    sub_1C9970FA8();
    v102 = v81;
LABEL_29:
    sub_1C996D864(v102, v101);
    goto LABEL_30;
  }

  (*(v309 + 32))(v276, v1, v63);
  v85 = *(sub_1C9A91818() + 16);

  if (v85 != 3)
  {
    type metadata accessor for SNError(v86);
    sub_1C9820900(0x80000001C9AD4AA0, 0xD00000000000002ELL, "ng from custom model");
    swift_willThrow();
    (*(v71 + 8))(v278, v277);
    v99 = sub_1C993AD28();
    v100(v99);
    goto LABEL_9;
  }

  v87 = v306;
  sub_1C993AF40();
  sub_1C9A91968();
  v88 = v304;
  sub_1C98B9418(v81, 0x72616C706D657865, 0xE800000000000000, v87, v304);
  v89 = v305;
  v274 = v81;
  v90 = v307;
  v91 = v305 + 8;
  v273 = *(v305 + 8);
  v273(v87, v307);
  if (sub_1C97ABF20(v88, 1, v308) == 1)
  {
    sub_1C97DA1E0(v88, &unk_1EC3CE660, &qword_1C9AAEF88);
    type metadata accessor for SNError(v92);
    sub_1C9971014();
    v96 = sub_1C9820900(v94, v93 + 17, v95);
    sub_1C9971464(v96);
    (*(v71 + 8))(v278, v277);
    v97 = sub_1C993AD28();
LABEL_28:
    v98(v97);
    sub_1C9970FA8();
    v102 = v274;
    goto LABEL_29;
  }

  v272 = v63;
  v104 = v302;
  v103 = v303;
  v105 = *(v303 + 32);
  v106 = v88;
  v107 = v308;
  v304 = v303 + 32;
  v271 = v105;
  v105(v302, v106, v308);
  sub_1C9A918F8();
  v109 = *(v89 + 104);
  v108 = v89 + 104;
  LODWORD(v305) = *MEMORY[0x1E69AD830];
  v270 = v109;
  v109(v87);
  v110 = v300;
  sub_1C98B9418(v274, 0xD000000000000010, 0x80000001C9ADAC00, v87, v300);
  v111 = v91;
  v112 = v273;
  v269 = v111;
  v273(v87, v90);
  if (sub_1C97ABF20(v110, 1, v107) == 1)
  {
    sub_1C97DA1E0(v110, &unk_1EC3CE660, &qword_1C9AAEF88);
    type metadata accessor for SNError(v113);
    sub_1C9971014();
    v117 = sub_1C9820900(v115, v114 + 26, v116);
    sub_1C9971464(v117);
    v118 = sub_1C9971100();
    v119(v118);
    (*(v103 + 8))(v104, v308);
LABEL_27:
    v97 = sub_1C9971120();
    goto LABEL_28;
  }

  sub_1C997118C();
  v120();
  sub_1C9A918F8();
  v121 = sub_1C99714A0();
  v122(v121);
  v123 = v299;
  v124 = v274;
  sub_1C997142C(v274, 0x31766E6F635F3163, v299);
  v112(v87, v110);
  sub_1C983E180(v123);
  if (v144)
  {
    sub_1C97DA1E0(v123, &unk_1EC3CE660, &qword_1C9AAEF88);
    v126 = type metadata accessor for SNError(v125);
    sub_1C9971014();
    v130 = sub_1C9820900(v128, v127 + 18, v129);
    sub_1C9971464(v130);
    v131 = sub_1C9971100();
    v132(v131);
    sub_1C9971420();
    v133 = v308;
    v126(v301, v308);
    v126(v302, v133);
    v134 = sub_1C9971120();
    v135(v134);
    sub_1C9970FA8();
    v102 = v124;
    goto LABEL_29;
  }

  v136 = v108;
  v137 = v124;
  v138 = v298;
  sub_1C997118C();
  v139();
  sub_1C9A918F8();
  v140 = v307;
  v270(v306, v305, v307);
  sub_1C997136C();
  v142 = v297;
  v143 = v306;
  sub_1C997142C(v137, v141 + 256, v297);
  v112(v143, v140);
  sub_1C983E180(v142);
  if (v144)
  {
    sub_1C97DA1E0(v142, &unk_1EC3CE660, &qword_1C9AAEF88);
    v146 = type metadata accessor for SNError(v145);
    sub_1C9971014();
    v150 = sub_1C9820900(v148, v147 + 18, v149);
    sub_1C9971464(v150);
    v151 = sub_1C9971100();
    v152(v151);
    sub_1C9971420();
    v153 = v138;
    v154 = v308;
LABEL_25:
    (v146)(v153, v154);
    (v146)(v301, v154);
    v183 = v302;
    v184 = v154;
LABEL_26:
    (v146)(v183, v184);
    goto LABEL_27;
  }

  v155 = v296;
  sub_1C997118C();
  v156();
  sub_1C9A918F8();
  v157 = v307;
  v270(v143, v305, v307);
  sub_1C997136C();
  v159 = v295;
  sub_1C997142C(v274, v158 + 512, v295);
  v112(v143, v157);
  sub_1C983E180(v159);
  if (v160)
  {
    sub_1C97DA1E0(v159, &unk_1EC3CE660, &qword_1C9AAEF88);
    v146 = type metadata accessor for SNError(v161);
    sub_1C9971014();
    v165 = sub_1C9820900(v163, v162 + 18, v164);
    sub_1C9971464(v165);
    v166 = sub_1C9971100();
    v167(v166);
    sub_1C9971420();
    v168 = v155;
    v154 = v308;
LABEL_24:
    (v146)(v168, v154);
    v153 = v298;
    goto LABEL_25;
  }

  v169 = v294;
  sub_1C997118C();
  v170();
  sub_1C9A918F8();
  v171 = sub_1C99714A0();
  v172(v171);
  sub_1C997136C();
  v174 = v293;
  sub_1C997142C(v274, v173 + 768, v293);
  v112(v143, v159);
  sub_1C983E180(v174);
  if (v175)
  {
    sub_1C97DA1E0(v174, &unk_1EC3CE660, &qword_1C9AAEF88);
    v146 = type metadata accessor for SNError(v176);
    sub_1C9971014();
    v180 = sub_1C9820900(v178, v177 + 18, v179);
    sub_1C9971464(v180);
    v181 = sub_1C9971100();
    v182(v181);
    sub_1C9971420();
    v154 = v308;
    (v146)(v169, v308);
    v168 = v296;
    goto LABEL_24;
  }

  v185 = v143;
  v186 = v308;
  sub_1C9971454();
  v187();
  sub_1C9A91948();
  sub_1C9971620();
  v305 = v136;
  v188();
  v189 = v291;
  sub_1C98B9418(v274, 12644, 0xE200000000000000, v185, v291);
  v112(v185, v90);
  v190 = sub_1C97ABF20(v189, 1, v186);
  if (v190 == 1)
  {
    sub_1C97DA1E0(v189, &unk_1EC3CE660, &qword_1C9AAEF88);
    v146 = type metadata accessor for SNError(v191);
    sub_1C9971014();
    v195 = sub_1C9820900(v193, v192 + 11, v194);
    sub_1C9971464(v195);
    v196 = sub_1C9971100();
    v197(v196);
    sub_1C9971420();
LABEL_35:
    (v146)(v198, v186);
    (v146)(v294, v186);
    (v146)(v296, v186);
    (v146)(v298, v186);
    (v146)(v301, v186);
    v183 = v302;
    v184 = v186;
    goto LABEL_26;
  }

  v199 = v290;
  sub_1C9971454();
  v200();
  sub_1C9A91948();
  sub_1C9971620();
  v201();
  v202 = v288;
  sub_1C98B9418(v274, 12900, 0xE200000000000000, v185, v288);
  v112(v185, v90);
  if (sub_1C97ABF20(v202, 1, v186) == 1)
  {
    sub_1C97DA1E0(v202, &unk_1EC3CE660, &qword_1C9AAEF88);
    v146 = type metadata accessor for SNError(v203);
    sub_1C9971014();
    v207 = sub_1C9820900(v205, v204 + 11, v206);
    sub_1C9971464(v207);
    v208 = sub_1C9971100();
    v209(v208);
    sub_1C9971420();
    v146();
    v198 = v292;
    goto LABEL_35;
  }

  sub_1C9971454();
  v210();
  v211 = sub_1C9A91818();
  v214 = v278;
  if (*(v211 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v215 = v186;
    v307 = *(v211 + 48);

    v216 = v303;
    v217 = *(v303 + 16);
    v218 = v287;
    v219 = sub_1C9971398();
    v217(v219);
    v220 = v275;
    sub_1C98BAA1C();
    if (v220)
    {
      v223 = *(v216 + 8);
      v223(v218, v215);
      v224 = sub_1C9899528();
      v225(v224, v277);
      v223(v289, v215);
      v223(v290, v215);
      v223(v292, v215);
      v223(v294, v215);
      v223(v296, v215);
      v223(v298, v215);
      v223(v301, v215);
      v226 = sub_1C99715BC();
      (v223)(v226);
      v227 = sub_1C9971120();
      v228(v227);
      sub_1C9970FA8();
      sub_1C996D864(v274, v229);
      goto LABEL_30;
    }

    v306 = v221;
    v230 = MEMORY[0x1E69E7CC0];
    if (v222)
    {
      v231 = v222;
    }

    else
    {
      v231 = MEMORY[0x1E69E7CC0];
    }

    v305 = v231;
    v214 = *(v216 + 8);
    v303 = v216 + 8;
    (v214)(v218, v215);
    (v217)(v286, v301, v215);
    sub_1C98BA30C();
    v299 = v234;
    v300 = v233;
    v199 = v306;
    if (v232)
    {
      v235 = v232;
    }

    else
    {
      v235 = v230;
    }

    v293 = v235;
    sub_1C997117C();
    v214();
    (v217)(v285, v298, v215);
    sub_1C98BA30C();
    v297 = v237;
    v295 = v238;
    v275 = 0;
    v239 = MEMORY[0x1E69E7CC0];
    if (v236)
    {
      v239 = v236;
    }

    v291 = v239;
    sub_1C997117C();
    v214();
    (v217)(v284, v296, v215);
    sub_1C99714D0();
    sub_1C98BA30C();
    v287 = v242;
    v288 = v241;
    v275 = 0;
    v243 = MEMORY[0x1E69E7CC0];
    if (v240)
    {
      v243 = v240;
    }

    v273 = v243;
    sub_1C997117C();
    v214();
    (v217)(v283, v294, v215);
    sub_1C99714D0();
    sub_1C98BA30C();
    v270 = v246;
    v271 = v245;
    v275 = 0;
    v247 = MEMORY[0x1E69E7CC0];
    if (v244)
    {
      v247 = v244;
    }

    v269 = v247;
    sub_1C997117C();
    v214();
    (v217)(v282, v292, v215);
    sub_1C99714D0();
    sub_1C98BA30C();
    v283 = v249;
    v268 = v250;
    v275 = 0;
    v251 = MEMORY[0x1E69E7CC0];
    if (v248)
    {
      v251 = v248;
    }

    v267 = v251;
    sub_1C997117C();
    v214();
    (v217)(v281, v290, v215);
    sub_1C99714D0();
    sub_1C98BA658();
    v282 = v253;
    v266 = v254;
    v275 = 0;
    v255 = MEMORY[0x1E69E7CC0];
    if (v252)
    {
      v255 = v252;
    }

    v265 = v255;
    sub_1C997117C();
    v214();
    (v217)(v280, v289, v215);
    sub_1C99714D0();
    sub_1C98BA658();
    v275 = 0;
  }

  v256 = v211;
  v257 = v212;
  if (v213)
  {
    v258 = v213;
  }

  else
  {
    v258 = MEMORY[0x1E69E7CC0];
  }

  v259 = v308;
  (v214)(v280, v308);
  v260 = sub_1C9971100();
  v261(v260);
  (v214)(v289, v259);
  (v214)(v290, v259);
  (v214)(v292, v259);
  (v214)(v294, v259);
  (v214)(v296, v259);
  (v214)(v298, v259);
  (v214)(v301, v259);
  (v214)(v302, v259);
  v262 = sub_1C9971120();
  v263(v262);
  sub_1C9970FA8();
  sub_1C996D864(v274, v264);
  v311[0] = v307;
  v311[1] = v199;
  v311[2] = v305;
  v311[3] = v300;
  v311[4] = v299;
  v311[5] = v293;
  v311[6] = v297;
  v311[7] = v295;
  v311[8] = v291;
  v311[9] = v288;
  v311[10] = v287;
  v311[11] = v273;
  v311[12] = v271;
  v311[13] = v270;
  v311[14] = v269;
  v311[15] = v283;
  v311[16] = v268;
  v311[17] = v267;
  v311[18] = v282;
  v311[19] = v266;
  v311[20] = v265;
  v311[21] = v256;
  v311[22] = v257;
  v311[23] = v258;
  v312[0] = v307;
  v312[1] = v199;
  v312[2] = v305;
  v312[3] = v300;
  v312[4] = v299;
  v312[5] = v293;
  v312[6] = v297;
  v312[7] = v295;
  v312[8] = v291;
  v312[9] = v288;
  v312[10] = v287;
  v312[11] = v273;
  v312[12] = v271;
  v312[13] = v270;
  v312[14] = v269;
  v312[15] = v283;
  v312[16] = v268;
  v312[17] = v267;
  v312[18] = v282;
  v312[19] = v266;
  v312[20] = v265;
  v312[21] = v256;
  v312[22] = v257;
  v312[23] = v258;
  sub_1C98DDC6C(v311, &v310);
  sub_1C996FC78(v312);
  memcpy(v279, v311, 0xC0uLL);
LABEL_30:
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundRecognition.Request.runLocallyFromFile(fileURL:)(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C995FE10()
{
  v16 = v0;
  sub_1C983B718(*(v0 + 1144), v15);
  v2 = *(v0 + 1152);
  v3 = v15[1];
  *(v0 + 1072) = v15[0];
  *(v0 + 1088) = v3;
  v4 = v15[3];
  *(v0 + 1104) = v15[2];
  *(v0 + 1120) = v4;
  memcpy((v0 + 16), v2, 0xD1uLL);
  sub_1C99716E0(v0 + 16);
  if (v5)
  {
    v6 = *(v0 + 1136);
    nullsub_1();
    v8 = v7[1];
    *(v0 + 656) = *v7;
    *(v0 + 664) = v8;
    sub_1C9971584();
    memcpy(v9, v10, v11);
    memcpy((v0 + 448), (v0 + 656), 0xD0uLL);
    sub_1C9971510((v0 + 232));
    nullsub_1();
    sub_1C98ACCA8();
    sub_1C99557B8((v0 + 448), (v0 + 1072), v6);
    sub_1C97DA1E0(v0 + 1072, &qword_1EC3CE010, &unk_1C9AA3460);
    sub_1C986F044(v0 + 656);
  }

  else
  {
    v12 = *(v0 + 1136);
    nullsub_1();
    sub_1C9960244((v0 + 1072), *v13, v12);
    sub_1C97DA1E0(v0 + 1072, &qword_1EC3CE010, &unk_1C9AA3460);
  }

  sub_1C97DA91C();

  return v14();
}

void sub_1C995FFA4()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v26 = v6;
  sub_1C97A2CEC(&qword_1EC3C9AB8, &unk_1C9ABC1B0);
  sub_1C97AE9C8();
  v25 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  v9 = sub_1C97A2CEC(&unk_1EC3CE300, &qword_1C9AB52F0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEA4C();
  type metadata accessor for SoundRecognition.Session(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = (v13 - v12);
  v15 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v1, 1, 1, v15);
  sub_1C9953D8C(v3, v5, v1, v14);
  sub_1C97DA1E0(v1, &unk_1EC3CE300, &qword_1C9AB52F0);
  if (!v0)
  {

    v16 = sub_1C988EB2C();
    sub_1C97A2CEC(v16, v17);
    sub_1C97AE9EC();
    sub_1C996FE74(v18);
    sub_1C9A91F68();

    v19 = sub_1C9971134(&unk_1EC3C9AD0);
    v20 = sub_1C9813A90(v19, v19);
    v21 = sub_1C9945F10();
    v22(v21, v25);
    sub_1C9A91748();
    sub_1C97DA940();
    v23 = sub_1C98138D4();
    v24(v23);
    sub_1C996D864(v14, type metadata accessor for SoundRecognition.Session);
    *(v26 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v20;
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9960244@<X0>(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3C9AB8, &unk_1C9ABC1B0);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1C97A2CEC(&unk_1EC3CE300, &qword_1C9AB52F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SoundRecognition.Session(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v11, 1, 1, v15);
  sub_1C9954680(a2, a1, v11, v14);
  result = sub_1C97DA1E0(v11, &unk_1EC3CE300, &qword_1C9AB52F0);
  if (!v3)
  {
    v25 = *&v14[*(v12 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C996FE74(&unk_1EC3CE310);
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3C9AD0);
    v17 = v23;
    v18 = sub_1C9A91F28();
    (*(v22 + 8))(v8, v17);
    v19 = sub_1C9A91748();
    v20 = v24;
    (*(*(v19 - 8) + 16))(v24, v14, v19);
    sub_1C996D864(v14, type metadata accessor for SoundRecognition.Session);
    result = type metadata accessor for AccessibilitySoundRecognition.Session(0);
    *(v20 + *(result + 20)) = v18;
  }

  return result;
}

void sub_1C996056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v28 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97ABF78(v28, &a13);
  v106 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  sub_1C97ABFB4(v31);
  v32 = sub_1C9A91C28();
  v33 = sub_1C97ABF78(v32, &a10);
  v103 = v34;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  sub_1C97ABFB4(v36 - v35);
  v37 = sub_1C97A2CEC(&qword_1EC3CB598, &qword_1C9AAF940);
  v38 = sub_1C97ABF78(v37, &v113);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v38);
  v44 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v90 - v45;
  v47 = sub_1C97A2CEC(&qword_1EC3C77C0, &qword_1C9ABC210);
  sub_1C97ABF78(v47, &v114);
  v96 = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  sub_1C97ABFB4(v50);
  v51 = sub_1C97A2CEC(&qword_1EC3CE3D8, &qword_1C9ABC218);
  sub_1C97ABF78(v51, &v115);
  v98 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&unk_1EC3CE3E0, &unk_1C9ABC220);
  sub_1C97ABF78(v55, &v116);
  v100 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  sub_1C97ABFB4(v58);
  v60 = v24[3];
  v59 = v24[4];
  sub_1C97A5A8C(v24, v60);
  (*(*(v59 + 8) + 8))(v60);
  if (!v20)
  {
    v94 = 0;
    v61 = sub_1C99CFB50();

    sub_1C98F9BA0(v24, &v108);
    v62 = swift_allocObject();
    memcpy((v62 + 16), v26, 0xD0uLL);
    sub_1C98F9C04(&v108, (v62 + 224));
    sub_1C996FB7C(v26, &v108);
    sub_1C9A91738();
    sub_1C9971228();
    sub_1C9971600(v63);
    MEMORY[0x1CCA90230](*v26, v26[1]);
    v90 = *(&v108 + 1);
    v91 = v108;
    *&v108 = v61;
    *(&v108 + 1) = sub_1C99659B0;
    v109 = 0;
    v110 = sub_1C996FB5C;
    v111 = v62;
    v112 = 1;
    v93 = v61;

    v92 = v62;

    v64 = sub_1C988EB2C();
    sub_1C97A2CEC(v64, v65);
    sub_1C9971258();
    sub_1C996FE74(v66);
    sub_1C9A91F68();

    v67 = v95;
    (*(v40 + 16))(v44, v46, v95);
    v68 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1C9970F50;
    *(v69 + 24) = 0;
    (*(v40 + 32))(v69 + v68, v44, v67);
    v70 = sub_1C988EB2C();
    sub_1C97A2CEC(v70, v71);
    sub_1C97AE9EC();
    sub_1C996FE74(v72);
    sub_1C99715C8();
    sub_1C9A91EF8();
    (*(v40 + 8))(v46, v67);
    sub_1C99713F4();

    sub_1C99712E4();
    sub_1C99715EC(v73);
    sub_1C9A91748();
    sub_1C9970F78();
    sub_1C996D568(v74);
    v75 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v75);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v91, v90);

    sub_1C99714F4();
    sub_1C993B0C8();

    v76 = sub_1C997107C();
    v77(v76, v97);
    sub_1C9971158(&unk_1EC3CE3F8);
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CE400, &unk_1C9ABC230);
    sub_1C97AA878();
    swift_allocObject();
    v78 = sub_1C9945DA4();
    v97 = v78;
    sub_1C97DAA58();
    v79 = sub_1C97E89F0();
    v80(v79);
    *&v108 = v78;
    (*(v103 + 104))(v102, *MEMORY[0x1E695BD20], v104);
    v81 = v105;
    *v105 = sub_1C9965D98;
    v81[1] = 0;
    v82 = v106;
    v83 = v107;
    (*(v106 + 104))(v81, *MEMORY[0x1E695BD48], v107);
    sub_1C996FE74(&unk_1EC3CE408);
    v84 = v99;
    sub_1C9A92018();
    (*(v82 + 8))(v81, v83);
    v85 = sub_1C9971360();
    v86(v85);

    sub_1C99712C0(&unk_1EC3CE410);
    v87 = v101;
    v88 = sub_1C9A91F28();

    sub_1C97DAA58();
    v89(v84, v87);
    *(a10 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v88;
  }

  sub_1C97AEB5C();
}

BOOL static AccessibilitySoundRecognition.Request.== infix(_:_:)()
{
  sub_1C98AE1E8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C9971510(v9);
  sub_1C996D710(&v8, v11);
  sub_1C996D710(v9, v11);
  sub_1C97BE374();
  v3 = sub_1C995CA78();
  sub_1C9971510(v10);
  sub_1C986F194(v10);
  sub_1C997138C();
  memcpy(v4, v5, v6);
  sub_1C986F194(v11);
  return v3;
}

uint64_t sub_1C9960F0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C9ADA680 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9960FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9960F0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9960FD8(uint64_t a1)
{
  v2 = sub_1C996D748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9961014(uint64_t a1)
{
  v2 = sub_1C996D748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundRecognition.Request.encode(to:)()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CE018, &qword_1C9ABA0C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98550DC();
  sub_1C997138C();
  memcpy(v3, v4, v5);
  sub_1C97BE20C(v1, v1[3]);
  sub_1C996D710(v10, v9);
  sub_1C996D748();
  sub_1C993AF40();
  sub_1C99715E0();
  sub_1C9A93DD8();
  memcpy(v9, v10, 0xD1uLL);
  sub_1C996D79C();
  sub_1C9A93A18();
  memcpy(v8, v9, 0xD1uLL);
  sub_1C986F194(v8);
  v6 = sub_1C9871794();
  v7(v6);
  sub_1C9971534();
  sub_1C97AEB5C();
}

void sub_1C99611A4(uint64_t a1)
{
  memcpy(__dst, v1, 0xD1uLL);
  sub_1C99716E0(__dst);
  if (v2)
  {
    nullsub_1();
    sub_1C9971584();
    memcpy(v3, v4, v5);
    MEMORY[0x1CCA91980](1);
    sub_1C9A92528();
    sub_1C997154C();
    sub_1C99632D4();
  }

  else
  {
    nullsub_1();
    v7 = *v6;
    MEMORY[0x1CCA91980](0);
    MEMORY[0x1CCA91980](v7);
  }
}

uint64_t sub_1C996125C()
{
  sub_1C9A93CC8();
  sub_1C997138C();
  memcpy(v0, v1, v2);
  sub_1C99716E0(v10);
  if (v3)
  {
    nullsub_1();
    sub_1C9971584();
    memcpy(v4, v5, v6);
    MEMORY[0x1CCA91980](1);
    sub_1C9A92528();
    sub_1C99632D4();
  }

  else
  {
    nullsub_1();
    v8 = *v7;
    MEMORY[0x1CCA91980](0);
    MEMORY[0x1CCA91980](v8);
  }

  return sub_1C9A93D18();
}

void AccessibilitySoundRecognition.Request.init(from:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CE030, &qword_1C9ABA0D0);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98021C4();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C996D748();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C996D7F0();
    sub_1C99714B8();
    sub_1C9A938F8();
    (*(v8 + 8))(v1, v6);
    memcpy(v5, v10, 0xD1uLL);
  }

  sub_1C97A592C(v3);
  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C996149C()
{
  sub_1C9A93CC8();
  sub_1C99611A4(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99614E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  return sub_1C98B3818(v17, a1, a2, a3, a4, a5, a6, a7);
}

void *sub_1C99615D0(uint64_t a1, uint64_t a2, void *__src)
{
  v4 = v3;
  v4[26] = a1;
  v4[27] = a2;
  memcpy(v4 + 2, __src, 0xC0uLL);

  sub_1C98DDC6C(__src, v11);
  v6 = sub_1C9961708();
  sub_1C996FC78(__src);
  v4[28] = v6;
  v7 = sub_1C9A92838();
  *(v7 + 16) = 2;
  *(v7 + 32) = 0;
  sub_1C97A2CEC(&qword_1EC3C6A30, &qword_1C9A9D4E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v7;
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  v9 = sub_1C9A92348();

  v4[29] = v9;
  return v4;
}

uint64_t sub_1C9961708()
{
  sub_1C97A2CEC(&qword_1EC3C6A30, &qword_1C9A9D4E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AB9EF0;
  *(inited + 32) = 0xD000000000000042;
  *(inited + 40) = 0x80000001C9ADA710;
  v2 = v0[11];
  *(inited + 48) = v0[10];
  *(inited + 56) = 0xD000000000000040;
  *(inited + 64) = 0x80000001C9ADA760;
  *(inited + 72) = v2;
  sub_1C997147C();
  v3[10] = v4;
  v3[11] = v5;
  v6 = v0[7];
  v3[12] = v0[8];
  v3[13] = v7;
  v9 = v0[14];
  v8 = v0[13];
  v3[14] = 0x80000001C9ADA800;
  v3[15] = v8;
  v3[16] = v4 - 10;
  v3[17] = 0x80000001C9ADA850;
  v10 = v0[22];
  v3[18] = v0[23];
  v3[19] = v4 | 4;
  v11 = v0[4];
  v12 = v0[5];
  v3[20] = 0x80000001C9ADA890;
  v3[21] = v12;
  v3[22] = v4;
  v3[23] = 0x80000001C9ADA8E0;
  v3[24] = v9;
  v3[25] = v7;
  v14 = v0[17];
  v13 = v0[16];
  v3[26] = 0x80000001C9ADA930;
  v3[27] = v13;
  v3[28] = v4 - 8;
  v3[29] = 0x80000001C9ADA980;
  v3[30] = v10;
  v3[31] = v7;
  v3[32] = 0x80000001C9ADA9C0;
  v3[33] = v6;
  v3[34] = v4;
  v3[35] = 0x80000001C9ADAA10;
  v3[36] = v14;
  v3[37] = v4 | 6;
  v3[38] = 0x80000001C9ADAA60;
  v3[39] = v11;
  v3[40] = v4 - 10;
  v3[41] = 0x80000001C9ADAAB0;
  sub_1C997147C();
  v15[42] = v16;
  v15[43] = v17;
  v15[44] = v19;
  v15[45] = v18;
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  sub_1C99711C8();
  v20 = sub_1C9971264();
  sub_1C97A2CEC(v20, v21);
  return sub_1C9A92348();
}

void sub_1C9961994(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 224);
  sub_1C97EF1BC(a2, 0x7475706E69, 0xE500000000000000);
  *(v2 + 224) = v9;
  swift_endAccess();
  sub_1C989DC34(a1, *(v2 + 32));
  if (!v3 && v6 >= 0.75)
  {
    swift_beginAccess();

    sub_1C9884AC8();
    swift_endAccess();

    v8 = sub_1C98BBE58(v7);

    if (v8)
    {
      if (*(v8 + 16) >= 2uLL)
      {

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1C9961B04()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C996FC78(v2);

  return v0;
}

uint64_t sub_1C9961B64()
{
  sub_1C9961B04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9961B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C9808F28(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = sub_1C97BE374();

  return sub_1C9807FAC(v3, v4);
}

uint64_t sub_1C9961BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9961CAC(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_1C9961CDC()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE6E8, &qword_1C9ABCA58);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = sub_1C98B7774();
  sub_1C97BE20C(v2, v3);
  sub_1C99709D0();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
  sub_1C9970FD8();
  v5 = sub_1C9970AD0(v4);
  sub_1C99711E4(v5);
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9970FD8();
    v7 = sub_1C9970A24(v6);
    sub_1C99711E4(v7);
  }

  v8 = sub_1C97AEB30();
  v9(v8);
  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C9961E54()
{
  sub_1C97C8044();
  sub_1C97BE374();

  sub_1C97C80D0();
}

uint64_t sub_1C9961E90()
{
  sub_1C98AE1E8();
  sub_1C97BE32C(v0);
  sub_1C97C8044();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

uint64_t sub_1C9961EDC(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CE718, &qword_1C9ABCA68);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C99709D0();
  sub_1C9971614();
  sub_1C9971448();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
  sub_1C9970FC0();
  v4 = sub_1C9970AD0(v3);
  sub_1C99713A4(v4);
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9970FC0();
  v7 = sub_1C9970A24(v6);
  sub_1C99713A4(v7);
  v8 = sub_1C97E89F0();
  v9(v8);
  sub_1C97A592C(a1);
  return v10;
}

uint64_t sub_1C99620A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1C9808F28(a1, a4) & 1) == 0 || (sub_1C9807FAC(a2, a5) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_1C97BE374();

  return sub_1C9807FAC(v7, v8);
}

uint64_t sub_1C9962120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5373746867696577 && a2 == 0xEC00000065706168;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746867696577 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736573616962 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9962230(char a1)
{
  if (!a1)
  {
    return 0x5373746867696577;
  }

  if (a1 == 1)
  {
    return 0x73746867696577;
  }

  return 0x736573616962;
}

void sub_1C996228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v22 = v21;
  sub_1C97A2CEC(&qword_1EC3CE708, &qword_1C9ABCA60);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AEA4C();
  sub_1C97BE20C(v22, v22[3]);
  sub_1C9970A7C();
  sub_1C99715E0();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
  sub_1C9970FD8();
  v25 = sub_1C9970AD0(v24);
  sub_1C99711E4(v25);
  if (!v20)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9970FD8();
    sub_1C9970A24(v26);
    sub_1C9971448();
    sub_1C9A93A18();
    sub_1C9971448();
    sub_1C9A93A18();
  }

  v27 = sub_1C97AEB30();
  v28(v27);
  sub_1C9971380();
  sub_1C97AEB5C();
}

void sub_1C996245C()
{
  sub_1C97C8044();
  sub_1C97C80D0();

  sub_1C97C80D0();
}

uint64_t sub_1C99624B4(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C97C8044();
  sub_1C97C80D0();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

void sub_1C996251C()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CE730, &qword_1C9ABCA70);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97BE20C(v1, v1[3]);
  sub_1C9970A7C();
  sub_1C9971614();
  sub_1C9971448();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
  sub_1C9970FC0();
  sub_1C9970AD0(v3);
  sub_1C9A938F8();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9970FC0();
  sub_1C9970A24(v4);
  sub_1C9971488();
  sub_1C9A938F8();
  sub_1C9971488();
  sub_1C9A938F8();
  v5 = sub_1C97FB300();
  v6(v5);
  sub_1C97A592C(v1);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C996276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99627C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9961BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99627E8(uint64_t a1)
{
  v2 = sub_1C99709D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9962824(uint64_t a1)
{
  v2 = sub_1C99709D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9962860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9961EDC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C99628B8()
{
  sub_1C9A93CC8();
  sub_1C9961E54();
  return sub_1C9A93D18();
}

uint64_t sub_1C996291C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9962120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9962944(uint64_t a1)
{
  v2 = sub_1C9970A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9962980(uint64_t a1)
{
  v2 = sub_1C9970A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99629BC(void *a1@<X8>)
{
  sub_1C996251C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C9962A24()
{
  sub_1C9A93CC8();
  sub_1C996245C();
  return sub_1C9A93D18();
}

BOOL sub_1C9962A98(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C98AE1E8();
  result = 0;
  if (sub_1C9808F28(*(v4 + 8), *(v5 + 8)))
  {
    v6 = sub_1C984ADE8();
    if (sub_1C9807FAC(v6, v7) & 1) != 0 && (sub_1C9808F28(v3[3], v2[3]) & 1) != 0 && (sub_1C99714DC())
    {
      v8 = sub_1C984ADE8();
      if (sub_1C9807FAC(v8, v9) & 1) != 0 && (sub_1C9808F28(v3[6], v2[6]) & 1) != 0 && (sub_1C99714DC())
      {
        v10 = sub_1C984ADE8();
        if (sub_1C9807FAC(v10, v11) & 1) != 0 && (sub_1C9808F28(v3[9], v2[9]) & 1) != 0 && (sub_1C99714DC())
        {
          v12 = sub_1C984ADE8();
          if (sub_1C9807FAC(v12, v13) & 1) != 0 && (sub_1C9808F28(v3[12], v2[12]) & 1) != 0 && (sub_1C99714DC())
          {
            v14 = sub_1C984ADE8();
            if (sub_1C9807FAC(v14, v15) & 1) != 0 && (sub_1C9808F28(v3[15], v2[15]) & 1) != 0 && (sub_1C99714DC())
            {
              v16 = sub_1C984ADE8();
              if (sub_1C9807FAC(v16, v17) & 1) != 0 && (sub_1C9808F28(v3[18], v2[18]) & 1) != 0 && (sub_1C99714DC())
              {
                v18 = sub_1C984ADE8();
                if (sub_1C9807FAC(v18, v19) & 1) != 0 && (sub_1C9808F28(v3[21], v2[21]))
                {
                  v20 = sub_1C984ADE8();
                  if (sub_1C9807FAC(v20, v21))
                  {
                    v22 = sub_1C97BE374();
                    if (sub_1C9807FAC(v22, v23))
                    {
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C9962C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69537475706E69 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72616C706D657865 && a2 == 0xEE00726F736E6554;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9ADAD80 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9ADADA0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C9ADADC0 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C9ADADE0 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C9ADAE00 == a2;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x726F736E65543164 && a2 == 0xE900000000000073;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x726F736E65543264 && a2 == 0xE900000000000073)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9A93B18();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9962F38(char a1)
{
  result = 0x7A69537475706E69;
  switch(a1)
  {
    case 1:
      result = 0x72616C706D657865;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x726F736E65543164;
      break;
    case 8:
      result = 0x726F736E65543264;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C996304C()
{
  sub_1C97A2CEC(&qword_1EC3CE618, &qword_1C9ABC348);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = sub_1C99460A8();
  sub_1C97BE20C(v2, v3);
  sub_1C996FEC4();
  sub_1C9971448();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  if (!v0)
  {
    sub_1C97FB3CC();
    sub_1C996FF18();
    sub_1C9A93A18();
    v4 = sub_1C996FF6C();
    v7 = sub_1C9971054(v4, v5, v6, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v10 = sub_1C9971054(v7, v8, v9, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v13 = sub_1C9971054(v10, v11, v12, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v16 = sub_1C9971054(v13, v14, v15, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v19 = sub_1C9971054(v16, v17, v18, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    sub_1C9971054(v19, v20, v21, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    sub_1C9971558();
    sub_1C9971054(v22, v23, v24, &type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
  }

  v25 = sub_1C97AEB30();
  return v26(v25);
}

void sub_1C99632D4()
{
  MEMORY[0x1CCA91980](*v0);
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C988EB2C();
  sub_1C97C80D0();
  sub_1C97C8044();
  sub_1C9971264();
  sub_1C97C80D0();
  sub_1C97BE374();

  sub_1C97C80D0();
}

uint64_t sub_1C9963408(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C99632D4();
  return sub_1C9A93D18();
}

void sub_1C9963440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3CE638, &qword_1C9ABC350);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97E86E4();
  sub_1C97BE20C(v25, v25[3]);
  sub_1C996FEC4();
  sub_1C99715E0();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    LOBYTE(v57) = 0;
    v29 = sub_1C9A938E8();
    sub_1C996FFC0();
    sub_1C9A938F8();
    v30 = v57;
    v55 = v58;
    sub_1C9970014();
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v54 = v57;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v48 = v57;
    v49 = v58;
    v50 = v59;
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v45 = v57;
    v46 = v58;
    v47 = v59;
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v42 = v58;
    v43 = v59;
    v44 = v57;
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v39 = v57;
    v40 = v58;
    v41 = v59;
    LOBYTE(v56[0]) = 7;
    sub_1C9971028(&type metadata for AccessibilitySoundRecognition.WeightsAndBiasTensors);
    v37 = v58;
    v38 = v57;
    v36 = v59;
    sub_1C9971558();
    sub_1C9A938F8();
    v31 = sub_1C9971110();
    v32(v31);
    v33 = v81;
    v34 = v83;
    v35 = v82;
    v56[0] = v29;
    v56[1] = v30;
    v56[2] = v55;
    v56[3] = v51;
    v56[4] = v52;
    v56[5] = v53;
    v56[6] = v48;
    v56[7] = v49;
    v56[8] = v50;
    v56[9] = v45;
    v56[10] = v46;
    v56[11] = v47;
    v56[12] = v44;
    v56[13] = v42;
    v56[14] = v43;
    v56[15] = v39;
    v56[16] = v40;
    v56[17] = v41;
    v56[18] = v38;
    v56[19] = v37;
    v56[20] = v36;
    v56[21] = v81;
    v56[22] = v82;
    v56[23] = v83;
    sub_1C98DDC6C(v56, &v57);
    sub_1C97A592C(v25);
    v57 = v29;
    v58 = v54;
    v59 = v55;
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v63 = v48;
    v64 = v49;
    v65 = v50;
    v66 = v45;
    v67 = v46;
    v68 = v47;
    v69 = v44;
    v70 = v42;
    v71 = v43;
    v72 = v39;
    v73 = v40;
    v74 = v41;
    v75 = v38;
    v76 = v37;
    v77 = v36;
    v78 = v33;
    v79 = v35;
    v80 = v34;
    sub_1C996FC78(&v57);
    memcpy(v27, v56, 0xC0uLL);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9963A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9963A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9962C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9963A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9962F30();
  *a1 = result;
  return result;
}

uint64_t sub_1C9963AC4(uint64_t a1)
{
  v2 = sub_1C996FEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9963B00(uint64_t a1)
{
  v2 = sub_1C996FEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9963B44()
{
  sub_1C9A93CC8();
  sub_1C99632D4();
  return sub_1C9A93D18();
}

void sub_1C9963B9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1C9963440(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0xC0uLL);
  }
}

uint64_t sub_1C9963BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  sub_1C9964FC8(__dst, a2, a3, a4, v8, v9, v10, v11, v13, v14, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
  if (!v4)
  {
    sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
    sub_1C996FE74(&unk_1EC3CCE80);
    a4 = sub_1C9A91F28();
  }

  return a4;
}

uint64_t sub_1C9963CD8(void *a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_1C97A2CEC(&qword_1EC3CE418, &qword_1C9ABC248);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v46 - v4;
  v5 = sub_1C97A2CEC(&qword_1EC3CE420, &qword_1C9ABC250);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v46 - v6;
  v56 = sub_1C97A2CEC(&qword_1EC3CE428, &qword_1C9ABC258);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v46 - v7;
  v8 = sub_1C97A2CEC(&qword_1EC3CE430, &qword_1C9ABC260);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3CE438, &qword_1C9ABC268);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE440, &qword_1C9ABC270);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE448, &qword_1C9ABC278);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  sub_1C97A2CEC(&qword_1EC3CE450, &qword_1C9ABC280);
  v19 = swift_allocObject();
  v21 = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0], v20);
  v50 = a1;
  v22 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    __break(1u);
  }

  else
  {
    v48 = v3;
    v3 = v21;
    v19 = v22 / 160;
    if (qword_1EC3C5E00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  v23 = v63;
  sub_1C9958E84(__dst, v19 + 1, 46);
  if (v23)
  {
  }

  else
  {
    v24 = sub_1C98B4394();
    v63 = 0;
    v25 = v24;

    v46 = v3;
    sub_1C9966E74(v3, v25, v18);

    sub_1C996FE74(&unk_1EC3CE458);
    sub_1C9A92008();
    sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
    swift_allocObject();
    v47 = sub_1C98E3778();
    sub_1C97DA1E0(v18, &qword_1EC3CE448, &qword_1C9ABC278);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_1C97A2CEC(&unk_1EC3CB570, &qword_1C9ABC290);
    sub_1C996FE74(&unk_1EC3CE470);
    v26 = v66;
    sub_1C9A92658();
    sub_1C9A91CE8();
    (*(v60 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE478);
    v27 = v62;
    v19 = v15;
    v28 = sub_1C9A91F28();
    (*(v61 + 8))(v15, v27);
    v29 = v63;
    v30 = sub_1C9967230(v26);
    v63 = v29;
    if (v29)
    {
    }

    else
    {
      v64[0] = v30;
      v32 = v49;
      v61 = v28;
      sub_1C9953B34();
      sub_1C97A2CEC(&qword_1EC3CE480, &qword_1C9ABC298);
      v62 = MEMORY[0x1E695BED8];
      sub_1C996FE74(&unk_1EC3CE488);
      sub_1C996FE74(&unk_1EC3CE490);
      sub_1C9A91FE8();
      sub_1C97DA1E0(v32, &qword_1EC3CE418, &qword_1C9ABC248);

      v60 = *(v26 + 32);
      v33 = swift_allocObject();
      v34 = v46;
      *(v33 + 16) = v47;
      *(v33 + 24) = v34;
      v35 = v50;
      memcpy((v33 + 32), v50, 0xC0uLL);
      v36 = *(v26 + 16);
      *(v33 + 224) = *v26;
      *(v33 + 240) = v36;
      v37 = v61;
      *(v33 + 256) = *(v26 + 32);
      *(v33 + 264) = v37;

      sub_1C98DDC6C(v35, v64);

      sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
      sub_1C996FE74(&unk_1EC3CE498);
      v38 = v51;
      v39 = v53;
      v40 = v59;
      sub_1C9A92048();

      (*(v52 + 8))(v40, v39);
      v41 = sub_1C996FE74(&unk_1EC3CE4A0);
      v42 = sub_1C996FE74(&unk_1EC3CCE80);
      v44 = v55;
      v43 = v56;
      MEMORY[0x1CCA8FBC0](v56, v41, v42);
      (*(v54 + 8))(v38, v43);
      sub_1C996FE74(&unk_1EC3CE4A8);
      v45 = v58;
      v19 = sub_1C9A91F28();

      (*(v57 + 8))(v44, v45);
    }
  }

  return v19;
}

void *sub_1C9964664(void *a1, _OWORD *a2)
{
  v63 = a2;
  v3 = sub_1C97A2CEC(&qword_1EC3CE418, &qword_1C9ABC248);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - v4;
  v51 = sub_1C97A2CEC(&qword_1EC3CE420, &qword_1C9ABC250);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - v5;
  v54 = sub_1C97A2CEC(&qword_1EC3CE428, &qword_1C9ABC258);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v43 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3CE430, &qword_1C9ABC260);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v43 - v8;
  v58 = sub_1C97A2CEC(&qword_1EC3CE438, &qword_1C9ABC268);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v43 - v9;
  v59 = sub_1C97A2CEC(&qword_1EC3CE440, &qword_1C9ABC270);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v43 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE448, &qword_1C9ABC278);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  sub_1C97A2CEC(&qword_1EC3CE450, &qword_1C9ABC280);
  swift_allocObject();
  result = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0], v16);
  v47 = a1;
  v18 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    __break(1u);
  }

  else
  {
    v45 = v3;
    v19 = result;
    v20 = v63[1];
    v62[0] = *v63;
    v62[1] = v20;
    v21 = v63[3];
    v62[2] = v63[2];
    v62[3] = v21;
    v22 = v62;
    v23 = v60;
    sub_1C98B2B18(v18 / 160 + 1, 46);
    if (v23)
    {
    }

    else
    {
      v43 = v7;
      v24 = sub_1C98B4394();

      v44 = v19;
      sub_1C9966E74(v19, v24, v15);

      sub_1C996FE74(&unk_1EC3CE458);
      sub_1C9A92008();
      sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
      swift_allocObject();
      v60 = sub_1C98E3778();
      sub_1C97DA1E0(v15, &qword_1EC3CE448, &qword_1C9ABC278);
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v61[0] = MEMORY[0x1E69E7CC0];
      sub_1C97A2CEC(&unk_1EC3CB570, &qword_1C9ABC290);
      sub_1C996FE74(&qword_1EC3CE470);
      sub_1C9A92658();
      v25 = v58;
      sub_1C9A91CE8();
      (*(v56 + 8))(v10, v25);
      sub_1C996FE74(&unk_1EC3CE478);
      v26 = v59;
      v27 = sub_1C9A91F28();
      (*(v57 + 8))(v12, v26);
      v61[0] = sub_1C9967674(v63);
      v28 = v46;
      v57 = v27;
      sub_1C9953B34();
      sub_1C97A2CEC(&qword_1EC3CE480, &qword_1C9ABC298);
      v58 = MEMORY[0x1E695BED8];
      sub_1C996FE74(&unk_1EC3CE488);
      v59 = 0;
      sub_1C996FE74(&unk_1EC3CE490);
      v29 = v48;
      sub_1C9A91FE8();
      sub_1C97DA1E0(v28, &qword_1EC3CE418, &qword_1C9ABC248);

      v30 = swift_allocObject();
      v31 = v44;
      *(v30 + 16) = v60;
      *(v30 + 24) = v31;
      v32 = v47;
      memcpy((v30 + 32), v47, 0xC0uLL);
      v33 = v63;
      v34 = v63[1];
      *(v30 + 224) = *v63;
      *(v30 + 240) = v34;
      v35 = v33[3];
      *(v30 + 256) = v33[2];
      *(v30 + 272) = v35;
      *(v30 + 288) = v57;

      sub_1C98DDC6C(v32, v61);
      sub_1C98ACCA8();

      sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
      sub_1C996FE74(&unk_1EC3CE498);
      v37 = v50;
      v36 = v51;
      sub_1C9A92048();

      (*(v49 + 8))(v29, v36);
      v38 = sub_1C996FE74(&unk_1EC3CE4A0);
      v39 = sub_1C996FE74(&unk_1EC3CCE80);
      v41 = v53;
      v40 = v54;
      MEMORY[0x1CCA8FBC0](v54, v38, v39);
      (*(v52 + 8))(v37, v40);
      sub_1C996FE74(&unk_1EC3CE4A8);
      v42 = v43;
      v22 = sub_1C9A91F28();

      (*(v55 + 8))(v41, v42);
    }

    return v22;
  }

  return result;
}

void sub_1C9964FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v113 = v25;
  v112 = v26;
  v28 = v27;
  v117 = v29;
  sub_1C97AE9DC();
  v103 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v101 = v32;
  sub_1C97ABFB4(v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1C97A2CEC(&qword_1EC3CE418, &qword_1C9ABC248);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  sub_1C97ABFB4(v35);
  v36 = sub_1C97A2CEC(&qword_1EC3CE420, &qword_1C9ABC250);
  sub_1C97ABF78(v36, &v115);
  v104 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  sub_1C97ABFB4(v39);
  v40 = sub_1C97A2CEC(&qword_1EC3CE428, &qword_1C9ABC258);
  sub_1C97ABF78(v40, &v116);
  v106 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  sub_1C97ABFB4(v43);
  v44 = sub_1C97A2CEC(&qword_1EC3CE430, &qword_1C9ABC260);
  sub_1C97AE9C8();
  v107 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C97AC02C();
  sub_1C97ABFB4(v47);
  v48 = sub_1C97A2CEC(&qword_1EC3CE438, &qword_1C9ABC268);
  sub_1C97AE9C8();
  v108 = v49;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C97AEA4C();
  v51 = sub_1C97A2CEC(&qword_1EC3CE440, &qword_1C9ABC270);
  sub_1C97ABF78(v51, &a12);
  v109 = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C9945F6C();
  sub_1C97A2CEC(&qword_1EC3CE448, &qword_1C9ABC278);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3CE450, &qword_1C9ABC280);
  swift_allocObject();
  v56 = sub_1C996B564(20, 0, MEMORY[0x1E69E7CC0], v55);
  v105 = v28;
  v57 = *v28 - 512;
  if (__OFSUB__(*v28, 512))
  {
    __break(1u);
  }

  else
  {
    v99 = v33;
    v58 = v56;
    (*(v113 + 32))(v57 / 160 + 1, 46, v117);
    if (v20)
    {
    }

    else
    {
      v97[1] = v44;
      v59 = sub_1C98B4394();

      v111 = v58;
      sub_1C9966E74(v58, v59, v21);

      sub_1C99715C8();
      sub_1C996FE74(v60);
      sub_1C9A92008();
      sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
      sub_1C97AA878();
      swift_allocObject();
      v98 = sub_1C98E3778();
      sub_1C99715C8();
      sub_1C97DA1E0(v61, v62, v63);
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v114[0] = MEMORY[0x1E69E7CC0];
      v64 = sub_1C99460A8();
      sub_1C97A2CEC(v64, v65);
      sub_1C9971258();
      sub_1C996FE74(v66);
      sub_1C9A92658();
      sub_1C98BBB4C();
      sub_1C9A91CE8();
      v67 = sub_1C997107C();
      v68(v67, v48);
      sub_1C996FE74(&unk_1EC3CE478);
      v69 = v110;
      v70 = sub_1C9A91F28();
      sub_1C97DAA58();
      v71(v22, v69);
      sub_1C9967AB8();
      v114[0] = v72;
      v73 = v100;
      v74 = v98;
      v108 = v70;
      sub_1C9953B34();
      v75 = sub_1C98138D4();
      sub_1C97A2CEC(v75, v76);
      sub_1C97AE9EC();
      v110 = v77;
      sub_1C996FE74(v78);
      sub_1C996FE74(&unk_1EC3CE490);
      sub_1C9A91FE8();
      sub_1C97DA1E0(v73, &qword_1EC3CE418, &qword_1C9ABC248);

      v79 = v103;
      v80 = v102;
      (*(v103 + 16))(v102, v112, v117);
      v81 = (*(v79 + 80) + 240) & ~*(v79 + 80);
      v82 = (v101 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      v84 = v113;
      *(v83 + 2) = v117;
      *(v83 + 3) = v84;
      v85 = v111;
      *(v83 + 4) = v74;
      *(v83 + 5) = v85;
      v86 = v105;
      memcpy(v83 + 48, v105, 0xC0uLL);
      (*(v79 + 32))(&v83[v81], v80, v117);
      *&v83[v82] = v108;

      sub_1C98DDC6C(v86, v114);

      v87 = sub_1C98DE2C4();
      sub_1C97A2CEC(v87, v88);
      sub_1C996FE74(&unk_1EC3CE498);
      sub_1C9A92048();

      sub_1C97DAA58();
      v89 = sub_1C98B7774();
      v90(v89);
      sub_1C99710C8();
      sub_1C996FE74(v91);
      sub_1C996FE74(&unk_1EC3CCE80);
      v92 = sub_1C97AEB30();
      MEMORY[0x1CCA8FBC0](v92);
      sub_1C97DAA58();
      v93 = sub_1C99715B0();
      v94(v93);
      sub_1C996FE74(&unk_1EC3CE4A8);
      sub_1C9A91F28();

      sub_1C97DAA58();
      v95 = sub_1C97FB300();
      v96(v95);
    }

    sub_1C97BE538();
    sub_1C97AEB5C();
  }
}

void sub_1C99659B0(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CD610, &qword_1C9AB79A8);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B624();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CD618, &unk_1C9AB79B0);
      sub_1C996FE74(&unk_1EC3CD620);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7750, &unk_1C9AB79C0);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E69E4();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C9965C54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  sub_1C98DDC6C(__dst, v12);
  sub_1C9958C28(__dst, __src);
  memcpy(v15, __src, sizeof(v15));
  v6 = a2[3];
  v7 = a2[5];
  v8 = sub_1C97A5A8C(a2, v6);
  v12[3] = v6;
  v12[4] = v7;
  v9 = sub_1C981CDF0(v12);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = sub_1C9890CF8(v15, v12);
  sub_1C996FC24(__src);
  result = sub_1C97A592C(v12);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C9965D58@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9965DA0(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3CE578, &qword_1C9ABC2F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AB9F00;
  *(inited + 32) = 0x7475706E69;
  *(inited + 40) = 0xE500000000000000;
  sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9A9FB90;
  *(v3 + 32) = vdupq_n_s64(1uLL);
  *(v3 + 48) = 1024;
  *(v3 + 56) = a1;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000040;
  *(inited + 64) = 0x80000001C9ADA7B0;
  *(inited + 72) = &unk_1F492AC18;
  *(inited + 80) = 0xD000000000000042;
  *(inited + 88) = 0x80000001C9ADA9C0;
  sub_1C997147C();
  *(inited + 96) = v5;
  *(inited + 104) = v4;
  *(inited + 112) = v6;
  *(inited + 120) = &unk_1F492AC78;
  *(inited + 128) = v7;
  *(inited + 136) = 0x80000001C9ADA710;
  sub_1C997147C();
  *(inited + 144) = v9;
  *(inited + 152) = v8;
  *(inited + 160) = v10;
  *(inited + 168) = &unk_1F492ACD8;
  *(inited + 176) = v11;
  *(inited + 184) = 0x80000001C9ADA800;
  sub_1C997147C();
  *(inited + 192) = v13;
  *(inited + 200) = v12;
  *(inited + 208) = v14;
  *(inited + 216) = &unk_1F492AD38;
  *(inited + 224) = v15;
  *(inited + 232) = 0x80000001C9ADA930;
  sub_1C9971528();
  *(inited + 240) = v17;
  *(inited + 248) = v16 | 4;
  *(inited + 256) = v18;
  *(inited + 264) = &unk_1F492AD98;
  *(inited + 272) = v16 | 6;
  *(inited + 280) = 0x80000001C9ADAA60;
  sub_1C9971528();
  *(inited + 304) = v19;
  *(inited + 312) = &unk_1F492AE00;
  sub_1C9971528();
  *(inited + 320) = v20 - 8;
  *(inited + 328) = v21;
  *(inited + 288) = &unk_1F492ADC0;
  *(inited + 296) = v22;
  *(inited + 336) = &unk_1F492AE28;
  *(inited + 344) = v22;
  *(inited + 352) = 0x80000001C9ADA850;
  *(inited + 360) = &unk_1F492AE58;
  sub_1C9971528();
  *(inited + 368) = v23;
  *(inited + 376) = v24;
  *(inited + 384) = &unk_1F492AE80;
  sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
  return sub_1C9A92348();
}

void *sub_1C9966024(uint64_t a1)
{
  v1 = sub_1C9965DA0(a1);
  sub_1C97A2CEC(&unk_1EC3CE560, &qword_1C9ABC2F0);
  v2 = sub_1C9A937E8();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = (v3 + 63) >> 6;
  if ((v4 & *(v1 + 64)) != 0)
  {
LABEL_8:

    v8 = e5rt_tensor_desc_dtype_create();
    if (v8)
    {
      v9 = v8;

      sub_1C9885EF4();
      sub_1C97AA928();
      swift_allocError();
      *v10 = v9;
      *(v10 + 4) = 0;
    }

    else
    {

      sub_1C9886C04();
      sub_1C97AA928();
      swift_allocError();
      *v11 = 0;
    }

    swift_willThrow();
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        __break(1u);
      }

      if (v7 >= v5)
      {
        break;
      }

      ++v6;
      if (*(v1 + 64 + 8 * v7))
      {
        goto LABEL_8;
      }
    }
  }

  return v2;
}

void *sub_1C9966460(void *result)
{
  if (!__OFSUB__(result, 512))
  {
    return sub_1C9966024((result - 64) / 5120 + 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9966490(void *a1)
{
  v76[24] = *MEMORY[0x1E69E9840];
  v3 = sub_1C9A91558();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v9 = *a1 - 512;
  if (__OFSUB__(*a1, 512))
  {
    goto LABEL_40;
  }

  v69 = v1;
  v66 = v8;
  v65 = a1;
  v67 = v7;
  v70 = &v64 - v6;
  v68 = v5;
  v10 = sub_1C9965DA0(v9 / 5120 + 1);
  inited = sub_1C97A2CEC(&unk_1EC3CE560, &qword_1C9ABC2F0);
  v12 = sub_1C9A937E8();
  v13 = 0;
  v73 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v10 + 64;
  v17 = v15 & *(v10 + 64);
  v18 = (v14 + 63) >> 6;
  v71 = v12 + 64;
  v72 = v12;
  if (v17)
  {
    goto LABEL_5;
  }

  while (2)
  {
    v20 = v13;
    do
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_35:
        v61 = v75;
        inited = v75;
        sub_1C9880DE8(v16);

        if (v13)
        {
        }

        else
        {
          type metadata accessor for AccessibilitySoundRecognition.CustomModel(v62);
          inited = swift_allocObject();
          v63 = v65;
          sub_1C98DDC6C(v65, v76);
          sub_1C99615D0(v61, v16, v63);
        }

        (v17)(v70, v18);
        return inited;
      }

      if (v13 >= v18)
      {

        v43 = v69;
        sub_1C98C73E0(38, v70);
        if (v43)
        {

          return inited;
        }

        v44 = sub_1C9880658();
        type metadata accessor for E5RTExecutionStream(0);
        swift_allocObject();
        v75 = sub_1C9880798(v44);
        type metadata accessor for E5RTExecutionStreamOperation(v45);
        v46 = v66;
        sub_1C9A913F8();
        v47 = sub_1C9A91508();
        v49 = v48;
        v17 = *(v67 + 8);
        v50 = v46;
        v18 = v68;
        (v17)(v50, v68);
        sub_1C98817E8(1852399981, 0xE400000000000000, v47, v49, 1852399981, 0xE400000000000000, 1, 1);
        v16 = v59;

        sub_1C9881684();
        sub_1C9882AF4(v16, 1);
        v13 = 0;
        goto LABEL_35;
      }

      v21 = *(v16 + 8 * v13);
      ++v20;
    }

    while (!v21);
    v19 = __clz(__rbit64(v21));
    v17 = (v21 - 1) & v21;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = (*(v73 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(*(v73 + 56) + 8 * v22);
    v76[0] = 0;

    v75 = v26;

    v27 = e5rt_tensor_desc_dtype_create();
    if (v27)
    {
      inited = v27;
      sub_1C9885EF4();
      swift_allocError();
      *v51 = inited;
      *(v51 + 4) = 0;
LABEL_25:
      swift_willThrow();

      return inited;
    }

    v74 = v24;
    v29 = v76[0];
    if (!v76[0])
    {
      sub_1C9886C04();
      swift_allocError();
      *v52 = 0;
      goto LABEL_25;
    }

    type metadata accessor for E5RTTensorDescriptorDataType(v28);
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    v76[0] = 0;
    v30 = e5rt_tensor_desc_create();
    if (v30)
    {
      v53 = v30;
      sub_1C9885EF4();
      swift_allocError();
      *v54 = v53;
      *(v54 + 4) = 0;
LABEL_28:
      swift_willThrow();

      swift_setDeallocating();
      sub_1C9881DCC();
      goto LABEL_32;
    }

    v31 = v76[0];
    if (!v76[0])
    {
      sub_1C9886C04();
      swift_allocError();
      *v55 = 0;
      goto LABEL_28;
    }

    swift_setDeallocating();
    sub_1C9881DCC();
    swift_deallocClassInstance();
    type metadata accessor for E5RTTensorDescriptor(v32);
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    v76[0] = 0;
    v33 = e5rt_operand_desc_retain_from_tensor_desc();
    if (v33)
    {
      v56 = v33;
      sub_1C9885EF4();
      swift_allocError();
      *v57 = v56;
      *(v57 + 4) = 0;
    }

    else
    {
      v35 = v76[0];
      if (v76[0])
      {
        type metadata accessor for E5RTOperandDescriptor(v34);
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        swift_setDeallocating();
        sub_1C9881C7C();
        swift_deallocClassInstance();

        *(v71 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v37 = v72;
        v38 = (*(v72 + 48) + 16 * v22);
        v39 = v74;
        *v38 = v25;
        v38[1] = v39;
        *(*(v37 + 56) + 8 * v22) = v36;
        v40 = *(v37 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (!v41)
        {
          *(v37 + 16) = v42;
          if (!v17)
          {
            continue;
          }

LABEL_5:
          v19 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          goto LABEL_11;
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }

      sub_1C9886C04();
      swift_allocError();
      *v58 = 0;
    }

    break;
  }

  swift_willThrow();

  swift_setDeallocating();
  sub_1C9881C7C();
LABEL_32:
  swift_deallocClassInstance();
  return inited;
}

void sub_1C9966CB0()
{
  sub_1C97AEB94();
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  sub_1C9966460(*v3);
  if (!v0)
  {
    sub_1C99B8818();
    sub_1C987EBFC();

    type metadata accessor for AccessibilitySoundRecognition.CustomModel(v6);
    swift_allocObject();
    sub_1C98DDC6C(v3, &v10);
    v7 = sub_1C98DE2C4();
    sub_1C99615D0(v7, v8, v3);
    sub_1C97DAA58();
    v9(v1, AssociatedTypeWitness);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9966E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - v6;
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C97A2CEC(&qword_1EC3CE5F8, &qword_1C9ABC340);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v27 = a2;
  v22 = a1;

  sub_1C97A2CEC(&qword_1EC3CB198, &qword_1C9AAEC20);
  sub_1C996FE74(&unk_1EC3CE530);
  sub_1C9A91F68();

  (*(v9 + 104))(v11, *MEMORY[0x1E695BD20], v8);
  v16 = v25;
  (*(v5 + 104))(v7, *MEMORY[0x1E695BD40], v25);
  sub_1C996FE74(&unk_1EC3CE600);
  v17 = v26;
  v18 = v23;
  sub_1C9A92018();
  (*(v5 + 8))(v7, v16);
  (*(v9 + 8))(v11, v8);
  (*(v24 + 8))(v15, v18);
  v19 = v17 + *(sub_1C97A2CEC(&qword_1EC3CE448, &qword_1C9ABC278) + 36);
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  v20 = v22;
  *(v19 + 80) = sub_1C996FEB8;
  *(v19 + 88) = v20;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 144) = sub_1C996FEC0;
  *(v19 + 152) = v20;
  return swift_retain_n();
}

char *sub_1C9967230(uint64_t a1)
{
  v31 = a1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE5A0, &qword_1C9ABC318);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CE5A8, &qword_1C9ABC320);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = sub_1C9A91558();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98C73E0(3, v12);
  if (!v1)
  {
    v20 = v4;
    v21 = v8;
    v23 = v10;
    v24 = v9;
    v22 = v6;
    v14 = sub_1C99569EC(v12, 96, 48, v31);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C979AF98;
    *(v15 + 24) = 0;
    *(v15 + 32) = xmmword_1C9AB9F10;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v26 = v14;
    v27 = sub_1C9970F6C;
    v28 = v16;
    v29 = sub_1C9970F44;
    v30 = v15;

    v31 = sub_1C97A2CEC(&qword_1EC3CE5B0, &qword_1C9ABC328);
    sub_1C996FE74(&unk_1EC3CE5B8);
    v17 = v20;
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3CE5C0);
    sub_1C996FE10();
    v18 = v21;
    sub_1C9A920D8();

    (*(v25 + 8))(v17, v2);
    sub_1C996FE74(&unk_1EC3CE5D0);
    v8 = sub_1C9A91F28();
    (*(v22 + 8))(v18, v5);
    (*(v23 + 8))(v12, v24);
  }

  return v8;
}

char *sub_1C9967674(_OWORD *a1)
{
  v31 = a1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE5A0, &qword_1C9ABC318);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CE5A8, &qword_1C9ABC320);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = sub_1C9A91558();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98C73E0(3, v12);
  if (!v1)
  {
    v20 = v4;
    v21 = v8;
    v23 = v10;
    v24 = v9;
    v22 = v6;
    v14 = sub_1C9957210(v12, 96, 48, v31);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C979AF98;
    *(v15 + 24) = 0;
    *(v15 + 32) = xmmword_1C9AB9F10;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v26 = v14;
    v27 = sub_1C9970F6C;
    v28 = v16;
    v29 = sub_1C9970F44;
    v30 = v15;

    v31 = sub_1C97A2CEC(&qword_1EC3CE5B0, &qword_1C9ABC328);
    sub_1C996FE74(&unk_1EC3CE5B8);
    v17 = v20;
    sub_1C9A91F68();

    sub_1C996FE74(&unk_1EC3CE5C0);
    sub_1C996FE10();
    v18 = v21;
    sub_1C9A920D8();

    (*(v25 + 8))(v17, v2);
    sub_1C996FE74(&unk_1EC3CE5D0);
    v8 = sub_1C9A91F28();
    (*(v22 + 8))(v18, v5);
    (*(v23 + 8))(v12, v24);
  }

  return v8;
}

void sub_1C9967AB8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CE5A0, &qword_1C9ABC318);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v25 = sub_1C97A2CEC(&qword_1EC3CE5A8, &qword_1C9ABC320);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v7 = *(*(v2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  sub_1C9971398();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  (*(v7 + 16))(v4, v7);
  swift_getAssociatedConformanceWitness();
  sub_1C99B8818();
  v11 = sub_1C9871794();
  v12(v11);
  if (!v0)
  {
    sub_1C993EA08();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C979AF98;
    *(v13 + 24) = 0;
    *(v13 + 32) = xmmword_1C9AB9F10;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;

    v15 = sub_1C9813668();
    sub_1C97A2CEC(v15, v16);
    sub_1C9971258();
    sub_1C996FE74(v17);
    sub_1C9A91F68();

    sub_1C9971134(&unk_1EC3CE5C0);
    sub_1C996FE10();
    sub_1C97AEB30();
    sub_1C9A920D8();

    v18 = sub_1C99715B0();
    v19(v18);
    v20 = sub_1C997133C(&unk_1EC3CE5D0);
    sub_1C9813A90(v20, v20);
    v21 = sub_1C9945F10();
    v22(v21, v25);
    v23 = sub_1C997121C();
    v24(v23, AssociatedTypeWitness);
  }

  sub_1C9971380();
  sub_1C97AEB5C();
}

uint64_t sub_1C9967FAC(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v34 = a4;
  v31 = a3;
  v10 = sub_1C97A2CEC(&qword_1EC3CE4B0, &qword_1C9ABC2A0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE4B8, &qword_1C9ABC2A8);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE4C0, &qword_1C9ABC2B0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  if (a1)
  {
  }

  else
  {
    v35 = a2;
    v29 = v17;
    v30 = v18;
    sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
    sub_1C996FE74(&unk_1EC3CE4C8);
    v28 = sub_1C9A91F28();
    v35 = v28;
    v36 = sub_1C996FABC;
    v37 = 0;
    v38 = sub_1C996FCDC;
    v26 = v13;
    v39 = v31;
    v40 = 1;

    sub_1C97A2CEC(&qword_1EC3CE4D0, &qword_1C9ABC2B8);
    sub_1C97A2CEC(&qword_1EC3CE4D8, &qword_1C9ABC2C0);
    v27 = v6;
    sub_1C996FE74(&unk_1EC3CE4E0);
    sub_1C9A91F38();

    sub_1C996FE74(&unk_1EC3CE4E8);
    sub_1C9A91F98();
    (*(v32 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE4F0);
    v21 = v26;
    sub_1C9A92048();
    (*(v33 + 8))(v15, v21);
    sub_1C996FE74(&unk_1EC3CE4F8);
    v22 = v29;
    v23 = sub_1C9A91F28();
    (*(v30 + 8))(v20, v22);
    a6 = sub_1C9968E10(v23, v34);
  }

  return a6;
}

uint64_t sub_1C9968470(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v34 = a4;
  v31 = a3;
  v10 = sub_1C97A2CEC(&qword_1EC3CE4B0, &qword_1C9ABC2A0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CE4B8, &qword_1C9ABC2A8);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CE4C0, &qword_1C9ABC2B0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  if (a1)
  {
  }

  else
  {
    v35 = a2;
    v29 = v17;
    v30 = v18;
    sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
    sub_1C996FE74(&unk_1EC3CE4C8);
    v28 = sub_1C9A91F28();
    v35 = v28;
    v36 = sub_1C996FABC;
    v37 = 0;
    v38 = sub_1C9970F34;
    v26 = v13;
    v39 = v31;
    v40 = 1;

    sub_1C97A2CEC(&qword_1EC3CE4D0, &qword_1C9ABC2B8);
    sub_1C97A2CEC(&qword_1EC3CE4D8, &qword_1C9ABC2C0);
    v27 = v6;
    sub_1C996FE74(&unk_1EC3CE4E0);
    sub_1C9A91F38();

    sub_1C996FE74(&unk_1EC3CE4E8);
    sub_1C9A91F98();
    (*(v32 + 8))(v12, v10);
    sub_1C996FE74(&unk_1EC3CE4F0);
    v21 = v26;
    sub_1C9A92048();
    (*(v33 + 8))(v15, v21);
    sub_1C996FE74(&unk_1EC3CE4F8);
    v22 = v29;
    v23 = sub_1C9A91F28();
    (*(v30 + 8))(v20, v22);
    a6 = sub_1C9969570(v23, v34);
  }

  return a6;
}

uint64_t sub_1C9968934@<X0>(_BYTE *a1@<X0>, uint64_t a5@<X5>, uint64_t *a8@<X8>)
{
  v9 = v8;
  if (*a1)
  {
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CE460, &qword_1C9ABC288);
    sub_1C996FE74(&unk_1EC3CE4C8);
    sub_1C9A91F28();
    sub_1C9968A4C();
    a5 = v13;

    if (v9)
    {
      return result;
    }
  }

  *a8 = a5;
  return result;
}

void sub_1C9968A4C()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CE4B0, &qword_1C9ABC2A0);
  sub_1C97AE9C8();
  v14 = v0;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98021C4();
  v16 = sub_1C97A2CEC(&qword_1EC3CE4B8, &qword_1C9ABC2A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98550DC();
  v15 = sub_1C97A2CEC(&qword_1EC3CE4C0, &qword_1C9ABC2B0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();

  v4 = sub_1C98B7774();
  sub_1C97A2CEC(v4, v5);
  sub_1C97A2CEC(&qword_1EC3CE4D8, &qword_1C9ABC2C0);
  sub_1C9971258();
  sub_1C996FE74(v6);
  sub_1C9A91F38();

  sub_1C996FE74(&unk_1EC3CE4E8);
  sub_1C9A91F98();
  v7 = sub_1C997121C();
  v8(v7, v14);
  sub_1C996FE74(&unk_1EC3CE4F0);
  sub_1C9A92048();
  v9 = sub_1C9945F10();
  v10(v9, v16);
  sub_1C99710C8();
  sub_1C996FE74(v11);
  sub_1C9A91F28();
  v12 = sub_1C9899528();
  v13(v12, v15);
  sub_1C9969CD0();

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9968E10(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v33 - v6);
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C97A2CEC(&qword_1EC3CE500, &qword_1C9ABC2C8);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = v33 - v12;
  v42 = sub_1C97A2CEC(&qword_1EC3CE508, &qword_1C9ABC2D0);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v36 = v33 - v13;
  v45 = sub_1C97A2CEC(&qword_1EC3CE510, &qword_1C9ABC2D8);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v37 = v33 - v14;
  v15 = sub_1C97A2CEC(&qword_1EC3CE518, &qword_1C9ABC2E0);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = v33 - v16;
  v17 = sub_1C97A2CEC(&unk_1EC3CE520, &qword_1C9ABC2E8);
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v33 - v18;
  v19 = sub_1C9966490(a2);
  if (!v2)
  {
    v50 = v35;
    v20 = *MEMORY[0x1E695BD20];
    v21 = *(v9 + 104);
    v33[1] = v19;
    v35 = 0;
    v21(v11, v20, v8);
    *v7 = sub_1C996A4D0;
    v7[1] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x1E695BD48], v4);
    sub_1C97A2CEC(&qword_1EC3CB198, &qword_1C9AAEC20);
    v34 = v17;
    sub_1C996FE74(&unk_1EC3CE530);
    v22 = v38;
    sub_1C9A92018();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    sub_1C996FE74(&unk_1EC3CE538);

    v23 = v36;
    v24 = v46;
    sub_1C9A92048();

    (*(v43 + 8))(v22, v24);
    v25 = v37;
    v26 = v42;
    sub_1C9A91CA8();
    (*(v39 + 8))(v23, v26);
    sub_1C996FE74(&unk_1EC3CE540);
    v27 = v40;
    v28 = v45;
    sub_1C9A920D8();
    (*(v41 + 8))(v25, v28);
    sub_1C996FE74(&unk_1EC3CE548);
    v29 = v44;
    v30 = v48;
    sub_1C9A91F68();
    (*(v47 + 8))(v27, v30);
    sub_1C996FE74(&unk_1EC3CE550);
    v31 = v34;
    v4 = sub_1C9A91F28();

    (*(v49 + 8))(v29, v31);
  }

  return v4;
}

uint64_t sub_1C9969570(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v33 - v6);
  v8 = sub_1C9A91C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C97A2CEC(&qword_1EC3CE500, &qword_1C9ABC2C8);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = v33 - v12;
  v42 = sub_1C97A2CEC(&qword_1EC3CE508, &qword_1C9ABC2D0);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v36 = v33 - v13;
  v45 = sub_1C97A2CEC(&qword_1EC3CE510, &qword_1C9ABC2D8);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v37 = v33 - v14;
  v15 = sub_1C97A2CEC(&qword_1EC3CE518, &qword_1C9ABC2E0);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = v33 - v16;
  v17 = sub_1C97A2CEC(&unk_1EC3CE520, &qword_1C9ABC2E8);
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v33 - v18;
  v19 = sub_1C9966490(a2);
  if (!v2)
  {
    v50 = v35;
    v20 = *MEMORY[0x1E695BD20];
    v21 = *(v9 + 104);
    v33[1] = v19;
    v35 = 0;
    v21(v11, v20, v8);
    *v7 = sub_1C996A4D0;
    v7[1] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x1E695BD48], v4);
    sub_1C97A2CEC(&qword_1EC3CB198, &qword_1C9AAEC20);
    v34 = v17;
    sub_1C996FE74(&unk_1EC3CE530);
    v22 = v38;
    sub_1C9A92018();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    sub_1C996FE74(&unk_1EC3CE538);

    v23 = v36;
    v24 = v46;
    sub_1C9A92048();

    (*(v43 + 8))(v22, v24);
    v25 = v37;
    v26 = v42;
    sub_1C9A91CA8();
    (*(v39 + 8))(v23, v26);
    sub_1C996FE74(&unk_1EC3CE540);
    v27 = v40;
    v28 = v45;
    sub_1C9A920D8();
    (*(v41 + 8))(v25, v28);
    sub_1C996FE74(&unk_1EC3CE548);
    v29 = v44;
    v30 = v48;
    sub_1C9A91F68();
    (*(v47 + 8))(v27, v30);
    sub_1C996FE74(&unk_1EC3CE550);
    v31 = v34;
    v4 = sub_1C9A91F28();

    (*(v49 + 8))(v29, v31);
  }

  return v4;
}

void sub_1C9969CD0()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v44 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v42 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9945F4C();
  v40 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v39 = v12 - v11;
  v43 = sub_1C97A2CEC(&qword_1EC3CE500, &qword_1C9ABC2C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v41 = sub_1C97A2CEC(&qword_1EC3CE508, &qword_1C9ABC2D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CE510, &qword_1C9ABC2D8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CE518, &qword_1C9ABC2E0);
  sub_1C97AE9C8();
  v45 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97A2CEC(&unk_1EC3CE520, &qword_1C9ABC2E8);
  sub_1C97AE9C8();
  v46 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v20 = *(*(v3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v23 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97E86E4();
  (*(v20 + 16))(v5, v20);
  sub_1C9871794();
  swift_getAssociatedConformanceWitness();
  sub_1C9871794();
  swift_getAssociatedConformanceWitness();
  sub_1C9966CB0();
  (*(v23 + 8))(v3, AssociatedTypeWitness);
  if (!v1)
  {
    (*(v9 + 104))(v39, *MEMORY[0x1E695BD20], v40);
    *v0 = sub_1C996A4D0;
    v0[1] = 0;
    (*(v42 + 104))(v0, *MEMORY[0x1E695BD48], v44);
    v25 = sub_1C9813668();
    sub_1C97A2CEC(v25, v26);
    sub_1C97AE9EC();
    sub_1C99714C4();
    sub_1C996FE74(v27);
    sub_1C9A92018();
    (*(v42 + 8))(v0, v44);
    (*(v9 + 8))(v39, v40);
    sub_1C99712C0(&unk_1EC3CE538);

    sub_1C9A92048();

    v28 = sub_1C9945F10();
    v29(v28, v43);
    sub_1C9A91CA8();
    v30 = sub_1C997121C();
    v31(v30, v41);
    sub_1C99710C8();
    sub_1C996FE74(v32);
    sub_1C9A920D8();
    v33 = sub_1C9971360();
    v34(v33);
    sub_1C997133C(&unk_1EC3CE548);
    sub_1C9A91F68();
    v35 = sub_1C9945F10();
    v36(v35, v45);
    sub_1C9971134(&unk_1EC3CE550);
    sub_1C9A91F28();

    v37 = sub_1C9899528();
    v38(v37, v46);
  }

  sub_1C9971534();
  sub_1C97AEB5C();
}

uint64_t sub_1C996A45C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = a1[1];
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    sub_1C986EF8C();
    swift_allocError();
    *v6 = 5;
    return swift_willThrow();
  }
}

uint64_t sub_1C996A4D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_1C986EF8C();
  sub_1C97AA928();
  result = swift_allocError();
  *a2 = result;
  *v5 = a1;
  return result;
}

void sub_1C996A51C(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C9961994(*a1, a1[1]);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C996A62C()
{
  sub_1C97AA95C();
  v1 = v0[64];
  v0[59] = &unk_1F492E330;
  v0[60] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 56, &unk_1F492E330);
  memcpy(v1, v0 + 2, 0xD1uLL);
  sub_1C97BE374();
  swift_storeEnumTagMultiPayload();
  sub_1C986EFE8((v0 + 2), (v0 + 29));
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[65] = v2;
  *v2 = v3;
  v2[1] = sub_1C996A70C;
  v4 = v0[64];
  v5 = v0[62];

  return v7(v5, v4);
}

uint64_t sub_1C996A70C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 528) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C996A808()
{
  sub_1C97AA95C();
  sub_1C9971298();
  sub_1C9971240();
  sub_1C996D8BC();
  sub_1C97A592C((v0 + 448));

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C996A898()
{
  sub_1C97AA884();
  sub_1C9971298();
  sub_1C97A592C((v0 + 448));

  sub_1C97DA91C();

  return v1();
}

uint64_t AccessibilitySoundRecognition.Session.detectionResults.getter@<X0>(void (**a1)()@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  v3 = v2 - 8;
  v24[1] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v26 = sub_1C97A2CEC(&unk_1EC3CE040, &unk_1C9ABA0E0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9945F6C();
  v25 = sub_1C97A2CEC(&qword_1EC3CC308, &qword_1C9AB2688);
  sub_1C97AE9C8();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v24[0] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98BBB18();
  v28 = *(v1 + *(v3 + 28));
  v11 = sub_1C988EB2C();
  v13 = sub_1C97A2CEC(v11, v12);
  sub_1C97AE9EC();
  v15 = sub_1C996FE74(v14);
  MEMORY[0x1CCA8FD00](v13, v15);
  sub_1C996D918();
  swift_allocObject();
  sub_1C996D8BC();
  sub_1C996FE74(&unk_1EC3CE060);
  sub_1C9A93738();
  v16 = *(v6 + 32);
  v17 = v24[0];
  v18 = sub_1C9971360();
  v19 = v25;
  v16(v18);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  result = (v16)(v21 + v20, v17, v19);
  v23 = v27;
  *v27 = sub_1C996DA4C;
  v23[1] = v21;
  return result;
}

uint64_t sub_1C996AC2C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v5 = sub_1C9A91AA8();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for AccessibilitySoundRecognition.Session(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C996AD24, 0, 0);
}

uint64_t sub_1C996AD24()
{
  v22 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C9A91AD8();
  sub_1C97BFF6C(v1, qword_1EC3D3120);
  sub_1C9971240();
  sub_1C996D918();
  sub_1C9A91A98();
  v2 = sub_1C9A91AB8();
  v3 = sub_1C9A93088();
  if (sub_1C9A93238())
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 40);
    v20 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v4;
    *(v7 + 8) = 2080;
    sub_1C9A91748();
    sub_1C9970F78();
    sub_1C996D568(v9);
    v10 = sub_1C9A93A98();
    v12 = v11;
    sub_1C9971270();
    v13 = sub_1C9849140(v10, v12, &v21);

    *(v7 + 10) = v13;
    v14 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v2, v3, v14, "ClientReadResult_AccessibilitySoundRecognition", "{active:%{BOOL}d,workloadID:%s}", v7, 0x12u);
    sub_1C97A592C(v8);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    (*(v6 + 8))(v5, v20);
  }

  else
  {
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);

    (*(v17 + 8))(v15, v16);
    sub_1C9971270();
  }

  **(v0 + 16) = *(v0 + 64);

  sub_1C97DA91C();

  return v18();
}

uint64_t sub_1C996AF90(uint64_t a1)
{
  sub_1C99DC5A4();
  v3 = sub_1C98EE70C();
  v4 = *(v1 + *(type metadata accessor for AccessibilitySoundRecognition.Session(v3) + 20));
  v10 = sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
  v11 = sub_1C9970068();
  v9[0] = v4;

  sub_1C99DC674(v9, v5);
  if (!v2)
  {
    sub_1C97A592C(v9);
    v10 = sub_1C9A91748();
    v11 = &off_1F494ACE0;
    sub_1C981CDF0(v9);
    sub_1C97AEB3C();
    sub_1C99715C8();
    v7 = v6();
    sub_1C99DC674(v9, v7);
  }

  return sub_1C97A592C(v9);
}

uint64_t sub_1C996B090()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91748();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C996B188;

  return sub_1C988FC80();
}

uint64_t sub_1C996B188(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = a1;
  v5[9] = v1;

  if (v1)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = sub_1C97DA8BC();
    v5[10] = v12;
    *v12 = v7;
    v12[1] = sub_1C996B300;

    return v14();
  }
}

uint64_t sub_1C996B300()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C996B404()
{
  sub_1C97AA95C();
  v1 = v0[11];
  v2 = v0[2];
  *(v2 + *(type metadata accessor for AccessibilitySoundRecognition.Session(0) + 20)) = v1;
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_1C98F8244;
  v5 = v0[6];

  return v7(v5);
}

uint64_t sub_1C996B4CC()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;

  return sub_1C996B090();
}

void *sub_1C996B564(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for SafeLock(a4);
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  v4[2] = v8;
  v4[3] = a1;
  v4[4] = a3;
  v4[5] = a2;
  return v4;
}

void sub_1C996B5D4(uint64_t a1)
{
  v3 = *(v1[2] + 16);
  os_unfair_lock_lock(v3);
  sub_1C996B650(v1, a1);

  os_unfair_lock_unlock(v3);
}

void sub_1C996B650(void *a1, uint64_t a2)
{

  v7 = a1 + 4;
  sub_1C98CFC90(a2);
  v8 = a1[3];
  v9 = *(a1[4] + 16);
  if (v8 >= v9)
  {
    goto LABEL_14;
  }

  if (__OFSUB__(v9, v8))
  {
    goto LABEL_17;
  }

  if (v9 < v9 - v8)
  {
    goto LABEL_18;
  }

  v7 = sub_1C97AE9C4();
  v2 = v10;
  v3 = v11;
  v4 = v12;
  if (v12)
  {
    sub_1C9A93B88();
    swift_unknownObjectRetain_n();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(v14 + 16);

    if (__OFSUB__(v4 >> 1, v3))
    {
      goto LABEL_19;
    }

    if (v15 != (v4 >> 1) - v3)
    {
      goto LABEL_20;
    }

    v2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v2)
    {
      goto LABEL_13;
    }

    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  while (1)
  {
    sub_1C9A0EFC0(v7, v2, v3, v4);
    v2 = v13;
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    a1[4] = v2;

LABEL_14:
    v16 = *(a2 + 16);
    v17 = a1[5];
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (!v18)
    {
      break;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
  }

  a1[5] = v19;
}

uint64_t sub_1C996B7B8(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v5);
  v6 = sub_1C996B850(v2, a1, a2);
  os_unfair_lock_unlock(v5);
  return v6;
}

uint64_t sub_1C996B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = *(a1 + 40) - v9;
  v11 = a2 - v10;
  v12 = a3 + a2 - v10;
  v13 = (a2 - v10) & ~((a2 - v10) >> 63);
  if (v9 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v8 + 16);
  }

  v15 = v12 & ~(v12 >> 63);
  if (v9 >= v15)
  {
    v16 = v12 & ~(v12 >> 63);
  }

  else
  {
    v16 = *(v8 + 16);
  }

  v17 = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v12, v16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < v14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = sub_1C97AE9C4();
  v4 = v18;
  v5 = v19;
  v6 = v20;
  if ((v20 & 1) == 0)
  {
LABEL_11:
    sub_1C9A0EFC0(v3, v4, v5, v6);
LABEL_17:
    swift_unknownObjectRelease();
    return v17;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v6 >> 1, v5))
  {
    goto LABEL_22;
  }

  if (v22 != (v6 >> 1) - v5)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    goto LABEL_17;
  }

  return v17;
}

void *sub_1C996B9B4()
{
  v0 = sub_1C996BA30();
  v2 = *(v1 + 16);

  v4 = __OFSUB__(v0, v2);
  v5 = v0 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CE580, &qword_1C9ABC300);
    swift_allocObject();

    return sub_1C996BAD4(v6, v5, v7);
  }

  return result;
}

uint64_t sub_1C996BA30()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1C996BA80()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(v1);
}

void *sub_1C996BAD4(uint64_t a1, uint64_t a2, double a3)
{
  v3[3] = a1;
  v3[4] = a2;
  type metadata accessor for SafeLock(a3);
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  v3[2] = v4;
  return v3;
}

uint64_t sub_1C996BB28(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v4);
  v5 = sub_1C996B7B8(*(v1 + 32), a1);
  *(v2 + 32) += a1;
  os_unfair_lock_unlock(v4);
  return v5;
}

uint64_t sub_1C996BBA8()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 32);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1C996BBE4()
{
  v0 = sub_1C996BA30();

  v1 = sub_1C996BBA8();
  v2 = __OFSUB__(v0, v1);
  result = v0 - v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C996BC34(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3C7808, &qword_1C9ACE010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1C996B5D4(inited);
  swift_setDeallocating();
  return sub_1C985DA4C();
}

void sub_1C996BCE8(uint64_t a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CE588, &qword_1C9ABC308);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v6 = sub_1C996BBE4();
  v7 = sub_1C996BB28(v6);
  if (v7 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v34 = v3;
  v35 = a1;
  v13 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7D40(0, v7, 0);
    v14 = v38;
    v15 = *(v38 + 16);
    v16 = 16 * v15 + 32;
    do
    {
      v38 = v14;
      v17 = *(v14 + 24);
      v18 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        sub_1C97B7D40((v17 > 1), v15 + 1, 1);
        v14 = v38;
      }

      *(v14 + 16) = v18;
      v19 = (v14 + v16);
      *v19 = 0;
      v19[1] = 0;
      v16 += 16;
      v15 = v18;
      --v10;
    }

    while (v10);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v11 + 16);
  if (v20)
  {
    v33 = v2;
    v38 = v13;
    sub_1C97B7D40(0, v20, 0);
    v21 = 32;
    v22 = v38;
    do
    {
      v36 = *(v11 + v21);
      v38 = v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1C97B7D40((v23 > 1), v24 + 1, 1);
        v22 = v38;
      }

      *(v22 + 16) = v24 + 1;
      *(v22 + 16 * v24 + 32) = v36;
      v21 += 16;
      --v20;
    }

    while (v20);

    v2 = v33;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v38 = v14;
  sub_1C98CFD3C(v22);
  if (v12 < 0)
  {
    goto LABEL_24;
  }

  v25 = v38;
  v26 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7D40(0, v12, 0);
    v26 = v38;
    v27 = *(v38 + 16);
    v28 = 16 * v27 + 32;
    do
    {
      v38 = v26;
      v29 = *(v26 + 24);
      v30 = v27 + 1;
      if (v27 >= v29 >> 1)
      {
        sub_1C97B7D40((v29 > 1), v27 + 1, 1);
        v26 = v38;
      }

      *(v26 + 16) = v30;
      v31 = (v26 + v28);
      *v31 = 0;
      v31[1] = 0;
      v28 += 16;
      v27 = v30;
      --v12;
    }

    while (v12);
  }

  v37 = v25;
  sub_1C98CFD3C(v26);
  sub_1C98CFD3C(&unk_1F492AEB0);
  v38 = v37;
  sub_1C97A2CEC(&qword_1EC3CE590, &qword_1C9ABC310);
  sub_1C996FE74(&unk_1EC3CE598);
  sub_1C9A92658();

  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  (*(v34 + 8))(v5, v2);
}

unint64_t sub_1C996C0E4()
{
  result = qword_1EC3CDE20;
  if (!qword_1EC3CDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE20);
  }

  return result;
}

unint64_t sub_1C996C138()
{
  result = qword_1EC3CDE28;
  if (!qword_1EC3CDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE28);
  }

  return result;
}

unint64_t sub_1C996C18C()
{
  result = qword_1EC3CDE30;
  if (!qword_1EC3CDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE30);
  }

  return result;
}

unint64_t sub_1C996C1E0()
{
  result = qword_1EC3CDE38;
  if (!qword_1EC3CDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE38);
  }

  return result;
}

unint64_t sub_1C996C234()
{
  result = qword_1EC3CDE40;
  if (!qword_1EC3CDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE40);
  }

  return result;
}

unint64_t sub_1C996C288()
{
  result = qword_1EC3CDE48;
  if (!qword_1EC3CDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE48);
  }

  return result;
}

unint64_t sub_1C996C2DC()
{
  result = qword_1EC3CDE50;
  if (!qword_1EC3CDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE50);
  }

  return result;
}

unint64_t sub_1C996C330()
{
  result = qword_1EC3CDE58;
  if (!qword_1EC3CDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE58);
  }

  return result;
}

unint64_t sub_1C996C384()
{
  result = qword_1EC3CDE60;
  if (!qword_1EC3CDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE60);
  }

  return result;
}

unint64_t sub_1C996C3D8()
{
  result = qword_1EC3CDE68;
  if (!qword_1EC3CDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE68);
  }

  return result;
}

unint64_t sub_1C996C42C()
{
  result = qword_1EC3CDE70;
  if (!qword_1EC3CDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE70);
  }

  return result;
}

unint64_t sub_1C996C480()
{
  result = qword_1EC3CDE78;
  if (!qword_1EC3CDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE78);
  }

  return result;
}

unint64_t sub_1C996C4D4()
{
  result = qword_1EC3CDE80;
  if (!qword_1EC3CDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE80);
  }

  return result;
}

unint64_t sub_1C996C528()
{
  result = qword_1EC3CDE88;
  if (!qword_1EC3CDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE88);
  }

  return result;
}

unint64_t sub_1C996C57C()
{
  result = qword_1EC3CDE90;
  if (!qword_1EC3CDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE90);
  }

  return result;
}

unint64_t sub_1C996C5D0()
{
  result = qword_1EC3CDE98;
  if (!qword_1EC3CDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDE98);
  }

  return result;
}

unint64_t sub_1C996C624()
{
  result = qword_1EC3CDEA0;
  if (!qword_1EC3CDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDEA0);
  }

  return result;
}

unint64_t sub_1C996C678()
{
  result = qword_1EC3CDEA8;
  if (!qword_1EC3CDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDEA8);
  }

  return result;
}

uint64_t sub_1C996C6CC(char a1, uint64_t *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 & 1;
  v16 = a1 & 1;
  v10 = *a2;
  v11 = *(a2 + 8);
  result = a3(&v16);
  if (v11 == (result & 1))
  {
    *a2 = 0;
    goto LABEL_11;
  }

  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    if (v11)
    {
      v14 = a5;
    }

    else
    {
      v14 = a6;
    }

    if (v14 < v13)
    {
      *a2 = 0;
      *(a2 + 8) = v11 ^ 1;
      if ((v11 & 1) == 0)
      {
LABEL_8:
        v15 = 0;
        return v15 | v9;
      }

LABEL_12:
      v15 = 256;
      return v15 | v9;
    }

    *a2 = v13;
LABEL_11:
    *(a2 + 8) = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1C996C7BC(uint64_t *a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 24);
  v10 = *(a1 + 25);
  v11 = v10 | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v12 = a1[4];
  v13 = a1[5];
  v14 = *(a1 + 12);
  switch((v10 >> 20) & 0xF)
  {
    case 1uLL:
      sub_1C99FEAF0();
      break;
    case 2uLL:
      sub_1C996C9D4(v6, v7, v8, v9 & 1, a2, a3);
      break;
    case 3uLL:
      sub_1C99FF4B4();
      break;
    case 4uLL:
      sub_1C99FF6F4();
      break;
    case 5uLL:
      sub_1C99FF910();
      break;
    case 6uLL:
      sub_1C99FFF9C();
      break;
    case 7uLL:
      sub_1C9A00214();
      break;
    case 8uLL:
      v15 = v9 | (v11 << 8);
      v16 = v8 | v7;
      if (!v14 && (v15 == 0x80000000 ? (v17 = (v16 | v6 | v12 | v13) == 0) : (v17 = 0), v17))
      {
        sub_1C99FD7F4();
      }

      else
      {
        v18 = v16 | v12 | v13;
        if (!v14 && (v15 == 0x80000000 ? (v19 = v6 == 1) : (v19 = 0), v19 ? (v20 = v18 == 0) : (v20 = 0), v20))
        {
          sub_1C99FDB44();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v21 = v6 == 2) : (v21 = 0), v21 ? (v22 = v18 == 0) : (v22 = 0), v22))
        {
          sub_1C99FE3BC();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v23 = v6 == 3) : (v23 = 0), v23 ? (v24 = v18 == 0) : (v24 = 0), v24))
        {
          sub_1C99FE5E8();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v25 = v6 == 4) : (v25 = 0), v25 ? (v26 = v18 == 0) : (v26 = 0), v26))
        {
          sub_1C99FE824();
        }

        else if (!v14 && (v15 == 0x80000000 ? (v27 = v6 == 5) : (v27 = 0), v27 ? (v28 = v18 == 0) : (v28 = 0), v28))
        {
          sub_1C99FDD80();
        }

        else
        {
          sub_1C99FFB50();
        }
      }

      break;
    default:
      sub_1C99FDFE4();
      break;
  }
}

uint64_t sub_1C996C9D4(uint64_t a1, char *a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v81 = a2;
  v82 = a6;
  v65 = a5;
  LODWORD(v80) = a4;
  v72 = a3;
  v70 = sub_1C97A2CEC(&qword_1EC3CE380, &qword_1C9ABC1D0);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = v63 - v7;
  v71 = sub_1C97A2CEC(&qword_1EC3CE388, &qword_1C9ABC1D8);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = v63 - v8;
  v75 = sub_1C97A2CEC(&qword_1EC3CE390, &qword_1C9ABC1E0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v63 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3CE398, &qword_1C9ABC1E8);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = v63 - v11;
  v12 = sub_1C97A2CEC(&unk_1EC3CE3A0, &unk_1C9ABC1F0);
  v13 = *(v12 - 8);
  v76 = v12;
  v77 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v63 - v14;
  v16 = sub_1C9A91408();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C9A91558();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v63 - v25;
  v83 = a1;
  v84 = v81;
  (*(v17 + 104))(v19, *MEMORY[0x1E6968F70], v16);
  sub_1C98449A8();
  v27 = v82;
  sub_1C9A91538();
  (*(v17 + 8))(v19, v16);
  v28 = v85;
  v29 = sub_1C9880658();
  if (v28)
  {
    (*(v21 + 8))(v26, v20);
  }

  else
  {
    v30 = v29;
    v85 = v15;
    type metadata accessor for E5RTExecutionStream(0);
    swift_allocObject();
    v31 = sub_1C9880798(v30);
    type metadata accessor for E5RTExecutionStreamOperation(v32);
    sub_1C9A913F8();
    v33 = sub_1C9A91508();
    v35 = v34;
    v36 = v24;
    v37 = *(v21 + 8);
    v37(v36, v20);
    sub_1C98817E8(1852399981, 0xE400000000000000, v33, v35, 1852399981, 0xE400000000000000, 1, 1);
    v39 = v38;

    sub_1C9882AF4(v39, v80 & 1);
    sub_1C9880DE8(v39);
    v82 = v31;
    v83 = v65;
    v81 = v26;
    sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
    v64 = v20;
    v65 = v37;
    v80 = v21 + 8;
    v63[1] = sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
    sub_1C996FE74(&qword_1EC3C9B50);
    v41 = v66;
    sub_1C9A92048();
    sub_1C97A2CEC(&unk_1EC3CE3B0, &unk_1C9ABC200);
    v42 = v67;
    v43 = v70;
    sub_1C9A91C98();
    (*(v68 + 8))(v41, v43);
    sub_1C97A2CEC(qword_1EC3C9850, &unk_1C9AA7D00);
    v44 = v39;
    v45 = v74;
    v46 = v71;
    sub_1C9A91C98();
    (*(v69 + 8))(v42, v46);
    v47 = swift_allocObject();
    v48 = v82;
    *(v47 + 16) = v82;
    *(v47 + 24) = v44;
    v49 = swift_allocObject();
    v50 = v72;
    *(v49 + 16) = v72;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C9875D04;
    *(v51 + 24) = v49;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1C9875D20;
    *(v52 + 24) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C9875CE8;
    *(v53 + 24) = v47;
    v54 = swift_allocObject();
    v54[2] = sub_1C9A01F34;
    v54[3] = 0;
    v54[4] = sub_1C9875D58;
    v54[5] = v53;
    v54[6] = sub_1C9875D3C;
    v54[7] = v52;
    v55 = swift_allocObject();
    *(v55 + 2) = v48;
    *(v55 + 3) = v44;
    *(v55 + 4) = v50;
    v56 = v75;
    v57 = (v45 + *(v75 + 52));
    *v57 = sub_1C9875D98;
    v57[1] = v55;
    v58 = (v45 + *(v56 + 56));
    *v58 = sub_1C9875D74;
    v58[1] = v54;
    sub_1C996FE74(&unk_1EC3CE3C0);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v59 = v73;
    sub_1C9A91F68();
    sub_1C97DA1E0(v45, &qword_1EC3CE390, &qword_1C9ABC1E0);
    v60 = v85;
    v61 = v79;
    sub_1C9A91C48();
    (*(v78 + 8))(v59, v61);
    sub_1C996FE74(&unk_1EC3CE3C8);
    v62 = v76;
    v27 = sub_1C9A91F28();

    (*(v77 + 8))(v60, v62);
    v65(v81, v64);
  }

  return v27;
}

unint64_t sub_1C996D418()
{
  result = qword_1EC3CDF68;
  if (!qword_1EC3CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF68);
  }

  return result;
}

unint64_t sub_1C996D46C()
{
  result = qword_1EC3CDF70;
  if (!qword_1EC3CDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF70);
  }

  return result;
}

unint64_t sub_1C996D4C0()
{
  result = qword_1EC3CDF80;
  if (!qword_1EC3CDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF80);
  }

  return result;
}

unint64_t sub_1C996D514()
{
  result = qword_1EC3CDF88;
  if (!qword_1EC3CDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDF88);
  }

  return result;
}

unint64_t sub_1C996D568(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C996D5AC()
{
  result = qword_1EC3CDFB8;
  if (!qword_1EC3CDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFB8);
  }

  return result;
}