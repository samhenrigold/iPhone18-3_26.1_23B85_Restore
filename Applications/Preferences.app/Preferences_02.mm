uint64_t sub_100038A3C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_10002A748(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100038A9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038B0C()
{
  v1 = *(type metadata accessor for PrimarySettingsListFamilyLink(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FamilyRowStatus();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PrimarySettingsListFamilyLinkModel(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100038BFC()
{
  sub_100045DB4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100038C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100038CB4()
{
  result = qword_10015BAA0;
  if (!qword_10015BAA0)
  {
    sub_100052374(&qword_10015BAA8, &qword_1001115F0);
    sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8, &unk_1001147D8);
    sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600, &unk_1001147D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAA0);
  }

  return result;
}

unint64_t sub_100038D94()
{
  result = qword_10015BAD0;
  if (!qword_10015BAD0)
  {
    sub_100052374(&qword_10015BAD8, &qword_100111608);
    sub_100038E4C();
    sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610, &unk_1001147D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAD0);
  }

  return result;
}

unint64_t sub_100038E4C()
{
  result = qword_10015BAE0;
  if (!qword_10015BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAE0);
  }

  return result;
}

unint64_t sub_100038EA0()
{
  result = qword_10015BA90;
  if (!qword_10015BA90)
  {
    sub_100052374(&qword_10015BA98, &qword_1001115E8);
    sub_100038CB4();
    sub_100038D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA90);
  }

  return result;
}

unint64_t sub_100038F2C()
{
  result = qword_10015BB08;
  if (!qword_10015BB08)
  {
    sub_100052374(&qword_10015BB10, &qword_100111620);
    sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628, &unk_1001147D8);
    sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630, &unk_1001147D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB08);
  }

  return result;
}

unint64_t sub_10003900C()
{
  result = qword_10015BAF8;
  if (!qword_10015BAF8)
  {
    sub_100052374(&qword_10015BB00, &qword_100111618);
    sub_100038F2C();
    sub_100039098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAF8);
  }

  return result;
}

unint64_t sub_100039098()
{
  result = qword_10015BB38;
  if (!qword_10015BB38)
  {
    sub_100052374(&qword_10015BB40, &qword_100111638);
    sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640, &unk_1001147D8);
    sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648, &unk_1001147D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB38);
  }

  return result;
}

unint64_t sub_100039178()
{
  result = qword_10015BB68;
  if (!qword_10015BB68)
  {
    sub_100052374(&qword_10015BA40, &qword_1001115C0);
    sub_100039230();
    sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0, &unk_1001147D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB68);
  }

  return result;
}

unint64_t sub_100039230()
{
  result = qword_10015BA58;
  if (!qword_10015BA58)
  {
    sub_100052374(&qword_10015BA38, &qword_1001115B8);
    sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8, &unk_1001147D8);
    sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader, &unk_1001113A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA58);
  }

  return result;
}

uint64_t sub_100039318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100039380()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v5 == 1)
      {
        _StringGuts.grow(_:)(34);

        v6 = 0xD000000000000020;
LABEL_22:
        v16 = v6;
        goto LABEL_23;
      }

      _StringGuts.grow(_:)(43);

      v8 = 0xD000000000000026;
    }

    else
    {
      v7 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
LABEL_21:
        _StringGuts.grow(_:)(41);

        v6 = 0xD000000000000027;
        goto LABEL_22;
      }

      _StringGuts.grow(_:)(44);

      v8 = 0xD000000000000027;
    }

    v16 = v8;
    v9._countAndFlagsBits = v1;
    v9._object = v2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = v4;
    v12 = v3;
LABEL_24:
    String.append(_:)(*&v11);
    return v16;
  }

  if (*(v0 + 32) <= 4u)
  {
    if (v5 != 3)
    {
      v16 = 0;
      _StringGuts.grow(_:)(55);
      v13._countAndFlagsBits = 0xD000000000000035;
      v13._object = 0x800000010011F830;
      String.append(_:)(v13);
LABEL_23:
      v11 = v1;
      v12 = v2;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v5 == 5)
  {
    _StringGuts.grow(_:)(40);

    v6 = 0xD000000000000026;
    goto LABEL_22;
  }

  if (!(v4 | v2 | v1 | v3))
  {
    return 0xD000000000000026;
  }

  v14 = v4 | v2 | v3;
  if (v1 == 1 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 2 && !v14)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 == 3 && !v14)
  {
    return 0xD000000000000017;
  }

  if (v1 == 4 && !v14)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 5 && !v14)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 6 && !v14)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 7 && !v14)
  {
    return 0xD000000000000022;
  }

  if (v1 == 8 && !v14)
  {
    return 0xD000000000000016;
  }

  if (v1 == 9 && !v14 || v1 == 10 && !v14)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 11 && !v14)
  {
    return 0xD000000000000020;
  }

  if (v1 == 12 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 13 && !v14)
  {
    return 0xD000000000000018;
  }

  if (v1 == 14 && !v14)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 15 && !v14)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 16 && !v14)
  {
    return 0xD000000000000020;
  }

  if (v1 == 17 && !v14)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 == 18 && !v14)
  {
    return 0xD000000000000027;
  }

  if (v1 == 19 && !v14)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 20 && !v14)
  {
    return 0xD00000000000002ALL;
  }

  if (v1 == 21 && !v14)
  {
    return 0xD000000000000020;
  }

  if (v1 == 22 && !v14)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 23 && !v14)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 24 && !v14)
  {
    return 0xD000000000000017;
  }

  if (v1 == 25 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 26 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 27 && !v14)
  {
    return 0xD000000000000028;
  }

  if (v1 == 28 && !v14)
  {
    return 0xD000000000000016;
  }

  if (v1 == 29 && !v14)
  {
    return 0xD000000000000028;
  }

  if (v1 == 30 && !v14)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 31 && !v14)
  {
    return 0xD000000000000025;
  }

  if (v1 == 32 && !v14)
  {
    return 0xD000000000000024;
  }

  if (v1 == 33 && !v14)
  {
    return 0xD000000000000028;
  }

  if (v1 == 34 && !v14)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 35 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 36 && !v14)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 37 && !v14)
  {
    return 0xD000000000000019;
  }

  if (v1 == 38 && !v14)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 39 && !v14)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 40 && !v14)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 41 && !v14 || v1 == 42 && !v14)
  {
    return 0xD000000000000024;
  }

  if (v1 == 43 && !v14)
  {
    return 0xD000000000000026;
  }

  if (v1 != 44 || v14)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_100039BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if ((sub_10003373C(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (v14)
  {
    if (!v15 || (*(a1 + 24) != *(a2 + 24) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v15)
  {
    goto LABEL_15;
  }

  v24 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v16 = *(v24 + 24);
  v17 = *(v11 + 48);
  sub_10002C98C(a1 + v16, v13);
  sub_10002C98C(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1000068B0(v13, &unk_10015FB70, &unk_100112010);
LABEL_18:
      v19 = sub_100039FD0(*(a1 + *(v24 + 28)), *(a2 + *(v24 + 28)));
      return v19 & 1;
    }

    goto LABEL_14;
  }

  sub_10002C98C(v13, v10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1000068B0(v13, &qword_10015E940, &unk_100113180);
    goto LABEL_15;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_10006115C();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1000068B0(v13, &unk_10015FB70, &unk_100112010);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_15:
  v19 = 0;
  return v19 & 1;
}

id sub_100039F14(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppQuickAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100039FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  v5 = __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_10002EA10(v13, v10, type metadata accessor for PrimarySettingsListItemModel);
    if (!v11)
    {
      break;
    }

    sub_10002EA10(v14, v7, type metadata accessor for PrimarySettingsListItemModel);
    v17 = *(v10 + 1);
    v23[0] = *v10;
    v23[1] = v17;
    v24 = v10[32];
    v18 = v7[1];
    v25[0] = *v7;
    v25[1] = v18;
    v26 = v7[2].i8[0];
    if ((sub_10002BB48(v23, v25) & 1) == 0 || (sub_10003A2B4(&v10[*(v4 + 20)], v7->i64 + *(v4 + 20)) & 1) == 0)
    {
      sub_10002E8E8(v7, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E8E8(v10, type metadata accessor for PrimarySettingsListItemModel);
      return 0;
    }

    v19 = *(v4 + 24);
    v20 = *&v10[v19];
    v21 = *(v7->i64 + v19);
    sub_10002E8E8(v7, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E8E8(v10, type metadata accessor for PrimarySettingsListItemModel);
    result = v20 == v21;
    v22 = v20 != v21 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v22)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10003A204(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

BOOL sub_10003A218(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12 = a2[2].i8[0];
  return (sub_10002BB48(v9, v11) & 1) != 0 && (sub_10003A2B4((a1 + *(a3 + 20)), a2->i64 + *(a3 + 20)) & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2->i64 + *(a3 + 24));
}

uint64_t sub_10003A2B4(char *a1, uint64_t a2)
{
  v136 = a1;
  v3 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  __chkstk_darwin(v3 - 8);
  v135 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v6 = __chkstk_darwin(v5);
  v133 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v134 = &v129 - v9;
  v10 = __chkstk_darwin(v8);
  v132 = &v129 - v11;
  v12 = __chkstk_darwin(v10);
  v131 = &v129 - v13;
  v14 = __chkstk_darwin(v12);
  v130 = (&v129 - v15);
  v16 = __chkstk_darwin(v14);
  v129 = &v129 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = (&v129 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v129 - v22);
  v24 = __chkstk_darwin(v21);
  v26 = (&v129 - v25);
  v27 = __chkstk_darwin(v24);
  v29 = &v129 - v28;
  __chkstk_darwin(v27);
  v31 = &v129 - v30;
  v32 = sub_10004DED0(&qword_10015B438, &qword_100110900);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v129 - v34;
  v36 = &v129 + *(v33 + 56) - v34;
  sub_10003B29C(v136, &v129 - v34);
  v37 = a2;
  v38 = v36;
  sub_10003B29C(v37, v36);
  v136 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v40 = v136;
        if (EnumCaseMultiPayload == 6)
        {
          v41 = v130;
          sub_10003B29C(v136, v130);
          v42 = v41[1];
          v137 = *v41;
          v138[0] = v42;
          v138[1] = v41[2];
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v43 = *(v36 + 1);
            v139 = *v36;
            v140[0] = v43;
            v140[1] = *(v36 + 2);
            v44 = sub_1000547D0(&v137, &v139);
            v144 = v139;
            v145 = v140[0];
            sub_100043088(&v144);
            v143 = *(v140 + 8);
            sub_10004322C(&v143);
            v147 = v137;
            v148 = v138[0];
            sub_100043088(&v147);
            v146 = *(v138 + 8);
            v45 = &v146;
LABEL_47:
            sub_10004322C(v45);
            goto LABEL_48;
          }

          v139 = *v41;
          LOBYTE(v140[0]) = *(v41 + 16);
          sub_100043088(&v139);
          v147 = *(v138 + 8);
          sub_10004322C(&v147);
          goto LABEL_66;
        }

        v85 = v131;
        sub_10003B29C(v136, v131);
        v86 = *(v85 + 16);
        v137 = *v85;
        v138[0] = v86;
        v138[1] = *(v85 + 32);
        *&v138[2] = *(v85 + 48);
        v87 = swift_getEnumCaseMultiPayload();
        if (v87 == 7)
        {
          goto LABEL_45;
        }

        v139 = *v85;
        v101 = *(v85 + 16);
        goto LABEL_62;
      }

      v40 = v136;
      v61 = v129;
      sub_10003B29C(v136, v129);
      v63 = *v61;
      v62 = *(v61 + 8);
      v64 = *(v61 + 16);
      v66 = *(v61 + 24);
      v65 = *(v61 + 32);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v68 = *v36;
        v67 = *(v36 + 1);
        v69 = v36[16];
        v70 = *(v36 + 3);
        v71 = *(v38 + 4);
        if (v64 <= 1)
        {
          if (!v64)
          {
            if (v69)
            {
              v72 = v68;
              v73 = v67;
              v74 = v69;
LABEL_128:
              sub_10002A748(v72, v73, v74);

              v124 = v63;
              v125 = v62;
              v126 = 0;
              goto LABEL_129;
            }

            v135 = v67;
            sub_1000548F0();
            v134 = v65;
            v127 = static NSObject.== infix(_:_:)();
            v65 = v134;
            v67 = v135;
            if ((v127 & 1) == 0)
            {
              v72 = v68;
              v73 = v135;
              v74 = 0;
              goto LABEL_128;
            }

            goto LABEL_132;
          }

          if (v69 != 1)
          {
            v119 = v68;
            v120 = v67;
            v121 = v69;
            goto LABEL_125;
          }

          if (v63 != v68 || v62 != v67)
          {
            v135 = v67;
            v118 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v67 = v135;
            if ((v118 & 1) == 0)
            {
              v119 = v68;
              v120 = v135;
              v121 = 1;
LABEL_125:
              sub_10002A748(v119, v120, v121);

              v124 = v63;
              v125 = v62;
              v126 = 1;
              goto LABEL_129;
            }
          }

LABEL_132:
          if (v66 == v70 && v65 == v71)
          {
            sub_10002A748(v68, v67, v69);

            sub_10002A748(v63, v62, v64);
            goto LABEL_135;
          }

          v128 = v67;
          v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10002A748(v68, v128, v69);

          sub_10002A748(v63, v62, v64);
LABEL_140:

          v116 = v136;
          if ((v123 & 1) == 0)
          {
            goto LABEL_138;
          }

LABEL_141:
          sub_10002C698(v116, type metadata accessor for PrimarySettingsListItemViewType);
          v44 = 1;
          return v44 & 1;
        }

        if (v64 == 2)
        {
          if (v69 == 2)
          {
            if (v63 == v68 && v62 == v67)
            {
              goto LABEL_132;
            }

            v135 = v67;
            v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v67 = v135;
            if (v112)
            {
              goto LABEL_132;
            }

            v113 = v68;
            v114 = v135;
            v115 = 2;
          }

          else
          {
            v113 = v68;
            v114 = v67;
            v115 = v69;
          }

          sub_10002A748(v113, v114, v115);

          v124 = v63;
          v125 = v62;
          v126 = 2;
LABEL_129:
          sub_10002A748(v124, v125, v126);
          goto LABEL_137;
        }

        if (v63 | v62)
        {
          if (v69 == 3 && v68 == 1 && !v67)
          {
            goto LABEL_132;
          }
        }

        else if (v69 == 3 && !(v67 | v68))
        {
          goto LABEL_132;
        }

        sub_10002A748(v68, v67, v69);

        goto LABEL_137;
      }

      sub_10002A748(v63, v62, v64);
LABEL_65:

      goto LABEL_66;
    }

    v52 = v36;
    if (EnumCaseMultiPayload == 8)
    {
      v40 = v136;
      v75 = v132;
      sub_10003B29C(v136, v132);
      v76 = *(v75 + 16);
      v137 = *v75;
      v138[0] = v76;
      v138[1] = *(v75 + 32);
      *&v138[2] = *(v75 + 48);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_45:
        v88 = *(v36 + 1);
        v139 = *v36;
        v140[0] = v88;
        v140[1] = *(v36 + 2);
        *&v140[2] = *(v36 + 6);
        v44 = sub_1000430DC(&v137, &v139);
        v144 = v139;
        v145 = v140[0];
        sub_100043088(&v144);
        v142 = *(v140 + 8);
        sub_10004322C(&v142);
        v141 = *(&v140[1] + 8);
        sub_10004322C(&v141);
        v147 = v137;
        v148 = v138[0];
        sub_100043088(&v147);
        goto LABEL_46;
      }

      v139 = *v75;
      v101 = *(v75 + 16);
LABEL_62:
      LOBYTE(v140[0]) = v101;
      sub_100043088(&v139);
LABEL_63:
      v147 = *(v138 + 8);
      sub_10004322C(&v147);
      v144 = *(&v138[1] + 8);
      sub_10004322C(&v144);
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v40 = v136;
      v53 = v134;
      sub_10003B29C(v136, v134);
      v54 = *(v53 + 16);
      v137 = *v53;
      v138[0] = v54;
      v138[1] = *(v53 + 32);
      *&v138[2] = *(v53 + 48);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v55 = *(v36 + 1);
        v139 = *v36;
        v140[0] = v55;
        v140[1] = *(v36 + 2);
        *&v140[2] = *(v36 + 6);
        v44 = sub_10005502C(&v137, &v139);
        v144 = v139;
        v145 = v140[0];
        sub_1000068B0(&v144, &qword_10015B440, &qword_100110908);
        v142 = *(v140 + 8);
        sub_10004322C(&v142);
        v141 = *(&v140[1] + 8);
        sub_10004322C(&v141);
        v147 = v137;
        v148 = v138[0];
        sub_1000068B0(&v147, &qword_10015B440, &qword_100110908);
LABEL_46:
        v146 = *(v138 + 8);
        sub_10004322C(&v146);
        v143 = *(&v138[1] + 8);
        v45 = &v143;
        goto LABEL_47;
      }

      v139 = *v53;
      LOBYTE(v140[0]) = *(v53 + 16);
      sub_1000068B0(&v139, &qword_10015B440, &qword_100110908);
      goto LABEL_63;
    }

    v40 = v136;
    v89 = v133;
    sub_10003B29C(v136, v133);
    v91 = *v89;
    v90 = *(v89 + 8);
    v92 = *(v89 + 16);
    v94 = *(v89 + 24);
    v93 = *(v89 + 32);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      sub_100054F18(v91, v90, v92);
      goto LABEL_65;
    }

    v96 = *v52;
    v95 = *(v52 + 1);
    v97 = v52[16];
    v98 = *(v52 + 3);
    v99 = *(v52 + 4);
    if (v92 == 255)
    {
      v135 = v99;
      if (v97 != 255)
      {

        sub_100054F18(v96, v95, v97);
        goto LABEL_137;
      }
    }

    else
    {
      if (v97 == 255)
      {
        sub_100054F18(v91, v90, v92);

        goto LABEL_137;
      }

      v134 = v98;
      v135 = v99;
      sub_100039F14(v96, v95, v97);
      v100 = sub_10006F358(v91, v90, v92, v96, v95, v97);
      sub_100054F18(v96, v95, v97);
      v98 = v134;
      if ((v100 & 1) == 0)
      {
        sub_100054F18(v96, v95, v97);

        sub_100054F18(v91, v90, v92);
LABEL_137:

        v116 = v136;
LABEL_138:
        sub_10002C698(v116, type metadata accessor for PrimarySettingsListItemViewType);
        goto LABEL_67;
      }
    }

    if (v94 == v98 && v93 == v135)
    {
      sub_100054F18(v96, v95, v97);

      sub_100054F18(v91, v90, v92);
LABEL_135:

      v116 = v136;
      goto LABEL_141;
    }

    v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100054F18(v96, v95, v97);

    sub_100054F18(v91, v90, v92);
    goto LABEL_140;
  }

  v46 = v135;
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v136;
    if (EnumCaseMultiPayload)
    {
      sub_10003B29C(v136, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100057574(v36, v46);
        v44 = sub_100054B20(v29, v46);
        sub_10002C698(v46, type metadata accessor for PrimarySettingsListFamilyLinkModel);
        sub_10002C698(v29, type metadata accessor for PrimarySettingsListFamilyLinkModel);
        goto LABEL_48;
      }

      sub_10002C698(v29, type metadata accessor for PrimarySettingsListFamilyLinkModel);
    }

    else
    {
      sub_10003B29C(v136, v31);
      v56 = *v31;
      v57 = *(v31 + 1);
      v58 = v31[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v103 = *v38;
        v104 = *(v38 + 1);
        v105 = v38[16];
        v106 = v58 >> 6;
        if (v58 >> 6 > 1)
        {
          if (v106 == 2)
          {
            if ((v105 & 0xC0) == 0x80)
            {
              if (v56 != v103 || v57 != v104)
              {
                goto LABEL_144;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v122 = v105 >= 0xC0 && (v104 | v103) == 0;
            if (v122 && v105 == 192)
            {
              goto LABEL_87;
            }
          }
        }

        else if (v106)
        {
          if ((v105 & 0xC0) == 0x40)
          {
            if (v56 != v103)
            {
              goto LABEL_144;
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v105 < 0x40)
          {
            if (v56 == v103 && v57 == v104)
            {
              v110 = v38[16];
              sub_100045DB4(v56, v57, v105);
              sub_100045DB4(v56, v57, v58);
            }

            else
            {
              v108 = *v38;
              v109 = *(v38 + 1);
              v110 = v38[16];
              v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100045DB4(v108, v109, v110);
              sub_100045DB4(v56, v57, v58);
              if ((v111 & 1) == 0)
              {
                goto LABEL_144;
              }
            }

            if ((v58 ^ v110))
            {
              goto LABEL_144;
            }

            goto LABEL_87;
          }

          sub_100045DB4(v103, v104, v105);
          v103 = v56;
          v104 = v57;
          LOBYTE(v105) = v58;
        }

        sub_100045DB4(v103, v104, v105);
        goto LABEL_144;
      }

      sub_100045DB4(v56, v57, v58);
    }

LABEL_66:
    sub_1000068B0(v40, &qword_10015B438, &qword_100110900);
LABEL_67:
    v44 = 0;
    return v44 & 1;
  }

  v40 = v136;
  if (EnumCaseMultiPayload != 2)
  {
    v47 = v36;
    if (EnumCaseMultiPayload == 3)
    {
      sub_10003B29C(v136, v23);
      v49 = *v23;
      v48 = v23[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_65;
      }

      if (v49 == *v36 && v48 == *(v36 + 1))
      {

        goto LABEL_87;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
LABEL_87:
        v116 = v40;
        goto LABEL_141;
      }
    }

    else
    {
      v77 = v20;
      sub_10003B29C(v136, v20);
      v79 = *v20;
      v78 = v20[1];
      v80 = v77[2];
      v81 = swift_getEnumCaseMultiPayload();
      if (v81 != 4)
      {
        goto LABEL_65;
      }

      v82 = v47[2];
      if (v79 == *v47 && v78 == v47[1])
      {
      }

      else
      {
        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v84 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

      if (v80 == v82)
      {
        goto LABEL_87;
      }
    }

LABEL_144:
    sub_10002C698(v40, type metadata accessor for PrimarySettingsListItemViewType);
    goto LABEL_67;
  }

  sub_10003B29C(v136, v26);
  v59 = v26[1];
  v137 = *v26;
  v138[0] = v59;
  v138[1] = v26[2];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v139 = *v26;
    LOBYTE(v140[0]) = *(v26 + 16);
    sub_100043088(&v139);
    v147 = *(v138 + 8);
    sub_10004322C(&v147);

    goto LABEL_66;
  }

  v60 = *(v36 + 1);
  v139 = *v36;
  v140[0] = v60;
  v140[1] = *(v36 + 2);
  v44 = sub_1000547D0(&v137, &v139);
  v144 = v139;
  v145 = v140[0];
  sub_100043088(&v144);
  v143 = *(v140 + 8);
  sub_10004322C(&v143);

  v147 = v137;
  v148 = v138[0];
  sub_100043088(&v147);
  v146 = *(v138 + 8);
  sub_10004322C(&v146);

LABEL_48:
  sub_10002C698(v40, type metadata accessor for PrimarySettingsListItemViewType);
  return v44 & 1;
}

id sub_10003B21C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC11SettingsAppP33_F16170C8CD22B033163CFC9AD59D599336SettingsAppDebugMenuGestureProxyView_perform];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10003B29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B33C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SettingsNavigationSplitView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003B3D8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100059CA0(a1, v4, &qword_10015EF28, &qword_100116590);
  sub_10003B4BC(v4);
}

