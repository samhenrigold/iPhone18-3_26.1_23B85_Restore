void sub_1000023BC(id a1)
{
  qword_1000997C0 = objc_alloc_init(QuickNoteAlertManager);

  _objc_release_x1();
}

void sub_10000275C(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 8)])
  {
    [*(a1 + 32) invalidate];
    [*(a1 + 32) unregisterObserver:*(a1 + 40)];
    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

uint64_t sub_100002B0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002B24(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [ICAppURLUtilities appURLForNote:*(a1 + 32)];
    v6 = [v5 absoluteString];
    v7 = [*(a1 + 32) title];
    v8 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:*(a1 + 32) folderNoteSortType:*(a1 + 48)];
    v9 = [*(a1 + 32) contentInfoText];
    v10 = [*(a1 + 32) isPasswordProtected];
    v11 = [*(a1 + 32) isSharedViaICloud];
    v12 = [*(a1 + 32) isSharedViaICloud];
    if (v12)
    {
      LOBYTE(v12) = [*(a1 + 32) hasUnreadChanges];
    }

    LOBYTE(v17) = v12;
    v13 = [v4 initWithIdentifier:v6 title:v7 date:v8 contentInfo:v9 isLocked:v10 isShared:v11 isUnread:v17];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(a1 + 32);

    [v16 turnAttachmentsIntoFaults];
  }
}

void sub_100002CAC(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v13 = [ICAppURLUtilities appURLForHTMLNote:*(a1 + 32)];
    v5 = [v13 absoluteString];
    v6 = [*(a1 + 32) title];
    v7 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:*(a1 + 32) folderNoteSortType:*(a1 + 48)];
    v8 = [*(a1 + 32) contentInfoText];
    LOBYTE(v12) = 0;
    v9 = [v4 initWithIdentifier:v5 title:v6 date:v7 contentInfo:v8 isLocked:0 isShared:0 isUnread:v12];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

