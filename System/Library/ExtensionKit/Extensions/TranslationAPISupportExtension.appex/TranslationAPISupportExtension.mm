uint64_t sub_100001A58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001D0A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001CFC(&qword_100028A98, &qword_10001E140);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LanguageDownloadView(0);
  sub_100005D74(v1 + *(v10 + 20), v9, &qword_100028A98, &qword_10001E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001CF78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10001D5D8();
    v13 = sub_10001D1B8();
    sub_10001CED8();

    sub_10001D098();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t variable initialization expression of LanguageDownloadView._openSensitiveURL@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001CFC(&qword_100028A98, &qword_10001E140);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100001CFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t LanguageDownloadView.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for LanguageDownloadView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_100001CFC(&qword_100028A98, &qword_10001E140);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t LanguageDownloadView.body.getter()
{
  sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  sub_1000022C4();
  return sub_10001D1E8();
}

uint64_t sub_100001E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_100001CFC(&qword_100028AF0, qword_10001E168);
  __chkstk_darwin(v39);
  v4 = &v39 - v3;
  v5 = sub_10001CE08();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10001D468();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_100001CFC(&qword_100028AC8, &qword_10001E158);
  __chkstk_darwin(v13);
  v41 = a1;
  sub_10001D458();
  (*(v7 + 16))(v10, v12, v6);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v14 = qword_100029CB0;
  sub_10001CDF8();
  v15 = sub_10001D488();
  v17 = v16;
  v18 = (*(v7 + 8))(v12, v6);
  v42 = v15;
  v43 = v17;
  sub_100005408(v18, v19, v20);
  v21 = sub_10001D238();
  v23 = v22;
  v42 = v21;
  v43 = v22;
  v25 = v24 & 1;
  v44 = v24 & 1;
  v45 = v26;
  sub_10001D2A8();
  sub_1000053F8(v21, v23, v25);

  *v4 = sub_10001D118();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v27 = sub_100001CFC(&qword_100028D00, &qword_10001E360);
  sub_100002A0C(a1, &v4[*(v27 + 44)]);
  sub_100001CFC(&qword_100028AE0, &qword_10001E160);
  sub_100002490();
  sub_100005818(&qword_100028AD8, &qword_100028AE0, &qword_10001E160, &protocol conformance descriptor for TupleView<A>);
  sub_100005818(&qword_100028AE8, &qword_100028AF0, qword_10001E168, &protocol conformance descriptor for VStack<A>);
  v28 = v40;
  sub_10001D3A8();
  LOBYTE(v21) = sub_10001D1D8();
  sub_10001CF18();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  v38 = v28 + *(result + 36);
  *v38 = v21;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

unint64_t sub_1000022C4()
{
  result = qword_100028AA8;
  if (!qword_100028AA8)
  {
    sub_100002350(&qword_100028AA0, &qword_10001E148);
    sub_100002398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA8);
  }

  return result;
}

uint64_t sub_100002350(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002398()
{
  result = qword_100028AB0;
  if (!qword_100028AB0)
  {
    sub_100002350(&qword_100028AB8, &qword_10001E150);
    sub_100002490();
    sub_100005818(&qword_100028AD8, &qword_100028AE0, &qword_10001E160, &protocol conformance descriptor for TupleView<A>);
    sub_100005818(&qword_100028AE8, &qword_100028AF0, qword_10001E168, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AB0);
  }

  return result;
}

unint64_t sub_100002490()
{
  result = qword_100028AC0;
  if (!qword_100028AC0)
  {
    sub_100002350(&qword_100028AC8, &qword_10001E158);
    sub_100005918(&qword_100028AD0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AC0);
  }

  return result;
}

uint64_t sub_10000254C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v4 = __chkstk_darwin(v3 - 8);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v47 = type metadata accessor for DownloadRow(0);
  v8 = __chkstk_darwin(v47);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v41 = &v39 - v11;
  v12 = __chkstk_darwin(v10);
  v39 = &v39 - v13;
  v14 = __chkstk_darwin(v12);
  v40 = &v39 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v48 = &v39 - v19;
  v20 = *a1;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v50 = v20;
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v45 = v21;
  sub_10001CE28();

  v22 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  sub_100005D74(v20 + v22, v7, &qword_100028D48, &qword_10001E3D0);
  v23 = sub_10001CE08();
  v24 = *(v23 - 8);
  v44 = *(v24 + 48);
  result = v44(v7, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = *(v24 + 32);
    v26(v18, v7, v23);
    type metadata accessor for LanguageSupportRemoteModel(0);
    v27 = v20;
    sub_10001D3C8();
    sub_100005BD0(v18, v48, type metadata accessor for DownloadRow);
    swift_getKeyPath();
    v49 = v27;
    sub_10001CE28();

    v28 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v46;
    sub_100005D74(v29, v46, &qword_100028D48, &qword_10001E3D0);
    result = v44(v30, 1, v23);
    if (result != 1)
    {
      v31 = v39;
      v26(v39, v30, v23);
      sub_10001D3C8();
      v32 = v31;
      v33 = v40;
      sub_100005BD0(v32, v40, type metadata accessor for DownloadRow);
      v34 = v48;
      v35 = v41;
      sub_100005A4C(v48, v41, type metadata accessor for DownloadRow);
      v36 = v42;
      sub_100005A4C(v33, v42, type metadata accessor for DownloadRow);
      v37 = v43;
      sub_100005A4C(v35, v43, type metadata accessor for DownloadRow);
      v38 = sub_100001CFC(&qword_100028D50, &qword_10001E428);
      sub_100005A4C(v36, v37 + *(v38 + 48), type metadata accessor for DownloadRow);
      sub_100005DE4(v33);
      sub_100005DE4(v34);
      sub_100005DE4(v36);
      return sub_100005DE4(v35);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100002A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LanguageDownloadView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100001CFC(&qword_100028D08, &qword_10001E368);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &KeyPath - v12;
  __chkstk_darwin(v11);
  v15 = &KeyPath - v14;
  v16 = sub_100002DA4();
  if (v19)
  {
    v20 = v19;
    v38 = v16;
    v39 = v18;
    v37 = v17;
    KeyPath = swift_getKeyPath();
    sub_100005A4C(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguageDownloadView);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    sub_100005BD0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for LanguageDownloadView);
    v23 = sub_100001CFC(&qword_100028D10, &qword_10001E370);
    v24 = &v13[*(v23 + 36)];
    sub_100001CFC(&qword_100028D20, &unk_10001E3B0);
    sub_10001CF68();
    *v24 = KeyPath;
    v25 = v37;
    *v13 = v38;
    *(v13 + 1) = v25;
    v13[16] = v39 & 1;
    *(v13 + 3) = v20;
    (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  }

  else
  {
    v26 = sub_100001CFC(&qword_100028D10, &qword_10001E370);
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  }

  sub_1000059DC(v13, v15);
  v27 = sub_1000036CC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100005D74(v15, v10, &qword_100028D08, &qword_10001E368);
  sub_100005D74(v10, a2, &qword_100028D08, &qword_10001E368);
  v34 = a2 + *(sub_100001CFC(&qword_100028D18, &qword_10001E378) + 48);
  *v34 = v27;
  *(v34 + 8) = v29;
  v31 &= 1u;
  *(v34 + 16) = v31;
  *(v34 + 24) = v33;
  sub_1000053A4(v27, v29, v31);

  sub_100005D0C(v15, &qword_100028D08, &qword_10001E368);
  sub_1000053F8(v27, v29, v31);

  return sub_100005D0C(v10, &qword_100028D08, &qword_10001E368);
}

uint64_t sub_100002DA4()
{
  v0 = sub_10001CCF8();
  v48 = *(v0 - 8);
  v49 = v0;
  __chkstk_darwin(v0);
  v47 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10001CD08();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001CD28();
  __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001CFC(&qword_100028D28, &unk_10001ED10);
  __chkstk_darwin(v5 - 8);
  v41 = &v38 - v6;
  v7 = sub_100001CFC(&qword_100028D30, &qword_10001E3C0);
  __chkstk_darwin(v7 - 8);
  v40 = &v38 - v8;
  v46 = sub_10001CD48();
  v9 = *(v46 - 8);
  v10 = __chkstk_darwin(v46);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v38 - v12;
  v13 = sub_10001CD88();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001CE08();
  __chkstk_darwin(v17 - 8);
  v18 = sub_10001D468();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v38 - v23;
  sub_10001D458();
  (*(v19 + 16))(v22, v24, v18);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v25 = qword_100029CB0;
  sub_10001CDF8();
  sub_10001D488();
  (*(v19 + 8))(v24, v18);
  sub_100001CFC(&qword_100028D38, &qword_10001E3C8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10001E100;
  sub_10001CD68();
  v27 = sub_10001CD78();
  v29 = v28;
  v30 = (*(v14 + 8))(v16, v13);
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100005CB8(v30, v31, v32);
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  sub_10001D478();

  (*(v14 + 56))(v41, 1, 1, v13);
  (*(v43 + 104))(v44, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v45);
  (*(v48 + 104))(v47, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v49);
  sub_10001CD18();
  v33 = v40;
  sub_10001CD38();
  v34 = v46;
  (*(v9 + 56))(v33, 0, 1, v46);
  v35 = v39;
  (*(v9 + 32))(v39, v33, v34);
  (*(v9 + 16))(v38, v35, v34);
  v36 = sub_10001D228();
  (*(v9 + 8))(v35, v34);
  return v36;
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_10001CF78();
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_1000035E4(uint64_t a1)
{
  v1 = sub_10001CF78();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A58(v4);
  sub_10001CF48();
  (*(v2 + 8))(v4, v1);
  return sub_10001CF58();
}

uint64_t sub_1000036CC()
{
  v0 = sub_10001CE08();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10001D468();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  sub_10001D458();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100029CB0;
  sub_10001CDF8();
  v9 = sub_10001D488();
  v11 = v10;
  v12 = (*(v2 + 8))(v7, v1);
  v16[1] = v9;
  v16[2] = v11;
  sub_100005408(v12, v13, v14);
  return sub_10001D238();
}

uint64_t sub_1000038C8()
{
  sub_100001CFC(&qword_100028AA0, &qword_10001E148);
  sub_1000022C4();
  return sub_10001D1E8();
}

uint64_t sub_100003938(uint64_t a1)
{
  v2 = type metadata accessor for DownloadRow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100005A4C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DownloadRow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100005BD0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for DownloadRow);
  v9 = a1;
  sub_100001CFC(&qword_100028C88, &qword_10001E2A8);
  sub_1000055E8();
  return sub_10001D368();
}

void sub_100003AA4()
{
  type metadata accessor for DownloadRow(0);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  swift_getKeyPath();
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v0 = v3[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

  if (v0 == 1)
  {
    sub_10001D3B8();
    v1 = v3;
    LanguageSupportRemoteModel.cancel()();
  }

  else
  {
    sub_10001D3B8();
    swift_getKeyPath();
    sub_10001CE28();

    v2 = v3[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

    if (v2)
    {
      return;
    }

    sub_10001D3B8();
    v1 = v3;
    sub_10000D54C();
  }
}

uint64_t sub_100003C34@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = sub_100001CFC(&qword_100028CB8, &qword_10001E2B8);
  __chkstk_darwin(v38);
  v33 = &v33 - v3;
  v40 = sub_100001CFC(&qword_100028CE0, &qword_10001E2D0);
  __chkstk_darwin(v40);
  v5 = (&v33 - v4);
  v35 = sub_100001CFC(&qword_100028CE8, &qword_10001E2D8);
  __chkstk_darwin(v35);
  v36 = &v33 - v6;
  v41 = sub_100001CFC(&qword_100028CA0, &qword_10001E2B0);
  __chkstk_darwin(v41);
  v39 = &v33 - v7;
  v37 = sub_10001CEB8();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadRow(0);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  v10 = v43;
  swift_getKeyPath();
  v43 = v10;
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v11 = v10[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

  if (v11 == 1)
  {
    sub_10001D3B8();
    v12 = v43;
    swift_getKeyPath();
    v43 = v12;
    sub_10001CE28();

    v13 = *&v12[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus];
    if (v13 && (v14 = [v13 cachedStatus]) != 0 && (v15 = v14, sub_100005968(), v16 = sub_10001D4F8(), v15, __chkstk_darwin(v17), *(&v33 - 2) = a1, v18 = sub_10000B738(sub_1000059B4, (&v33 - 4), v16), , v18))
    {
      [v18 progress];
    }

    else
    {
    }

    sub_10001CEA8();
    v25 = v34;
    v26 = v37;
    (*(v34 + 16))(v36, v9, v37);
    swift_storeEnumTagMultiPayload();
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView, &protocol conformance descriptor for DownloadProgressView);
    sub_100005730();
    v27 = v39;
    sub_10001D148();
    sub_100005D74(v27, v5, &qword_100028CA0, &qword_10001E2B0);
    swift_storeEnumTagMultiPayload();
    sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
    sub_100005674();
    sub_100005860();
    sub_10001D148();
    sub_100005D0C(v27, &qword_100028CA0, &qword_10001E2B0);
    return (*(v25 + 8))(v9, v26);
  }

  else
  {
    sub_10001D3B8();
    v19 = v43;
    swift_getKeyPath();
    v43 = v19;
    sub_10001CE28();

    v20 = v19[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState];

    if (v20)
    {
      v21 = sub_10001D308();
      v22 = sub_10001D2F8();
      KeyPath = swift_getKeyPath();
      *v5 = v21;
      v5[1] = KeyPath;
      v5[2] = v22;
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
      sub_100005674();
      sub_100005860();
      return sub_10001D148();
    }

    else
    {
      v28 = v33;
      sub_10001CEA8();
      v29 = sub_10001D2D8();
      v30 = swift_getKeyPath();
      v31 = (v28 + *(v38 + 36));
      *v31 = v30;
      v31[1] = v29;
      sub_100005D74(v28, v36, &qword_100028CB8, &qword_10001E2B8);
      swift_storeEnumTagMultiPayload();
      sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView, &protocol conformance descriptor for DownloadProgressView);
      sub_100005730();
      v32 = v39;
      sub_10001D148();
      sub_100005D74(v32, v5, &qword_100028CA0, &qword_10001E2B0);
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_100028CD8, &qword_10001E2C8);
      sub_100005674();
      sub_100005860();
      sub_10001D148();
      sub_100005D0C(v32, &qword_100028CA0, &qword_10001E2B0);
      return sub_100005D0C(v28, &qword_100028CB8, &qword_10001E2B8);
    }
  }
}

uint64_t sub_1000043A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v8 = sub_10001CDC8();
  v10 = v9;
  v11 = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v45 = v8;
    v46 = v10;
    sub_100005408(v11, v12, v13);

    v14 = sub_10001D238();
    v16 = v15;
    v18 = v17;
    sub_10001D2E8();
    v19 = sub_10001D1F8();
    v43 = v20;
    v44 = v19;
    v22 = v21;
    v24 = v23;

    sub_1000053F8(v14, v16, v18 & 1);

    v25 = v22 & 1;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v25 = 0;
    v24 = 0;
  }

  type metadata accessor for DownloadRow(0);
  sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  sub_10001D3B8();
  v26 = v45;
  v27 = LanguageSupportRemoteModel.debugStatusString(for:)(a1);
  v29 = v28;

  if (v29)
  {
    v45 = v27;
    v46 = v29;
    sub_100005408(v30, v31, v32);
    v33 = sub_10001D238();
    v29 = v34;
    v36 = v35;
    v38 = v37 & 1;
    sub_1000053A4(v33, v34, v37 & 1);
  }

  else
  {
    v33 = 0;
    v38 = 0;
    v36 = 0;
  }

  v40 = v43;
  v39 = v44;
  sub_100005360(v44, v43, v25, v24);
  sub_100005360(v33, v29, v38, v36);
  sub_1000053B4(v33, v29, v38, v36);
  *a2 = v39;
  a2[1] = v40;
  a2[2] = v25;
  a2[3] = v24;
  a2[4] = v33;
  a2[5] = v29;
  a2[6] = v38;
  a2[7] = v36;
  sub_1000053B4(v33, v29, v38, v36);
  return sub_1000053B4(v39, v40, v25, v24);
}