uint64_t sub_10003B4BC(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  sub_100059CA0(v1 + v9, v8, &qword_10015EF28, &qword_100116590);
  v10 = sub_10003B724(v8, a1);
  sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100059CA0(a1, v8, &qword_10015EF28, &qword_100116590);
    sub_100059CA0(v1 + v9, v6, &qword_10015EF28, &qword_100116590);
    swift_beginAccess();
    sub_10003BBC0(v8, v1 + v9, &qword_10015EF28, &qword_100116590);
    swift_endAccess();
    sub_10003BC28(v6);
    sub_1000068B0(v6, &qword_10015EF28, &qword_100116590);
    sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
  }

  return sub_1000068B0(a1, &qword_10015EF28, &qword_100116590);
}

uint64_t sub_10003B724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100059CA0(a1, &v21 - v13, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(a2, &v14[v15], &qword_10015EF28, &qword_100116590);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100059CA0(v14, v10, &qword_10015EF28, &qword_100116590);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000068B0(v14, &qword_10015EF28, &qword_100116590);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000068B0(v14, &qword_10015EF20, &unk_100116140);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000068B0(v14, &qword_10015EF28, &qword_100116590);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10003BA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100059CA0(a2, &v12[-v8], &qword_10015EF28, &qword_100116590);
  v10 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  sub_100059CA0(a1 + v10, v7, &qword_10015EF28, &qword_100116590);
  swift_beginAccess();
  sub_10003BBC0(v9, a1 + v10, &qword_10015EF28, &qword_100116590);
  swift_endAccess();
  sub_10003BC28(v7);
  sub_1000068B0(v7, &qword_10015EF28, &qword_100116590);
  return sub_1000068B0(v9, &qword_10015EF28, &qword_100116590);
}

uint64_t sub_10003BBC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_10003BC28(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_getKeyPath();
  v22 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100059CA0(v21, v12, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v2 + v13, &v12[v14], &qword_10015EF28, &qword_100116590);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000068B0(v12, &qword_10015EF28, &qword_100116590);
      return;
    }

    goto LABEL_6;
  }

  sub_100059CA0(v12, v8, &qword_10015EF28, &qword_100116590);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000068B0(v12, &qword_10015EF20, &unk_100116140);
