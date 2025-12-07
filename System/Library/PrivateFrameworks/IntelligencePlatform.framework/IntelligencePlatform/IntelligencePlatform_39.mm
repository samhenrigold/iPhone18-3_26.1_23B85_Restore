uint64_t sub_1ABD76648(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABD76774((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABD76774(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1ABADD52C(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_1ABADD52C(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  v15 = v6 - 32;
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v10 - 4) < *v15)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v15 + 1);
        *v5 = *v15;
        *(v5 + 1) = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v17 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v17;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_1ABD768F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABD76910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD769A4()
{
}

uint64_t sub_1ABD769D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABADB6BC();
      v3 = v7;
    }

    v6 = *(v3 + 16);
    if (v6 >= *(v3 + 24) >> 1)
    {
      sub_1ABADB6BC();
      v3 = v8;
    }

    *(v3 + 16) = v6 + 1;
    *(v3 + 2 * v6 + 32) = (0xB1102010900uLL >> (8 * v4));
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1ABD76AB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for KGQ.Value(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  while (v10 != v9)
  {
    sub_1ABB2D38C(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8);
    if (swift_getEnumCaseMultiPayload() != 6)
    {

      sub_1ABD75EB4();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      sub_1ABD6DC28(v8);
      return v11;
    }

    sub_1ABD76CBC(*v8, &v22);
    v12 = v22;
    if ((v22 & 0xFF00) == 0x500)
    {
      ++v9;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADB6BC();
        v11 = v16;
      }

      v14 = *(v11 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v11 + 24) >> 1)
      {
        v20 = v14 + 1;
        sub_1ABADB6BC();
        v15 = v20;
        v11 = v17;
      }

      ++v9;
      *(v11 + 16) = v15;
      *(v11 + 2 * v14 + 32) = v12;
      v3 = v21;
    }
  }

  return v11;
}

uint64_t sub_1ABD76CF0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1ABD7738C(a2);
  v5 = v4;
  if (v3 == sub_1ABD7738C(v2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

uint64_t sub_1ABD76D84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v18, v19);
  return v16 & 1;
}

uint64_t sub_1ABD76DC0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return sub_1ABA814E4();
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABD76E1C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1ABD7738C(a2);
  v5 = v4;
  if (v3 == sub_1ABD7738C(v2) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1ABF25054();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1ABD76EC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v18, v19);
  return (v16 & 1) == 0;
}

uint64_t sub_1ABD76F04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1ABF25054() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1ABD76F6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1ABD7738C(a1);
  v5 = v4;
  if (v3 == sub_1ABD7738C(v2) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1ABF25054();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1ABD77010(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v19, v18);
  return (v16 & 1) == 0;
}

uint64_t sub_1ABD77050(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABF25054() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1ABD770AC()
{
  type metadata accessor for KGQ.Value(0);
  sub_1ABA90294();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABA7EDF8();
  sub_1ABB2D38C(v3, v4);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v2;
  }

  sub_1ABD6DC28(v2);
  return 0;
}

uint64_t sub_1ABD77144(uint64_t a1)
{
  v2 = type metadata accessor for KGQ.Value(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    v24[0] = v11;
    do
    {
      sub_1ABB2D38C(v10, v8);
      v13 = sub_1ABA7BE8C();
      sub_1ABB2D38C(v13, v14);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v15 = *v4;
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_1ABF23B14();
        v24[1] = v15;
        v16 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v16);

        v17 = v25;
        v18 = v26;
        sub_1ABD6DC28(v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAAA4F4();
          v12 = v21;
        }

        v19 = *(v12 + 16);
        if (v19 >= *(v12 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v12 = v22;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        v11 = v24[0];
      }

      else
      {
        sub_1ABD6DC28(v8);
        sub_1ABD6DC28(v4);
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v12 + 16))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_1ABD7738C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6D614E7473726966;
      break;
    case 2:
      result = 0x656D614E7473616CLL;
      break;
    case 3:
      result = 0x73736572646461;
      break;
    case 4:
      result = 0x7961646874726962;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 8:
      result = 0x6565646E65747461;
      break;
    case 9:
      result = sub_1ABA80E80();
      break;
    case 10:
      result = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    case 11:
      result = 1836020326;
      break;
    case 12:
      result = 28532;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7473657265746E69;
      break;
    case 15:
      result = 0x6E6F73726570;
      break;
    case 16:
      result = 0x6765746143707061;
      break;
    case 17:
      result = 0x7461447472617473;
      break;
    case 18:
      result = 0x65746144646E65;
      break;
    case 19:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 20:
      result = 1701869940;
      break;
    case 21:
      result = 0x74696D696CLL;
      break;
    case 22:
      result = 0x63734174726F73;
      break;
    case 23:
      result = 0x6373654474726F73;
      break;
    case 24:
      result = 0x656372756F73;
      break;
    case 25:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD775F0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1ABD77620(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return sub_1ABA814E4();
  }
}

BOOL sub_1ABD77620(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1 || (sub_1ABB4F410() & 1) == 0)
      {
        return 0;
      }

      a1 = sub_1ABA7EDF8();
      goto LABEL_22;
    case 2:
      if (a6 == 2)
      {
        switch(a2)
        {
          case 1:
            if (a5 != 1)
            {
              return 0;
            }

            break;
          case 2:
            if (a5 != 2)
            {
              return 0;
            }

            break;
          case 3:
            if (a5 != 3)
            {
              return 0;
            }

            break;
          default:
            if (a5)
            {
              return 0;
            }

            break;
        }

        v8 = a4;
LABEL_22:
        if (sub_1ABB48520(a1, v8))
        {
          return 1;
        }
      }

      return 0;
    case 3:
      if (a6 == 3 && (sub_1ABB4F410() & 1) != 0)
      {
        goto LABEL_11;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

      sub_1ABB48E4C();
      if ((v6 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      sub_1ABA7EDF8();
      sub_1ABB486C4();
      return (v7 & 1) != 0;
  }
}

IntelligencePlatform::KGQ::QType_optional __swiftcall KGQ.QType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t KGQ.QType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 2:
      result = sub_1ABA80E80();
      break;
    case 3:
      result = 0x746E657665;
      break;
    case 4:
      result = 0x69746E6565726373;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD778EC@<X0>(uint64_t *a1@<X8>)
{
  result = KGQ.QType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABD77920(char a1, char a2)
{
  v3 = sub_1ABD7738C(a1);
  v5 = v4;
  if (v3 == sub_1ABD7738C(a2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

unint64_t sub_1ABD779A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF250B4();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

void sub_1ABD779F8()
{
  sub_1ABA7E9B8();
  sub_1ABB48E4C();
  if (v0)
  {
    sub_1ABA7EDF8();

    sub_1ABB486C4();
  }
}

uint64_t sub_1ABD77A44()
{
  sub_1ABA7E9B8();
  if ((sub_1ABB4F410() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_1ABA7EDF8();

  return sub_1ABB48520(v0, v1);
}

void sub_1ABD77A90()
{
  sub_1ABA7E9B8();
  if (sub_1ABB4F410())
  {
    sub_1ABA7EDF8();

    sub_1ABB486C4();
  }
}

uint64_t sub_1ABD77ADC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return sub_1ABA814E4();
      }

      return sub_1ABB48520(a1, a3);
    case 2:
      if (a4 == 2)
      {
        return sub_1ABB48520(a1, a3);
      }

      return sub_1ABA814E4();
    case 3:
      if (a4 == 3)
      {
        return sub_1ABB48520(a1, a3);
      }

      return sub_1ABA814E4();
    default:
      if (a4)
      {
        return sub_1ABA814E4();
      }

      else
      {
        return sub_1ABB48520(a1, a3);
      }
  }
}

unint64_t sub_1ABD77B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABD779A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABD77B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABD7738C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABD77C48(__n128 a1)
{
  sub_1ABF23B14();
  v1 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v1);

  return 0;
}

uint64_t sub_1ABD77CCC(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_1ABF21EB4();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KGQ.Value(0);
  sub_1ABA90294();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v54 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v54 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v54 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v54 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v54 - v25);
  v27 = sub_1ABAD219C(&qword_1EB4D91A0, &qword_1ABF5F220);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v54 - v28;
  v31 = &v54 + *(v30 + 56) - v28;
  sub_1ABB2D38C(v58, &v54 - v28);
  sub_1ABB2D38C(v59, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1ABB2D38C(v29, v23);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_37;
      }

      v41 = *v23;
      goto LABEL_18;
    case 2u:
      sub_1ABB2D38C(v29, v20);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v56 + 8))(v20, v57);
        goto LABEL_37;
      }

      v35 = v56;
      v36 = v54;
      v37 = v31;
      v38 = v57;
      (*(v56 + 32))(v54, v37, v57);
      v39 = sub_1ABF21E54();
      v40 = *(v35 + 8);
      v40(v36, v38);
      v40(v20, v38);
LABEL_25:
      sub_1ABD6DC28(v29);
      return v39 & 1;
    case 3u:
      sub_1ABB2D38C(v29, v17);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_37;
      }

      v41 = *v17;
LABEL_18:
      v43 = v41 == *v31;
      goto LABEL_22;
    case 4u:
      sub_1ABB2D38C(v29, v14);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_37;
      }

      v34 = *v14;
      goto LABEL_21;
    case 5u:
      sub_1ABB2D38C(v29, v11);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_37;
      }

      v34 = *v11;
LABEL_21:
      v43 = v34 == *v31;
LABEL_22:
      v39 = v43;
      goto LABEL_25;
    case 6u:
      v44 = v55;
      sub_1ABB2D38C(v29, v55);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }

      v45 = *v44;
      v46 = *v31;
      v47 = sub_1ABD7738C(v45);
      v49 = v48;
      if (v47 == sub_1ABD7738C(v46) && v49 == v50)
      {
        goto LABEL_34;
      }

      sub_1ABA7BE8C();
      goto LABEL_32;
    case 7u:
      sub_1ABB2D38C(v29, v6);
      v33 = *v6;
      v32 = v6[1];
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    default:
      sub_1ABB2D38C(v29, v26);
      v33 = *v26;
      v32 = v26[1];
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:

LABEL_37:
        sub_1ABD78FD0(v29);
        goto LABEL_38;
      }

LABEL_11:
      if (v33 == *v31 && v32 == *(v31 + 1))
      {
LABEL_34:

        goto LABEL_35;
      }

LABEL_32:
      v52 = sub_1ABF25054();

      if (v52)
      {
LABEL_35:
        sub_1ABD6DC28(v29);
        v39 = 1;
        return v39 & 1;
      }

      sub_1ABD6DC28(v29);
LABEL_38:
      v39 = 0;
      return v39 & 1;
  }
}

BOOL sub_1ABD781C8(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1ABD7738C(a1);
  v10 = v9;
  if (v8 == sub_1ABD7738C(a4) && v10 == v11)
  {
  }

  else
  {
    sub_1ABA99580();
    v13 = sub_1ABF25054();

    if ((v13 & 1) == 0)
    {
      sub_1ABA99580();
      v14 = sub_1ABF25054();

      return v14 & 1;
    }
  }

  return *(a2 + 16) < *(a5 + 16);
}

