uint64_t sub_10003C3C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003DE50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C3F8(uint64_t a1)
{
  v2 = sub_10003C594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C434(uint64_t a1)
{
  v2 = sub_10003C594();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10003C470(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));
  v3 = v2;
  return v2;
}

uint64_t sub_10003C4E0(uint64_t a1)
{
  if (qword_1006DF9B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = sub_10000C49C(a1, qword_1006FC1D8);

  return sub_10003CD6C(v1, v2);
}

unint64_t sub_10003C594()
{
  result = qword_1006E1A70;
  if (!qword_1006E1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A70);
  }

  return result;
}

unint64_t sub_10003C5E8()
{
  result = qword_1006E1A88;
  if (!qword_1006E1A88)
  {
    sub_100010324(&qword_1006E1A80, &qword_10057DE00);
    sub_10003C66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A88);
  }

  return result;
}

unint64_t sub_10003C66C()
{
  result = qword_1006E1A90;
  if (!qword_1006E1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A90);
  }

  return result;
}

unint64_t sub_10003C6C0()
{
  result = qword_1006E1AA0;
  if (!qword_1006E1AA0)
  {
    sub_100010324(&qword_1006E1A98, &qword_10057DE08);
    sub_10003C744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AA0);
  }

  return result;
}

unint64_t sub_10003C744()
{
  result = qword_1006E1AA8;
  if (!qword_1006E1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AA8);
  }

  return result;
}

unint64_t sub_10003C798()
{
  result = qword_1006E1AB0;
  if (!qword_1006E1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AB0);
  }

  return result;
}

uint64_t sub_10003C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C850()
{
  result = qword_1006E1AC0;
  if (!qword_1006E1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AC0);
  }

  return result;
}

unint64_t sub_10003C8A4()
{
  result = qword_1006E1AD0;
  if (!qword_1006E1AD0)
  {
    sub_100010324(&qword_1006E1AC8, &qword_10057DE10);
    sub_10003C928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AD0);
  }

  return result;
}

unint64_t sub_10003C928()
{
  result = qword_1006E1AD8;
  if (!qword_1006E1AD8)
  {
    sub_100010324(&qword_1006E1ED0, &unk_10057E390);
    sub_100014D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AD8);
  }

  return result;
}

uint64_t sub_10003C9AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003CA0C()
{
  result = qword_1006E1AF0;
  if (!qword_1006E1AF0)
  {
    sub_100010324(&qword_1006E1A80, &qword_10057DE00);
    sub_10003CA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AF0);
  }

  return result;
}

unint64_t sub_10003CA90()
{
  result = qword_1006E1AF8;
  if (!qword_1006E1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AF8);
  }

  return result;
}

unint64_t sub_10003CAE4()
{
  result = qword_1006E1B00;
  if (!qword_1006E1B00)
  {
    sub_100010324(&qword_1006E1A98, &qword_10057DE08);
    sub_10003CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B00);
  }

  return result;
}

unint64_t sub_10003CB68()
{
  result = qword_1006E1B08;
  if (!qword_1006E1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B08);
  }

  return result;
}

unint64_t sub_10003CBBC()
{
  result = qword_1006E1B10;
  if (!qword_1006E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B10);
  }

  return result;
}

unint64_t sub_10003CC10()
{
  result = qword_1006E1B20;
  if (!qword_1006E1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B20);
  }

  return result;
}

unint64_t sub_10003CC64()
{
  result = qword_1006E1B28;
  if (!qword_1006E1B28)
  {
    sub_100010324(&qword_1006E1AC8, &qword_10057DE10);
    sub_10003CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B28);
  }

  return result;
}

unint64_t sub_10003CCE8()
{
  result = qword_1006E1B30;
  if (!qword_1006E1B30)
  {
    sub_100010324(&qword_1006E1ED0, &unk_10057E390);
    sub_100014D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B30);
  }

  return result;
}

uint64_t sub_10003CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_100574498() & 1) != 0 || ((v10 = v4[10], v11 = (a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v14 = v13[1], v12) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (*v11 == *v13 ? (v23 = v12 == v14) : (v23 = 0), v23 || (sub_100574498() & 1) != 0)) || ((v16 = v4[11], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (v21 = sub_100574498(), result = 0, (v21 & 1) != 0)))
  {
    v24 = v4[12];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28)
      {
        v29 = *v25 == *v27 && v26 == v28;
        if (v29 || (sub_100574498() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }

    v30 = v4[13];
    v31 = (a1 + v30);
    v32 = *(a1 + v30 + 8);
    v33 = (a2 + v30);
    v34 = v33[1];
    result = (v32 | v34) == 0;
    if (v32)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return result;
    }

    if (*v31 != *v33 || v32 != v34)
    {

      return sub_100574498();
    }

    return 1;
  }

  return result;
}

uint64_t sub_10003CEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003CFA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1006800F8;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003CFF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_10003D150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006E1B78, &qword_10057DE50);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D7E0();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v27 = 0;
  sub_1000104C0();
  sub_1005742D8();
  v9 = v28;
  v26 = v29;
  LOBYTE(v28) = 1;
  v10 = sub_100574298();
  v25 = v11;
  v22 = v10;
  v23 = v9;
  LOBYTE(v28) = 2;
  v12 = sub_100574298();
  v24 = v13;
  LOBYTE(v28) = 3;
  sub_1005742B8();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v12;
  v17 = v26;

  v18 = v25;

  v19 = v24;

  sub_100010474(a1);

  v21 = v22;
  *a2 = v23;
  a2[1] = v17;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v15;
  return result;
}

uint64_t sub_10003D454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10003D568(void *a1)
{
  v2 = sub_100009DCC(&qword_1006E1B60, &qword_10057DE40);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D78C();
  sub_100574708();
  v9 = 0;
  sub_10003C850();
  sub_1005742D8();
  v6 = v10;
  v9 = 1;
  sub_1005742D8();
  v9 = 2;
  sub_1005742D8();
  (*(v3 + 8))(v5, v2);
  sub_100010474(a1);
  return v6;
}

unint64_t sub_10003D78C()
{
  result = qword_1006E1B68;
  if (!qword_1006E1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B68);
  }

  return result;
}

unint64_t sub_10003D7E0()
{
  result = qword_1006E1B80;
  if (!qword_1006E1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B80);
  }

  return result;
}

unint64_t sub_10003D834()
{
  result = qword_1006E1B90;
  if (!qword_1006E1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetMusicItem.ContainerTrack.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.ContainerTrack.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WidgetMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003DB3C()
{
  result = qword_1006E1B98;
  if (!qword_1006E1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B98);
  }

  return result;
}

unint64_t sub_10003DB94()
{
  result = qword_1006E1BA0;
  if (!qword_1006E1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BA0);
  }

  return result;
}

unint64_t sub_10003DBEC()
{
  result = qword_1006E1BA8;
  if (!qword_1006E1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BA8);
  }

  return result;
}

unint64_t sub_10003DC44()
{
  result = qword_1006E1BB0;
  if (!qword_1006E1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BB0);
  }

  return result;
}

unint64_t sub_10003DC9C()
{
  result = qword_1006E1BB8;
  if (!qword_1006E1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BB8);
  }

  return result;
}

unint64_t sub_10003DCF4()
{
  result = qword_1006E1BC0;
  if (!qword_1006E1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BC0);
  }

  return result;
}

unint64_t sub_10003DD4C()
{
  result = qword_1006E1BC8;
  if (!qword_1006E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BC8);
  }

  return result;
}

unint64_t sub_10003DDA4()
{
  result = qword_1006E1BD0;
  if (!qword_1006E1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BD0);
  }

  return result;
}

unint64_t sub_10003DDFC()
{
  result = qword_1006E1BD8;
  if (!qword_1006E1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BD8);
  }

  return result;
}