LABEL_7:
    sub_10003C054();
    return;
  }

  v16 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000068B0(v12, &qword_10015EF28, &qword_100116590);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_10003C054()
{
  v1 = v0;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  swift_getKeyPath();
  *&v31 = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v15 = *(v6 + 56);
  v29 = v1;
  sub_100059CA0(v1 + v14, v8, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v13, &v8[v15], &qword_10015EF28, &qword_100116590);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) != 1)
  {
    v17 = v30;
    sub_100059CA0(v8, v30, &qword_10015EF28, &qword_100116590);
    if (v16(&v8[v15], 1, v2) != 1)
    {
      v18 = v28;
      (*(v3 + 32))(v28, &v8[v15], v2);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v3 + 8);
      v20(v18, v2);
      sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
      v20(v17, v2);
      sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
      if ((v19 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
    (*(v3 + 8))(v17, v2);
LABEL_6:
    sub_1000068B0(v8, &qword_10015EF20, &unk_100116140);
    return;
  }

  sub_1000068B0(v13, &qword_10015EF28, &qword_100116590);
  if (v16(&v8[v15], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
LABEL_8:
  v21 = sub_100010CD0();
  swift_getKeyPath();
  *&v31 = v21;
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *&v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  v23 = *&v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
  v24 = *&v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
  v25 = *&v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
  v26 = v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
  sub_100031DF8(v22, v23, v24, v25, v21[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

  if (v26 == 255)
  {
    v31 = 0xFuLL;
    v32 = 0;
    v33 = 0;
    v34 = 6;

    sub_1000954AC(&v31);
  }

  else
  {
    sub_100032660(v22, v23, v24, v25, v26);
  }
}

uint64_t sub_10003C5CC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_10003C720(v4);
}

uint64_t sub_10003C720(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  swift_beginAccess();
  sub_100059CA0(v1 + v9, v8, &qword_10015EFB0, &qword_100116220);
  v10 = sub_10003C990(v8, a1);
  sub_1000068B0(v8, &qword_10015EFB0, &qword_100116220);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100059CA0(a1, v8, &qword_10015EFB0, &qword_100116220);
    sub_100059CA0(v1 + v9, v6, &qword_10015EFB0, &qword_100116220);
    sub_10003CE34(v8);
    swift_beginAccess();
    sub_10003BBC0(v8, v1 + v9, &qword_10015EFB0, &qword_100116220);
    swift_endAccess();
    sub_10003E800(v6);
    sub_1000068B0(v6, &qword_10015EFB0, &qword_100116220);
    sub_1000068B0(v8, &qword_10015EFB0, &qword_100116220);
  }

  return sub_1000068B0(a1, &qword_10015EFB0, &qword_100116220);
}

uint64_t sub_10003C990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100059CA0(a1, &v21 - v13, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(a2, &v14[v15], &qword_10015EFB0, &qword_100116220);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100059CA0(v14, v10, &qword_10015EFB0, &qword_100116220);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000068B0(v14, &qword_10015EFB0, &qword_100116220);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000068B0(v14, &qword_10015EFD0, &qword_100116260);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000068B0(v14, &qword_10015EFB0, &qword_100116220);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10003CCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100059CA0(a2, &v12[-v8], &qword_10015EFB0, &qword_100116220);
  v10 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  swift_beginAccess();
  sub_100059CA0(a1 + v10, v7, &qword_10015EFB0, &qword_100116220);
  sub_10003CE34(v9);
  swift_beginAccess();
  sub_10003BBC0(v9, a1 + v10, &qword_10015EFB0, &qword_100116220);
  swift_endAccess();
  sub_10003E800(v7);
  sub_1000068B0(v7, &qword_10015EFB0, &qword_100116220);
  return sub_1000068B0(v9, &qword_10015EFB0, &qword_100116220);
}

void sub_10003CE34(uint64_t a1)
{
  v156 = a1;
  v1 = type metadata accessor for ScenePhase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v146 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  v4 = __chkstk_darwin(v161);
  v137 = &v131[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v145 = &v131[-v7];
  v8 = __chkstk_darwin(v6);
  v139 = &v131[-v9];
  v10 = __chkstk_darwin(v8);
  v160 = &v131[-v11];
  v12 = __chkstk_darwin(v10);
  v148 = &v131[-v13];
  __chkstk_darwin(v12);
  v15 = &v131[-v14];
  v159 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v16 = __chkstk_darwin(v159);
  v133 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v131[-v19];
  v21 = __chkstk_darwin(v18);
  v140 = &v131[-v22];
  v23 = __chkstk_darwin(v21);
  v150 = &v131[-v24];
  v25 = __chkstk_darwin(v23);
  v134 = &v131[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v131[-v28];
  v30 = __chkstk_darwin(v27);
  v141 = &v131[-v31];
  v32 = __chkstk_darwin(v30);
  v149 = &v131[-v33];
  v34 = __chkstk_darwin(v32);
  v135 = &v131[-v35];
  v36 = __chkstk_darwin(v34);
  v144 = &v131[-v37];
  v38 = __chkstk_darwin(v36);
  v143 = &v131[-v39];
  v40 = __chkstk_darwin(v38);
  v151 = &v131[-v41];
  v42 = __chkstk_darwin(v40);
  v44 = &v131[-v43];
  __chkstk_darwin(v42);
  v46 = &v131[-v45];
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000659C(v47, qword_100169640);
  sub_100059CA0(v156, v46, &qword_10015EFB0, &qword_100116220);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  LODWORD(v158) = v49;
  v50 = os_log_type_enabled(v48, v49);
  v51 = &unk_10015E000;
  v52 = &unk_10015E000;
  v155 = v2;
  v136 = v20;
  v142 = v29;
  if (v50)
  {
    v53 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v165 = v154;
    *v53 = 136315394;
    swift_getKeyPath();
    v54 = v162;
    v163 = v162;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v157 = v15;
    v55 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
    swift_beginAccess();
    sub_100059CA0(v54 + v55, v44, &qword_10015EFB0, &qword_100116220);
    v56 = String.init<A>(describing:)();
    v58 = sub_100025CF0(v56, v57, &v165);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    sub_100059CA0(v46, v44, &qword_10015EFB0, &qword_100116220);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    v2 = v155;
    sub_1000068B0(v46, &qword_10015EFB0, &qword_100116220);
    v62 = v59;
    v52 = &unk_10015E000;
    v15 = v157;
    v63 = sub_100025CF0(v62, v61, &v165);

    *(v53 + 14) = v63;
    v51 = &unk_10015E000;
    _os_log_impl(&_mh_execute_header, v48, v158, "Scene phase will change from '%s' to '%s'.", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000068B0(v46, &qword_10015EFB0, &qword_100116220);
  }

  swift_getKeyPath();
  v64 = v51[372];
  v65 = v162;
  v165 = v162;
  v66 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  v154 = v64;
  v152 = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v67 = v52[371];
  swift_beginAccess();
  v68 = *(v2 + 104);
  v69 = v151;
  v138 = enum case for ScenePhase.active(_:);
  v159 = v68;
  v68(v151);
  v157 = *(v2 + 56);
  v158 = v2 + 56;
  (v157)(v69, 0, 1, v1);
  v70 = *(v161 + 48);
  v153 = v67;
  sub_100059CA0(v65 + v67, v15, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v69, &v15[v70], &qword_10015EFB0, &qword_100116220);
  v71 = *(v2 + 48);
  v72 = v71(v15, 1, v1);
  v147 = v2 + 104;
  if (v72 == 1)
  {
    sub_1000068B0(v69, &qword_10015EFB0, &qword_100116220);
    if (v71(&v15[v70], 1, v1) != 1)
    {
LABEL_19:
      sub_1000068B0(v15, &qword_10015EFD0, &qword_100116260);
      goto LABEL_20;
    }

    sub_1000068B0(v15, &qword_10015EFB0, &qword_100116220);
  }

  else
  {
    v73 = v143;
    sub_100059CA0(v15, v143, &qword_10015EFB0, &qword_100116220);
    if (v71(&v15[v70], 1, v1) == 1)
    {
      v74 = v151;
LABEL_17:
      sub_1000068B0(v74, &qword_10015EFB0, &qword_100116220);
      (*(v2 + 8))(v73, v1);
      goto LABEL_19;
    }

    v75 = &v15[v70];
    v76 = v146;
    (*(v2 + 32))(v146, v75, v1);
    sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    v132 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *(v2 + 8);
    v77(v76, v1);
    sub_1000068B0(v151, &qword_10015EFB0, &qword_100116220);
    v77(v73, v1);
    sub_1000068B0(v15, &qword_10015EFB0, &qword_100116220);
    if ((v132 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v78 = v144;
  (v159)(v144, enum case for ScenePhase.inactive(_:), v1);
  (v157)(v78, 0, 1, v1);
  v79 = *(v161 + 48);
  v80 = v148;
  sub_100059CA0(v156, v148, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v78, &v80[v79], &qword_10015EFB0, &qword_100116220);
  if (v71(v80, 1, v1) == 1)
  {
    sub_1000068B0(v78, &qword_10015EFB0, &qword_100116220);
    if (v71(&v148[v79], 1, v1) == 1)
    {
      sub_1000068B0(v148, &qword_10015EFB0, &qword_100116220);
LABEL_48:
      sub_100045E64();
      return;
    }

    v15 = v148;
    goto LABEL_19;
  }

  v81 = v148;
  v73 = v135;
  sub_100059CA0(v148, v135, &qword_10015EFB0, &qword_100116220);
  if (v71(&v81[v79], 1, v1) == 1)
  {
    v74 = v144;
    v15 = v148;
    v2 = v155;
    goto LABEL_17;
  }

  v117 = v155;
  v118 = v148;
  v119 = &v148[v79];
  v120 = v146;
  (*(v155 + 32))(v146, v119, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  LODWORD(v151) = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v117 + 8);
  v121(v120, v1);
  sub_1000068B0(v144, &qword_10015EFB0, &qword_100116220);
  v121(v73, v1);
  sub_1000068B0(v118, &qword_10015EFB0, &qword_100116220);
  if (v151)
  {
    goto LABEL_48;
  }

LABEL_20:
  swift_getKeyPath();
  v82 = v162;
  v164 = v162;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = v149;
  LODWORD(v151) = enum case for ScenePhase.inactive(_:);
  v159(v149);
  (v157)(v83, 0, 1, v1);
  v84 = *(v161 + 48);
  v85 = v160;
  sub_100059CA0(v82 + v153, v160, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v83, &v85[v84], &qword_10015EFB0, &qword_100116220);
  if (v71(v85, 1, v1) == 1)
  {
    sub_1000068B0(v83, &qword_10015EFB0, &qword_100116220);
    if (v71(&v160[v84], 1, v1) != 1)
    {
LABEL_32:
      v86 = v150;
LABEL_33:
      sub_1000068B0(v160, &qword_10015EFD0, &qword_100116260);
      goto LABEL_34;
    }

    sub_1000068B0(v160, &qword_10015EFB0, &qword_100116220);
    v86 = v150;
  }

  else
  {
    v87 = v160;
    v88 = v141;
    sub_100059CA0(v160, v141, &qword_10015EFB0, &qword_100116220);
    if (v71(&v87[v84], 1, v1) == 1)
    {
      v89 = v149;
      v90 = v155;
LABEL_31:
      sub_1000068B0(v89, &qword_10015EFB0, &qword_100116220);
      (*(v90 + 8))(v88, v1);
      goto LABEL_32;
    }

    v91 = v155;
    v92 = v160;
    v93 = &v160[v84];
    v94 = v146;
    (*(v155 + 32))(v146, v93, v1);
    sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    v95 = v88;
    v96 = dispatch thunk of static Equatable.== infix(_:_:)();
    v97 = *(v91 + 8);
    v97(v94, v1);
    sub_1000068B0(v149, &qword_10015EFB0, &qword_100116220);
    v97(v95, v1);
    sub_1000068B0(v92, &qword_10015EFB0, &qword_100116220);
    v86 = v150;
    if ((v96 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v98 = v71;
  v99 = v142;
  (v159)(v142, v138, v1);
  (v157)(v99, 0, 1, v1);
  v100 = *(v161 + 48);
  v101 = v139;
  sub_100059CA0(v156, v139, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v99, &v101[v100], &qword_10015EFB0, &qword_100116220);
  if (v98(v101, 1, v1) == 1)
  {
    sub_1000068B0(v99, &qword_10015EFB0, &qword_100116220);
    if (v98(&v101[v100], 1, v1) == 1)
    {
      sub_1000068B0(v101, &qword_10015EFB0, &qword_100116220);
LABEL_51:
      sub_1000AA050();
      return;
    }

    v71 = v98;
    v160 = v101;
    goto LABEL_33;
  }

  v88 = v134;
  sub_100059CA0(v101, v134, &qword_10015EFB0, &qword_100116220);
  v102 = v98(&v101[v100], 1, v1);
  v90 = v155;
  v71 = v98;
  if (v102 == 1)
  {
    v89 = v142;
    v160 = v101;
    goto LABEL_31;
  }

  v122 = &v101[v100];
  v123 = v146;
  (*(v155 + 32))(v146, v122, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v124 = dispatch thunk of static Equatable.== infix(_:_:)();
  v125 = *(v90 + 8);
  v125(v123, v1);
  sub_1000068B0(v142, &qword_10015EFB0, &qword_100116220);
  v125(v88, v1);
  sub_1000068B0(v101, &qword_10015EFB0, &qword_100116220);
  v86 = v150;
  if (v124)
  {
    goto LABEL_51;
  }

LABEL_34:
  swift_getKeyPath();
  v103 = v162;
  v164 = v162;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  (v159)(v86, enum case for ScenePhase.background(_:), v1);
  (v157)(v86, 0, 1, v1);
  v104 = *(v161 + 48);
  v105 = v145;
  sub_100059CA0(v103 + v153, v145, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v86, &v105[v104], &qword_10015EFB0, &qword_100116220);
  if (v71(v105, 1, v1) == 1)
  {
    sub_1000068B0(v86, &qword_10015EFB0, &qword_100116220);
    if (v71(&v105[v104], 1, v1) == 1)
    {
      sub_1000068B0(v105, &qword_10015EFB0, &qword_100116220);
      goto LABEL_41;
    }

LABEL_39:
    sub_1000068B0(v105, &qword_10015EFD0, &qword_100116260);
    return;
  }

  v106 = v140;
  sub_100059CA0(v105, v140, &qword_10015EFB0, &qword_100116220);
  v107 = v71(&v105[v104], 1, v1);
  v108 = v155;
  if (v107 == 1)
  {
    sub_1000068B0(v150, &qword_10015EFB0, &qword_100116220);
    (*(v108 + 8))(v106, v1);
    goto LABEL_39;
  }

  v109 = &v105[v104];
  v110 = v146;
  (*(v155 + 32))(v146, v109, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v111 = dispatch thunk of static Equatable.== infix(_:_:)();
  v112 = *(v108 + 8);
  v112(v110, v1);
  sub_1000068B0(v150, &qword_10015EFB0, &qword_100116220);
  v112(v106, v1);
  sub_1000068B0(v105, &qword_10015EFB0, &qword_100116220);
  if ((v111 & 1) == 0)
  {
    return;
  }

LABEL_41:
  v113 = v136;
  (v159)(v136, v151, v1);
  (v157)(v113, 0, 1, v1);
  v114 = *(v161 + 48);
  v115 = v137;
  sub_100059CA0(v156, v137, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v113, &v115[v114], &qword_10015EFB0, &qword_100116220);
  if (v71(v115, 1, v1) != 1)
  {
    v116 = v133;
    sub_100059CA0(v115, v133, &qword_10015EFB0, &qword_100116220);
    if (v71(&v115[v114], 1, v1) != 1)
    {
      v126 = v155;
      v127 = &v115[v114];
      v128 = v146;
      (*(v155 + 32))(v146, v127, v1);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
      v129 = dispatch thunk of static Equatable.== infix(_:_:)();
      v130 = *(v126 + 8);
      v130(v128, v1);
      sub_1000068B0(v113, &qword_10015EFB0, &qword_100116220);
      v130(v116, v1);
      sub_1000068B0(v115, &qword_10015EFB0, &qword_100116220);
      if ((v129 & 1) == 0)
      {
        return;
      }

      goto LABEL_53;
    }

    sub_1000068B0(v113, &qword_10015EFB0, &qword_100116220);
    (*(v155 + 8))(v116, v1);
LABEL_46:
    sub_1000068B0(v115, &qword_10015EFD0, &qword_100116260);
    return;
  }

  sub_1000068B0(v113, &qword_10015EFB0, &qword_100116220);
  if (v71(&v115[v114], 1, v1) != 1)
  {
    goto LABEL_46;
  }

  sub_1000068B0(v115, &qword_10015EFB0, &qword_100116220);
LABEL_53:
  sub_1000AA5E4();
}

uint64_t sub_10003E5F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169640);
  sub_10000659C(v0, qword_100169640);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003E67C(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(v2 + 88))(v4, a1);
  if (v5 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v5 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v5 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v2 + 8))(v4, a1);
  return 0x6E776F6E6B6E75;
}

void sub_10003E800(uint64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for ScenePhase();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  __chkstk_darwin(v49);
  v7 = &v41[-v6];
  v47 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v8 = __chkstk_darwin(v47);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v50 = &v41[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v41[-v14];
  __chkstk_darwin(v13);
  v17 = &v41[-v16];
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v46 = v10;
  v18 = type metadata accessor for Logger();
  sub_10000659C(v18, qword_100169640);
  sub_100059CA0(a1, v17, &qword_10015EFB0, &qword_100116220);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = &unk_10015E000;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v44 = v4;
    v23 = v22;
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v23 = 136315394;
    v42 = v20;
    sub_100059CA0(v17, v15, &qword_10015EFB0, &qword_100116220);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
    v27 = sub_100025CF0(v24, v26, v52);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    swift_getKeyPath();
    v51 = v2;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
    swift_beginAccess();
    sub_100059CA0(v2 + v28, v15, &qword_10015EFB0, &qword_100116220);
    v29 = String.init<A>(describing:)();
    v31 = sub_100025CF0(v29, v30, v52);

    *(v23 + 14) = v31;
    v21 = &unk_10015E000;
    _os_log_impl(&_mh_execute_header, v19, v42, "Scene phase did change from '%s' to '%s'.", v23, 0x16u);
    swift_arrayDestroy();

    v4 = v44;
  }

  else
  {

    sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
  }

  swift_getKeyPath();
  v52[0] = v2;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v21[371];
  swift_beginAccess();
  v33 = v50;
  v34 = v48;
  (*(v4 + 104))(v50, enum case for ScenePhase.background(_:), v48);
  (*(v4 + 56))(v33, 0, 1, v34);
  v35 = *(v49 + 48);
  sub_100059CA0(v2 + v32, v7, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v33, &v7[v35], &qword_10015EFB0, &qword_100116220);
  v36 = *(v4 + 48);
  if (v36(v7, 1, v34) != 1)
  {
    v37 = v46;
    sub_100059CA0(v7, v46, &qword_10015EFB0, &qword_100116220);
    if (v36(&v7[v35], 1, v34) != 1)
    {
      v38 = v45;
      (*(v4 + 32))(v45, &v7[v35], v34);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v4 + 8);
      v40(v38, v34);
      sub_1000068B0(v33, &qword_10015EFB0, &qword_100116220);
      v40(v37, v34);
      sub_1000068B0(v7, &qword_10015EFB0, &qword_100116220);
      if ((v39 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1000068B0(v33, &qword_10015EFB0, &qword_100116220);
    (*(v4 + 8))(v37, v34);
LABEL_11:
    sub_1000068B0(v7, &qword_10015EFD0, &qword_100116260);
    return;
  }

  sub_1000068B0(v33, &qword_10015EFB0, &qword_100116220);
  if (v36(&v7[v35], 1, v34) != 1)
  {
    goto LABEL_11;
  }

  sub_1000068B0(v7, &qword_10015EFB0, &qword_100116220);
LABEL_13:
  sub_1000AABD0();
}

uint64_t sub_10003EF74(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{

  sub_10004DED0(&qword_10015DE48, &qword_100114978);
  State.wrappedValue.getter();
  if (v7)
  {
  }

  State.wrappedValue.setter();

  return a1(v6);
}

uint64_t sub_10003F048(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsNavigationSplitView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10003F0D4(uint64_t a1)
{
  v2 = type metadata accessor for WithCurrentHostingControllerAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_1000C3560(&qword_10015B0D8, &qword_10010FB60, &type metadata accessor for WithCurrentHostingControllerAction, v5);
  v8 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_10003F1FC(void *a1)
{
  type metadata accessor for SettingsNavigationSplitView(0);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v2 = sub_100010CD0();

  v3 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v4 = *&v2[v3];
  *&v2[v3] = a1;
  v5 = a1;
}

void sub_10003F320(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  objc_msgSendSuper2(&v9, "willMoveToWindow:", a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_10008F608;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_10000411C;
        v8[3] = &unk_10014FFC8;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler:v7];
        _Block_release(v7);
      }
    }
  }
}

uint64_t sub_10003F464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F4F0(uint64_t *a1)
{
  type metadata accessor for Button();
  sub_100052374(&qword_10015DE00, &qword_100114828);
  swift_getWitnessTable();
  sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  swift_getOpaqueTypeMetadata2();
  sub_100052374(&qword_10015DE10, &qword_100114830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationLink();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable();
}

__n128 sub_10003F748(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003F764@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Button();
  v4 = sub_100052374(&qword_10015DE00, &qword_100114828);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  swift_getOpaqueTypeMetadata2();
  sub_100052374(&qword_10015DE10, &qword_100114830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationLink();
  v7 = type metadata accessor for _ConditionalContent();
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v30 = v3;
  v31 = v4;
  v32 = WitnessTable;
  v33 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v28 = OpaqueTypeConformance2;
  v29 = v11;
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v26 = v12;
  v27 = v13;
  swift_getWitnessTable();
  v14 = type metadata accessor for _UnaryViewAdaptor();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  sub_10003FB48(a1, v9);
  _UnaryViewAdaptor.init(_:)();
  swift_getWitnessTable();
  v21 = *(v15 + 16);
  v21(v20, v18, v14);
  v22 = *(v15 + 8);
  v22(v18, v14);
  v21(v25, v20, v14);
  return (v22)(v20, v14);
}

uint64_t sub_10003FB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v79 = a1;
  v93 = v3;
  v94 = &type metadata for Never;
  v95 = v4;
  v96 = &protocol witness table for Never;
  v5 = type metadata accessor for NavigationLink();
  v81 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v70 - v9;
  v10 = sub_10004DED0(&qword_10015DE00, &qword_100114828);
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v76 = &v70 - v11;
  v12 = type metadata accessor for Button();
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v70 - v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v90 = v12;
  v93 = v12;
  v94 = v10;
  v85 = v10;
  v88 = v15;
  v89 = WitnessTable;
  v95 = WitnessTable;
  v96 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v70 - v17;
  sub_100052374(&qword_10015DE10, &qword_100114830);
  v19 = type metadata accessor for ModifiedContent();
  v78 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v71 = &v70 - v24;
  __chkstk_darwin(v23);
  v74 = &v70 - v25;
  v86 = v5;
  v84 = type metadata accessor for _ConditionalContent();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v70 - v26;
  v27 = *(v2 + 56);
  if ((v27 & 4) != 0)
  {
    v46 = swift_allocObject();
    v81 = &v70;
    *(v46 + 16) = v3;
    *(v46 + 24) = v4;
    v47 = *(v2 + 48);
    *(v46 + 64) = *(v2 + 32);
    *(v46 + 80) = v47;
    *(v46 + 96) = *(v2 + 64);
    v48 = *(v2 + 16);
    *(v46 + 32) = *v2;
    *(v46 + 48) = v48;
    __chkstk_darwin(v46);
    *(&v70 - 4) = v3;
    *(&v70 - 3) = v4;
    *(&v70 - 2) = v2;
    (*(*(v79 - 8) + 16))(&v93, v2);
    v49 = v73;
    Button.init(action:label:)();
    v81 = v22;
    v50 = v76;
    static PrimitiveButtonStyle<>.navigationLink.getter();
    v52 = v89;
    v51 = v90;
    v42 = v85;
    v53 = v88;
    View.buttonStyle<A>(_:)();
    (*(v77 + 8))(v50, v42);
    (*(v75 + 8))(v49, v51);
    v93 = v51;
    v94 = v42;
    v95 = v52;
    v96 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v71;
    sub_1000407F0(v27 & 2, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    (*(v72 + 8))(v18, OpaqueTypeMetadata2);
    v56 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v91 = OpaqueTypeConformance2;
    v92 = v56;
    v80 = swift_getWitnessTable();
    v57 = v78;
    v58 = *(v78 + 16);
    v59 = v74;
    v58(v74, v55, v19);
    v60 = *(v57 + 8);
    v60(v55, v19);
    v61 = v19;
    v62 = v81;
    v58(v81, v59, v61);
    swift_getWitnessTable();
    v45 = v82;
    sub_1000408B8(v62, v61);
    v60(v62, v61);
    v60(v59, v61);
  }

  else
  {
    v28 = *(v2 + 24);
    v29 = *(v2 + 32);
    v30 = *(v2 + 40);
    v31 = *(v2 + 48);
    v93 = *(v2 + 16);
    v94 = v28;
    v95 = v29;
    v96 = v30;
    v97 = v31;
    v32 = __chkstk_darwin(v93);
    *(&v70 - 4) = v3;
    *(&v70 - 3) = v4;
    *(&v70 - 2) = v2;
    sub_100029920(v32, v33, v34, v35, v36);
    sub_100032144();
    NavigationLink<>.init<A>(value:label:)();
    v37 = v86;
    v79 = swift_getWitnessTable();
    v38 = v81;
    v39 = v81[2];
    v40 = v80;
    v39(v80, v8, v37);
    v41 = v38[1];
    v41(v8, v37);
    v39(v8, v40, v37);
    v42 = v85;
    v93 = v90;
    v94 = v85;
    v95 = v89;
    v96 = v88;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v102 = v43;
    v103 = v44;
    swift_getWitnessTable();
    v45 = v82;
    sub_100043320(v8, v19, v37);
    v41(v8, v37);
    v41(v40, v37);
  }

  v93 = v90;
  v94 = v42;
  v95 = v89;
  v96 = v88;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v100 = v63;
  v101 = v64;
  v65 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v98 = v65;
  v99 = v66;
  v67 = v84;
  swift_getWitnessTable();
  v68 = v83;
  (*(v83 + 16))(v87, v45, v67);
  return (*(v68 + 8))(v45, v67);
}

uint64_t sub_10004062C()
{

  sub_10002C5C0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v9 + 64))();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_1000407DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_10002C7B8(v2, v3, v4);
}

uint64_t sub_1000407F0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_100040864@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.navigationIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

void *sub_1000408B8(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void sub_100040AB0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_10004DED0(&qword_10015B6B8, &qword_100110F08);
  sub_100040B1C(v3, v4, v5, a1 + *(v6 + 44));
}

void sub_100040B1C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v15[-v12];
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_10004DED0(&qword_10015B6C8, &qword_100110F18);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_10004DED0(&qword_10015B6D0, &qword_100110F20);
  sub_1000525A0(&qword_10015B6D8, &qword_10015B6D0, &qword_100110F20, &protocol conformance descriptor for TupleView<A>);
  LabelGroup.init(content:)();
  sub_10005879C(v13, v11);
  *a4 = xmmword_100110E00;
  *(a4 + 16) = 3;
  v14 = sub_10004DED0(&qword_10015B6E0, &qword_100110F28);
  sub_10005879C(v11, a4 + *(v14 + 48));
  sub_100039F14(1, 0, 3);
  sub_10005880C(v13);
  sub_10005880C(v11);
  sub_10002A748(1, 0, 3);
}

uint64_t sub_100040CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_100057CEC(a1, a2, a3, &v24);
  v22 = v25;
  v23 = v24;
  v20 = v27;
  v21 = v26;
  v7 = HIBYTE(v28);
  v19 = v28;
  static Font.title3.getter();
  v18 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v30 = v7;
  sub_100058024(a1, v4, &v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v29;
  v14 = v28;
  v15 = static Font.footnote.getter();
  v17 = swift_getKeyPath();
  LOBYTE(v24) = v13;
  *a4 = v23;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  *(a4 + 24) = v20;
  *(a4 + 32) = v19;
  *(a4 + 33) = v30;
  *(a4 + 40) = KeyPath;
  *(a4 + 48) = v18;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  *(a4 + 72) = v11;
  *(a4 + 80) = v12;
  *(a4 + 88) = v14;
  *(a4 + 90) = v13;
  *(a4 + 96) = v17;
  *(a4 + 104) = v15;
  sub_100058874(v23, v22, v21, v20, v19);

  sub_1000588B8(v9, v10, v11, v12, v14, v13, sub_100041078, sub_10005887C);

  sub_1000588B8(v9, v10, v11, v12, v14, v13, sub_1000410CC, sub_1000588D4);

  sub_100058910(v23, v22, v21, v20);
}

uint64_t sub_100040F0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100040F70()
{
  result = qword_10015B700;
  if (!qword_10015B700)
  {
    sub_100052374(&qword_10015B6F0, &qword_100113BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B700);
  }

  return result;
}

unint64_t sub_100040FEC()
{
  result = qword_10015B6F8;
  if (!qword_10015B6F8)
  {
    sub_100052374(&qword_10015B6E8, &unk_100110F60);
    sub_100040F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B6F8);
  }

  return result;
}

uint64_t sub_100041078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_100009670(a1, a2, a3 & 1);
  }

  else
  {

    return sub_10005887C(a1, a2, a3, a4);
  }
}

uint64_t sub_1000410CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_100009680(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1000588D4(a1, a2, a3, a4);
  }
}

void *sub_100041120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v38 = a4;
  v36 = sub_10004DED0(&qword_10015CE40, &qword_100113480);
  __chkstk_darwin(v36);
  v37 = &v32 - v7;
  v32 = sub_10004DED0(&qword_10015CE48, &qword_100113488);
  __chkstk_darwin(v32);
  v9 = &v32 - v8;
  v10 = sub_10004DED0(&qword_10015CE50, &qword_100113490);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_10004DED0(&qword_10015CE58, &qword_100113498);
  __chkstk_darwin(v33);
  v14 = &v32 - v13;
  v35 = sub_10004DED0(&qword_10015CE60, &qword_1001134A0);
  __chkstk_darwin(v35);
  v34 = &v32 - v15;
  v16 = sub_10004DED0(&qword_10015CE68, &qword_1001134A8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v20 = a1;
      v39 = Image.init(uiImage:)();
      v40 = 0;
      sub_100041CEC();

      _ConditionalContent<>.init(storage:)();
      v21 = v42;
      *v9 = v41;
      v9[16] = v21;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
      sub_100041D40();
      sub_100041DF0();
      v22 = v34;
      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v22, v37, &qword_10015CE60, &qword_1001134A0);
      swift_storeEnumTagMultiPayload();
      sub_100041E7C();
      _ConditionalContent<>.init(storage:)();

      return sub_1000068B0(v22, &qword_10015CE60, &qword_1001134A0);
    }

    v26 = objc_allocWithZone(ISIcon);
    v27 = String._bridgeToObjectiveC()();
    [v26 initWithBundleIdentifier:v27];

    if (qword_10015AA18 == -1)
    {
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
LABEL_8:
    v28 = qword_100169590;
    AsyncIconImage.init<>(icon:descriptor:)();
    (*(v17 + 16))(v12, v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_1000525A0(&qword_10015CE80, &qword_10015CE68, &qword_1001134A8, &protocol conformance descriptor for AsyncIconImage<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v14, v9, &qword_10015CE58, &qword_100113498);
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
    sub_100041D40();
    sub_100041DF0();
    v29 = v34;
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v14, &qword_10015CE58, &qword_100113498);
    sub_100059CA0(v29, v37, &qword_10015CE60, &qword_1001134A0);
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v29, &qword_10015CE60, &qword_1001134A0);
    return (*(v17 + 8))(v19, v16);
  }

  if (a3 == 2)
  {
    v24 = objc_allocWithZone(ISIcon);
    v25 = String._bridgeToObjectiveC()();
    [v24 initWithType:v25];

    if (qword_10015AA18 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (a1 | a2)
  {
    type metadata accessor for PrimaryAppleAccountAvatarState(0);
    swift_allocObject();
    *&v39 = sub_100041A48();
    State.init(wrappedValue:)();
    v39 = v41;
    v40 = 1;
    sub_100041CEC();

    _ConditionalContent<>.init(storage:)();
    v30 = v42;
    *v9 = v41;
    v9[16] = v30;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
    sub_100041D40();
    sub_100041DF0();
    v31 = v34;
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v31, v37, &qword_10015CE60, &qword_1001134A0);
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    _ConditionalContent<>.init(storage:)();

    return sub_1000068B0(v31, &qword_10015CE60, &qword_1001134A0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t type metadata accessor for PrimaryAppleAccountAvatarState(uint64_t a1)
{
  result = qword_10015CEE0;
  if (!qword_10015CEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000419AC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100041A48()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  ObservationRegistrar.init()();
  v5 = [objc_allocWithZone(AAAppleAccountInformationCache) init];
  *(v0 + 16) = sub_100041C64();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  sub_100094AF4(0, 0, v4, &unk_1001135C0, v9);

  return v1;
}

uint64_t sub_100041BEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041C24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041C64()
{
  if ([v0 primaryAccountSignInState] && (v1 = objc_msgSend(v0, "profilePictureCacheURL")) != 0 && (v2 = v1, v3 = objc_msgSend(objc_allocWithZone(UIImage), "initWithContentsOfFile:", v1), v2, v3))
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0x8000000000000000;
  }
}

unint64_t sub_100041CEC()
{
  result = qword_10015CE98;
  if (!qword_10015CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE98);
  }

  return result;
}

unint64_t sub_100041D40()
{
  result = qword_10015CE78;
  if (!qword_10015CE78)
  {
    sub_100052374(&qword_10015CE58, &qword_100113498);
    sub_1000525A0(&qword_10015CE80, &qword_10015CE68, &qword_1001134A8, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE78);
  }

  return result;
}

unint64_t sub_100041DF0()
{
  result = qword_10015CE88;
  if (!qword_10015CE88)
  {
    sub_100052374(&qword_10015CE90, &qword_1001134B0);
    sub_100041CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE88);
  }

  return result;
}

unint64_t sub_100041E7C()
{
  result = qword_10015CE70;
  if (!qword_10015CE70)
  {
    sub_100052374(&qword_10015CE60, &qword_1001134A0);
    sub_100041D40();
    sub_100041DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE70);
  }

  return result;
}

unint64_t sub_100041F28()
{
  result = qword_10015D010;
  if (!qword_10015D010)
  {
    sub_100052374(&qword_10015CF98, &qword_1001136D0);
    sub_1000525A0(&qword_10015D018, &qword_10015D020, &qword_100113718, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
    sub_100042010(&qword_10015D028, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D010);
  }

  return result;
}

uint64_t sub_100042010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100042058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000420A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10004DED0(&qword_10015CFA8, &qword_1001136E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = a1;
  *(&v37 + 1) = a2;
  sub_10004DED0(&qword_10015CFA0, &qword_1001136D8);
  State.wrappedValue.getter();
  v13 = v34;
  swift_getKeyPath();
  *&v37 = v13;
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 16);
  sub_100042AF8(v14);

  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v15 = Image.resizable(capInsets:resizingMode:)();
      (*(v10 + 8))(v12, v9);
      v35 = 0;
      v34 = v15;
      LOBYTE(v36) = 0;

      sub_10004DED0(&qword_10015CFB0, &qword_1001136E8);
      sub_100042C58();
      _ConditionalContent<>.init(storage:)();
      v16 = v37;
      v17 = v38;
      v18 = v39;
      v34 = v37;
      v35 = v38;
      LOBYTE(v36) = v39;
      HIBYTE(v36) = 1;
      sub_100070C40(v37, *(&v37 + 1), v38, v39);
      sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
      sub_10004DED0(&qword_10015CFD8, &qword_100113700);
      sub_100042BCC();
      sub_100042D10();
      _ConditionalContent<>.init(storage:)();
      sub_100070BD0(v14);
      sub_100070C88(v16, *(&v16 + 1), v17, v18);
    }

    else
    {
      if (v14 == 0x8000000000000000)
      {
        Image.init(_internalSystemName:)();
        (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
        Image.resizable(capInsets:resizingMode:)();

        (*(v10 + 8))(v12, v9);
        static SymbolRenderingMode.hierarchical.getter();
        v22 = type metadata accessor for SymbolRenderingMode();
        (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
        v23 = Image.symbolRenderingMode(_:)();

        sub_1000068B0(v8, &qword_10015CFA8, &qword_1001136E0);
        v24 = static Color.blue.getter();
        *&v34 = v23;
        *(&v34 + 1) = v24;
        LOBYTE(v35) = 0;

        sub_10004DED0(&qword_10015CFF0, &qword_100113708);
        sub_100042B14();
        _ConditionalContent<>.init(storage:)();
        v34 = v37;
        v35 = v38;
        v36 = 0;
        sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
        sub_10004DED0(&qword_10015CFD8, &qword_100113700);
        sub_100042BCC();
        sub_100042D10();
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        Image.init(systemName:)();
        (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
        Image.resizable(capInsets:resizingMode:)();

        (*(v10 + 8))(v12, v9);
        static SymbolRenderingMode.palette.getter();
        v25 = type metadata accessor for SymbolRenderingMode();
        (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
        v26 = Image.symbolRenderingMode(_:)();

        sub_1000068B0(v8, &qword_10015CFA8, &qword_1001136E0);
        v27 = static Color.white.getter();
        v28 = [objc_opt_self() lightGrayColor];
        v29 = Color.init(uiColor:)();
        *&v34 = v26;
        *(&v34 + 1) = v27;
        v35 = v29;
        LOBYTE(v36) = 1;

        sub_10004DED0(&qword_10015CFB0, &qword_1001136E8);
        sub_100042C58();
        _ConditionalContent<>.init(storage:)();
        v34 = v37;
        v35 = v38;
        LOBYTE(v36) = v39;
        HIBYTE(v36) = 1;
        sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
        sub_10004DED0(&qword_10015CFD8, &qword_100113700);
        sub_100042BCC();
        sub_100042D10();
        _ConditionalContent<>.init(storage:)();
      }
    }
  }

  else
  {
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    v34 = v19;
    LOBYTE(v35) = 1;

    sub_10004DED0(&qword_10015CFF0, &qword_100113708);
    sub_100042B14();
    _ConditionalContent<>.init(storage:)();
    v20 = v37;
    v21 = v38;
    v34 = v37;
    v35 = v38;
    v36 = 0;
    sub_100070CEC(v37, *(&v37 + 1), v38);
    sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
    sub_10004DED0(&qword_10015CFD8, &qword_100113700);
    sub_100042BCC();
    sub_100042D10();
    _ConditionalContent<>.init(storage:)();
    sub_100070BD0(v14);
    sub_100070D28(v20, *(&v20 + 1), v21);
  }

  result = *&v37;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  *a3 = v37;
  *(a3 + 16) = v31;
  *(a3 + 24) = v32;
  *(a3 + 25) = v33;
  return result;
}

__n128 sub_10004294C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000420A0(a1, a2, &v14);
  v12 = v14;
  v6 = v15;
  v7 = BYTE8(v15);
  v8 = BYTE9(v15);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v13[4] = v14;
  *&v13[20] = v15;
  *&v13[36] = v16;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = (a3 + *(sub_10004DED0(&qword_10015CF98, &qword_1001136D0) + 36));
  type metadata accessor for _TaskModifier();

  static TaskPriority.userInitiated.getter();
  *v10 = &unk_1001136C8;
  v10[1] = v9;
  *a3 = v12;
  *(a3 + 28) = *v13;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 25) = v8;
  *(a3 + 26) = 256;
  *(a3 + 44) = *&v13[16];
  result = *&v13[32];
  *(a3 + 60) = *&v13[32];
  *(a3 + 76) = *&v13[48];
  *(a3 + 80) = 1;
  return result;
}

uint64_t sub_100042AA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100042AF8(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_100042B14()
{
  result = qword_10015CFE8;
  if (!qword_10015CFE8)
  {
    sub_100052374(&qword_10015CFF0, &qword_100113708);
    sub_1000525A0(&qword_10015CFF8, &qword_10015D000, &qword_100113710, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFE8);
  }

  return result;
}

unint64_t sub_100042BCC()
{
  result = qword_10015CFE0;
  if (!qword_10015CFE0)
  {
    sub_100052374(&qword_10015CFD0, &qword_1001136F8);
    sub_100042B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFE0);
  }

  return result;
}

unint64_t sub_100042C58()
{
  result = qword_10015CFB8;
  if (!qword_10015CFB8)
  {
    sub_100052374(&qword_10015CFB0, &qword_1001136E8);
    sub_1000525A0(&qword_10015CFC0, &qword_10015CFC8, &qword_1001136F0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFB8);
  }

  return result;
}

unint64_t sub_100042D10()
{
  result = qword_10015D008;
  if (!qword_10015D008)
  {
    sub_100052374(&qword_10015CFD8, &qword_100113700);
    sub_100042C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D008);
  }

  return result;
}

uint64_t sub_100042DC8()
{
  sub_100052374(&qword_10015BBB0, &qword_100111998);
  sub_1000525A0(&qword_10015BBB8, &qword_10015BBB0, &qword_100111998, &protocol conformance descriptor for Toggle<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100042EB8()
{
  result = qword_10015B748;
  if (!qword_10015B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B748);
  }

  return result;
}

uint64_t sub_100042F94@<X0>(uint64_t a2@<X8>)
{
  sub_10002EAE0();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

id sub_100043008@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_100039F14(v3, v4, v5);
}

id sub_100043020()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  result = [v0 setDrawBorder:1];
  qword_100169590 = v0;
  return result;
}

uint64_t sub_1000430DC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1000548F0();
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_26;
        }
      }

      return 0;
    }

    if (v8 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 16) == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_10:
    v9 = v5 == v7 && v4 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v5 | v4)
  {
    if (v8 != 3)
    {
      return 0;
    }

    result = 0;
    if (v7 != 1 || v6)
    {
      return result;
    }
  }

  else if (v8 != 3 || (v6 | v7) != 0)
  {
    return 0;
  }

LABEL_26:
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000432A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v8 = *(a1 + 16);
  *(a2 + 16) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  sub_100039F14(v3, v2, v8);
}