uint64_t sub_100004670()
{
  sub_100001CFC(&qword_100028C60, &qword_10001E298);
  sub_100001CFC(&qword_100028C68, &qword_10001E2A0);
  sub_100005818(&qword_100028C70, &qword_100028C60, &qword_10001E298, &protocol conformance descriptor for TupleView<A>);
  sub_100005818(&qword_100028C78, &qword_100028C68, &qword_10001E2A0, &protocol conformance descriptor for Button<A>);
  return sub_10001CF98();
}

id variable initialization expression of ExtensionScene.model()
{
  v0 = objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel(0));

  return [v0 init];
}

uint64_t sub_1000047FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100005918(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *a2 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState);
  return result;
}

uint64_t sub_1000048F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001CE08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100004964(uint64_t *a1)
{
  if (sub_10001C800(2, 26, 0, 0))
  {
    sub_10001D1A8();

    return sub_10001CFA8();
  }

  else
  {
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    sub_10001D648();
    swift_getWitnessTable();
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    return sub_10001CFA8();
  }
}

uint64_t sub_100004AC8(uint64_t *a1)
{
  if (sub_10001C800(2, 26, 0, 0))
  {
    sub_10001D1A8();
    sub_10001CFA8();
  }

  else
  {
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    sub_10001D648();
    swift_getWitnessTable();
    sub_10001CFE8();
    swift_getWitnessTable();
    sub_10001D188();
    sub_10001CFA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100004CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D018();
  *a1 = result;
  return result;
}

uint64_t sub_100004D50(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001CFC(&qword_100028B10, &qword_10001E1E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100004E20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001CFC(&qword_100028B10, &qword_10001E1E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100004F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001CE08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100005080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001CE08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000051A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v10 <= 0x3F)
  {
    sub_1000052D0(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000052D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005360(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000053A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000053A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000053B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000053F8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000053F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100005408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

uint64_t sub_10000545C()
{
  v1 = (type metadata accessor for DownloadRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001CE08();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_100001CFC(&qword_100028BC0, &qword_10001E230);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100005580()
{
  type metadata accessor for DownloadRow(0);

  sub_100003AA4();
}

unint64_t sub_1000055E8()
{
  result = qword_100028C90;
  if (!qword_100028C90)
  {
    sub_100002350(&qword_100028C88, &qword_10001E2A8);
    sub_100005674();
    sub_100005860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C90);
  }

  return result;
}

unint64_t sub_100005674()
{
  result = qword_100028C98;
  if (!qword_100028C98)
  {
    sub_100002350(&qword_100028CA0, &qword_10001E2B0);
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView, &protocol conformance descriptor for DownloadProgressView);
    sub_100005730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C98);
  }

  return result;
}

unint64_t sub_100005730()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    sub_100002350(&qword_100028CB8, &qword_10001E2B8);
    sub_100005918(&qword_100028CA8, &type metadata accessor for DownloadProgressView, &protocol conformance descriptor for DownloadProgressView);
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB0);
  }

  return result;
}

uint64_t sub_100005818(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002350(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005860()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    sub_100002350(&qword_100028CD8, &qword_10001E2C8);
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

uint64_t sub_100005918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005968()
{
  result = qword_100028CF8;
  if (!qword_100028CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028CF8);
  }

  return result;
}

uint64_t sub_1000059DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D08, &qword_10001E368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005AB4()
{
  v1 = (type metadata accessor for LanguageDownloadView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100001CFC(&qword_100028A98, &qword_10001E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10001CF78();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100005BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005C38(uint64_t a1)
{
  type metadata accessor for LanguageDownloadView(0);

  return sub_1000035E4(a1);
}

unint64_t sub_100005CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100028D40;
  if (!qword_100028D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D40);
  }

  return result;
}

uint64_t sub_100005D0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005DE4(uint64_t a1)
{
  v2 = type metadata accessor for DownloadRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _LTPreflightConfigurationStep()
{
  if (!qword_100028D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100028D58);
    }
  }
}

unint64_t sub_100005E94()
{
  result = qword_100028D60;
  if (!qword_100028D60)
  {
    sub_100002350(&qword_100028D68, &unk_10001E460);
    sub_100005818(&qword_100028C70, &qword_100028C60, &qword_10001E298, &protocol conformance descriptor for TupleView<A>);
    sub_100005818(&qword_100028C78, &qword_100028C68, &qword_10001E2A0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D60);
  }

  return result;
}

uint64_t LanguageSupportExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = *(v6 + 16);
  v8(&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17[3] = a1;
  v17[4] = a2;
  v11 = sub_100006234(v17);
  v8(v11, v3, a1);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100006298(AssociatedConformanceWitness, v13, v14);
  return sub_10001CE88();
}

uint64_t sub_10000614C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t *sub_100006234(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100006298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100028D70;
  if (!qword_100028D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D70);
  }

  return result;
}

id ExtensionScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel(0)) init];
  *a3 = 0xD00000000000001ALL;
  a3[1] = 0x8000000100020340;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = result;
  return result;
}

uint64_t ExtensionScene.body.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[4];
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  v9 = *(v1 + 1);
  *(v6 + 32) = *v1;
  *(v6 + 48) = v9;
  *(v6 + 64) = v1[4];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = *(v1 + 1);
  *(v10 + 32) = *v1;
  *(v10 + 48) = v11;
  *(v10 + 64) = v1[4];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v12 = v5;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v4, v3, sub_1000065BC, v6, sub_10000670C, v10, v7, v8);
}

uint64_t sub_100006474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v9 + 16))(*(v9 + 32));
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

id sub_1000065C8(uint64_t a1, uint64_t a2)
{
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CF08();
  sub_100006A24(v4, qword_100029CD0);
  v5 = sub_10001CEE8();
  v6 = sub_10001D5B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "entering onConnection(connection:)", v7, 2u);
  }

  return [*(a2 + 32) shouldAcceptWithConnection:a1];
}

uint64_t sub_1000066C4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100006724()
{
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CF08();
  sub_100006A24(v0, qword_100029CD0);
  v1 = sub_10001CEE8();
  v2 = sub_10001D5B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "entering accept(conection:)", v3, 2u);
  }

  return 1;
}

uint64_t sub_100006800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000068BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000068D0(uint64_t a1, int a2)
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

uint64_t sub_100006918(uint64_t result, int a2, int a3)
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

uint64_t sub_100006978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000069C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100006A24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int LanguageSupportRemoteModel.Step.hashValue.getter(unsigned __int8 a1)
{
  sub_10001D768();
  sub_10001D778(a1);
  return sub_10001D788();
}

Swift::Int sub_100006B28()
{
  v1 = *v0;
  sub_10001D768();
  sub_10001D778(v1);
  return sub_10001D788();
}

Swift::Int sub_100006BA0(uint64_t a1)
{
  v2 = *v1;
  sub_10001D768();
  sub_10001D778(v2);
  return sub_10001D788();
}

void (*sub_100006BE4(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100001CFC(&qword_100028D48, &qword_10001E3D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_100005D74(v1 + v8, v7, &qword_100028D48, &qword_10001E3D0);
  return sub_100006D14;
}

uint64_t type metadata accessor for LanguageSupportRemoteModel(uint64_t a1)
{
  result = qword_100028F38;
  if (!qword_100028F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*LanguageSupportRemoteModel.sourceLocale.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100006BE4(v4);
  return sub_100006F68;
}

void sub_100006F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22 = a3;
  v23 = a1;
  v4 = v3;
  v5 = sub_10001CE08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v21 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100001CFC(&qword_100028FD8, &qword_10001EA80);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  swift_getKeyPath();
  v24 = v3;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v15 = *v22;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_100005D74(v4 + v15, v14, &qword_100028D48, &qword_10001E3D0);
  sub_100005D74(v23, &v14[v16], &qword_100028D48, &qword_10001E3D0);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
      return;
    }

    goto LABEL_6;
  }

  sub_100005D74(v14, v10, &qword_100028D48, &qword_10001E3D0);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    (*(v6 + 8))(v10, v5);
LABEL_6:
    sub_100005D0C(v14, &qword_100028FD8, &qword_10001EA80);
LABEL_7:
    sub_10000AAD8();
    return;
  }

  v18 = v21;
  (*(v6 + 32))(v21, &v14[v16], v5);
  sub_100015E28(&qword_100028F58, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v19 = sub_10001D448();
  v20 = *(v6 + 8);
  v20(v18, v5);
  v20(v10, v5);
  sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void (*sub_10000732C(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100001CFC(&qword_100028D48, &qword_10001E3D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_100005D74(v1 + v8, v7, &qword_100028D48, &qword_10001E3D0);
  return sub_10000745C;
}

void sub_100007470(char **a1, char a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = *(*a1 + 13);
  v9 = *(*a1 + 10);
  v10 = *(*a1 + 11);
  v11 = *(*a1 + 9);
  if (a2)
  {
    sub_100005D74(*(*a1 + 12), v10, &qword_100028D48, &qword_10001E3D0);
    sub_100005D74(v11 + v8, v9, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v10, v11 + v8);
    swift_endAccess();
    sub_100006F74(v9, a3, a4);
    sub_100005D0C(v9, &qword_100028D48, &qword_10001E3D0);
  }

  else
  {
    sub_100005D74(v11 + v8, v10, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v7, v11 + v8);
    swift_endAccess();
    sub_100006F74(v10, a3, a4);
  }

  sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
  sub_100005D0C(v7, &qword_100028D48, &qword_10001E3D0);
  free(v7);
  free(v10);
  free(v9);

  free(v6);
}

uint64_t sub_100007610@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v6 = *a2;
  swift_beginAccess();
  return sub_100005D74(v3 + v6, a3, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000076FC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v7 = *a3;
  swift_beginAccess();
  return sub_100005D74(v6 + v7, a4, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000077F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100005D74(a1, &v11 - v8, &qword_100028D48, &qword_10001E3D0);
  return a5(v9);
}

uint64_t sub_1000078CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a3;
  v7 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = *a2;
  swift_beginAccess();
  sub_100005D74(v4 + v13, v12, &qword_100028D48, &qword_10001E3D0);
  v14 = sub_100014514(v12, a1);
  sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  if (v14)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17[-2] = v4;
    v17[-1] = a1;
    v17[2] = v4;
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  else
  {
    sub_100005D74(a1, v12, &qword_100028D48, &qword_10001E3D0);
    sub_100005D74(v4 + v13, v10, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_100014834(v12, v4 + v13);
    swift_endAccess();
    sub_100006F74(v10, v17[0], a2);
    sub_100005D0C(v10, &qword_100028D48, &qword_10001E3D0);
    sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  }

  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_100007B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v16[-v12];
  sub_100005D74(a2, &v16[-v12], &qword_100028D48, &qword_10001E3D0);
  v14 = *a3;
  swift_beginAccess();
  sub_100005D74(a1 + v14, v11, &qword_100028D48, &qword_10001E3D0);
  swift_beginAccess();
  sub_100014834(v13, a1 + v14);
  swift_endAccess();
  sub_100006F74(v11, a4, a3);
  sub_100005D0C(v11, &qword_100028D48, &qword_10001E3D0);
  return sub_100005D0C(v13, &qword_100028D48, &qword_10001E3D0);
}

uint64_t (*LanguageSupportRemoteModel.targetLocale.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_10000732C(v4);
  return sub_100007DE4;
}

uint64_t LanguageSupportRemoteModel.lowConfidenceLocales.getter()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  swift_beginAccess();
}

uint64_t sub_100007F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t LanguageSupportRemoteModel.lowConfidenceLocales.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();

  v5 = sub_100014254(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

uint64_t sub_100008154(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*LanguageSupportRemoteModel.lowConfidenceLocales.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100007DF0(v4);
  return sub_1000082FC;
}

uint64_t LanguageSupportRemoteModel.unsupportedLocale.setter(uint64_t a1)
{
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  swift_beginAccess();
  sub_100005D74(v1 + v6, v5, &qword_100028D48, &qword_10001E3D0);
  v7 = sub_100014514(v5, a1);
  sub_100005D0C(v5, &qword_100028D48, &qword_10001E3D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  else
  {
    sub_100005D74(a1, v5, &qword_100028D48, &qword_10001E3D0);
    swift_beginAccess();
    sub_1000149DC(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_1000085B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100005D74(a2, &v9 - v5, &qword_100028D48, &qword_10001E3D0);
  v7 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  swift_beginAccess();
  sub_1000149DC(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*LanguageSupportRemoteModel.unsupportedLocale.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100008308(v4);
  return sub_1000087C4;
}

uint64_t sub_1000087D0()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  return *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState);
}

uint64_t sub_100008878(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  return result;
}

uint64_t LanguageSupportRemoteModel.currentStep.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100008AA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LanguageSupportRemoteModel.currentStep.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 == 3)
  {
    if (v2 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
      sub_10001CE18();
    }
  }

  else if (v5 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + v3) = v2;
  return result;
}

uint64_t (*LanguageSupportRemoteModel.currentStep.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *v4 = v1;
  swift_getKeyPath();
  sub_10001CE48();

  v4[7] = sub_100008988(v4);
  return sub_100008E08;
}

void sub_100008E14(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_10001CE38();

  free(v3);
}

void sub_100008EBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F90, NSXPCConnection_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *sub_100009068(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100009124@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1000091E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100009218(v1);
}

void sub_100009218(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F88, _LTLanguageStatus_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000093B0()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();
}

uint64_t sub_10000945C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  *a2 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers);
}

uint64_t sub_100009510(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers;

  v5 = sub_10001409C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

id sub_10000966C()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);

  return v1;
}

id sub_100009724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  *a2 = v4;

  return v4;
}