uint64_t sub_100003568(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003580(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    v5 = v4;
    if (v4)
    {
      v15 = v4;
    }

    else
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      v15 = [v6 account];
    }

    v7 = *(a1 + 40);
    v8 = [ICAppURLUtilities appURLForFolder:v15];
    v9 = [v8 absoluteString];
    v10 = [v15 allItemsFolderLocalizedTitle];
    v11 = +[ICFolder defaultSystemImageName];
    v12 = [v7 initWithIdentifier:v9 title:v10 depth:0 shareDescription:0 systemImageName:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_1000036FC(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v12 = ICClassAndProtocolCast();
    v4 = *(a1 + 40);
    v5 = [ICAppURLUtilities appURLForHTMLFolder:v12, &OBJC_PROTOCOL___ICLegacyAccount];
    v6 = [v5 absoluteString];
    v7 = [v12 allItemsFolderLocalizedTitle];
    v8 = +[ICFolder defaultSystemImageName];
    v9 = [v4 initWithIdentifier:v6 title:v7 depth:0 shareDescription:0 systemImageName:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_100003850(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v14 = ICDynamicCast();
    v4 = *(a1 + 40);
    v5 = [ICAppURLUtilities appURLForFolder:v14];
    v6 = [v5 absoluteString];
    v7 = [v14 localizedTitle];
    v8 = [v14 depth];
    v9 = [v14 shareDescription];
    v10 = [v14 systemImageName];
    v11 = [v4 initWithIdentifier:v6 title:v7 depth:v8 shareDescription:v9 systemImageName:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_1000039B4(uint64_t a1)
{
  v2 = +[ICWidget sharedWidget];
  v3 = [v2 hidesObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    objc_opt_class();
    v13 = ICClassAndProtocolCast();
    v4 = *(a1 + 40);
    v5 = [ICAppURLUtilities appURLForHTMLFolder:v13, &OBJC_PROTOCOL___ICLegacyFolder];
    v6 = [v5 absoluteString];
    v7 = [v13 localizedTitle];
    v8 = [v13 depth];
    v9 = +[ICFolder defaultSystemImageName];
    v10 = [v4 initWithIdentifier:v6 title:v7 depth:v8 shareDescription:0 systemImageName:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

uint64_t sub_100003E60@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100007DF0(&qword_1000969E8, &qword_10006F378);
  __chkstk_darwin(v1);
  v3 = v30 - v2;
  v34 = type metadata accessor for QuickNoteContent(0);
  __chkstk_darwin(v34);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Note(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100007DF0(&qword_1000969F0, &qword_10006F380);
  __chkstk_darwin(v33);
  v10 = v30 - v9;
  v11 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_100007DF0(&qword_1000969F8, &qword_10006F388);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  *(&v39 + 1) = &type metadata for PencilAndPaperFeature;
  *&v40 = sub_100007FF8();
  *&v38 = "QNWidget";
  *(&v38 + 1) = 8;
  LOBYTE(v39) = 2;
  v17 = sub_10006A630();
  sub_10000804C(&v38);
  if (v17)
  {
    v30[1] = v14;
    sub_100009728(v32, v13, &qword_100096948, &qword_1000751E0);
    if ((*(v7 + 48))(v13, 2, v6))
    {
      swift_storeEnumTagMultiPayload();
      sub_10000819C();
      sub_100008CAC(&qword_100096A20, type metadata accessor for QuickNoteContent, &unk_10006F4A8);
      sub_10006AA50();
    }

    else
    {
      v23 = v13;
      v24 = v31;
      sub_1000081F0(v23, v31);
      sub_100008264(v24, v5, type metadata accessor for Note);
      v25 = v34;
      *&v5[*(v34 + 20)] = 0xC01C000000000000;
      v26 = v25[6];
      *&v5[v26] = swift_getKeyPath();
      sub_100007DF0(&qword_100096A30, &qword_100076650);
      swift_storeEnumTagMultiPayload();
      v27 = &v5[v25[7]];
      *v27 = swift_getKeyPath();
      v27[8] = 0;
      v28 = v25[8];
      *&v5[v28] = swift_getKeyPath();
      sub_100007DF0(&qword_100096A38, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      v29 = v25[9];
      *&v5[v29] = swift_getKeyPath();
      sub_100007DF0(&qword_100096A40, &unk_10006F460);
      swift_storeEnumTagMultiPayload();
      sub_100008264(v5, v10, type metadata accessor for QuickNoteContent);
      swift_storeEnumTagMultiPayload();
      sub_10000819C();
      sub_100008CAC(&qword_100096A20, type metadata accessor for QuickNoteContent, &unk_10006F4A8);
      sub_10006AA50();
      sub_1000082CC(v5, type metadata accessor for QuickNoteContent);
      sub_1000082CC(v24, type metadata accessor for Note);
    }

    sub_100009728(v16, v3, &qword_1000969F8, &qword_10006F388);
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100096A08, &qword_10006F390);
    sub_100008098();
    sub_1000095F4(&qword_100096A28, &qword_100096A08, &qword_10006F390, &protocol conformance descriptor for VStack<A>);
    sub_10006AA50();
    return sub_100009790(v16, &qword_1000969F8, &qword_10006F388);
  }

  else
  {
    v18 = sub_10006A9E0();
    v37 = 1;
    sub_10000452C(&v38);
    *&v36[55] = v41;
    *&v36[39] = v40;
    *&v36[23] = v39;
    *&v36[7] = v38;
    v19 = *v36;
    *(v3 + 33) = *&v36[16];
    v20 = *&v36[48];
    *(v3 + 49) = *&v36[32];
    *(v3 + 65) = v20;
    v21 = v37;
    *v3 = v18;
    *(v3 + 1) = 0;
    v3[16] = v21;
    *(v3 + 10) = *&v36[63];
    *(v3 + 17) = v19;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100096A08, &qword_10006F390);
    sub_100008098();
    sub_1000095F4(&qword_100096A28, &qword_100096A08, &qword_10006F390, &protocol conformance descriptor for VStack<A>);
    return sub_10006AA50();
  }
}

uint64_t sub_10000452C@<X0>(uint64_t a1@<X8>)
{
  sub_10006ABC0();
  v2 = sub_10006AC80();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;

  sub_10006ABB0();
  v6 = sub_10006AC80();
  v8 = v7;
  v10 = v9;

  sub_10006AE60();
  v11 = sub_10006AC60();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000832C(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_10000833C(v21, v20, v19 & 1);

  sub_10000833C(v11, v13, v15 & 1);

  sub_10000832C(v11, v13, v15 & 1);

  sub_10000832C(v21, v20, v19 & 1);
}

uint64_t sub_10000471C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096A30, &qword_100076650);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for QuickNoteContent(0);
  sub_100009728(v1 + *(v10 + 24), v9, &qword_100096A30, &qword_100076650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006A740();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006B3B0();
    v13 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10000494C()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for QuickNoteContent(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100004AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096A40, &unk_10006F460);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for QuickNoteContent(0);
  sub_100009728(v1 + *(v10 + 36), v9, &qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006B0C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006B3B0();
    v13 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100004CAC()
{
  v19 = sub_10006A950();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_10006B100();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for QuickNoteContent(0) + 32);
  v20 = v0;
  sub_100009728(v0 + v11, v6, &qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_10006B3B0();
    v12 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v19);
  }

  v13 = (*(v8 + 88))(v10, v7);
  v14 = enum case for WidgetFamily.systemSmall(_:);
  v15 = type metadata accessor for Note(0);
  if (v13 == v14)
  {
    v16 = *(v20 + *(v15 + 64));
  }

  else
  {
    v16 = *(v20 + *(v15 + 60));
    v17 = *(v8 + 8);

    v17(v10, v7);
  }

  return v16;
}

double sub_100004F98()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for QuickNoteContent(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 0.0;
  if (v6)
  {
    return 12.0;
  }

  return result;
}

double sub_1000050FC()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for QuickNoteContent(0);
  v6 = v0 + *(v5 + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v9 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.0;
    if (v10[15] != 1)
    {
      return result;
    }

    return *(v0 + *(v5 + 20));
  }

  result = 0.0;
  if (v7)
  {
    return *(v0 + *(v5 + 20));
  }

  return result;
}

uint64_t sub_10000527C()
{
  sub_10006AE00();
  result = sub_10006AF70();
  qword_1000A5510 = result;
  qword_1000A5518 = v1;
  return result;
}

uint64_t sub_1000052F4(double a1, double a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_10006AE00();
  sub_10006AE40();

  result = sub_10006AF70();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_100005360()
{
  sub_100007DF0(&qword_100096CB8, &qword_10006F6C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10006F2A0;
  if (qword_1000967E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000A5518;
  *(v0 + 32) = qword_1000A5510;
  *(v0 + 40) = v1;
  v2 = qword_1000967F0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1000A5528;
  *(v0 + 48) = qword_1000A5520;
  *(v0 + 56) = v3;
  v4 = qword_1000967F8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1000A5538;
  *(v0 + 64) = qword_1000A5530;
  *(v0 + 72) = v5;
  qword_1000A5540 = v0;
}

uint64_t sub_1000054A4()
{
  v0 = sub_100007DF0(&qword_100096BF0, &qword_10006F650);
  __chkstk_darwin(v0);
  v2 = v15 - v1;
  v3 = sub_100007DF0(&qword_100096BF8, &qword_10006F658);
  __chkstk_darwin(v3);
  v5 = v15 - v4;
  v6 = sub_100007DF0(&qword_100096C00, &qword_10006F660);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  if (sub_10000494C())
  {
    sub_100005774(v8);
    sub_100009728(v8, v5, &qword_100096C00, &qword_10006F660);
    swift_storeEnumTagMultiPayload();
    sub_100008F94();
    sub_10000953C();
    sub_10006AA50();
    v9 = v8;
    v10 = &qword_100096C00;
    v11 = &qword_10006F660;
  }

  else
  {
    sub_100005774(v2);
    if (qword_100096800 != -1)
    {
      swift_once();
    }

    sub_10006AFE0();
    sub_10006AFF0();
    sub_10006AF80();
    sub_10006A7C0();
    v12 = &v2[*(v0 + 36)];
    *v12 = v15[1];
    v13 = v17;
    *(v12 + 8) = v16;
    *(v12 + 24) = v13;
    sub_100009728(v2, v5, &qword_100096BF0, &qword_10006F650);
    swift_storeEnumTagMultiPayload();
    sub_100008F94();
    sub_10000953C();
    sub_10006AA50();
    v9 = v2;
    v10 = &qword_100096BF0;
    v11 = &qword_10006F650;
  }

  return sub_100009790(v9, v10, v11);
}

uint64_t sub_100005774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v155 = a1;
  v154 = sub_10006A740();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v5 = __chkstk_darwin(v4 - 8);
  v119 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v156 = &v119 - v8;
  __chkstk_darwin(v7);
  v151 = &v119 - v9;
  v148 = sub_10006AAB0();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10006AB00();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10006A9D0();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10006ABF0();
  v13 = *(v122 - 8);
  __chkstk_darwin(v122);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007DF0(&qword_100096C88, &qword_10006F6A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v119 - v17;
  v19 = sub_100007DF0(&qword_100096C78, &qword_10006F6A0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v119 - v21;
  v23 = sub_100007DF0(&qword_100096C60, &qword_10006F698);
  __chkstk_darwin(v23);
  v25 = &v119 - v24;
  v126 = sub_100007DF0(&qword_100096C58, &qword_10006F690);
  v130 = *(v126 - 8);
  __chkstk_darwin(v126);
  v120 = &v119 - v26;
  v132 = sub_100007DF0(&qword_100096CC0, &qword_10006F6C8);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v121 = &v119 - v27;
  v125 = sub_100007DF0(&qword_100096C50, &qword_10006F688) - 8;
  __chkstk_darwin(v125);
  v123 = &v119 - v28;
  v127 = sub_100007DF0(&qword_100096C40, &qword_10006F680) - 8;
  __chkstk_darwin(v127);
  v124 = &v119 - v29;
  v131 = sub_100007DF0(&qword_100096C28, &qword_10006F678);
  __chkstk_darwin(v131);
  v31 = &v119 - v30;
  v138 = sub_100007DF0(&qword_100096CC8, &qword_10006F6D0);
  v139 = *(v138 - 8);
  __chkstk_darwin(v138);
  v128 = &v119 - v32;
  v158 = sub_100007DF0(&qword_100096C18, &qword_10006F670);
  v33 = __chkstk_darwin(v158);
  v134 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v137 = &v119 - v35;
  v145 = sub_100007DF0(&qword_100096C10, &qword_10006F668);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v157 = &v119 - v36;
  v150 = sub_100007DF0(&qword_100096CD0, &qword_10006F6D8);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v147 = &v119 - v37;
  *v18 = sub_10006A9E0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v38 = sub_100007DF0(&qword_100096CD8, &qword_10006F6E0);
  sub_1000069E8(&v18[*(v38 + 44)]);
  sub_10006AFB0();
  sub_10006A7F0();
  sub_1000096C0(v18, v22, &qword_100096C88, &qword_10006F6A8);
  v39 = &v22[*(v20 + 44)];
  v40 = v167;
  *(v39 + 4) = v166;
  *(v39 + 5) = v40;
  *(v39 + 6) = v168;
  v41 = v163;
  *v39 = v162;
  *(v39 + 1) = v41;
  v42 = v165;
  *(v39 + 2) = v164;
  *(v39 + 3) = v42;
  v43 = v122;
  (*(v13 + 104))(v15, enum case for Font.TextStyle.footnote(_:), v122);
  v44 = sub_10006AB90();
  (*(v13 + 8))(v15, v43);
  KeyPath = swift_getKeyPath();
  sub_1000096C0(v22, v25, &qword_100096C78, &qword_10006F6A0);
  v46 = &v25[*(v23 + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = v135;
  v48 = v133;
  v49 = v136;
  (*(v135 + 104))(v133, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v136);
  v50 = sub_1000093CC();
  v51 = v120;
  sub_10006ACD0();
  (*(v47 + 8))(v48, v49);
  sub_100009790(v25, &qword_100096C60, &qword_10006F698);
  v52 = v140;
  sub_10006AAF0();
  v159 = v2;
  sub_10006AFB0();
  v160 = v23;
  v161 = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v121;
  v54 = v126;
  sub_10006AD80();
  (*(v141 + 8))(v52, v142);
  (*(v130 + 8))(v51, v54);
  LOBYTE(v49) = sub_10006AB60();
  sub_1000050FC();
  sub_10006A720();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v123;
  (*(v129 + 32))(v123, v53, v132);
  v64 = &v63[*(v125 + 44)];
  *v64 = v49;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  LOBYTE(v49) = sub_10006AB40();
  v65 = v2;
  sub_100004F98();
  sub_10006A720();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v63;
  v75 = v124;
  sub_1000096C0(v74, v124, &qword_100096C50, &qword_10006F688);
  v76 = v75 + *(v127 + 44);
  *v76 = v49;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  LOBYTE(v49) = sub_10006AB70();
  sub_1000050FC();
  sub_10006A720();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  sub_1000096C0(v75, v31, &qword_100096C40, &qword_10006F680);
  v85 = v131;
  v86 = &v31[*(v131 + 36)];
  *v86 = v49;
  *(v86 + 1) = v78;
  *(v86 + 2) = v80;
  *(v86 + 3) = v82;
  *(v86 + 4) = v84;
  v86[40] = 0;
  v87 = v143;
  sub_10006AA90();
  v88 = sub_1000091F8(&qword_100096C30, &qword_100096C28, &qword_10006F678, sub_10000927C);
  v89 = v128;
  sub_10006AD90();
  (*(v146 + 8))(v87, v148);
  v90 = v31;
  v91 = v65;
  sub_100009790(v90, &qword_100096C28, &qword_10006F678);
  sub_100065AC4();
  v160 = v85;
  v161 = v88;
  swift_getOpaqueTypeConformance2();
  v92 = v134;
  v93 = v138;
  sub_10006AD30();

  (*(v139 + 8))(v89, v93);

  v94 = v137;
  v95 = v156;
  sub_10006A7D0();

  sub_100009790(v92, &qword_100096C18, &qword_10006F670);
  v96 = sub_1000090CC();
  sub_10006AD60();
  sub_100009790(v94, &qword_100096C18, &qword_10006F670);
  v148 = type metadata accessor for Note(0);
  sub_100009728(v91 + *(v148 + 48), v95, &qword_100096B30, &qword_10006F548);
  v97 = sub_10006A520();
  v98 = *(v97 - 8);
  v99 = *(v98 + 48);
  if (v99(v95, 1, v97) == 1)
  {
    v100 = v151;
    v101 = objc_opt_self();
    v102 = [objc_opt_self() globalVirtualSystemPaperFolder];
    v103 = [v101 appURLForVirtualSmartFolder:v102];

    if (v103)
    {
      v104 = v119;
      sub_10006A4F0();

      v105 = 0;
      v106 = v154;
      v107 = v153;
    }

    else
    {
      v105 = 1;
      v106 = v154;
      v107 = v153;
      v104 = v119;
    }

    (*(v98 + 56))(v104, v105, 1, v97);
    sub_100009644(v104, v100);
    v108 = v156;
    if (v99(v156, 1, v97) != 1)
    {
      sub_100009790(v108, &qword_100096B30, &qword_10006F548);
    }
  }

  else
  {
    v100 = v151;
    (*(v98 + 32))(v151, v95, v97);
    (*(v98 + 56))(v100, 0, 1, v97);
    v106 = v154;
    v107 = v153;
  }

  v160 = v158;
  v161 = v96;
  swift_getOpaqueTypeConformance2();
  v109 = v147;
  v110 = v145;
  v111 = v157;
  sub_10006ACF0();
  sub_100009790(v100, &qword_100096B30, &qword_10006F548);
  (*(v144 + 8))(v111, v110);
  v112 = v152;
  if (*(v91 + *(v148 + 68)))
  {
    (*(v107 + 104))(v152, enum case for ColorScheme.light(_:), v106);
  }

  else
  {
    sub_10000471C(v152);
  }

  v113 = swift_getKeyPath();
  v114 = sub_100007DF0(&qword_100096C00, &qword_10006F660);
  v115 = v155;
  v116 = (v155 + *(v114 + 36));
  v117 = sub_100007DF0(&qword_100096C98, &qword_10006F6B0);
  (*(v107 + 32))(v116 + *(v117 + 28), v112, v106);
  *v116 = v113;
  return (*(v149 + 32))(v115, v109, v150);
}

uint64_t sub_1000069E8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10006B0C0();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v36 - v5;
  v7 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_10006AEB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007DF0(&qword_100096CE8, &qword_10006F720);
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v37 = &v36 - v15;
  v16 = sub_100007DF0(&qword_100096CF0, &qword_10006F728);
  v17 = __chkstk_darwin(v16 - 8);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v36 - v20;
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  if (sub_100004CAC())
  {
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v36 = sub_10006AF00();

    (*(v11 + 8))(v13, v10);
    sub_100004AA4(v6);
    sub_10006B0B0();
    v24 = sub_10006B080();
    v25 = v41;
    v26 = *(v40 + 8);
    v26(v4, v41);
    v26(v6, v25);
    if ((v24 & 1) != 0 && _UISolariumEnabled())
    {
      sub_10006B0E0();
    }

    else
    {
      sub_10006B0D0();
    }

    v27 = sub_10006B0F0();
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
    v28 = v37;
    sub_10006AEF0();

    sub_100009790(v9, &qword_100096CE0, &unk_1000753B0);
    (*(v38 + 32))(v21, v28, v39);
    v29 = sub_100007DF0(&qword_100096CF8, &qword_10006F730);
    v30 = &v21[*(v29 + 36)];
    *v30 = 0;
    *(v30 + 4) = 257;
    (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
  }

  else
  {
    v31 = sub_100007DF0(&qword_100096CF8, &qword_10006F730);
    (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  }

  sub_1000096C0(v21, v23, &qword_100096CF0, &qword_10006F728);
  v32 = v42;
  sub_100009728(v23, v42, &qword_100096CF0, &qword_10006F728);
  v33 = v43;
  sub_100009728(v32, v43, &qword_100096CF0, &qword_10006F728);
  v34 = v33 + *(sub_100007DF0(&qword_100096D00, &qword_10006F738) + 48);
  *v34 = 0;
  *(v34 + 8) = 0;
  sub_100009790(v23, &qword_100096CF0, &qword_10006F728);
  return sub_100009790(v32, &qword_100096CF0, &qword_10006F728);
}

uint64_t sub_100006F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for Note(0) + 68)) == 1)
  {
    result = sub_10006AE20();
  }

  else
  {
    if (qword_100096910 != -1)
    {
      swift_once();
    }
  }

  *a2 = result;
  return result;
}

uint64_t sub_100006FD4@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v1 - 8);
  v67 = &v51 - v2;
  v64 = sub_10006AAB0();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10006AB00();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100096B38, &qword_10006F550);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_100007DF0(&qword_100096B40, &qword_10006F558);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v13 = sub_100007DF0(&qword_100096B48, &qword_10006F560);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v56 = sub_100007DF0(&qword_100096B50, &qword_10006F568);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v51 - v16;
  v58 = sub_100007DF0(&qword_100096B58, &qword_10006F570);
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = &v51 - v17;
  v55 = sub_100007DF0(&qword_100096B60, &qword_10006F578);
  __chkstk_darwin(v55);
  v54 = &v51 - v18;
  v66 = sub_100007DF0(&qword_100096B68, &qword_10006F580);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v53 = &v51 - v19;
  *v8 = sub_10006A9E0();
  *(v8 + 1) = 0x4014000000000000;
  v8[16] = 0;
  v20 = sub_100007DF0(&qword_100096B70, &qword_10006F588);
  sub_100007994(&v8[*(v20 + 44)]);
  sub_10006AFB0();
  sub_10006A7F0();
  sub_1000096C0(v8, v12, &qword_100096B38, &qword_10006F550);
  v21 = &v12[*(v10 + 44)];
  v22 = v78;
  *(v21 + 4) = v77;
  *(v21 + 5) = v22;
  *(v21 + 6) = v79;
  v23 = v74;
  *v21 = v73;
  *(v21 + 1) = v23;
  v24 = v76;
  *(v21 + 2) = v75;
  *(v21 + 3) = v24;
  LOBYTE(v8) = sub_10006AB30();
  sub_1000096C0(v12, v15, &qword_100096B40, &qword_10006F558);
  v25 = &v15[*(v13 + 36)];
  *v25 = v8;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  sub_10006AAF0();
  sub_10006AFB0();
  v26 = sub_1000091F8(&qword_100096B78, &qword_100096B48, &qword_10006F560, sub_100008A70);
  v27 = v51;
  sub_10006AD80();
  (*(v59 + 8))(v5, v60);
  sub_100009790(v15, &qword_100096B48, &qword_10006F560);
  v28 = v62;
  sub_10006AA90();
  v69 = v13;
  v70 = &type metadata for Color;
  v71 = v26;
  v72 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v52;
  v31 = v56;
  sub_10006AD90();
  (*(v63 + 8))(v28, v64);
  v32 = v31;
  (*(v57 + 8))(v27, v31);
  sub_10006A980();
  v33 = sub_10006AC90();
  v35 = v34;
  LOBYTE(v27) = v36;
  v69 = v32;
  v70 = OpaqueTypeConformance2;
  v37 = v55;
  swift_getOpaqueTypeConformance2();
  v38 = v54;
  v39 = v58;
  sub_10006AD30();
  v40 = v33;
  v41 = v53;
  sub_10000832C(v40, v35, v27 & 1);

  (*(v61 + 8))(v30, v39);
  v42 = sub_100008B28();
  sub_10006AD60();
  sub_100009790(v38, &qword_100096B60, &qword_10006F578);
  v43 = objc_opt_self();
  v44 = [objc_opt_self() globalVirtualSystemPaperFolder];
  v45 = [v43 appURLForVirtualSmartFolder:v44];

  v46 = v67;
  if (v45)
  {
    sub_10006A4F0();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = sub_10006A520();
  (*(*(v48 - 8) + 56))(v46, v47, 1, v48);
  v69 = v37;
  v70 = v42;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  sub_10006ACF0();
  sub_100009790(v46, &qword_100096B30, &qword_10006F548);
  return (*(v65 + 8))(v41, v49);
}

uint64_t sub_100007994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007DF0(&qword_100096BA0, &qword_10006F590);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v28[-v7];
  v33 = sub_10006AEC0();
  v32 = sub_10006ABA0();
  KeyPath = swift_getKeyPath();
  v9 = [objc_opt_self() ICTintColor];
  v30 = sub_10006ADD0();
  v29 = sub_10006AA80();
  sub_10006A980();
  v10 = sub_10006AC90();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = sub_10006ABB0();
  v19 = swift_getKeyPath();
  v38 = v14 & 1;
  *&v34 = v10;
  *(&v34 + 1) = v12;
  LOBYTE(v35) = v14 & 1;
  *(&v35 + 1) = v16;
  *&v36 = v17;
  BYTE8(v36) = 1;
  *&v37 = v19;
  *(&v37 + 1) = v18;
  sub_10006ABE0();
  sub_100007DF0(&qword_100096BA8, &qword_10006F5F8);
  sub_100008DCC();
  sub_10006AD20();
  v39[0] = v34;
  v39[1] = v35;
  v39[2] = v36;
  v39[3] = v37;
  sub_100009790(v39, &qword_100096BA8, &qword_10006F5F8);
  v20 = sub_10006AE60();
  v21 = swift_getKeyPath();
  v22 = &v8[*(v3 + 44)];
  *v22 = v21;
  v22[1] = v20;
  sub_100009728(v8, v6, &qword_100096BA0, &qword_10006F590);
  v23 = v32;
  v24 = KeyPath;
  *a1 = v33;
  *(a1 + 8) = v24;
  v25 = v30;
  *(a1 + 16) = v23;
  *(a1 + 24) = v25;
  *(a1 + 32) = v29;
  v26 = sub_100007DF0(&qword_100096BE8, &qword_10006F648);
  sub_100009728(v6, a1 + *(v26 + 48), &qword_100096BA0, &qword_10006F590);

  sub_100009790(v8, &qword_100096BA0, &qword_10006F590);
  sub_100009790(v6, &qword_100096BA0, &qword_10006F590);
}

uint64_t sub_100007CC8@<X0>(void *a1@<X8>)
{
  if (qword_100096910 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000A5760;
}

uint64_t sub_100007D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100007DF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100007EE8(uint64_t a1)
{
  sub_100008908(319, &qword_1000969B8, type metadata accessor for Note, type metadata accessor for ObjectStates);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100007FC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100007FF8()
{
  result = qword_100096A00;
  if (!qword_100096A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A00);
  }

  return result;
}

uint64_t sub_10000804C(void *a1)
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

unint64_t sub_100008098()
{
  result = qword_100096A10;
  if (!qword_100096A10)
  {
    sub_100008154(&qword_1000969F8, &qword_10006F388);
    sub_10000819C();
    sub_100008CAC(&qword_100096A20, type metadata accessor for QuickNoteContent, &unk_10006F4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A10);
  }

  return result;
}

uint64_t sub_100008154(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000819C()
{
  result = qword_100096A18;
  if (!qword_100096A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A18);
  }

  return result;
}

uint64_t sub_1000081F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Note(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000082CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000832C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000833C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008360(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Note(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v17 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100008550(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Note(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
    return result;
  }

  v16 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100008730(uint64_t a1)
{
  type metadata accessor for Note(319);
  if (v1 <= 0x3F)
  {
    sub_100008908(319, &qword_100096AC8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000088B8(319, &qword_100096AD0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100008908(319, &qword_100096AD8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100008908(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000088B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100008908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100008980()
{
  result = qword_100096B20;
  if (!qword_100096B20)
  {
    sub_100008154(&qword_100096B28, &qword_10006F4A0);
    sub_100008098();
    sub_1000095F4(&qword_100096A28, &qword_100096A08, &qword_10006F390, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096B20);
  }

  return result;
}

unint64_t sub_100008A70()
{
  result = qword_100096B80;
  if (!qword_100096B80)
  {
    sub_100008154(&qword_100096B40, &qword_10006F558);
    sub_1000095F4(&qword_100096B88, &qword_100096B38, &qword_10006F550, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096B80);
  }

  return result;
}

unint64_t sub_100008B28()
{
  result = qword_100096B90;
  if (!qword_100096B90)
  {
    sub_100008154(&qword_100096B60, &qword_10006F578);
    sub_100008154(&qword_100096B50, &qword_10006F568);
    sub_100008154(&qword_100096B48, &qword_10006F560);
    sub_1000091F8(&qword_100096B78, &qword_100096B48, &qword_10006F560, sub_100008A70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008CAC(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096B90);
  }

  return result;
}

uint64_t sub_100008CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008CFC(uint64_t a1)
{
  v2 = sub_10006A740();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A830();
}

unint64_t sub_100008DCC()
{
  result = qword_100096BB0;
  if (!qword_100096BB0)
  {
    sub_100008154(&qword_100096BA8, &qword_10006F5F8);
    sub_100008E84();
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096BB0);
  }

  return result;
}

unint64_t sub_100008E84()
{
  result = qword_100096BB8;
  if (!qword_100096BB8)
  {
    sub_100008154(&qword_100096BC0, &qword_10006F600);
    sub_1000095F4(&qword_100096BC8, &qword_100096BD0, &qword_10006F608, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096BB8);
  }

  return result;
}

uint64_t sub_100008F3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A880();
  *a1 = result;
  return result;
}

unint64_t sub_100008F94()
{
  result = qword_100096C08;
  if (!qword_100096C08)
  {
    sub_100008154(&qword_100096C00, &qword_10006F660);
    sub_100008154(&qword_100096C10, &qword_10006F668);
    sub_100008154(&qword_100096C18, &qword_10006F670);
    sub_1000090CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000095F4(&qword_100096C90, &qword_100096C98, &qword_10006F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C08);
  }

  return result;
}

unint64_t sub_1000090CC()
{
  result = qword_100096C20;
  if (!qword_100096C20)
  {
    sub_100008154(&qword_100096C18, &qword_10006F670);
    sub_100008154(&qword_100096C28, &qword_10006F678);
    sub_1000091F8(&qword_100096C30, &qword_100096C28, &qword_10006F678, sub_10000927C);
    swift_getOpaqueTypeConformance2();
    sub_100008CAC(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C20);
  }

  return result;
}

uint64_t sub_1000091F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000092AC()
{
  result = qword_100096C48;
  if (!qword_100096C48)
  {
    sub_100008154(&qword_100096C50, &qword_10006F688);
    sub_100008154(&qword_100096C58, &qword_10006F690);
    sub_100008154(&qword_100096C60, &qword_10006F698);
    sub_1000093CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C48);
  }

  return result;
}

unint64_t sub_1000093CC()
{
  result = qword_100096C68;
  if (!qword_100096C68)
  {
    sub_100008154(&qword_100096C60, &qword_10006F698);
    sub_100009484();
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C68);
  }

  return result;
}

unint64_t sub_100009484()
{
  result = qword_100096C70;
  if (!qword_100096C70)
  {
    sub_100008154(&qword_100096C78, &qword_10006F6A0);
    sub_1000095F4(&qword_100096C80, &qword_100096C88, &qword_10006F6A8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C70);
  }

  return result;
}

unint64_t sub_10000953C()
{
  result = qword_100096CA0;
  if (!qword_100096CA0)
  {
    sub_100008154(&qword_100096BF0, &qword_10006F650);
    sub_100008F94();
    sub_1000095F4(&qword_100096CA8, &qword_100096CB0, &qword_10006F6B8, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096CA0);
  }

  return result;
}

uint64_t sub_1000095F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000096B4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000096C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007DF0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007DF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007DF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000097F0()
{
  sub_100008154(&qword_100096B68, &qword_10006F580);
  sub_100008154(&qword_100096B60, &qword_10006F578);
  sub_100008B28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100009894()
{
  result = qword_100096D08;
  if (!qword_100096D08)
  {
    sub_100008154(&qword_100096D10, &qword_10006F740);
    sub_100008F94();
    sub_10000953C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096D08);
  }

  return result;
}

uint64_t sub_100009934()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100096D18);
  sub_10000CEB8(v0, qword_100096D18);
  return sub_10006A6A0();
}

uint64_t sub_100009984@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100009994()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_10006B280();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_10006B290();
  v6 = v5;

  v7 = v0[3];
  v23 = v0[2];
  v24 = v7;
  v25 = v4;
  v26 = v6;
  v8 = v0[6];
  v27 = v0[5];
  v28 = v8;

  v10 = 0;
  v11 = &_swiftEmptyArrayStorage;
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
  while (1)
  {
    if (v10 == 3)
    {
      sub_100007DF0(&qword_100096E30, &qword_10006F800);
      swift_arrayDestroy();
      sub_100007DF0(&qword_100096E38, qword_10006F808);
      sub_10000DD38();
      v21 = sub_10006B240();

      return v21;
    }

    if (v13 == ++v10)
    {
      break;
    }

    v15 = v14 + 16;
    v16 = *&v22[v14];
    v14 += 16;
    if (v16)
    {
      v17 = *&v22[v15 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100065DB8(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        result = sub_100065DB8((v18 > 1), v19 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100009BBC(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_10006B280();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = sub_10006B290();
  v7 = v6;

  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = v5;
  v28 = v7;
  v9 = a1[8];
  v10 = a1[9];
  v29 = v9;
  v30 = v10;

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
LABEL_2:
  if (v12 <= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 3)
    {
      sub_100007DF0(&qword_100096E30, &qword_10006F800);
      swift_arrayDestroy();
      sub_100007DF0(&qword_100096E38, qword_10006F808);
      sub_10000DD38();
      v23 = sub_10006B240();

      return v23;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *&v24[v16];
    v16 += 16;
    if (v18)
    {
      v19 = *&v24[v17 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100065DB8(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        result = sub_100065DB8((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100009DD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = a1;
  v8 = [v7 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_10006B290();
    v32 = v11;
    v33 = v10;
  }

  else
  {
    v32 = 0xE000000000000000;
    v33 = 0;
  }

  v12 = [v7 localizedTitle];
  v31 = sub_10006B290();
  v14 = v13;

  v15 = [v7 isSharedViaICloud];
  v16 = [v7 shareDescription];

  if (v16)
  {
    v17 = sub_10006B290();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [objc_opt_self() appURLForFolder:v7];
  if (v20)
  {
    v21 = v20;
    sub_10006A4F0();

    v22 = sub_10006A520();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  }

  else
  {
    v23 = sub_10006A520();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  v24 = [v7 systemImageName];
  sub_10006B290();

  v25 = sub_10006AEC0();
  v26 = sub_10000D430(v7);

  v27 = v32;
  *a2 = v33;
  *(a2 + 8) = v27;
  *(a2 + 16) = v31;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
  v28 = type metadata accessor for NotesFolder(0);
  result = sub_1000096C0(v6, a2 + v28[8], &qword_100096B30, &qword_10006F548);
  *(a2 + v28[9]) = v25;
  *(a2 + v28[10]) = v26;
  return result;
}

uint64_t sub_10000A078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = [a1 identifier];
  v8 = sub_10006B290();
  v10 = v9;

  v11 = [a1 title];
  v12 = sub_10006B290();
  v14 = v13;

  v15 = [objc_opt_self() appURLForVirtualSmartFolder:a1];
  if (v15)
  {
    v16 = v15;
    sub_10006A4F0();

    v17 = sub_10006A520();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  }

  else
  {
    v18 = sub_10006A520();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  v19 = [a1 systemImageName];
  sub_10006B290();

  v20 = sub_10006AEC0();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  v21 = type metadata accessor for NotesFolder(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = sub_1000096C0(v6, a2 + v21[8], &qword_100096B30, &qword_10006F548);
  *(a2 + v21[9]) = v20;
  *(a2 + v21[10]) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10000A2A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = [a1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10006B290();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [a1 allItemsFolderLocalizedTitle];
  v13 = sub_10006B290();
  v15 = v14;

  v16 = [objc_opt_self() appURLForFolder:a1];
  if (v16)
  {
    v17 = v16;
    sub_10006A4F0();

    v18 = sub_10006A520();
    (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  }

  else
  {
    v19 = sub_10006A520();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  }

  v20 = [objc_opt_self() defaultSystemImageName];
  sub_10006B290();

  v21 = sub_10006AEA0();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  v22 = type metadata accessor for NotesFolder(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = sub_1000096C0(v6, a2 + v22[8], &qword_100096B30, &qword_10006F548);
  *(a2 + v22[9]) = v21;
  *(a2 + v22[10]) = &_swiftEmptyArrayStorage;
  return result;
}

id sub_10000A4E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  result = [a1 externalIdentifier];
  if (result)
  {
    v8 = result;
    v9 = sub_10006B290();
    v11 = v10;

    v12 = [a1 localizedTitle];
    v13 = sub_10006B290();
    v15 = v14;

    v16 = [objc_opt_self() appURLForHTMLFolder:a1];
    if (v16)
    {
      v17 = v16;
      sub_10006A4F0();

      v18 = sub_10006A520();
      (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    }

    else
    {
      v19 = sub_10006A520();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    }

    v20 = [objc_opt_self() defaultSystemImageName];
    sub_10006B290();

    v21 = sub_10006AEA0();
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = 0;
    v22 = type metadata accessor for NotesFolder(0);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = sub_1000096C0(v6, a2 + v22[8], &qword_100096B30, &qword_10006F548);
    *(a2 + v22[9]) = v21;
    *(a2 + v22[10]) = &_swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000A718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  result = [a1 accountIdentifier];
  if (result)
  {
    v8 = result;
    v9 = sub_10006B290();
    v11 = v10;

    v12 = [a1 allItemsFolderLocalizedTitle];
    if (v12)
    {
      v13 = v12;
      v14 = sub_10006B290();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = [objc_opt_self() appURLForHTMLFolder:a1];
    if (v17)
    {
      v18 = v17;
      sub_10006A4F0();

      v19 = sub_10006A520();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    else
    {
      v20 = sub_10006A520();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    v21 = [objc_opt_self() defaultSystemImageName];
    sub_10006B290();

    v22 = sub_10006AEA0();
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = 0;
    v23 = type metadata accessor for NotesFolder(0);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = sub_1000096C0(v6, a2 + v23[8], &qword_100096B30, &qword_10006F548);
    *(a2 + v23[9]) = v22;
    *(a2 + v23[10]) = &_swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A960@<X0>(void *a1@<X0>, NSObject *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v175 = a3;
  v176 = a1;
  v172 = a4;
  v173 = a2;
  v167 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  v4 = __chkstk_darwin(v167);
  v166 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v157 = &v156 - v7;
  v8 = __chkstk_darwin(v6);
  v162 = &v156 - v9;
  v10 = __chkstk_darwin(v8);
  v163 = &v156 - v11;
  __chkstk_darwin(v10);
  v165 = &v156 - v12;
  v13 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v13 - 8);
  v15 = &v156 - v14;
  v16 = sub_10006A520();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v161 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v158 = &v156 - v21;
  __chkstk_darwin(v20);
  v168 = &v156 - v22;
  v23 = sub_10006A590();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NotesFolder(0);
  v171 = *(v27 - 1);
  v28 = __chkstk_darwin(v27);
  v164 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v159 = &v156 - v31;
  v32 = __chkstk_darwin(v30);
  v160 = &v156 - v33;
  __chkstk_darwin(v32);
  v35 = &v156 - v34;
  sub_10006A580();
  v36 = sub_10006A570();
  v38 = v37;
  (*(v24 + 8))(v26, v23);
  *v35 = v36;
  *(v35 + 1) = v38;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0xE000000000000000;
  v35[32] = 0;
  *(v35 + 5) = 0;
  *(v35 + 6) = 0;
  v39 = v27[8];
  v169 = v17;
  v40 = *(v17 + 56);
  v40(&v35[v39], 1, 1, v16);
  v41 = v27[9];
  v42 = [objc_opt_self() defaultSystemImageName];
  sub_10006B290();

  *&v35[v41] = sub_10006AEA0();
  v174 = v27;
  v43 = v27[10];
  v170 = v35;
  *&v35[v43] = &_swiftEmptyArrayStorage;
  v44 = v176;
  v45 = [v176 identifier];
  if (!v45)
  {
    v40(v15, 1, 1, v16);
    goto LABEL_8;
  }

  v46 = v45;
  sub_10006B290();

  sub_10006A510();
  swift_bridgeObjectRelease_n();
  v47 = v169;
  if ((*(v169 + 48))(v15, 1, v16) == 1)
  {
LABEL_8:
    sub_100009790(v15, &qword_100096B30, &qword_10006F548);
    v56 = v171;
    if (qword_100096808 != -1)
    {
      swift_once();
    }

    v62 = sub_10006A6C0();
    sub_10000CEB8(v62, qword_100096D18);
    v63 = v44;
    v64 = sub_10006A6B0();
    v65 = sub_10006B3A0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v177[0] = v67;
      *v66 = 136315138;
      v68 = [v63 identifier];
      if (v68)
      {
        v69 = v68;
        v70 = sub_10006B290();
        v72 = v71;
      }

      else
      {
        v72 = 0xA300000000000000;
        v70 = 9732322;
      }

      v58 = v174;
      v75 = sub_1000378C4(v70, v72, v177);

      *(v66 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v64, v65, "Cannot create notes folder URL from intent note folder identifier — returning nil {identifier: %s}", v66, 0xCu);
      sub_10000804C(v67);

      sub_10000CEF0(v170);
      goto LABEL_18;
    }

    sub_10000CEF0(v170);
LABEL_14:
    v73 = 1;
    v74 = v172;
    v58 = v174;
    return (*(v56 + 56))(v74, v73, 1, v58);
  }

  v48 = v16;
  v49 = v168;
  (*(v47 + 32))(v168, v15, v48);
  v50 = objc_opt_self();
  sub_10006A4E0(v51);
  v53 = v52;
  v54 = [v50 isShowFolderURL:v52];

  v56 = v171;
  if (v54)
  {
    v57 = [objc_opt_self() sharedContext];
    v58 = v174;
    if (v57)
    {
      v59 = v57;
      v60 = [v57 managedObjectContext];
      __chkstk_darwin(v60);
      *(&v156 - 2) = v49;
      *(&v156 - 1) = v59;
      v61 = v163;
      sub_10006B410();

      if ((*(v56 + 48))(v61, 1, v58) != 1)
      {
        v83 = v170;
        sub_10000CEF0(v170);

        v121 = v160;
        sub_10000CF4C(v61, v160);
        v82 = v165;
        sub_10000CF4C(v121, v165);
        goto LABEL_33;
      }

      sub_100009790(v61, &qword_100096D30, &unk_10006F760);
    }
  }

  else
  {
    v58 = v174;
  }

  sub_10006A4E0(v55);
  v77 = v76;
  v78 = [v50 isShowVirtualSmartFolderURL:v76];

  if (!v78)
  {
    sub_10006A4E0(v79);
    v85 = v84;
    v86 = [v50 isShowHTMLFolderURL:v84];

    if (v86)
    {
      __chkstk_darwin(v87);
      v89 = v175;
      *(&v156 - 2) = v49;
      *(&v156 - 1) = v89;
      sub_10000D894(0, &qword_100096D48, NoteContext_ptr);
      v90 = v89;
      v91 = v162;
      sub_10006B3C0();

      if ((*(v56 + 48))(v91, 1, v58) != 1)
      {
        v83 = v170;
        sub_10000CEF0(v170);

        v128 = v91;
        v129 = v159;
        sub_10000CF4C(v128, v159);
        v82 = v165;
        sub_10000CF4C(v129, v165);
        (*(v56 + 56))(v82, 0, 1, v58);
        v122 = v172;
        v49 = v168;
        goto LABEL_35;
      }

      sub_100009790(v91, &qword_100096D30, &unk_10006F760);
      v49 = v168;
    }

    v92 = v169;
    sub_10006A4E0(v88);
    v94 = v93;
    v95 = [v50 isShowDefaultFolderURL:v93];

    if (v95)
    {
      v96 = [objc_opt_self() defaultFolderWithHTMLNoteContext:v175];
      v97 = v173;
      if (v96)
      {
        v98 = v96;
        objc_opt_self();
        v99 = swift_dynamicCastObjCClass();
        if (v99)
        {
          v100 = v99;
          v101 = v98;
          v102 = [v97 managedObjectContext];
          v103 = v48;
          v104 = v97;
          __chkstk_darwin(v102);
          *(&v156 - 2) = v100;
          v82 = v165;
          sub_10006B410();

          v48 = v103;
          v49 = v168;

          v83 = v170;
          sub_10000CEF0(v170);
LABEL_33:
          (*(v56 + 56))(v82, 0, 1, v58);
          goto LABEL_34;
        }

        objc_opt_self();
        v138 = swift_dynamicCastObjCClass();
        if (v138)
        {
          v139 = v138;
          v140 = v175;
          v141 = [v175 managedObjectContext];
          if (v141)
          {
            v142 = v141;
            __chkstk_darwin(v141);
            *(&v156 - 2) = v139;
            v143 = v157;
            sub_10006B410();

            v49 = v168;
            v144 = 0;
            v123 = v169;
            v124 = v166;
          }

          else
          {

            v144 = 1;
            v123 = v169;
            v124 = v166;
            v143 = v157;
          }

          v83 = v170;
          sub_10000CEF0(v170);
          (*(v56 + 56))(v143, v144, 1, v58);
          v82 = v165;
          sub_1000096C0(v143, v165, &qword_100096D30, &unk_10006F760);
          v122 = v172;
          goto LABEL_36;
        }

        if (qword_100096808 != -1)
        {
          swift_once();
        }

        v145 = sub_10006A6C0();
        sub_10000CEB8(v145, qword_100096D18);
        v146 = v98;
        v147 = sub_10006A6B0();
        v148 = sub_10006B3A0();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *v149 = 138412290;
          v151 = [v146 objectID];
          *(v149 + 4) = v151;
          *v150 = v151;
          _os_log_impl(&_mh_execute_header, v147, v148, "Unknown object type — returning nil {objectID: %@}", v149, 0xCu);
          sub_100009790(v150, &qword_100096D40, &unk_10006F770);
          v152 = v173;

          v154 = v175;
          v153 = v176;
        }

        else
        {
          v153 = v146;
          v154 = v147;
          v147 = v97;
          v152 = v175;
          v146 = v176;
        }

        v155 = v169;

        sub_10000CEF0(v170);
        (*(v155 + 8))(v49, v48);
LABEL_18:
        v73 = 1;
        v74 = v172;
        return (*(v56 + 56))(v74, v73, 1, v58);
      }

      if (qword_100096808 != -1)
      {
        swift_once();
      }

      v130 = sub_10006A6C0();
      sub_10000CEB8(v130, qword_100096D18);
      v106 = v158;
      (*(v92 + 16))(v158, v49, v48);
      v107 = sub_10006A6B0();
      v108 = sub_10006B3A0();
      v131 = os_log_type_enabled(v107, v108);
      v110 = v176;
      if (v131)
      {
        v111 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v169 = v48;
        v113 = v132;
        v177[0] = v132;
        *v111 = 136315138;
        sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
        v133 = sub_10006B530();
        v134 = v92;
        v136 = v135;
        v118 = *(v134 + 8);
        v118(v106, v169);
        v137 = sub_1000378C4(v133, v136, v177);

        *(v111 + 4) = v137;
        v120 = "Cannot find object for current default notes folder URL — returning nil {notesFolderURL: %s}";
        goto LABEL_45;
      }
    }

    else
    {
      if (qword_100096808 != -1)
      {
        swift_once();
      }

      v105 = sub_10006A6C0();
      sub_10000CEB8(v105, qword_100096D18);
      v106 = v161;
      (*(v92 + 16))(v161, v49, v48);
      v107 = sub_10006A6B0();
      v108 = sub_10006B3A0();
      v109 = os_log_type_enabled(v107, v108);
      v110 = v176;
      if (v109)
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v169 = v48;
        v113 = v112;
        v177[0] = v112;
        *v111 = 136315138;
        sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
        v114 = sub_10006B530();
        v115 = v92;
        v117 = v116;
        v118 = *(v115 + 8);
        v118(v106, v169);
        v119 = sub_1000378C4(v114, v117, v177);

        *(v111 + 4) = v119;
        v120 = "Unknown notes folder URL type — returning nil {notesFolderURL: %s}";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v107, v108, v120, v111, 0xCu);
        sub_10000804C(v113);
        v48 = v169;

LABEL_47:
        sub_10000CEF0(v170);
        v118(v168, v48);
        goto LABEL_14;
      }
    }

    v118 = *(v92 + 8);
    v118(v106, v48);
    goto LABEL_47;
  }

  v80 = v173;
  v81 = [v173 managedObjectContext];
  __chkstk_darwin(v81);
  *(&v156 - 2) = v49;
  *(&v156 - 1) = v80;
  v82 = v165;
  sub_10006B410();

  v83 = v170;
  sub_10000CEF0(v170);
LABEL_34:
  v122 = v172;
LABEL_35:
  v123 = v169;
  v124 = v166;
LABEL_36:
  sub_1000096C0(v82, v124, &qword_100096D30, &unk_10006F760);
  if ((*(v56 + 48))(v124, 1, v58) == 1)
  {
    sub_100009790(v124, &qword_100096D30, &unk_10006F760);
    (*(v123 + 8))(v49, v48);
    v73 = 1;
    v74 = v122;
  }

  else
  {
    v125 = v124;
    v126 = v164;
    sub_10000CF4C(v125, v164);
    sub_10000CF4C(v126, v83);
    (*(v123 + 8))(v49, v48);
    sub_10000CF4C(v83, v122);
    v74 = v122;
    v73 = 0;
  }

  return (*(v56 + 56))(v74, v73, 1, v58);
}

uint64_t sub_10000BC64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10006A520();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  sub_10006A4E0(v12);
  v14 = v13;
  v15 = [a2 managedObjectContext];
  v16 = [v11 virtualSmartFolderMentionedInURL:v14 context:v15];

  if (v16)
  {
    sub_10000A078(v16, a3);
    v17 = type metadata accessor for NotesFolder(0);
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {
    if (qword_100096808 != -1)
    {
      swift_once();
    }

    v19 = sub_10006A6C0();
    sub_10000CEB8(v19, qword_100096D18);
    (*(v8 + 16))(v10, a1, v7);
    v20 = sub_10006A6B0();
    v21 = sub_10006B3A0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v29 = v28[0];
      *v22 = 136315138;
      sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
      v23 = sub_10006B530();
      v28[1] = v3;
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      v26 = sub_1000378C4(v23, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v22, 0xCu);
      sub_10000804C(v28[0]);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v27 = type metadata accessor for NotesFolder(0);
    return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

uint64_t sub_10000BFC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = objc_opt_self();
  sub_10006A4E0(v13);
  v15 = v14;
  v16 = [v12 objectIDForModernFolderMentionedInURL:v14 noteContext:a2];

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = [a2 managedObjectContext];
  v62 = 0;
  v18 = [v17 existingObjectWithID:v16 error:&v62];

  v19 = v62;
  if (!v18)
  {
    v32 = v62;
    sub_10006A480();

    swift_willThrow();

    v61 = 0;
LABEL_9:
    if (qword_100096808 != -1)
    {
      swift_once();
    }

    v33 = sub_10006A6C0();
    sub_10000CEB8(v33, qword_100096D18);
    (*(v6 + 16))(v9, a1, v5);
    v34 = sub_10006A6B0();
    v35 = sub_10006B3A0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v37;
      *v36 = 136315138;
      sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
      v38 = sub_10006B530();
      v40 = v39;
      (*(v6 + 8))(v9, v5);
      v41 = sub_1000378C4(v38, v40, &v62);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v36, 0xCu);
      sub_10000804C(v37);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    goto LABEL_17;
  }

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 sharedWidget];
  LOBYTE(v20) = [v22 hidesObject:v18];

  if ((v20 & 1) == 0)
  {
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = v42;
      v44 = v18;
      v45 = v60;
      sub_10000A2A0(v43, v60);
    }

    else
    {
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (!v49)
      {
        if (qword_100096808 != -1)
        {
          swift_once();
        }

        v51 = sub_10006A6C0();
        sub_10000CEB8(v51, qword_100096D18);
        v52 = v16;
        v53 = sub_10006A6B0();
        v54 = sub_10006B3A0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v16;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "Unknown object type — returning nil {objectID: %@}", v55, 0xCu);
          sub_100009790(v56, &qword_100096D40, &unk_10006F770);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v50 = v49;
      v44 = v18;
      v45 = v60;
      sub_100009DD8(v50, v60);
    }

    v46 = 0;
    goto LABEL_18;
  }

  if (qword_100096808 != -1)
  {
    swift_once();
  }

  v23 = sub_10006A6C0();
  sub_10000CEB8(v23, qword_100096D18);
  (*(v6 + 16))(v11, a1, v5);
  v24 = sub_10006A6B0();
  v25 = sub_10006B380();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = v26;
    v59 = swift_slowAlloc();
    v62 = v59;
    *v26 = 136315138;
    sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
    v27 = sub_10006B530();
    v29 = v28;
    (*(v6 + 8))(v11, v5);
    v30 = sub_1000378C4(v27, v29, &v62);

    v31 = v58;
    *(v58 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Widget hides object for notes folder URL — returning nil {notesFolderURL: %s}", v31, 0xCu);
    sub_10000804C(v59);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

LABEL_17:
  v46 = 1;
  v45 = v60;
LABEL_18:
  v47 = type metadata accessor for NotesFolder(0);
  return (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
}

uint64_t sub_10000C724@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = objc_opt_self();
  sub_10006A4E0(v13);
  v15 = v14;
  v16 = [v12 objectIDForHTMLFolderMentionedInURL:v14 context:a2];

  if (!v16)
  {
    goto LABEL_9;
  }

  v62 = 0;
  v17 = [a2 existingObjectWithID:v16 error:&v62];
  v18 = v62;
  if (!v17)
  {
    v32 = v62;
    sub_10006A480();

    swift_willThrow();

    v61 = 0;
LABEL_9:
    if (qword_100096808 != -1)
    {
      swift_once();
    }

    v33 = sub_10006A6C0();
    sub_10000CEB8(v33, qword_100096D18);
    (*(v6 + 16))(v9, a1, v5);
    v34 = sub_10006A6B0();
    v35 = sub_10006B3A0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v37;
      *v36 = 136315138;
      sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
      v38 = sub_10006B530();
      v40 = v39;
      (*(v6 + 8))(v9, v5);
      v41 = sub_1000378C4(v38, v40, &v62);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot find HTML object for notes folder URL — returning nil {notesFolderURL: %s}", v36, 0xCu);
      sub_10000804C(v37);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    goto LABEL_17;
  }

  v19 = v17;
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [v20 sharedWidget];
  LOBYTE(v20) = [v22 hidesObject:v19];

  if ((v20 & 1) == 0)
  {
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = v42;
      v44 = v19;
      v45 = v60;
      sub_10000A718(v43, v60);
    }

    else
    {
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (!v49)
      {
        if (qword_100096808 != -1)
        {
          swift_once();
        }

        v51 = sub_10006A6C0();
        sub_10000CEB8(v51, qword_100096D18);
        v52 = v16;
        v53 = sub_10006A6B0();
        v54 = sub_10006B3A0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v16;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "Unknown object type — returning nil {objectID: %@}", v55, 0xCu);
          sub_100009790(v56, &qword_100096D40, &unk_10006F770);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v50 = v49;
      v44 = v19;
      v45 = v60;
      sub_10000A4E0(v50, v60);
    }

    v46 = 0;
    goto LABEL_18;
  }

  if (qword_100096808 != -1)
  {
    swift_once();
  }

  v23 = sub_10006A6C0();
  sub_10000CEB8(v23, qword_100096D18);
  (*(v6 + 16))(v11, a1, v5);
  v24 = sub_10006A6B0();
  v25 = sub_10006B380();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = v26;
    v59 = swift_slowAlloc();
    v62 = v59;
    *v26 = 136315138;
    sub_10000DCF4(&qword_100096D38, &protocol conformance descriptor for URL);
    v27 = sub_10006B530();
    v29 = v28;
    (*(v6 + 8))(v11, v5);
    v30 = sub_1000378C4(v27, v29, &v62);

    v31 = v58;
    *(v58 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Widget hides object for notes folder URL — returning nil {notesFolderURL: %s}", v31, 0xCu);
    sub_10000804C(v59);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

LABEL_17:
  v46 = 1;
  v45 = v60;
LABEL_18:
  v47 = type metadata accessor for NotesFolder(0);
  return (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
}

uint64_t type metadata accessor for NotesFolder(uint64_t a1)
{
  result = qword_100096DB8;
  if (!qword_100096DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CEB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000CEF0(uint64_t a1)
{
  v2 = type metadata accessor for NotesFolder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesFolder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D074(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006A520();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100007DF0(&qword_100096E20, &qword_100076B70);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_10006B540() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_10006B540() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_7;
  }

  v16 = *(a1 + 48);
  v17 = *(a2 + 48);
  if (v16)
  {
    if (!v17 || (*(a1 + 40) != *(a2 + 40) || v16 != v17) && (sub_10006B540() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v17)
  {
    goto LABEL_7;
  }

  v25 = type metadata accessor for NotesFolder(0);
  v18 = *(v25 + 32);
  v19 = *(v11 + 48);
  sub_10000DC84(a1 + v18, v13);
  sub_10000DC84(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_10000DC84(v13, v10);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v19], v4);
      sub_10000DCF4(&qword_100096E28, &protocol conformance descriptor for URL);
      v21 = sub_10006B250();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_100009790(v13, &qword_100096B30, &qword_10006F548);
      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    (*(v5 + 8))(v10, v4);
LABEL_21:
    sub_100009790(v13, &qword_100096E20, &qword_100076B70);
    goto LABEL_7;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_100009790(v13, &qword_100096B30, &qword_10006F548);
LABEL_23:
  v23 = v25;
  if (sub_10006AED0())
  {
    v14 = sub_100065D00(*(a1 + *(v23 + 40)), *(a2 + *(v23 + 40)));
    return v14 & 1;
  }

LABEL_7:
  v14 = 0;
  return v14 & 1;
}

void *sub_10000D430(void *a1)
{
  v1 = [a1 serverShareCheckingParent];
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  v4 = [v1 ic_nonCurrentUserParticipants];

  sub_10000D894(0, &qword_100096D50, CKShareParticipant_ptr);
  v5 = sub_10006B320();

  v6 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_34:
    v8 = sub_10006B4F0();
    if ((sub_10006B4F0() & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_36:
    v6 = sub_10006B4F0();
    if (v6)
    {
      goto LABEL_26;
    }

LABEL_37:

    return &_swiftEmptyArrayStorage;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (; result >= v8; result = sub_10006B4F0())
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v8)
      {
        sub_10006B470(0);
        if (v8 != 1)
        {
          sub_10006B470(1);
          if (v8 != 2)
          {
            sub_10006B470(2);
          }
        }
      }
    }

    else
    {
    }

    if (v6)
    {
      sub_10006B500();
      v9 = v10;
      v6 = v11;
      v13 = v12;

      v8 = v13 >> 1;
    }

    else
    {
      v9 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v28 = v2;
    swift_unknownObjectRetain();
    v14 = v6;
    v15 = v6;
    while (v8 != v15)
    {
      if (v14 < v6 || v15 >= v8)
      {
        __break(1u);
        goto LABEL_34;
      }

      v16 = v15 + 1;
      v17 = *(v9 + 8 * v15);
      sub_100007DF0(&qword_100096D58, &unk_100075BC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10006F750;
      *(v18 + 32) = v17;
      v19 = objc_allocWithZone(ICThumbnailConfiguration);
      v5 = v17;
      isa = sub_10006B310().super.isa;

      v21 = [v19 initForAvatarWithParticipants:isa preferredSize:0 hasBorder:{20.0, 20.0}];

      v22 = [objc_opt_self() sharedThumbnailService];
      v23 = [v22 thumbnailWithConfiguration:v21];

      v24 = [v23 image];
      v15 = v16;
      if (v24)
      {
        sub_10006B300();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10006B330();
        }

        v5 = &v28;
        sub_10006B340();
        v2 = v28;
        v14 = v16;
        v15 = v16;
      }
    }

    swift_unknownObjectRelease_n();
    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_26:
    v28 = &_swiftEmptyArrayStorage;
    v5 = &v28;
    sub_10006B4C0();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          sub_10006B480();
        }

        else
        {
          v26 = *(v2 + 8 * v25 + 32);
        }

        ++v25;
        sub_10006AE90();
        sub_10006B4A0();
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      while (v6 != v25);

      return v28;
    }

    __break(1u);
LABEL_40:
    if (v8 >= 3)
    {
      v27 = 3;
    }

    else
    {
      v27 = v8;
    }

    if (v8 >= 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = 3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D894(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_10000D8DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000D954(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000DA24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000DAD4(uint64_t a1)
{
  sub_10000DC28(319, &qword_100096DC8, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10000DBD0(319);
    if (v2 <= 0x3F)
    {
      sub_10000DC28(319, &unk_100096DD8, &type metadata for Image, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000DBD0(uint64_t a1)
{
  if (!qword_100096DD0)
  {
    sub_10006A520();
    v1 = sub_10006B420();
    if (!v2)
    {
      atomic_store(v1, &qword_100096DD0);
    }
  }
}

void sub_10000DC28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000DC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DCF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006A520();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000DD38()
{
  result = qword_100096E40;
  if (!qword_100096E40)
  {
    sub_100008154(&qword_100096E38, qword_10006F808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E40);
  }

  return result;
}

uint64_t sub_10000DD9C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5548);
  sub_10000CEB8(v10, qword_1000A5548);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_10000E080@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v28 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v30 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v30;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v28;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_10000E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097028, &qword_100070340);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000E6F8, 0, 0);
}

uint64_t sub_10000E6F8()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097030, &qword_100070370);
  v4 = sub_1000095F4(&qword_100096FF8, &qword_100097000, &qword_100070318, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_10000E808;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_10000E808()
{

  return _swift_task_switch(sub_10000E920, 0, 0);
}

uint64_t sub_10000E920()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_100096FF0, &qword_100070300);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10000EB60;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10000EB60()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_10000EC94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000EC94()
{
  sub_100011CE8();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000ED2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000ED9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_10000E600(a1, v6, a3);
}

uint64_t sub_10000EE3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000EF34()
{
  v0 = qword_100096E48;

  return v0;
}

uint64_t sub_10000EF6C(uint64_t a1)
{
  v2 = sub_100011D40();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004FLL, 0x80000001000777E0, a1, v2);
}

uint64_t sub_10000EFD0(uint64_t a1)
{
  sub_100013058();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000F03C@<X0>(uint64_t *a2@<X8>)
{
  sub_1000126F8();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000F0B8(uint64_t a1)
{
  v2 = sub_100011D40();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000EE3C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000F1CC(uint64_t a1)
{
  v2 = sub_100012114();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000F218()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, static LinesAndGridsOption.typeDisplayRepresentation);
  sub_10000CEB8(v10, static LinesAndGridsOption.typeDisplayRepresentation);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t LinesAndGridsOption.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100096818 != -1)
  {
    swift_once();
  }

  v0 = sub_10006A450();

  return sub_10000CEB8(v0, static LinesAndGridsOption.typeDisplayRepresentation);
}

uint64_t static LinesAndGridsOption.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096818 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A450();
  v3 = sub_10000CEB8(v2, static LinesAndGridsOption.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000F604()
{
  v0 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v0 - 8);
  v69 = &v48 - v1;
  v2 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v2 - 8);
  v63 = &v48 - v3;
  v4 = sub_10006A4A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A5B0();
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10006B270();
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10006A4B0();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_100097040, &qword_100070378);
  v16 = sub_100007DF0(&qword_100097048, qword_100070380);
  v17 = *(v16 - 8);
  v62 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v52 = v19;
  *(v19 + 16) = xmmword_10006F830;
  v51 = *(v16 + 48);
  v70 = v16;
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_10006B260();
  v55 = v10;
  sub_10006A5A0();
  v67 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v5 + 104);
  v57 = v7;
  v58 = v5 + 104;
  v68 = v21;
  v59 = v4;
  (v21)(v7);
  sub_10006A4C0();
  v61 = *(v71 + 56);
  v71 += 56;
  v22 = v63;
  v23 = v66;
  v61(v63, 1, 1, v66);
  v65 = sub_10006A300();
  v24 = *(v65 - 8);
  v60 = *(v24 + 56);
  v56 = v24 + 56;
  v60(v69, 1, 1, v65);
  v64 = v20;
  v53 = v15;
  sub_10006A320();
  v25 = v62;
  v51 = *(v16 + 48);
  *(v20 + v62) = 1;
  v54 = v13;
  sub_10006B260();
  sub_10006A5A0();
  v26 = v57;
  v68(v57, v67, v59);
  sub_10006A4C0();
  v27 = v61;
  v61(v22, 1, 1, v23);
  v28 = v69;
  v60(v69, 1, 1, v65);
  sub_10006A320();
  v51 = 2 * v25;
  v49 = (v64 + 2 * v25);
  v50 = *(v70 + 48);
  *v49 = 2;
  sub_10006B260();
  sub_10006A5A0();
  v29 = v67;
  v68(v26, v67, v59);
  sub_10006A4C0();
  v30 = v63;
  v27(v63, 1, 1, v66);
  v31 = v28;
  v32 = v65;
  v33 = v60;
  v60(v31, 1, 1, v65);
  sub_10006A320();
  v34 = v62;
  v50 = v64 + v51 + v62;
  v51 = *(v70 + 48);
  *v50 = 3;
  sub_10006B260();
  sub_10006A5A0();
  v35 = v29;
  v36 = v59;
  v68(v57, v35, v59);
  sub_10006A4C0();
  v37 = v66;
  v61(v30, 1, 1, v66);
  v33(v69, 1, 1, v32);
  sub_10006A320();
  v51 = 4 * v34;
  v38 = v64;
  v49 = (v64 + 4 * v34);
  v50 = *(v70 + 48);
  *v49 = 4;
  sub_10006B260();
  sub_10006A5A0();
  v68(v57, v67, v36);
  sub_10006A4C0();
  v39 = v61;
  v61(v63, 1, 1, v37);
  v40 = v60;
  v60(v69, 1, 1, v65);
  sub_10006A320();
  v41 = (v38 + v51 + v62);
  v51 = *(v70 + 48);
  *v41 = 5;
  sub_10006B260();
  sub_10006A5A0();
  v42 = v57;
  v43 = v68;
  v68(v57, v67, v36);
  sub_10006A4C0();
  v44 = v63;
  v39(v63, 1, 1, v66);
  v45 = v69;
  v40(v69, 1, 1, v65);
  sub_10006A320();
  *(v64 + 6 * v62) = 6;
  sub_10006B260();
  sub_10006A5A0();
  v43(v42, v67, v59);
  sub_10006A4C0();
  v61(v44, 1, 1, v66);
  v60(v45, 1, 1, v65);
  sub_10006A320();
  v46 = sub_100025C6C(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static LinesAndGridsOption.caseDisplayRepresentations = v46;
  return result;
}

uint64_t *LinesAndGridsOption.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100096820 != -1)
  {
    swift_once();
  }

  return &static LinesAndGridsOption.caseDisplayRepresentations;
}

uint64_t static LinesAndGridsOption.caseDisplayRepresentations.getter()
{
  if (qword_100096820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static LinesAndGridsOption.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100096820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static LinesAndGridsOption.caseDisplayRepresentations = a1;

  return result;
}

uint64_t (*static LinesAndGridsOption.caseDisplayRepresentations.modify(uint64_t a1))()
{
  if (qword_100096820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t LinesAndGridsOption.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 0x64654D73656E696CLL;
  if (a1 != 5)
  {
    v2 = 0x72614C73656E696CLL;
  }

  v3 = 0x6772614C64697267;
  if (a1 != 3)
  {
    v3 = 0x616D5373656E696CLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6C616D5364697267;
  if (a1 != 1)
  {
    v4 = 0x6964654D64697267;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000103F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x64654D73656E696CLL;
  v5 = 0xEB000000006D7569;
  if (a1 != 5)
  {
    v4 = 0x72614C73656E696CLL;
    v5 = 0xEA00000000006567;
  }

  v6 = 0x6772614C64697267;
  if (a1 == 3)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v6 = 0x616D5373656E696CLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6C616D5364697267;
  v9 = 0xEA00000000006D75;
  if (a1 == 1)
  {
    v9 = 0xE90000000000006CLL;
  }

  else
  {
    v8 = 0x6964654D64697267;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE90000000000006CLL;
        if (v10 != 0x6C616D5364697267)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v12 = 0xEA00000000006D75;
        if (v10 != 0x6964654D64697267)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701736302)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEB000000006D7569;
      if (v10 != 0x64654D73656E696CLL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0xEA00000000006567;
      if (v10 != 0x72614C73656E696CLL)
      {
LABEL_41:
        v13 = sub_10006B540();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x6772614C64697267)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v12 = 0xEA00000000006C6CLL;
    if (v10 != 0x616D5373656E696CLL)
    {
      goto LABEL_41;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

unint64_t sub_100010654@<X0>(Swift::String *a1@<X0>, com_apple_mobilenotes_WidgetExtension::LinesAndGridsOption_optional *a2@<X8>)
{
  result = _s37com_apple_mobilenotes_WidgetExtension19LinesAndGridsOptionO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_100010684@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEB000000006D7569;
  v6 = 0x64654D73656E696CLL;
  if (v2 != 5)
  {
    v6 = 0x72614C73656E696CLL;
    v5 = 0xEA00000000006567;
  }

  v7 = 0x6772614C64697267;
  v8 = 0xEA00000000006C6CLL;
  result = 0x616D5373656E696CLL;
  if (v2 == 3)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x616D5373656E696CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v10 = 0xE90000000000006CLL;
  v11 = 0x6C616D5364697267;
  if (v2 != 1)
  {
    v11 = 0x6964654D64697267;
    v10 = 0xEA00000000006D75;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

double sub_100010778(uint64_t a1)
{
  sub_10006B2B0();

  return result;
}

Swift::Int sub_100010898(uint64_t a1, unsigned __int8 a2)
{
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_1000109FC(uint64_t a1)
{
  v2 = sub_1000124FC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100010A48(uint64_t a1)
{
  v2 = sub_10001247C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100010AA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100010B34, 0, 0);
}

uint64_t sub_100010B34()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_100096FF0, &qword_100070300);
  sub_10006A490();
  sub_1000095F4(&qword_100096FF8, &qword_100097000, &qword_100070318, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011DF0();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100010D04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100010E18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011DF0();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100010ECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100011DF0();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100010F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001103C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10001103C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10001113C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011FA8();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000111F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000131E4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1000112A8()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5580);
  sub_10000CEB8(v6, qword_1000A5580);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void *sub_100011488@<X0>(void *a1@<X8>)
{
  result = sub_10006A130();
  *a1 = v3;
  return result;
}

uint64_t sub_1000114C4(uint64_t *a1)
{

  sub_10006A140();
}

uint64_t (*sub_10001150C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

void sub_100011580(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000115CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012FB0();
  v5 = sub_100013058();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100011638()
{
  v0 = qword_100096E58;

  return v0;
}

uint64_t sub_1000116AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000CEB8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100011774(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100012FB0();
  v7 = sub_100013004();
  v8 = sub_100013058();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100011848()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100011950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012CB8();
  *a1 = result;
  return result;
}

uint64_t sub_100011978(uint64_t a1)
{
  v2 = sub_100012934();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000119D4()
{
  v1 = objc_opt_self();
  v2 = sub_10006B280();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_10006B430();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  *(v0 + 16) = v9;
  *(v0 + 32) = v10;
  if (!*(v0 + 40))
  {
    sub_1000130AC(v0 + 16);
    goto LABEL_9;
  }

  sub_100013114();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v4 = *(v0 + 48);
  v5 = [v4 unsignedIntegerValue];

  v6 = 0x605040302010000uLL >> (8 * v5);
  if (v5 >= 8)
  {
    LOBYTE(v6) = 0;
  }

LABEL_10:
  **(v0 + 56) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100011B60()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  *(v0 + 16) = v1 + 1;
  type metadata accessor for ICPaperStyleType(0);
  v3 = sub_10006B550();
  v4 = sub_10006B280();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

unint64_t _s37com_apple_mobilenotes_WidgetExtension19LinesAndGridsOptionO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000924B0;
  v6._object = a2;
  v4 = sub_10006B520(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100011C90()
{
  result = qword_100096E68;
  if (!qword_100096E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E68);
  }

  return result;
}

unint64_t sub_100011CE8()
{
  result = qword_100096E70;
  if (!qword_100096E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E70);
  }

  return result;
}

unint64_t sub_100011D40()
{
  result = qword_100096E78;
  if (!qword_100096E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E78);
  }

  return result;
}

unint64_t sub_100011D98()
{
  result = qword_100096E80;
  if (!qword_100096E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E80);
  }

  return result;
}

unint64_t sub_100011DF0()
{
  result = qword_100096E88;
  if (!qword_100096E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E88);
  }

  return result;
}

unint64_t sub_100011E48()
{
  result = qword_100096E90;
  if (!qword_100096E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E90);
  }

  return result;
}

unint64_t sub_100011EA0()
{
  result = qword_100096E98;
  if (!qword_100096E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096E98);
  }

  return result;
}

unint64_t sub_100011EF8()
{
  result = qword_100096EA0;
  if (!qword_100096EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EA0);
  }

  return result;
}

unint64_t sub_100011F50()
{
  result = qword_100096EA8;
  if (!qword_100096EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EA8);
  }

  return result;
}

unint64_t sub_100011FA8()
{
  result = qword_100096EB0;
  if (!qword_100096EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EB0);
  }

  return result;
}

unint64_t sub_10001200C()
{
  result = qword_100096EB8;
  if (!qword_100096EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EB8);
  }

  return result;
}

unint64_t sub_100012064()
{
  result = qword_100096EC0;
  if (!qword_100096EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EC0);
  }

  return result;
}

unint64_t sub_1000120BC()
{
  result = qword_100096EC8;
  if (!qword_100096EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EC8);
  }

  return result;
}

unint64_t sub_100012114()
{
  result = qword_100096ED0;
  if (!qword_100096ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096ED0);
  }

  return result;
}

unint64_t sub_1000121B0()
{
  result = qword_100096EE8;
  if (!qword_100096EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EE8);
  }

  return result;
}

unint64_t sub_100012208()
{
  result = qword_100096EF0;
  if (!qword_100096EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EF0);
  }

  return result;
}

unint64_t sub_100012260()
{
  result = qword_100096EF8;
  if (!qword_100096EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096EF8);
  }

  return result;
}

unint64_t sub_1000122B8()
{
  result = qword_100096F00;
  if (!qword_100096F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F00);
  }

  return result;
}

unint64_t sub_100012310()
{
  result = qword_100096F08;
  if (!qword_100096F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F08);
  }

  return result;
}

unint64_t sub_100012374()
{
  result = qword_100096F10;
  if (!qword_100096F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F10);
  }

  return result;
}

unint64_t sub_1000123CC()
{
  result = qword_100096F18;
  if (!qword_100096F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F18);
  }

  return result;
}

unint64_t sub_100012424()
{
  result = qword_100096F20;
  if (!qword_100096F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F20);
  }

  return result;
}

unint64_t sub_10001247C()
{
  result = qword_100096F28;
  if (!qword_100096F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F28);
  }

  return result;
}

unint64_t sub_1000124FC()
{
  result = qword_100096F30;
  if (!qword_100096F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F30);
  }

  return result;
}

unint64_t sub_100012554()
{
  result = qword_100096F38;
  if (!qword_100096F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F38);
  }

  return result;
}

unint64_t sub_1000125AC()
{
  result = qword_100096F40;
  if (!qword_100096F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F40);
  }

  return result;
}

unint64_t sub_100012604()
{
  result = qword_100096F48;
  if (!qword_100096F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F48);
  }

  return result;
}

unint64_t sub_1000126A0()
{
  result = qword_100096F60;
  if (!qword_100096F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F60);
  }

  return result;
}

unint64_t sub_1000126F8()
{
  result = qword_100096F68;
  if (!qword_100096F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F68);
  }

  return result;
}

unint64_t sub_100012750()
{
  result = qword_100096F70;
  if (!qword_100096F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F70);
  }

  return result;
}

unint64_t sub_1000127A8()
{
  result = qword_100096F78;
  if (!qword_100096F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F78);
  }

  return result;
}

unint64_t sub_100012800()
{
  result = qword_100096F80;
  if (!qword_100096F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F80);
  }

  return result;
}

unint64_t sub_100012858()
{
  result = qword_100096F88;
  if (!qword_100096F88)
  {
    sub_100008154(&qword_100096F90, qword_10006FF58);
    sub_1000120BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F88);
  }

  return result;
}

unint64_t sub_1000128E0()
{
  result = qword_100096F98;
  if (!qword_100096F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F98);
  }

  return result;
}

unint64_t sub_100012934()
{
  result = qword_100096FA0;
  if (!qword_100096FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FA0);
  }

  return result;
}

unint64_t sub_100012988()
{
  result = qword_100096FA8;
  if (!qword_100096FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FA8);
  }

  return result;
}

unint64_t sub_1000129E4()
{
  result = qword_100096FB0;
  if (!qword_100096FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FB0);
  }

  return result;
}

unint64_t sub_100012A3C()
{
  result = qword_100096FB8;
  if (!qword_100096FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinesAndGridsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinesAndGridsOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100012CB8()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100096FD0, &qword_1000702F8);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100011D40();
  return sub_10006A150();
}

unint64_t sub_100012FB0()
{
  result = qword_100096FD8;
  if (!qword_100096FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FD8);
  }

  return result;
}

unint64_t sub_100013004()
{
  result = qword_100096FE0;
  if (!qword_100096FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FE0);
  }

  return result;
}

unint64_t sub_100013058()
{
  result = qword_100096FE8;
  if (!qword_100096FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FE8);
  }

  return result;
}

uint64_t sub_1000130AC(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097008, &unk_100070320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013114()
{
  result = qword_100097010;
  if (!qword_100097010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100097010);
  }

  return result;
}

uint64_t sub_100013160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_10001318C()
{
  result = qword_100097038;
  if (!qword_100097038)
  {
    sub_10006A010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097038);
  }

  return result;
}

unint64_t sub_10001321C()
{
  result = qword_100097070;
  if (!qword_100097070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097070);
  }

  return result;
}

unint64_t sub_100013274()
{
  result = qword_100097078;
  if (!qword_100097078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097078);
  }

  return result;
}

uint64_t sub_1000132C8()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5598);
  sub_10000CEB8(v10, qword_1000A5598);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_1000135A4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v30 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v29 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v29;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v30;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100013AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100013BE8, 0, 0);
}