__n128 sub_100043304(uint64_t a1, uint64_t a2)
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

void *sub_100043320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t sub_100043448()
{
  result = qword_10015BBD0;
  if (!qword_10015BBD0)
  {
    sub_100052374(&qword_10015BBD8, &unk_100111AF0);
    sub_100043558();
    sub_1000434D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BBD0);
  }

  return result;
}

unint64_t sub_1000434D4()
{
  result = qword_10015BBC8;
  if (!qword_10015BBC8)
  {
    sub_100052374(&qword_10015BBC0, &qword_100111AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BBC8);
  }

  return result;
}

unint64_t sub_100043558()
{
  result = qword_10015B750;
  if (!qword_10015B750)
  {
    sub_100052374(&qword_10015B740, &qword_100111160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B750);
  }

  return result;
}

uint64_t sub_1000435BC()
{
  sub_10004DED0(&qword_10015B740, &qword_100111160);
  sub_10004DED0(&qword_10015BBC0, &qword_100111AE8);
  sub_100043558();
  sub_1000434D4();
  return LabeledContent<>.init(content:label:)();
}

uint64_t sub_100043694@<X0>(uint64_t a2@<X8>)
{
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static HierarchicalShapeStyle.secondary.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100009680(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = sub_10005A7CC;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_100039F14(v3, v2, v6);
}

__n128 sub_1000437F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100043818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000430DC(v5, v7) & 1;
}

