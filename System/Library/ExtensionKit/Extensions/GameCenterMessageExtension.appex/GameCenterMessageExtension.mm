__n128 sub_100001D10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001D34(uint64_t a1, int a2)
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

uint64_t sub_100001D54(uint64_t result, int a2, int a3)
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

uint64_t sub_100001DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = GKGameCenterUIFrameworkBundle();
  v22._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x8000000100043350;
  v23._countAndFlagsBits = 0xD000000000000027;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v3.super.isa = v2;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_100041180(v23, v24, v3, v25, 0, v22);

  sub_1000024FC();
  v4 = sub_100041860();
  v6 = v5;
  v8 = v7;
  sub_100041790();
  v9 = sub_100041840();
  v11 = v10;
  v13 = v12;

  sub_100002550(v4, v6, v8 & 1);

  sub_100041720();
  v14 = sub_100041830();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100002550(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = 256;
  return result;
}

_DWORD *sub_100001F54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_100001F7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F94(uint64_t a1, id *a2)
{
  result = sub_100041B00();
  *a2 = 0;
  return result;
}

uint64_t sub_10000200C(uint64_t a1, id *a2)
{
  v3 = sub_100041B10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000208C@<X0>(uint64_t *a1@<X8>)
{
  sub_100041B20();
  v2 = sub_100041AF0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000020D0()
{
  sub_100041B20();
  v0 = sub_100041BE0();

  return v0;
}

uint64_t sub_10000210C(uint64_t a1)
{
  sub_100041B20();
  sub_100041B70();
}

Swift::Int sub_100002160(uint64_t a1)
{
  sub_100041B20();
  sub_100042000();
  sub_100041B70();
  v1 = sub_100042020();

  return v1;
}

uint64_t sub_1000021E8(void *a1, uint64_t *a2)
{
  v2 = sub_100041B20();
  v4 = v3;
  if (v2 == sub_100041B20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100041FC0();
  }

  return v7 & 1;
}

void sub_100002298(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000022E4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100041AF0();

  *a2 = v3;
  return result;
}

uint64_t sub_10000232C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002358(uint64_t a1)
{
  v2 = sub_100002458(&qword_10005C570, &unk_100045854);
  v3 = sub_100002458(&qword_10005C578, &unk_1000457A8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000024FC()
{
  result = qword_10005C580;
  if (!qword_10005C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C580);
  }

  return result;
}

uint64_t sub_100002550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100002564()
{
  result = qword_10005C588;
  if (!qword_10005C588)
  {
    sub_1000025E8(&unk_10005C590, &unk_100045930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C588);
  }

  return result;
}

uint64_t sub_1000025E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendInviteActionStatusText(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FriendInviteActionStatusText(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000027C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100041310();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_100002D08(&qword_10005C720, &qword_1000459F0) - 8;
  __chkstk_darwin(v69);
  v7 = &v62[-v6];
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = "ARD_FRIEND_CODE_EXPIRED";
  if (a1)
  {
    v9 = "ELL_IGNORED_ACTION";
    v10._countAndFlagsBits = 0xD00000000000001ELL;
  }

  else
  {
    v10._countAndFlagsBits = 0xD000000000000022;
  }

  v61._countAndFlagsBits = 0xE000000000000000;
  v10._object = (v9 | 0x8000000000000000);
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v11.super.isa = v8;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v12 = sub_100041180(v10, v83, v11, v84, 0, v61);
  v14 = v13;

  *&v76 = v12;
  *(&v76 + 1) = v14;
  sub_1000024FC();
  v15 = sub_100041860();
  v17 = v16;
  v19 = v18;
  sub_100041790();
  sub_1000417B0();

  v20 = sub_100041840();
  v67 = v21;
  v68 = v20;
  v64 = v22;
  v66 = v23;

  sub_100002550(v15, v17, v19 & 1);

  v65 = sub_100041780();
  v24 = enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:);
  v25 = v71;
  v26 = *(v71 + 104);
  v26(v5, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v3);
  sub_100041300();
  v27 = *(v25 + 8);
  v71 = v25 + 8;
  v27(v5, v3);
  sub_1000414B0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v63 = v64 & 1;
  v73 = v64 & 1;
  v72 = 0;
  v64 = sub_100041740();
  v26(v5, v24, v3);
  sub_100041300();
  v27(v5, v3);
  sub_1000414B0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v74 = 0;
  v26(v5, v24, v3);
  sub_100041300();
  v27(v5, v3);
  sub_1000419D0();
  sub_100041550();
  *&v75[55] = v79;
  *&v75[71] = v80;
  *&v75[87] = v81;
  *&v75[103] = v82;
  *&v75[7] = v76;
  *&v75[23] = v77;
  *&v75[39] = v78;
  v44 = sub_100041750();
  v45 = sub_100041700();
  v46 = &v7[*(v69 + 44)];
  v47 = *(sub_100041540() + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = sub_100041640();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #9.0 }

  *v46 = _Q0;
  *&v46[*(sub_100002D08(&qword_10005C728, &qword_1000459F8) + 36)] = 256;
  v55 = v67;
  *v7 = v68;
  *(v7 + 1) = v55;
  v7[16] = v63;
  *(v7 + 3) = v66;
  LOBYTE(v55) = v64;
  v7[32] = v65;
  *(v7 + 5) = v29;
  *(v7 + 6) = v31;
  *(v7 + 7) = v33;
  *(v7 + 8) = v35;
  v7[72] = 0;
  v7[80] = v55;
  *(v7 + 11) = v37;
  *(v7 + 12) = v39;
  *(v7 + 13) = v41;
  *(v7 + 14) = v43;
  v7[120] = 0;
  v56 = *&v75[80];
  *(v7 + 185) = *&v75[64];
  *(v7 + 201) = v56;
  *(v7 + 217) = *&v75[96];
  *(v7 + 29) = *&v75[111];
  v57 = *&v75[16];
  *(v7 + 121) = *v75;
  *(v7 + 137) = v57;
  v58 = *&v75[48];
  *(v7 + 153) = *&v75[32];
  *(v7 + 169) = v58;
  v7[240] = v44;
  *(v7 + 61) = v45;
  v59 = v70;
  sub_100002D50(v7, v70);
  result = sub_100002D08(&qword_10005C730, &qword_100045A00);
  *(v59 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005C720, &qword_1000459F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100002DC4()
{
  result = qword_10005C738;
  if (!qword_10005C738)
  {
    sub_1000025E8(&qword_10005C730, &qword_100045A00);
    sub_100002E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C738);
  }

  return result;
}

unint64_t sub_100002E50()
{
  result = qword_10005C740;
  if (!qword_10005C740)
  {
    sub_1000025E8(&qword_10005C720, &qword_1000459F0);
    sub_100002F08();
    sub_100003214(&qword_10005C7B8, &qword_10005C728, &qword_1000459F8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C740);
  }

  return result;
}

unint64_t sub_100002F08()
{
  result = qword_10005C748;
  if (!qword_10005C748)
  {
    sub_1000025E8(&qword_10005C750, &qword_100045A08);
    sub_100002FC0();
    sub_100003214(&qword_10005C7A8, &qword_10005C7B0, qword_100045A38, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C748);
  }

  return result;
}

unint64_t sub_100002FC0()
{
  result = qword_10005C758;
  if (!qword_10005C758)
  {
    sub_1000025E8(&qword_10005C760, &qword_100045A10);
    sub_100003078();
    sub_100003214(&qword_10005C798, &qword_10005C7A0, &qword_100045A30, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C758);
  }

  return result;
}

unint64_t sub_100003078()
{
  result = qword_10005C768;
  if (!qword_10005C768)
  {
    sub_1000025E8(&qword_10005C770, &qword_100045A18);
    sub_100003104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C768);
  }

  return result;
}

unint64_t sub_100003104()
{
  result = qword_10005C778;
  if (!qword_10005C778)
  {
    sub_1000025E8(&qword_10005C780, &qword_100045A20);
    sub_100003190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C778);
  }

  return result;
}

unint64_t sub_100003190()
{
  result = qword_10005C788;
  if (!qword_10005C788)
  {
    sub_1000025E8(&qword_10005C790, &qword_100045A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C788);
  }

  return result;
}

uint64_t sub_100003214(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000325C(void *a1, uint64_t a2, char *a3)
{
  v4 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer];
  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer] = a1;
  v5 = a1;

  v6 = [a3 collectionView];
  [v6 reloadData];
}

uint64_t sub_1000033BC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_100041AF0();
  a4(0);
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v9 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v11 = [v4 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_100041EB0(68);
    v13._countAndFlagsBits = 0xD00000000000002ELL;
    v13._object = 0x8000000100043550;
    sub_100041B80(v13);
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_100041B80(v14);
    v15._object = 0x8000000100043580;
    v15._countAndFlagsBits = 0xD000000000000012;
    sub_100041B80(v15);
    v16._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v16);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000036C4()
{
  type metadata accessor for SenderCell();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v1 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v3 = [v0 dequeueReusableCellWithReuseIdentifier:v1 forIndexPath:isa];

  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_100041EB0(42);

    v5._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v5);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000412F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000412D0();
  (*(v5 + 8))(v7, v4);
  return 1;
}

id sub_100003CE8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MessageActionsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100003D8C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (sub_100041B20() == a2 && v7 == a3)
  {
    goto LABEL_12;
  }

  v9 = sub_100041FC0();

  if (v9)
  {
    return sub_1000033BC(a2, a3, a4, type metadata accessor for HeaderView);
  }

  if (sub_100041B20() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_100041FC0();

    if ((v12 & 1) == 0)
    {
      sub_100041EB0(22);

      v19[0] = 0xD000000000000014;
      v19[1] = 0x8000000100043530;
      a4 = v19;
      v20._countAndFlagsBits = a2;
      v20._object = a3;
      sub_100041B80(v20);
      sub_100041F40();
      __break(1u);
LABEL_12:

      return sub_1000033BC(a2, a3, a4, type metadata accessor for HeaderView);
    }
  }

  v14 = sub_1000033BC(a2, a3, a4, type metadata accessor for LoadingStatusView);
  v15 = byte_10005C528;
  v16 = v14;
  if (v15 == 2)
  {
    v17 = v16;
    [v16 setAlpha:0.0];
    [v17 setHidden:1];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong stopAnimating];
  }

  else
  {
    v17 = v16;
    [v16 setAlpha:1.0];
    [v17 setHidden:0];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong startAnimating];
  }

  return v17;
}

char *sub_100003FE8()
{
  v0 = sub_1000036C4();
  [v0 setClipsToBounds:1];
  v1 = [v0 layer];

  [v1 setCornerRadius:15.0];
  v2 = [objc_opt_self() local];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = v2;
  v6 = [v5 displayNameWithOptions:0];
  [v4 setText:v6];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  result = [objc_opt_self() sharedTheme];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = [result eventIconImage];

  [v7 setImage:v9];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    [result setPlayer:v5];

    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000041BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100004AC8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x7265646E6573;
    v5 = 0xD000000000000019;
    if (a1 != 2)
    {
      v5 = 0x6465766965636572;
    }

    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x726F727265;
    if (a1 != 7)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100004BFC(unsigned __int8 a1)
{
  sub_100041EB0(20);

  if (a1 <= 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x7265646E6573;
    v11 = 0x80000001000432A0;
    v12 = 0xD000000000000019;
    if (a1 != 2)
    {
      v12 = 0x6465766965636572;
      v11 = 0xEE00657469766E49;
    }

    if (a1)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000100043280;
    }

    if (a1 <= 1u)
    {
      v7._countAndFlagsBits = v10;
    }

    else
    {
      v7._countAndFlagsBits = v12;
    }

    if (a1 <= 1u)
    {
      v8 = v9;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v2 = 0x8000000100043310;
    v3 = 0xE500000000000000;
    v4 = 0x726F727265;
    if (a1 != 7)
    {
      v4 = 0xD000000000000018;
      v3 = 0x8000000100043330;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v2 = v3;
    }

    v5 = 0x80000001000432D0;
    v6 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v6 = 0xD000000000000010;
      v5 = 0x80000001000432F0;
    }

    if (a1 <= 5u)
    {
      v7._countAndFlagsBits = v6;
    }

    else
    {
      v7._countAndFlagsBits = v4;
    }

    if (a1 <= 5u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  v7._object = v8;
  sub_100041B80(v7);

  return 0xD000000000000012;
}

uint64_t sub_100004DA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0x80000001000432A0;
    v13 = 0xD000000000000019;
    if (a1 != 2)
    {
      v13 = 0x6465766965636572;
      v12 = 0xEE00657469766E49;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x8000000100043280;
    }

    else
    {
      v14 = 0x7265646E6573;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v3 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x8000000100043310;
    v5 = 0xE500000000000000;
    v6 = 0x726F727265;
    if (a1 != 7)
    {
      v6 = 0xD000000000000018;
      v5 = 0x8000000100043330;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0x80000001000432D0;
    v8 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v8 = 0xD000000000000010;
      v7 = 0x80000001000432F0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x80000001000432D0;
        v2 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      v16 = "receiverAccepted";
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v15 = 0xE500000000000000;
          v2 = 0x726F727265;
        }

        else
        {
          v15 = 0x8000000100043330;
          v2 = 0xD000000000000018;
        }

        goto LABEL_44;
      }

      v16 = "receiverRejected";
    }

    v15 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x80000001000432A0;
      v2 = 0xD000000000000019;
    }

    else
    {
      v2 = 0x6465766965636572;
      v15 = 0xEE00657469766E49;
    }
  }

  else if (a2)
  {
    v15 = 0x8000000100043280;
    v2 = 0xD000000000000014;
  }

  else
  {
    v15 = 0xE600000000000000;
    v2 = 0x7265646E6573;
  }

LABEL_44:
  if (v9 == v2 && v10 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100041FC0();
  }

  return v17 & 1;
}

Swift::Int sub_100005020()
{
  v1 = *v0;
  sub_100042000();
  sub_100005070(v3, v1);
  return sub_100042020();
}

uint64_t sub_100005070(uint64_t a1, unsigned __int8 a2)
{
  sub_100041B70();
}

Swift::Int sub_1000051D8(uint64_t a1)
{
  v2 = *v1;
  sub_100042000();
  sub_100005070(v4, v2);
  return sub_100042020();
}

unint64_t sub_10000521C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E67C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000524C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100004AC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000052B4()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1);
  return sub_100042020();
}

Swift::Int sub_100005328(uint64_t a1)
{
  v2 = *v1;
  sub_100042000();
  sub_100042010(v2);
  return sub_100042020();
}