uint64_t sub_100013BE8()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097190, &unk_100070BE8);
  v4 = sub_1000095F4(&qword_100097178, &qword_100097180, &qword_100070B98, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_100013CF8;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_100013CF8()
{

  return _swift_task_switch(sub_100013E10, 0, 0);
}

uint64_t sub_100013E10()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_100097170, &qword_100070B80);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100014048;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100014048()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_10001417C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001417C()
{
  sub_100013274();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100013AF0(a1, v6, a3);
}

unint64_t sub_1000142B8()
{
  result = qword_100097080;
  if (!qword_100097080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097080);
  }

  return result;
}

unint64_t sub_100014310()
{
  result = qword_100097088;
  if (!qword_100097088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097088);
  }

  return result;
}

unint64_t sub_100014368()
{
  result = qword_100097090;
  if (!qword_100097090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097090);
  }

  return result;
}

uint64_t sub_1000143BC()
{
  v0 = qword_100097050;

  return v0;
}

unint64_t sub_1000143F8()
{
  result = qword_100097098;
  if (!qword_100097098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097098);
  }

  return result;
}

uint64_t sub_10001444C(uint64_t a1)
{
  v2 = sub_1000142B8();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000057, 0x8000000100077940, a1, v2);
}

unint64_t sub_1000144B4()
{
  result = qword_1000970A0;
  if (!qword_1000970A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970A0);
  }

  return result;
}