uint64_t sub_100043930()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000A924;

  return sub_1000439C8(v2, v3);
}

uint64_t sub_1000439C8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100045200, v4, v3);
}

uint64_t sub_100043A60(char a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = *(a2 + 8);

    if ((v9 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
    }

    sub_100010CD0();

    v11 = a2 + *(type metadata accessor for PrimarySettingsListItem(0) + 20);
    v14 = v11[32];
    v12 = *(v11 + 1);
    v13[0] = *v11;
    v13[1] = v12;
    sub_100043DBC(v13);
  }

  return result;
}

uint64_t sub_100043C08(char a1)
{
  v3 = *(type metadata accessor for PrimarySettingsListItem(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100043A60(a1, v4);
}

uint64_t sub_100043C78(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[4];
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (v4 | v3)
      {
        if (v9 == 3)
        {
          result = 0;
          if (v8 != 1 || v7)
          {
            return result;
          }

          goto LABEL_27;
        }
      }

      else if (v9 == 3 && (v7 | v8) == 0)
      {
        goto LABEL_27;
      }

      return 0;
    }

    if (v9 != 2)
    {
      return 0;
    }

LABEL_10:
    v12 = v4 == v8 && v3 == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (*(a1 + 16))
  {
    if (v9 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  sub_1000548F0();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100043DBC(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696D0);

  sub_10002698C(a1, &v39);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_100026A04(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v39.i64[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, v39.i64);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v39.i64);
    *(v7 + 22) = 2082;
    v11 = sub_100026A58();
    v13 = sub_100025CF0(v11, v12, v39.i64);

    *(v7 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), item: %{public}s…", v7, 0x20u);
    swift_arrayDestroy();
  }

  v43 = 0x11uLL;
  v44 = 0;
  v45 = 0;
  v46 = 6;
  if (sub_10002BB48(a1, &v43))
  {
    type metadata accessor for Preloader();
    v14 = static Preloader.shared.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = *(a1 + 16);
    *(v15 + 24) = *a1;
    *(v15 + 40) = v16;
    *(v15 + 56) = *(a1 + 32);

    sub_10002698C(a1, &v39);
    dispatch thunk of Preloader.preloadResources(completion:)();
  }

  else
  {

    sub_10002698C(a1, &v39);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    sub_100026A04(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39.i64[0] = swift_slowAlloc();
      *v19 = 136315650;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100025CF0(v20, v21, v39.i64);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v39.i64);
      *(v19 + 22) = 2082;
      v23 = sub_100026A58();
      v25 = sub_100025CF0(v23, v24, v39.i64);

      *(v19 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "…Complete (%s.%s), item: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
    }

    v41 = &type metadata for SettingsAppFeatureFlags;
    v42 = sub_10000631C();
    v39.i8[0] = 4;
    v26 = isFeatureEnabled(_:)();
    sub_10000665C(&v39);
    if (v26)
    {
      v39 = 0xFuLL;
      v40 = 0;
      v41 = 0;
      LOBYTE(v42) = 6;
      if (sub_10002BB48(a1, &v39))
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v2;
        v28 = *(a1 + 16);
        *(v27 + 24) = *a1;
        *(v27 + 40) = v28;
        *(v27 + 56) = *(a1 + 32);

        sub_10002698C(a1, v38);
        sub_100044438(sub_1000A5228, v27);
      }

      else
      {

        sub_10002698C(a1, v38);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        sub_100026A04(a1);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v38[0] = swift_slowAlloc();
          *v31 = 136315650;
          v32 = _typeName(_:qualified:)();
          v34 = sub_100025CF0(v32, v33, v38);

          *(v31 + 4) = v34;
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v38);
          *(v31 + 22) = 2082;
          v35 = sub_100026A58();
          v37 = sub_100025CF0(v35, v36, v38);

          *(v31 + 24) = v37;
          _os_log_impl(&_mh_execute_header, v29, v30, "…Complete (%s.%s), item: %{public}s", v31, 0x20u);
          swift_arrayDestroy();
        }
      }
    }
  }
}

void sub_100044438(uint64_t a1, uint64_t a2)
{
  if ((byte_1001697D0 & 1) == 0)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

    v7 = [objc_allocWithZone(AMSEngagement) initWithBag:v6];
    v8 = objc_allocWithZone(AMSEngagementPlacementInfo);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithPlacement:v9 context:0];

    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100115DD0;
    *(v11 + 32) = v10;
    v12 = objc_allocWithZone(AMSEngagementMessageEvent);
    v13 = v10;
    v14 = String._bridgeToObjectiveC()();
    sub_100008294(0, &qword_10015EB48, AMSEngagementPlacementInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [v12 initWithServiceType:v14 placementInfo:isa];

    v17 = [v7 enqueueMessageEvent:v16];
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v20[4] = sub_1000A5748;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100017078;
    v20[3] = &unk_1001504D8;
    v19 = _Block_copy(v20);
    sub_1000499DC(a1, a2);

    [v17 addFinishBlock:v19];
    _Block_release(v19);
  }
}

uint64_t sub_10004470C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004474C()
{
  v1 = *(type metadata accessor for SettingsApp(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044890()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044924()
{
  v1 = *(type metadata accessor for SettingsApplicationDebugRoot(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044A44()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100044A84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044AC4()
{
  v1 = (type metadata accessor for PrimarySettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1000943D8(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[8];
  v6 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000C3788, 0, 0);
}

uint64_t sub_100044CC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A924;

  return sub_100015138(a1, v4);
}

uint64_t sub_100044D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100098CC4(9);
  }

  return result;
}

uint64_t sub_100044DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_100044F14(a1, v4, v5, v6);
}

uint64_t sub_100044E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots;
  v5 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100044F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v4[9] = swift_task_alloc();
  v4[10] = sub_10004DED0(&qword_10015CF70, &qword_1001135D0);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return _swift_task_switch(sub_100045024, v6, v5);
}

uint64_t sub_100045024()
{
  v1 = v0[11];
  v2 = [objc_opt_self() defaultCenter];
  v3 = NSNotificationCenter.notifications(named:object:)();

  v0[6] = v3;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_100042010(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications, &protocol conformance descriptor for NSNotificationCenter.Notifications);
  AsyncSequence.debounce<>(for:tolerance:)();

  v4 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[16] = v4;
  sub_1000068B0(v1, &qword_10015CF70, &qword_1001135D0);
  v0[5] = v4;
  swift_beginAccess();
  v0[17] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[18] = v5;
  v6 = sub_10004DED0(&qword_10015CF80, &unk_1001135D8);
  *v5 = v0;
  v5[1] = sub_10007034C;
  v7 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v7, v6);
}

uint64_t sub_100045200()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  sub_10004DED0(&qword_10015CFA0, &qword_1001136D8);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10006F474;

  return sub_100045328();
}

uint64_t sub_100045328()
{
  v1[31] = v0;
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v3;
  v1[34] = v2;

  return _swift_task_switch(sub_1000455B8, v3, v2);
}

void sub_1000453C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v14 = v2;
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch;
  v5 = *(v2 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 type];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v15._countAndFlagsBits = v8;
    v15._object = v10;
    if (sub_10004DE84(v15) != 4)
    {
      if (*(v3 + v4))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v14 = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v12 = *(v3 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject);
      v13 = qword_10015AB30;

      if (v13 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100020FC4(v12, v14);

      PassthroughSubject.send(_:)();
    }
  }
}

uint64_t sub_1000455B8()
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v1 = [objc_opt_self() defaultStore], (v0[35] = v1) == 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_100045C84;
    v3 = swift_continuation_init();
    v0[25] = sub_10004DED0(&qword_10015C468, &unk_100112460);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10001F6FC;
    v0[21] = &unk_10014F108;
    v0[22] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }
}

unint64_t sub_10004573C()
{
  result = qword_10015D480;
  if (!qword_10015D480)
  {
    type metadata accessor for SettingsAppSceneDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D480);
  }

  return result;
}