id sub_10000536C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FriendRequestCardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000056A8()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v87 = &v87 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v87 - v9;
  v11 = __chkstk_darwin(v8);
  v90 = &v87 - v12;
  __chkstk_darwin(v11);
  v14 = &v87 - v13;
  sub_1000413E0();
  v15 = v0;
  v16 = sub_100041400();
  v17 = sub_100041CC0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%@ updatePlayerUI", v19, 0xCu);
    sub_10000E9F0(v20, &unk_10005CA00, &unk_100045CF0);

    v5 = v18;
  }

  v91 = *(v2 + 8);
  v91(v14, v1);
  v22 = [objc_opt_self() local];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v24 = result;
  result = [objc_opt_self() sharedTheme];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v25 = result;
  v26 = [result eventIconImage];

  [v24 setImage:v26];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v28 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = result;
  v89 = v1;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v32 = result;
  [result setTextAlignment:4];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = result;
  [result setTextAlignment:4];

  v34 = [v15 traitCollection];
  v35 = [v34 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  result = swift_unknownObjectWeakLoadStrong();
  v37 = result;
  if (IsAccessibilityContentSizeCategory)
  {
    if (!result)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    [result setAxis:1];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v38 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v39 = result;
    [v38 insertArrangedSubview:result atIndex:1];
  }

  else
  {
    if (!result)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    [result setAxis:0];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v38 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v39 = result;
    [v38 insertArrangedSubview:result atIndex:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_50;
  }

  v40 = result;
  [result setNeedsLayout];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = result;
  [result layoutIfNeeded];

  v42 = [v15 traitCollection];
  v43 = [v42 userInterfaceStyle];

  result = swift_unknownObjectWeakLoadStrong();
  v44 = result;
  if (v43 != 2)
  {
    if (result)
    {
      v45 = &selRef_systemGray6Color;
      goto LABEL_28;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v45 = &selRef_tertiarySystemGroupedBackgroundColor;
LABEL_28:
  v88 = v22;
  v46 = [objc_opt_self() *v45];
  [v44 setBackgroundColor:v46];

  v47 = *&v15[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (v47)
  {
    v48 = v5;
    v49 = v47;
    sub_1000413E0();
    v50 = v15;
    v51 = v49;
    v52 = sub_100041400();
    v53 = sub_100041CC0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412546;
      *(v54 + 4) = v50;
      *(v54 + 12) = 2112;
      *(v54 + 14) = v51;
      *v55 = v50;
      v55[1] = v47;
      v56 = v50;
      v57 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "%@ Updating friend card UI , player model is non nil: %@", v54, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    v58 = v89;
    v91(v90, v89);
    v59 = swift_allocObject();
    *(v59 + 16) = v50;
    *(v59 + 24) = v51;
    v60 = v50;
    v61 = v51;
    sub_1000123C8(sub_10000EA60, v59);

    v5 = v48;
  }

  else
  {
    sub_1000413D0();
    v62 = v15;
    v63 = sub_100041400();
    v64 = sub_100041CE0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v62;
      *v66 = v62;
      v67 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%@ expected a playerModel", v65, 0xCu);
      sub_10000E9F0(v66, &unk_10005CA00, &unk_100045CF0);
    }

    v58 = v89;
    v91(v10, v89);
    v62[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 7;
    sub_10000AC8C();
    v68 = sub_100039914();
    if (v68)
    {
      v69 = v68;
      sub_1000413E0();
      v70 = v69;
      v71 = sub_100041400();
      v72 = sub_100041CC0();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v69;
        v75 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "%@ user interface is ready for display", v73, 0xCu);
        sub_10000E9F0(v74, &unk_10005CA00, &unk_100045CF0);
      }

      v91(v87, v58);
      [v70 setReadyForDisplay];
    }
  }

  sub_1000413E0();
  v76 = v15;
  v77 = sub_100041400();
  v78 = sub_100041CC0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v92 = v81;
    *v79 = 138412546;
    *(v79 + 4) = v76;
    *v80 = v76;
    *(v79 + 12) = 2080;
    v82 = v76[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState];
    v83 = v76;
    v84 = sub_100004BFC(v82);
    v86 = sub_10003FBD0(v84, v85, &v92);

    *(v79 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v77, v78, "%@ inviteCardState is set to : %s", v79, 0x16u);
    sub_10000E9F0(v80, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v81);
  }

  return (v91)(v5, v58);
}

void sub_1000061DC(void *a1, uint64_t a2, char *a3, unsigned __int8 *a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v100 - v12;
  if (!a1)
  {
    goto LABEL_4;
  }

  v14 = v7;
  v15 = objc_opt_self();
  v16 = a1;
  v103 = v15;
  v17 = [v15 unknownPlayer];
  sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
  v18 = sub_100041DB0();

  if (v18)
  {

    v7 = v14;
LABEL_4:
    sub_1000413E0();
    v19 = a4;
    v20 = a3;
    v21 = sub_100041400();
    v22 = sub_100041CC0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v19;
      *v24 = v20;
      v24[1] = v19;
      v25 = v19;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%@ Could not find a valid player using playerModel: %@", v23, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    v27 = *(v8 + 8);
    v27(v13, v7);
    v20[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 7;
    sub_10000AC8C();
    v28 = sub_100039914();
    if (v28)
    {
      v29 = v28;
      sub_1000413E0();
      v30 = v29;
      v31 = sub_100041400();
      v32 = sub_100041CC0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v29;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "%@ user interface is ready for display", v33, 0xCu);
        sub_10000E9F0(v34, &unk_10005CA00, &unk_100045CF0);
      }

      v27(v11, v7);
      [v30 setReadyForDisplay];
    }

    return;
  }

  v36 = [v16 internal];
  v37 = [v36 friendsVisibility];

  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = v37;
  v38 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender];
  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = a1;
  v104 = v16;

  sub_10000AAC0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v40 = Strong;
  [Strong setDelegate:a3];

  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v42 = v41;
  [v41 setPlayer:v104];

  v43 = [v104 internal];
  v44 = [v43 friendsVisibility];

  a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = v44 == 0;
  v45 = [v104 internal];
  v46 = [v45 friendsVisibility];

  if (!v46)
  {
    sub_10000D5B0(v104);
  }

  v47 = a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState];
  if (v47 > 2)
  {
    if (v47 - 4 < 2)
    {
      v48 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
      v49 = 8;
      goto LABEL_22;
    }

    v51 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
    swift_beginAccess();
    v52 = *&a4[v51];
    if (!v52)
    {
      goto LABEL_57;
    }

    v53 = *(v52 + 16);

    if (v53)
    {
      v54 = 0;
      v101 = v53 - 1;
      v102 = v52 + 40;
      v103 = _swiftEmptyArrayStorage;
      do
      {
        v55 = (v102 + 16 * v54);
        v56 = v54;
        while (1)
        {
          if (v56 >= *(v52 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v58 = *(v55 - 1);
          v57 = *v55;
          v59 = objc_opt_self();

          v60 = [v59 local];
          v61 = [v60 internal];

          v62 = [v61 playerID];
          v63 = sub_100041B20();
          v65 = v64;

          if (v58 == v63 && v57 == v65)
          {
            break;
          }

          v67 = sub_100041FC0();

          if (v67)
          {
            goto LABEL_39;
          }

          ++v56;

          v55 += 2;
          if (v53 == v56)
          {
            goto LABEL_55;
          }
        }

LABEL_39:
        v68 = v103;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100040178(0, v103[2] + 1, 1);
          v103 = aBlock;
        }

        v71 = v103[2];
        v70 = v103[3];
        if (v71 >= v70 >> 1)
        {
          sub_100040178((v70 > 1), v71 + 1, 1);
          v103 = aBlock;
        }

        v54 = v56 + 1;
        v72 = v103;
        v103[2] = (v71 + 1);
        v73 = &v72[2 * v71];
        v73[4] = v58;
        v73[5] = v57;
      }

      while (v101 != v56);
    }

    else
    {
      v103 = _swiftEmptyArrayStorage;
    }

LABEL_55:

    v89 = v103[2];

    if (!v89)
    {
LABEL_57:
      v90 = [objc_opt_self() local];
      v91 = swift_allocObject();
      *(v91 + 16) = v104;
      *(v91 + 24) = a3;
      v109 = sub_10000EA68;
      v110 = v91;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_10003A434;
      v108 = &unk_100055DF0;
      v92 = _Block_copy(&aBlock);
      v93 = v104;
      v94 = a3;

      [v90 loadFriendsAsPlayersWithCompletionHandler:v92];

      _Block_release(v92);
      return;
    }

    a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 5;
    sub_10000AC8C();
LABEL_64:

    return;
  }

  if (!a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState])
  {
    v48 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
    v49 = 5;
    goto LABEL_22;
  }

  if (v47 != 1)
  {
    if ((a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8] & 1) != 0 || *&a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount] < 1)
    {
      a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
      goto LABEL_23;
    }

    v74 = sub_100039914();
    if (v74)
    {
      v75 = v74;
      v76 = [v74 activeConversation];

      if (v76)
      {
        v77 = [v76 recipientAddresses];
        v78 = sub_100041C20();

        v79 = *(v78 + 16);

        if (v79 == 1)
        {
          v80 = swift_unknownObjectWeakLoadStrong();
          if (v80)
          {
            v81 = v80;
            [v80 setDelegate:a3];

            v82 = swift_unknownObjectWeakLoadStrong();
            if (v82)
            {
              v83 = v82;
              [v82 setHidden:0];

              v84 = [objc_opt_self() local];
              v85 = swift_allocObject();
              *(v85 + 16) = a4;
              *(v85 + 24) = a3;
              v109 = sub_10000EA70;
              v110 = v85;
              aBlock = _NSConcreteStackBlock;
              v106 = 1107296256;
              v107 = sub_10003A434;
              v108 = &unk_100055E40;
              v86 = _Block_copy(&aBlock);
              v87 = a4;
              v88 = a3;

              [v84 loadFriendsAsPlayersWithCompletionHandler:v86];
              _Block_release(v86);
LABEL_63:

              sub_10000C1B0(a4);
              goto LABEL_64;
            }

LABEL_72:
            __break(1u);
            return;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }
    }

    v95 = swift_unknownObjectWeakLoadStrong();
    if (v95)
    {
      v96 = v95;
      [v95 setDelegate:a3];

      v97 = swift_unknownObjectWeakLoadStrong();
      if (v97)
      {
        v98 = v97;
        [v97 setHidden:0];

        v99 = swift_unknownObjectWeakLoadStrong();
        if (v99)
        {
          v76 = v99;
          v84 = [v103 unknownPlayer];
          [v76 setPlayer:v84];
          goto LABEL_63;
        }

        goto LABEL_70;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v48 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
  v49 = 6;
LABEL_22:
  a3[v48] = v49;
LABEL_23:
  sub_10000AC8C();
  v50 = v104;
}

void sub_100006CD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = a3;
  if (v5)
  {
    do
    {
      v32 = a4;
      v6 = 0;
      v7 = (a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = sub_100041EC0();
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = v7;
        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v12 = [v9 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v14 = sub_100041DB0();

        if (v14)
        {
          v15 = [v9 alias];
          v16 = sub_100041B20();
          v18 = v17;

          v7 = v11;
          v19 = v11[1];
          if (!v19)
          {

            goto LABEL_6;
          }

          if (v16 == *v11 && v19 == v18)
          {

LABEL_18:
            sub_100041EF0();
            sub_100041F10();
            sub_100041F20();
            sub_100041F00();
            goto LABEL_5;
          }

          v20 = sub_100041FC0();

          if (v20)
          {
            goto LABEL_18;
          }
        }

LABEL_5:
        v7 = v11;
LABEL_6:
        ++v6;
        if (v10 == v5)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v21 = a4;
      v22 = a3;
      v23 = sub_100041F50();
      a3 = v22;
      a4 = v21;
      v5 = v23;
      v33 = v22;
    }

    while (v23);
  }

LABEL_24:
  v24 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
  if (v24)
  {
    v25 = sub_100041F50();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage[2];
  }

  if (v25 <= 0)
  {
    v28 = *(v33 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = Strong;
    if (!v28)
    {
      if (Strong)
      {

        v31 = [objc_opt_self() playerFromPlayerID:GKUnknownPlayerID];
        [v34 setPlayer:v31];
        v30 = v34;
        v34 = v31;
        goto LABEL_43;
      }

LABEL_53:
      __break(1u);
      return;
    }

    if (Strong)
    {
      v27 = v28;
      goto LABEL_39;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v34 = v26;
  if (v24)
  {
    if (sub_100041F50())
    {
      goto LABEL_33;
    }

LABEL_41:

    v30 = 0;
    goto LABEL_42;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v27 = sub_100041EC0();
    goto LABEL_39;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_51;
  }

  v27 = _swiftEmptyArrayStorage[4];
LABEL_39:
  v30 = v27;

LABEL_42:
  [v34 setPlayer:{v30, v32}];
LABEL_43:
}

void sub_1000070A4(unint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v6 = sub_100041F50();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v28 = a4;
      v29 = v6;
      v7 = 0;
      a4 = v5 & 0xC000000000000001;
      v32 = v5 & 0xFFFFFFFFFFFFFF8;
      v30 = v5;
      while (1)
      {
        if (a4)
        {
          v8 = sub_100041EC0();
        }

        else
        {
          if (v7 >= *(v32 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v11 = [v9 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v13 = sub_100041DB0();

        if (v13)
        {
          break;
        }

LABEL_5:
        ++v7;
        if (v10 == v6)
        {
          a4 = v28;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      v14 = a4;
      v15 = [v9 internal];
      v16 = [v15 playerID];

      v17 = sub_100041B20();
      v19 = v18;

      v20 = [a3 internal];
      v21 = [v20 playerID];

      v22 = sub_100041B20();
      v24 = v23;

      if (v17 == v22 && v19 == v24)
      {

        a4 = v14;
      }

      else
      {
        v25 = sub_100041FC0();

        a4 = v14;
        if ((v25 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      sub_100041EF0();
      sub_100041F10();
      sub_100041F20();
      sub_100041F00();
LABEL_17:
      v6 = v29;
      v5 = v30;
      goto LABEL_5;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_31:
    v26 = sub_100041F50();
  }

  else
  {
    v26 = _swiftEmptyArrayStorage[2];
  }

  if (v26 <= 0)
  {
    v27 = 3;
  }

  else
  {
    v27 = 4;
  }

  *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = v27;
  sub_10000AC8C();
}

uint64_t sub_1000073F0(uint64_t a1)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x7564697669646E69;
  v4 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer);
  v5 = sub_100039914();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 activeConversation];

    if (v7)
    {
      v8 = [v7 recipientAddresses];
      v9 = sub_100041C20();

      v10 = *(v9 + 16);

      if (v10 > 1)
      {
        v3 = 0x70756F7267;
        v2 = 0xE500000000000000;
      }
    }
  }

  v11 = 0x7265646E6573;
  if (v4)
  {
    v11 = 0x6E65697069636572;
  }

  v13 = v11;
  v14._countAndFlagsBits = 95;
  v14._object = 0xE100000000000000;
  sub_100041B80(v14);
  v15._countAndFlagsBits = v3;
  v15._object = v2;
  sub_100041B80(v15);

  return v13;
}

void sub_100007534()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FriendRequestCardViewController();
  v78.receiver = v0;
  v78.super_class = v5;
  objc_msgSendSuper2(&v78, "viewDidLoad");
  sub_1000413E0();
  v6 = v0;
  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ viewDidLoad", v9, 0xCu);
    sub_10000E9F0(v10, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v4, v1);
  v12 = [objc_opt_self() defaultCenter];
  v13 = sub_100041AF0();
  [v12 addObserver:v6 selector:"updateCard:" name:v13 object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_41;
  }

  v15 = Strong;
  v16 = [Strong layer];

  [v16 setCornerRadius:9.0];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setMasksToBounds:1];
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v21 = v20;
  v22 = [v20 titleLabel];

  if (v22)
  {
    v23 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v22 setFont:v23];
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
    goto LABEL_43;
  }

  v25 = v24;
  v26 = [v24 titleLabel];

  [v26 setAdjustsFontSizeToFitWidth:1];
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v28 = v27;
  v29 = [v27 titleLabel];

  if (v29)
  {
    [v29 setMinimumScaleFactor:0.5];
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    goto LABEL_45;
  }

  v31 = v30;
  v32 = [v30 layer];

  [v32 setCornerRadius:9.0];
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = v33;
  v35 = [v33 layer];

  [v35 setMasksToBounds:1];
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v37 = v36;
  v38 = [v36 titleLabel];

  if (v38)
  {
    v39 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v38 setFont:v39];
  }

  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
    goto LABEL_48;
  }

  v41 = v40;
  v42 = [v40 titleLabel];

  if (v42)
  {
    v43 = [objc_opt_self() whiteColor];
    [v42 setTextColor:v43];
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
    goto LABEL_49;
  }

  v45 = v44;
  v46 = [v44 layer];

  [v46 setCornerRadius:9.0];
  v47 = swift_unknownObjectWeakLoadStrong();
  if (!v47)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v48 = v47;
  v49 = [v47 layer];

  [v49 setMasksToBounds:1];
  v50 = swift_unknownObjectWeakLoadStrong();
  if (!v50)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v51 = v50;
  v52 = [v50 titleLabel];

  if (v52)
  {
    v53 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v52 setFont:v53];
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
    goto LABEL_52;
  }

  v55 = v54;
  v56 = [v54 titleLabel];

  [v56 setAdjustsFontSizeToFitWidth:1];
  v57 = swift_unknownObjectWeakLoadStrong();
  if (!v57)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v58 = v57;
  v59 = [v57 titleLabel];

  if (v59)
  {
    [v59 setMinimumScaleFactor:0.5];
  }

  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
    goto LABEL_54;
  }

  v61 = v60;
  [v60 setUserInteractionEnabled:1];

  v62 = objc_allocWithZone(UITapGestureRecognizer);
  v63 = v6;
  v64 = [v62 initWithTarget:v63 action:"avatarPressed:"];
  v65 = swift_unknownObjectWeakLoadStrong();
  if (!v65)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v66 = v65;
  [v65 addGestureRecognizer:v64];

  v67 = swift_unknownObjectWeakLoadStrong();
  if (!v67)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v68 = v67;
  [v67 setUserInteractionEnabled:1];

  v69 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v63 action:"friendAvatarPressed:"];
  v70 = swift_unknownObjectWeakLoadStrong();
  if (!v70)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v71 = v70;
  [v70 addGestureRecognizer:v69];

  v72 = *&v63[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (!v72)
  {
LABEL_58:
    __break(1u);
    return;
  }

  if (*(v72 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8))
  {
    sub_1000056A8();
  }

  else
  {
    sub_100007EF8();
  }

  if (v63[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] == 1)
  {
    v73 = [objc_allocWithZone(GKReporter) init];
    [v73 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKFriendInviteViewedByReceiver];
  }

  v74 = [objc_allocWithZone(GKAPIReporter) init];
  sub_1000073F0(v74);
  v75 = sub_100041AF0();

  v76 = sub_100041AF0();
  v77 = sub_100041AF0();
  [v74 recordPageWithID:v75 pageContext:v76 pageType:v77];
}

void sub_100007EF8()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (v5)
  {
    v6 = v5;
    sub_1000413E0();
    v7 = v0;
    v8 = sub_100041400();
    v9 = sub_100041CC0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ creating friend request", v10, 0xCu);
      sub_10000E9F0(v11, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v4, v1);
    v13 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v14 = [v7 traitCollection];
    v15 = [v14 userInterfaceStyle];

    v16 = objc_opt_self();
    v17 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (v15 != 2)
    {
      v17 = &selRef_systemGray6Color;
    }

    v18 = [v16 *v17];
    [v13 setBackgroundColor:v18];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 startAnimating];
    v19 = [v7 view];
    if (v19)
    {
      v20 = v19;
      [v19 addSubview:v13];

      v21 = objc_opt_self();
      v22 = [v7 view];
      [v21 _gkInstallEdgeConstraintsForView:v13 containedWithinParentView:v22];

      v23 = v6;
      v24 = v7;
      sub_10001903C(v23, v13, v23, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100008230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_100041410();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = __chkstk_darwin(v7);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = sub_100041200();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 removeFromSuperview];
  if (a1)
  {
    goto LABEL_4;
  }

  sub_10001287C(1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000E9F0(v17, &qword_10005CA30, &unk_100046380);
LABEL_4:
    sub_1000413E0();
    v22 = a4;
    swift_errorRetain();
    v23 = sub_100041400();
    v24 = sub_100041CC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = a1;
      v56 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2080;
      v28 = v22;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v29 = sub_100041E10();
      v31 = sub_10003FBD0(v29, v30, &v56);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "%@ failed to create friend request with %s", v25, 0x16u);
      sub_10000E9F0(v26, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v27);
    }

    v32 = v54;
    v33 = *(v53 + 8);
    v33(v12, v54);
    v34 = v52;
    *(v22 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 7;
    sub_10000AC8C();
    v35 = sub_100039914();
    if (v35)
    {
      v36 = v35;
      sub_1000413E0();
      v37 = v36;
      v38 = sub_100041400();
      v39 = sub_100041CC0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v36;
        v42 = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "%@ user interface is ready for display", v40, 0xCu);
        sub_10000E9F0(v41, &unk_10005CA00, &unk_100045CF0);
      }

      v33(v34, v32);
      [v37 setReadyForDisplay];
    }

    return;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_1000413E0();
  v43 = a4;
  v44 = sub_100041400();
  v45 = sub_100041CC0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "%@ friend request created", v46, 0xCu);
    sub_10000E9F0(v47, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v53 + 8))(v14, v54);
  v49 = *&v43[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  if (v49)
  {
    v50 = *&v43[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl + 8];

    v49(v21);
    sub_10000EA50(v49, v50);
  }

  sub_1000056A8();
  (*(v19 + 8))(v21, v18);
}

void sub_100008854()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039914();
  if (v5)
  {
    v71 = v5;
    if (([objc_opt_self() _gkIsOnline] & 1) == 0)
    {
      v30 = GKGameCenterUIFrameworkBundle();
      v66._countAndFlagsBits = 0xE000000000000000;
      v76._countAndFlagsBits = 0xD000000000000016;
      v76._object = 0x8000000100044140;
      v81.value._countAndFlagsBits = 0;
      v81.value._object = 0;
      v31.super.isa = v30;
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      sub_100041180(v76, v81, v31, v86, 0, v66);

      v32 = sub_100041AF0();

      v33 = GKGameCenterUIFrameworkBundle();
      v68._countAndFlagsBits = 0xE000000000000000;
      v77._countAndFlagsBits = 0xD000000000000018;
      v77._object = 0x8000000100043F40;
      v82.value._countAndFlagsBits = 0;
      v82.value._object = 0;
      v34.super.isa = v33;
      v87._countAndFlagsBits = 0;
      v87._object = 0xE000000000000000;
      sub_100041180(v77, v82, v34, v87, 0, v68);

      v35 = sub_100041AF0();

      v36 = GKGameCenterUIFrameworkBundle();
      v69._countAndFlagsBits = 0xE000000000000000;
      v78._countAndFlagsBits = 0x4F545455425F4B4FLL;
      v78._object = 0xE90000000000004ELL;
      v83.value._countAndFlagsBits = 0;
      v83.value._object = 0;
      v37.super.isa = v36;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      sub_100041180(v78, v83, v37, v88, 0, v69);

      v38 = sub_100041AF0();

      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012BD4;
      aBlock[3] = &unk_100055CB0;
      v39 = _Block_copy(aBlock);
      [v71 _presentAlertWithTitle:v32 message:v35 buttonTitle:v38 completion:v39];
      _Block_release(v39);

      v40 = [objc_allocWithZone(GKAPIReporter) init];
      v41 = sub_100041AF0();
      v42 = sub_100041AF0();
      v43 = sub_100041AF0();
      sub_1000073F0(v43);
      v44 = sub_100041AF0();

      v45 = sub_100041AF0();
      [v40 recordClickWithAction:v41 targetId:v42 targetType:v43 pageId:v44 pageType:v45];

      return;
    }

    v6 = [objc_opt_self() shared];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isAddingFriendsRestricted];

      if (v8)
      {
        v9 = [objc_allocWithZone(GKReporter) init];
        [v9 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v10 = [objc_allocWithZone(GKAPIReporter) init];
        v11 = sub_100041AF0();
        v12 = sub_100041AF0();
        v13 = sub_100041AF0();
        sub_1000073F0(v13);
        v14 = sub_100041AF0();

        v15 = sub_100041AF0();
        [v10 recordClickWithAction:v11 targetId:v12 targetType:v13 pageId:v14 pageType:v15];

        v16 = GKGameCenterUIFrameworkBundle();
        v66._countAndFlagsBits = 0xE000000000000000;
        v74._countAndFlagsBits = 0x525F444E45495246;
        v74._object = 0xEE00545345555145;
        v79.value._countAndFlagsBits = 0;
        v79.value._object = 0;
        v17.super.isa = v16;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        v18 = sub_100041180(v74, v79, v17, v84, 0, v66);
        v20 = v19;

        v21 = GKGameCenterUIFrameworkBundle();
        v67._countAndFlagsBits = 0xE000000000000000;
        v75._countAndFlagsBits = 0xD000000000000027;
        v75._object = 0x8000000100044180;
        v80.value._countAndFlagsBits = 0;
        v80.value._object = 0;
        v22.super.isa = v21;
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        v23 = sub_100041180(v75, v80, v22, v85, 0, v67);
        v25 = v24;

        sub_10003074C(v18, v20, v23, v25);

        v26 = v71;

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_27;
      }

      v47 = Strong;
      [Strong setEnabled:0];

      v48 = swift_unknownObjectWeakLoadStrong();
      if (!v48)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v49 = v48;
      v50 = [objc_opt_self() systemGray2Color];
      [v49 setBackgroundColor:v50];

      v51 = [v71 activeConversation];
      v52 = v51;
      if (v51)
      {
        v53 = [v51 recipientAddresses];
        v54 = sub_100041C20();

        v55 = *(v54 + 16);

        if (v55)
        {
          v56 = [v52 recipientAddresses];
          v57 = sub_100041C20();

          if (v57[2])
          {
            v58 = v57[4];
            v55 = v57[5];

            v59 = [v52 recipientAddresses];
            v60 = sub_100041C20();

            v52 = *(v60 + 16);

            LODWORD(v52) = v52 > 1;
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_26;
        }

        LODWORD(v52) = 0;
        v58 = 0;
      }

      else
      {
        v58 = 0;
        v55 = 0;
      }

LABEL_21:
      v61 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
      if (v61)
      {
        v62 = swift_allocObject();
        *(v62 + 16) = v0;
        *(v62 + 24) = v71;
        v63 = v61;
        v64 = v0;
        v65 = v71;
        sub_100012C18(v58, v55, v52, sub_10000E934, v62);

        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000413D0();
  v27 = sub_100041400();
  v28 = sub_100041CE0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "acceptButtonPressed - expected a messagesViewController", v29, 2u);
  }

  (*(v2 + 8))(v4, v1);
}

void sub_10000915C(uint64_t a1, char *a2, void *a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v64 - v11;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong setEnabled:1];

      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = [v17 tintColor];

          [v16 setBackgroundColor:v19];
          v20 = [objc_allocWithZone(GKReporter) init];
          [v20 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

          v21 = [objc_allocWithZone(GKAPIReporter) init];
          v22 = sub_100041AF0();
          v23 = sub_100041AF0();
          v24 = sub_100041AF0();
          sub_1000073F0(v24);
          v25 = sub_100041AF0();

          v26 = sub_100041AF0();
          [v21 recordClickWithAction:v22 targetId:v23 targetType:v24 pageId:v25 pageType:v26];

          sub_1000413D0();
          swift_errorRetain();
          v27 = sub_100041400();
          v28 = sub_100041CE0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v64[1] = a1;
            aBlock[0] = v30;
            *v29 = 136315138;
            swift_errorRetain();
            sub_100002D08(&unk_10005CF10, &qword_100047670);
            v31 = sub_100041B40();
            v33 = sub_10003FBD0(v31, v32, aBlock);

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v28, "acceptButtonPressed - acceptFriendRequest error: %s", v29, 0xCu);
            sub_10000E8A8(v30);
          }

          (*(v7 + 8))(v10, v6);
          v34 = GKGameCenterUIFrameworkBundle();
          v62._countAndFlagsBits = 0xE000000000000000;
          v66._countAndFlagsBits = 0x525F444E45495246;
          v66._object = 0xEE00545345555145;
          v68.value._countAndFlagsBits = 0;
          v68.value._object = 0;
          v35.super.isa = v34;
          v70._countAndFlagsBits = 0;
          v70._object = 0xE000000000000000;
          v36 = sub_100041180(v66, v68, v35, v70, 0, v62);
          v38 = v37;

          v39 = GKGameCenterUIFrameworkBundle();
          v63._countAndFlagsBits = 0xE000000000000000;
          v67._countAndFlagsBits = 0xD000000000000024;
          v67._object = 0x8000000100043F90;
          v69.value._countAndFlagsBits = 0;
          v69.value._object = 0;
          v40.super.isa = v39;
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          v41 = sub_100041180(v67, v69, v40, v71, 0, v63);
          v43 = v42;

          sub_10003074C(v36, v38, v41, v43);

          return;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v64[0] = v6;
  v44 = [objc_allocWithZone(GKReporter) init];
  [v44 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

  v45 = [objc_allocWithZone(GKAPIReporter) init];
  v46 = sub_100041AF0();
  v47 = sub_100041AF0();
  v48 = sub_100041AF0();
  sub_1000073F0(v48);
  v49 = sub_100041AF0();

  v50 = sub_100041AF0();
  [v45 recordClickWithAction:v46 targetId:v47 targetType:v48 pageId:v49 pageType:v50];

  sub_1000413E0();
  v51 = a2;
  v52 = sub_100041400();
  v53 = sub_100041CC0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "%@ acceptButtonPressed - acceptFriendRequest succeed", v54, 0xCu);
    sub_10000E9F0(v55, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v7 + 8))(v12, v64[0]);
  v57 = [objc_opt_self() local];
  v58 = swift_allocObject();
  *(v58 + 16) = a3;
  *(v58 + 24) = v51;
  aBlock[4] = sub_10000E93C;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003A434;
  aBlock[3] = &unk_100055D28;
  v59 = _Block_copy(aBlock);
  v60 = v51;
  v61 = a3;

  [v57 loadFriendsAsPlayersWithCompletionHandler:v59];
  _Block_release(v59);
}