unint64_t sub_10001450C()
{
  result = qword_1000970A8;
  if (!qword_1000970A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970A8);
  }

  return result;
}

unint64_t sub_100014564()
{
  result = qword_1000970B0;
  if (!qword_1000970B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B0);
  }

  return result;
}

unint64_t sub_1000145BC()
{
  result = qword_1000970B8;
  if (!qword_1000970B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B8);
  }

  return result;
}

uint64_t sub_100014610(uint64_t a1)
{
  sub_100015C14();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100014680()
{
  result = qword_1000970C0;
  if (!qword_1000970C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970C0);
  }

  return result;
}

unint64_t sub_1000146D8()
{
  result = qword_1000970C8;
  if (!qword_1000970C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970C8);
  }

  return result;
}

unint64_t sub_100014730()
{
  result = qword_1000970D0;
  if (!qword_1000970D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970D0);
  }

  return result;
}

unint64_t sub_100014788()
{
  result = qword_1000970D8;
  if (!qword_1000970D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970D8);
  }

  return result;
}

uint64_t sub_1000147DC@<X0>(uint64_t *a2@<X8>)
{
  sub_1000149E8();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100014898(uint64_t a1)
{
  v2 = sub_1000142B8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000148E8()
{
  result = qword_1000970F0;
  if (!qword_1000970F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970F0);
  }

  return result;
}

uint64_t sub_100014940(uint64_t a1)
{
  v2 = sub_100014788();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100014990()
{
  result = qword_1000970F8;
  if (!qword_1000970F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970F8);
  }

  return result;
}

unint64_t sub_1000149E8()
{
  result = qword_100097100;
  if (!qword_100097100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097100);
  }

  return result;
}