uint64_t sub_100045794(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_100045888()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_100045920(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100045960(uint64_t result, int a2, int a3)
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

uint64_t sub_1000459A0(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100045B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100045BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CellularTelephonyStateSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellularTelephonyStateSnapshot(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100045C84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_10006FD5C;
  }

  else
  {
    v5 = sub_10006F618;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100045DB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

void sub_100045DCC()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0];
}

void sub_100045E64()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169640);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v33[0] = v29;
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = v3;
    v15 = sub_100025CF0(v12, v13, v33);

    *(v11 + 4) = v15;
    v3 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245B0, v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    v2 = v30;
  }

  swift_getKeyPath();
  v33[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v17 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v16[*(v17 + 20)], v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v3;
      v22 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2113;
      v23 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
      *(v20 + 14) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Calling will resign active on %{private,mask.hash}@.", v20, 0x16u);
      sub_1000068B0(v22, &unk_10015F9C0, &unk_100115230);
      v3 = v30;
    }

    v24 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    if ([v24 respondsToSelector:"willResignActive"])
    {
      [v24 willResignActive];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v7, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v31;
  (*(v3 + 16))(v31, v26, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v27, v2);
  sub_100046A58(v1);
}

uint64_t sub_100046400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100046460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000464C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100046520(uint64_t a1, const char *a2, SEL *a3)
{
  v37 = a2;
  v5 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for PreferencesControllerRecipe();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v13 + 44);
  v18 = v8;
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v15[v17] != v43[0])
  {
    v41 = (v9 + 32);
    v42 = (v9 + 56);
    v40 = (v9 + 8);
    *&v19 = 141558275;
    v34 = v19;
    v35 = v7;
    v36 = a3;
    v38 = v11;
    v39 = v8;
    do
    {
      v21 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v22, v44);
      v21(v43, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v44, v43);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v23 = swift_dynamicCast();
      v24 = *v42;
      if (v23)
      {
        v24(v7, 0, 1, v18);
        (*v41)(v11, v7, v18);
        v25 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
        if (v25)
        {
          v26 = v25;
          if (qword_10015AA98 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_10000659C(v27, qword_100169640);
          v28 = v26;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = v34;
            *(v31 + 4) = 1752392040;
            *(v31 + 12) = 2113;
            *(v31 + 14) = v28;
            *v32 = v26;
            v33 = v28;
            _os_log_impl(&_mh_execute_header, v29, v30, v37, v31, 0x16u);
            sub_1000068B0(v32, &unk_10015F9C0, &unk_100115230);
            a3 = v36;

            v7 = v35;
          }

          if ([v28 respondsToSelector:*a3])
          {
            [v28 *a3];
          }

          v18 = v39;
          v11 = v38;
          (*v40)(v38, v39);
        }

        else
        {
          (*v40)(v11, v18);
        }
      }

      else
      {
        v24(v7, 1, 1, v18);
        sub_1000068B0(v7, &qword_10015EEE0, &qword_1001160B0);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v15[v17] != v43[0]);
  }

  return sub_1000068B0(v15, &qword_10015EF00, &qword_1001160C8);
}

uint64_t sub_100046A2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100046A58(void *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169640);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100025CF0(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245B0, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
  }
}

void *sub_100046C64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100046C78@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100046D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
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

uint64_t sub_100046DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
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