uint64_t sub_1ABD7829C(char a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  v9 = sub_1ABD7738C(a1);
  v11 = v10;
  if (v9 == sub_1ABD7738C(a4) && v11 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_1ABF25054();

  result = 0;
  if (v14)
  {
LABEL_8:
    v16 = sub_1ABA7BE8C();
    return sub_1ABB48520(v16, v17) & (a3 == a6);
  }

  return result;
}

uint64_t sub_1ABD78408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABB2B878(a1, a2);
  if (v7)
  {
    if (v6 == 120 && v7 == 0xE100000000000000)
    {
    }

    else
    {
      v9 = sub_1ABF25054();

      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v10 = sub_1ABAA958C(1uLL, a1, a2);
    MEMORY[0x1AC5A9330](v10);

    while (1)
    {
      sub_1ABF23DE4();
      if (!v11)
      {

        goto LABEL_15;
      }

      sub_1ABF23B04();
      if (v12)
      {
        break;
      }

      v13 = sub_1ABA7BE8C();
      MEMORY[0x1AC5A9410](v13);
    }
  }

LABEL_15:

  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

uint64_t KGQ.Variable.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD78824(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABD7886C()
{
  result = 17741;
  switch(*v0)
  {
    case 1:
      return 4999502;
    case 2:
      return 5721934;
    case 3:
      return 0x524154535F594144;
    case 4:
      return 0x444E455F594144;
    case 5:
      v2 = 1262830935;
      return v2 | 0x4154535F00000000;
    case 6:
      v3 = 1262830935;
      goto LABEL_18;
    case 7:
      return 0x54535F48544E4F4DLL;
    case 8:
      return 0x4E455F48544E4F4DLL;
    case 9:
      v2 = 1380009305;
      return v2 | 0x4154535F00000000;
    case 0xA:
      v3 = 1380009305;
LABEL_18:
      result = v3 | 0x444E455F00000000;
      break;
    case 0xB:
      result = 0x5941445F31;
      break;
    case 0xC:
      result = 0x4B4545575F31;
      break;
    case 0xD:
      result = 0x48544E4F4D5F31;
      break;
    case 0xE:
      result = 0x524145595F31;
      break;
    case 0xF:
      result = 0x464F5F5452415453;
      break;
    case 0x10:
      result = 0x545F464F5F444E45;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::KGQ::Keyword_optional __swiftcall KGQ.Keyword.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABD78A84@<X0>(uint64_t *a1@<X8>)
{
  result = KGQ.Keyword.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABD78AE8()
{
  result = qword_1EB4D9170;
  if (!qword_1EB4D9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9170);
  }

  return result;
}

unint64_t sub_1ABD78B40()
{
  result = qword_1EB4D9178;
  if (!qword_1EB4D9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9178);
  }

  return result;
}

unint64_t sub_1ABD78B98()
{
  result = qword_1EB4D9180;
  if (!qword_1EB4D9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9180);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KGQ.QType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KGQ.Keyword(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KGQ.Keyword(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD78E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD78ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1ABD78F30()
{
  result = qword_1EB4D9198;
  if (!qword_1EB4D9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9198);
  }

  return result;
}

uint64_t type metadata accessor for KGQ.Value(uint64_t a1)
{
  result = qword_1EB4D91A8;
  if (!qword_1EB4D91A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABD78FD0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D91A0, &qword_1ABF5F220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for KGQ.Argument.Operation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD7912C(uint64_t a1)
{
  result = sub_1ABF21EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KGQ.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD792B4()
{
  result = qword_1EB4D91B8;
  if (!qword_1EB4D91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91B8);
  }

  return result;
}

unint64_t sub_1ABD7930C()
{
  result = qword_1EB4D91C0;
  if (!qword_1EB4D91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91C0);
  }

  return result;
}

uint64_t sub_1ABD79390(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD793E8()
{
  result = qword_1EB4D91D8;
  if (!qword_1EB4D91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91D8);
  }

  return result;
}

uint64_t sub_1ABD7944C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7948C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void KnosisAccessConfig.init(clientIdentifier:entitledIndexTypes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  if (qword_1ED86D438 != -1)
  {
    sub_1ABA8F788(&qword_1ED86D438);
  }

  sub_1ABD91F0C(v6, a2);
  *(a3 + 24) = v7;
}

uint64_t KnosisAccessConfig.description.getter()
{
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000026, 0x80000001ABF8EEF0);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF8EF20);
  sub_1ABD26F30();
  v0 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v0);

  return 0;
}

void static KnosisAccessConfig.initForInProcess()(uint64_t a1@<X8>)
{
  v2 = sub_1ABE8B0C8(&unk_1F208F068);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  if (qword_1ED86D438 != -1)
  {
    sub_1ABA8F788(&qword_1ED86D438);
  }

  sub_1ABD91F0C(v3, v2);
  *(a1 + 24) = v4;
}

uint64_t sub_1ABD79728(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD79768(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t KnosisConfig.init(defaultResultLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF21CF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  result = sub_1ABA8F7A8(0xD000000000000010, 0x80000001ABF8EF40);
  if (v12)
  {
    sub_1ABF21C44();

    v13 = *(v5 + 32);
    v13(a2, v10, v4);
    result = sub_1ABA8F7A8(0x614D746E65746E69, 0xE900000000000070);
    if (v14)
    {
      sub_1ABF21C44();

      v15 = type metadata accessor for KnosisConfig(0);
      result = (v13)(a2 + *(v15 + 20), v7, v4);
      *(a2 + *(v15 + 24)) = a1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KnosisConfig.init(defaultResultLimit:vopFileURL:intentMapFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1ABF21CF4();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a2, v8);
  v10 = type metadata accessor for KnosisConfig(0);
  result = (v9)(a4 + *(v10 + 20), a3, v8);
  *(a4 + *(v10 + 24)) = a1;
  return result;
}

uint64_t sub_1ABD79A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();

  v7 = sub_1ABF23BD4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1ABF23C04();

  return v9;
}

uint64_t type metadata accessor for KnosisConfig(uint64_t a1)
{
  result = qword_1ED86DF20;
  if (!qword_1ED86DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABD79B68(uint64_t a1)
{
  result = sub_1ABF21CF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id static KnosisKGQRequest.initWithGDKnosisRequest(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 query];
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = sub_1ABD7A200(a1);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = [a1 limit];
  v13 = sub_1ABF243F4();

  v14 = [a1 offset];
  v15 = sub_1ABF243F4();

  LOBYTE(v14) = [a1 enableDebug];
  result = [a1 enableTextualization];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 57) = result;
  return result;
}

void static KnosisIntentRequest.initWithGDKnosisRequest(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v2 = sub_1ABD7A264(a1);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v3 = v2;
  v4 = 0;
  v64 = v2 & 0xC000000000000001;
  v65 = sub_1ABAAB7C8(v2);
  v63 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v62 = v3;
  while (1)
  {
    if (v4 == v65)
    {

LABEL_36:
      v50 = v60;
      v51 = [v60 query];
      v52 = sub_1ABF23C04();
      v54 = v53;

      v55 = [v50 limit];
      v56 = sub_1ABF243F4();

      v57 = [v50 offset];
      v58 = sub_1ABF243F4();

      v59 = [v50 enableDebug];
      *a2 = v52;
      *(a2 + 8) = v54;
      *(a2 + 16) = v5;
      *(a2 + 24) = 0;
      *(a2 + 32) = v56;
      *(a2 + 40) = v58;
      *(a2 + 48) = v59;
      return;
    }

    sub_1ABAAB7C0(v4, v64 == 0, v3);
    if (v64)
    {
      v6 = MEMORY[0x1AC5AA170](v4, v3);
    }

    else
    {
      v6 = *(v63 + 8 * v4);
    }

    v7 = v6;
    v8 = __OFADD__(v4, 1);
    v9 = v4 + 1;
    if (v8)
    {
      goto LABEL_38;
    }

    v69 = v9;
    v70 = v5;
    v10 = [v6 intent];
    v11 = sub_1ABF23C04();
    v67 = v12;
    v68 = v11;

    v66 = v7;
    v13 = [v7 args];
    sub_1ABAFF390(0, &qword_1EB4D91E0, off_1E7960298);
    sub_1ABD7A2D4();
    v14 = sub_1ABF24394();

    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1ABF249B4();
      sub_1ABF243C4();
      v14 = v74;
      v15 = v75;
      v17 = v76;
      v16 = v77;
      v18 = v78;
    }

    else
    {
      v19 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v17 = ~v19;
      v20 = -v19;
      v21 = v20 < 64 ? ~(-1 << v20) : -1;
      v18 = v21 & *(v14 + 56);

      v16 = 0;
    }

    v22 = (v17 + 64) >> 6;
    v23 = MEMORY[0x1E69E7CC0];
    v71 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (sub_1ABF249C4())
    {
      swift_dynamicCast();
      v28 = v73;
      v26 = v16;
      v27 = v18;
      if (!v73)
      {
        break;
      }

LABEL_22:
      v72 = v27;
      v29 = [v28 arg];
      v30 = sub_1ABF23C04();
      v32 = v31;

      v33 = [v28 value];
      v34 = sub_1ABF23C04();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADB87C();
        v23 = v39;
      }

      v37 = *(v23 + 16);
      if (v37 >= *(v23 + 24) >> 1)
      {
        sub_1ABADB87C();
        v23 = v40;
      }

      *(v23 + 16) = v37 + 1;
      v38 = (v23 + 32 * v37);
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v34;
      v38[7] = v36;
      v16 = v26;
      v14 = v71;
      v18 = v72;
      if ((v71 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_28:
    sub_1ABAB4C48(v14);

    v41 = sub_1ABE8B5B0(v23);
    v42 = [v66 score];
    sub_1ABF24364();
    v44 = v43;

    v5 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABADB860(0, *(v70 + 16) + 1, 1, v70);
      v5 = v48;
    }

    v3 = v62;
    v4 = v69;
    v46 = *(v5 + 16);
    v45 = *(v5 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1ABADB860(v45 > 1, v46 + 1, 1, v5);
      v5 = v49;
    }

    *(v5 + 16) = v46 + 1;
    v47 = v5 + 32 * v46;
    *(v47 + 32) = v68;
    *(v47 + 40) = v67;
    *(v47 + 48) = v41;
    *(v47 + 56) = v44;
  }

LABEL_14:
  v24 = v16;
  v25 = v18;
  v26 = v16;
  if (v18)
  {
LABEL_18:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      goto LABEL_28;
    }

    v25 = *(v15 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1ABD7A200(void *a1)
{
  v1 = [a1 kgq];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABD7A264(void *a1)
{
  v1 = [a1 intentArgs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABAFF390(0, &qword_1EB4D91F0, off_1E79602B8);
  v3 = sub_1ABF240D4();

  return v3;
}

unint64_t sub_1ABD7A2D4()
{
  result = qword_1EB4D91E8;
  if (!qword_1EB4D91E8)
  {
    sub_1ABAFF390(255, &qword_1EB4D91E0, off_1E7960298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91E8);
  }

  return result;
}

uint64_t KnosisKGQRequest.init(query:kgq:contextFacts:limit:offset:enableDebug:enableTextualization:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;
  return result;
}

uint64_t KnosisIntentRequest.init(query:intentRequests:contextFacts:limit:offset:enableDebug:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t IntentRequest.init(intent:args:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  return result;
}

IntelligencePlatform::IntentArg __swiftcall IntentArg.init(arg:value:)(Swift::String arg, Swift::String value)
{
  *v2 = arg;
  v2[1] = value;
  result.value = value;
  result.arg = arg;
  return result;
}

unint64_t KnosisKGQRequest.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 57);
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v4 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v4);
  MEMORY[0x1AC5A9410](0x3A74696D696C202CLL, 0xE800000000000000);
  sub_1ABA7E378();
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](0x74657366666F202CLL, 0xE90000000000003ALL);
  sub_1ABA7E378();
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  if (v2 != 1)
  {
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1AC5A9410](0xD000000000000010, 0x80000001ABF8EFA0);
    if (!v1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF8EFC0);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v1)
  {
LABEL_4:
    sub_1ABF24AB4();

    sub_1ABA8071C();
    v10 = v7;
    v8 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v8);

    MEMORY[0x1AC5A9410](0xD000000000000013, v10);
  }

LABEL_5:
  sub_1ABA83AA4();
  return 0xD000000000000011;
}

uint64_t KnosisIntentRequest.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF8EFE0);
  v3 = MEMORY[0x1AC5A9750](v1, &type metadata for IntentRequest);
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](0x3A74696D696C20, 0xE700000000000000);
  sub_1ABA7E378();
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  MEMORY[0x1AC5A9410](0x3A74657366666F20, 0xE800000000000000);
  sub_1ABA7E378();
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  if (v2 == 1)
  {
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF8EFC0);
  }

  sub_1ABA83AA4();
  return 0;
}

unint64_t IntentRequest.description.getter()
{
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v0 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v0);
  MEMORY[0x1AC5A9410](0x3A7367726120, 0xE600000000000000);
  sub_1ABD7B978();
  v1 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v1);

  sub_1ABA83AA4();
  return 0xD000000000000014;
}

uint64_t static IntentRequest.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v2 == *v4 && v3 == *(v4 + 8))
  {
    return sub_1ABD7ADC8(v1, v7) & (v6 == v8);
  }

  v10 = sub_1ABF25054();
  result = 0;
  if (v10)
  {
    return sub_1ABD7ADC8(v1, v7) & (v6 == v8);
  }

  return result;
}

void sub_1ABD7A84C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 56;
      sub_1ABA7F040();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      v11 = a2 + 56;
      sub_1ABA8071C();
      v40 = v12;
      v41 = v13;
      sub_1ABA8071C();
      v39 = v14;
      v36 = v10;
      v37 = v3;
      if (v8)
      {
        while (1)
        {
          v15 = __clz(__rbit64(v8));
          v16 = (v8 - 1) & v8;
LABEL_10:
          v19 = *(*(v3 + 48) + (v15 | (v4 << 6)));
          sub_1ABF25234();
          sub_1ABBB4ED8(v42, v19);
          v20 = sub_1ABF25294();
          v21 = -1 << *(a2 + 32);
          v22 = v20 & ~v21;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            break;
          }

          v38 = v16;
          v23 = ~v21;
          while (1)
          {
            v24 = 0xE400000000000000;
            v25 = 1701736302;
            switch(*(*(a2 + 48) + v22))
            {
              case 1:
                v25 = 0xD000000000000010;
                v24 = v39;
                break;
              case 2:
                v24 = 0xE700000000000000;
                v25 = 0x7865646E496F6ELL;
                break;
              case 3:
                v26 = 0x47746E657665;
                goto LABEL_20;
              case 4:
                v25 = 0x79676F6C6F746E6FLL;
                v24 = 0xED00007865646E49;
                break;
              case 5:
                v25 = 0x49747865746E6F63;
                v24 = 0xEC0000007865646ELL;
                break;
              case 6:
                v26 = 0x476C61636F6CLL;
LABEL_20:
                v25 = v26 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
                v24 = 0xEF7865646E496870;
                break;
              case 7:
                sub_1ABA7BB94();
                v25 = v27 + 10;
                v24 = v40;
                break;
              case 8:
                sub_1ABA7BB94();
                v25 = v28 + 8;
                v24 = v41;
                break;
              default:
                break;
            }

            v29 = 0xE400000000000000;
            v30 = 1701736302;
            switch(v19)
            {
              case 1:
                v30 = 0xD000000000000010;
                v29 = v39;
                break;
              case 2:
                v29 = 0xE700000000000000;
                v30 = 0x7865646E496F6ELL;
                break;
              case 3:
                v31 = 0x47746E657665;
                goto LABEL_30;
              case 4:
                v30 = 0x79676F6C6F746E6FLL;
                v29 = 0xED00007865646E49;
                break;
              case 5:
                v30 = 0x49747865746E6F63;
                v29 = 0xEC0000007865646ELL;
                break;
              case 6:
                v31 = 0x476C61636F6CLL;
LABEL_30:
                v30 = v31 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
                v29 = 0xEF7865646E496870;
                break;
              case 7:
                sub_1ABA7BB94();
                v30 = v32 + 10;
                v29 = v40;
                break;
              case 8:
                sub_1ABA7BB94();
                v30 = v33 + 8;
                v29 = v41;
                break;
              default:
                break;
            }

            if (v25 == v30 && v24 == v29)
            {
              break;
            }

            v35 = sub_1ABF25054();

            if (v35)
            {
              goto LABEL_40;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              return;
            }
          }

LABEL_40:
          v10 = v36;
          v3 = v37;
          v8 = v38;
          if (!v38)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        v17 = v4;
        while (1)
        {
          v4 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v4 >= v10)
          {
            return;
          }

          v18 = *(v5 + 8 * v4);
          ++v17;
          if (v18)
          {
            v15 = __clz(__rbit64(v18));
            v16 = (v18 - 1) & v18;
            goto LABEL_10;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1ABD7AC08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    sub_1ABA7F040();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    v23 = v5;
    if (v8)
    {
      while (2)
      {
        v11 = __clz(__rbit64(v8));
        v24 = (v8 - 1) & v8;
LABEL_10:
        v14 = (*(v5 + 48) + 40 * (v11 | (v3 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_1ABF25234();

        sub_1ABF23D34();
        v17 = sub_1ABF25294();
        v18 = ~(-1 << *(a2 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return;
          }

          v20 = (*(a2 + 48) + 40 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1ABF25054();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v5 = v23;
        v8 = v24;
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v24 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ABD7ADC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v27 = v7;
  v28 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v29 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 32 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF23D34();
      v16 = sub_1ABF25294();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      v20 = *(a2 + 48);
      while (1)
      {
        v21 = (v20 + 32 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v13 && v21[1] == v12;
        if (v24 || (sub_1ABF25054() & 1) != 0)
        {
          v25 = v22 == v15 && v23 == v14;
          if (v25 || (sub_1ABF25054() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v29;
      v2 = a2;
      v7 = v27;
      result = v28;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v29 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD7B004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABD7B118(char a1)
{
  if (!a1)
  {
    return 0x614E746E65746E69;
  }

  if (a1 == 1)
  {
    return 1936159329;
  }

  return 0x65726F6373;
}

uint64_t sub_1ABD7B170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD7B004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD7B198(uint64_t a1)
{
  v2 = sub_1ABD7B9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD7B1D4(uint64_t a1)
{
  v2 = sub_1ABD7B9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentRequest.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D9200, &qword_1ABF5F860);
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v14 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  sub_1ABA93E20(v10, v9);
  sub_1ABD7B9CC();
  sub_1ABF252E4();
  v18 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_1ABAD219C(&qword_1EB4D9210, &qword_1ABF5F868);
    sub_1ABD7BA20();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v15 = 2;
    sub_1ABA7BF34();
    sub_1ABF24F64();
  }

  return (*(v5 + 8))(v8, v12);
}

uint64_t IntentArg.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABF24AB4();

  v3 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v3);
  MEMORY[0x1AC5A9410](0x3A65756C617620, 0xE700000000000000);
  MEMORY[0x1AC5A9410](v1, v2);
  sub_1ABA83AA4();
  return 0x41746E65746E493CLL;
}

uint64_t static IntentArg.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1ABF25054(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABD7B54C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6779489 && a2 == 0xE300000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD7B610(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 6779489;
  }
}

uint64_t sub_1ABD7B644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD7B54C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD7B66C(uint64_t a1)
{
  v2 = sub_1ABD7BAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD7B6A8(uint64_t a1)
{
  v2 = sub_1ABD7BAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentArg.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9228, &qword_1ABF5F870);
  sub_1ABA7BB64();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD7BAF8();
  sub_1ABF252E4();
  v14 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v2)
  {
    v13 = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t IntentArg.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  sub_1ABA7E378();

  return sub_1ABF23D34();
}

uint64_t IntentArg.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABD7B908(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1ABF25234();
  IntentArg.hash(into:)(v5);
  return sub_1ABF25294();
}

unint64_t sub_1ABD7B978()
{
  result = qword_1EB4D91F8;
  if (!qword_1EB4D91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91F8);
  }

  return result;
}

unint64_t sub_1ABD7B9CC()
{
  result = qword_1EB4D9208;
  if (!qword_1EB4D9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9208);
  }

  return result;
}

unint64_t sub_1ABD7BA20()
{
  result = qword_1EB4D9218;
  if (!qword_1EB4D9218)
  {
    sub_1ABAE2850(&qword_1EB4D9210, &qword_1ABF5F868);
    sub_1ABD7BAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9218);
  }

  return result;
}

unint64_t sub_1ABD7BAA4()
{
  result = qword_1EB4D9220;
  if (!qword_1EB4D9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9220);
  }

  return result;
}

unint64_t sub_1ABD7BAF8()
{
  result = qword_1EB4D9230;
  if (!qword_1EB4D9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9230);
  }

  return result;
}

unint64_t sub_1ABD7BB50()
{
  result = qword_1EB4D9238;
  if (!qword_1EB4D9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9238);
  }

  return result;
}

__n128 sub_1ABD7BBA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABD7BBC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD7BC5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BC9C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_1ABD7BCF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1ABD7BD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BD4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentArg.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntentRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABD7BF64()
{
  result = qword_1EB4D9240;
  if (!qword_1EB4D9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9240);
  }

  return result;
}

unint64_t sub_1ABD7BFBC()
{
  result = qword_1EB4D9248;
  if (!qword_1EB4D9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9248);
  }

  return result;
}

unint64_t sub_1ABD7C014()
{
  result = qword_1EB4D9250;
  if (!qword_1EB4D9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9250);
  }

  return result;
}

unint64_t sub_1ABD7C06C()
{
  result = qword_1EB4D9258;
  if (!qword_1EB4D9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9258);
  }

  return result;
}

unint64_t sub_1ABD7C0C4()
{
  result = qword_1EB4D9260;
  if (!qword_1EB4D9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9260);
  }

  return result;
}