uint64_t sub_100014A3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100014ACC, 0, 0);
}

uint64_t sub_100014ACC()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_100097170, &qword_100070B80);
  sub_10006A490();
  sub_1000095F4(&qword_100097178, &qword_100097180, &qword_100070B98, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100014368();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100014C98()
{
  result = qword_100097108;
  if (!qword_100097108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097108);
  }

  return result;
}

unint64_t sub_100014CF0()
{
  result = qword_100097110;
  if (!qword_100097110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097110);
  }

  return result;
}

uint64_t sub_100014D44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100014368();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100014DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100014368();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100014EAC()
{
  result = qword_100097118;
  if (!qword_100097118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097118);
  }

  return result;
}

unint64_t sub_100014F04()
{
  result = qword_100097120;
  if (!qword_100097120)
  {
    sub_100008154(&qword_100097128, qword_100070810);
    sub_100014730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097120);
  }

  return result;
}

uint64_t sub_100014F88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000145BC();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100015040()
{
  result = qword_100097130;
  if (!qword_100097130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097130);
  }

  return result;
}

uint64_t sub_100015094()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A55B0);
  sub_10000CEB8(v6, qword_1000A55B0);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100015274(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_1000152E8()
{
  result = qword_100097138;
  if (!qword_100097138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097138);
  }

  return result;
}

