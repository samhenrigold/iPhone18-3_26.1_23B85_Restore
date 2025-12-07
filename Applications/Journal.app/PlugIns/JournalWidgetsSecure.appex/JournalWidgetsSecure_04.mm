unint64_t sub_1000642E0()
{
  result = qword_10011FF98;
  if (!qword_10011FF98)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF98);
  }

  return result;
}

unint64_t sub_100064394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100122758, &unk_1000E2840);
    v3 = sub_1000DCB44();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007F58(v4, v13, &qword_100122760, &qword_1000E34F0);
      result = sub_1000630F0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007EAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000644D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007BC0(&qword_100123928, &unk_1000E34E0);
    v3 = sub_1000DCB44();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100063134(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000645BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100007BC0(a2, a3);
    v9 = sub_1000DCB44();
    v10 = a1 + 32;

    while (1)
    {
      sub_100007F58(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1000631BC(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100007EAC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000646D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007BC0(&qword_100123930, &unk_1000E34F8);
  v3 = sub_1000DCB44();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1000632C0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1000632C0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000647D8(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100123950, &qword_1000E3520);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100007BC0(&qword_100123958, &qword_1000E3528);
    v7 = sub_1000DCB44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100007F58(v9, v5, &qword_100123950, &qword_1000E3520);
      v11 = *v5;
      result = sub_10006332C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D98D4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetLabelStyle.Appearance(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000649D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100064A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100064AA0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1000DA374();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v12, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = sub_1000DA364(), (*(v9 + 8))(v12, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = sub_1000DA364();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v15, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = sub_1000DA364();
        v36(v15, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100064E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_100064EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t type metadata accessor for LastReportedStreaks(uint64_t a1)
{
  result = qword_100123A58;
  if (!qword_100123A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064FD4(uint64_t a1)
{
  sub_100024818(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10006505C(void *a1)
{
  v3 = sub_100007BC0(&qword_100123AA0, &qword_1000E3698);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100007E68(a1, a1[3]);
  sub_1000658A4();
  sub_1000DCDB4();
  v14 = 0;
  sub_1000DCC14();
  if (!v1)
  {
    type metadata accessor for LastReportedStreaks(0);
    v13 = 1;
    sub_1000DA084();
    sub_10003C96C(&qword_100121360, &protocol conformance descriptor for Date);
    sub_1000DCBF4();
    v12 = 2;
    sub_1000DCC14();
    v11 = 3;
    sub_1000DCBF4();
    v10 = 4;
    sub_1000DCC14();
    v9 = 5;
    sub_1000DCC14();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000652C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v4 = __chkstk_darwin(v3 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_100007BC0(&qword_100123AB0, &qword_1000E36A0);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  ReportedStreaks = type metadata accessor for LastReportedStreaks(0);
  __chkstk_darwin(ReportedStreaks);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100007E68(a1, a1[3]);
  sub_1000658A4();
  v14 = v10;
  v15 = v30;
  sub_1000DCDA4();
  if (v15)
  {
    return sub_100007FC0(a1);
  }

  v30 = a1;
  v16 = v28;
  v17 = v29;
  v36 = 0;
  v18 = v14;
  *v13 = sub_1000DCBB4();
  sub_1000DA084();
  v35 = 1;
  sub_10003C96C(&qword_100121330, &protocol conformance descriptor for Date);
  sub_1000DCB94();
  v19 = ReportedStreaks;
  sub_1000658F8(v7, v13 + *(ReportedStreaks + 20));
  v34 = 2;
  *(v13 + *(ReportedStreaks + 24)) = sub_1000DCBB4();
  v33 = 3;
  v20 = v27;
  sub_1000DCB94();
  v21 = v30;
  sub_1000658F8(v20, v13 + *(v19 + 28));
  v32 = 4;
  *(v13 + *(v19 + 32)) = sub_1000DCBB4();
  v31 = 5;
  v22 = v19;
  v23 = sub_1000DCBB4();
  (*(v16 + 8))(v18, v17);
  *(v13 + *(v22 + 36)) = v23;
  sub_100065968(v13, v26);
  sub_100007FC0(v21);
  return sub_1000659CC(v13);
}

unint64_t sub_100065728()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000011;
  if (v2 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000657C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100065B40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000657FC(uint64_t a1)
{
  v2 = sub_1000658A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065838(uint64_t a1)
{
  v2 = sub_1000658A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000658A4()
{
  result = qword_100123AA8;
  if (!qword_100123AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AA8);
  }

  return result;
}

uint64_t sub_1000658F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065968(uint64_t a1, uint64_t a2)
{
  ReportedStreaks = type metadata accessor for LastReportedStreaks(0);
  (*(*(ReportedStreaks - 8) + 16))(a2, a1, ReportedStreaks);
  return a2;
}

uint64_t sub_1000659CC(uint64_t a1)
{
  ReportedStreaks = type metadata accessor for LastReportedStreaks(0);
  (*(*(ReportedStreaks - 8) + 8))(a1, ReportedStreaks);
  return a1;
}

unint64_t sub_100065A3C()
{
  result = qword_100123AB8;
  if (!qword_100123AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AB8);
  }

  return result;
}

unint64_t sub_100065A94()
{
  result = qword_100123AC0;
  if (!qword_100123AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC0);
  }

  return result;
}

unint64_t sub_100065AEC()
{
  result = qword_100123AC8;
  if (!qword_100123AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC8);
  }

  return result;
}

uint64_t sub_100065B40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001000E9BF0 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000E9C10 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E9C30 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E9C50 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000E9C70 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000E9C90 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1000DCC74();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100065D44()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

uint64_t sub_100065E3C()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100123AD0);
  v1 = sub_100007EBC(v0, qword_100123AD0);
  if (qword_10011FA58 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100065F04()
{
  sub_1000DCD24();
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

uint64_t sub_100065FA0(uint64_t a1)
{
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_1000DBDC4();
}

Swift::Int sub_100066020(uint64_t a1)
{
  sub_1000DCD24();
  sub_1000DA0E4();
  sub_100068394(&qword_1001202E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

void *sub_1000660C8(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &off_100123000;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v52.receiver = v2;
  v52.super_class = v9;
  v10 = objc_msgSendSuper2(&v52, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v51 = _swiftEmptyArrayStorage;
    v38 = v10;
    v13 = v10;
    result = sub_1000178A8(0, v12, 0);
    v15 = 0;
    v16 = v51;
    v17 = a1 + 48;
    v39 = v12;
    v40 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v45 = *(v17 + 24);
      v46 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v43 = v21;
      v44 = v20;
      v48 = v15;
      v25 = v21;

      v49 = sub_1000DCC44();
      v50 = v26;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_1000DBFE4(v53);
      v47 = v16;
      v27 = v49;
      v28 = v50;
      v29 = v42;
      v30 = v25;

      sub_1000DA0D4();

      *v7 = v18;
      v7[1] = v19;
      v32 = v43;
      v31 = v44;
      v7[2] = 0;
      v7[3] = v31;
      v7[4] = v27;
      v7[5] = v28;
      v16 = v47;
      *(v7 + v29[9]) = v32;
      v33 = (v7 + v29[10]);
      *v33 = v45;
      v33[1] = v23;
      *(v7 + v29[11]) = v46;
      *(v7 + v29[12]) = v24;
      v51 = v16;
      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_1000178A8((v34 > 1), v35 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 2) = v35 + 1;
      result = sub_100010628(v7, v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v17 += 72;
      a1 = v40;
      if (v39 == v15)
      {

        v8 = &off_100123000;
        v11 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *(v8[351] + v11) = v16;

    return v11;
  }

  return result;
}

void sub_1000663E0()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v120 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v119 = v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v118 = v110 - v5;
  v6 = __chkstk_darwin(v4);
  v117 = v110 - v7;
  v8 = __chkstk_darwin(v6);
  v115 = v110 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v116 = v110 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v110 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v110 - v17;
  v19 = __chkstk_darwin(v16);
  v22 = v110 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v135 = v23;
  v24 = *(v23 + 2);
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return;
  }

  v122 = v24 - 1;
  if (v24 != 1)
  {
    v111 = v20;
    v110[0] = v19;
    v132 = v0;
    v114 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v112 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results;
    v130 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v131 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v113 = 0;
    v126 = v18;
    v128 = v22;
    v121 = v15;
    while (2)
    {
      v127 = v23;
      v124 = v25 + 1;
      sub_100069FE4(&v135);
      v26 = 0;
      v28 = v27 + 32;
      v125 = v27;
      v29 = *(v27 + 16);
      v129 = -1;
      v30 = 1.79769313e308;
      v31 = -1;
      v32 = v132;
LABEL_7:
      v33 = v26;
      while (v29 != v33)
      {
        if (v33 >= v29)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_93;
        }

        v34 = *(v28 + 8 * v33);
        v35 = *(v34 + 16);
        ++v33;
        if (v35)
        {
          v36 = 0;
          v37 = v34 + 32;
          v38 = v33 - 1;
          while (1)
          {
            v39 = *(v37 + 8 * v36);
            v40 = *(v32 + v131);
            if (*(v40 + 16))
            {
              v41 = sub_1000DCD14();
              v42 = -1 << *(v40 + 32);
              v43 = v41 & ~v42;
              if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
              {
                v44 = ~v42;
                v32 = v132;
                while (*(*(v40 + 48) + 8 * v43) + 1 != v33)
                {
                  v43 = (v43 + 1) & v44;
                  if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v32 = v132;
            }

LABEL_21:
            v45 = *(v32 + v130);
            if (*(v45 + 16))
            {
              v46 = sub_1000DCD14();
              v47 = -1 << *(v45 + 32);
              v48 = v46 & ~v47;
              if ((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
              {
                v49 = ~v47;
                v32 = v132;
                while (*(*(v45 + 48) + 8 * v48) != v36)
                {
                  v48 = (v48 + 1) & v49;
                  if (((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v32 = v132;
              if (v29 >= 2)
              {
LABEL_29:
                if (v36 < v38 && v38 >= 1)
                {
                  if (v39 >= v30)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v39;
                  }

                  v51 = v129;
                  if (v39 >= v30)
                  {
                    v52 = v129;
                  }

                  else
                  {
                    v52 = v36;
                  }

                  if (v39 >= v30)
                  {
                    v53 = v31;
                  }

                  else
                  {
                    v53 = v33 - 1;
                  }

                  if (v36 < v29)
                  {
                    v30 = v50;
                    v51 = v52;
                  }

                  v129 = v51;
                  if (v36 < v29)
                  {
                    v31 = v53;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v29 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v36 == v35)
            {
              v18 = v126;
              v22 = v128;
              goto LABEL_7;
            }
          }
        }
      }

      v54 = v121;
      v55 = v129;
      if (v31 == -1 && v129 == -1)
      {

LABEL_5:
        v23 = v127;
        v25 = v124;
        if (v124 != v122)
        {
          continue;
        }

        return;
      }

      break;
    }

    v56 = v127;
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v57 = *(v127 + 2);
    if (v31 >= v57)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v58 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v59 = *(v120 + 72);
      sub_100010568(v127 + v58 + v59 * v31, v22);
      if (v55 < v57)
      {
        v123 = v59;
        v60 = sub_100010568(v56 + v58 + v59 * v55, v18);
        if (v30 >= *(v132 + v114) * *(v132 + v114))
        {

          v65 = v119;
          sub_100010568(v22, v119);
          swift_beginAccess();
          v66 = v118;
          sub_10000A5E8(v118, v65);
          sub_1000105CC(v66);
          sub_100010568(v18, v65);
          sub_10000A5E8(v66, v65);
          sub_1000105CC(v66);
          swift_endAccess();
LABEL_74:
          sub_1000105CC(v18);
          sub_1000105CC(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v60);
        v110[-2] = v22;
        v110[-1] = v18;
        v61 = v113;
        v62 = sub_1000683DC(sub_10006A808, &v110[-4], v56);
        v113 = v61;
        v110[1] = v110;
        if (v63)
        {
          v129 = *(v56 + 2);
          v64 = v110[0];
        }

        else
        {
          v67 = v62 + 1;
          v64 = v110[0];
          v68 = v123;
          if (__OFADD__(v62, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v129 = v62;
          v70 = (v56 + 2);
          v69 = *(v56 + 2);
          if (v67 != v69)
          {
            v104 = v58 + v123 * v67;
            while (v67 < v69)
            {
              sub_100010568(v56 + v104, v54);
              if (sub_1000DA0B4())
              {
                sub_1000105CC(v54);
              }

              else
              {
                v105 = sub_1000DA0B4();
                sub_1000105CC(v54);
                if ((v105 & 1) == 0)
                {
                  v106 = v129;
                  if (v67 != v129)
                  {
                    if (v129 < 0)
                    {
                      goto LABEL_103;
                    }

                    v107 = v58;
                    v108 = *v70;
                    if (v129 >= *v70)
                    {
                      goto LABEL_104;
                    }

                    v109 = v129 * v123;
                    sub_100010568(v56 + v107 + v129 * v123, v111);
                    if (v67 >= v108)
                    {
                      goto LABEL_105;
                    }

                    sub_100010568(v56 + v104, v115);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v56 = sub_10004206C(v56);
                    }

                    v58 = v107;
                    sub_10006A7A4(v115, v56 + v107 + v109);
                    if (v67 >= *(v56 + 2))
                    {
                      goto LABEL_106;
                    }

                    sub_10006A7A4(v111, v56 + v104);
                    v68 = v123;
                    v106 = v129;
                  }

                  v129 = v106 + 1;
                }
              }

              ++v67;
              v70 = (v56 + 2);
              v69 = *(v56 + 2);
              v104 += v68;
              if (v67 == v69)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v71 = *(v56 + 2);
        v72 = v129 - v71;
        if (v129 <= v71)
        {
          if ((v129 & 0x8000000000000000) == 0)
          {
            v73 = *(v56 + 2);
            if (v73 >= v71)
            {
              v74 = v73 + v72;
              if (!__OFADD__(v73, v72))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v135 = v56;
                if (isUniquelyReferenced_nonNull_native && v74 <= *(v56 + 3) >> 1)
                {
                  v127 = v56;
                }

                else
                {
                  if (v73 <= v74)
                  {
                    v76 = v74;
                  }

                  else
                  {
                    v76 = v73;
                  }

                  v127 = sub_100047118(isUniquelyReferenced_nonNull_native, v76, 1, v56);
                  v135 = v127;
                }

                sub_100042094(v129, v71, 0);
                v77 = v64[9];
                v78 = v128;
                v79 = *&v128[v77];
                v80 = v79;
                v81 = v126;
                if (!v79)
                {
                  v80 = *&v126[v77];
                  v82 = v80;
                }

                v83 = *(v78 + 3);
                v84 = *(v81 + 3);
                v85 = v83 + v84;
                if (!__OFADD__(v83, v84))
                {
                  v86 = (*(v78 + 1) + *(v81 + 1)) * 0.5;
                  v87 = (*v78 + *v81) * 0.5;
                  v88 = *(v78 + 4);
                  v89 = *(v78 + 5);
                  v90 = *(v81 + 4);
                  v91 = *(v81 + 5);
                  v133 = v88;
                  v134 = v89;
                  v92 = v79;

                  v136._countAndFlagsBits = v90;
                  v136._object = v91;
                  sub_1000DBFE4(v136);
                  v93 = v133;
                  v94 = v134;
                  v95 = v116;
                  sub_1000DA0D4();
                  *v95 = v87;
                  *(v95 + 8) = v86;
                  *(v95 + 16) = v30;
                  *(v95 + 24) = v85;
                  *(v95 + 32) = v93;
                  *(v95 + 40) = v94;
                  *(v95 + v64[9]) = v80;
                  v96 = (v95 + v64[10]);
                  *v96 = 0;
                  v96[1] = 0xE000000000000000;
                  *(v95 + v64[11]) = 0;
                  *(v95 + v64[12]) = 0;
                  sub_100010568(v95, v117);
                  v97 = v127;
                  v99 = *(v127 + 2);
                  v98 = *(v127 + 3);
                  if (v99 >= v98 >> 1)
                  {
                    v97 = sub_100047118((v98 > 1), v99 + 1, 1, v127);
                  }

                  v100 = v123;
                  *(v97 + 2) = v99 + 1;
                  sub_100010628(v117, v97 + v58 + v99 * v100);
                  v127 = v97;
                  v135 = v97;
                  v101 = v116;
                  v102 = v119;
                  sub_100010568(v116, v119);
                  swift_beginAccess();
                  v103 = v118;
                  sub_10000A5E8(v118, v102);
                  sub_1000105CC(v103);
                  swift_endAccess();
                  sub_1000105CC(v101);
                  v18 = v126;
                  v22 = v128;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }
}

uint64_t sub_100066DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  if (sub_1000DA0B4())
  {
    return 1;
  }

  else
  {
    return sub_1000DA0B4() & 1;
  }
}

double *sub_100066E70()
{
  v121 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v123 = *(v121 - 1);
  v0 = __chkstk_darwin(v121);
  v126 = v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v106 - v3;
  v5 = __chkstk_darwin(v2);
  v115 = v106 - v6;
  v7 = __chkstk_darwin(v5);
  v109 = v106 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v106 - v10;
  __chkstk_darwin(v9);
  v13 = (v106 - v12);
  v132 = 0;
  v133 = 0xE000000000000000;
  if (qword_10011FA88 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = sub_1000DAFF4();
  sub_100007EBC(v14, qword_100123AD0);
  v15 = sub_1000DAFD4();
  v16 = sub_1000DC4E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v122;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = &off_100123000;
  if (*(v20 + 16))
  {
    v127 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
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
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_100010568(*(v20 + 48) + *(v123 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v121[9]);
        v32 = v31;
        sub_1000105CC(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v127 + v122);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = sub_1000D7818(*(v33 + 16), 0);
      v127 = sub_1000D85A8(&v128, v35 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v34, v33);
      v36 = v128;
      swift_bridgeObjectRetain_n();
      sub_100027E40(v36);
      if (v127 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v128 = v35;
    v13 = 0;
    sub_1000684C8(&v128);

    v38 = v128;
    v39 = *(v128 + 2);
    if (v39)
    {
      v40 = 0;
      v41 = v27 / v34;
      v118 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v37 = v123;
      v117 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v42 = v128 + v117;
      v106[2] = MKPointOfInterestCategoryReligiousSite;
      v127 = _swiftEmptyArrayStorage;
      v114 = v128;
      v113 = v39;
      v112 = v128 + v117;
      v120 = v11;
      while (1)
      {
        if (v40 >= *(v38 + 2))
        {
          goto LABEL_99;
        }

        v43 = *(v37 + 72);
        sub_100010568(&v42[v43 * v40], v11);
        v44 = *(v11 + 2);
        if (v44 >= v41)
        {
          goto LABEL_26;
        }

        v124 = v43;
        v128 = v132;
        v129 = v133;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v130 = v13;
        v131 = v11;
        sub_100007C50();
        if (sub_1000DC854())
        {
          v11 = v120;
          goto LABEL_25;
        }

        v119 = v13;
        v128 = v13;
        v129 = v11;
        v130 = 95;
        v131 = 0xE100000000000000;
        v45 = sub_1000DC824();
        if (!*(v45 + 16))
        {
          goto LABEL_101;
        }

        v46 = v45;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100042080(v46);
        }

        v11 = v120;
        v47 = *(v46 + 2);
        if (!v47)
        {
          goto LABEL_102;
        }

        *(v46 + 2) = v47 - 1;

        v48 = *(v46 + 2);
        if (!v48)
        {

          v53 = 0;
          goto LABEL_83;
        }

        v49 = 0;
        v116 = 0;
        v125 = 0;
        v50 = (v46 + 5);
        v51 = 0.0;
        v52 = 0.0;
        do
        {
          v55 = *(v50 - 1);
          v56 = *v50;
          if (v55)
          {
            v57 = 0;
          }

          else
          {
            v57 = v56 == 0xE000000000000000;
          }

          if (!v57 && (sub_1000DCC74() & 1) == 0)
          {

            v58 = sub_100067C14(v55, v56);
            if ((v59 & 1) == 0 && (v58 & 0x8000000000000000) == 0)
            {
              v60 = *(v122 + v118);
              if (v58 < *(v60 + 16))
              {
                v61 = (v60 + v117 + v58 * v124);
                v63 = *v61;
                v62 = v61[1];
                v64 = *(v61 + v121[9]);
                if (v64)
                {
                  v65 = v64;
                  if (v116 <= 0)
                  {
                    v110 = v65;
                    v66 = [v110 pointOfInterestCategory];
                    v111 = v13;
                    if (v66)
                    {
                      v67 = v66;
                      v107 = sub_1000DBF44();
                      v69 = v68;
                      v70 = sub_1000DBF44();
                      v108 = v69;
                      if (v107 == v70 && v69 == v71)
                      {

                        v13 = v111;
                        goto LABEL_38;
                      }

                      v106[1] = v71;
                      LODWORD(v107) = sub_1000DCC74();

                      v13 = v111;
                      if (v107)
                      {
                        v67 = v110;
                        goto LABEL_38;
                      }
                    }

                    v67 = v110;
                    v73 = [v110 _styleAttributes];
                    if (v73)
                    {

                      v74 = v121;
                      v75 = &v11[v121[10]];
                      v76 = v75[1];
                      v116 = *v75;
                      v110 = v76;
                      v108 = v121[8];

                      v77 = v109;
                      sub_1000DA0D4();
                      *v77 = v63;
                      *(v77 + 8) = v62;
                      *(v77 + 16) = v44;
                      *(v77 + 24) = 1;
                      v78 = v111;
                      *(v77 + 32) = v119;
                      *(v77 + 40) = v78;
                      *(v77 + v74[9]) = v64;
                      v79 = (v77 + v74[10]);
                      v80 = v110;
                      *v79 = v116;
                      v79[1] = v80;
                      *(v77 + v74[11]) = 0;
                      *(v77 + v74[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v127 = sub_100047118(0, *(v127 + 2) + 1, 1, v127);
                      }

                      v82 = *(v127 + 2);
                      v81 = *(v127 + 3);
                      if (v82 >= v81 >> 1)
                      {
                        v127 = sub_100047118((v81 > 1), v82 + 1, 1, v127);
                      }

                      v83 = v127;
                      *(v127 + 2) = v82 + 1;
                      sub_100010628(v109, v83 + v117 + v82 * v124);
                      if (v52 != 0.0)
                      {
                        v52 = v52 + (v52 - v63) / 7.0;
                      }

                      v13 = v111;
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v116 = 1;
LABEL_46:
                      v125 = v64;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v52 == 0.0)
                {
                  v52 = v63;
                }

                else
                {
                  v52 = (v52 + v63) * 0.5;
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (__OFADD__(v49++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v50 += 2;
          --v48;
        }

        while (v48);

        v42 = v112;
        if (v49 < 1)
        {
          v38 = v114;
          v39 = v113;
        }

        else
        {
          v84 = v121;
          v85 = &v11[v121[10]];
          v86 = v85[1];
          v116 = *v85;
          v87 = v125;
          v88 = v125;

          v89 = v115;
          sub_1000DA0D4();
          *v89 = v52;
          *(v89 + 8) = v51;
          *(v89 + 16) = v44;
          v90 = v119;
          *(v89 + 24) = v49;
          *(v89 + 32) = v90;
          *(v89 + 40) = v13;
          *(v89 + v84[9]) = v87;
          v91 = (v89 + v84[10]);
          *v91 = v116;
          v91[1] = v86;
          *(v89 + v84[11]) = 0;
          *(v89 + v84[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_100047118(0, *(v127 + 2) + 1, 1, v127);
          }

          v93 = *(v127 + 2);
          v92 = *(v127 + 3);
          v38 = v114;
          v39 = v113;
          v11 = v120;
          if (v93 >= v92 >> 1)
          {
            v127 = sub_100047118((v92 > 1), v93 + 1, 1, v127);
          }

          v94 = v127;
          *(v127 + 2) = v93 + 1;
          sub_100010628(v115, v94 + v117 + v93 * v124);
        }

        v53 = v125;
LABEL_83:
        v134._countAndFlagsBits = v119;
        v134._object = v13;
        sub_1000DBFE4(v134);

LABEL_25:
        v37 = v123;
LABEL_26:
        ++v40;
        sub_1000105CC(v11);
        if (v40 == v39)
        {

          goto LABEL_86;
        }
      }
    }

    v127 = _swiftEmptyArrayStorage;
    v37 = v123;
LABEL_86:
    v21 = &off_100123000;
  }

  else
  {
LABEL_20:
    v127 = _swiftEmptyArrayStorage;
    v37 = v123;
  }

  v95 = *(v21[351] + v122);
  v96 = *(v95 + 16);
  if (v96)
  {
    v97 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v98 = v95 + v97;
    v99 = *(v37 + 72);
    v125 = *(v21[351] + v122);

    do
    {
      sub_100010568(v98, v4);
      v128 = v132;
      v129 = v133;
      v101 = *(v4 + 4);
      v102 = *(v4 + 5);
      v130 = v101;
      v131 = v102;
      sub_100007C50();
      if ((sub_1000DC854() & 1) == 0)
      {
        sub_100010568(v4, v126);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_100047118(0, *(v127 + 2) + 1, 1, v127);
        }

        v104 = *(v127 + 2);
        v103 = *(v127 + 3);
        if (v104 >= v103 >> 1)
        {
          v127 = sub_100047118((v103 > 1), v104 + 1, 1, v127);
        }

        v100 = v127;
        *(v127 + 2) = v104 + 1;
        sub_100010628(v126, v100 + v97 + v104 * v99);
        v135._countAndFlagsBits = v101;
        v135._object = v102;
        sub_1000DBFE4(v135);
      }

      sub_1000105CC(v4);
      v98 += v99;
      --v96;
    }

    while (v96);
  }

  return v127;
}

unint64_t sub_100067C14(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
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

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000DCA74();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
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

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_100069548(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_100067F44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006801C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000DA0E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000680DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000DA0E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa(uint64_t a1)
{
  result = qword_100123B90;
  if (!qword_100123B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000681CC(uint64_t a1)
{
  sub_100068298();
  if (v1 <= 0x3F)
  {
    sub_1000DA0E4();
    if (v2 <= 0x3F)
    {
      sub_1000682F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100068298()
{
  if (!qword_100123BA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100123BA0);
    }
  }
}

void sub_1000682F4(uint64_t a1)
{
  if (!qword_100123BA8)
  {
    sub_100062710();
    v1 = sub_1000DC7C4();
    if (!v2)
    {
      atomic_store(v1, &qword_100123BA8);
    }
  }
}

uint64_t sub_100068394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000683DC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1000684C8(double **a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10007023C(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100068570(v5);
  *a1 = v3;
}

void sub_100068570(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000DCC34(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
        v6 = sub_1000DC174();
        *(v6 + 2) = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000688A0(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10006869C(0, v2, 1, a1);
  }
}

uint64_t sub_10006869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_100010568(v24, v18);
      sub_100010568(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_1000105CC(v14);
      result = sub_1000105CC(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_100010628(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100010628(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000688A0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v117 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v113 = *(v117 - 8);
  v9 = __chkstk_darwin(v117);
  v109 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v116 = &v102 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v102 - v14);
  __chkstk_darwin(v13);
  v17 = (&v102 - v16);
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10006FF18(v20);
    }

    v118 = v20;
    v98 = *(v20 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = v20[2 * v98];
        v100 = v20[2 * v98 + 3];
        sub_1000690E4(*v115 + *(v113 + 72) * *&v99, *v115 + *(v113 + 72) * *&v20[2 * v98 + 2], *v115 + *(v113 + 72) * *&v100, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (*&v100 < *&v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10006FF18(v20);
        }

        if (v98 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v101 = &v20[2 * v98];
        *v101 = v99;
        v101[1] = v100;
        v118 = v20;
        sub_10006FE8C(v98 - 1);
        v20 = v118;
        v98 = *(v118 + 2);
        if (v98 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v105 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v115;
      v25 = *(v113 + 72);
      v5 = *v115 + v25 * v22;
      sub_100010568(v5, v17);
      sub_100010568(v24 + v25 * v23, v15);
      v26 = v17[2];
      v27 = v15[2];
      sub_1000105CC(v15);
      sub_1000105CC(v17);
      v106 = v23;
      v28 = v23 + 2;
      v114 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_100010568(v29, v17);
        sub_100010568(v5, v15);
        v30 = v17[2];
        v31 = v15[2];
        sub_1000105CC(v15);
        sub_1000105CC(v17);
        ++v28;
        v29 += v114;
        v5 += v114;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v106;
      if (v27 < v26)
      {
        if (v18 < v106)
        {
          goto LABEL_123;
        }

        if (v106 < v18)
        {
          v103 = v20;
          v104 = v6;
          v32 = v114 * (v18 - 1);
          v33 = v18 * v114;
          v112 = v18;
          v34 = v18;
          v35 = v106;
          v36 = v106 * v114;
          do
          {
            if (v35 != --v34)
            {
              v5 = *v115;
              if (!*v115)
              {
                goto LABEL_129;
              }

              sub_100010628(v5 + v36, v109);
              if (v36 < v32 || v5 + v36 >= v5 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100010628(v109, v5 + v32);
            }

            ++v35;
            v32 -= v114;
            v33 -= v114;
            v36 += v114;
          }

          while (v35 < v34);
          v20 = v103;
          v6 = v104;
          v21 = v106;
          v18 = v112;
        }
      }
    }

    v37 = v115[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_122;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_124;
        }

        if (v21 + v105 >= v37)
        {
          v38 = v115[1];
        }

        else
        {
          v38 = v21 + v105;
        }

        if (v38 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

    v39 = v18;
    if (v18 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10004724C(0, *(v20 + 2) + 1, 1, v20);
    }

    v41 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v20 = sub_10004724C((v40 > 1), v41 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[2 * v41];
    *(v42 + 4) = v21;
    *(v42 + 5) = v39;
    v43 = *v107;
    if (!*v107)
    {
      goto LABEL_131;
    }

    v110 = v39;
    if (v41)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_110;
          }

          v61 = &v20[2 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v67 = &v20[2 * v44 + 4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_117;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[2 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_112;
        }

        v74 = &v20[2 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        v82 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v115)
        {
          goto LABEL_128;
        }

        v83 = *&v20[2 * v82 + 4];
        v5 = *&v20[2 * v44 + 5];
        sub_1000690E4(*v115 + *(v113 + 72) * v83, *v115 + *(v113 + 72) * *&v20[2 * v44 + 4], *v115 + *(v113 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v83)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10006FF18(v20);
        }

        if (v82 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v84 = &v20[2 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v20;
        sub_10006FE8C(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[2 * v5 + 4];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v20[2 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v20[2 * v44 + 4];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v115[1];
    v19 = v110;
    if (v110 >= v18)
    {
      goto LABEL_94;
    }
  }

  v103 = v20;
  v104 = v6;
  v85 = *v115;
  v86 = *(v113 + 72);
  v87 = *v115 + v86 * (v18 - 1);
  v88 = v18;
  v89 = -v86;
  v106 = v21;
  v90 = v21 - v88;
  v112 = v88;
  v108 = v86;
  v91 = v85 + v88 * v86;
  v110 = v38;
LABEL_85:
  v5 = v91;
  v111 = v90;
  v92 = v90;
  v114 = v87;
  v93 = v87;
  while (1)
  {
    sub_100010568(v5, v17);
    sub_100010568(v93, v15);
    v94 = v17[2];
    v95 = v15[2];
    sub_1000105CC(v15);
    sub_1000105CC(v17);
    if (v95 >= v94)
    {
LABEL_84:
      v87 = v114 + v108;
      v90 = v111 - 1;
      v91 += v108;
      v39 = v110;
      if (++v112 != v110)
      {
        goto LABEL_85;
      }

      v20 = v103;
      v6 = v104;
      v21 = v106;
      if (v110 < v106)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    v96 = v116;
    sub_100010628(v5, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_100010628(v96, v93);
    v93 += v89;
    v5 += v89;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1000690E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_100010568(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_100010568(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_1000105CC(v37);
          sub_1000105CC(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_100010568(a2, v12);
        v21 = v45;
        sub_100010568(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_1000105CC(v21);
        sub_1000105CC(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_10006FF2C(&v48, &v47, &v46);
  return 1;
}

void sub_100069548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1000DC054();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100069AD4(v4, v5);
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
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1000DCA74();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
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

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
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

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
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
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
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

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
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

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_100069AD4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000DC064();
  v6 = sub_100069B54(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100069B54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000DC7F4();
    if (!v9 || (v10 = v9, v11 = sub_10001A9CC(v9, 0), v12 = sub_100069CAC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000DBFC4();

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
      return sub_1000DBFC4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000DCA74();
LABEL_4:

  return sub_1000DBFC4();
}

unint64_t sub_100069CAC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100069ECC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000DC024();
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
          result = sub_1000DCA74();
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

    result = sub_100069ECC(v12, a6, a7);
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

    result = sub_1000DC004();
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

unint64_t sub_100069ECC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000DC034();
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
    v5 = sub_1000DC014();
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

double *sub_100069F48(double *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100007BC0(&qword_100122410, &unk_1000E3880);
    v4 = sub_1000DC174();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void sub_100069FE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = sub_1000DC174();
    *(v3 + 2) = v2;
    memset_pattern16(v3 + 4, &unk_1000E3890, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_100069F48(v3, v4);

  v6 = *(v1 + 16);
  if (!v6)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 0;
    v31 = v1;
    v32 = v1 + 8;
    v9 = 5;
    v10 = 1;
    v11 = v6 - 1;
    v29 = v6 - 1;
    v30 = *(v1 + 16);
    while (v8 != v7)
    {
      v12 = *(v1 + 16);
      if (v6 > v12 || v8 + 1 >= v12)
      {
        goto LABEL_32;
      }

      v33 = v8 + 1;
      v14 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      v17 = (v1 + v15 + v16 * v8);
      v34 = v10;
      v35 = v9;
      v18 = (v32 + v15 + v16 * v10);
      v19 = v11;
      do
      {
        v20 = *v17;
        v21 = v17[1];
        v23 = *(v18 - 1);
        v22 = *v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100042058(v5);
        }

        if (v8 >= *(v5 + 2))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v24 = *&v5[v8 + 4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v8 + 4] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_100042044(v24);
          *&v5[v8 + 4] = v24;
        }

        if ((v9 - 4) >= *(v24 + 2))
        {
          goto LABEL_28;
        }

        v26 = (v20 - v23) * (v20 - v23) + (v21 - v22) * (v21 - v22);
        v24[v9] = v26;
        if ((v9 - 4) >= *(v5 + 2))
        {
          goto LABEL_29;
        }

        v27 = *&v5[v9];
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v9] = v27;
        if ((v28 & 1) == 0)
        {
          v27 = sub_100042044(v27);
          *&v5[v9] = v27;
        }

        if (v8 >= *(v27 + 2))
        {
          goto LABEL_30;
        }

        v27[v8 + 4] = v26;
        ++v9;
        v18 = (v18 + v16);
        --v19;
      }

      while (v19);
      --v11;
      v9 = v35 + 1;
      v10 = v34 + 1;
      ++v8;
      v7 = v29;
      v6 = v30;
      v1 = v31;
      if (v33 == v29)
      {
        return;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

double sub_10006A280(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_100010450(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_1000103F0(latitude, longitude, v41, v40))
          {
            if (qword_10011FA88 != -1)
            {
              swift_once();
            }

            v42 = sub_1000DAFF4();
            sub_100007EBC(v42, qword_100123AD0);
            v43 = sub_1000DAFD4();
            v44 = sub_1000DC4C4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_1000104AC(&v49);
          return latitude;
        }

        sub_100010450(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_100010450(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_100010450(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_100010450(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_100010450(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_10001790C(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_10001790C((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_10011FA88 != -1)
  {
    swift_once();
  }

  v15 = sub_1000DAFF4();
  sub_100007EBC(v15, qword_100123AD0);
  v16 = sub_1000DAFD4();
  v17 = sub_1000DC4C4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

uint64_t sub_10006A7A4(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006A830(uint64_t a1)
{
  type metadata accessor for UniformDateBins(319);
  if (v1 <= 0x3F)
  {
    sub_10006AB4C(319);
    if (v2 <= 0x3F)
    {
      sub_1000DBD94();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UniformDateBins(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006AA20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UniformDateBins(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006AB4C(uint64_t a1)
{
  if (!qword_100123C80)
  {
    sub_1000DA084();
    sub_10006ABB0();
    v1 = sub_1000DBE54();
    if (!v2)
    {
      atomic_store(v1, &qword_100123C80);
    }
  }
}

unint64_t sub_10006ABB0()
{
  result = qword_100120AE0;
  if (!qword_100120AE0)
  {
    sub_1000DA084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AE0);
  }

  return result;
}

uint64_t sub_10006AD3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void *, void, void *)@<X2>, uint64_t a3@<X8>)
{
  result = sub_10006AC24(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void (*sub_10006AD70(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  sub_100007C08(&qword_100120AE8, &unk_1000E38A0);
  v8 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v7[5] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v7[6] = v11;
  v13 = sub_10006AF64(v7, *a2, *(a2 + 8), *(a2 + 16), a3);
  v15 = v14;
  v7[7] = v13;
  sub_10006B688(v16, v12);
  (*(*(v8 - 8) + 16))(v12 + *(TupleTypeMetadata2 + 48), v15, v8);
  return sub_10006AEEC;
}

void sub_10006AEEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_10006AF64(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))()
{
  sub_100007C08(&qword_100120AE8, &unk_1000E38A0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  a1[1] = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  sub_10006ACA8(v12, &v12[*(TupleTypeMetadata2 + 48)], a2, a3, a4 & 1, a5);
  return sub_10006B084;
}

void sub_10006B084(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void sub_10006B0E0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_10006B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10006AC68(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void sub_10006B1C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = sub_10006AC68(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  sub_100020EA0(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
}

uint64_t sub_10006B23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = a2 + *(sub_1000DCAF4() + 36);
  v7 = sub_10006AC24(a1, &Dictionary.startIndex.getter);
  v9 = v8;
  v11 = v10;
  result = (*(v5 + 8))(v2, a1);
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v11 & 1;
  return result;
}

uint64_t sub_10006B358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_10006B3B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_10006B6F8(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_10006B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1000DC3A4();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10006B710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastAsset(uint64_t a1)
{
  result = qword_100123CB0;
  if (!qword_100123CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10006B800(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure12PodcastAsset_metadata) = a1;

  return result;
}

id sub_10006B818()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_100007BC0(&qword_100121580, &qword_1000E14E0);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = sub_1000DAF04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_100120518, &qword_1000E00A8);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_1000DA7A4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_100015FEC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000080B0(v15, &qword_100120518, &qword_1000E00A8);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1000DAE54();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    sub_1000DA774();
    if (v23)
    {
      v24 = sub_1000DBF04();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    sub_1000DA794();
    v25 = sub_1000D9DA4();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      sub_1000D9D54(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    sub_1000DA784();
    if (v30)
    {
      v31 = sub_1000DBF04();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = sub_1000DA784();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000DFEF0;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = sub_1000DC124().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      sub_1000DA3A4();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_1000DA084();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    sub_1000DBE74();
    sub_1000DA114();
    v44 = sub_1000DBF64();
    v45 = v32;
    v47 = v46;
    sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000DFEF0;
    v49 = sub_1000478A0(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = sub_1000DC124().super.isa;

    [v20 setAlternateNames:v52];

    sub_1000080B0(v45, &qword_1001203B8, &qword_1000E0460);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_10006BF5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA7A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006BFA0()
{
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  v34[1] = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_100123D78, &qword_1000E3B60);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - v6;
  v8 = sub_100007BC0(&qword_100123D80, &unk_1000E3B68);
  __chkstk_darwin(v8 - 8);
  v37 = v34 - v9;
  v10 = sub_1000DABE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007BC0(&qword_100120540, &unk_1000E3B50);
  __chkstk_darwin(v14 - 8);
  v16 = v34 - v15;
  v17 = sub_1000DA124();
  __chkstk_darwin(v17 - 8);
  v18 = sub_100007BC0(&qword_1001236C8, &qword_1000E3270);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - v20;
  sub_1000DA0F4();
  sub_100060228();
  sub_1000D9BD4();
  if (*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19MotionActivityAsset_metadata))
  {

    sub_100012EDC(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_100120540;
      v23 = &unk_1000E3B50;
      v24 = v16;
LABEL_9:
      sub_1000080B0(v24, v22, v23);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_1000080B0(v16, &qword_100120540, &unk_1000E3B50);
    sub_1000DABC4();
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    if (v26)
    {
      sub_1000DC064();

      sub_10006CF44();
      sub_1000DAD74();
      v27 = v36;
      sub_1000DADB4();
      (*(v35 + 8))(v7, v27);

      v28 = sub_100007BC0(&qword_100123D90, &qword_1000E3B78);
      v29 = *(v28 - 8);
      v30 = v37;
      if ((*(v29 + 48))(v37, 1, v28) != 1)
      {
        sub_1000DADE4();
        v32 = v38;
        (*(v29 + 8))(v30, v28);
        sub_1000DBEA4();
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        sub_1000DBE94(v39);
        v38 = v32;
        sub_1000DBE84();
        v40._countAndFlagsBits = 0x2973287065747320;
        v40._object = 0xE800000000000000;
        sub_1000DBE94(v40);
        sub_1000DBEC4();
        sub_1000DA114();
        v33 = sub_1000DBF64();
        (*(v19 + 8))(v21, v18);
        return v33;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_100123D80;
      v23 = &unk_1000E3B68;
      v24 = v30;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_10006C6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset(uint64_t a1)
{
  result = qword_100123D28;
  if (!qword_100123D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10006C7B8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19MotionActivityAsset_metadata) = a1;

  return result;
}

id sub_10006C7D0()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_100120540, &unk_1000E3B50);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = sub_1000DABE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_100012EDC(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_1000080B0(v17, &qword_100120540, &unk_1000E3B50);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_1000DAE84();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = sub_1000DABA4();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_1000DABB4();
LABEL_9:
  v28 = sub_1000DBF04();

  [v24 setDisplayName:v28];

  sub_10006BFA0();
  v49[1] = v3;
  if (v29)
  {
    v30 = sub_1000DBF04();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  sub_1000DABD4();
  v32 = v31;
  v33 = sub_1000DA084();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        sub_1000DA3A4();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_1000080B0(v32, &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v40 = sub_1000DBF64();
  v42 = v41;
  sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000DFEF0;
  v44 = sub_1000478A0(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1000DC124().super.isa;

  [v24 setAlternateNames:v47];

  sub_1000080B0(v10, &qword_1001203B8, &qword_1000E0460);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_10006CF00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DABE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006CF44()
{
  result = qword_100123D88;
  if (!qword_100123D88)
  {
    sub_100007C08(&qword_1001236C8, &qword_1000E3270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D88);
  }

  return result;
}

void *sub_10006CFA8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10006CFD4()
{
  v0 = sub_100007BC0(&qword_100123E10, &qword_1000E3E80);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D9C54();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA124();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000DBED4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D9C64();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D9924();
  sub_100007EF4(v10, qword_100127140);
  sub_100007EBC(v10, qword_100127140);
  sub_1000DBE74();
  sub_1000DA114();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D9C74();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D9914();
}

uint64_t sub_10006D2D4()
{
  v0 = sub_100007BC0(&qword_100123E08, &qword_1000E3E78);
  __chkstk_darwin(v0 - 8);
  v45 = v29 - v1;
  v2 = sub_100007BC0(&qword_100123E10, &qword_1000E3E80);
  __chkstk_darwin(v2 - 8);
  v44 = v29 - v3;
  v47 = sub_1000D9C54();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DA124();
  __chkstk_darwin(v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DBED4();
  __chkstk_darwin(v10 - 8);
  v38 = sub_1000D9C64();
  v46 = *(v38 - 8);
  __chkstk_darwin(v38);
  sub_100007BC0(&qword_100123E18, &qword_1000E3E88);
  v11 = sub_100007BC0(&qword_100123950, &qword_1000E3520);
  v37 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v34 = 2 * v12;
  v14 = swift_allocObject();
  v35 = v14;
  *(v14 + 16) = xmmword_1000E2830;
  v15 = v14 + v13;
  v31 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1000DBE74();
  v29[1] = v9;
  sub_1000DA114();
  v16 = *(v4 + 104);
  v33 = v4 + 104;
  v41 = v16;
  v36 = v6;
  v17 = v6;
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v30 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  (v16)(v17);
  sub_1000D9C74();
  v32 = *(v46 + 56);
  v46 += 56;
  v19 = v38;
  v32(v44, 1, 1, v38);
  v40 = sub_1000D98B4();
  v20 = *(v40 - 8);
  v39 = *(v20 + 56);
  v42 = v20 + 56;
  v39(v45, 1, 1, v40);
  v43 = v15;
  sub_1000D98C4();
  v21 = v37;
  v31 = *(v37 + 48);
  *(v15 + v12) = 1;
  sub_1000DBE74();
  sub_1000DA114();
  v41(v36, v18, v47);
  sub_1000D9C74();
  v22 = v44;
  v23 = v32;
  v32(v44, 1, 1, v19);
  v24 = v45;
  v39(v45, 1, 1, v40);
  v25 = v24;
  sub_1000D98C4();
  v26 = (v43 + v34);
  v34 = *(v21 + 48);
  *v26 = 2;
  sub_1000DBE74();
  sub_1000DA114();
  v41(v36, v30, v47);
  sub_1000D9C74();
  v23(v22, 1, 1, v38);
  v39(v25, 1, 1, v40);
  sub_1000D98C4();
  v27 = sub_1000647D8(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100127158 = v27;
  return result;
}

unint64_t sub_10006D9CC()
{
  result = qword_100123D98;
  if (!qword_100123D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D98);
  }

  return result;
}

unint64_t *sub_10006DA20@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_10006DA3C()
{
  result = qword_100123DA0;
  if (!qword_100123DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DA0);
  }

  return result;
}

unint64_t sub_10006DA94()
{
  result = qword_100123DA8;
  if (!qword_100123DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DA8);
  }

  return result;
}

unint64_t sub_10006DAEC()
{
  result = qword_100123DB0;
  if (!qword_100123DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DB0);
  }

  return result;
}

unint64_t sub_10006DB50()
{
  result = qword_100123DB8;
  if (!qword_100123DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DB8);
  }

  return result;
}

unint64_t sub_10006DBA8()
{
  result = qword_100123DC0;
  if (!qword_100123DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DC0);
  }

  return result;
}

unint64_t sub_10006DC00()
{
  result = qword_100123DC8;
  if (!qword_100123DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DC8);
  }

  return result;
}

unint64_t sub_10006DC58()
{
  result = qword_100123DD0;
  if (!qword_100123DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD0);
  }

  return result;
}

uint64_t sub_10006DCB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011FA90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D9924();
  v3 = sub_100007EBC(v2, qword_100127140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10006DDA8()
{
  result = qword_100123DD8;
  if (!qword_100123DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD8);
  }

  return result;
}

uint64_t sub_10006DDFC(uint64_t a1)
{
  v2 = sub_10006DDA8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10006DE4C()
{
  result = qword_100123DE0;
  if (!qword_100123DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE0);
  }

  return result;
}

unint64_t sub_10006DEA4()
{
  result = qword_100123DE8;
  if (!qword_100123DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE8);
  }

  return result;
}

unint64_t sub_10006DEFC()
{
  result = qword_100123DF0;
  if (!qword_100123DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF0);
  }

  return result;
}

uint64_t sub_10006DF50()
{
  if (qword_10011FA98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006DFAC(uint64_t a1)
{
  v2 = sub_10006DC58();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10006DFFC()
{
  result = qword_100123DF8;
  if (!qword_100123DF8)
  {
    sub_100007C08(&qword_100123E00, &qword_1000E3DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreaksWidgetStreak(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StreaksWidgetStreak(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10006E128()
{
  result = qword_100123E20;
  if (!qword_100123E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E20);
  }

  return result;
}

uint64_t sub_10006E184()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DA454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaViewType.song(_:) || v7 == enum case for MediaViewType.songAlbum(_:))
  {
    goto LABEL_10;
  }

  v8 = v7 == enum case for MediaViewType.podcast(_:) || v7 == enum case for MediaViewType.podcastArtist(_:);
  if (v8 || v7 == enum case for MediaViewType.audiobook(_:))
  {
    goto LABEL_10;
  }

  if (v7 == enum case for MediaViewType.thirdPartyMedia(_:))
  {
    sub_1000DBE74();
    sub_1000DA114();
    return sub_1000DBF54();
  }

  if (v7 == enum case for MediaViewType.thirdPartyMediaAlbum(_:) || v7 == enum case for MediaViewType.thirdPartyMediaArtist(_:))
  {
LABEL_10:
    sub_1000DBE74();
    sub_1000DA114();
    return sub_1000DBF64();
  }

  result = sub_1000DCC64();
  __break(1u);
  return result;
}

double *sub_10006E548(uint64_t a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA204();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DA084();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if ((a3 & 1) == 0 && (*(a1 + 16) < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v45 = a1;

  sub_10007005C(v18);

  sub_10006EAA4(&v45);

  v19 = *(v45 + 2);
  if (!v19)
  {

    return 0;
  }

  v41 = v13;
  v42 = v17;
  v21 = v13 + 16;
  v20 = *(v13 + 16);
  v22 = v45 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v20(v42, v22, v12);
  v23 = &v22[*(v21 + 56) * (v19 - 1)];
  v24 = v44;
  v20(v44, v23, v12);
  v25 = v42;

  sub_1000DA1D4();
  LOBYTE(v22) = sub_1000DA1B4();
  (*(v43 + 8))(v11, v9);
  if (v22)
  {
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    sub_100070188();
    sub_1000DA064();
    sub_1000701E0(v8);
    v26 = *(v41 + 8);
    v26(v24, v12);
    v26(v25, v12);
    return v45;
  }

  else
  {
    v43 = v12;
    if (qword_10011FBC0 != -1)
    {
      swift_once();
    }

    v40 = qword_100127388;
    sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000DE2C0;
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    sub_100070188();
    v29 = v42;
    sub_1000DA064();
    sub_1000701E0(v8);
    v30 = v45;
    v31 = v46;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_100042300();
    *(v28 + 64) = v32;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    sub_1000D9E44();
    sub_1000D9CC4();
    sub_1000DA0F4();
    sub_1000DA174();
    sub_1000DA254();
    sub_1000DA054();
    v33 = v44;
    sub_1000DA064();
    sub_1000701E0(v8);
    v34 = v45;
    v35 = v46;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_1000DBF14();

    v37 = *(v41 + 8);
    v38 = v33;
    v39 = v43;
    v37(v38, v43);
    v37(v29, v39);
    return v36;
  }
}

void sub_10006EAA4(double **a1)
{
  v2 = *(sub_1000DA084() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100070250(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10006EB4C(v5);
  *a1 = v3;
}

void sub_10006EB4C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000DCC34(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000DA084();
        v6 = sub_1000DC174();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000DA084() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10006EEFC(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10006EC78(0, v2, 1, a1);
  }
}

uint64_t sub_10006EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000DA084();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_1000DA004();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10006EEFC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  __chkstk_darwin(v15);
  v137 = &v117 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v111 = a4;
    }

    else
    {
LABEL_130:
      v111 = sub_10006FF18(a4);
    }

    v112 = v6;
    v140 = v111;
    a4 = *(v111 + 2);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = v111[2 * a4];
        v115 = v111;
        v6 = v111[2 * a4 + 3];
        sub_10006F8E8(*v10 + a3[9] * *&v114, (*v10 + a3[9] * *&v111[2 * a4 + 2]), *v10 + a3[9] * *&v6, v5);
        if (v112 != 0.0)
        {
          goto LABEL_107;
        }

        if (*&v6 < *&v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10006FF18(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        v116[1] = v6;
        v140 = v115;
        sub_10006FE8C(a4 - 1);
        v111 = v140;
        a4 = *(v140 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v20 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v32 = v19 + 1;
    }

    else
    {
      v130 = v18;
      v119 = v6;
      v127 = *a3;
      v22 = v127;
      v23 = v10[9];
      v5 = v127 + v23 * (v19 + 1);
      v24 = v10[2];
      v25 = v137;
      v24(v137, v5, v9);
      v26 = v22 + v23 * v21;
      v27 = v138;
      v129 = v24;
      v24(v138, v26, v9);
      LODWORD(v131) = sub_1000DA004();
      v28 = v9;
      v29 = v10[1];
      v29(v27, v28);
      v128 = v29;
      v29(v25, v28);
      v118 = v21;
      v30 = v21 + 2;
      v133 = v23;
      v31 = v127 + v23 * (v21 + 2);
      while (1)
      {
        v32 = v130;
        if (v130 == v30)
        {
          break;
        }

        v33 = v10;
        v34 = v137;
        v35 = v139;
        v36 = v129;
        (v129)(v137, v31, v139);
        v37 = v138;
        v36(v138, v5, v35);
        v38 = sub_1000DA004() & 1;
        v39 = v128;
        (v128)(v37, v35);
        v40 = v34;
        v10 = v33;
        v39(v40, v35);
        ++v30;
        v31 += v133;
        v5 += v133;
        if ((v131 & 1) != v38)
        {
          v32 = v30 - 1;
          break;
        }
      }

      a3 = v122;
      v20 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v21 = v118;
      if (v131)
      {
        if (v32 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v32)
        {
          v117 = v10;
          v41 = v133 * (v32 - 1);
          v42 = v32 * v133;
          v43 = v32;
          v44 = v118;
          v45 = v118 * v133;
          do
          {
            if (v44 != --v43)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v48 = v32;
              v5 = &v47[v45];
              v131 = *v134;
              (v131)(v124, &v47[v45], v139, v20);
              if (v45 < v41 || v5 >= &v47[v42])
              {
                v46 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v46 = v139;
                if (v45 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v131(&v47[v41], v124, v46);
              a3 = v122;
              v20 = v125;
              v32 = v48;
            }

            ++v44;
            v41 -= v133;
            v42 -= v133;
            v45 += v133;
          }

          while (v44 < v43);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v21 = v118;
        }
      }
    }

    v49 = a3[1];
    if (v32 < v49)
    {
      if (__OFSUB__(v32, v21))
      {
        goto LABEL_126;
      }

      if (v32 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_128;
        }

        if ((v21 + a4) >= v49)
        {
          v50 = a3[1];
        }

        else
        {
          v50 = v21 + a4;
        }

        if (v50 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v32 != v50)
        {
          break;
        }
      }
    }

    v51 = v32;
    if (v32 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v125;
    }

    else
    {
      v20 = sub_10004724C(0, *(v125 + 2) + 1, 1, v125);
    }

    a4 = *(v20 + 2);
    v52 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v20 = sub_10004724C((v52 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v53 = &v20[2 * a4];
    *(v53 + 4) = v21;
    *(v53 + 5) = v51;
    v54 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v51;
    if (a4)
    {
      while (1)
      {
        v55 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v56 = *(v20 + 4);
          v57 = *(v20 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_114;
          }

          v72 = &v20[2 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_117;
          }

          v78 = &v20[2 * v55 + 4];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_121;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v20[2 * v5];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_116;
        }

        v85 = &v20[2 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_119;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v55 - 1;
        if (v55 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v93 = v20;
        v94 = *&v20[2 * a4 + 4];
        v5 = *&v20[2 * v55 + 5];
        sub_10006F8E8(*a3 + v10[9] * v94, (*a3 + v10[9] * *&v20[2 * v55 + 4]), *a3 + v10[9] * v5, v54);
        if (v6 != 0.0)
        {
          goto LABEL_107;
        }

        if (v5 < v94)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_10006FF18(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_111;
        }

        v95 = &v93[2 * a4];
        *(v95 + 4) = v94;
        *(v95 + 5) = v5;
        v140 = v93;
        sub_10006FE8C(v55);
        v20 = v140;
        v5 = *(v140 + 2);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v20[2 * v5 + 4];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_112;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_113;
      }

      v67 = &v20[2 * v5];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_115;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_118;
      }

      if (v71 >= v63)
      {
        v89 = &v20[2 * v55 + 4];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_122;
        }

        if (v58 < v92)
        {
          v55 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v126;
    a4 = v120;
    if (v126 >= v18)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v96 = *a3;
  v97 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v98 = v96 + v97 * (v32 - 1);
  v99 = -v97;
  v118 = v21;
  v100 = (v21 - v32);
  v131 = v96;
  v123 = v97;
  v5 = v96 + v32 * v97;
  v126 = v50;
LABEL_85:
  v129 = v98;
  v130 = v32;
  v127 = v5;
  v128 = v100;
  v101 = v98;
  while (1)
  {
    v102 = v137;
    v103 = v133;
    (v133)(v137, v5, v9, v20);
    v104 = v138;
    v103(v138, v101, v139);
    v105 = sub_1000DA004();
    a4 = v135;
    v106 = *v135;
    v107 = v104;
    v9 = v139;
    (*v135)(v107, v139);
    v106(v102, v9);
    if ((v105 & 1) == 0)
    {
LABEL_84:
      v32 = v130 + 1;
      v98 = &v129[v123];
      v100 = v128 - 1;
      v5 = v127 + v123;
      v51 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v21 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v108 = *v134;
    v109 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v101, v109, v9);
    v101 += v99;
    v5 += v99;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_10006F8E8(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_1000DA084();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = &a2[-a1] / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || &a2[v18] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = &a4[v18];
    if (v18 < 1)
    {
      v33 = &a4[v18];
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = &a4[v18];
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = &a2[v30];
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = &v31[v30];
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_1000DA004();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = &a4[v17];
    v58 = &a4[v17];
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = (v8 + 16);
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_1000DA004();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = &v49[v23];
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = &v49[a4];
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 = &v27[a4];
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_10006FF74(&v60, &v59, &v58, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_10006FE8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006FF18(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10006FF74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10007005C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000474F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (*(v3 + 3) >> 1) - *(v3 + 2);
  sub_1000DA084();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

unint64_t sub_100070188()
{
  result = qword_100123E28;
  if (!qword_100123E28)
  {
    _s23YearAdaptiveFormatStyleVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E28);
  }

  return result;
}

uint64_t sub_1000701E0(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *sub_100070278(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = sub_100007BC0(&qword_100120560, &qword_1000E00E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation(0));
  sub_10001502C(v15);
  sub_100070BF4(v15, v16 + qword_1001272A0);
  v17 = v6;

  return sub_10008A204(v17, v12, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_100070384(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  sub_1000DA0E4();
  sub_100070BAC(&qword_10011FDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_1000DBFE4(v16);
  v17._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_1000DBFE4(v18);
  v4 = 0x656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (a2 <= 3u)
  {
    v12._countAndFlagsBits = v4;
  }

  else
  {
    v12._countAndFlagsBits = v6;
  }

  if (a2 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v12._object = v13;
  sub_1000DBFE4(v12);

  v19._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  sub_1000DBFE4(v20);

  return 0x2D626D756874;
}

id sub_100070628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset(uint64_t a1)
{
  result = qword_100123E58;
  if (!qword_100123E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100070718(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure15GenericMapAsset_metadata) = a1;

  return result;
}

void *sub_100070730()
{
  v1 = sub_100007BC0(&qword_100123EA8, &unk_1000E3FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1000DA714();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_100120560, &qword_1000E00E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1000DA874();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_100011560(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v15 = &qword_100120560;
    v16 = &qword_1000E00E0;
    v17 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_1000DA864();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_100007BC0(&qword_100123EB0, &qword_1000E3FE8);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000DFEF0;
    (*(v5 + 16))(v20 + v19, v7, v4);
    v21 = sub_100061388(v20);
    swift_setDeallocating();
    v22 = *(v5 + 8);
    v22(v20 + v19, v4);
    swift_deallocClassInstance();
    v22(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v21;
  }

  (*(v12 + 8))(v14, v11);
  v15 = &qword_100123EA8;
  v16 = &unk_1000E3FD8;
  v17 = v3;
LABEL_7:
  sub_1000080B0(v17, v15, v16);
  return 0;
}

uint64_t sub_100070BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100070BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120560, &qword_1000E00E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100070C64(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView;
  v42 = a2 & 0x100;
  v43 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v45.receiver = v7;
  v45.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v45, "initWithAnnotation:reuseIdentifier:", a1, 0);
  sub_10002223C(a2 & 0x1FF, a3, a4 & 1);
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if ((v25 & 1) == 0)
  {
    nullsub_1();
  }

  [v19 setFrame:{v21, v22, v23, v24}];
  v26 = &v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView];
  v27 = *&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView];
  sub_10002223C(a2 & 0x1FF, a3, a4 & 1);
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if ((v31 & 1) == 0)
  {
    nullsub_1();
    v20 = v32;
  }

  [v27 setFrame:{v20, v28, v29, v30}];

  sub_10007150C(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_100071910();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v43 || v42)
    {
      sub_1000710A0();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_100071910();
    sub_100071240();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v26 = &v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v26];
  v33 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v34 = [*&v19[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v35 = [objc_opt_self() secondarySystemBackgroundColor];
  v36 = [v35 CGColor];

  [v34 setShadowColor:v36];
  v37 = [*&v19[v33] layer];
  LODWORD(v38) = 0.5;
  [v37 setShadowOpacity:v38];

  v39 = [*&v19[v33] layer];
  [v39 setShadowRadius:5.0];

  v40 = [*&v19[v33] layer];
  [v40 setShadowPathIsBounds:1];

  sub_10001C8F8(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_1000710A0()
{
  v1 = (v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 16);
  if (v2 <= 1 && v3 == 0)
  {
    v5 = v1[1];
    if ((v1[18] ^ 1 | v5))
    {
      v6 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView);
      if (v5)
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      sub_10002223C(v7 | *v1, v2, v3);
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      if ((v12 & 1) == 0)
      {
        nullsub_1();
      }

      [v6 setFrame:{v8, v9, v10, v11}];
      v13 = sub_1000DBF04();
      v14 = [objc_opt_self() systemImageNamed:v13];

      [v6 setImage:v14];

      [v6 setContentMode:2];
    }
  }
}

void sub_100071240()
{
  v1 = (v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel);
    if (v1[1])
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    sub_10002223C(v4 | *v1, v2, v1[16]);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v9 & 1) == 0)
    {
      nullsub_1();
    }

    [v3 setFrame:{v5, v6, v7, v8}];
    sub_1000DCC44();
    v10 = sub_1000DBF04();

    [v3 setText:v10];

    [v3 setTextAlignment:1];
    v11 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v11];

    if (v1[1])
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    v13 = COERCE_DOUBLE(sub_10002223C(v12 | *v1, *(v1 + 1), v1[16]));
    v14 = 15.0;
    if ((v15 & 1) == 0)
    {
      v14 = v13 / 6.0;
    }

    v16 = [objc_opt_self() boldSystemFontOfSize:v14];
    [v3 setFont:v16];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v17 = [v3 layer];
    [v3 frame];
    [v17 setCornerRadius:CGRectGetWidth(v18) * 0.5];
  }
}

void sub_10007150C(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView);
    v15 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v15];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v15];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    CGRectGetWidth(v17);
    [v6 frame];
    CGRectGetHeight(v18);
    [v6 frame];
    CGRectGetWidth(v19);
    [v6 frame];
    CGRectGetHeight(v20);
    nullsub_1();
    v11 = [objc_allocWithZone(UIImageView) initWithFrame:{v7, v8, v9, v10}];
    v15 = v11;
    if (qword_10011FBE0 != -1)
    {
      swift_once();
      v11 = v15;
    }

    [v11 setImage:qword_1001273C8];
    v12 = [objc_opt_self() systemWhiteColor];
    [v15 setTintColor:v12];

    if (qword_10011FB98 != -1)
    {
      swift_once();
    }

    v13 = qword_100127350;
    [v6 setBackgroundColor:qword_100127350];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v13];
    [*(v2 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v13];
    v14 = [v6 layer];
    [v6 frame];
    [v14 setCornerRadius:CGRectGetHeight(v21) * 0.5];

    [v6 addSubview:v15];
  }
}

id sub_10007184C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100071910()
{
  v1 = *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView);
  if (*(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_100022320(v2 | *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration), *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 8), *(v0 + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_configuration + 16));
  [v1 setFrame:?];
  v3 = [v1 layer];
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 CGColor];

  [v3 setBackgroundColor:v5];
  [v1 setClipsToBounds:1];
  v6 = [v1 layer];
  [v1 frame];
  [v6 setCornerRadius:CGRectGetWidth(v8) * 0.5];
}

void sub_100071A9C()
{
  v1 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_1000DCB04();
  __break(1u);
}

void sub_100071B80()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EAB40;
  v8._countAndFlagsBits = 0x736B6165727453;
  v6._object = 0x80000001000EAB20;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE700000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD00000000000002DLL, v5);
  v4 = v3;

  qword_100127168 = v2;
  unk_100127170 = v4;
}

void sub_100071C44()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EACA0;
  v6._object = 0x80000001000EAC40;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x80000001000EAC60;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_100127178 = v2;
  unk_100127180 = v4;
}

void sub_100071D08()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EABF0;
  v6._object = 0x80000001000EAB70;
  v8._countAndFlagsBits = 0xD00000000000004ALL;
  v8._object = 0x80000001000EABA0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_100127188 = v2;
  unk_100127190 = v4;
}

void sub_100071DCC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA870;
  v8._countAndFlagsBits = 0x6B6165727453;
  v6._object = 0x80000001000EA840;
  v6._countAndFlagsBits = 0xD000000000000023;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000064, v5);
  v4 = v3;

  *&xmmword_100127198 = v2;
  *(&xmmword_100127198 + 1) = v4;
}

void sub_100071E8C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA670;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x80000001000EA630;
  v8._object = 0x80000001000EA650;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000069, v5);
  v4 = v3;

  qword_1001271A8 = v2;
  unk_1001271B0 = v4;
}

void sub_100071F50()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EA5D0;
  v8._countAndFlagsBits = 0x6165727453206F4ELL;
  v6._object = 0x80000001000EA5A0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE90000000000006BLL;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD00000000000005BLL, v5);
  v4 = v3;

  qword_1001271B8 = v2;
  unk_1001271C0 = v4;
}

uint64_t sub_100072018()
{
  v0 = sub_1000DA124();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000DBED4();
  __chkstk_darwin(v1 - 8);
  sub_1000DBE74();
  sub_1000DA114();
  result = sub_1000DBF54();
  qword_1001271C8 = result;
  unk_1001271D0 = v3;
  return result;
}

uint64_t sub_100072164(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._countAndFlagsBits = 0x282073796144;
  v5._object = 0xE600000000000000;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072314(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._countAndFlagsBits = 0x2820736B656557;
  v5._object = 0xE700000000000000;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_1000724C8(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 0x7379614420;
  v6._object = 0xE500000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072678(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 0x736B65655720;
  v6._object = 0xE600000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072828(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._object = 0x80000001000EA910;
  v5._countAndFlagsBits = 0xD000000000000015;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 0x2E7379616420;
  v6._object = 0xE600000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_1000729E8(uint64_t a1)
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000DBED4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000DBEB4();
  __chkstk_darwin(v3 - 8);
  sub_1000DBEA4();
  v5._object = 0x80000001000EA910;
  v5._countAndFlagsBits = 0xD000000000000015;
  sub_1000DBE94(v5);
  sub_1000DBE84();
  v6._countAndFlagsBits = 0x2E736B65657720;
  v6._object = 0xE700000000000000;
  sub_1000DBE94(v6);
  sub_1000DBEC4();
  sub_1000DA114();
  return sub_1000DBF54();
}

uint64_t sub_100072BAC()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100123FA0);
  sub_100007EBC(v0, qword_100123FA0);
  return sub_1000DAFE4();
}

uint64_t sub_100072C2C(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_1000DA084();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry(0);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 91;
  v47 = 0xE100000000000000;
  v40 = *(a1 + 16);
  if (v40)
  {
    v12 = 0;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v38 = (v6 + 48);
    v39 = v14;
    v35 = (v6 + 8);
    v36 = (v6 + 32);
    do
    {
      sub_10007988C(v13, v11);
      if (v12)
      {
        v49._countAndFlagsBits = 8236;
        v49._object = 0xE200000000000000;
        sub_1000DBFE4(v49);
      }

      sub_100007F58(&v11[v8[5]], v4, &qword_1001203B8, &qword_1000E0460);
      if ((*v38)(v4, 1, v5) == 1)
      {
        sub_1000080B0(v4, &qword_1001203B8, &qword_1000E0460);
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        v19 = v37;
        (*v36)(v37, v4, v5);
        sub_10003C96C(&qword_100124068, &protocol conformance descriptor for Date);
        v18 = sub_1000DCC44();
        v17 = v20;
        (*v35)(v19, v5);
      }

      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_1000DCA04(46);

      v45._countAndFlagsBits = 0x6144747261747328;
      v45._object = 0xEB000000003D6574;
      sub_10003C96C(&qword_100124068, &protocol conformance descriptor for Date);
      v50._countAndFlagsBits = sub_1000DCC44();
      sub_1000DBFE4(v50);

      v51._countAndFlagsBits = 0x746144646E65202CLL;
      v51._object = 0xEA00000000003D65;
      sub_1000DBFE4(v51);
      v52._countAndFlagsBits = v18;
      v52._object = v17;
      sub_1000DBFE4(v52);

      v53._countAndFlagsBits = 0x657669746361202CLL;
      v53._object = 0xE90000000000003DLL;
      sub_1000DBFE4(v53);
      v21 = &v11[v8[6]];
      v22 = *v21;
      if (v22 == 2)
      {
        v23 = 0xE300000000000000;
        v24._countAndFlagsBits = 7104878;
      }

      else
      {
        v25 = *(v21 + 1);
        v43 = 40;
        v44 = 0xE100000000000000;
        if (v22)
        {
          v26._countAndFlagsBits = 0x202C736B656577;
          v26._object = 0xE700000000000000;
        }

        else
        {
          v26._countAndFlagsBits = 0x202C73796164;
          v26._object = 0xE600000000000000;
        }

        sub_1000DBFE4(v26);
        v41 = v25;
        v42._countAndFlagsBits = sub_1000DCC44();
        v42._object = v27;
        v54._countAndFlagsBits = 41;
        v54._object = 0xE100000000000000;
        sub_1000DBFE4(v54);
        sub_1000DBFE4(v42);

        v24._countAndFlagsBits = v43;
        v23 = v44;
      }

      v24._object = v23;
      sub_1000DBFE4(v24);

      v55._countAndFlagsBits = 0x3D7473616C202CLL;
      v55._object = 0xE700000000000000;
      sub_1000DBFE4(v55);
      v28 = &v11[v8[7]];
      v29 = *v28;
      if (v29 == 2)
      {
        v15 = 0xE300000000000000;
        v16._countAndFlagsBits = 7104878;
      }

      else
      {
        v30 = *(v28 + 1);
        v43 = 40;
        v44 = 0xE100000000000000;
        if (v29)
        {
          v31._countAndFlagsBits = 0x202C736B656577;
          v31._object = 0xE700000000000000;
        }

        else
        {
          v31._countAndFlagsBits = 0x202C73796164;
          v31._object = 0xE600000000000000;
        }

        sub_1000DBFE4(v31);
        v41 = v30;
        v42._countAndFlagsBits = sub_1000DCC44();
        v42._object = v32;
        v56._countAndFlagsBits = 41;
        v56._object = 0xE100000000000000;
        sub_1000DBFE4(v56);
        sub_1000DBFE4(v42);

        v16._countAndFlagsBits = v43;
        v15 = v44;
      }

      ++v12;
      v16._object = v15;
      sub_1000DBFE4(v16);

      v48._countAndFlagsBits = 41;
      v48._object = 0xE100000000000000;
      sub_1000DBFE4(v48);
      sub_1000DBFE4(v45);

      sub_1000798F0(v11);
      v13 += v39;
    }

    while (v40 != v12);
  }

  v57._countAndFlagsBits = 93;
  v57._object = 0xE100000000000000;
  sub_1000DBFE4(v57);
  return v46;
}

uint64_t sub_1000731F0(uint64_t a1)
{
  sub_100007F58(a1, &v3, &qword_100121470, &qword_1000E13B0);
  if (v4)
  {
    sub_100007EAC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_1000DCAE4();
    v1 = v3;
    sub_100007FC0(v5);
  }

  else
  {
    sub_1000080B0(&v3, &qword_100121470, &qword_1000E13B0);
    return 7104878;
  }

  return v1;
}

uint64_t sub_1000732D0(char a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  if (a1)
  {
    v2._countAndFlagsBits = 0x202C736B656577;
    v2._object = 0xE700000000000000;
  }

  else
  {
    v2._countAndFlagsBits = 0x202C73796164;
    v2._object = 0xE600000000000000;
  }

  sub_1000DBFE4(v2);
  v4._countAndFlagsBits = sub_1000DCC44();
  v4._object = v3;
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000DBFE4(v5);
  sub_1000DBFE4(v4);

  return 40;
}

uint64_t sub_1000733A8(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v309 = a7;
  v314 = a6;
  v321 = a5;
  v318 = a3;
  v319 = a4;
  v317 = a2;
  v308 = a1;
  v320 = sub_1000DA084();
  v315 = *(v320 - 8);
  v7 = __chkstk_darwin(v320);
  v284 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v283 = &v280 - v10;
  __chkstk_darwin(v9);
  v287 = &v280 - v11;
  v12 = sub_100007BC0(&qword_100124070, &qword_1000E4090);
  v13 = __chkstk_darwin(v12 - 8);
  v280 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v292 = &v280 - v16;
  v17 = __chkstk_darwin(v15);
  v291 = &v280 - v18;
  v19 = __chkstk_darwin(v17);
  v311 = &v280 - v20;
  v21 = __chkstk_darwin(v19);
  v295 = (&v280 - v22);
  v23 = __chkstk_darwin(v21);
  v297 = &v280 - v24;
  __chkstk_darwin(v23);
  v310 = &v280 - v25;
  v313 = sub_100007BC0(&qword_100124078, &qword_1000E4098);
  v312 = *(v313 - 8);
  v26 = __chkstk_darwin(v313);
  v281 = (&v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v282 = (&v280 - v29);
  v30 = __chkstk_darwin(v28);
  v285 = (&v280 - v31);
  v32 = __chkstk_darwin(v30);
  v294 = (&v280 - v33);
  __chkstk_darwin(v32);
  v290 = (&v280 - v34);
  v35 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v36 = __chkstk_darwin(v35 - 8);
  v304 = &v280 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v302 = &v280 - v38;
  v39 = sub_100007BC0(&qword_100124060, &unk_1000E4080);
  v40 = __chkstk_darwin(v39);
  v289 = &v280 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v296 = (&v280 - v43);
  v44 = __chkstk_darwin(v42);
  v286 = &v280 - v45;
  v46 = __chkstk_darwin(v44);
  v288 = (&v280 - v47);
  v48 = __chkstk_darwin(v46);
  v293 = (&v280 - v49);
  v50 = __chkstk_darwin(v48);
  v298 = &v280 - v51;
  v52 = __chkstk_darwin(v50);
  v299 = (&v280 - v53);
  v54 = __chkstk_darwin(v52);
  v323 = &v280 - v55;
  v56 = __chkstk_darwin(v54);
  v316 = &v280 - v57;
  v58 = __chkstk_darwin(v56);
  v303 = &v280 - v59;
  v60 = __chkstk_darwin(v58);
  v300 = (&v280 - v61);
  v62 = __chkstk_darwin(v60);
  v64 = (&v280 - v63);
  v65 = __chkstk_darwin(v62);
  v67 = (&v280 - v66);
  v68 = __chkstk_darwin(v65);
  v70 = (&v280 - v69);
  v71 = __chkstk_darwin(v68);
  v73 = (&v280 - v72);
  v74 = __chkstk_darwin(v71);
  v76 = (&v280 - v75);
  v77 = __chkstk_darwin(v74);
  v79 = &v280 - v78;
  *(&v280 - v78) = v308;
  sub_100007F58(v317, &v280 + *(v77 + 48) - v78, &qword_1001203B8, &qword_1000E0460);
  v80 = v319;
  *v76 = v318;
  sub_100007F58(v80, v76 + *(v39 + 48), &qword_1001203B8, &qword_1000E0460);
  v329 = 0x2F77205452415453;
  v330 = 0xE900000000000020;
  v318 = v79;
  sub_100007F58(v79, v73, &qword_100124060, &unk_1000E4080);
  v81 = *v73;
  v82 = *(v39 + 48);
  v322 = v76;
  sub_100007F58(v76, v70, &qword_100124060, &unk_1000E4080);
  v83 = *v70;
  v84 = *(v39 + 48);
  *v67 = v81;
  v307 = v73;
  v306 = v82;
  sub_100007F58(v73 + v82, v67 + v84, &qword_1001203B8, &qword_1000E0460);
  v85 = v83;
  *v64 = v83;
  v86 = *(v39 + 48);
  v308 = v70;
  v305 = v84;
  v319 = v64;
  sub_100007F58(v70 + v84, v64 + v86, &qword_1001203B8, &qword_1000E0460);
  v327 = 0;
  v328 = 0xE000000000000000;
  v324._countAndFlagsBits = 0;
  v324._object = 0xE000000000000000;
  sub_1000DCA04(24);

  strcpy(&v326, "activeDaily=(");
  HIWORD(v326._object) = -4864;
  v324._countAndFlagsBits = v81;
  v331._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v331);

  v332._countAndFlagsBits = 2629676;
  v332._object = 0xE300000000000000;
  sub_1000DBFE4(v332);
  v301 = v67;
  v87 = v67;
  v88 = v302;
  v89 = v300;
  sub_100007F58(v87, v300, &qword_100124060, &unk_1000E4080);
  v317 = v39;
  v90 = v320;
  v91 = v315;
  sub_10001865C(v89 + *(v39 + 48), v88, &qword_1001203B8, &qword_1000E0460);
  v92 = *(v91 + 48);
  if (v92(v88, 1, v90) == 1)
  {
    sub_1000080B0(v88, &qword_1001203B8, &qword_1000E0460);
    v324 = 0;
    v325 = 0u;
  }

  else
  {
    *(&v325 + 1) = v90;
    v93 = sub_100055EEC(&v324._countAndFlagsBits);
    (*(v91 + 32))(v93, v88, v90);
  }

  v94 = sub_1000731F0(&v324);
  v96 = v95;
  sub_1000080B0(&v324, &qword_100121470, &qword_1000E13B0);
  v333._countAndFlagsBits = v94;
  v333._object = v96;
  sub_1000DBFE4(v333);

  v334._countAndFlagsBits = 539765033;
  v334._object = 0xE400000000000000;
  sub_1000DBFE4(v334);
  sub_1000DBFE4(v326);

  v324._countAndFlagsBits = 0;
  v324._object = 0xE000000000000000;
  sub_1000DCA04(25);

  strcpy(&v326, "activeWeekly=(");
  HIBYTE(v326._object) = -18;
  v324._countAndFlagsBits = v85;
  v335._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v335);

  v336._countAndFlagsBits = 2629676;
  v336._object = 0xE300000000000000;
  sub_1000DBFE4(v336);
  v97 = v303;
  sub_100007F58(v319, v303, &qword_100124060, &unk_1000E4080);
  v98 = v97 + *(v317 + 48);
  v99 = v304;
  sub_10001865C(v98, v304, &qword_1001203B8, &qword_1000E0460);
  v100 = v92(v99, 1, v90);
  v300 = v92;
  if (v100 == 1)
  {
    sub_1000080B0(v99, &qword_1001203B8, &qword_1000E0460);
    v324 = 0;
    v325 = 0u;
  }

  else
  {
    *(&v325 + 1) = v90;
    v101 = sub_100055EEC(&v324._countAndFlagsBits);
    (*(v91 + 32))(v101, v99, v90);
  }

  v102 = v309;
  v103 = sub_1000731F0(&v324);
  v105 = v104;
  sub_1000080B0(&v324, &qword_100121470, &qword_1000E13B0);
  v337._countAndFlagsBits = v103;
  v337._object = v105;
  sub_1000DBFE4(v337);

  v338._countAndFlagsBits = 539765033;
  v338._object = 0xE400000000000000;
  sub_1000DBFE4(v338);
  sub_1000DBFE4(v326);

  v324._countAndFlagsBits = 0;
  v324._object = 0xE000000000000000;
  sub_1000DCA04(19);

  v324._countAndFlagsBits = 0x697961447473616CLL;
  v324._object = 0xEF3D746E756F436CLL;
  v326._countAndFlagsBits = v321;
  v339._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v339);

  v340._countAndFlagsBits = 8236;
  v340._object = 0xE200000000000000;
  sub_1000DBFE4(v340);
  sub_1000DBFE4(v324);

  v324._countAndFlagsBits = 0;
  v324._object = 0xE000000000000000;
  sub_1000DCA04(20);

  v324._countAndFlagsBits = 0xD000000000000010;
  v324._object = 0x80000001000EAD30;
  v326._countAndFlagsBits = v314;
  v341._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v341);

  v342._countAndFlagsBits = 8236;
  v342._object = 0xE200000000000000;
  sub_1000DBFE4(v342);
  sub_1000DBFE4(v324);

  v343._countAndFlagsBits = 0x7A696C6175736976;
  v343._object = 0xEE003D6E6F697461;
  sub_1000DBFE4(v343);
  v106 = v322;
  v107 = v310;
  if (v102)
  {
    if (v102 == 1)
    {
      v108._countAndFlagsBits = 0x73796144796C6E6FLL;
      v108._object = 0xE800000000000000;
    }

    else
    {
      v108._countAndFlagsBits = 0x6B656557796C6E6FLL;
      v108._object = 0xE900000000000073;
    }
  }

  else
  {
    v108._countAndFlagsBits = 0x6557724F73796164;
    v108._object = 0xEB00000000736B65;
  }

  sub_1000DBFE4(v108);
  sub_1000080B0(v319, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v301, &qword_100124060, &unk_1000E4080);
  v109 = v327;
  v110 = v328;
  sub_1000080B0(v308 + v305, &qword_1001203B8, &qword_1000E0460);
  sub_1000080B0(v307 + v306, &qword_1001203B8, &qword_1000E0460);
  v344._countAndFlagsBits = v109;
  v344._object = v110;
  sub_1000DBFE4(v344);

  v112 = v329;
  v111 = v330;
  if (qword_10011FAD8 != -1)
  {
    swift_once();
  }

  v113 = sub_1000DAFF4();
  v114 = sub_100007EBC(v113, qword_100123FA0);

  v319 = v114;
  v115 = sub_1000DAFD4();
  v116 = sub_1000DC4B4();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v324._countAndFlagsBits = v118;
    *v117 = 136315138;
    *(v117 + 4) = sub_10001A58C(v112, v111, &v324._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v115, v116, "[calculateStreaksFor] %s", v117, 0xCu);
    sub_100007FC0(v118);

    v106 = v322;
  }

  v119 = v311;
  v120 = v316;
  sub_100007F58(v318, v316, &qword_100124060, &unk_1000E4080);
  sub_100007F58(v106, v323, &qword_100124060, &unk_1000E4080);
  if (!v102)
  {
    v124 = v288;
    sub_100007F58(v120, v288, &qword_100124060, &unk_1000E4080);
    v125 = v320;
    if (*v124 < 1)
    {
      v129 = sub_1000DAFD4();
      v130 = sub_1000DC4C4();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = " has already been elapsed (";
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v324._countAndFlagsBits = v133;
        *v132 = 136315138;
        v134 = 0xD00000000000002CLL;
        goto LABEL_48;
      }
    }

    else
    {
      v126 = v286;
      sub_100007F58(v124, v286, &qword_100124060, &unk_1000E4080);
      v127 = v317;
      v128 = *(v317 + 48);
      if (v300(v126 + v128, 1, v125) != 1)
      {
        v185 = *(v315 + 32);
        v186 = v283;
        v185(v283, v126 + v128, v125);
        v187 = v124;
        v188 = v125;
        v189 = v313;
        v190 = *(v313 + 48);
        v191 = v293;
        sub_10001865C(v187, v293, &qword_100124060, &unk_1000E4080);
        v192 = *(v127 + 48);
        v193 = v297;
        *v297 = *v191;
        v185(&v193[v190], v186, v188);
        v194 = v189;
        v183 = *(v312 + 56);
        v195 = v193;
        v119 = v311;
        (v183)(v195, 0, 1, v194);
        v120 = v316;
        sub_1000080B0(v191 + v192, &qword_1001203B8, &qword_1000E0460);
        v184 = v296;
        v182 = v289;
LABEL_51:
        sub_100007F58(v323, v184, &qword_100124060, &unk_1000E4080);
        if (*v184 < 1)
        {
          v208 = sub_1000DAFD4();
          v209 = sub_1000DC4C4();
          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v324._countAndFlagsBits = v211;
            *v210 = 136315138;
            v119 = v311;
            *(v210 + 4) = sub_10001A58C(0xD00000000000002CLL, 0x80000001000EAF20, &v324._countAndFlagsBits);
            _os_log_impl(&_mh_execute_header, v208, v209, "[calculateStreaksFor] %s", v210, 0xCu);
            sub_100007FC0(v211);
          }

          v205 = v297;
          v202 = v312;
          v206 = v292;
          v207 = v294;
        }

        else
        {
          v310 = v183;
          sub_100007F58(v184, v182, &qword_100124060, &unk_1000E4080);
          v196 = v317;
          v197 = *(v317 + 48);
          v198 = v320;
          if (v300(v182 + v197, 1, v320) != 1)
          {
            sub_1000080B0(v323, &qword_100124060, &unk_1000E4080);
            sub_1000080B0(v120, &qword_100124060, &unk_1000E4080);
            v214 = *(v315 + 32);
            v215 = v284;
            v214(v284, v182 + v197, v198);
            v216 = *(v313 + 48);
            v217 = v184;
            v218 = v196;
            v219 = v293;
            v213 = v313;
            sub_10001865C(v217, v293, &qword_100124060, &unk_1000E4080);
            v220 = *(v218 + 48);
            v212 = v295;
            *v295 = *v219;
            v214((v212 + v216), v215, v198);
            v202 = v312;
            (v310)(v212, 0, 1, v213);
            sub_1000080B0(v219 + v220, &qword_1001203B8, &qword_1000E0460);
            v205 = v297;
            v206 = v292;
            v207 = v294;
LABEL_61:
            sub_100007F58(v205, v119, &qword_100124070, &qword_1000E4090);
            v221 = *(v202 + 48);
            v222 = v221(v119, 1, v213);
            v223 = v291;
            if (v222 == 1)
            {
              v224 = &qword_100124070;
              v225 = &qword_1000E4090;
              v226 = v119;
            }

            else
            {
              sub_10001865C(v119, v207, &qword_100124078, &qword_1000E4098);
              if (v221(v212, 1, v213) == 1)
              {
                v227 = *v207;
                v329 = 0;
                v330 = 0xE000000000000000;
                v347._countAndFlagsBits = 0x4554454C504D4F43;
                v347._object = 0xEC000000202F7720;
                sub_1000DBFE4(v347);
                v324._countAndFlagsBits = 0;
                v324._object = v227;
                *&v325 = 0;
                *(&v325 + 1) = v227;
                sub_1000DCAE4();
                v229 = v329;
                v228 = v330;

                v230 = sub_1000DAFD4();
                v231 = sub_1000DC4B4();

                if (os_log_type_enabled(v230, v231))
                {
                  v232 = swift_slowAlloc();
                  v233 = swift_slowAlloc();
                  v324._countAndFlagsBits = v233;
                  *v232 = 136315138;
                  *(v232 + 4) = sub_10001A58C(v229, v228, &v324._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v230, v231, "[calculateStreaksFor] %s", v232, 0xCu);
                  sub_100007FC0(v233);
                  v212 = v295;
                }

                sub_1000080B0(v294, &qword_100124078, &qword_1000E4098);
                sub_1000080B0(v322, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v318, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v212, &qword_100124070, &qword_1000E4090);
                sub_1000080B0(v205, &qword_100124070, &qword_1000E4090);
                return 0;
              }

              v224 = &qword_100124078;
              v225 = &qword_1000E4098;
              v226 = v207;
            }

            sub_1000080B0(v226, v224, v225);
            sub_100007F58(v212, v223, &qword_100124070, &qword_1000E4090);
            if (v221(v223, 1, v213) == 1)
            {
              v234 = &qword_100124070;
              v235 = &qword_1000E4090;
              v236 = v223;
            }

            else
            {
              v237 = v285;
              sub_10001865C(v223, v285, &qword_100124078, &qword_1000E4098);
              if (v221(v205, 1, v213) == 1)
              {
                v238 = *v237;
                v329 = 0;
                v330 = 0xE000000000000000;
                v348._countAndFlagsBits = 0x4554454C504D4F43;
                v348._object = 0xEC000000202F7720;
                sub_1000DBFE4(v348);
                v324._countAndFlagsBits = 1;
                v324._object = v238;
                *&v325 = 1;
                *(&v325 + 1) = v238;
                sub_1000DCAE4();
                v240 = v329;
                v239 = v330;

                v241 = sub_1000DAFD4();
                v242 = sub_1000DC4B4();

                v243 = v237;
                if (os_log_type_enabled(v241, v242))
                {
                  v244 = swift_slowAlloc();
                  v245 = swift_slowAlloc();
                  v324._countAndFlagsBits = v245;
                  *v244 = 136315138;
                  *(v244 + 4) = sub_10001A58C(v240, v239, &v324._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v241, v242, "[calculateStreaksFor] %s", v244, 0xCu);
                  sub_100007FC0(v245);
                  v212 = v295;
                }

                sub_1000080B0(v243, &qword_100124078, &qword_1000E4098);
                sub_1000080B0(v322, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v318, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v212, &qword_100124070, &qword_1000E4090);
                sub_1000080B0(v205, &qword_100124070, &qword_1000E4090);
                return 1;
              }

              v234 = &qword_100124078;
              v235 = &qword_1000E4098;
              v236 = v237;
            }

            sub_1000080B0(v236, v234, v235);
            sub_100007F58(v205, v206, &qword_100124070, &qword_1000E4090);
            if (v221(v206, 1, v213) == 1)
            {
              v246 = v206;
            }

            else
            {
              v247 = v206;
              v248 = v282;
              sub_10001865C(v247, v282, &qword_100124078, &qword_1000E4098);
              v249 = v280;
              sub_100007F58(v212, v280, &qword_100124070, &qword_1000E4090);
              if (v221(v249, 1, v213) != 1)
              {
                v256 = v281;
                sub_10001865C(v249, v281, &qword_100124078, &qword_1000E4098);
                v257 = *v256 > 1;
                v258 = *v248 < 3;
                v259 = v257 & v258;
                if (v257 && v258)
                {
                  v260 = *v256;
                }

                else
                {
                  v260 = *v248;
                }

                v329 = 0;
                v330 = 0xE000000000000000;
                v349._countAndFlagsBits = 0x4554454C504D4F43;
                v349._object = 0xEC000000202F7720;
                sub_1000DBFE4(v349);
                v324._countAndFlagsBits = v259;
                v324._object = v260;
                v261 = v259;
                *&v325 = v259;
                *(&v325 + 1) = v260;
                sub_1000DCAE4();
                v263 = v329;
                v262 = v330;

                v264 = sub_1000DAFD4();
                v265 = sub_1000DC4B4();

                if (os_log_type_enabled(v264, v265))
                {
                  v266 = swift_slowAlloc();
                  v267 = swift_slowAlloc();
                  v324._countAndFlagsBits = v267;
                  *v266 = 136315138;
                  *(v266 + 4) = sub_10001A58C(v263, v262, &v324._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v264, v265, "[calculateStreaksFor] %s", v266, 0xCu);
                  sub_100007FC0(v267);
                  v268 = v322;

                  v212 = v295;
                }

                else
                {

                  v268 = v322;
                }

                sub_1000080B0(v281, &qword_100124078, &qword_1000E4098);
                sub_1000080B0(v248, &qword_100124078, &qword_1000E4098);
                sub_1000080B0(v268, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v318, &qword_100124060, &unk_1000E4080);
                sub_1000080B0(v212, &qword_100124070, &qword_1000E4090);
                sub_1000080B0(v205, &qword_100124070, &qword_1000E4090);
                return v261;
              }

              sub_1000080B0(v248, &qword_100124078, &qword_1000E4098);
              v246 = v249;
            }

            sub_1000080B0(v246, &qword_100124070, &qword_1000E4090);
            if (v321 <= 0)
            {
              v252 = sub_1000DAFD4();
              v253 = sub_1000DC4C4();
              if (os_log_type_enabled(v252, v253))
              {
                v254 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                v324._countAndFlagsBits = v255;
                *v254 = 136315138;
                *(v254 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v324._countAndFlagsBits);
                _os_log_impl(&_mh_execute_header, v252, v253, "[calculateStreaksFor] %s", v254, 0xCu);
                sub_100007FC0(v255);
              }

              v251 = v314;
              if (v314 <= 0)
              {
                v269 = sub_1000DAFD4();
                v270 = sub_1000DC4C4();
                if (os_log_type_enabled(v269, v270))
                {
                  v271 = swift_slowAlloc();
                  v272 = swift_slowAlloc();
                  v324._countAndFlagsBits = v272;
                  *v271 = 136315138;
                  *(v271 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v324._countAndFlagsBits);
                  _os_log_impl(&_mh_execute_header, v269, v270, "[calculateStreaksFor] %s", v271, 0xCu);
                  sub_100007FC0(v272);
                }

                v251 = 0;
                v250 = 2;
              }

              else
              {
                v250 = 1;
              }

              v212 = v295;
            }

            else
            {
              v250 = 0;
              v251 = v321;
            }

            v329 = 0;
            v330 = 0xE000000000000000;
            v350._countAndFlagsBits = 0x4554454C504D4F43;
            v350._object = 0xEC000000202F7720;
            sub_1000DBFE4(v350);
            v324 = xmmword_1000E1190;
            *&v325 = v250;
            *(&v325 + 1) = v251;
            sub_1000DCAE4();
            v274 = v329;
            v273 = v330;

            v275 = sub_1000DAFD4();
            v276 = sub_1000DC4B4();

            if (os_log_type_enabled(v275, v276))
            {
              v277 = swift_slowAlloc();
              v278 = swift_slowAlloc();
              v324._countAndFlagsBits = v278;
              *v277 = 136315138;
              *(v277 + 4) = sub_10001A58C(v274, v273, &v324._countAndFlagsBits);
              _os_log_impl(&_mh_execute_header, v275, v276, "[calculateStreaksFor] %s", v277, 0xCu);
              sub_100007FC0(v278);
              v212 = v295;
            }

            sub_1000080B0(v322, &qword_100124060, &unk_1000E4080);
            sub_1000080B0(v318, &qword_100124060, &unk_1000E4080);
            v169 = &qword_100124070;
            v170 = &qword_1000E4090;
            sub_1000080B0(v212, &qword_100124070, &qword_1000E4090);
            v171 = v205;
            goto LABEL_99;
          }

          sub_1000080B0(v182 + v197, &qword_1001203B8, &qword_1000E0460);
          v199 = sub_1000DAFD4();
          v200 = sub_1000DC4C4();
          v201 = os_log_type_enabled(v199, v200);
          v202 = v312;
          if (v201)
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            v324._countAndFlagsBits = v204;
            *v203 = 136315138;
            v119 = v311;
            *(v203 + 4) = sub_10001A58C(0xD00000000000002DLL, 0x80000001000EAF80, &v324._countAndFlagsBits);
            _os_log_impl(&_mh_execute_header, v199, v200, "[calculateStreaksFor] %s", v203, 0xCu);
            sub_100007FC0(v204);
          }

          v205 = v297;
          v206 = v292;
          v207 = v294;
          v183 = v310;
        }

        sub_1000080B0(v296, &qword_100124060, &unk_1000E4080);
        sub_1000080B0(v323, &qword_100124060, &unk_1000E4080);
        sub_1000080B0(v316, &qword_100124060, &unk_1000E4080);
        v212 = v295;
        v213 = v313;
        (v183)(v295, 1, 1, v313);
        goto LABEL_61;
      }

      sub_1000080B0(v126 + v128, &qword_1001203B8, &qword_1000E0460);
      v129 = sub_1000DAFD4();
      v130 = sub_1000DC4C4();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = "eak detected! Duration < 1";
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v324._countAndFlagsBits = v133;
        *v132 = 136315138;
        v134 = 0xD00000000000002DLL;
LABEL_48:
        *(v132 + 4) = sub_10001A58C(v134, v131 | 0x8000000000000000, &v324._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v129, v130, "[calculateStreaksFor] %s", v132, 0xCu);
        sub_100007FC0(v133);
        v120 = v316;
      }
    }

    v182 = v289;
    sub_1000080B0(v124, &qword_100124060, &unk_1000E4080);
    v183 = *(v312 + 56);
    (v183)(v297, 1, 1, v313);
    v184 = v296;
    goto LABEL_51;
  }

  v121 = v320;
  if (v102 == 1)
  {
    v122 = 0;
    v123 = v120;
  }

  else
  {
    v122 = 1;
    v123 = v323;
    v321 = v314;
  }

  v135 = v299;
  v136 = v298;
  sub_100007F58(v123, v299, &qword_100124060, &unk_1000E4080);
  if (*v135 < 1)
  {
    v145 = sub_1000DAFD4();
    v146 = sub_1000DC4C4();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v324._countAndFlagsBits = v148;
      *v147 = 136315138;
      *(v147 + 4) = sub_10001A58C(0xD00000000000002CLL, 0x80000001000EAF20, &v324._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v145, v146, "[calculateStreaksFor] %s", v147, 0xCu);
      sub_100007FC0(v148);
      v120 = v316;
    }

    v142 = v321;
  }

  else
  {
    sub_100007F58(v135, v136, &qword_100124060, &unk_1000E4080);
    v137 = v317;
    v138 = *(v317 + 48);
    if (v300(v136 + v138, 1, v121) != 1)
    {
      sub_1000080B0(v323, &qword_100124060, &unk_1000E4080);
      sub_1000080B0(v120, &qword_100124060, &unk_1000E4080);
      v323 = v122;
      v151 = *(v315 + 32);
      v152 = v135;
      v153 = v287;
      v151(v287, v136 + v138, v121);
      v154 = *(v313 + 48);
      v155 = v152;
      v156 = v293;
      v150 = v313;
      sub_10001865C(v155, v293, &qword_100124060, &unk_1000E4080);
      v157 = *(v137 + 48);
      *v107 = *v156;
      v151(&v107[v154], v153, v121);
      v122 = v323;
      v149 = v312;
      (*(v312 + 56))(v107, 0, 1, v150);
      sub_1000080B0(v156 + v157, &qword_1001203B8, &qword_1000E0460);
      v142 = v321;
      goto LABEL_34;
    }

    sub_1000080B0(v136 + v138, &qword_1001203B8, &qword_1000E0460);
    v139 = sub_1000DAFD4();
    v140 = sub_1000DC4C4();
    v141 = os_log_type_enabled(v139, v140);
    v142 = v321;
    if (v141)
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v324._countAndFlagsBits = v144;
      *v143 = 136315138;
      *(v143 + 4) = sub_10001A58C(0xD00000000000002DLL, 0x80000001000EAF80, &v324._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v139, v140, "[calculateStreaksFor] %s", v143, 0xCu);
      sub_100007FC0(v144);
      v120 = v316;
    }
  }

  sub_1000080B0(v135, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v323, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v120, &qword_100124060, &unk_1000E4080);
  v149 = v312;
  v150 = v313;
  (*(v312 + 56))(v107, 1, 1, v313);
LABEL_34:
  if ((*(v149 + 48))(v107, 1, v150) == 1)
  {
    sub_1000080B0(v107, &qword_100124070, &qword_1000E4090);
    v158 = v122;
    if (v142 <= 0)
    {
      v159 = sub_1000DAFD4();
      v160 = sub_1000DC4C4();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v324._countAndFlagsBits = v162;
        *v161 = 136315138;
        *(v161 + 4) = sub_10001A58C(0xD00000000000002ALL, 0x80000001000EAF50, &v324._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v159, v160, "[calculateStreaksFor] %s", v161, 0xCu);
        sub_100007FC0(v162);
      }

      v142 = 0;
      v158 = 2;
    }

    v329 = 0;
    v330 = 0xE000000000000000;
    v345._countAndFlagsBits = 0x4554454C504D4F43;
    v345._object = 0xEC000000202F7720;
    sub_1000DBFE4(v345);
    v324 = xmmword_1000E1190;
    *&v325 = v158;
    *(&v325 + 1) = v142;
    sub_1000DCAE4();
    v164 = v329;
    v163 = v330;

    v165 = sub_1000DAFD4();
    v166 = sub_1000DC4B4();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v324._countAndFlagsBits = v168;
      *v167 = 136315138;
      *(v167 + 4) = sub_10001A58C(v164, v163, &v324._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v165, v166, "[calculateStreaksFor] %s", v167, 0xCu);
      sub_100007FC0(v168);
    }

    v169 = &qword_100124060;
    v170 = &unk_1000E4080;
    sub_1000080B0(v322, &qword_100124060, &unk_1000E4080);
    v171 = v318;
LABEL_99:
    sub_1000080B0(v171, v169, v170);
    return 2;
  }

  v172 = v290;
  sub_10001865C(v107, v290, &qword_100124078, &qword_1000E4098);
  v173 = *v172;
  v329 = 0;
  v330 = 0xE000000000000000;
  v346._countAndFlagsBits = 0x4554454C504D4F43;
  v346._object = 0xEC000000202F7720;
  sub_1000DBFE4(v346);
  v324._countAndFlagsBits = v122;
  v324._object = v173;
  *&v325 = v122;
  *(&v325 + 1) = v173;
  sub_1000DCAE4();
  v175 = v329;
  v174 = v330;

  v176 = sub_1000DAFD4();
  v177 = sub_1000DC4B4();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = v122;
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v324._countAndFlagsBits = v180;
    *v179 = 136315138;
    *(v179 + 4) = sub_10001A58C(v175, v174, &v324._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v176, v177, "[calculateStreaksFor] %s", v179, 0xCu);
    sub_100007FC0(v180);
    v181 = v322;

    v122 = v178;
  }

  else
  {

    v181 = v322;
  }

  sub_1000080B0(v172, &qword_100124078, &qword_1000E4098);
  sub_1000080B0(v181, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v318, &qword_100124060, &unk_1000E4080);
  return v122;
}

double *sub_100075D78(uint64_t a1, void *a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v486) = a7;
  v483 = a5;
  v484 = a6;
  v487 = a4;
  v485 = a3;
  v479 = a2;
  v477 = a1;
  v478 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry(0);
  v476 = *(v478 - 8);
  v7 = __chkstk_darwin(v478);
  v459 = &v423 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v455 = &v423 - v10;
  v11 = __chkstk_darwin(v9);
  v460 = &v423 - v12;
  v13 = __chkstk_darwin(v11);
  v431 = &v423 - v14;
  v15 = __chkstk_darwin(v13);
  v425 = &v423 - v16;
  v17 = __chkstk_darwin(v15);
  v426 = &v423 - v18;
  v19 = __chkstk_darwin(v17);
  v424 = &v423 - v20;
  v21 = __chkstk_darwin(v19);
  v473 = &v423 - v22;
  v23 = __chkstk_darwin(v21);
  v449 = &v423 - v24;
  v25 = __chkstk_darwin(v23);
  v434 = &v423 - v26;
  v27 = __chkstk_darwin(v25);
  v435 = &v423 - v28;
  __chkstk_darwin(v27);
  v432 = &v423 - v29;
  v30 = sub_100007BC0(&qword_100124050, &qword_1000E4068);
  __chkstk_darwin(v30 - 8);
  v442 = &v423 - v31;
  v32 = sub_100007BC0(&qword_100124058, &unk_1000E4070);
  __chkstk_darwin(v32 - 8);
  v439 = &v423 - v33;
  v441 = sub_1000D9B24();
  v440 = *(v441 - 8);
  __chkstk_darwin(v441);
  v438 = &v423 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_1000DA204();
  v444 = *(v446 - 8);
  __chkstk_darwin(v446);
  v445 = &v423 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000DA084();
  v489 = *(v36 - 8);
  v490 = v36;
  v37 = __chkstk_darwin(v36);
  v454 = &v423 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v427 = &v423 - v40;
  v41 = __chkstk_darwin(v39);
  v430 = &v423 - v42;
  v43 = __chkstk_darwin(v41);
  v450 = &v423 - v44;
  v45 = __chkstk_darwin(v43);
  v447 = &v423 - v46;
  v47 = __chkstk_darwin(v45);
  v451 = &v423 - v48;
  v49 = __chkstk_darwin(v47);
  v437 = &v423 - v50;
  v51 = __chkstk_darwin(v49);
  v448 = &v423 - v52;
  v53 = __chkstk_darwin(v51);
  v457 = &v423 - v54;
  __chkstk_darwin(v53);
  v488 = &v423 - v55;
  v56 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v57 = __chkstk_darwin(v56 - 8);
  v474 = &v423 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v453 = &v423 - v60;
  v61 = __chkstk_darwin(v59);
  v452 = &v423 - v62;
  v63 = __chkstk_darwin(v61);
  v428 = &v423 - v64;
  v65 = __chkstk_darwin(v63);
  v429 = &v423 - v66;
  v67 = __chkstk_darwin(v65);
  v433 = &v423 - v68;
  v69 = __chkstk_darwin(v67);
  v470 = (&v423 - v70);
  v71 = __chkstk_darwin(v69);
  v436 = &v423 - v72;
  v73 = __chkstk_darwin(v71);
  v443 = &v423 - v74;
  v75 = __chkstk_darwin(v73);
  v456 = &v423 - v76;
  v77 = __chkstk_darwin(v75);
  v458 = &v423 - v78;
  v79 = __chkstk_darwin(v77);
  v464 = (&v423 - v80);
  __chkstk_darwin(v79);
  v462 = &v423 - v81;
  v82 = sub_100007BC0(&qword_100124060, &unk_1000E4080);
  v83 = __chkstk_darwin(v82);
  v469 = &v423 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v472 = &v423 - v86;
  v87 = __chkstk_darwin(v85);
  v471 = (&v423 - v88);
  v89 = __chkstk_darwin(v87);
  v480 = (&v423 - v90);
  v91 = __chkstk_darwin(v89);
  v481 = &v423 - v92;
  v93 = __chkstk_darwin(v91);
  v463 = &v423 - v94;
  v95 = __chkstk_darwin(v93);
  v461 = &v423 - v96;
  v97 = __chkstk_darwin(v95);
  v99 = (&v423 - v98);
  v100 = __chkstk_darwin(v97);
  v102 = (&v423 - v101);
  v103 = __chkstk_darwin(v100);
  v105 = (&v423 - v104);
  v106 = __chkstk_darwin(v103);
  v108 = (&v423 - v107);
  v109 = __chkstk_darwin(v106);
  v111 = (&v423 - v110);
  v112 = __chkstk_darwin(v109);
  v114 = &v423 - v113;
  *(&v423 - v113) = v477;
  sub_100007F58(v479, &v423 + *(v112 + 48) - v113, &qword_1001203B8, &qword_1000E0460);
  *v111 = v485;
  sub_100007F58(v487, v111 + *(v82 + 48), &qword_1001203B8, &qword_1000E0460);
  v496._countAndFlagsBits = 0x2F77205452415453;
  v496._object = 0xE900000000000020;
  v487 = v114;
  sub_100007F58(v114, v108, &qword_100124060, &unk_1000E4080);
  v115 = *v108;
  v116 = *(v82 + 48);
  v482 = v111;
  sub_100007F58(v111, v105, &qword_100124060, &unk_1000E4080);
  v117 = *v105;
  v118 = *(v82 + 48);
  *v102 = v115;
  v468 = v108;
  v466 = v116;
  v119 = v108 + v116;
  v120 = v117;
  sub_100007F58(v119, v118 + v102, &qword_1001203B8, &qword_1000E0460);
  *v99 = v120;
  v121 = *(v82 + 48);
  v475 = v105;
  v465 = v118;
  v479 = v99;
  sub_100007F58(v118 + v105, v99 + v121, &qword_1001203B8, &qword_1000E0460);
  v494 = 0;
  v495 = 0xE000000000000000;
  v491._countAndFlagsBits = 0;
  v491._object = 0xE000000000000000;
  sub_1000DCA04(24);

  strcpy(&v493, "activeDaily=(");
  HIWORD(v493._object) = -4864;
  v491._countAndFlagsBits = v115;
  v497._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v497);
  v122 = v82;
  v123 = v489;

  v498._countAndFlagsBits = 2629676;
  v498._object = 0xE300000000000000;
  sub_1000DBFE4(v498);
  v467 = v102;
  v124 = v102;
  v125 = v462;
  v126 = v461;
  sub_100007F58(v124, v461, &qword_100124060, &unk_1000E4080);
  sub_10001865C(v126 + *(v82 + 48), v125, &qword_1001203B8, &qword_1000E0460);
  v127 = v123 + 48;
  v485 = *(v123 + 48);
  if (v485(v125, 1, v490) == 1)
  {
    sub_1000080B0(v125, &qword_1001203B8, &qword_1000E0460);
    v491 = 0;
    v492 = 0u;
  }

  else
  {
    v128 = v490;
    *(&v492 + 1) = v490;
    v129 = sub_100055EEC(&v491._countAndFlagsBits);
    (*(v123 + 32))(v129, v125, v128);
  }

  v130 = sub_1000731F0(&v491);
  v132 = v131;
  sub_1000080B0(&v491, &qword_100121470, &qword_1000E13B0);
  v499._countAndFlagsBits = v130;
  v499._object = v132;
  sub_1000DBFE4(v499);

  v500._countAndFlagsBits = 539765033;
  v500._object = 0xE400000000000000;
  sub_1000DBFE4(v500);
  sub_1000DBFE4(v493);

  v491._countAndFlagsBits = 0;
  v491._object = 0xE000000000000000;
  sub_1000DCA04(25);

  strcpy(&v493, "activeWeekly=(");
  HIBYTE(v493._object) = -18;
  v491._countAndFlagsBits = v120;
  v501._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v501);

  v502._countAndFlagsBits = 2629676;
  v502._object = 0xE300000000000000;
  sub_1000DBFE4(v502);
  v133 = v463;
  sub_100007F58(v479, v463, &qword_100124060, &unk_1000E4080);
  v134 = v464;
  sub_10001865C(v133 + *(v122 + 48), v464, &qword_1001203B8, &qword_1000E0460);
  v135 = v485(v134, 1, v490);
  v136 = v482;
  if (v135 == 1)
  {
    sub_1000080B0(v134, &qword_1001203B8, &qword_1000E0460);
    v491 = 0;
    v492 = 0u;
  }

  else
  {
    v137 = v490;
    *(&v492 + 1) = v490;
    v138 = sub_100055EEC(&v491._countAndFlagsBits);
    (*(v489 + 32))(v138, v134, v137);
  }

  v139 = sub_1000731F0(&v491);
  v141 = v140;
  sub_1000080B0(&v491, &qword_100121470, &qword_1000E13B0);
  v503._countAndFlagsBits = v139;
  v503._object = v141;
  sub_1000DBFE4(v503);

  v504._countAndFlagsBits = 539765033;
  v504._object = 0xE400000000000000;
  sub_1000DBFE4(v504);
  sub_1000DBFE4(v493);

  v491._countAndFlagsBits = 0;
  v491._object = 0xE000000000000000;
  sub_1000DCA04(19);

  v491._countAndFlagsBits = 0x697961447473616CLL;
  v491._object = 0xEF3D746E756F436CLL;
  v493._countAndFlagsBits = v483;
  v505._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v505);

  v506._countAndFlagsBits = 8236;
  v506._object = 0xE200000000000000;
  sub_1000DBFE4(v506);
  sub_1000DBFE4(v491);

  v491._countAndFlagsBits = 0;
  v491._object = 0xE000000000000000;
  sub_1000DCA04(20);

  v491._countAndFlagsBits = 0xD000000000000010;
  v491._object = 0x80000001000EAD30;
  v493._countAndFlagsBits = v484;
  v507._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v507);

  v508._countAndFlagsBits = 8236;
  v508._object = 0xE200000000000000;
  sub_1000DBFE4(v508);
  sub_1000DBFE4(v491);

  v509._countAndFlagsBits = 0x7A696C6175736976;
  v509._object = 0xEE003D6E6F697461;
  sub_1000DBFE4(v509);
  if (v486)
  {
    if (v486 == 1)
    {
      v142._countAndFlagsBits = 0x73796144796C6E6FLL;
      v142._object = 0xE800000000000000;
    }

    else
    {
      v142._countAndFlagsBits = 0x6B656557796C6E6FLL;
      v142._object = 0xE900000000000073;
    }
  }

  else
  {
    v142._countAndFlagsBits = 0x6557724F73796164;
    v142._object = 0xEB00000000736B65;
  }

  sub_1000DBFE4(v142);
  sub_1000080B0(v479, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v467, &qword_100124060, &unk_1000E4080);
  v143 = v494;
  v144 = v495;
  sub_1000080B0(v465 + v475, &qword_1001203B8, &qword_1000E0460);
  sub_1000080B0(v468 + v466, &qword_1001203B8, &qword_1000E0460);
  v510._countAndFlagsBits = v143;
  v510._object = v144;
  sub_1000DBFE4(v510);

  countAndFlagsBits = v496._countAndFlagsBits;
  object = v496._object;
  if (qword_10011FAD8 != -1)
  {
    swift_once();
  }

  v147 = sub_1000DAFF4();
  v148 = sub_100007EBC(v147, qword_100123FA0);

  v479 = v148;
  v149 = sub_1000DAFD4();
  v150 = sub_1000DC4B4();

  v151 = os_log_type_enabled(v149, v150);
  v475 = v122;
  v477 = v127;
  if (v151)
  {
    v152 = swift_slowAlloc();
    v153 = v136;
    v154 = swift_slowAlloc();
    v491._countAndFlagsBits = v154;
    *v152 = 136315138;
    *(v152 + 4) = sub_10001A58C(countAndFlagsBits, object, &v491._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v149, v150, "[calculateTimelineFor] %s", v152, 0xCu);
    sub_100007FC0(v154);
    v136 = v153;
  }

  v155 = v481;
  sub_100007F58(v487, v481, &qword_100124060, &unk_1000E4080);
  v156 = v480;
  sub_100007F58(v136, v480, &qword_100124060, &unk_1000E4080);
  sub_1000DA054();
  v157 = v471;
  sub_100007F58(v155, v471, &qword_100124060, &unk_1000E4080);
  v158 = *v157;
  v159 = v475;
  v160 = *(v475 + 12);
  v161 = v472;
  sub_100007F58(v156, v472, &qword_100124060, &unk_1000E4080);
  v162 = v136;
  v163 = *(v159 + 12);
  v164 = sub_1000733A8(v158, v157 + v160, *v161, (v161 + v163), v483, v484, v486);
  v166 = v165;
  v468 = v167;
  v467 = v168;
  sub_1000080B0(v161 + v163, &qword_1001203B8, &qword_1000E0460);
  sub_1000080B0(v157 + v160, &qword_1001203B8, &qword_1000E0460);
  if (v164 == 2)
  {
    v169 = _swiftEmptyArrayStorage;
    v170 = v476;
    v171 = v473;
    v172 = v162;
LABEL_23:
    v175 = v470;
    v176 = v469;
    goto LABEL_24;
  }

  if (v164)
  {
    v173 = v162;
  }

  else
  {
    v173 = v487;
  }

  sub_100007F58(v173, v157, &qword_100124060, &unk_1000E4080);
  v174 = v458;
  sub_10001865C(v157 + *(v159 + 12), v458, &qword_1001203B8, &qword_1000E0460);
  if (v485(v174, 1, v490) == 1)
  {
    v172 = v162;
    sub_1000080B0(v174, &qword_1001203B8, &qword_1000E0460);
    v169 = _swiftEmptyArrayStorage;
    v170 = v476;
    v171 = v473;
    goto LABEL_23;
  }

  v209 = v489;
  v210 = *(v489 + 32);
  v211 = v457;
  v210(v457, v174, v490);
  sub_10003C96C(&qword_100120AE0, &protocol conformance descriptor for Date);
  if (sub_1000DBDF4())
  {
    v212 = *(v209 + 16);
    v213 = v456;
    v214 = v211;
    v215 = v490;
    v466 = v209 + 16;
    v465 = v212;
    v212(v456, v214, v490);
    v217 = *(v209 + 56);
    v216 = v209 + 56;
    v464 = v217;
    (v217)(v213, 0, 1, v215);
    v218 = v213;
    v219 = v443;
    sub_100007F58(v218, v443, &qword_1001203B8, &qword_1000E0460);
    if (v485(v219, 1, v215) == 1)
    {
      v220 = v219;
LABEL_67:
      sub_1000080B0(v220, &qword_1001203B8, &qword_1000E0460);
      v280 = v449;
      v465(v449, v488, v490);
      v281 = v478;
      sub_100007F58(v456, v280 + *(v478 + 20), &qword_1001203B8, &qword_1000E0460);
      v282 = (v280 + v281[6]);
      *v282 = v164;
      v282[1] = v166;
      v283 = (v280 + v281[7]);
      v284 = v467;
      *v283 = v468;
      v283[1] = v284;
      *(v280 + v281[8]) = 0;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v286 = *(v169 + 2);
      v285 = *(v169 + 3);
      v172 = v482;
      v176 = v469;
      if (v286 >= v285 >> 1)
      {
        v169 = sub_1000474A0((v285 > 1), v286 + 1, 1, v169);
      }

      v170 = v476;
      v175 = v470;
      sub_1000080B0(v456, &qword_1001203B8, &qword_1000E0460);
      (*(v489 + 8))(v457, v490);
      *(v169 + 2) = v286 + 1;
      sub_10007994C(v449, v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v286);
      v171 = v473;
      goto LABEL_24;
    }

    v463 = v216;
    v210(v448, v219, v490);
    sub_1000DA1D4();
    (*(v444 + 56))(v439, 1, 1, v446);
    v276 = sub_1000DA274();
    (*(*(v276 - 8) + 56))(v442, 1, 1, v276);
    v277 = v438;
    v278 = v448;
    sub_1000D9B14();
    v220 = v436;
    v279 = v445;
    sub_1000DA194();
    (*(v440 + 8))(v277, v441);
    (*(v444 + 8))(v279, v446);
    if (v485(v220, 1, v490) == 1)
    {
      (*(v489 + 8))(v278, v490);
      goto LABEL_67;
    }

    v298 = v437;
    v210(v437, v220, v490);
    v299 = v488;
    if (sub_1000DBDF4())
    {
      v300 = v432;
      v301 = v299;
      v302 = v490;
      v303 = v465;
      v465(v432, v301, v490);
      v304 = v478;
      v305 = *(v478 + 20);
      v303(v300 + v305, v298, v302);
      (v464)(v300 + v305, 0, 1, v302);
      v306 = (v300 + v304[6]);
      *v306 = v164;
      v306[1] = v166;
      v307 = (v300 + v304[7]);
      v308 = v467;
      *v307 = v468;
      v307[1] = v308;
      *(v300 + v304[8]) = 0;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v310 = *(v169 + 2);
      v309 = *(v169 + 3);
      if (v310 >= v309 >> 1)
      {
        v169 = sub_1000474A0((v309 > 1), v310 + 1, 1, v169);
      }

      v462 = v310 + 1;
      *(v169 + 2) = v310 + 1;
      v461 = (*(v476 + 80) + 32) & ~*(v476 + 80);
      v458 = *(v476 + 72);
      sub_10007994C(v300, v169 + v461 + v458 * v310);
      v311 = v435;
      v312 = v298;
      v313 = v490;
      v314 = v465;
      v465(v435, v312, v490);
      v315 = v478;
      v316 = *(v478 + 20);
      v314(v311 + v316, v448, v313);
      (v464)(v311 + v316, 0, 1, v313);
      v317 = (v311 + v315[6]);
      *v317 = v164;
      v317[1] = v166;
      v318 = (v311 + v315[7]);
      v319 = v467;
      *v318 = v468;
      v318[1] = v319;
      *(v311 + v315[8]) = 1;
      v320 = *(v169 + 3);
      if ((v310 + 2) > (v320 >> 1))
      {
        v169 = sub_1000474A0((v320 > 1), v310 + 2, 1, v169);
      }

      v321 = v490;
      v322 = v482;
      v176 = v469;
      v323 = *(v489 + 8);
      v323(v437, v490);
      v323(v448, v321);
      sub_1000080B0(v456, &qword_1001203B8, &qword_1000E0460);
      v323(v457, v321);
      *(v169 + 2) = v310 + 2;
      sub_10007994C(v435, v169 + v461 + v458 * v462);
      v170 = v476;
      v171 = v473;
      v172 = v322;
      v175 = v470;
    }

    else
    {
      v335 = v434;
      v336 = v490;
      v337 = v465;
      v465(v434, v299, v490);
      v338 = v478;
      v339 = *(v478 + 20);
      v337(v335 + v339, v448, v336);
      (v464)(v335 + v339, 0, 1, v336);
      v340 = (v335 + v338[6]);
      *v340 = v164;
      v340[1] = v166;
      v341 = (v335 + v338[7]);
      v342 = v467;
      *v341 = v468;
      v341[1] = v342;
      *(v335 + v338[8]) = 1;
      v169 = sub_1000474A0(0, 1, 1, _swiftEmptyArrayStorage);
      v344 = *(v169 + 2);
      v343 = *(v169 + 3);
      v176 = v469;
      if (v344 >= v343 >> 1)
      {
        v169 = sub_1000474A0((v343 > 1), v344 + 1, 1, v169);
      }

      v345 = v490;
      v346 = v482;
      v347 = *(v489 + 8);
      v347(v437, v490);
      v347(v448, v345);
      sub_1000080B0(v456, &qword_1001203B8, &qword_1000E0460);
      v347(v457, v345);
      *(v169 + 2) = v344 + 1;
      v170 = v476;
      sub_10007994C(v434, v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v476 + 72) * v344);
      v171 = v473;
      v175 = v470;
      v172 = v346;
    }
  }

  else
  {
    v491._countAndFlagsBits = 0;
    v491._object = 0xE000000000000000;
    sub_1000DCA04(88);
    v512._countAndFlagsBits = 0xD000000000000037;
    v512._object = 0x80000001000EAEC0;
    sub_1000DBFE4(v512);
    sub_10003C96C(&qword_100124068, &protocol conformance descriptor for Date);
    v513._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v513);

    v514._countAndFlagsBits = 0xD00000000000001BLL;
    v514._object = 0x80000001000EAF00;
    sub_1000DBFE4(v514);
    v515._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v515);

    v516._countAndFlagsBits = 11817;
    v516._object = 0xE200000000000000;
    sub_1000DBFE4(v516);
    v248 = v491;

    v249 = sub_1000DAFD4();
    v250 = sub_1000DC4C4();

    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v491._countAndFlagsBits = v252;
      *v251 = 136315138;
      *(v251 + 4) = sub_10001A58C(v248._countAndFlagsBits, v248._object, &v491._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v249, v250, "[calculateTimelineFor] %s", v251, 0xCu);
      sub_100007FC0(v252);
    }

    v170 = v476;
    v172 = v482;
    v175 = v470;
    v176 = v469;
    (*(v489 + 8))(v211, v490);
    v169 = _swiftEmptyArrayStorage;
    v171 = v473;
  }

LABEL_24:
  v177 = *(v169 + 2);
  if (!v177)
  {
    sub_1000080B0(v480, &qword_100124060, &unk_1000E4080);
    sub_1000080B0(v481, &qword_100124060, &unk_1000E4080);
    v187 = v488;
    v186 = v489;
    goto LABEL_33;
  }

  v178 = v172;
  v179 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v180 = *(v170 + 72);
  sub_10007988C(v169 + v179 + v180 * (v177 - 1), v171);
  v181 = *(v171 + *(v478 + 24));
  if (v181 == 2 || (v181 & 1) != 0 || v486 == 1)
  {
    sub_1000798F0(v171);
    sub_1000080B0(v480, &qword_100124060, &unk_1000E4080);
    v185 = v481;
    v183 = &qword_100124060;
    v184 = &unk_1000E4080;
    goto LABEL_32;
  }

  v486 = v179;
  sub_100007F58(v171 + *(v478 + 20), v175, &qword_1001203B8, &qword_1000E0460);
  v182 = v485;
  if (v485(v175, 1, v490) == 1)
  {
    sub_1000798F0(v171);
    sub_1000080B0(v480, &qword_100124060, &unk_1000E4080);
    sub_1000080B0(v481, &qword_100124060, &unk_1000E4080);
    v183 = &qword_1001203B8;
    v184 = &qword_1000E0460;
    v185 = v175;
LABEL_32:
    sub_1000080B0(v185, v183, v184);
    v186 = v489;
    v172 = v178;
    v187 = v488;
    goto LABEL_33;
  }

  v469 = v180;
  v470 = v169;
  v241 = v490;
  v242 = v178;
  v243 = v489 + 32;
  v244 = *(v489 + 32);
  v245 = v451;
  v244(v451, v175, v490);
  sub_100007F58(v242, v176, &qword_100124060, &unk_1000E4080);
  v246 = v475;
  v247 = *(v475 + 12);
  if (v182(v176 + v247, 1, v241) == 1)
  {
    v186 = v489;
    (*(v489 + 8))(v245, v490);
    sub_1000798F0(v171);
    sub_1000080B0(v480, &qword_100124060, &unk_1000E4080);
    sub_1000080B0(v481, &qword_100124060, &unk_1000E4080);
    sub_1000080B0(v176 + v247, &qword_1001203B8, &qword_1000E0460);
    v187 = v488;
    v170 = v476;
    v169 = v470;
    v172 = v482;
    goto LABEL_33;
  }

  v253 = v490;
  v464 = v244;
  v463 = v243;
  v244(v447, (v176 + v247), v490);
  v254 = *(v489 + 16);
  v466 = v489 + 16;
  v465 = v254;
  v254(v450, v245, v253);
  v255 = v471;
  v256 = v481;
  sub_100007F58(v481, v471, &qword_100124060, &unk_1000E4080);
  v257 = *v255;
  v258 = *(v246 + 12);
  v259 = v480;
  v260 = v472;
  sub_100007F58(v480, v472, &qword_100124060, &unk_1000E4080);
  v261 = *(v246 + 12);
  v262 = sub_1000733A8(v257, v255 + v258, *v260, (v260 + v261), v483, v484, 2);
  v483 = v263;
  v484 = v264;
  v266 = v265;
  sub_1000080B0(v259, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v256, &qword_100124060, &unk_1000E4080);
  v267 = v451;
  sub_1000080B0(v260 + v261, &qword_1001203B8, &qword_1000E0460);
  v268 = v255 + v258;
  v269 = v450;
  sub_1000080B0(v268, &qword_1001203B8, &qword_1000E0460);
  if (sub_1000DA004())
  {
    v491._countAndFlagsBits = 0;
    v491._object = 0xE000000000000000;
    sub_1000DCA04(116);
    v517._countAndFlagsBits = 0xD00000000000004ELL;
    v517._object = 0x80000001000EAE40;
    sub_1000DBFE4(v517);
    sub_10003C96C(&qword_100124068, &protocol conformance descriptor for Date);
    v518._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v518);

    v519._countAndFlagsBits = 0xD000000000000020;
    v519._object = 0x80000001000EAE90;
    sub_1000DBFE4(v519);
    v520._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v520);

    v521._countAndFlagsBits = 11817;
    v521._object = 0xE200000000000000;
    sub_1000DBFE4(v521);
    v270 = v491;

    v271 = sub_1000DAFD4();
    v272 = sub_1000DC4C4();

    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      v491._countAndFlagsBits = v274;
      *v273 = 136315138;
      *(v273 + 4) = sub_10001A58C(v270._countAndFlagsBits, v270._object, &v491._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v271, v272, "[calculateTimelineFor] %s", v273, 0xCu);
      sub_100007FC0(v274);

      v275 = v451;
    }

    else
    {
      v275 = v267;
    }

    v187 = v488;
    v186 = v489;
    v170 = v476;
    v324 = v482;
    v169 = v470;
    v325 = *(v489 + 8);
    v326 = v490;
    v325(v450, v490);
    v325(v447, v326);
    v325(v275, v326);
    sub_1000798F0(v473);
    v172 = v324;
    goto LABEL_33;
  }

  sub_10003C96C(&qword_100120AE0, &protocol conformance descriptor for Date);
  v287 = v447;
  if (sub_1000DBDF4())
  {
    if (v262 == 2)
    {
      v288 = v287;
      v491._countAndFlagsBits = 0;
      v491._object = 0xE000000000000000;
      sub_1000DCA04(103);
      v522._countAndFlagsBits = 0xD000000000000063;
      v522._object = 0x80000001000EADD0;
      sub_1000DBFE4(v522);
      v496._countAndFlagsBits = 0;
      v496._object = 0xE000000000000000;
      sub_1000DCA04(18);

      v496._countAndFlagsBits = 0x3D657669746361;
      v496._object = 0xE700000000000000;
      v523._countAndFlagsBits = sub_1000732D0(v262);
      sub_1000DBFE4(v523);

      v524._countAndFlagsBits = 0x3D7473616C202CLL;
      v524._object = 0xE700000000000000;
      sub_1000DBFE4(v524);
      v525._countAndFlagsBits = sub_1000732D0(v484);
      sub_1000DBFE4(v525);

      sub_1000DBFE4(v496);

      v526._countAndFlagsBits = 11817;
      v526._object = 0xE200000000000000;
      sub_1000DBFE4(v526);
      v289 = v491;

      v290 = sub_1000DAFD4();
      v291 = sub_1000DC4C4();

      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        v293 = swift_slowAlloc();
        v491._countAndFlagsBits = v293;
        *v292 = 136315138;
        *(v292 + 4) = sub_10001A58C(v289._countAndFlagsBits, v289._object, &v491._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v290, v291, "[calculateTimelineFor] %s", v292, 0xCu);
        sub_100007FC0(v293);
      }

      v187 = v488;
      v186 = v489;
      v170 = v476;
      v294 = v451;
      v295 = v482;
      v296 = *(v489 + 8);
      v297 = v490;
      v296(v450, v490);
      v296(v288, v297);
      v296(v294, v297);
      sub_1000798F0(v473);
      v169 = v470;
      v172 = v295;
      goto LABEL_33;
    }

    v348 = v433;
    v349 = v287;
    v350 = v490;
    v465(v433, v349, v490);
    v351 = *(v489 + 56);
    v481 = v489 + 56;
    v480 = v351;
    (v351)(v348, 0, 1, v350);
    v352 = v429;
    sub_100007F58(v348, v429, &qword_1001203B8, &qword_1000E0460);
    if (v485(v352, 1, v350) == 1)
    {
      v353 = v482;
      v354 = v447;
LABEL_93:
      sub_1000080B0(v352, &qword_1001203B8, &qword_1000E0460);
      v360 = v431;
      v465(v431, v269, v490);
      v361 = v478;
      sub_100007F58(v433, v360 + *(v478 + 20), &qword_1001203B8, &qword_1000E0460);
      v362 = (v360 + v361[6]);
      v364 = v483;
      v363 = v484;
      *v362 = v262;
      v362[1] = v364;
      v365 = (v360 + v361[7]);
      *v365 = v363;
      v365[1] = v266;
      *(v360 + v361[8]) = 0;
      v366 = v470;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v366 = sub_1000474A0(0, *(v366 + 2) + 1, 1, v366);
      }

      v368 = *(v366 + 2);
      v367 = *(v366 + 3);
      if (v368 >= v367 >> 1)
      {
        v366 = sub_1000474A0((v367 > 1), v368 + 1, 1, v366);
      }

      sub_1000080B0(v433, &qword_1001203B8, &qword_1000E0460);
      v370 = v489;
      v369 = v490;
      v371 = *(v489 + 8);
      v371(v450, v490);
      v371(v354, v369);
      v371(v451, v369);
      sub_1000798F0(v473);
      v169 = v366;
      *(v366 + 2) = v368 + 1;
      v186 = v370;
      sub_10007994C(v431, v366 + v486 + v368 * v469);
      v187 = v488;
      v170 = v476;
      v172 = v353;
      goto LABEL_33;
    }

    v475 = v266;
    v355 = v430;
    v464(v430, v352, v490);
    sub_1000DA1D4();
    v356 = v444;
    (*(v444 + 56))(v439, 1, 1, v446);
    v357 = sub_1000DA274();
    (*(*(v357 - 8) + 56))(v442, 1, 1, v357);
    v358 = v438;
    sub_1000D9B14();
    v352 = v428;
    v359 = v445;
    sub_1000DA194();
    (*(v440 + 8))(v358, v441);
    (*(v356 + 8))(v359, v446);
    if (v485(v352, 1, v490) == 1)
    {
      (*(v489 + 8))(v355, v490);
      v353 = v482;
      v354 = v447;
      v266 = v475;
      goto LABEL_93;
    }

    v372 = v427;
    v464(v427, v352, v490);
    v373 = sub_1000DBDF4();
    v374 = v482;
    v375 = v447;
    if (v373)
    {
      v376 = v424;
      v377 = v269;
      v378 = v490;
      v379 = v465;
      v465(v424, v377, v490);
      v380 = v478;
      v381 = *(v478 + 20);
      v379(v376 + v381, v372, v378);
      (v480)(v376 + v381, 0, 1, v378);
      v382 = (v376 + v380[6]);
      v383 = v483;
      v384 = v484;
      *v382 = v262;
      v382[1] = v383;
      v385 = (v376 + v380[7]);
      v386 = v475;
      *v385 = v384;
      v385[1] = v386;
      *(v376 + v380[8]) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v470 = sub_1000474A0(0, *(v470 + 2) + 1, 1, v470);
      }

      v387 = v486;
      v389 = *(v470 + 2);
      v388 = *(v470 + 3);
      if (v389 >= v388 >> 1)
      {
        v470 = sub_1000474A0((v388 > 1), v389 + 1, 1, v470);
      }

      v390 = v470;
      v472 = v389 + 1;
      *(v470 + 2) = v389 + 1;
      sub_10007994C(v376, v390 + v387 + v389 * v469);
      v391 = v426;
      v392 = v372;
      v393 = v372;
      v394 = v490;
      v395 = v465;
      v465(v426, v393, v490);
      v396 = v478;
      v397 = *(v478 + 20);
      v395(v391 + v397, v430, v394);
      (v480)(v391 + v397, 0, 1, v394);
      v398 = (v391 + v396[6]);
      v399 = v483;
      v400 = v484;
      *v398 = v262;
      v398[1] = v399;
      v401 = (v391 + v396[7]);
      v402 = v475;
      *v401 = v400;
      v401[1] = v402;
      *(v391 + v396[8]) = 1;
      v403 = *(v390 + 3);
      if ((v389 + 2) > (v403 >> 1))
      {
        v470 = sub_1000474A0((v403 > 1), v389 + 2, 1, v470);
      }

      v404 = v447;
      v405 = v489;
      v406 = *(v489 + 8);
      v406(v392, v394);
      v406(v430, v394);
      sub_1000080B0(v433, &qword_1001203B8, &qword_1000E0460);
      v406(v450, v394);
      v406(v404, v394);
      v406(v451, v394);
      sub_1000798F0(v473);
      v169 = v470;
      *(v470 + 2) = v389 + 2;
      v186 = v405;
      sub_10007994C(v426, v169 + v486 + v472 * v469);
      v187 = v488;
      v170 = v476;
      v172 = v482;
    }

    else
    {
      v407 = v425;
      v408 = v490;
      v409 = v465;
      v465(v425, v269, v490);
      v410 = v478;
      v411 = *(v478 + 20);
      v409(v407 + v411, v430, v408);
      (v480)(v407 + v411, 0, 1, v408);
      v412 = (v407 + v410[6]);
      v413 = v483;
      v414 = v484;
      *v412 = v262;
      v412[1] = v413;
      v415 = (v407 + v410[7]);
      v416 = v475;
      *v415 = v414;
      v415[1] = v416;
      *(v407 + v410[8]) = 1;
      v417 = v470;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v417 = sub_1000474A0(0, *(v417 + 2) + 1, 1, v417);
      }

      v419 = *(v417 + 2);
      v418 = *(v417 + 3);
      v172 = v374;
      if (v419 >= v418 >> 1)
      {
        v417 = sub_1000474A0((v418 > 1), v419 + 1, 1, v417);
      }

      v421 = v489;
      v420 = v490;
      v422 = *(v489 + 8);
      v422(v427, v490);
      v422(v430, v420);
      sub_1000080B0(v433, &qword_1001203B8, &qword_1000E0460);
      v422(v450, v420);
      v422(v375, v420);
      v422(v451, v420);
      sub_1000798F0(v473);
      v169 = v417;
      *(v417 + 2) = v419 + 1;
      v186 = v421;
      sub_10007994C(v425, v417 + v486 + v419 * v469);
      v187 = v488;
      v170 = v476;
    }
  }

  else
  {
    v491._countAndFlagsBits = 0;
    v491._object = 0xE000000000000000;
    sub_1000DCA04(118);
    v527._countAndFlagsBits = 0xD00000000000004CLL;
    v527._object = 0x80000001000EAD50;
    sub_1000DBFE4(v527);
    sub_10003C96C(&qword_100124068, &protocol conformance descriptor for Date);
    v528._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v528);

    v529._countAndFlagsBits = 0xD000000000000024;
    v529._object = 0x80000001000EADA0;
    sub_1000DBFE4(v529);
    v530._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v530);

    v531._countAndFlagsBits = 11817;
    v531._object = 0xE200000000000000;
    sub_1000DBFE4(v531);
    v327 = v491;

    v328 = sub_1000DAFD4();
    v329 = sub_1000DC4C4();

    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      v491._countAndFlagsBits = v331;
      *v330 = 136315138;
      *(v330 + 4) = sub_10001A58C(v327._countAndFlagsBits, v327._object, &v491._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v328, v329, "[calculateTimelineFor] %s", v330, 0xCu);
      sub_100007FC0(v331);
    }

    v187 = v488;
    v186 = v489;
    v170 = v476;
    v332 = v451;
    v172 = v482;
    v333 = *(v489 + 8);
    v334 = v490;
    v333(v450, v490);
    v333(v447, v334);
    v333(v332, v334);
    sub_1000798F0(v473);
    v169 = v470;
  }

LABEL_33:
  v188 = *(v169 + 2);
  if (v188)
  {
    v189 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v190 = *(v170 + 72);
    v191 = v460;
    sub_10007988C(v169 + v189 + v190 * (v188 - 1), v460);
    v192 = v191;
    v193 = v478;
    v194 = (v191 + *(v478 + 24));
    v195 = *v194;
    if (v195 == 2)
    {
      sub_1000798F0(v192);
    }

    else
    {
      v486 = *(v194 + 1);
      v196 = v192;
      v197 = v452;
      sub_100007F58(v192 + *(v478 + 20), v452, &qword_1001203B8, &qword_1000E0460);
      if (v485(v197, 1, v490) != 1)
      {
        v221 = *(v186 + 32);
        v222 = v186;
        v223 = v169;
        v224 = v490;
        v225 = v454;
        v221(v454, v197, v490);
        v226 = v453;
        (*(v222 + 56))(v453, 1, 1, v224);
        v227 = *(v222 + 16);
        v228 = v455;
        v229 = v224;
        v169 = v223;
        v227(v455, v225, v229);
        sub_100007F58(v226, &v228[v193[5]], &qword_1001203B8, &qword_1000E0460);
        *&v228[v193[6]] = xmmword_1000E1190;
        v230 = &v228[v193[7]];
        v231 = v486;
        *v230 = v195 & 1;
        *(v230 + 1) = v231;
        v228[v193[8]] = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_1000474A0(0, v188 + 1, 1, v223);
        }

        v198 = v487;
        v187 = v488;
        v233 = *(v169 + 2);
        v232 = *(v169 + 3);
        v172 = v482;
        v186 = v489;
        if (v233 >= v232 >> 1)
        {
          v169 = sub_1000474A0((v232 > 1), v233 + 1, 1, v169);
        }

        sub_1000080B0(v453, &qword_1001203B8, &qword_1000E0460);
        (*(v186 + 8))(v454, v490);
        sub_1000798F0(v460);
        *(v169 + 2) = v233 + 1;
        v207 = v169 + v189 + v233 * v190;
        v208 = v455;
        goto LABEL_53;
      }

      sub_1000798F0(v196);
      sub_1000080B0(v197, &qword_1001203B8, &qword_1000E0460);
      v170 = v476;
      v187 = v488;
    }

    v172 = v482;
    if (*(v169 + 2))
    {
      v198 = v487;
      goto LABEL_54;
    }
  }

  v199 = v474;
  v200 = v490;
  (*(v186 + 56))(v474, 1, 1, v490);
  v201 = v459;
  (*(v186 + 16))(v459, v187, v200);
  v202 = v478;
  sub_100007F58(v199, &v201[*(v478 + 20)], &qword_1001203B8, &qword_1000E0460);
  *&v201[v202[6]] = xmmword_1000E1190;
  v203 = &v201[v202[7]];
  v204 = v467;
  *v203 = v468;
  v203[1] = v204;
  v201[v202[8]] = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v169 = sub_1000474A0(0, 1, 1, v169);
  }

  v206 = *(v169 + 2);
  v205 = *(v169 + 3);
  if (v206 >= v205 >> 1)
  {
    v169 = sub_1000474A0((v205 > 1), v206 + 1, 1, v169);
  }

  v198 = v487;
  sub_1000080B0(v474, &qword_1001203B8, &qword_1000E0460);
  *(v169 + 2) = v206 + 1;
  v207 = v169 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v206;
  v208 = v201;
LABEL_53:
  sub_10007994C(v208, v207);
LABEL_54:
  strcpy(&v491, "COMPLETE w/ ");
  BYTE5(v491._object) = 0;
  HIWORD(v491._object) = -5120;

  v511._countAndFlagsBits = sub_100072C2C(v234);
  sub_1000DBFE4(v511);

  v235 = v491;

  v236 = sub_1000DAFD4();
  v237 = sub_1000DC4B4();

  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v491._countAndFlagsBits = v239;
    *v238 = 136315138;
    *(v238 + 4) = sub_10001A58C(v235._countAndFlagsBits, v235._object, &v491._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v236, v237, "[calculateTimelineFor] %s", v238, 0xCu);
    sub_100007FC0(v239);
    v186 = v489;
  }

  (*(v186 + 8))(v187, v490);
  sub_1000080B0(v172, &qword_100124060, &unk_1000E4080);
  sub_1000080B0(v198, &qword_100124060, &unk_1000E4080);

  return v169;
}