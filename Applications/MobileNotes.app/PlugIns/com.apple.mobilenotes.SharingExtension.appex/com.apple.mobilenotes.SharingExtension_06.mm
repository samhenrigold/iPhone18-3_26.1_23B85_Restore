unint64_t sub_1000A3FF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F38F0;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000A4040(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001000C7600 == a2;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C7B60 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74786554746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000A420C(void *a1)
{
  v2 = sub_100030480(&qword_100108880, &qword_1000CE280);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  sub_1000458B4(a1, a1[3]);
  sub_1000A66B8();
  sub_1000B6010();
  v9[15] = 0;
  v7 = sub_1000B5DF0();
  v9[14] = 1;
  sub_1000B5DF0();
  (*(v3 + 8))(v6, v2);
  sub_100035DA8(a1);
  return v7;
}

uint64_t sub_1000A43B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7B80 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEE00656C79745368 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369736168706D65 && a2 == 0xED0000656C797453 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7BA0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7BC0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7BE0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1000A4700(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2._countAndFlagsBits = 0;
    v3 = 0xE000000000000000;
    v4 = 1;
    while (1)
    {
      v2._object = v3;
      sub_1000B56E0(v2);

      v2._countAndFlagsBits = 62;
      v3 = 0xE100000000000000;
      if (v1 == v4)
      {
        break;
      }

      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        break;
      }
    }

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    sub_1000B56E0(v6);
    return 62;
  }

  return result;
}

uint64_t sub_1000A47A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A480C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000A481C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A4870()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A48E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A4984()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A49C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A4A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_1000A4A90(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000A4B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B4DB0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4B88(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000B4DB0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A4C0C(uint64_t a1)
{
  v1 = sub_1000B4DB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000A4C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A4D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000B4F00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000A4E10(uint64_t a1)
{
  result = sub_1000B4F00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4E84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000A4E9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A4EC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1000A4F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A4FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A50EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v8 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A5224(uint64_t a1)
{
  sub_10004D9AC(319, &unk_100108240, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_1000A532C(319, &qword_100108558, _s16AttributedStringV13ChecklistItemVMa);
    if (v2 <= 0x3F)
    {
      sub_1000A532C(319, &unk_100108560, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A532C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000B5AC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A5494(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A5544(uint64_t a1)
{
  sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000A532C(319, &qword_100107088, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A5620(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[12] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100030480(&qword_100108368, &unk_1000CDA10);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000A5880(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  result = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12] + 8) = a2;
  }

  else
  {
    v16 = sub_100030480(&qword_100108368, &unk_1000CDA10);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[13];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_1000A5AC0(uint64_t a1)
{
  sub_1000A532C(319, &unk_100108560, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1000A532C(319, &qword_100107088, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_10004D9AC(319, &qword_1001086B0, &_s16AttributedStringV4FontVN);
      if (v3 <= 0x3F)
      {
        sub_1000A532C(319, &qword_1001086B8, _s16AttributedStringV14ParagraphStyleVMa);
        if (v4 <= 0x3F)
        {
          sub_10004D9AC(319, &qword_1001086C0, &_s16AttributedStringV13EmphasisStyleON);
          if (v5 <= 0x3F)
          {
            sub_1000A532C(319, &qword_100107C28, &type metadata accessor for URL);
            if (v6 <= 0x3F)
            {
              sub_10004D9AC(319, &qword_1001086C8, &_s16AttributedStringV17WritingDirectionsON);
              if (v7 <= 0x3F)
              {
                sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
                if (v8 <= 0x3F)
                {
                  sub_1000A532C(319, &unk_1001086D0, _s16AttributedStringV16InlineAttachmentVMa);
                  if (v9 <= 0x3F)
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
  }
}

__n128 sub_1000A5CF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1000A5D20()
{
  result = qword_100108720;
  if (!qword_100108720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108720);
  }

  return result;
}

unint64_t sub_1000A5D78()
{
  result = qword_100108728;
  if (!qword_100108728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108728);
  }

  return result;
}

unint64_t sub_1000A5DD0()
{
  result = qword_100108730;
  if (!qword_100108730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108730);
  }

  return result;
}

unint64_t sub_1000A5E28()
{
  result = qword_100108738;
  if (!qword_100108738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108738);
  }

  return result;
}

unint64_t sub_1000A5EC4()
{
  result = qword_100108750;
  if (!qword_100108750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108750);
  }

  return result;
}

unint64_t sub_1000A5F18()
{
  result = qword_100108768;
  if (!qword_100108768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108768);
  }

  return result;
}

unint64_t sub_1000A5F9C()
{
  result = qword_100108770;
  if (!qword_100108770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108770);
  }

  return result;
}

unint64_t sub_1000A6028()
{
  result = qword_100108780;
  if (!qword_100108780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108780);
  }

  return result;
}

unint64_t sub_1000A607C()
{
  result = qword_100108790;
  if (!qword_100108790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108790);
  }

  return result;
}

unint64_t sub_1000A60D0()
{
  result = qword_100108798;
  if (!qword_100108798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108798);
  }

  return result;
}

unint64_t sub_1000A6124()
{
  result = qword_1001087A0;
  if (!qword_1001087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087A0);
  }

  return result;
}

unint64_t sub_1000A6178()
{
  result = qword_1001087B8;
  if (!qword_1001087B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087B8);
  }

  return result;
}

unint64_t sub_1000A61CC()
{
  result = qword_1001087C0;
  if (!qword_1001087C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087C0);
  }

  return result;
}

unint64_t sub_1000A6220()
{
  result = qword_1001087D0;
  if (!qword_1001087D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087D0);
  }

  return result;
}

unint64_t sub_1000A6274()
{
  result = qword_1001087D8;
  if (!qword_1001087D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087D8);
  }

  return result;
}

unint64_t sub_1000A62C8()
{
  result = qword_1001087E8;
  if (!qword_1001087E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001087E8);
  }

  return result;
}

unint64_t sub_1000A631C()
{
  result = qword_100108800;
  if (!qword_100108800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108800);
  }

  return result;
}

unint64_t sub_1000A6370()
{
  result = qword_100108808;
  if (!qword_100108808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108808);
  }

  return result;
}

unint64_t sub_1000A63C4()
{
  result = qword_100108810;
  if (!qword_100108810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108810);
  }

  return result;
}

unint64_t sub_1000A6418()
{
  result = qword_100108820;
  if (!qword_100108820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108820);
  }

  return result;
}

unint64_t sub_1000A646C()
{
  result = qword_100108828;
  if (!qword_100108828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108828);
  }

  return result;
}

unint64_t sub_1000A64C0()
{
  result = qword_100108840;
  if (!qword_100108840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108840);
  }

  return result;
}

unint64_t sub_1000A6514()
{
  result = qword_100108848;
  if (!qword_100108848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108848);
  }

  return result;
}

unint64_t sub_1000A6568()
{
  result = qword_100108858;
  if (!qword_100108858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108858);
  }

  return result;
}

unint64_t sub_1000A65BC()
{
  result = qword_100108860;
  if (!qword_100108860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108860);
  }

  return result;
}

unint64_t sub_1000A6610()
{
  result = qword_100108870;
  if (!qword_100108870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108870);
  }

  return result;
}

unint64_t sub_1000A6664()
{
  result = qword_100108878;
  if (!qword_100108878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108878);
  }

  return result;
}

unint64_t sub_1000A66B8()
{
  result = qword_100108888;
  if (!qword_100108888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108888);
  }

  return result;
}

unint64_t sub_1000A670C()
{
  result = qword_1001088A0;
  if (!qword_1001088A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088A0);
  }

  return result;
}

uint64_t sub_1000A6760(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001088A8, &qword_1000CE298);
    sub_1000A2F08(a2, _s16AttributedStringV9AttributeVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A6824(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A68B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A69B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000A6A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A6A58()
{
  result = qword_1001088D8;
  if (!qword_1001088D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088D8);
  }

  return result;
}

unint64_t sub_1000A6AB0()
{
  result = qword_1001088E0;
  if (!qword_1001088E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088E0);
  }

  return result;
}

unint64_t sub_1000A6B08()
{
  result = qword_1001088E8;
  if (!qword_1001088E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088E8);
  }

  return result;
}

unint64_t sub_1000A6B60()
{
  result = qword_1001088F0;
  if (!qword_1001088F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088F0);
  }

  return result;
}

unint64_t sub_1000A6BB8()
{
  result = qword_1001088F8;
  if (!qword_1001088F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001088F8);
  }

  return result;
}

unint64_t sub_1000A6C10()
{
  result = qword_100108900;
  if (!qword_100108900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108900);
  }

  return result;
}

unint64_t sub_1000A6C68()
{
  result = qword_100108908;
  if (!qword_100108908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108908);
  }

  return result;
}

unint64_t sub_1000A6CC0()
{
  result = qword_100108910;
  if (!qword_100108910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108910);
  }

  return result;
}

unint64_t sub_1000A6D18()
{
  result = qword_100108918;
  if (!qword_100108918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108918);
  }

  return result;
}

unint64_t sub_1000A6D70()
{
  result = qword_100108920;
  if (!qword_100108920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108920);
  }

  return result;
}

unint64_t sub_1000A6DC8()
{
  result = qword_100108928;
  if (!qword_100108928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108928);
  }

  return result;
}

unint64_t sub_1000A6E20()
{
  result = qword_100108930;
  if (!qword_100108930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108930);
  }

  return result;
}

unint64_t sub_1000A6E78()
{
  result = qword_100108938;
  if (!qword_100108938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108938);
  }

  return result;
}

unint64_t sub_1000A6ED0()
{
  result = qword_100108940;
  if (!qword_100108940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108940);
  }

  return result;
}

unint64_t sub_1000A6F28()
{
  result = qword_100108948;
  if (!qword_100108948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108948);
  }

  return result;
}