void sub_1000098D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_100041A10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100041A30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 activeConversation];
  if (!v14)
  {
    goto LABEL_7;
  }

  v24 = v14;
  v15 = [v14 recipientAddresses];
  v16 = sub_100041C20();

  v17 = *(v16 + 16);

  if (v17 != 1)
  {

LABEL_7:
    sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
    v19 = sub_100041D50();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    aBlock[4] = sub_10000F3D8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012BD4;
    aBlock[3] = &unk_100055D78;
    v21 = _Block_copy(aBlock);
    v22 = a4;

    sub_100041A20();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000E944(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002D08(&qword_10005CA20, qword_100045D00);
    sub_10000E98C();
    sub_100041E60();
    sub_100041D60();
    _Block_release(v21);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    return;
  }

  sub_100029094();
  v18 = v24;
}

void sub_100009C80()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setEnabled:0];

      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v4 = v3;
      v5 = [objc_opt_self() systemGray2Color];
      [v4 setBackgroundColor:v5];

      v6 = sub_100039914();
      if (v6 && (v7 = v6, v8 = [v6 activeConversation], v7, v8))
      {
        v9 = [v8 recipientAddresses];
        v10 = sub_100041C20();

        v11 = *(v10 + 16);

        if (v11)
        {
          v12 = [v8 recipientAddresses];
          v13 = sub_100041C20();

          if (v13[2])
          {
            v14 = v13[4];
            v11 = v13[5];

            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_19;
        }

        v14 = 0;
      }

      else
      {
        v14 = 0;
        v11 = 0;
      }

LABEL_13:
      v33 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
      if (v33)
      {
        v34 = swift_allocObject();
        *(v34 + 16) = v0;
        v35 = v33;
        v36 = v0;
        sub_1000131E8(v14, v11, sub_10000E8A0, v34);

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = sub_100039914();
  if (v15)
  {
    v16 = v15;
    v17 = GKGameCenterUIFrameworkBundle();
    v37._countAndFlagsBits = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD000000000000016;
    v42._object = 0x8000000100044140;
    v45.value._countAndFlagsBits = 0;
    v45.value._object = 0;
    v18.super.isa = v17;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_100041180(v42, v45, v18, v48, 0, v37);

    v19 = sub_100041AF0();

    v20 = GKGameCenterUIFrameworkBundle();
    v38._countAndFlagsBits = 0xE000000000000000;
    v43._countAndFlagsBits = 0xD000000000000018;
    v43._object = 0x8000000100043F40;
    v46.value._countAndFlagsBits = 0;
    v46.value._object = 0;
    v21.super.isa = v20;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_100041180(v43, v46, v21, v49, 0, v38);

    v22 = sub_100041AF0();

    v23 = GKGameCenterUIFrameworkBundle();
    v39._countAndFlagsBits = 0xE000000000000000;
    v44._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v44._object = 0xE90000000000004ELL;
    v47.value._countAndFlagsBits = 0;
    v47.value._object = 0;
    v24.super.isa = v23;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    sub_100041180(v44, v47, v24, v50, 0, v39);

    v25 = sub_100041AF0();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012BD4;
    aBlock[3] = &unk_100055C60;
    v26 = _Block_copy(aBlock);
    [v16 _presentAlertWithTitle:v19 message:v22 buttonTitle:v25 completion:v26];
    _Block_release(v26);

    v27 = [objc_allocWithZone(GKAPIReporter) init];
    v28 = sub_100041AF0();
    v29 = sub_100041AF0();
    v30 = sub_100041AF0();
    sub_1000073F0(v30);
    v31 = sub_100041AF0();

    v32 = sub_100041AF0();
    [v27 recordClickWithAction:v28 targetId:v29 targetType:v30 pageId:v31 pageType:v32];
  }
}

void *sub_10000A1A0(uint64_t a1, char *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      [result setEnabled:1];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v13 = result;
        v59 = v4;
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v14 = result;
          v15 = [result tintColor];

          [v13 setBackgroundColor:v15];
          v16 = [objc_allocWithZone(GKReporter) init];
          [v16 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

          v17 = [objc_allocWithZone(GKAPIReporter) init];
          v18 = sub_100041AF0();
          v19 = sub_100041AF0();
          v20 = sub_100041AF0();
          sub_1000073F0(v20);
          v21 = sub_100041AF0();

          v22 = sub_100041AF0();
          [v17 recordClickWithAction:v18 targetId:v19 targetType:v20 pageId:v21 pageType:v22];

          sub_1000413D0();
          v23 = a2;
          swift_errorRetain();
          v24 = sub_100041400();
          v25 = sub_100041CE0();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v60 = a1;
            v61 = v28;
            *v26 = 138412546;
            *(v26 + 4) = v23;
            *v27 = v23;
            *(v26 + 12) = 2080;
            v29 = v23;
            swift_errorRetain();
            sub_100002D08(&unk_10005CF10, &qword_100047670);
            v30 = sub_100041B40();
            v32 = sub_10003FBD0(v30, v31, &v61);

            *(v26 + 14) = v32;
            _os_log_impl(&_mh_execute_header, v24, v25, "%@ ignoreButtonPressed - ignoreFriendRequest error: %s", v26, 0x16u);
            sub_10000E9F0(v27, &unk_10005CA00, &unk_100045CF0);

            sub_10000E8A8(v28);
          }

          (*(v5 + 8))(v8, v59);
          v33 = GKGameCenterUIFrameworkBundle();
          v56._countAndFlagsBits = 0xE000000000000000;
          v62._countAndFlagsBits = 0x525F444E45495246;
          v62._object = 0xEE00545345555145;
          v64.value._countAndFlagsBits = 0;
          v64.value._object = 0;
          v34.super.isa = v33;
          v66._countAndFlagsBits = 0;
          v66._object = 0xE000000000000000;
          v35 = sub_100041180(v62, v64, v34, v66, 0, v56);
          v37 = v36;

          v38 = GKGameCenterUIFrameworkBundle();
          v57._countAndFlagsBits = 0xE000000000000000;
          v63._countAndFlagsBits = 0xD000000000000024;
          v63._object = 0x8000000100043F90;
          v65.value._countAndFlagsBits = 0;
          v65.value._object = 0;
          v39.super.isa = v38;
          v67._countAndFlagsBits = 0;
          v67._object = 0xE000000000000000;
          v40 = sub_100041180(v63, v65, v39, v67, 0, v57);
          v42 = v41;

          sub_10003074C(v35, v37, v40, v42);
        }

LABEL_14:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v43 = [objc_allocWithZone(GKReporter) init];
  [v43 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

  v44 = [objc_allocWithZone(GKAPIReporter) init];
  v45 = sub_100041AF0();
  v46 = sub_100041AF0();
  v47 = sub_100041AF0();
  sub_1000073F0(v47);
  v48 = sub_100041AF0();

  v49 = sub_100041AF0();
  [v44 recordClickWithAction:v45 targetId:v46 targetType:v47 pageId:v48 pageType:v49];

  sub_1000413E0();
  v50 = a2;
  v51 = sub_100041400();
  v52 = sub_100041CC0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "%@ ignoreButtonPressed - ignoreFriendRequest succeed", v53, 0xCu);
    sub_10000E9F0(v54, &unk_10005CA00, &unk_100045CF0);
  }

  return (*(v5 + 8))(v10, v4);
}