uint64_t sub_10001533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015B6C();
  v5 = sub_100015C14();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000153A8()
{
  v0 = qword_100097060;

  return v0;
}

unint64_t sub_1000153E4()
{
  result = qword_100097140;
  if (!qword_100097140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097140);
  }

  return result;
}

unint64_t sub_10001543C()
{
  result = qword_100097148;
  if (!qword_100097148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097148);
  }

  return result;
}

uint64_t sub_100015518@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000CEB8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000155C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100015B6C();
  v7 = sub_100015BC0();
  v8 = sub_100015C14();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100015694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100015874();
  *a1 = result;
  return result;
}

uint64_t sub_1000156BC(uint64_t a1)
{
  v2 = sub_1000152E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100015758()
{
  v1 = *(v0 + 16);
  *v1 = [objc_opt_self() shouldAutoConvertToTag];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000157F8()
{
  [objc_opt_self() setShouldAutoConvertToTag:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015874()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097150, &qword_100070B78);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_1000142B8();
  return sub_10006A150();
}

unint64_t sub_100015B6C()
{
  result = qword_100097158;
  if (!qword_100097158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097158);
  }

  return result;
}

unint64_t sub_100015BC0()
{
  result = qword_100097160;
  if (!qword_100097160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097160);
  }

  return result;
}

unint64_t sub_100015C14()
{
  result = qword_100097168;
  if (!qword_100097168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097168);
  }

  return result;
}

uint64_t sub_100015C68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_100015CB0()
{
  result = qword_1000971B8;
  if (!qword_1000971B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971B8);
  }

  return result;
}

unint64_t sub_100015D08()
{
  result = qword_1000971C0;
  if (!qword_1000971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971C0);
  }

  return result;
}

uint64_t sub_100015D5C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A55C8);
  sub_10000CEB8(v10, qword_1000A55C8);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_100016038@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v30 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v29 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v29;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v30;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100016584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001667C, 0, 0);
}

uint64_t sub_10001667C()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_1000972D0, qword_100071450);
  v4 = sub_1000095F4(&qword_1000972C0, &qword_1000972C8, &qword_100071410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_10001678C;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_10001678C()
{

  return _swift_task_switch(sub_1000168A4, 0, 0);
}

uint64_t sub_1000168A4()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_1000972B8, &qword_1000713F8);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100016ADC;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100016ADC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_100016C10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100016C10()
{
  sub_100015D08();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100016584(a1, v6, a3);
}

unint64_t sub_100016D4C()
{
  result = qword_1000971C8;
  if (!qword_1000971C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971C8);
  }

  return result;
}

unint64_t sub_100016DA4()
{
  result = qword_1000971D0;
  if (!qword_1000971D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D0);
  }

  return result;
}

unint64_t sub_100016DFC()
{
  result = qword_1000971D8;
  if (!qword_1000971D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D8);
  }

  return result;
}

uint64_t sub_100016E50()
{
  v0 = qword_100097198;

  return v0;
}

unint64_t sub_100016E8C()
{
  result = qword_1000971E0;
  if (!qword_1000971E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971E0);
  }

  return result;
}

uint64_t sub_100016EE0(uint64_t a1)
{
  v2 = sub_100016D4C();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000005ALL, 0x8000000100077A60, a1, v2);
}

unint64_t sub_100016F48()
{
  result = qword_1000971E8;
  if (!qword_1000971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971E8);
  }

  return result;
}

unint64_t sub_100016FA0()
{
  result = qword_1000971F0;
  if (!qword_1000971F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971F0);
  }

  return result;
}

unint64_t sub_100016FF8()
{
  result = qword_1000971F8;
  if (!qword_1000971F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971F8);
  }

  return result;
}

unint64_t sub_100017050()
{
  result = qword_100097200;
  if (!qword_100097200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097200);
  }

  return result;
}

uint64_t sub_1000170A4(uint64_t a1)
{
  sub_1000188C4();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100017114()
{
  result = qword_100097208;
  if (!qword_100097208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097208);
  }

  return result;
}

unint64_t sub_10001716C()
{
  result = qword_100097210;
  if (!qword_100097210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097210);
  }

  return result;
}

unint64_t sub_1000171C4()
{
  result = qword_100097218;
  if (!qword_100097218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097218);
  }

  return result;
}