unint64_t sub_1000A6F80()
{
  result = qword_100108950;
  if (!qword_100108950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108950);
  }

  return result;
}

unint64_t sub_1000A6FD8()
{
  result = qword_100108958;
  if (!qword_100108958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108958);
  }

  return result;
}

unint64_t sub_1000A7030()
{
  result = qword_100108960;
  if (!qword_100108960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108960);
  }

  return result;
}

unint64_t sub_1000A7088()
{
  result = qword_100108968;
  if (!qword_100108968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108968);
  }

  return result;
}

unint64_t sub_1000A70E0()
{
  result = qword_100108970;
  if (!qword_100108970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108970);
  }

  return result;
}

unint64_t sub_1000A7138()
{
  result = qword_100108978;
  if (!qword_100108978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108978);
  }

  return result;
}

unint64_t sub_1000A718C()
{
  result = qword_100108988;
  if (!qword_100108988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108988);
  }

  return result;
}

uint64_t sub_1000A71E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100108990, &qword_1000CEA50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A7260()
{
  result = qword_1001089B0;
  if (!qword_1001089B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001089B0);
  }

  return result;
}

unint64_t sub_1000A72B8()
{
  result = qword_1001089B8;
  if (!qword_1001089B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001089B8);
  }

  return result;
}

unint64_t sub_1000A7310()
{
  result = qword_1001089C0;
  if (!qword_1001089C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001089C0);
  }

  return result;
}