void sub_10000AAC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v1 = Strong;
  v2 = objc_opt_self();
  if (qword_10005C4F0 != -1)
  {
    swift_once();
  }

  v3 = [v2 _gkPreferredFontForTextStyle:qword_10005FF40 symbolicTraits:2];
  [v1 setFont:v3];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  if (qword_10005C4F8 != -1)
  {
    swift_once();
  }

  v6 = qword_10005FF48;
  v7 = [v2 _gkPreferredFontForTextStyle:qword_10005FF48 symbolicTraits:2];
  [v5 setFont:v7];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v2 _gkPreferredFontForTextStyle:v6 symbolicTraits:2];
  [v9 setFont:v10];
}

void sub_10000AC8C()
{
  sub_10000BC98();
  sub_10000B4DC();
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender);
  if (v1 && (v1 = [v1 displayNameWithOptions:0]) != 0)
  {
    v2 = v1;
    v3 = sub_100041B20();
    v5 = v4;

    v1 = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_10000CB8C(v1, v5);

  sub_10000BFE0();
  v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  v7 = 1;
  if (((1 << v6) & 0x78) == 0)
  {
    if (((1 << v6) & 7) == 0)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer) = v7;
LABEL_9:

  sub_10000AD60();
}

void sub_10000AD60()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_58;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = v4;
  [v4 layoutIfNeeded];

  v6 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant;
  v7 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant];
  if (!v7)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v7 constant];
  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v11 = Strong;
  [Strong frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v115.origin.x = v13;
  v115.origin.y = v15;
  v115.size.width = v17;
  v115.size.height = v19;
  Height = CGRectGetHeight(v115);
  v21 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView;
  v22 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView];
  if (!v22)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v23 = Height;
  [v22 spacing];
  v25 = v24;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v27 = v26;
  v28 = v9 + 0.0 + v23 + v25;
  v29 = [v26 isHidden];

  if ((v29 & 1) == 0)
  {
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v31 = v30;
    v32 = UILabel.requiredHeight.getter();

    v28 = v28 + v32;
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    goto LABEL_63;
  }

  v34 = v33;
  v35 = [v33 isHidden];

  if ((v35 & 1) == 0)
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v37 = v36;
    v38 = UILabel.requiredHeight.getter();

    v28 = v28 + v38;
  }

  v39 = *&v1[v21];
  if (!v39)
  {
    goto LABEL_64;
  }

  [v39 spacing];
  v41 = v40;
  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v43 = v42;
  v44 = v28 + v41;
  v45 = [v42 isHidden];

  if ((v45 & 1) == 0)
  {
    v46 = swift_unknownObjectWeakLoadStrong();
    if (!v46)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v47 = v46;
    v48 = UILabel.requiredHeight.getter();

    v44 = v44 + v48;
  }

  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
    goto LABEL_66;
  }

  v50 = v49;
  v51 = [v49 isHidden];

  if ((v51 & 1) == 0)
  {
    v52 = swift_unknownObjectWeakLoadStrong();
    if (!v52)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v53 = v52;
    [v52 frame];
    v55 = v54;

    v44 = v44 + v55;
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
    goto LABEL_67;
  }

  v57 = v56;
  v58 = [v56 isHidden];

  if ((v58 & 1) == 0)
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (!v59)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v60 = v59;
    [v59 frame];
    v62 = v61;

    v44 = v44 + v62;
  }

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
    goto LABEL_68;
  }

  v64 = v63;
  v65 = [v63 isHidden];

  if ((v65 & 1) == 0)
  {
    v66 = swift_unknownObjectWeakLoadStrong();
    if (!v66)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v67 = v66;
    [v66 frame];
    v69 = v68;

    v44 = v44 + v69;
  }

  v70 = *&v1[v21];
  if (!v70)
  {
    goto LABEL_69;
  }

  [v70 spacing];
  v72 = v71;
  v73 = swift_unknownObjectWeakLoadStrong();
  if (!v73)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v74 = v73;
  v75 = v44 + v72;
  v76 = [v73 isHidden];

  if ((v76 & 1) == 0)
  {
    v77 = swift_unknownObjectWeakLoadStrong();
    if (!v77)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v78 = v77;
    [v77 frame];
    v80 = v79;

    v75 = v75 + v80;
  }

  v81 = *&v1[v21];
  if (!v81)
  {
    goto LABEL_71;
  }

  [v81 spacing];
  v83 = v82;
  v84 = swift_unknownObjectWeakLoadStrong();
  if (!v84)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v85 = v84;
  v86 = v75 + v83;
  v87 = [v84 isHidden];

  if ((v87 & 1) == 0)
  {
    v88 = swift_unknownObjectWeakLoadStrong();
    if (!v88)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v89 = v88;
    [v88 frame];
    v91 = v90;

    v86 = v86 + v91;
  }

  v92 = *&v1[v6];
  if (!v92)
  {
    goto LABEL_73;
  }

  [v92 constant];
  v94 = v93;
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v96 = v95;
  v97 = v86 + v94;
  v98 = [v95 isHidden];

  if ((v98 & 1) == 0)
  {
    v99 = swift_unknownObjectWeakLoadStrong();
    if (!v99)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v100 = v99;
    v101 = UILabel.requiredHeight.getter();

    v97 = v97 + v101;
  }

  v102 = swift_unknownObjectWeakLoadStrong();
  if (!v102)
  {
    goto LABEL_75;
  }

  v103 = v102;
  v104 = [v102 isHidden];

  if (v104)
  {
    goto LABEL_50;
  }

  v105 = swift_unknownObjectWeakLoadStrong();
  if (!v105)
  {
LABEL_85:
    __break(1u);
    return;
  }

  v106 = v105;
  v107 = UILabel.requiredHeight.getter();

  v97 = v97 + v107;
LABEL_50:
  v108 = sub_100039914();
  if (v108)
  {
    v109 = fmax(v97, 220.0);
    v113 = v108;
    sub_100029704();
    v110 = v113;
    v111 = &v113[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
    *v111 = v109;
    *(v111 + 8) = 0;
    if (v112 != v109)
    {
      [v113 requestResize];
      v110 = v113;
    }
  }
}

double UILabel.requiredHeight.getter()
{
  [v0 frame];
  v1 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, CGRectGetWidth(v16), 1.79769313e308}];
  [v1 setNumberOfLines:{objc_msgSend(v0, "numberOfLines")}];
  [v1 setLineBreakMode:0];
  v2 = [v0 font];
  [v1 setFont:v2];

  v3 = [v0 text];
  [v1 setText:v3];

  v4 = [v0 attributedText];
  [v1 setAttributedText:v4];

  v5 = v1;
  [v5 sizeToFit];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  Height = CGRectGetHeight(v17);

  return Height;
}

