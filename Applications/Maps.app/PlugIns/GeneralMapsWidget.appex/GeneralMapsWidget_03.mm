unint64_t sub_1000591D8()
{
  result = qword_1000E0DB8;
  if (!qword_1000E0DB8)
  {
    sub_100015288(&qword_1000E0D98, &qword_100084CE8);
    sub_100059190(&qword_1000E0DC0, type metadata accessor for SuggestedDestinationSmallWidgetView, &unk_100084E20);
    sub_100059190(&qword_1000E0DC8, type metadata accessor for SuggestedDestinationMediumWidgetView, &unk_100084DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DB8);
  }

  return result;
}

unint64_t sub_1000592C4()
{
  result = qword_1000E0DD0;
  if (!qword_1000E0DD0)
  {
    sub_100015288(&qword_1000E0D78, &qword_100084CC8);
    sub_100059190(&qword_1000E0DA8, type metadata accessor for SuggestedDestinationLargeWidgetView, &unk_100084EC0);
    sub_100059190(&qword_1000E0DB0, type metadata accessor for SuggestedDestinationAccessoryRectangularWidgetView, &unk_100084E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DD0);
  }

  return result;
}

unint64_t sub_1000593B0()
{
  result = qword_1000E0DD8;
  if (!qword_1000E0DD8)
  {
    sub_100015288(&qword_1000E0DA0, &unk_100084CF0);
    sub_1000591D8();
    sub_1000592C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0DD8);
  }

  return result;
}

uint64_t sub_10005943C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100059528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000595A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100059618(uint64_t a1)
{
  result = type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100059684()
{
  result = qword_1000E1020;
  if (!qword_1000E1020)
  {
    sub_100015288(&qword_1000E1028, &qword_100084DC8);
    sub_1000593B0();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1020);
  }

  return result;
}

void sub_1000597EC(uint64_t a1)
{
  type metadata accessor for NavigationETAEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000598A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v3 - 8);
  v25 = &v21 - v4;
  v23 = sub_10007DA88();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100015240(&qword_1000E1360, &qword_100085328);
  __chkstk_darwin(v21);
  v9 = &v21 - v8;
  v22 = sub_100015240(&qword_1000E1368, &qword_100085330);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v21 - v10;
  *v9 = sub_10007D948();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = sub_100015240(&qword_1000E1370, &qword_100085338);
  sub_100059C90(v2, &v9[*(v12 + 44)]);
  sub_10007DA78();
  v27 = v2;
  sub_10007DE88();
  v13 = sub_100015240(&qword_1000E1328, &qword_100085260);
  v14 = sub_10002DDAC(&qword_1000E1378, &qword_1000E1360, &qword_100085328, &protocol conformance descriptor for VStack<A>);
  v20 = sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260, &unk_100083A08);
  v15 = v21;
  sub_10007DCB8();
  (*(v5 + 8))(v7, v23);
  sub_1000256C0(v9, &qword_1000E1360, &qword_100085328);
  v16 = sub_10007D288();
  v17 = v25;
  (*(*(v16 - 8) + 56))(v25, 1, 1, v16);
  v28 = v15;
  v29 = v13;
  v30 = v14;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_10007DC18();
  sub_1000256C0(v17, &qword_1000DEEE0, &qword_100082E30);
  return (*(v24 + 8))(v11, v18);
}

uint64_t sub_100059C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1380, &qword_100085340);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v20 - v9);
  *v10 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 44)) = 0x4024000000000000;
  v11 = v10 + *(v5 + 48);
  v12 = type metadata accessor for NavigationETASmallWidgetView(0);
  sub_10005BA68(a1 + *(v12 + 20), v11, type metadata accessor for NavigationETAEntryContent);
  v13 = *(type metadata accessor for NavigationETASmallPlatterContent(0) + 20);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v14 = (v11 + v13);
  v15.super.isa = qword_1000E4B68;
  v19._countAndFlagsBits = 0x8000000100090730;
  v21._countAndFlagsBits = 0x402520415445;
  v21._object = 0xE600000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v23._countAndFlagsBits = 0x402520415445;
  v23._object = 0xE600000000000000;
  *v14 = sub_10007D258(v21, v22, v15, v23, 0xD00000000000001BLL, v19);
  v14[1] = v16;
  sub_100026310(v10, v8, &qword_1000E1380, &qword_100085340);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0x3FF0000000000000;
  v17 = sub_100015240(&qword_1000E1388, qword_100085348);
  sub_100026310(v8, a2 + *(v17 + 48), &qword_1000E1380, &qword_100085340);
  sub_1000256C0(v10, &qword_1000E1380, &qword_100085340);
  return sub_1000256C0(v8, &qword_1000E1380, &qword_100085340);
}

uint64_t sub_100059EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - v4;
  v5 = sub_10007DA88();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000E12F8, &qword_100085230);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v32 = sub_100015240(&qword_1000E1300, &qword_100085238);
  __chkstk_darwin(v32);
  v15 = &v31 - v14;
  v16 = sub_100015240(&qword_1000E1308, &qword_100085240);
  v17 = *(v16 - 8);
  v33 = v16;
  v34 = v17;
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  *v15 = sub_10007D948();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v20 = &v15[*(sub_100015240(&qword_1000E1310, &qword_100085248) + 44)];
  *v13 = sub_10007D878();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = sub_100015240(&qword_1000E1318, &qword_100085250);
  sub_10005A3B8(v2, &v13[*(v21 + 44)]);
  sub_100026310(v13, v11, &qword_1000E12F8, &qword_100085230);
  *v20 = 0;
  v20[8] = 1;
  *(v20 + 2) = 0x3FF0000000000000;
  v22 = sub_100015240(&qword_1000E1320, &qword_100085258);
  sub_100026310(v11, &v20[*(v22 + 48)], &qword_1000E12F8, &qword_100085230);
  sub_1000256C0(v13, &qword_1000E12F8, &qword_100085230);
  sub_1000256C0(v11, &qword_1000E12F8, &qword_100085230);
  sub_10007DA78();
  v39 = v2;
  sub_10007DE88();
  v23 = sub_100015240(&qword_1000E1328, &qword_100085260);
  v24 = sub_10002DDAC(&qword_1000E1330, &qword_1000E1300, &qword_100085238, &protocol conformance descriptor for VStack<A>);
  v30 = sub_10002DDAC(&qword_1000E1338, &qword_1000E1328, &qword_100085260, &unk_100083A08);
  v25 = v32;
  sub_10007DCB8();
  (*(v35 + 8))(v7, v36);
  sub_1000256C0(v15, &qword_1000E1300, &qword_100085238);
  v26 = sub_10007D288();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v40 = v25;
  v41 = v23;
  v42 = v24;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_10007DC18();
  sub_1000256C0(v27, &qword_1000DEEE0, &qword_100082E30);
  return (*(v34 + 8))(v19, v28);
}

uint64_t sub_10005A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = sub_10007E0C8();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_100015240(&qword_1000E1348, &qword_1000852A8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v36 - v11);
  v36 = sub_100015240(&qword_1000E1350, &qword_1000852B0);
  v13 = __chkstk_darwin(v36);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - v16;
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  *v12 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v10 + 44)) = 0x4024000000000000;
  v20 = (v12 + *(v10 + 48));
  v21 = a1 + *(type metadata accessor for NavigationETAMediumLargeWidgetView(0) + 20);
  v22 = type metadata accessor for NavigationETAMediumLargePlatterContent(0);
  sub_10005BA68(v21, v20 + v22[6], type metadata accessor for NavigationETAEntryContent);
  *v20 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v20 + v22[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v23 = (v20 + v22[7]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v24.super.isa = qword_1000E4B68;
  v35._countAndFlagsBits = 0x8000000100090730;
  v43._countAndFlagsBits = 0x402520415445;
  v43._object = 0xE600000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v45._countAndFlagsBits = 0x402520415445;
  v45._object = 0xE600000000000000;
  *v23 = sub_10007D258(v43, v44, v24, v45, 0xD00000000000001BLL, v35);
  v23[1] = v25;
  v26 = type metadata accessor for NavigationETAEntryContent(0);
  sub_100026310(v21 + *(v26 + 36), v8, &qword_1000E1340, &qword_1000852A0);
  v27 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  result = (*(*(v27 - 8) + 48))(v8, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v37;
    (*(v3 + 16))(v5, v8, v37);
    sub_10005BD7C(v8, type metadata accessor for NavigationETAEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v3 + 8))(v5, v29);
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v12, v17, &qword_1000E1348, &qword_1000852A8);
    v30 = &v17[*(v36 + 36)];
    v31 = v41;
    *v30 = v40;
    *(v30 + 1) = v31;
    *(v30 + 2) = v42;
    sub_10002DB0C(v17, v19, &qword_1000E1350, &qword_1000852B0);
    v32 = v38;
    sub_100026310(v19, v38, &qword_1000E1350, &qword_1000852B0);
    v33 = v39;
    sub_100026310(v32, v39, &qword_1000E1350, &qword_1000852B0);
    v34 = v33 + *(sub_100015240(&qword_1000E1358, &qword_100085320) + 48);
    sub_1000256C0(v19, &qword_1000E1350, &qword_1000852B0);
    *v34 = 0;
    *(v34 + 8) = 1;
    return sub_1000256C0(v32, &qword_1000E1350, &qword_1000852B0);
  }

  return result;
}

uint64_t sub_10005A914@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2(0) + 20);
  v6 = sub_100015240(&qword_1000E1328, &qword_100085260);
  sub_10005BA68(a1 + v5, a3 + v6[10], type metadata accessor for NavigationETAEntryContent);
  *a3 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[11]) = 4;
  return result;
}

uint64_t sub_10005AA04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NavigationETAWidgetView(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DFF8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005AC10@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v53 = type metadata accessor for NavigationETAAccessoryRectangularPlatterContent(0);
  __chkstk_darwin(v53);
  v50 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_100015240(&qword_1000E1160, &qword_1000850B8);
  __chkstk_darwin(v51);
  v52 = &v49 - v3;
  v64 = sub_100015240(&qword_1000E1168, &qword_1000850C0);
  __chkstk_darwin(v64);
  v54 = &v49 - v4;
  v57 = type metadata accessor for NavigationETAMediumLargeWidgetView(0);
  __chkstk_darwin(v57);
  v55 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_100015240(&qword_1000E1170, &qword_1000850C8);
  __chkstk_darwin(v59);
  v58 = &v49 - v6;
  v60 = sub_100015240(&qword_1000E1178, &qword_1000850D0);
  __chkstk_darwin(v60);
  v56 = &v49 - v7;
  v8 = sub_100015240(&qword_1000E1180, &qword_1000850D8);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v61 = sub_100015240(&qword_1000E1188, &qword_1000850E0);
  __chkstk_darwin(v61);
  v12 = &v49 - v11;
  v63 = sub_100015240(&qword_1000E1190, &unk_1000850E8);
  __chkstk_darwin(v63);
  v14 = &v49 - v13;
  v15 = type metadata accessor for NavigationETASmallWidgetView(0);
  __chkstk_darwin(v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10007DFF8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA04(v21);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 != enum case for WidgetFamily.systemSmall(_:))
  {
    v25 = v10;
    v26 = v12;
    v27 = v56;
    v28 = v14;
    if (v22 == enum case for WidgetFamily.systemMedium(_:))
    {
      v29 = v55;
      sub_10005BA68(v1, v55 + *(v57 + 20), type metadata accessor for NavigationETAEntryContent);
      *v29 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10005BA68(v29, v25, type metadata accessor for NavigationETAMediumLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView, &unk_100085188);
      sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
      sub_10007D9D8();
      v30 = &qword_1000E1188;
      v31 = &qword_1000850E0;
      sub_100026310(v26, v27, &qword_1000E1188, &qword_1000850E0);
      swift_storeEnumTagMultiPayload();
      sub_10005BB18();
      sub_10005BC04();
      sub_10007D9D8();
      v32 = v26;
    }

    else
    {
      if (v22 != enum case for WidgetFamily.systemLarge(_:))
      {
        v36 = v58;
        if (v22 == enum case for WidgetFamily.systemExtraLarge(_:) || v22 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v22 == enum case for WidgetFamily.accessoryCorner(_:) || v22 == enum case for WidgetFamily.accessoryCircular(_:) || (v37 = v53, v29 = v50, v22 != enum case for WidgetFamily.accessoryRectangular(_:)))
        {
          while (1)
          {
            sub_10007E518();
            __break(1u);
          }
        }

        sub_10005BA68(v1, v50, type metadata accessor for NavigationETAEntryContent);
        v38 = (v29 + *(v37 + 20));
        if (qword_1000DE280 != -1)
        {
          swift_once();
        }

        v39 = qword_1000E4B68;
        v47._countAndFlagsBits = 0x8000000100090730;
        v65._countAndFlagsBits = 0x402520415445;
        v65._object = 0xE600000000000000;
        v67.value._countAndFlagsBits = 0;
        v67.value._object = 0;
        v40.super.isa = qword_1000E4B68;
        v69._countAndFlagsBits = 0x402520415445;
        v69._object = 0xE600000000000000;
        *v38 = sub_10007D258(v65, v67, v40, v69, 0xD00000000000001BLL, v47);
        v38[1] = v41;
        v42 = (v29 + *(v37 + 24));
        v48._countAndFlagsBits = 0x8000000100090750;
        v66._countAndFlagsBits = 0x70614D206E65704FLL;
        v66._object = 0xE900000000000073;
        v68.value._countAndFlagsBits = 0;
        v68.value._object = 0;
        v43.super.isa = v39;
        v70._countAndFlagsBits = 0x70614D206E65704FLL;
        v70._object = 0xE900000000000073;
        *v42 = sub_10007D258(v66, v68, v43, v70, 0xD00000000000001ALL, v48);
        v42[1] = v44;
        sub_10005BA68(v29, v52, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent);
        swift_storeEnumTagMultiPayload();
        sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
        sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent, &unk_100084880);
        v45 = v54;
        sub_10007D9D8();
        sub_100026310(v45, v27, &qword_1000E1168, &qword_1000850C0);
        swift_storeEnumTagMultiPayload();
        sub_10005BB18();
        sub_10005BC04();
        sub_10007D9D8();
        sub_1000256C0(v45, &qword_1000E1168, &qword_1000850C0);
        sub_100026310(v28, v36, &qword_1000E1190, &unk_1000850E8);
        swift_storeEnumTagMultiPayload();
        sub_100015240(&qword_1000DEC58, &unk_100082C50);
        sub_10005BCF0();
        sub_10002D148();
        sub_10007D9D8();
        sub_1000256C0(v28, &qword_1000E1190, &unk_1000850E8);
        v35 = type metadata accessor for NavigationETAAccessoryRectangularPlatterContent;
        goto LABEL_16;
      }

      v33 = v56;
      v29 = v55;
      sub_10005BA68(v1, v55 + *(v57 + 20), type metadata accessor for NavigationETAEntryContent);
      *v29 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10005BA68(v29, v52, type metadata accessor for NavigationETAMediumLargeWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
      sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent, &unk_100084880);
      v34 = v54;
      sub_10007D9D8();
      v30 = &qword_1000E1168;
      v31 = &qword_1000850C0;
      sub_100026310(v34, v33, &qword_1000E1168, &qword_1000850C0);
      swift_storeEnumTagMultiPayload();
      sub_10005BB18();
      sub_10005BC04();
      sub_10007D9D8();
      v32 = v34;
    }

    sub_1000256C0(v32, v30, v31);
    sub_100026310(v28, v58, &qword_1000E1190, &unk_1000850E8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_10005BCF0();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v28, &qword_1000E1190, &unk_1000850E8);
    v35 = type metadata accessor for NavigationETAMediumLargeWidgetView;
LABEL_16:
    v23 = v35;
    v24 = v29;
    return sub_10005BD7C(v24, v23);
  }

  sub_10005BA68(v1, v17 + *(v15 + 20), type metadata accessor for NavigationETAEntryContent);
  *v17 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  sub_10005BA68(v17, v10, type metadata accessor for NavigationETASmallWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView, &unk_100085188);
  sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
  sub_10007D9D8();
  sub_100026310(v12, v56, &qword_1000E1188, &qword_1000850E0);
  swift_storeEnumTagMultiPayload();
  sub_10005BB18();
  sub_10005BC04();
  sub_10007D9D8();
  sub_1000256C0(v12, &qword_1000E1188, &qword_1000850E0);
  sub_100026310(v14, v58, &qword_1000E1190, &unk_1000850E8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_10005BCF0();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v14, &qword_1000E1190, &unk_1000850E8);
  v23 = type metadata accessor for NavigationETASmallWidgetView;
  v24 = v17;
  return sub_10005BD7C(v24, v23);
}

uint64_t sub_10005BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005BAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005BB18()
{
  result = qword_1000E11A8;
  if (!qword_1000E11A8)
  {
    sub_100015288(&qword_1000E1188, &qword_1000850E0);
    sub_10005BAD0(&qword_1000E11B0, type metadata accessor for NavigationETASmallWidgetView, &unk_100085188);
    sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11A8);
  }

  return result;
}

unint64_t sub_10005BC04()
{
  result = qword_1000E11B8;
  if (!qword_1000E11B8)
  {
    sub_100015288(&qword_1000E1168, &qword_1000850C0);
    sub_10005BAD0(&qword_1000E1198, type metadata accessor for NavigationETAMediumLargeWidgetView, &unk_1000851D8);
    sub_10005BAD0(&qword_1000E11A0, type metadata accessor for NavigationETAAccessoryRectangularPlatterContent, &unk_100084880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11B8);
  }

  return result;
}

unint64_t sub_10005BCF0()
{
  result = qword_1000E11C0;
  if (!qword_1000E11C0)
  {
    sub_100015288(&qword_1000E1190, &unk_1000850E8);
    sub_10005BB18();
    sub_10005BC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11C0);
  }

  return result;
}