id sub_1000A7430(uint64_t a1, uint64_t a2, char *a3)
{
  result = [v3 managedObjectContext];
  if (result)
  {
    v8 = result;
    v9 = *a3;
    if ((*a3 & 1) == 0 || (sub_1000362AC(0, &qword_1001089D0, ICAccount_ptr), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v11 = sub_1000B55F0(), v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v11 context:v8], v11, !v12))
    {
      v12 = sub_1000A80B0(a1, a2, v9 & 1);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000A7544()
{
  v1 = objc_opt_self();
  v2 = [v0 defaultFolder];
  v3 = [v1 newEmptyNoteInFolder:v2];

  return v3;
}

char **sub_1000A75D4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  result = [v5 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = *a3;
    v12 = &selRef_setAlignment_;
    v13 = [v5 canAddSubfolder];
    if (v11)
    {
      if (v13)
      {
        if ([v5 canAddSubfolder])
        {
          sub_1000362AC(0, &qword_1001089C8, ICFolder_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = sub_1000B55F0();
          v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v10];

          if (v12)
          {
            if (sub_1000B5AA0())
            {
              goto LABEL_28;
            }

            v16 = [v5 objectID];
            v17 = *(a3 + 2);
            if (v17)
            {
              v18 = [v17 objectID];
              v19 = v18;
              if (v16)
              {
                if (v18)
                {
                  sub_1000362AC(0, &qword_100108030, NSManagedObjectID_ptr);
                  v20 = sub_1000B5AA0();

                  if (v20)
                  {
                    goto LABEL_28;
                  }

LABEL_26:
                  if ([v12 isMovable])
                  {
                    [v12 unmarkForDeletion];
                    [v12 setParent:v5];
                    goto LABEL_29;
                  }

LABEL_28:
                  [v12 unmarkForDeletion];
                  goto LABEL_29;
                }
              }

              else
              {
                v16 = v18;
                if (!v18)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (!v16)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }

          v26 = objc_opt_self();
          v27 = sub_1000B55F0();
          v12 = [v26 newFolderWithIdentifier:v27 parentFolder:v5];

LABEL_21:
          v28 = sub_1000B55F0();
          [v12 updateChangeCountWithReason:v28];

          return v12;
        }

        v21 = v5;
LABEL_18:
        v25 = v21;

        return v25;
      }

      sub_1000363B8();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
    }

    else
    {
      if (v13)
      {
        v21 = [objc_opt_self() newFolderInParentFolder:v5];
        goto LABEL_18;
      }

      v23 = [v5 account];
      v24 = sub_1000A80B0(a1, a2, 0);
      if (!v4)
      {
        v12 = v24;

        goto LABEL_21;
      }

      v10 = v23;
    }

LABEL_29:

    return v12;
  }

  __break(1u);
  return result;
}

id sub_1000A7914(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  result = [v4 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = *a3;
    v11 = [v4 canMoveAddOrDeleteContents];
    if (v10)
    {
      if (v11)
      {
        sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = sub_1000B55F0();
        v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v9];

        if (v10)
        {
          v14 = [v4 objectID];
          v15 = *(a3 + 2);
          if (v15)
          {
            v16 = [v15 objectID];
            v17 = v16;
            if (v14)
            {
              if (v16)
              {
                sub_1000362AC(0, &qword_100108030, NSManagedObjectID_ptr);
                v18 = sub_1000B5AA0();

                if (v18)
                {
                  goto LABEL_22;
                }

LABEL_19:
                if ([v10 isMovable])
                {
                  [v10 unmarkForDeletion];
                  [v10 setFolder:v4];
                  goto LABEL_21;
                }

LABEL_22:
                [v10 unmarkForDeletion];

                return v10;
              }
            }

            else
            {
              v14 = v16;
              if (!v16)
              {
                goto LABEL_22;
              }
            }
          }

          else if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        v22 = objc_opt_self();
        v23 = sub_1000B55F0();
        v10 = [v22 newEmptyNoteWithIdentifier:v23 folder:v4];

LABEL_21:
        v24 = sub_1000B55F0();
        [v10 updateChangeCountWithReason:v24];

        return v10;
      }

      sub_1000363B8();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    else
    {
      if (v11)
      {
        v10 = [objc_opt_self() newEmptyNoteInFolder:v4];
        goto LABEL_21;
      }

      v20 = [v4 account];
      v21 = [v20 defaultFolder];

      v10 = sub_1000A7914(a1, a2, a3);
    }

    return v10;
  }

  __break(1u);
  return result;
}

id sub_1000A7C28(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [v3 account];
  v8 = sub_1000A7F5C(a1, a2, *a3 & 1);

  return v8;
}

id sub_1000A7CDC(uint64_t a1, id a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 account];
  if (v8)
  {
    v9 = v8;
    a2 = sub_1000A7F5C(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000363B8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return a2;
}

id sub_1000A7DE4(uint64_t a1, id a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 note];
  if (v8 && (v9 = v8, v10 = [v8 account], v9, v10))
  {
    a2 = sub_1000A7F5C(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000363B8();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1000A7ECC()
{
  sub_1000363B8();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

id sub_1000A7F5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000B55F0();
  v6 = [objc_opt_self() hashtagWithDisplayText:v5 account:v3 createIfNecessary:1];

  if (v6)
  {
    if (a3)
    {
      v7 = sub_1000B55F0();
      [v6 setDisplayText:v7];

      [v6 unmarkForDeletion];
      v8 = sub_1000B55F0();
      [v6 updateChangeCountWithReason:v8];
    }

    return v6;
  }

  else
  {
    result = sub_1000B5CE0();
    __break(1u);
  }

  return result;
}

id sub_1000A80B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      sub_1000362AC(0, &qword_1001089C8, ICFolder_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = sub_1000B55F0();
      v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v9 context:v7];

      if (v10)
      {
        if ([v10 isMovable])
        {
          [v10 setParent:0];
        }

        else
        {
          [v10 unmarkForDeletion];
        }

        goto LABEL_9;
      }

      v11 = objc_opt_self();
      v12 = sub_1000B55F0();
      v10 = [v11 newFolderWithIdentifier:v12 account:v4];
    }

    else
    {
      v10 = [objc_opt_self() newFolderInAccount:v4];
    }

    v13 = sub_1000B55F0();
    [v10 updateChangeCountWithReason:v13];

    v7 = v13;
LABEL_9:

    return v10;
  }

  __break(1u);
  return result;
}

id sub_1000A8268(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  if (a3)
  {
    sub_1000362AC(0, &qword_100107330, ICInlineAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_1000B55F0();
    v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v12];

    if (v16)
    {
      v17 = v16;
      [v17 setNote:v13];
      [v17 setParentAttachment:v4];

      [v17 unmarkForDeletion];
    }

    else
    {
      v19 = sub_1000B55F0();
      v17 = [v3 addInlineAttachmentWithIdentifier:v19];
    }
  }

  else
  {
    sub_1000B4EF0();
    sub_1000B4EC0();
    (*(v7 + 8))(v10, v6);
    v18 = sub_1000B55F0();

    v17 = [v3 addInlineAttachmentWithIdentifier:v18];
  }

  v20 = sub_1000B55F0();
  [v17 updateChangeCountWithReason:v20];

  return v17;
}

id sub_1000A850C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v12 = result;
    if (a3)
    {
      sub_1000362AC(0, &qword_100107330, ICInlineAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_1000B55F0();
      v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v12];

      if (v15)
      {
        v16 = v15;
        [v16 setNote:v4];
        [v16 setParentAttachment:0];

        [v16 unmarkForDeletion];
        v17 = sub_1000B55F0();
        [v16 updateChangeCountWithReason:v17];

        return v16;
      }

      v18 = sub_1000B55F0();
      v19 = [v4 addInlineAttachmentWithIdentifier:v18];
    }

    else
    {
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v7 + 8))(v10, v6);
      v18 = sub_1000B55F0();

      v19 = [v4 addInlineAttachmentWithIdentifier:v18];
    }

    v20 = v19;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000A8784(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  if (a3)
  {
    sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_1000B55F0();
    v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v12];

    if (v16)
    {
      v17 = v16;
      [v17 setNote:v13];
      [v17 setParentAttachment:v4];

      [v17 unmarkForDeletion];
    }

    else
    {
      v20 = objc_opt_self();
      v21 = sub_1000B55F0();
      v17 = [v20 newAttachmentWithIdentifier:v21 note:v13];

      [v17 setParentAttachment:v4];
    }
  }

  else
  {
    v18 = objc_opt_self();
    sub_1000B4EF0();
    sub_1000B4EC0();
    (*(v7 + 8))(v10, v6);
    v19 = sub_1000B55F0();

    v17 = [v18 newAttachmentWithIdentifier:v19 note:v13];

    [v17 setParentAttachment:v4];
  }

  v22 = sub_1000B55F0();
  [v17 updateChangeCountWithReason:v22];

  return v17;
}

id sub_1000A8A78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1000B4F00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v12 = result;
    if (a3)
    {
      sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_1000B55F0();
      v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v12];

      if (!v15)
      {
        v20 = objc_opt_self();
        v21 = sub_1000B55F0();
        v22 = [v20 newAttachmentWithIdentifier:v21 note:v4];

        return v22;
      }

      v16 = v15;
      [v16 setNote:v4];
      [v16 setParentAttachment:0];

      [v16 unmarkForDeletion];
      v17 = sub_1000B55F0();
      [v16 updateChangeCountWithReason:v17];
    }

    else
    {
      v18 = objc_opt_self();
      sub_1000B4EF0();
      sub_1000B4EC0();
      (*(v7 + 8))(v10, v6);
      v19 = sub_1000B55F0();

      v16 = [v18 newAttachmentWithIdentifier:v19 note:v3];
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A8D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A8E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _s3TagVMa(uint64_t a1)
{
  result = qword_100108A30;
  if (!qword_100108A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A8F50(uint64_t a1)
{
  sub_10004D954(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000A8FC4(void *a1)
{
  v3 = sub_100030480(&qword_100108A80, &qword_1000CED70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000A9F10();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B4EA0();
  sub_1000AA304(&qword_100107228, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000B5E60();
  if (!v1)
  {
    _s3TagVMa(0);
    v9[14] = 1;
    sub_1000B5E70();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_1000A9180()
{
  v1 = v0;
  v2 = sub_1000B4EA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v12 - v9;
  sub_1000B5FB0();
  sub_1000A9F64(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1000B5FD0(1u);
    sub_1000AA304(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B55A0();
    (*(v3 + 8))(v6, v2);
  }

  _s3TagVMa(0);
  sub_1000B56A0();
  return sub_1000B5FE0();
}

uint64_t sub_1000A937C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v4 - 8, v5);
  v26 = &v23 - v6;
  v7 = sub_100030480(&qword_100108A70, &qword_1000CED68);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v23 - v9;
  v11 = _s3TagVMa(0);
  __chkstk_darwin(v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000B4EA0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1000458B4(a1, a1[3]);
  sub_1000A9F10();
  sub_1000B6010();
  if (v2)
  {
    sub_100035DA8(a1);
    return sub_100036320(v14, &qword_100106E38, &unk_1000CB730);
  }

  else
  {
    v16 = v24;
    v28 = 0;
    sub_1000AA304(&qword_100107288, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v17 = v25;
    sub_1000B5DB0();
    sub_10004CDC8(v26, v14);
    v27 = 1;
    v18 = sub_1000B5DC0();
    v20 = v19;
    (*(v16 + 8))(v10, v17);
    v21 = &v14[*(v11 + 20)];
    *v21 = v18;
    v21[1] = v20;
    sub_1000361E0(v14, v23);
    sub_100035DA8(a1);
    return sub_100066D84(v14);
  }
}

uint64_t sub_1000A968C()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x4164657461657263;
  }
}

uint64_t sub_1000A96C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_1000A97A8(uint64_t a1)
{
  v2 = sub_1000A9F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A97E4(uint64_t a1)
{
  v2 = sub_1000A9F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A9854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1000A9F64(v3, &v14 - v11);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1000B5FD0(1u);
    sub_1000AA304(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B55A0();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1000B56A0();
}

Swift::Int sub_1000A9A40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1000B5FB0();
  sub_1000A9F64(v3, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1000B5FD0(1u);
    sub_1000AA304(&qword_100108078, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000B55A0();
    (*(v5 + 8))(v8, v4);
  }

  sub_1000B56A0();
  return sub_1000B5FE0();
}

uint64_t sub_1000A9CD8()
{
  v0 = _s3TagVMa(0);
  sub_10003640C(v0, qword_100112C50);
  v1 = sub_100036380(v0, qword_100112C50);
  v2 = sub_1000B4EA0();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = (v1 + *(v0 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1000A9D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100106A90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_100036380(a1, qword_100112C50);

  return sub_1000361E0(v3, a2);
}

uint64_t sub_1000A9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000B4EA0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = &v10[*(a3 + 20)];
  *v12 = a1;
  *(v12 + 1) = a2;
  sub_100050EC4(v10, a4);
  return (*(v8 + 56))(a4, 0, 1, a3);
}

unint64_t sub_1000A9F10()
{
  result = qword_100108A78;
  if (!qword_100108A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108A78);
  }

  return result;
}

uint64_t sub_1000A9F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_100030480(&qword_100108070, &unk_1000CCE98);
  v15 = __chkstk_darwin(v13 - 8, v14);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_1000A9F64(a1, &v28 - v16);
  sub_1000A9F64(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1000A9F64(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1000AA304(&qword_100108080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = sub_1000B55E0();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_100036320(v17, &qword_100106E38, &unk_1000CB730);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_100036320(v17, &qword_100108070, &unk_1000CCE98);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100036320(v17, &qword_100106E38, &unk_1000CB730);
LABEL_9:
  v23 = *(_s3TagVMa(0) + 20);
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1000B5F20();
  }

  return v20 & 1;
}

uint64_t sub_1000AA304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AA360()
{
  result = qword_100108A88;
  if (!qword_100108A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108A88);
  }

  return result;
}

unint64_t sub_1000AA3B8()
{
  result = qword_100108A90;
  if (!qword_100108A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108A90);
  }

  return result;
}

unint64_t sub_1000AA410()
{
  result = qword_100108A98;
  if (!qword_100108A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108A98);
  }

  return result;
}

id sub_1000AA464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v63 = *(v4 - 1);
  __chkstk_darwin(v4, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B52B0();
  v8 = &v7[v4[5]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[v4[6]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v7[v4[7]];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v7[v4[8]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v60 = v11;
  v12 = &v7[v4[9]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v59 = v12;
  v13 = v4[10];
  v7[v13] = 2;
  v14 = [a1 attachmentModel];
  objc_opt_self();
  v62 = v14;
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    sub_10005F8D8(v7);
    v24 = 1;
    v25 = v63;
    return (*(v25 + 56))(a2, v24, 1, v4);
  }

  v16 = v15;
  v57 = a2;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000B5620();
    v56 = v4;
    v20 = v13;
    v21 = v16;
    v23 = v22;

    v61 = v19;
    *v8 = v19;
    v8[1] = v23;
    v58 = v23;
    v16 = v21;
    v13 = v20;
    v4 = v56;
  }

  else
  {
    v61 = 0;
    v58 = 0;
  }

  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = v4;
    v29 = v13;
    v30 = a1;
    v31 = sub_1000B5620();
    v33 = v32;

    *v10 = v31;
    v10[1] = v33;
    a1 = v30;
    v13 = v29;
    v4 = v28;
  }

  v34 = sub_1000504CC();
  if (v35)
  {
    *v9 = v34;
    v9[1] = v35;
  }

  result = [v16 audioDocument];
  v37 = v58;
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v38 = result;
  v39 = [result isCallRecording];

  v7[v13] = v39;
  result = [v16 audioDocument];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = result;
  v41 = [result transcriptAsPlainText];

  sub_1000B5620();
  v42 = sub_1000B56B0();

  if (v42 >= 1)
  {
    v43 = v61;
    if (!v37)
    {
      v43 = 0;
    }

    v44 = 0xE000000000000000;
    v66[0] = 0x7263736E6172745FLL;
    v66[1] = 0xEF7478742E747069;
    if (v37)
    {
      v44 = v37;
    }

    v64 = v43;
    v65 = v44;

    v64 = sub_1000B5720();
    v65 = v45;
    sub_1000B56D0();
    v46 = v65;
    v47 = v60;
    *v60 = v64;
    v47[1] = v46;
  }

  result = [v16 audioDocument];
  if (result)
  {
    v48 = result;
    v49 = [result recordingSummaryAsPlainText];

    sub_1000B5620();
    v50 = sub_1000B56B0();

    if (v50 < 1)
    {
    }

    else
    {
      v51 = v61;
      if (!v37)
      {
        v51 = 0;
      }

      v52 = 0xE000000000000000;
      strcpy(v66, "_summary.txt");
      BYTE5(v66[1]) = 0;
      HIWORD(v66[1]) = -5120;
      if (v37)
      {
        v52 = v37;
      }

      v64 = v51;
      v65 = v52;

      v64 = sub_1000B5720();
      v65 = v53;
      sub_1000B56D0();

      v54 = v65;
      v55 = v59;
      *v59 = v64;
      v55[1] = v54;
    }

    v25 = v63;
    a2 = v57;
    sub_1000AA930(v7, v57);
    v24 = 0;
    return (*(v25 + 56))(a2, v24, 1, v4);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000AA930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000AA994(void *a1)
{
  v3 = type metadata accessor for AudioAttachmentMetadata(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8, v6);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 attachmentModel];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, (v10 = [a1 managedObjectContext]) != 0))
  {
    v11 = v10;
    sub_10005F874(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    sub_1000AA930(v7, v14 + v12);
    *(v14 + v13) = a1;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000AAE94;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000AAF3C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100059F54;
    aBlock[3] = &unk_1000F68E8;
    v16 = _Block_copy(aBlock);
    v17 = a1;
    v18 = v21;

    [v11 performBlockAndWait:v16];

    _Block_release(v16);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }
  }

  else
  {
    v19 = v21;
  }
}

void sub_1000AAC3C(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(v6 + 28) + 8))
  {

    v7 = sub_1000B55F0();

    [a2 setTitle:v7];
  }

  v8 = *(a1 + *(v6 + 40));
  if (v8 != 2)
  {
    v9 = [a3 audioDocument];
    if (v9)
    {
      v10 = v9;
      [v9 setIsCallRecording:v8 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000AAD44()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_1000B52C0();
  (*(*(v7 - 8) + 8))(v6, v7);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

void sub_1000AAE94()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1000AAC3C(v0 + v2, v4, v5);
}

uint64_t sub_1000AAF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AAF5C@<X0>(uint64_t isEscapingClosureAtFileLocation@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = _swiftEmptyArrayStorage;
  v8[1] = _swiftEmptyArrayStorage;
  sub_1000B52B0();
  v9 = (v8 + v5[9]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + v5[10]);
  *v10 = 0;
  v10[1] = 0;
  v11 = v8 + v5[11];
  *v11 = 0;
  v11[8] = 1;
  v12 = v8 + v5[12];
  *v12 = 0;
  v12[8] = 1;
  v13 = [isEscapingClosureAtFileLocation managedObjectContext];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = isEscapingClosureAtFileLocation;
  *(v15 + 24) = v8;
  v16 = swift_allocObject();
  v17 = sub_1000AB77C;
  *(v16 + 16) = sub_1000AB77C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10005D784;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059F54;
  aBlock[3] = &unk_1000F6960;
  v18 = _Block_copy(aBlock);
  v19 = isEscapingClosureAtFileLocation;

  [v14 performBlockAndWait:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:

    v17 = 0;
    v15 = 0;
  }

  sub_1000ABD34(v8, a2, type metadata accessor for NoteMetadata);
  return sub_1000A480C(v17, v15);
}

uint64_t sub_1000AB1E8(void *a1, uint64_t *a2)
{
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v50 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v50 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v50 - v18;
  v20 = [a1 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000B5620();
    v24 = v23;

    v25 = (a2 + *(type metadata accessor for NoteMetadata(0) + 28));
    *v25 = v22;
    v25[1] = v24;
  }

  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1000B5620();
    v30 = v29;

    v31 = (a2 + *(type metadata accessor for NoteMetadata(0) + 32));
    *v31 = v28;
    v31[1] = v30;
  }

  v32 = [a1 creationDate];
  if (!v32)
  {
    goto LABEL_10;
  }

  v33 = v32;
  sub_1000B4E70();

  (*(v5 + 32))(v19, v16, v4);
  sub_1000B4E60();
  v35 = floor(v34 * 1000.0);
  result = (*(v5 + 8))(v19, v4);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = a2 + *(type metadata accessor for NoteMetadata(0) + 36);
  *v37 = v35;
  v37[8] = 0;
LABEL_10:
  v38 = [a1 modificationDate];
  if (v38)
  {
    v39 = v50;
    v40 = v38;
    sub_1000B4E70();

    (*(v5 + 32))(v12, v39, v4);
    sub_1000B4E60();
    v42 = floor(v41 * 1000.0);
    result = (*(v5 + 8))(v12, v4);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v42 > -9.22337204e18)
      {
        if (v42 < 9.22337204e18)
        {
          v43 = a2 + *(type metadata accessor for NoteMetadata(0) + 40);
          *v43 = v42;
          v43[8] = 0;
          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_15:
  v44 = swift_allocObject();
  *(v44 + 16) = _swiftEmptyArrayStorage;
  v45 = v44 + 16;
  v55 = sub_1000AB9F0;
  v56 = v44;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1000AC790;
  v54 = &unk_1000F69B0;
  v46 = _Block_copy(&aBlock);

  [a1 enumerateInlineAttachmentsInOrderUsingBlock:v46];
  _Block_release(v46);
  swift_beginAccess();
  if (*(*v45 + 16))
  {
    *a2 = *v45;
  }

  v47 = swift_allocObject();
  *(v47 + 16) = _swiftEmptyArrayStorage;
  v48 = (v47 + 16);
  v55 = sub_1000ABC9C;
  v56 = v47;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1000AC790;
  v54 = &unk_1000F6A00;
  v49 = _Block_copy(&aBlock);

  [a1 enumerateAttachmentsInOrderUsingBlock:v49];
  _Block_release(v49);
  swift_beginAccess();
  a2[1] = *v48;
}

uint64_t sub_1000AB744()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000AB7AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000B4B50();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isHashtagAttachment];
  if (result)
  {
    v13 = [a1 displayText];
    if (!v13)
    {
      sub_1000B5620();
      v13 = sub_1000B55F0();
    }

    v14 = [objc_opt_self() ic_hashtagCharacterString];
    sub_1000B5620();

    sub_1000B4B20();

    isa = sub_1000B4B40().super.isa;
    (*(v8 + 8))(v11, v7);
    v16 = [v13 ic_stringByTrimmingLeadingCharactersInSet:isa];

    v17 = sub_1000B5620();
    v19 = v18;

    swift_beginAccess();
    v20 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_100033EE0(0, *(v20 + 2) + 1, 1, v20);
      *(a5 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_100033EE0((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = v17;
    *(v24 + 5) = v19;
    *(a5 + 16) = v20;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000AB9F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ABA30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100030480(&qword_100108AA0, qword_1000CEE90);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AudioAttachmentMetadata(0);
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v25 - v18;
  sub_1000AA464(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100036320(v10, &qword_100108AA0, qword_1000CEE90);
  }

  sub_1000ABD34(v10, v19, type metadata accessor for AudioAttachmentMetadata);
  sub_10005F874(v19, v16);
  swift_beginAccess();
  v21 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100033FEC(0, v21[2] + 1, 1, v21);
    *(a5 + 16) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_100033FEC((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  sub_1000ABD34(v16, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, type metadata accessor for AudioAttachmentMetadata);
  *(a5 + 16) = v21;
  swift_endAccess();
  return sub_10005F8D8(v19);
}

void sub_1000ABCA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000ABD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000ABD9C(void *a1, void *a2, void *a3)
{
  v42 = a3;
  v5 = type metadata accessor for AudioAttachmentMetadata(0);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000B4EA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NoteMetadata(0);
  v14 = v13[8];
  v47 = a1;
  v15 = *(a1 + v14 + 8);
  v46 = v15 != 0;
  if (v15)
  {

    v16 = sub_1000B55F0();

    [a2 setTitle:v16];
  }

  if ((*(v47 + v13[9] + 8) & 1) == 0)
  {
    sub_1000B4E50();
    isa = sub_1000B4E30().super.isa;
    (*(v9 + 8))(v12, v8);
    [a2 setCreationDate:isa];

    v46 = 1;
  }

  if ((*(v47 + v13[10] + 8) & 1) == 0)
  {
    sub_1000B4E50();
    v18 = sub_1000B4E30().super.isa;
    (*(v9 + 8))(v12, v8);
    [a2 setModificationDate:v18];

    v46 = 1;
  }

  v19 = [a2 account];
  v50 = a2;
  v45 = v6;
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    v22 = *(*v47 + 16);
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = objc_opt_self();
    v24 = 0;
    v48 = -v22;
    v49 = v23;
    v25 = v21 + 40;
    v41 = v21 + 40;
    while (1)
    {
      v26 = v25 + 16 * v24++;
      while (1)
      {
        if ((v24 - 1) >= *(v21 + 16))
        {
          __break(1u);
        }

        v27 = v20;
        v28 = sub_1000B55F0();

        v29 = [v49 hashtagWithDisplayText:v28 account:v27 createIfNecessary:1];

        if (!v29)
        {
          goto LABEL_11;
        }

        if ([a2 convertTextInNoteBodyToHashtag:v29])
        {
          break;
        }

        v30 = [a2 addHashtagToNoteBodyIfMissing:v29];

        if (v30)
        {

          goto LABEL_18;
        }

LABEL_11:
        ++v24;
        v26 += 16;
        if (v48 + v24 == 1)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      v46 = 1;
      v25 = v41;
      if (!(v48 + v24))
      {
LABEL_19:

        break;
      }
    }
  }

  v31 = v47[1];
  v32 = *(v31 + 16);
  v33 = v44;
  if (v32)
  {
    v34 = *(v43 + 80);
    v35 = v31 + ((v34 + 32) & ~v34);
    v36 = *(v43 + 72);
    do
    {
      sub_10005F874(v35, v33);
      v37 = swift_allocObject();
      sub_1000ABD34(v33, v37 + ((v34 + 16) & ~v34), type metadata accessor for AudioAttachmentMetadata);
      aBlock[4] = sub_1000AC6EC;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000AC790;
      aBlock[3] = &unk_1000F6A50;
      v38 = _Block_copy(aBlock);

      [v50 enumerateAttachmentsInOrderUsingBlock:v38];
      _Block_release(v38);
      v35 += v36;
      --v32;
    }

    while (v32);
  }

  if (v46)
  {
    [v50 save];
    aBlock[0] = 0;
    if ([v42 save:aBlock])
    {
      v39 = aBlock[0];
    }

    else
    {
      v40 = aBlock[0];
      sub_1000B4C70();

      swift_willThrow();
    }
  }
}

void sub_1000AC334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v27 - v13;
  v15 = [a1 fileURL];
  if (v15)
  {
    v16 = v15;
    sub_1000B4D50();

    v17 = sub_1000B4DB0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  }

  else
  {
    v17 = sub_1000B4DB0();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_100050A78(v11, v14);
  sub_1000B4DB0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_100036320(v14, &qword_100106F88, &qword_1000CAE20);
    return;
  }

  v19 = sub_1000B4CE0();
  v21 = v20;
  (*(v18 + 8))(v14, v17);
  v22 = (a5 + *(type metadata accessor for AudioAttachmentMetadata(0) + 24));
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  if (v19 == v23 && v21 == v24)
  {

    goto LABEL_16;
  }

  v26 = sub_1000B5F20();

  if (v26)
  {
LABEL_16:
    sub_1000AA994(a1);
  }
}

uint64_t sub_1000AC5C0()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1000B52C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000AC6EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1000AC334(a1, a2, a3, a4, v10);
}

unint64_t sub_1000AC7A8()
{
  result = qword_100108AC0;
  if (!qword_100108AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108AC0);
  }

  return result;
}

void *sub_1000AC7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000B4F40();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000B4F60();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v30 - v17;
  ObjectType = swift_getObjectType();
  v20 = v34;
  v21 = (*(a2 + 24))(*(v4 + 8), *(v4 + 16), a3, ObjectType, a2);
  if (!v20)
  {
    v22 = v33;
    v34 = 0;
    v31 = type metadata accessor for ICFolderArchiveModel(0);
    sub_1000B1DD0(v4 + *(v31 + 44), v18);
    v23 = type metadata accessor for ICFolderArchiveModel.Query(0);
    if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
    {
      sub_100036320(v18, &qword_100108B50, &qword_1000CEF88);
      v24 = 0;
    }

    else
    {
      (*(v22 + 16))(v14, v18, v11);
      (*(v32 + 16))(v10, &v18[*(v23 + 20)], v7);
      v25 = objc_allocWithZone(sub_1000B5290());
      v24 = sub_1000B5270();
      sub_1000B1D70(v18, type metadata accessor for ICFolderArchiveModel.Query);
    }

    [v21 setSmartFolderQueryObjC:v24];

    if ([v21 isRenamable])
    {

      v26 = sub_1000B55F0();

      [v21 setTitle:v26];
    }

    if ([v21 supportsCustomNoteSortType])
    {
      v27 = *(v4 + *(v31 + 48));
      if ((v27 & 0xFF00) == 0x200)
      {
        v28 = 0;
      }

      else
      {
        v28 = [objc_opt_self() folderNoteSortTypeWithOrder:qword_1000CF858[v27] direction:(v27 >> 8) & 1];
      }

      [v21 setCustomNoteSortType:v28];
    }
  }

  return v21;
}

id sub_1000ACBE4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ICFolderArchiveModel(0);
  v5 = *(v2 + v4[13]);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = v5 + 40;
  v23 = v6 - 1;
  v24 = v5 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_10006320C(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v6 == v10)
      {
        goto LABEL_14;
      }
    }

    sub_1000B5780();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000B57C0();
    }

    v7 = v10 + 1;
    v4 = sub_1000B57F0();
    v8 = v5 + 40;
  }

  while (v23 != v10);
LABEL_14:
  v15 = [a1 subFolderIdentifiersOrderedSet];
  [v15 removeAllObjects];

  v4 = [a1 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_30;
  }

  v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v4;
    v17 = v4;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v4 = sub_1000B5C20();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v4 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v19 = v4;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v17 addObject:v4];

      ++v18;
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v22 = v4;
    v16 = sub_1000B5CF0();
    v4 = v22;
  }

LABEL_25:

  [a1 setSubFolderOrderMergeableDataDirty:1];
  [a1 saveSubFolderMergeableDataIfNeeded];
  return [a1 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_1000ACEB4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100106FF8, &qword_1000CAE70);
  __chkstk_darwin(v5 - 8, v6);
  v41 = v34 - v7;
  v8 = sub_100030480(&qword_100107000, &qword_1000CAE78);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v34 - v10;
  v12 = sub_1000B5230();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v38 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s8ActivityVMa(0);
  v16 = *(v37 - 8);
  __chkstk_darwin(v37, v17);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *(type metadata accessor for ICFolderArchiveModel(0) + 56));
  if (!v20)
  {
    return 0;
  }

  v34[1] = a1;
  v34[2] = v2;
  v48 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    v39 = (v13 + 48);
    v40 = v23;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v42 = v19;
    while (1)
    {
      sub_1000B1D08(v22, v19, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v28 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v43[0] = IsAlexandriaDemoModeEnabled;
      v43[1] = v28;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v47 = 2;
      sub_100052240(v43, v11);
      if ((*v39)(v11, 1, v12) == 1)
      {
        break;
      }

      v29 = v38;
      (*v36)(v38, v11, v12);
      sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
      v30 = v41;
      sub_100052A3C(v43, v41);
      v31 = sub_1000B59F0();
      v32 = v30;
      v19 = v42;
      sub_100036320(v32, &qword_100106FF8, &qword_1000CAE70);
      (*v35)(v29, v12);
      sub_1000B1D70(v19, _s8ActivityVMa);
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_8:
      v22 += v40;
      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    sub_100036320(v11, &qword_100107000, &qword_1000CAE78);
    sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
    v24 = v11;
    v25 = v41;
    sub_100052A3C(v43, v41);
    v19 = v42;
    sub_1000B5A00();
    v26 = v25;
    v11 = v24;
    sub_100036320(v26, &qword_100106FF8, &qword_1000CAE70);
    sub_1000B1D70(v19, _s8ActivityVMa);
LABEL_5:
    sub_1000B5780();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000B57C0();
    }

    sub_1000B57F0();
    goto LABEL_8;
  }

LABEL_12:
  sub_1000B5A20();
  return sub_1000B5A10();
}

void sub_1000AD360(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v5 = _s8ActivityVMa(0);
  v85 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v79 - v11;
  *a3 = 2;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 2;
  *(a3 + 80) = 3;
  v13 = type metadata accessor for ICFolderArchiveModel(0);
  v14 = *(v13 + 44);
  v15 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v80 = v14;
  v17(a3 + v14, 1, 1, v15);
  v82 = v13;
  v83 = a1;
  v19 = *(v13 + 56);
  v84 = a3;
  v79 = v19;
  *(a3 + v19) = 0;
  v20 = [a1 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000B5620();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = v83;
  v26 = v84;
  v84[1] = v22;
  v26[2] = v24;
  v27 = [v25 title];
  v28 = sub_1000B5620();
  v30 = v29;

  v26[8] = v28;
  v26[9] = v30;
  v31 = [v25 smartFolderQueryObjC];
  if (v31)
  {
    v32 = v31;
    sub_1000B5280();
    sub_1000B5260();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v17(v12, v33, 1, v15);
  sub_1000B1C98(v12, v84 + v80);
  v34 = v83;
  v35 = [v83 customNoteSortType];
  if (!v35)
  {
    goto LABEL_11;
  }

  v36 = v35;
  if ([v35 isDefault] || (v37 = sub_1000B0AF0(objc_msgSend(v36, "order")), v37 == 3))
  {

LABEL_11:
    v38 = 512;
    goto LABEL_12;
  }

  v53 = v37;
  v54 = sub_1000B0C94([v36 direction]);

  if (v54 == 2)
  {
    goto LABEL_11;
  }

  v38 = v53 | ((v54 & 1) << 8);
LABEL_12:
  *(v84 + *(v82 + 48)) = v38;
  v39 = [v34 subFolderIdentifiersOrderedSet];
  v40 = [v39 allObjects];

  sub_1000362AC(0, &qword_100106FE8, NSString_ptr);
  v41 = sub_1000B57A0();

  if (v41 >> 62)
  {
    v42 = sub_1000B5CF0();
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_26:

    v44 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_26;
  }

LABEL_14:
  v86 = _swiftEmptyArrayStorage;
  sub_1000432C4(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v43 = 0;
  v44 = v86;
  do
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v45 = sub_1000B5C20();
    }

    else
    {
      v45 = *(v41 + 8 * v43 + 32);
    }

    v46 = v45;
    v47 = sub_1000B5620();
    v49 = v48;

    v86 = v44;
    v51 = v44[2];
    v50 = v44[3];
    if (v51 >= v50 >> 1)
    {
      sub_1000432C4((v50 > 1), v51 + 1, 1);
      v44 = v86;
    }

    ++v43;
    v44[2] = v51 + 1;
    v52 = &v44[2 * v51];
    v52[4] = v47;
    v52[5] = v49;
  }

  while (v42 != v43);

  v34 = v83;
LABEL_27:
  v39 = v81;
  *(v84 + *(v82 + 52)) = v44;
  if ((v39[56] & 1) == 0)
  {
    sub_10004CE38(v39);
    if (v39[59])
    {
      goto LABEL_42;
    }

LABEL_54:

    return;
  }

  v55 = v34;
  v18 = sub_1000B5A10();

  if (!(v18 >> 62))
  {
    v56 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v56 = sub_1000B5CF0();
  if (!v56)
  {
LABEL_53:

    sub_10004CE38(v39);
    *(v84 + v79) = _swiftEmptyArrayStorage;
    if (v39[59])
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_30:
  v86 = _swiftEmptyArrayStorage;
  sub_100043364(0, v56 & ~(v56 >> 63), 0);
  if (v56 < 0)
  {
    __break(1u);
    return;
  }

  v57 = 0;
  v58 = v86;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v59 = sub_1000B5C20();
    }

    else
    {
      v59 = *(v18 + 8 * v57 + 32);
    }

    sub_100050FE4(v59, v8);
    v86 = v58;
    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      sub_100043364((v60 > 1), v61 + 1, 1);
      v58 = v86;
    }

    ++v57;
    v58[2] = v61 + 1;
    sub_10004D348(v8, v58 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v61);
  }

  while (v56 != v57);

  v62 = v81;
  sub_10004CE38(v81);
  *(v84 + v79) = v58;
  if ((*(v62 + 59) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  v63 = [v34 parent];
  if (v63 && (v64 = v63, v65 = [v63 identifier], v64, v65) || (v66 = objc_msgSend(v34, "account"), v65 = objc_msgSend(v66, "identifier"), v66, v65))
  {
    v67 = sub_1000B5620();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v70 = v84;
  v84[3] = v67;
  v70[4] = v69;
  v71 = [v34 parent];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 title];
  }

  else
  {
    v72 = [v34 account];
    v73 = [v72 localizedName];
  }

  v74 = v73;

  v75 = sub_1000B5620();
  v77 = v76;

  v78 = v84;
  v84[5] = v75;
  v78[6] = v77;
  *(v78 + 56) = [v34 markedForDeletion];
  LOBYTE(v74) = sub_1000B0D9C([v34 folderType]);

  *(v78 + 80) = v74;
}

uint64_t sub_1000ADADC()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100108AA8);
  sub_100036380(v0, qword_100108AA8);
  return sub_1000B5510();
}

unint64_t sub_1000ADB28(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644965707974;
    v7 = 0xD000000000000010;
    v8 = 0x6954746E65726170;
    if (a1 != 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74726F5365746F6ELL;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6974697669746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C746974;
    v4 = 1701869940;
    if (a1 != 6)
    {
      v4 = 0x7972657571;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000ADCA8(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108D70, &qword_1000CF728);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12 - v8;
  sub_1000458B4(a1, a1[3]);
  sub_1000B2A88();
  sub_1000B6020();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_10004E214();
  sub_1000B5EB0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000B5E70();
    LOBYTE(v12) = 2;
    sub_1000B5E20();
    LOBYTE(v12) = 3;
    sub_1000B5E20();
    LOBYTE(v12) = 4;
    sub_1000B5E30();
    LOBYTE(v12) = 5;
    sub_1000B5E20();
    LOBYTE(v12) = v3[80];
    v13 = 6;
    sub_1000B2ADC();
    sub_1000B5E60();
    v10 = type metadata accessor for ICFolderArchiveModel(0);
    LOBYTE(v12) = 7;
    type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_1000B0AA8(&qword_100108D88, type metadata accessor for ICFolderArchiveModel.Query, &unk_1000CF030);
    sub_1000B5E60();
    LOWORD(v12) = *&v3[v10[12]];
    v13 = 8;
    sub_1000B2B30();
    sub_1000B5E60();
    v12 = *&v3[v10[13]];
    v13 = 9;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    sub_100055CC0(&qword_1001075D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
    v12 = *&v3[v10[14]];
    v13 = 10;
    sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
    sub_1000B2B84(&qword_100107268, &qword_100107270, &unk_1000CB59C, &protocol conformance descriptor for <A> [A]);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000AE0D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v32 - v6;
  v8 = sub_100030480(&qword_100108D98, &qword_1000CF730);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8, v9);
  v11 = v32 - v10;
  v12 = type metadata accessor for ICFolderArchiveModel(0);
  v14 = __chkstk_darwin(v12, v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 44);
  v18 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v19 = *(*(v18 - 8) + 56);
  v37 = v17;
  v38 = v16;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v36 = a1;
  sub_1000458B4(a1, v20);
  sub_1000B2A88();
  sub_1000B6010();
  if (v2)
  {
    v21 = v37;
    v23 = v38;
    sub_100035DA8(v36);
    swift_bridgeObjectRelease_n();

    sub_100036320(&v23[v21], &qword_100108B50, &qword_1000CEF88);
  }

  else
  {
    v32[2] = v18;
    v40 = 0;
    sub_1000316AC();
    sub_1000B5E00();
    v22 = v37;
    v25 = v38;
    *v38 = v39;
    LOBYTE(v39) = 1;
    *(v25 + 1) = sub_1000B5DC0();
    *(v25 + 2) = v26;
    LOBYTE(v39) = 2;
    *(v25 + 3) = sub_1000B5D70();
    *(v25 + 4) = v27;
    LOBYTE(v39) = 3;
    *(v25 + 5) = sub_1000B5D70();
    *(v25 + 6) = v28;
    v32[1] = v28;
    LOBYTE(v39) = 4;
    v25[56] = sub_1000B5D80();
    LOBYTE(v39) = 5;
    *(v25 + 8) = sub_1000B5D70();
    *(v25 + 9) = v29;
    v32[0] = v29;
    v40 = 6;
    sub_1000B2658();
    sub_1000B5DB0();
    v25[80] = v39;
    LOBYTE(v39) = 7;
    sub_1000B0AA8(&qword_100108AC8, type metadata accessor for ICFolderArchiveModel.Query, &unk_1000CEF48);
    sub_1000B5DB0();
    sub_1000B1C98(v7, &v25[v22]);
    v40 = 8;
    sub_1000AC7A8();
    sub_1000B5DB0();
    *&v25[v12[12]] = v39;
    sub_100030480(&unk_100107548, &qword_1000CB760);
    v40 = 9;
    sub_100055CC0(&qword_1001075B0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000B5DB0();
    *&v38[v12[13]] = v39;
    sub_100030480(&qword_1001070D0, &qword_1000CAEB0);
    v40 = 10;
    sub_1000B2B84(&qword_1001072B0, &qword_1001072B8, &unk_1000CB5C4, &protocol conformance descriptor for <A> [A]);
    sub_1000B5DB0();
    v30 = v12[14];
    (*(v34 + 8))(v11, v35);
    v31 = v38;
    *&v38[v30] = v39;
    sub_1000B1D08(v31, v33, type metadata accessor for ICFolderArchiveModel);
    sub_100035DA8(v36);
    return sub_1000B1D70(v31, type metadata accessor for ICFolderArchiveModel);
  }
}

uint64_t sub_1000AE7F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B0F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000AE82C(uint64_t a1)
{
  v2 = sub_1000B2A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AE868(uint64_t a1)
{
  v2 = sub_1000B2A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AE8D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4853415254;
  if (v2 != 1)
  {
    v3 = 0x5452414D53;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x4853415254;
  if (*a2 != 1)
  {
    v6 = 0x5452414D53;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4C414D524F4ELL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();
  }

  return v9 & 1;
}

Swift::Int sub_1000AE9C4()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000AEA5C(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_1000AEAE0(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_1000AEB74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B12D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000AEBA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4853415254;
  if (v2 != 1)
  {
    v4 = 0x5452414D53;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4C414D524F4ELL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1000AED10(void *a1)
{
  v3 = sub_100030480(&qword_100108DB0, &qword_1000CF738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000B0A54();
  sub_1000B6020();
  v9[15] = 0;
  sub_1000B4F60();
  sub_1000B0AA8(&qword_100108DB8, &type metadata accessor for ICQueryEntity, &protocol conformance descriptor for ICQueryEntity);
  sub_1000B5EB0();
  if (!v1)
  {
    type metadata accessor for ICFolderArchiveModel.Query(0);
    v9[14] = 1;
    sub_1000B4F40();
    sub_1000B0AA8(&qword_100108DC0, &type metadata accessor for ICQueryType, &protocol conformance descriptor for ICQueryType);
    sub_1000B5EB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000AEF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1000B4F40();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000B4F60();
  v27 = *(v31 - 8);
  __chkstk_darwin(v31, v7);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100030480(&qword_100108AD0, &qword_1000CEF70);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ICFolderArchiveModel.Query(0);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000458B4(a1, a1[3]);
  sub_1000B0A54();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  v24 = v12;
  v16 = v15;
  v18 = v27;
  v17 = v28;
  v34 = 0;
  sub_1000B0AA8(&qword_100108AE0, &type metadata accessor for ICQueryEntity, &protocol conformance descriptor for ICQueryEntity);
  v19 = v29;
  sub_1000B5E00();
  v20 = *(v18 + 32);
  v23 = v16;
  v20(v16, v19, v31);
  v33 = 1;
  sub_1000B0AA8(&qword_100108AE8, &type metadata accessor for ICQueryType, &protocol conformance descriptor for ICQueryType);
  sub_1000B5E00();
  (*(v30 + 8))(v11, v32);
  v21 = v23;
  (*(v25 + 32))(v23 + *(v24 + 20), v6, v17);
  sub_1000B1D08(v21, v26, type metadata accessor for ICFolderArchiveModel.Query);
  sub_100035DA8(a1);
  return sub_1000B1D70(v21, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1000AF34C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1000AF37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_1000AF454(uint64_t a1)
{
  v2 = sub_1000B0A54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AF490(uint64_t a1)
{
  v2 = sub_1000B0A54();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000AF4FC()
{
  v0 = sub_1000B4F40();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0, v3);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000B4F60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v10;
  v11 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v23[3] = v11;
  sub_10003640C(v11, qword_100112C68);
  v23[2] = sub_100036380(v11, qword_100112C68);
  (*(v7 + 104))(v10, enum case for ICQueryEntity.note(_:), v6);
  v12 = swift_allocObject();
  sub_100030480(&qword_100108B28, &qword_1000CEF78);
  v13 = *(v1 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000CB4E0;
  v16 = (v15 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *v16 = v17;
  v18 = enum case for ICQueryType.deleted(_:);
  v19 = *(v2 + 104);
  v19(v16, enum case for ICQueryType.deleted(_:), v0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v16 + v13) = v20;
  v19((v16 + v13), v18, v0);
  *(v12 + 16) = v15;
  *v5 = v12;
  v19(v5, enum case for ICQueryType.or(_:), v0);
  v21 = objc_allocWithZone(sub_1000B5290());
  v22 = sub_1000B5270();
  sub_1000B5280();
  sub_1000B5260();
}

uint64_t sub_1000AF7DC@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1000B5650();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B5640();
  v9 = sub_1000B5630();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    v12 = type metadata accessor for ICFolderArchiveModel.Query(0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    sub_1000B4AC0();
    swift_allocObject();
    sub_1000B4AB0();
    sub_1000B5290();
    sub_1000B0AA8(&qword_100108B20, &type metadata accessor for ICQuery, &protocol conformance descriptor for ICQuery);
    sub_1000B4AA0();

    v13 = v16[1];
    sub_1000B5280();
    v14 = type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_1000B5260();

    sub_10004D334(v9, v11);
    return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }
}

uint64_t sub_1000AFA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100106AA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_100036380(a1, qword_100112C68);
  return sub_1000B1D08(v3, a2, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1000AFAD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4445494649444F4DLL;
  v4 = 0xEB0000000054415FLL;
  if (v2 != 1)
  {
    v3 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x5F44455441455243;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000005441;
  }

  v7 = 0x4445494649444F4DLL;
  v8 = 0xEB0000000054415FLL;
  if (*a2 != 1)
  {
    v7 = 0x454C544954;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x5F44455441455243;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000005441;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000B5F20();
  }

  return v11 & 1;
}

Swift::Int sub_1000AFBE4()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000AFC90(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_1000AFD28(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

unint64_t sub_1000AFDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1560(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000AFE00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000005441;
  v4 = 0xEB0000000054415FLL;
  v5 = 0x4445494649444F4DLL;
  if (v2 != 1)
  {
    v5 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5F44455441455243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000AFF80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49444E4543534544;
  }

  else
  {
    v3 = 0x4E49444E45435341;
  }

  if (v2)
  {
    v4 = 0xE900000000000047;
  }

  else
  {
    v4 = 0xEA0000000000474ELL;
  }

  if (*a2)
  {
    v5 = 0x49444E4543534544;
  }

  else
  {
    v5 = 0x4E49444E45435341;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000474ELL;
  }

  else
  {
    v6 = 0xE900000000000047;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000B5F20();
  }

  return v8 & 1;
}

Swift::Int sub_1000B0030()
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000B00BC(uint64_t a1)
{
  sub_1000B56A0();
}

Swift::Int sub_1000B0134(uint64_t a1)
{
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000B01BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F3AA8;
  v8._object = v3;
  v5 = sub_1000B5D60(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000B021C(uint64_t *a1@<X8>)
{
  v2 = 0x4E49444E45435341;
  if (*v1)
  {
    v2 = 0x49444E4543534544;
  }

  v3 = 0xE900000000000047;
  if (*v1)
  {
    v3 = 0xEA0000000000474ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000B0324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B1470();
  v5 = sub_1000B14C4();

  return static ArgumentDecodable<>.defaultArgument.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1000B0394(void *a1, __int16 a2)
{
  v5 = sub_100030480(&qword_100108DC8, &qword_1000CF740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_1000458B4(a1, a1[3]);
  sub_1000B178C();
  sub_1000B6020();
  v11[15] = a2;
  v11[14] = 0;
  sub_1000B2CC8();
  sub_1000B5EB0();
  if (!v2)
  {
    v11[13] = HIBYTE(a2) & 1;
    v11[12] = 1;
    sub_1000B2D1C();
    sub_1000B5EB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B0550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B4FF0();
}

uint64_t sub_1000B0610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a5();
  a6();

  return sub_1000B5010();
}

uint64_t sub_1000B069C()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 0x726564726FLL;
  }
}

uint64_t sub_1000B06D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_1000B07B8(uint64_t a1)
{
  v2 = sub_1000B178C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B07F4(uint64_t a1)
{
  v2 = sub_1000B178C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0830@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000B15AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1000B0864(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000B0394(a1, v2 | *v1);
}

void sub_1000B0894()
{
  v0 = [objc_allocWithZone(ICFolderCustomNoteSortType) init];
  if ([v0 isDefault] || (v1 = sub_1000B0AF0(objc_msgSend(v0, "order")), v1 == 3))
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v3 = sub_1000B0C94([v0 direction]);

    if (v3 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  byte_100112C80 = v2;
  byte_100112C81 = v3 & 1;
}

uint64_t sub_1000B0954@<X0>(_BYTE *a1@<X8>)
{
  if (qword_100106AA8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_100112C81;
  *a1 = byte_100112C80;
  a1[1] = v1;
  return result;
}

uint64_t sub_1000B09C4@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B1888(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_1000B0A54()
{
  result = qword_100108AD8;
  if (!qword_100108AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108AD8);
  }

  return result;
}

uint64_t sub_1000B0AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B0AF0(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      if (qword_100106A98 != -1)
      {
        swift_once();
      }

      v6 = sub_1000B5530();
      sub_100036380(v6, qword_100108AA8);
      v2 = sub_1000B5520();
      v3 = sub_1000B5920();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_17;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot serialize default note sort order — returning nil";
      goto LABEL_16;
    }

    if (result == 1)
    {
      return result;
    }

LABEL_8:
    if (qword_100106A98 != -1)
    {
      swift_once();
    }

    v1 = sub_1000B5530();
    sub_100036380(v1, qword_100108AA8);
    v2 = sub_1000B5520();
    v3 = sub_1000B5930();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unknown note sort order — returning nil";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_17:

    return 3;
  }

  if (result != 2)
  {
    if (result == 3)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1000B0C94(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (qword_100106A98 != -1)
  {
    swift_once();
  }

  v2 = sub_1000B5530();
  sub_100036380(v2, qword_100108AA8);
  v3 = sub_1000B5520();
  v4 = sub_1000B5930();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown note sort direction — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_1000B0D9C(unsigned __int16 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_100106A98 != -1)
        {
          swift_once();
        }

        v2 = sub_1000B5530();
        sub_100036380(v2, qword_100108AA8);
        v3 = sub_1000B5520();
        v4 = sub_1000B5930();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_16;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Deprecated folder type — returning nil";
        goto LABEL_15;
      }

LABEL_11:
      if (qword_100106A98 != -1)
      {
        swift_once();
      }

      v7 = sub_1000B5530();
      sub_100036380(v7, qword_100108AA8);
      v3 = sub_1000B5520();
      v4 = sub_1000B5930();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_16;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unknown folder type — returning nil";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_16:

      return 3;
    }

    return 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1;
      }

      goto LABEL_11;
    }

    return 0;
  }
}

uint64_t sub_1000B0F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000C7000 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C7020 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74726F5365746F6ELL && a2 == 0xEB00000000676E69 || (sub_1000B5F20() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7C70 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1000B12D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3988;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B1320()
{
  result = qword_100108AF0;
  if (!qword_100108AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108AF0);
  }

  return result;
}

unint64_t sub_1000B1374()
{
  result = qword_100108AF8;
  if (!qword_100108AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108AF8);
  }

  return result;
}

unint64_t sub_1000B13C8()
{
  result = qword_100108B00;
  if (!qword_100108B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B00);
  }

  return result;
}

unint64_t sub_1000B141C()
{
  result = qword_100108B08;
  if (!qword_100108B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B08);
  }

  return result;
}

unint64_t sub_1000B1470()
{
  result = qword_100108B10;
  if (!qword_100108B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B10);
  }

  return result;
}

unint64_t sub_1000B14C4()
{
  result = qword_100108B18;
  if (!qword_100108B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B18);
  }

  return result;
}

uint64_t sub_1000B1518()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B1560(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F3A18;
  v6._object = a2;
  v4 = sub_1000B5D60(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000B15AC(void *a1)
{
  v3 = sub_100030480(&qword_100108B30, &qword_1000CEF80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12[-v6];
  sub_1000458B4(a1, a1[3]);
  sub_1000B178C();
  sub_1000B6010();
  if (v1)
  {
    return sub_100035DA8(a1);
  }

  v12[14] = 0;
  sub_1000B17E0();
  sub_1000B5E00();
  v8 = v12[15];
  v12[12] = 1;
  sub_1000B1834();
  sub_1000B5E00();
  (*(v4 + 8))(v7, v3);
  v10 = v12[13];
  sub_100035DA8(a1);
  if (v10)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return v11 | v8;
}

unint64_t sub_1000B178C()
{
  result = qword_100108B38;
  if (!qword_100108B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B38);
  }

  return result;
}

unint64_t sub_1000B17E0()
{
  result = qword_100108B40;
  if (!qword_100108B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B40);
  }

  return result;
}

unint64_t sub_1000B1834()
{
  result = qword_100108B48;
  if (!qword_100108B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108B48);
  }

  return result;
}

uint64_t sub_1000B1888(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10003042C();
  v2 = sub_1000B5AD0();

  if (*(v2 + 16) == 2 && (sub_1000B1320(), sub_1000B1374(), sub_1000B13C8(), , result = sub_1000B4FF0(), v4 != 3))
  {
    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      sub_1000B141C();
      sub_1000B1470();
      sub_1000B14C4();
      sub_1000B4FF0();
      if (v4 == 2)
      {
        return 512;
      }

      else
      {
        return v4 | ((v4 & 1) << 8);
      }
    }
  }

  else
  {

    return 512;
  }

  return result;
}

uint64_t sub_1000B19F8(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v2 = sub_1000B4F50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  v12 = enum case for AnsiStylings.cyan(_:);
  v7 = *(v3 + 104);
  v7(v6);
  sub_1000B5EF0();
  v8 = *(v3 + 8);
  v8(v6, v2);
  sub_1000B1320();
  sub_1000B1374();
  sub_1000B13C8();
  v15._countAndFlagsBits = sub_1000B5010();
  sub_1000B56E0(v15);

  v9 = enum case for AnsiStylings.reset(_:);
  (v7)(v6, enum case for AnsiStylings.reset(_:), v2);
  sub_1000B5EF0();
  v8(v6, v2);
  v16._countAndFlagsBits = 44;
  v16._object = 0xE100000000000000;
  sub_1000B56E0(v16);
  (v7)(v6, v12, v2);
  sub_1000B5EF0();
  v8(v6, v2);
  sub_1000B141C();
  sub_1000B1470();
  sub_1000B14C4();
  v17._countAndFlagsBits = sub_1000B5010();
  sub_1000B56E0(v17);

  (v7)(v6, v9, v2);
  sub_1000B5EF0();
  v8(v6, v2);
  return v13;
}

uint64_t sub_1000B1C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B1D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B1DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B1F5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100030480(&qword_100108B50, &qword_1000CEF88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B200C(uint64_t a1)
{
  sub_10004D9AC(319, &qword_100106CA0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10004D9AC(319, &qword_100107080, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10004D9AC(319, &qword_100108BC0, &type metadata for ICFolderArchiveModel.Types);
      if (v3 <= 0x3F)
      {
        sub_1000B218C(319);
        if (v4 <= 0x3F)
        {
          sub_10004D9AC(319, &unk_100108BD0, &type metadata for ICFolderArchiveModel.Sorting);
          if (v5 <= 0x3F)
          {
            sub_10004D9F8(319, &qword_100107540, &unk_100107548, &qword_1000CB760);
            if (v6 <= 0x3F)
            {
              sub_10004D9F8(319, &qword_1001070C8, &qword_1001070D0, &qword_1000CAEB0);
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

void sub_1000B218C(uint64_t a1)
{
  if (!qword_100108BC8)
  {
    type metadata accessor for ICFolderArchiveModel.Query(255);
    v1 = sub_1000B5AC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100108BC8);
    }
  }
}

uint64_t sub_1000B2218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B4F60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000B4F40();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B231C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000B4F60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000B4F40();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000B2418(uint64_t a1)
{
  result = sub_1000B4F60();
  if (v2 <= 0x3F)
  {
    result = sub_1000B4F40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.Sorting(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.Sorting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B2600()
{
  result = qword_100108CB8;
  if (!qword_100108CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108CB8);
  }

  return result;
}

unint64_t sub_1000B2658()
{
  result = qword_100108CC0;
  if (!qword_100108CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108CC0);
  }

  return result;
}

unint64_t sub_1000B26E0()
{
  result = qword_100108CD8;
  if (!qword_100108CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108CD8);
  }

  return result;
}

uint64_t sub_1000B2734(uint64_t a1)
{
  *(a1 + 8) = sub_1000B0AA8(&qword_100106F40, type metadata accessor for ICFolderArchiveModel, &unk_1000CF474);
  result = sub_1000B0AA8(&qword_100107340, type metadata accessor for ICFolderArchiveModel, &unk_1000CF49C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B27BC()
{
  result = qword_100108D18;
  if (!qword_100108D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D18);
  }

  return result;
}

unint64_t sub_1000B2814()
{
  result = qword_100108D20;
  if (!qword_100108D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D20);
  }

  return result;
}

unint64_t sub_1000B286C()
{
  result = qword_100108D28;
  if (!qword_100108D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D28);
  }

  return result;
}

unint64_t sub_1000B28C4()
{
  result = qword_100108D30;
  if (!qword_100108D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D30);
  }

  return result;
}

unint64_t sub_1000B291C()
{
  result = qword_100108D38;
  if (!qword_100108D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D38);
  }

  return result;
}

unint64_t sub_1000B29DC()
{
  result = qword_100108D60;
  if (!qword_100108D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D60);
  }

  return result;
}

unint64_t sub_1000B2A34()
{
  result = qword_100108D68;
  if (!qword_100108D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D68);
  }

  return result;
}

unint64_t sub_1000B2A88()
{
  result = qword_100108D78;
  if (!qword_100108D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D78);
  }

  return result;
}

unint64_t sub_1000B2ADC()
{
  result = qword_100108D80;
  if (!qword_100108D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D80);
  }

  return result;
}

unint64_t sub_1000B2B30()
{
  result = qword_100108D90;
  if (!qword_100108D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108D90);
  }

  return result;
}

uint64_t sub_1000B2B84(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001070D0, &qword_1000CAEB0);
    sub_1000B0AA8(a2, _s8ActivityVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B2C20()
{
  result = qword_100108DA0;
  if (!qword_100108DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DA0);
  }

  return result;
}

unint64_t sub_1000B2C74()
{
  result = qword_100108DA8;
  if (!qword_100108DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DA8);
  }

  return result;
}

unint64_t sub_1000B2CC8()
{
  result = qword_100108DD0;
  if (!qword_100108DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DD0);
  }

  return result;
}

unint64_t sub_1000B2D1C()
{
  result = qword_100108DD8;
  if (!qword_100108DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B2EC4()
{
  result = qword_100108DE0;
  if (!qword_100108DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DE0);
  }

  return result;
}

unint64_t sub_1000B2F1C()
{
  result = qword_100108DE8;
  if (!qword_100108DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DE8);
  }

  return result;
}

unint64_t sub_1000B2F74()
{
  result = qword_100108DF0;
  if (!qword_100108DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108DF0);
  }

  return result;
}

void sub_1000B3058(char a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Background sync task scheduled {success: %@, error: %@}", &v4, 0x16u);
}

void sub_1000B30F8(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading item: %@", &v4, 0xCu);
}

void sub_1000B3190(void *a1, NSObject *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempting to move notes into a folder that doesn't allow moving contents in or out: %@", &v4, 0xCu);
}

void sub_1000B3228(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 account];
  v7 = [v6 identifier];
  v8 = [a2 shortLoggingDescription];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Moving note from unowned, shared folder to folder %@ in account %@ for note %@", &v9, 0x20u);
}

void sub_1000B3354(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Extracting media file: Error loading file representation for content type %@ - error: %@", &v4, 0x16u);
}

void sub_1000B33E0(uint64_t a1, NSObject *a2)
{
  v4 = [UTTypeFileURL identifier];
  v5 = *(a1 + 40);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Extracting URL: Error loading item for type identifier %@ - error: %@", &v6, 0x16u);
}

void sub_1000B34A0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading item: %@", &v3, 0xCu);
}

void sub_1000B351C(id *a1, NSObject *a2)
{
  v3 = [*a1 registeredTypeIdentifiers];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: could not find extension in %@", &v4, 0xCu);
}

void sub_1000B35FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot save temporary file to disk: %@", &v2, 0xCu);
}

void sub_1000B3674(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid account type for account: %@", &v2, 0xCu);
}

void sub_1000B36EC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 localizedDescription];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error %@ at URL (getting type identifier) during import notes process: %@", &v6, 0x16u);
}

void sub_1000B3824(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_10001040C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000B38F8(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_10001040C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000B39A0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10001041C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100010430(&_mh_execute_header, v5, v6, "Error copying file to temporary directory: %@");
}

void sub_1000B39FC(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10001041C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100010430(&_mh_execute_header, v5, v6, "Error removing file from temporary directory: %@");
}

void sub_1000B3A9C(void *a1, NSObject *a2)
{
  v3 = [a1 representedItem];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error selecting Create New Note - unknown folder %@", &v4, 0xCu);
}

void sub_1000B3C20(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't build a text attachment.", buf, 2u);
}

void sub_1000B3CA4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 identifier];
  sub_10001B1A0();
  v9 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Undoably setting folder %@ to note %@.", v8, 0x16u);
}

void sub_1000B3D5C(void *a1)
{
  v2 = [a1 account];
  v3 = [v2 trashFolder];
  v4 = [v3 identifier];
  v5 = [a1 account];
  v6 = [v5 identifier];
  v7 = [a1 shortLoggingDescription];
  sub_10001B1A0();
  sub_10001B1B4(&_mh_execute_header, v8, v9, "Moving shared note as a participant to recently deleted folder %@ in account %@ for note %@", v10, v11, v12, v13);
}

void sub_1000B3E60(void *a1)
{
  v2 = [a1 shortLoggingDescription];
  v3 = [a1 account];
  v4 = [v3 trashFolder];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  *v14 = 138412802;
  *&v14[4] = v2;
  *&v14[12] = 2112;
  *&v14[14] = v5;
  *&v14[22] = 2112;
  sub_10001B1B4(&_mh_execute_header, v8, v9, "Undoably moving note %@ to the recently deleted folder %@ in account %@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16], v7);
}

void sub_1000B3F70(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10001FC30();
  sub_10001FC58();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1000B4034(void *a1)
{
  v1 = [a1 identifier];
  sub_10001FC30();
  sub_10001FC58();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1000B41E0(void *a1)
{
  v1 = [a1 objectID];
  sub_10001FC30();
  sub_10001FC58();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1000B4270(void *a1)
{
  v1 = [a1 objectID];
  sub_10001FC30();
  sub_10001FC58();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1000B4410()
{
  sub_10002BA34();
  v0 = [UTTypeURL identifier];
  sub_10002B9DC();
  sub_10002B9F4(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6);
}

void sub_1000B44A8()
{
  sub_10002BA34();
  v0 = [UTTypeRTF identifier];
  sub_10002B9DC();
  sub_10002B9F4(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6);
}

void sub_1000B4540()
{
  sub_10002BA34();
  v0 = [UTTypeFlatRTFD identifier];
  sub_10002B9DC();
  sub_10002B9F4(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6);
}

void sub_1000B45D8()
{
  sub_10002BA34();
  v0 = [UTTypePlainText identifier];
  sub_10002B9DC();
  sub_10002B9F4(&_mh_execute_header, v1, v2, "Can't load item for type identifier %@: %@", v3, v4, v5, v6);
}

void sub_1000B4670()
{
  sub_10002BA14();
  sub_10002BA28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B46EC()
{
  sub_10001FC30();
  sub_10002BA28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B475C()
{
  sub_10002BA14();
  sub_10002BA28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000B47D8()
{
  sub_10001FC30();
  sub_10002BA28();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B485C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10001FC30();
  sub_10002B9F4(&_mh_execute_header, v2, v3, "Error: %@ while getting contents of URL: %@", v4, v5, v6, v7);
}

void sub_1000B49E4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10001FC30();
  sub_10002B9F4(&_mh_execute_header, v2, v3, "Error %@ at URL (getting type identifier) during import notes process: %@", v4, v5, v6, v7);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}