void sub_1000097E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  sub_100015D94(0, &qword_100028F80, _LTPreflightChecker_ptr);
  v6 = v5;
  v7 = sub_10001D638();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }
}

void sub_10000996C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100015D94(0, &qword_100028F78, _LTPreflightConfiguration_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_10001D638();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100009B04()
{
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v1 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  sub_100014B0C(v1, *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8));
  return v1;
}

uint64_t sub_100009BC4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v5 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000161B8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100014B0C(v4, v5);
}

uint64_t sub_100009CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_10001617C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100014B0C(v2, v3);
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE18();
  sub_100014B1C(v5, v4);
}

uint64_t sub_100009E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v4 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v5 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_100014B0C(a2, a3);
  return sub_100014B1C(v4, v5);
}

char *sub_100009E70()
{
  v1 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  v5 = sub_10001CE08();
  v6 = *(*(v5 - 8) + 56);
  v6(&v0[v4], 1, 1, v5);
  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  v6(&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale], 1, 1, v5);
  v22 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales] = &_swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
  v6(&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale], 1, 1, v5);
  v6(&v0[v7], 1, 1, v5);
  v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState] = 0;
  v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep] = 3;
  v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection] = 0;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus] = 0;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration] = 0;
  v9 = &v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion];
  *v9 = 0;
  v9[1] = 0;
  _s30TranslationAPISupportExtension26LanguageSupportRemoteModelC22__observationRegistrar33_3FCA5AFE04A8478E67D6CE01CB995DEALL11Observation0rI0Vvpfi_0();
  v6(v3, 1, 1, v5);
  sub_100005D0C(&v0[v4], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v3, &v0[v4]);
  v6(v3, 1, 1, v5);
  v10 = v21;
  sub_100005D0C(&v0[v21], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v3, &v0[v10]);
  v11 = v22;

  *&v0[v11] = &_swiftEmptyArrayStorage;
  v6(v3, 1, 1, v5);
  sub_100005D0C(&v0[v7], &qword_100028D48, &qword_10001E3D0);
  sub_1000159DC(v3, &v0[v7]);

  *&v0[v8] = 0;
  v12 = [objc_allocWithZone(_LTPreflightChecker) init];
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker] = v12;
  *&v0[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers] = &_swiftEmptySetSingleton;
  v13 = type metadata accessor for LanguageSupportRemoteModel(0);
  v24.receiver = v0;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, "init");
  swift_getKeyPath();
  aBlock[0] = v14;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v15 = v14;
  sub_10001CE28();

  [*&v15[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker] setDelegate:v15];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = objc_allocWithZone(_LTLanguageStatus);
  aBlock[4] = sub_100015A84;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010908;
  aBlock[3] = &unk_100025488;
  v18 = _Block_copy(aBlock);

  v19 = [v17 initWithObservationType:1 useDedicatedMachPort:0 observations:v18];
  _Block_release(v18);

  sub_100009218(v19);

  return v15;
}

void sub_10000A2E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_10001D568();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001D548();

    v10 = sub_10001D538();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    v11[5] = a1;

    sub_10000A7B4(0, 0, v5, &unk_10001EA20, v11);
  }
}

uint64_t sub_10000A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10001D548();
  v5[7] = sub_10001D538();
  v7 = sub_10001D528();

  return _swift_task_switch(sub_10000A510, v7, v6);
}

uint64_t sub_10000A510()
{
  v18 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 48))
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v3 = sub_10001CF08();
      sub_100006A24(v3, qword_100029CB8);

      v4 = sub_10001CEE8();
      v5 = sub_10001D5A8();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v17 = v7;
        *v6 = 136446210;
        sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
        v8 = sub_10001D508();
        v10 = sub_100010D90(v8, v9, &v17);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v4, v5, "Language status was updated: %{public}s", v6, 0xCu);
        sub_100014B94(v7);
      }

      sub_10000AAD8();
    }

    else
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v11 = sub_10001CF08();
      sub_100006A24(v11, qword_100029CB8);
      v12 = sub_10001CEE8();
      v13 = sub_10001D5C8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Not updating cached language status since latest update had nil observations", v14, 2u);
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005D74(a3, v25 - v10, &qword_100028E78, &qword_10001E788);
  v12 = sub_10001D568();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005D0C(v11, &qword_100028E78, &qword_10001E788);
  }

  else
  {
    sub_10001D558();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10001D528();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001D4A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005D0C(a3, &qword_100028E78, &qword_10001E788);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005D0C(a3, &qword_100028E78, &qword_10001E788);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10000AAD8()
{
  v1 = v0;
  v2 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  __chkstk_darwin(v2 - 8);
  v49 = v44 - v3;
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v5 = __chkstk_darwin(v4 - 8);
  v47 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v44 - v7;
  v9 = sub_10001CE08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v45 = v44 - v14;
  v15 = __chkstk_darwin(v13);
  v48 = v44 - v16;
  __chkstk_darwin(v15);
  v53 = v44 - v17;
  swift_getKeyPath();
  v56 = v0;
  v18 = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v19 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  sub_100005D74(v1 + v19, v8, &qword_100028D48, &qword_10001E3D0);
  v51 = v9;
  v52 = v10;
  v20 = *(v10 + 48);
  v21 = v20(v8, 1, v9);
  v50 = v18;
  if (v21 != 1)
  {
    v22 = v51;
    v44[0] = *(v52 + 32);
    v44[1] = v52 + 32;
    (v44[0])(v53, v8, v51);
    swift_getKeyPath();
    v54 = v1;
    sub_10001CE28();

    v23 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v8 = v47;
    sub_100005D74(v1 + v23, v47, &qword_100028D48, &qword_10001E3D0);
    if (v20(v8, 1, v22) != 1)
    {
      v29 = v48;
      v30 = v51;
      (v44[0])(v48, v8, v51);
      v31 = sub_10001D568();
      (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
      v32 = v52;
      v33 = *(v52 + 16);
      v34 = v45;
      v33(v45, v53, v30);
      v35 = v46;
      v33(v46, v29, v30);
      sub_10001D548();
      v36 = v1;
      v37 = sub_10001D538();
      v38 = *(v32 + 80);
      v39 = (v38 + 40) & ~v38;
      v40 = (v11 + v38 + v39) & ~v38;
      v41 = swift_allocObject();
      *(v41 + 2) = v37;
      *(v41 + 3) = &protocol witness table for MainActor;
      *(v41 + 4) = v36;
      v42 = v44[0];
      (v44[0])(&v41[v39], v34, v30);
      v42(&v41[v40], v35, v30);
      sub_10000A7B4(0, 0, v49, &unk_10001EA68, v41);

      v43 = *(v32 + 8);
      v43(v48, v30);
      v43(v53, v30);
      return;
    }

    (*(v52 + 8))(v53, v51);
  }

  sub_100005D0C(v8, &qword_100028D48, &qword_10001E3D0);
  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v24 = sub_10001CF08();
  sub_100006A24(v24, qword_100029CB8);
  v25 = sub_10001CEE8();
  v26 = sub_10001D5A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Download state determination requires that both source and target be non-nil", v27, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v44[-2] = v1;
    LOBYTE(v44[-1]) = 0;
    v55 = v1;
    sub_10001CE18();
  }
}

uint64_t sub_10000B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_10001D548();
  v6[6] = sub_10001D538();
  v8 = sub_10001D528();

  return _swift_task_switch(sub_10000B208, v8, v7);
}

uint64_t sub_10000B208()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  v2 = v0 + 2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus;
  v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (v4 && (v5 = [v4 cachedStatus]) != 0 && (v6 = v5, v7 = v0[4], sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr), v8 = sub_10001D4F8(), v6, v9 = swift_task_alloc(), *(v9 + 16) = v7, v10 = sub_10000B738(sub_100016280, v9, v8), , , v10))
  {
    v11 = sub_100014BE0([v10 status]);
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[3];
  swift_getKeyPath();
  v0[2] = v12;
  sub_10001CE28();

  v13 = *(v1 + v3);
  if (v13 && (v14 = [v13 cachedStatus]) != 0 && (v15 = v14, v16 = v0[5], sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr), v17 = sub_10001D4F8(), v15, v18 = swift_task_alloc(), *(v18 + 16) = v16, v19 = sub_10000B738(sub_100016150, v18, v17), , , v19))
  {
    v20 = sub_100014BE0([v19 status]);

    v21 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
    v21 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v21 != 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v22 = v0[3];
        if (*(v22 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) == 1)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      v28 = v0[3];
      if (*(v28 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 2)
      {
        swift_getKeyPath();
        v29 = swift_task_alloc();
        *(v29 + 16) = v28;
        *(v29 + 24) = 2;
        v0[2] = v28;
        sub_10001CE18();
      }

      sub_10000BE0C(0);
      goto LABEL_24;
    }

LABEL_21:
    v23 = v0[3];
    if (!*(v23 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState))
    {
      goto LABEL_24;
    }

    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *v2 = v23;
    goto LABEL_23;
  }

  if (!v20)
  {
    goto LABEL_21;
  }

  if (v20 == 1)
  {
    v22 = v0[3];
    if (*(v22 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v22 = v0[3];
  if (*(v22 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 1)
  {
LABEL_28:
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v22;
    *(v27 + 24) = 1;
    *v2 = v22;
LABEL_23:
    sub_10001CE18();
  }

LABEL_24:
  v25 = v0[1];

  return v25();
}

void *sub_10000B738(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001D708())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001D6D8();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

double LanguageSupportRemoteModel.downloadPercentage(for:)(uint64_t a1)
{
  swift_getKeyPath();
  v13 = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 cachedStatus];
    if (v5)
    {
      v6 = v5;
      sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
      v7 = sub_10001D4F8();

      __chkstk_darwin(v8);
      v12[2] = a1;
      v9 = sub_10000B738(sub_100016280, v12, v7);

      if (v9)
      {
        [v9 progress];
        v4 = v10;
      }
    }
  }

  return v4;
}

uint64_t LanguageSupportRemoteModel.debugStatusString(for:)(uint64_t a1)
{
  v2 = v1;
  sub_100015D94(0, &qword_100028E50, NSUserDefaults_ptr);
  v4 = sub_10001D5F8();
  v5 = sub_10001D608();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v13 = v2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  result = *(v2 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  if (!result)
  {
    return result;
  }

  result = [result cachedStatus];
  if (!result)
  {
    return result;
  }

  v7 = result;
  sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
  v8 = sub_10001D4F8();

  __chkstk_darwin(v9);
  v12[2] = a1;
  v10 = sub_10000B738(sub_100016280, v12, v8);

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 status];
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {

        return 0x6E776F6E6B6E55;
      }

      goto LABEL_14;
    }

    return 0x656C6C6174736E49;
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        sub_10001D6C8(16);
        v15._countAndFlagsBits = 0x64616F6C6E776F44;
        v15._object = 0xED00002820676E69;
        sub_10001D4C8(v15);
        [v10 progress];
        sub_10001D578();
        v16._countAndFlagsBits = 41;
        v16._object = 0xE100000000000000;
        sub_10001D4C8(v16);

        return v13;
      }

LABEL_14:

      return 0xD000000000000010;
    }

    return 0x74736E4920746F4ELL;
  }
}

uint64_t sub_10000BCAC(id *a1)
{
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 locale];
  sub_10001CDE8();

  v7 = sub_10001CDB8();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if (v7 == sub_10001CDB8() && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_10001D738();
  }

  return v12 & 1;
}

uint64_t sub_10000BE0C(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    v3 = a1;
    sub_10001CE28();

    v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
    if (!v4)
    {
LABEL_7:

      goto LABEL_8;
    }

    v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v3 = v3;
    sub_100014B0C(v4, v5);
    v4(0, a1);

    v6 = v4;
    v7 = v5;
LABEL_6:
    sub_100014B1C(v6, v7);
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v8 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    swift_getKeyPath();

    sub_10001CE28();

    v10 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
    v3 = v10;
    v8(v10, 0);
    v6 = v8;
    v7 = v9;
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE18();
}

Swift::Void __swiftcall LanguageSupportRemoteModel.userDismissed()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:20 userInfo:0];
  swift_getKeyPath();
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v3 = v2;
  sub_10001CE28();

  v4 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v6 = v3;
    sub_100014B0C(v4, v5);
    v4(0, v3);

    sub_100014B1C(v4, v5);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001CE18();
}

void sub_10000C280(void *a1)
{
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - v7;
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = [a1 resolvedSourceLocale];
  if (v11)
  {
    v12 = v11;
    sub_10001CDE8();

    v13 = sub_10001CE08();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_10001CE08();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  LanguageSupportRemoteModel.sourceLocale.setter(v10);
  v15 = [a1 resolvedTargetLocale];
  if (v15)
  {
    v16 = v15;
    sub_10001CDE8();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_10001CE08();
  v19 = *(*(v18 - 8) + 56);
  v20 = 1;
  v19(v8, v17, 1, v18);
  LanguageSupportRemoteModel.targetLocale.setter(v8);
  v21 = [a1 lidUnsupportedLocale];
  if (v21)
  {
    v22 = v21;
    sub_10001CDE8();

    v20 = 0;
  }

  v19(v5, v20, 1, v18);
  LanguageSupportRemoteModel.unsupportedLocale.setter(v5);
  v23 = [a1 lowConfidenceLocales];
  if (v23)
  {
    v24 = v23;
    v25 = sub_10001D4F8();

    v26 = _LTRecommendedMaxLowConfidenceLocalesToSuggest();
    v30 = sub_10000C5DC(v26, v25);
    if (v29)
    {
      v33 = v29;
      v34 = v28;
      v35 = v27;
      sub_10001D748();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = &_swiftEmptyArrayStorage;
      }

      v37 = v36[2];

      if (__OFSUB__(v33 >> 1, v34))
      {
        __break(1u);
      }

      else if (v37 == (v33 >> 1) - v34)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v32)
        {
LABEL_19:
          LanguageSupportRemoteModel.lowConfidenceLocales.setter(v32);
          goto LABEL_20;
        }

        v32 = &_swiftEmptyArrayStorage;
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
      v29 = v33;
      v28 = v34;
      v27 = v35;
    }

    sub_100011338(v30, v27, v28, v29);
    v32 = v31;
    goto LABEL_18;
  }

LABEL_20:
  v38 = a1;
  sub_10000996C(a1);
}

uint64_t sub_10000C5DC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10001CE08();
    return a2;
  }

  return result;
}