unint64_t sub_10001721C()
{
  result = qword_100097220;
  if (!qword_100097220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097220);
  }

  return result;
}

uint64_t sub_100017270@<X0>(uint64_t *a2@<X8>)
{
  sub_10001747C();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001732C(uint64_t a1)
{
  v2 = sub_100016D4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001737C()
{
  result = qword_100097238;
  if (!qword_100097238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097238);
  }

  return result;
}

uint64_t sub_1000173D4(uint64_t a1)
{
  v2 = sub_10001721C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100017424()
{
  result = qword_100097240;
  if (!qword_100097240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097240);
  }

  return result;
}

unint64_t sub_10001747C()
{
  result = qword_100097248;
  if (!qword_100097248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097248);
  }

  return result;
}

uint64_t sub_1000174D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000131E8;

  return sub_100018164();
}

uint64_t sub_100017574(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100016DFC();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100017628()
{
  result = qword_100097250;
  if (!qword_100097250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097250);
  }

  return result;
}

unint64_t sub_100017680()
{
  result = qword_100097258;
  if (!qword_100097258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097258);
  }

  return result;
}

uint64_t sub_1000176D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100016DFC();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100017788(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100016DFC();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001783C()
{
  result = qword_100097260;
  if (!qword_100097260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097260);
  }

  return result;
}

unint64_t sub_100017894()
{
  result = qword_100097268;
  if (!qword_100097268)
  {
    sub_100008154(&qword_100097270, qword_100071070);
    sub_1000171C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097268);
  }

  return result;
}

uint64_t sub_100017918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100017050();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000179D0()
{
  result = qword_100097278;
  if (!qword_100097278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097278);
  }

  return result;
}

uint64_t sub_100017A24()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A55E0);
  sub_10000CEB8(v6, qword_1000A55E0);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100017C04(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_100017C78()
{
  result = qword_100097280;
  if (!qword_100097280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097280);
  }

  return result;
}

uint64_t sub_100017CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001881C();
  v5 = sub_1000188C4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100017D38()
{
  v0 = qword_1000971A8;

  return v0;
}

unint64_t sub_100017D74()
{
  result = qword_100097288;
  if (!qword_100097288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097288);
  }

  return result;
}

unint64_t sub_100017DCC()
{
  result = qword_100097290;
  if (!qword_100097290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097290);
  }

  return result;
}

uint64_t sub_100017EA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001881C();
  v7 = sub_100018870();
  v8 = sub_1000188C4();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100017F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018524();
  *a1 = result;
  return result;
}

uint64_t sub_100017FA4(uint64_t a1)
{
  v2 = sub_100017C78();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100018040()
{
  v1 = *(v0 + 16);
  *v1 = [objc_opt_self() ic_alwaysShowLightContent] ^ 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000180E4()
{
  [objc_opt_self() setIc_alwaysShowLightContent:(*(v0 + 16) & 1) == 0];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018164()
{
  sub_10006A4B0();
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1000181F0, 0, 0);
}

uint64_t sub_1000181F0()
{
  *(v0 + 24) = objc_opt_self();
  sub_10006B370();
  *(v0 + 32) = sub_10006B360();
  v2 = sub_10006B350();

  return _swift_task_switch(sub_100018294, v2, v1);
}

uint64_t sub_100018294()
{
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 ic_isVision];

  return _swift_task_switch(sub_100018310, 0, 0);
}

uint64_t sub_100018310()
{
  if (*(v0 + 40) == 1)
  {
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2D0();
LABEL_8:
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 != 2)
  {
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2E0();
    goto LABEL_8;
  }

  sub_100007DF0(&qword_1000972B8, &qword_1000713F8);
  sub_10006A490();
  sub_1000095F4(&qword_1000972C0, &qword_1000972C8, &qword_100071410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v3 = sub_10006A430();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100018524()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097298, &qword_1000713E8);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100016D4C();
  return sub_10006A150();
}

unint64_t sub_10001881C()
{
  result = qword_1000972A0;
  if (!qword_1000972A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000972A0);
  }

  return result;
}

unint64_t sub_100018870()
{
  result = qword_1000972A8;
  if (!qword_1000972A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000972A8);
  }

  return result;
}

unint64_t sub_1000188C4()
{
  result = qword_1000972B0;
  if (!qword_1000972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000972B0);
  }

  return result;
}

uint64_t sub_100018918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_100018960()
{
  result = qword_1000972F8;
  if (!qword_1000972F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000972F8);
  }

  return result;
}

unint64_t sub_1000189B8()
{
  result = qword_100097300;
  if (!qword_100097300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097300);
  }

  return result;
}

uint64_t sub_100018A0C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A55F8);
  sub_10000CEB8(v10, qword_1000A55F8);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_100018CE8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v28 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v30 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v30;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v28;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100019240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100019338, 0, 0);
}

uint64_t sub_100019338()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097410, &unk_100071CB0);
  v4 = sub_1000095F4(&qword_100097400, &qword_100097408, &qword_100071C70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_100019448;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_100019448()
{

  return _swift_task_switch(sub_100019560, 0, 0);
}

uint64_t sub_100019560()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_1000973F8, &qword_100071C58);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100019798;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100019798()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_1000198CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000198CC()
{
  sub_1000189B8();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100019964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100019240(a1, v6, a3);
}

unint64_t sub_100019A08()
{
  result = qword_100097308;
  if (!qword_100097308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097308);
  }

  return result;
}

unint64_t sub_100019A60()
{
  result = qword_100097310;
  if (!qword_100097310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097310);
  }

  return result;
}

unint64_t sub_100019AB8()
{
  result = qword_100097318;
  if (!qword_100097318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097318);
  }

  return result;
}

uint64_t sub_100019B0C()
{
  v0 = qword_1000972D8;

  return v0;
}

unint64_t sub_100019B48()
{
  result = qword_100097320;
  if (!qword_100097320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097320);
  }

  return result;
}

uint64_t sub_100019B9C(uint64_t a1)
{
  v2 = sub_100019A08();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000050, 0x8000000100077B50, a1, v2);
}

unint64_t sub_100019C04()
{
  result = qword_100097328;
  if (!qword_100097328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097328);
  }

  return result;
}

unint64_t sub_100019C5C()
{
  result = qword_100097330;
  if (!qword_100097330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097330);
  }

  return result;
}

unint64_t sub_100019CB4()
{
  result = qword_100097338;
  if (!qword_100097338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097338);
  }

  return result;
}

unint64_t sub_100019D0C()
{
  result = qword_100097340;
  if (!qword_100097340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097340);
  }

  return result;
}

uint64_t sub_100019D60(uint64_t a1)
{
  sub_10001B2CC();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100019DD0()
{
  result = qword_100097348;
  if (!qword_100097348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097348);
  }

  return result;
}

unint64_t sub_100019E28()
{
  result = qword_100097350;
  if (!qword_100097350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097350);
  }

  return result;
}

unint64_t sub_100019E80()
{
  result = qword_100097358;
  if (!qword_100097358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097358);
  }

  return result;
}

unint64_t sub_100019ED8()
{
  result = qword_100097360;
  if (!qword_100097360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097360);
  }

  return result;
}

uint64_t sub_100019F2C@<X0>(uint64_t *a2@<X8>)
{
  sub_10001A138();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100019FE8(uint64_t a1)
{
  v2 = sub_100019A08();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001A038()
{
  result = qword_100097378;
  if (!qword_100097378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097378);
  }

  return result;
}

uint64_t sub_10001A090(uint64_t a1)
{
  v2 = sub_100019ED8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001A0E0()
{
  result = qword_100097380;
  if (!qword_100097380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097380);
  }

  return result;
}

unint64_t sub_10001A138()
{
  result = qword_100097388;
  if (!qword_100097388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097388);
  }

  return result;
}

uint64_t sub_10001A18C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10001A21C, 0, 0);
}

uint64_t sub_10001A21C()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_1000973F8, &qword_100071C58);
  sub_10006A490();
  sub_1000095F4(&qword_100097400, &qword_100097408, &qword_100071C70, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001A334(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100019AB8();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001A3E8()
{
  result = qword_100097390;
  if (!qword_100097390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097390);
  }

  return result;
}

unint64_t sub_10001A440()
{
  result = qword_100097398;
  if (!qword_100097398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097398);
  }

  return result;
}

uint64_t sub_10001A494(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100019AB8();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001A548(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100019AB8();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001A5FC()
{
  result = qword_1000973A0;
  if (!qword_1000973A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973A0);
  }

  return result;
}

unint64_t sub_10001A654()
{
  result = qword_1000973A8;
  if (!qword_1000973A8)
  {
    sub_100008154(&qword_1000973B0, qword_1000718E0);
    sub_100019E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973A8);
  }

  return result;
}

uint64_t sub_10001A6D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100019D0C();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10001A790()
{
  result = qword_1000973B8;
  if (!qword_1000973B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973B8);
  }

  return result;
}

uint64_t sub_10001A7E4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5610);
  sub_10000CEB8(v6, qword_1000A5610);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_10001A9C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_10001AA38()
{
  result = qword_1000973C0;
  if (!qword_1000973C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C0);
  }

  return result;
}

uint64_t sub_10001AA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B224();
  v5 = sub_10001B2CC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10001AAF8()
{
  v0 = qword_1000972E8;

  return v0;
}

unint64_t sub_10001AB34()
{
  result = qword_1000973C8;
  if (!qword_1000973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973C8);
  }

  return result;
}

unint64_t sub_10001AB8C()
{
  result = qword_1000973D0;
  if (!qword_1000973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973D0);
  }

  return result;
}

uint64_t sub_10001AC68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001B224();
  v7 = sub_10001B278();
  v8 = sub_10001B2CC();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10001AD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001AF2C();
  *a1 = result;
  return result;
}

uint64_t sub_10001AD64(uint64_t a1)
{
  v2 = sub_10001AA38();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10001AE00()
{
  v1 = *(v0 + 16);
  *v1 = [objc_opt_self() defaultDateHeadersType] != 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001AEA8()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setDefaultDateHeadersType:v3];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001AF2C()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_1000973D8, &qword_100071C50);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100019A08();
  return sub_10006A150();
}

unint64_t sub_10001B224()
{
  result = qword_1000973E0;
  if (!qword_1000973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973E0);
  }

  return result;
}

unint64_t sub_10001B278()
{
  result = qword_1000973E8;
  if (!qword_1000973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973E8);
  }

  return result;
}

unint64_t sub_10001B2CC()
{
  result = qword_1000973F0;
  if (!qword_1000973F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000973F0);
  }

  return result;
}

uint64_t sub_10001B320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

uint64_t sub_10001B364()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5628);
  sub_10000CEB8(v10, qword_1000A5628);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_10001B640@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v30 = &v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v29 = &v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v26 = &v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v29;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v30;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_10001BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_1000975C0, &qword_1000727D0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001BC84, 0, 0);
}

uint64_t sub_10001BC84()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_1000975C8, &qword_100072800);
  v4 = sub_1000095F4(&qword_1000975B0, &qword_1000975B8, &qword_1000727C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_10001BD94;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_10001BD94()
{

  return _swift_task_switch(sub_10001BEAC, 0, 0);
}

uint64_t sub_10001BEAC()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_1000975A8, &qword_1000727A8);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10001C0E4;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10001C0E4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_10001C218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001C218()
{
  sub_10001E9E8();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_10001BB8C(a1, v6, a3);
}

uint64_t sub_10001C350()
{
  v0 = qword_100097418;

  return v0;
}

uint64_t sub_10001C388(uint64_t a1)
{
  v2 = sub_10001EA40();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000051, 0x8000000100077C70, a1, v2);
}

uint64_t sub_10001C3EC(uint64_t a1)
{
  sub_10001FCC8();
  v2 = sub_10006A3C0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10001C458@<X0>(uint64_t *a2@<X8>)
{
  sub_10001F3E0();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001C4D0(uint64_t a1)
{
  v2 = sub_10001EA40();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001C520(uint64_t a1)
{
  v2 = sub_10001EE08();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001C56C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, static ParagraphStyle.typeDisplayRepresentation);
  sub_10000CEB8(v10, static ParagraphStyle.typeDisplayRepresentation);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t ParagraphStyle.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100096868 != -1)
  {
    swift_once();
  }

  v0 = sub_10006A450();

  return sub_10000CEB8(v0, static ParagraphStyle.typeDisplayRepresentation);
}

uint64_t static ParagraphStyle.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096868 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A450();
  v3 = sub_10000CEB8(v2, static ParagraphStyle.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001C95C()
{
  v0 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v0 - 8);
  v81 = &v60 - v1;
  v2 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v2 - 8);
  v67 = &v60 - v3;
  v74 = sub_10006A4A0();
  v4 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006B270();
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10006A4B0();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_1000975D0, &qword_100072808);
  v14 = sub_100007DF0(&qword_1000975D8, &qword_100072810);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v73 = *(*(v14 - 8) + 72);
  v16 = v73;
  v17 = swift_allocObject();
  v62 = v17;
  *(v17 + 16) = xmmword_100071CC0;
  v18 = v17 + v15;
  v64 = *(v14 + 48);
  v76 = v14;
  *(v17 + v15) = 0;
  sub_10006B260();
  sub_10006A5A0();
  v72 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v4 + 104);
  v69 = v4 + 104;
  v77 = v19;
  v19(v71);
  sub_10006A4C0();
  v20 = *(v82 + 56);
  v82 += 56;
  v80 = v20;
  v21 = v67;
  v20(v67, 1, 1, v78);
  v79 = sub_10006A300();
  v22 = *(v79 - 8);
  v75 = *(v22 + 56);
  v70 = v22 + 56;
  v75(v81, 1, 1, v79);
  v68 = v18;
  sub_10006A320();
  v61 = v18 + v16;
  v64 = *(v14 + 48);
  *(v18 + v16) = 1;
  v66 = v11;
  sub_10006B260();
  v23 = v8;
  sub_10006A5A0();
  v24 = v71;
  v25 = v74;
  v77(v71, v72, v74);
  v65 = v13;
  sub_10006A4C0();
  v26 = v21;
  v27 = v78;
  v80(v21, 1, 1, v78);
  v28 = v75;
  v75(v81, 1, 1, v79);
  sub_10006A320();
  v64 = 2 * v73;
  v60 = (v68 + 2 * v73);
  v61 = *(v76 + 48);
  *v60 = 2;
  sub_10006B260();
  sub_10006A5A0();
  v29 = v24;
  v30 = v24;
  v31 = v72;
  v77(v30, v72, v25);
  sub_10006A4C0();
  v80(v21, 1, 1, v27);
  v28(v81, 1, 1, v79);
  sub_10006A320();
  v32 = v73;
  v61 = v68 + v64 + v73;
  v33 = v76;
  v64 = *(v76 + 48);
  *v61 = 3;
  sub_10006B260();
  v63 = v23;
  sub_10006A5A0();
  v34 = v77;
  v77(v29, v31, v74);
  sub_10006A4C0();
  v80(v21, 1, 1, v78);
  v35 = v79;
  v75(v81, 1, 1, v79);
  sub_10006A320();
  v64 = 4 * v32;
  v36 = v68;
  v61 = *(v33 + 48);
  *(v68 + 4 * v32) = 4;
  sub_10006B260();
  sub_10006A5A0();
  v34(v71, v72, v74);
  sub_10006A4C0();
  v37 = v78;
  v38 = v80;
  v80(v26, 1, 1, v78);
  v75(v81, 1, 1, v35);
  sub_10006A320();
  v61 = v36 + v64 + v73;
  v64 = *(v76 + 48);
  *v61 = 5;
  sub_10006B260();
  sub_10006A5A0();
  v39 = v72;
  v40 = v74;
  v41 = v77;
  v77(v71, v72, v74);
  sub_10006A4C0();
  v38(v67, 1, 1, v37);
  v42 = v75;
  v75(v81, 1, 1, v79);
  sub_10006A320();
  v43 = v68;
  v61 = v68 + 6 * v73;
  v64 = *(v76 + 48);
  *v61 = 6;
  sub_10006B260();
  sub_10006A5A0();
  v44 = v71;
  v41(v71, v39, v40);
  sub_10006A4C0();
  v45 = v78;
  v80(v67, 1, 1, v78);
  v42(v81, 1, 1, v79);
  sub_10006A320();
  v64 = 8 * v73;
  v46 = v76;
  v61 = *(v76 + 48);
  *(v43 + 7 * v73) = 7;
  sub_10006B260();
  sub_10006A5A0();
  v47 = v72;
  v48 = v74;
  v77(v44, v72, v74);
  sub_10006A4C0();
  v80(v67, 1, 1, v45);
  v49 = v75;
  v75(v81, 1, 1, v79);
  sub_10006A320();
  v50 = v68;
  v60 = (v68 + v64);
  v61 = *(v46 + 48);
  *v60 = 8;
  sub_10006B260();
  sub_10006A5A0();
  v51 = v71;
  v77(v71, v47, v48);
  v52 = v51;
  sub_10006A4C0();
  v53 = v67;
  v80(v67, 1, 1, v78);
  v54 = v81;
  v55 = v79;
  v49(v81, 1, 1, v79);
  v56 = v53;
  sub_10006A320();
  v57 = (v50 + v64 + v73);
  v73 = *(v76 + 48);
  *v57 = 9;
  sub_10006B260();
  sub_10006A5A0();
  v77(v52, v72, v74);
  sub_10006A4C0();
  v80(v56, 1, 1, v78);
  v75(v54, 1, 1, v55);
  sub_10006A320();
  v58 = sub_100025E54(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static ParagraphStyle.caseDisplayRepresentations = v58;
  return result;
}