uint64_t sub_10003DE50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044 || (sub_100574498() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4970655269726973 && a2 == 0xE900000000000044 || (sub_100574498() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF44496D65744972 || (sub_100574498() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA20 == a2 || (sub_100574498() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA40 == a2 || (sub_100574498() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567646162 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL || (sub_100574498() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_100574498() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AA4F0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF736B6361725472 || (sub_100574498() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AAA60 == a2 || (sub_100574498() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_100574498() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA80 == a2 || (sub_100574498() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001005AAAA0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL || (sub_100574498() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001005AAAC0 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

id sub_10003E57C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003E58C(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  sub_100009DCC(&qword_1006E1BF8, &qword_10057E190);
  *(v2 + 40) = swift_task_alloc();
  sub_100009DCC(&qword_1006E1C00, &qword_10057E198);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10003E664, 0, 0);
}

uint64_t sub_10003E664()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() currentTraitCollection];
  [v3 displayScale];

  sub_100571D38();
  v4 = sub_100571DC8();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = enum case for Artwork.ImageFormat.jpeg(_:);
  v6 = sub_100571D28();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10003E830;
  v9 = v0[5];
  v10 = v0[6];

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v10, v9, 0, 0);
}

uint64_t sub_10003E830(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = v1;

  v6 = v4[6];
  sub_10001036C(v4[5], &qword_1006E1BF8, &qword_10057E190);
  sub_10001036C(v6, &qword_1006E1C00, &qword_10057E198);
  if (v1)
  {

    return _swift_task_switch(sub_10003E9EC, 0, 0);
  }

  else
  {

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_10003E9EC()
{
  v14 = v0;
  if (qword_1006DF9C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E1BE0);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve image from artwork with error: %{public}s", v6, 0xCu);
    sub_100010474(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10003EBD0()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E1BE0);
  sub_10000C49C(v0, qword_1006E1BE0);
  return static Logger.music(_:)(0xD000000000000014, 0x80000001005AAAE0);
}

uint64_t sub_10003EC34(uint64_t a1)
{
  result = sub_10056C8A8();
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

uint64_t sub_10003ED0C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E1C10);
  sub_10000C49C(v0, qword_1006E1C10);
  return static Logger.music(_:)(0x524C746567646957, 0xEE00656863614355);
}

uint64_t sub_10003ED7C()
{
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v43 = &v42 - v1;
  v45[0] = sub_100572928();
  v2 = *(v45[0] - 8);
  __chkstk_darwin();
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v45[7] = *v0;
  v45[8] = v5;
  v6 = v0[3];
  v45[9] = v0[2];
  v45[10] = v6;
  v8 = v0[4];
  v7 = v0[5];
  v44 = v0;
  v45[11] = v8;
  v45[12] = v7;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v10 <= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 + 1;
  v14 = 16 * v10 + 40;
  while (v10 != 3)
  {
    if (v13 == ++v10)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v15 = v14 + 16;
    v16 = *(&v45[3] + v14);
    v14 += 16;
    if (v16)
    {
      v17 = *(v45 + v15);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100040B4C(0, v11[2] + 1, 1, v11);
        v11 = result;
      }

      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_100040B4C((v18 > 1), v19 + 1, 1, v11);
        v11 = result;
      }

      v11[2] = v19 + 1;
      v20 = &v11[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      goto LABEL_2;
    }
  }

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  result = swift_arrayDestroy();
  v21 = 0;
  v22 = (v2 + 8);
  v23 = v11 + 5;
  v24 = -v11[2];
  v25 = -1;
  while (v24 + v25 != -1)
  {
    if (++v25 >= v11[2])
    {
      goto LABEL_32;
    }

    v26 = v23 + 2;
    v27 = *v23;
    v45[1] = *(v23 - 1);
    v45[2] = v27;

    sub_100572918();
    sub_10001B550();
    v28 = sub_100573CA8();
    (*v22)(v4, v45[0]);

    v23 = v26;
    v29 = __OFADD__(v21, v28);
    v21 += v28;
    if (v29)
    {
      __break(1u);
      break;
    }
  }

  v30 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  v32 = v43;
  v31 = v44;
  sub_10001F588(v44 + *(v30 + 32), v43);
  v33 = sub_10056CAA8();
  v34 = (*(*(v33 - 8) + 48))(v32, 1, v33) != 1;
  sub_10002FB84(v32);
  result = *(v31 + *(v30 + 40));
  if (!result)
  {
    goto LABEL_25;
  }

  result = [result size];
  v37 = v35 * v36;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v37 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:
    v37 = 0.0;
  }

  if ((v37 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = 8 * v34;
  v29 = __OFADD__(v21, v38);
  v39 = v21 + v38;
  if (v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v29 = __OFADD__(v39, 2);
  v40 = v39 + 2;
  if (v29)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = 4 * v37;
  result = v40 + v41;
  if (!__OFADD__(v40, v41))
  {
    return result;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_10003F180(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

void sub_10003F1AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

uint64_t (*sub_10003F1E4(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_100041C70;
}

uint64_t sub_10003F240()
{
  v1 = v0;
  v2 = v112;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v99 = &v85 - v3;
  v4 = sub_100572928();
  v100 = *(v4 - 8);
  __chkstk_darwin();
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v101 = *(v0 + 1);
  v114 = v101;
  v7 = v0[3];
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v113 = v6;
  v115 = v7;
  v116 = v8;
  v117 = v9;
  v10 = type metadata accessor for WidgetMusicItem(0);
  v11 = *(v10 + 28);

  v118 = sub_10056C7A8();
  v119 = v12;
  v91 = v10;
  v13 = *(v1 + *(v10 + 32));
  if (v13 <= 3)
  {
    if (*(v1 + *(v10 + 32)) > 1u)
    {
      if (v13 == 2)
      {
        v14 = xmmword_10057E200;
      }

      else
      {
        v14 = xmmword_10057E1F0;
      }
    }

    else if (*(v1 + *(v10 + 32)))
    {
      v14 = xmmword_10057E210;
    }

    else
    {
      v14 = xmmword_10057E1A0;
    }

    goto LABEL_18;
  }

  if (*(v1 + *(v10 + 32)) <= 5u)
  {
    if (v13 == 4)
    {
      v14 = xmmword_10057E1E0;
    }

    else
    {
      v14 = xmmword_10057E1D0;
    }

    goto LABEL_18;
  }

  if (v13 == 6)
  {
    v14 = xmmword_10057E1C0;
    goto LABEL_18;
  }

  if (v13 == 7)
  {
    v14 = xmmword_10057E1B0;
LABEL_18:
    v120 = v14;
    goto LABEL_19;
  }

  v120 = 0uLL;
LABEL_19:
  v15 = (v1 + v91[9]);
  v16 = v15[1];
  v121 = *v15;
  v122 = v16;
  v17 = (v1 + v91[10]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  v123 = v19;
  v124 = v18;
  v20 = (v1 + v91[11]);
  v21 = v20[1];
  v125 = *v20;
  v126 = v21;
  v22 = (v1 + v91[12]);
  v23 = v22[1];
  v94 = v4;
  if (v23)
  {
    v24 = *v22;
  }

  else
  {
    v24 = 0;
  }

  v127 = v24;
  v128 = v23;
  v25 = (v1 + v91[13]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
  }

  else
  {
    v27 = 0;
  }

  v129 = v27;
  v130 = v26;
  v28 = (v1 + v91[14]);
  v29 = v28[1];
  v131 = *v28;
  v132 = v29;
  v30 = v91[19];
  v90 = v1;
  v31 = (v1 + v30);
  v32 = v31[1];
  v133 = *v31;
  v134 = v32;

  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v35 = 12;
  v36 = v112;
LABEL_29:
  if (v33 <= 0xC)
  {
    v37 = 12;
  }

  else
  {
    v37 = v33;
  }

  v38 = v37 + 1;
  v39 = 16 * v33 + 40;
  v40 = v94;
  while (1)
  {
    if (v33 == 12)
    {
      sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
      swift_arrayDestroy();
      v18 = 0;
      v45 = *(v34 + 2);
      *&v101 = v100 + 8;
      v38 = (v34 + 40);
      v11 = -v45;
      v35 = -1;
      do
      {
        if (v11 + v35 == -1)
        {
          goto LABEL_47;
        }

        if (++v35 >= *(v34 + 2))
        {
          goto LABEL_90;
        }

        v36 = (v38 + 16);
        v33 = *v38;
        v110 = *(v38 - 8);
        v111 = v33;

        v2 = v102;
        sub_100572918();
        sub_10001B550();
        v16 = sub_100573CA8();
        (*v101)(v2, v40);

        v38 = v36;
        v46 = __OFADD__(v18, v16);
        v18 += v16;
      }

      while (!v46);
      __break(1u);
LABEL_47:
      v89 = v18;

      v47 = v90;
      v48 = v91;
      v49 = v99;
      sub_10001F588(v90 + v91[17], v99);
      v50 = sub_10056CAA8();
      v88 = (*(*(v50 - 8) + 48))(v49, 1, v50) != 1;
      sub_10002FB84(v49);
      sub_100009DCC(&qword_1006E1EB0, &qword_10057E370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B500;
      v52 = v47 + v48[21];
      v2 = *v52;
      v36 = *(v52 + 8);
      v34 = *(v52 + 16);
      LOBYTE(v52) = *(v52 + 24);
      *(inited + 32) = v2;
      *(inited + 40) = v36;
      *(inited + 48) = v34;
      *(inited + 56) = v52;
      v53 = (v47 + v48[22]);
      v11 = v53[1];
      v35 = v53[2];
      LOBYTE(v40) = *(v53 + 24);
      v100 = *v53;
      *(inited + 64) = v100;
      *(inited + 72) = v11;
      *(inited + 80) = v35;
      *(inited + 88) = v40;
      v16 = _swiftEmptyArrayStorage;
      if (v52)
      {
        goto LABEL_50;
      }

      v99 = inited;
      v16 = sub_100040C58(0, 1, 1, _swiftEmptyArrayStorage);
      v33 = *(v16 + 16);
      v38 = *(v16 + 24);
      v18 = v33 + 1;
      if (v33 < v38 >> 1)
      {
        goto LABEL_49;
      }

      goto LABEL_105;
    }

    if (v38 == ++v33)
    {
      break;
    }

    v41 = v39 + 16;
    v16 = *&v112[v39];
    v39 += 16;
    if (v16)
    {
      v42 = *(&v109[12] + v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100040B4C(0, *(v34 + 2) + 1, 1, v34);
      }

      v11 = *(v34 + 2);
      v43 = *(v34 + 3);
      v18 = v11 + 1;
      if (v11 >= v43 >> 1)
      {
        v34 = sub_100040B4C((v43 > 1), v11 + 1, 1, v34);
      }

      *(v34 + 2) = v18;
      v44 = &v34[16 * v11];
      *(v44 + 4) = v42;
      *(v44 + 5) = v16;
      goto LABEL_29;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
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
  do
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_105:
      v16 = sub_100040C58((v38 > 1), v18, 1, v16);
LABEL_49:
      *(v16 + 16) = v18;
      v54 = (v16 + 24 * v33);
      v54[4] = v2;
      v54[5] = v36;
      v54[6] = v34;
LABEL_50:

      if (v40)
      {
        v2 = v102;
        v34 = v101;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = v102;
        v34 = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_100040C58(0, *(v16 + 16) + 1, 1, v16);
        }

        v57 = *(v16 + 16);
        v56 = *(v16 + 24);
        if (v57 >= v56 >> 1)
        {
          v16 = sub_100040C58((v56 > 1), v57 + 1, 1, v16);
        }

        *(v16 + 16) = v57 + 1;
        v58 = (v16 + 24 * v57);
        v58[4] = v100;
        v58[5] = v11;
        v58[6] = v35;
      }

      v18 = *(v16 + 16);

      v38 = (v18 * 24) >> 64;
      v33 = v90;
      if (v38 != (24 * v18) >> 63)
      {
        goto LABEL_94;
      }

      v11 = *(v90 + v91[20]);
      v35 = *(v11 + 16);
      v86 = *(*(v90 + v91[15]) + 16);
      v87 = 24 * v18;
      if (v35)
      {
        v109[0] = _swiftEmptyArrayStorage;
        v16 = v109;
        sub_100041470(0, v35, 0);
        v59 = 0;
        v60 = v109[0];
        v61 = (v11 + 72);
        v40 = &type metadata for String;
        v92 = v35;
        v93 = v11;
        while (1)
        {
          v38 = *(v11 + 16);
          if (v59 >= v38)
          {
            goto LABEL_92;
          }

          v96 = v59;
          v97 = v60;
          v62 = *(v61 - 5);
          v63 = *(v61 - 4);
          v64 = *(v61 - 3);
          v65 = *(v61 - 2);
          v66 = *(v61 - 1);
          v67 = *v61;
          v95 = v61;
          v103 = v62;
          v104 = v63;
          v105 = v64;
          v106 = v65;
          v107 = v66;
          v108 = v67;
          swift_bridgeObjectRetain_n();
          v99 = v65;
          swift_bridgeObjectRetain_n();
          v98 = v67;
          swift_bridgeObjectRetain_n();
          v110 = v62;
          v111 = v63;

          sub_100572918();
          v36 = sub_10001B550();
          v11 = sub_100573CA8();
          v18 = *v34;
          v33 = v94;
          (*v34)(v2, v94);
          v100 = v63;

          v35 = v34;
          v110 = v105;
          v111 = v106;

          sub_100572918();
          v16 = sub_100573CA8();
          (v18)(v2, v33);

          v34 = (v11 + v16);
          if (__OFADD__(v11, v16) || (v11 = v108, v110 = v107, v111 = v108, , sub_100572918(), v68 = sub_100573CA8(), (v18)(v2, v33), , v46 = __OFADD__(v34, v68), v16 = &v34[v68], v46))
          {
            __break(1u);
            goto LABEL_89;
          }

          swift_arrayDestroy();
          v33 = v16 + 8;
          if (__OFADD__(v16, 8))
          {
            goto LABEL_93;
          }

          v60 = v97;
          v109[0] = v97;
          v70 = v97[2];
          v69 = v97[3];
          v18 = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            v16 = v109;
            sub_100041470((v69 > 1), v70 + 1, 1);
            v60 = v109[0];
          }

          v71 = v95;
          v59 = v96 + 1;
          v60[2] = v18;
          v60[v70 + 4] = v33;
          v61 = v71 + 7;
          v35 = v92;
          v11 = v93;
          v2 = v102;
          v34 = v101;
          if (v92 == v59)
          {
            v33 = v90;
            goto LABEL_69;
          }
        }
      }

      v60 = _swiftEmptyArrayStorage;
      v18 = _swiftEmptyArrayStorage[2];
      if (v18)
      {
LABEL_69:
        v16 = 0;
        v38 = 32;
        while (1)
        {
          v72 = *(v60 + v38);
          v46 = __OFADD__(v16, v72);
          v16 += v72;
          if (v46)
          {
            goto LABEL_91;
          }

          v38 += 8;
          if (!--v18)
          {
            goto LABEL_72;
          }
        }
      }

      v16 = 0;
LABEL_72:

      v73 = *(v33 + v91[25]);
      if (!v73)
      {
        goto LABEL_77;
      }

      [v73 size];
      v76 = v74 * v75;
      v38 = *&v76 & 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
    v38 = 0xC3E0000000000001;
    if (v76 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v76 >= 9.22337204e18)
    {
      __break(1u);
LABEL_77:
      v76 = 0.0;
    }

    v38 = v76;
    if ((v76 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_96;
    }

    v77 = 8 * v88;
    v46 = __OFADD__(v89, v77);
    v78 = v89 + v77;
    if (v46)
    {
      goto LABEL_97;
    }

    v46 = __OFADD__(v78, v87);
    v79 = v78 + v87;
    if (v46)
    {
      goto LABEL_98;
    }

    v46 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v46)
    {
      goto LABEL_99;
    }

    v46 = __OFADD__(v80, v86 + 1);
    v81 = v80 + v86 + 1;
    if (v46)
    {
      goto LABEL_100;
    }

    v46 = __OFADD__(v81, 8);
    v82 = v81 + 8;
    if (v46)
    {
      goto LABEL_101;
    }

    v46 = __OFADD__(v82, v16);
    v83 = v82 + v16;
    if (v46)
    {
      goto LABEL_102;
    }

    v38 *= 4;
    result = v83 + v38;
  }

  while (__OFADD__(v83, v38));
  return result;
}

uint64_t sub_10003FCBC@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = (v3 + *(a1 + 44));
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_10003FCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056CAA8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_10003FD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);

  *(v2 + v4) = a1;
}

uint64_t (*sub_10003FD74(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 100);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_10003FDCC;
}

void sub_10003FDD0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v5;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t *sub_10003FE50()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  v6 = *(*v0 + 120);
  v13[0] = v4;
  v13[1] = v3;
  v14 = *(v1 + 96);
  v7 = type metadata accessor for WidgetLRUCache.DiskEntry(0, v13);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 144);
  v9 = sub_10056CAA8();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(*v0 + 168);
  v11 = sub_100573C28();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_100040070()
{
  sub_10003FE50();

  return swift_deallocClassInstance();
}

uint64_t sub_1000400C8()
{
  v1 = v0;
  if (*(v0 + qword_1006E1C40))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1005736A8();
    swift_unknownObjectRelease();
  }

  if (qword_1006DF9C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, qword_1006E1C10);
  v3 = sub_10056DF68();
  v4 = sub_100573448();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "WidgetLRUCache deinitialized, memory pressure listener cancelled.", v5, 2u);
  }

  v6 = qword_1006E1C28;
  v7 = sub_10056C8A8();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100040274()
{
  sub_1000400C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000402BC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v9[0] = v2;
    v9[1] = v3;
    v10 = *(a1 + 96);
    result = type metadata accessor for WidgetLRUCache.DiskEntry(319, v9);
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v13 = &value witness table for Builtin.Int64 + 64;
      v14 = &value witness table for Builtin.Int64 + 64;
      result = sub_10056CAA8();
      if (v7 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        v16 = &unk_10057E280;
        v17 = &unk_10057E280;
        result = sub_100573C28();
        if (v8 <= 0x3F)
        {
          v18 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_100040488(uint64_t a1)
{
  sub_10056C8A8();
  if (v1 <= 0x3F)
  {
    sub_100040738(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100040520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100040630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 52);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100040738(uint64_t a1)
{
  if (!qword_1006E1DD8)
  {
    sub_10056C8A8();
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E1DD8);
    }
  }
}

char *sub_10004081C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1F10, &qword_10057E3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100040910(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006E1F18, &qword_10057E3D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100040A04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006DFDC0, &qword_10057E3E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100040B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EA8, &qword_10057E368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100040C58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EB8, &qword_10057E378);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_100040EA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5, a6);
  v16 = *(sub_100009DCC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100009DCC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1000410B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006E1EF0, &qword_10057E3B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100009DCC(&qword_1006E1EF8, &qword_10057E3B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100041210(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000413EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100041554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004140C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000418AC(a1, a2, a3, *v3, &qword_1006E1F08, &qword_10057E3C8, &type metadata accessor for Playlist);
  *v3 = result;
  return result;
}

char *sub_100041450(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100041688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100041470(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000417A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100041490(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000418AC(a1, a2, a3, *v3, &qword_1006E1F00, &qword_10057E3C0, &type metadata accessor for Album);
  *v3 = result;
  return result;
}

void *sub_1000414D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100041A88(a1, a2, a3, *v3, &qword_1006E1F28, &qword_10057E3E8, &qword_1006E1F30, &qword_10057E3F0);
  *v3 = result;
  return result;
}

void *sub_100041514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100041A88(a1, a2, a3, *v3, &qword_1006E1F58, &qword_10057E418, &qword_1006E1F60, &qword_10057E420);
  *v3 = result;
  return result;
}

void *sub_100041554(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006E1EC8, &qword_10057E388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100009DCC(&qword_1006E1ED0, &unk_10057E390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100041688(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006DFDC0, &qword_10057E3E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000417A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EC0, &qword_10057E380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000418AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100041A88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5, a6);
  v16 = *(sub_100009DCC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100009DCC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100041C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100041D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PinsWidgetTimelineProvider.Entry(uint64_t a1)
{
  result = qword_1006E1FF8;
  if (!qword_1006E1FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041E60(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_100041F74(319, &unk_1006E2008, type metadata accessor for WidgetMusicPin, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100041F74(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10001F8F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100041F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100041FE8()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004215C, 0, 0);
}

uint64_t sub_10004215C()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10004221C;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_10004221C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100042434;
  }

  else
  {
    v5 = sub_10004238C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004238C()
{
  v1 = sub_100570E08();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_100042434()
{
  static Logger.music(_:)(0xD000000000000018, 0x80000001005AAC10);
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get subscription state with error %{public}@", v3, 0xCu);
    sub_10001036C(v4, &qword_1006DFD00, &qword_10057E570);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000425F4()
{
  v1 = type metadata accessor for WidgetMusicPin(0);
  v2 = *(v1 - 1);
  __chkstk_darwin();
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
  v6 = *(v0 + *(result + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_1000459C8(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v4, type metadata accessor for WidgetMusicPin);
    v10 = (v4 + v1[7]);
    v11 = *v10;
    v12 = v10[1];
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v13 = sub_10000C49C(v1, qword_1006FC080);
    v14 = (v13 + v1[7]);
    v15 = v11 == *v14 && v12 == v14[1];
    if (!v15 && (sub_100574498() & 1) == 0)
    {
LABEL_31:
      sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
      return 0;
    }

    v16 = v1[8];
    v17 = (v4 + v16);
    v18 = *(v4 + v16 + 8);
    v19 = (v13 + v16);
    v20 = v19[1];
    if (v18)
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v21 = *v17 == *v19 && v18 == v20;
      if (!v21 && (sub_100574498() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v20)
    {
      goto LABEL_31;
    }

    v22 = v1[9];
    v23 = *(v4 + v22);
    v24 = *(v4 + v22 + 8);
    v25 = (v13 + v22);
    v26 = v23 == *v25 && v24 == v25[1];
    if (!v26 && (sub_100574498() & 1) == 0)
    {
      goto LABEL_31;
    }

    if (*v4 == *v13 && v4[1] == v13[1])
    {
      result = sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
    }

    else
    {
      v9 = sub_100574498();
      result = sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100042898()
{
  result = qword_1006E2040;
  if (!qword_1006E2040)
  {
    type metadata accessor for PinsWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2040);
  }

  return result;
}

int *sub_1000428F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetMusicPin(0);
  __chkstk_darwin();
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005724A8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v17 - v9;
  sub_1005725C8();
  if (qword_1006DF908 != -1)
  {
    swift_once();
  }

  v11 = sub_10000C49C(v2, qword_1006FC080);
  sub_1000459C8(v11, v4, type metadata accessor for WidgetMusicPin);
  (*(v6 + 16))(v8, v10, v5);
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == enum case for WidgetFamily.systemMedium(_:))
  {
    v13 = 4;
  }

  else if (v12 == enum case for WidgetFamily.systemLarge(_:))
  {
    v13 = 6;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v13 = 0;
  }

  v14 = sub_10006B6C4(v4, v13);
  sub_10056CA98();
  (*(v6 + 8))(v10, v5);
  result = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
  *(a1 + result[5]) = v14;
  *(a1 + result[6]) = 0;
  v16 = (a1 + result[7]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_100042B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1005724A8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100042C4C, 0, 0);
}

uint64_t sub_100042C4C(uint64_t a1)
{
  sub_1005725C8();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_100042CEC;
  v4 = v1[7];
  v3 = v1[8];

  return sub_100042EE4(v3, v4);
}

uint64_t sub_100042CEC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100042E44, 0, 0);
}

uint64_t sub_100042E44()
{
  v1 = *(v0 + 64);
  (*(v0 + 16))(v1);
  sub_100045A98(v1, type metadata accessor for PinsWidgetTimelineProvider.Entry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042EE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1005724A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for WidgetMusicPin(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100042FEC, 0, 0);
}

uint64_t sub_100042FEC()
{
  if (sub_100058BC8())
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v1 = sub_10056DF88();
    sub_10000C49C(v1, qword_1006FC2D8);
    v2 = sub_10056DF68();
    v3 = sub_100573428();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Can't use widget. Privacy acknowledgement required.", v4, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v6 = qword_1006FC158;
    v5 = unk_1006FC160;
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = sub_10000C49C(v0[8], qword_1006FC080);
    sub_1000459C8(v12, v7, type metadata accessor for WidgetMusicPin);
    (*(v9 + 16))(v8, v11, v10);
    v13 = (*(v9 + 88))(v8, v10);
    if (v13 == enum case for WidgetFamily.systemMedium(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for WidgetFamily.systemLarge(_:))
    {
      v14 = 6;
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v14 = 0;
    }

    v17 = v0[2];
    v18 = sub_10006B6C4(v0[9], v14);

    sub_10056CA98();
    v19 = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
    *(v17 + v19[5]) = v18;
    *(v17 + v19[6]) = 0;
    v20 = (v17 + v19[7]);
    *v20 = v6;
    v20[1] = v5;

    v21 = v0[1];

    return v21();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_100043330;

    return sub_100041FE8();
  }
}

uint64_t sub_100043330(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100043430, 0, 0);
}

uint64_t sub_100043430()
{
  if (*(v0 + 112) == 1)
  {
    if (qword_1006DFA98 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1000437AC;

    return sub_1000BD5D4();
  }

  else
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006FC2D8);
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Can't use widget. Cloud Library required.", v6, 2u);
    }

    if (qword_1006DF978 != -1)
    {
      swift_once();
    }

    v8 = qword_1006FC178;
    v7 = unk_1006FC180;
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 24);
    v14 = sub_10000C49C(*(v0 + 64), qword_1006FC080);
    sub_1000459C8(v14, v9, type metadata accessor for WidgetMusicPin);
    (*(v12 + 16))(v10, v13, v11);
    v15 = (*(v12 + 88))(v10, v11);
    if (v15 == enum case for WidgetFamily.systemMedium(_:))
    {
      v16 = 4;
    }

    else if (v15 == enum case for WidgetFamily.systemLarge(_:))
    {
      v16 = 6;
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
      v16 = 0;
    }

    v17 = *(v0 + 16);
    v18 = sub_10006B6C4(*(v0 + 80), v16);

    sub_10056CA98();
    v19 = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
    *(v17 + v19[5]) = v18;
    *(v17 + v19[6]) = 0;
    v20 = (v17 + v19[7]);
    *v20 = v8;
    v20[1] = v7;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1000437AC(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000438AC, 0, 0);
}

uint64_t sub_1000438AC(uint64_t a1)
{
  v2 = v1[13];
  if (*(v2 + 16))
  {
    v3 = v1[2];
    sub_10056CA98();
    v4 = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
    *(v3 + v4[5]) = v2;
    *(v3 + v4[6]) = 0;
    v5 = (v3 + v4[7]);
    *v5 = 0;
    v5[1] = 0;
  }

  else
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v6 = sub_10056DF88();
    sub_10000C49C(v6, qword_1006FC2D8);
    v7 = sub_10056DF68();
    v8 = sub_100573448();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No pinned items.", v9, 2u);
    }

    if (qword_1006DF998 != -1)
    {
      swift_once();
    }

    v10 = v1[13];
    v11 = v1[2];
    v13 = qword_1006FC1B8;
    v12 = unk_1006FC1C0;

    sub_10056CA98();
    v14 = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
    *(v11 + v14[5]) = v10;
    *(v11 + v14[6]) = 0;
    v15 = (v11 + v14[7]);
    *v15 = v13;
    v15[1] = v12;
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_100043A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100009DCC(&qword_1006E2048, &unk_10057E550);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_100009DCC(&qword_1006E0518, &unk_10057BF70);
  v6[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(type metadata accessor for WidgetMusicPin(0) - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_10056CAA8();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v10 = sub_100572578();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v11 = sub_1005724A8();
  v6[27] = v11;
  v6[28] = *(v11 - 8);
  v6[29] = swift_task_alloc();
  v12 = type metadata accessor for PinsWidgetTimelineProvider.Entry(0);
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v6[38] = swift_task_alloc();
  v6[39] = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_100043F2C, 0, 0);
}

uint64_t sub_100043F2C()
{
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 344) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_100044044;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 376, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_100044044()
{

  return _swift_task_switch(sub_100044140, 0, 0);
}

uint64_t sub_100044140()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 296);
  *(v0 + 377) = *(v0 + 376);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, v4, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8), v1);
  sub_10001036C(v4, &qword_1006E0510, &qword_10057C360);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, v4, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8), v3);
  sub_10001036C(v4, &qword_1006E0510, &qword_10057C360);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, v5, &qword_1006E0520, &unk_100581DC0);
  v8 = sub_10006FEA0(*(v5 + *(v7 + 44)), *(v5 + *(v7 + 44) + 8));
  sub_10001036C(v5, &qword_1006E0520, &unk_100581DC0);
  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v9 = v8;
  }

  *(v0 + 360) = v9;
  sub_100019990(v8);
  sub_1005725C8();
  v11 = swift_task_alloc();
  *(v0 + 368) = v11;
  *v11 = v0;
  v11[1] = sub_100044338;
  v12 = *(v0 + 288);
  v13 = *(v0 + 232);

  return sub_100042EE4(v12, v13);
}

uint64_t sub_100044338()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100044490, 0, 0);
}

uint64_t sub_100044490()
{
  v1 = *(v0 + 377);
  v2 = *(v0 + 208);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  sub_1000425F4();
  sub_10056CA68();
  sub_10056C9D8();
  v7 = *(v6 + 8);
  v7(v4, v5);
  sub_100572558();
  v7(v3, v5);
  v81 = v7;
  if (v1 == 2)
  {
    sub_10056CA98();
    goto LABEL_22;
  }

  v8 = *(v0 + 288);
  if (sub_1000425F4())
  {
    v10 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(v0 + 112);
    v13 = *(*(v0 + 288) + *(*(v0 + 240) + 20));
    v14 = *(v13 + 16);
    do
    {
      v10 = v14 != v11;
      if (v14 == v11)
      {
        break;
      }

      v15 = *(v13 + 16);
      if (v11 >= v15)
      {
        __break(1u);
        goto LABEL_33;
      }

      v2 = *(v0 + 328);
      v16 = *(v0 + 336);
      v17 = *(v0 + 120);
      sub_1000459C8(v13 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, v17, type metadata accessor for WidgetMusicPin);
      v8 = sub_100044D58(v17, v16, v2);
      ++v11;
      sub_100045A98(*(v0 + 120), type metadata accessor for WidgetMusicPin);
    }

    while ((v8 & 1) == 0);
  }

  v18 = *(v0 + 377);
  sub_10056CA98();
  if (!v18)
  {
    if (v10)
    {
      v43 = *(v0 + 88);
      v44 = *(v0 + 96);
      v45 = *(v0 + 72);
      v46 = *(v0 + 80);
      v47 = *(v0 + 64);
      sub_10000CC8C(*(*(v0 + 344) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v45, &qword_1006E0518, &unk_10057BF70);
      sub_10007051C(*(v45 + *(v47 + 44)), *(v45 + *(v47 + 44) + 8), v46);
      sub_10001036C(v45, &qword_1006E0518, &unk_10057BF70);
      if ((*(v44 + 48))(v46, 1, v43) == 1)
      {
        sub_10001036C(*(v0 + 80), &qword_1006E0528, &qword_10057BF80);
      }

      else
      {
        v57 = *(v0 + 104);
        sub_100045A30(*(v0 + 80), v57, type metadata accessor for NowPlayingDataProvider.ItemProgress);
        sub_100012D44();
        sub_100045A98(v57, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      }

      v58 = *(v0 + 288);
      v76 = *(v0 + 360);
      v78 = *(v0 + 280);
      v80 = *(v0 + 240);
      v60 = *(v0 + 200);
      v59 = *(v0 + 208);
      v62 = *(v0 + 176);
      v61 = *(v0 + 184);
      v63 = *(v0 + 144);
      v64 = *(v0 + 128);
      sub_10056C9D8();
      sub_100572558();
      v81(v63, v64);
      (*(v61 + 8))(v59, v62);
      (*(v61 + 32))(v59, v60, v62);
      v65 = *(v80 + 24);
      v66 = *(v58 + v65);
      v67 = v76;

      *(v58 + v65) = v76;
      sub_1000459C8(v58, v78, type metadata accessor for PinsWidgetTimelineProvider.Entry);
      v9 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
      v2 = v9[2];
      v68 = v9[3];
      v8 = v2 + 1;
      if (v2 >= v68 >> 1)
      {
        v9 = sub_100040DC0((v68 > 1), v2 + 1, 1, v9);
      }

      v79 = v67;
      v41 = *(v0 + 280);
LABEL_24:
      v48 = *(v0 + 248);
      v9[2] = v8;
      v42 = v9 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v2;
      goto LABEL_25;
    }

LABEL_22:
    sub_1000459C8(*(v0 + 288), *(v0 + 256), type metadata accessor for PinsWidgetTimelineProvider.Entry);
    v9 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v9[2];
    v15 = v9[3];
    v8 = v2 + 1;
    if (v2 >= v15 >> 1)
    {
LABEL_33:
      v9 = sub_100040DC0((v15 > 1), v8, 1, v9);
    }

    v79 = *(v0 + 360);
    v41 = *(v0 + 256);
    goto LABEL_24;
  }

  if (v18 != 1 || !v10)
  {
    goto LABEL_22;
  }

  v20 = *(v0 + 360);
  v21 = *(v0 + 288);
  v22 = *(v0 + 272);
  v23 = *(*(v0 + 240) + 24);
  v24 = *(v21 + v23);
  v79 = v20;

  *(v21 + v23) = v20;
  sub_1000459C8(v21, v22, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v25 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
  v27 = v25[2];
  v26 = v25[3];
  v77 = v23;
  if (v27 >= v26 >> 1)
  {
    v25 = sub_100040DC0((v26 > 1), v27 + 1, 1, v25);
  }

  v28 = *(v0 + 288);
  v29 = *(v0 + 272);
  v75 = *(v0 + 264);
  v30 = *(v0 + 248);
  v31 = *(v0 + 168);
  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v25[2] = v27 + 1;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = *(v30 + 72);
  v36 = v25 + v34 + v35 * v27;
  v37 = v25;
  sub_100045A30(v29, v36, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v32 + 40))(v28, v31, v33);

  *(v21 + v77) = 0;
  sub_1000459C8(v28, v75, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v38 = v37;
  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v38 = sub_100040DC0((v39 > 1), v40 + 1, 1, v37);
  }

  v41 = *(v0 + 264);
  v38[2] = v40 + 1;
  v42 = v38 + v34 + v40 * v35;
LABEL_25:
  sub_100045A30(v41, v42, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v73 = *(v0 + 328);
  v74 = *(v0 + 336);
  v72 = *(v0 + 288);
  v49 = *(v0 + 184);
  v50 = *(v0 + 176);
  v69 = *(v0 + 208);
  v70 = *(v0 + 128);
  v71 = *(v0 + 152);
  v52 = *(v0 + 48);
  v51 = *(v0 + 56);
  v53 = *(v0 + 40);
  v54 = *(v0 + 24);
  (*(v49 + 16))(*(v0 + 192));
  sub_100042898();
  sub_100572638();
  v54(v51);

  (*(v52 + 8))(v51, v53);
  v81(v71, v70);
  (*(v49 + 8))(v69, v50);
  sub_100045A98(v72, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  sub_10001036C(v73, &qword_1006E0618, &unk_10057C230);
  sub_10001036C(v74, &qword_1006E0618, &unk_10057C230);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100044D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v46 - v6;
  __chkstk_darwin();
  v8 = &v46 - v7;
  __chkstk_darwin();
  v10 = &v46 - v9;
  sub_10000CC8C(a2, &v46 - v9, &qword_1006E0618, &unk_10057C230);
  v11 = type metadata accessor for WidgetMusicItem(0);
  v12 = (*(v11 - 8) + 48);
  v13 = *v12;
  if ((*v12)(v10, 1, v11) == 1)
  {
    v14 = a1;
    sub_10001036C(v10, &qword_1006E0618, &unk_10057C230);
  }

  else
  {
    v46 = v12;
    v20 = &v10[*(v11 + 36)];
    v22 = *v20;
    v21 = *(v20 + 1);

    sub_100045A98(v10, type metadata accessor for WidgetMusicItem);
    v23 = (a1 + *(type metadata accessor for WidgetMusicPin(0) + 28));
    if (v22 == *v23 && v21 == v23[1])
    {
      goto LABEL_32;
    }

    v14 = a1;
    v25 = sub_100574498();

    if (v25)
    {
      goto LABEL_31;
    }
  }

  sub_10000CC8C(a2, v8, &qword_1006E0618, &unk_10057C230);
  v15 = v13;
  if (v13(v8, 1, v11) == 1)
  {
    sub_10001036C(v8, &qword_1006E0618, &unk_10057C230);
    v16 = (v14 + *(type metadata accessor for WidgetMusicPin(0) + 32));
    v17 = *v16;
    v18 = v16[1];
    v19 = v49;
    goto LABEL_19;
  }

  v26 = &v8[*(v11 + 40)];
  v27 = *v26;
  v28 = *(v26 + 1);

  sub_100045A98(v8, type metadata accessor for WidgetMusicItem);
  v29 = (v14 + *(type metadata accessor for WidgetMusicPin(0) + 32));
  v17 = *v29;
  v18 = v29[1];
  v19 = v49;
  if (!v28)
  {
LABEL_19:
    v32 = v48;
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v18)
  {
    if (v27 == v17 && v28 == v18)
    {
      goto LABEL_32;
    }

    v31 = sub_100574498();

    v32 = v48;
    if (v31)
    {
      goto LABEL_31;
    }
  }

  else
  {

    v32 = v48;
  }

LABEL_22:
  sub_10000CC8C(v32, v19, &qword_1006E0618, &unk_10057C230);
  if (v13(v19, 1, v11) == 1)
  {
    sub_10001036C(v19, &qword_1006E0618, &unk_10057C230);
    goto LABEL_24;
  }

  v34 = (v19 + *(v11 + 36));
  v35 = v19;
  v37 = *v34;
  v36 = v34[1];

  sub_100045A98(v35, type metadata accessor for WidgetMusicItem);
  v38 = (v14 + *(type metadata accessor for WidgetMusicPin(0) + 28));
  if (v37 == *v38 && v36 == v38[1])
  {
    goto LABEL_32;
  }

  v40 = sub_100574498();

  if ((v40 & 1) == 0)
  {
LABEL_24:
    v33 = v47;
    sub_10000CC8C(v32, v47, &qword_1006E0618, &unk_10057C230);
    if (v15(v33, 1, v11) == 1)
    {
      sub_10001036C(v33, &qword_1006E0618, &unk_10057C230);
LABEL_38:
      v41 = v18 == 0;
      return v41 & 1;
    }

    v42 = (v33 + *(v11 + 40));
    v43 = *v42;
    v44 = v42[1];

    sub_100045A98(v33, type metadata accessor for WidgetMusicItem);
    if (!v44)
    {
      goto LABEL_38;
    }

    if (!v18)
    {

      v41 = 0;
      return v41 & 1;
    }

    if (v43 != v17 || v44 != v18)
    {
      v41 = sub_100574498();

      return v41 & 1;
    }

LABEL_32:

    v41 = 1;
    return v41 & 1;
  }

LABEL_31:
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_10004526C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = sub_100572F48();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v12 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  (*(v7 + 32))(&v13[v12], &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100006194(0, 0, v10, &unk_10057E580, v13);
}

uint64_t sub_100045458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = sub_100572F48();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v7 + 32))(v13 + v12, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;

  sub_100006194(0, 0, v10, &unk_10057E548, v13);
}

uint64_t sub_100045654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100045708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000457BC()
{
  v1 = sub_1005725D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045898(uint64_t a1)
{
  v4 = *(sub_1005725D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000CB98;

  return sub_100043A9C(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1000459C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100045AF8()
{
  v1 = sub_1005725D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045BC4(uint64_t a1)
{
  v4 = *(sub_1005725D8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_100042B5C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100045CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100045DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100045F14(uint64_t a1)
{
  type metadata accessor for TopChartsWidgetTimelineProvider.Entry(319);
  if (v1 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100046034@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for TopChartsWidgetContentView(0);
  __chkstk_darwin();
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100009DCC(&qword_1006E20E0, &qword_10057E608);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v52 - v5;
  v69 = sub_100009DCC(&qword_1006E20E8, &qword_10057E610);
  __chkstk_darwin();
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v52 - v7;
  v67 = sub_100009DCC(&qword_1006E20F0, &qword_10057E618);
  __chkstk_darwin();
  v68 = &v52 - v8;
  v9 = sub_10056EDA8();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v52 - v12;
  v13 = type metadata accessor for SmallTopChartsWidgetView(0);
  __chkstk_darwin();
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_100009DCC(&qword_1006E20F8, &qword_10057E620);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v54 = &v52 - v16;
  v66 = sub_100009DCC(&qword_1006E2100, &qword_10057E628);
  __chkstk_darwin();
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v52 - v18;
  v19 = sub_1005724A8();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TopChartsWidgetView(0);
  v71 = v1;
  sub_1000A8194(v22);
  v23 = (*(v20 + 88))(v22, v19);
  v24 = enum case for WidgetFamily.systemSmall(_:);
  KeyPath = swift_getKeyPath();
  if (v23 == v24)
  {
    *v15 = KeyPath;
    sub_100009DCC(&qword_1006E2108, &qword_10057E658);
    swift_storeEnumTagMultiPayload();
    v26 = v13[5];
    *(v15 + v26) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v27 = v13[6];
    *(v15 + v27) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
    swift_storeEnumTagMultiPayload();
    v28 = v13[7];
    *(v15 + v28) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
    swift_storeEnumTagMultiPayload();
    v29 = v15 + v13[8];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = v13[9];
    *(v15 + v30) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2140, &qword_10057E798);
    swift_storeEnumTagMultiPayload();
    v31 = v13[10];
    *(v15 + v31) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    v32 = v71;
    if (sub_1000B48F4())
    {
      v33 = v55;
      sub_10056ED98();
      v34 = v65;
    }

    else
    {
      v72 = _swiftEmptyArrayStorage;
      sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
      sub_100009DCC(&qword_1006E0C80, &unk_10057D530);
      sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80, &unk_10057D530, &protocol conformance descriptor for [A]);
      v33 = v55;
      v34 = v65;
      sub_100573DA8();
    }

    sub_100050804(&qword_1006E2128, type metadata accessor for SmallTopChartsWidgetView, &unk_10057E850);
    v39 = v54;
    sub_100570358();
    (*(v64 + 8))(v33, v34);
    sub_100050C48(v15, type metadata accessor for SmallTopChartsWidgetView);
    v40 = swift_getKeyPath();
    v41 = v53;
    v42 = &v53[*(v66 + 36)];
    v43 = sub_100009DCC(&qword_1006E2118, &qword_10057E700);
    sub_100051B94(v32, v42 + *(v43 + 28), type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    *v42 = v40;
    (*(v56 + 32))(v41, v39, v58);
    v44 = v57;
    sub_100019B40(v41, v57, &qword_1006E2100, &qword_10057E628);
    sub_10000CC8C(v44, v68, &qword_1006E2100, &qword_10057E628);
    swift_storeEnumTagMultiPayload();
    sub_10005084C();
    sub_100050964();
    sub_10056F5B8();
    return sub_10001036C(v44, &qword_1006E2100, &qword_10057E628);
  }

  else
  {
    *v4 = KeyPath;
    sub_100009DCC(&qword_1006E2108, &qword_10057E658);
    swift_storeEnumTagMultiPayload();
    v35 = v2[5];
    *(v4 + v35) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v36 = v2[6];
    *(v4 + v36) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
    swift_storeEnumTagMultiPayload();
    v37 = v2[7];
    *(v4 + v37) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    if (sub_1000B48F4())
    {
      sub_10056ED98();
      v38 = v65;
    }

    else
    {
      v72 = _swiftEmptyArrayStorage;
      sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
      sub_100009DCC(&qword_1006E0C80, &unk_10057D530);
      sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80, &unk_10057D530, &protocol conformance descriptor for [A]);
      v38 = v65;
      sub_100573DA8();
    }

    sub_100050804(&qword_1006E2110, type metadata accessor for TopChartsWidgetContentView, &unk_10057E8A0);
    v46 = v60;
    sub_100570358();
    (*(v64 + 8))(v11, v38);
    sub_100050C48(v4, type metadata accessor for TopChartsWidgetContentView);
    v47 = swift_getKeyPath();
    v48 = v59;
    v49 = &v59[*(v69 + 36)];
    v50 = sub_100009DCC(&qword_1006E2118, &qword_10057E700);
    sub_100051B94(v71, v49 + *(v50 + 28), type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    *v49 = v47;
    (*(v61 + 32))(v48, v46, v63);
    v51 = v62;
    sub_100019B40(v48, v62, &qword_1006E20E8, &qword_10057E610);
    sub_10000CC8C(v51, v68, &qword_1006E20E8, &qword_10057E610);
    swift_storeEnumTagMultiPayload();
    sub_10005084C();
    sub_100050964();
    sub_10056F5B8();
    sub_10001036C(v51, &qword_1006E20E8, &qword_10057E610);
    return (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_100046BEC()
{
  sub_100050CA8();

  return sub_10056F1A8();
}

uint64_t sub_100046C34(uint64_t a1)
{
  type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100051B94(a1, &v7 - v4, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  sub_100051B94(v5, v3, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  sub_100050CA8();
  sub_10056F1B8();
  return sub_100050C48(v5, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
}

uint64_t sub_100046E2C@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v92 = sub_1005724A8();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = (&v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_10056E698();
  v94 = *(v3 - 8);
  v95 = v3;
  __chkstk_darwin();
  v93 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v81 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v81 - v6;
  __chkstk_darwin();
  v89 = &v81 - v7;
  v98 = sub_100009DCC(&qword_1006E2370, &qword_10057E9F8);
  __chkstk_darwin();
  v9 = &v81 - v8;
  v101 = sub_100009DCC(&qword_1006E2378, &qword_10057EA00);
  __chkstk_darwin();
  v82 = &v81 - v10;
  v100 = sub_100009DCC(&qword_1006E2380, &qword_10057EA08);
  __chkstk_darwin();
  v12 = &v81 - v11;
  sub_100009DCC(&qword_1006E2388, &qword_10057EA10);
  __chkstk_darwin();
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v81 - v14;
  v97 = sub_100009DCC(&qword_1006E2390, &qword_10057EA18);
  __chkstk_darwin();
  v103 = &v81 - v15;
  v107 = sub_100009DCC(&qword_1006E2398, &qword_10057EA20);
  __chkstk_darwin();
  v108 = &v81 - v16;
  v88 = sub_100009DCC(&qword_1006E23A0, &qword_10057EA28);
  v87 = *(v88 - 8);
  __chkstk_darwin();
  v86 = &v81 - v17;
  v84 = sub_100009DCC(&qword_1006E23A8, &qword_10057EA30);
  __chkstk_darwin();
  v85 = &v81 - v18;
  v19 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0) - 8;
  __chkstk_darwin();
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v83 = (&v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v25 = (&v81 - v24);
  __chkstk_darwin();
  v27 = (&v81 - v26);
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v81 - v30;
  v106 = v1;
  sub_1000A845C(v27);
  sub_100051B94(v27 + *(v22 + 20), v21, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v27, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v32 = *&v21[*(v19 + 40)];

  sub_100050C48(v21, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  if (*(v32 + 16))
  {
    v33 = type metadata accessor for WidgetMusicItem(0);
    v34 = *(v33 - 8);
    sub_100051B94(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v31, type metadata accessor for WidgetMusicItem);

    (*(v34 + 56))(v31, 0, 1, v33);
  }

  else
  {

    v35 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  }

  v36 = v31;
  *v12 = sub_10056F378();
  *(v12 + 1) = 0x4014000000000000;
  v12[16] = 0;
  v37 = sub_100009DCC(&qword_1006E23B0, &qword_10057EA38);
  sub_100047E14(v106, v31, &v12[*(v37 + 44)]);
  sub_1000A845C(v25);
  v38 = (v25 + *(v22 + 40));
  v40 = *v38;
  v39 = v38[1];

  sub_100050C48(v25, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v105 = v31;
  if (v39)
  {
    v41 = v82;
    v42 = &v82[*(v101 + 36)];
    *v42 = v40;
    *(v42 + 1) = v39;
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    type metadata accessor for CGSize(0);
    v109 = 0;
    v110 = 0;
    sub_100570668();
    v43 = v112;
    *(v42 + 2) = v111;
    *(v42 + 6) = v43;
    v44 = type metadata accessor for ErrorMessageModifier(0);
    sub_10056FDE8();
    v45 = *(v44 + 36);
    *&v42[v45] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v46 = &v42[*(v44 + 40)];
    *v46 = swift_getKeyPath();
    *(v46 + 1) = 0;
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    v46[32] = 0;
    sub_10000CC8C(v12, v41, &qword_1006E2380, &qword_10057EA08);
    sub_10000CC8C(v41, v9, &qword_1006E2378, &qword_10057EA00);
    swift_storeEnumTagMultiPayload();
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380, &qword_10057EA08, &protocol conformance descriptor for VStack<A>);
    v47 = v99;
    v36 = v105;
    sub_10056F5B8();
    sub_10001036C(v41, &qword_1006E2378, &qword_10057EA00);
  }

  else
  {
    sub_10000CC8C(v12, v9, &qword_1006E2380, &qword_10057EA08);
    swift_storeEnumTagMultiPayload();
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380, &qword_10057EA08, &protocol conformance descriptor for VStack<A>);
    v47 = v99;
    sub_10056F5B8();
  }

  v48 = v104;
  sub_10001036C(v12, &qword_1006E2380, &qword_10057EA08);
  v49 = v102;
  sub_100019B40(v47, v102, &qword_1006E2388, &qword_10057EA10);
  v50 = v103;
  v51 = &v103[*(v97 + 36)];
  *v51 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E2108, &qword_10057E658);
  swift_storeEnumTagMultiPayload();
  v52 = *(type metadata accessor for BackgroundModifier(0) + 20);
  *(v51 + v52) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  swift_storeEnumTagMultiPayload();
  sub_100019B40(v49, v50, &qword_1006E2388, &qword_10057EA10);
  v53 = sub_1005709B8();
  v55 = v54;
  v56 = v108;
  v57 = &v108[*(v107 + 36)];
  sub_10004A6E0(v57);
  v58 = (v57 + *(sub_100009DCC(&qword_1006E23C8, &qword_10057EA40) + 36));
  *v58 = v53;
  v58[1] = v55;
  sub_100019B40(v50, v56, &qword_1006E2390, &qword_10057EA18);
  sub_10000CC8C(v36, v29, &qword_1006E0618, &unk_10057C230);
  v59 = type metadata accessor for WidgetMusicItem(0);
  if ((*(*(v59 - 8) + 48))(v29, 1, v59) == 1)
  {
    sub_10001036C(v29, &qword_1006E0618, &unk_10057C230);
    v60 = sub_10056C8A8();
    v61 = *(v60 - 8);
    (*(v61 + 56))(v48, 1, 1, v60);
    v62 = v81;
    sub_10056C868();
    v63 = *(v61 + 48);
    result = v63(v62, 1, v60);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v65 = v89;
    (*(v61 + 32))(v89, v62, v60);
    v66 = v63(v48, 1, v60);
    v67 = v86;
    if (v66 != 1)
    {
      sub_10001036C(v48, qword_1006E1D50, &qword_10057CA90);
    }

    v69 = v94;
    v68 = v95;
  }

  else
  {
    v70 = *(v59 + 28);
    v60 = sub_10056C8A8();
    v71 = *(v60 - 8);
    (*(v71 + 16))(v48, &v29[v70], v60);
    sub_100050C48(v29, type metadata accessor for WidgetMusicItem);
    (*(v71 + 56))(v48, 0, 1, v60);
    v65 = v89;
    (*(v71 + 32))(v89, v48, v60);
    v69 = v94;
    v68 = v95;
    v67 = v86;
  }

  sub_10056C8A8();
  (*(*(v60 - 8) + 56))(v65, 0, 1, v60);
  sub_100052E04();
  v72 = v108;
  sub_10056FF68();
  sub_10001036C(v65, qword_1006E1D50, &qword_10057CA90);
  sub_10001036C(v72, &qword_1006E2398, &qword_10057EA20);
  v73 = v83;
  sub_1000A845C(v83);
  type metadata accessor for SmallTopChartsWidgetView(0);
  v74 = v90;
  sub_1000A8194(v90);
  LOBYTE(v72) = sub_10004AB54(v74);
  (*(v91 + 8))(v74, v92);
  sub_100050C48(v73, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v75 = v93;
  if (v72)
  {
    (*(v69 + 104))(v93, enum case for ColorScheme.light(_:), v68);
  }

  else
  {
    sub_1000A81E4(v93);
  }

  v76 = v105;
  KeyPath = swift_getKeyPath();
  v78 = v85;
  v79 = &v85[*(v84 + 36)];
  v80 = sub_100009DCC(&qword_1006E0DE0, &qword_10057E940);
  (*(v69 + 32))(v79 + *(v80 + 28), v75, v68);
  *v79 = KeyPath;
  (*(v87 + 32))(v78, v67, v88);
  sub_100019B40(v78, v96, &qword_1006E23A8, &qword_10057EA30);
  return sub_10001036C(v76, &qword_1006E0618, &unk_10057C230);
}

uint64_t sub_100047E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a2;
  v165 = a3;
  v164 = sub_100009DCC(&qword_1006E2418, &qword_10057EA80);
  __chkstk_darwin();
  v149 = (&v126 - v4);
  v5 = type metadata accessor for PlaybackButtonLarge(0);
  v144 = *(v5 - 8);
  v145 = v5;
  __chkstk_darwin();
  v128 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E2420, &qword_10057EA88);
  __chkstk_darwin();
  v148 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v166 = &v126 - v8;
  v9 = sub_10056F808();
  v141 = *(v9 - 8);
  v142 = v9;
  __chkstk_darwin();
  v140 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E2428, &qword_10057EA90);
  __chkstk_darwin();
  v137 = (&v126 - v11);
  v138 = sub_100009DCC(&qword_1006E2430, &qword_10057EA98);
  __chkstk_darwin();
  v139 = &v126 - v12;
  v13 = sub_100009DCC(&qword_1006E2438, &qword_10057EAA0);
  v146 = *(v13 - 8);
  v147 = v13;
  __chkstk_darwin();
  v143 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v172 = &v126 - v15;
  v16 = sub_10056EDA8();
  v135 = *(v16 - 8);
  v136 = v16;
  __chkstk_darwin();
  v134 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v126 - v18;
  v160 = sub_100009DCC(&qword_1006E2440, &qword_10057EAA8);
  __chkstk_darwin();
  v161 = &v126 - v19;
  v132 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin();
  v131 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v127 = (&v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v150 = (&v126 - v22);
  v167 = type metadata accessor for WidgetMusicItem(0);
  v152 = *(v167 - 8);
  __chkstk_darwin();
  v157 = (&v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E2448, &qword_10057EAB0);
  __chkstk_darwin();
  v163 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v126 - v25;
  v26 = sub_10056EBD8();
  v129 = *(v26 - 8);
  v130 = v26;
  __chkstk_darwin();
  v28 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v126 - v29;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v155 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v126 - v32;
  v153 = sub_100009DCC(&qword_1006E2450, &qword_10057EAB8);
  __chkstk_darwin();
  v154 = &v126 - v34;
  v35 = sub_100572508();
  v36 = *(v35 - 8);
  __chkstk_darwin();
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v126 - v39;
  sub_100009DCC(&qword_1006E2458, &qword_10057EAC0);
  __chkstk_darwin();
  v159 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v126 - v42;
  v174 = a1;
  sub_1000493B4(v40);
  sub_1005724C8();
  LOBYTE(a1) = sub_1005724E8();
  v43 = *(v36 + 8);
  v169 = v38;
  v43(v38, v35);
  v168 = v40;
  v170 = v36 + 8;
  v171 = v35;
  v43(v40, v35);
  v158 = v43;
  if (a1)
  {
    v44 = v152;
    v45 = v156;
    v46 = v167;
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v47 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    v48 = sub_10000C49C(v47, qword_1006FC128);
    (*(*(v47 - 8) + 16))(v154, v48, v47);
    swift_storeEnumTagMultiPayload();
    v49 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v50 = sub_1000378D0();
    *&v182 = v49;
    *(&v182 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    sub_1000530D0();
    sub_10056F5B8();
    v51 = v174;
  }

  else
  {
    v45 = v156;
    sub_10000CC8C(v156, v33, &qword_1006E0618, &unk_10057C230);
    v44 = v152;
    v46 = v167;
    if ((*(v152 + 48))(v33, 1, v167) == 1)
    {
      sub_10001036C(v33, &qword_1006E0618, &unk_10057C230);
      v179 = 0u;
      v180 = 0u;
      v181 = 0;
    }

    else
    {
      *(&v180 + 1) = v46;
      v181 = &off_100681290;
      v52 = sub_10002AB7C(&v179);
      sub_1000522A4(v33, v52, type metadata accessor for WidgetMusicItem);
    }

    type metadata accessor for SmallTopChartsWidgetView(0);
    sub_1000A840C(v30);
    v54 = v129;
    v53 = v130;
    (*(v129 + 104))(v28, enum case for DynamicTypeSize.xxLarge(_:), v130);
    v55 = sub_10056EBC8();
    v56 = *(v54 + 8);
    v56(v28, v53);
    v56(v30, v53);
    if (v55)
    {
      v57 = Corner.small.unsafeMutableAddressor();
    }

    else
    {
      v57 = Corner.extraSmall.unsafeMutableAddressor();
    }

    v58 = *(v57 + 16);
    v59 = *v57;
    v182 = v179;
    v183 = v180;
    *v184 = v181;
    *&v184[8] = v59;
    v184[24] = v58;
    sub_100053074(&v182, v154);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    v60 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v61 = sub_1000378D0();
    *&v179 = v60;
    *(&v179 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    sub_1000530D0();
    sub_10056F5B8();
    sub_100053124(&v182);
    v51 = v174;
    v43 = v158;
  }

  v62 = v155;
  sub_10000CC8C(v45, v155, &qword_1006E0618, &unk_10057C230);
  if ((*(v44 + 48))(v62, 1, v46) == 1)
  {
    sub_10001036C(v62, &qword_1006E0618, &unk_10057C230);
    v63 = v150;
    sub_1000A845C(v150);
    v64 = v131;
    sub_100051B94(v63 + *(v151 + 20), v131, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_100050C48(v63, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v65 = (v64 + *(v132 + 28));
    v67 = *v65;
    v66 = v65[1];

    sub_100050C48(v64, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_1005709F8();
    sub_10056EDF8();
    *&v178[71] = v185;
    *&v178[55] = *&v184[16];
    *&v178[103] = v187;
    *&v178[87] = v186;
    *&v178[39] = *v184;
    *&v178[23] = v183;
    *&v178[7] = v182;
    v68 = *&v178[80];
    v69 = v161;
    *(v161 + 81) = *&v178[64];
    *(v69 + 97) = v68;
    *(v69 + 113) = *&v178[96];
    v70 = *&v178[16];
    *(v69 + 17) = *v178;
    *(v69 + 33) = v70;
    v71 = *&v178[48];
    *(v69 + 49) = *&v178[32];
    *v69 = v67;
    *(v69 + 8) = v66;
    *(v69 + 16) = 0;
    *(v69 + 128) = *&v178[111];
    *(v69 + 65) = v71;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E2468, &qword_10057EAC8);
    sub_100010BC0(&qword_1006E2470, &qword_1006E2418, &qword_10057EA80, &protocol conformance descriptor for TupleView<A>);
    sub_100053178();
    v72 = v162;
    sub_10056F5B8();
  }

  else
  {
    v73 = v157;
    sub_1000522A4(v62, v157, type metadata accessor for WidgetMusicItem);
    type metadata accessor for SmallTopChartsWidgetView(0);
    v74 = v133;
    sub_1000A84AC(v133);
    v75 = v134;
    sub_10056ED98();
    sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v76 = v136;
    v77 = sub_100573D78();
    v78 = *(v135 + 8);
    v78(v75, v76);
    v78(v74, v76);
    if (v77)
    {
      sub_1005709E8();
      sub_10056E888();
      LODWORD(v155) = 0;
      v156 = v182;
      v153 = *v184;
      v154 = v183;
      v152 = *&v184[8];
      v177 = 1;
      v176 = BYTE8(v182);
      v175 = BYTE8(v183);
      v79 = 1;
      v135 = BYTE8(v182);
      v136 = BYTE8(v183);
      LOBYTE(v179) = 0;
    }

    else
    {
      v156 = 0;
      v153 = 0;
      v154 = 0;
      v152 = 0;
      v135 = 0;
      v136 = 0;
      v79 = 0;
      LODWORD(v155) = 1;
    }

    v80 = sub_10056F378();
    v81 = v137;
    *v137 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    v82 = sub_100009DCC(&qword_1006E2490, &qword_10057EAD8);
    sub_1000496EC(v51, v73, v81 + *(v82 + 44));
    v83 = v168;
    sub_1000493B4(v168);
    v84 = v169;
    sub_1005724C8();
    v85 = sub_1005724E8();
    v86 = v84;
    v87 = v171;
    v43(v86, v171);
    v43(v83, v87);
    v88 = 1;
    if (v85)
    {
      v89 = 2;
    }

    else
    {
      v89 = 1;
    }

    KeyPath = swift_getKeyPath();
    v91 = v139;
    sub_100019B40(v81, v139, &qword_1006E2428, &qword_10057EA90);
    v92 = v91 + *(v138 + 36);
    *v92 = KeyPath;
    *(v92 + 8) = v89;
    *(v92 + 16) = 0;
    v93 = v140;
    sub_10056F7E8();
    sub_10005332C();
    sub_1005701F8();
    (*(v141 + 8))(v93, v142);
    sub_10001036C(v91, &qword_1006E2430, &qword_10057EA98);
    v94 = v145;
    if (*(v73 + *(v167 + 64)) == 1)
    {
      v95 = v128;
      sub_100051B94(v73, v128, type metadata accessor for WidgetMusicItem);
      v96 = v150;
      sub_1000A845C(v150);
      v97 = v151;
      sub_10000CC8C(v96 + *(v151 + 28), v95 + *(v94 + 20), &qword_1006E0618, &unk_10057C230);
      sub_100050C48(v96, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
      v98 = v127;
      sub_1000A845C(v127);
      v99 = *(v98 + *(v97 + 24));
      sub_100050C48(v98, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
      *(v95 + *(v94 + 24)) = v99;
      sub_1000522A4(v95, v166, type metadata accessor for PlaybackButtonLarge);
      v88 = 0;
    }

    v100 = v166;
    (*(v144 + 56))(v166, v88, 1, v94);
    v102 = v146;
    v101 = v147;
    v103 = *(v146 + 16);
    v104 = v143;
    v103(v143, v172, v147);
    v105 = v148;
    sub_10000CC8C(v100, v148, &qword_1006E2420, &qword_10057EA88);
    v106 = v149;
    *v149 = 0;
    *(v106 + 8) = v79;
    v107 = v135;
    *(v106 + 16) = v156;
    *(v106 + 24) = v107;
    v108 = v136;
    *(v106 + 32) = v154;
    *(v106 + 40) = v108;
    v109 = v152;
    *(v106 + 48) = v153;
    *(v106 + 56) = v109;
    *(v106 + 64) = v155;
    v110 = sub_100009DCC(&qword_1006E24A8, &qword_10057EB18);
    v103((v106 + *(v110 + 48)), v104, v101);
    sub_10000CC8C(v105, v106 + *(v110 + 64), &qword_1006E2420, &qword_10057EA88);
    sub_10001036C(v105, &qword_1006E2420, &qword_10057EA88);
    v111 = *(v102 + 8);
    v111(v104, v101);
    sub_10000CC8C(v106, v161, &qword_1006E2418, &qword_10057EA80);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E2468, &qword_10057EAC8);
    sub_100010BC0(&qword_1006E2470, &qword_1006E2418, &qword_10057EA80, &protocol conformance descriptor for TupleView<A>);
    sub_100053178();
    v112 = v162;
    sub_10056F5B8();
    v72 = v112;
    sub_10001036C(v106, &qword_1006E2418, &qword_10057EA80);
    sub_10001036C(v166, &qword_1006E2420, &qword_10057EA88);
    v111(v172, v101);
    sub_100050C48(v157, type metadata accessor for WidgetMusicItem);
    v43 = v158;
  }

  v113 = v168;
  sub_1000493B4(v168);
  v114 = v169;
  sub_1005724C8();
  v115 = sub_1005724E8();
  v116 = v114;
  v117 = v171;
  v43(v116, v171);
  v43(v113, v117);
  LODWORD(v174) = v115 & 1;
  v118 = v173;
  v119 = v159;
  sub_10000CC8C(v173, v159, &qword_1006E2458, &qword_10057EAC0);
  v120 = v163;
  sub_10000CC8C(v72, v163, &qword_1006E2448, &qword_10057EAB0);
  v121 = v72;
  v122 = v165;
  sub_10000CC8C(v119, v165, &qword_1006E2458, &qword_10057EAC0);
  v123 = sub_100009DCC(&qword_1006E2488, &qword_10057EAD0);
  sub_10000CC8C(v120, v122 + *(v123 + 48), &qword_1006E2448, &qword_10057EAB0);
  v124 = v122 + *(v123 + 64);
  *v124 = 0;
  *(v124 + 8) = v174;
  *(v124 + 9) = (v115 & 1) == 0;
  sub_10001036C(v121, &qword_1006E2448, &qword_10057EAB0);
  sub_10001036C(v118, &qword_1006E2458, &qword_10057EAC0);
  sub_10001036C(v120, &qword_1006E2448, &qword_10057EAB0);
  return sub_10001036C(v119, &qword_1006E2458, &qword_10057EAC0);
}

uint64_t sub_1000493B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10056F198();
  v25 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100572468();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = type metadata accessor for SmallTopChartsWidgetView(0);
  sub_1000A8484(v11);
  sub_100572458();
  v13 = sub_100572448();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v11, v6);
  if (v13)
  {
    v15 = v2 + *(v12 + 32);
    v16 = *v15;
    if (*(v15 + 8) == 1)
    {
      if ((v16 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }

    else
    {

      v18 = sub_100573438();
      v19 = sub_10056F9D8();
      sub_10056DE58(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      sub_10056F188();
      swift_getAtKeyPath();
      sub_100053068(v16, 0);
      (*(v25 + 8))(v5, v3);
      if ((v27 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }
  }

  v20 = v2 + *(v12 + 32);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  else
  {

    v22 = sub_100573438();
    v23 = sub_10056F9D8();
    sub_10056DE58(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v21, 0);
    (*(v25 + 8))(v5, v3);
    if ((v28 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  return sub_1005724B8();
}

uint64_t sub_1000496EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a3;
  v166 = a2;
  v4 = sub_10056EBD8();
  v177 = *(v4 - 8);
  v178 = v4;
  __chkstk_darwin();
  v175 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v174 = &v160 - v6;
  v164 = sub_10056FC68();
  v7 = *(v164 - 8);
  __chkstk_darwin();
  v163 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0) - 8;
  __chkstk_darwin();
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0) - 8;
  __chkstk_darwin();
  v14 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100009DCC(&qword_1006E24B0, &qword_10057EB20);
  __chkstk_darwin();
  v162 = &v160 - v15;
  v170 = sub_100009DCC(&qword_1006E24B8, &qword_10057EB28);
  __chkstk_darwin();
  v173 = &v160 - v16;
  v172 = sub_100009DCC(&qword_1006E24C0, &qword_10057EB30);
  __chkstk_darwin();
  v167 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v160 - v18;
  __chkstk_darwin();
  v168 = &v160 - v19;
  v176 = a1;
  sub_1000A845C(v14);
  sub_100051B94(v14 + *(v12 + 28), v11, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v14, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v20 = &v11[*(v9 + 36)];
  v22 = *v20;
  v21 = v20[1];

  sub_100050C48(v11, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v188 = v22;
  v189 = v21;
  sub_10001B550();
  v23 = sub_10056FF28();
  v25 = v24;
  LOBYTE(v14) = v26;
  v27 = [objc_opt_self() systemFontOfSize:0.0];
  v28 = [v27 fontName];

  sub_1005728D8();
  v30 = v163;
  v29 = v164;
  (*(v7 + 104))(v163, enum case for Font.TextStyle.caption2(_:), v164);
  sub_10056FB98();

  (*(v7 + 8))(v30, v29);
  v31 = sub_10056FE88();
  v33 = v32;
  LOBYTE(v27) = v34;

  sub_10001B5A4(v23, v25, v14 & 1);
  v35 = v162;

  sub_10056FB88();
  v36 = sub_10056FD98();
  v38 = v37;
  LOBYTE(v14) = v39;
  v164 = v40;
  sub_10001B5A4(v31, v33, v27 & 1);

  v41 = (v35 + *(sub_100009DCC(&qword_1006E24C8, &qword_10057EB38) + 36));
  v42 = *(sub_100009DCC(&qword_1006E1050, &qword_10057EB40) + 28);
  v43 = enum case for Text.Case.uppercase(_:);
  v44 = sub_10056FE68();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v41 + v42, v43, v44);
  (*(v45 + 56))(v41 + v42, 0, 1, v44);
  *v41 = swift_getKeyPath();
  *v35 = v36;
  *(v35 + 8) = v38;
  *(v35 + 16) = v14 & 1;
  *(v35 + 24) = v164;
  if (qword_1006DF928 != -1)
  {
    swift_once();
  }

  v160 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  v46 = sub_10000C49C(v160, qword_1006FC0B8);
  sub_10000CC8C(v46, v35 + *(v169 + 36), &qword_1006E1058, &qword_10057CCD0);
  sub_100053438();
  v47 = v173;
  sub_10056FF58();
  sub_10001036C(v35, &qword_1006E24B0, &qword_10057EB20);
  v48 = sub_10056FA58();
  sub_10056E598();
  v49 = v47 + *(v170 + 36);
  *v49 = v48;
  *(v49 + 8) = v50;
  *(v49 + 16) = v51;
  *(v49 + 24) = v52;
  *(v49 + 32) = v53;
  *(v49 + 40) = 0;
  v54 = sub_10056FA88();
  type metadata accessor for SmallTopChartsWidgetView(0);
  v55 = v174;
  sub_1000A840C(v174);
  v57 = v177;
  v56 = v178;
  v58 = v175;
  (*(v177 + 104))(v175, enum case for DynamicTypeSize.xxxLarge(_:), v178);
  sub_10056EBC8();
  v59 = *(v57 + 8);
  v59(v58, v56);
  v59(v55, v56);
  sub_10056E598();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v171;
  sub_100019B40(v47, v171, &qword_1006E24B8, &qword_10057EB28);
  v69 = v68 + *(v172 + 36);
  *v69 = v54;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  sub_100019B40(v68, v168, &qword_1006E24C0, &qword_10057EB30);
  v188 = 49;
  v189 = 0xE100000000000000;
  v70 = String.nonBreakingSpace.unsafeMutableAddressor();
  v71 = *v70;
  v72 = v70[1];

  v209._countAndFlagsBits = v71;
  v209._object = v72;
  sub_100572A98(v209);

  v74 = *v70;
  v73 = v70[1];

  v210._countAndFlagsBits = v74;
  v210._object = v73;
  sub_100572A98(v210);

  v75 = v166;

  v76 = sub_10056FE58();
  v162 = v77;
  v163 = v76;
  v161 = v78;
  v164 = v79;

  v80 = *(v75 + *(type metadata accessor for WidgetMusicItem(0) + 60));
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = (v80 + 32);
    if (qword_1006DF8F0 != -1)
    {
      swift_once();
    }

    v83 = 0;
    v84 = 0;
    v177 = 0xE000000000000000;
    v178 = _swiftEmptyArrayStorage;
    do
    {
      LODWORD(v174) = v84;
      v175 = v83;
      v176 = v81;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07D0, *v82);
      v86 = v85;
      v88 = v87;
      v90 = v89;
      sub_10056FC18();
      v91 = sub_10056FE88();
      v169 = v92;
      v170 = v91;
      LODWORD(v173) = v93;
      v172 = v94;
      ++v82;

      sub_10001B5A4(v86, v88, v90 & 1);
      v95 = v176;

      LOBYTE(v88) = v174;
      v96 = v175;
      v97 = v177;
      v98 = v170;
      v171 = sub_10056FE58();
      v99 = v97;
      v101 = v100;
      v103 = v102;
      v105 = v104;
      sub_10001B5A4(v96, v99, v88 & 1);

      v106 = v98;
      v107 = v101;
      sub_10001B5A4(v106, v169, v173 & 1);

      v108 = v171;
      v83 = v171;
      v177 = v101;
      v178 = v105;
      v84 = v103;
      v81 = v95 - 1;
    }

    while (v81);
  }

  else
  {
    v108 = 0;
    LOBYTE(v103) = 0;
    v107 = 0xE000000000000000;
  }

  v109 = v161;
  v111 = v162;
  v110 = v163;
  v112 = v108;
  v113 = sub_10056FE58();
  v177 = v114;
  v178 = v113;
  v116 = v115;
  v176 = v117;
  sub_10001B5A4(v112, v107, v103 & 1);

  sub_10001B5A4(v110, v111, v109 & 1);

  sub_10056FC18();
  sub_10056FB28();

  v119 = v177;
  v118 = v178;
  v120 = sub_10056FE88();
  v122 = v121;
  v124 = v123;

  sub_10001B5A4(v118, v119, v116 & 1);

  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v125 = sub_10056FE18();
  v127 = v126;
  v129 = v128;
  v178 = v130;
  sub_10001B5A4(v120, v122, v124 & 1);

  sub_1005709F8();
  sub_10056EDF8();
  LODWORD(v177) = v129 & 1;
  v208 = v129 & 1;
  v131 = v166[5];
  if (!v131)
  {
    goto LABEL_19;
  }

  v132 = HIBYTE(v131) & 0xF;
  if ((v131 & 0x2000000000000000) == 0)
  {
    v132 = v166[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v132)
  {
    v174 = v127;
    v175 = v125;

    sub_10056FC18();
    v133 = sub_10056FE88();
    v135 = v134;
    v137 = v136;

    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v160, qword_1006FC0D8);
    sub_100010BC0(&qword_1006E24F0, &qword_1006E1058, &qword_10057CCD0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
    v138 = sub_10056FE28();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    sub_10001B5A4(v133, v135, v137 & 1);

    v145 = v142 & 1;
    v176 = v138;
    sub_10002AAC4(v138, v140, v142 & 1);

    v146 = v174;
    v125 = v175;
  }

  else
  {
LABEL_19:
    v176 = 0;
    v140 = 0;
    v145 = 0;
    v144 = 0;
    v146 = v127;
  }

  v147 = v167;
  sub_10000CC8C(v168, v167, &qword_1006E24C0, &qword_10057EB30);
  v148 = v147;
  v149 = v165;
  sub_10000CC8C(v148, v165, &qword_1006E24C0, &qword_10057EB30);
  v150 = sub_100009DCC(&qword_1006E24E0, &qword_10057EB78);
  v151 = (v149 + *(v150 + 48));
  *&v179 = v125;
  *(&v179 + 1) = v146;
  LOBYTE(v180) = v177;
  *(&v180 + 1) = *v207;
  DWORD1(v180) = *&v207[3];
  *(&v180 + 1) = v178;
  v185 = v204;
  v186 = v205;
  v187 = v206;
  v184 = v203;
  v183 = v202;
  v182 = v201;
  v181 = v200;
  v152 = v205;
  v151[6] = v204;
  v151[7] = v152;
  v151[8] = v187;
  v153 = v182;
  v151[2] = v181;
  v151[3] = v153;
  v154 = v184;
  v151[4] = v183;
  v151[5] = v154;
  v155 = v180;
  *v151 = v179;
  v151[1] = v155;
  v156 = v146;
  v157 = (v149 + *(v150 + 64));
  sub_10000CC8C(&v179, &v188, &qword_1006E24E8, &qword_10057EB80);
  v158 = v176;
  sub_1000535A8(v176, v140, v145, v144);
  sub_1000535EC(v158, v140, v145, v144);
  *v157 = v158;
  v157[1] = v140;
  v157[2] = v145;
  v157[3] = v144;
  sub_10001036C(v168, &qword_1006E24C0, &qword_10057EB30);
  sub_1000535EC(v158, v140, v145, v144);
  v188 = v125;
  v189 = v156;
  v190 = v177;
  *v191 = *v207;
  *&v191[3] = *&v207[3];
  v192 = v178;
  v197 = v204;
  v198 = v205;
  v199 = v206;
  v193 = v200;
  v194 = v201;
  v196 = v203;
  v195 = v202;
  sub_10001036C(&v188, &qword_1006E24E8, &qword_10057EB80);
  return sub_10001036C(v167, &qword_1006E24C0, &qword_10057EB30);
}

uint64_t sub_10004A6E0@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006E23F8, &qword_10057EA48);
  __chkstk_darwin();
  v3 = &v24 - v2;
  v4 = sub_100572508();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  sub_1000493B4(&v24 - v8);
  sub_1005724F8();
  v10 = sub_1005724E8();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v9, v4);
  if (v10)
  {
    if (qword_1006DF960 != -1)
    {
      swift_once();
    }

    v12 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
    v13 = sub_10000C49C(v12, qword_1006FC140);
    sub_10000CC8C(v13, v3, &qword_1006E1918, &qword_10057DAA0);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    sub_100052FA0();
    v14 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v15 = sub_1000378D0();
    v24 = v14;
    v25 = v15;
    swift_getOpaqueTypeConformance2();
LABEL_10:
    sub_10056F5B8();
    v17 = 0;
    goto LABEL_11;
  }

  sub_1000493B4(v9);
  sub_1005724C8();
  sub_100050804(&qword_1006E2400, &type metadata accessor for WidgetLocation, &protocol conformance descriptor for WidgetLocation);
  v16 = sub_1005727E8();
  v11(v7, v4);
  v11(v9, v4);
  if ((v16 & 1) == 0)
  {
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v18 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    v19 = sub_10000C49C(v18, qword_1006FC128);
    (*(*(v18 - 8) + 16))(v3, v19, v18);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
    sub_100052FA0();
    v20 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v21 = sub_1000378D0();
    v24 = v20;
    v25 = v21;
    swift_getOpaqueTypeConformance2();
    goto LABEL_10;
  }

  v17 = 1;
LABEL_11:
  v22 = sub_100009DCC(&qword_1006E2410, &qword_10057EA78);
  return (*(*(v22 - 8) + 56))(a1, v17, 1, v22);
}

uint64_t sub_10004AB54(uint64_t a1)
{
  v74 = a1;
  v68 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v3 = v62 - v2;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v63 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v62 - v5;
  v7 = type metadata accessor for WidgetMusicItem(0);
  v71 = *(v7 - 1);
  __chkstk_darwin();
  v70 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v62 - v9;
  v11 = sub_1005724A8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v16 = *(v15 + 20);
  v69 = v1;
  v17 = *(v1 + v16 + *(type metadata accessor for TopChartsWidgetDataProvider.Chart(0) + 32));
  (*(v12 + 16))(v14, v74, v11);
  v18 = (*(v12 + 88))(v14, v11);
  if (v18 == enum case for WidgetFamily.systemSmall(_:))
  {

    v19 = 1;
  }

  else if (v18 == enum case for WidgetFamily.systemMedium(_:))
  {

    v19 = 2;
  }

  else if (v18 == enum case for WidgetFamily.systemLarge(_:))
  {

    v19 = 5;
  }

  else if (v18 == enum case for WidgetFamily.systemExtraLarge(_:))
  {

    v19 = 10;
  }

  else
  {
    v20 = *(v12 + 8);

    v20(v14, v11);
    v19 = 0;
  }

  result = sub_100074754(v19, v17);
  v67 = v24;
  v25 = v23 >> 1;
  if (v22 == v23 >> 1)
  {
LABEL_47:
    swift_unknownObjectRelease();
    return 0;
  }

  v62[1] = result;
  v65 = *(v15 + 28);
  v66 = v71 + 56;
  v26 = &qword_1006E0618;
  v72 = v6;
  v73 = v10;
  v64 = v23 >> 1;
  while (v22 < v25)
  {
    v28 = v7;
    v29 = v71;
    v30 = *(v71 + 72);
    v74 = v22;
    sub_100051B94(v67 + v30 * v22, v10, type metadata accessor for WidgetMusicItem);
    sub_100051B94(v10, v6, type metadata accessor for WidgetMusicItem);
    (*(v29 + 56))(v6, 0, 1, v28);
    v31 = *(v68 + 48);
    sub_10000CC8C(v6, v3, v26, &unk_10057C230);
    sub_10000CC8C(v69 + v65, &v3[v31], v26, &unk_10057C230);
    v32 = v26;
    v33 = *(v29 + 48);
    v7 = v28;
    if (v33(v3, 1, v28) == 1)
    {
      sub_10001036C(v6, v32, &unk_10057C230);
      sub_100050C48(v10, type metadata accessor for WidgetMusicItem);
      v27 = v33(&v3[v31], 1, v28);
      v26 = v32;
      if (v27 == 1)
      {
        swift_unknownObjectRelease();
        sub_10001036C(v3, &qword_1006E0618, &unk_10057C230);
        return 1;
      }

      goto LABEL_13;
    }

    v34 = v63;
    sub_10000CC8C(v3, v63, v32, &unk_10057C230);
    if (v33(&v3[v31], 1, v7) == 1)
    {
      sub_10001036C(v72, v32, &unk_10057C230);
      sub_100050C48(v73, type metadata accessor for WidgetMusicItem);
      sub_100050C48(v34, type metadata accessor for WidgetMusicItem);
      v26 = v32;
LABEL_13:
      result = sub_10001036C(v3, &qword_1006E0DE8, &unk_10057C9C0);
      v6 = v72;
      v10 = v73;
      goto LABEL_14;
    }

    v35 = &v3[v31];
    v36 = v70;
    sub_1000522A4(v35, v70, type metadata accessor for WidgetMusicItem);
    v37 = v7[9];
    v38 = *(v34 + v37);
    v39 = *(v34 + v37 + 8);
    v40 = (v36 + v37);
    v41 = v38 == *v40 && v39 == v40[1];
    v26 = v32;
    v6 = v72;
    v10 = v73;
    if (!v41 && (sub_100574498() & 1) == 0)
    {
      if ((v42 = v7[10], v43 = (v34 + v42), (v44 = *(v34 + v42 + 8)) == 0) || (v45 = (v70 + v42), (v46 = v45[1]) == 0) || (*v43 != *v45 || v44 != v46) && (sub_100574498() & 1) == 0)
      {
        v47 = v7[11];
        v48 = *(v34 + v47);
        v49 = *(v34 + v47 + 8);
        v50 = (v70 + v47);
        if ((v48 != *v50 || v49 != v50[1]) && (sub_100574498() & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }

    v51 = v7[12];
    v52 = (v34 + v51);
    v53 = *(v34 + v51 + 8);
    v54 = (v70 + v51);
    v55 = v54[1];
    if (v53)
    {
      if (v55 && (*v52 == *v54 && v53 == v55 || (sub_100574498() & 1) != 0))
      {
LABEL_49:
        sub_100050C48(v70, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v6, &qword_1006E0618, &unk_10057C230);
        sub_100050C48(v10, type metadata accessor for WidgetMusicItem);
        sub_100050C48(v34, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v3, &qword_1006E0618, &unk_10057C230);
LABEL_50:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else if (!v55)
    {
      goto LABEL_49;
    }

    v56 = v7[13];
    v57 = (v34 + v56);
    v58 = *(v34 + v56 + 8);
    v59 = (v70 + v56);
    v60 = v59[1];
    if (!v58)
    {
      if (!v60)
      {
        goto LABEL_49;
      }

LABEL_46:
      sub_100050C48(v70, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v6, v32, &unk_10057C230);
      sub_100050C48(v10, type metadata accessor for WidgetMusicItem);
      sub_100050C48(v34, type metadata accessor for WidgetMusicItem);
      result = sub_10001036C(v3, v32, &unk_10057C230);
      goto LABEL_14;
    }

    if (!v60)
    {
      goto LABEL_46;
    }

    if (*v57 == *v59 && v58 == v60)
    {
      goto LABEL_49;
    }

    v61 = sub_100574498();
    sub_100050C48(v70, type metadata accessor for WidgetMusicItem);
    sub_10001036C(v6, v26, &unk_10057C230);
    sub_100050C48(v10, type metadata accessor for WidgetMusicItem);
    sub_100050C48(v34, type metadata accessor for WidgetMusicItem);
    result = sub_10001036C(v3, v26, &unk_10057C230);
    if (v61)
    {
      goto LABEL_50;
    }

LABEL_14:
    v22 = v74 + 1;
    v25 = v64;
    if (v64 == v74 + 1)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B394@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v3 = (v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10056E698();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100009DCC(&qword_1006E22D0, &qword_10057E8F0);
  __chkstk_darwin();
  v8 = v47 - v7;
  v9 = sub_1005724A8();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = v47 - v13;
  __chkstk_darwin();
  v16 = (v47 - v15);
  v17 = type metadata accessor for TopChartsWidgetContentView(0);
  v18 = *(v17 + 20);
  v47[1] = v17;
  v47[2] = v18;
  sub_1000A8194(v16);
  (*(v10 + 32))(v14, v16, v9);
  v19 = (*(v10 + 88))(v14, v9);
  if (v19 == enum case for WidgetFamily.systemMedium(_:))
  {
    v20 = 8.0;
    v21 = 6.0;
    v22 = 10.0;
    v23 = 2;
    v24 = 1;
  }

  else
  {
    v20 = 12.0;
    v21 = 8.0;
    v22 = 14.0;
    if (v19 == enum case for WidgetFamily.systemLarge(_:))
    {
      v24 = 1;
      v23 = 5;
    }

    else if (v19 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v24 = 2;
      v23 = 5;
    }

    else
    {
      (*(v10 + 8))(v14, v9);
      v23 = 0;
      v24 = 0;
      v22 = 0.0;
      v21 = 0.0;
      v20 = 0.0;
    }
  }

  *v8 = sub_10056F368();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = *(sub_100009DCC(&qword_1006E22D8, &qword_10057E8F8) + 44);
  *&v52[0] = v23;
  *&v52[1] = v24;
  v52[2] = v22;
  v52[3] = v21;
  v52[4] = v20;
  sub_10004B8FC(v1, v52, &v8[v25]);
  v26 = sub_10056FA88();
  sub_10056E598();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v8[*(sub_100009DCC(&qword_1006E22E0, &qword_10057E900) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = &v8[*(v6 + 36)];
  *v36 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E2108, &qword_10057E658);
  swift_storeEnumTagMultiPayload();
  v37 = *(type metadata accessor for BackgroundModifier(0) + 20);
  *(v36 + v37) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  swift_storeEnumTagMultiPayload();
  sub_1000A845C(v3);
  sub_1000A8194(v12);
  LOBYTE(v36) = sub_10004AB54(v12);
  (*(v10 + 8))(v12, v9);
  sub_100050C48(v3, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  if (v36)
  {
    v39 = v48;
    v38 = v49;
    v40 = v50;
    (*(v49 + 104))(v48, enum case for ColorScheme.light(_:), v50);
  }

  else
  {
    v39 = v48;
    sub_1000A81E4(v48);
    v38 = v49;
    v40 = v50;
  }

  KeyPath = swift_getKeyPath();
  v42 = sub_100009DCC(&qword_1006E22E8, &qword_10057E938);
  v43 = v51;
  v44 = (v51 + *(v42 + 36));
  v45 = sub_100009DCC(&qword_1006E0DE0, &qword_10057E940);
  (*(v38 + 32))(v44 + *(v45 + 28), v39, v40);
  *v44 = KeyPath;
  return sub_100019B40(v8, v43, &qword_1006E22D0, &qword_10057E8F0);
}

uint64_t sub_10004B8FC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  v111 = a3;
  v4 = *(a2 + 1);
  v112 = *a2;
  v93 = v4;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v108 = sub_100009DCC(&qword_1006E22F0, &qword_10057E948);
  __chkstk_darwin();
  v110 = &v85 - v8;
  v109 = sub_100009DCC(&qword_1006E22F8, &qword_10057E950);
  __chkstk_darwin();
  v85 = &v85 - v9;
  v100 = sub_1005724A8();
  v99 = *(v100 - 8);
  __chkstk_darwin();
  v98 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v85 - v11;
  v96 = sub_10056F808();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TopChartsWidgetContentView(0);
  v90 = *(v114 - 8);
  __chkstk_darwin();
  v91 = v13;
  v92 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100009DCC(&qword_1006E2300, &qword_10057E958);
  __chkstk_darwin();
  v15 = &v85 - v14;
  v105 = sub_100009DCC(&qword_1006E2308, &qword_10057E960);
  v104 = *(v105 - 8);
  __chkstk_darwin();
  v103 = &v85 - v16;
  sub_100009DCC(&qword_1006E2310, &qword_10057E968);
  __chkstk_darwin();
  v107 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v85 - v18;
  __chkstk_darwin();
  v106 = &v85 - v19;
  v20 = sub_10056EBD8();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v85 - v24;
  v26 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0) - 8;
  __chkstk_darwin();
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v89 = (&v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v32 = &v85 - v31;
  sub_1000A845C((&v85 - v31));
  v88 = v29;
  sub_100051B94(&v32[*(v29 + 20)], v28, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v32, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v33 = &v28[*(v26 + 36)];
  v34 = *(v33 + 1);
  v101 = *v33;

  sub_100050C48(v28, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v35 = sub_10056FA58();
  sub_1000A840C(v25);
  (*(v21 + 104))(v23, enum case for DynamicTypeSize.xxxLarge(_:), v20);
  sub_10056EBC8();
  v36 = *(v21 + 8);
  v36(v23, v20);
  v37 = v20;
  v38 = v112;
  v36(v25, v37);
  sub_10056E598();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v125 = 0;
  result = sub_1005709E8();
  *v15 = result;
  *(v15 + 1) = v48;
  *(v15 + 2) = 0x4042000000000000;
  v15[24] = 0;
  *(v15 + 4) = v7;
  v15[40] = 0;
  if (v38 < 0)
  {
    __break(1u);
  }

  else
  {
    v86 = v35;
    v87 = v34;
    sub_100009DCC(&qword_1006E2318, &unk_10057E970);
    *&v118 = 0;
    *(&v118 + 1) = v38;
    swift_getKeyPath();
    v49 = v92;
    sub_100051B94(a1, v92, type metadata accessor for TopChartsWidgetContentView);
    v50 = (*(v90 + 80) + 56) & ~*(v90 + 80);
    v51 = swift_allocObject();
    v52 = v93;
    v51[2] = v38;
    v51[3] = v52;
    v51[4] = v5;
    v51[5] = v6;
    v51[6] = v7;
    sub_1000522A4(v49, v51 + v50, type metadata accessor for TopChartsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
    sub_100009DCC(&qword_1006E2320, &qword_10057E998);
    sub_100029418();
    sub_100010BC0(&qword_1006E2328, &qword_1006E2320, &qword_10057E998, &protocol conformance descriptor for GridRow<A>);
    sub_1005708B8();
    v53 = v94;
    sub_10056F7F8();
    v54 = sub_100010BC0(&qword_1006E2330, &qword_1006E2300, &qword_10057E958, &protocol conformance descriptor for Grid<A>);
    v55 = v103;
    sub_1005701F8();
    (*(v95 + 8))(v53, v96);
    sub_10001036C(v15, &qword_1006E2300, &qword_10057E958);
    v56 = v89;
    sub_1000A845C(v89);
    v57 = (v56 + *(v88 + 40));
    v59 = *v57;
    v58 = v57[1];

    sub_100050C48(v56, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v60 = v97;
    sub_1000A8194(v97);
    v61 = v99;
    v62 = v98;
    v63 = v100;
    (*(v99 + 104))(v98, enum case for WidgetFamily.systemMedium(_:), v100);
    sub_100050804(&qword_1006E0E58, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100572CB8();
    sub_100572CB8();
    v64 = *(v61 + 8);
    v64(v62, v63);
    v64(v60, v63);
    if (v58)
    {
      v65 = 16.0;
      if (v118 == v115)
      {
        v65 = 0.0;
      }

      v66 = v85;
      v67 = &v85[*(v109 + 36)];
      *v67 = v59;
      *(v67 + 1) = v58;
      *(v67 + 2) = v65;
      *(v67 + 3) = 0x4030000000000000;
      type metadata accessor for CGSize(0);
      v115 = 0uLL;
      sub_100570668();
      v68 = v119;
      *(v67 + 2) = v118;
      *(v67 + 6) = v68;
      v69 = type metadata accessor for ErrorMessageModifier(0);
      sub_10056FDE8();
      v70 = *(v69 + 36);
      *&v67[v70] = swift_getKeyPath();
      sub_100009DCC(&qword_1006E0148, &qword_10057C450);
      swift_storeEnumTagMultiPayload();
      v71 = &v67[*(v69 + 40)];
      *v71 = swift_getKeyPath();
      *(v71 + 1) = 0;
      *(v71 + 2) = 0;
      *(v71 + 3) = 0;
      v71[32] = 0;
      v72 = v104;
      v73 = v105;
      (*(v104 + 16))(v66, v55, v105);
      sub_10000CC8C(v66, v110, &qword_1006E22F8, &qword_10057E950);
      swift_storeEnumTagMultiPayload();
      sub_10005239C();
      *&v118 = v113;
      *(&v118 + 1) = v54;
      swift_getOpaqueTypeConformance2();
      v74 = v102;
      sub_10056F5B8();
      sub_10001036C(v66, &qword_1006E22F8, &qword_10057E950);
    }

    else
    {
      v72 = v104;
      v73 = v105;
      (*(v104 + 16))(v110, v55, v105);
      swift_storeEnumTagMultiPayload();
      sub_10005239C();
      *&v118 = v113;
      *(&v118 + 1) = v54;
      swift_getOpaqueTypeConformance2();
      v74 = v102;
      sub_10056F5B8();
    }

    (*(v72 + 8))(v55, v73);
    v75 = v106;
    sub_100019B40(v74, v106, &qword_1006E2310, &qword_10057E968);
    v76 = v107;
    sub_10000CC8C(v75, v107, &qword_1006E2310, &qword_10057E968);
    v77 = v101;
    *&v115 = v101;
    v78 = v87;
    *(&v115 + 1) = v87;
    v79 = v86;
    LOBYTE(v116) = v86;
    *(&v116 + 1) = *v126;
    DWORD1(v116) = *&v126[3];
    *(&v116 + 1) = v40;
    *v117 = v42;
    *&v117[8] = v44;
    *&v117[16] = v46;
    v117[24] = 0;
    v80 = v115;
    v81 = v116;
    v82 = *v117;
    v83 = v111;
    *(v111 + 41) = *&v117[9];
    v83[1] = v81;
    v83[2] = v82;
    *v83 = v80;
    v84 = sub_100009DCC(&qword_1006E2340, &unk_10057E9A0);
    sub_10000CC8C(v76, v83 + *(v84 + 48), &qword_1006E2310, &qword_10057E968);
    sub_10000CC8C(&v115, &v118, &qword_1006E0E78, &qword_10057CA48);
    sub_10001036C(v75, &qword_1006E2310, &qword_10057E968);
    sub_10001036C(v76, &qword_1006E2310, &qword_10057E968);
    *&v118 = v77;
    *(&v118 + 1) = v78;
    LOBYTE(v119) = v79;
    *(&v119 + 1) = *v126;
    HIDWORD(v119) = *&v126[3];
    v120 = v40;
    v121 = v42;
    v122 = v44;
    v123 = v46;
    v124 = 0;
    return sub_10001036C(&v118, &qword_1006E0E78, &qword_10057CA48);
  }

  return result;
}

void sub_10004C7BC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = *(type metadata accessor for TopChartsWidgetContentView(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100009DCC(&qword_1006E2320, &qword_10057E998);
    v17[0] = 0;
    v17[1] = v7;
    swift_getKeyPath();
    sub_100051B94(a3, v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopChartsWidgetContentView);
    v15 = (*(v12 + 80) + 64) & ~*(v12 + 80);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v8;
    v16[4] = v7;
    v16[5] = v9;
    v16[6] = v10;
    v16[7] = v11;
    sub_1000522A4(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TopChartsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
    sub_100009DCC(&qword_1006E2348, &qword_10057E9E0);
    sub_100029418();
    sub_100052C0C();
    sub_1005708B8();
  }
}

void sub_10004C9D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v39 = a4;
  v42 = a2;
  v6 = *a3;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v33 - v8;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E2360, &unk_10057E9E8);
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin();
  v35 = &v33 - v13;
  type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v33 - v21;
  v23 = v6 * *a1;
  if ((v6 * *a1) >> 64 != v23 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v42 + v23;
  if (__OFADD__(v42, v23))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(10, v24))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v42 = 10 - v24;
  sub_1000A845C(v18);
  sub_100051B94(v18 + *(v16 + 20), v15, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v18, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);

  sub_100050C48(v15, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v25 = type metadata accessor for WidgetMusicItem(0);
  Array.subscript.getter(v25, v22);

  sub_10000CC8C(v22, v20, &qword_1006E0618, &unk_10057C230);
  if ((*(*(v25 - 8) + 48))(v20, 1, v25) != 1)
  {
    v29 = &v20[*(v25 + 28)];
    v30 = v40;
    (*(v10 + 16))(v40, v29, v9);
    sub_100050C48(v20, type metadata accessor for WidgetMusicItem);
    (*(v10 + 56))(v30, 0, 1, v9);
    (*(v10 + 32))(v41, v30, v9);
LABEL_9:
    __chkstk_darwin();
    *(&v33 - 2) = v22;
    *(&v33 - 1) = v24;
    _s12MusicWidgets12SongCellViewVMa_0(0);
    sub_100050804(&qword_1006E2368, _s12MusicWidgets12SongCellViewVMa_0, &unk_10057EC10);
    v31 = v35;
    sub_10056FC78();
    sub_100010BC0(&qword_1006E2358, &qword_1006E2360, &unk_10057E9E8, &protocol conformance descriptor for Link<A>);
    v32 = v37;
    sub_100570068();
    (*(v36 + 8))(v31, v32);
    sub_10001036C(v22, &qword_1006E0618, &unk_10057C230);
    return;
  }

  sub_10001036C(v20, &qword_1006E0618, &unk_10057C230);
  v26 = v40;
  (*(v10 + 56))(v40, 1, 1, v9);
  v27 = v34;
  sub_10056C868();
  v28 = *(v10 + 48);
  if (v28(v27, 1, v9) != 1)
  {
    (*(v10 + 32))(v41, v27, v9);
    if (v28(v26, 1, v9) != 1)
    {
      sub_10001036C(v26, qword_1006E1D50, &qword_10057CA90);
    }

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10004D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10000CC8C(a1, a3, &qword_1006E0618, &unk_10057C230);
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = _s12MusicWidgets12SongCellViewVMa_0(0);
    *(a3 + v7[5]) = v6;
    v8 = v7[6];
    *(a3 + v8) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2108, &qword_10057E658);
    swift_storeEnumTagMultiPayload();
    v9 = v7[7];
    *(a3 + v9) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10004D150@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v261 = a2;
  v260 = sub_100009DCC(&qword_1006E2670, &unk_10057EC70);
  __chkstk_darwin();
  v248 = &v215 - v3;
  v4 = sub_100009DCC(&qword_1006E0FA8, &unk_10057CB90);
  v246 = *(v4 - 8);
  v247 = v4;
  __chkstk_darwin();
  v231 = &v215 - v5;
  v241 = sub_10056EAC8();
  v230 = *(v241 - 8);
  __chkstk_darwin();
  v228 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v229 = &v215 - v7;
  v226 = sub_100009DCC(&qword_1006E0FB0, &unk_10057EC80);
  __chkstk_darwin();
  v225 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v215 - v9;
  v223 = sub_100009DCC(&qword_1006E0FB8, &unk_10057CBA0);
  __chkstk_darwin();
  v227 = &v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v251 = &v215 - v11;
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v237 = &v215 - v12;
  v238 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v236 = *(v238 - 8);
  __chkstk_darwin();
  v242 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v234 = &v215 - v14;
  v250 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v235 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v232 = (&v215 - v16);
  sub_100009DCC(&qword_1006E0FC0, &qword_10057CBB0);
  __chkstk_darwin();
  v244 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v245 = &v215 - v18;
  sub_100009DCC(&qword_1006E2678, &unk_10057EC90);
  __chkstk_darwin();
  v243 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v258 = &v215 - v20;
  v249 = sub_100009DCC(&qword_1006E10D8, &qword_10057CCF8);
  __chkstk_darwin();
  v257 = (&v215 - v21);
  v252 = sub_100009DCC(&qword_1006E2680, &qword_10057ECA0);
  __chkstk_darwin();
  v253 = (&v215 - v22);
  v23 = type metadata accessor for WidgetMusicItem(0);
  v263 = *(v23 - 8);
  __chkstk_darwin();
  v266 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E2688, &qword_10057ECA8);
  __chkstk_darwin();
  v259 = &v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v264 = &v215 - v26;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v222 = &v215 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v239 = &v215 - v28;
  __chkstk_darwin();
  v240 = &v215 - v29;
  __chkstk_darwin();
  v31 = &v215 - v30;
  __chkstk_darwin();
  v33 = &v215 - v32;
  sub_100009DCC(&qword_1006E2690, &qword_10057ECB0);
  __chkstk_darwin();
  v35 = (&v215 - v34);
  v36 = sub_100009DCC(&qword_1006E2698, &qword_10057ECB8);
  v255 = *(v36 - 8);
  v256 = v36;
  __chkstk_darwin();
  v254 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v215 - v38;
  *v35 = sub_1005709E8();
  v35[1] = v40;
  v41 = sub_100009DCC(&qword_1006E26A0, &unk_10057ECC0);
  sub_10004ECD8(a1, (v35 + *(v41 + 44)));
  sub_100010BC0(&qword_1006E26A8, &qword_1006E2690, &qword_10057ECB0, &protocol conformance descriptor for ZStack<A>);
  v265 = v39;
  v42 = v23;
  sub_10056FFD8();
  v43 = v35;
  v44 = a1;
  sub_10001036C(v43, &qword_1006E2690, &qword_10057ECB0);
  sub_10000CC8C(a1, v33, &qword_1006E0618, &unk_10057C230);
  v45 = v263 + 48;
  v262 = *(v263 + 48);
  if (v262(v33, 1, v23) == 1)
  {
    sub_10001036C(v33, &qword_1006E0618, &unk_10057C230);
    v279 = 0u;
    v280 = 0u;
    v281 = 0;
  }

  else
  {
    *(&v280 + 1) = v23;
    v281 = &off_100681290;
    v46 = sub_10002AB7C(&v279);
    sub_1000522A4(v33, v46, type metadata accessor for WidgetMusicItem);
  }

  v47 = Corner.small.unsafeMutableAddressor();
  v48 = *v47;
  v49 = v47[1];
  v50 = *(v47 + 16);
  v275 = v279;
  v276 = v280;
  v277 = v281;
  v51 = sub_10056FA88();
  sub_10056E598();
  v278 = 0;
  v279 = v275;
  v280 = v276;
  v281 = v277;
  v282 = v48;
  v283 = v49;
  v284 = v50;
  v285 = v51;
  v286 = v52;
  v287 = v53;
  v288 = v54;
  v289 = v55;
  v290 = 0;
  sub_10000CC8C(v44, v31, &qword_1006E0618, &unk_10057C230);
  v56 = v262(v31, 1, v42);
  v57 = v264;
  v58 = v266;
  if (v56 != 1)
  {
    sub_1000522A4(v31, v266, type metadata accessor for WidgetMusicItem);
    v60 = *(v58 + 24);
    *&v275 = *(v58 + 16);
    *(&v275 + 1) = v60;
    sub_10001B550();

    v61 = sub_10056FF28();
    v217 = v62;
    v218 = v61;
    v216 = v63;
    v219 = v64;
    v220 = v42;
    v65 = *(v58 + v42[15]);
    v66 = *(v65 + 16);
    v221 = v44;
    v215 = v45;
    if (v66)
    {
      v67 = (v65 + 32);
      if (qword_1006DF8E8 != -1)
      {
        swift_once();
      }

      v68 = 0;
      v69 = 0;
      v70 = _swiftEmptyArrayStorage;
      v71 = 0xE000000000000000;
      do
      {
        LODWORD(v270) = v69;
        v271 = v71;
        v272 = v70;
        v72 = *v67;
        v273 = v68;
        v274 = v67 + 1;
        TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, v72);
        v74 = v73;
        v76 = v75;
        v78 = v77;
        sub_10056FB08();
        sub_10056FB88();
        sub_10056FBE8();

        v79 = sub_10056FE88();
        v267 = v80;
        v268 = v81;
        LODWORD(v269) = v82;

        sub_10001B5A4(v74, v76, v78 & 1);

        v83 = v270;
        v84 = v273;
        v85 = v271;
        v86 = v267;
        v87 = sub_10056FE58();
        v89 = v88;
        v91 = v90;
        LOBYTE(v90) = v83 & 1;
        v93 = v92;
        v94 = v84;
        v95 = v87;
        v96 = v85;
        v97 = v91;
        sub_10001B5A4(v94, v96, v90);

        v67 = v274;
        sub_10001B5A4(v79, v86, v269 & 1);

        v68 = v95;
        v71 = v89;
        v69 = v97;
        v70 = v93;
        --v66;
      }

      while (v66);
    }

    else
    {
      v95 = 0;
      LOBYTE(v97) = 0;
      v89 = 0xE000000000000000;
    }

    v98 = v216;
    v100 = v217;
    v99 = v218;
    v101 = sub_10056FE58();
    v273 = v102;
    v274 = v101;
    v104 = v103;
    v272 = v105;
    sub_10001B5A4(v95, v89, v97 & 1);

    sub_10001B5A4(v99, v100, v98 & 1);

    sub_10056FB08();
    sub_10056FB68();
    sub_10056FBE8();

    v107 = v273;
    v106 = v274;
    v108 = sub_10056FE88();
    v110 = v109;
    v112 = v111;

    sub_10001B5A4(v106, v107, v104 & 1);

    if (qword_1006DF930 != -1)
    {
      swift_once();
    }

    v113 = sub_10056FE18();
    v272 = v114;
    v273 = v113;
    LODWORD(v271) = v115;
    v274 = v116;
    sub_10001B5A4(v108, v110, v112 & 1);

    v117 = v266;
    v118 = *(v266 + 32);
    v119 = *(v266 + 40);
    v120 = sub_100054170(&off_1006801D8);

    v121 = Text.init(optional:options:)(v118, v119, v120);
    v270 = v122;
    v124 = v123;
    v126 = v125;
    v127 = sub_10056FB08();
    KeyPath = swift_getKeyPath();
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v129 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
    v130 = sub_10000C49C(v129, qword_1006FC0D8);
    v131 = v257;
    sub_10000CC8C(v130, v257 + *(v249 + 36), &qword_1006E1058, &qword_10057CCD0);
    v132 = v270;
    *v131 = v121;
    v131[1] = v132;
    v131[2] = v124;
    v131[3] = v126;
    v131[4] = KeyPath;
    v131[5] = v127;
    v133 = sub_10056FA08();
    v134 = v258;
    *v258 = v133;
    v135 = sub_100009DCC(&qword_1006E26C0, &qword_10057ED08);
    sub_10004F070(v273, v272, v271 & 1, v274, v117, v131, &v134[*(v135 + 44)]);
    v136 = v220;
    if ((*(v117 + v220[16]) & 1) == 0)
    {
      v150 = v245;
      (*(v246 + 56))(v245, 1, 1, v247);
      v151 = v248;
LABEL_37:
      v201 = v243;
      v200 = v244;
      v202 = v258;
      sub_10000CC8C(v258, v243, &qword_1006E2678, &unk_10057EC90);
      sub_10000CC8C(v150, v200, &qword_1006E0FC0, &qword_10057CBB0);
      sub_10000CC8C(v201, v151, &qword_1006E2678, &unk_10057EC90);
      v203 = sub_100009DCC(&qword_1006E26C8, &unk_10057ED10);
      v204 = v151 + *(v203 + 48);
      *v204 = 0;
      *(v204 + 8) = 0;
      sub_10000CC8C(v200, v151 + *(v203 + 64), &qword_1006E0FC0, &qword_10057CBB0);
      sub_10001036C(v200, &qword_1006E0FC0, &qword_10057CBB0);
      sub_10001036C(v201, &qword_1006E2678, &unk_10057EC90);
      sub_10000CC8C(v151, v253, &qword_1006E2670, &unk_10057EC70);
      swift_storeEnumTagMultiPayload();
      sub_100010BC0(&qword_1006E26B0, &qword_1006E2670, &unk_10057EC70, &protocol conformance descriptor for TupleView<A>);
      v205 = v264;
      sub_10056F5B8();
      sub_10001B5A4(v273, v272, v271 & 1);

      sub_10001036C(v151, &qword_1006E2670, &unk_10057EC70);
      sub_10001036C(v150, &qword_1006E0FC0, &qword_10057CBB0);
      sub_10001036C(v202, &qword_1006E2678, &unk_10057EC90);
      sub_10001036C(v257, &qword_1006E10D8, &qword_10057CCF8);
      sub_100050C48(v266, type metadata accessor for WidgetMusicItem);
      v57 = v205;
      goto LABEL_38;
    }

    v137 = v240;
    sub_100051B94(v117, v240, type metadata accessor for WidgetMusicItem);
    (*(v263 + 56))(v137, 0, 1, v136);
    v270 = *(_s12MusicWidgets12SongCellViewVMa_0(0) + 24);
    v138 = v232;
    sub_1000A845C(v232);
    v139 = v239;
    sub_10000CC8C(v138 + *(v250 + 28), v239, &qword_1006E0618, &unk_10057C230);
    sub_100050C48(v138, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v140 = v234;
    v141 = *(v233 + 48);
    sub_10000CC8C(v137, v234, &qword_1006E0618, &unk_10057C230);
    sub_10000CC8C(v139, v140 + v141, &qword_1006E0618, &unk_10057C230);
    v142 = v262;
    if (v262(v140, 1, v136) == 1)
    {
      sub_10001036C(v139, &qword_1006E0618, &unk_10057C230);
      sub_10001036C(v137, &qword_1006E0618, &unk_10057C230);
      v143 = v142(v140 + v141, 1, v136);
      v144 = v242;
      v145 = v140;
      v147 = v235;
      v146 = v236;
      v148 = v250;
      if (v143 == 1)
      {
        sub_10001036C(v145, &qword_1006E0618, &unk_10057C230);
        v149 = 1;
LABEL_25:
        v155 = v237;
        v154 = v238;
LABEL_27:
        sub_1000A845C(v147);
        sub_10000CC8C(v147 + *(v148 + 32), v155, &qword_1006E0528, &qword_10057BF80);
        sub_100050C48(v147, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
        v156 = *(v146 + 48);
        if (v156(v155, 1, v154) != 1)
        {
          sub_1000522A4(v155, v144, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          goto LABEL_32;
        }

        if (qword_1006DF8D8 != -1)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v157 = sub_10000C49C(v154, qword_1006FC048);
          sub_100051B94(v157, v144, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          if (v156(v155, 1, v154) != 1)
          {
            sub_10001036C(v155, &qword_1006E0528, &qword_10057BF80);
          }

LABEL_32:
          v158 = *(v154 + 20);
          v156 = sub_10056CAA8();
          sub_100050804(&qword_1006E1110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          if (sub_1005727C8())
          {
            break;
          }

          __break(1u);
LABEL_40:
          swift_once();
        }

        v159 = *(v156 - 1);
        LODWORD(v270) = v149;
        v160 = v159;
        v161 = *(v159 + 16);
        v162 = v224;
        v161(v224, v144, v156);
        v163 = v226;
        v161((v162 + *(v226 + 48)), v144 + v158, v156);
        v164 = v225;
        sub_10000CC8C(v162, v225, &qword_1006E0FB0, &unk_10057EC80);
        v269 = *(v163 + 48);
        v165 = *(v160 + 32);
        v166 = v251;
        v165(v251, v164, v156);
        v167 = *(v160 + 8);
        v167(v164 + v269, v156);
        sub_100019B40(v162, v164, &qword_1006E0FB0, &unk_10057EC80);
        v165(v166 + *(v223 + 36), v164 + *(v163 + 48), v156);
        v167(v164, v156);
        v168 = v229;
        if (v270)
        {
          sub_10004F90C(v229);
          v169 = &type metadata for TogglePlaybackAppIntent;
          v170 = sub_10002AB28();
          v151 = v248;
          v171 = v241;
          v172 = v230;
        }

        else
        {
          v172 = v230;
          v171 = v241;
          (*(v230 + 104))(v229, enum case for PlaybackButton.State.unplayed(_:), v241);
          v173 = (v266 + v220[11]);
          v174 = *v173;
          v175 = v173[1];
          v176 = (v266 + v220[14]);
          v177 = *v176;
          v178 = v176[1];

          v179 = sub_10002C7C0(v174, v175, v177, v178);
          v181 = v180;
          v183 = v182;
          v170 = sub_10002AAD4();
          *&v275 = v179;
          *(&v275 + 1) = v181;
          *&v276 = v183;
          v169 = &type metadata for StartPlaybackAppIntent;
          v151 = v248;
        }

        *(&v276 + 1) = v169;
        v277 = v170;
        v184 = sub_10000C8CC(&v275, v169);
        sub_10000CC8C(v251, v227, &qword_1006E0FB8, &unk_10057CBA0);
        (*(v172 + 16))(v228, v168, v171);
        v270 = &v215;
        v185 = __chkstk_darwin();
        (*(v187 + 16))(&v215 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0), v184, v169, v185);
        v188 = v231;
        sub_10056EAB8();
        v189 = sub_10056FA68();
        sub_10056E598();
        v191 = v190;
        v193 = v192;
        v195 = v194;
        v197 = v196;
        (*(v172 + 8))(v168, v241);
        sub_10001036C(v251, &qword_1006E0FB8, &unk_10057CBA0);
        sub_100050C48(v242, type metadata accessor for NowPlayingDataProvider.ItemProgress);
        v198 = v247;
        v199 = v188 + *(v247 + 36);
        *v199 = v189;
        *(v199 + 8) = v191;
        *(v199 + 16) = v193;
        *(v199 + 24) = v195;
        *(v199 + 32) = v197;
        *(v199 + 40) = 0;
        v150 = v245;
        sub_100019B40(v188, v245, &qword_1006E0FA8, &unk_10057CB90);
        (*(v246 + 56))(v150, 0, 1, v198);
        sub_100010474(&v275);
        goto LABEL_37;
      }
    }

    else
    {
      v152 = v222;
      sub_10000CC8C(v140, v222, &qword_1006E0618, &unk_10057C230);
      v153 = v142(v140 + v141, 1, v136);
      v144 = v242;
      v145 = v140;
      v147 = v235;
      v146 = v236;
      if (v153 != 1)
      {
        v149 = sub_10003CD6C(v152, v145 + v141);
        sub_100050C48(v145 + v141, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v239, &qword_1006E0618, &unk_10057C230);
        sub_10001036C(v240, &qword_1006E0618, &unk_10057C230);
        sub_100050C48(v152, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v145, &qword_1006E0618, &unk_10057C230);
        v155 = v237;
        v154 = v238;
        v148 = v250;
        goto LABEL_27;
      }

      sub_10001036C(v239, &qword_1006E0618, &unk_10057C230);
      sub_10001036C(v240, &qword_1006E0618, &unk_10057C230);
      sub_100050C48(v152, type metadata accessor for WidgetMusicItem);
      v148 = v250;
    }

    sub_10001036C(v145, &qword_1006E0DE8, &unk_10057C9C0);
    v149 = 0;
    goto LABEL_25;
  }

  sub_10001036C(v31, &qword_1006E0618, &unk_10057C230);
  v59 = v253;
  *v253 = 0;
  *(v59 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E26B0, &qword_1006E2670, &unk_10057EC70, &protocol conformance descriptor for TupleView<A>);
  sub_10056F5B8();
LABEL_38:
  v206 = v254;
  v207 = v255;
  v208 = *(v255 + 16);
  v209 = v256;
  v208(v254, v265, v256);
  sub_10000CC8C(&v279, &v275, &qword_1006E1038, &qword_10057CC20);
  v210 = v259;
  sub_10000CC8C(v57, v259, &qword_1006E2688, &qword_10057ECA8);
  v211 = v261;
  v208(v261, v206, v209);
  v212 = sub_100009DCC(&qword_1006E26B8, &qword_10057ECD0);
  sub_10000CC8C(&v275, &v211[*(v212 + 48)], &qword_1006E1038, &qword_10057CC20);
  sub_10000CC8C(v210, &v211[*(v212 + 64)], &qword_1006E2688, &qword_10057ECA8);
  sub_10001036C(v57, &qword_1006E2688, &qword_10057ECA8);
  sub_10001036C(&v279, &qword_1006E1038, &qword_10057CC20);
  v213 = *(v207 + 8);
  v213(v265, v209);
  sub_10001036C(v210, &qword_1006E2688, &qword_10057ECA8);
  sub_10001036C(&v275, &qword_1006E1038, &qword_10057CC20);
  return (v213)(v206, v209);
}

uint64_t sub_10004ECD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  sub_100009DCC(&qword_1006E2718, &qword_10057ED78);
  __chkstk_darwin();
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v38 - v4;
  v44 = *(a1 + *(_s12MusicWidgets12SongCellViewVMa_0(0) + 20));
  sub_100054290();
  v44 = sub_100573D48();
  v45 = v5;
  sub_10001B550();
  v6 = sub_10056FF28();
  v8 = v7;
  v10 = v9;
  sub_10056FB08();
  sub_10056FB28();

  v11 = sub_10056FE88();
  v13 = v12;
  v15 = v14;

  sub_10001B5A4(v6, v8, v10 & 1);

  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v38 = sub_10056FE18();
  v17 = v16;
  v39 = v18;
  v40 = v19;
  sub_10001B5A4(v11, v13, v15 & 1);

  sub_10056FB08();
  sub_10056FB28();

  v20 = sub_10056FE88();
  v22 = v21;
  v24 = v23;

  sub_1005704B8();
  v25 = sub_10056FE18();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_10001B5A4(v20, v22, v24 & 1);

  v44 = v25;
  v45 = v27;
  v46 = v29 & 1;
  v47 = v31;
  v32 = v41;
  sub_100570078();
  sub_10001B5A4(v25, v27, v29 & 1);

  v33 = v43;
  sub_10000CC8C(v32, v43, &qword_1006E2718, &qword_10057ED78);
  v34 = v42;
  v35 = v38;
  *v42 = v38;
  v34[1] = v17;
  LOBYTE(v27) = v39 & 1;
  *(v34 + 16) = v39 & 1;
  v34[3] = v40;
  v36 = sub_100009DCC(&qword_1006E2728, &qword_10057ED80);
  sub_10000CC8C(v33, v34 + *(v36 + 48), &qword_1006E2718, &qword_10057ED78);
  sub_10002AAC4(v35, v17, v27);

  sub_10001036C(v32, &qword_1006E2718, &qword_10057ED78);
  sub_10001036C(v33, &qword_1006E2718, &qword_10057ED78);
  sub_10001B5A4(v35, v17, v27);
}

uint64_t sub_10004F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a7;
  sub_100009DCC(&qword_1006E26D0, &qword_10057ED20);
  __chkstk_darwin();
  v37 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  sub_100009DCC(&qword_1006E26D8, &qword_10057ED28);
  __chkstk_darwin();
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v31 - v18;
  *v19 = sub_10056F378();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = a3 & 1;
  v21 = &v19[*(sub_100009DCC(&qword_1006E26E0, &qword_10057ED30) + 44)];
  v33 = a1;
  v34 = a2;
  v35 = a4;
  sub_10004F3B8(a1, a2, v20, a4, a5, a6, v21);
  *v15 = sub_10056F378();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v22 = sub_100009DCC(&qword_1006E26E8, &qword_10057ED38);
  sub_10004F614(a1, a2, v20, a4, a5, a6, &v15[*(v22 + 44)]);
  v32 = sub_10056F378();
  v36 = v17;
  sub_10000CC8C(v19, v17, &qword_1006E26D8, &qword_10057ED28);
  v23 = v37;
  sub_10000CC8C(v15, v37, &qword_1006E26D0, &qword_10057ED20);
  v24 = v38;
  sub_10000CC8C(v17, v38, &qword_1006E26D8, &qword_10057ED28);
  v25 = sub_100009DCC(&qword_1006E26F0, &unk_10057ED40);
  sub_10000CC8C(v23, v24 + *(v25 + 48), &qword_1006E26D0, &qword_10057ED20);
  v26 = v24 + *(v25 + 64);
  v27 = v33;
  *v26 = v32;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v29 = v34;
  v28 = v35;
  *(v26 + 24) = v27;
  *(v26 + 32) = v29;
  *(v26 + 40) = v20;
  *(v26 + 48) = v28;
  sub_10002AAC4(v27, v29, v20);

  sub_10002AAC4(v27, v29, v20);

  sub_10001036C(v15, &qword_1006E26D0, &qword_10057ED20);
  sub_10001036C(v19, &qword_1006E26D8, &qword_10057ED28);
  sub_10001B5A4(v27, v29, v20);

  sub_10001036C(v23, &qword_1006E26D0, &qword_10057ED20);
  return sub_10001036C(v36, &qword_1006E26D8, &qword_10057ED28);
}

uint64_t sub_10004F3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_100009DCC(&qword_1006E2700, &qword_10057ED60);
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v25 - v16;
  v18 = *(a5 + 40);
  if (v18 && ((v18 & 0x2000000000000000) != 0 ? (v19 = HIBYTE(v18) & 0xF) : (v19 = *(a5 + 32) & 0xFFFFFFFFFFFFLL), v19))
  {
    sub_10000CC8C(a6, &v25 - v16, &qword_1006E10D8, &qword_10057CCF8);
    v20 = sub_100009DCC(&qword_1006E10D8, &qword_10057CCF8);
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  }

  else
  {
    v21 = sub_100009DCC(&qword_1006E10D8, &qword_10057CCF8);
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  sub_10000CC8C(v17, v15, &qword_1006E2700, &qword_10057ED60);
  *a7 = a1;
  *(a7 + 8) = a2;
  v22 = a3 & 1;
  *(a7 + 16) = v22;
  *(a7 + 24) = a4;
  v23 = sub_100009DCC(&qword_1006E2708, &qword_10057ED68);
  sub_10000CC8C(v15, a7 + *(v23 + 48), &qword_1006E2700, &qword_10057ED60);
  sub_10002AAC4(a1, a2, v22);

  sub_10002AAC4(a1, a2, v22);

  sub_10001036C(v17, &qword_1006E2700, &qword_10057ED60);
  sub_10001036C(v15, &qword_1006E2700, &qword_10057ED60);
  sub_10001B5A4(a1, a2, v22);
}

uint64_t sub_10004F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v30 = a4;
  v29 = a3;
  v11 = sub_100009DCC(&qword_1006E0FE8, &qword_10057CBD8);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_100009DCC(&qword_1006E1138, &qword_10057ED50);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v27 - v17;
  KeyPath = swift_getKeyPath();
  v20 = *(a5 + 40);
  if (v20 && ((v20 & 0x2000000000000000) != 0 ? (v21 = HIBYTE(v20) & 0xF) : (v21 = *(a5 + 32) & 0xFFFFFFFFFFFFLL), v21))
  {
    v22 = swift_getKeyPath();
    sub_10000CC8C(v28, v14, &qword_1006E10D8, &qword_10057CCF8);
    v23 = &v14[*(v11 + 36)];
    *v23 = v22;
    *(v23 + 1) = 1;
    v23[16] = 0;
    sub_100019B40(v14, v18, &qword_1006E0FE8, &qword_10057CBD8);
    (*(v12 + 56))(v18, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  sub_10000CC8C(v18, v16, &qword_1006E1138, &qword_10057ED50);
  *a7 = a1;
  *(a7 + 8) = a2;
  v24 = v29 & 1;
  *(a7 + 16) = v29 & 1;
  *(a7 + 24) = v30;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  v25 = sub_100009DCC(&qword_1006E26F8, &qword_10057ED58);
  sub_10000CC8C(v16, a7 + *(v25 + 48), &qword_1006E1138, &qword_10057ED50);
  sub_10002AAC4(a1, a2, v24);

  sub_10002AAC4(a1, a2, v24);

  sub_10001036C(v18, &qword_1006E1138, &qword_10057ED50);
  sub_10001036C(v16, &qword_1006E1138, &qword_10057ED50);
  sub_10001B5A4(a1, a2, v24);
}

uint64_t sub_10004F90C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v29 = &v28 - v2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v30 = &v28 - v3;
  v4 = sub_10056F198();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E2108, &qword_10057E658);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v28 - v12;
  v14 = *(_s12MusicWidgets12SongCellViewVMa_0(0) + 24);
  v28 = v1;
  sub_10000CC8C(v1 + v14, v8, &qword_1006E2108, &qword_10057E658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000522A4(v8, v13, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  }

  else
  {
    v15 = sub_100573438();
    v16 = sub_10056F9D8();
    sub_10056DE58(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v31 + 8))(v6, v32);
  }

  v17 = v13[*(v9 + 24)];
  sub_100050C48(v13, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v18 = v33;
  if (v17 > 1)
  {
    v19 = &enum case for PlaybackButton.State.unplayed(_:);
    goto LABEL_15;
  }

  if (v17)
  {
    sub_1000A845C(v11);
    v20 = v29;
    sub_10000CC8C(v11 + *(v9 + 32), v29, &qword_1006E0528, &qword_10057BF80);
    sub_100050C48(v11, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v21 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      sub_10001036C(v20, &qword_1006E0528, &qword_10057BF80);
      v22 = sub_10056CAA8();
      v23 = v30;
      (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
    }

    else
    {
      v23 = v30;
      sub_10000CC8C(v20 + *(v21 + 24), v30, &unk_1006E1E90, &qword_10057C550);
      sub_100050C48(v20, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v22 = sub_10056CAA8();
      v24 = *(v22 - 8);
      if ((*(v24 + 48))(v23, 1, v22) != 1)
      {
        (*(v24 + 32))(v18, v23, v22);
LABEL_14:
        v19 = &enum case for PlaybackButton.State.paused(_:);
        goto LABEL_15;
      }
    }

    sub_10056CA68();
    sub_10056CAA8();
    if ((*(*(v22 - 8) + 48))(v23, 1, v22) != 1)
    {
      sub_10001036C(v23, &unk_1006E1E90, &qword_10057C550);
    }

    goto LABEL_14;
  }

  v19 = &enum case for PlaybackButton.State.playing(_:);
LABEL_15:
  v25 = *v19;
  v26 = sub_10056EAC8();
  return (*(*(v26 - 8) + 104))(v18, v25, v26);
}

uint64_t sub_10004FEBC()
{
  v1 = sub_10056F808();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E2658, &qword_10057EC60);
  __chkstk_darwin();
  v6 = &v9 - v5;
  *v6 = sub_10056F218();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100009DCC(&qword_1006E2660, &qword_10057EC68);
  sub_10004D150(v0, &v6[*(v7 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E2668, &qword_1006E2658, &qword_10057EC60, &protocol conformance descriptor for HStack<A>);
  sub_1005701F8();
  (*(v2 + 8))(v4, v1);
  return sub_10001036C(v6, &qword_1006E2658, &qword_10057EC60);
}

uint64_t sub_10005007C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_100009DCC(&qword_1006E0DF0, &qword_10057C9D0);
  __chkstk_darwin();
  v2 = &v25 - v1;
  v3 = sub_100570558();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100009DCC(&qword_1006E0DC0, &unk_100580E00);
  __chkstk_darwin();
  v28 = &v25 - v6;
  v7 = sub_1005724A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = &v25 - v14;
  sub_1000A845C((&v25 - v14));
  type metadata accessor for BackgroundModifier(0);
  sub_1000A8194(v10);
  v16 = sub_10004AB54(v10);
  (*(v8 + 8))(v10, v7);
  sub_100050C48(v15, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  if ((v16 & 1) != 0 && (sub_1000A845C(v13), v17 = *(v13 + *(v11 + 36)), v18 = v17, sub_100050C48(v13, type metadata accessor for TopChartsWidgetTimelineProvider.Entry), v17))
  {
    v19 = v18;
    sub_100570538();
    v21 = v26;
    v20 = v27;
    (*(v26 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v27);
    v22 = sub_1005705D8();

    (*(v21 + 8))(v5, v20);
    v32 = v22;
    v23 = v28;
    sub_100570078();

    sub_10000CC8C(v23, v2, &qword_1006E0DC0, &unk_100580E00);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v23, &qword_1006E0DC0, &unk_100580E00);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v2 = xmmword_1006FC100;
    *(v2 + 8) = *(&xmmword_1006FC100 + 8);
    *(v2 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_100050530(uint64_t a1)
{
  v7[1] = a1;
  v2 = sub_10056F898();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056F888();
  v8 = v1;
  sub_1005709E8();
  sub_100009DCC(&qword_1006E2730, &qword_10057ED88);
  sub_100009DCC(&qword_1006E0D90, &unk_10057D520);
  sub_100010BC0(&qword_1006E2738, &qword_1006E2730, &qword_10057ED88, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100028AD8();
  sub_1005701E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000506D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DFA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC368);
  return sub_100051B94(v3, a1, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
}

uint64_t sub_100050804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005084C()
{
  result = qword_1006E2120;
  if (!qword_1006E2120)
  {
    sub_100010324(&qword_1006E2100, &qword_10057E628);
    type metadata accessor for SmallTopChartsWidgetView(255);
    sub_100050804(&qword_1006E2128, type metadata accessor for SmallTopChartsWidgetView, &unk_10057E850);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2130, &qword_1006E2118, &qword_10057E700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2120);
  }

  return result;
}

unint64_t sub_100050964()
{
  result = qword_1006E2138;
  if (!qword_1006E2138)
  {
    sub_100010324(&qword_1006E20E8, &qword_10057E610);
    type metadata accessor for TopChartsWidgetContentView(255);
    sub_100050804(&qword_1006E2110, type metadata accessor for TopChartsWidgetContentView, &unk_10057E8A0);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2130, &qword_1006E2118, &qword_10057E700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2138);
  }

  return result;
}

uint64_t sub_100050A84()
{
  sub_10056F0E8();
  sub_100050804(&qword_1006E2148, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10056F1A8();
  return v1;
}

uint64_t sub_100050B00@<X0>(_BYTE *a1@<X8>)
{
  sub_10056F0E8();
  sub_100050804(&qword_1006E2148, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10056F1A8();
  *a1 = v3;
  return result;
}

uint64_t sub_100050C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100050CA8()
{
  result = qword_1006E2150;
  if (!qword_1006E2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2150);
  }

  return result;
}

uint64_t sub_100050D20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_100050EEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1000510B0(uint64_t a1)
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100053A60(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100053A60(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100051238(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v18 = sub_100009DCC(&qword_1006E2200, &unk_100580460);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_1000514DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
    return result;
  }

  v18 = sub_100009DCC(&qword_1006E2200, &unk_100580460);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[10];

  return v20(v21, a2, a2, v19);
}

void sub_100051770(uint64_t a1)
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100053A60(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100053A60(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10005198C();
          if (v5 <= 0x3F)
          {
            sub_100053A60(319, &unk_1006E2278, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_100053A60(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10005198C()
{
  if (!qword_1006E2270)
  {
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E2270);
    }
  }
}

unint64_t sub_1000519E0()
{
  result = qword_1006E22C0;
  if (!qword_1006E22C0)
  {
    sub_100010324(&qword_1006E22C8, &qword_10057E810);
    sub_10005084C();
    sub_100050964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E22C0);
  }

  return result;
}

uint64_t sub_100051AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

uint64_t sub_100051B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051BFC()
{
  v1 = type metadata accessor for TopChartsWidgetContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 56) & ~v2);
  sub_100009DCC(&qword_1006E2108, &qword_10057E658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 8);
    v6(v3, v4);
    v7 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    v30 = v6;
    v6(v3 + v7[5], v4);
    type metadata accessor for TopChartsWidgetDataProvider.Chart(0);

    v8 = v3 + v7[7];
    v9 = type metadata accessor for WidgetMusicItem(0);
    if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
    {

      v10 = v9[7];
      v11 = sub_10056C8A8();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);

      v12 = v9[17];
      v29 = v5;
      v13 = *(v5 + 48);
      if (!v13(v8 + v12, 1, v4))
      {
        v30(v8 + v12, v4);
      }

      v14 = v9[18];
      if (!v13(v8 + v14, 1, v4))
      {
        v30(v8 + v14, v4);
      }

      v15 = v9[23];
      v16 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
      {
        v17 = sub_100572128();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v8 + v15, 1, v17))
        {
          (*(v18 + 8))(v8 + v15, v17);
        }
      }

      v5 = v29;
    }

    v19 = v3 + v7[8];
    v20 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v30(v19, v4);
      v30(v19 + *(v20 + 20), v4);
      v21 = *(v20 + 24);
      if (!(*(v5 + 48))(v19 + v21, 1, v4))
      {
        v30(v19 + v21, v4);
      }
    }
  }

  else
  {
  }

  v22 = v1[5];
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1005724A8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v1[6];
  sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_10056EBD8();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
  }

  v26 = v1[7];
  sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_10056E698();
    (*(*(v27 - 8) + 8))(v3 + v26, v27);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000522A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10005230C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for TopChartsWidgetContentView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  sub_10004C7BC(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
  return result;
}

unint64_t sub_10005239C()
{
  result = qword_1006E2338;
  if (!qword_1006E2338)
  {
    sub_100010324(&qword_1006E22F8, &qword_10057E950);
    sub_100010324(&qword_1006E2300, &qword_10057E958);
    sub_100010BC0(&qword_1006E2330, &qword_1006E2300, &qword_10057E958, &protocol conformance descriptor for Grid<A>);
    swift_getOpaqueTypeConformance2();
    sub_100050804(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier, &unk_10057C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2338);
  }

  return result;
}

uint64_t sub_1000524CC()
{
  v1 = type metadata accessor for TopChartsWidgetContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 64) & ~v2);
  sub_100009DCC(&qword_1006E2108, &qword_10057E658);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 8);
    v6(v3, v4);
    v7 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    v30 = v6;
    v6(v3 + v7[5], v4);
    type metadata accessor for TopChartsWidgetDataProvider.Chart(0);

    v8 = v3 + v7[7];
    v9 = type metadata accessor for WidgetMusicItem(0);
    if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
    {

      v10 = v9[7];
      v11 = sub_10056C8A8();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);

      v12 = v9[17];
      v29 = v5;
      v13 = *(v5 + 48);
      if (!v13(v8 + v12, 1, v4))
      {
        v30(v8 + v12, v4);
      }

      v14 = v9[18];
      if (!v13(v8 + v14, 1, v4))
      {
        v30(v8 + v14, v4);
      }

      v15 = v9[23];
      v16 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
      {
        v17 = sub_100572128();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v8 + v15, 1, v17))
        {
          (*(v18 + 8))(v8 + v15, v17);
        }
      }

      v5 = v29;
    }

    v19 = v3 + v7[8];
    v20 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v30(v19, v4);
      v30(v19 + *(v20 + 20), v4);
      v21 = *(v20 + 24);
      if (!(*(v5 + 48))(v19 + v21, 1, v4))
      {
        v30(v19 + v21, v4);
      }
    }
  }

  else
  {
  }

  v22 = v1[5];
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1005724A8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v1[6];
  sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_10056EBD8();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
  }

  v26 = v1[7];
  sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_10056E698();
    (*(*(v27 - 8) + 8))(v3 + v26, v27);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_100052B74@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for TopChartsWidgetContentView(0) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 56);
  v8 = *(v2 + 40);
  v10[0] = *(v2 + 24);
  v10[1] = v8;
  v11 = v7;
  sub_10004C9D0(a1, v6, v10, v2 + ((v5 + 64) & ~v5), a2);
  return result;
}

unint64_t sub_100052C0C()
{
  result = qword_1006E2350;
  if (!qword_1006E2350)
  {
    sub_100010324(&qword_1006E2348, &qword_10057E9E0);
    sub_100010BC0(&qword_1006E2358, &qword_1006E2360, &unk_10057E9E8, &protocol conformance descriptor for Link<A>);
    sub_100050804(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2350);
  }

  return result;
}

unint64_t sub_100052D1C()
{
  result = qword_1006E23B8;
  if (!qword_1006E23B8)
  {
    sub_100010324(&qword_1006E2378, &qword_10057EA00);
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380, &qword_10057EA08, &protocol conformance descriptor for VStack<A>);
    sub_100050804(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier, &unk_10057C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23B8);
  }

  return result;
}

unint64_t sub_100052E04()
{
  result = qword_1006E23D0;
  if (!qword_1006E23D0)
  {
    sub_100010324(&qword_1006E2398, &qword_10057EA20);
    sub_100053ED4(&qword_1006E23D8, &qword_1006E2390, &qword_10057EA18, sub_100052EE8);
    sub_100010BC0(&qword_1006E23F0, &qword_1006E23C8, &qword_10057EA40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23D0);
  }

  return result;
}

unint64_t sub_100052EE8()
{
  result = qword_1006E23E0;
  if (!qword_1006E23E0)
  {
    sub_100010324(&qword_1006E2388, &qword_10057EA10);
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380, &qword_10057EA08, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23E0);
  }

  return result;
}

unint64_t sub_100052FA0()
{
  result = qword_1006E2408;
  if (!qword_1006E2408)
  {
    sub_100010324(&qword_1006E1918, &qword_10057DAA0);
    sub_100010324(&qword_1006E1928, &unk_10057EA60);
    sub_1000378D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2408);
  }

  return result;
}

uint64_t sub_100053068(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1000530D0()
{
  result = qword_1006E2460;
  if (!qword_1006E2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2460);
  }

  return result;
}

unint64_t sub_100053178()
{
  result = qword_1006E2478;
  if (!qword_1006E2478)
  {
    sub_100010324(&qword_1006E2468, &qword_10057EAC8);
    sub_100053204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2478);
  }

  return result;
}

unint64_t sub_100053204()
{
  result = qword_1006E2480;
  if (!qword_1006E2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2480);
  }

  return result;
}

uint64_t sub_10005327C(uint64_t a1)
{
  sub_100009DCC(&qword_1006E24F8, &qword_10057EB88);
  __chkstk_darwin();
  sub_10000CC8C(a1, &v4 - v2, &qword_1006E24F8, &qword_10057EB88);
  return sub_10056F0D8();
}

unint64_t sub_10005332C()
{
  result = qword_1006E2498;
  if (!qword_1006E2498)
  {
    sub_100010324(&qword_1006E2430, &qword_10057EA98);
    sub_100010BC0(&qword_1006E24A0, &qword_1006E2428, &qword_10057EA90, &protocol conformance descriptor for VStack<A>);
    sub_100010BC0(&qword_1006E10A0, &qword_1006E10A8, &unk_10057CCE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2498);
  }

  return result;
}

unint64_t sub_100053438()
{
  result = qword_1006E24D0;
  if (!qword_1006E24D0)
  {
    sub_100010324(&qword_1006E24B0, &qword_10057EB20);
    sub_1000534F0();
    sub_100010BC0(&qword_1006E10C0, &qword_1006E10C8, &qword_10057CCF0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E24D0);
  }

  return result;
}

unint64_t sub_1000534F0()
{
  result = qword_1006E24D8;
  if (!qword_1006E24D8)
  {
    sub_100010324(&qword_1006E24C8, &qword_10057EB38);
    sub_100010BC0(&qword_1006E1098, &qword_1006E1050, &qword_10057EB40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E24D8);
  }

  return result;
}

uint64_t sub_1000535A8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002AAC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000535EC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001B5A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100053644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1000537BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_10005392C(uint64_t a1)
{
  sub_100053A60(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100053A60(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100053A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100053AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100053BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E2158, &unk_10057E7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100053D08(uint64_t a1)
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100053DF0()
{
  result = qword_1006E2628;
  if (!qword_1006E2628)
  {
    sub_100010324(&qword_1006E22E8, &qword_10057E938);
    sub_100053ED4(&qword_1006E2630, &qword_1006E22D0, &qword_10057E8F0, sub_100053F88);
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0, &qword_10057E940, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2628);
  }

  return result;
}

uint64_t sub_100053ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    sub_100050804(&qword_1006E23E8, type metadata accessor for BackgroundModifier, &unk_10057EBC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100053F88()
{
  result = qword_1006E2638;
  if (!qword_1006E2638)
  {
    sub_100010324(&qword_1006E22E0, &qword_10057E900);
    sub_100010BC0(&qword_1006E2640, &qword_1006E2648, &qword_10057EBB8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2638);
  }

  return result;
}

unint64_t sub_100054044()
{
  result = qword_1006E2650;
  if (!qword_1006E2650)
  {
    sub_100010324(&qword_1006E23A8, &qword_10057EA30);
    sub_100010324(&qword_1006E2398, &qword_10057EA20);
    sub_100052E04();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0, &qword_10057E940, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2650);
  }

  return result;
}

Swift::Int sub_100054170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E2710, &qword_10057ED70);
    v2 = sub_100573EB8();
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_100574678();
      NSFileManager.Failure.hash(into:)();
      result = sub_1005746C8();
      v9 = -1 << *(v2 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = ~v9;
        while (1)
        {
          result = static MPCPlayerCommandRequest.isAvailable(in:)();
          if (result)
          {
            break;
          }

          v10 = (v10 + 1) & v14;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if (((1 << v10) & v12) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v11) = v13 | v12;
        v5 = *(v2 + 16);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v7;
      }

      if (++v3 == v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100054290()
{
  result = qword_1006E2720;
  if (!qword_1006E2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2720);
  }

  return result;
}

uint64_t sub_1000542EC()
{
  sub_100010324(&qword_1006E2658, &qword_10057EC60);
  sub_100010BC0(&qword_1006E2668, &qword_1006E2658, &qword_10057EC60, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100054384()
{
  sub_100010324(&qword_1006E2730, &qword_10057ED88);
  sub_100010324(&qword_1006E0D90, &unk_10057D520);
  sub_100010BC0(&qword_1006E2738, &qword_1006E2730, &qword_10057ED88, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100028AD8();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100054450(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100054464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000544AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054518@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  sub_10001B550();

  v5 = sub_10056FF28();
  v7 = v6;
  v9 = v8;
  sub_10056FB08();
  v10 = sub_10056FE88();
  v12 = v11;
  v14 = v13;

  sub_10001B5A4(v5, v7, v9 & 1);

  sub_10056FB88();
  v15 = sub_10056FD98();
  v17 = v16;
  v19 = v18;
  sub_10001B5A4(v10, v12, v14 & 1);

  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v20 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  sub_10000C49C(v20, qword_1006FC0D8);
  sub_100010BC0(&qword_1006E24F0, &qword_1006E1058, &qword_10057CCD0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
  v21 = sub_10056FE28();
  v23 = v22;
  v25 = v24;
  sub_10001B5A4(v15, v17, v19 & 1);

  sub_10056FFD8();
  sub_10001B5A4(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  result = sub_100009DCC(&qword_1006E2740, &qword_10057EE50);
  v28 = a4 + *(result + 36);
  *v28 = KeyPath;
  *(v28 + 8) = a3;
  return result;
}

unint64_t sub_100054798()
{
  result = qword_1006E2748;
  if (!qword_1006E2748)
  {
    sub_100010324(&qword_1006E2740, &qword_10057EE50);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2750, &qword_1006E2758, &qword_100580B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2748);
  }

  return result;
}

uint64_t sub_100054884()
{
  v0 = sub_10056DF88();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(ICPrivacyInfo) init];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];
  v6 = [v4 preflightDisclosureRequiredForMusic];
  static Logger.music(_:)(0xD000000000000018, 0x80000001005AAC10);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240448;
    *(v9 + 4) = v5;
    *(v9 + 8) = 1026;
    *(v9 + 10) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "privacyAcknowledgementRequired= %{BOOL,public}d, preflightDisclosureRequired= %{BOOL,public}d)", v9, 0xEu);
  }

  (*(v1 + 8))(v3, v0);
  return (v5 | v6) & 1;
}

uint64_t sub_100054A44()
{
  v1 = type metadata accessor for WidgetMusicItem(0);
  v2 = *(v1 - 1);
  __chkstk_darwin();
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v6 = *(v0 + *(result + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v9 = &v4[v1[9]];
  v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (v8 < *(v6 + 16))
  {
    sub_1000584C0(v10 + *(v2 + 72) * v8, v4, type metadata accessor for WidgetMusicItem);
    if (qword_1006DF9B8 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C49C(v1, qword_1006FC1D8);
    v12 = (v11 + v1[9]);
    v13 = *v9 == *v12 && *(v9 + 1) == v12[1];
    if (!v13 && (sub_100574498() & 1) == 0)
    {
      v14 = v1[10];
      v15 = &v4[v14];
      v16 = *&v4[v14 + 8];
      v17 = (v11 + v14);
      v18 = v17[1];
      v19 = !v16 || v18 == 0;
      if (v19 || (*v15 == *v17 ? (v25 = v16 == v18) : (v25 = 0), !v25 && (sub_100574498() & 1) == 0))
      {
        v20 = v1[11];
        v21 = *&v4[v20];
        v22 = *&v4[v20 + 8];
        v23 = (v11 + v20);
        v24 = v21 == *v23 && v22 == v23[1];
        if (!v24 && (sub_100574498() & 1) == 0)
        {
LABEL_46:
          sub_100034768(v4, type metadata accessor for WidgetMusicItem);
          return 0;
        }
      }
    }

    v26 = v1[12];
    v27 = &v4[v26];
    v28 = *&v4[v26 + 8];
    v29 = (v11 + v26);
    v30 = v29[1];
    if (v28)
    {
      if (v30)
      {
        v31 = *v27 == *v29 && v28 == v30;
        if (v31 || (sub_100574498() & 1) != 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (!v30)
    {
      goto LABEL_4;
    }

    v32 = v1[13];
    v33 = &v4[v32];
    v34 = *&v4[v32 + 8];
    v35 = (v11 + v32);
    v36 = v35[1];
    if (!v34)
    {
      if (v36)
      {
        goto LABEL_46;
      }

LABEL_4:
      result = sub_100034768(v4, type metadata accessor for WidgetMusicItem);
      goto LABEL_5;
    }

    if (!v36)
    {
      goto LABEL_46;
    }

    if (*v33 == *v35 && v34 == v36)
    {
      goto LABEL_4;
    }

    v37 = sub_100574498();
    result = sub_100034768(v4, type metadata accessor for WidgetMusicItem);
    if ((v37 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    if (v7 == ++v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_100054D40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = *(v7 + 16);
  v13(&v41 - v11, a1, v6, v10);
  v45 = v2;
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136446210;
    (v13)(v9, v12, v6);
    v19 = sub_100572978();
    v21 = v20;
    (*(v7 + 8))(v12, v6);
    v22 = sub_10008190C(v19, v21, &v46);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Generating placeholder in %{public}s", v17, 0xCu);
    sub_100010474(v18);

    v5 = v42;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for WidgetMusicItem(0);
  v24 = sub_10000C49C(v23, qword_1006FC1D8);
  v25 = sub_100572D98();
  *(v25 + 16) = 6;
  v26 = *(v23 - 8);
  v27 = v26;
  v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  sub_1000584C0(v24, v28, type metadata accessor for WidgetMusicItem);
  v29 = *(v26 + 72);
  sub_1000584C0(v24, v28 + v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 2 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 3 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 4 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 5 * v29, type metadata accessor for WidgetMusicItem);
  v31 = v43;
  v30 = v44;
  (*(v27 + 56))(v44 + *(v43 + 28), 1, 1, v23);
  sub_10056CA98();
  *(v30 + v31[5]) = v25;
  *(v30 + v31[6]) = 3;
  *(v30 + v31[8]) = 0;
  v32 = (v30 + v31[9]);
  *v32 = 0;
  v32[1] = 0;
  sub_1000584C0(v30, v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v33 = sub_10056DF68();
  v34 = sub_100573448();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46 = v36;
    *v35 = 136446210;
    v37 = sub_1000579C0();
    v39 = v38;
    sub_100034768(v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    v40 = sub_10008190C(v37, v39, &v46);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Placeholder using %{public}s", v35, 0xCu);
    sub_100010474(v36);
  }

  else
  {

    sub_100034768(v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  }
}

uint64_t sub_10005528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v8 = sub_1005725D8();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100055394, 0, 0);
}

uint64_t sub_100055394()
{
  v21 = v0;
  v1 = *(v0[9] + 16);
  v1(v0[11], v0[3], v0[8]);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136446210;
    v1(v7, v5, v8);
    v10 = sub_100572978();
    v12 = v11;
    (*(v6 + 8))(v5, v8);
    v13 = sub_10008190C(v10, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating snapshot in %{public}s", v9, 0xCu);
    sub_100010474(v19);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[9];

    (*(v15 + 8))(v5, v14);
  }

  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_10005559C;
  v17 = v0[7];

  return sub_10005588C(v17);
}

uint64_t sub_10005559C()
{

  return _swift_task_switch(sub_100055698, 0, 0);
}

uint64_t sub_100055698()
{
  v15 = v0;
  sub_1000584C0(*(v0 + 56), *(v0 + 48), type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_1000579C0();
    v9 = v8;
    sub_100034768(v4, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    v10 = sub_10008190C(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Snapshot using %{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  else
  {

    sub_100034768(v4, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  }

  v11 = *(v0 + 56);
  (*(v0 + 32))(v11);
  sub_100034768(v11, type metadata accessor for RadioWidgetTimelineProvider.Entry);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10005588C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000558AC, 0, 0);
}

id sub_1000558AC()
{
  result = [objc_opt_self() sharedCloudController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result hasProperNetworkConditionsToShowCloudMedia];

  if (!v3)
  {
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't use widget: device offline", v10, 2u);
    }

    if (qword_1006DF980 != -1)
    {
      swift_once();
    }

    v7 = &qword_1006FC188;
    goto LABEL_14;
  }

  if (sub_100054884())
  {
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Can't use widget: need to accept privacy acknowledgment", v6, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v7 = &qword_1006FC158;
LABEL_14:
    v22 = v7[1];
    v23 = *v7;
    if (qword_1006DF9B8 != -1)
    {
      swift_once();
    }

    v11 = v0[2];
    v12 = type metadata accessor for WidgetMusicItem(0);
    v13 = sub_10000C49C(v12, qword_1006FC1D8);
    v14 = sub_100572D98();
    *(v14 + 16) = 6;
    v15 = *(v12 - 8);
    v16 = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    sub_1000584C0(v13, v16, type metadata accessor for WidgetMusicItem);
    v17 = *(v15 + 72);
    sub_1000584C0(v13, v16 + v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 2 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 3 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 4 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 5 * v17, type metadata accessor for WidgetMusicItem);
    v18 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
    (*(v15 + 56))(v11 + v18[7], 1, 1, v12);

    sub_10056CA98();
    *(v11 + v18[5]) = v14;
    *(v11 + v18[6]) = 3;
    *(v11 + v18[8]) = 0;
    v19 = (v11 + v18[9]);
    *v19 = v23;
    v19[1] = v22;
    v20 = v0[1];

    return v20();
  }

  if (qword_1006DF8F8 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[4] = v21;
  *v21 = v0;
  v21[1] = sub_100055D28;

  return sub_10001B84C();
}

uint64_t sub_100055D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_100056218;
  }

  else
  {
    v4 = sub_100055E3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100055E3C(uint64_t a1)
{
  v2 = v1[5];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (v3 >= 7)
      {
        v4 = *(type metadata accessor for WidgetMusicItem(0) - 8);
        sub_100058720(v2, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), 0, 0xDuLL);
        v6 = v5;

        v2 = v6;
      }

      v7 = v1[2];
      v8 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
      v9 = v8[7];
      v10 = type metadata accessor for WidgetMusicItem(0);
      (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
      sub_10056CA98();
      *(v7 + v8[5]) = v2;
      *(v7 + v8[6]) = 3;
      *(v7 + v8[8]) = 0;
      v11 = (v7 + v8[9]);
      *v11 = 0;
      v11[1] = 0;
      goto LABEL_14;
    }
  }

  v12 = sub_10056DF68();
  v13 = sub_100573448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Using placeholder: no stations available", v14, 2u);
  }

  if (qword_1006DF9A0 != -1)
  {
    swift_once();
  }

  v26 = unk_1006FC1D0;
  v27 = qword_1006FC1C8;
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v15 = v1[2];
  v16 = type metadata accessor for WidgetMusicItem(0);
  v17 = sub_10000C49C(v16, qword_1006FC1D8);
  v18 = sub_100572D98();
  *(v18 + 16) = 6;
  v19 = *(v16 - 8);
  v20 = v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  sub_1000584C0(v17, v20, type metadata accessor for WidgetMusicItem);
  v21 = *(v19 + 72);
  sub_1000584C0(v17, v20 + v21, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v17, v20 + 2 * v21, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v17, v20 + 3 * v21, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v17, v20 + 4 * v21, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v17, v20 + 5 * v21, type metadata accessor for WidgetMusicItem);
  v22 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v19 + 56))(v15 + v22[7], 1, 1, v16);

  sub_10056CA98();
  *(v15 + v22[5]) = v18;
  *(v15 + v22[6]) = 3;
  *(v15 + v22[8]) = 0;
  v23 = (v15 + v22[9]);
  *v23 = v27;
  v23[1] = v26;
LABEL_14:
  v24 = v1[1];

  return v24();
}