unint64_t sub_1ABD7C11C()
{
  result = qword_1EB4D9268;
  if (!qword_1EB4D9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9268);
  }

  return result;
}

id sub_1ABD7C170()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 34);
  *(&__dst[4] + 3) = *(v0 + 35);
  HIBYTE(__dst[4]) = *(v0 + 39);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  *&__dst[11] = *(v0 + 88);
  v13 = *(v0 + 104);
  v14 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  __dst[0] = v1;
  __dst[1] = v2;
  v47 = v4;
  v48 = v3;
  __dst[2] = v3;
  __dst[3] = v4;
  LOWORD(__dst[4]) = v5;
  BYTE2(__dst[4]) = v6;
  v45 = v8;
  v46 = v7;
  __dst[5] = v7;
  __dst[6] = v8;
  v43 = v10;
  v44 = v9;
  __dst[7] = v9;
  __dst[8] = v10;
  __dst[9] = v11;
  __dst[10] = v12;
  v42 = v13;
  __dst[13] = v13;
  sub_1ABD7D6C8();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v41 = v12;
    v18 = v17 - 1;
    for (i = 32; ; i += 144)
    {
      memcpy(__dst, (v16 + i), sizeof(__dst));
      v20 = memcpy(v52, (v16 + i), sizeof(v52));
      switch(v6)
      {
        case 1:
          v30 = 3826797;
          if ((v1 & 0x80000000000000) == 0)
          {
            v30 = 3828069;
          }

          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43, v44, v45, v46, v47, v48, v1, v30, 0xE300000000000000);
          v31 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v31);

          v28 = v50;
          v29 = v51;
          break;
        case 2:
        case 3:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);

          goto LABEL_7;
        case 4:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          v28 = 0;
          v29 = 0xE000000000000000;
          break;
        default:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          sub_1ABAE4358(v1, v2, v48, v47, v5, 0);
LABEL_7:
          v28 = v1;
          v29 = v2;
          break;
      }

      sub_1ABD7C818(v28, v29);

      v32 = sub_1ABAE4304(__dst);
      MEMORY[0x1AC5A9710](v32);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      if (!v18)
      {
        break;
      }

      --v18;
    }

    v33 = v54;

    v14 = MEMORY[0x1E69E7CC0];
    v12 = v41;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v52[0] = v14;
  v34 = *(v12 + 16);
  if (v34)
  {
    v35 = (v12 + 32);
    do
    {
      memcpy(__dst, v35, 0x70uLL);
      sub_1ABD7C170();
      MEMORY[0x1AC5A9710]();
      if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v35 += 112;
      --v34;
    }

    while (v34);
    v14 = v52[0];
  }

  v36 = 0xE000000000000000;
  v37 = 0;
  switch(v6)
  {
    case 1:
      __dst[0] = v1;
      v37 = EntityIdentifier.stringValue.getter();
      v36 = v38;
      break;
    case 4:
      break;
    default:

      v37 = v1;
      v36 = v2;
      break;
  }

  objc_allocWithZone(GDKnosisAnswer);

  return sub_1ABD7CCF0(v37, v36, v46, v45, v44, v43, v33, v14, v42);
}

void __swiftcall KnosisResult.toGDKnosisResult()(GDKnosisResult *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v21 = *(v1 + 40);
  v6 = *(v1 + 56);
  v22 = *(v1 + 48);
  v23 = *(v1 + 16);
  v20 = *(v1 + 80);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v10 = *(v5 + 16);
  if (v10)
  {
    v19 = v8;
    v11 = (v5 + 32);
    do
    {
      memcpy(__dst, v11, sizeof(__dst));
      sub_1ABD7C170();
      MEMORY[0x1AC5A9710]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v11 += 112;
      --v10;
    }

    while (v10);
    v9 = v25;
    v8 = v19;
  }

  if (v8)
  {
    __dst[0] = v7;
    *&__dst[1] = v8;
    sub_1ABD7C6B4();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v3)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = sub_1ABF24404();
  v17 = sub_1ABF24404();
  v18 = objc_allocWithZone(GDKnosisResult);
  sub_1ABD7CBA4(v14, v15, v23, v4, v21 + 1, v9, v22, v6, v16, v17, v20, v13);
}

void sub_1ABD7C6B4()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v3 = v0[1];
  v2 = v0[2];
  v4 = *(v2 + 16);
  if (v4)
  {
    v13 = v0[1];
    v14 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v5 = (v2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 5;
      objc_allocWithZone(GDKnosisExecStep);

      sub_1ABD7D120(v6, v7, v8, v9, v10);
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v4;
    }

    while (v4);
    v3 = v13;
    v11 = v14;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = objc_allocWithZone(GDKnosisDebug);
  sub_1ABD7D1F4(v1, v11, v3);
}

id sub_1ABD7C818(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 32);
  __dst[1] = *(v2 + 16);
  __dst[2] = v5;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = *(v2 + 80);
  v10 = *(v2 + 88);
  v13 = *(v2 + 96);
  v12 = *(v2 + 104);
  __dst[7] = *(v2 + 112);
  LOWORD(__dst[8]) = *(v2 + 128);
  v14 = *(v2 + 130);
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v4;
  *&__dst[3] = v6;
  *(&__dst[3] + 1) = v7;
  v34 = v14;
  v35 = v7;
  v37 = v8;
  *&__dst[4] = v8;
  *(&__dst[4] + 1) = v9;
  *&__dst[5] = v11;
  *(&__dst[5] + 1) = v10;
  v31 = v12;
  v32 = v13;
  *&__dst[6] = v13;
  *(&__dst[6] + 1) = v12;
  BYTE2(__dst[8]) = v14;
  *(&__dst[8] + 3) = *(v2 + 131);
  *(&__dst[8] + 1) = *(v2 + 136);
  v42 = MEMORY[0x1E69E7CC0];
  KnosisFact.allQualifiers.getter();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v17 - 1;
    for (i = 32; ; i += 144)
    {
      memcpy(__dst, (v16 + i), sizeof(__dst));
      memcpy(v40, (v16 + i), sizeof(v40));
      sub_1ABAE42A8(__dst, v39);
      sub_1ABD7C818(v3, v4);
      v20 = sub_1ABAE4304(__dst);
      MEMORY[0x1AC5A9710](v20);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      if (!v18)
      {
        break;
      }

      --v18;
    }

    v33 = v42;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);

  v21 = sub_1ABF24794();

  v22 = sub_1ABF24794();
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF5FD20;
  sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);

  *(v23 + 32) = sub_1ABD7CB30(v9, v11);
  v24 = 0xE000000000000000;
  v25 = sub_1ABF24794();
  v26 = 0;
  switch(v34)
  {
    case 1:
      *&__dst[0] = v32;
      v26 = EntityIdentifier.stringValue.getter();
      v24 = v27;
      break;
    case 4:
      break;
    default:
      v24 = v31;

      v26 = v32;
      break;
  }

  v28 = sub_1ABF24794();
  v29 = objc_allocWithZone(GDKnosisFact);
  return sub_1ABD7CE74(v3, v4, v21, a1, a2, MEMORY[0x1E69E7CC0], v22, MEMORY[0x1E69E7CC0], v35, v37, v23, v25, v26, v24, MEMORY[0x1E69E7CC0], v28, v33);
}

id sub_1ABD7CB30(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF23BD4();

  v4 = [v2 initWithPrimary_];

  return v4;
}

id sub_1ABD7CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, void *a12)
{
  v13 = sub_1ABF23BD4();

  v14 = sub_1ABF23BD4();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v15 = sub_1ABF240C4();

  if (a8)
  {
    v16 = sub_1ABF23BD4();
  }

  else
  {
    v16 = 0;
  }

  LOBYTE(v19) = a11 & 1;
  v17 = [v20 initWithQuery:v13 kgq:v14 status:a5 answers:v15 errorMessage:v16 limit:a9 offset:a10 hasMoreAnswers:v19 debug:a12];

  return v17;
}

id sub_1ABD7CCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v12 = sub_1ABF23BD4();
  }

  else
  {
    v12 = 0;
  }

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v13 = sub_1ABF23BD4();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = sub_1ABF23BD4();

LABEL_9:
  sub_1ABAFF390(0, &qword_1EB4CE6E8, off_1E79602B0);
  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v16 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v18 = [v9 initWithAnswerId:v12 name:v13 textualization:v14 facts:v15 parents:v16 requestIds:v17];

  return v18;
}

id sub_1ABD7CE74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v27 = sub_1ABF23BD4();

  v19 = sub_1ABF23BD4();

  if (a6)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v20 = sub_1ABF240C4();
  }

  else
  {
    v20 = 0;
  }

  if (a8)
  {
    v30 = sub_1ABF240C4();
  }

  else
  {
    v30 = 0;
  }

  if (a10)
  {
    v21 = sub_1ABF23BD4();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v22 = sub_1ABF240C4();
  }

  else
  {
    v22 = 0;
  }

  if (a14)
  {
    v23 = sub_1ABF23BD4();
  }

  else
  {
    v23 = 0;
  }

  if (a15)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v24 = sub_1ABF240C4();
  }

  else
  {
    v24 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4CE6E8, off_1E79602B0);
  v26 = sub_1ABF240C4();

  v29 = [v28 initWithFactId:v27 score:a3 subjectId:v19 subjectAlias:v20 subjectPopularity:a7 subjectIsa:v30 predicateId:v21 predicateAlias:v22 predicatePopularity:a12 objectID:v23 objectAlias:v24 objectPopularity:a16 qualifiers:v26];

  return v29;
}

id sub_1ABD7D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_1ABF23BD4();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1ABF23BD4();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_1ABF240C4();

LABEL_8:
  v11 = [v5 initWithKgQueryNode:v8 indexQuery:v9 messages:v10];

  return v11;
}

id sub_1ABD7D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  sub_1ABAFF390(0, &qword_1EB4D9270, off_1E79602A8);
  v6 = sub_1ABF240C4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1ABF240C4();

LABEL_6:
  v8 = [v3 initWithIndexCallCount:a1 execSteps:v6 messages:v7];

  return v8;
}

uint64_t sub_1ABD7D2BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1ABADDC8C(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 136);
    do
    {
      v15 = *(v3 - 12);
      v16 = *(v3 - 13);
      v4 = *(v3 - 11);
      v14 = *(v3 - 10);
      v5 = *(v3 - 9);
      v13 = *(v3 - 32);
      v19 = *(v3 - 6);
      v20 = *(v3 - 7);
      v6 = *(v3 - 5);
      v18 = *(v3 - 4);
      v7 = *(v3 - 3);
      v17 = *(v3 - 8);
      v8 = *v3;
      v10 = *(v27 + 16);
      v9 = *(v27 + 24);
      v21 = *(v3 - 1);
      v22 = v10 + 1;

      if (v10 >= v9 >> 1)
      {
        sub_1ABADDC8C(v9 > 1, v22, 1);
      }

      *(v27 + 16) = v22;
      v11 = v27 + 112 * v10;
      *(v11 + 32) = v16;
      *(v11 + 40) = v15;
      *(v11 + 48) = v4;
      *(v11 + 56) = v14;
      *(v11 + 64) = v5;
      *(v11 + 72) = v13;
      *(v11 + 74) = v25;
      *(v11 + 78) = v26;
      *(v11 + 80) = v20;
      *(v11 + 88) = v19;
      *(v11 + 96) = v6;
      *(v11 + 104) = v18;
      *(v11 + 112) = v7;
      *(v11 + 120) = v17;
      *(v11 + 126) = v24;
      *(v11 + 122) = v23;
      *(v11 + 128) = v21;
      *(v11 + 136) = v8;
      v3 += 14;
      --v2;
    }

    while (v2);
  }

  return v27;
}