void sub_10000C670(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  swift_getKeyPath();
  v21 = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v10 = *&v1[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration];
  if (v10)
  {
    v11 = sub_10001CE08();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a1, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    v13 = v10;
    LanguageSupportRemoteModel.sourceLocale.setter(v9);
    isa = sub_10001CDD8().super.isa;
    [v13 setResolvedSourceLocale:isa];

    v15 = sub_10001D568();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_10001D548();
    v16 = v13;
    v17 = v2;
    v18 = sub_10001D538();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;
    v19[5] = v16;
    sub_10000A7B4(0, 0, v6, &unk_10001E9B0, v19);
  }
}

uint64_t sub_10000C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_10001D548();
  v5[21] = sub_10001D538();
  v7 = sub_10001D528();
  v5[22] = v7;
  v5[23] = v6;

  return _swift_task_switch(sub_10000C9DC, v7, v6);
}

uint64_t sub_10000C9DC()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_getKeyPath();
  v0[24] = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v0[10] = v2;
  v0[25] = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v3 = *(v2 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CB90;
  v4 = swift_continuation_init();
  v0[17] = sub_100001CFC(&qword_100028F68, &qword_10001E9E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000D040;
  v0[13] = &unk_100025410;
  v0[14] = v4;
  [v3 resolveTargetLocaleIfNeeded:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CB90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_10000CE14;
  }

  else
  {
    v5 = sub_10000CCC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000CCC0()
{
  v1 = v0[26];
  v2 = v0[19];

  v3 = v0[18];

  sub_10000C280(v3);
  v4 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  if (*(v2 + v4) == 1)
  {
  }

  else
  {
    v5 = v0[19];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[18] = v5;
    sub_10001CE18();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000CE14()
{
  v1 = v0[26];

  swift_willThrow();

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v2 = sub_10001CF08();
  sub_100006A24(v2, qword_100029CB8);
  swift_errorRetain();
  v3 = sub_10001CEE8();
  v4 = sub_10001D5C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = sub_10001CD58();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to resolve target locale or supported pairing: %@", v5, 0xCu);
    sub_100005D0C(v6, &qword_100028E80, &qword_10001E7A0);
  }

  v8 = v0[19];

  swift_getKeyPath();
  v0[10] = v8;
  sub_10001CE28();

  v9 = *(v8 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v10 = v0[27];
  if (v9)
  {
    v11 = *(v8 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    swift_errorRetain();
    sub_100014B0C(v9, v11);
    v9(0, v10);

    sub_100014B1C(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000D040(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000157FC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001CFC(&qword_100028F70, &qword_10001E9E8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_10000D118()
{
  v1 = v0;
  v2 = sub_10001CE08();
  v34 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  swift_getKeyPath();
  v36 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v7 = *(v0 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  if (!v7)
  {
    return &_swiftEmptyArrayStorage;
  }

  v26 = v7;
  v8 = [v26 supportedLocales];
  v9 = sub_10001D4F8();

  swift_getKeyPath();
  v36 = v1;
  v10 = v9;
  sub_10001CE28();

  v11 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v9 + 16);
  v33 = v12;

  v31 = v13;
  if (v13)
  {
    v14 = 0;
    v27 = (v34 + 8);
    v28 = v34 + 16;
    v30 = (v34 + 32);
    v15 = &_swiftEmptyArrayStorage;
    v29 = v10;
    while (v14 < *(v10 + 16))
    {
      v18 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v19 = v10 + v18;
      v20 = *(v34 + 72);
      (*(v34 + 16))(v6, v19 + v20 * v14++, v2);
      v21 = v33 + v18;
      v22 = *(v33 + 16) + 1;
      while (--v22)
      {
        sub_100015E28(&qword_100028F58, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        v21 += v20;
        if (sub_10001D448())
        {
          (*v27)(v6, v2);
          goto LABEL_7;
        }
      }

      v23 = *v30;
      (*v30)(v32, v6, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000114D8(0, v15[2] + 1, 1);
        v15 = v35;
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000114D8((v16 > 1), v17 + 1, 1);
        v15 = v35;
      }

      v15[2] = v17 + 1;
      v23(v15 + v18 + v17 * v20, v32, v2);
LABEL_7:
      v10 = v29;
      if (v14 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_17:

    v35 = v15;

    sub_1000124EC(&v35);

    return v35;
  }

  return result;
}

void sub_10000D54C()
{
  v1 = v0;
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v6 = __chkstk_darwin(v5 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = (&v57 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v73 = v0;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v69 = v15;
  sub_10001CE28();

  v16 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  v65 = v16;
  sub_100005D74(v1 + v16, v14, &qword_100028D48, &qword_10001E3D0);
  v67 = v3;
  v17 = v3 + 48;
  v18 = *(v3 + 48);
  v70 = v2;
  LODWORD(v16) = v18(v14, 1, v2);
  sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
  if (v16 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_getKeyPath();
  v72[1] = v1;
  sub_10001CE28();

  v19 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
  swift_beginAccess();
  v62 = v19;
  sub_100005D74(v1 + v19, v12, &qword_100028D48, &qword_10001E3D0);
  v63 = v17;
  LODWORD(v19) = v18(v12, 1, v70);
  sub_100005D0C(v12, &qword_100028D48, &qword_10001E3D0);
  if (v19 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_getKeyPath();
  v72[0] = v1;
  sub_10001CE28();

  v20 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  v61 = v18;
  if (v20 && (v21 = [v20 cachedStatus]) != 0)
  {
    v22 = v21;
    sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
    v12 = sub_10001D4F8();
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v60 = v1;
  v1 = v12 & 0xFFFFFFFFFFFFFF8;
  if (!(v12 >> 62))
  {
    v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_30:
    v71 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_29:
  v23 = sub_10001D708();
  if (!v23)
  {
    goto LABEL_30;
  }

LABEL_9:
  v24 = 0;
  v25 = v68;
  v59 = (v67 + 8);
  v71 = &_swiftEmptyArrayStorage;
  do
  {
    v26 = v24;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v27 = sub_10001D6D8();
      }

      else
      {
        if (v26 >= *(v1 + 16))
        {
          goto LABEL_26;
        }

        v27 = *(v12 + 8 * v26 + 32);
      }

      v28 = v27;
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v27 status] == 2)
      {
        break;
      }

      ++v26;
      if (v24 == v23)
      {
        goto LABEL_31;
      }
    }

    v29 = [v28 locale];
    sub_10001CDE8();

    v58 = sub_10001CDB8();
    v57 = v30;

    (*v59)(v25, v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_100010B80(0, *(v71 + 2) + 1, 1, v71);
    }

    v32 = *(v71 + 2);
    v31 = *(v71 + 3);
    if (v32 >= v31 >> 1)
    {
      v71 = sub_100010B80((v31 > 1), v32 + 1, 1, v71);
    }

    v33 = v71;
    *(v71 + 2) = v32 + 1;
    v34 = &v33[16 * v32];
    v35 = v57;
    *(v34 + 4) = v58;
    *(v34 + 5) = v35;
  }

  while (v24 != v23);
LABEL_31:

  v37 = sub_10001447C(v36);

  v38 = v60;
  sub_100009510(v37);
  v39 = sub_10001D408();
  __chkstk_darwin(v39);
  *(&v57 - 2) = v38;
  sub_10001CF88();

  sub_100001CFC(&qword_100028E68, &qword_10001E758);
  v40 = v67;
  v41 = (v67[80] + 32) & ~v67[80];
  v59 = *(v67 + 9);
  v68 = swift_allocObject();
  *(v68 + 1) = xmmword_10001E620;
  swift_getKeyPath();
  v72[0] = v38;
  sub_10001CE28();

  v42 = v66;
  sub_100005D74(v38 + v65, v66, &qword_100028D48, &qword_10001E3D0);
  v43 = v70;
  v44 = v61;
  if (v61(v42, 1, v70) == 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v66 = *(v40 + 4);
  v67 = &v68[v41];
  v66();
  swift_getKeyPath();
  v72[0] = v38;
  sub_10001CE28();

  v45 = v64;
  sub_100005D74(v38 + v62, v64, &qword_100028D48, &qword_10001E3D0);
  if (v44(v45, 1, v43) == 1)
  {
LABEL_40:
    __break(1u);
    return;
  }

  (v66)(v59 + v67, v45, v43);
  v46 = objc_opt_self();
  isa = sub_10001D4E8().super.isa;
  [v46 addLanguages:isa useCellular:0];

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v48 = sub_10001CF08();
  sub_100006A24(v48, qword_100029CB8);

  v49 = sub_10001CEE8();
  v50 = sub_10001D5E8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v72[0] = v52;
    *v51 = 136446210;
    v53 = sub_10001D508();
    v55 = v54;

    v56 = sub_100010D90(v53, v55, v72);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "User approved downloads; requested download of: %{public}s", v51, 0xCu);
    sub_100014B94(v52);
  }

  else
  {
  }
}

uint64_t sub_10000DE80(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
    sub_10001CE18();
  }

  return result;
}

Swift::Void __swiftcall LanguageSupportRemoteModel.cancel()()
{
  v1 = v0;
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v3 = __chkstk_darwin(v2 - 8);
  v141 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v135 = &v129 - v6;
  v7 = __chkstk_darwin(v5);
  v142 = &v129 - v8;
  __chkstk_darwin(v7);
  v10 = &v129 - v9;
  v11 = sub_10001CE08();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v143 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v136 = &v129 - v16;
  __chkstk_darwin(v15);
  v18 = &v129 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel___observationRegistrar;
  v149 = v0;
  v20 = sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v21 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__sourceLocale;
  swift_beginAccess();
  v134 = v21;
  sub_100005D74(v1 + v21, v10, &qword_100028D48, &qword_10001E3D0);
  v22 = *(v12 + 48);
  v23 = v22(v10, 1, v11);
  v144 = v11;
  v139 = v19;
  v140 = v1;
  v137 = v12;
  v138 = v20;
  if (v23 != 1)
  {
    v26 = *(v12 + 32);
    v133 = v18;
    v132 = v26;
    v26(v18, v10, v11);
    swift_getKeyPath();
    v146 = v1;
    sub_10001CE28();

    v27 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v28 = v1 + v27;
    v29 = v142;
    sub_100005D74(v28, v142, &qword_100028D48, &qword_10001E3D0);
    v24 = v22;
    if (v22(v29, 1, v11) == 1)
    {
      (*(v137 + 8))(v133, v11);
      v25 = v142;
      goto LABEL_5;
    }

    v41 = v136;
    v132(v136, v142, v11);
    sub_100001CFC(&qword_100028E68, &qword_10001E758);
    v42 = v137;
    v43 = *(v137 + 72);
    v44 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10001E620;
    v134 = v45;
    v46 = v45 + v44;
    v47 = *(v42 + 16);
    v47(v45 + v44, v133, v11);
    v141 = v42 + 16;
    v142 = v43;
    v48 = v47;
    v47(v46 + v43, v41, v11);
    swift_getKeyPath();
    v146 = v1;
    sub_10001CE28();

    v49 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
    v50 = v42;
    if (v49)
    {
      v51 = [v49 cachedStatus];
      v31 = v139;
      if (v51)
      {
        v52 = v51;
        sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
        v53 = sub_10001D4F8();

        if (v53 >> 62)
        {
          v30 = (v53 & 0xFFFFFFFFFFFFFF8);
          v54 = sub_10001D708();
          if (v54)
          {
LABEL_13:
            v55 = 0;
            v56 = v53 & 0xC000000000000001;
            v132 = (v50 + 8);
            v135 = &_swiftEmptyArrayStorage;
            do
            {
              v57 = v55;
              while (1)
              {
                if (v56)
                {
                  v58 = sub_10001D6D8();
                }

                else
                {
                  if (v57 >= v30[2])
                  {
                    goto LABEL_38;
                  }

                  v58 = *(v53 + 8 * v57 + 32);
                }

                v31 = v58;
                v55 = v57 + 1;
                if (__OFADD__(v57, 1))
                {
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                if ([v58 status] == 2)
                {
                  break;
                }

                ++v57;
                if (v55 == v54)
                {
                  goto LABEL_42;
                }
              }

              v131 = v53;
              v59 = [v31 locale];
              v60 = v143;
              sub_10001CDE8();

              v61 = sub_10001CDB8();
              v130 = v62;

              (*v132)(v60, v144);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v135 = sub_100010B80(0, *(v135 + 2) + 1, 1, v135);
              }

              v64 = *(v135 + 2);
              v63 = *(v135 + 3);
              v31 = (v64 + 1);
              if (v64 >= v63 >> 1)
              {
                v135 = sub_100010B80((v63 > 1), v64 + 1, 1, v135);
              }

              v65 = v135;
              *(v135 + 2) = v31;
              v66 = &v65[16 * v64];
              v67 = v130;
              *(v66 + 4) = v61;
              *(v66 + 5) = v67;
              v53 = v131;
            }

            while (v55 != v54);
            goto LABEL_42;
          }
        }

        else
        {
          v30 = (v53 & 0xFFFFFFFFFFFFFF8);
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54)
          {
            goto LABEL_13;
          }
        }

        v135 = &_swiftEmptyArrayStorage;
LABEL_42:

        v87 = v134;
        v11 = v144;
        goto LABEL_43;
      }

      v135 = &_swiftEmptyArrayStorage;
      v87 = v134;
    }

    else
    {
      v135 = &_swiftEmptyArrayStorage;
      v87 = v134;
    }

LABEL_43:
    v88 = *(v87 + 16);
    v89 = &_swiftEmptyArrayStorage;
    v132 = v88;
    if (v88)
    {
      v146 = &_swiftEmptyArrayStorage;
      sub_1000114F8(0, v88, 0);
      v89 = v146;
      v90 = (v50 + 8);
      do
      {
        v91 = v143;
        v92 = v144;
        v48(v143, v46, v144);
        v93 = sub_10001CDB8();
        v95 = v94;
        (*v90)(v91, v92);
        v146 = v89;
        v97 = v89[2];
        v96 = v89[3];
        if (v97 >= v96 >> 1)
        {
          sub_1000114F8((v96 > 1), v97 + 1, 1);
          v89 = v146;
        }

        v89[2] = v97 + 1;
        v98 = &v89[2 * v97];
        v98[4] = v93;
        v98[5] = v95;
        v46 += v142;
        --v88;
      }

      while (v88);
      v11 = v144;
    }

    v99 = sub_10001447C(v89);

    v146 = v99;
    swift_getKeyPath();
    v145[0] = v140;
    sub_10001CE28();

    sub_1000120C0(v100);

    sub_10000F2E4(v135);

    v102 = sub_10000EFC8(v101);

    if (v102[2] == v132)
    {
    }

    else
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v103 = sub_10001CF08();
      sub_100006A24(v103, qword_100029CB8);

      v104 = sub_10001CEE8();
      v105 = sub_10001D5A8();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v145[0] = swift_slowAlloc();
        *v106 = 136446466;
        v107 = sub_10001D508();
        v109 = v108;

        v110 = sub_100010D90(v107, v109, v145);

        *(v106 + 4) = v110;
        *(v106 + 12) = 2082;

        v111 = sub_10001D588();
        v113 = v112;

        v114 = sub_100010D90(v111, v113, v145);

        *(v106 + 14) = v114;
        _os_log_impl(&_mh_execute_header, v104, v105, "User wants to cancel downloads; some languages are already installed so not removing all languages; languages shown: %{public}s; languages to remove: %{public}s", v106, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    if (qword_100028A88 != -1)
    {
      swift_once();
    }

    v115 = sub_10001CF08();
    sub_100006A24(v115, qword_100029CB8);
    v116 = sub_10001CEE8();
    v117 = sub_10001D5E8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v145[0] = v119;
      *v118 = 136446210;

      v120 = sub_10001D588();
      v122 = v121;

      v123 = sub_100010D90(v120, v122, v145);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v117, "User cancelled downloads; requesting removal of: %{public}s", v118, 0xCu);
      sub_100014B94(v119);
    }

    v124 = v137;
    v125 = v133;
    v126 = objc_opt_self();
    isa = sub_10001D4E8().super.isa;

    [v126 removeLanguages:isa];

    sub_10000AAD8();
    v128 = *(v124 + 8);
    v128(v136, v11);
    v128(v125, v11);

    return;
  }

  v24 = v22;
  v25 = v10;
LABEL_5:
  sub_100005D0C(v25, &qword_100028D48, &qword_10001E3D0);
  v30 = v140;
  v31 = v24;
  if (qword_100028A88 != -1)
  {
LABEL_39:
    swift_once();
  }

  v32 = sub_10001CF08();
  sub_100006A24(v32, qword_100029CB8);
  v33 = v30;
  v34 = sub_10001CEE8();
  v35 = sub_10001D5D8();

  if (os_log_type_enabled(v34, v35))
  {
    LODWORD(v142) = v35;
    v36 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v148 = v136;
    *v36 = 136315394;
    swift_getKeyPath();
    v146 = v33;
    sub_10001CE28();

    v37 = v135;
    sub_100005D74(v30 + v134, v135, &qword_100028D48, &qword_10001E3D0);
    v38 = v144;
    if (v31(v37, 1, v144))
    {
      sub_100005D0C(v37, &qword_100028D48, &qword_10001E3D0);
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v68 = v137;
      v69 = v143;
      (*(v137 + 16))(v143, v37, v38);
      sub_100005D0C(v37, &qword_100028D48, &qword_10001E3D0);
      v39 = sub_10001CDB8();
      v40 = v70;
      (*(v68 + 8))(v69, v38);
    }

    v146 = v39;
    v147 = v40;
    sub_100001CFC(&qword_100028E60, &qword_10001E750);
    v71 = sub_10001D498();
    v73 = sub_100010D90(v71, v72, &v148);

    *(v36 + 4) = v73;
    *(v36 + 12) = 2080;
    swift_getKeyPath();
    v146 = v33;
    sub_10001CE28();

    v74 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__targetLocale;
    swift_beginAccess();
    v75 = v33 + v74;
    v76 = v141;
    sub_100005D74(v75, v141, &qword_100028D48, &qword_10001E3D0);
    if (v31(v76, 1, v38))
    {
      sub_100005D0C(v76, &qword_100028D48, &qword_10001E3D0);
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v79 = v137;
      v80 = v143;
      (*(v137 + 16))(v143, v76, v38);
      sub_100005D0C(v76, &qword_100028D48, &qword_10001E3D0);
      v77 = sub_10001CDB8();
      v81 = v38;
      v78 = v82;
      (*(v79 + 8))(v80, v81);
    }

    v83 = v142;
    v145[0] = v77;
    v145[1] = v78;
    v84 = sub_10001D498();
    v86 = sub_100010D90(v84, v85, &v148);

    *(v36 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v34, v83, "Unable to cancel downloads because unexpectedly have nil source or target locale when trying to cancel downloads, which shouldn't happen; source: %s; target: %s", v36, 0x16u);
    swift_arrayDestroy();
  }
}

unint64_t *sub_10000EFC8(uint64_t a1)
{
  v35 = sub_10001CE08();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v37 = &_swiftEmptyArrayStorage;
  v30 = v4;
  sub_1000114D8(0, v7, 0);
  v8 = v37;
  v9 = v30 + 56;
  result = sub_10001D678();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v33 = v3 + 32;
  v34 = v3;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(v12 + 36);
    v17 = v12;

    sub_10001CD98();
    v37 = v8;
    v18 = v6;
    v20 = v8[2];
    v19 = v8[3];
    if (v20 >= v19 >> 1)
    {
      sub_1000114D8((v19 > 1), v20 + 1, 1);
      v8 = v37;
    }

    v8[2] = v20 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v18, v35);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100016170(v11, v36, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_100016170(v11, v36, 0);
      v12 = v30;
LABEL_19:
      v6 = v18;
    }

    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
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
  return result;
}

uint64_t sub_10000F2E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1000121EC(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_10000F360()
{
  v0 = sub_10001CE08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v4 = sub_10001CDC8();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v3, v0);
  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    v6 = 0xE000000000000000;
  }

  sub_10001CDF8();
  v9 = sub_10001CDC8();
  v11 = v10;
  v7(v3, v0);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (v8 == v12 && v6 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_10001D738();
  }

  return v15 & 1;
}

void sub_10000F500(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10000C280(a2);
    if (a3 == 2)
    {
      v8 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v8] != 2)
      {
        goto LABEL_12;
      }
    }

    else if (a3 == 1)
    {
      v7 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v7] != 1)
      {
LABEL_12:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
        sub_10001CE18();

        return;
      }
    }

    else
    {
      if (a3)
      {
        sub_10001D6F8();
        __break(1u);
        return;
      }

      v9 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
      swift_beginAccess();
      if (v6[v9])
      {
        v10 = swift_getKeyPath();
        __chkstk_darwin(v10);
        sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
        sub_10001CE18();
      }

      if (v6[OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__downloadState])
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_10000F960(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10001CD58();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id LanguageSupportRemoteModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSupportRemoteModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LanguageSupportRemoteModel.startRequest(configuration:)(void *a1)
{
  v2 = v1;
  v4 = sub_100001CFC(&qword_100028E78, &qword_10001E788);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CF08();
  sub_100006A24(v7, qword_100029CD0);
  v8 = a1;
  v9 = sub_10001CEE8();
  v10 = sub_10001D5E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "UI extension received request for configuration: %{public}@", v11, 0xCu);
    sub_100005D0C(v12, &qword_100028E80, &qword_10001E7A0);
  }

  sub_10000C280(v8);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v20[-3] = 0;
  v20[-2] = 0;
  v20[-4] = v2;
  v20[1] = v2;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE18();

  v15 = sub_10001D568();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  v16[5] = v8;
  v17 = v8;
  v18 = v2;
  sub_10000A7B4(0, 0, v6, &unk_10001E798, v16);
}

uint64_t sub_10000FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_10000FF74, 0, 0);
}

uint64_t sub_10000FF74()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[18] = v1;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v2 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  if (v2 && ([v2 remoteObjectProxy], sub_10001D658(), swift_unknownObjectRelease(), sub_100001CFC(&qword_100028F98, &qword_10001EA48), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v0[19];
    v8 = v0[20];
    v0[21] = v0[18];
    swift_getKeyPath();
    v0[10] = v3;
    sub_10001CE28();

    v4 = *(v3 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100010218;
    v5 = swift_continuation_init();
    v0[17] = sub_100001CFC(&qword_100028F68, &qword_10001E9E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000D040;
    v0[13] = &unk_100025528;
    v0[14] = v5;
    [v4 preflightConfiguration:v8 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100010218()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1000104EC;
  }

  else
  {
    v2 = sub_100010328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010328()
{
  v1 = *(v0 + 144);

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v2 = sub_10001CF08();
  sub_100006A24(v2, qword_100029CB8);
  v3 = v1;
  v4 = sub_10001CEE8();
  v5 = sub_10001D5E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished preflight configuration with configuration: %{public}@", v6, 0xCu);
    sub_100005D0C(v7, &qword_100028E80, &qword_10001E7A0);
  }

  v9 = *(v0 + 168);
  v10 = v3;
  sub_10000996C(v3);
  [v9 didFinishWithFinalConfiguration:v10 error:0];
  swift_unknownObjectRelease();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000104EC(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();

  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v3 = sub_10001CF08();
  sub_100006A24(v3, qword_100029CB8);
  swift_errorRetain();
  v4 = sub_10001CEE8();
  v5 = sub_10001D5C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_10001CD58();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed preflight configuration with error: %@", v6, 0xCu);
    sub_100005D0C(v7, &qword_100028E80, &qword_10001E7A0);
  }

  v9 = v1[21];

  v10 = sub_10001CD58();
  [v9 didFinishWithFinalConfiguration:0 error:v10];

  swift_unknownObjectRelease();

  v11 = v1[1];

  return v11();
}

Swift::Bool __swiftcall LanguageSupportRemoteModel.shouldAccept(connection:)(NSXPCConnection connection)
{
  [(objc_class *)connection.super.isa setExportedObject:v1];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationAPISupport32LanguageSupportXPCRemoteProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v4];
  v5 = [v3 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationAPISupport30LanguageSupportXPCHostProtocol_];
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v5];

  [(objc_class *)connection.super.isa resume];
  v6 = connection.super.isa;
  sub_100008EBC(connection.super.isa);
  if (qword_100028A90 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CF08();
  sub_100006A24(v7, qword_100029CD0);
  v8 = sub_10001CEE8();
  v9 = sub_10001D5B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Remote Connection established", v10, 2u);
  }

  return 1;
}

uint64_t sub_100010908(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_100015D94(0, &qword_100028CF8, _LTLanguageStatusObservation_ptr);
    v2 = sub_10001D4F8();
  }

  v3(v2);
}

uint64_t sub_100010990(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010A88;

  return v6(a1);
}

uint64_t sub_100010A88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100010B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FC0, &qword_10001EA58);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100010C8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028F60, &qword_10001E9A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100010D90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010E5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015798(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100014B94(v11);
  return v7;
}

unint64_t sub_100010E5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010F68(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001D6E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100010F68(uint64_t a1, unint64_t a2)
{
  v3 = sub_100010FB4(a1, a2);
  sub_1000110E4(&off_1000250A8);
  return v3;
}

char *sub_100010FB4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000111D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001D6E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001D4D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000111D0(v10, 0);
        result = sub_10001D6B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000110E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100011244(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000111D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001CFC(&qword_100028FD0, &qword_10001EA78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100011244(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FD0, &qword_10001EA78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_100011338(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100001CFC(&qword_100028E68, &qword_10001E758);
      v7 = *(sub_10001CE08() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_10001CE08();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_1000114D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100011518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000114F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000116F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100011518(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001CFC(&qword_100028E68, &qword_10001E758);
  v10 = *(sub_10001CE08() - 8);
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
  v15 = *(sub_10001CE08() - 8);
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

char *sub_1000116F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CFC(&qword_100028FC0, &qword_10001EA58);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000117FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10001D768();
  sub_10001D4B8();
  v8 = sub_10001D788();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10001D738() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100011BAC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001194C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  result = sub_10001D6A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001D768();
      sub_10001D4B8();
      result = sub_10001D788();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100011BAC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001194C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100011D2C();
      goto LABEL_16;
    }

    sub_100011E88(v8 + 1);
  }

  v10 = *v4;
  sub_10001D768();
  sub_10001D4B8();
  result = sub_10001D788();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D738();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D758();
  __break(1u);
  return result;
}

void *sub_100011D2C()
{
  v1 = v0;
  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  v2 = *v0;
  v3 = sub_10001D698();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100011E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001CFC(&qword_100028FC8, &qword_10001EA70);
  result = sub_10001D6A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001D768();

      sub_10001D4B8();
      result = sub_10001D788();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000120C0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000121EC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1000121EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10001D768();
  sub_10001D4B8();
  v6 = sub_10001D788();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10001D738() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100011D2C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100012328(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_100012328(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10001D688();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10001D768();

        sub_10001D4B8();
        v10 = sub_10001D788();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_1000124EC(uint64_t *a1)
{
  v2 = *(sub_10001CE08() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100014468(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100012594(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100012594(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10001D718(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001CE08();
        v6 = sub_10001D518();
        v6[2] = v5;
      }

      v7 = *(sub_10001CE08() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100012A78(v8, v9, a1, v4);
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
    return sub_1000126C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000126C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10001CE08();
  v9 = __chkstk_darwin(v8);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v45 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - v14;
  result = __chkstk_darwin(v13);
  v63 = &v45 - v18;
  v47 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v56 = v21;
    v57 = v15;
    v22 = *(v20 + 56);
    v61 = v8;
    v62 = (v20 - 8);
    v58 = v20;
    v23 = v19 + v22 * (a3 - 1);
    v52 = -v22;
    v53 = (v20 + 16);
    v24 = a1 - a3;
    v54 = v19;
    v46 = v22;
    v25 = v19 + v22 * a3;
LABEL_6:
    v50 = v23;
    v51 = a3;
    v48 = v25;
    v49 = v24;
    v26 = v24;
    while (1)
    {
      v60 = v26;
      v27 = v56;
      v56(v63, v25, v8);
      v27(v15, v23, v8);
      v28 = v59;
      sub_10001CDF8();
      v29 = sub_10001CDC8();
      v31 = v30;
      v32 = *v62;
      (*v62)(v28, v61);
      if (v31)
      {
        v33 = v29;
      }

      else
      {
        v33 = 0;
      }

      if (!v31)
      {
        v31 = 0xE000000000000000;
      }

      sub_10001CDF8();
      v34 = sub_10001CDC8();
      v36 = v35;
      v37 = v28;
      v8 = v61;
      v32(v37, v61);
      if (v36)
      {
        v38 = v34;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0xE000000000000000;
      }

      if (v33 == v38 && v31 == v39)
      {

        v15 = v57;
        v32(v57, v8);
        result = (v32)(v63, v8);
LABEL_5:
        a3 = v51 + 1;
        v23 = v50 + v46;
        v24 = v49 - 1;
        v25 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return result;
        }

        goto LABEL_6;
      }

      v40 = sub_10001D738();

      v15 = v57;
      v32(v57, v8);
      result = (v32)(v63, v8);
      v41 = v60;
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v42 = *v53;
      v43 = v55;
      (*v53)(v55, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v42)(v23, v43, v8);
      v23 += v52;
      v25 += v52;
      v44 = __CFADD__(v41, 1);
      v26 = v41 + 1;
      if (v44)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100012A78(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v7 = v5;
  v143 = a1;
  v10 = sub_10001CE08();
  v11 = __chkstk_darwin(v10);
  v147 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v159 = &v138 - v14;
  v15 = __chkstk_darwin(v13);
  v168 = &v138 - v16;
  v17 = __chkstk_darwin(v15);
  v166 = &v138 - v18;
  v19 = __chkstk_darwin(v17);
  v162 = &v138 - v20;
  v21 = __chkstk_darwin(v19);
  v155 = &v138 - v22;
  v23 = __chkstk_darwin(v21);
  v154 = &v138 - v24;
  v25 = __chkstk_darwin(v23);
  result = __chkstk_darwin(v25);
  v30 = a3[1];
  v153 = v28;
  if (v30 < 1)
  {
    v32 = &_swiftEmptyArrayStorage;
LABEL_126:
    a4 = *v143;
    if (!*v143)
    {
      goto LABEL_168;
    }

    v4 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v153;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
    }

    else
    {
LABEL_162:
      result = sub_100013FA4(v4);
    }

    v169 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v133 = *(result + 16 * v4);
        v134 = result;
        v135 = *(result + 16 * (v4 - 1) + 40);
        sub_10001375C(*a3 + *(v6 + 72) * v133, (*a3 + *(v6 + 72) * *(result + 16 * (v4 - 1) + 32)), (*a3 + *(v6 + 72) * v135), a4);
        if (v7)
        {
        }

        if (v135 < v133)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_100013FA4(v134);
        }

        if (v4 - 2 >= *(v134 + 2))
        {
          goto LABEL_156;
        }

        v136 = &v134[16 * v4];
        *v136 = v133;
        *(v136 + 1) = v135;
        v169 = v134;
        sub_100013F18(v4 - 1);
        result = v169;
        v4 = *(v169 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_166;
    }
  }

  v139 = &v138 - v27;
  v140 = v29;
  v31 = 0;
  v163 = v28 + 16;
  v167 = (v28 + 8);
  v161 = (v28 + 32);
  v32 = &_swiftEmptyArrayStorage;
  v144 = a3;
  v142 = a4;
  while (1)
  {
    v148 = v32;
    if (v31 + 1 < v30)
    {
      v33 = *a3;
      v34 = *(v153 + 72);
      v4 = *(v153 + 16);
      v35 = v139;
      v165 = &v33[v34 * (v31 + 1)];
      (v4)(v139);
      v160 = v33;
      v36 = &v33[v34 * v31];
      v6 = v31;
      v37 = v140;
      v152 = v4;
      (v4)(v140, v36, v10);
      LODWORD(v157) = sub_10000F360();
      if (!v7)
      {
        v156 = v30;
        v145 = 0;
        v38 = *v167;
        (*v167)(v37, v10);
        v164 = v38;
        result = (v38)(v35, v10);
        v141 = v6;
        v39 = v6 + 2;
        v40 = &v160[v34 * (v6 + 2)];
        v41 = v34;
        v158 = v34;
        v42 = v165;
        while (1)
        {
          v45 = v156;
          if (v156 == v39)
          {
            break;
          }

          v46 = v152;
          v152(v154, v40, v10);
          v165 = v42;
          v46(v155, v42, v10);
          v47 = v162;
          sub_10001CDF8();
          v48 = sub_10001CDC8();
          v50 = v49;
          v51 = v164;
          v164(v47, v10);
          if (v50)
          {
            v52 = v48;
          }

          else
          {
            v52 = 0;
          }

          v160 = v52;
          if (!v50)
          {
            v50 = 0xE000000000000000;
          }

          sub_10001CDF8();
          v53 = sub_10001CDC8();
          v6 = v54;
          v51(v47, v10);
          if (v6)
          {
            v55 = v53;
          }

          else
          {
            v55 = 0;
          }

          if (v6)
          {
            v56 = v6;
          }

          else
          {
            v56 = 0xE000000000000000;
          }

          if (v160 == v55 && v50 == v56)
          {
            v43 = 0;
          }

          else
          {
            v43 = sub_10001D738();
          }

          v4 = v164;
          v164(v155, v10);
          result = (v4)(v154, v10);
          v44 = v157 ^ v43;
          ++v39;
          v41 = v158;
          v40 += v158;
          v42 = v165 + v158;
          if (v44)
          {
            v45 = v39 - 1;
            break;
          }
        }

        v7 = v145;
        a3 = v144;
        v57 = v148;
        a4 = v142;
        v31 = v141;
        if (v157)
        {
          if (v45 < v141)
          {
            goto LABEL_161;
          }

          if (v141 < v45)
          {
            v4 = v41 * (v45 - 1);
            v58 = v45 * v41;
            v156 = v45;
            v59 = v45;
            v60 = v141;
            v6 = v141 * v41;
            do
            {
              if (v60 != --v59)
              {
                v61 = *a3;
                if (!*a3)
                {
                  goto LABEL_165;
                }

                v62 = *v161;
                (*v161)(v147, &v61[v6], v10, v57);
                if (v6 < v4 || &v61[v6] >= &v61[v58])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v6 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = v62(&v61[v4], v147, v10);
                v7 = v145;
                a3 = v144;
                v57 = v148;
                v41 = v158;
              }

              ++v60;
              v4 -= v41;
              v58 -= v41;
              v6 += v41;
            }

            while (v60 < v59);
            a4 = v142;
            v31 = v141;
            v45 = v156;
          }
        }

        goto LABEL_40;
      }

      v137 = *v167;
      (*v167)(v37, v10);
      v137(v35, v10);
    }

    v45 = v31 + 1;
LABEL_40:
    v63 = a3[1];
    if (v45 >= v63)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v45, v31))
    {
      goto LABEL_158;
    }

    if (v45 - v31 >= a4)
    {
LABEL_49:
      a4 = v45;
      if (v45 < v31)
      {
        goto LABEL_157;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v31, a4))
    {
      goto LABEL_159;
    }

    if (v31 + a4 >= v63)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v31;
    }

    if (a4 < v31)
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v45 == a4)
    {
      goto LABEL_49;
    }

    v145 = v7;
    v109 = *a3;
    v110 = *(v153 + 72);
    v160 = *(v153 + 16);
    v111 = &v109[v110 * (v45 - 1)];
    v157 = -v110;
    v141 = v31;
    v112 = v31 - v45;
    v158 = v109;
    v146 = v110;
    v113 = &v109[v45 * v110];
    v149 = a4;
LABEL_102:
    v156 = v45;
    v150 = v113;
    v151 = v112;
    v114 = v113;
    v6 = v112;
    v152 = v111;
    v115 = v111;
LABEL_103:
    v164 = v6;
    v116 = v160;
    (v160)(v166, v114, v10);
    v116(v168, v115, v10);
    v117 = v162;
    sub_10001CDF8();
    v118 = sub_10001CDC8();
    v120 = v119;
    v121 = *v167;
    (*v167)(v117, v10);
    if (v120)
    {
      v122 = v118;
    }

    else
    {
      v122 = 0;
    }

    v123 = 0xE000000000000000;
    if (v120)
    {
      v123 = v120;
    }

    v165 = v123;
    sub_10001CDF8();
    v124 = sub_10001CDC8();
    v126 = v125;
    v121(v117, v10);
    v127 = v126 ? v124 : 0;
    v4 = v126 ? v126 : 0xE000000000000000;
    v6 = v165;
    if (v122 != v127 || v165 != v4)
    {
      break;
    }

    v121(v168, v10);
    v121(v166, v10);
LABEL_101:
    v45 = v156 + 1;
    v111 = v152 + v146;
    v112 = v151 - 1;
    a4 = v149;
    v113 = &v150[v146];
    if (v156 + 1 != v149)
    {
      goto LABEL_102;
    }

    v7 = v145;
    a3 = v144;
    v31 = v141;
    if (v149 < v141)
    {
      goto LABEL_157;
    }

LABEL_50:
    result = swift_isUniquelyReferenced_nonNull_native();
    v149 = a4;
    if (result)
    {
      v32 = v148;
    }

    else
    {
      result = sub_100010C8C(0, *(v148 + 2) + 1, 1, v148);
      v32 = result;
    }

    v65 = *(v32 + 2);
    v64 = *(v32 + 3);
    v4 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_100010C8C((v64 > 1), v65 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v4;
    v66 = &v32[16 * v65];
    v67 = v149;
    *(v66 + 4) = v31;
    *(v66 + 5) = v67;
    v68 = *v143;
    if (!*v143)
    {
      goto LABEL_167;
    }

    if (v65)
    {
      while (2)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          v73 = &v32[16 * v4 + 32];
          v74 = *(v73 - 64);
          v75 = *(v73 - 56);
          v79 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          if (v79)
          {
            goto LABEL_144;
          }

          v78 = *(v73 - 48);
          v77 = *(v73 - 40);
          v79 = __OFSUB__(v77, v78);
          v71 = v77 - v78;
          v72 = v79;
          if (v79)
          {
            goto LABEL_145;
          }

          v80 = &v32[16 * v4];
          v82 = *v80;
          v81 = *(v80 + 1);
          v79 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v79)
          {
            goto LABEL_147;
          }

          v79 = __OFADD__(v71, v83);
          v84 = v71 + v83;
          if (v79)
          {
            goto LABEL_150;
          }

          if (v84 >= v76)
          {
            v102 = &v32[16 * a4 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v79 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v79)
            {
              goto LABEL_154;
            }

            if (v71 < v105)
            {
              a4 = v4 - 2;
            }
          }

          else
          {
LABEL_69:
            if (v72)
            {
              goto LABEL_146;
            }

            v85 = &v32[16 * v4];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_149;
            }

            v91 = &v32[16 * a4 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_152;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_153;
            }

            if (v89 + v94 < v71)
            {
              goto LABEL_83;
            }

            if (v71 < v94)
            {
              a4 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v69 = *(v32 + 4);
            v70 = *(v32 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
            goto LABEL_69;
          }

          v95 = &v32[16 * v4];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_83:
          if (v90)
          {
            goto LABEL_148;
          }

          v98 = &v32[16 * a4];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_151;
          }

          if (v101 < v89)
          {
            break;
          }
        }

        v106 = a4 - 1;
        if (a4 - 1 >= v4)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*a3)
        {
          goto LABEL_164;
        }

        v6 = v32;
        v4 = *&v32[16 * v106 + 32];
        v107 = *&v32[16 * a4 + 40];
        sub_10001375C(*a3 + *(v153 + 72) * v4, (*a3 + *(v153 + 72) * *&v32[16 * a4 + 32]), (*a3 + *(v153 + 72) * v107), v68);
        if (v7)
        {
        }

        if (v107 < v4)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100013FA4(v6);
        }

        if (v106 >= *(v6 + 16))
        {
          goto LABEL_143;
        }

        v108 = v6 + 16 * v106;
        *(v108 + 32) = v4;
        *(v108 + 40) = v107;
        v169 = v6;
        result = sub_100013F18(a4);
        v32 = v169;
        v4 = *(v169 + 16);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v30 = a3[1];
    v31 = v149;
    a4 = v142;
    if (v149 >= v30)
    {
      goto LABEL_126;
    }
  }

  v128 = sub_10001D738();

  v4 = v167;
  v121(v168, v10);
  result = (v121)(v166, v10);
  if ((v128 & 1) == 0)
  {
    goto LABEL_101;
  }

  v129 = v164;
  if (v158)
  {
    v4 = *v161;
    v130 = v159;
    (*v161)(v159, v114, v10);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(v115, v130, v10);
    v115 += v157;
    v114 += v157;
    v131 = __CFADD__(v129, 1);
    v6 = v129 + 1;
    if (v131)
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_10001375C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v88 = sub_10001CE08();
  v8 = *(v88 - 8);
  v9 = __chkstk_darwin(v88);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v81 = &v72 - v12;
  v13 = __chkstk_darwin(v11);
  v83 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  result = __chkstk_darwin(v15);
  v20 = &v72 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_93;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_94;
  }

  v79 = a3;
  v24 = &a2[-a1] / v22;
  v91 = a1;
  v90 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || &a2[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = &a4[v26];
    if (v26 >= 1)
    {
      v75 = (v8 + 16);
      v76 = -v22;
      v80 = (v8 + 8);
      v48 = -v22;
      v49 = &a4[v26];
      v50 = v79;
      v85 = a1;
      v86 = a4;
      while (2)
      {
        while (1)
        {
          v73 = v47;
          v51 = a2;
          v52 = &a2[v48];
          v87 = &a2[v48];
          v77 = a2;
          while (1)
          {
            v84 = v50;
            if (v51 <= a1)
            {
              v91 = v51;
              v89 = v73;
              goto LABEL_91;
            }

            v74 = v47;
            v53 = *v75;
            v78 = &v49[v48];
            v79 = v49;
            v54 = v88;
            v53(v81);
            (v53)(v82, v52, v54);
            v55 = v83;
            sub_10001CDF8();
            v56 = sub_10001CDC8();
            v58 = v57;
            v59 = *v80;
            (*v80)(v55, v54);
            if (v58)
            {
              v60 = v56;
            }

            else
            {
              v60 = 0;
            }

            if (!v58)
            {
              v58 = 0xE000000000000000;
            }

            sub_10001CDF8();
            v61 = sub_10001CDC8();
            v63 = v62;
            v59(v55, v54);
            v64 = v63 ? v61 : 0;
            v65 = v63 ? v63 : 0xE000000000000000;
            v66 = v60 == v64 && v58 == v65 ? 0 : sub_10001D738();

            v48 = v76;
            v67 = v84;
            v50 = &v84[v76];
            v68 = v88;
            v59(v82, v88);
            v59(v81, v68);
            a1 = v85;
            v49 = v79;
            v51 = v77;
            if (v66)
            {
              break;
            }

            v69 = v78;
            v47 = v78;
            v27 = v67 >= v79;
            v70 = v86;
            if (v27 && v50 < v79)
            {
              v52 = v87;
              if (v84 != v79)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            else
            {
              swift_arrayInitWithTakeFrontToBack();
              v52 = v87;
            }

            v49 = v47;
            if (v69 <= v70)
            {
              a2 = v51;
              goto LABEL_90;
            }
          }

          v27 = v67 >= v77;
          v71 = v86;
          if (!v27 || v50 >= v77)
          {
            break;
          }

          a2 = v87;
          v47 = v74;
          if (v84 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v49 <= v71)
          {
            goto LABEL_90;
          }
        }

        a2 = v87;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v74;
        if (v49 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_90:
    v91 = a2;
    v89 = v47;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = &a4[v25];
    v89 = &a4[v25];
    v27 = v25 < 1 || a2 >= v79;
    if (!v27)
    {
      v77 = *(v8 + 16);
      v78 = v20;
      v80 = v22;
      v81 = (v8 + 16);
      v84 = (v8 + 8);
      v76 = v17;
      do
      {
        v85 = a1;
        v87 = a2;
        v28 = a2;
        v29 = v88;
        v30 = v77;
        (v77)(v20, v28, v88);
        v86 = a4;
        (v30)(v17, a4, v29);
        v31 = v83;
        sub_10001CDF8();
        v32 = sub_10001CDC8();
        v34 = v33;
        v35 = *v84;
        (*v84)(v31, v29);
        if (v34)
        {
          v36 = v32;
        }

        else
        {
          v36 = 0;
        }

        if (!v34)
        {
          v34 = 0xE000000000000000;
        }

        sub_10001CDF8();
        v37 = sub_10001CDC8();
        v39 = v38;
        v35(v31, v29);
        if (v39)
        {
          v40 = v37;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE000000000000000;
        }

        if (v36 == v40 && v34 == v41)
        {

          v17 = v76;
          v42 = v88;
          v35(v76, v88);
          v20 = v78;
          v35(v78, v42);
          v43 = v80;
          v44 = v85;
        }

        else
        {
          v45 = sub_10001D738();

          v17 = v76;
          v46 = v88;
          v35(v76, v88);
          v20 = v78;
          v35(v78, v46);
          v43 = v80;
          v44 = v85;
          if (v45)
          {
            a2 = &v80[v87];
            if (v85 < v87 || v85 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v85 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a4 = v86;
            goto LABEL_48;
          }
        }

        a2 = v87;
        a4 = &v43[v86];
        if (v44 < v86 || v44 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v44 != v86)
        {
          swift_arrayInitWithTakeBackToFront();
          v90 = a4;
          goto LABEL_48;
        }

        v90 = a4;
LABEL_48:
        a1 = &v43[v44];
        v91 = a1;
      }

      while (a4 < v82 && a2 < v79);
    }
  }

LABEL_91:
  sub_100013FB8(&v91, &v90, &v89);
  return 1;
}

uint64_t sub_100013F18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100013FA4(v3);
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

uint64_t sub_100013FB8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10001CE08();
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

uint64_t sub_10001409C(uint64_t result, uint64_t a2)
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
    sub_10001D768();

    sub_10001D4B8();
    v16 = sub_10001D788();
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
      if (v21 || (sub_10001D738() & 1) != 0)
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

uint64_t sub_100014254(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_100015E28(&qword_100028F58, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    v21 = sub_10001D448();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001447C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D598();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000117FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100014514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CE08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100001CFC(&qword_100028FD8, &qword_10001EA80);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100005D74(a1, &v21 - v13, &qword_100028D48, &qword_10001E3D0);
  sub_100005D74(a2, &v14[v15], &qword_100028D48, &qword_10001E3D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100005D74(v14, v10, &qword_100028D48, &qword_10001E3D0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100015E28(&qword_100028F58, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v18 = sub_10001D448();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100005D0C(v14, &qword_100028FD8, &qword_10001EA80);
    v17 = 1;
    return v17 & 1;
  }

  sub_100005D0C(v14, &qword_100028D48, &qword_10001E3D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100014834(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000149DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100014AD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100009218(v1);
}

uint64_t sub_100014B0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014B1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014B94(void *a1)
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

uint64_t sub_100014BE0(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x20100u >> (8 * a1);
  }

  sub_10001D6C8(38);

  v2._countAndFlagsBits = sub_10001D728();
  sub_10001D4C8(v2);

  result = sub_10001D6F8();
  __break(1u);
  return result;
}

uint64_t sub_100014CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a1;
  v9 = sub_10001D418();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10001D438();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v5;
  v26 = a3;
  v27 = a4;
  aBlock[0] = v5;
  sub_100015E28(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE18();

  sub_100015D94(0, &qword_100028FA0, OS_dispatch_queue_ptr);
  v15 = sub_10001D618();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = v22;
  aBlock[4] = sub_100015E1C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F960;
  aBlock[3] = &unk_100025578;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_10001D428();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100015E28(&qword_100028FA8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001CFC(&qword_100028FB0, &qword_10001EA50);
  sub_100015E70();
  sub_10001D668();
  sub_10001D628();
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

uint64_t sub_100015054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100015114;

  return sub_10000FF54(a1, v4, v5, v7, v6);
}

uint64_t sub_100015114()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10001520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100028E88;
  if (!qword_100028E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E88);
  }

  return result;
}

void sub_100015268(uint64_t a1)
{
  sub_10001537C(319);
  if (v1 <= 0x3F)
  {
    sub_10001CE68();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001537C(uint64_t a1)
{
  if (!qword_100028F48)
  {
    sub_10001CE08();
    v1 = sub_10001D648();
    if (!v2)
    {
      atomic_store(v1, &qword_100028F48);
    }
  }
}

uint64_t sub_1000153FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100015490(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

void sub_10001561C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10000996C(v1);
}

uint64_t sub_100015650()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001627C;

  return sub_10000C944(a1, v4, v5, v7, v6);
}

uint64_t sub_100015798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000157FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100015840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentConfiguration) = v2;
  v4 = v2;
}

void sub_100015880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__preflightChecker) = v2;
  v4 = v2;
}

uint64_t sub_1000158C0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedOriginallyInstalledLanguageIdentifiers) = *(v0 + 24);
}

void sub_100015904()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__languageStatus) = v2;
  v4 = v2;
}

void sub_10001596C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100008EBC(v1);
}

uint64_t sub_10001599C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000159DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015A4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015AA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015AEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001627C;

  return sub_10000A478(a1, v4, v5, v7, v6);
}

void sub_100015BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection);
  *(v1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__xpcConnection) = v2;
  v4 = v2;
}

uint64_t sub_100015BEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015C24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001627C;

  return sub_100010990(a1, v4);
}

uint64_t sub_100015CDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100015114;

  return sub_100010990(a1, v4);
}

uint64_t sub_100015D94(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100015DDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100015E70()
{
  result = qword_100028FB8;
  if (!qword_100028FB8)
  {
    sub_100002350(&qword_100028FB0, &qword_10001EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FB8);
  }

  return result;
}

uint64_t sub_100015ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_100015F30()
{
  v1 = sub_10001CE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100016024(uint64_t a1)
{
  v4 = *(sub_10001CE08() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001627C;

  return sub_10000B16C(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_100016170(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001617C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1000161E8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_100014B0C(v1, v2);
  return sub_100014B1C(v4, v5);
}

id sub_100016324()
{
  type metadata accessor for APIHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100029CB0 = result;
  return result;
}

uint64_t sub_1000163BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10001CF08();
  sub_100016434(v5, a2);
  sub_100006A24(v5, a2);
  return sub_10001CEF8();
}

uint64_t *sub_100016434(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t property wrapper backing initializer of LowConfidenceLIDView.selection(uint64_t a1)
{
  v2 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v2);
  sub_100005D74(a1, &v5 - v3, &qword_100028D48, &qword_10001E3D0);
  sub_10001D328();
  return sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
}

uint64_t sub_100016560(uint64_t a1)
{
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  type metadata accessor for LowConfidenceLIDView(0);
  sub_100005D74(a1, v11, &qword_100028D48, &qword_10001E3D0);
  sub_100001CFC(&qword_100029100, &unk_10001EB10);
  sub_10001D348();
  sub_10001D338();
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
    return sub_100005D0C(v9, &qword_100028D48, &qword_10001E3D0);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_10000C670(v5);
    sub_100005D0C(a1, &qword_100028D48, &qword_10001E3D0);
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t LowConfidenceLIDView.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v5 = __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  type metadata accessor for LowConfidenceLIDView(0);
  v10 = sub_10001CE08();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100005D74(v9, v7, &qword_100028D48, &qword_10001E3D0);
  sub_10001D328();
  result = sub_100005D0C(v9, &qword_100028D48, &qword_10001E3D0);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LowConfidenceLIDView(uint64_t a1)
{
  result = qword_100029160;
  if (!qword_100029160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LowConfidenceLIDView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_10001D138();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_1000290D8, &qword_10001EAA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  v12 = v1;
  sub_100001CFC(&qword_1000290E0, &qword_10001EAB0);
  sub_100005818(&qword_1000290E8, &qword_1000290E0, &qword_10001EAB0, &protocol conformance descriptor for TupleView<A>);
  sub_10001D1E8();
  sub_10001D128();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8, &protocol conformance descriptor for List<A, B>);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  sub_10001D268();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100016BAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_100001CFC(&qword_1000291A0, &qword_10001EB38);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = __chkstk_darwin(v3);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v56 - v6;
  v7 = sub_100001CFC(&qword_1000291A8, &qword_10001EB40);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v56 = &v56 - v8;
  v9 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  v10 = __chkstk_darwin(v9 - 8);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v56 - v12;
  v13 = sub_10001D0F8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001CFC(&qword_1000291B8, &qword_10001EB50);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = sub_100001CFC(&qword_1000291C0, &qword_10001EB58);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v59 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v56 - v24;
  sub_100017394(v19);
  sub_1000195D4();
  sub_10001D398();
  sub_10001D0E8();
  v26 = *(sub_100001CFC(&qword_100029210, &qword_10001EB80) + 36);
  (*(v14 + 16))(&v25[v26], v16, v13);
  v27 = *(v14 + 56);
  v28 = 1;
  v27(&v25[v26], 0, 1, v13);
  KeyPath = swift_getKeyPath();
  v30 = *(v21 + 44);
  v67 = v25;
  v31 = &v25[v30];
  v32 = *(sub_100001CFC(&qword_100029218, &qword_10001EBB8) + 28);
  (*(v14 + 32))(v31 + v32, v16, v13);
  v27(v31 + v32, 0, 1, v13);
  *v31 = KeyPath;
  v33 = *a1;
  swift_getKeyPath();
  v68[0] = v33;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v34 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  if (*(*(v33 + v34) + 16))
  {
    v68[0] = sub_100018034();
    v68[1] = v35;
    v69 = v36 & 1;
    v70 = v37;
    __chkstk_darwin(v68[0]);
    *(&v56 - 2) = a1;
    sub_100001CFC(&qword_100029220, &qword_10001EBE8);
    sub_100019838();
    v38 = v56;
    sub_10001D398();
    v40 = v57;
    v39 = v58;
    v41 = v66;
    (*(v57 + 32))(v66, v38, v58);
    v28 = 0;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    v41 = v66;
    v43 = v57;
    v42 = v58;
  }

  v44 = (*(v43 + 56))(v41, v28, 1, v42);
  __chkstk_darwin(v44);
  *(&v56 - 2) = a1;
  sub_100018D38(a1, v68);
  sub_100001CFC(&qword_100029240, &qword_10001EBF8);
  sub_100001CFC(&qword_100029220, &qword_10001EBE8);
  sub_1000198F0();
  sub_100019838();
  v45 = v60;
  sub_10001D398();
  v46 = v59;
  sub_100005D74(v67, v59, &qword_1000291C0, &qword_10001EB58);
  v47 = v61;
  sub_10001996C(v41, v61);
  v49 = v64;
  v48 = v65;
  v50 = *(v64 + 16);
  v51 = v62;
  v50(v62, v45, v65);
  v52 = v63;
  sub_100005D74(v46, v63, &qword_1000291C0, &qword_10001EB58);
  v53 = sub_100001CFC(&qword_100029250, &qword_10001EC00);
  sub_10001996C(v47, v52 + *(v53 + 48));
  v50((v52 + *(v53 + 64)), v51, v48);
  v54 = *(v49 + 8);
  v54(v45, v48);
  sub_1000199DC(v66);
  sub_100005D0C(v67, &qword_1000291C0, &qword_10001EB58);
  v54(v51, v48);
  sub_1000199DC(v47);
  return sub_100005D0C(v46, &qword_1000291C0, &qword_10001EB58);
}

__n128 sub_100017394@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100017514();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10001D3D8();
  sub_10001D008();
  v9 = v6 & 1;
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100001CFC(&qword_1000291B8, &qword_10001EB50) + 36));
  v12 = *(sub_100001CFC(&qword_100029208, &qword_10001EB78) + 28);
  v13 = sub_10001D208();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v19;
  *(a1 + 112) = v20;
  *(a1 + 128) = v21;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  result = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 1;
  return result;
}

uint64_t sub_100017514()
{
  v1 = sub_10001CCF8();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin(v1);
  v86 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10001CD08();
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001CD28();
  __chkstk_darwin(v4 - 8);
  v79 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_100028D28, &unk_10001ED10);
  __chkstk_darwin(v6 - 8);
  v78 = &v65 - v7;
  v8 = sub_100001CFC(&qword_100028D30, &qword_10001E3C0);
  __chkstk_darwin(v8 - 8);
  v81 = &v65 - v9;
  v85 = sub_10001CD48();
  v84 = *(v85 - 8);
  v10 = __chkstk_darwin(v85);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v65 - v12;
  v13 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v13 - 8);
  v91 = &v65 - v14;
  v15 = sub_10001CE08();
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  v17 = __chkstk_darwin(v15);
  v90 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v65 - v19;
  v21 = sub_10001D468();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v65 - v26;
  sub_10001D458();
  v28 = *(v22 + 16);
  v74 = v22 + 16;
  v73 = v28;
  v28(v25, v27, v21);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v29 = qword_100029CB0;
  v72 = qword_100029CB0;
  sub_10001CDF8();
  v30 = sub_10001D488();
  v75 = v25;
  v32 = v31;
  v33 = *(v22 + 8);
  v77 = v22 + 8;
  v33(v27, v21);
  v34 = *v0;
  swift_getKeyPath();
  v76 = v27;
  v89 = v20;
  v97 = v34;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v35 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  v36 = swift_beginAccess();
  if (!*(*(v34 + v35) + 16))
  {
    v66 = v33;
    v67 = v29;
    v68 = v21;
    v69 = v32;
    swift_getKeyPath();
    v94 = v34;
    sub_10001CE28();

    v39 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__unsupportedLocale;
    swift_beginAccess();
    v40 = v91;
    sub_100005D74(v34 + v39, v91, &qword_100028D48, &qword_10001E3D0);
    v42 = v92;
    v41 = v93;
    if ((*(v93 + 48))(v40, 1, v92) == 1)
    {
      v36 = sub_100005D0C(v40, &qword_100028D48, &qword_10001E3D0);
    }

    else
    {
      v43 = v90;
      (*(v41 + 32))(v90, v40, v42);
      v44 = v89;
      sub_10001CDF8();
      v45 = sub_10001CDC8();
      v47 = v46;
      v50 = *(v41 + 8);
      v48 = v41 + 8;
      v49 = v50;
      v50(v44, v42);
      if (v47)
      {
        v93 = v48;
        v51 = v76;
        sub_10001D458();
        v52 = v68;
        v73(v75, v51, v68);
        v53 = v72;
        sub_10001CDF8();
        sub_10001D488();
        v66(v51, v52);
        sub_100001CFC(&qword_100028D38, &qword_10001E3C8);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_10001E620;
        *(v54 + 56) = &type metadata for String;
        v57 = sub_100005CB8(v54, v55, v56);
        *(v54 + 32) = v45;
        *(v54 + 40) = v47;
        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = v57;
        *(v54 + 64) = v57;
        *(v54 + 72) = v45;
        *(v54 + 80) = v47;

        sub_10001D478();

        v58 = sub_10001CD88();
        (*(*(v58 - 8) + 56))(v78, 1, 1, v58);
        (*(v80 + 104))(v82, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v83);
        (*(v87 + 104))(v86, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v88);
        sub_10001CD18();
        v59 = v81;
        sub_10001CD38();

        v60 = v84;
        v61 = v85;
        (*(v84 + 56))(v59, 0, 1, v85);
        v62 = v71;
        (*(v60 + 32))(v71, v59, v61);
        (*(v60 + 16))(v70, v62, v61);
        v63 = sub_10001D228();
        (*(v60 + 8))(v62, v61);
        v49(v90, v42);
        return v63;
      }

      v36 = (v49)(v43, v42);
    }

    v32 = v69;
  }

  v95 = v30;
  v96 = v32;
  sub_100005408(v36, v37, v38);
  return sub_10001D238();
}

uint64_t sub_100018034()
{
  v0 = sub_10001CE08();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10001D468();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  sub_10001D458();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100029CB0;
  sub_10001CDF8();
  v9 = sub_10001D488();
  v11 = v10;
  v12 = (*(v2 + 8))(v7, v1);
  v16[1] = v9;
  v16[2] = v11;
  sub_100005408(v12, v13, v14);
  return sub_10001D238();
}

uint64_t sub_100018230(uint64_t *a1)
{
  v2 = type metadata accessor for LowConfidenceLIDView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v10[1] = v5;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v6 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v10[0] = *(v5 + v6);
  swift_getKeyPath();
  sub_100019A70(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100019AD8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_100001CFC(&qword_100029258, &qword_10001EC38);
  sub_100001CFC(&qword_100029238, &qword_10001EBF0);
  sub_100005818(&qword_100029260, &qword_100029258, &qword_10001EC38, &protocol conformance descriptor for [A]);
  sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0, &protocol conformance descriptor for Button<A>);
  return sub_10001D388();
}

uint64_t sub_1000184AC(uint64_t a1)
{
  v2 = type metadata accessor for LowConfidenceLIDView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = sub_10000D118();
  swift_getKeyPath();
  sub_100019A70(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100019AD8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100001CFC(&qword_100029258, &qword_10001EC38);
  sub_100001CFC(&qword_100029238, &qword_10001EBF0);
  sub_100005818(&qword_100029260, &qword_100029258, &qword_10001EC38, &protocol conformance descriptor for [A]);
  sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0, &protocol conformance descriptor for Button<A>);
  return sub_10001D388();
}

uint64_t sub_100018698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[2] = a4;
  v22[3] = a5;
  v22[1] = a6;
  v8 = sub_10001CE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for LowConfidenceLIDView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019A70(a2, v14);
  (*(v9 + 16))(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_100019AD8(v14, v17 + v15);
  (*(v9 + 32))(v17 + v16, v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v22[6] = a1;
  sub_100001CFC(&qword_100029268, &unk_10001EC40);
  v18 = sub_100002350(&qword_100028B08, &qword_10001E188);
  v19 = sub_100005818(&qword_100029270, &qword_100028B08, &qword_10001E188, &protocol conformance descriptor for Label<A, B>);
  v20 = sub_100019BB8(&qword_100029278, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v22[8] = v18;
  v22[9] = v8;
  v22[10] = v19;
  v22[11] = v20;
  swift_getOpaqueTypeConformance2();
  return sub_10001D368();
}

uint64_t sub_100018940(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_10001CE08();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_100016560(v5);
}

uint64_t sub_100018A40@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_100001CFC(&qword_100028B08, &qword_10001E188);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v14 = a1;
  sub_100001CFC(&qword_100029280, &unk_10001EC50);
  sub_100019C00();
  sub_10001D318();
  v10 = a4 + *(sub_100001CFC(&qword_100028AF8, &unk_10001EC60) + 36);
  v11 = sub_10001CE08();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  *(v10 + *(sub_100001CFC(&qword_100028B00, &qword_10001E180) + 36)) = 1;
  return (*(v7 + 32))(a4, v9, v6);
}

uint64_t sub_100018BF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001CE08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CDF8();
  v6 = sub_10001CDC8();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v20[0] = v6;
    v20[1] = v8;
    sub_100005408(v9, v10, v11);
    v12 = sub_10001D238();
    v8 = v13;
    v15 = v14;
    v17 = v16 & 1;
  }

  else
  {
    v12 = 0;
    v17 = 0;
    v15 = 0;
  }

  v18 = sub_10001D2E8();
  result = swift_getKeyPath();
  *a1 = v12;
  a1[1] = v8;
  a1[2] = v17;
  a1[3] = v15;
  a1[4] = result;
  a1[5] = v18;
  return result;
}

uint64_t sub_100018D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001CE08();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10001D468();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v26 - v10;
  v12 = *a1;
  swift_getKeyPath();
  v26[3] = v12;
  sub_100019BB8(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  sub_10001CE28();

  v13 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__lowConfidenceLocales;
  swift_beginAccess();
  v14 = *(*(v12 + v13) + 16);
  if (v14)
  {
    sub_10001D458();
    (*(v6 + 16))(v9, v11, v5);
    if (qword_100028A80 != -1)
    {
      swift_once();
    }

    v15 = qword_100029CB0;
    sub_10001CDF8();
    v16 = sub_10001D488();
    v18 = v17;
    v19 = (*(v6 + 8))(v11, v5);
    v26[0] = v16;
    v26[1] = v18;
    sub_100005408(v19, v20, v21);
    result = sub_10001D238();
    v14 = v25 & 1;
  }

  else
  {
    result = 0;
    v23 = 0;
    v24 = 0;
  }

  *a2 = result;
  a2[1] = v23;
  a2[2] = v14;
  a2[3] = v24;
  return result;
}

uint64_t sub_100019004@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_10001D138();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_1000290D8, &qword_10001EAA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  v12 = v1;
  sub_100001CFC(&qword_1000290E0, &qword_10001EAB0);
  sub_100005818(&qword_1000290E8, &qword_1000290E0, &qword_10001EAB0, &protocol conformance descriptor for TupleView<A>);
  sub_10001D1E8();
  sub_10001D128();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8, &protocol conformance descriptor for List<A, B>);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  sub_10001D268();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10001928C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001CFC(&qword_100029100, &unk_10001EB10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001935C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001CFC(&qword_100029100, &unk_10001EB10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001940C(uint64_t a1)
{
  type metadata accessor for LanguageSupportRemoteModel(319);
  if (v1 <= 0x3F)
  {
    sub_100019490(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100019490(uint64_t a1)
{
  if (!qword_100029170)
  {
    sub_100002350(&qword_100028D48, &qword_10001E3D0);
    v1 = sub_10001D358();
    if (!v2)
    {
      atomic_store(v1, &qword_100029170);
    }
  }
}

uint64_t sub_1000194F4()
{
  sub_100002350(&qword_1000290D8, &qword_10001EAA8);
  sub_10001D138();
  sub_100005818(&qword_1000290F0, &qword_1000290D8, &qword_10001EAA8, &protocol conformance descriptor for List<A, B>);
  sub_100019BB8(&qword_1000290F8, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000195D4()
{
  result = qword_1000291C8;
  if (!qword_1000291C8)
  {
    sub_100002350(&qword_1000291B8, &qword_10001EB50);
    sub_10001968C();
    sub_100005818(&qword_100029200, &qword_100029208, &qword_10001EB78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291C8);
  }

  return result;
}

unint64_t sub_10001968C()
{
  result = qword_1000291D0;
  if (!qword_1000291D0)
  {
    sub_100002350(&qword_1000291D8, &qword_10001EB60);
    sub_100019744();
    sub_100005818(&qword_1000291F0, &qword_1000291F8, &qword_10001EB70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291D0);
  }

  return result;
}

unint64_t sub_100019744()
{
  result = qword_1000291E0;
  if (!qword_1000291E0)
  {
    sub_100002350(&qword_1000291E8, &qword_10001EB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E0);
  }

  return result;
}

unint64_t sub_100019838()
{
  result = qword_100029228;
  if (!qword_100029228)
  {
    sub_100002350(&qword_100029220, &qword_10001EBE8);
    sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029228);
  }

  return result;
}

unint64_t sub_1000198F0()
{
  result = qword_100029248;
  if (!qword_100029248)
  {
    sub_100002350(&qword_100029240, &qword_10001EBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029248);
  }

  return result;
}

uint64_t sub_10001996C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000199DC(uint64_t a1)
{
  v2 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CDA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LowConfidenceLIDView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LowConfidenceLIDView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100019C00()
{
  result = qword_100029288;
  if (!qword_100029288)
  {
    sub_100002350(&qword_100029280, &unk_10001EC50);
    sub_1000198F0();
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029288);
  }

  return result;
}

uint64_t sub_100019CC0()
{
  v1 = (type metadata accessor for LowConfidenceLIDView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_10001CE08();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100001CFC(&qword_100029100, &unk_10001EB10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100019ED4()
{
  v1 = (type metadata accessor for LowConfidenceLIDView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001CE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3 + v1[7];
  if (!(*(v6 + 48))(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  v10 = (v3 + v4 + v7) & ~v7;
  sub_100001CFC(&qword_100029100, &unk_10001EB10);

  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_10001A078()
{
  v1 = *(type metadata accessor for LowConfidenceLIDView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10001CE08() - 8);
  return sub_100018940(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_10001A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100001CFC(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100005D74(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t SupportStepView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = sub_100001CFC(&qword_1000292A0, &qword_10001ED60);
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v49 = &v47 - v3;
  v55 = sub_100001CFC(&qword_1000292A8, &qword_10001ED68);
  __chkstk_darwin(v55);
  v56 = &v47 - v4;
  v62 = sub_100001CFC(&qword_1000292B0, &qword_10001ED70);
  __chkstk_darwin(v62);
  v57 = &v47 - v5;
  v54 = type metadata accessor for LanguageDownloadView(0);
  __chkstk_darwin(v54);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100001CFC(&qword_1000292B8, &qword_10001ED78);
  __chkstk_darwin(v59);
  v61 = &v47 - v7;
  v51 = sub_100001CFC(&qword_1000292C0, &qword_10001ED80);
  __chkstk_darwin(v51);
  v9 = &v47 - v8;
  v60 = sub_100001CFC(&qword_1000292C8, &unk_10001ED88);
  __chkstk_darwin(v60);
  v53 = &v47 - v10;
  v11 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v52 = type metadata accessor for LowConfidenceLIDView(0);
  __chkstk_darwin(v52);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v69 = a1;
  sub_10001B120(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v19 = a1;
  sub_10001CE28();

  v20 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  v21 = v19[v20];

  if (v21 > 1)
  {

    sub_10001D108();
    if (v21 == 2)
    {
      v25 = sub_10001D218();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      KeyPath = swift_getKeyPath();
      v33 = sub_10001D1C8();
      *&v69 = v25;
      *(&v69 + 1) = v27;
      LOBYTE(v70) = v29 & 1;
      *(&v70 + 1) = v64[0];
      DWORD1(v70) = *(v64 + 3);
      *(&v70 + 1) = v31;
      *&v71 = KeyPath;
      BYTE8(v71) = 1;
      *(&v71 + 9) = *v67;
      HIDWORD(v71) = *&v67[3];
      v72[0] = v33;
      *&v72[1] = *v66;
      *&v72[4] = *&v66[3];
      memset(&v72[8], 0, 32);
      v34 = *v72;
      v35 = *&v72[16];
      v36 = v70;
      v37 = v56;
      *(v56 + 2) = v71;
      v37[3] = v34;
      v68 = v29 & 1;
      v65 = 1;
      v72[40] = 1;
      v37[4] = v35;
      *(v37 + 73) = *&v72[25];
      *v37 = v69;
      v37[1] = v36;
      swift_storeEnumTagMultiPayload();
      sub_100005D74(&v69, v64, &qword_1000292D0, &qword_10001EDC0);
      sub_100001CFC(&qword_1000292D0, &qword_10001EDC0);
      sub_10001AEF0();
      sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
      v38 = v57;
      sub_10001D148();
      sub_100005D74(v38, v61, &qword_1000292B0, &qword_10001ED70);
      swift_storeEnumTagMultiPayload();
      sub_10001B034();
      sub_10001B168();
      sub_10001D148();
      sub_100005D0C(&v69, &qword_1000292D0, &qword_10001EDC0);
      return sub_100005D0C(v38, &qword_1000292B0, &qword_10001ED70);
    }

    else
    {
      v43 = v49;
      sub_10001D198();
      v44 = v50;
      v45 = v58;
      (*(v50 + 16))(v56, v43, v58);
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_1000292D0, &qword_10001EDC0);
      sub_10001AEF0();
      sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
      v46 = v57;
      sub_10001D148();
      sub_100005D74(v46, v61, &qword_1000292B0, &qword_10001ED70);
      swift_storeEnumTagMultiPayload();
      sub_10001B034();
      sub_10001B168();
      sub_10001D148();
      sub_100005D0C(v46, &qword_1000292B0, &qword_10001ED70);
      return (*(v44 + 8))(v43, v45);
    }
  }

  else if (v21)
  {
    v39 = *(v54 + 20);
    v40 = swift_getKeyPath();
    v41 = v48;
    *&v48[v39] = v40;
    sub_100001CFC(&qword_100028A98, &qword_10001E140);
    swift_storeEnumTagMultiPayload();
    *v41 = v19;
    sub_10001B2D8(v41, v9, type metadata accessor for LanguageDownloadView);
    swift_storeEnumTagMultiPayload();
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView, &protocol conformance descriptor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
    v42 = v53;
    sub_10001D148();
    sub_100005D74(v42, v61, &qword_1000292C8, &unk_10001ED88);
    swift_storeEnumTagMultiPayload();
    sub_10001B034();
    sub_10001B168();
    sub_10001D148();
    sub_100005D0C(v42, &qword_1000292C8, &unk_10001ED88);
    return sub_10001B340(v41, type metadata accessor for LanguageDownloadView);
  }

  else
  {
    v22 = sub_10001CE08();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    sub_100005D74(v16, v14, &qword_100028D48, &qword_10001E3D0);
    sub_10001D328();
    sub_100005D0C(v16, &qword_100028D48, &qword_10001E3D0);
    *v18 = v19;
    sub_10001B2D8(v18, v9, type metadata accessor for LowConfidenceLIDView);
    swift_storeEnumTagMultiPayload();
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView, &protocol conformance descriptor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
    v23 = v53;
    sub_10001D148();
    sub_100005D74(v23, v61, &qword_1000292C8, &unk_10001ED88);
    swift_storeEnumTagMultiPayload();
    sub_10001B034();
    sub_10001B168();
    sub_10001D148();
    sub_100005D0C(v23, &qword_1000292C8, &unk_10001ED88);
    return sub_10001B340(v18, type metadata accessor for LowConfidenceLIDView);
  }
}