uint64_t sub_100046F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046FF8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004708C()
{
  v1 = *(type metadata accessor for SettingsApp(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_1000471F0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100020ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100047224()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004725C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FamilyRowStatus();
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

uint64_t sub_10004736C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FamilyRowStatus();
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

uint64_t sub_10004747C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000474E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100047568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015B840, &qword_100111370);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015B848, &qword_100111378);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000476A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015B840, &qword_100111370);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015B848, &qword_100111378);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100047830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListItemModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000478D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListItemModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000479C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100047B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100047BF0()
{
  v1 = (type metadata accessor for PrimarySettingsListSection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[7];
  sub_100025CD8(*v5, *(v5 + 8), *(v5 + 16));

  v6 = *(type metadata accessor for PrimarySettingsListSectionModel(0) + 24);
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_100047E0C()
{
  v1 = (sub_10004DED0(&qword_10015CDC8, &qword_100113218) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();
  v11 = v0 + v3;
  v12 = sub_10004DED0(&qword_10015C918, &qword_100112B80);
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  sub_10004DED0(&qword_10015CDB8, &qword_100113208);

  v13 = sub_10004DED0(&qword_10015CDC0, &qword_100113210);
  v14 = v11 + *(v13 + 68);
  v15 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_10004DED0(&qword_10015CDB0, &qword_100113200);

  v16 = v11 + *(v13 + 72);
  v17 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  (*(*(v17 - 8) + 8))(v16, v17);
  sub_10004DED0(&qword_10015CDA8, &unk_1001131F0);

  v18 = v11 + v1[15];
  v19 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  (*(*(v19 - 8) + 8))(v18, v19);
  sub_10004DED0(&qword_10015CDA0, &qword_1001131E8);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_100048134(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x80000001001225B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_100048164()
{
  sub_100052374(&qword_10015D030, &qword_1001137D8);
  sub_1000525A0(&qword_10015D048, &qword_10015D030, &qword_1001137D8, &protocol conformance descriptor for List<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000481FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000482C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_10004839C()
{
  sub_100052374(&qword_10015D128, &qword_100113920);
  sub_1000525A0(&qword_10015D168, &qword_10015D128, &qword_100113920, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

double sub_10004843C@<D0>(uint64_t a1@<X8>)
{
  result = 5.99244987e175;
  *a1 = xmmword_100113AA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_10004845C(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x8000000100122730;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10004848C()
{
  sub_100052374(&qword_10015D278, &qword_100113B78);
  sub_100052374(&qword_10015D270, &qword_100113B70);
  sub_100052374(&qword_10015D268, &qword_100113B68);
  sub_1000525A0(&qword_10015D290, &qword_10015D268, &qword_100113B68, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000485A4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000485F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048638(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_10004DED0(&qword_10015D500, &qword_100113D80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10004DED0(&qword_10015D508, &qword_100113D88);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for SettingsNavigationEventRecord();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1000487B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_10004DED0(&qword_10015D500, &qword_100113D80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10004DED0(&qword_10015D508, &qword_100113D88);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for SettingsNavigationEventRecord();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100048934()
{
  v1 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  sub_10004DED0(&qword_10015B078, &unk_100113E10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  v11 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048B0C()
{
  sub_10002A748(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100048B60@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048BC4()
{
  sub_100052374(&qword_10015D5D0, &qword_100113F38);
  sub_10007A904();
  sub_10007AAA0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100048C44()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048CCC()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048E1C()
{
  v1 = type metadata accessor for SettingsSearchResultItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048F38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048F74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000490E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100049210()
{
  v1 = type metadata accessor for AMSEngagementSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v6 = *(v1 + 24);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
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

uint64_t sub_100049438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
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

uint64_t sub_1000494FC()
{
  swift_unknownObjectRelease();

  sub_10002C5C0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100049554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100049610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000496CC()
{
  v1 = type metadata accessor for TapToRadarDraft(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + v3 + 48))
  {
  }

  v5 = v0 + v3 + *(v1 + 44);

  v6 = *(sub_10004DED0(&qword_10015DE70, &qword_100115220) + 36);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000499A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000499DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000499F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100049AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100049B58()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049BE8()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PrimarySettingsList(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1000943D8(*(v0 + v8), *(v0 + v8 + 8));

  v11 = v6[8];
  v12 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100049E34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049E6C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002C5C0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100049ED4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A010()
{
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10004A050()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A090()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A0D4()
{
  v1 = type metadata accessor for SettingsAppDetailContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SettingsURLDestination(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v21 = *(*(v5 - 8) + 64);

  v8 = v0 + v3;
  v9 = *(v8 + 32);
  if (v9 != 255)
  {
    sub_10002C5C0(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), v9);
  }

  v10 = v7 & ~v6;
  v11 = v8 + *(v1 + 20);
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    v13 = type metadata accessor for SettingsPaneRecipe();
    (*(*(v13 - 8) + 8))(v11, v13);
    sub_10004DED0(&unk_10015E300, &unk_100115600);
  }

LABEL_7:
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v10, v14);
  v16 = v0 + v10 + *(v5 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 != 4)
      {

        v18 = v16 + *(type metadata accessor for EngagementLinkData(0) + 24);
LABEL_15:
        v15(v18, v14);
        goto LABEL_20;
      }

LABEL_14:
      v18 = v16;
      goto LABEL_15;
    }

    if (v17 != 6)
    {
      if (v17 == 7)
      {
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_10002C5C0(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32));
    goto LABEL_20;
  }

  if (v17 == 1)
  {
    goto LABEL_19;
  }

  if (v17 == 2 || v17 == 3)
  {
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_10002C5C0(*(v0 + v19), *(v0 + v19 + 8), *(v0 + v19 + 16), *(v0 + v19 + 24), *(v0 + v19 + 32));

  return _swift_deallocObject(v0, v19 + 33, v2 | v6 | 7);
}

uint64_t sub_10004A3D4()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {

        v9 = v7 + *(type metadata accessor for EngagementLinkData(0) + 24);
LABEL_9:
        v6(v9, v5);
        goto LABEL_14;
      }

LABEL_8:
      v9 = v7;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004A5B4()
{
  v1 = type metadata accessor for SettingsAppDetailContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SettingsURLDestination(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v21 = *(*(v5 - 8) + 64);

  v8 = v0 + v3;
  v9 = *(v8 + 32);
  if (v9 != 255)
  {
    sub_10002C5C0(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), v9);
  }

  v10 = v7 & ~v6;
  v11 = v8 + *(v1 + 20);
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    v13 = type metadata accessor for SettingsPaneRecipe();
    (*(*(v13 - 8) + 8))(v11, v13);
    sub_10004DED0(&unk_10015E300, &unk_100115600);
  }

LABEL_7:
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v10, v14);
  v16 = v0 + v10 + *(v5 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 != 4)
      {

        v18 = v16 + *(type metadata accessor for EngagementLinkData(0) + 24);
LABEL_15:
        v15(v18, v14);
        goto LABEL_20;
      }

LABEL_14:
      v18 = v16;
      goto LABEL_15;
    }

    if (v17 != 6)
    {
      if (v17 == 7)
      {
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_10002C5C0(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32));
    goto LABEL_20;
  }

  if (v17 == 1)
  {
    goto LABEL_19;
  }

  if (v17 == 2 || v17 == 3)
  {
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v10 + v21) & 0xFFFFFFFFFFFFFFF8;

  sub_10002C5C0(*(v0 + v19 + 8), *(v0 + v19 + 16), *(v0 + v19 + 24), *(v0 + v19 + 32), *(v0 + v19 + 40));

  return _swift_deallocObject(v0, v19 + 41, v2 | v6 | 7);
}

uint64_t sub_10004A8B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A8E8()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {

        v9 = v7 + *(type metadata accessor for EngagementLinkData(0) + 24);
LABEL_9:
        v6(v9, v5);
        goto LABEL_14;
      }

LABEL_8:
      v9 = v7;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004AAD8()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {

        v9 = v7 + *(type metadata accessor for EngagementLinkData(0) + 24);
LABEL_9:
        v6(v9, v5);
        goto LABEL_14;
      }

LABEL_8:
      v9 = v7;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:
  v10 = (v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_10002C5C0(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), *(v0 + v10 + 24), *(v0 + v10 + 32));

  return _swift_deallocObject(v0, v10 + 33, v2 | 7);
}

uint64_t sub_10004AD08()
{

  sub_10002C5C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10004AD50()
{
  v1 = (type metadata accessor for EngagementLinkData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AE4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AE98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015F010, &qword_100116390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015F018, &qword_100116398);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004AFD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015F010, &qword_100116390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015F018, &qword_100116398);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004B138()
{
  swift_unknownObjectRelease();

  sub_10002C5C0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004B188()
{
  v1 = type metadata accessor for SettingsNavigationSplitView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  v9 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004B324()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004B384()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B3BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B3FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B434()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004B518()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B558()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004B6C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B6F8()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004B7DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B81C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004B984()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004B9D0()
{
  v1 = sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004BB38()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004BC08()
{
  v1 = (sub_10004DED0(&qword_10015FF60, &qword_100117580) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();
  v11 = v0 + v3;
  v12 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[19];
  v14 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[20];
  v16 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10004BE2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004BE6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BEA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004BEEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BF50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BF8C()
{
  v1 = sub_10004DED0(&qword_1001602F0, &qword_100117908);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C024()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C06C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004C0A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 settingsUIVisible];
  *a2 = result;
  return result;
}

uint64_t sub_10004C0D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C168()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C1A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004C1E8()
{
  v1 = sub_10004DED0(&qword_100160758, &unk_100117C60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C2B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C2F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C330()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C370()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C3B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C3F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C444()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C51C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C554()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C58C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004C670()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C6C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C6FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004C874(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004C8EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10004C978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10004C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t sub_10004CA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

void sub_10004CC90(uint64_t a1)
{
  v2 = +[NSThread isMainThread];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[2];
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {

    dispatch_async(&_dispatch_main_q, v3);
  }
}

NSArray *__cdecl sub_10004CEA8(id a1, ACAccount *a2)
{
  v2 = [(ACAccount *)a2 identifier];
  v3 = [NSArray na_arrayWithSafeObject:v2];

  return v3;
}

void sub_10004CF08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained groupsForPrimaryAccount:*(a1 + 32) secondaryAccounts:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  (*(*(a1 + 48) + 16))();
}

Swift::Int sub_10004CF90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004D050(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10004D0FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004D1B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004DE84(*a1);
  *a2 = result;
  return result;
}

void sub_10004D1E8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000068;
  v3 = 0x746F6F7465756C62;
  v4 = 0xE800000000000000;
  v5 = 0x72616C756C6C6563;
  if (*v1 != 2)
  {
    v5 = 0x79726574746162;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
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

uint64_t sub_10004D26C(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10004D2C0(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10004D318@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_10004D340(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004D3B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004D438@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10004D47C(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE30, type metadata accessor for CSSearchQueryError, &unk_10010F774);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004D4E8(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE30, type metadata accessor for CSSearchQueryError, &unk_10010F774);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004D558(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10004D5DC(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004D648(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004D6B4(void *a1, uint64_t a2)
{
  v4 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004D768(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004D7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D844(uint64_t a1)
{
  sub_10004E018(&qword_10015AD78, type metadata accessor for Name, &unk_10010F0C0);
  sub_10004E018(&qword_10015AD80, type metadata accessor for Name, &unk_10010F060);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004D900(uint64_t a1)
{
  sub_10004E018(&qword_10015D3B0, type metadata accessor for LaunchOptionsKey, &unk_10010F3CC);
  sub_10004E018(&qword_10015AD60, type metadata accessor for LaunchOptionsKey, &unk_10010F320);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004D9BC(uint64_t a1)
{
  sub_10004E018(&qword_10015ACD8, type metadata accessor for UIBackgroundTaskIdentifier, &unk_10010EDEC);
  sub_10004E018(&qword_10015ACE0, type metadata accessor for UIBackgroundTaskIdentifier, &unk_10010ED8C);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DA78(uint64_t a1)
{
  sub_10004E018(&qword_10015AE78, type metadata accessor for OpenExternalURLOptionsKey, &unk_10010F860);
  sub_10004E018(&qword_10015AE80, type metadata accessor for OpenExternalURLOptionsKey, &unk_10010F568);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DB34@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10004DB7C(uint64_t a1)
{
  sub_10004E018(&qword_10015AD68, type metadata accessor for FLItemGroup, &unk_10010F228);
  sub_10004E018(&qword_10015AD70, type metadata accessor for FLItemGroup, &unk_10010F1C8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004DCBC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10004DCF8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004DD4C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10004DDFC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_10004DE84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CB68, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004DED0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10004DF34()
{
  result = qword_10015ACB8;
  if (!qword_10015ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015ACB8);
  }

  return result;
}

uint64_t sub_10004E018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004E0D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004E0F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_10004E674()
{
  result = qword_10015AE58;
  if (!qword_10015AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015AE58);
  }

  return result;
}

void sub_10004E7E0()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x746F6F7465756C42;
  v1._object = 0xE900000000000068;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9E0 != -1)
  {
    swift_once();
  }

  v3 = qword_100169528;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169508 = v8;
}

void sub_10004E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v6 = [objc_opt_self() mainBundle];
    v17 = 0x800000010011EB70;
    if (wapiCapability)
    {
      v7 = 1312902231;
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0x69462D6957;
      v8 = 0xE500000000000000;
    }

    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = 0xD000000000000014;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v6, v9, *(&v17 - 1));

    if (qword_10015A9E8 != -1)
    {
      swift_once();
    }

    v11 = qword_100169530;
    v12 = objc_allocWithZone(UIApplicationShortcutItem);
    v13 = v11;
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v12 initWithType:v14 localizedTitle:v15 localizedSubtitle:0 icon:v13 userInfo:0];

    qword_100169510 = v16;
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EAE8()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x72616C756C6C6543;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100169538;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169518 = v8;
}

void sub_10004EC4C()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x79726574746142;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9F8 != -1)
  {
    swift_once();
  }

  v3 = qword_100169540;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169520 = v8;
}

void sub_10004EDB0()
{
  v0 = objc_allocWithZone(SBSApplicationShortcutSystemPrivateIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSystemImageName:v1];

  v3 = [objc_allocWithZone(UIApplicationShortcutIcon) initWithSBSApplicationShortcutIcon:v2];
  qword_100169528 = v3;
}

void sub_10004EE5C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() iconWithSystemImageName:v0];

  qword_100169538 = v1;
}

void sub_10004EEF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() iconWithSystemImageName:v5];

  *a4 = v6;
}

uint64_t sub_10004EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for SettingsApp(0);
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  v5 = v3 - 8;
  v50 = v3 - 8;
  v54 = v4;
  __chkstk_darwin(v3 - 8);
  v52 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsNavigationSplitView(0);
  __chkstk_darwin(v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_10015AF88, &qword_10010F978);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  __chkstk_darwin(v10);
  v13 = v46 - v12;
  v14 = sub_10004DED0(&qword_10015AF80, &qword_10010F970);
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  __chkstk_darwin(v14);
  v51 = v46 - v16;
  v17 = sub_10004DED0(&qword_10015AF78, &qword_10010F968);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  __chkstk_darwin(v17);
  v53 = v46 - v19;
  v20 = (a1 + *(v5 + 40));
  v21 = v20[1];
  v63 = *v20;
  v64 = v21;
  v22 = v63;
  v47 = v63;
  v46[1] = sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();

  *v9 = swift_getKeyPath();
  *(v9 + 1) = swift_getKeyPath();
  v23 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v24 = sub_100004C44(&qword_10015AF98, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  v48 = v23;
  v49 = v24;
  *(v9 + 2) = Environment.init<A>(_:)();
  v9[24] = v25 & 1;
  v26 = v7[7];
  *&v9[v26] = swift_getKeyPath();
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  swift_storeEnumTagMultiPayload();
  v27 = &v9[v7[8]];
  type metadata accessor for SettingsAppModel(0);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  *v27 = Environment.init<A>(_:)();
  v27[8] = v28 & 1;
  *&v9[v7[9]] = 0;
  type metadata accessor for SettingsAppNavigationModel(0);
  sub_100004C44(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel, &unk_100115EA0);
  Bindable<A>.init(wrappedValue:)();
  v63 = v22;
  v64 = v21;
  State.wrappedValue.getter();
  v29 = sub_100004C44(&qword_10015AF90, type metadata accessor for SettingsNavigationSplitView, &unk_1001163C0);
  View.onOpenURL(perform:)();

  sub_10000C3C0(v9);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v52;
  sub_1000095A8(a1, v52);
  v31 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v32 = swift_allocObject();
  sub_10000960C(v30, v32 + v31);
  v63 = v7;
  v64 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v56;
  View.onContinueUserActivity(_:perform:)();

  (*(v57 + 8))(v13, v35);
  v36 = (a1 + *(v50 + 36));
  v38 = *v36;
  v37 = v36[1];
  v63 = v38;
  v64 = v37;
  sub_10004DED0(&qword_10015B050, &qword_10010FA28);
  State.wrappedValue.getter();
  v63 = v35;
  v64 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v58;
  v43 = v48;
  v42 = v49;
  View.environment<A>(_:)();

  (*(v59 + 8))(v34, v41);
  v63 = v47;
  v64 = v21;
  State.wrappedValue.getter();

  type metadata accessor for SettingsOmniSearchViewModel(0);
  v63 = v41;
  v64 = v43;
  v65 = v39;
  v66 = v42;
  swift_getOpaqueTypeConformance2();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  v44 = v60;
  View.environment<A>(_:)();

  return (*(v61 + 8))(v40, v44);
}

uint64_t sub_10004F6F4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1000095A8(a2, v7);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  sub_10000960C(v7, v15 + v14);
  sub_100094AF4(0, 0, v10, &unk_10010FB70, v15);
}

uint64_t sub_10004F8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for URL();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v8;
  v5[28] = v7;

  return _swift_task_switch(sub_10004FA0C, v8, v7);
}

uint64_t sub_10004FA0C()
{
  v1 = [*(v0 + 144) userInfo];
  if (!v1)
  {

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = v4;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v5 = sub_100017DC0(v0 + 16), (v6 & 1) == 0))
  {

    sub_100017E04(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_10;
  }

  sub_10001EE30(*(v3 + 56) + 32 * v5, v0 + 56);
  sub_100017E04(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_10:

LABEL_12:
    sub_1000068B0(v0 + 56, &qword_10015C8D0, &unk_100116750);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    *(v0 + 232) = v7;
    *(v0 + 240) = type metadata accessor for SettingsApp(0);
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_10004FC60;
    v10 = *(v0 + 200);

    return sub_10007DA2C(v10, v8, v7);
  }

LABEL_13:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10004FC60()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_10004FDA4, v3, v2);
}

uint64_t sub_10004FDA4()
{
  v1 = v0[25];
  v2 = v0[24];

  sub_1000527CC(v1, v2);
  v3 = type metadata accessor for SettingsSearchResultItem();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[24];
    sub_1000068B0(v0[25], &qword_10015B0E8, &qword_100118670);
  }

  else
  {
    v6 = v0[30];
    v7 = v0[24];
    v18 = v0[25];
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[19];
    SettingsSearchResultItem.url.getter();
    (*(v4 + 8))(v7, v3);
    (*(v11 + 32))(v8, v9, v10);
    v13 = (v12 + *(v6 + 32));
    v15 = *v13;
    v14 = v13[1];
    v0[15] = v15;
    v0[16] = v14;
    sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
    State.wrappedValue.getter();
    sub_10005294C(v8);
    v5 = v18;

    (*(v11 + 8))(v8, v10);
  }

  sub_1000068B0(v5, &qword_10015B0E8, &qword_100118670);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10004FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v47 = sub_10004DED0(&qword_10015AFD0, &qword_10010F990);
  __chkstk_darwin(v47);
  v40 = &v32 - v3;
  v4 = sub_10004DED0(&qword_10015AFD8, &qword_10010F998);
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v38 = &v32 - v5;
  v41 = sub_10004DED0(&qword_10015AFE0, &qword_10010F9A0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v32 - v6;
  v37 = sub_10004DED0(&qword_10015AFE8, &qword_10010F9A8);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10004DED0(&qword_10015AFF0, &qword_10010F9B0);
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  static CommandGroupPlacement.appSettings.getter();
  v50 = a1;
  sub_10004DED0(&qword_10015AFF8, &qword_10010F9B8);
  sub_1000525A0(&qword_10015B000, &qword_10015AFF8, &qword_10010F9B8, &protocol conformance descriptor for TupleView<A>);
  v34 = v12;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.newItem.getter();
  v49 = a1;
  sub_10004DED0(&qword_10015B008, &qword_10010F9C0);
  v13 = sub_100052374(&qword_10015B010, &qword_10010F9C8);
  v14 = type metadata accessor for SettingsAppModel(255);
  v15 = sub_1000525A0(&qword_10015B018, &qword_10015B010, &qword_10010F9C8, &protocol conformance descriptor for Menu<A, B>);
  v16 = sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  swift_getOpaqueTypeConformance2();
  v33 = v8;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  v48 = a1;
  sub_10004DED0(&qword_10015B020, &qword_10010F9D0);
  v17 = sub_100052374(&qword_10015B028, &unk_100113980);
  v18 = sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  v51 = v17;
  v52 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v35;
  CommandGroup.init(before:addition:)();
  static CommandGroupPlacement.textFormatting.getter();
  v20 = v38;
  CommandGroup.init(replacing:addition:)();
  v21 = v47[12];
  v22 = v47[16];
  v23 = v47[20];
  v24 = v40;
  (*(v45 + 16))(v40, v12, v46);
  v25 = v36;
  v26 = v37;
  (*(v36 + 16))(&v24[v21], v8, v37);
  v27 = v39;
  v28 = v41;
  (*(v39 + 16))(&v24[v22], v19, v41);
  v30 = v42;
  v29 = v43;
  (*(v42 + 16))(&v24[v23], v20, v43);
  TupleCommandContent.init(_:)();
  (*(v30 + 8))(v20, v29);
  (*(v27 + 8))(v19, v28);
  (*(v25 + 8))(v33, v26);
  return (*(v45 + 8))(v34, v46);
}

id sub_100050674@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015B080, &qword_10010FA98);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v44 - v6;
  v7 = sub_10004DED0(&qword_10015B088, &qword_10010FAA0);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v45 = &v44 - v8;
  v9 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  v10 = __chkstk_darwin(v9 - 8);
  v58 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v44 - v12;
  v13 = type metadata accessor for SettingsApp(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v52 = sub_10004DED0(&qword_10015B098, &qword_10010FAB0);
  v16 = *(v52 - 8);
  v17 = __chkstk_darwin(v52);
  v54 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  sub_1000095A8(a1, &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  sub_10000960C(&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v44 = a1;
  v60 = a1;
  sub_10004DED0(&qword_10015B0A0, &qword_10010FAB8);
  sub_1000525A0(&qword_10015B0A8, &qword_10015B0A0, &qword_10010FAB8, &protocol conformance descriptor for Label<A, B>);
  v53 = v20;
  Button.init(action:label:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    if (appleInternalInstallCapability)
    {
      sub_1000095A8(v44, &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = swift_allocObject();
      sub_10000960C(&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v21);
      sub_10004DED0(&qword_10015B0B8, &qword_100111410);
      sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410, &protocol conformance descriptor for TupleView<A>);
      v27 = v46;
      Button.init(action:label:)();
      v28 = v49;
      KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
      v29 = static EventModifiers.command.getter();
      EventModifiers.init(rawValue:)();
      EventModifiers.init(rawValue:)();
      if (EventModifiers.init(rawValue:)() != v29)
      {
        EventModifiers.init(rawValue:)();
      }

      sub_1000525A0(&qword_10015B0C8, &qword_10015B080, &qword_10010FA98, &protocol conformance descriptor for Button<A>);
      v30 = v45;
      v31 = v48;
      View.keyboardShortcut(_:modifiers:)();
      (*(v50 + 8))(v28, v51);
      (*(v47 + 8))(v27, v31);
      v33 = v55;
      v32 = v56;
      v34 = v57;
      (*(v56 + 32))(v55, v30, v57);
      v35 = 0;
    }

    else
    {
      v35 = 1;
      v32 = v56;
      v34 = v57;
      v33 = v55;
    }

    (*(v32 + 56))(v33, v35, 1, v34);
    v36 = *(v16 + 16);
    v38 = v53;
    v37 = v54;
    v39 = v52;
    v36(v54, v53, v52);
    v40 = v58;
    sub_100046F88(v33, v58);
    v41 = v59;
    v36(v59, v37, v39);
    v42 = sub_10004DED0(&qword_10015B0B0, &qword_10010FAC0);
    sub_100046F88(v40, &v41[*(v42 + 48)]);
    sub_100046FF8(v33);
    v43 = *(v16 + 8);
    v43(v38, v39);
    sub_100046FF8(v40);
    return (v43)(v37, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100050D58(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = (a1 + *(type metadata accessor for SettingsApp(0) + 32));
  v7 = *v5;
  v6 = v5[1];
  v11[2] = v7;
  v11[3] = v6;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10005294C(v4);

    return (*(v9 + 8))(v4, v8);
  }

  return result;
}

uint64_t sub_100050EE8()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType._currentDevice.getter();
  v4 = UTType.identifier.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  sub_100052614();
  v7 = sub_100051F04(v4, v6);
  v8 = [v7 name];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t sub_10005115C(uint64_t a1)
{
  type metadata accessor for SettingsApp(0);
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();

  v1 = sub_100010CD0();

  swift_getKeyPath();
  sub_100004C44(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier];

  State.wrappedValue.getter();
  if (v2 == 3)
  {
    v3 = 10;
  }

  else
  {
    v3 = 3;
  }

  sub_100010CD0();

  sub_1000951B0(v3);
}

uint64_t sub_1000512F8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10010F8B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0xD000000000000013;
  *(a1 + 40) = 0x800000010011EC60;
  *(a1 + 48) = 0;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  sub_100009670(0x654D206775626544, 0xEA0000000000756ELL, 0);

  sub_100009670(0xD000000000000013, 0x800000010011EC60, 0);

  sub_100009680(0xD000000000000013, 0x800000010011EC60, 0);

  sub_100009680(0x654D206775626544, 0xEA0000000000756ELL, 0);
}

uint64_t sub_1000513F8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B010, &qword_10010F9C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-v4];
  v11 = a1;
  sub_10004DED0(&qword_10015B038, &qword_100116910);
  sub_100007108();
  Menu.init(content:label:)();
  v6 = (a1 + *(type metadata accessor for SettingsApp(0) + 32));
  v8 = *v6;
  v7 = v6[1];
  v12 = v8;
  v13 = v7;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  type metadata accessor for SettingsAppModel(0);
  sub_1000525A0(&qword_10015B018, &qword_10015B010, &qword_10010F9C8, &protocol conformance descriptor for Menu<A, B>);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  View.environment<A>(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10005161C(uint64_t a1)
{
  v9[1] = *(a1 + *(type metadata accessor for SettingsApp(0) + 28) + 8);
  sub_10004DED0(&qword_10015B050, &qword_10010FA28);
  State.wrappedValue.getter();
  v1 = SettingsZeroKeywordNavigationItemsProvider.recents.getter();

  v9[0] = v1;
  v2 = sub_10004DED0(&qword_10015B058, &qword_100116920);
  v3 = type metadata accessor for URL();
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v5 = sub_1000525A0(&qword_10015B060, &qword_10015B058, &qword_100116920, &protocol conformance descriptor for [A]);
  v6 = sub_100004C44(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem, &unk_100113DB8);
  v7 = sub_100004C44(&qword_10015B068, &type metadata accessor for SettingsNavigationEventRecord, &protocol conformance descriptor for SettingsNavigationEventRecord);
  return ForEach<>.init(_:content:)(v9, sub_1000517B4, 0, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000517B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v5 = v4[7];
  v6 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for SettingsAppModel(0);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v7 & 1;
  v8 = v4[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  swift_storeEnumTagMultiPayload();
  v9 = v4[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B078, &unk_100113E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100051930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsApp(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  sub_1000095A8(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_10000960C(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:modifiers:)();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100051BFC(uint64_t a1)
{
  type metadata accessor for SettingsApp(0);
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v1 = *(v10 + 24);

  v2 = *(v1 + 16);

  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    State.wrappedValue.getter();

    sub_1000EE9F4(0, 0xE000000000000000);
  }

  State.wrappedValue.getter();
  v6 = *(v10 + 24);

  v7 = *(v6 + 16);

  if (*(v7 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100051E94@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

id sub_100051F04(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t ScenePhase.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v6 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v6 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_100052234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100052304@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004EF5C(v4, a1);
}

uint64_t sub_100052374(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000523F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000EE9F4(v1, v2);
}

uint64_t sub_10005252C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsApp(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000525A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100052374(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000525E8@<X0>(uint64_t *a1@<X8>)
{
  sub_100050EE8();
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_100052614()
{
  result = qword_10015B0D0;
  if (!qword_10015B0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015B0D0);
  }

  return result;
}

uint64_t sub_100052664(void *a1)
{
  v3 = *(type metadata accessor for SettingsApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004F6F4(a1, v4);
}

uint64_t sub_1000526D4(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsApp(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_10004F8C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000527CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005283C()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24SettingsAppLaunchActions___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1000528E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

id sub_10005294C(_BYTE *a1)
{
  v2 = type metadata accessor for EngagementLinkData(0);
  __chkstk_darwin(v2 - 8);
  v137 = &v134[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v4 - 8);
  v138 = &v134[-v5];
  v142 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v142);
  v143 = &v134[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = type metadata accessor for SettingsURLDestination(0);
  __chkstk_darwin(v141);
  v144 = &v134[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SettingsURLRoute(0);
  __chkstk_darwin(v8 - 8);
  v148 = &v134[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v10 - 8);
  v149 = &v134[-v11];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v145 = &v134[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v136 = &v134[-v17];
  v18 = __chkstk_darwin(v16);
  v139 = &v134[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v134[-v21];
  v23 = __chkstk_darwin(v20);
  v146 = &v134[-v24];
  v25 = __chkstk_darwin(v23);
  v150 = &v134[-v26];
  v27 = __chkstk_darwin(v25);
  v151 = &v134[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v134[-v30];
  __chkstk_darwin(v29);
  v33 = &v134[-v32];
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_10000659C(v34, qword_1001696A0);
  v36 = *(v13 + 16);
  v152 = a1;
  v155 = v36;
  *&v156 = v13 + 16;
  v36(v33, a1, v12);

  v154 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v153 = v31;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v147 = v12;
    v41 = v22;
    v42 = v40;
    *&v159 = swift_slowAlloc();
    *v42 = 136315907;
    v43 = _typeName(_:qualified:)();
    v45 = sub_100025CF0(v43, v44, &v159);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_100025CF0(0x5255656C646E6168, 0xED0000293A5F284CLL, &v159);
    *(v42 + 22) = 2160;
    *(v42 + 24) = 1752392040;
    *(v42 + 32) = 2081;
    v46 = URL.absoluteString.getter();
    v48 = v47;
    v49 = *(v13 + 8);
    v49(v33, v147);
    v50 = sub_100025CF0(v46, v48, &v159);

    *(v42 + 34) = v50;
    _os_log_impl(&_mh_execute_header, v37, v38, "Start (%s.%s) url: '%{private,mask.hash}s'…", v42, 0x2Au);
    swift_arrayDestroy();
    v31 = v153;

    v22 = v41;
    v12 = v147;
  }

  else
  {

    v49 = *(v13 + 8);
    v49(v33, v12);
  }

  v51 = v13;
  sub_1000543E4(&qword_10015B290, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v52 = v152;
  v53 = v149;
  Array.first<A, B>(for:)();
  v54 = (*(v51 + 48))(v53, 1, v12);
  v55 = v150;
  if (v54 == 1)
  {
    sub_1000541DC(v53);
    v56 = (v155)(v31, v52, v12);
  }

  else
  {
    v57 = v151;
    v149 = *(v51 + 32);
    (v149)(v151, v53, v12);
    v58 = v52;
    v59 = v155;
    v155(v55, v58, v12);
    v60 = v146;
    v59(v146, v57, v12);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v140 = v51;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v135 = v62;
      v65 = v64;
      v147 = swift_slowAlloc();
      *&v159 = v147;
      *v65 = 141558787;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      v66 = URL.absoluteString.getter();
      v67 = v55;
      v68 = v60;
      v69 = v49;
      v71 = v70;
      v152 = v22;
      v69(v67, v12);
      v72 = sub_100025CF0(v66, v71, &v159);

      *(v65 + 14) = v72;
      *(v65 + 22) = 2160;
      *(v65 + 24) = 1752392040;
      *(v65 + 32) = 2081;
      v73 = URL.absoluteString.getter();
      v75 = v74;
      v69(v68, v12);
      v22 = v152;
      v76 = sub_100025CF0(v73, v75, &v159);
      v49 = v69;

      *(v65 + 34) = v76;
      _os_log_impl(&_mh_execute_header, v61, v135, "Transformed URL: from '%{private,mask.hash}s' to '%{private,mask.hash}s'", v65, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v49(v60, v12);
      v49(v55, v12);
    }

    v31 = v153;
    v56 = (v149)(v153, v151, v12);
    v51 = v140;
  }

  __chkstk_darwin(v56);
  *&v134[-16] = v31;
  v78 = sub_100053F1C(sub_100054244, &v134[-32], v77);
  if (!v78)
  {
    v22 = v145;
    v155(v145, v31, v12);
    v82 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v82, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v159 = v95;
      *v94 = 136446210;
      v96 = URL.absoluteString.getter();
      v97 = v49;
      v99 = v98;
      v97(v22, v12);
      v100 = sub_100025CF0(v96, v99, &v159);
      v49 = v97;

      *(v94 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v82, v93, "No route provider found for url '%{public}s'", v94, 0xCu);
      sub_10000665C(v95);
      goto LABEL_18;
    }

LABEL_19:

    v49(v22, v12);
    goto LABEL_43;
  }

  v80 = v148;
  (*(v79 + 16))(v31, v78, v79);
  v81 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
  {
    v155(v22, v31, v12);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v156 = v49;
      *&v159 = v85;
      *v84 = 136446466;
      swift_getMetatypeMetadata();
      v86 = _typeName(_:qualified:)();
      v88 = sub_100025CF0(v86, v87, &v159);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2082;
      v89 = URL.absoluteString.getter();
      v91 = v90;
      (v156)(v22, v12);
      v92 = sub_100025CF0(v89, v91, &v159);

      *(v84 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v82, v83, "Route provider %{public}s discarded url '%{public}s'.", v84, 0x16u);
      swift_arrayDestroy();
      v49 = v156;
LABEL_18:

LABEL_43:
      sub_100053C28(v157, v31);
      return (v49)(v31, v12);
    }

    goto LABEL_19;
  }

  v101 = v144;
  sub_1000307EC(v80, v144, type metadata accessor for SettingsURLDestination);
  v102 = v143;
  sub_100054360(&v101[*(v141 + 20)], v143);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_100046400(v102, type metadata accessor for SettingsURLDestination.Action);
        sub_1000A59A0(v101);
      }

      else
      {
        v113 = *v102;
        sub_100010CD0();
        sub_1000951B0(v113);
      }

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v127 = v139;
      (*(v51 + 32))(v139, v102, v12);
      v128 = [objc_opt_self() defaultCenter];
      isa = SSScriptSafariViewControllerDataUpdateNotification.super.isa;
      URL._bridgeToObjectiveC()(&SSScriptSafariViewControllerDataUpdateNotification);
      v131 = v130;
      [v128 postNotificationName:isa object:v130];

      v49(v127, v12);
      v112 = v101;
      goto LABEL_42;
    }

    v114 = v139;
    (*(v51 + 32))(v139, v102, v12);
    v115 = v157[2];
    v116 = qword_10015AB30;

    if (v116 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_1000188C0(v115, v159, &qword_10015B2A0, &qword_10010FCB0);

    PassthroughSubject.send(_:)();

    v117 = v114;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v161 = v102[32];
      v124 = *(v102 + 1);
      v159 = *v102;
      v160 = v124;
      v125 = *(v157[3] + 16);
      KeyPath = swift_getKeyPath();
      v147 = v12;
      *&v156 = v134;
      __chkstk_darwin(KeyPath);
      v134[-16] = 0;
      *&v134[-8] = v125;
      v158 = v125;
      sub_1000543E4(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v12 = v147;
      sub_1000A57A4(&v159);
      sub_100026A04(&v159);
      v112 = v144;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v156 = *v102;
      v140 = v51;
      v104 = v101;
      v105 = *(v102 + 2);
      v106 = *(v102 + 3);
      v107 = type metadata accessor for TaskPriority();
      v108 = v138;
      (*(*(v107 - 8) + 56))(v138, 1, 1, v107);
      v109 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();

      v110 = static MainActor.shared.getter();
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      *(v111 + 24) = &protocol witness table for MainActor;
      *(v111 + 32) = v109;
      *(v111 + 40) = v156;
      *(v111 + 56) = v105;
      *(v111 + 64) = v106;

      sub_100094AF4(0, 0, v108, &unk_10010FCA8, v111);

      v112 = v104;
LABEL_42:
      sub_100046400(v112, type metadata accessor for SettingsURLDestination);
      goto LABEL_43;
    }

    v159 = 0u;
    v160 = 0u;
    v161 = 6;
    sub_1000A57A4(&v159);
LABEL_41:
    v112 = v101;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v132 = v102;
    v133 = v137;
    sub_1000307EC(v132, v137, type metadata accessor for EngagementLinkData);
    sub_1000A71BC(v133);
    sub_100046400(v133, type metadata accessor for EngagementLinkData);
    goto LABEL_41;
  }

  v118 = v136;
  (*(v51 + 32))(v136, v102, v12);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v121 = result;
    URL._bridgeToObjectiveC()(v120);
    v123 = v122;
    [v121 handleOAuthRedirectURL:v122];

    v117 = v118;
LABEL_35:
    v49(v117, v12);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_100053C28(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_1001696A0);
  (*(v4 + 16))(v6, a2, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315907;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0x5255656C646E6168, 0xED0000293A5F284CLL, &v19);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v14 = URL.absoluteString.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_100025CF0(v14, v16, &v19);

    *(v10 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100053F1C(uint64_t (*a1)(__int128 *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9, a2);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100053FA0()
{

  v1 = OBJC_IVAR____TtC11SettingsApp16SettingsAppModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_100054064(uint64_t a1, uint64_t a2)
{
  v2[2] = swift_getKeyPath();
  type metadata accessor for SettingsAppNavigationModel(0);
  swift_allocObject();
  v2[3] = sub_100007814();
  v2[4] = static Transforming<>.toSettingsNavigation.getter();
  sub_10004DED0(&qword_10015B288, &unk_10010FC60);
  v3 = swift_allocObject();
  *(v3 + 32) = &type metadata for OAuthURLRoute;
  *(v3 + 40) = &off_1001524B8;
  *(v3 + 48) = &type metadata for ESIMProvisioningURLRoute;
  *(v3 + 56) = &off_100152368;
  *(v3 + 64) = &type metadata for FinanceScriptURLRoute;
  *(v3 + 72) = &off_1001523A0;
  *(v3 + 80) = &type metadata for FinishSetupURLRoute;
  *(v3 + 88) = &off_1001523D8;
  *(v3 + 96) = &type metadata for InternetAccountsSettingsURLRoute;
  *(v3 + 104) = &off_100152480;
  *(v3 + 112) = &type metadata for FollowUpURLRoute;
  *(v3 + 120) = &off_100152410;
  *(v3 + 128) = &type metadata for HealthToHealthDataRedirectRoute;
  *(v3 + 136) = &off_100152448;
  *(v3 + 144) = &type metadata for AppInstallationSettingsURLRoute;
  *(v3 + 152) = &off_100152330;
  *(v3 + 160) = &type metadata for PaymentsAndContactlessRedirectRoute;
  *(v3 + 168) = &off_1001524F0;
  *(v3 + 176) = &type metadata for AMSEngagementURLRoute;
  *(v3 + 184) = &off_1001522F8;
  *(v3 + 16) = xmmword_10010FBE0;
  *(v3 + 192) = &type metadata for SettingsNavigationURLRoute;
  *(v3 + 200) = &off_100152550;
  v2[5] = v3;
  ObservationRegistrar.init()();
  return v2;
}

uint64_t sub_1000541DC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054290(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000543E4(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100054360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000543E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005442C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000A924;

  return sub_1000B2F84(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100054520(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v10 == 2)
    {
      if ((v9 & 0xC0) != 0x80 || v4 != v7 || v5 != v8)
      {
        return 0;
      }
    }

    else
    {
      v15 = v9 >= 0xC0 && (v8 | v7) == 0;
      if (!v15 || v9 != 192)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    if ((v9 & 0xC0) != 0x40 || v4 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v9 >= 0x40)
    {
      return 0;
    }

    v11 = v4 == v7 && v5 == v8;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v6 ^ v9) & 1) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000545EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100054640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

BOOL sub_100054694(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1000546F0(uint64_t a1, int a2)
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

uint64_t sub_100054738(uint64_t result, int a2, int a3)
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

BOOL sub_100054788(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000547D0(v7, v8);
}

BOOL sub_1000547D0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1000548F0();
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_26;
        }
      }

      return 0;
    }

    if (v8 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 16) == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_10:
    v9 = v5 == v7 && v4 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if (a1[3] == a2[3] && a1[4] == a2[4] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return a1[5] == a2[5];
    }

    return 0;
  }

  if (!(v5 | v4))
  {
    if (v8 != 3 || (v6 | v7) != 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v8 != 3)
  {
    return 0;
  }

  result = 0;
  if (v7 == 1 && !v6)
  {
    goto LABEL_26;
  }

  return result;
}

unint64_t sub_1000548F0()
{
  result = qword_10015EF70;
  if (!qword_10015EF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015EF70);
  }

  return result;
}

__n128 sub_10005493C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100054950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100054998(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FamilyRowStatus();
  sub_100054C28();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17 == v15 && v18 == v16)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = *(a3 + 20);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100054B20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FamilyRowStatus();
  sub_100054C28();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for PrimarySettingsListFamilyLinkModel(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

unint64_t sub_100054C28()
{
  result = qword_10015B340;
  if (!qword_10015B340)
  {
    type metadata accessor for FamilyRowStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B340);
  }

  return result;
}

uint64_t sub_100054C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100054CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100054D80(v5, v7) & 1;
}

uint64_t sub_100054D80(unint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v8 = *a1;
  v7 = a1[1];
  v10 = *a2;
  v9 = *(a2 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      v6 = v8 | v7;
      if (v6)
      {
        v6 = 0;
        if (v3 != 3 || v10 != 1 || v9)
        {
          return v6;
        }
      }

      else if (v3 != 3 || v9 | v10)
      {
        return v6;
      }

      goto LABEL_3;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v11 = a1;
        v12 = a2;
        sub_1000548F0();
        v13 = v10;
        v14 = static NSObject.== infix(_:_:)();
        sub_100054F18(v10, v9, 0);
        a1 = v11;
        a2 = v12;
        if (v14)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  if (v8 != v10 || v7 != v9)
  {
    v15 = a1;
    v16 = a2;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v16;
    v18 = v17;
    a1 = v15;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_3:
  if (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}