void sub_1ABD7D45C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1ABADDD7C(0, v1, 0);
    v5 = sub_1ABAB0E08();
    v6 = 0;
    v7 = v2 + 64;
    v25 = v3;
    v26 = v1;
    v24 = v2 + 72;
    v27 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v29 = v6;
      v30 = v3;
      v28 = v4;

      sub_1ABD81E0C();
      v10 = v9;

      v11 = v2;
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1ABADDD7C(v12 > 1, v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 16 * v13;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      v15 = 1 << *(v11 + 32);
      if (v5 >= v15)
      {
        goto LABEL_24;
      }

      v7 = v27;
      v16 = *(v27 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v11;
      if (*(v11 + 36) != v30)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v18 = v26;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        v18 = v26;
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1ABAC933C(v5, v30, v28 & 1);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1ABAC933C(v5, v30, v28 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v29 + 1;
      v5 = v15;
      v3 = v25;
      if (v29 + 1 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1ABD7D6C8()
{
  sub_1ABA7E2A8();
  v6 = *(v0 + 72) + 64;
  sub_1ABA7D32C();
  sub_1ABA9F620();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= v4)
          {
            goto LABEL_18;
          }

          v5 = *(v6 + 8 * v9);
          ++v7;
          if (v5)
          {
            v7 = v9;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1ABA978C4();
      if (v10)
      {
        goto LABEL_20;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v1 > *(v8 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v8 = v11;
      }

      v5 &= v5 - 1;
      if (!*(v3 + 16))
      {
        break;
      }

      sub_1ABA84218();
      if (v13 < v2)
      {
        goto LABEL_21;
      }

      sub_1ABAA1FF8(v12);
      swift_arrayInitWithCopy();

      if (v2)
      {
        v14 = *(v8 + 16);
        v10 = __OFADD__(v14, v2);
        v15 = v14 + v2;
        if (v10)
        {
          goto LABEL_22;
        }

        *(v8 + 16) = v15;
      }
    }
  }

  while (!v2);
  __break(1u);
LABEL_18:

  sub_1ABA7BC1C();
}

uint64_t GraphNode.id.getter()
{
  v1 = *v0;
  v2 = 0;
  switch(*(v0 + 34))
  {
    case 1:
      v2 = EntityIdentifier.stringValue.getter();
      break;
    case 4:
      return v2;
    default:

      v2 = v1;
      break;
  }

  return v2;
}

void KnosisFact.allQualifiers.getter()
{
  sub_1ABA7E2A8();
  v6 = *(v0 + 136) + 64;
  sub_1ABA7D32C();
  sub_1ABA9F620();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= v4)
          {
            goto LABEL_18;
          }

          v5 = *(v6 + 8 * v9);
          ++v7;
          if (v5)
          {
            v7 = v9;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1ABA978C4();
      if (v10)
      {
        goto LABEL_20;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v1 > *(v8 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v8 = v11;
      }

      v5 &= v5 - 1;
      if (!*(v3 + 16))
      {
        break;
      }

      sub_1ABA84218();
      if (v13 < v2)
      {
        goto LABEL_21;
      }

      sub_1ABAA1FF8(v12);
      swift_arrayInitWithCopy();

      if (v2)
      {
        v14 = *(v8 + 16);
        v10 = __OFADD__(v14, v2);
        v15 = v14 + v2;
        if (v10)
        {
          goto LABEL_22;
        }

        *(v8 + 16) = v15;
      }
    }
  }

  while (!v2);
  __break(1u);
LABEL_18:

  sub_1ABA7BC1C();
}

void sub_1ABD7D9A8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD88DC);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DA50(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAAA4F4);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DAF4(uint64_t a1)
{
  v4 = sub_1ABA8C2B8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD89C8);
  sub_1ABA9FB84();
  if (!v6)
  {

    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v8 < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABA8A9A4(v7);

  if (!v2)
  {
LABEL_8:
    *v1 = v3;
    return;
  }

  sub_1ABA9FC68();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DB90(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD89DC);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DC38(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8B6C);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DCE0(uint64_t a1)
{
  v6 = sub_1ABA8CB70(a1);
  if (v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1ABD8E17C(v6, 1, sub_1ABAD89C8);
  sub_1ABAA0058();
  sub_1ABB65600();
  if (v8 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8)
  {
    v12 = *(v1 + 16);
    v7 = __OFADD__(v12, v8);
    v13 = v12 + v8;
    if (v7)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v8 != v4)
  {
    v8 = v34;
LABEL_8:
    sub_1ABAB4C48(v8);
    *v2 = v1;
    return;
  }

LABEL_11:
  v3 = *(v1 + 16);
  v8 = v34;
  v9 = v35;
  v10 = v36;
  v11 = v37;
  if (v38)
  {
    sub_1ABAA117C();
LABEL_19:
    v18 = 0;
    v19 = *(*(v8 + 48) + 8 * v15);
LABEL_20:
    while ((v18 & 1) == 0)
    {
      v20 = *(v1 + 24) >> 1;
      if (v20 < v3 + 1)
      {
        v32 = v19;
        v33 = v8;
        v30 = v10;
        v31 = v9;
        sub_1ABD91568();
        sub_1ABAD89C8(v25, v26, v27, v28);
        v9 = v31;
        v19 = v32;
        v14 = v1;
        v11 = v5;
        v10 = v30;
        v1 = v29;
        v8 = v33;
        v20 = *(v1 + 24) >> 1;
      }

      v18 = 0;
      v21 = v1 + 32;
      while (1)
      {
LABEL_24:
        if ((v18 & 1) != 0 || v3 >= v20)
        {
          *(v1 + 16) = v3;
          goto LABEL_20;
        }

        *(v21 + 8 * v3++) = v19;
        if (!v14)
        {
          break;
        }

LABEL_30:
        sub_1ABAA01E0();
        v19 = *(*(v8 + 48) + ((v23 << 9) | (8 * v24)));
      }

      while (1)
      {
        v22 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v22 >= v4)
        {
          v19 = 0;
          v14 = 0;
          v18 = 1;
          goto LABEL_24;
        }

        ++v11;
        if (*(v9 + 8 * v22))
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_34:
      v19 = 0;
      v14 = 0;
      v18 = 1;
    }

    goto LABEL_8;
  }

LABEL_14:
  v4 = (v10 + 64) >> 6;
  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v4)
    {
      goto LABEL_34;
    }

    v17 = *(v9 + 8 * v16);
    ++v11;
    if (v17)
    {
      v14 = (v17 - 1) & v17;
      v15 = __clz(__rbit64(v17)) | (v16 << 6);
      v11 = v16;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1ABD7DEE8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8E08);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DFB4(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8EE4);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E05C(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8758);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E104(uint64_t a1)
{
  v4 = sub_1ABA8C2B8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD91B4);
  sub_1ABA9FB84();
  if (!v6)
  {

    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v8 < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABA8A9A4(v7);

  if (!v2)
  {
LABEL_8:
    *v1 = v3;
    return;
  }

  sub_1ABA9FC68();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1ABD7E1A0(uint64_t a1)
{
  v3 = sub_1ABAAB7C8(a1);
  v4 = sub_1ABAAB7C8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1ABD8E0DC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1ABB4E3FC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1ABD7E24C(uint64_t a1)
{
  v5 = sub_1ABA8C2B8(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v5, 1, sub_1ABADA2B4);
  sub_1ABA9FB84();
  if (!v7)
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v4 + 4 * v8 + 32), (v1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v4;
    return;
  }

  sub_1ABA9FC68();
  if (!v6)
  {
    *(v4 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E2F8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADA86C);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E3A0(uint64_t a1)
{
  v6 = sub_1ABA8CB70(a1);
  if (v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1ABD8E17C(v6, 1, sub_1ABADA93C);
  sub_1ABAA0058();
  sub_1ABB65F20();
  if (v8 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8)
  {
    v12 = *(v1 + 16);
    v7 = __OFADD__(v12, v8);
    v13 = v12 + v8;
    if (v7)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v8 != v4)
  {
    v8 = v36;
LABEL_8:
    sub_1ABAB4C48(v8);
    *v2 = v1;
    return;
  }

LABEL_11:
  v3 = *(v1 + 16);
  v8 = v36;
  v9 = v37;
  v10 = v38;
  v11 = v39;
  if (v40)
  {
    sub_1ABAA117C();
LABEL_19:
    v19 = (*(v8 + 48) + 24 * v15);
    v16 = *v19;
    for (i = *(v19 + 8); ; i = 0uLL)
    {
      v21 = 24;
LABEL_21:
      if (v16 == 3)
      {
        break;
      }

      v22 = *(v1 + 24) >> 1;
      if (v22 < v3 + 1)
      {
        v34 = v16;
        v35 = v8;
        v32 = v10;
        v33 = v9;
        sub_1ABD91568();
        v31 = v29;
        sub_1ABADA93C();
        i = v31;
        v9 = v33;
        v16 = v34;
        v21 = 24;
        v14 = v1;
        v11 = v5;
        v10 = v32;
        v1 = v30;
        v8 = v35;
        v22 = *(v1 + 24) >> 1;
      }

      v23 = v1 + 32;
      while (1)
      {
LABEL_25:
        if (v16 == 3 || v3 >= v22)
        {
          *(v1 + 16) = v3;
          goto LABEL_21;
        }

        v25 = v23 + v3 * v21;
        *v25 = v16;
        *(v25 + 8) = i;
        ++v3;
        if (!v14)
        {
          break;
        }

LABEL_34:
        sub_1ABAA01E0();
        v28 = (*(v8 + 48) + (v27 | (v26 << 6)) * v21);
        v16 = *v28;
        i = *(v28 + 8);
      }

      while (1)
      {
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v16 >= v4)
        {
          v14 = 0;
          i = 0uLL;
          v16 = 3;
          goto LABEL_25;
        }

        ++v11;
        if (*(v9 + 8 * v16))
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_37:
      v14 = 0;
    }

    goto LABEL_8;
  }

LABEL_14:
  v4 = (v10 + 64) >> 6;
  v16 = 3;
  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v4)
    {
      goto LABEL_37;
    }

    v18 = *(v9 + 8 * v17);
    ++v11;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v11 = v17;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1ABD7E5D4(uint64_t a1)
{
  v5 = sub_1ABA8C2B8(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v5, 1, sub_1ABADAA14);
  sub_1ABA9FB84();
  if (!v7)
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v4 + 32 * v8 + 32), (v1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v4;
    return;
  }

  sub_1ABA9FC68();
  if (!v6)
  {
    *(v4 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E680(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADB5D8);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E750(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADBBE0);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1ABD7E824(uint64_t a1)
{
  result = sub_1ABA7DC38(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1ABD8E17C(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void GraphNode.asEntity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 34);
  if (v2 == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 != 1;
}

uint64_t sub_1ABD7E954(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1ABD8E1F4(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1ABD7E9F0(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x73736563637573;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x746C757365526F6ELL;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v3, v2);
}

uint64_t sub_1ABD7EAA4(char a1)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = 0x80000001ABF7EE20;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x7865646E496F6ELL;
      break;
    case 3:
      v4 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      v2 = 0xED00007865646E49;
      v3 = 0x79676F6C6F746E6FLL;
      break;
    case 5:
      v2 = 0xEC0000007865646ELL;
      v3 = 0x49747865746E6F63;
      break;
    case 6:
      v4 = 0x476C61636F6CLL;
LABEL_9:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v2 = 0xEF7865646E496870;
      break;
    case 7:
      v2 = 0x80000001ABF7EE80;
      v3 = 0xD00000000000001ALL;
      break;
    case 8:
      v2 = 0x80000001ABF7EEA0;
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v3, v2);
}

uint64_t sub_1ABD7EBFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1ABAF81A8(), (v4 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v3);
    swift_bridgeObjectRetain_n();
    sub_1ABD7E954(&v7, sub_1ABE7A20C, &type metadata for ExtendedTriple, sub_1ABD8E3F0, sub_1ABD8E2FC);

    v5 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1ABD7ECF8@<X0>(uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  sub_1ABB6BA54(sub_1ABD910D8, nullsub_1, 0, sub_1ABD910BC, v4, v11);

  if (v2)
  {
  }

  v15 = *&v11[0];
  swift_beginAccess();
  v6 = *(v4 + 16);

  sub_1ABB6B738(&v15, v6, v11);

  v7 = v11[1];
  v8 = v12;
  v9 = v13;
  v10 = v14;
  *a2 = v11[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  return result;
}

void *sub_1ABD7EE58(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v45 = MEMORY[0x1E69E7CC8];
  v41 = *(a1 + 16);
  v4 = 32;
  v40 = xmmword_1ABF34740;
  while (1)
  {
    if (v41 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v42 = v2;
    v5 = v1;
    v6 = v4;
    memcpy(__dst, (v1 + v4), 0x70uLL);
    v7 = BYTE2(__dst[4]);
    v8 = BYTE2(__dst[4]) != 1;
    if (BYTE2(__dst[4]) == 1)
    {
      v9 = __dst[0];
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1ABAF82A0(v9, BYTE2(__dst[4]) != 1);
    v12 = v3[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v11;
    if (v3[3] >= v14)
    {
      v24 = v10;
      sub_1ABAE441C(__dst, v43);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAE441C(__dst, v43);
      sub_1ABC040AC(v14, 1, v16, v17, v18, v19, v20, v21, v38, v39, v40, SBYTE4(v40));
      v3 = v45;
      v22 = sub_1ABAF82A0(v9, v8);
      if ((v15 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

      v24 = v22;
      if (v15)
      {
LABEL_14:
        v31 = v3[7];
        v32 = *(v31 + 8 * v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 8 * v24) = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABAD8BA4();
          v32 = v35;
          *(v31 + 8 * v24) = v35;
        }

        v34 = *(v32 + 16);
        if (v34 >= *(v32 + 24) >> 1)
        {
          sub_1ABAD8BA4();
          v32 = v36;
          *(v31 + 8 * v24) = v36;
        }

        v1 = v5;
        v30 = v6;
        *(v32 + 16) = v34 + 1;
        memcpy((v32 + 112 * v34 + 32), __dst, 0x70uLL);
        goto LABEL_19;
      }
    }

    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v25 = swift_allocObject();
    *(v25 + 16) = v40;
    memcpy((v25 + 32), __dst, 0x70uLL);
    v3[(v24 >> 6) + 8] |= 1 << v24;
    v26 = v3[6] + 16 * v24;
    *v26 = v9;
    *(v26 + 8) = v7 != 1;
    *(v3[7] + 8 * v24) = v25;
    v27 = v3[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v3[2] = v29;
    v1 = v5;
    v30 = v6;
LABEL_19:
    v4 = v30 + 112;
    v2 = v42 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1ABAD219C(&qword_1EB4D9500, &qword_1ABF60F18);
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t Array<A>.graphObjectContext()@<X0>(void *a1@<X8>)
{

  return CustomKnosisResultContext.init<>(knosisAnswers:)(v2, a1);
}

void *Array<A>.entityIdsWithAnswers()(void *result)
{
  v1 = 0;
  v2 = result[2];
  v3 = result + 4;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = &v3[14 * v1]; ; i += 112)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    result = memcpy(__dst, i, 0x70uLL);
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v7 = __dst[0];
      sub_1ABAE441C(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADAC00();
        v4 = v11;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1ABA9A58C(v8);
        sub_1ABADAC00();
        v4 = v12;
      }

      memcpy(__src, __dst, sizeof(__src));
      *(v4 + 16) = v9 + 1;
      v10 = v4 + 120 * v9;
      *(v10 + 32) = v7;
      result = memcpy((v10 + 40), __src, 0x70uLL);
      v1 = v6;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1ABD7F2B4@<X0>(uint64_t x8_0@<X8>)
{

  sub_1ABD7F324(x8_0);
}

void sub_1ABD7F324(uint64_t a1@<X8>)
{
  sub_1ABD7F3CC(v5);
  v2 = v6;
  if (HIBYTE(v6) <= 0xFEu)
  {
    if ((v6 & 0x100) != 0)
    {
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      v3 = v5[1];
      v4 = v5[2];
      *a1 = v5[0];
      *(a1 + 16) = v3;
      *(a1 + 32) = v4;
      *(a1 + 48) = v2;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

double sub_1ABD7F3CC@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  sub_1ABC82568();
  v14 = *&v10[0];
  swift_beginAccess();
  v4 = *v3;

  sub_1ABB6B738(&v14, v4, v10);

  result = *v10;
  v6 = v10[1];
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

double sub_1ABD7F5B0@<D0>(uint64_t a1@<X8>)
{

  sub_1ABD7ECF8(v8);
  if (!v1)
  {
    result = *v8;
    v4 = v8[1];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    *a1 = v8[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1ABD7F604(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v28 = a1[2];
  v25 = v15;
  v24 = *(a1 + 32);
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v27[3] = swift_getAssociatedTypeWitness();
  v16 = sub_1ABA93DC0(v27);
  sub_1ABAD219C(&qword_1EB4D6150, &unk_1ABF4FF30);
  CustomKnosisResultContext.getOrInitInitializationResources<A>(for:)(a2, a2, a3, v16);
  if (*(a4 + 16) && (v17 = sub_1ABAF8328(), (v18 & 1) != 0))
  {
    v19 = *(*(a4 + 56) + 48 * v17 + 16);

    v20 = sub_1ABD7D2BC(a5);
    sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v26[0] = v21;
    v19(v26, v27);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v22 = v13;
    *(v22 + 8) = v14;
    *(v22 + 16) = v28;
    *(v22 + 24) = v25;
    *(v22 + 32) = v24;
    swift_willThrow();
    sub_1ABAFF06C(a1, v26);
  }

  return sub_1ABA84B54(v27);
}

void sub_1ABD7F7EC(unint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t)@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  EntityClass.init(intValue:)(HIBYTE(a1), &v33);
  v9 = *(&v33 + 1);
  if (!*(&v33 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24674();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = a4;
      v20 = swift_slowAlloc();
      *&v33 = v20;
      *v18 = 136315138;
      *&v30 = a1;
      v21 = EntityIdentifier.stringValue.getter();
      v23 = sub_1ABADD6D8(v21, v22, &v33);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1ABA78000, v16, v17, "untypedId.entityClass for %s is nil in createDynamicGraphObject", v18, 0xCu);
      sub_1ABA84B54(v20);
      v24 = v20;
      a4 = v19;
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
    }

    sub_1ABB6DA08();
    v25 = swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 33) = 0u;
    *(v26 + 49) = 2;
    goto LABEL_11;
  }

  v10 = v33;
  v11 = v34;
  v12 = v35;
  v38 = v33;
  v39 = v34;
  v40 = v35;
  sub_1ABAD51A4();
  v13 = v36;
  if (v36)
  {
    v29 = a4;
    v14 = v37;

    v30 = v38;
    v31 = v39;
    LOBYTE(v32) = v40;
    a2(&v33, &v30, v13, v14);
    sub_1ABAA8FA8(v10, v9, v11, *(&v11 + 1));
    v30 = v33;
    v31 = v34;
    *&v32 = v35;
    a4 = v29;
    if (*(&v34 + 1))
    {
      sub_1ABAFF5C4(&v30, &v33);
      sub_1ABAFF5C4(&v33, v29);
      *(v29 + 40) = 0;
      return;
    }

    sub_1ABA925A4(&v30, &qword_1EB4D6358, &unk_1ABF50900);
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    v28 = -1;
    goto LABEL_17;
  }

  if (a3)
  {
    sub_1ABC8229C();
    v25 = swift_allocError();
    *v27 = v10;
    *(v27 + 8) = v9;
    *(v27 + 16) = v11;
    *(v27 + 32) = v12;
LABEL_11:
    swift_willThrow();
    *a4 = v25;
    v28 = 1;
LABEL_17:
    *(a4 + 40) = v28;
    return;
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 40) = -1;

  sub_1ABAA8FA8(v10, v9, v11, *(&v11 + 1));
}

uint64_t KnosisResult.Status.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      result = 0x746C757365526F6ELL;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0x746E65746E496F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::KnosisResult::Status_optional __swiftcall KnosisResult.Status.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABD7FDE0@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisResult.Status.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KnosisResult.queryFeatures.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1ABD8DE70(v2, v3);
}

__n128 KnosisResult.queryFeatures.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1ABD8DED4(*(v1 + 88), *(v1 + 96));
  v4 = *a1;
  *(v1 + 104) = a1[1];
  *(v1 + 88) = v4;
  result = v6;
  *(v1 + 120) = v6;
  *(v1 + 136) = v3;
  return result;
}

uint64_t KnosisResult.debug.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1ABAFEE18(v2, v3);
}

__n128 KnosisResult.debug.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1ABAFEE5C(v1[18], v1[19]);
  result = v4;
  *(v1 + 9) = v4;
  v1[20] = v2;
  return result;
}

uint64_t KnosisResult.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF8F020);
  v5 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v5);
  MEMORY[0x1AC5A9410](0x3A74696D696C20, 0xE700000000000000);
  sub_1ABAA015C();
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](0x3A74657366666F20, 0xE800000000000000);
  sub_1ABAA015C();
  v7 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](0x3A73757461747320, 0xE800000000000000);
  sub_1ABD7E9F0(v4);
  v8 = sub_1ABA8A66C();
  MEMORY[0x1AC5A9410](v8, 0xE90000000000003ALL);
  v9 = MEMORY[0x1AC5A9750](v1, &type metadata for KnosisAnswer);
  MEMORY[0x1AC5A9410](v9);

  MEMORY[0x1AC5A9410](0x654D726F72726520, 0xEE003A6567617373);
  MEMORY[0x1AC5A9410](v2, v3);
  sub_1ABA83AA4();
  return 0;
}

uint64_t KnosisResult.answerIds.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = (v1 + 32);
  do
  {
    v5 = memcpy(__dst, v4, 0x70uLL);
    v13 = __dst[0];
    v14 = __dst[1];
    switch(BYTE2(__dst[4]))
    {
      case 1:
        sub_1ABAA31F0();
        if ((v13 & 0x80000000000000) == 0)
        {
          v28 += 1272;
        }

        sub_1ABA89CD8(v20, v21, v22, v23, v24, v25, v26, v27, v13, v28, 0xE300000000000000, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        sub_1ABA894EC();
        v29 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v29);

        v13 = v37;
        v14 = v38;
        break;
      case 2:
      case 3:
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);

        break;
      case 4:
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        v13 = 0;
        v14 = 0xE000000000000000;
        break;
      default:
        v15 = LOWORD(__dst[4]);
        sub_1ABA89CD8(v5, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        sub_1ABA954F0();
        sub_1ABAA2D68();
        sub_1ABAE4358(v16, v17, v18, v19, v15, 0);
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7E974();
      sub_1ABAAA4F4();
      v3 = v33;
    }

    v31 = *(v3 + 16);
    v30 = *(v3 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1ABA8E370(v30);
      sub_1ABAAA4F4();
      v3 = v34;
    }

    sub_1ABC6D404(__dst);
    *(v3 + 16) = v31 + 1;
    v32 = v3 + 16 * v31;
    *(v32 + 32) = v13;
    *(v32 + 40) = v14;
    v4 += 112;
    --v2;
  }

  while (v2);
  return v3;
}

void KnosisResult.answerFacts.getter()
{
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v25 = *(v3 + 16);
    v26 = *(v0 + 32);
    v24 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 + 112 * v5 + 80);
      v30 = *(v8 + 16);
      if (v30)
      {
        v27 = v5;
        v29 = v8 + 32;

        v10 = 0;
        v28 = v9;
LABEL_6:
        if (v10 >= *(v9 + 16))
        {
LABEL_37:
          __break(1u);
          break;
        }

        v11 = *(v29 + 112 * v10 + 72);
        v31 = v10 + 1;
        v12 = 1 << *(v11 + 32);
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v11 + 64);
        v15 = (v12 + 63) >> 6;

        v16 = 0;
        while (v14)
        {
LABEL_16:
          sub_1ABD91530();
          v18 = *(v7 + 16);
          if (__OFADD__(v18, v1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v1 > *(v7 + 24) >> 1)
          {
            sub_1ABA898F8();
            sub_1ABAD88DC();
            v7 = v19;
          }

          v14 &= v14 - 1;
          if (*(v2 + 16))
          {
            sub_1ABA84218();
            if (v20 < v1)
            {
              goto LABEL_35;
            }

            swift_arrayInitWithCopy();

            if (v1)
            {
              v21 = *(v7 + 16);
              v22 = __OFADD__(v21, v1);
              v23 = v21 + v1;
              if (v22)
              {
                goto LABEL_36;
              }

              *(v7 + 16) = v23;
            }
          }

          else
          {

            if (v1)
            {
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            return;
          }

          if (v17 >= v15)
          {
            break;
          }

          v14 = *(v11 + 64 + 8 * v17);
          ++v16;
          if (v14)
          {
            v16 = v17;
            goto LABEL_16;
          }
        }

        v10 = v31;
        v9 = v28;
        if (v31 != v30)
        {
          goto LABEL_6;
        }

        v4 = v25;
        v3 = v26;
        v5 = v27;
        v6 = v24;
      }

      if (++v5 == v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t KnosisResult.graphObjectContext()@<X0>(void *a1@<X8>)
{

  return CustomKnosisResultContext.init<>(knosisAnswers:)(v2, a1);
}

Swift::String __swiftcall KnosisResult.finalAnswer(sortByText:)(Swift::Bool sortByText)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 112;
  if (sortByText)
  {
    while (1)
    {
      if (!v3)
      {
        v36 = v4;

        v5 = 0;
        sub_1ABD7E954(&v36, sub_1ABE7A224, MEMORY[0x1E69E6158], sub_1ABAF206C, sub_1ABAF1FA4);

        v4 = v36;
        goto LABEL_19;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      sub_1ABAA0498();
      if (v1)
      {
        v7 = *v6;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABAAA4F4();
          v4 = v10;
        }

        v8 = v4[2];
        if (v8 >= v4[3] >> 1)
        {
          sub_1ABA898F8();
          sub_1ABAAA4F4();
          v4 = v11;
        }

        v4[2] = v8 + 1;
        v9 = &v4[2 * v8];
        v9[4] = v7;
        v9[5] = v1;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  while (v3)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_35;
    }

    sub_1ABAA0498();
    if (v1)
    {
      v13 = *v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7E974();
        sub_1ABAAA4F4();
        v4 = v16;
      }

      v14 = v4[2];
      if (v14 >= v4[3] >> 1)
      {
        sub_1ABA898F8();
        sub_1ABAAA4F4();
        v4 = v17;
      }

      v4[2] = v14 + 1;
      v15 = &v4[2 * v14];
      v15[4] = v13;
      v15[5] = v1;
    }
  }

LABEL_19:
  v18 = v4[2];
  v19 = v18 - 1;
  if (v18 == 1)
  {
    v21 = v4[4];
    v20 = v4[5];
  }

  else
  {
    if (v18)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1ABF24AB4();

      v36 = 0x7261206572656854;
      v37 = 0xEA00000000002065;
      v22 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v22);

      v23 = sub_1ABA8A66C();
      MEMORY[0x1AC5A9410](v23, 0xEA00000000000A3ALL);
      v24 = 0;
      v25 = v4 + 5;
      while (v24 < v4[2])
      {
        v5 = v24 + 1;
        v27 = *(v25 - 1);
        v26 = *v25;

        v34 = sub_1ABF24FF4();
        v35 = v28;
        MEMORY[0x1AC5A9410](8238, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v27, v26);

        MEMORY[0x1AC5A9410](v34, v35);

        if (v24 >= v19)
        {
          v29 = 0;
        }

        else
        {
          v29 = 2604;
        }

        if (v24 >= v19)
        {
          v30 = 0xE000000000000000;
        }

        else
        {
          v30 = 0xE200000000000000;
        }

        MEMORY[0x1AC5A9410](v29, v30);

        v25 += 2;
        --v18;
        ++v24;
        if (!v18)
        {

          v21 = v36;
          v20 = v37;
          goto LABEL_33;
        }
      }

LABEL_36:
      __break(1u);

      __break(1u);
      goto LABEL_37;
    }

    v20 = 0xEA00000000002E72;
    v21 = 0x6577736E61206F4ELL;
  }

LABEL_33:
  v31 = v21;
  v32 = v20;
LABEL_37:
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_1ABD8091C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7432043 && a2 == 0xE300000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4165726F4D736168 && a2 == 0xEE0073726577736ELL;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6165467972657571 && a2 == 0xED00007365727574;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t sub_1ABD80C24(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 7432043;
      break;
    case 2:
      result = 0x73726577736E61;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0x73654D726F727265;
      break;
    case 5:
      result = 0x74696D696CLL;
      break;
    case 6:
      result = 0x74657366666FLL;
      break;
    case 7:
      result = 0x4165726F4D736168;
      break;
    case 8:
      result = 0x6165467972657571;
      break;
    case 9:
      result = 0x6775626564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD80D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD8091C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD80D7C(uint64_t a1)
{
  v2 = sub_1ABD8DF38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD80DB8(uint64_t a1)
{
  v2 = sub_1ABD8DF38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KnosisResult.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D9278, &qword_1ABF5FD30);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v12 = v0[11];
  v13 = v0[12];
  v10 = v0[18];
  v11 = v0[19];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD8DF38();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (!v1)
  {
    sub_1ABF24F34();
    sub_1ABAD219C(&qword_1EB4D9288, &qword_1ABF5FD38);
    sub_1ABAA3D54();
    sub_1ABD8F9F8(v5, v6, &qword_1ABF5FD38, v7);
    sub_1ABAA1A58();
    sub_1ABF24F84();
    sub_1ABD8DFE0();
    sub_1ABAA1A58();
    sub_1ABF24F84();
    sub_1ABF24F34();
    sub_1ABF24F74();
    sub_1ABF24F74();
    sub_1ABF24F44();
    sub_1ABD8DE70(v12, v13);
    sub_1ABD8E034();
    sub_1ABAA1A58();
    sub_1ABF24F14();
    sub_1ABD8DED4(v12, v13);
    sub_1ABAFEE18(v10, v11);
    sub_1ABD8E088();
    sub_1ABAA1A58();
    sub_1ABF24F14();
    sub_1ABAFEE5C(v10, v11);
  }

  v8 = sub_1ABA8A40C();
  v9(v8);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t *sub_1ABD811F4(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v5 + 112 * v2; ; i += 112)
  {
    if (v4 == v2)
    {
      return v6;
    }

    if (v2 >= v4)
    {
      break;
    }

    sub_1ABA9538C();
    result = memcpy(v8, v9, v10);
    if (__OFADD__(v2, 1))
    {
      goto LABEL_18;
    }

    if (BYTE2(__src[4]) == 1 && v3 == __src[0])
    {
      sub_1ABAE441C(__src, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADDD5C(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ABADDD5C((v13 > 1), v14 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v14 + 1;
      result = memcpy((v6 + 112 * v14 + 32), __src, 0x70uLL);
      ++v2;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

char *sub_1ABD81330(char *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = result + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v4)
    {
      return v7;
    }

    if (v3 >= v4)
    {
      break;
    }

    result = memcpy(__dst, (v5 + 112 * v3), sizeof(__dst));
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v9 = *(v2 + 2);
      v10 = v6;
      while (v9)
      {
        v11 = *v10;
        v10 += 8;
        --v9;
        if (v11 == __dst[0])
        {
          sub_1ABAE441C(__dst, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABADDD5C(0, *(v7 + 16) + 1, 1);
            v7 = v17;
          }

          v14 = *(v7 + 16);
          v13 = *(v7 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1ABADDD5C((v13 > 1), v14 + 1, 1);
            v7 = v17;
          }

          *(v7 + 16) = v14 + 1;
          result = memcpy((v7 + 112 * v14 + 32), __dst, 0x70uLL);
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

char *sub_1ABD81474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  result = sub_1ABF24214();
  v9 = result;
  v10 = 0;
  v11 = *(a2 + 16);
  v12 = result + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v10 == v11)
    {

      return v13;
    }

    if (v10 >= v11)
    {
      break;
    }

    result = memcpy(__dst, (a2 + 32 + 112 * v10), sizeof(__dst));
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_16;
    }

    if (BYTE2(__dst[4]) == 1)
    {
      v15 = *(v9 + 2);
      v16 = v12;
      while (v15)
      {
        v17 = *v16;
        v16 += 8;
        --v15;
        if (v17 == __dst[0])
        {
          sub_1ABAE441C(__dst, v22);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABADDD5C(0, *(v13 + 16) + 1, 1);
            v13 = v24;
          }

          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1ABADDD5C((v19 > 1), v20 + 1, 1);
            v13 = v24;
          }

          *(v13 + 16) = v20 + 1;
          result = memcpy((v13 + 112 * v20 + 32), __dst, 0x70uLL);
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void Array<A>.triples(for:)(uint64_t *a1, uint64_t a2)
{
  v17 = *a1;
  v4 = sub_1ABD811F4(&v17, a2);
  Array<A>.triplesWithParentAnswers()(v4);
  sub_1ABA96100();

  if (v3)
  {
LABEL_17:
    sub_1ABA950A4();
  }

  else
  {
    v5 = 0;
    v6 = *(v2 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 16)
    {
      if (v6 == v5)
      {

        goto LABEL_17;
      }

      if (v5 >= *(v2 + 16))
      {
        break;
      }

      v9 = *(v2 + i);
      v10 = *(v9 + 16);
      v11 = *(v7 + 16);
      if (__OFADD__(v11, v10))
      {
        goto LABEL_19;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v7 + 24) >> 1)
      {
        sub_1ABAD89DC();
        v7 = v12;
      }

      if (*(v9 + 16))
      {
        sub_1ABA83ABC();
        if (v13 < v10)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v7 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v16;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_20;
        }
      }

      ++v5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1ABD81810(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1;
  sub_1ABD811F4(&v6, a2);
  v4 = a3();

  return v4;
}

uint64_t Array<A>.triplesWithParentAnswers()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1ABADDD3C(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x70uLL);
      memcpy(v14, v4, sizeof(v14));
      sub_1ABAE441C(__dst, v13);
      KnosisAnswer.extendedTriples()();
      v6 = v5;
      v7 = __dst[10];

      sub_1ABC6D404(__dst);
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = sub_1ABA7BBEC(v8);
        sub_1ABADDD3C(v11, v9 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += 112;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t Array<A>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = Array<A>.triplesWithParentAnswers<A>(for:)(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1ABD7D45C(v5);
    sub_1ABAB5148();
  }

  return sub_1ABA950A4();
}

void *Array<A>.triplesWithParentAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABD81474(a1, a2, a3, a4);
  v4 = sub_1ABD81A34();

  return v4;
}

void *sub_1ABD81A34()
{

  v2 = sub_1ABD7EE58(v1);
  v3 = v0;
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  sub_1ABB668FC();
  v4 = sub_1ABF239C4();
  v5 = 0;
  v6 = v2 + 8;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v2[8];
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v5 << 6);
    v14 = v2[6] + 16 * v13;
    if ((*(v14 + 8) & 1) == 0)
    {
      v39 = v3;
      v40 = *v14;
      v15 = *(v2[7] + 8 * v13);
      v16 = *(v15 + 16);
      v38 = v2;
      if (v16)
      {
        v37 = v4;
        v48 = MEMORY[0x1E69E7CC0];

        sub_1ABADDD3C(0, v16, 0);
        v17 = 0;
        v18 = v48;
        v41 = v16 - 1;
        v42 = v15;
        v19 = 32;
        while (v17 < *(v15 + 16))
        {
          v43 = v17;
          v20 = v18;
          memcpy(__dst, (v15 + v19), 0x70uLL);
          memcpy(v46, (v15 + v19), sizeof(v46));
          sub_1ABAE441C(__dst, v45);
          KnosisAnswer.extendedTriples()();
          v22 = v21;
          v23 = __dst[10];

          sub_1ABC6D404(__dst);
          v18 = v20;
          v48 = v20;
          v25 = *(v20 + 16);
          v24 = *(v20 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1ABADDD3C((v24 > 1), v25 + 1, 1);
            v18 = v48;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          if (v41 == v43)
          {
            v44 = v18;

            v4 = v37;
            goto LABEL_19;
          }

          v19 += 112;
          v17 = v43 + 1;
          v15 = v42;
        }

        goto LABEL_30;
      }

      v44 = MEMORY[0x1E69E7CC0];
LABEL_19:
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v4;
      v27 = sub_1ABAF81A8();
      if (__OFADD__(v4[2], (v28 & 1) == 0))
      {
        goto LABEL_31;
      }

      v29 = v27;
      v30 = v28;
      sub_1ABAD219C(&qword_1EB4D94F8, &qword_1ABF60F10);
      if (sub_1ABF24C64())
      {
        v31 = sub_1ABAF81A8();
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_33;
        }

        v29 = v31;
      }

      v4 = __dst[0];
      if (v30)
      {
        *(*(__dst[0] + 56) + 8 * v29) = v44;
      }

      else
      {
        *(__dst[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v4[6] + 8 * v29) = v40;
        *(v4[7] + 8 * v29) = v44;
        v33 = v4[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_32;
        }

        v4[2] = v35;
      }

      v2 = v38;
      v3 = v39;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v4;
    }

    v9 = v6[v11];
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t Array<A>.triples()()
{
  v1 = sub_1ABD81A34();
  if (!v0)
  {
    sub_1ABD7D45C(v1);
    sub_1ABAB5148();
  }

  return sub_1ABA950A4();
}

void sub_1ABD81E0C()
{
  sub_1ABA7E2A8();
  *v1 = *v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 16);
      v8 = *(v5 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v5 + 24) >> 1)
      {
        sub_1ABA898F8();
        sub_1ABAD89DC();
        v5 = v9;
      }

      if (*(v6 + 16))
      {
        sub_1ABA84218();
        if (v10 < v7)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_17;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_15;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_13:
    sub_1ABA7BC1C();
  }
}

void KnosisAnswer.extendedTriples()()
{
  sub_1ABD7D6C8();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  for (i = 32; ; i += 144)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(v15, (v1 + i), sizeof(v15));
    KnosisFact.extendedTriples()();
    v7 = *(v6 + 16);
    v8 = *(v4 + 16);
    if (__OFADD__(v8, v7))
    {
      goto LABEL_17;
    }

    v9 = v6;
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v4 + 24) >> 1, v10 < v8 + v7))
    {
      sub_1ABAD89DC();
      v4 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (*(v9 + 16))
    {
      if (v10 - *(v4 + 16) < v7)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v12 = *(v4 + 16);
        v13 = __OFADD__(v12, v7);
        v14 = v12 + v7;
        if (v13)
        {
          goto LABEL_20;
        }

        *(v4 + 16) = v14;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t CustomKnosisResultContext.init<>(knosisAnswers:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectSynthesisDictionaryMapping.init()(&v7);
  v4 = v7;
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v5 = swift_allocObject();
  result = sub_1ABF239C4();
  *(v5 + 16) = result;
  *a2 = v4;
  a2[1] = a1;
  a2[2] = v5;
  return result;
}

void sub_1ABD8211C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  Array<A>.triples(for:)(a1, *v2);
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_1ABD8214C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = Array<A>.triples<A>(for:)(a2, *v4, a3, a4);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABD82184@<X0>(uint64_t *a1@<X8>)
{
  result = Array<A>.triples()();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CustomKnosisResultContext.init(knosisAnswers:objectMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a3);
  v7 = *(v6 + 40);
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1ABF239C4();
  *(a4 + v7) = v8;
  *(a4 + *(v6 + 36)) = a1;
  sub_1ABA8AD50();
  v9 = sub_1ABA8B14C();

  return v10(v9);
}

uint64_t sub_1ABD82358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v16;
  v34 = &v37;

  sub_1ABC81214(sub_1ABD914AC, v35);

  v17 = v36;
  if (HIBYTE(v36) > 0xFEu)
  {

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v19 = a4;
    v20 = 1;
    return sub_1ABA7B9B4(v19, v20, 1, TupleTypeMetadata2);
  }

  v32 = v35[0];
  if ((v36 & 0x100) == 0)
  {
    v30 = v35[2];
    v31 = v35[1];
    v28 = v35[4];
    v29 = v35[3];
    v27 = v35[5];
    (*(v9 + 16))(v11, v4, v8);
    CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(a2, v8, *(a3 + 24), v15);
    v21 = swift_getTupleTypeMetadata2();
    v22 = *(v21 + 48);
    v23 = v31;
    *a4 = v32;
    *(a4 + 8) = v23;
    v24 = v29;
    *(a4 + 16) = v30;
    *(a4 + 24) = v24;
    v25 = v27;
    *(a4 + 32) = v28;
    *(a4 + 40) = v25;
    *(a4 + 48) = v17;
    (*(v33 + 32))(a4 + v22, v15, a3);
    v19 = a4;
    v20 = 0;
    TupleTypeMetadata2 = v21;
    return sub_1ABA7B9B4(v19, v20, 1, TupleTypeMetadata2);
  }

  v37 = v32;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1ABD8262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABD82740(v4, *(a2 + 16), *(a2 + 24), a4);
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40, MEMORY[0x1E69E6328]);
  v5 = sub_1ABF23F24();

  return v5;
}

uint64_t (*sub_1ABD82740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1ABD91140;
}

void CustomKnosisResultContext.entityFromAnswers(for:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = CustomKnosisResultContext.tripleProvider.getter();
  v4 = sub_1ABA9F504(v3);

  Array<A>.triplesWithParentAnswers()(v4);
  sub_1ABAB5148();

  if (!v0)
  {
    v5 = *(v2 + 24);
    v6 = sub_1ABA8C744();
    v9 = sub_1ABD829C4(v6, v7, v5, v8);
    MEMORY[0x1EEE9AC00](v9);
    sub_1ABA97024();
    v10 = sub_1ABA8C744();
    sub_1ABAD219C(v10, v11);
    sub_1ABA8C7C0(0, &type metadata for Entity, v12, "entity parent ");
    sub_1ABA7D918();
    sub_1ABAA05C0(v13, v14, v15, v16);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD829C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1ABD91140;
}

void CustomKnosisResultContext.entitiesFromAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = CustomKnosisResultContext.tripleProvider.getter();
  Array<A>.triplesWithParentAnswers<A>(for:)(v30, v31, v26, v24);

  if (!v20)
  {
    v32 = *(v28 + 24);
    v33 = sub_1ABA8A40C();
    v35 = sub_1ABD82C80(v33, v34, v26, v32, v24);
    a10 = &a9;
    MEMORY[0x1EEE9AC00](v35);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABA8C7C0(255, &type metadata for Entity, v36, "entity parent ");
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABF23A24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD82C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for CustomKnosisResultContext(0, a2, a4, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1ABD911E4;
}

uint64_t CustomKnosisResultContext.entitiesGroupedByEntityIdentifierFromAnswers()(uint64_t a1)
{
  CustomKnosisResultContext.tripleProvider.getter();
  sub_1ABD81A34();

  if (!v2)
  {
    v4 = *(a1 + 24);
    v5 = sub_1ABA8C744();
    v8 = sub_1ABD82F7C(v5, v6, v4, v7);
    MEMORY[0x1EEE9AC00](v8);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABA8C7C0(255, &type metadata for Entity, v9, "entity parent ");
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    v1 = sub_1ABF23A24();
  }

  return v1;
}

uint64_t (*sub_1ABD82F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1ABD9116C;
}

void CustomKnosisResultContext.entitiesFromAnswers()()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = CustomKnosisResultContext.tripleProvider.getter();
  Array<A>.triplesWithParentAnswers()(v3);
  sub_1ABAB5148();

  if (!v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1ABA8C744();
    v8 = sub_1ABD83244(v5, v6, v4, v7);
    MEMORY[0x1EEE9AC00](v8);
    sub_1ABA97024();
    v9 = sub_1ABA8C744();
    sub_1ABAD219C(v9, v10);
    swift_getTupleTypeMetadata2();
    sub_1ABA7D918();
    sub_1ABAA05C0(v11, v12, v13, v14);
    sub_1ABD9150C();
    sub_1ABF23F24();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t (*sub_1ABD83244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1ABD91140;
}

uint64_t sub_1ABD8337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1ABF247E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = v52 - v13;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v67 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = v52 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_1ABF247E4();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v65 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v61 = (v52 - v22);
  v58 = a3;
  v59 = a6;
  v24 = type metadata accessor for TypedEntityIdentifier(255, a3, a6, v23);
  swift_getTupleTypeMetadata2();
  sub_1ABF24154();
  v52[1] = swift_getWitnessTable();
  v52[2] = v24;
  v70 = sub_1ABF239C4();
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v63 = (v14 + 16);
  v66 = (v14 + 32);
  v60 = (v64 + 32);
  v56 = a1;
  v57 = (v14 + 8);

  v31 = 0;
  v64 = TupleTypeMetadata2;
  while (v28)
  {
    v32 = v31;
LABEL_11:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v32 << 6);
    v36 = v55;
    v37 = *(*(v56 + 48) + 8 * v35);
    (*(v14 + 16))(v55, *(v56 + 56) + *(v14 + 72) * v35, a4);
    v39 = v64;
    v38 = v65;
    v40 = *(v64 + 48);
    *v65 = v37;
    v33 = v38;
    v41 = v36;
    TupleTypeMetadata2 = v39;
    (*(v14 + 32))(&v38[v40], v41, a4);
    v42 = 0;
LABEL_12:
    sub_1ABA7B9B4(v33, v42, 1, TupleTypeMetadata2);
    v43 = v61;
    (*v60)();
    if (sub_1ABA7E1E0(v43, 1, TupleTypeMetadata2) == 1)
    {

      return v70;
    }

    v44 = v43;
    v45 = *v43;
    (*v66)(v67, v44 + *(TupleTypeMetadata2 + 48), a4);
    v68 = v45;
    TypedEntityIdentifier.init(untyped:)(&v68, v58, v59, &v69);
    if (v7)
    {

      result = (*v57)(v67, a4);
      v7 = 0;
    }

    else
    {
      v46 = v69;
      v47 = *v63;
      v48 = v67;
      v49 = v14;
      v50 = v53;
      v54 = 0;
      v47(v53, v67, a4);
      sub_1ABA7B9B4(v50, 0, 1, a4);
      v69 = v46;
      sub_1ABF23A44();
      v14 = v49;
      sub_1ABF23A74();
      v51 = v48;
      TupleTypeMetadata2 = v64;
      result = (*v57)(v51, a4);
      v7 = v54;
    }
  }

  v33 = v65;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v28 = 0;
      v42 = 1;
      goto LABEL_12;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD83874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v53 = a3;
  v50 = a7;
  v44 = *(a4 + 16);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v15 = sub_1ABF252B4();
  v16 = sub_1ABF247E4();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = sub_1ABF247E4();
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v40 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v39 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v24 = a2;

  sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
  v25 = sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18, MEMORY[0x1E69E6328]);
  WitnessTable = swift_getWitnessTable();
  *(&v38 + 1) = &protocol witness table for ExtendedTriple;
  *&v38 = v25;
  v27 = v52;
  sub_1ABC80FCC(a5, v53, a5, v18, v51, v38, WitnessTable);
  if (sub_1ABA7E1E0(v18, 1, v15) == 1)
  {

    (*(v48 + 8))(v18, v49);
    sub_1ABA7B9B4(v21, 1, 1, a5);
    (*(v46 + 8))(v21, v47);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return sub_1ABA7B9B4(v50, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v30 = v54;
    sub_1ABD49B3C(v15, &v55, v21);
    if (v30)
    {
    }

    else
    {
      sub_1ABA7B9B4(v21, 0, 1, a5);
      v31 = v39;
      v54 = *(v40 + 32);
      v54(v39, v21, a5);
      v32 = v27;
      v33 = v44;
      (*(v42 + 16))(v41, v32, v44);
      v34 = v43;
      CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(v24, v33, *(a4 + 24), v43);
      v35 = swift_getTupleTypeMetadata2();
      v36 = *(v35 + 48);
      v37 = v50;
      v54(v50, v31, a5);
      (*(v45 + 32))(v37 + v36, v34, a4);
      return sub_1ABA7B9B4(v37, 0, 1, v35);
    }
  }
}

uint64_t sub_1ABD83DC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40, MEMORY[0x1E69E6328]);
  return sub_1ABF23F24();
}

uint64_t sub_1ABD83EB4@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = type metadata accessor for CustomKnosisResultContext(0, a3, a5, a3);
  return sub_1ABD83874(v11, v12, a2, v13, a4, a6, a7);
}

void CustomKnosisResultContext.graphObjectFromAnswers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  sub_1ABA8AB38();
  v24 = v23;
  v26 = *v25;
  v27 = CustomKnosisResultContext.tripleProvider.getter();
  a10 = v26;
  v28 = sub_1ABD811F4(&a10, v27);

  Array<A>.triplesWithParentAnswers()(v28);
  sub_1ABAB5148();

  if (!v20)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v29);
    sub_1ABAB58CC();
    v30 = sub_1ABA8C744();
    sub_1ABAD219C(v30, v31);
    sub_1ABA8C7C0(0, v24, v32, "graphObject parent ");
    sub_1ABA7D918();
    sub_1ABAA05C0(v33, v34, v35, v36);
    sub_1ABD9150C();
    sub_1ABAB67E0();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A, B>(for:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v24 = v0;
  v12 = CustomKnosisResultContext.tripleProvider.getter();
  v13 = *(v11 + 24);
  v29 = *(v11 + 16);
  v28[2] = v29;
  v28[3] = v9;
  v26 = v9;
  v27 = v13;
  v28[4] = v7;
  v28[5] = v13;
  v25 = v5;
  v28[6] = v5;
  v28[7] = v3;
  v15 = sub_1ABB444E4(sub_1ABC7D73C, v28, v7, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v14);
  sub_1ABD81330(v15, v12);

  v16 = sub_1ABD81A34();

  if (!v1)
  {
    v17 = sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    v23[1] = sub_1ABD8337C(v16, v29, v26, v17, v27, v25);
    v23[0] = v23;

    MEMORY[0x1EEE9AC00](v18);
    sub_1ABA9F7D8();
    type metadata accessor for TypedEntityIdentifier(v19, v20, v21, v22);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABAA399C();
    swift_getWitnessTable();
    sub_1ABF239B4();
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD84298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = type metadata accessor for CustomKnosisResultContext(0, a2, a4, a3);
  result = sub_1ABD83DC4(v10, 1, v11, a3, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers<A>(ofType:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v3 = v2;
  v5 = v4;
  CustomKnosisResultContext.tripleProvider.getter();
  sub_1ABD81A34();

  if (!v0)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    v7 = *(v5 + 24);
    sub_1ABA9F7D8();
    sub_1ABD8337C(v8, v9, v10, v6, v7, v1);
    v13[1] = v13;

    MEMORY[0x1EEE9AC00](v11);
    type metadata accessor for TypedEntityIdentifier(0, v3, v1, v12);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABAA399C();
    swift_getWitnessTable();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD84498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = type metadata accessor for CustomKnosisResultContext(0, a2, a4, a3);
  result = sub_1ABD83DC4(v10, 0, v11, a3, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A>(ofType:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v2 = v1;
  v3 = CustomKnosisResultContext.tripleProvider.getter();
  Array<A>.triplesWithParentAnswers()(v3);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v4);
    sub_1ABAB58CC();
    v5 = sub_1ABA8C744();
    sub_1ABAD219C(v5, v6);
    sub_1ABA8C7C0(0, v2, v7, "graphObject parent ");
    sub_1ABA7D918();
    sub_1ABAA05C0(v8, v9, v10, v11);
    sub_1ABD9150C();
    sub_1ABAB67E0();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD8460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v13 = sub_1ABA8ADB8();
  v17 = type metadata accessor for CustomKnosisResultContext(v13, v14, v16, v15);
  return sub_1ABD83874(v8, v9, a7, v17, a4, a6, v7);
}

uint64_t sub_1ABD84688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = v3;
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v8);
  if (*(v9 + 16))
  {
    v36 = v18;
    v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v17;
    v39 = v16;
    v40 = v15;
    v41 = a3;
    v42 = v4;
    v43 = v10;
    v49 = *(v9 + 32);
    v44 = v9;
    v19 = v12;
    v20 = v11;
    v21 = v13;

    sub_1ABAD219C(&qword_1EB4D93B0, &qword_1ABF5FF18);
    v22 = sub_1ABAB47C4(&qword_1EB4CE740, &qword_1EB4D93B0, &qword_1ABF5FF18, MEMORY[0x1E69E6328]);
    WitnessTable = swift_getWitnessTable();
    *&v35 = a2;
    *(&v35 + 1) = v22;
    sub_1ABC80E28(&v49, v20 & 1, v19, v45, v35, &protocol witness table for ExtendedTriple, v21, WitnessTable);
    if (v46 == 255)
    {

      sub_1ABA925A4(v45, qword_1EB4D3948, &qword_1ABF508F0);
      sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v28 = v41;
      v29 = 1;
    }

    else
    {
      v24 = v43;
      if (v46)
      {

        v49 = *&v45[0];
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        return swift_willThrowTypedImpl();
      }

      sub_1ABAFF5C4(v45, v47);
      sub_1ABAFF5C4(v47, v48);
      v30 = v38;
      (*(v39 + 16))(v36, v5, v38);
      v31 = v37;
      CustomKnosisResultContext.init(knosisAnswers:objectMapping:)(v24, v30, *(a2 + 24), v37);
      sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
      v32 = swift_getTupleTypeMetadata2();
      v33 = *(v32 + 48);
      v34 = v41;
      sub_1ABAFF5C4(v48, v41);
      (*(v40 + 32))(v34 + v33, v31, a2);
      v28 = v34;
      v29 = 0;
      TupleTypeMetadata2 = v32;
    }

    return sub_1ABA7B9B4(v28, v29, 1, TupleTypeMetadata2);
  }

  else
  {
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    v26 = swift_getTupleTypeMetadata2();
    return sub_1ABA7B9B4(a3, 1, 1, v26);
  }
}

uint64_t sub_1ABD84AA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
  sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
  swift_getTupleTypeMetadata2();
  sub_1ABAB47C4(&qword_1EB4D92C0, &qword_1EB4D92B8, &unk_1ABF5FD40, MEMORY[0x1E69E6328]);
  return sub_1ABF23F24();
}

uint64_t sub_1ABD84BA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *a1;
  v7 = type metadata accessor for CustomKnosisResultContext(0, a2, a3, a5);
  return sub_1ABD84688(v6, v7, a4);
}

void CustomKnosisResultContext.graphObjectFromAnswers<A>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v1 = CustomKnosisResultContext.tripleProvider.getter();
  v2 = sub_1ABA9F504(v1);

  Array<A>.triplesWithParentAnswers()(v2);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABAA13B0();
    v4 = sub_1ABA8C744();
    sub_1ABAD219C(v4, v5);
    v6 = sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    sub_1ABA8C7C0(0, v6, v7, "graphObject parent ");
    sub_1ABA7D918();
    sub_1ABAA05C0(v8, v9, v10, v11);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A, B>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  CustomKnosisResultContext.tripleProvider.getter();
  v5 = sub_1ABAA015C();
  Array<A>.triplesWithParentAnswers<A>(for:)(v5, v6, v4, v2);

  if (!v0)
  {
    v8[1] = v8;
    MEMORY[0x1EEE9AC00](v7);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD84EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>, uint64_t a7)
{
  v11 = *a1;
  v12 = type metadata accessor for CustomKnosisResultContext(0, a3, a5, a3);
  result = sub_1ABD84AA8(v11, a2, 1, v12, a4, a7);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

void CustomKnosisResultContext.graphObjectsGroupedByEntityIdentifierFromAnswers<A>(mapping:)()
{
  sub_1ABA7BCA8();
  CustomKnosisResultContext.tripleProvider.getter();
  sub_1ABD81A34();

  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1ABAD219C(&qword_1EB4D92B8, &unk_1ABF5FD40);
    sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    swift_getTupleTypeMetadata2();
    sub_1ABAA1CE0();
    sub_1ABF241F4();
    sub_1ABB668FC();
    sub_1ABA9F7D8();
    sub_1ABF239B4();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD850A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  v13 = type metadata accessor for CustomKnosisResultContext(0, a3, a5, a3);
  result = sub_1ABD84AA8(v12, a2, 1, v13, a4, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1ABD85134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v10[2] = a4;
  v11 = a1;
  v10[0] = a2;
  v10[1] = a3;

  v6 = Array<A>.triplesWithParentAnswers()(v5);

  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v10;
    v9[3] = &v11;
    v5 = sub_1ABE0F6E0(sub_1ABD91038, v9, v6);
  }

  return v5;
}

void CustomKnosisResultContext.graphObjectsFromAnswers<A>(mapping:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8AB38();
  v1 = CustomKnosisResultContext.tripleProvider.getter();
  Array<A>.triplesWithParentAnswers()(v1);
  sub_1ABAB5148();

  if (!v0)
  {
    sub_1ABA8B730();
    MEMORY[0x1EEE9AC00](v2);
    sub_1ABAA13B0();
    v3 = sub_1ABA8C744();
    sub_1ABAD219C(v3, v4);
    v5 = sub_1ABAE2850(&qword_1EB4D6360, &qword_1ABF50340);
    sub_1ABA8C7C0(0, v5, v6, "graphObject parent ");
    sub_1ABA7D918();
    sub_1ABAA05C0(v7, v8, v9, v10);
    sub_1ABD9150C();
    sub_1ABAB5154();
    sub_1ABF23F24();
    sub_1ABA96100();
  }

  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD85314@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_6;
  }

  v10 = *(result + 32);
  MEMORY[0x1EEE9AC00](result);

  sub_1ABD7F7EC(v10, sub_1ABD9109C, 1, v12);

  if (v13 == 255)
  {

    result = sub_1ABA925A4(v12, qword_1EB4D3948, &qword_1ABF508F0);
LABEL_6:
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  if (v13)
  {

    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1ABAFF5C4(v12, v14);
    sub_1ABAFF5C4(v14, v15);
    type metadata accessor for InitializationResourcesManager();
    v11 = swift_allocObject();

    *(v11 + 16) = sub_1ABF239C4();
    result = sub_1ABAFF5C4(v15, a7);
    *(a7 + 40) = a3;
    *(a7 + 48) = a2;
    *(a7 + 56) = v11;
  }

  return result;
}

uint64_t sub_1ABD854F4()
{
  v0 = sub_1ABA8ADB8();
  type metadata accessor for CustomKnosisResultContext(v0, v1, v2, v1);
  sub_1ABA9F7D8();
  return sub_1ABD84688(v3, v4, v5);
}

void (*sub_1ABD85624(void *a1))(void *a1)
{
  v2 = sub_1ABAFDD10(0x28uLL);
  *a1 = v2;
  v2[4] = CustomKnosisResultContext.objectMapping.modify();
  return sub_1ABC80470;
}

uint64_t sub_1ABD85680@<X0>(uint64_t *a1@<X8>)
{
  result = CustomKnosisResultContext.tripleProvider.getter();
  *a1 = result;
  return result;
}

uint64_t KnosisAnswer.answerId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1ABAA6150(*(v1 + 34), a1, v2, v3, v4, v5, v6);
}

__n128 KnosisAnswer.answerId.setter()
{
  sub_1ABA96494();
  sub_1ABC6D458(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 34));
  result = *v0;
  v5 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 34) = v3;
  return result;
}

uint64_t KnosisAnswer.name.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t KnosisAnswer.textualization.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t KnosisAnswer.facts.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t KnosisAnswer.parent.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t KnosisAnswer.requestIds.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

void KnosisAnswer.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 34);
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 96);
  v6 = 0xE000000000000000;
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v7 = 0;
  switch(v3)
  {
    case 1:
      v7 = EntityIdentifier.stringValue.getter();
      v6 = v8;
      break;
    case 4:
      break;
    default:

      v7 = v1;
      v6 = v2;
      break;
  }

  MEMORY[0x1AC5A9410](v7, v6);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  if (v4)
  {
    v9 = sub_1ABA894EC();
    MEMORY[0x1AC5A9410](v9);
    MEMORY[0x1AC5A9410](2599, 0xE200000000000000);
    MEMORY[0x1AC5A9410](0x273A656D616E20, 0xE700000000000000);
  }

  sub_1ABA7D32C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_23;
          }

          v12 = *(v5 + 64 + 8 * v17);
          ++v15;
          if (v12)
          {
            v15 = v17;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_12:
      sub_1ABD91530();
      v18 = *(v16 + 16);
      if (__OFADD__(v18, v4))
      {
        goto LABEL_33;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v4 > *(v16 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v16 = v19;
      }

      v12 &= v12 - 1;
      if (!*(v2 + 16))
      {
        break;
      }

      sub_1ABA84218();
      if (v21 < v4)
      {
        goto LABEL_34;
      }

      sub_1ABAA1FF8(v20);
      swift_arrayInitWithCopy();

      if (v4)
      {
        v22 = *(v16 + 16);
        v23 = __OFADD__(v22, v4);
        v24 = v22 + v4;
        if (v23)
        {
          goto LABEL_35;
        }

        *(v16 + 16) = v24;
      }
    }
  }

  while (!v4);
  __break(1u);
LABEL_23:

  MEMORY[0x1AC5A9750](v16, &type metadata for KnosisFact);

  v25 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v25);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  MEMORY[0x1AC5A9410](0x3A737463616620, 0xE700000000000000);

  v26 = MEMORY[0x1AC5A9750](v31, &type metadata for KnosisAnswer);
  MEMORY[0x1AC5A9410](v26);

  MEMORY[0x1AC5A9410](10, 0xE100000000000000);
  MEMORY[0x1AC5A9410](0x73746E6572617020, 0xE90000000000003ALL);

  v27 = 0xE900000000000065;
  v28 = 0x7461636964657270;
  if (v32 != 1)
  {
    v28 = 0x7463656A626FLL;
    v27 = 0xE600000000000000;
  }

  if (v32)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0x7463656A627573;
  }

  if (v32)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE700000000000000;
  }

  MEMORY[0x1AC5A9410](v29, v30);

  MEMORY[0x1AC5A9410](0x756F724767726120, 0xEA00000000003A70);
}

void KnosisFact.extendedTriples()()
{
  sub_1ABA7E2A8();
  v3 = *(v0 + 16);
  v4 = *(v0 + 50);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 130);
  v16 = *(v0 + 136);
  v142 = MEMORY[0x1E69E7CC0];
  v113 = v5;
  v129 = v15;
  if (v4 != 1)
  {
    v141[0] = *v0;
    *&v141[1] = v3;
    *(&v141[1] + 8) = *(v0 + 24);
    *(&v141[2] + 2) = *(v0 + 34);
    BYTE2(v141[3]) = v4;
    *(&v141[3] + 3) = *(v0 + 51);
    BYTE7(v141[3]) = *(v0 + 55);
    *(&v141[3] + 1) = v5;
    *&v141[4] = v6;
    *(&v141[4] + 1) = v8;
    *&v141[5] = v7;
    WORD4(v141[5]) = v9;
    v62 = *(v0 + 90);
    HIWORD(v141[5]) = *(v0 + 94);
    *(&v141[5] + 10) = v62;
    *&v141[6] = v10;
    *(&v141[6] + 1) = v11;
    v63 = v12;
    *&v141[7] = v12;
    *(&v141[7] + 1) = v13;
    v64 = v13;
    v127 = v14;
    LOWORD(v141[8]) = v14;
    BYTE2(v141[8]) = v15;
    BYTE7(v141[8]) = *(v0 + 135);
    *(&v141[8] + 3) = *(v0 + 131);
    *(&v141[8] + 1) = v16;
    KnosisFact.splitSubentityIdentifier()(&v133);
    v15 = v134;
    if (!v134)
    {
      goto LABEL_58;
    }

    v118 = v6;
    v106 = v8;
    v124 = v133;
    v8 = v138;
    v24 = v136;
    v123 = v135;
    LOWORD(v121) = v137;
    WORD2(v107) = v9;
    switch(v129)
    {
      case 1:
        *&v141[0] = v10;

        sub_1ABA89A38();
        v10 = EntityIdentifier.stringValue.getter();
        v11 = v77;
        break;
      case 2:
      case 3:

        sub_1ABA89A38();

        break;
      case 4:

        sub_1ABA89A38();
        v10 = 0;
        v11 = 0xE000000000000000;
        break;
      default:

        sub_1ABA89A38();
        v75 = sub_1ABA894EC();
        sub_1ABAE4358(v75, v76, v63, v64, v127, 0);
        break;
    }

    v1 = v123;
    sub_1ABAD89DC();
    v79 = v78;
    v2 = *(v78 + 16);
    v23 = *(v78 + 24);
    v17 = v2 + 1;
    if (v2 < v23 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v98 = v3;
  HIDWORD(v107) = v9;
  v106 = v8;
  v118 = v6;
  if (*(v16 + 16))
  {
    LODWORD(v126) = v14;
    v122 = v13;
    *&v124 = v12;
    v112 = v7;
    v17 = v16 + 64;
    sub_1ABA7D32C();
    v20 = v19 & v18;
    v9 = (v21 + 63) >> 6;
    v97 = v22;

    v23 = 0;
    v115 = 32;
    v93 = v9;
    v95 = v17;
    if (v20)
    {
      while (2)
      {
        v24 = v23;
        v25 = v97;
LABEL_9:
        v26 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v27 = v26 | (v24 << 6);
        v28 = *(v25 + 48) + 40 * v27;
        v105 = *v28;
        v17 = *(v28 + 24);
        v103 = *(v28 + 16);
        HIDWORD(v101) = *(v28 + 32);
        v2 = *(*(v25 + 56) + 8 * v27);
        v1 = *(v2 + 16);
        v120 = *(v28 + 8);

        v119 = v17;

        v9 = 0;
        v121 = MEMORY[0x1E69E7CC0];
LABEL_10:
        v8 = v115 + 144 * v9;
        while (v1 != v9)
        {
          v23 = *(v2 + 16);
          if (v9 >= v23)
          {
            __break(1u);
            goto LABEL_60;
          }

          v29 = memcpy(v141, (v2 + v8), sizeof(v141));
          switch(v15)
          {
            case 1uLL:
              sub_1ABAA31F0();
              if ((v10 & 0x80000000000000) == 0)
              {
                v49 += 1272;
              }

              sub_1ABA9F1BC(v41, v42, v43, v44, v45, v46, v47, v48, v93, v95, v97, v98, v99, v101, v103, v105, v106, v107, v109, v112, v113, v115, v116, v118, v119, v120, v121, v122, v124, *(&v124 + 1), v125, v126, v129, v10, v49, 0xE300000000000000);
              v50 = sub_1ABF24FF4();
              v17 = &v131;
              MEMORY[0x1AC5A9410](v50);

              v37 = v131;
              v38 = v132;
              v15 = v129;
              break;
            case 2uLL:
            case 3uLL:
              sub_1ABA9F1BC(v29, v30, v31, v32, v33, v34, v35, v36, v93, v95, v97, v98, v99, v101, v103, v105, v106, v107, v109, v112, v113, v115, v116, v118, v119, v120, v121, v122, v124, *(&v124 + 1), v125, v126, v129, v130, v131, v132);

              goto LABEL_17;
            case 4uLL:
              sub_1ABA9F1BC(v29, v30, v31, v32, v33, v34, v35, v36, v93, v95, v97, v98, v99, v101, v103, v105, v106, v107, v109, v112, v113, v115, v116, v118, v119, v120, v121, v122, v124, *(&v124 + 1), v125, v126, v129, v130, v131, v132);
              v37 = 0;
              v38 = 0xE000000000000000;
              break;
            default:
              sub_1ABA9F1BC(v29, v30, v31, v32, v33, v34, v35, v36, v93, v95, v97, v98, v99, v101, v103, v105, v106, v107, v109, v112, v113, v115, v116, v118, v119, v120, v121, v122, v124, *(&v124 + 1), v125, v126, v129, v130, v131, v132);
              v39 = sub_1ABA894EC();
              sub_1ABAE4358(v39, v40, v124, v122, v126, 0);
LABEL_17:
              v37 = sub_1ABA894EC();
              break;
          }

          RelationshipIdentifier.init(_:)(v37, v38, &v139);
          if ((v140 & 1) == 0)
          {
            v117 = *(&v141[6] + 1);
            v51 = v141[7];
            v52 = LOWORD(v141[8]);
            ++v9;
            v100 = v139;
            switch(BYTE2(v141[8]))
            {
              case 1:
                sub_1ABAA31F0();
                if ((v55 & 0x80000000000000) == 0)
                {
                  v54 += 1272;
                }

                *&v133 = v54;
                *(&v133 + 1) = 0xE300000000000000;
                v131 = v55;

                v56 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v56);

                sub_1ABAE4304(v141);
                v53 = *(&v133 + 1);
                v110 = v133;
                goto LABEL_31;
              case 2:
              case 3:
                v110 = *&v141[6];

                goto LABEL_27;
              case 4:

                sub_1ABAE4304(v141);
                v110 = 0;
                v53 = 0xE000000000000000;
LABEL_31:
                v117 = v53;
                goto LABEL_32;
              default:
                v110 = *&v141[6];

                sub_1ABAE4358(v110, v117, v51, *(&v51 + 1), v52, 0);
LABEL_27:
                sub_1ABAE4304(v141);
LABEL_32:
                v15 = v129;
                LODWORD(v139) = v133;
                WORD2(v139) = WORD2(v133);
                LODWORD(v130) = v131;
                WORD2(v130) = WORD2(v131);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA7BEF0();
                  sub_1ABAD89DC();
                  v121 = v60;
                }

                v17 = *(v121 + 16);
                v57 = *(v121 + 24);
                if (v17 >= v57 >> 1)
                {
                  sub_1ABA8E370(v57);
                  sub_1ABAD89DC();
                  v121 = v61;
                }

                *(v121 + 16) = v17 + 1;
                sub_1ABA8B53C((v121 + 112 * v17), v93, v95, v97, v98, v100, v101, v103, v105, v106, v107, v110, v112, v113, v115, v117, v118);
                *(v58 + 64) = v112;
                *(v58 + 72) = WORD2(v107);
                v59 = WORD2(v139);
                *(v58 + 74) = v139;
                *(v58 + 78) = v59;
                *(v58 + 80) = v99;
                *(v58 + 88) = v105;
                *(v58 + 96) = v120;
                *(v58 + 104) = v103;
                *(v58 + 112) = v119;
                *(v58 + 120) = WORD2(v101);
                *(v58 + 126) = WORD2(v130);
                *(v58 + 122) = v130;
                *(v58 + 128) = v109;
                *(v58 + 136) = v116;
                break;
            }

            goto LABEL_10;
          }

          sub_1ABAE4304(v141);
          v8 += 144;
          ++v9;
        }

        sub_1ABD7DB90(v121);
        v23 = v24;
        v9 = v93;
        v17 = v95;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v25 = v97;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v9)
      {

        v65 = v142;
        goto LABEL_56;
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_9;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    sub_1ABA7BBEC(v23);
    sub_1ABA898F8();
    sub_1ABAD89DC();
    v79 = v90;
LABEL_51:
    *(v79 + 16) = v17;
    v80 = v79 + 112 * v2;
    *(v80 + 32) = v124;
    *(v80 + 48) = v15;
    *(v80 + 56) = v1;
    *(v80 + 64) = v24;
    *(v80 + 72) = v121;
    *(v80 + 80) = v8;
    *(v80 + 88) = v113;
    *(v80 + 96) = v118;
    *(v80 + 104) = v106;
    *(v80 + 112) = v9;
    *(v80 + 120) = WORD2(v107);
    *(v80 + 128) = v10;
    *(v80 + 136) = v11;
    *&v141[0] = v79;

    sub_1ABAA35DC();
    sub_1ABD7E954(v141, v81, v82, sub_1ABD8E3F0, sub_1ABD8E2FC);
LABEL_57:

LABEL_58:
    sub_1ABA7BC1C();
    return;
  }

  if (_Records_GDEntityPredicate_records)
  {
    v66 = v7;
    v67 = *(_Records_GDEntityPredicate_records + 1);
    v68 = *(_Records_GDEntityPredicate_records + 2);
    v69 = *_Records_GDEntityPredicate_records;

    sub_1ABA91D48(v69, v67, v68, v141);
    v70 = *(&v141[0] + 1);
    v128 = *&v141[0];
    v71 = v141[1];
    v72 = 0xE000000000000000;
    v73 = v141[2];
    v74 = 0;
    switch(v129)
    {
      case 1:
        *&v141[0] = v10;
        v74 = EntityIdentifier.stringValue.getter();
        v72 = v83;
        break;
      case 4:
        break;
      default:

        v74 = v10;
        v72 = v11;
        break;
    }

    sub_1ABAD89DC();
    v65 = v84;
    v86 = *(v84 + 16);
    v85 = *(v84 + 24);
    if (v86 >= v85 >> 1)
    {
      sub_1ABA9A58C(v85);
      sub_1ABAD89DC();
      v65 = v91;
    }

    *(v65 + 16) = v86 + 1;
    sub_1ABA8B53C((v65 + 112 * v86), v92, v94, v96, v98, v99, v101, v102, v104, v106, v107, v109, v111, v113, v114, v116, v6);
    *(v87 + 64) = v66;
    *(v87 + 72) = v108;
    *(v87 + 80) = 0;
    *(v87 + 88) = v128;
    *(v87 + 96) = v70;
    *(v87 + 104) = v71;
    *(v87 + 120) = v73;
    *(v87 + 128) = v74;
    *(v87 + 136) = v72;
    v142 = v65;
LABEL_56:
    *&v141[0] = v65;

    sub_1ABAA35DC();
    sub_1ABD7E954(v141, v88, v89, sub_1ABD8E3F0, sub_1ABD8E2FC);
    goto LABEL_57;
  }

  __break(1u);

  __break(1u);
}