void sub_10000B4DC()
{
  v1 = v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic];
  if (v1 == 2 || (v1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v4 = v3;
      [v3 setHidden:1];
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_67;
  }

  v6 = v5;
  [v5 setHidden:0];

  v7 = v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState];
  if (v7 > 3)
  {
    if (v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] <= 5u)
    {
      goto LABEL_26;
    }

    if (v7 == 6)
    {
      goto LABEL_30;
    }

    if (v7 != 7)
    {
      v51 = swift_unknownObjectWeakLoadStrong();
      if (!v51)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v52 = v51;
      [v51 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      goto LABEL_49;
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v9 = v8;
    [v8 setHidden:1];

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v11 = v10;
    [v10 setHidden:1];

    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v13 = v12;
    [v12 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v37 = v36;
      [v36 setHidden:0];

      v38 = swift_unknownObjectWeakLoadStrong();
      if (!v38)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v39 = v38;
      [v38 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_40;
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v16 = v15;
    [v15 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  if (v7 == 2)
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v18 = v17;
    [v17 setHidden:0];

    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v20 = v19;
    [v19 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      __break(1u);
LABEL_26:
      if (v7 != 4)
      {
        v53 = [v0 traitCollection];
        v54 = [v53 preferredContentSizeCategory];

        LOBYTE(v53) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
        if ((v53 & 1) == 0)
        {
          v55 = swift_unknownObjectWeakLoadStrong();
          if (!v55)
          {
LABEL_97:
            __break(1u);
            return;
          }

          v56 = v55;
          [v55 setHidden:0];
        }

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          [v57 setHidden:0];

          v59 = swift_unknownObjectWeakLoadStrong();
          if (v59)
          {
            v60 = v59;
            [v59 setHidden:1];

            v61 = swift_unknownObjectWeakLoadStrong();
            if (v61)
            {
              v62 = v61;
              [v61 setHidden:1];

              v63 = swift_unknownObjectWeakLoadStrong();
              if (v63)
              {
                v64 = v63;
                [v63 setHidden:0];

                v65 = swift_unknownObjectWeakLoadStrong();
                if (v65)
                {
                  v66 = v65;
                  [v65 setEnabled:0];

                  v67 = swift_unknownObjectWeakLoadStrong();
                  if (v67)
                  {
                    v68 = v67;
                    v69 = [objc_opt_self() quaternaryLabelColor];
                    [v68 setBackgroundColor:v69];

                    v70 = swift_unknownObjectWeakLoadStrong();
                    if (v70)
                    {
                      v33 = v70;
                      v34 = GKGameCenterUIFrameworkBundle();
                      v72._countAndFlagsBits = 0xE000000000000000;
                      v35._object = 0x80000001000433B0;
                      v35._countAndFlagsBits = 0xD00000000000001ELL;
                      goto LABEL_62;
                    }

                    goto LABEL_96;
                  }

LABEL_95:
                  __break(1u);
LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

                goto LABEL_93;
              }

              goto LABEL_90;
            }

            goto LABEL_87;
          }

          goto LABEL_83;
        }

        goto LABEL_76;
      }

      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {
        goto LABEL_74;
      }

      v22 = v21;
      [v21 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {
        __break(1u);
LABEL_30:
        v23 = swift_unknownObjectWeakLoadStrong();
        if (v23)
        {
          v24 = v23;
          [v23 setHidden:1];

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v25 setHidden:0];

            v27 = swift_unknownObjectWeakLoadStrong();
            if (v27)
            {
              v28 = v27;
              [v27 setEnabled:0];

              v29 = swift_unknownObjectWeakLoadStrong();
              if (v29)
              {
                v30 = v29;
                v31 = [objc_opt_self() quaternaryLabelColor];
                [v30 setBackgroundColor:v31];

                v32 = swift_unknownObjectWeakLoadStrong();
                if (v32)
                {
                  v33 = v32;
                  v34 = GKGameCenterUIFrameworkBundle();
                  v72._countAndFlagsBits = 0xE000000000000000;
                  v35._countAndFlagsBits = 0xD000000000000022;
                  v35._object = 0x8000000100043380;
LABEL_62:
                  v75.value._countAndFlagsBits = 0;
                  v75.value._object = 0;
                  v71.super.isa = v34;
                  v76._countAndFlagsBits = 0;
                  v76._object = 0xE000000000000000;
                  sub_100041180(v35, v75, v71, v76, 0, v72);

                  v73 = sub_100041AF0();

                  [v33 setTitle:v73 forState:2];

                  goto LABEL_63;
                }

                goto LABEL_91;
              }

              goto LABEL_88;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        goto LABEL_68;
      }
    }

LABEL_49:
    v50 = "setHidden:";
    goto LABEL_50;
  }

LABEL_40:
  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v41 = v40;
  [v40 setHidden:0];

  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v43 = v42;
  [v42 setHidden:1];

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v45 = v44;
  [v44 setHidden:0];

  v46 = swift_unknownObjectWeakLoadStrong();
  if (!v46)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v47 = v46;
  [v46 setHidden:0];

  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v49 = v48;
  [v48 setEnabled:1];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v50 = "setEnabled:";
LABEL_50:
  v73 = v14;
  [v14 v50];
LABEL_63:
}

void sub_10000BC98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = Strong;
  [Strong setHidden:1];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = v3;
  [v3 setHidden:1];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = v5;
  [v5 setHidden:1];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v7;
  [v7 setHidden:1];

  v9 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if (v9 <= 2)
  {
    goto LABEL_9;
  }

  if (v9 - 3 < 4)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_9:
    if (v9 - 1 < 2)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        [v11 setHidden:0];

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          [v13 setHidden:1];

          v15 = swift_unknownObjectWeakLoadStrong();
          if (v15)
          {
            v29 = v15;
            [v15 setHidden:0];
LABEL_23:

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_22:
    v29 = v10;
    [v10 setHidden:1];
    goto LABEL_23;
  }

  if (v9 != 7)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v22 setHidden:0];

      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = GKGameCenterUIFrameworkBundle();
        v28._countAndFlagsBits = 0xE000000000000000;
        v31._object = 0x8000000100043350;
        v31._countAndFlagsBits = 0xD000000000000027;
        v32.value._countAndFlagsBits = 0;
        v32.value._object = 0;
        v27.super.isa = v26;
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        sub_100041180(v31, v32, v27, v33, 0, v28);

        v29 = sub_100041AF0();

        [v25 setText:v29];

        goto LABEL_23;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  [v16 setHidden:1];

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = v18;
  [v18 setHidden:1];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setHidden:0];

  sub_10000D2A8();
}

void sub_10000BFE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if (v1 > 4)
  {
    if (v1 - 7 < 2)
    {
      return;
    }

    if (v1 == 5)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v3 = Strong;
      v5 = 0xD000000000000031;
      v7 = "FRIEND_REQUEST_CARD_SUBTITLE_WHEN_INVITE_ACCEPTED";
LABEL_15:
      v4 = (v7 - 32);
      goto LABEL_16;
    }

LABEL_11:
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v3 = v8;
      v4 = "N_ALREADY_FRIENDS";
      v5 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v1 >= 3)
  {
    if (v1 != 3)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (!v9)
      {
        goto LABEL_22;
      }

      v3 = v9;
      v5 = 0xD000000000000031;
      v7 = "FRIEND_REQUEST_CARD_SUBTITLE_WHEN_ALREADY_FRIENDS";
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  v4 = "FRIEND_REQUEST_CARD_SUBTITLE";
  v5 = 0xD000000000000023;
LABEL_16:
  v10 = GKGameCenterUIFrameworkBundle();
  v12._countAndFlagsBits = 0xE000000000000000;
  v15._object = (v4 | 0x8000000000000000);
  v15._countAndFlagsBits = v5;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v11.super.isa = v10;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100041180(v15, v16, v11, v17, 0, v12);

  v13 = sub_100041AF0();

  [v3 setText:v13];
}

void sub_10000C1B0(uint64_t a1)
{
  v3 = sub_100039914();
  if (!v3 || (v4 = v3, v5 = [v3 activeConversation], v4, !v5))
  {
LABEL_16:
    v33 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    if (v33 && (v34 = [v33 displayNameWithOptions:0]) != 0)
    {
      v79 = v1;
      v35 = v34;
      sub_100041B20();
    }

    else
    {
      if (!*(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname + 8))
      {
LABEL_28:
        *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 1;
        sub_10000AC8C();
        return;
      }

      v79 = v1;
    }

    v36 = objc_allocWithZone(NSMutableAttributedString);
    v37 = sub_100041AF0();
    v38 = [v36 initWithString:v37];

    sub_100002D08(&qword_10005C9C8, &qword_100045CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100045AE0;
    *(inited + 32) = NSFontAttributeName;
    v40 = objc_opt_self();
    v77 = NSFontAttributeName;
    v41 = v38;
    v42 = [v40 _gkPreferredFontForTextStyle:UIFontTextStyleFootnote symbolicTraits:2];
    v43 = sub_10000EA78(0, &qword_10005C9D0, UIFont_ptr);
    *(inited + 64) = v43;
    *(inited + 40) = v42;
    v44 = sub_10000E6C8(inited);
    swift_setDeallocating();
    sub_10000E9F0(inited + 32, &unk_10005C9D8, &qword_100045CE0);
    type metadata accessor for Key(0);
    sub_10000E944(&qword_10005C570, type metadata accessor for Key, &unk_100045854);
    v45 = v41;
    v75._object = v44;
    isa = sub_100041A70().super.isa;
    [v45 addAttributes:isa range:{0, objc_msgSend(v45, "length")}];

    v47 = GKGameCenterUIFrameworkBundle();
    v75._countAndFlagsBits = 0xE000000000000000;
    v83._countAndFlagsBits = 0xD000000000000020;
    v83._object = 0x8000000100043FE0;
    v87.value._countAndFlagsBits = 0;
    v87.value._object = 0;
    v48.super.isa = v47;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    sub_100041180(v83, v87, v48, v91, 0, v75);

    v49 = objc_allocWithZone(NSMutableAttributedString);
    v50 = sub_100041AF0();

    v51 = [v49 initWithString:v50];

    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100045AE0;
    *(v52 + 32) = v77;
    v53 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
    *(v52 + 64) = v43;
    *(v52 + 40) = v53;
    sub_10000E6C8(v52);
    swift_setDeallocating();
    sub_10000E9F0(v52 + 32, &unk_10005C9D8, &qword_100045CE0);
    v54 = sub_100041A70().super.isa;
    [v51 addAttributes:v54 range:{0, objc_msgSend(v51, "length")}];

    [v45 appendAttributedString:v51];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v56 = Strong;
      [Strong setAttributedText:v45];

      v57 = swift_unknownObjectWeakLoadStrong();
      if (v57)
      {
        v58 = v57;
        v59 = GKGameCenterUIFrameworkBundle();
        v76._countAndFlagsBits = 0xE000000000000000;
        v84._countAndFlagsBits = 0xD00000000000001DLL;
        v84._object = 0x8000000100044010;
        v88.value._countAndFlagsBits = 0;
        v88.value._object = 0;
        v60.super.isa = v59;
        v92._countAndFlagsBits = 0;
        v92._object = 0xE000000000000000;
        sub_100041180(v84, v88, v60, v92, 0, v76);

        v61 = sub_100041AF0();

        [v58 setText:v61];

        v62 = swift_unknownObjectWeakLoadStrong();
        if (v62)
        {
          v63 = v62;
          [v62 setUserInteractionEnabled:1];

          v64 = objc_allocWithZone(UITapGestureRecognizer);
          v65 = v79;
          v66 = [v64 initWithTarget:v65 action:"friendAvatarPressed:"];
          v67 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v65 action:"friendAvatarPressed:"];

          v68 = swift_unknownObjectWeakLoadStrong();
          if (v68)
          {
            v69 = v68;
            [v68 addGestureRecognizer:v66];

            v70 = swift_unknownObjectWeakLoadStrong();
            if (v70)
            {
              v71 = v70;
              [v70 setUserInteractionEnabled:1];

              v72 = swift_unknownObjectWeakLoadStrong();

              if (v72)
              {

                [v72 addGestureRecognizer:v67];

                v1 = v79;
                goto LABEL_28;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v6 = [v5 recipientAddresses];
  v7 = sub_100041C20();

  v8 = *(v7 + 16);

  if (v8 < 2 || (v9 = (a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount), (*(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8) & 1) != 0) || (v10 = *v9, *v9 < 1))
  {

    goto LABEL_16;
  }

  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 2;
  sub_10000AC8C();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v11;
  v13 = GKGameCenterUIFrameworkBundle();
  v73._countAndFlagsBits = 0xE000000000000000;
  v81._object = 0x8000000100044030;
  v81._countAndFlagsBits = 0xD00000000000001ALL;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v14.super.isa = v13;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  sub_100041180(v81, v85, v14, v89, 0, v73);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100045AE0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v10;
  sub_100041B30();

  v16 = sub_100041AF0();

  [v12 setText:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v17;
  v19 = GKGameCenterUIFrameworkBundle();
  v74._countAndFlagsBits = 0xE000000000000000;
  v82._countAndFlagsBits = 0xD00000000000001CLL;
  v82._object = 0x8000000100044050;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v20.super.isa = v19;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  sub_100041180(v82, v86, v20, v90, 0, v74);

  v21 = sub_100041AF0();

  [v18 setText:v21];

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = v22;
  [v22 setUserInteractionEnabled:1];

  v24 = objc_allocWithZone(UITapGestureRecognizer);
  v25 = v1;
  v26 = [v24 initWithTarget:v25 action:"viewGameCenterFriendsTapped:"];
  v27 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v25 action:"viewGameCenterFriendsTapped:"];

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v28;
  [v28 addGestureRecognizer:v26];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = v30;
  [v30 setUserInteractionEnabled:1];

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v78 = v32;
  [v32 addGestureRecognizer:v27];
}

void sub_10000CB8C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v3 = sub_100041AF0(), v4 = [objc_opt_self() systemImageNamed:v3], v3, !v4) || (v5 = objc_msgSend(objc_opt_self(), "configurationWithScale:", 1), v6 = objc_msgSend(v4, "imageWithConfiguration:", v5), v4, v5, !v6))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [Strong setHidden:1];

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_20;
  }

  v39 = v6;
  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_100041AF0();
  v9 = [v7 initWithString:v8];

  sub_100002D08(&qword_10005C9C8, &qword_100045CD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045AE0;
  *(inited + 32) = NSFontAttributeName;
  v11 = objc_opt_self();
  v12 = qword_10005C4F0;
  v13 = NSFontAttributeName;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = [v11 _gkPreferredFontForTextStyle:qword_10005FF40 symbolicTraits:2];
  *(inited + 64) = sub_10000EA78(0, &qword_10005C9D0, UIFont_ptr);
  *(inited + 40) = v14;
  sub_10000E6C8(inited);
  swift_setDeallocating();
  sub_10000E9F0(inited + 32, &unk_10005C9D8, &qword_100045CE0);
  v15 = 1 << *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if ((v15 & 0x178) != 0)
  {

    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    sub_100041B80(v41);
    v16 = objc_allocWithZone(NSMutableAttributedString);
    v17 = sub_100041AF0();

    v18 = [v16 initWithString:v17];

    type metadata accessor for Key(0);
    sub_10000E944(&qword_10005C570, type metadata accessor for Key, &unk_100045854);
    v19 = v18;
    isa = sub_100041A70().super.isa;
    [v19 addAttributes:isa range:{0, objc_msgSend(v19, "length")}];

    v21 = [objc_opt_self() textAttachmentWithImage:v39];
    sub_10000EA78(0, &qword_10005C9E8, NSMutableAttributedString_ptr);
    v22 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v21];
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_100045AE0;
    *(v23 + 32) = NSForegroundColorAttributeName;
    v24 = objc_opt_self();
    v25 = NSForegroundColorAttributeName;
    v26 = [v24 tertiaryLabelColor];
    *(v23 + 64) = sub_10000EA78(0, &qword_10005C9F0, UIColor_ptr);
    *(v23 + 40) = v26;
    sub_10000E6C8(v23);
    swift_setDeallocating();
    sub_10000E9F0(v23 + 32, &unk_10005C9D8, &qword_100045CE0);
    v27 = sub_100041A70().super.isa;
    [v22 addAttributes:v27 range:{0, objc_msgSend(v22, "length")}];

    [v19 appendAttributedString:v22];
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v28 setAttributedText:v19];

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        [v30 setUserInteractionEnabled:1];

        v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"friendAvatarPressed:"];
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;

          [v34 addGestureRecognizer:v32];

LABEL_14:
          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v15 & 7) == 0)
  {

    goto LABEL_14;
  }

  type metadata accessor for Key(0);
  sub_10000E944(&qword_10005C570, type metadata accessor for Key, &unk_100045854);
  v36 = sub_100041A70().super.isa;
  [v9 addAttributes:v36 range:{0, objc_msgSend(v9, "length")}];

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    [v38 setAttributedText:v9];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10000D2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
  if (!v1)
  {
    sub_10000D4C4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_9:
    if (v2)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v4 = v13;
        v8 = "LERT_MESSAGE_EXPIRED";
        v5 = 0xD000000000000019;
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      return;
    }

    sub_10000D4C4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_24;
    }

LABEL_11:
    v4 = Strong;
    v5 = 0xD00000000000002ELL;
    v6 = "FRIEND_REQUEST_CARD_SERVER_COMMUNICATION_ERROR";
    goto LABEL_12;
  }

  v2 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType);
  if (v2 <= 1)
  {
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v4 = v11;
      v5 = 0xD000000000000024;
      v6 = "FRIEND_REQUEST_ALERT_MESSAGE_EXPIRED";
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2 != 3)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v4 = v12;
      v8 = "ARD_SERVER_COMMUNICATION_ERROR";
      v5 = 0xD000000000000018;
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v3;
  v5 = 0xD000000000000024;
  v6 = "FRIEND_REQUEST_ALERT_MESSAGE_INVALID";
LABEL_12:
  v8 = (v6 - 32);
LABEL_13:
  v9 = GKGameCenterUIFrameworkBundle();
  v14._countAndFlagsBits = 0xE000000000000000;
  v17._object = (v8 | 0x8000000000000000);
  v17._countAndFlagsBits = v5;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v10.super.isa = v9;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100041180(v17, v18, v10, v19, 0, v14);

  v15 = sub_100041AF0();

  [v4 setText:v15];
}

void sub_10000D4C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = Strong;
  [Strong setHidden:0];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled:1];

  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tryAgainPressed:"];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addGestureRecognizer:v5];
}