uint64_t sub_10005BD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10005BE04(uint64_t a1)
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NavigationETAEntryContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NavigationETAEntryContent(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10005BFC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NavigationETAEntryContent(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10005C0D0()
{
  result = qword_1000E12E8;
  if (!qword_1000E12E8)
  {
    sub_100015288(&qword_1000E12F0, &qword_100085180);
    sub_10005BCF0();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E12E8);
  }

  return result;
}

void sub_10005C2D0(uint64_t a1)
{
  sub_1000368BC(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_1000368BC(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SuggestedDestinationEntryContent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10005C3C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1558, &qword_100085520);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  *v15 = sub_10007D878();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100015240(&qword_1000E1568, &qword_100085530);
  sub_10005C608(a1, &v15[*(v16 + 44)]);
  *v9 = sub_10007D878();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_100015240(&qword_1000E1570, &qword_100085538);
  sub_10005C9C8(a1, &v9[*(v17 + 44)]);
  sub_100026310(v15, v13, &qword_1000E1560, &qword_100085528);
  sub_100026310(v9, v7, &qword_1000E1558, &qword_100085520);
  sub_100026310(v13, a2, &qword_1000E1560, &qword_100085528);
  v18 = sub_100015240(&qword_1000E1578, &unk_100085540);
  sub_100026310(v7, a2 + *(v18 + 48), &qword_1000E1558, &qword_100085520);
  sub_1000256C0(v9, &qword_1000E1558, &qword_100085520);
  sub_1000256C0(v15, &qword_1000E1560, &qword_100085528);
  sub_1000256C0(v7, &qword_1000E1558, &qword_100085520);
  return sub_1000256C0(v13, &qword_1000E1560, &qword_100085528);
}

uint64_t sub_10005C608@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v43 = &v40 - v5;
  v6 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = *a1;
  v11 = a1[1];
  v49 = v10;
  v50 = v11;
  sub_10002D9A8();

  v12 = sub_10007DBF8();
  v40 = v13;
  v41 = v12;
  LOBYTE(v11) = v14;
  v42 = v15;
  LODWORD(v49) = sub_10007DA38();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DAF8();
  v21 = sub_10007DBB8();
  v23 = v22;
  v25 = v24;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10007DB18();
  v26 = sub_10007DB88();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10002D9FC(v21, v23, v25 & 1);

  sub_10002D9FC(v41, v40, v11 & 1);

  v49 = v26;
  v50 = v28;
  v51 = v30 & 1;
  v52 = v32;
  v33 = v43;
  sub_10007DCA8();
  sub_10002D9FC(v26, v28, v30 & 1);

  v49 = &type metadata for Text;
  v50 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  v35 = v46;
  sub_10007DC78();
  (*(v47 + 8))(v33, v35);
  v36 = v45;
  sub_100026310(v34, v45, &qword_1000DF278, &qword_100083420);
  v37 = v48;
  sub_100026310(v36, v48, &qword_1000DF278, &qword_100083420);
  v38 = v37 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1000256C0(v34, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_10005C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  __chkstk_darwin(v3);
  v43 = &v40 - v5;
  v6 = sub_100015240(&qword_1000E1580, &qword_100085550);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  __chkstk_darwin(v6);
  v44 = &v40 - v8;
  v9 = sub_100015240(&qword_1000E1588, &qword_100085558);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v40 - v12;
  v13 = *(a1 + 24);
  v52 = *(a1 + 16);
  v53 = v13;
  sub_10002D9A8();

  v14 = sub_10007DBF8();
  v40 = v15;
  v41 = v14;
  v17 = v16;
  v42 = v18;
  LODWORD(v52) = sub_10007DA58();
  v19 = sub_10007DBA8();
  v21 = v20;
  v23 = v22;
  sub_10007DB58();
  v24 = sub_10007DBB8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v29 = v28;

  sub_10002D9FC(v19, v21, v23 & 1);

  sub_10002D9FC(v41, v40, v17 & 1);

  v52 = v24;
  v53 = v26;
  v54 = a1 & 1;
  v55 = v29;
  v30 = v43;
  sub_10007DC08();
  sub_10002D9FC(v24, v26, a1 & 1);

  v52 = &type metadata for Text;
  v53 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v47;
  sub_10007DCA8();
  (*(v48 + 8))(v30, v33);
  v52 = v33;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  v35 = v49;
  sub_10007DC78();
  (*(v50 + 8))(v32, v35);
  v36 = v46;
  sub_100026310(v34, v46, &qword_1000E1588, &qword_100085558);
  v37 = v51;
  sub_100026310(v36, v51, &qword_1000E1588, &qword_100085558);
  v38 = v37 + *(sub_100015240(&qword_1000E1590, &qword_100085560) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1000256C0(v34, &qword_1000E1588, &qword_100085558);
  return sub_1000256C0(v36, &qword_1000E1588, &qword_100085558);
}

uint64_t sub_10005CE24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005D024@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D708();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_100015240(&qword_1000E1558, &qword_100085520);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = (&v46 - v6);
  v7 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = (&v46 - v11);
  v12 = sub_100015240(&qword_1000E15A8, &qword_100085578);
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_10007D638();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = sub_100015240(&qword_1000E15B0, &qword_100085580);
  v23 = __chkstk_darwin(v22 - 8);
  v51 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v46 - v25;
  v27 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v28 = *(v27 + 56);
  v29 = 1;
  if (v28 == 1)
  {
    goto LABEL_7;
  }

  v47 = *(v27 + 64);
  v48 = a1;
  sub_10005CE24(v21);
  (*(v16 + 16))(v19, v21, v15);
  v30 = (*(v16 + 88))(v19, v15);
  if (v30 == enum case for ColorScheme.light(_:) || (v28 = v47, v30 == enum case for ColorScheme.dark(_:)))
  {
    v31 = *(v16 + 8);
    v32 = v28;
    v31(v21, v15);
    v29 = 1;
    if (v28)
    {
      *v14 = sub_10007D878();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v33 = sub_100015240(&qword_1000E15C0, &qword_100085590);
      a1 = v48;
      sub_10005D85C(v32, v48, &v14[*(v33 + 44)]);

      sub_10000A46C(v14, v26);
      v29 = 0;
    }

    else
    {
      a1 = v48;
    }

LABEL_7:
    (*(v49 + 56))(v26, v29, 1, v50);
    v34 = sub_10007D878();
    v35 = v52;
    *v52 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = sub_100015240(&qword_1000E1568, &qword_100085530);
    sub_10005E230(a1, v35 + *(v36 + 44));
    v37 = sub_10007D878();
    v38 = v53;
    *v53 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = sub_100015240(&qword_1000E1570, &qword_100085538);
    sub_10005E600(a1, v38 + *(v39 + 44));
    v40 = v51;
    sub_100026310(v26, v51, &qword_1000E15B0, &qword_100085580);
    sub_100026310(v35, v10, &qword_1000E1560, &qword_100085528);
    v41 = v54;
    sub_100026310(v38, v54, &qword_1000E1558, &qword_100085520);
    v42 = v10;
    v43 = v55;
    sub_100026310(v40, v55, &qword_1000E15B0, &qword_100085580);
    v44 = sub_100015240(&qword_1000E15B8, &qword_100085588);
    sub_100026310(v42, v43 + *(v44 + 48), &qword_1000E1560, &qword_100085528);
    sub_100026310(v41, v43 + *(v44 + 64), &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v38, &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v35, &qword_1000E1560, &qword_100085528);
    sub_1000256C0(v26, &qword_1000E15B0, &qword_100085580);
    sub_1000256C0(v41, &qword_1000E1558, &qword_100085520);
    sub_1000256C0(v42, &qword_1000E1560, &qword_100085528);
    return sub_1000256C0(v40, &qword_1000E15B0, &qword_100085580);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10005D85C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v81 = a3;
  v80 = sub_100015240(&qword_1000E15C8, &qword_100085598);
  __chkstk_darwin(v80);
  v67 = &v65 - v4;
  v75 = sub_100015240(&qword_1000E15D0, &qword_1000855A0);
  __chkstk_darwin(v75);
  v79 = &v65 - v5;
  v77 = sub_100015240(&qword_1000E15D8, &qword_1000855A8);
  __chkstk_darwin(v77);
  v66 = &v65 - v6;
  v72 = sub_10007D708();
  v73 = *(v72 - 8);
  v7 = __chkstk_darwin(v72);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v65 - v9;
  v10 = sub_100015240(&qword_1000E15E0, &qword_1000855B0);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = &v65 - v13;
  v14 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v65 - v15;
  v17 = sub_10007DD98();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  v68 = sub_100015240(&qword_1000E15E8, &qword_1000855B8);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v25 = &v65 - v24;
  v26 = sub_100015240(&qword_1000E15F0, &qword_1000855C0);
  __chkstk_darwin(v26 - 8);
  v28 = &v65 - v27;
  v29 = a1;
  sub_10007DD78();
  (*(v18 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v17);
  sub_10007DDE8();

  (*(v18 + 8))(v20, v17);
  sub_10007DFA8();
  v30 = sub_10007DFC8();
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  sub_10007DDD8();
  v31 = v28;

  sub_100037C7C(v16);
  sub_10007DE88();
  sub_10007D668();
  v32 = &v23[*(v21 + 36)];
  v33 = v85;
  *v32 = v84;
  *(v32 + 1) = v33;
  *(v32 + 2) = v86;
  v34 = sub_10002DDF4();
  sub_10007DCA8();
  sub_1000256C0(v23, &qword_1000DF1F8, &qword_100084360);
  v82 = v21;
  v83 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v68;
  sub_10007DC78();
  (*(v69 + 8))(v25, v35);
  v36 = v70;
  sub_10005D024(v70);
  v37 = v71;
  sub_10007D6F8();
  sub_10005EFE0(&qword_1000DF958, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v38 = v72;
  LOBYTE(v35) = sub_10007E3E8();
  v39 = *(v73 + 8);
  v39(v37, v38);
  v39(v36, v38);
  if (v35)
  {
    v40 = v66;
    sub_100026310(v31, v66, &qword_1000E15F0, &qword_1000855C0);
    *(v40 + *(sub_100015240(&qword_1000E1608, &qword_1000855C8) + 36)) = 256;
    v41 = sub_10007DAD8();
    sub_10007D628();
    v42 = v40 + *(v77 + 36);
    *v42 = v41;
    *(v42 + 8) = v43;
    *(v42 + 16) = v44;
    *(v42 + 24) = v45;
    *(v42 + 32) = v46;
    *(v42 + 40) = 0;
    v47 = &qword_1000E15D8;
    v48 = &qword_1000855A8;
    sub_100026310(v40, v79, &qword_1000E15D8, &qword_1000855A8);
  }

  else
  {
    v50 = sub_10007DAD8();
    sub_10007D628();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v40 = v67;
    sub_100026310(v31, v67, &qword_1000E15F0, &qword_1000855C0);
    v59 = v79;
    v60 = v40 + *(v80 + 36);
    *v60 = v50;
    *(v60 + 8) = v52;
    *(v60 + 16) = v54;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *(v60 + 40) = 0;
    v47 = &qword_1000E15C8;
    v48 = &qword_100085598;
    sub_100026310(v40, v59, &qword_1000E15C8, &qword_100085598);
  }

  swift_storeEnumTagMultiPayload();
  sub_10005F028(&qword_1000E15F8, &qword_1000E15D8, &qword_1000855A8, sub_10005EE30);
  sub_10005F028(&qword_1000E1628, &qword_1000E15C8, &qword_100085598, sub_10005EEE8);
  v49 = v76;
  sub_10007D9D8();
  sub_1000256C0(v40, v47, v48);
  v61 = v78;
  sub_100026310(v49, v78, &qword_1000E15E0, &qword_1000855B0);
  v62 = v81;
  sub_100026310(v61, v81, &qword_1000E15E0, &qword_1000855B0);
  v63 = v62 + *(sub_100015240(&qword_1000E1630, &qword_1000855D8) + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_1000256C0(v49, &qword_1000E15E0, &qword_1000855B0);
  sub_1000256C0(v31, &qword_1000E15F0, &qword_1000855C0);
  return sub_1000256C0(v61, &qword_1000E15E0, &qword_1000855B0);
}

uint64_t sub_10005E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v43 = &v40 - v5;
  v6 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v11 = *(v10 + 8);
  v49 = *v10;
  v50 = v11;
  sub_10002D9A8();

  v12 = sub_10007DBF8();
  v40 = v13;
  v41 = v12;
  LOBYTE(v11) = v14;
  v42 = v15;
  LODWORD(v49) = sub_10007DA38();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DAF8();
  v21 = sub_10007DBB8();
  v23 = v22;
  v25 = v24;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10007DB18();
  v26 = sub_10007DB88();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10002D9FC(v21, v23, v25 & 1);

  sub_10002D9FC(v41, v40, v11 & 1);

  v49 = v26;
  v50 = v28;
  v51 = v30 & 1;
  v52 = v32;
  v33 = v43;
  sub_10007DCA8();
  sub_10002D9FC(v26, v28, v30 & 1);

  v49 = &type metadata for Text;
  v50 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  v35 = v46;
  sub_10007DC78();
  (*(v47 + 8))(v33, v35);
  v36 = v45;
  sub_100026310(v34, v45, &qword_1000DF278, &qword_100083420);
  v37 = v48;
  sub_100026310(v36, v48, &qword_1000DF278, &qword_100083420);
  v38 = v37 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1000256C0(v34, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_10005E600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v44 = &v41 - v5;
  v6 = sub_100015240(&qword_1000E1580, &qword_100085550);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  __chkstk_darwin(v6);
  v45 = &v41 - v8;
  v9 = sub_100015240(&qword_1000E1588, &qword_100085558);
  v10 = __chkstk_darwin(v9 - 8);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v41 - v12;
  v13 = a1 + *(type metadata accessor for SuggestedDestinationMediumLargePlatterContent(0) + 24);
  v14 = *(v13 + 24);
  v53 = *(v13 + 16);
  v54 = v14;
  sub_10002D9A8();

  v15 = sub_10007DBF8();
  v41 = v16;
  v42 = v15;
  v18 = v17;
  v43 = v19;
  LODWORD(v53) = sub_10007DA58();
  v20 = sub_10007DBA8();
  v22 = v21;
  v24 = v23;
  sub_10007DB58();
  v25 = sub_10007DBB8();
  v27 = v26;
  LOBYTE(a1) = v28;
  v30 = v29;

  sub_10002D9FC(v20, v22, v24 & 1);

  sub_10002D9FC(v42, v41, v18 & 1);

  v53 = v25;
  v54 = v27;
  v55 = a1 & 1;
  v56 = v30;
  v31 = v44;
  sub_10007DC08();
  sub_10002D9FC(v25, v27, a1 & 1);

  v53 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v48;
  sub_10007DCA8();
  (*(v49 + 8))(v31, v34);
  v53 = v34;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v46;
  v36 = v50;
  sub_10007DC78();
  (*(v51 + 8))(v33, v36);
  v37 = v47;
  sub_100026310(v35, v47, &qword_1000E1588, &qword_100085558);
  v38 = v52;
  sub_100026310(v37, v52, &qword_1000E1588, &qword_100085558);
  v39 = v38 + *(sub_100015240(&qword_1000E1590, &qword_100085560) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_1000256C0(v35, &qword_1000E1588, &qword_100085558);
  return sub_1000256C0(v37, &qword_1000E1588, &qword_100085558);
}

uint64_t sub_10005EA98@<X0>(char a2@<W2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_10007D948();
  *(a6 + 8) = 0;
  *(a6 + 16) = a2;
  sub_100015240(a3, a4);
  return a5(v6);
}

uint64_t sub_10005EB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000E1030, &qword_100085510);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = *(type metadata accessor for SuggestedDestinationEntryContent(0) + 40);
  sub_100026310(v1 + v9, v8, &qword_1000E1030, &qword_100085510);
  v10 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  v11 = *(*(v10 - 8) + 48);
  result = v11(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = &v8[*(v10 + 32)];
  v15 = *v13;
  v14 = *(v13 + 1);

  sub_10005EDD4(v8);
  v36 = v15;
  v37 = v14;
  sub_10002D9A8();
  v16 = sub_10007DBF8();
  v18 = v17;
  v20 = v19;
  v35 = v21;
  sub_100026310(v1 + v9, v6, &qword_1000E1030, &qword_100085510);
  result = v11(v6, 1, v10);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v22 = &v6[*(v10 + 36)];
  v24 = *v22;
  v23 = *(v22 + 1);

  sub_10005EDD4(v6);
  v26 = *v1;
  v25 = v1[1];
  v28 = v1[2];
  v27 = v1[3];
  LOBYTE(v36) = v20 & 1;
  v29 = qword_1000DE280;

  if (v29 != -1)
  {
    swift_once();
  }

  v30.super.isa = qword_1000E4B68;
  v33._countAndFlagsBits = 0x8000000100090480;
  v38._countAndFlagsBits = 0x4024322540243125;
  v38._object = 0xE800000000000000;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v40._countAndFlagsBits = 0x4024322540243125;
  v40._object = 0xE800000000000000;
  result = sub_10007D258(v38, v39, v30, v40, 0xD0000000000000ABLL, v33);
  v31 = v36;
  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = v26;
  *(a1 + 24) = v25;
  *(a1 + 32) = v28;
  *(a1 + 40) = v27;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
  *(a1 + 64) = v31;
  *(a1 + 72) = v35;
  *(a1 + 80) = result;
  *(a1 + 88) = v32;
  return result;
}

uint64_t sub_10005EDD4(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005EE30()
{
  result = qword_1000E1600;
  if (!qword_1000E1600)
  {
    sub_100015288(&qword_1000E1608, &qword_1000855C8);
    sub_10005EEE8();
    sub_10002DDAC(&qword_1000E1618, &qword_1000E1620, &qword_1000855D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1600);
  }

  return result;
}

unint64_t sub_10005EEE8()
{
  result = qword_1000E1610;
  if (!qword_1000E1610)
  {
    sub_100015288(&qword_1000E15F0, &qword_1000855C0);
    sub_100015288(&qword_1000DF1F8, &qword_100084360);
    sub_10002DDF4();
    swift_getOpaqueTypeConformance2();
    sub_10005EFE0(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1610);
  }

  return result;
}

uint64_t sub_10005EFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005F028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CommuteWindowPlatterContent(uint64_t a1)
{
  result = qword_1000E16B0;
  if (!qword_1000E16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F120(uint64_t a1)
{
  sub_10005F230(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10005F230(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v2 <= 0x3F)
    {
      sub_10005F230(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CommuteWindowEntryContent(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005F230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005F2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005F4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CommuteWindowPlatterContent(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D708();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005F6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CommuteWindowPlatterContent(0);
  sub_100026310(v1 + *(v10 + 24), v9, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DFF8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005F8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = sub_100015240(&qword_1000E1828, &unk_1000857C0);
  __chkstk_darwin(v74);
  v76 = v56 - v4;
  v75 = sub_100015240(&qword_1000E1608, &qword_1000855C8);
  __chkstk_darwin(v75);
  v59 = v56 - v5;
  v6 = sub_10007D708();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = __chkstk_darwin(v6);
  v70 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v56 - v9;
  v10 = sub_100015240(&qword_1000E1830, &unk_1000857D0);
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v73 = v56 - v11;
  v12 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  __chkstk_darwin(v12 - 8);
  v14 = v56 - v13;
  v61 = sub_10007DD98();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  __chkstk_darwin(v64);
  v62 = v56 - v17;
  v18 = sub_100015240(&qword_1000E15E8, &qword_1000855B8);
  v65 = *(v18 - 8);
  v66 = v18;
  __chkstk_darwin(v18);
  v63 = v56 - v19;
  v67 = sub_100015240(&qword_1000E15F0, &qword_1000855C0);
  __chkstk_darwin(v67);
  v68 = v56 - v20;
  v21 = sub_10007D638();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v56 - v26;
  v28 = a1;
  v29 = a1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  v30 = *v29;
  if (*v29 == 1)
  {
    v31 = 1;
    return (*(v77 + 56))(a2, v31, 1, v10);
  }

  v57 = v10;
  v58 = a2;
  v32 = *(v29 + 8);
  v56[1] = v28;
  sub_10005F2A0(v27);
  (*(v22 + 16))(v25, v27, v21);
  v33 = (*(v22 + 88))(v25, v21);
  if (v33 == enum case for ColorScheme.light(_:) || (v30 = v32, v33 == enum case for ColorScheme.dark(_:)))
  {
    v34 = *(v22 + 8);
    v35 = v30;
    v34(v27, v21);
    if (v30)
    {
      v36 = v35;
      sub_10007DD78();
      v37 = v60;
      v38 = v61;
      (*(v60 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v61);
      sub_10007DDE8();

      (*(v37 + 8))(v16, v38);
      sub_10007DFA8();
      v39 = sub_10007DFC8();
      (*(*(v39 - 8) + 56))(v14, 0, 1, v39);
      v40 = v62;
      sub_10007DDD8();

      sub_1000256C0(v14, &qword_1000DF1E8, &unk_100084A40);
      sub_10007DE88();
      sub_10007D668();
      v41 = v64;
      v42 = (v40 + *(v64 + 36));
      v43 = v81;
      *v42 = v80;
      v42[1] = v43;
      v42[2] = v82;
      v44 = sub_10002DDF4();
      v45 = v63;
      sub_10007DCA8();
      sub_1000256C0(v40, &qword_1000DF1F8, &qword_100084360);
      v78 = v41;
      v79 = v44;
      swift_getOpaqueTypeConformance2();
      v46 = v68;
      v47 = v66;
      sub_10007DC78();
      (*(v65 + 8))(v45, v47);
      v48 = v69;
      sub_10005F4A0(v69);
      v49 = v70;
      sub_10007D6F8();
      sub_100064350(&qword_1000DF958, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
      v50 = v72;
      LOBYTE(v47) = sub_10007E3E8();
      v51 = *(v71 + 8);
      v51(v49, v50);
      v51(v48, v50);
      if (v47)
      {
        v52 = v59;
        sub_100026310(v46, v59, &qword_1000E15F0, &qword_1000855C0);
        v53 = v76;
        *(v52 + *(v75 + 36)) = 256;
        sub_100026310(v52, v53, &qword_1000E1608, &qword_1000855C8);
        swift_storeEnumTagMultiPayload();
        sub_10005EE30();
        sub_10005EEE8();
        v54 = v73;
        sub_10007D9D8();

        sub_1000256C0(v52, &qword_1000E1608, &qword_1000855C8);
      }

      else
      {
        sub_100026310(v46, v76, &qword_1000E15F0, &qword_1000855C0);
        swift_storeEnumTagMultiPayload();
        sub_10005EE30();
        sub_10005EEE8();
        v54 = v73;
        sub_10007D9D8();
      }

      a2 = v58;
      v10 = v57;
      sub_1000256C0(v46, &qword_1000E15F0, &qword_1000855C0);
      sub_10002DB0C(v54, a2, &qword_1000E1830, &unk_1000857D0);
      v31 = 0;
    }

    else
    {
      v31 = 1;
      a2 = v58;
      v10 = v57;
    }

    return (*(v77 + 56))(a2, v31, 1, v10);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_1000602A8@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v59 = sub_10007DA68();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10007D378();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v3 = sub_10007D3B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10007D868();
  __chkstk_darwin(v46);
  v7 = sub_100015240(&qword_1000E0000, &qword_100083E38);
  __chkstk_darwin(v7 - 8);
  v55 = sub_100015240(&qword_1000E17E8, &qword_100085750);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v44 - v8;
  v52 = sub_100015240(&qword_1000E17F0, &qword_100085758) - 8;
  __chkstk_darwin(v52);
  v49 = &v44 - v9;
  v53 = sub_100015240(&qword_1000E17F8, &qword_100085760);
  __chkstk_darwin(v53);
  v51 = &v44 - v10;
  v56 = sub_100015240(&qword_1000E1800, &unk_100085768);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v44 - v11;
  sub_10007D698();
  v12 = v1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  v13 = type metadata accessor for CommuteWindowEntryContent(0);
  (*(v4 + 16))(v6, v12 + *(v13 + 36), v3);
  sub_100015240(&qword_1000E0018, &qword_100083E50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100083D80;
  sub_10007D348();
  sub_10007D358();
  sub_10007D328();
  sub_10007D338();
  sub_10007D368();
  sub_1000446F4(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007D328();
  sub_10007D858();
  sub_100064350(&qword_1000E0020, &type metadata accessor for SystemFormatStyle.DateReference, &protocol conformance descriptor for SystemFormatStyle.DateReference);
  v46 = sub_10007DBC8();
  v45 = v15;
  v17 = v16;
  v47 = v18;
  LODWORD(v64) = sub_10007DA48();
  v19 = sub_10007DBA8();
  v21 = v20;
  LOBYTE(v6) = v22;
  sub_10007DB48();
  v23 = sub_10007DBB8();
  v25 = v24;
  v27 = v26;

  sub_10002D9FC(v19, v21, v6 & 1);

  sub_10002D9FC(v46, v45, v17 & 1);

  v28 = v58;
  sub_10007DA28();
  v29 = v48;
  v30 = v59;
  sub_10007DB98();
  sub_10002D9FC(v23, v25, v27 & 1);

  (*(v60 + 8))(v28, v30);
  sub_10007DE88();
  sub_10007D728();
  v31 = v49;
  (*(v54 + 32))(v49, v29, v55);
  v32 = (v31 + *(v52 + 44));
  v33 = v69;
  v32[4] = v68;
  v32[5] = v33;
  v32[6] = v70;
  v34 = v65;
  *v32 = v64;
  v32[1] = v34;
  v35 = v67;
  v32[2] = v66;
  v32[3] = v35;
  KeyPath = swift_getKeyPath();
  v37 = v51;
  sub_10002DB0C(v31, v51, &qword_1000E17F0, &qword_100085758);
  v38 = v53;
  v39 = v37 + *(v53 + 36);
  *v39 = KeyPath;
  *(v39 + 8) = 1;
  *(v39 + 16) = 0;
  v40 = sub_1000641DC();
  v41 = v50;
  sub_10007DCA8();
  sub_1000256C0(v37, &qword_1000E17F8, &qword_100085760);
  v62 = v38;
  v63 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v56;
  sub_10007DC78();
  return (*(v57 + 8))(v41, v42);
}

uint64_t sub_100060B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100015240(&qword_1000E1858, &qword_100085800);
  v4 = __chkstk_darwin(v3 - 8);
  v69 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v57 - v6;
  v7 = sub_10007D8E8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  __chkstk_darwin(v8);
  v62 = &v57 - v10;
  v64 = sub_100015240(&qword_1000E1790, &qword_1000856F8);
  __chkstk_darwin(v64);
  v63 = &v57 - v11;
  v12 = sub_100015240(&qword_1000E1798, &unk_100085700);
  v13 = __chkstk_darwin(v12 - 8);
  v68 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = &v57 - v15;
  v16 = sub_100015240(&qword_1000E1860, &qword_100085808);
  v17 = __chkstk_darwin(v16 - 8);
  v72 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  *v20 = sub_10007D878();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v73 = v20;
  v21 = sub_100015240(&qword_1000E1868, &qword_100085810);
  sub_10006135C(a1, &v20[*(v21 + 44)]);
  sub_10007D8D8();
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  sub_10007D8C8(v78);
  v22 = a1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  sub_10007D8B8(*(v22 + 40));
  v79._countAndFlagsBits = 548913696;
  v79._object = 0xA400000000000000;
  sub_10007D8C8(v79);
  v61 = v22;
  sub_10007D8B8(*(v22 + 56));
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  sub_10007D8C8(v80);
  sub_10007D908();
  v59 = sub_10007DBD8();
  v58 = v23;
  v25 = v24;
  v60 = v26;
  LODWORD(v74) = sub_10007DA38();
  v27 = sub_10007DBA8();
  v29 = v28;
  v31 = v30;
  sub_10007DAF8();
  v32 = sub_10007DBB8();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10002D9FC(v27, v29, v31 & 1);

  sub_10002D9FC(v59, v58, v25 & 1);

  v74 = v32;
  v75 = v34;
  v76 = v36 & 1;
  v77 = v38;
  v39 = v62;
  sub_10007DC08();
  sub_10002D9FC(v32, v34, v36 & 1);

  v74 = &type metadata for Text;
  v75 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v40 = v63;
  v41 = v65;
  sub_10007DCA8();
  (*(v66 + 8))(v39, v41);
  LOBYTE(v41) = sub_10007DAD8();
  sub_10007D628();
  v42 = v40 + *(v64 + 36);
  *v42 = v41;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  sub_100063FF8();
  v47 = v71;
  sub_10007DC78();
  sub_1000256C0(v40, &qword_1000E1790, &qword_1000856F8);
  v48 = sub_10007DAA8();
  v49 = v67;
  *v67 = v48;
  sub_100015240(&qword_1000E1870, &qword_100085818);
  v74 = *(v61 + 32);

  sub_100015240(&qword_1000E17B8, &unk_100085728);
  sub_10007D3E8();
  sub_100015240(&qword_1000DF278, &qword_100083420);
  sub_10002DDAC(&qword_1000E17C0, &qword_1000E17B8, &unk_100085728, &protocol conformance descriptor for [A]);
  sub_1000640F0();
  sub_100064350(&qword_1000E17D0, type metadata accessor for CommuteWindowDetailsString, &unk_100084648);
  sub_10007DE38();
  v50 = v72;
  sub_100026310(v73, v72, &qword_1000E1860, &qword_100085808);
  v51 = v68;
  sub_100026310(v47, v68, &qword_1000E1798, &unk_100085700);
  v52 = v69;
  sub_100026310(v49, v69, &qword_1000E1858, &qword_100085800);
  v53 = v50;
  v54 = v70;
  sub_100026310(v53, v70, &qword_1000E1860, &qword_100085808);
  v55 = sub_100015240(&qword_1000E1878, &qword_100085820);
  sub_100026310(v51, v54 + *(v55 + 48), &qword_1000E1798, &unk_100085700);
  sub_100026310(v52, v54 + *(v55 + 64), &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v49, &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v71, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v73, &qword_1000E1860, &qword_100085808);
  sub_1000256C0(v52, &qword_1000E1858, &qword_100085800);
  sub_1000256C0(v51, &qword_1000E1798, &unk_100085700);
  return sub_1000256C0(v72, &qword_1000E1860, &qword_100085808);
}

uint64_t sub_10006135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = sub_100015240(&qword_1000E1880, &qword_100085828) - 8;
  v3 = __chkstk_darwin(v61);
  v62 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v50 - v5;
  v6 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  __chkstk_darwin(v6);
  v54 = &v50 - v8;
  v9 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v10 = __chkstk_darwin(v9 - 8);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v50 - v12;
  v13 = a1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  v14 = *(v13 + 24);
  v64 = *(v13 + 16);
  v65 = v14;
  sub_10002D9A8();

  v15 = sub_10007DBF8();
  v51 = v16;
  v52 = v15;
  v18 = v17;
  v53 = v19;
  LODWORD(v64) = sub_10007DA38();
  v20 = sub_10007DBA8();
  v22 = v21;
  v24 = v23;
  sub_10007DAF8();
  v25 = sub_10007DBB8();
  v27 = v26;
  v29 = v28;

  sub_10002D9FC(v20, v22, v24 & 1);

  sub_10007DB18();
  v30 = sub_10007DB88();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  sub_10002D9FC(v25, v27, v29 & 1);

  sub_10002D9FC(v52, v51, v18 & 1);

  v64 = v30;
  v65 = v32;
  v66 = v20 & 1;
  v67 = v35;
  v36 = v54;
  sub_10007DCA8();
  sub_10002D9FC(v30, v32, v20 & 1);

  v64 = &type metadata for Text;
  v65 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v37 = v55;
  v38 = v57;
  sub_10007DC78();
  (*(v58 + 8))(v36, v38);
  v39 = v60;
  sub_1000602A8(v60);
  KeyPath = swift_getKeyPath();
  v41 = v39 + *(sub_100015240(&qword_1000E1888, &qword_100085860) + 36);
  *v41 = KeyPath;
  *(v41 + 8) = 2;
  v42 = swift_getKeyPath();
  v43 = v39 + *(v61 + 44);
  *v43 = v42;
  *(v43 + 8) = 1;
  *(v43 + 16) = 0;
  v44 = v59;
  sub_100026310(v37, v59, &qword_1000DF278, &qword_100083420);
  v45 = v62;
  sub_100026310(v39, v62, &qword_1000E1880, &qword_100085828);
  v46 = v63;
  sub_100026310(v44, v63, &qword_1000DF278, &qword_100083420);
  v47 = sub_100015240(&qword_1000E1890, &qword_100085868);
  v48 = v46 + *(v47 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_100026310(v45, v46 + *(v47 + 64), &qword_1000E1880, &qword_100085828);
  sub_1000256C0(v39, &qword_1000E1880, &qword_100085828);
  sub_1000256C0(v37, &qword_1000DF278, &qword_100083420);
  sub_1000256C0(v45, &qword_1000E1880, &qword_100085828);
  return sub_1000256C0(v44, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_100061874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_100015240(&qword_1000E1770, &qword_1000856D0);
  __chkstk_darwin(v3 - 8);
  v120 = &v103 - v4;
  v123 = sub_100015240(&qword_1000E1778, &qword_1000856D8);
  v5 = __chkstk_darwin(v123);
  v126 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v122 = &v103 - v8;
  __chkstk_darwin(v7);
  v125 = &v103 - v9;
  v119 = sub_100015240(&qword_1000E1780, &qword_1000856E0);
  v118 = *(v119 - 8);
  v10 = __chkstk_darwin(v119);
  v117 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v103 - v12;
  v13 = sub_100015240(&qword_1000E1788, &qword_1000856E8);
  v14 = __chkstk_darwin(v13 - 8);
  v124 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = &v103 - v16;
  v17 = sub_10007D8E8();
  __chkstk_darwin(v17 - 8);
  v113 = sub_100015240(&qword_1000E0B88, &qword_1000856F0);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v108 = &v103 - v18;
  v112 = sub_100015240(&qword_1000E1790, &qword_1000856F8);
  __chkstk_darwin(v112);
  v109 = &v103 - v19;
  v20 = sub_100015240(&qword_1000E1798, &unk_100085700);
  v21 = __chkstk_darwin(v20 - 8);
  v121 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = &v103 - v23;
  v24 = sub_100015240(&qword_1000E1560, &qword_100085528);
  v25 = __chkstk_darwin(v24 - 8);
  v131 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v103 - v27;
  v29 = sub_100015240(&qword_1000E17A0, &unk_100085710);
  v30 = v29 - 8;
  v31 = __chkstk_darwin(v29);
  v130 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v103 - v33;
  sub_10005F8B0(a1, &v103 - v33);
  v35 = sub_10007DAD8();
  sub_10007D628();
  v36 = *(v30 + 44);
  v128 = v34;
  v37 = &v34[v36];
  *v37 = v35;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  *v28 = sub_10007D878();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v42 = *(sub_100015240(&qword_1000E1568, &qword_100085530) + 44);
  v129 = v28;
  v111 = a1;
  sub_1000625C0(a1, &v28[v42]);
  sub_10007D8D8();
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  sub_10007D8C8(v136);
  v43 = a1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  sub_10007D8B8(*(v43 + 40));
  v137._countAndFlagsBits = 548913696;
  v137._object = 0xA400000000000000;
  sub_10007D8C8(v137);
  v107 = v43;
  sub_10007D8B8(*(v43 + 56));
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  sub_10007D8C8(v138);
  sub_10007D908();
  v105 = sub_10007DBD8();
  v104 = v44;
  v46 = v45;
  v106 = v47;
  LODWORD(v132) = sub_10007DA38();
  v48 = sub_10007DBA8();
  v50 = v49;
  LOBYTE(a1) = v51;
  sub_10007DAF8();
  v52 = sub_10007DBB8();
  v54 = v53;
  v56 = v55;
  v58 = v57;

  sub_10002D9FC(v48, v50, a1 & 1);

  sub_10002D9FC(v105, v104, v46 & 1);

  v132 = v52;
  v133 = v54;
  v134 = v56 & 1;
  v135 = v58;
  v59 = v108;
  sub_10007DC08();
  sub_10002D9FC(v52, v54, v56 & 1);

  v132 = &type metadata for Text;
  v133 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v60 = v109;
  v61 = v113;
  sub_10007DCA8();
  (*(v114 + 8))(v59, v61);
  LOBYTE(v61) = sub_10007DAD8();
  sub_10007D628();
  v62 = v60 + *(v112 + 36);
  *v62 = v61;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  *(v62 + 24) = v65;
  *(v62 + 32) = v66;
  *(v62 + 40) = 0;
  sub_100063FF8();
  v67 = v110;
  sub_10007DC78();
  sub_1000256C0(v60, &qword_1000E1790, &qword_1000856F8);
  v68 = sub_10007DAA8();
  v69 = v115;
  *v115 = v68;
  v70 = v69;
  v71 = &v69[*(sub_100015240(&qword_1000E17B0, &qword_100085720) + 44)];
  v132 = *(v107 + 32);

  sub_100015240(&qword_1000E17B8, &unk_100085728);
  sub_10007D3E8();
  sub_100015240(&qword_1000DF278, &qword_100083420);
  sub_10002DDAC(&qword_1000E17C0, &qword_1000E17B8, &unk_100085728, &protocol conformance descriptor for [A]);
  sub_1000640F0();
  sub_100064350(&qword_1000E17D0, type metadata accessor for CommuteWindowDetailsString, &unk_100084648);
  v72 = v116;
  sub_10007DE38();
  v73 = v118;
  v74 = *(v118 + 16);
  v75 = v117;
  v76 = v119;
  v74(v117, v72, v119);
  v74(v71, v75, v76);
  v77 = v120;
  v78 = &v71[*(sub_100015240(&qword_1000E17D8, &qword_100085738) + 48)];
  *v78 = 0;
  v78[8] = 0;
  v79 = *(v73 + 8);
  v79(v72, v76);
  v79(v75, v76);
  sub_1000602A8(v77);
  v80 = sub_10007DAD8();
  v81 = sub_10007DAE8();
  sub_10007DAE8();
  if (sub_10007DAE8() != v80)
  {
    v81 = sub_10007DAE8();
  }

  sub_10007D628();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v122;
  sub_10002DB0C(v77, v122, &qword_1000E1770, &qword_1000856D0);
  v91 = v90 + *(v123 + 36);
  *v91 = v81;
  *(v91 + 8) = v83;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v89;
  *(v91 + 40) = 0;
  v92 = v125;
  sub_10002DB0C(v90, v125, &qword_1000E1778, &qword_1000856D8);
  v93 = v130;
  sub_100026310(v128, v130, &qword_1000E17A0, &unk_100085710);
  v94 = v131;
  sub_100026310(v129, v131, &qword_1000E1560, &qword_100085528);
  v95 = v67;
  v96 = v121;
  sub_100026310(v67, v121, &qword_1000E1798, &unk_100085700);
  v97 = v124;
  sub_100026310(v70, v124, &qword_1000E1788, &qword_1000856E8);
  v98 = v126;
  sub_100026310(v92, v126, &qword_1000E1778, &qword_1000856D8);
  v99 = v127;
  sub_100026310(v93, v127, &qword_1000E17A0, &unk_100085710);
  v100 = sub_100015240(&qword_1000E17E0, &unk_100085740);
  sub_100026310(v94, v99 + v100[12], &qword_1000E1560, &qword_100085528);
  sub_100026310(v96, v99 + v100[16], &qword_1000E1798, &unk_100085700);
  sub_100026310(v97, v99 + v100[20], &qword_1000E1788, &qword_1000856E8);
  v101 = v99 + v100[24];
  *v101 = 0x4010000000000000;
  *(v101 + 8) = 0;
  sub_100026310(v98, v99 + v100[28], &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v92, &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v70, &qword_1000E1788, &qword_1000856E8);
  sub_1000256C0(v95, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v129, &qword_1000E1560, &qword_100085528);
  sub_1000256C0(v128, &qword_1000E17A0, &unk_100085710);
  sub_1000256C0(v98, &qword_1000E1778, &qword_1000856D8);
  sub_1000256C0(v97, &qword_1000E1788, &qword_1000856E8);
  sub_1000256C0(v96, &qword_1000E1798, &unk_100085700);
  sub_1000256C0(v131, &qword_1000E1560, &qword_100085528);
  return sub_1000256C0(v130, &qword_1000E17A0, &unk_100085710);
}

uint64_t sub_1000625C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v43 = &v40 - v5;
  v6 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = a1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  v11 = *(v10 + 24);
  v49 = *(v10 + 16);
  v50 = v11;
  sub_10002D9A8();

  v12 = sub_10007DBF8();
  v40 = v13;
  v41 = v12;
  LOBYTE(v11) = v14;
  v42 = v15;
  LODWORD(v49) = sub_10007DA38();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DAF8();
  v21 = sub_10007DBB8();
  v23 = v22;
  v25 = v24;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10007DB18();
  v26 = sub_10007DB88();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10002D9FC(v21, v23, v25 & 1);

  sub_10002D9FC(v41, v40, v11 & 1);

  v49 = v26;
  v50 = v28;
  v51 = v30 & 1;
  v52 = v32;
  v33 = v43;
  sub_10007DCA8();
  sub_10002D9FC(v26, v28, v30 & 1);

  v49 = &type metadata for Text;
  v50 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  v35 = v46;
  sub_10007DC78();
  (*(v47 + 8))(v33, v35);
  v36 = v45;
  sub_100026310(v34, v45, &qword_1000DF278, &qword_100083420);
  v37 = v48;
  sub_100026310(v36, v48, &qword_1000DF278, &qword_100083420);
  v38 = v37 + *(sub_100015240(&qword_1000E1598, &qword_100085568) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1000256C0(v34, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v36, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_100062990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_10007D238();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  __chkstk_darwin(v7);
  v34 = &v30 - v9;
  v10 = type metadata accessor for CommuteWindowDetailsString(0);
  (*(v4 + 16))(v6, a1 + *(v10 + 20), v3);
  v11 = sub_10007DBE8();
  v31 = v12;
  v32 = v11;
  v14 = v13;
  v33 = v15;
  LODWORD(v38) = sub_10007DA58();
  v16 = sub_10007DBA8();
  v18 = v17;
  v20 = v19;
  sub_10007DB58();
  v21 = sub_10007DBB8();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;

  sub_10002D9FC(v16, v18, v20 & 1);

  sub_10002D9FC(v32, v31, v14 & 1);

  v38 = v21;
  v39 = v23;
  v40 = a1 & 1;
  v41 = v26;
  v27 = v34;
  sub_10007DCA8();
  sub_10002D9FC(v21, v23, a1 & 1);

  v38 = &type metadata for Text;
  v39 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_10007DC78();
  return (*(v36 + 8))(v27, v28);
}

uint64_t sub_100062C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000E1838, &qword_1000857E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = sub_100015240(&qword_1000E1840, &qword_1000857E8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_10005F8B0(a1, &v19 - v14);
  *v9 = sub_10007D958();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = sub_100015240(&qword_1000E1848, &qword_1000857F0);
  sub_100060B78(a1, &v9[*(v16 + 44)]);
  sub_100026310(v15, v13, &qword_1000E1840, &qword_1000857E8);
  sub_100026310(v9, v7, &qword_1000E1838, &qword_1000857E0);
  sub_100026310(v13, a2, &qword_1000E1840, &qword_1000857E8);
  v17 = sub_100015240(&qword_1000E1850, &qword_1000857F8);
  sub_100026310(v7, a2 + *(v17 + 48), &qword_1000E1838, &qword_1000857E0);
  sub_1000256C0(v9, &qword_1000E1838, &qword_1000857E0);
  sub_1000256C0(v15, &qword_1000E1840, &qword_1000857E8);
  sub_1000256C0(v7, &qword_1000E1838, &qword_1000857E0);
  return sub_1000256C0(v13, &qword_1000E1840, &qword_1000857E8);
}

uint64_t sub_100062E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000E1898, &unk_100085870);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_10007D238();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007D8E8();
  __chkstk_darwin(v10 - 8);
  v11 = v1 + *(type metadata accessor for CommuteWindowPlatterContent(0) + 28);
  v12 = *(v11 + 48);
  v41 = *(v11 + 40);
  v42 = v12;

  v43._countAndFlagsBits = 548913696;
  v43._object = 0xA400000000000000;
  sub_10007E198(v43);
  sub_10007E198(*(v11 + 56));
  v39 = v42;
  v40 = v41;
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v13 = qword_1000E4B68;
  v36._countAndFlagsBits = 0x8000000100090750;
  v44._countAndFlagsBits = 0x70614D206E65704FLL;
  v44._object = 0xE900000000000073;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v14.super.isa = qword_1000E4B68;
  v50._countAndFlagsBits = 0x70614D206E65704FLL;
  v50._object = 0xE900000000000073;
  sub_10007D258(v44, v48, v14, v50, 0xD00000000000001ALL, v36);

  sub_10007D8D8();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10007D8C8(v45);
  v15 = *(v11 + 32);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = type metadata accessor for CommuteWindowDetailsString(0);
    (*(v7 + 16))(v5, v15 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(*(v18 - 8) + 72) * v17 + *(v18 + 20), v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_10007D228();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_1000256C0(v5, &qword_1000E1898, &unk_100085870);
    }
  }

  sub_10007D888();
  (*(v7 + 8))(v9, v6);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_10007D8C8(v46);
  sub_10007D908();
  LOWORD(v37._object) = 256;
  v19 = sub_10007DBD8();
  v21 = v20;
  v23 = v22;
  v38 = 0x80000001000908B0;
  v25 = *(v11 + 16);
  v24 = *(v11 + 24);
  v27 = v26 & 1;
  LOBYTE(v41) = v26 & 1;

  sub_10002DA0C(v19, v21, v27);

  v37._countAndFlagsBits = 0x8000000100090480;
  v47._countAndFlagsBits = 0x4024322540243125;
  v47._object = 0xE800000000000000;
  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v28.super.isa = v13;
  v51._countAndFlagsBits = 0x4024322540243125;
  v51._object = 0xE800000000000000;
  v29 = sub_10007D258(v47, v49, v28, v51, 0xD0000000000000ABLL, v37);
  v31 = v30;
  sub_10002D9FC(v19, v21, v27);

  v33 = v41;
  v34 = v38;
  *a1 = 0xD000000000000032;
  *(a1 + 8) = v34;
  *(a1 + 16) = v25;
  *(a1 + 24) = v24;
  v35 = v39;
  *(a1 + 32) = v40;
  *(a1 + 40) = v35;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v33;
  *(a1 + 72) = v23;
  *(a1 + 80) = v29;
  *(a1 + 88) = v31;
  return result;
}

uint64_t sub_100063378@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v36 = sub_100015240(&qword_1000E16F8, &qword_100085680);
  __chkstk_darwin(v36);
  v35 = (&v35 - v2);
  v42 = sub_100015240(&qword_1000E1700, &qword_100085688);
  __chkstk_darwin(v42);
  v43 = &v35 - v3;
  v38 = sub_100015240(&qword_1000E1708, &qword_100085690);
  __chkstk_darwin(v38);
  v5 = &v35 - v4;
  v6 = sub_100015240(&qword_1000E1710, &qword_100085698);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v39 = sub_100015240(&qword_1000E1718, &qword_1000856A0);
  __chkstk_darwin(v39);
  v37 = &v35 - v9;
  v40 = sub_100015240(&qword_1000E1720, &qword_1000856A8);
  __chkstk_darwin(v40);
  v41 = &v35 - v10;
  v11 = sub_100015240(&qword_1000E1728, &qword_1000856B0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_10007DFF8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005F6A8(v17);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for WidgetFamily.systemSmall(_:) || v18 == enum case for WidgetFamily.systemMedium(_:))
  {
    *v13 = sub_10007D958();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v27 = sub_100015240(&qword_1000E1768, &qword_1000856C8);
    sub_100061874(v1, &v13[*(v27 + 44)]);
    sub_100026310(v13, v8, &qword_1000E1728, &qword_1000856B0);
    swift_storeEnumTagMultiPayload();
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0, &protocol conformance descriptor for VStack<A>);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680, &protocol conformance descriptor for HStack<A>);
    v28 = v37;
    sub_10007D9D8();
    sub_100026310(v28, v5, &qword_1000E1718, &qword_1000856A0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v29 = v41;
    sub_10007D9D8();
    sub_1000256C0(v28, &qword_1000E1718, &qword_1000856A0);
    sub_100026310(v29, v43, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_1000256C0(v29, &qword_1000E1720, &qword_1000856A8);
    v24 = v13;
    v25 = &qword_1000E1728;
    v26 = &qword_1000856B0;
  }

  else if (v18 == enum case for WidgetFamily.systemLarge(_:))
  {
    v19 = sub_10007D878();
    v20 = v35;
    *v35 = v19;
    *(v20 + 8) = 0x4020000000000000;
    *(v20 + 16) = 0;
    v21 = sub_100015240(&qword_1000E1760, &qword_1000856C0);
    sub_100062C80(v1, v20 + *(v21 + 44));
    sub_100026310(v20, v8, &qword_1000E16F8, &qword_100085680);
    swift_storeEnumTagMultiPayload();
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0, &protocol conformance descriptor for VStack<A>);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680, &protocol conformance descriptor for HStack<A>);
    v22 = v37;
    sub_10007D9D8();
    sub_100026310(v22, v5, &qword_1000E1718, &qword_1000856A0);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v23 = v41;
    sub_10007D9D8();
    sub_1000256C0(v22, &qword_1000E1718, &qword_1000856A0);
    sub_100026310(v23, v43, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_1000256C0(v23, &qword_1000E1720, &qword_1000856A8);
    v24 = v20;
    v25 = &qword_1000E16F8;
    v26 = &qword_100085680;
  }

  else
  {
    if (v18 == enum case for WidgetFamily.systemExtraLarge(_:) || v18 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v18 == enum case for WidgetFamily.accessoryCorner(_:) || v18 == enum case for WidgetFamily.accessoryCircular(_:) || v18 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    sub_100062E9C(v54);
    v47 = v54[2];
    v48 = v54[3];
    v49 = v54[4];
    v50 = v54[5];
    v45 = v54[0];
    v46 = v54[1];
    v55 = 0;
    v51 = 0;
    sub_100063DAC(v54, v52);
    sub_1000558E4();
    sub_10007D9D8();
    v30 = v52[5];
    *(v5 + 4) = v52[4];
    *(v5 + 5) = v30;
    v5[96] = v53;
    v31 = v52[1];
    *v5 = v52[0];
    *(v5 + 1) = v31;
    v32 = v52[3];
    *(v5 + 2) = v52[2];
    *(v5 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000E1730, &qword_1000856B8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    v33 = v41;
    sub_10007D9D8();
    sub_100026310(v33, v43, &qword_1000E1720, &qword_1000856A8);
    swift_storeEnumTagMultiPayload();
    sub_100063EEC();
    sub_10007D9D8();
    sub_100063FA4(v54);
    v24 = v33;
    v25 = &qword_1000E1720;
    v26 = &qword_1000856A8;
  }

  return sub_1000256C0(v24, v25, v26);
}

unint64_t sub_100063E08()
{
  result = qword_1000E1738;
  if (!qword_1000E1738)
  {
    sub_100015288(&qword_1000E1718, &qword_1000856A0);
    sub_10002DDAC(&qword_1000E1740, &qword_1000E1728, &qword_1000856B0, &protocol conformance descriptor for VStack<A>);
    sub_10002DDAC(&qword_1000E1748, &qword_1000E16F8, &qword_100085680, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1738);
  }

  return result;
}

unint64_t sub_100063EEC()
{
  result = qword_1000E1758;
  if (!qword_1000E1758)
  {
    sub_100015288(&qword_1000E1720, &qword_1000856A8);
    sub_100063E08();
    sub_100064398(&qword_1000E1750, &qword_1000E1730, &qword_1000856B8, sub_1000558E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1758);
  }

  return result;
}

unint64_t sub_100063FF8()
{
  result = qword_1000E17A8;
  if (!qword_1000E17A8)
  {
    sub_100015288(&qword_1000E1790, &qword_1000856F8);
    sub_100015288(&qword_1000E0B88, &qword_1000856F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17A8);
  }

  return result;
}

unint64_t sub_1000640F0()
{
  result = qword_1000E17C8;
  if (!qword_1000E17C8)
  {
    sub_100015288(&qword_1000DF278, &qword_100083420);
    swift_getOpaqueTypeConformance2();
    sub_100064350(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E17C8);
  }

  return result;
}

unint64_t sub_1000641DC()
{
  result = qword_1000E1808;
  if (!qword_1000E1808)
  {
    sub_100015288(&qword_1000E17F8, &qword_100085760);
    sub_100064294();
    sub_10002DDAC(&qword_1000E1818, &qword_1000E1820, &qword_1000857A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1808);
  }

  return result;
}

unint64_t sub_100064294()
{
  result = qword_1000E1810;
  if (!qword_1000E1810)
  {
    sub_100015288(&qword_1000E17F0, &qword_100085758);
    sub_10007DA68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1810);
  }

  return result;
}

uint64_t sub_100064350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100064398(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006445C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = "ort type bicycle";
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x8000000100090A00;
      v6._countAndFlagsBits = 0x6B6C6177204025;
    }

    else
    {
      if (a3 != 3)
      {
LABEL_12:
        if (qword_1000DE280 != -1)
        {
          swift_once();
        }

        v5.super.isa = qword_1000E4B68;
        v7._countAndFlagsBits = 0xD00000000000001BLL;
        v12._countAndFlagsBits = 0x8000000100090940;
        v7._object = 0x8000000100090920;
        v8.value._countAndFlagsBits = 0;
        v8.value._object = 0;
        v6._countAndFlagsBits = 16421;
        v6._object = 0xE200000000000000;
        goto LABEL_22;
      }

      v9 = "n transport type";
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x80000001000909A0;
      v6._countAndFlagsBits = 0x65646972204025;
    }

    v7._object = (v9 | 0x8000000000000000);
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v6._object = 0xE700000000000000;
    goto LABEL_22;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1000E4B68;
      v7._countAndFlagsBits = 0xD000000000000012;
      v12._countAndFlagsBits = 0x8000000100090A60;
      v6._countAndFlagsBits = 0x7274207962204025;
      v6._object = 0xED00007469736E61;
      v7._object = 0x8000000100090A40;
      v8.value._countAndFlagsBits = 0;
      v8.value._object = 0;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v5.super.isa = qword_1000E4B68;
  v7._countAndFlagsBits = 0xD000000000000012;
  v12._countAndFlagsBits = 0x8000000100090AC0;
  v6._countAndFlagsBits = 0x6576697264204025;
  v7._object = 0x8000000100090AA0;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v6._object = 0xE800000000000000;
LABEL_22:
  sub_10007D258(v7, v8, v5, v6, 0xD000000000000030, v12);
  if (a2)
  {
    sub_100015240(&qword_1000E1948, qword_1000858B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100082820;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000647D8();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    a2 = sub_10007E148();
  }

  return a2;
}

unint64_t sub_1000647D8()
{
  result = qword_1000E1950;
  if (!qword_1000E1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1950);
  }

  return result;
}

void sub_100064874(uint64_t a1)
{
  type metadata accessor for MapsSuggestionsEntryType(319);
  if (v1 <= 0x3F)
  {
    sub_1000649A8(319, &qword_1000E19C0, &type metadata for UserLocationState);
    if (v2 <= 0x3F)
    {
      sub_1000649A8(319, &qword_1000E05F0, &type metadata for ColorSchemeSpecificImageSet);
      if (v3 <= 0x3F)
      {
        sub_1000649F4(319, &qword_1000E19C8, type metadata accessor for GEOTransportType);
        if (v4 <= 0x3F)
        {
          sub_1000649F4(319, &unk_1000E19D0, type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000649A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000649F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100064A90(uint64_t a1)
{
  sub_10007E0C8();
  if (v1 <= 0x3F)
  {
    sub_1000649A8(319, &qword_1000E05F0, &type metadata for ColorSchemeSpecificImageSet);
    if (v2 <= 0x3F)
    {
      sub_1000649F4(319, &unk_1000E1A80, type metadata accessor for CGPoint);
      if (v3 <= 0x3F)
      {
        sub_1000649F4(319, &unk_1000E0740, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100064C24(uint64_t a1)
{
  type metadata accessor for SuggestedDestinationEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_100064D7C(319, &qword_1000E1B58, &qword_1000DF538, CLLocation_ptr);
    if (v2 <= 0x3F)
    {
      sub_10002620C(319, &qword_1000E0810, MKMapItem_ptr);
      if (v3 <= 0x3F)
      {
        sub_100064D7C(319, &qword_1000E0818, &qword_1000E0820, GEOFeatureStyleAttributes_ptr);
        if (v4 <= 0x3F)
        {
          sub_100064D7C(319, &qword_1000E1B60, &qword_1000DE968, GEOComposedRoute_ptr);
          if (v5 <= 0x3F)
          {
            sub_1000649F4(319, &unk_1000E1B68, &type metadata accessor for UUID);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100064D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10002620C(255, a3, a4);
    v5 = sub_10007E3A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100064DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v42 = sub_10007DEB8();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DED8();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10007D3B8();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10007E0C8();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v32);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v36 = sub_10007E328();
  sub_100066E88(v35, v14, type metadata accessor for SuggestedDestinationEntryContentResolver);
  v15 = v32;
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v32);
  v16 = v33;
  (*(v7 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v33);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_100066C5C(v14, v20 + v17);
  (*(v9 + 32))(v20 + v18, v30, v15);
  (*(v7 + 32))(v20 + v19, v31, v16);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v40;
  *v21 = v39;
  v21[1] = v22;
  aBlock[4] = sub_100066CC0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C94C0;
  v23 = _Block_copy(aBlock);

  v24 = v38;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v26 = v41;
  v25 = v42;
  sub_10007E3F8();
  v27 = v36;
  sub_10007E338();
  _Block_release(v23);

  (*(v45 + 8))(v26, v25);
  return (*(v43 + 8))(v24, v44);
}

double sub_1000652EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v139 = a4;
  v140 = a5;
  v125 = a3;
  v144 = a2;
  v6 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v6 - 8);
  v127 = &v120 - v7;
  v124 = type metadata accessor for SuggestedDestinationEntryContent(0);
  __chkstk_darwin(v124);
  v126 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007E0C8();
  v136 = *(v9 - 8);
  v137 = v9;
  __chkstk_darwin(v9);
  v123 = v10;
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v121 = *(v11 - 8);
  __chkstk_darwin(v11);
  v122 = v12;
  v132 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v13 - 8);
  v133 = &v120 - v14;
  v15 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v16 = __chkstk_darwin(v15);
  v120 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v120 - v18;
  v20 = sub_10007DFF8();
  v141 = *(v20 - 8);
  v142 = v20;
  v21 = __chkstk_darwin(v20);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v120 - v23;
  v138 = swift_allocBox();
  v26 = v25;
  v27 = sub_10007D288();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v131 = v26;
  v128 = v28 + 56;
  v129 = v29;
  v29(v26, 1, 1, v27);
  v30 = *(a1 + *(v11 + 32));
  v143 = a1;
  if (v30)
  {
    goto LABEL_2;
  }

  v47 = [*(a1 + *(v11 + 24)) _canGetDirections];
  v48 = *(a1 + 32);
  if (v47)
  {
    if (v48 != 25)
    {
LABEL_2:
      v135[1] = 0x8000000100090450;
      v31 = 0xD000000000000020;
LABEL_3:
      v135[0] = v31;
      goto LABEL_4;
    }
  }

  else if (v48 != 25)
  {
    v135[1] = 0x8000000100090B10;
    v31 = 0xD00000000000001ALL;
    goto LABEL_3;
  }

  strcpy(v135, "location.fill");
  HIWORD(v135[1]) = -4864;
LABEL_4:
  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083D00;
  v149 = sub_10007E158();
  v150 = v33;
  sub_10007E438();
  sub_10007E0B8();
  v34 = sub_100066380();
  (*(v141 + 8))(v24, v142);
  *(inited + 96) = &type metadata for Int32;
  *(inited + 72) = v34;
  v149 = sub_10007E158();
  v150 = v35;
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = 696;
  v149 = sub_10007E158();
  v150 = v36;
  sub_10007E438();
  v37 = v143;
  v38 = *(v143 + 32);
  v149 = v38;
  v39 = sub_10007E588();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v39;
  *(inited + 224) = v40;
  v41 = sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  if (v30)
  {
    *&v147 = sub_10007E158();
    *(&v147 + 1) = v42;
    v43 = v30;
    sub_10007E438();
    v44 = sub_100064420([v43 transportType]);
    v148 = &type metadata for String;
    *&v147 = v44;
    *(&v147 + 1) = v45;
    sub_100026378(&v147, v146);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v41;
    sub_10003FFB0(v146, &v149, isUniquelyReferenced_nonNull_native);

LABEL_12:
    sub_1000415FC(&v149);
    v54 = objc_opt_self();
    sub_100015240(&qword_1000E0868, &qword_1000846D8);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100082810;
    v56 = [v54 mapItemForCurrentLocation];
    v57 = sub_10002620C(0, &qword_1000E0810, MKMapItem_ptr);
    *(v55 + 56) = v57;
    *(v55 + 32) = v56;
    v58 = v143;
    v59 = *(v143 + *(v11 + 24));
    *(v55 + 88) = v57;
    *(v55 + 64) = v59;
    v60 = v59;
    isa = sub_10007E1C8().super.isa;

    v62 = sub_10007E0E8().super.isa;

    v63 = [v54 urlForMapItems:isa options:v62];

    if (v63)
    {
      sub_10007D278();

      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = v131;
    v129(v19, v64, 1, v27);
    sub_100066E18(v19, v65);
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v66.super.isa = qword_1000E4B68;
    v119._countAndFlagsBits = 0x8000000100090B70;
    v67._countAndFlagsBits = 0x6572694420746547;
    v67._object = 0xEE00736E6F697463;
    v68 = 0xD000000000000025;
    v69.value._countAndFlagsBits = 0;
    v69.value._object = 0;
    v70._countAndFlagsBits = 0x6572694420746547;
    v70._object = 0xEE00736E6F697463;
    goto LABEL_18;
  }

  v49 = *(v37 + *(v11 + 24));
  if ([v49 _canGetDirections] && v38 != 25)
  {
    *&v147 = sub_10007E158();
    *(&v147 + 1) = v50;
    sub_10007E438();
    v51 = sub_10007E158();
    v148 = &type metadata for String;
    *&v147 = v51;
    *(&v147 + 1) = v52;
    sub_100026378(&v147, v146);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v145 = v41;
    sub_10003FFB0(v146, &v149, v53);
    goto LABEL_12;
  }

  v114 = objc_opt_self();
  v115 = sub_10007E0E8().super.isa;

  v116 = [v114 urlForMapItem:v49 options:v115];

  v65 = v131;
  if (v116)
  {
    v117 = v120;
    sub_10007D278();

    v118 = 0;
    v58 = v143;
  }

  else
  {
    v118 = 1;
    v58 = v143;
    v117 = v120;
  }

  v129(v117, v118, 1, v27);
  sub_100066E18(v117, v65);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v66.super.isa = qword_1000E4B68;
  v119._countAndFlagsBits = 0x8000000100090750;
  v67._countAndFlagsBits = 0x70614D206E65704FLL;
  v67._object = 0xE900000000000073;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v70._countAndFlagsBits = 0x70614D206E65704FLL;
  v70._object = 0xE900000000000073;
  v68 = 0xD00000000000001ALL;
LABEL_18:
  v71 = sub_10007D258(v67, v69, v66, v70, v68, v119);
  v73 = v72;
  v74 = v130;
  sub_10007E0B8();
  v75 = (*(v141 + 88))(v74, v142);
  if (v75 == enum case for WidgetFamily.systemSmall(_:) || v75 == enum case for WidgetFamily.systemMedium(_:) || v75 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v142 = v71;
    v143 = v73;
    v89 = sub_10007D5C8();
    sub_1000046BC(v89, qword_1000E4B28);
    v90 = sub_10007D5A8();
    v91 = sub_10007E288();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "SuggestedDestinationEntryContentResolver: generating map snapshot (supported for this family)", v92, 2u);
    }

    v93 = v144;
    v94 = v125;
    v141 = sub_10006659C(v144);
    v95 = sub_10007D3B8();
    v96 = *(v95 - 8);
    v97 = v133;
    (*(v96 + 16))(v133, v94, v95);
    (*(v96 + 56))(v97, 0, 1, v95);
    sub_100066E88(v58, v132, type metadata accessor for SuggestedDestinationEntryContentResolver);
    v98 = v136;
    v99 = v137;
    (*(v136 + 16))(v134, v93, v137);
    v100 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v101 = (v122 + *(v98 + 80) + v100) & ~*(v98 + 80);
    v102 = (v123 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    sub_100066C5C(v132, v105 + v100);
    (*(v98 + 32))(v105 + v101, v134, v99);
    *(v105 + v102) = v138;
    v106 = (v105 + v103);
    v107 = v143;
    *v106 = v142;
    v106[1] = v107;
    v108 = (v105 + v104);
    v109 = v135[1];
    *v108 = v135[0];
    v108[1] = v109;
    v110 = (v105 + ((v104 + 23) & 0xFFFFFFFFFFFFFFF8));
    v111 = v140;
    *v110 = v139;
    v110[1] = v111;

    v112 = v133;
    sub_10003AB38(v133, sub_100066F4C, v105);

    sub_1000256C0(v112, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v75 == enum case for WidgetFamily.systemExtraLarge(_:) || v75 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v75 == enum case for WidgetFamily.accessoryCorner(_:) || v75 == enum case for WidgetFamily.accessoryCircular(_:) || v75 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v76 = sub_10007D5C8();
    sub_1000046BC(v76, qword_1000E4B28);
    v77 = sub_10007D5A8();
    v78 = sub_10007E288();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "SuggestedDestinationEntryContentResolver: skipping map snapshot (not supported for this family)", v79, 2u);
    }

    v80 = v126;
    sub_100066E88(v58, v126, type metadata accessor for SuggestedDestinationEntryContent);
    v81 = v80 + *(v124 + 40);
    sub_1000256C0(v81, &qword_1000E1030, &qword_100085510);
    (*(v136 + 16))(v81, v144, v137);
    v82 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
    sub_100026310(v65, v81 + v82[7], &qword_1000DEEE0, &qword_100082E30);
    *(v81 + v82[5]) = xmmword_1000845B0;
    v83 = v81 + v82[6];
    *v83 = 0;
    *(v83 + 8) = 0;
    *(v83 + 16) = 1;
    v84 = (v81 + v82[8]);
    *v84 = v71;
    v84[1] = v73;
    v85 = (v81 + v82[9]);
    v86 = v135[1];
    *v85 = v135[0];
    v85[1] = v86;
    (*(*(v82 - 1) + 56))(v81, 0, 1, v82);
    v87 = v127;
    sub_100066E88(v80, v127, type metadata accessor for SuggestedDestinationEntryContent);
    v88 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v139(v87);
    sub_1000256C0(v87, &qword_1000DE630, &unk_1000861F0);
    sub_100066EF0(v80);
  }

  return result;
}

uint64_t sub_100066380()
{
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 94;
  }

  if (v5 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 95;
  }

  if (v5 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 96;
  }

  v9 = v5 == enum case for WidgetFamily.systemExtraLarge(_:) || v5 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v5 == enum case for WidgetFamily.accessoryCorner(_:) || v5 == enum case for WidgetFamily.accessoryCircular(_:);
  if (!v9 && v5 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    return 94;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10006659C(uint64_t a1)
{
  v2 = v1;
  v40 = sub_10007E0C8();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DFF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007DF48();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v13 = sub_10007E328();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_10007DF68();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v16 = type metadata accessor for MapSnapshotter();
  v17 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  v18 = v17[9];
  sub_10007E0B8();
  v39 = v18;
  v19 = sub_10003D474(v2 + v18, v9);
  v38 = *(v7 + 8);
  v38(v9, v6);
  v20 = v7 + 8;
  if (v19)
  {
    type metadata accessor for SuggestedDestinationSnapshotter();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  v21 = *(v4 + 16);
  v37 = v16;
  v22 = v41;
  v21(v41, a1, v40);
  v23 = *(v2 + v17[5]);
  v24 = *(v2 + v17[6]);
  v25 = v17[8];
  v26 = *(v2 + v17[7]);
  v40 = v20;
  v35 = *(v2 + 72);
  v27 = *(v2 + 76);
  v28 = *(v2 + v25);
  type metadata accessor for SuggestedDestinationSnapshotter();
  swift_allocObject();
  v36 = v6;
  v29 = v28;
  v30 = v23;
  v31 = v24;
  v32 = v26;
  v42 = v27;
  sub_100041650(v22, v23, v31, v26, v35 | (v27 << 32), v28);
  v34 = v33;
  sub_10007E0B8();
  sub_10003DC98(v34, (v2 + v39), v9);
  v38(v9, v36);
  return v34;
}

uint64_t sub_100066940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *), uint64_t a10)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v42 = a9;
  v43 = a10;
  v12 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  type metadata accessor for SuggestedDestinationSnapshotter();
  v20 = swift_dynamicCastClassUnconditional();
  v37 = type metadata accessor for SuggestedDestinationEntryContent;
  sub_100066E88(a2, v18, type metadata accessor for SuggestedDestinationEntryContent);
  v21 = &v18[*(v16 + 48)];
  sub_1000256C0(v21, &qword_1000E1030, &qword_100085510);
  v22 = sub_10007E0C8();
  (*(*(v22 - 8) + 16))(v21, a3, v22);
  v24 = *(v20 + 24);
  v23 = *(v20 + 32);
  v25 = *(v20 + 80);
  v26 = *(v20 + 88);
  v27 = *(v20 + 96);
  swift_beginAccess();
  v28 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
  sub_100026310(v19, v21 + v28[7], &qword_1000DEEE0, &qword_100082E30);
  v29 = (v21 + v28[5]);
  *v29 = v24;
  v29[1] = v23;
  v30 = v21 + v28[6];
  *v30 = v25;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27;
  v31 = (v21 + v28[8]);
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  v33 = (v21 + v28[9]);
  v34 = v41;
  *v33 = v40;
  v33[1] = v34;
  (*(*(v28 - 1) + 56))(v21, 0, 1, v28);
  sub_100066E88(v18, v14, v37);
  v35 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
  sub_1000301E4(v24, v23);

  v42(v14);
  sub_1000256C0(v14, &qword_1000DE630, &unk_1000861F0);
  return sub_100066EF0(v18);
}

uint64_t sub_100066C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100066CC0()
{
  v1 = *(type metadata accessor for SuggestedDestinationEntryContentResolver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10007D3B8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1000652EC(v0 + v2, v0 + v5, v0 + v8, v10, v11);
}

uint64_t sub_100066E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066EF0(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedDestinationEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100066F4C(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedDestinationEntryContentResolver(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100066940(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_100067090()
{
  result = qword_1000DFCE8;
  if (!qword_1000DFCE8)
  {
    sub_10007DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCE8);
  }

  return result;
}

void sub_1000670FC(uint64_t a1, void *a2, int a3, int a4)
{
  v6 = objc_opt_self();
  sub_100015240(&qword_1000E0860, &qword_1000846C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085980;
  sub_10007E158();
  sub_10007E438();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_10007E158();
  sub_10007E438();
  *(inited + 168) = &type metadata for Int32;
  *(inited + 144) = a3;
  sub_10007E158();
  sub_10007E438();
  *(inited + 240) = &type metadata for Int32;
  *(inited + 216) = a4;
  v13 = sub_10007E158();
  v14 = v8;
  sub_10007E438();
  sub_10007DFF8();
  sub_100067090();
  v9 = sub_10007E588();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v9;
  *(inited + 296) = v10;
  sub_100024DB4(inited);
  swift_setDeallocating();
  sub_100015240(&unk_1000DEB30, &qword_1000846D0);
  swift_arrayDestroy();
  isa = sub_10007E0E8().super.isa;

  v12 = [v6 urlForMapItem:0 options:{isa, v13, v14}];

  if (v12)
  {
    sub_10007D278();
  }

  else
  {
    __break(1u);
  }
}

void sub_100067354()
{
  v0 = sub_10007DFF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v4 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10007E0A8();
    }

    else if (v4 != enum case for WidgetFamily.systemLarge(_:))
    {
      sub_10007E518();
      __break(1u);
    }
  }
}

uint64_t sub_10006758C(uint64_t a1, void *a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for WidgetFamily.systemSmall(_:))
  {
    MKMapRectMakeWithRadialDistance();
LABEL_6:
    sub_10007E0A8();
    sub_100067354();
    return _MKMapRectThatFits();
  }

  if (v7 == enum case for WidgetFamily.systemMedium(_:) || v7 == enum case for WidgetFamily.systemLarge(_:))
  {
    v8 = [a2 boundingMapRegion];
    GEOMapRectForMapRegion();

    goto LABEL_6;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

void sub_100067850(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = xmmword_1000834F0;
  *(v3 + 32) = 0;
  *(v3 + 40) = dispatch_group_create();
  *(v3 + 48) = 0;
  *(v3 + 56) = sub_100024EF0(_swiftEmptyArrayStorage);
  *(v3 + 64) = 0;
  *(v3 + 72) = _swiftEmptyArrayStorage;
  v6 = objc_allocWithZone(MKMapSnapshotOptions);

  v7 = [v6 init];
  v8 = *(v3 + 16);
  *(v3 + 16) = v7;

  v9 = *(v3 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v9 _setShowsAppleLogo:0];
  v10 = *(v3 + 16);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_10007E0A8();
  [v11 setSize:?];

  [a2 pointAtRouteCoordinate:{objc_msgSend(a2, "endRouteCoordinate")}];
  nullsub_1();
  CLLocationCoordinate2DFromGEOLocationCoordinate2D();
  v12 = *(v3 + 16);
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  sub_10006758C(a1, a2);
  [v13 setMapRect:?];

  v14 = *(v3 + 16);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v14 _setComposedRouteForRouteLine:a2];
  v15 = *(v3 + 16);
  v16 = v15;

  if (v15)
  {
    [v16 setMapType:{objc_msgSend(a2, "mapType")}];

    v17 = sub_10007E0C8();
    (*(*(v17 - 8) + 8))(a1, v17);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for UserLocationState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UserLocationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserLocationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100067B04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100067B18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100067B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100067BE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v25 = a2;
  v27 = a3;
  v6 = type metadata accessor for PreciseUserLocationView(0);
  __chkstk_darwin(v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100015240(&qword_1000E1D60, &qword_100085B60);
  __chkstk_darwin(v26);
  v10 = &v24 - v9;
  v11 = sub_100015240(&qword_1000E1D68, &qword_100085B68);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100015240(&qword_1000E1D70, &qword_100085B70);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = type metadata accessor for CoarseUserLocationView(0);
  __chkstk_darwin(v17);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    *v8 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v6 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v6 + 24)) = v25 & 1;
    v20 = type metadata accessor for PreciseUserLocationView;
    sub_100069D34(v8, v13, type metadata accessor for PreciseUserLocationView);
    swift_storeEnumTagMultiPayload();
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView, &unk_100085C70);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView, &unk_100085C20);
    sub_10007D9D8();
    sub_100026310(v16, v10, &qword_1000E1D70, &qword_100085B70);
    swift_storeEnumTagMultiPayload();
    sub_100069C48();
    sub_10007D9D8();
    sub_1000256C0(v16, &qword_1000E1D70, &qword_100085B70);
    v21 = v8;
    return sub_100069D9C(v21, v20);
  }

  v22 = v25;
  v24 = v14;
  if (a1 == 1)
  {
    *v19 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v19 + v17[5]) = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v19 + v17[6]) = v22 & 1;
    *(v19 + v17[7]) = a4;
    v20 = type metadata accessor for CoarseUserLocationView;
    sub_100069D34(v19, v13, type metadata accessor for CoarseUserLocationView);
    swift_storeEnumTagMultiPayload();
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView, &unk_100085C70);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView, &unk_100085C20);
    sub_10007D9D8();
    sub_100026310(v16, v10, &qword_1000E1D70, &qword_100085B70);
    swift_storeEnumTagMultiPayload();
    sub_100069C48();
    sub_10007D9D8();
    sub_1000256C0(v16, &qword_1000E1D70, &qword_100085B70);
    v21 = v19;
    return sub_100069D9C(v21, v20);
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

double sub_10006819C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10007D948();
  v5 = *a1;
  v6 = *(a1 + 8);
  result = *(a1 + 4);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a1 + 1);
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  return result;
}

__n128 sub_100068234@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  v5 = sub_10007D878();
  sub_10006819C(v8, v10);
  *&v7[71] = v10[4];
  *&v7[87] = v10[5];
  *&v7[103] = v11[0];
  *&v7[112] = *(v11 + 9);
  *&v7[7] = v10[0];
  *&v7[23] = v10[1];
  *&v7[39] = v10[2];
  *&v7[55] = v10[3];
  *(a2 + 81) = *&v7[64];
  *(a2 + 97) = *&v7[80];
  *(a2 + 113) = *&v7[96];
  *(a2 + 129) = *&v7[112];
  *(a2 + 17) = *v7;
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v7[48];
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UserLocationView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserLocationView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserLocationView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006842C(SEL *a1, SEL *a2, SEL *a3, uint64_t a4)
{
  v8 = sub_10007D638();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for ColorScheme.light(_:))
  {
    v13 = [objc_opt_self() *a3];
    return sub_10007DD68();
  }

  if (v12 == enum case for ColorScheme.dark(_:))
  {
    v14 = [objc_opt_self() *a1];
    v15 = [objc_opt_self() *a2];
    [v14 resolvedColorWithTraitCollection:v15];

    return sub_10007DD68();
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100068620@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D848();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CoarseUserLocationView(0);
  sub_100026310(v1 + *(v10 + 20), v9, &qword_1000DEF58, &qword_100083AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DF98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100068828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_10007DF98();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v58 - v7;
  v9 = sub_10007D638();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v69 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = sub_100015240(&qword_1000E1EF8, &qword_100085CD8);
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  v60 = sub_100015240(&qword_1000E1F00, &qword_100085CE0);
  v20 = __chkstk_darwin(v60);
  v70 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v59 = &v58 - v23;
  __chkstk_darwin(v22);
  v72 = &v58 - v24;
  sub_100068FC0(v16);
  v25 = *(type metadata accessor for CoarseUserLocationView(0) + 24);
  v68 = a1;
  if (*(a1 + v25) == 1)
  {
    sub_10006842C(&selRef_systemGray2Color, &selRef_traitCollectionWithAccessibilityContrast_, &selRef_systemGray2Color, 65);
  }

  else
  {
    sub_10007DCF8();
  }

  v26 = sub_10007DD38();

  v61 = *(v10 + 8);
  v62 = v10 + 8;
  v61(v16, v9);
  v27 = sub_10007DAC8();
  v28 = 1.0;
  sub_10007D628();
  v89 = 0;
  *&v78 = v26;
  WORD4(v78) = 256;
  LOBYTE(v79) = v27;
  *(&v79 + 1) = v29;
  *v80 = v30;
  *&v80[8] = v31;
  *&v80[16] = v32;
  v80[24] = 0;
  sub_100015240(&qword_1000E1F08, &unk_100085CE8);
  sub_10006A408();
  sub_10007DC08();
  v87[0] = v78;
  v87[1] = v79;
  v88[0] = *v80;
  *(v88 + 9) = *&v80[9];
  sub_1000256C0(v87, &qword_1000E1F08, &unk_100085CE8);
  sub_100068620(v8);
  sub_10007DF88();
  v33 = sub_10007DF78();
  v34 = v67;
  v35 = *(v66 + 8);
  v35(v6, v67);
  v35(v8, v34);
  if (v33)
  {
    v28 = 0.8;
  }

  v36 = v59;
  (*(v63 + 32))(v59, v19, v64);
  *(v36 + *(v60 + 36)) = v28;
  sub_10000B764(v36, v72);
  v37 = v69;
  sub_100068FC0(v69);
  v38 = v65;
  (*(v10 + 16))(v65, v37, v9);
  v39 = (*(v10 + 88))(v38, v9);
  if (v39 == enum case for ColorScheme.light(_:))
  {
    v68 = sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor, 76);
LABEL_10:
    v61(v37, v9);
    sub_10007D658();
    v40 = v90;
    v41 = v91;
    LODWORD(v69) = v92;
    v42 = v93;
    v43 = v94;
    v44 = v95;
    v45 = sub_10007DE88();
    v47 = v46;
    v48 = v72;
    v49 = v70;
    sub_100026310(v72, v70, &qword_1000E1F00, &qword_100085CE0);
    v50 = v71;
    sub_100026310(v49, v71, &qword_1000E1F00, &qword_100085CE0);
    v51 = (v50 + *(sub_100015240(&qword_1000E1F18, &qword_100085CF8) + 48));
    *&v73 = v40 * 0.5;
    *(&v73 + 1) = v40;
    LODWORD(v50) = v69;
    *&v74 = __PAIR64__(v69, v41);
    *(&v74 + 1) = v42;
    *&v75 = v43;
    *(&v75 + 1) = v44;
    v52 = v68;
    *&v76 = v68;
    WORD4(v76) = 256;
    *(&v76 + 10) = v85;
    HIWORD(v76) = v86;
    *&v77 = v45;
    *(&v77 + 1) = v47;
    v53 = v73;
    v54 = v74;
    v55 = v77;
    v56 = v75;
    v51[3] = v76;
    v51[4] = v55;
    v51[1] = v54;
    v51[2] = v56;
    *v51 = v53;
    sub_100026310(&v73, &v78, &qword_1000E1F20, &qword_100085D00);
    sub_1000256C0(v48, &qword_1000E1F00, &qword_100085CE0);
    *&v78 = v40 * 0.5;
    *(&v78 + 1) = v40;
    *&v79 = __PAIR64__(v50, v41);
    *(&v79 + 1) = v42;
    *v80 = v43;
    *&v80[8] = v44;
    *&v80[16] = v52;
    *&v80[24] = 256;
    v81 = v85;
    v82 = v86;
    v83 = v45;
    v84 = v47;
    sub_1000256C0(&v78, &qword_1000E1F20, &qword_100085D00);
    return sub_1000256C0(v49, &qword_1000E1F00, &qword_100085CE0);
  }

  if (v39 == enum case for ColorScheme.dark(_:))
  {
    sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor, 76);
    v68 = sub_10007DD38();

    goto LABEL_10;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100068FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100026310(v2, &v14 - v9, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D638();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000691C0(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000E1ED0, &qword_100085CC0);
  __chkstk_darwin(v2);
  v4 = (v10 - v3);
  *v4 = sub_10007DE88();
  v4[1] = v5;
  v6 = sub_100015240(&qword_1000E1ED8, &qword_100085CC8);
  sub_100068828(v1, v4 + *(v6 + 44));
  sub_10007DE88();
  sub_10007D668();
  v7 = (v4 + *(v2 + 36));
  v8 = v10[1];
  *v7 = v10[0];
  v7[1] = v8;
  v7[2] = v10[2];
  sub_10006A350();
  sub_10007DC78();
  return sub_1000256C0(v4, &qword_1000E1ED0, &qword_100085CC0);
}

uint64_t sub_100069324(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10007DE88();
  v5 = v4;
  sub_100069558(v2, __dst);
  v18 = __dst[10];
  v19 = __dst[11];
  v20 = __dst[12];
  v21 = __dst[13];
  v14 = __dst[6];
  v15 = __dst[7];
  v16 = __dst[8];
  v17 = __dst[9];
  v10 = __dst[2];
  v11 = __dst[3];
  v12 = __dst[4];
  v13 = __dst[5];
  v8 = __dst[0];
  v9 = __dst[1];
  v22[10] = __dst[10];
  v22[11] = __dst[11];
  v22[12] = __dst[12];
  v22[13] = __dst[13];
  v22[6] = __dst[6];
  v22[7] = __dst[7];
  v22[8] = __dst[8];
  v22[9] = __dst[9];
  v22[2] = __dst[2];
  v22[3] = __dst[3];
  v22[4] = __dst[4];
  v22[5] = __dst[5];
  v22[0] = __dst[0];
  v22[1] = __dst[1];
  sub_100026310(&v8, v7, &qword_1000E1F28, &qword_100085D08);
  sub_1000256C0(v22, &qword_1000E1F28, &qword_100085D08);
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v23 = v8;
  v24 = v9;
  sub_10007DE88();
  sub_10007D668();
  *&v7[0] = v3;
  *(&v7[0] + 1) = v5;
  v7[11] = v33;
  v7[12] = v34;
  v7[13] = v35;
  v7[14] = v36;
  v7[7] = v29;
  v7[8] = v30;
  v7[9] = v31;
  v7[10] = v32;
  v7[3] = v25;
  v7[4] = v26;
  v7[5] = v27;
  v7[6] = v28;
  v7[1] = v23;
  v7[2] = v24;
  sub_100015240(&qword_1000E1F30, &qword_100085D10);
  sub_10006A4C0();
  sub_10007DC78();
  memcpy(__dst, v7, sizeof(__dst));
  return sub_1000256C0(__dst, &qword_1000E1F30, &qword_100085D10);
}

uint64_t sub_100069558@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v64 = sub_10007DCE8();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10007D638();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v56[-v13];
  __chkstk_darwin(v12);
  v16 = &v56[-v15];
  *&v58 = a1;
  sub_100068FC0(&v56[-v15]);
  (*(v8 + 16))(v14, v16, v7);
  v17 = (*(v8 + 88))(v14, v7);
  if (v17 == enum case for ColorScheme.light(_:) || v17 == enum case for ColorScheme.dark(_:))
  {
    (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v64);
    v64 = sub_10007DD48();
    v18 = *(v8 + 8);
    v18(v16, v7);
    v63 = sub_10007DAC8();
    sub_10007D628();
    v61 = v20;
    v62 = v19;
    v59 = v22;
    v60 = v21;
    v127 = 0;
    v23 = *(v58 + *(type metadata accessor for PreciseUserLocationView(0) + 24));
    sub_100068FC0(v11);
    if (v23 == 1)
    {
      v24 = sub_10006842C(&selRef_systemGray2Color, &selRef_traitCollectionWithAccessibilityContrast_, &selRef_systemGray2Color, 65);
    }

    else
    {
      v24 = sub_10007DCF8();
    }

    v25 = v24;
    v18(v11, v7);
    v26 = sub_10007DAC8();
    v27 = v26;
    v57 = v26;
    sub_10007D628();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v123 = 0;
    sub_100068FC0(v11);
    v36 = sub_10006842C(&selRef_systemGray3Color, &selRef_traitCollectionWithUserInterfaceStyle_, &selRef_whiteColor, 76);
    v18(v11, v7);
    sub_10007D658();
    v37 = v129;
    v38 = v130;
    v39 = v131;
    v40 = v132;
    v41 = v133;
    v42 = v134;
    v43 = sub_10007DE88();
    v58 = xmmword_1000859F0;
    *(v89 + 8) = xmmword_1000859F0;
    *&v89[0] = v64;
    *(&v89[1] + 1) = 0x3FF0000000000000;
    LOBYTE(v90) = v63;
    *(&v90 + 1) = *v128;
    DWORD1(v90) = *&v128[3];
    *(&v90 + 1) = v62;
    *&v91[0] = v61;
    *(&v91[0] + 1) = v60;
    *&v91[1] = v59;
    BYTE8(v91[1]) = 0;
    *(v78 + 9) = *(v91 + 9);
    v77 = v90;
    v78[0] = v91[0];
    v75 = v89[0];
    v76 = v89[1];
    *&v92 = v25;
    WORD4(v92) = 256;
    HIWORD(v92) = v126;
    *(&v92 + 10) = v125;
    LOBYTE(v93) = v27;
    DWORD1(v93) = *&v124[3];
    *(&v93 + 1) = *v124;
    *(&v93 + 1) = v29;
    *&v94[0] = v31;
    *(&v94[0] + 1) = v33;
    *&v94[1] = v35;
    BYTE8(v94[1]) = 0;
    *(v81 + 9) = *(v94 + 9);
    v79 = v92;
    v80 = v93;
    *&v95 = v37 * 0.5;
    *(&v95 + 1) = v37;
    *&v96 = __PAIR64__(v39, v38);
    *(&v96 + 1) = v40;
    *&v97 = v41;
    *(&v97 + 1) = v42;
    *&v98 = v36;
    WORD4(v98) = 256;
    HIWORD(v98) = v88;
    *(&v98 + 10) = v87;
    *&v99 = v43;
    *(&v99 + 1) = v44;
    v81[0] = v94[0];
    v82 = v95;
    v83 = v96;
    v85 = v98;
    v86 = v99;
    v84 = v97;
    v45 = v89[1];
    *a2 = v89[0];
    a2[1] = v45;
    v46 = v77;
    v47 = v78[0];
    v48 = v79;
    a2[4] = v78[1];
    a2[5] = v48;
    a2[2] = v46;
    a2[3] = v47;
    v49 = v80;
    v50 = v81[0];
    v51 = v82;
    a2[8] = v81[1];
    a2[9] = v51;
    a2[6] = v49;
    a2[7] = v50;
    v52 = v83;
    v53 = v84;
    v54 = v86;
    a2[12] = v85;
    a2[13] = v54;
    a2[10] = v52;
    a2[11] = v53;
    v100[0] = v37 * 0.5;
    v100[1] = v37;
    v101 = v38;
    v102 = v39;
    v103 = v40;
    v104 = v41;
    v105 = v42;
    v106 = v36;
    v107 = 256;
    v108 = v87;
    v109 = v88;
    v110 = v43;
    v111 = v44;
    sub_100026310(v89, &v65, &qword_1000E1F50, &qword_100085D20);
    sub_100026310(&v92, &v65, &qword_1000E1F08, &unk_100085CE8);
    sub_100026310(&v95, &v65, &qword_1000E1F20, &qword_100085D00);
    sub_1000256C0(v100, &qword_1000E1F20, &qword_100085D00);
    v112 = v25;
    v113 = 256;
    v114 = v125;
    v115 = v126;
    v116 = v57;
    *v117 = *v124;
    *&v117[3] = *&v124[3];
    v118 = v29;
    v119 = v31;
    v120 = v33;
    v121 = v35;
    v122 = 0;
    sub_1000256C0(&v112, &qword_1000E1F08, &unk_100085CE8);
    v65 = v64;
    v66 = v58;
    v67 = 0x3FF0000000000000;
    v68 = v63;
    *v69 = *v128;
    *&v69[3] = *&v128[3];
    v70 = v62;
    v71 = v61;
    v72 = v60;
    v73 = v59;
    v74 = 0;
    return sub_1000256C0(&v65, &qword_1000E1F50, &qword_100085D20);
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

uint64_t sub_100069C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100069C48()
{
  result = qword_1000E1D88;
  if (!qword_1000E1D88)
  {
    sub_100015288(&qword_1000E1D70, &qword_100085B70);
    sub_100069C00(&qword_1000E1D78, type metadata accessor for CoarseUserLocationView, &unk_100085C70);
    sub_100069C00(&qword_1000E1D80, type metadata accessor for PreciseUserLocationView, &unk_100085C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1D88);
  }

  return result;
}

uint64_t sub_100069D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100069E24(uint64_t a1)
{
  sub_100069EE8(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100069EE8(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100069EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100069F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100015240(&qword_1000E04A0, &unk_1000844A0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10006A098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100015240(&qword_1000E04A0, &unk_1000844A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006A1B8(uint64_t a1)
{
  sub_100069EE8(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100069EE8(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10006A28C()
{
  result = qword_1000E1EC0;
  if (!qword_1000E1EC0)
  {
    sub_100015288(&qword_1000E1EC8, &qword_100085C18);
    sub_100069C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1EC0);
  }

  return result;
}

unint64_t sub_10006A350()
{
  result = qword_1000E1EE0;
  if (!qword_1000E1EE0)
  {
    sub_100015288(&qword_1000E1ED0, &qword_100085CC0);
    sub_10002DDAC(&qword_1000E1EE8, &qword_1000E1EF0, &qword_100085CD0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1EE0);
  }

  return result;
}

unint64_t sub_10006A408()
{
  result = qword_1000E1F10;
  if (!qword_1000E1F10)
  {
    sub_100015288(&qword_1000E1F08, &unk_100085CE8);
    sub_10002DDAC(&qword_1000E0568, &qword_1000E0570, &qword_1000845A0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F10);
  }

  return result;
}

unint64_t sub_10006A4C0()
{
  result = qword_1000E1F38;
  if (!qword_1000E1F38)
  {
    sub_100015288(&qword_1000E1F30, &qword_100085D10);
    sub_10002DDAC(&qword_1000E1F40, &qword_1000E1F48, &qword_100085D18, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1F38);
  }

  return result;
}

uint64_t sub_10006A578(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    sub_100069C00(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10006A674(uint64_t a1)
{
  sub_10004999C();
  if (v1 <= 0x3F)
  {
    sub_10006A760(319, &qword_1000E19C8, type metadata accessor for GEOTransportType);
    if (v2 <= 0x3F)
    {
      sub_10006A760(319, &unk_1000E1FE0, type metadata accessor for NavigationETAEntryContent.ResolvedContent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006A760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E1340, &qword_1000852A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006A9B8(uint64_t a1, char *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v62 = a3;
  v63 = a4;
  v6 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v6 - 8);
  v56 = &v52 - v7;
  v54 = type metadata accessor for NavigationETAEntryContent(0);
  __chkstk_darwin(v54);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v9 - 8);
  v57 = &v52 - v10;
  v11 = sub_10007E0C8();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  v13 = __chkstk_darwin(v11);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for NavigationETAEntryContentResolver(0);
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  __chkstk_darwin(v16);
  v18 = sub_10007DFF8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_10007E0B8();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for WidgetFamily.systemSmall(_:) || v22 == enum case for WidgetFamily.systemMedium(_:) || v22 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v56 = a2;
    v33 = sub_10007D5C8();
    sub_1000046BC(v33, qword_1000E4B28);
    v34 = sub_10007D5A8();
    v35 = sub_10007E288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "NavigationETAEntryContentResolver: generating map snapshot (supported for this family)", v36, 2u);
    }

    v55 = *(v58 + *(v16 + 20));
    v37 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10006B590(v58, v37, type metadata accessor for NavigationETAEntryContentResolver);
    v38 = v59;
    v39 = v60;
    v58 = *(v59 + 16);
    v40 = v61;
    v58(v15, v61, v60);
    v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v42 = (v17 + *(v38 + 80) + v41) & ~*(v38 + 80);
    v43 = swift_allocObject();
    sub_10006B5F8(v37, v43 + v41);
    (*(v38 + 32))(v43 + v42, v15, v39);
    v44 = (v43 + ((v12 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
    v45 = v63;
    *v44 = v62;
    v44[1] = v45;
    v46 = v53;
    v58(v53, v40, v39);
    type metadata accessor for NavigationETASnapshotter();
    swift_allocObject();

    v47 = v55;
    sub_100067850(v46, v47);

    v48 = sub_10007D3B8();
    v49 = *(v48 - 8);
    v50 = v57;
    (*(v49 + 16))(v57, v56, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10006B65C;
    *(v51 + 24) = v43;

    sub_10003AB38(v50, sub_10004B290, v51);

    return sub_1000256C0(v50, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v22 == enum case for WidgetFamily.systemExtraLarge(_:) || v22 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v22 == enum case for WidgetFamily.accessoryCorner(_:) || v22 == enum case for WidgetFamily.accessoryCircular(_:) || v22 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v23 = sub_10007D5C8();
    sub_1000046BC(v23, qword_1000E4B28);
    v24 = sub_10007D5A8();
    v25 = sub_10007E288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "NavigationETAEntryContentResolver: skipping map snapshot (not supported for this family)", v26, 2u);
    }

    v27 = v55;
    sub_10006B590(v58, v55, type metadata accessor for NavigationETAEntryContent);
    v28 = v27 + *(v54 + 36);
    sub_1000256C0(v28, &qword_1000E1340, &qword_1000852A0);
    (*(v59 + 16))(v28, v61, v60);
    v29 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
    *(v28 + *(v29 + 20)) = xmmword_1000845B0;
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = v56;
    sub_10006B590(v27, v56, type metadata accessor for NavigationETAEntryContent);
    v31 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    v62(v30);
    sub_1000256C0(v30, &qword_1000DE630, &unk_1000861F0);
    return sub_10006B534(v27);
  }
}

uint64_t sub_10006B2DC(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v10 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for NavigationETAEntryContent(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B590(a3, v16, type metadata accessor for NavigationETAEntryContent);
  v17 = &v16[*(v14 + 44)];
  sub_1000256C0(v17, &qword_1000E1340, &qword_1000852A0);
  v18 = sub_10007E0C8();
  (*(*(v18 - 8) + 16))(v17, a4, v18);
  v19 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
  v20 = (v17 + *(v19 + 20));
  *v20 = a1;
  v20[1] = a2;
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_10006B590(v16, v12, type metadata accessor for NavigationETAEntryContent);
  v21 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1000301E4(a1, a2);
  a5(v12);
  sub_1000256C0(v12, &qword_1000DE630, &unk_1000861F0);
  return sub_10006B534(v16);
}

uint64_t sub_10006B534(uint64_t a1)
{
  v2 = type metadata accessor for NavigationETAEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationETAEntryContentResolver(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B65C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for NavigationETAEntryContentResolver(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007E0C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006B2DC(a1, a2, v2 + v6, v2 + v9, v10);
}

uint64_t sub_10006B770@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10006C83C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007DFF8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007E2B8();
    v13 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10006B958@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v46 = sub_100015240(&qword_1000DE2A0, &qword_1000822A8);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v44 - v1;
  v52 = sub_100015240(&qword_1000DE298, &qword_1000822A0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - v2;
  v59 = sub_100015240(&qword_1000DE290, &qword_100082298);
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v51 = &v44 - v3;
  v61 = sub_100015240(&qword_1000DE288, &qword_100082290);
  v57 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = &v44 - v4;
  v62 = sub_100015240(&qword_1000DE2B8, &qword_1000822B8);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v54 = &v44 - v5;
  v65 = sub_100015240(&qword_1000DE2B0, &qword_1000822B0);
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v55 = &v44 - v6;
  v66 = sub_100015240(&qword_1000E2220, &qword_100085E48);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v44 - v7;
  v8 = sub_10007DFF8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for GeneralMapsWidget(0);
  __chkstk_darwin(v48);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v14 = sub_10007D5C8();
  sub_1000046BC(v14, qword_1000E4B28);
  sub_10000413C(v68, v13, type metadata accessor for GeneralMapsWidget);
  v15 = sub_10007D5A8();
  v16 = sub_10007E288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v69 = v18;
    *v17 = 136446210;
    sub_10006B770(v11);
    sub_10006C7F4(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v19 = sub_10007E588();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    sub_10006C798(v13);
    v22 = sub_100051190(v19, v21, &v69);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "GeneralMapsWidget: Avocado called GeneralMapsWidget 'body' (requesting size %{public}s)", v17, 0xCu);
    sub_1000250AC(v18);
  }

  else
  {

    sub_10006C798(v13);
  }

  v69 = *(v68 + *(v48 + 20));
  type metadata accessor for WidgetContentView(0);
  type metadata accessor for GeneralMapsTimelineProvider(0);
  sub_10006C7F4(&qword_1000E2228, type metadata accessor for WidgetContentView, &unk_100083DD4);
  sub_10006C7F4(&qword_1000E2230, type metadata accessor for GeneralMapsTimelineProvider, &unk_100085F88);

  v23 = v49;
  sub_10007E058();
  sub_10007D8F8();
  v24 = sub_1000152D0();
  v25 = v45;
  v26 = v46;
  sub_10007D9A8();

  (*(v47 + 8))(v23, v26);
  v69 = v26;
  v70 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v51;
  v28 = v52;
  sub_10007D978();
  (*(v50 + 8))(v25, v28);
  sub_10007D8F8();
  v69 = v28;
  v70 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v53;
  v32 = v59;
  sub_10007D968();

  (*(v56 + 8))(v29, v32);
  v69 = v32;
  v70 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v54;
  v35 = v61;
  sub_10007D9B8();
  (*(v57 + 8))(v31, v35);
  v69 = v35;
  v70 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v55;
  v38 = v62;
  sub_10007D9C8();
  (*(v58 + 8))(v34, v38);
  v69 = v38;
  v70 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v63;
  v41 = v65;
  sub_10007D998();
  (*(v60 + 8))(v37, v41);
  sub_100015240(&qword_1000E2238, &unk_100085E50);
  sub_10007E028();
  *(swift_allocObject() + 16) = xmmword_100082810;
  sub_10007E018();
  sub_10007E008();
  v69 = v41;
  v70 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v66;
  sub_10007D988();

  return (*(v64 + 8))(v40, v42);
}

uint64_t sub_10006C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000413C(a1, a2, type metadata accessor for GeneralMapsTimelineEntry);
  v3 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GeneralMapsWidget(0);
  sub_10006C7F4(&qword_1000E2170, type metadata accessor for GeneralMapsWidget, &unk_100085E04);
  sub_10007DDF8();
  return 0;
}

uint64_t type metadata accessor for GeneralMapsWidget(uint64_t a1)
{
  result = qword_1000E21D0;
  if (!qword_1000E21D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C614(uint64_t a1)
{
  sub_10006C6F8(319, &qword_1000DEBB0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GeneralMapsTimelineProvider(319);
    if (v2 <= 0x3F)
    {
      sub_10006C6F8(319, &unk_1000E21E0, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006C6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10007DFF8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10006C798(uint64_t a1)
{
  v2 = type metadata accessor for GeneralMapsWidget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006C7F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006C83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10006C8AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10007E4F8();

    if (v4)
    {
      sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100077B00(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10006C970()
{
  v1 = OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_expiration;
  v2 = sub_10007D3B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10006CA2C()
{
  v1 = v0;
  v16 = sub_10007E318();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007E2F8();
  __chkstk_darwin(v5);
  v6 = sub_10007DED8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v15[0] = "n";
  v15[1] = v7;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_10007DEC8();
  v17 = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000E0968, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100015240(&qword_1000E0970, &unk_100085FE0);
  sub_100077198(&qword_1000E0978, &qword_1000E0970, &unk_100085FE0);
  sub_10007E3F8();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + 120) = sub_10007E348();
  *(v0 + 128) = 0;
  v8 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  v9 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_maxTimelineAge) = 0x402E000000000000;
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_maxFreshLocationAge) = 0x4072C00000000000;
  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = 0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v10 = sub_10007D5C8();
  sub_1000046BC(v10, qword_1000E4B28);
  v11 = sub_10007D5A8();
  v12 = sub_10007E298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "GeneralMapsTimelineProvider init", v13, 2u);
  }

  return v1;
}

uint64_t sub_10006CDD0()
{
  v1 = v0;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v2 = sub_10007D5C8();
  sub_1000046BC(v2, qword_1000E4B28);
  v3 = sub_10007D5A8();
  v4 = sub_10007E298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "GeneralMapsTimelineProvider deinit", v5, 2u);
  }

  sub_100025EF8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));

  sub_1000256C0(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline, &qword_1000E24F0, &qword_100085FF0);
  return v1;
}

uint64_t sub_10006CF14()
{
  sub_10006CDD0();

  return swift_deallocClassInstance();
}

void sub_10006CF94(uint64_t a1)
{
  sub_10006D058(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006D058(uint64_t a1)
{
  if (!qword_1000E22A0)
  {
    type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(255);
    v1 = sub_10007E3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E22A0);
    }
  }
}

uint64_t sub_10006D0F8(uint64_t a1)
{
  result = sub_10007D3B8();
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

void sub_10006D1C0(uint64_t a1)
{
  sub_10006D244(319);
  if (v1 <= 0x3F)
  {
    sub_10007D3B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006D244(uint64_t a1)
{
  if (!qword_1000E24B0)
  {
    sub_100015288(&unk_1000E24B8, qword_100085F70);
    v1 = sub_10007E1F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E24B0);
    }
  }
}

double sub_10006D2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = sub_10007DEB8();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007DED8();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D3B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + 120);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  aBlock[4] = sub_100077840;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C97B8;
  v21 = _Block_copy(aBlock);

  sub_10007DEC8();
  v30 = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v21);
  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);

  return result;
}

void sub_10006D698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = v3 == a3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v10 = *(a2 + 96);
    v19[4] = *(a2 + 80);
    v19[5] = v10;
    v20 = *(a2 + 112);
    v11 = *(a2 + 32);
    v19[0] = *(a2 + 16);
    v19[1] = v11;
    v12 = *(a2 + 64);
    v19[2] = *(a2 + 48);
    v19[3] = v12;
    v13 = *(a1 + 16);
    *(a2 + 16) = *a1;
    *(a2 + 32) = v13;
    v14 = *(a1 + 80);
    *(a2 + 80) = *(a1 + 64);
    *(a2 + 96) = v14;
    v15 = *(a1 + 48);
    *(a2 + 48) = *(a1 + 32);
    *(a2 + 64) = v15;
    *(a2 + 112) = *(a1 + 96);
    sub_1000256C0(v19, &qword_1000DE950, &qword_100082918);
    sub_100025354(a1, v18);
    sub_10006D840();
    *(a2 + 128) = 0;

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtCC17GeneralMapsWidget27GeneralMapsTimelineProviderP33_E134A4B3F820D74145B932C0401CE63122StateCollectionSession_group));
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v5 = sub_10007D5C8();
    sub_1000046BC(v5, qword_1000E4B28);
    oslog = sub_10007D5A8();
    v6 = sub_10007E2A8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "GeneralMapsTimelineProvider: refreshIfNeeded: ignoring expired state collector", v7, 2u);
    }
  }
}

void sub_10006D840()
{
  v595 = type metadata accessor for NearbyEntryContent(0);
  v2 = __chkstk_darwin(v595);
  v594 = &v575 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v599 = (&v575 - v4);
  v640 = sub_10007D3E8();
  v601 = *(v640 - 8);
  v5 = __chkstk_darwin(v640);
  v598 = &v575 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v632 = &v575 - v7;
  v621 = type metadata accessor for SuggestedDestinationEntryContent(0);
  v8 = __chkstk_darwin(v621);
  v626 = &v575 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v613 = &v575 - v11;
  __chkstk_darwin(v10);
  v647 = &v575 - v12;
  v610 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v13 = __chkstk_darwin(v610);
  v620 = &v575 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v606 = &v575 - v16;
  v17 = __chkstk_darwin(v15);
  v629 = &v575 - v18;
  v19 = __chkstk_darwin(v17);
  v609 = &v575 - v20;
  v21 = __chkstk_darwin(v19);
  v628 = &v575 - v22;
  v23 = __chkstk_darwin(v21);
  v607 = &v575 - v24;
  v25 = __chkstk_darwin(v23);
  v643 = &v575 - v26;
  __chkstk_darwin(v25);
  v657 = &v575 - v27;
  v615 = type metadata accessor for CommuteWindowEntryContent(0);
  __chkstk_darwin(v615);
  v633 = &v575 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v656 = sub_10007D238();
  v593 = *(v656 - 8);
  __chkstk_darwin(v656);
  v652 = &v575 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v651 = type metadata accessor for CommuteWindowDetailsString(0);
  v646 = *(v651 - 8);
  __chkstk_darwin(v651);
  v634 = &v575 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  __chkstk_darwin(v31 - 8);
  v612 = &v575 - v32;
  v637 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v638 = *(v637 - 8);
  v33 = __chkstk_darwin(v637);
  v588 = &v575 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v590 = &v575 - v36;
  v37 = __chkstk_darwin(v35);
  v592 = &v575 - v38;
  v39 = __chkstk_darwin(v37);
  v589 = &v575 - v40;
  v41 = __chkstk_darwin(v39);
  v619 = &v575 - v42;
  v43 = __chkstk_darwin(v41);
  v614 = &v575 - v44;
  v45 = __chkstk_darwin(v43);
  v605 = &v575 - v46;
  v47 = __chkstk_darwin(v45);
  v616 = (&v575 - v48);
  __chkstk_darwin(v47);
  v630 = &v575 - v49;
  v624 = type metadata accessor for NavigationETAEntryContent(0);
  __chkstk_darwin(v624);
  v639 = &v575 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v658 = sub_10007D3B8();
  v641 = *(v658 - 8);
  v51 = __chkstk_darwin(v658);
  v618 = &v575 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v600 = &v575 - v54;
  v55 = __chkstk_darwin(v53);
  v602 = &v575 - v56;
  v57 = __chkstk_darwin(v55);
  v645 = &v575 - v58;
  v59 = __chkstk_darwin(v57);
  v627 = &v575 - v60;
  v61 = __chkstk_darwin(v59);
  v636 = &v575 - v62;
  v63 = __chkstk_darwin(v61);
  v635 = &v575 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v575 - v66;
  v68 = __chkstk_darwin(v65);
  v70 = &v575 - v69;
  v71 = __chkstk_darwin(v68);
  v623 = &v575 - v72;
  v73 = __chkstk_darwin(v71);
  v625 = &v575 - v74;
  v75 = __chkstk_darwin(v73);
  v77 = &v575 - v76;
  __chkstk_darwin(v75);
  v644 = (&v575 - v78);
  v631 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v611 = *(v631 - 8);
  __chkstk_darwin(v631);
  v654 = (&v575 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_10007DF48();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v83 = &v575 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v0 + 120);
  *v83 = v84;
  (*(v81 + 104))(v83, enum case for DispatchPredicate.onQueue(_:), v80);
  v85 = v84;
  v86 = sub_10007DF68();
  v88 = *(v81 + 8);
  v87 = (v81 + 8);
  v88(v83, v80);
  if ((v86 & 1) == 0)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
    goto LABEL_4;
  }

  v597 = v70;
  v89 = *(v0 + 32);
  v666 = *(v0 + 16);
  v667 = v89;
  v90 = *(v0 + 64);
  v668 = *(v0 + 48);
  v669 = v90;
  v91 = *(v0 + 96);
  v670 = *(v0 + 80);
  v671 = v91;
  v92 = *(v0 + 112);
  v672 = *(v0 + 112);
  v93 = v669;
  if (!v669)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v115 = sub_10007D5C8();
    sub_1000046BC(v115, qword_1000E4B28);
    v116 = sub_10007D5A8();
    v117 = sub_10007E2A8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "GeneralMapsTimelineProvider: generateResolvableTimeline (failed: invalid state)", v118, 2u);
    }

    return;
  }

  v622 = v77;
  LODWORD(v586) = v92;
  v655 = v67;
  v603 = v0;
  v581 = *(&v666 + 1);
  v94 = v666;
  v579 = v667;
  v95 = *(&v667 + 1);
  v97 = *(&v668 + 1);
  v96 = v668;
  v98 = *(&v669 + 1);
  v99 = *(&v670 + 1);
  v100 = v670;
  v101 = *(&v671 + 1);
  v585 = v671;
  v1 = v654;
  *v654 = _swiftEmptyArrayStorage;
  *&v653 = *(v631 + 20);
  v648 = v101;

  v604 = v94;
  v596 = v94;
  v578 = v95;
  v577 = v95;
  v580 = v96;

  v642 = v97;

  v608 = v93;

  v591 = v98;
  v583 = v98;
  *&v584 = v100;
  *&v582 = v100;
  v617 = v99;
  v587 = v99;
  v102 = v653;
  sub_10007D3A8();
  v70 = v641;
  v83 = v641 + 16;
  v86 = *(v641 + 16);
  v103 = v1 + v102;
  v0 = v644;
  v87 = v658;
  (v86)(v644, v103, v658);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_84;
  }

LABEL_4:
  v104 = sub_10007D5C8();
  v105 = sub_1000046BC(v104, qword_1000E4B28);
  v106 = v622;
  v650 = v83;
  v649 = v86;
  (v86)(v622, v0, v87);
  *&v653 = v105;
  v107 = sub_10007D5A8();
  v108 = sub_10007E288();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v661 = v110;
    *v109 = 136446210;
    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v111 = sub_10007E588();
    v113 = v112;
    v70 = *(v70 + 8);
    (v70)(v106, v87);
    v114 = sub_100051190(v111, v113, &v661);
    v1 = v654;

    *(v109 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v107, v108, "GeneralMapsTimelineProvider: generateResolvableTimeline, starting at %{public}s", v109, 0xCu);
    sub_1000250AC(v110);
  }

  else
  {

    v70 = *(v70 + 8);
    (v70)(v106, v87);
  }

  v119 = v648;
  v120 = v644;
  v121 = v634;
  v648 = v70;
  if (v617 && v119)
  {
    v122 = v587;

    v123 = [v122 waypoints];
    if (v123)
    {
      v124 = v123;
      sub_10002620C(0, &qword_1000E2510, GEOComposedWaypoint_ptr);
      v125 = sub_10007E1D8();

      if (v125 >> 62)
      {
        v126 = sub_10007E528();
      }

      else
      {
        v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v127 = [v122 nextWaypoint];
      v128 = [v127 name];

      v70 = v1;
      if (v126 < 3)
      {
        if (!v128)
        {
          v1 = v658;
          if (qword_1000DE280 != -1)
          {
            swift_once();
          }

          v129.super.isa = qword_1000E4B68;
          v574._countAndFlagsBits = 0x8000000100090FD0;
          v133._countAndFlagsBits = 0x74616E6974736544;
          v133._object = 0xEB000000006E6F69;
          v130._object = 0x8000000100090FB0;
          v131 = 0xD000000000000034;
          v130._countAndFlagsBits = 0xD00000000000001DLL;
          v132.value._countAndFlagsBits = 0;
          v132.value._object = 0;
          goto LABEL_39;
        }
      }

      else if (!v128)
      {
        v0 = "dance/Route Genius.";
        v87 = 0x8000000100091090;
        v1 = v658;
        if (qword_1000DE280 == -1)
        {
LABEL_20:
          v129.super.isa = qword_1000E4B68;
          v130._countAndFlagsBits = 0xD00000000000001BLL;
          v574._countAndFlagsBits = v87;
          v133._countAndFlagsBits = 0x6F7453207478654ELL;
          v130._object = (v0 | 0x8000000000000000);
          v131 = 0xD00000000000003ALL;
          v132.value._countAndFlagsBits = 0;
          v132.value._object = 0;
          v133._object = 0xE900000000000070;
LABEL_39:
          v144 = sub_10007D258(v130, v132, v129, v133, v131, v574);
          v146 = v148;
          v147 = v624;
          goto LABEL_40;
        }

LABEL_225:
        swift_once();
        goto LABEL_20;
      }

      v144 = sub_10007E158();
      v146 = v145;

      v147 = v624;
      v1 = v658;
LABEL_40:
      v149 = *(v147 + 36);
      v150 = type metadata accessor for NavigationETAEntryContent.ResolvedContent(0);
      v151 = v639;
      (*(*(v150 - 8) + 56))(&v639[v149], 1, 1, v150);
      *(v151 + 2) = v144;
      *(v151 + 3) = v146;
      *(v151 + 5) = v585;
      *(v151 + 6) = v119;
      v151[56] = v586 & 1;
      *v151 = sub_10002E01C();
      *(v151 + 1) = v152;
      *(v151 + 8) = [v122 transportType];
      v151[36] = 0;
      v153 = v625;
      v649(v625, v120, v1);
      v154 = sub_10007D5A8();
      v155 = v1;
      v156 = sub_10007E288();
      if (os_log_type_enabled(v154, v156))
      {
        v157 = v153;
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v661 = v159;
        *v158 = 136446210;
        sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v160 = sub_10007E588();
        v162 = v161;
        (v648)(v157, v155);
        v163 = sub_100051190(v160, v162, &v661);
        v120 = v644;

        *(v158 + 4) = v163;
        _os_log_impl(&_mh_execute_header, v154, v156, "GeneralMapsTimelineProvider: generateResolvableTimeline added NavigationETA entry at %{public}s", v158, 0xCu);
        sub_1000250AC(v159);
        v70 = v654;
      }

      else
      {

        (v648)(v153, v1);
      }

      v164 = v155;
      v165 = v611;
      v166 = v630;
      v167 = type metadata accessor for NavigationETAEntryContentResolver(0);
      v663 = v167;
      v664 = &off_1000C96B0;
      v168 = sub_1000779DC(&v661);
      sub_1000797A8(v639, v168, type metadata accessor for NavigationETAEntryContent);
      *(v168 + *(v167 + 20)) = v122;
      v169 = *(v637 + 48);
      v649(v166, v120, v155);
      sub_100077A40(&v661, v166 + v169);
      v170 = v122;
      v171 = sub_100077348(0, 1, 1, _swiftEmptyArrayStorage);
      v173 = v171[2];
      v172 = v171[3];
      if (v173 >= v172 >> 1)
      {
        v171 = sub_100077348((v172 > 1), v173 + 1, 1, v171);
      }

      sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);

      (v648)(v120, v164);
      v171[2] = v173 + 1;
      sub_10002DB0C(v166, v171 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v173, &unk_1000E24B8, qword_100085F70);
      *v70 = v171;
      v174 = v612;
      sub_100077E94(v70, v612, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
      (*(v165 + 56))(v174, 0, 1, v631);
      v175 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
      v176 = v603;
      swift_beginAccess();
      sub_10007796C(v174, v176 + v175);
      swift_endAccess();
      sub_100077A58(v639, type metadata accessor for NavigationETAEntryContent);
      return;
    }

LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  if (!v591 || !v584)
  {
LABEL_88:
    v649(v655, v120, v658);
    v244 = v642;
    if (v642)
    {
      v245 = (v642 & 0xFFFFFFFFFFFFFF8);
      if (v642 >> 62)
      {
LABEL_217:
        v246 = sub_10007E528();
        v244 = v642;
        if (v246)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v246 = *((v642 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v246)
        {
LABEL_91:
          v624 = v244 & 0xC000000000000001;

          swift_beginAccess();
          v633 = (v641 + 32);
          v615 = v641 + 56;
          v646 = (v641 + 48);
          v625 = (v641 + 8);
          v587 = "SuggestionsWidgetExpirationKey";
          v586 = 0x8000000100090F50;
          if (v604)
          {
            v248 = v581 == 0;
          }

          else
          {
            v248 = 0;
          }

          v249 = v248;
          LODWORD(v585) = v249;
          v591 = (v601 + 56);
          v583 = (v601 + 16);
          v597 = (v641 + 40);
          v576 = (v601 + 8);
          v250 = _swiftEmptyArrayStorage;
          *&v247 = 136380675;
          v575 = v247;
          *&v247 = 136381187;
          v584 = v247;
          *&v247 = 136446210;
          v582 = v247;
          v622 = v246;
          v623 = v245;
          v251 = 0;
          while (1)
          {
            if (v624)
            {
              v260 = sub_10007E468();
            }

            else
            {
              if (v251 >= *(v245 + 2))
              {
                goto LABEL_214;
              }

              v260 = *(v642 + 8 * v251 + 32);
            }

            v245 = v260;
            if (__OFADD__(v251, 1))
            {
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
              goto LABEL_217;
            }

            v651 = v251 + 1;
            v261 = [v260 MKMapItem];
            v652 = v251;
            if (v261)
            {
              v262 = v261;
              v263 = [v245 dateForKey:@"MapsSuggestionsWidgetExpirationKey"];
              v639 = v262;
              if (v263)
              {
                v264 = v635;
                v265 = v263;
                sub_10007D388();

                v266 = *v633;
                v267 = v643;
                v268 = v658;
                (*v633)(v643, v264, v658);
                v269 = *v615;
                (*v615)(v267, 0, 1, v268);
                v270 = v657;
                v266(v657, v267, v268);
                v271 = v270;
                v272 = v250;
                v273 = v268;
                (v269)(v271, 0, 1, v268);
                v120 = &qword_1000DE928;
              }

              else
              {
                v277 = *v615;
                v278 = v658;
                (*v615)(v643, 1, 1, v658);
                v279 = [v245 expires];
                if (v279)
                {
                  v280 = v607;
                  v281 = v279;
                  sub_10007D388();

                  v282 = v280;
                }

                else
                {
                  v282 = v607;
                }

                v272 = v250;
                v283 = v282;
                v277();
                v284 = v283;
                v271 = v657;
                v120 = &qword_1000DE928;
                sub_10002DB0C(v284, v657, &qword_1000DE928, &unk_100082900);
                v273 = v278;
                if ((*v646)(v643, 1, v278) != 1)
                {
                  sub_1000256C0(v643, &qword_1000DE928, &unk_100082900);
                }
              }

              v285 = v628;
              sub_100026310(v271, v628, &qword_1000DE928, &unk_100082900);
              v286 = v245;
              v287 = sub_10007D5A8();
              v288 = sub_10007E298();

              v289 = os_log_type_enabled(v287, v288);
              *&v656 = v286;
              if (v289)
              {
                v290 = swift_slowAlloc();
                v634 = swift_slowAlloc();
                *&v661 = v634;
                *v290 = v584;
                v291 = [v286 undecoratedTitle];
                v292 = v285;
                v293 = sub_10007E158();
                v294 = v272;
                v296 = v295;

                v297 = sub_100051190(v293, v296, &v661);
                v272 = v294;
                v120 = &qword_1000DE928;

                *(v290 + 4) = v297;
                *(v290 + 12) = 2082;
                sub_100026310(v292, v609, &qword_1000DE928, &unk_100082900);
                v298 = sub_10007E168();
                v300 = v299;
                sub_1000256C0(v292, &qword_1000DE928, &unk_100082900);
                v301 = sub_100051190(v298, v300, &v661);

                *(v290 + 14) = v301;
                *(v290 + 22) = 2082;
                sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v302 = sub_10007E588();
                v304 = sub_100051190(v302, v303, &v661);

                *(v290 + 24) = v304;
                _os_log_impl(&_mh_execute_header, v287, v288, "GeneralMapsTimelineProvider: generateResolvableTimeline suggestions entry (%{private}s) suggestionEnd: %{public}s lastEnd: %{public}s", v290, 0x20u);
                swift_arrayDestroy();
                v1 = v658;

                v305 = v629;
              }

              else
              {

                sub_1000256C0(v285, &qword_1000DE928, &unk_100082900);
                v305 = v629;
                v1 = v273;
              }

              sub_100026310(v657, v305, &qword_1000DE928, &unk_100082900);
              v634 = *v646;
              v306 = (v634)(v305, 1, v1);
              v307 = v627;
              v308 = v636;
              v250 = v272;
              if (v306 == 1)
              {
                sub_1000256C0(v305, &qword_1000DE928, &unk_100082900);
                v309 = v656;
                goto LABEL_122;
              }

              (*v633)(v636, v305, v1);
              sub_100077AB8(&qword_1000E2500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v310 = sub_10007E118();
              v309 = v656;
              if (v310)
              {
                (v648)(v308, v1);
LABEL_122:
                v311 = sub_10006C8AC(v309, v608);
                v312 = [v309 undecoratedTitle];
                v313 = sub_10007E158();
                v315 = v314;

                if (qword_1000DE280 != -1)
                {
                  swift_once();
                }

                v316.super.isa = qword_1000E4B68;
                v574._countAndFlagsBits = v586;
                v675._countAndFlagsBits = 0xD00000000000002BLL;
                v675._object = (v587 | 0x8000000000000000);
                v678.value._countAndFlagsBits = 0;
                v678.value._object = 0;
                v681._countAndFlagsBits = 45;
                v681._object = 0xE100000000000000;
                v318 = sub_10007D258(v675, v678, v316, v681, 0xD000000000000052, v574);
                v319 = v317;
                v630 = v311;
                v617 = v315;
                if (v311)
                {
                  v320 = v317;
                  v321 = v311;
                  v322 = sub_100040C54();
                  v324 = sub_10006445C(v322, v323, [v321 transportType]);
                  v319 = v325;

                  if (v319)
                  {

                    v318 = v324;
                    v1 = v658;
                  }

                  else
                  {
                    v1 = v658;
                    v319 = v320;
                  }
                }

                else
                {
                  v326 = [v656 undecoratedSubtitle];
                  if (v326)
                  {
                    v327 = v326;
                    v318 = sub_10007E158();
                    v319 = v328;
                  }
                }

                v348 = v656;
                v349 = [v656 type];
                v350 = *(v621 + 40);
                v351 = type metadata accessor for SuggestedDestinationEntryContent.ResolvedContent(0);
                v120 = v647;
                (*(*(v351 - 8) + 56))(&v647[v350], 1, 1, v351);
                v352 = v617;
                *v120 = v313;
                *(v120 + 8) = v352;
                *(v120 + 16) = v318;
                *(v120 + 24) = v319;
                v617 = v319;
                *(v120 + 32) = v349;
                *(v120 + 40) = 0;
                *(v120 + 48) = 2;
                *(v120 + 56) = sub_10002E2C0();
                *(v120 + 64) = v353;
                v354 = v630;
                if (v630)
                {
                  LODWORD(v245) = [v630 transportType];
                  goto LABEL_138;
                }

                v245 = GEOTransportTypeFromUserPreference();
                if ([v348 containsKey:@"MapsSuggestionsTransportTypeKey"])
                {
                  v355 = [v348 integerForKey:@"MapsSuggestionsTransportTypeKey"];
                  if (v355 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_215;
                  }

                  v245 = v355;
                  v120 = v647;
                  if (v355 > 0x7FFFFFFF)
                  {
                    goto LABEL_216;
                  }
                }

                else
                {
LABEL_138:
                  v120 = v647;
                }

                *(v120 + 72) = v245;
                *(v120 + 76) = 0;
                if (v585)
                {
                  v649(v645, v655, v1);
                  v356 = v596;
                  sub_10007D3D8();
                  swift_beginAccess();
                  v593 = v356;
                  v357 = [v356 timestamp];
                  v358 = v635;
                  sub_10007D388();

                  sub_10007D2B8();
                  v360 = v359;
                  v361 = v358;
                  v362 = v1;
                  (v648)(v361, v1);
                  v1 = v654;
                  if (v360 < 300.0)
                  {
                    v616 = v250;
                    v363 = v613;
                    sub_1000797A8(v120, v613, type metadata accessor for SuggestedDestinationEntryContent);
                    *(v363 + 40) = 0;
                    *(v363 + 48) = 0;
                    v364 = sub_10007D5A8();
                    v365 = sub_10007E288();
                    if (os_log_type_enabled(v364, v365))
                    {
                      v366 = swift_slowAlloc();
                      v367 = swift_slowAlloc();
                      *&v661 = v367;
                      *v366 = v582;
                      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                      v368 = sub_10007E588();
                      v370 = v362;
                      v371 = sub_100051190(v368, v369, &v661);

                      *(v366 + 4) = v371;
                      _os_log_impl(&_mh_execute_header, v364, v365, "GeneralMapsTimelineProvider: generateResolvableTimeline added fresh-location SuggestedDestination entry at %{public}s", v366, 0xCu);
                      sub_1000250AC(v367);
                    }

                    else
                    {

                      v370 = v362;
                    }

                    v392 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                    v663 = v392;
                    v664 = &off_1000C9480;
                    v393 = sub_1000779DC(&v661);
                    sub_1000797A8(v613, v393, type metadata accessor for SuggestedDestinationEntryContent);
                    v394 = v593;
                    v395 = v639;
                    v396 = [v656 styleAttributes];
                    v397 = v392[9];
                    v398 = v640;
                    (*v583)(v393 + v397, v632, v640);
                    (*v591)(v393 + v397, 0, 1, v398);
                    v399 = v605;
                    *(v393 + v392[5]) = v604;
                    *(v393 + v392[6]) = v395;
                    *(v393 + v392[7]) = v396;
                    v354 = v630;
                    *(v393 + v392[8]) = v630;
                    v400 = *(v637 + 48);
                    v649(v399, v645, v370);
                    sub_100077A40(&v661, v399 + v400);
                    v401 = v354;
                    v250 = v616;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v250 = sub_100077348(0, v250[2] + 1, 1, v250);
                    }

                    v1 = v654;
                    v403 = v250[2];
                    v402 = v250[3];
                    v348 = v656;
                    if (v403 >= v402 >> 1)
                    {
                      v250 = sub_100077348((v402 > 1), v403 + 1, 1, v250);
                    }

                    v250[2] = v403 + 1;
                    sub_10002DB0C(v605, v250 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v403, &unk_1000E24B8, qword_100085F70);
                    *v1 = v250;
                    v404 = [v394 timestamp];
                    v405 = v602;
                    sub_10007D388();

                    v406 = v635;
                    sub_10007D2F8();
                    v362 = v658;
                    (v648)(v405, v658);
                    sub_100077A58(v613, type metadata accessor for SuggestedDestinationEntryContent);
                    v407 = v645;
                    swift_beginAccess();
                    (*v597)(v407, v406, v362);
                  }

                  v408 = v606;
                  sub_100026310(v657, v606, &qword_1000DE928, &unk_100082900);
                  if ((v634)(v408, 1, v362) == 1)
                  {
                    sub_1000256C0(v408, &qword_1000DE928, &unk_100082900);
                    goto LABEL_161;
                  }

                  v409 = v600;
                  (*v633)(v600, v408, v362);
                  sub_100077AB8(&qword_1000E2500, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v410 = sub_10007E118();
                  v411 = v409;
                  v412 = v648;
                  (v648)(v411, v362);
                  if (v410)
                  {
LABEL_161:
                    v616 = v250;
                    v413 = v626;
                    sub_1000797A8(v120, v626, type metadata accessor for SuggestedDestinationEntryContent);
                    *(v413 + 40) = 0;
                    *(v413 + 48) = 1;
                    v414 = sub_10007D5A8();
                    v415 = sub_10007E288();
                    if (os_log_type_enabled(v414, v415))
                    {
                      v416 = swift_slowAlloc();
                      v417 = swift_slowAlloc();
                      *&v661 = v417;
                      *v416 = v582;
                      sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                      v418 = v645;
                      v419 = v658;
                      v420 = sub_10007E588();
                      v422 = sub_100051190(v420, v421, &v661);

                      *(v416 + 4) = v422;
                      _os_log_impl(&_mh_execute_header, v414, v415, "GeneralMapsTimelineProvider: generateResolvableTimeline added stale-location SuggestedDestination entry at %{public}s", v416, 0xCu);
                      sub_1000250AC(v417);
                      v348 = v656;
                    }

                    else
                    {

                      v419 = v658;
                      v418 = v645;
                    }

                    v423 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                    v663 = v423;
                    v664 = &off_1000C9480;
                    v424 = sub_1000779DC(&v661);
                    sub_1000797A8(v626, v424, type metadata accessor for SuggestedDestinationEntryContent);
                    v425 = v593;
                    v426 = v639;
                    v427 = [v348 styleAttributes];
                    v428 = v423[9];
                    v429 = v640;
                    (*v583)(v424 + v428, v632, v640);
                    (*v591)(v424 + v428, 0, 1, v429);
                    *(v424 + v423[5]) = v604;
                    *(v424 + v423[6]) = v426;
                    *(v424 + v423[7]) = v427;
                    v430 = v630;
                    *(v424 + v423[8]) = v630;
                    v431 = *(v637 + 48);
                    v432 = v614;
                    v649(v614, v418, v419);
                    sub_100077A40(&v661, v432 + v431);
                    v433 = v430;
                    v250 = v616;
                    v389 = v419;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v250 = sub_100077348(0, v250[2] + 1, 1, v250);
                    }

                    v1 = v654;
                    v435 = v250[2];
                    v434 = v250[3];
                    if (v435 >= v434 >> 1)
                    {
                      v250 = sub_100077348((v434 > 1), v435 + 1, 1, v250);
                    }

                    sub_100077A58(v626, type metadata accessor for SuggestedDestinationEntryContent);
                    (*v576)(v632, v640);
                    v250[2] = v435 + 1;
                    sub_10002DB0C(v614, v250 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v435, &unk_1000E24B8, qword_100085F70);
                    (v648)(v645, v389);
                    *v1 = v250;
                    v120 = v647;
                    v390 = v657;
                    goto LABEL_169;
                  }

                  (*v576)(v632, v640);

                  v389 = v658;
                  (v412)(v645, v658);
                }

                else
                {
                  v372 = sub_10007D5A8();
                  v373 = sub_10007E288();
                  if (os_log_type_enabled(v372, v373))
                  {
                    v374 = swift_slowAlloc();
                    v375 = swift_slowAlloc();
                    *&v661 = v375;
                    *v374 = v582;
                    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                    v376 = sub_10007E588();
                    v378 = v250;
                    v379 = sub_100051190(v376, v377, &v661);

                    *(v374 + 4) = v379;
                    v250 = v378;
                    v1 = v658;
                    _os_log_impl(&_mh_execute_header, v372, v373, "GeneralMapsTimelineProvider: generateResolvableTimeline added no-location SuggestedDestination entry at %{public}s", v374, 0xCu);
                    sub_1000250AC(v375);
                    v348 = v656;
                  }

                  v380 = type metadata accessor for SuggestedDestinationEntryContentResolver(0);
                  v663 = v380;
                  v664 = &off_1000C9480;
                  v381 = sub_1000779DC(&v661);
                  sub_1000797A8(v120, v381, type metadata accessor for SuggestedDestinationEntryContent);
                  v382 = v639;
                  v383 = [v348 styleAttributes];
                  (*v591)(v381 + v380[9], 1, 1, v640);
                  *(v381 + v380[5]) = 0;
                  *(v381 + v380[6]) = v382;
                  *(v381 + v380[7]) = v383;
                  *(v381 + v380[8]) = v354;
                  v384 = *(v637 + 48);
                  v385 = v619;
                  v649(v619, v655, v1);
                  sub_100077A40(&v661, v385 + v384);
                  v386 = v354;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v250 = sub_100077348(0, v250[2] + 1, 1, v250);
                  }

                  v388 = v250[2];
                  v387 = v250[3];
                  v389 = v1;
                  if (v388 >= v387 >> 1)
                  {
                    v250 = sub_100077348((v387 > 1), v388 + 1, 1, v250);
                  }

                  v250[2] = v388 + 1;
                  sub_10002DB0C(v619, v250 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v388, &unk_1000E24B8, qword_100085F70);
                  v1 = v654;
                  *v654 = v250;
                }

                v390 = v657;
LABEL_169:
                v436 = v620;
                sub_10002DB0C(v390, v620, &qword_1000DE928, &unk_100082900);
                if ((v634)(v436, 1, v389) == 1)
                {
                  v470 = v648;
                  (v648)(v644, v389);
                  sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);

                  sub_1000256C0(v436, &qword_1000DE928, &unk_100082900);
                  v471 = v612;
                  sub_100077E94(v1, v612, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
                  (*(v611 + 56))(v471, 0, 1, v631);
                  v472 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
                  v473 = v603;
                  swift_beginAccess();
                  sub_10007796C(v471, v473 + v472);
                  swift_endAccess();
                  sub_100077A58(v120, type metadata accessor for SuggestedDestinationEntryContent);
                  (v470)(v655, v389);
                  return;
                }

                v437 = v618;
                (*v633)(v618, v436, v389);
                (*v597)(v655, v437, v389);
                sub_100077A58(v120, type metadata accessor for SuggestedDestinationEntryContent);
                goto LABEL_99;
              }

              v649(v307, v308, v1);
              v329 = v309;
              v330 = sub_10007D5A8();
              v331 = v1;
              v332 = sub_10007E288();

              if (os_log_type_enabled(v330, v332))
              {
                v333 = swift_slowAlloc();
                *&v656 = swift_slowAlloc();
                *&v661 = v656;
                *v333 = v584;
                v334 = [v329 undecoratedTitle];
                LODWORD(v634) = v332;
                v335 = v334;
                v336 = v307;
                v337 = sub_10007E158();
                v616 = v272;
                v339 = v338;

                v340 = sub_100051190(v337, v339, &v661);

                *(v333 + 4) = v340;
                v120 = 2082;
                *(v333 + 12) = 2082;
                sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v341 = sub_10007E588();
                v343 = v342;
                (v648)(v336, v331);
                v344 = sub_100051190(v341, v343, &v661);

                *(v333 + 14) = v344;
                *(v333 + 22) = 2082;
                v345 = sub_10007E588();
                v347 = sub_100051190(v345, v346, &v661);

                *(v333 + 24) = v347;
                _os_log_impl(&_mh_execute_header, v330, v634, "GeneralMapsTimelineProvider: generateResolvableTimeline skipping suggestions entry (%{private}s) ending at %{public}s because timeline already populated up to %{public}s", v333, 0x20u);
                swift_arrayDestroy();

                (v648)(v636, v331);
                sub_1000256C0(v657, &qword_1000DE928, &unk_100082900);
                v250 = v616;
                v1 = v654;
              }

              else
              {

                v391 = v648;
                (v648)(v307, v1);
                (v391)(v636, v1);
                sub_1000256C0(v657, &qword_1000DE928, &unk_100082900);
                v1 = v654;
                v250 = v272;
              }
            }

            else
            {
              v274 = v245;
              v275 = sub_10007D5A8();
              v276 = sub_10007E288();

              if (os_log_type_enabled(v275, v276))
              {
                v252 = swift_slowAlloc();
                v253 = swift_slowAlloc();
                *&v661 = v253;
                *v252 = v575;
                v120 = v250;
                v254 = [v274 undecoratedTitle];
                v255 = sub_10007E158();
                v257 = v256;

                v258 = v255;
                v1 = v654;
                v259 = sub_100051190(v258, v257, &v661);

                *(v252 + 4) = v259;
                v250 = v120;
                _os_log_impl(&_mh_execute_header, v275, v276, "GeneralMapsTimelineProvider: generateResolvableTimeline skipping suggestions entry (%{private}s) because no map item was available", v252, 0xCu);
                sub_1000250AC(v253);
              }

              else
              {
              }
            }

LABEL_99:
            v251 = (v652 + 1);
            v245 = v623;
            if (v651 == v622)
            {

              v120 = v644;
              if (v250[2])
              {
                goto LABEL_219;
              }

LABEL_173:
              if ((v579 - 1) > 3)
              {
                v657 = 0;
              }

              else
              {
                v657 = qword_100086050[v579 - 1];
              }

              v438 = v599;
              v616 = v250;
              if (v604)
              {
                *v599 = 0;
                *(v438 + 8) = 2;
                v439 = *(v595 + 20);
                v440 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v440 - 8) + 56))(v438 + v439, 1, 1, v440);
                v441 = v596;
                sub_10007D3D8();
                [v441 coordinate];
                MKMapRectMakeWithRadialDistance();
                v443 = v442;
                v445 = v444;
                v447 = v446;
                v449 = v448;
                swift_beginAccess();
                v450 = [v441 timestamp];
                v451 = v635;
                sub_10007D388();

                sub_10007D2B8();
                v453 = v452;
                v454 = v641 + 8;
                v455 = v658;
                (v648)(v451, v658);
                *&v656 = v454;
                v652 = v441;
                if (v453 < 300.0)
                {
                  v456 = v594;
                  sub_1000797A8(v438, v594, type metadata accessor for NearbyEntryContent);
                  v457 = v581;
                  *v456 = v581;
                  *(v456 + 8) = 0;
                  v458 = v441;
                  v459 = sub_10007D5A8();
                  v460 = sub_10007E288();

                  if (os_log_type_enabled(v459, v460))
                  {
                    v461 = swift_slowAlloc();
                    v651 = swift_slowAlloc();
                    v660[0] = v651;
                    *v461 = 136380931;
                    *&v661 = v458;
                    *(&v661 + 1) = v457;
                    v462 = v458;
                    v463 = sub_10007E178();
                    v465 = sub_100051190(v463, v464, v660);

                    *(v461 + 4) = v465;
                    *(v461 + 12) = 2082;
                    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                    v466 = v658;
                    v467 = sub_10007E588();
                    v469 = sub_100051190(v467, v468, v660);

                    *(v461 + 14) = v469;
                    v120 = v644;
                    _os_log_impl(&_mh_execute_header, v459, v460, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with fresh location: %{private}s) at %{public}s", v461, 0x16u);
                    swift_arrayDestroy();
                  }

                  else
                  {

                    v466 = v658;
                  }

                  v506 = v458;
                  v507 = type metadata accessor for NearbyEntryContentResolver(0);
                  v663 = v507;
                  v664 = &off_1000C9A50;
                  v508 = sub_1000779DC(&v661);
                  sub_1000797A8(v594, v508, type metadata accessor for NearbyEntryContent);
                  v509 = v507[9];
                  v510 = v601;
                  v511 = v640;
                  (*(v601 + 16))(v508 + v509, v598, v640);
                  (*(v510 + 56))(v508 + v509, 0, 1, v511);
                  *(v508 + v507[5]) = v604;
                  *(v508 + v507[6]) = v657;
                  v512 = (v508 + v507[7]);
                  *v512 = v443;
                  v512[1] = v445;
                  v512[2] = v447;
                  v512[3] = v449;
                  *(v508 + v507[8]) = v580;
                  v513 = *(v637 + 48);
                  v514 = v589;
                  v649(v589, v655, v466);
                  sub_100077A40(&v661, v514 + v513);
                  v515 = v506;

                  v455 = v466;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v616 = sub_100077348(0, v616[2] + 1, 1, v616);
                  }

                  v517 = v616[2];
                  v516 = v616[3];
                  if (v517 >= v516 >> 1)
                  {
                    v616 = sub_100077348((v516 > 1), v517 + 1, 1, v616);
                  }

                  v518 = v616;
                  v616[2] = v517 + 1;
                  sub_10002DB0C(v514, v518 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v517, &unk_1000E24B8, qword_100085F70);
                  v519 = [v515 timestamp];
                  v520 = v602;
                  sub_10007D388();

                  v521 = v635;
                  sub_10007D2F8();
                  (v648)(v520, v466);
                  sub_100077A58(v594, type metadata accessor for NearbyEntryContent);
                  v522 = v655;
                  swift_beginAccess();
                  (*(v641 + 40))(v522, v521, v466);
                }

                v523 = v599;
                v524 = v581;
                *v599 = v581;
                *(v523 + 8) = 1;
                v525 = v652;
                v526 = sub_10007D5A8();
                v527 = sub_10007E288();

                v528 = os_log_type_enabled(v526, v527);
                v652 = v525;
                if (v528)
                {
                  v529 = swift_slowAlloc();
                  v659 = swift_slowAlloc();
                  *v529 = 136380931;
                  *&v661 = v525;
                  *(&v661 + 1) = v524;
                  v530 = v525;
                  v531 = sub_10007E178();
                  v533 = sub_100051190(v531, v532, &v659);

                  *(v529 + 4) = v533;
                  *(v529 + 12) = 2082;
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v534 = sub_10007E588();
                  v536 = sub_100051190(v534, v535, &v659);

                  *(v529 + 14) = v536;
                  _os_log_impl(&_mh_execute_header, v526, v527, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with stale location: %{private}s) at %{public}s", v529, 0x16u);
                  swift_arrayDestroy();
                  v537 = v658;
                }

                else
                {

                  v537 = v455;
                }

                v538 = type metadata accessor for NearbyEntryContentResolver(0);
                v663 = v538;
                v664 = &off_1000C9A50;
                v539 = sub_1000779DC(&v661);
                sub_1000797A8(v599, v539, type metadata accessor for NearbyEntryContent);
                v540 = v538[9];
                v541 = v601;
                v542 = v640;
                (*(v601 + 16))(v539 + v540, v598, v640);
                (*(v541 + 56))(v539 + v540, 0, 1, v542);
                *(v539 + v538[5]) = v604;
                *(v539 + v538[6]) = v657;
                v543 = (v539 + v538[7]);
                *v543 = v443;
                v543[1] = v445;
                v543[2] = v447;
                v543[3] = v449;
                *(v539 + v538[8]) = v580;
                v544 = *(v637 + 48);
                v545 = v592;
                v649(v592, v655, v537);
                sub_100077A40(&v661, v545 + v544);
                v546 = v652;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v616 = sub_100077348(0, v616[2] + 1, 1, v616);
                }

                v548 = v616[2];
                v547 = v616[3];
                if (v548 >= v547 >> 1)
                {
                  v616 = sub_100077348((v547 > 1), v548 + 1, 1, v616);
                }

                sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);

                (*(v601 + 8))(v598, v640);
                sub_100077A58(v599, type metadata accessor for NearbyEntryContent);
                v504 = v648;
                (v648)(v120, v537);
                v549 = v616;
                v616[2] = v548 + 1;
                sub_10002DB0C(v545, v549 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v548, &unk_1000E24B8, qword_100085F70);
                v486 = v537;
                v1 = v654;
                *v654 = v549;
              }

              else if (v578)
              {
                v474 = v577;
                sub_100040B7C();
                v476 = v475;
                v478 = v477;
                v480 = v479;
                v482 = v481;
                v483 = sub_10007D5A8();
                v484 = sub_10007E288();
                v485 = os_log_type_enabled(v483, v484);
                v486 = v658;
                if (v485)
                {
                  v487 = swift_slowAlloc();
                  v665[0] = swift_slowAlloc();
                  *v487 = 136380931;
                  *&v661 = v476;
                  *(&v661 + 1) = v478;
                  v662 = v480;
                  v663 = v482;
                  type metadata accessor for MKMapRect(0);
                  v488 = sub_10007E178();
                  v490 = sub_100051190(v488, v489, v665);

                  *(v487 + 4) = v490;
                  *(v487 + 12) = 2082;
                  swift_beginAccess();
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v491 = sub_10007E588();
                  v493 = sub_100051190(v491, v492, v665);

                  *(v487 + 14) = v493;
                  _os_log_impl(&_mh_execute_header, v483, v484, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with map rect: %{private}s) at %{public}s", v487, 0x16u);
                  swift_arrayDestroy();
                  v486 = v658;
                }

                v494 = v655;
                swift_beginAccess();
                v495 = type metadata accessor for NearbyEntryContentResolver(0);
                v663 = v495;
                v664 = &off_1000C9A50;
                v496 = sub_1000779DC(&v661);
                *v496 = 0;
                *(v496 + 8) = 2;
                v497 = *(v595 + 20);
                v498 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v498 - 8) + 56))(v496 + v497, 1, 1, v498);
                (*(v601 + 56))(v496 + v495[9], 1, 1, v640);
                *(v496 + v495[5]) = 0;
                *(v496 + v495[6]) = v657;
                v499 = (v496 + v495[7]);
                *v499 = v476;
                v499[1] = v478;
                v499[2] = v480;
                v499[3] = v482;
                *(v496 + v495[8]) = v580;
                v500 = *(v637 + 48);
                v501 = v590;
                v649(v590, v494, v486);
                sub_100077A40(&v661, v501 + v500);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v616 = sub_100077348(0, v616[2] + 1, 1, v616);
                }

                v503 = v616[2];
                v502 = v616[3];
                if (v503 >= v502 >> 1)
                {
                  v616 = sub_100077348((v502 > 1), v503 + 1, 1, v616);
                }

                sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);
                v504 = v648;
                (v648)(v120, v486);
                v505 = v616;
                v616[2] = v503 + 1;
                sub_10002DB0C(v590, v505 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v503, &unk_1000E24B8, qword_100085F70);
                v1 = v654;
                *v654 = v505;
              }

              else
              {
                v550 = sub_10007D5A8();
                v551 = sub_10007E288();
                if (os_log_type_enabled(v550, v551))
                {
                  v552 = swift_slowAlloc();
                  v553 = swift_slowAlloc();
                  *&v661 = v553;
                  *v552 = 136446210;
                  swift_beginAccess();
                  sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v554 = sub_10007E588();
                  v556 = sub_100051190(v554, v555, &v661);

                  *(v552 + 4) = v556;
                  _os_log_impl(&_mh_execute_header, v550, v551, "GeneralMapsTimelineProvider: generateResolvableTimeline added Nearby entry (with fallback region) at %{public}s", v552, 0xCu);
                  sub_1000250AC(v553);
                }

                v557 = v595;
                v558 = v588;
                swift_beginAccess();
                v559 = type metadata accessor for NearbyEntryContentResolver(0);
                v663 = v559;
                v664 = &off_1000C9A50;
                v560 = sub_1000779DC(&v661);
                *v560 = 0;
                *(v560 + 8) = 2;
                v561 = *(v557 + 20);
                v562 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
                (*(*(v562 - 8) + 56))(v560 + v561, 1, 1, v562);
                if (qword_1000DE260 != -1)
                {
                  swift_once();
                }

                v563 = v559[9];
                v564 = *(v601 + 56);
                v656 = xmmword_1000E4B08;
                v653 = *&qword_1000E4B18;
                v564(v560 + v563, 1, 1, v640);
                *(v560 + v559[5]) = 0;
                *(v560 + v559[6]) = v657;
                v565 = (v560 + v559[7]);
                v566 = v653;
                *v565 = v656;
                v565[1] = v566;
                *(v560 + v559[8]) = 0;
                v567 = *(v637 + 48);
                v486 = v658;
                v649(v558, v655, v658);
                sub_100077A40(&v661, v558 + v567);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v616 = sub_100077348(0, v616[2] + 1, 1, v616);
                }

                v569 = v616[2];
                v568 = v616[3];
                if (v569 >= v568 >> 1)
                {
                  v616 = sub_100077348((v568 > 1), v569 + 1, 1, v616);
                }

                sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);
                v504 = v648;
                (v648)(v120, v486);
                v570 = v616;
                v616[2] = v569 + 1;
                sub_10002DB0C(v558, v570 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v569, &unk_1000E24B8, qword_100085F70);
                v1 = v654;
                *v654 = v570;
              }

              goto LABEL_220;
            }
          }
        }
      }
    }

    v250 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_173;
    }

LABEL_219:
    v504 = v648;
    v486 = v658;
    (v648)(v120, v658);
    sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);
LABEL_220:
    v571 = v612;
    sub_100077E94(v1, v612, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    (*(v611 + 56))(v571, 0, 1, v631);
    v572 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
    v573 = v603;
    swift_beginAccess();
    sub_10007796C(v571, v573 + v572);
    swift_endAccess();
    (v504)(v655, v486);
    return;
  }

  v639 = v583;
  v630 = v582;
  v87 = [v630 routes];
  v119 = sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
  v134 = sub_10007E1D8();

  if (!(v134 >> 62))
  {
    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_87;
  }

  if (!sub_10007E528())
  {
LABEL_87:

    goto LABEL_88;
  }

LABEL_25:
  v625 = v119;
  if ((v134 & 0xC000000000000001) != 0)
  {
    v119 = sub_10007E468();
    v86 = v650;
    v120 = v649;
  }

  else
  {
    v86 = v650;
    v120 = v649;
    if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_223:
      v122 = sub_10007E528();
      goto LABEL_52;
    }

    v119 = *(v134 + 32);
  }

  v135 = [v630 fetchDate];
  sub_10007D388();

  v136 = [v119 destination];
  if (!v136)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v137 = v136;
  v138 = [v136 geoMapItem];

  v87 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v138 isPlaceHolderPlace:0];
  swift_unknownObjectRelease();
  if (!v87)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    return;
  }

  v139 = [v639 preferredName];
  if (v139)
  {
    v140 = v139;
    [v87 setName:v139];
  }

  v141 = [v87 name];
  if (v141)
  {
    v142 = v141;
    v642 = sub_10007E158();
    v640 = v143;
  }

  else
  {
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v177.super.isa = qword_1000E4B68;
    v574._countAndFlagsBits = 0x8000000100090FD0;
    v679._countAndFlagsBits = 0x74616E6974736544;
    v679._object = 0xEB000000006E6F69;
    v673._object = 0x8000000100090FB0;
    v673._countAndFlagsBits = 0xD00000000000001DLL;
    v676.value._countAndFlagsBits = 0;
    v676.value._object = 0;
    v642 = sub_10007D258(v673, v676, v177, v679, 0xD000000000000034, v574);
    v640 = v178;
  }

  v179 = [v119 mutableData];
  if (!v179)
  {
    goto LABEL_230;
  }

  v180 = v179;
  v181 = [v179 routeOverviewDescriptionStrings];

  sub_10002620C(0, &qword_1000E2508, GEOComposedString_ptr);
  v70 = sub_10007E1D8();

  if (v70 >> 62)
  {
    goto LABEL_223;
  }

  v122 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
  v643 = v119;
  v636 = v87;
  if (v122)
  {
    *&v661 = _swiftEmptyArrayStorage;
    v0 = &v661;
    sub_100077E74(0, v122 & ~(v122 >> 63), 0);
    v655 = v122;
    if (v122 < 0)
    {
      __break(1u);
      goto LABEL_225;
    }

    v1 = v661;
    v647 = objc_opt_self();
    v83 = 0;
    v657 = v70 & 0xC000000000000001;
    v645 = (v70 & 0xFFFFFFFFFFFFFF8);
    v182 = v593 + 32;
    while (1)
    {
      v183 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v657)
      {
        v184 = sub_10007E468();
      }

      else
      {
        if (v83 >= *(v645 + 2))
        {
          goto LABEL_83;
        }

        v184 = *(v70 + 8 * v83 + 32);
      }

      v0 = v184;
      v87 = v70;
      if (![v647 _mapkit_attributedStringForComposedString:v184 defaultAttributes:0])
      {
        break;
      }

      v185 = v652;
      sub_10007D248();
      sub_10007D3D8();

      (*v182)(v121 + *(v651 + 20), v185, v656);
      *&v661 = v1;
      v86 = v1[2];
      v186 = v1[3];
      if (v86 >= v186 >> 1)
      {
        v0 = &v661;
        sub_100077E74((v186 > 1), v86 + 1, 1);
        v1 = v661;
      }

      v1[2] = v86 + 1;
      sub_100077E94(v121, v1 + ((*(v646 + 80) + 32) & ~*(v646 + 80)) + v646[9] * v86, type metadata accessor for CommuteWindowDetailsString);
      ++v83;
      if (v183 == v655)
      {

        v187 = v649;
        v119 = v643;
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_227;
  }

  v187 = v120;

  v1 = _swiftEmptyArrayStorage;
LABEL_66:
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v188.super.isa = qword_1000E4B68;
  v674._countAndFlagsBits = 0xD000000000000013;
  v574._countAndFlagsBits = 0x8000000100091030;
  v680._countAndFlagsBits = 0x415445204025;
  v674._object = 0x8000000100091010;
  v677.value._countAndFlagsBits = 0;
  v677.value._object = 0;
  v680._object = 0xE600000000000000;
  sub_10007D258(v674, v677, v188, v680, 0xD000000000000033, v574);
  v189 = [v119 guidanceETA];
  v190 = [v189 etaDateString];

  if (!v190)
  {
    goto LABEL_231;
  }

  v191 = sub_10007E158();
  v193 = v192;

  v194 = sub_100040C54();
  v196 = v195;
  v197 = v615;
  v198 = v633;
  v187(&v633[*(v615 + 36)], v623, v658);
  v199 = *(v197 + 40);
  v200 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  (*(*(v200 - 8) + 56))(&v198[v199], 1, 1, v200);
  v201 = v640;
  *(v198 + 2) = v642;
  *(v198 + 3) = v201;
  *(v198 + 4) = v1;
  *(v198 + 5) = v191;
  *(v198 + 6) = v193;
  *(v198 + 7) = v194;
  *(v198 + 8) = v196;
  v202 = [v639 styleAttributes];
  v203 = objc_opt_self();
  v204 = [v203 mainScreen];
  [v204 scale];
  v206 = v205;

  if (!v202 || (v207 = [objc_opt_self() imageForStyle:v202 size:3 forScale:0 format:0 nightMode:v206]) == 0)
  {
    v208 = objc_opt_self();
    v209 = [objc_opt_self() markerStyleAttributes];
    v207 = [v208 imageForStyle:v209 size:3 forScale:0 format:0 nightMode:v206];
  }

  v210 = [v203 mainScreen];
  [v210 scale];
  v212 = v211;

  if (!v202 || (v213 = [objc_opt_self() imageForStyle:v202 size:3 forScale:0 format:1 nightMode:v212]) == 0)
  {
    v214 = objc_opt_self();
    v215 = [objc_opt_self() markerStyleAttributes];
    v213 = [v214 imageForStyle:v215 size:3 forScale:0 format:1 nightMode:v212];
  }

  v216 = v633;
  *v633 = v207;
  *(v216 + 1) = v213;
  v217 = v597;
  v218 = v658;
  v649(v597, v644, v658);
  v219 = sub_10007D5A8();
  v220 = sub_10007E288();
  if (os_log_type_enabled(v219, v220))
  {
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *&v661 = v222;
    *v221 = 136446210;
    sub_100077AB8(&qword_1000E24F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v223 = sub_10007E588();
    v225 = v224;
    v226 = v648;
    (v648)(v217, v218);
    v227 = sub_100051190(v223, v225, &v661);

    *(v221 + 4) = v227;
    _os_log_impl(&_mh_execute_header, v219, v220, "GeneralMapsTimelineProvider: generateResolvableTimeline added CommuteWindow entry at %{public}s", v221, 0xCu);
    sub_1000250AC(v222);
  }

  else
  {

    v226 = v648;
    (v648)(v217, v218);
  }

  v228 = type metadata accessor for CommuteWindowEntryContentResolver(0);
  v663 = v228;
  v664 = &off_1000C9228;
  v229 = sub_1000779DC(&v661);
  sub_1000797A8(v633, v229, type metadata accessor for CommuteWindowEntryContent);
  v230 = v636;
  v231 = [v639 styleAttributes];
  v232 = [v630 routes];
  v233 = sub_10007E1D8();

  *(v229 + v228[5]) = v230;
  *(v229 + v228[6]) = v231;
  *(v229 + v228[7]) = v233;
  v234 = *(v637 + 48);
  v235 = v616;
  v649(v616, v644, v218);
  sub_100077A40(&v661, v235 + v234);
  v236 = sub_100077348(0, 1, 1, _swiftEmptyArrayStorage);
  v238 = v236[2];
  v237 = v236[3];
  if (v238 >= v237 >> 1)
  {
    v236 = sub_100077348((v237 > 1), v238 + 1, 1, v236);
  }

  v239 = v611;
  v240 = v654;

  sub_1000256C0(&v666, &qword_1000DE950, &qword_100082918);
  (v226)(v623, v218);
  (v226)(v644, v218);
  v236[2] = v238 + 1;
  sub_10002DB0C(v235, v236 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v238, &unk_1000E24B8, qword_100085F70);
  *v240 = v236;
  v241 = v612;
  sub_100077E94(v240, v612, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  (*(v239 + 56))(v241, 0, 1, v631);
  v242 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  v243 = v603;
  swift_beginAccess();
  sub_10007796C(v241, v243 + v242);
  swift_endAccess();
  sub_100077A58(v633, type metadata accessor for CommuteWindowEntryContent);
}

void sub_1000725C8()
{
  v1 = v0;
  v2 = sub_10007DFF8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DF48();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v9 = sub_10007E328();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10007DF68();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for MapSnapshotter();
  sub_10007E0B8();
  sub_10003E4A0(v5);
  (*(v3 + 8))(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v13;
  if (v13)
  {
    return;
  }

  if (qword_1000DE268 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v14 = sub_10007D5C8();
  sub_1000046BC(v14, qword_1000E4B28);
  v15 = sub_10007D5A8();
  v16 = sub_10007E288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "GeneralMapsTimelineProvider: all widget request completions called; purging icon manager", v17, 2u);
  }

  v18 = [objc_opt_self() iconManager];
  if (v18)
  {
    v19 = v18;
    [v18 purge];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000728C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a2;
  v32 = sub_10007DEB8();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DED8();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007E0C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v28 = sub_10007E328();
  sub_1000797A8(v26, v15, type metadata accessor for GeneralMapsTimelineEntry);
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v10 + 80) + v17 + 8) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  *(v19 + 24) = a3;
  sub_100077E94(v15, v19 + v16, type metadata accessor for GeneralMapsTimelineEntry);
  *(v19 + v17) = v30;
  (*(v10 + 32))(v19 + v18, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_100079CA8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9A10;
  v20 = _Block_copy(aBlock);

  v21 = v29;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  v23 = v31;
  v22 = v32;
  sub_10007E3F8();
  v24 = v28;
  sub_10007E338();
  _Block_release(v20);

  (*(v35 + 8))(v23, v22);
  return (*(v33 + 8))(v21, v34);
}

uint64_t sub_100072D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v36 = sub_10007DEB8();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007E0C8();
  v28 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v30 = sub_10007E328();
  (*(v13 + 16))(v16, a4, v12);
  (*(v9 + 16))(v11, v29, v8);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 8) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 16) = v31;
  *(v20 + 24) = v21;
  (*(v13 + 32))(v20 + v17, v16, v12);
  *(v20 + v18) = v34;
  (*(v9 + 32))(v20 + v19, v11, v28);
  aBlock[4] = sub_100079810;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9920;
  v22 = _Block_copy(aBlock);

  v23 = v33;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  v25 = v35;
  v24 = v36;
  sub_10007E3F8();
  v26 = v30;
  sub_10007E338();
  _Block_release(v22);

  (*(v39 + 8))(v25, v24);
  return (*(v37 + 8))(v23, v38);
}

uint64_t sub_100073248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v75 = a1;
  v7 = sub_10007DFF8();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10007E0C8();
  v71 = *(v77 - 8);
  v11 = __chkstk_darwin(v77);
  v76 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v12;
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_10007D3B8();
  v16 = *(v15 - 8);
  v68 = v15;
  v69 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v72 = &v61 - v20;
  v21 = __chkstk_darwin(v19);
  v74 = &v61 - v22;
  __chkstk_darwin(v21);
  v78 = &v61 - v23;
  v24 = sub_10007DF48();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v27 = sub_10007E328();
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v28 = sub_10007DF68();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v29 = *(v4 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v66 = a3;
      *(v4 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v31;
      sub_10007D3A8();
      if (qword_1000DE268 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v65 = a2;
  v67 = v4;
  v32 = sub_10007D5C8();
  sub_1000046BC(v32, qword_1000E4B28);
  v33 = v71;
  v34 = v77;
  v64 = *(v71 + 16);
  v64(v14, v75, v77);
  v35 = sub_10007D5A8();
  v36 = sub_10007E288();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v37 = 136446210;
    sub_10007E0B8();
    sub_100077AB8(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v38 = v62;
    v39 = sub_10007E588();
    v40 = v14;
    v42 = v41;
    (*(v63 + 8))(v10, v38);
    (*(v71 + 8))(v40, v77);
    v43 = sub_100051190(v39, v42, &v79);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "GeneralMapsTimelineProvider: 'snapshot' requested (of size %{public}s)", v37, 0xCu);
    sub_1000250AC(v61);
    v33 = v71;

    v34 = v77;
  }

  else
  {

    (*(v33 + 8))(v14, v34);
  }

  sub_10007DFD8();
  v44 = v74;
  v45 = v78;
  sub_10007D2F8();
  v46 = v68;
  v47 = v69;
  v48 = *(v69 + 16);
  v48(v72, v45, v68);
  v64(v76, v75, v34);
  v48(v73, v44, v46);
  v49 = *(v47 + 80);
  v50 = (v49 + 16) & ~v49;
  v51 = (v17 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (*(v33 + 80) + v51 + 8) & ~*(v33 + 80);
  v53 = (v70 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v49 + 16 + v53) & ~v49;
  v54 = swift_allocObject();
  v55 = *(v47 + 32);
  v55(v54 + v50, v72, v46);
  *(v54 + v51) = v67;
  (*(v33 + 32))(v54 + v52, v76, v77);
  v56 = (v54 + v53);
  v57 = v66;
  *v56 = v65;
  v56[1] = v57;
  v55(v54 + v75, v73, v46);

  v58 = v74;
  sub_10006D2F0(v74, sub_1000799BC, v54);

  v59 = *(v47 + 8);
  v59(v58, v46);
  return (v59)(v78, v46);
}

uint64_t sub_100073954(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a6;
  v86 = a5;
  v84 = a4;
  v88 = a3;
  v77 = sub_10007E0C8();
  v71 = *(v77 - 8);
  __chkstk_darwin(v77);
  v70 = v8;
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007D3B8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v78 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v12;
  __chkstk_darwin(v11);
  v79 = &v65 - v13;
  v67 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v66 = *(v67 - 8);
  v14 = __chkstk_darwin(v67);
  v74 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v15;
  __chkstk_darwin(v14);
  v76 = &v65 - v16;
  v17 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v65 - v18;
  v20 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v81 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v24 = (v23 - 8);
  v65 = *(v23 - 8);
  v25 = *(v65 + 64);
  v26 = __chkstk_darwin(v23);
  v73 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  v29 = v24[7];
  v82 = a1;
  v83 = v10;
  v30 = *(v10 + 16);
  v87 = v9;
  v80 = v30;
  v30(&v65 + v29 - v27, a1, v9);
  v31 = v24[8];
  v32 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = v24[9];
  v34 = sub_10007E098();
  (*(*(v34 - 8) + 56))(&v28[v33], 1, 1, v34);
  sub_10007D398();
  v35 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  v85 = a2;
  sub_100026310(a2 + v35, v19, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000256C0(v19, &qword_1000E24F0, &qword_100085FF0);
  }

  else
  {
    v36 = v81;
    sub_100077E94(v19, v81, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    v37 = *v36;
    if (*(*v36 + 16))
    {
      v38 = *(v66 + 80);
      v39 = v76;
      sub_100026310(v37 + ((v38 + 32) & ~v38), v76, &unk_1000E24B8, qword_100085F70);
      v40 = (v39 + *(v67 + 48));
      v41 = v40[4];
      v78 = v40[3];
      v66 = v41;
      v67 = sub_1000781E0(v40, v78);
      v80(v79, v82, v87);
      v42 = v71;
      (*(v71 + 16))(v75, v88, v77);
      sub_1000797A8(v28, v73, type metadata accessor for GeneralMapsTimelineEntry);
      sub_100026310(v39, v74, &unk_1000E24B8, qword_100085F70);
      v43 = v83;
      v44 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v45 = (v69 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = (*(v42 + 80) + v45 + 8) & ~*(v42 + 80);
      v47 = (v70 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (*(v65 + 80) + v47 + 16) & ~*(v65 + 80);
      v48 = (v25 + v38 + v82) & ~v38;
      v49 = swift_allocObject();
      (*(v43 + 32))(v49 + v44, v79, v87);
      *(v49 + v45) = v85;
      (*(v42 + 32))(v49 + v46, v75, v77);
      v50 = (v49 + v47);
      v51 = v86;
      *v50 = v84;
      v50[1] = v51;
      sub_100077E94(v73, v49 + v82, type metadata accessor for GeneralMapsTimelineEntry);
      sub_10002DB0C(v74, v49 + v48, &unk_1000E24B8, qword_100085F70);
      v52 = v66;
      v53 = *(v66 + 16);

      v53(v88, v72, sub_100079ADC, v49, v78, v52);

      sub_100077A58(v28, type metadata accessor for GeneralMapsTimelineEntry);
      sub_100077A58(v81, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
      return sub_1000256C0(v76, &unk_1000E24B8, qword_100085F70);
    }

    sub_100077A58(v81, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  }

  v55 = v87;
  v56 = v78;
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v57 = sub_10007D5C8();
  sub_1000046BC(v57, qword_1000E4B28);
  v80(v56, v82, v55);
  v58 = sub_10007D5A8();
  v59 = sub_10007E2A8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134349056;
    v61 = v79;
    sub_10007D3A8();
    sub_10007D2B8();
    v63 = v62;
    v64 = *(v83 + 8);
    v64(v61, v55);
    v64(v56, v55);
    *(v60 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v58, v59, "GeneralMapsTimelineProvider: no timeline; will call 'snapshot' completion with empty entry (%{public}f seconds elapsed)", v60, 0xCu);
  }

  else
  {

    (*(v83 + 8))(v56, v55);
  }

  sub_1000728C4(v88, v84, v86, v28);
  return sub_100077A58(v28, type metadata accessor for GeneralMapsTimelineEntry);
}

uint64_t sub_1000742D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a7;
  v74 = a8;
  v83 = a3;
  v84 = a4;
  v80 = a1;
  v81 = a2;
  v10 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  __chkstk_darwin(v10 - 8);
  v79 = &v67 - v11;
  v75 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  __chkstk_darwin(v75);
  v78 = &v67 - v12;
  v76 = type metadata accessor for GeneralMapsTimelineEntry(0);
  __chkstk_darwin(v76);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10007D3B8();
  v82 = *(v85 - 8);
  v14 = __chkstk_darwin(v85);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v71 = &v67 - v18;
  __chkstk_darwin(v17);
  v20 = &v67 - v19;
  v21 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v22 = __chkstk_darwin(v21 - 8);
  v72 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v67 - v24;
  v26 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v70 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v67 - v30;
  sub_100026310(v80, v25, &qword_1000DE630, &unk_1000861F0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v32 = a5;
    v33 = a6;
    sub_1000256C0(v25, &qword_1000DE630, &unk_1000861F0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v34 = sub_10007D5C8();
    sub_1000046BC(v34, qword_1000E4B28);
    v35 = v82;
    v36 = v85;
    (*(v82 + 16))(v16, v81, v85);
    v37 = sub_10007D5A8();
    v38 = sub_10007E2A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v35;
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      v41 = v71;
      sub_10007D3A8();
      sub_10007D2B8();
      v43 = v42;
      v44 = *(v39 + 8);
      v44(v41, v36);
      v44(v16, v36);
      *(v40 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "GeneralMapsTimelineProvider: could not resolve content; will call 'snapshot' completion with empty entry (%{public}f seconds elapsed)", v40, 0xCu);
    }

    else
    {

      (*(v35 + 8))(v16, v36);
    }

    return sub_1000728C4(v84, v32, v33, v73);
  }

  else
  {
    v69 = a5;
    v45 = a6;
    v80 = v31;
    sub_100077E94(v25, v31, type metadata accessor for GeneralMapsTimelineEntryContent);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v46 = sub_10007D5C8();
    sub_1000046BC(v46, qword_1000E4B28);
    v47 = v82;
    v48 = v85;
    (*(v82 + 16))(v20, v81, v85);
    v49 = sub_10007D5A8();
    v50 = sub_10007E288();
    v51 = os_log_type_enabled(v49, v50);
    v68 = v45;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 134349056;
      v53 = v71;
      sub_10007D3A8();
      sub_10007D2B8();
      v55 = v54;
      v56 = *(v47 + 8);
      v56(v53, v85);
      v56(v20, v85);
      *(v52 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "GeneralMapsTimelineProvider: will call 'snapshot' completion with entry (%{public}f seconds elapsed)", v52, 0xCu);
      v48 = v85;
    }

    else
    {

      (*(v47 + 8))(v20, v48);
    }

    v58 = v78;
    sub_100026310(v74, v78, &unk_1000E24B8, qword_100085F70);
    v59 = v80;
    v60 = v72;
    sub_1000797A8(v80, v72, type metadata accessor for GeneralMapsTimelineEntryContent);
    (*(v27 + 56))(v60, 0, 1, v26);
    v61 = v70;
    sub_1000797A8(v59, v70, type metadata accessor for GeneralMapsTimelineEntryContent);
    swift_getEnumCaseMultiPayload();
    v62 = v79;
    sub_10007E088();
    v63 = *(v75 + 48);
    sub_100077A58(v61, type metadata accessor for GeneralMapsTimelineEntryContent);
    v64 = sub_10007E098();
    (*(*(v64 - 8) + 56))(v62, 0, 1, v64);
    v65 = v77;
    sub_10007D398();
    v66 = v76;
    (*(v47 + 32))(v65 + *(v76 + 20), v58, v48);
    sub_10002DB0C(v60, v65 + *(v66 + 24), &qword_1000DE630, &unk_1000861F0);
    sub_10002DB0C(v62, v65 + *(v66 + 28), &qword_1000DE638, &unk_1000826F0);
    sub_1000250AC((v58 + v63));
    sub_1000728C4(v84, v69, v68, v65);
    sub_100077A58(v65, type metadata accessor for GeneralMapsTimelineEntry);
    return sub_100077A58(v59, type metadata accessor for GeneralMapsTimelineEntryContent);
  }
}

uint64_t sub_100074B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v25[1] = a4;
  v26 = a2;
  v7 = v6;
  v28 = a3;
  v9 = sub_10007DEB8();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007DED8();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin(v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007E0C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v27 = sub_10007E328();
  (*(v16 + 16))(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  (*(v16 + 32))(v19 + v18, v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v20 = (v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = v29;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);

  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
  sub_10007E3F8();
  v23 = v27;
  sub_10007E338();
  _Block_release(v22);

  (*(v33 + 8))(v11, v9);
  return (*(v31 + 8))(v14, v32);
}

uint64_t sub_100074EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v68 = a2;
  v71 = a1;
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  __chkstk_darwin(v3);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v9;
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v12 = sub_10007D3B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v73 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v72 = &v58 - v17;
  v18 = __chkstk_darwin(v16);
  v74 = &v58 - v19;
  __chkstk_darwin(v18);
  v76 = &v58 - v20;
  v21 = sub_10007DF48();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v24 = sub_10007E328();
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v25 = sub_10007DF68();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v26 = *(v77 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v65 = v13;
      *(v77 + OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_pendingRequestCount) = v28;
      sub_10007D3A8();
      if (qword_1000DE268 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v29 = sub_10007D5C8();
  sub_1000046BC(v29, qword_1000E4B28);
  v70 = v7;
  v64 = *(v7 + 16);
  v64(v11, v71, v6);
  v30 = sub_10007D5A8();
  v31 = sub_10007E288();
  v32 = os_log_type_enabled(v30, v31);
  v69 = v6;
  if (v32)
  {
    v33 = v11;
    v34 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v78 = v59;
    *v34 = 136446210;
    v35 = v61;
    sub_10007E0B8();
    sub_100077AB8(&qword_1000DFCE8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v36 = v62;
    v37 = sub_10007E588();
    v60 = v12;
    v39 = v38;
    v40 = v36;
    v6 = v69;
    (*(v63 + 8))(v35, v40);
    (*(v70 + 8))(v33, v6);
    v41 = sub_100051190(v37, v39, &v78);
    v12 = v60;

    *(v34 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "GeneralMapsTimelineProvider: 'timeline' requested (of size %{public}s)", v34, 0xCu);
    sub_1000250AC(v59);
  }

  else
  {

    (*(v70 + 8))(v11, v6);
  }

  sub_10007DFE8();
  v42 = v74;
  v43 = v76;
  sub_10007D2F8();
  v44 = v65;
  v45 = *(v65 + 16);
  v45(v72, v43, v12);
  v64(v75, v71, v6);
  v45(v73, v42, v12);
  v46 = *(v44 + 80);
  v47 = (v46 + 24) & ~v46;
  v48 = v70;
  v49 = (v14 + *(v70 + 80) + v47) & ~*(v70 + 80);
  v50 = (v66 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v46 + v50 + 16) & ~v46;
  v51 = swift_allocObject();
  *(v51 + 16) = v77;
  v52 = *(v44 + 32);
  v52(v51 + v47, v72, v12);
  (*(v48 + 32))(v51 + v49, v75, v69);
  v53 = (v51 + v50);
  v54 = v67;
  *v53 = v68;
  v53[1] = v54;
  v52(v51 + v71, v73, v12);

  v55 = v74;
  sub_10006D2F0(v74, sub_100003F48, v51);

  v56 = *(v44 + 8);
  v56(v55, v12);
  return (v56)(v76, v12);
}

void sub_100075618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a6;
  v98 = a5;
  v97 = a4;
  v111 = a3;
  v96 = a2;
  v7 = sub_10007E078();
  __chkstk_darwin(v7 - 8);
  v112 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v92 = sub_10007DEB8();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10007DED8();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10007E0C8();
  v86 = *(v95 - 8);
  __chkstk_darwin(v95);
  v85 = v13;
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10007D3B8();
  v99 = *(v110 - 8);
  v14 = __chkstk_darwin(v110);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v15;
  __chkstk_darwin(v14);
  v93 = &v81 - v17;
  v109 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v102 = *(v109 - 8);
  v18 = __chkstk_darwin(v109);
  v108 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v115 = &v81 - v21;
  v83 = v22;
  __chkstk_darwin(v20);
  v24 = &v81 - v23;
  v25 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  __chkstk_darwin(v25 - 8);
  v27 = &v81 - v26;
  v28 = type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = OBJC_IVAR____TtC17GeneralMapsWidget27GeneralMapsTimelineProvider_timeline;
  swift_beginAccess();
  v100 = a1;
  sub_100026310(a1 + v32, v27, &qword_1000E24F0, &qword_100085FF0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v33 = v98;
    sub_1000256C0(v27, &qword_1000E24F0, &qword_100085FF0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v34 = sub_10007D5C8();
    sub_1000046BC(v34, qword_1000E4B28);
    v35 = v99;
    v36 = v110;
    (*(v99 + 16))(v16, v96, v110);
    v37 = sub_10007D5A8();
    v38 = sub_10007E2A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      v40 = v93;
      sub_10007D3A8();
      sub_10007D2B8();
      v42 = v41;
      v43 = *(v35 + 8);
      v43(v40, v36);
      v43(v16, v36);
      *(v39 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "GeneralMapsTimelineProvider: no timeline; will call 'timeline' completion with empty array (%{public}f seconds elapsed)", v39, 0xCu);
    }

    else
    {

      (*(v35 + 8))(v16, v36);
    }

    v75 = v97;
    v76 = v111;
    v77 = v33;
    v79 = v113;
    v78 = v114;
    v80 = v106;
    sub_10007E068();
    type metadata accessor for GeneralMapsTimelineEntry(0);
    sub_100077AB8(&qword_1000E24E8, type metadata accessor for GeneralMapsTimelineEntry, &unk_100082740);
    sub_10007E0D8();
    sub_100072D68(v76, v75, v77, v80);
    (*(v79 + 8))(v80, v78);
  }

  else
  {
    sub_100077E94(v27, v31, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
    v106 = swift_allocObject();
    *(v106 + 2) = _swiftEmptyArrayStorage;
    v82 = v31;
    v44 = *v31;
    v45 = dispatch_group_create();
    v46 = *(v44 + 16);
    v47 = v109;
    v48 = v110;
    v49 = v108;
    if (v46)
    {
      v50 = v24;
      v105 = *(v109 + 48);
      v104 = *(v102 + 80);
      v103 = (v104 + 32) & ~v104;
      v51 = v44 + v103;
      v102 = *(v102 + 72);
      v101 = (v99 + 32);
      do
      {
        v114 = v46;
        sub_100026310(v51, v50, &unk_1000E24B8, qword_100085F70);
        v52 = (v115 + *(v47 + 48));
        (*v101)(v115, v50, v48);
        sub_100077A40((v50 + v105), v52);
        dispatch_group_enter(v45);
        v53 = v52[4];
        v113 = v52[3];
        v112 = sub_1000781E0(v52, v113);
        sub_100026310(v115, v49, &unk_1000E24B8, qword_100085F70);
        v54 = v103;
        v55 = swift_allocObject();
        *(v55 + 16) = v45;
        *(v55 + 24) = v106;
        sub_10002DB0C(v49, v55 + v54, &unk_1000E24B8, qword_100085F70);
        v56 = v50;
        v57 = *(v53 + 16);
        v58 = v111;

        v59 = v45;
        v48 = v110;
        v57(v58, v107, sub_100078224, v55, v113, v53);
        v50 = v56;
        v49 = v108;
        v47 = v109;

        sub_1000256C0(v115, &unk_1000E24B8, qword_100085F70);
        v51 += v102;
        v46 = v114 - 1;
      }

      while (v114 != 1);
    }

    v81 = v45;
    v115 = *(v100 + 120);
    v60 = v99;
    v61 = v93;
    (*(v99 + 16))(v93, v96, v48);
    v62 = v86;
    (*(v86 + 16))(v94, v111, v95);
    v63 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v64 = (v84 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (*(v62 + 80) + v64 + 8) & ~*(v62 + 80);
    v66 = (v85 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = v106;
    (*(v60 + 32))(v67 + v63, v61, v48);
    *(v67 + v64) = v100;
    (*(v62 + 32))(v67 + v65, v94, v95);
    v68 = (v67 + v66);
    v69 = v98;
    *v68 = v97;
    v68[1] = v69;
    aBlock[4] = sub_1000782A4;
    aBlock[5] = v67;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C98D0;
    v70 = _Block_copy(aBlock);

    v71 = v87;
    sub_10007DEC8();
    v116 = _swiftEmptyArrayStorage;
    sub_100077AB8(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100077198(&qword_1000DF530, &unk_1000DE980, &unk_1000835B0);
    v72 = v89;
    v73 = v92;
    sub_10007E3F8();
    v74 = v81;
    sub_10007E2E8();
    _Block_release(v70);

    (*(v91 + 8))(v72, v73);
    (*(v88 + 8))(v71, v90);
    sub_100077A58(v82, type metadata accessor for GeneralMapsTimelineProvider.ResolvableContentTimeline);
  }
}

void sub_10007635C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v45 = a3;
  v47 = a2;
  v5 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  __chkstk_darwin(v5 - 8);
  v44 = &v39 - v6;
  v41 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  __chkstk_darwin(v41);
  v43 = &v39 - v7;
  v42 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v46 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  sub_100026310(a1, v15, &qword_1000DE630, &unk_1000861F0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000256C0(v15, &qword_1000DE630, &unk_1000861F0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v23 = sub_10007D5C8();
    sub_1000046BC(v23, qword_1000E4B28);
    v24 = sub_10007D5A8();
    v25 = sub_10007E2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "GeneralMapsTimelineProvider: could not resolve content; skipping entry", v26, 2u);
    }

    dispatch_group_leave(v47);
  }

  else
  {
    sub_100077E94(v15, v22, type metadata accessor for GeneralMapsTimelineEntryContent);
    v27 = v43;
    sub_100026310(v40, v43, &unk_1000E24B8, qword_100085F70);
    sub_1000797A8(v22, v13, type metadata accessor for GeneralMapsTimelineEntryContent);
    (*(v17 + 56))(v13, 0, 1, v16);
    sub_1000797A8(v22, v20, type metadata accessor for GeneralMapsTimelineEntryContent);
    swift_getEnumCaseMultiPayload();
    v28 = v44;
    sub_10007E088();
    v29 = *(v41 + 48);
    sub_100077A58(v20, type metadata accessor for GeneralMapsTimelineEntryContent);
    v30 = sub_10007E098();
    (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    sub_10007D398();
    v31 = v42;
    v32 = *(v42 + 20);
    v33 = sub_10007D3B8();
    (*(*(v33 - 8) + 32))(&v9[v32], v27, v33);
    sub_10002DB0C(v13, &v9[*(v31 + 24)], &qword_1000DE630, &unk_1000861F0);
    sub_10002DB0C(v28, &v9[*(v31 + 28)], &qword_1000DE638, &unk_1000826F0);
    sub_1000250AC((v27 + v29));
    v34 = v45;
    swift_beginAccess();
    v35 = *(v34 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 16) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_100077664(0, v35[2] + 1, 1, v35, &qword_1000E2530, &qword_100086010, type metadata accessor for GeneralMapsTimelineEntry);
      *(v34 + 16) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_100077664((v37 > 1), v38 + 1, 1, v35, &qword_1000E2530, &qword_100086010, type metadata accessor for GeneralMapsTimelineEntry);
    }

    v35[2] = v38 + 1;
    sub_100077E94(v9, v35 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, type metadata accessor for GeneralMapsTimelineEntry);
    *(v34 + 16) = v35;
    swift_endAccess();
    dispatch_group_leave(v47);
    sub_100077A58(v22, type metadata accessor for GeneralMapsTimelineEntryContent);
  }
}

uint64_t sub_1000769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a5;
  v35 = a3;
  v9 = sub_10007E078();
  __chkstk_darwin(v9 - 8);
  v30[1] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = sub_10007D3B8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v30 - v19;
  swift_beginAccess();
  sub_100076E00((a1 + 16));
  swift_endAccess();
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v21 = sub_10007D5C8();
  sub_1000046BC(v21, qword_1000E4B28);
  (*(v15 + 16))(v20, a2, v14);

  v22 = sub_10007D5A8();
  v23 = sub_10007E288();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v30[0] = a6;
    v25 = v24;
    *v24 = 134349312;
    swift_beginAccess();
    *(v25 + 1) = *(*(a1 + 16) + 16);

    *(v25 + 6) = 2050;
    sub_10007D3A8();
    sub_10007D2B8();
    v27 = v26;
    v28 = *(v15 + 8);
    v28(v18, v14);
    v28(v20, v14);
    *(v25 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "GeneralMapsTimelineProvider: will call 'timeline' completion with %{public}ld entries (%{public}f seconds elapsed)", v25, 0x16u);
    a6 = v30[0];
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  swift_beginAccess();

  sub_10007E068();
  type metadata accessor for GeneralMapsTimelineEntry(0);
  sub_100077AB8(&qword_1000E24E8, type metadata accessor for GeneralMapsTimelineEntry, &unk_100082740);
  sub_10007E0D8();
  sub_100072D68(v33, v34, a6, v13);
  return (*(v31 + 8))(v13, v32);
}

Swift::Int sub_100076E00(uint64_t *a1)
{
  v2 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10007975C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000783B4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100076EAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GeneralMapsTimelineEntry(0);
  sub_10007D3A8();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = sub_10007E098();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);

  return sub_10007D398();
}

uint64_t sub_100077018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100050E18;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000770CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100052944;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100077198(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100077214(void *result, int64_t a2, char a3, void *a4)
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
    sub_100015240(&qword_1000E2548, &qword_100086028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015240(&qword_1000E2550, &unk_100086030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100077348(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015240(&qword_1000E2520, &qword_100086000);
  v10 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100077538(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E2538, &qword_100086018);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100077664(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100015240(a5, a6);
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

uint64_t sub_100077840()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100002F20(v3, (v0 + v2), v5, v6);
}

uint64_t sub_1000778DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_100077934(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_10007796C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000779DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100077A40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100077A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100077AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100077B00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E388(*(v2 + 40));
  return sub_100077D88(a1, v4, &qword_1000DE960, MapsSuggestionsEntry_ptr);
}

unint64_t sub_100077B50(char a1)
{
  sub_10007E5D8();
  sub_10007E5E8(a1 & 1);
  v2 = sub_10007E608();

  return sub_100077C50(a1 & 1, v2);
}

unint64_t sub_100077BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E418(*(v2 + 40));

  return sub_100077CC0(a1, v4);
}

unint64_t sub_100077C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E388(*(v2 + 40));
  return sub_100077D88(a1, v4, &qword_1000DFD08, MKMapSnapshotter_ptr);
}

unint64_t sub_100077C50(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100077CC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100040ACC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10007E428();
      sub_1000415FC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100077D88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10002620C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_10007E398();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_100077E54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100077EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100077E74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100078008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100077E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_100077EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E2540, &qword_100086020);
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

void *sub_100078008(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015240(&qword_1000E2518, &qword_100085FF8);
  v10 = *(type metadata accessor for CommuteWindowDetailsString(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CommuteWindowDetailsString(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000781E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100078224(uint64_t a1)
{
  v3 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10007635C(a1, v4, v5, v6);
}

uint64_t sub_1000782A4()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1000769DC(v6, v0 + v2, v7, v0 + v5, v9, v10);
}

Swift::Int sub_1000783B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10007E578(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for GeneralMapsTimelineEntry(0);
        v6 = sub_10007E1E8();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100078744(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000784E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000784E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1000797A8(v23, v17, type metadata accessor for GeneralMapsTimelineEntry);
      sub_1000797A8(v20, v13, type metadata accessor for GeneralMapsTimelineEntry);
      v24 = sub_10007D2E8();
      sub_100077A58(v13, type metadata accessor for GeneralMapsTimelineEntry);
      result = sub_100077A58(v17, type metadata accessor for GeneralMapsTimelineEntry);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_100077E94(v23, v35, type metadata accessor for GeneralMapsTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100077E94(v25, v20, type metadata accessor for GeneralMapsTimelineEntry);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100078744(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100079664(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1000790A8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100079664(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1000795D8(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1000797A8(v110 + v24 * v23, v18, type metadata accessor for GeneralMapsTimelineEntry);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1000797A8(v26, v116, type metadata accessor for GeneralMapsTimelineEntry);
      LODWORD(v111) = sub_10007D2E8();
      sub_100077A58(v28, type metadata accessor for GeneralMapsTimelineEntry);
      result = sub_100077A58(v18, type metadata accessor for GeneralMapsTimelineEntry);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1000797A8(v30, v18, type metadata accessor for GeneralMapsTimelineEntry);
        v31 = v116;
        sub_1000797A8(v5, v116, type metadata accessor for GeneralMapsTimelineEntry);
        v32 = sub_10007D2E8() & 1;
        sub_100077A58(v31, type metadata accessor for GeneralMapsTimelineEntry);
        result = sub_100077A58(v18, type metadata accessor for GeneralMapsTimelineEntry);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_100077E94(v39 + v38, v107, type metadata accessor for GeneralMapsTimelineEntry);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100077E94(v107, v39 + v33, type metadata accessor for GeneralMapsTimelineEntry);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100077538(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100077538((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1000790A8(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100079664(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_1000795D8(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1000797A8(v5, v18, type metadata accessor for GeneralMapsTimelineEntry);
    v93 = v116;
    sub_1000797A8(v90, v116, type metadata accessor for GeneralMapsTimelineEntry);
    a4 = sub_10007D2E8();
    sub_100077A58(v93, type metadata accessor for GeneralMapsTimelineEntry);
    result = sub_100077A58(v18, type metadata accessor for GeneralMapsTimelineEntry);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for GeneralMapsTimelineEntry;
    v94 = v115;
    sub_100077E94(v5, v115, type metadata accessor for GeneralMapsTimelineEntry);
    swift_arrayInitWithTakeFrontToBack();
    sub_100077E94(v94, v90, type metadata accessor for GeneralMapsTimelineEntry);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000790A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1000797A8(v30, v43, type metadata accessor for GeneralMapsTimelineEntry);
          v32 = v44;
          sub_1000797A8(v27, v44, type metadata accessor for GeneralMapsTimelineEntry);
          v33 = sub_10007D2E8();
          sub_100077A58(v32, type metadata accessor for GeneralMapsTimelineEntry);
          sub_100077A58(v31, type metadata accessor for GeneralMapsTimelineEntry);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1000797A8(a2, v43, type metadata accessor for GeneralMapsTimelineEntry);
        v21 = v44;
        sub_1000797A8(a4, v44, type metadata accessor for GeneralMapsTimelineEntry);
        v22 = sub_10007D2E8();
        sub_100077A58(v21, type metadata accessor for GeneralMapsTimelineEntry);
        sub_100077A58(v20, type metadata accessor for GeneralMapsTimelineEntry);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_100079678(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1000795D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100079664(v3);
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

uint64_t sub_100079678(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for GeneralMapsTimelineEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000797A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100079810()
{
  v1 = *(sub_100015240(&qword_1000E2528, &qword_100086008) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_10007E0C8();
  (*(v0 + 16))(v0 + v2);
  sub_1000725C8();
}

uint64_t sub_100079920(uint64_t (*a1)(unint64_t, void, void))
{
  v3 = *(sub_10007E0C8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(v1 + v4, *v5, v5[1]);
}

uint64_t sub_1000799BC()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + 16 + v7) & ~v2;
  v9 = *(v0 + v4);
  v10 = (v0 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_100073954(v0 + v3, v9, v0 + v6, v11, v12, v0 + v8);
}

uint64_t sub_100079ADC(char *a1)
{
  v3 = *(sub_10007D3B8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v13 = *(v1 + v5);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1000742D8(a1, v1 + v4, v13, v1 + v7, v14, v15, v1 + v10, v16);
}

void sub_100079CA8()
{
  v1 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_10007E0C8();
  (*(v0 + 16))(v0 + v2);
  sub_1000725C8();
}

void sub_100079DC4(void *a1)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    if (*(v1 + 88) == 1)
    {
      v4 = v2;
      [v4 coordinate];
      v6 = v5;
      v8 = v7;
      [a1 pointForCoordinate:?];
      v10 = v9;
      [v4 horizontalAccuracy];
      v12 = v11;
      [v4 horizontalAccuracy];
      v14 = v13;
      v20.latitude = v6;
      v20.longitude = v8;
      v21 = MKCoordinateRegionMakeWithDistance(v20, v12, v14);
      [a1 pointForCoordinate:{v6, v8 + v21.span.longitudeDelta, v21.span.latitudeDelta}];
      v16 = vabdd_f64(v15, v10);
      v17 = [objc_opt_self() mainScreen];
      [v17 scale];
      v19 = v18;

      *(v1 + 80) = 1.0 / v19 * round(v16 / (1.0 / v19));
      *(v1 + 88) = 0;
    }
  }
}

uint64_t sub_100079EF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100079F60(double a1, double a2, double a3, double a4)
{
  v4 = sub_10007DFF8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for WidgetFamily.systemSmall(_:) || v8 == enum case for WidgetFamily.systemMedium(_:) || v8 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10007E0A8();
    return _MKMapRectThatFits();
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

void sub_10007A224(uint64_t a1)
{
  sub_1000649A8(319, &qword_1000E19C0, &type metadata for UserLocationState);
  if (v1 <= 0x3F)
  {
    sub_10007A434(319, &unk_1000E27B8, type metadata accessor for NearbyEntryContent.ResolvedContent, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007A330(uint64_t a1)
{
  sub_10007E0C8();
  if (v1 <= 0x3F)
  {
    sub_10007A434(319, &qword_1000E2850, type metadata accessor for NearbyButtonContent, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1000649A8(319, &qword_1000E05F0, &type metadata for ColorSchemeSpecificImageSet);
      if (v3 <= 0x3F)
      {
        sub_1000649A8(319, &unk_1000E2858, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007A434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10007A500(uint64_t a1)
{
  result = type metadata accessor for NearbyButtonAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007A584(uint64_t a1)
{
  result = sub_10007D288();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007BF14(v2, v5, type metadata accessor for NearbyButtonAction);
  v6 = sub_10007D288();
  return (*(*(v6 - 8) + 32))(a2, v5, v6);
}

id sub_10007A6F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  sub_1000301E4(*v2, v2[1]);
  return v3;
}

uint64_t sub_10007A748(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10007A800(uint64_t a1)
{
  type metadata accessor for NearbyEntryContent(319);
  if (v1 <= 0x3F)
  {
    sub_10007A914(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MKMapType(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MKMapRect(319);
        if (v4 <= 0x3F)
        {
          sub_100026254(319);
          if (v5 <= 0x3F)
          {
            sub_10007A434(319, &unk_1000E1B68, &type metadata accessor for UUID, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10007A914(uint64_t a1)
{
  if (!qword_1000E1B58)
  {
    sub_10002620C(255, &qword_1000DF538, CLLocation_ptr);
    v1 = sub_10007E3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E1B58);
    }
  }
}

uint64_t sub_10007A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v39 = a3;
  v40 = a4;
  v34 = a1;
  v42 = sub_10007DEB8();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007DED8();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10007D3B8();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007E0C8();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyEntryContentResolver(0);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v37 = sub_10007E328();
  sub_10007BF14(v35, v15, type metadata accessor for NearbyEntryContentResolver);
  (*(v10 + 16))(v12, v34, v9);
  v16 = v33;
  (*(v7 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v33);
  v17 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v18 = (v14 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = (v11 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_10007CB14(v15, v20 + v17, type metadata accessor for NearbyEntryContentResolver);
  (*(v10 + 32))(v20 + v18, v12, v31);
  (*(v7 + 32))(v20 + v19, v32, v16);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v40;
  *v21 = v39;
  v21[1] = v22;
  aBlock[4] = sub_10007BF7C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9A90;
  v23 = _Block_copy(aBlock);

  v24 = v38;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007C0D4(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v26 = v41;
  v25 = v42;
  sub_10007E3F8();
  v27 = v37;
  sub_10007E338();
  _Block_release(v23);

  (*(v45 + 8))(v26, v25);
  return (*(v43 + 8))(v24, v44);
}

uint64_t sub_10007AED8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), void (*a5)(char *))
{
  v71 = a4;
  v72 = a5;
  v64 = a3;
  v7 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v59 - v8;
  v63 = type metadata accessor for NearbyEntryContent(0);
  __chkstk_darwin(v63);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007E0C8();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyEntryContentResolver(0);
  v14 = v13 - 8;
  v61 = *(v13 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v13);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100015240(&qword_1000DE928, &unk_100082900);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_10007DFF8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v14 + 40);
  v67 = a1;
  v24 = sub_10007C11C(*(a1 + v23));
  v70 = a2;
  sub_10007E0B8();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == enum case for WidgetFamily.systemSmall(_:) || v25 == enum case for WidgetFamily.systemMedium(_:) || v25 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v36 = sub_10007D5C8();
    sub_1000046BC(v36, qword_1000E4B28);
    v37 = sub_10007D5A8();
    v38 = sub_10007E288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "NearbyEntryContentResolver: generating map snapshot (supported for this family)", v39, 2u);
    }

    v40 = v70;
    v41 = v64;
    v42 = v67;
    sub_10007B7B0(v70, v64, *(v24 + 16) < 2uLL);
    v66 = v43;
    v44 = sub_10007D3B8();
    v45 = *(v44 - 8);
    v46 = *(v45 + 16);
    v60 = v18;
    v46(v18, v41, v44);
    (*(v45 + 56))(v18, 0, 1, v44);
    v47 = v62;
    sub_10007BF14(v42, v62, type metadata accessor for NearbyEntryContentResolver);
    v48 = v24;
    v50 = v68;
    v49 = v69;
    v51 = v65;
    (*(v68 + 16))(v65, v40, v69);
    v52 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v53 = (v15 + *(v50 + 80) + v52) & ~*(v50 + 80);
    v54 = (v12 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_10007CB14(v47, v55 + v52, type metadata accessor for NearbyEntryContentResolver);
    (*(v50 + 32))(v55 + v53, v51, v49);
    *(v55 + v54) = v48;
    v56 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    v57 = v72;
    *v56 = v71;
    v56[1] = v57;

    v58 = v60;
    sub_10003AB38(v60, sub_10007CA04, v55);

    return sub_1000256C0(v58, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v25 == enum case for WidgetFamily.systemExtraLarge(_:) || v25 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v25 == enum case for WidgetFamily.accessoryCorner(_:) || v25 == enum case for WidgetFamily.accessoryCircular(_:) || v25 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v26 = sub_10007D5C8();
    sub_1000046BC(v26, qword_1000E4B28);
    v27 = sub_10007D5A8();
    v28 = sub_10007E288();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "NearbyEntryContentResolver: skipping map snapshot (not supported for this family)", v29, 2u);
    }

    v30 = v66;
    sub_10007BF14(v67, v66, type metadata accessor for NearbyEntryContent);
    v31 = v30 + *(v63 + 20);
    sub_1000256C0(v31, &qword_1000DEF00, &qword_100082E50);
    (*(v68 + 16))(v31, v70, v69);
    v32 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    *(v31 + v32[5]) = v24;
    *(v31 + v32[6]) = xmmword_1000845B0;
    v33 = v31 + v32[7];
    *v33 = 0;
    *(v33 + 8) = 1;
    (*(*(v32 - 1) + 56))(v31, 0, 1, v32);
    sub_10007BF14(v30, v9, type metadata accessor for NearbyEntryContent);
    v34 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
    v71(v9);
    sub_1000256C0(v9, &qword_1000DE630, &unk_1000861F0);
    return sub_10007C9A8(v30);
  }
}

void sub_10007B7B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v47 = a3;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007DFF8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007DF48();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v17 = sub_10007E328();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_10007DF68();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = type metadata accessor for MapSnapshotter();
  v20 = type metadata accessor for NearbyEntryContentResolver(0);
  v21 = v20[9];
  sub_10007E0B8();
  v45 = v21;
  v46 = v19;
  v22 = sub_10003D474(v4 + v21, v13);
  v23 = *(v11 + 8);
  v23(v13, v10);
  if (v22)
  {
    type metadata accessor for NearbySnapshotter();
    if (swift_dynamicCastClass())
    {
      return;
    }
  }

  v24 = v48;
  v25 = *(v49 + 16);
  v44 = a1;
  v25(v9, a1, v48);
  v26 = *(v4 + v20[5]);
  v43 = *(v4 + v20[6]);
  v27 = (v4 + v20[7]);
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  type metadata accessor for NearbySnapshotter();
  v32 = swift_allocObject();
  *(v32 + 80) = 0;
  *(v32 + 88) = 1;
  *(v32 + 96) = v26;
  *(v32 + 16) = xmmword_1000834F0;
  *(v32 + 32) = 0;
  v33 = v26;
  *(v32 + 40) = dispatch_group_create();
  *(v32 + 48) = 0;
  *(v32 + 56) = sub_100024EF0(_swiftEmptyArrayStorage);
  *(v32 + 64) = 0;
  *(v32 + 72) = _swiftEmptyArrayStorage;
  v34 = objc_allocWithZone(MKMapSnapshotOptions);
  swift_retain_n();
  v35 = [v34 init];
  v36 = *(v32 + 16);
  *(v32 + 16) = v35;

  if (!v35)
  {
    goto LABEL_12;
  }

  [v35 _setShowsAppleLogo:0];
  v37 = *(v32 + 16);
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v37;
  sub_10007E0A8();
  [v38 setSize:?];

  sub_100079F60(v28, v29, v30, v31);
  v39 = *(v32 + 16);
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v39 setMapRect:?];
  v40 = *(v32 + 16);
  v41 = v40;

  if (!v40)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v41 setMapType:v43];

  (*(v49 + 8))(v9, v24);
  sub_10007E0B8();
  sub_10003DC98(v32, (v4 + v45), v13);
  v23(v13, v10);
}

uint64_t sub_10007BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v27 = a5;
  v8 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NearbyEntryContent(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NearbySnapshotter();
  v15 = swift_dynamicCastClassUnconditional();
  sub_10007BF14(a2, v14, type metadata accessor for NearbyEntryContent);
  v16 = &v14[*(v12 + 28)];
  sub_1000256C0(v16, &qword_1000DEF00, &qword_100082E50);
  v17 = sub_10007E0C8();
  (*(*(v17 - 8) + 16))(v16, a3, v17);
  v18 = *(v15 + 24);
  v19 = *(v15 + 32);
  v20 = *(v15 + 80);
  LOBYTE(v15) = *(v15 + 88);
  v21 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  *(v16 + v21[5]) = a4;
  v22 = (v16 + v21[6]);
  *v22 = v18;
  v22[1] = v19;
  v23 = v16 + v21[7];
  *v23 = v20;
  *(v23 + 8) = v15;
  (*(*(v21 - 1) + 56))(v16, 0, 1, v21);
  sub_10007BF14(v14, v10, type metadata accessor for NearbyEntryContent);
  v24 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);

  sub_1000301E4(v18, v19);
  v27(v10);
  sub_1000256C0(v10, &qword_1000DE630, &unk_1000861F0);
  return sub_10007C9A8(v14);
}

uint64_t sub_10007BF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007BF7C()
{
  v1 = *(type metadata accessor for NearbyEntryContentResolver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10007D3B8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10007AED8(v0 + v2, v0 + v5, v0 + v8, v10, v11);
}

uint64_t sub_10007C0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007C11C(unint64_t a1)
{
  v69 = a1;
  v68 = type metadata accessor for NearbyButtonAction(0);
  __chkstk_darwin(v68);
  v66 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for NearbyButtonContent(0);
  v2 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_10007DFF8();
  v4 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v58 - v7);
  sub_100015240(&qword_1000E2558, qword_100086200);
  v9 = *(v2 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v65 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100082820;
  v64 = v10;
  v12 = (v11 + v10);
  if (qword_1000DE228 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v14 = qword_1000E4AD0;
    v13 = *algn_1000E4AD8;
    v15 = qword_1000DE280;
    v16 = qword_1000E4AD0;
    v17 = v13;
    if (v15 != -1)
    {
      swift_once();
    }

    v18.super.isa = qword_1000E4B68;
    v57._countAndFlagsBits = 0x800000010008F6C0;
    v74._countAndFlagsBits = 0x686372616553;
    v72._object = 0x800000010008F6A0;
    v72._countAndFlagsBits = 0xD000000000000014;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v74._object = 0xE600000000000000;
    v19 = sub_10007D258(v72, v73, v18, v74, 0xD00000000000001FLL, v57);
    v21 = v20;
    sub_10007E0B8();
    sub_10006707C(v8);
    v22 = v8;
    v8 = v70;
    (v4[1])(v22, v70);
    swift_storeEnumTagMultiPayload();
    *v12 = v14;
    v12[1] = v13;
    v12[2] = v19;
    v12[3] = v21;
    if (!v69)
    {
      return v11;
    }

    v23 = v63;
    sub_10007E0B8();
    v24 = v4[11];
    v4 += 11;
    v25 = (v24)(v23, v8);
    if (v25 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v25 == enum case for WidgetFamily.systemMedium(_:))
      {
        v26 = 2;
        goto LABEL_11;
      }

      if (v25 == enum case for WidgetFamily.systemLarge(_:))
      {
        v26 = 4;
        goto LABEL_11;
      }

      if (v25 == enum case for WidgetFamily.systemExtraLarge(_:) || v25 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v25 == enum case for WidgetFamily.accessoryCorner(_:) || v25 == enum case for WidgetFamily.accessoryCircular(_:))
      {
        goto LABEL_38;
      }

      if (v25 != enum case for WidgetFamily.accessoryRectangular(_:))
      {
        if (v25 == enum case for WidgetFamily.accessoryInline(_:))
        {
LABEL_38:
          LODWORD(v57._object) = 0;
        }

        else
        {
LABEL_47:
          LODWORD(v57._object) = 0;
        }

        sub_10007E518();
        __break(1u);
        goto LABEL_40;
      }
    }

    v26 = 1;
LABEL_11:
    v63 = v26;
    v59 = v69 & 0xFFFFFFFFFFFFFF8;
    if (v69 >> 62)
    {
      v27 = sub_10007E528();
      if (!v27)
      {
        return v11;
      }
    }

    else
    {
      v27 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        return v11;
      }
    }

    v28 = objc_opt_self();
    v29 = 0;
    v61 = v28;
    v62 = v69 & 0xC000000000000001;
    v4 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    v8 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    v60 = v27;
    while (1)
    {
      if (v62)
      {
        v30 = sub_10007E468();
      }

      else
      {
        if (v29 >= *(v59 + 16))
        {
          goto LABEL_41;
        }

        v30 = *(v69 + 8 * v29 + 32);
      }

      v12 = v30;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v70 = v29 + 1;
      v31 = [v30 styleAttributes];
      v32 = [v28 v4[34]];
      [v32 v8[35]];
      v34 = v33;

      if (!v31 || (v35 = [objc_opt_self() imageForStyle:v31 size:4 forScale:0 format:0 nightMode:v34]) == 0)
      {
        v36 = objc_opt_self();
        v37 = [objc_opt_self() markerStyleAttributes];
        v35 = [v36 imageForStyle:v37 size:4 forScale:0 format:0 nightMode:v34];
      }

      v38 = [v28 v4[34]];
      [v38 v8[35]];
      v40 = v39;

      if (!v31 || (v41 = [objc_opt_self() imageForStyle:v31 size:4 forScale:0 format:1 nightMode:v40]) == 0)
      {
        v42 = objc_opt_self();
        v43 = [objc_opt_self() markerStyleAttributes];
        v41 = [v42 imageForStyle:v43 size:4 forScale:0 format:1 nightMode:v40];
      }

      v8 = v4;

      v44 = [v12 shortDisplayString];
      if (!v44)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v45 = v44;
      v4 = v11;
      v46 = sub_10007E158();
      v48 = v47;

      v49 = [v12 mapsURL];
      if (!v49)
      {
        goto LABEL_46;
      }

      v50 = v49;
      v51 = v66;
      sub_10007D278();

      swift_storeEnumTagMultiPayload();
      v52 = v71;
      *v71 = v35;
      v52[1] = v41;
      v52[2] = v46;
      v52[3] = v48;
      sub_10007CB14(v51, v52 + *(v67 + 24), type metadata accessor for NearbyButtonAction);
      v11 = v4;
      v54 = v4[2];
      v53 = v4[3];
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v11 = sub_10007763C((v53 > 1), v54 + 1, 1, v4);
      }

      v28 = v61;
      v4 = v8;

      *(v11 + 16) = v55;
      sub_10007CB14(v71, v11 + v64 + v54 * v65, type metadata accessor for NearbyButtonContent);
      v8 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
      if (v55 < v63)
      {
        ++v29;
        if (v70 != v60)
        {
          continue;
        }
      }

      return v11;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }
}

uint64_t sub_10007C9A8(uint64_t a1)
{
  v2 = type metadata accessor for NearbyEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007CA04(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyEntryContentResolver(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10007BC64(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_10007CB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_10007CBA0(int a1, int a2, int a3)
{
  if (qword_1000E4AB0 == -1)
  {
    v3 = dword_1000E4AA0 < a1;
    if (dword_1000E4AA0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10007D1E8();
    a2 = v6;
    a3 = v5;
    v3 = dword_1000E4AA0 < a1;
    if (dword_1000E4AA0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1000E4AA4 > a2)
  {
    return 1;
  }

  if (dword_1000E4AA4 < a2)
  {
    return 0;
  }

  return dword_1000E4AA8 >= a3;
}

uint64_t sub_10007CC60(int a1, int a2, int a3, int a4)
{
  if (qword_1000E4AB8 == -1)
  {
    if (qword_1000E4AC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10007D200();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000E4AC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000E4AB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10007D1E8();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000E4AA0 < v11;
    if (dword_1000E4AA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000E4AA4 > a3)
      {
        return 1;
      }

      if (dword_1000E4AA4 >= a3)
      {
        return dword_1000E4AA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000E4AA0 < a2;
  if (dword_1000E4AA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10007CDF4(uint64_t result)
{
  v1 = qword_1000E4AC0;
  if (qword_1000E4AC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000E4AC0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000E4AA0, &dword_1000E4AA4, &dword_1000E4AA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

id sub_10007D18C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if ([a1 type] == 11)
    {
      a1 = [v2 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}