uint64_t *ParagraphStyle.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100096870 != -1)
  {
    swift_once();
  }

  return &static ParagraphStyle.caseDisplayRepresentations;
}

uint64_t static ParagraphStyle.caseDisplayRepresentations.getter()
{
  if (qword_100096870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static ParagraphStyle.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100096870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ParagraphStyle.caseDisplayRepresentations = a1;

  return result;
}

uint64_t (*static ParagraphStyle.caseDisplayRepresentations.modify(uint64_t a1))()
{
  if (qword_100096870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ParagraphStyle.init(namedStyle:)(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 3;
  }

  if (result > 100)
  {
    switch(result)
    {
      case 'e':
        return 7;
      case 'f':
        return 8;
      case 'g':
        return 9;
    }

    return 3;
  }

  if (result != 5)
  {
    if (result == 100)
    {
      return 6;
    }

    return 3;
  }

  return result;
}

uint64_t ParagraphStyle.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x687361447473696CLL;
    v6 = 0x626D754E7473696CLL;
    if (a1 != 8)
    {
      v6 = 0x6F646F547473696CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E6F6974706163;
    if (a1 != 5)
    {
      v7 = 0x6C6C75427473696CLL;
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
    v1 = 0x656C746974;
    v2 = 0x6964616568627573;
    v3 = 2036625250;
    if (a1 != 3)
    {
      v3 = 0x6469576465786966;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E6964616568;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001DB98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ParagraphStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ParagraphStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006B540();
  }

  return v8 & 1;
}

unint64_t sub_10001DC20@<X0>(Swift::String *a1@<X0>, com_apple_mobilenotes_WidgetExtension::ParagraphStyle_optional *a2@<X8>)
{
  result = _s37com_apple_mobilenotes_WidgetExtension14ParagraphStyleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10001DC50@<X0>(uint64_t *a1@<X8>)
{
  result = ParagraphStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10001DC7C()
{
  v1 = *v0;
  sub_10006B570();
  ParagraphStyle.rawValue.getter(v1);
  sub_10006B2B0();

  return sub_10006B580();
}

double sub_10001DCE0(uint64_t a1)
{
  ParagraphStyle.rawValue.getter(*v1);
  sub_10006B2B0();

  return result;
}

Swift::Int sub_10001DD34()
{
  v1 = *v0;
  sub_10006B570();
  ParagraphStyle.rawValue.getter(v1);
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10001DDCC(uint64_t a1)
{
  v2 = sub_10001F1E4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001DE18(uint64_t a1)
{
  v2 = sub_10001F164();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001DE74(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10006A4B0();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10001DF04, 0, 0);
}

uint64_t sub_10001DF04()
{
  v1 = *(v0 + 16);
  sub_100007DF0(&qword_1000975A8, &qword_1000727A8);
  sub_10006A490();
  sub_1000095F4(&qword_1000975B0, &qword_1000975B8, &qword_1000727C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10006A430();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001E01C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001EAF0();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_10001E0CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001EAF0();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001E180(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001EAF0();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_10001E230(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001ECA8();
  *v5 = v2;
  v5[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10001E2E4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5660);
  sub_10000CEB8(v6, qword_1000A5660);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_10001E4C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

uint64_t sub_10001E538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FC20();
  v5 = sub_10001FCC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10001E5A0()
{
  v0 = qword_100097428;

  return v0;
}

uint64_t sub_10001E610(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001FC20();
  v7 = sub_10001FC74();
  v8 = sub_10001FCC8();
  *v5 = v2;
  v5[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10001E6E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F928();
  *a1 = result;
  return result;
}

uint64_t sub_10001E70C(uint64_t a1)
{
  v2 = sub_10001F61C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10001E768()
{
  v1 = [objc_opt_self() noteDefaultNamedStyle];
  if (v1 > 4)
  {
    if (v1 <= 100)
    {
      if (v1 != 5)
      {
        if (v1 == 100)
        {
          v2 = 6;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v2 = 5;
    }

    else
    {
      switch(v1)
      {
        case 'e':
          v2 = 7;
          break;
        case 'f':
          v2 = 8;
          break;
        case 'g':
          v2 = 9;
          break;
        default:
          goto LABEL_17;
      }
    }
  }

  else if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v2 = 0;
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        v2 = 4;
        goto LABEL_23;
      }

LABEL_17:
      v2 = 3;
      goto LABEL_23;
    }

    v2 = 2;
  }

LABEL_23:
  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001E8B8()
{
  [objc_opt_self() setNoteDefaultNamedStyle:dword_10007281C[*(v0 + 16)]];
  v1 = *(v0 + 8);

  return v1();
}

unint64_t _s37com_apple_mobilenotes_WidgetExtension14ParagraphStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000925A0;
  v6._object = a2;
  v4 = sub_10006B520(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001E990()
{
  result = qword_100097438;
  if (!qword_100097438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097438);
  }

  return result;
}

unint64_t sub_10001E9E8()
{
  result = qword_100097440;
  if (!qword_100097440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097440);
  }

  return result;
}

unint64_t sub_10001EA40()
{
  result = qword_100097448;
  if (!qword_100097448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097448);
  }

  return result;
}

unint64_t sub_10001EA98()
{
  result = qword_100097450;
  if (!qword_100097450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097450);
  }

  return result;
}

unint64_t sub_10001EAF0()
{
  result = qword_100097458;
  if (!qword_100097458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097458);
  }

  return result;
}

unint64_t sub_10001EB48()
{
  result = qword_100097460;
  if (!qword_100097460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097460);
  }

  return result;
}

unint64_t sub_10001EBA0()
{
  result = qword_100097468;
  if (!qword_100097468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097468);
  }

  return result;
}

unint64_t sub_10001EBF8()
{
  result = qword_100097470;
  if (!qword_100097470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097470);
  }

  return result;
}

unint64_t sub_10001EC50()
{
  result = qword_100097478;
  if (!qword_100097478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097478);
  }

  return result;
}

unint64_t sub_10001ECA8()
{
  result = qword_100097480;
  if (!qword_100097480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097480);
  }

  return result;
}

unint64_t sub_10001ED00()
{
  result = qword_100097488;
  if (!qword_100097488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097488);
  }

  return result;
}

unint64_t sub_10001ED58()
{
  result = qword_100097490;
  if (!qword_100097490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097490);
  }

  return result;
}

unint64_t sub_10001EDB0()
{
  result = qword_100097498;
  if (!qword_100097498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097498);
  }

  return result;
}

unint64_t sub_10001EE08()
{
  result = qword_1000974A0;
  if (!qword_1000974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974A0);
  }

  return result;
}

unint64_t sub_10001EEA4()
{
  result = qword_1000974B8;
  if (!qword_1000974B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974B8);
  }

  return result;
}

unint64_t sub_10001EEFC()
{
  result = qword_1000974C0;
  if (!qword_1000974C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974C0);
  }

  return result;
}

unint64_t sub_10001EF54()
{
  result = qword_1000974C8;
  if (!qword_1000974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974C8);
  }

  return result;
}

unint64_t sub_10001EFAC()
{
  result = qword_1000974D0;
  if (!qword_1000974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974D0);
  }

  return result;
}

unint64_t sub_10001F004()
{
  result = qword_1000974D8;
  if (!qword_1000974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974D8);
  }

  return result;
}

unint64_t sub_10001F05C()
{
  result = qword_1000974E0;
  if (!qword_1000974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974E0);
  }

  return result;
}

unint64_t sub_10001F0B4()
{
  result = qword_1000974E8;
  if (!qword_1000974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974E8);
  }

  return result;
}

unint64_t sub_10001F10C()
{
  result = qword_1000974F0;
  if (!qword_1000974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974F0);
  }

  return result;
}

unint64_t sub_10001F164()
{
  result = qword_1000974F8;
  if (!qword_1000974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000974F8);
  }

  return result;
}

unint64_t sub_10001F1E4()
{
  result = qword_100097500;
  if (!qword_100097500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097500);
  }

  return result;
}

unint64_t sub_10001F23C()
{
  result = qword_100097508;
  if (!qword_100097508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097508);
  }

  return result;
}

unint64_t sub_10001F294()
{
  result = qword_100097510;
  if (!qword_100097510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097510);
  }

  return result;
}

unint64_t sub_10001F2EC()
{
  result = qword_100097518;
  if (!qword_100097518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097518);
  }

  return result;
}

unint64_t sub_10001F388()
{
  result = qword_100097530;
  if (!qword_100097530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097530);
  }

  return result;
}

unint64_t sub_10001F3E0()
{
  result = qword_100097538;
  if (!qword_100097538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097538);
  }

  return result;
}

unint64_t sub_10001F438()
{
  result = qword_100097540;
  if (!qword_100097540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097540);
  }

  return result;
}

unint64_t sub_10001F490()
{
  result = qword_100097548;
  if (!qword_100097548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097548);
  }

  return result;
}

unint64_t sub_10001F4E8()
{
  result = qword_100097550;
  if (!qword_100097550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097550);
  }

  return result;
}

unint64_t sub_10001F540()
{
  result = qword_100097558;
  if (!qword_100097558)
  {
    sub_100008154(&qword_100097560, qword_1000723E8);
    sub_10001EDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097558);
  }

  return result;
}

unint64_t sub_10001F5C8()
{
  result = qword_100097568;
  if (!qword_100097568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097568);
  }

  return result;
}

unint64_t sub_10001F61C()
{
  result = qword_100097570;
  if (!qword_100097570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097570);
  }

  return result;
}

unint64_t sub_10001F678()
{
  result = qword_100097578;
  if (!qword_100097578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097578);
  }

  return result;
}

unint64_t sub_10001F6D0()
{
  result = qword_100097580;
  if (!qword_100097580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParagraphStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParagraphStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001F928()
{
  v17[0] = sub_10006A3B0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_100097588, &qword_1000727A0);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10001EA40();
  return sub_10006A150();
}

unint64_t sub_10001FC20()
{
  result = qword_100097590;
  if (!qword_100097590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097590);
  }

  return result;
}

unint64_t sub_10001FC74()
{
  result = qword_100097598;
  if (!qword_100097598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097598);
  }

  return result;
}

unint64_t sub_10001FCC8()
{
  result = qword_1000975A0;
  if (!qword_1000975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975A0);
  }

  return result;
}

uint64_t sub_10001FD1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A420();
  *a1 = result;
  return result;
}

unint64_t sub_10001FD6C()
{
  result = qword_100097600;
  if (!qword_100097600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097600);
  }

  return result;
}

unint64_t sub_10001FDC4()
{
  result = qword_100097608;
  if (!qword_100097608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097608);
  }

  return result;
}

uint64_t sub_10001FE18()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5678);
  sub_10000CEB8(v10, qword_1000A5678);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_1000200F4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v31 = v24 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v30 = v24 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v28 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v27 = v24 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v25 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v30;
  sub_10006A4C0();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v20 = v31;
  sub_10006A2F0();
  v21 = sub_10006A300();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v24[1] = 2 * *(v12 + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10006F2A0;
  sub_10006B260();
  sub_10006A5A0();
  v22 = v25;
  v17(v8, v16, v25);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v22);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100020730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10006A4B0();
  v3[5] = swift_task_alloc();
  v4 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100020828, 0, 0);
}

uint64_t sub_100020828()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_100007DF0(&qword_100097718, &unk_1000730A8);
  v4 = sub_1000095F4(&qword_100097708, &qword_100097710, &qword_100073068, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_100020938;
  v5 = v0[8];

  return _AppEntityUpdate.value<A>(of:)(v5, KeyPath, v3, v4);
}

uint64_t sub_100020938()
{

  return _swift_task_switch(sub_100020A50, 0, 0);
}

uint64_t sub_100020A50()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 64);
    (*(*(v0 + 56) + 96))(v1, *(v0 + 48));
    v2 = *v1;
    sub_100007DF0(&qword_100097700, &qword_100073050);
    sub_10006A490();
    v3 = sub_10006A430();
    *(v0 + 96) = v3;
    *(v0 + 16) = v3;
    *(v0 + 128) = v2;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100020C88;
    v6 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v6);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100020C88()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10000ED2C;
  }

  else
  {
    v2 = sub_100020DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020DBC()
{
  sub_10001FDC4();
  sub_10006A000();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100020730(a1, v6, a3);
}

unint64_t sub_100020EF8()
{
  result = qword_100097610;
  if (!qword_100097610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097610);
  }

  return result;
}