void sub_10000D5B0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LODWORD(v3) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (!v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = objc_opt_self();
      v9 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
      [v7 setFont:v9];

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        [a1 stats];
        sub_100041FB0();
        v12 = sub_100041AF0();

        [v11 setText:v12];

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v15 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
          [v14 setFont:v15];

          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            [a1 stats];
            sub_100041FB0();
            v18 = sub_100041AF0();

            [v17 setText:v18];

            v19 = swift_unknownObjectWeakLoadStrong();
            if (v19)
            {
              v20 = v19;
              v21 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
              [v20 setFont:v21];

              v22 = swift_unknownObjectWeakLoadStrong();
              if (v22)
              {
                v23 = v22;
                [a1 stats];
                sub_100041FB0();
                v24 = sub_100041AF0();

                [v23 setText:v24];

                v25 = swift_unknownObjectWeakLoadStrong();
                if (v25)
                {
                  v26 = v25;
                  v27 = GKGameCenterUIFrameworkBundle();
                  v45._countAndFlagsBits = 0xE000000000000000;
                  v52._countAndFlagsBits = 0xD00000000000001CLL;
                  v52._object = 0x8000000100043EB0;
                  v55.value._countAndFlagsBits = 0;
                  v55.value._object = 0;
                  v28.super.isa = v27;
                  v58._countAndFlagsBits = 0;
                  v58._object = 0xE000000000000000;
                  sub_100041180(v52, v55, v28, v58, 0, v45);

                  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
                  v29 = swift_allocObject();
                  *(v29 + 16) = xmmword_100045AE0;
                  [a1 stats];
                  *(v29 + 56) = &type metadata for Int;
                  *(v29 + 64) = &protocol witness table for Int;
                  *(v29 + 32) = v49;
                  sub_100041B30();

                  v30 = sub_100041AF0();

                  [v26 setText:v30];

                  v31 = swift_unknownObjectWeakLoadStrong();
                  if (v31)
                  {
                    v32 = v31;
                    v33 = GKGameCenterUIFrameworkBundle();
                    v46._countAndFlagsBits = 0xE000000000000000;
                    v53._countAndFlagsBits = 0xD000000000000018;
                    v53._object = 0x8000000100043ED0;
                    v56.value._countAndFlagsBits = 0;
                    v56.value._object = 0;
                    v34.super.isa = v33;
                    v59._countAndFlagsBits = 0;
                    v59._object = 0xE000000000000000;
                    sub_100041180(v53, v56, v34, v59, 0, v46);

                    v35 = swift_allocObject();
                    *(v35 + 16) = xmmword_100045AE0;
                    [a1 stats];
                    *(v35 + 56) = &type metadata for Int;
                    *(v35 + 64) = &protocol witness table for Int;
                    *(v35 + 32) = v50;
                    sub_100041B30();

                    v36 = sub_100041AF0();

                    [v32 setText:v36];

                    v37 = swift_unknownObjectWeakLoadStrong();
                    if (v37)
                    {
                      v38 = v37;
                      v39 = GKGameCenterUIFrameworkBundle();
                      v47._countAndFlagsBits = 0xE000000000000000;
                      v54._object = 0x8000000100043EF0;
                      v54._countAndFlagsBits = 0xD000000000000011;
                      v57.value._countAndFlagsBits = 0;
                      v57.value._object = 0;
                      v40.super.isa = v39;
                      v60._countAndFlagsBits = 0;
                      v60._object = 0xE000000000000000;
                      sub_100041180(v54, v57, v40, v60, 0, v47);

                      v41 = swift_allocObject();
                      *(v41 + 16) = xmmword_100045AE0;
                      [a1 stats];
                      *(v41 + 56) = &type metadata for Int;
                      *(v41 + 64) = &protocol witness table for Int;
                      *(v41 + 32) = v49;
                      sub_100041B30();

                      v42 = sub_100041AF0();

                      [v38 setText:v42];

                      v43 = swift_unknownObjectWeakLoadStrong();
                      if (v43)
                      {
                        v44 = v43;
                        [v43 setHidden:0];

                        return;
                      }

                      goto LABEL_27;
                    }

LABEL_26:
                    __break(1u);
LABEL_27:
                    __break(1u);
                    return;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v48 = v5;
  [v5 setHidden:1];
}

id sub_10000DCD8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] = 0;
  v6 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  *v6 = 0;
  v6[1] = 0;
  if (a2)
  {
    v7 = sub_100041AF0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FriendRequestCardViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10000E068(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = 2;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = 0;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = 2;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] = 0;
  v3 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  v4 = type metadata accessor for FriendRequestCardViewController();
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for FriendRequestCardViewController.InviteCardViewer(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for FriendRequestCardViewController.InviteCardUIType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendRequestCardViewController.InviteCardUIType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E5D0()
{
  result = qword_10005C9B0;
  if (!qword_10005C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C9B0);
  }

  return result;
}

unint64_t sub_10000E628()
{
  result = qword_10005C9B8;
  if (!qword_10005C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C9B8);
  }

  return result;
}

unint64_t sub_10000E67C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100055818;
  v6._object = a2;
  v4 = sub_100041FA0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000E6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D08(&qword_10005C9F8, &qword_100045CE8);
    v3 = sub_100041F80();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E7D0(v4, &v11);
      v5 = v11;
      result = sub_10002FEFC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E840(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_10000E7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&unk_10005C9D8, &qword_100045CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000E840(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E8A8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000E8F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E98C()
{
  result = qword_10005CA28;
  if (!qword_10005CA28)
  {
    sub_1000025E8(&qword_10005CA20, qword_100045D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CA28);
  }

  return result;
}

uint64_t sub_10000E9F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EA50(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EA78(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000EAC0()
{
  v1 = sub_100041A10();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100041A30();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100041A50();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v14 = sub_100041D50();
  sub_100041A40();
  sub_100041A60();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_10000F37C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100055E90;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E944(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_10000E98C();
  sub_100041E60();
  sub_100041D20();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

void sub_10000EE6C(uint64_t a1)
{
  v2 = sub_100039914();
  if (v2)
  {
    v14 = v2;
    v3 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer);
    v4 = [objc_allocWithZone(GKReporter) init];
    v5 = v4;
    v6 = &GKSenderTappedViewPlayerProfileButton;
    if (v3)
    {
      v6 = &GKReceiverTappedViewPlayerProfileButton;
    }

    [v4 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:*v6];

    v7 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
      if (v8)
      {
        v9 = [v8 internal];
        v10 = [v9 playerID];

        v11 = sub_100041B20();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      sub_1000313A4(v11, v13);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000EFBC(uint64_t a1)
{
  v2 = sub_100039914();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(GKReporter) init];
    [v4 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendProfileButtonTapped];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v6 = Strong, v7 = [Strong player], v6, v7))
    {
      v8 = [v7 internal];

      v9 = [v8 playerID];
      v10 = sub_100041B20();
      v12 = v11;
    }

    else
    {
      v10 = sub_100041B20();
      v12 = v13;
    }

    if (v10 == sub_100041B20() && v12 == v14)
    {
    }

    else
    {
      v16 = sub_100041FC0();

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
    if (v17)
    {
      v18 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v19 = *(v17 + v18);
      if (!v19 || !v19[2])
      {
        v20 = *(v17 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
        if (v20)
        {
          v21 = v20;

          v22 = [v21 internal];

          v23 = [v22 playerID];
          v10 = sub_100041B20();
          v12 = v24;
        }

        goto LABEL_20;
      }

      if (v19[2])
      {
        v10 = v19[4];
        v12 = v19[5];

LABEL_20:
        sub_1000313A4(v10, v12);

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

id sub_10000F264()
{
  v0 = [objc_allocWithZone(GKAPIReporter) init];
  v1 = sub_100041AF0();
  v2 = sub_100041AF0();
  v3 = sub_100041AF0();
  sub_1000073F0(v3);
  v4 = sub_100041AF0();

  v5 = sub_100041AF0();
  [v0 recordClickWithAction:v1 targetId:v2 targetType:v3 pageId:v4 pageType:v5];

  return sub_1000056A8();
}

id sub_10000F544(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10000F5C8(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[qword_10005D758];
  if (v3)
  {
    if (*(*&v2[qword_10005D760] + 16))
    {
      v6 = objc_opt_self();
      v7 = v3;

      v8.super.isa = sub_100041C10().super.isa;

      v9 = swift_allocObject();
      v9[2] = v2;
      v9[3] = a1;
      v9[4] = a2;
      v19 = sub_100010348;
      v20 = v9;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10000F9E4;
      v18 = &unk_100055F50;
      v10 = _Block_copy(&aBlock);
      v11 = v2;

      [v6 loadGameRecordsForPlayer:v7 bundleIDs:v8.super.isa withCompletionHandler:v10];
      _Block_release(v10);
    }

    else
    {
      v12 = swift_allocObject();
      v12[2] = v2;
      v12[3] = a1;
      v12[4] = a2;
      v19 = sub_1000102E4;
      v20 = v12;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10000FC5C;
      v18 = &unk_100055F00;
      v13 = _Block_copy(&aBlock);
      v8.super.isa = v3;
      v14 = v2;

      [(objc_class *)v8.super.isa loadGamesPlayedDetailsWithCompletionHandler:v13];
      _Block_release(v13);
    }
  }

  else
  {
    sub_100041F40();
    __break(1u);
  }
}

uint64_t sub_10000F840(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v17 = a3;
      v18 = a2;
      v19 = a4;
      v8 = 0;
      a4 = (a1 & 0xC000000000000001);
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a4)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 internal];
        v13 = [v12 canBeIndexed];

        if (v13)
        {
          sub_100041EF0();
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
        }

        else
        {
        }

        ++v8;
        if (v11 == v7)
        {
          a4 = v19;
          a2 = v18;
          a3 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = a3;
      v15 = sub_100041F50();
      a3 = v14;
      v7 = v15;
    }

    while (v15);
  }

LABEL_17:
  *(a3 + qword_10005D768) = _swiftEmptyArrayStorage;

  return a4(a2);
}

void sub_10000F9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_100010190();
  v5 = sub_100041C20();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10000FA84(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t (*a6)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100041F50())
  {
    v20 = a5;
    v21 = a4;
    v22 = a6;
    v11 = 0;
    a6 = (a1 & 0xFFFFFFFFFFFFFF8);
    a5 = &unk_10005A000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_100041EC0();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 internal];
      v15 = [v14 canBeIndexed];

      if (v15)
      {
        sub_100041EF0();
        sub_100041F10();
        sub_100041F20();
        sub_100041F00();
      }

      else
      {
      }

      ++v11;
      if (a4 == i)
      {
        a6 = v22;
        a4 = v21;
        a5 = v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v16 = qword_10005D768;
  *&a5[qword_10005D768] = _swiftEmptyArrayStorage;

  v17 = *&a5[v16];
  if (v17 >> 62)
  {
    v18 = sub_100041F50();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&a5[qword_10005D770] = v18;
  return a6(a4);
}

void sub_10000FC5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  sub_100010190();
  v6 = sub_100041C20();
  v7 = sub_100041B20();
  v9 = v8;

  v10 = a4;
  v5(v6, v7, v9, a4);
}

id sub_10000FD20(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GamesModel(0);
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000FD64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamesModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _sSo12GKGameRecordC26GameCenterMessageExtensionE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_100041280();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v35 - v16;
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = &unk_10005A000;
  v21 = [a1 lastPlayedDate];
  v36 = v19;
  if (v21)
  {
    v22 = v21;
    sub_100041270();

    v23 = v14;
    v24 = v7;
    v25 = a2;
    v26 = *(v11 + 32);
    v26(v9, v17, v10);
    v35 = *(v11 + 56);
    v35(v9, 0, 1, v10);
    v26(v19, v9, v10);
    v20 = &unk_10005A000;
    a2 = v25;
    v7 = v24;
    v14 = v23;
  }

  else
  {
    v35 = *(v11 + 56);
    v35(v9, 1, 1, v10);
    sub_100041250();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100010354(v9);
    }
  }

  v27 = [a2 v20[259]];
  if (v27)
  {
    v28 = v27;
    sub_100041270();

    v29 = *(v11 + 32);
    v29(v7, v17, v10);
    v35(v7, 0, 1, v10);
    v29(v14, v7, v10);
    v30 = v36;
  }

  else
  {
    v35(v7, 1, 1, v10);
    sub_100041250();
    v31 = (*(v11 + 48))(v7, 1, v10);
    v30 = v36;
    if (v31 != 1)
    {
      sub_100010354(v7);
    }
  }

  v32 = sub_100041260();
  v33 = *(v11 + 8);
  v33(v14, v10);
  v33(v30, v10);
  return v32 & 1;
}

uint64_t sub_10001014C(uint64_t a1)
{
  result = sub_100010210(&qword_10005CA80, &protocol conformance descriptor for GKGameRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010190()
{
  result = qword_10005CA88;
  if (!qword_10005CA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA88);
  }

  return result;
}

uint64_t sub_100010210(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010190();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GamesModel(uint64_t a1)
{
  result = qword_10005CAC0;
  if (!qword_10005CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000102F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010308()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010354(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10001054C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActionCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000108E8(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SenderCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000109E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t UICollectionView.dequeueSupplementaryView<A>(ofKind:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100041AF0();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v8 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v10 = [v4 dequeueReusableSupplementaryViewOfKind:v7 withReuseIdentifier:v8 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100041EB0(68);
    v12._countAndFlagsBits = 0xD00000000000002ELL;
    v12._object = 0x8000000100043550;
    sub_100041B80(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_100041B80(v13);
    v14._object = 0x8000000100043580;
    v14._countAndFlagsBits = 0xD000000000000012;
    sub_100041B80(v14);
    v15._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v15);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeueCell<A>(for:)(uint64_t a1, unint64_t a2)
{
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v3 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v5 = [v2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100041EB0(42);

    v7._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v7);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t static NIBLoadableView<>.nibName.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  sub_100041B20();

  sub_1000024FC();
  v2 = sub_100041E30();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 16 + 16 * v3);

    return v4;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void UICollectionView.register<A>(_:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v4 = sub_100041AF0();

  [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];
}

void UICollectionView.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(a3 + 8))(a2, a3);
  v9 = v8;
  v10 = sub_100041AF0();

  v11 = [objc_opt_self() nibWithNibName:v10 bundle:v9];

  v12 = v11;
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v13 = sub_100041AF0();

  [v4 registerNib:v12 forCellWithReuseIdentifier:v13];
}

uint64_t sub_1000110F0(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_100041100();
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = &v31 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  result = sub_100041110();
  if (result)
  {
    v14 = result;
    v31 = v10;
    v32 = v12;
    v36 = *(result + 16);
    if (v36)
    {
      v15 = 0;
      v35 = v37 + 16;
      v33 = (v37 + 8);
      v39 = (v37 + 32);
      v16 = _swiftEmptyArrayStorage;
      v34 = v3;
      while (1)
      {
        if (v15 >= *(v14 + 16))
        {
          __break(1u);
          return result;
        }

        v17 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v18 = *(v37 + 72);
        (*(v37 + 16))(v41, v14 + v17 + v18 * v15, v3);
        if (sub_1000410E0() == a1 && v19 == v38)
        {
          break;
        }

        v20 = sub_100041FC0();

        if (v20)
        {
          goto LABEL_11;
        }

        result = (*v33)(v41, v3);
LABEL_5:
        if (v36 == ++v15)
        {
          goto LABEL_17;
        }
      }

LABEL_11:
      v21 = a1;
      v22 = *v39;
      (*v39)(v40, v41, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100040198(0, v16[2] + 1, 1);
        v16 = v42;
      }

      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        sub_100040198((v24 > 1), v25 + 1, 1);
        v16 = v42;
      }

      v16[2] = (v25 + 1);
      v26 = v16 + v17 + v25 * v18;
      v3 = v34;
      result = (v22)(v26, v40, v34);
      a1 = v21;
      goto LABEL_5;
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_17:

    if (v16[2])
    {
      v27 = v37;
      v28 = v31;
      (*(v37 + 16))(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v3);

      v29 = v32;
      (*(v27 + 32))(v32, v28, v3);
      v30 = sub_1000410F0();
      (*(v27 + 8))(v29, v3);
      return v30;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id + infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a2];
  [v3 appendAttributedString:a2];
  return v3;
}

id + infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  v4 = objc_allocWithZone(NSAttributedString);
  v5 = sub_100041AF0();
  v6 = [v4 initWithString:v5];

  [v3 appendAttributedString:v6];
  return v3;
}

__n128 sub_10001159C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000115B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000115F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001166C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_1000416F0();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100002D08(&qword_10005CD30, &qword_100045FC8);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v46[-v6];
  v7 = sub_100002D08(&qword_10005CD38, &qword_100045FD0);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v48 = &v46[-v8];
  v9 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  v10 = __chkstk_darwin(v9 - 8);
  v58 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v46[-v12];
  v55 = a1;
  v14 = a1[1];
  v60 = *a1;
  v61 = v14;
  sub_1000024FC();

  v15 = sub_100041860();
  v28 = v16;
  v18 = v17;
  sub_100041790();
  v19 = sub_100041840();
  v21 = v20;
  v23 = v22;

  sub_100002550(v15, v28, v18 & 1);

  LODWORD(v60) = sub_100041720();
  v24 = sub_100041830();
  v26 = v25;
  LODWORD(v28) = v27;
  v30 = v29;
  sub_100002550(v19, v21, v23 & 1);

  if (v55[2])
  {

    v47 = v28;
    v28 = v49;
    sub_100041960();
    v31 = v52;
    sub_1000416E0();
    sub_100003214(&qword_10005CD50, &qword_10005CD30, &qword_100045FC8, &protocol conformance descriptor for Button<A>);
    sub_100011DBC();
    v55 = v30;
    v32 = v48;
    v33 = v51;
    v34 = v54;
    sub_100041890();
    (*(v53 + 8))(v31, v34);
    v35 = v28;
    LOBYTE(v28) = v47;
    (*(v50 + 8))(v35, v33);
    v37 = v56;
    v36 = v57;
    v38 = v32;
    v30 = v55;
    (*(v56 + 32))(v13, v38, v57);
    v39 = 0;
    v40 = v36;
    v41 = v37;
  }

  else
  {
    v39 = 1;
    v41 = v56;
    v40 = v57;
  }

  (*(v41 + 56))(v13, v39, 1, v40);
  v42 = v58;
  sub_100011CD4(v13, v58);
  v43 = v59;
  *v59 = v24;
  v43[1] = v26;
  *(v43 + 16) = v28 & 1;
  v43[3] = v30;
  v44 = sub_100002D08(&qword_10005CD48, &qword_100045FE0);
  sub_100011CD4(v42, v43 + *(v44 + 48));
  sub_100011D44(v24, v26, v28 & 1);

  sub_100011D54(v13);
  sub_100011D54(v42);
  sub_100002550(v24, v26, v28 & 1);
}

uint64_t sub_100011B70@<X0>(uint64_t a1@<X8>)
{
  sub_1000413B0();
  sub_1000413A0();
  sub_1000024FC();
  v2 = sub_100041860();
  v4 = v3;
  v6 = v5;
  sub_100041900();
  v7 = sub_100041830();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100002550(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100011C68@<X0>(uint64_t a6@<X8>)
{
  v8 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v8;
  v12 = *(v6 + 32);
  *a6 = sub_100041690();
  *(a6 + 8) = 0x4020000000000000;
  *(a6 + 16) = 0;
  v9 = sub_100002D08(&qword_10005CD28, &qword_100045FC0);
  return sub_10001166C(v11, (a6 + *(v9 + 44)));
}

uint64_t sub_100011CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011D44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100011D54(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100011DBC()
{
  result = qword_10005CD58;
  if (!qword_10005CD58)
  {
    sub_1000416F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CD58);
  }

  return result;
}

Swift::Int sub_100011E6C()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1 + 1);
  return sub_100042020();
}

Swift::Int sub_100011EE4(uint64_t a1)
{
  v2 = *v1;
  sub_100042000();
  sub_100042010(v2 + 1);
  return sub_100042020();
}

uint64_t sub_100011F28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000122FC(*a1);
  *a2 = result;
  return result;
}

void sub_100011F64(void (*a1)(id, void))
{
  v3 = objc_opt_self();
  v4 = [v3 currentLocalPlayer];
  if (v4)
  {
    v11 = v4;
    if ([v4 isAuthenticated])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(v1 + 16) = v5;
    if (a1)
    {
      v10 = v11;
      a1(v11, 0);

      v6 = v10;
    }

    else
    {
      v6 = v11;
    }
  }

  else
  {
    v7 = [v3 authenticatedLocalPlayers];
    v8 = sub_100041C20();

    if (*(v8 + 16))
    {
      sub_100012320(v8 + 32, v13);

      sub_10001237C();
      if (swift_dynamicCast())
      {
        *(v1 + 16) = 3;
        if (a1)
        {
          v9 = v12;
          a1(v12, 0);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }

    *(v1 + 16) = 0;
    if (a1)
    {
      a1(0, 0);
    }
  }
}

uint64_t getEnumTagSinglePayload for LoadableModel.LoadingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LoadableModel.LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000122A8()
{
  result = qword_10005CE40;
  if (!qword_10005CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CE40);
  }

  return result;
}

uint64_t sub_1000122FC(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_100012320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001237C()
{
  result = qword_10005CE48;
  if (!qword_10005CE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CE48);
  }

  return result;
}

void sub_1000123C8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = sub_100041410();
  v4 = *(v39 - 8);
  v5 = __chkstk_darwin(v39);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  sub_1000413E0();
  v10 = v2;
  v11 = sub_100041400();
  v12 = sub_100041CC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    v14[1] = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ fetching player information using the playerModel: %@", v13, 0x16u);
    sub_100002D08(&unk_10005CA00, &unk_100045CF0);
    swift_arrayDestroy();
  }

  v16 = *(v4 + 8);
  v16(v9, v39);
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v18 = &off_10005C000;
  v19 = "GameCenterMessageExtension.MessagesViewController" + 48;
  if (*(inited + 16) != 2 || !*&v10[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player])
  {
    v37 = a1;
    sub_1000413E0();
    v20 = v10;
    v21 = sub_100041400();
    v22 = sub_100041CC0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%@ Player was not authenticated or player was nil", v23, 0xCu);
      sub_10000E9F0(v24, &unk_10005CA00, &unk_100045CF0);

      v19 = "r";
    }

    v16(v7, v39);
    v18 = &off_10005C000;
    v26 = *&v20[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup];
    [v26 setError:0];
    v27 = swift_allocObject();
    v27[2] = inited;
    v27[3] = v20;
    v27[4] = v26;
    v44 = sub_100019C4C;
    v45 = v27;
    aBlock = _NSConcreteStackBlock;
    v41 = *(v19 + 345);
    v42 = sub_100016ECC;
    v43 = &unk_1000562F8;
    v28 = _Block_copy(&aBlock);
    v29 = v20;
    v30 = v26;

    [v30 perform:v28];
    _Block_release(v28);

    a1 = v37;
  }

  v31 = *(v18[470] + v10);
  v32 = swift_allocObject();
  v32[2] = v10;
  v32[3] = a1;
  v32[4] = v38;
  v44 = sub_100019C58;
  v45 = v32;
  aBlock = _NSConcreteStackBlock;
  v41 = *(v19 + 345);
  v42 = sub_100012BD4;
  v43 = &unk_100056348;
  v33 = _Block_copy(&aBlock);
  v34 = v10;
  v35 = v31;

  [v35 notifyOnMainQueueWithBlock:v33];
  _Block_release(v33);
}

uint64_t sub_10001287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = objc_allocWithZone(GKFriendRequestURLModel);

    v11 = [v10 init];

    v15 = sub_100041AF0();

    [v11 setFriendSupportPageURL:v15];

    v16 = sub_100041AF0();

    [v11 setFriendCode:v16];

    v25 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState);
    sub_100041FB0();
    v17 = sub_100041AF0();

    [v11 setFriendRequestState:v17];

    v18 = [objc_opt_self() local];
    [v11 setInitiator:v18];

    v25 = a1;
    sub_100041FB0();
    v19 = sub_100041AF0();

    [v11 setFriendRequestVersion:v19];

    v20 = [objc_opt_self() _gkGenerateFriendRequestURL:v11];
    if (v20)
    {
      v21 = v20;
      sub_1000411E0();

      v22 = 0;
      v11 = v21;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_100041200();
    (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
    return sub_100019B94(v7, a2);
  }

  else
  {
LABEL_6:
    v12 = sub_100041200();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_100012BD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100012C18(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_100041410();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player];
  if (!v16 || (v63 = ObjectType, v64 = a3, v65 = a1, v66 = a2, v67 = a4, v17 = objc_opt_self(), v18 = v16, v68 = [v17 local], !objc_msgSend(v68, "isAuthenticated")))
  {
    sub_100041F40();
    __break(1u);
    return;
  }

  v19 = [v68 internal];
  v20 = [v19 playerID];

  v21 = sub_100041B20();
  v23 = v22;

  v24 = [v18 internal];
  v25 = [v24 playerID];

  v26 = sub_100041B20();
  v28 = v27;

  if (v21 == v26 && v23 == v28)
  {
  }

  else
  {
    v30 = sub_100041FC0();

    if ((v30 & 1) == 0 && *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v61 = *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

      sub_1000413E0();
      v31 = v6;
      v32 = sub_100041400();
      v33 = sub_100041CC0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v58 = v35;
        v59 = swift_slowAlloc();
        aBlock[0] = v59;
        *v34 = 138412546;
        *(v34 + 4) = v31;
        *v35 = v31;
        *(v34 + 12) = 2080;
        v36 = v31;
        v57 = v33;
        v37 = v36;
        v38 = [v36 description];
        v56 = v32;
        v39 = v38;
        v40 = sub_100041B20();
        v60 = v31;
        v42 = v41;

        v43 = sub_10003FBD0(v40, v42, aBlock);
        v31 = v60;

        *(v34 + 14) = v43;
        v44 = v56;
        _os_log_impl(&_mh_execute_header, v56, v57, "%@ ACCEPT friend request for playerModel: %s", v34, 0x16u);
        sub_10000E9F0(v58, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v59);
      }

      else
      {
      }

      (*(v62 + 8))(v15, v13);
      v46 = v64;
      v47 = v63;
      v48 = sub_100041AF0();

      v49 = swift_allocObject();
      v50 = v46 & 1;
      *(v49 + 16) = v50;
      v51 = v65;
      v52 = v66;
      *(v49 + 24) = v31;
      *(v49 + 32) = v51;
      v53 = v67;
      *(v49 + 40) = v52;
      *(v49 + 48) = v53;
      *(v49 + 56) = a5;
      *(v49 + 64) = v47;
      aBlock[4] = sub_10001C1C8;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_100056640;
      v54 = _Block_copy(aBlock);

      v55 = v31;

      [v68 acceptFriendRequestWithIdentifier:v48 sendPush:v50 handler:v54];

      _Block_release(v54);
      return;
    }
  }

  v67(0);

  v45 = v68;
}

void sub_1000131E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100041410();
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player];
  if (!v15 || (v63 = v12, v64 = ObjectType, v65 = a1, v16 = objc_opt_self(), v17 = v15, v66 = [v16 local], !objc_msgSend(v66, "isAuthenticated")))
  {
    sub_100041F40();
    __break(1u);
    return;
  }

  if (v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] > 3u)
  {
    goto LABEL_11;
  }

  v61 = a2;
  v62 = a4;
  v18 = [v66 internal];
  v19 = [v18 playerID];

  v20 = sub_100041B20();
  v22 = v21;

  v23 = [v17 internal];
  v24 = [v23 playerID];

  v25 = sub_100041B20();
  v27 = v26;

  if (v20 == v25 && v22 == v27)
  {

    goto LABEL_11;
  }

  v28 = sub_100041FC0();

  v30 = v61;
  v29 = v62;
  if ((v28 & 1) != 0 || !*&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
  {
LABEL_11:
    a3(0);

    v46 = v66;

    return;
  }

  v60 = *&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

  sub_1000413E0();
  v31 = v5;
  v32 = sub_100041400();
  v33 = sub_100041CC0();

  v59 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v56 = v35;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    v55 = v34;
    *v34 = 138412546;
    *(v34 + 4) = v31;
    *v35 = v31;
    *(v34 + 12) = 2080;
    v36 = v31;
    v58 = v31;
    v37 = v36;
    v38 = [v36 description];
    v54 = v32;
    v39 = v38;
    v40 = sub_100041B20();
    v42 = v41;

    v43 = v40;
    v29 = v62;
    v44 = sub_10003FBD0(v43, v42, aBlock);
    v30 = v61;

    v45 = v55;
    *(v55 + 14) = v44;
    v31 = v58;
    _os_log_impl(&_mh_execute_header, v32, v59, "%@ Reject friend request for playerModel: %s", v45, 0x16u);
    sub_10000E9F0(v56, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v57);
  }

  else
  {
  }

  (*(v63 + 8))(v14, v11);
  v47 = sub_100041AF0();

  v48 = swift_allocObject();
  v49 = v64;
  v50 = v65;
  v48[2] = v31;
  v48[3] = v50;
  v48[4] = v30;
  v48[5] = a3;
  v48[6] = v29;
  v48[7] = v49;
  aBlock[4] = sub_10001C11C;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_1000565C8;
  v51 = v31;
  v52 = _Block_copy(aBlock);

  v53 = v51;

  [v66 rejectFriendRequestWithIdentifier:v47 handler:v52];

  _Block_release(v52);
}

uint64_t sub_1000137CC(void *a1)
{
  v2 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  v3 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player) = a1;
  v4 = a1;

  v5 = *(v1 + v2);
  if (v5)
  {
    v6 = [v5 internal];
    v7 = [v6 playerID];

    v8 = sub_100041B20();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0;
  }

  v11 = (v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
  *v11 = v8;
  v11[1] = v10;
}

unint64_t sub_10001389C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019B08(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000138D0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019B18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100013908(uint64_t a1)
{
  v1 = a1;
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = "PLAYER_CARD_GAMES";
  v4 = "LERT_MESSAGE_INVALID";
  v5 = "NO_NETWORK_ALERT_MESSAGE";
  if (v1 == 3)
  {
    v6 = 0xD000000000000024;
  }

  else
  {
    v5 = "ARD_SERVER_COMMUNICATION_ERROR";
    v6 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v7 = 0xD000000000000024;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  if (v1)
  {
    v3 = "LERT_MESSAGE_EXPIRED";
    v8 = 0xD000000000000019;
  }

  else
  {
    v8 = 0xD00000000000002ELL;
  }

  if (v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (v1 <= 1u)
  {
    v10._countAndFlagsBits = v8;
  }

  else
  {
    v10._countAndFlagsBits = v7;
  }

  v14._countAndFlagsBits = 0xE000000000000000;
  v10._object = (v9 | 0x8000000000000000);
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v11.super.isa = v2;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v12 = sub_100041180(v10, v15, v11, v16, 0, v14);

  return v12;
}

uint64_t sub_100013A74()
{
  sub_100041EB0(148);
  v1._countAndFlagsBits = 0x6F43646E65697266;
  v1._object = 0xEC000000203A6564;
  sub_100041B80(v1);
  sub_100002D08(&qword_10005CF28, &qword_1000463A8);
  sub_100041F30();
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v2._object = 0x80000001000448A0;
  sub_100041B80(v2);
  sub_100041F30();
  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x80000001000448C0;
  sub_100041B80(v3);
  sub_100041F30();
  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001000448E0;
  sub_100041B80(v4);
  sub_100002D08(&qword_10005D010, &qword_100046410);
  sub_100041F30();
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x8000000100044900;
  sub_100041B80(v5);
  swift_beginAccess();
  sub_100002D08(&qword_10005D018, &qword_100046418);
  sub_100041F30();
  v6._countAndFlagsBits = 0x79616C70200A202CLL;
  v6._object = 0xEC000000203A7265;
  sub_100041B80(v6);
  sub_100002D08(&qword_10005D020, &unk_100046420);
  sub_100041F30();
  v7._object = 0x8000000100044920;
  v7._countAndFlagsBits = 0xD000000000000012;
  sub_100041B80(v7);
  sub_100041F30();
  return 0;
}

unint64_t *sub_100013D50@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_100013D68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000412B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v12 = sub_100041290();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v15 = 0;
  v15[1] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v16 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v19 = 0;
  v19[8] = 1;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v20 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v21 = objc_allocWithZone(GKDispatchGroup);
  v22 = sub_100041AF0();
  v23 = [v21 initWithName:v22];

  *&v3[v20] = v23;
  *v16 = a1;
  v16[1] = a2;

  v25.receiver = v3;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_100013F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000412B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v12 = sub_100041290();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v15 = 0;
  v15[1] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v16 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v19 = 0;
  v19[8] = 1;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v20 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v21 = objc_allocWithZone(GKDispatchGroup);
  v22 = sub_100041AF0();
  v23 = [v21 initWithName:v22];

  *&v3[v20] = v23;
  *v15 = a1;
  v15[1] = a2;

  v25.receiver = v3;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "init");
}

unint64_t sub_1000141C8(unint64_t result, unint64_t a2)
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
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
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
          v21 = v27;
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
          v10 = v27 + 1;
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
        result = sub_100041EE0();
        v3 = v26;
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
          v28 = v3;
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

  v6 = sub_100017C78(result, a2, 10);
  v24 = v25;
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

uint64_t sub_1000144C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *, void *))
{
  if (!a6)
  {
    v14 = (a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
    *v14 = a1;
    v14[1] = a2;

    v15 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
    swift_beginAccess();
    *(a7 + v15) = a3;

    if (a4)
    {
      v16 = [a4 integerValue];
      v17 = a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount;
      *v17 = v16;
      *(v17 + 8) = 0;
    }

    v18 = sub_100019B18([a5 integerValue]);
    if (v18 == 6)
    {
      v19 = 5;
    }

    else
    {
      v19 = v18;
    }

    *(a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = v19;
  }

  return a8(a6, a2, a3, a4, a5);
}

uint64_t sub_1000145E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = *(a1 + 32);
  if (a2)
  {
    v11 = sub_100041B20();
    v13 = v12;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  v13 = 0;
  if (a3)
  {
LABEL_3:
    v9 = sub_100041C20();
  }

LABEL_4:

  v14 = a4;
  v15 = a5;
  v16 = a6;
  v10(v11, v13, v9, a4, v15, a6);
}

uint64_t sub_1000146E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  if (a5)
  {
    v8 = 3;
    v9 = &OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
LABEL_5:
    *(a6 + *v9) = v8;
    return a7(a5);
  }

  if (a2)
  {
    v10 = (a6 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode);
    *v10 = a1;
    v10[1] = a2;
    v11 = a7;
    v12 = a6;

    v15 = (v12 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL);
    *v15 = a3;
    v15[1] = a4;

    a6 = v12;
    a7 = v11;
    v8 = 1;
    v9 = &OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
    goto LABEL_5;
  }

  return a7(a5);
}

uint64_t sub_1000147B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_100041B20();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_100041B20();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_100014888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    if (a2)
    {
      v24 = a5;
      v25 = a4;
      v8 = [objc_opt_self() local];
      v9 = [v8 internal];

      v10 = [v9 playerID];
      v11 = sub_100041B20();
      v13 = v12;

      v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v15 = *(a3 + v14);
      if (v15)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + v14) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_100017AF8(0, v15[2] + 1, 1, v15);
          *(a3 + v14) = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        v19 = (v18 + 1);
        if (v18 >= v17 >> 1)
        {
          v23 = sub_100017AF8((v17 > 1), v18 + 1, 1, v15);
          v19 = (v18 + 1);
          v15 = v23;
        }

        v15[2] = v19;
        v20 = &v15[2 * v18];
        v20[4] = v11;
        v20[5] = v13;
        *(a3 + v14) = v15;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_100002D08(&qword_10005CF00, &unk_100046F40);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100045AE0;
        *(v21 + 32) = v11;
        *(v21 + 40) = v13;
        *(a3 + v14) = v21;
      }

      a5 = v24;
      a4 = v25;
    }

    else
    {
      *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 2;
      *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = 0;
    }

    sub_100014A88(a4, a5);
    a1 = 0;
  }

  return a6(a1, a2, a3, a4, a5);
}

void sub_100014A88(uint64_t a1, uint64_t a2)
{
  v3 = sub_100041410();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  if (!a2)
  {
    return;
  }

  v10 = objc_opt_self();
  v11 = sub_100041AF0();
  v12 = [v10 predicateWithPhoneNumberOrEmail:v11];

  if (!v12)
  {
    return;
  }

  v13 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10005C500 != -1)
  {
    swift_once();
  }

  sub_100002D08(&qword_10005CFA0, &qword_1000463C0);
  isa = sub_100041C10().super.isa;
  aBlock[0] = 0;
  v15 = [v13 unifiedContactsMatchingPredicate:v12 keysToFetch:isa error:aBlock];

  v16 = aBlock[0];
  if (!v15)
  {
    v34 = aBlock[0];
    sub_1000411C0();

    swift_willThrow();
    sub_1000413E0();
    swift_errorRetain();
    v35 = sub_100041400();
    v36 = sub_100041CC0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v4;
      v39 = v38;
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v37 = 136315650;
      v40 = sub_100042030();
      v42 = sub_10003FBD0(v40, v41, aBlock);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_10003FBD0(0xD000000000000019, 0x80000001000447B0, aBlock);
      *(v37 + 22) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v43;
      *v39 = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s %s - Error fetching contacts: %@", v37, 0x20u);
      sub_10000E9F0(v39, &unk_10005CA00, &unk_100045CF0);

      swift_arrayDestroy();

      (*(v50 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return;
  }

  sub_10000EA78(0, &qword_10005CFA8, CNContact_ptr);
  v17 = sub_100041C20();
  v18 = v16;

  if (v17 >> 62)
  {
    if (sub_100041F50() >= 1)
    {
      goto LABEL_8;
    }

LABEL_21:

    return;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_21;
  }

LABEL_8:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_100041EC0();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;

  sub_1000413C0();
  v21 = v20;
  v22 = sub_100041400();
  v23 = sub_100041CC0();
  v51 = v21;

  v24 = &unk_10005A000;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v25 = 136315394;
    *(v25 + 4) = sub_10003FBD0(0xD000000000000019, 0x80000001000447B0, aBlock);
    *(v25 + 12) = 2080;
    v26 = [v51 identifier];
    v50 = v4;
    v27 = v26;
    v28 = sub_100041B20();
    v29 = v12;
    v30 = v13;
    v32 = v31;

    v33 = sub_10003FBD0(v28, v32, aBlock);
    v13 = v30;
    v12 = v29;
    v24 = &unk_10005A000;

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s - Adding %s to the deny list.", v25, 0x16u);
    swift_arrayDestroy();

    (*(v50 + 8))(v9, v3);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  v44 = [objc_opt_self() proxyForLocalPlayer];
  v45 = [v44 utilityServicePrivate];

  v46 = [v51 v24[293]];
  if (!v46)
  {
    sub_100041B20();
    v46 = sub_100041AF0();
  }

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_1000565F0;
  v47 = _Block_copy(aBlock);
  [v45 denyContact:v46 handler:v47];

  _Block_release(v47);
  swift_unknownObjectRelease();
}

void sub_1000151F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001525C()
{
  sub_100002D08(&qword_10005CFB0, &qword_1000463C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100046100;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v1 = objc_allocWithZone(NSString);
  v2 = CNContactImageDataKey;
  v3 = [v1 initWithString:v2];

  *(v0 + 40) = v3;
  v4 = objc_allocWithZone(NSString);
  v5 = CNContactPhoneNumbersKey;
  v6 = [v4 initWithString:v5];

  *(v0 + 48) = v6;
  v7 = objc_allocWithZone(NSString);
  v8 = CNContactEmailAddressesKey;
  v9 = [v7 initWithString:v8];

  *(v0 + 56) = v9;
  v10 = objc_allocWithZone(NSString);
  v11 = CNContactThumbnailImageDataKey;
  v12 = [v10 initWithString:v11];

  *(v0 + 64) = v12;
  v13 = objc_allocWithZone(NSString);
  v14 = CNContactImageDataAvailableKey;
  v15 = [v13 initWithString:v14];

  *(v0 + 72) = v15;
  qword_10005FF50 = v0;
}

uint64_t sub_10001541C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a4;
  v11 = a5;

  sub_100011F64(sub_100019CB0);
}

void sub_1000154C0(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v98 = a4;
  v11 = sub_100041410();
  v12 = *(v11 - 8);
  v99 = v11;
  v100 = v12;
  v13 = __chkstk_darwin(v11);
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v93 = &v90 - v16;
  v17 = __chkstk_darwin(v15);
  v91 = &v90 - v18;
  __chkstk_darwin(v17);
  v20 = &v90 - v19;
  sub_1000413E0();
  v21 = a3;
  v22 = a1;
  swift_errorRetain();
  v23 = sub_100041400();
  v24 = sub_100041CC0();
  v94 = v22;

  v25 = os_log_type_enabled(v23, v24);
  v96 = a1;
  v97 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v95 = a5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v101 = a1;
    aBlock[0] = v90;
    *v27 = 138412802;
    *(v27 + 4) = v21;
    *v28 = v21;
    *(v27 + 12) = 2080;
    v29 = v21;
    sub_100002D08(&qword_10005CF08, &unk_100046390);
    v30 = sub_100041E10();
    v32 = sub_10003FBD0(v30, v31, aBlock);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v101 = a2;
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v33 = sub_100041E10();
    v35 = sub_10003FBD0(v33, v34, aBlock);

    *(v27 + 24) = v35;
    v36 = v98;
    _os_log_impl(&_mh_execute_header, v23, v24, "%@ authCompleted: %s error: %s)", v27, 0x20u);
    sub_10000E9F0(v28, &unk_10005CA00, &unk_100045CF0);

    swift_arrayDestroy();

    a5 = v95;

    v37 = v99;
    v38 = *(v100 + 8);
    v38(v20, v99);
    if (a2)
    {
LABEL_3:
      v39 = sub_1000411B0();
      [v36 setError:v39];

LABEL_6:
      (a5)();
      return;
    }
  }

  else
  {

    v37 = v99;
    v38 = *(v100 + 8);
    v38(v20, v99);
    v36 = v98;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  [v36 setError:0];
  v40 = v97;
  if (*&v97[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player])
  {
    goto LABEL_6;
  }

  v41 = &v97[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  v42 = *&v97[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8];
  v43 = v96;
  if (!v96)
  {

    if (!v42)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v95 = a5;
  v44 = *v41;

  v45 = [v94 internal];
  v46 = [v45 playerID];

  v47 = sub_100041B20();
  v49 = v48;

  if (!v42)
  {
    a5 = v95;
    v43 = v96;
    v37 = v99;
    if (!v49)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (!v49)
  {
    a5 = v95;
    v37 = v99;
LABEL_18:

    goto LABEL_19;
  }

  if (v44 == v47 && v42 == v49)
  {

    a5 = v95;
    v43 = v96;
LABEL_32:
    v71 = v94;
    sub_1000137CC(v43);
    goto LABEL_6;
  }

  v70 = sub_100041FC0();

  a5 = v95;
  v43 = v96;
  v37 = v99;
  if (v70)
  {
    goto LABEL_32;
  }

LABEL_19:
  v50 = v41[1];
  if (!v50 || (v51 = *v41, *v41 == 0x496E776F6E6B6E55) && v50 == 0xE900000000000044 || (sub_100041FC0() & 1) != 0)
  {
    if (*&v40[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v52 = v93;
      sub_1000413E0();
      v53 = v40;
      v54 = sub_100041400();
      v55 = sub_100041CC0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = a5;
        v58 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v58 = v53;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, v54, v55, "%@ We have a non nil friend code, fetching sender playerID", v56, 0xCu);
        sub_10000E9F0(v58, &unk_10005CA00, &unk_100045CF0);
        a5 = v57;
      }

      v38(v52, v37);
      v60 = v53;
      v61 = v98;

      sub_10001B970(v60, v61, v60, a5, a6);
    }

    else
    {
      v62 = v92;
      sub_1000413E0();
      v63 = v40;
      v64 = sub_100041400();
      v65 = sub_100041CC0();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = a5;
        v68 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v68 = v63;
        v69 = v63;
        _os_log_impl(&_mh_execute_header, v64, v65, "%@ Creating a new friend request", v66, 0xCu);
        sub_10000E9F0(v68, &unk_10005CA00, &unk_100045CF0);
        a5 = v67;
      }

      v38(v62, v37);
      v60 = v63;

      sub_100019620(v60, v60, a5, a6);
    }
  }

  else
  {
    v95 = a5;

    v72 = v91;
    sub_1000413E0();
    v73 = v40;

    v74 = sub_100041400();
    v75 = sub_100041CC0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock[0] = v78;
      *v76 = 138412546;
      *(v76 + 4) = v73;
      *v77 = v73;
      *(v76 + 12) = 2080;
      v79 = v73;
      *(v76 + 14) = sub_10003FBD0(v51, v50, aBlock);
      _os_log_impl(&_mh_execute_header, v74, v75, "%@ loading playerID: %s", v76, 0x16u);
      sub_10000E9F0(v77, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v78);

      v80 = v99;
      v81 = v91;
    }

    else
    {

      v81 = v72;
      v80 = v37;
    }

    v38(v81, v80);
    v82 = objc_opt_self();
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_100045AE0;
    *(v83 + 32) = v51;
    *(v83 + 40) = v50;
    isa = sub_100041C10().super.isa;

    v85 = swift_allocObject();
    v86 = v98;
    v85[2] = v73;
    v85[3] = v86;
    v85[4] = v95;
    v85[5] = a6;
    aBlock[4] = sub_10001BF84;
    aBlock[5] = v85;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100016238;
    aBlock[3] = &unk_1000563E8;
    v87 = _Block_copy(aBlock);
    v88 = v73;
    v89 = v86;

    [v82 loadPlayersForIdentifiers:isa withCompletionHandler:v87];
    _Block_release(v87);
  }
}

void sub_100015EE0(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v34 = a4;
  v9 = sub_100041410();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v12 = a3;

  swift_errorRetain();
  v13 = sub_100041400();
  v14 = sub_100041CC0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    v30 = swift_slowAlloc();
    v35 = a1;
    v36 = v30;
    *v15 = 138412802;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v17 = v12;
    sub_100002D08(&qword_10005CF20, &qword_1000463A0);
    v18 = sub_100041E10();
    v20 = sub_10003FBD0(v18, v19, &v36);
    v31 = v12;
    v21 = a5;
    v22 = v20;

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    v35 = a2;
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v23 = sub_100041E10();
    v25 = sub_10003FBD0(v23, v24, &v36);

    *(v15 + 24) = v25;
    a5 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ players: %s error:%s", v15, 0x20u);
    sub_10000E9F0(v29, &unk_10005CA00, &unk_100045CF0);

    swift_arrayDestroy();
  }

  (*(v32 + 8))(v11, v33);
  if (a2)
  {
    v26 = sub_1000411B0();
  }

  else
  {
    v26 = 0;
  }

  [v34 setError:v26];

  if (!a1)
  {
    v27 = [objc_opt_self() unknownPlayer];
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = sub_100041EC0();
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(a1 + 32);
LABEL_11:
    v28 = sub_1000137CC(v27);
    a5(v28);
    return;
  }

  __break(1u);
}

uint64_t sub_100016238(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
    v4 = sub_100041C20();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1000162DC(void *a1, void *a2, char *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v58[1] = a5;
  v59 = a4;
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v58 - v14;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  if (a1)
  {
    v18 = sub_1000411B0();
  }

  else
  {
    v18 = 0;
  }

  [a2 setError:v18];

  v19 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8];
  if (v19)
  {
    v20 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
    if (v20 == sub_100041B20() && v19 == v21)
    {
    }

    else
    {
      v23 = v8;
      v24 = sub_100041FC0();

      if ((v24 & 1) == 0)
      {
        v53 = swift_allocObject();
        v53[2] = v20;
        v53[3] = v19;
        v53[4] = a3;
        v53[5] = a2;
        aBlock[4] = sub_10001C058;
        aBlock[5] = v53;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100016ECC;
        aBlock[3] = &unk_1000564B0;
        v54 = _Block_copy(aBlock);
        v55 = a3;
        v56 = a2;

        [v56 perform:v54];
        _Block_release(v54);
        return v59(v48);
      }

      v8 = v23;
    }

    sub_1000413E0();
    v33 = a3;
    v34 = sub_100041400();
    v35 = sub_100041CC0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v8;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v33;
      *v38 = v33;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "%@ We have a non nil friend code, but playerID was unknown.", v37, 0xCu);
      sub_10000E9F0(v38, &unk_10005CA00, &unk_100045CF0);

      v8 = v36;
    }

    v40 = *(v9 + 8);
    v40(v17, v8);
    v41 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    v33[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
    sub_1000413E0();
    v42 = v33;
    v43 = sub_100041400();
    v44 = sub_100041CC0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v58[0] = v8;
      v46 = v45;
      v47 = swift_slowAlloc();
      *v46 = 138412546;
      *(v46 + 4) = v42;
      *v47 = v42;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v33[v41];
      _os_log_impl(&_mh_execute_header, v43, v44, "%@ PlayerID was unknown, friendRequestErrorType set to %ld.", v46, 0x16u);
      sub_10000E9F0(v47, &unk_10005CA00, &unk_100045CF0);

      v8 = v58[0];
    }

    else
    {

      v43 = v42;
    }

    v48 = (v40)(v15, v8);
  }

  else
  {
    sub_1000413D0();
    swift_errorRetain();
    v25 = sub_100041400();
    v26 = sub_100041CE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58[0] = v8;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136315138;
      v61 = a1;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v30 = sub_100041E10();
      v32 = sub_10003FBD0(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "getPlayerIDFromFriendCode error:%s", v27, 0xCu);
      sub_10000E8A8(v29);

      (*(v9 + 8))(v12, v58[0]);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v49 = [objc_opt_self() unknownPlayer];
    v48 = sub_1000137CC(v49);
    v50 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 2;
    if (a1)
    {
      aBlock[0] = a1;
      swift_errorRetain();
      sub_100002D08(&qword_10005CF30, &unk_1000463B0);
      sub_10000EA78(0, &qword_10005CF38, NSError_ptr);
      v48 = swift_dynamicCast();
      if (v48)
      {
        v51 = v61;
        v52 = sub_10001953C(v61);

        if (v52)
        {
          a3[v50] = 4;
        }
      }
    }
  }

  return v59(v48);
}

void sub_100016938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6)
{
  sub_100002D08(&qword_10005CF00, &unk_100046F40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045AE0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
  swift_beginAccess();
  v14 = *&a5[v13];
  if (v14 && v14[2])
  {
    v16 = v14[4];
    v15 = v14[5];
    swift_bridgeObjectRetain_n();

    v17 = sub_100017AF8(1, 2, 1, v12);
    v17[2] = 2;
    v17[6] = v16;
    v17[7] = v15;
  }

  else
  {

    v16 = 0;
    v15 = 0xE000000000000000;
  }

  v18 = objc_opt_self();
  isa = sub_100041C10().super.isa;

  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a5;
  v20[4] = v16;
  v20[5] = v15;
  v20[6] = a1;
  v20[7] = a2;
  aBlock[4] = sub_10001C0B4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016238;
  aBlock[3] = &unk_100056500;
  v21 = _Block_copy(aBlock);
  v22 = a6;
  v23 = a5;

  [v18 loadPlayersForIdentifiers:isa withCompletionHandler:v21];
  _Block_release(v21);
}