uint64_t sub_100296D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10029896C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100296D98(uint64_t a1)
{
  v2 = sub_1002980E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100296DD4(uint64_t a1)
{
  v2 = sub_1002980E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Log.init()@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v1 - 8);
  v16[3] = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v3 - 8);
  v16[2] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  ArgumentHelp.init(stringLiteral:)();
  v11 = type metadata accessor for ArgumentHelp();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = type metadata accessor for CompletionKind();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  sub_10029808C();
  Argument<A>.init(help:completion:)();
  type metadata accessor for Log(0);
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  v14(v7, 1, 1, v13);
  static ArgumentArrayParsingStrategy.remaining.getter();
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t Log.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v50 = a2;
  v56 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v52 = *(v56 - 8);
  v2 = __chkstk_darwin(v56);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v55 = &v49 - v4;
  v57 = sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v59 = &v49 - v5;
  v62 = sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - v6;
  v63 = sub_1000039E8(&qword_1004AEE28, &qword_100403778);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v67 = &v49 - v7;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v10 - 8);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = type metadata accessor for Log(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v70 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArgumentHelp.init(stringLiteral:)();
  v21 = type metadata accessor for ArgumentHelp();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v71 = (v22 + 56);
  v23(v17, 0, 1, v21);
  v64 = v23;
  v24 = type metadata accessor for CompletionKind();
  v25 = *(*(v24 - 8) + 56);
  v25(v14, 1, 1, v24);
  sub_10029808C();
  v26 = v14;
  Argument<A>.init(help:completion:)();
  v27 = *(v19 + 28);
  ArgumentHelp.init(stringLiteral:)();
  v23(v17, 0, 1, v21);
  v25(v26, 1, 1, v24);
  static ArgumentArrayParsingStrategy.remaining.getter();
  v53 = v27;
  v28 = v70;
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  v29 = v19;
  v30 = *(v19 + 32);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v31 = v64;
  v64(v17, 0, 1, v21);
  v65 = v30;
  Flag<A>.init(wrappedValue:name:help:)();
  v32 = *(v29 + 36);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v33 = v28;
  v31(v17, 0, 1, v21);
  v34 = v68;
  Flag<A>.init(wrappedValue:name:help:)();
  sub_10000E2A8(v34, v34[3]);
  sub_1002980E0();
  v35 = v67;
  v36 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    sub_100003C3C(v34);
    v48 = v33;
  }

  else
  {
    v37 = v65;
    v38 = v33;
    v39 = v58;
    v40 = v59;
    v75 = 0;
    sub_10000E720(&qword_1004AEE38, &qword_1004AEE08, &qword_100403760, &protocol conformance descriptor for Argument<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 40))(v38, v61, v62);
    v74 = 1;
    sub_10000E720(&qword_1004AEE40, &qword_1004AEE10, &qword_100403768, &protocol conformance descriptor for Argument<A>);
    v41 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v54 + 40))(v38 + v53, v40, v41);
    v73 = 2;
    sub_10000E720(&qword_1004AEA50, &qword_1004AE998, &qword_100402E78, &protocol conformance descriptor for Flag<A>);
    v44 = v55;
    v43 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v71 = *(v52 + 40);
    v52 += 40;
    v71(&v37[v70], v44, v43);
    v72 = 3;
    v45 = v51;
    v46 = v63;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v60 + 8))(v35, v46);
    v47 = v70;
    v71((v70 + v32), v45, v43);
    sub_100298190(v47, v50);
    sub_100003C3C(v34);
    v48 = v47;
  }

  return sub_100298134(v48);
}

uint64_t default argument 0 of Log.init(operation:additionalArguments:debug:compact:)()
{
  v0 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for CompletionKind();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_10029808C();
  return Argument<A>.init(help:completion:)();
}

uint64_t Log.init(operation:additionalArguments:debug:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  type metadata accessor for Log(0);
  ArgumentHelp.init(stringLiteral:)();
  v16 = type metadata accessor for ArgumentHelp();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 0, 1, v16);
  v18 = type metadata accessor for CompletionKind();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  static ArgumentArrayParsingStrategy.remaining.getter();
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v17(v14, 0, 1, v16);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v17(v14, 0, 1, v16);
  return Flag<A>.init(wrappedValue:name:help:)();
}

unint64_t _s10DarwinInit3LogV9OperationO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488DC0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Log(uint64_t a1)
{
  result = qword_1004AEEB8;
  if (!qword_1004AEEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10029808C()
{
  result = qword_1004AEE20;
  if (!qword_1004AEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE20);
  }

  return result;
}

unint64_t sub_1002980E0()
{
  result = qword_1004AEE30;
  if (!qword_1004AEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE30);
  }

  return result;
}

uint64_t sub_100298134(uint64_t a1)
{
  v2 = type metadata accessor for Log(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100298190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Log(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002981F8()
{
  result = qword_1004AEE48;
  if (!qword_1004AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE48);
  }

  return result;
}

uint64_t sub_1002982B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Log(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002982F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  result = Argument.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002983C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10029853C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AEE08, &qword_100403760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AEE10, &qword_100403768);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002986AC(uint64_t a1)
{
  sub_1002987F4(319, &qword_1004AEEC8, &type metadata for Log.Operation, &type metadata accessor for Argument);
  if (v1 <= 0x3F)
  {
    sub_100298790(319);
    if (v2 <= 0x3F)
    {
      sub_1002987F4(319, &qword_1004AEAC0, &type metadata for Bool, &type metadata accessor for Flag);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100298790(uint64_t a1)
{
  if (!qword_1004AEED0)
  {
    sub_100003A94(&qword_1004A6B48, &unk_100376810);
    v1 = type metadata accessor for Argument();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AEED0);
    }
  }
}

void sub_1002987F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100298868()
{
  result = qword_1004AEF08;
  if (!qword_1004AEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF08);
  }

  return result;
}

unint64_t sub_1002988C0()
{
  result = qword_1004AEF10;
  if (!qword_1004AEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF10);
  }

  return result;
}

unint64_t sub_100298918()
{
  result = qword_1004AEF18;
  if (!qword_1004AEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF18);
  }

  return result;
}

uint64_t sub_10029896C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100440D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746361706D6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100298ADC()
{
  result = qword_1004AEF20;
  if (!qword_1004AEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF20);
  }

  return result;
}

uint64_t CryptexCacheInvalidator.__allocating_init()()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v5 = sub_1000270B4(v0, kDarwinInitCacheRootDirectory);
  v6 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v7 = *(v1 + 16);
  v7(v4 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v5, v0);
  swift_beginAccess();
  v7(v3, v4 + v6, v0);
  FilePath.appending(_:)();
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000270B4(v0, static Cache<>.defaultCacheDirectoryPath);
  v7(v4 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v8, v0);
  return v4;
}

uint64_t sub_100298D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 112))(v6);
}

uint64_t sub_100298E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 136))(v6);
}

uint64_t sub_100298FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 160))(v6);
}

uint64_t sub_1002990D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for FilePath();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100299168(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = type metadata accessor for FilePath();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t CryptexCacheInvalidator.init()()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v9 = sub_1000270B4(v2, kDarwinInitCacheRootDirectory);
  v10 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v11 = *(v3 + 16);
  v11(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v9, v2);
  swift_beginAccess();
  v11(v6, v1 + v10, v2);
  FilePath.appending(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v8, v2);
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000270B4(v2, static Cache<>.defaultCacheDirectoryPath);
  v11(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v12, v2);
  return v1;
}

void CryptexCacheInvalidator.overwrite(newValue:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for URL.DirectoryHint();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v10 - 8);
  v66 = &v62 - v11;
  v70 = type metadata accessor for URL();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FilePath();
  v75 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v62 - v21;
  __chkstk_darwin(v20);
  v26 = &v62 - v25;
  if (a2 >> 60 == 15)
  {
    v74 = v3;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000270B4(v27, qword_1004B00F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "cryptex cache invalidation id not specified for current boot session, deleting on disk ID", v30, 2u);
    }

    v31 = *(*v5 + 152);
    v31();
    v32 = FilePath.fileExists()();
    if (v33)
    {
      (*(v75 + 8))(v19, v13);
    }

    else
    {
      v49 = v32;
      v50 = v13;
      v51 = *(v75 + 8);
      v52 = v19;
      v53 = v50;
      v75 += 8;
      v54 = v51(v52);
      if (!v49)
      {
        return;
      }

      (v31)(v54);
      FilePath.remove()();
      if (!v55)
      {
        (v51)(v16, v53);
        return;
      }

      (v51)(v16, v53);
    }

    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to remove on disk ID: %@", v36, 0xCu);
      sub_10019AC78(v37);
    }

    else
    {
    }
  }

  else
  {
    v65 = a1;
    sub_1000318C0(a1, a2, v23, v24);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v73 = v13;
    v39 = type metadata accessor for Logger();
    sub_1000270B4(v39, qword_1004B00F8);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v74 = v3;
      v43 = v42;
      v63 = swift_slowAlloc();
      v76 = v63;
      *v43 = 136315138;
      (*(*v5 + 152))();
      v44 = FilePath.string.getter();
      v64 = a2;
      v46 = v45;
      (*(v75 + 8))(v26, v73);
      v47 = sub_1000026C0(v44, v46, &v76);
      a2 = v64;

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Writing new cryptex cache invalidation id to disk at %s", v43, 0xCu);
      sub_100003C3C(v63);

      v4 = v74;
    }

    (*(*v5 + 104))();
    FilePath.createDirectory(permissions:intermediateDirectories:)(448, 1);
    if (v4)
    {
      (*(v75 + 8))(v22, v73);
      v48 = v65;
    }

    else
    {
      v64 = a2;
      v56 = *(v75 + 8);
      v57 = v73;
      v58 = v56(v22, v73);
      (*(*v5 + 152))(v58);
      FilePath.string.getter();
      v56(v26, v57);
      a2 = v64;
      v59 = v68;
      v60 = v70;
      (*(v68 + 56))(v66, 1, 1, v70);
      (*(v71 + 104))(v69, enum case for URL.DirectoryHint.inferFromPath(_:), v72);
      v61 = v67;
      URL.init(filePath:directoryHint:relativeTo:)();
      v48 = v65;
      Data.write(to:options:)();
      (*(v59 + 8))(v61, v60);
    }

    sub_100031914(v48, a2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCacheInvalidator.purgeCache()()
{
  v2 = v0;
  v3 = type metadata accessor for FilePath();
  v57 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v55 = &v50[-v8];
  if (qword_1004A9F20 != -1)
  {
    v49 = v7;
    swift_once();
    v7 = v49;
  }

  v56 = v7;
  v9 = type metadata accessor for Logger();
  v10 = sub_1000270B4(v9, qword_1004B00F8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v54 = v1;
    v14 = v13;
    v52 = swift_slowAlloc();
    v59 = v52;
    *v14 = 136315138;
    v15 = *(*v0 + 128);
    v53 = v10;
    v16 = v55;
    v15();
    sub_100190550();
    v17 = v6;
    v18 = v56;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v12;
    v21 = v20;
    v22 = v18;
    v6 = v17;
    (v57[1].isa)(v16, v22);
    v23 = sub_1000026C0(v19, v21, &v59);

    *(v14 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v11, v51, "Attempting to purge cryptex cache at %s...", v14, 0xCu);
    sub_100003C3C(v52);
  }

  v24 = *(*v2 + 128);
  v24();
  FilePath.removeAllFilesInDirectory()();
  if (!v25)
  {
    isa = v57[1].isa;
    v38 = v6;
    v39 = v56;
    (isa)(v38, v56);

    v29 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      v54 = v29;
      v42 = v41;
      v57 = swift_slowAlloc();
      v59 = v57;
      *v42 = 136315138;
      v52 = isa;
      v43 = v55;
      LODWORD(v53) = v40;
      v24();
      sub_100190550();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (v52)(v43, v39);
      v47 = sub_1000026C0(v44, v46, &v59);

      *(v42 + 4) = v47;
      v48 = v54;
      _os_log_impl(&_mh_execute_header, v54, v53, "Successfully purged cryptex cache at %s", v42, 0xCu);
      sub_100003C3C(v57);

      return;
    }

    goto LABEL_13;
  }

  v26 = v56;
  v27 = v57 + 1;
  v28 = v57[1].isa;
  v28(v6, v56);
  v59 = v25;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
  if (swift_dynamicCast() && v58 == 20)
  {
    v57 = v27;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v31 = 136315138;
      v32 = v55;
      LODWORD(v53) = v30;
      v24();
      sub_100190550();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v28(v32, v26);
      v36 = sub_1000026C0(v33, v35, &v59);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v53, "Cryptex cache at %s does not exist, nothing to purge", v31, 0xCu);
      sub_100003C3C(v54);
    }

LABEL_13:
  }
}

uint64_t CryptexCacheInvalidator.readID()()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 152))(v12);
  FilePath.string.getter();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 56))(v5, 1, 1, v10);
  (*(v19 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
  URL.init(filePath:directoryHint:relativeTo:)();
  v15 = Data.init(contentsOf:options:)();
  (*(v11 + 8))(v14, v10);
  return v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCacheInvalidator.verify(invalidationId:)(Swift::String_optional invalidationId)
{
  object = invalidationId.value._object;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    static String.Encoding.utf8.getter();
    object = String.data(using:allowLossyConversion:)();
    v47 = v12;
    v9 = (*(v8 + 8))(v11, v7);
  }

  else
  {
    v47 = 0xF000000000000000;
  }

  v13 = v1;
  (*(*v1 + 152))(v9);
  v14 = FilePath.fileExists()();
  if (v15)
  {
    (*(v4 + 8))(v6, v3);
    v16 = object;
    v17 = v47;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000270B4(v18, qword_1004B00F8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to read on disk cryptex cache invalidation ID due to: %@. Must assume current workload does not have access to cryptex cache and purge", v21, 0xCu);
      sub_10019AC78(v22);
    }

    (*(*v13 + 192))();
    CryptexCacheInvalidator.overwrite(newValue:)(v16, v17);

    v28 = 0;
    v29 = 0xF000000000000000;
  }

  else
  {
    v24 = v14;
    v25 = (*(v4 + 8))(v6, v3);
    if (v24)
    {
      v16 = object;
      v28 = (*(*v13 + 200))(v25);
      v29 = v30;
    }

    else
    {
      v28 = 0;
      v29 = 0xF000000000000000;
      v16 = object;
    }

    v17 = v47;
  }

  if (v17 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_100031994(v28, v29, v26, v27);
      sub_100031994(v16, v17, v31, v32);
      sub_100031914(v16, v17);
LABEL_25:
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000270B4(v42, qword_1004B00F8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "cryptex cache invalidation id for current boot session matches value on disk", v45, 2u);
      }

      sub_100031914(v28, v29);

      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v29 >> 60 == 15)
  {
LABEL_18:
    sub_100031994(v28, v29, v26, v27);
    sub_100031994(v16, v17, v33, v34);
    sub_100031914(v16, v17);
    sub_100031914(v28, v29);
    goto LABEL_19;
  }

  sub_100031994(v28, v29, v26, v27);
  sub_100031994(v16, v17, v39, v40);
  v41 = sub_10030651C(v16, v17, v28, v29);
  sub_100031914(v28, v29);
  sub_100031914(v16, v17);
  if (v41)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000270B4(v35, qword_1004B00F8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "cryptex cache invalidation id for current boot session does NOT match value on disk", v38, 2u);
  }

  (*(*v13 + 192))();
  CryptexCacheInvalidator.overwrite(newValue:)(v16, v17);
  sub_100031914(v28, v29);
LABEL_30:
  sub_100031914(v16, v17);
}

uint64_t CryptexCacheInvalidator.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v2);
  return v0;
}

uint64_t CryptexCacheInvalidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CryptexCacheInvalidator(uint64_t a1)
{
  result = qword_1004AEF50;
  if (!qword_1004AEF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029AEFC(uint64_t a1)
{
  result = type metadata accessor for FilePath();
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

uint64_t DInitUserConfig.appleConnectSSHConfig.getter()
{
  v1 = *(v0 + 72);
  sub_1001EB4BC(v1, *(v0 + 80));
  return v1;
}

uint64_t DInitUserConfig.appleConnectSSHConfig.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1001EB53C(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t DInitUserConfig.appleAuthenticationConfig.getter()
{
  v1 = v0[11];
  sub_1001EB5F0(v1, v0[12], v0[13], v0[14]);
  return v1;
}

uint64_t DInitUserConfig.appleAuthenticationConfig.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001EB694(v4[11]);
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

__n128 DInitUserConfig.init(userName:uid:gid:password:isAdmin:sshAuthorizedKeys:passwordlessSudo:appleConnectSSHConfig:appleAuthenticationConfig:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __n128 a13, uint64_t a14, uint64_t a15)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  return result;
}

uint64_t sub_10029B32C()
{
  v0 = Config.User.VersionOneKeys.stringValue.getter();
  v2 = v1;
  if (v0 == Config.User.VersionOneKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_10029B3B4()
{
  Hasher.init(_seed:)();
  Config.User.VersionOneKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10029B418(uint64_t a1)
{
  Config.User.VersionOneKeys.stringValue.getter();
  String.hash(into:)();
}

Swift::Int sub_10029B46C()
{
  Hasher.init(_seed:)();
  Config.User.VersionOneKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10029B4CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10029B4FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10029B534(uint64_t a1)
{
  v2 = sub_10029C408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029B570(uint64_t a1)
{
  v2 = sub_10029C408();

  return CodingKey.debugDescription.getter(a1, v2);
}

double DInitUserConfig.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10029BE74(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t DInitUserConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AF050, &qword_100403A88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10029C408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[0] = *(v3 + 72);
    v12 = 7;
    sub_10029C45C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 104);
    v11[0] = *(v3 + 88);
    v11[1] = v9;
    v12 = 8;
    sub_10029C4B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_10029B8F4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s10DarwinInit15DInitUserConfigV2eeoiySbAC_ACtFZ_0(v12, v14);
}

void DInitUserConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 20));
  if (*(v2 + 32))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v2 + 40);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  if (*(v2 + 56))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v2 + 64);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v2 + 72);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *(v2 + 80);
    Hasher._combine(_:)(1u);
    DInitAppleConnectSSHConfig.hash(into:)(a1, v8, v9);
  }

  v10 = *(v2 + 88);
  if (v10 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v2 + 104);
    v11 = *(v2 + 112);
    v13 = *(v2 + 96);
    Hasher._combine(_:)(1u);

    DInitAppleAuthenticationConfig.hash(into:)(a1, v10, v13, v12, v11);
  }
}

Swift::Int DInitUserConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitUserConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10029BB40()
{
  Hasher.init(_seed:)();
  DInitUserConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit15DInitUserConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 4) != *(a2 + 16) || *(a1 + 5) != *(a2 + 20))
  {
    return 0;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || (a1[3] != *(a2 + 24) || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v7) & 1) != 0)
    {
      return result;
    }
  }

  v10 = a1[7];
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (a1[6] != *(a2 + 48) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }

LABEL_32:
    v14 = a1[9];
    v15 = *(a2 + 72);
    if (v14 == 1)
    {
      if (v15 != 1)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v15 == 1)
    {
      return 0;
    }

    v24 = a1[10];
    v25 = *(a2 + 80);
    if (v14)
    {
      if (!v15)
      {

        goto LABEL_52;
      }

      if (sub_10024DC98(v14, *(a2 + 72)))
      {
        goto LABEL_41;
      }
    }

    else if (!v15)
    {
LABEL_41:
      if (v24)
      {
        if (!v25 || (sub_10024DC98(v24, v25) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

LABEL_34:
      v16 = a1[11];
      v17 = a1[12];
      v19 = a1[13];
      v18 = a1[14];
      v21 = *(a2 + 88);
      v20 = *(a2 + 96);
      v23 = *(a2 + 104);
      v22 = *(a2 + 112);
      if (v16 == 1)
      {
        if (v21 == 1)
        {
          return 1;
        }

        goto LABEL_46;
      }

      if (v21 == 1)
      {
LABEL_46:
        sub_1001EB5F0(v21, v20, v23, v22);
        sub_1001EB5F0(v16, v17, v19, v18);
        sub_1001EB694(v16);
        sub_1001EB694(v21);
        return 0;
      }

      v26 = _s10DarwinInit30DInitAppleAuthenticationConfigV2eeoiySbAC_ACtFZ_0(v16, v17, v19, v18, v21, v20, v23, v22);
      sub_1001EB5F0(v21, v20, v23, v22);
      sub_1001EB5F0(v16, v17, v19, v18);

      sub_1001EB694(v16);
      return v26;
    }

    sub_1001EB4BC(v15, v25);

LABEL_52:

    return 0;
  }

  result = 0;
  if (v13 != 2 && ((v13 ^ v12) & 1) == 0)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_10029BE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_1000039E8(&qword_1004AF0A0, &unk_100403DB0);
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v28 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_10029C408();
  v40 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v8 = v5;
    v38 = a2;
    LOBYTE(v49) = 0;
    v9 = v39;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v12;
    LOBYTE(v49) = 1;
    v68 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v49) = 2;
    v13 = a1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v49) = 3;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v15;
    LOBYTE(v41) = 4;
    sub_1001D76C0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v49 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v49 & 1;
    }

    v34 = v16;
    LOBYTE(v49) = 5;
    *&v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v33 + 1) = v17;
    LOBYTE(v41) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v49 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v49 & 1;
    }

    LOBYTE(v41) = 7;
    sub_10029C790();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v18;
    v19 = v49;
    v32 = v50;
    v69 = 8;
    sub_10029C7E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v40, v9);
    v39 = v66;
    v40 = v65;
    v28 = v67;
    v29 = *(&v66 + 1);
    v20 = v37;
    *&v41 = v11;
    *(&v41 + 1) = v37;
    v21 = v68;
    *&v42 = __PAIR64__(v14, v68);
    v30 = v14;
    v22 = v36;
    *(&v42 + 1) = v35;
    *&v43 = v36;
    BYTE8(v43) = v34;
    v23 = *(&v33 + 1);
    v44 = v33;
    LOBYTE(v45) = v31;
    *(&v45 + 1) = v19;
    *&v46 = v32;
    *(&v46 + 1) = v65;
    v47 = v66;
    v48 = v67;
    sub_10029C838(&v41, &v49);
    sub_100003C3C(v13);
    v49 = v11;
    v50 = v20;
    v51 = v21;
    v52 = v30;
    v53 = v35;
    v54 = v22;
    v55 = v34;
    v56 = v33;
    v57 = v23;
    v58 = v31;
    v59 = v19;
    v60 = v32;
    v61 = v40;
    v62 = v39;
    v63 = v29;
    v64 = v28;
    result = sub_10029C870(&v49);
    v24 = v46;
    v25 = v38;
    *(v38 + 64) = v45;
    *(v25 + 80) = v24;
    *(v25 + 96) = v47;
    *(v25 + 112) = v48;
    v26 = v42;
    *v25 = v41;
    *(v25 + 16) = v26;
    v27 = v44;
    *(v25 + 32) = v43;
    *(v25 + 48) = v27;
  }

  return result;
}

unint64_t _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488F38, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10029C408()
{
  result = qword_1004AF058;
  if (!qword_1004AF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF058);
  }

  return result;
}

unint64_t sub_10029C45C()
{
  result = qword_1004AF060;
  if (!qword_1004AF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF060);
  }

  return result;
}

unint64_t sub_10029C4B0()
{
  result = qword_1004AF068;
  if (!qword_1004AF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF068);
  }

  return result;
}

unint64_t sub_10029C508()
{
  result = qword_1004AF070;
  if (!qword_1004AF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF070);
  }

  return result;
}

unint64_t sub_10029C560()
{
  result = qword_1004AF078;
  if (!qword_1004AF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF078);
  }

  return result;
}

unint64_t sub_10029C5B8()
{
  result = qword_1004AF080;
  if (!qword_1004AF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF080);
  }

  return result;
}

unint64_t sub_10029C610()
{
  result = qword_1004AF088;
  if (!qword_1004AF088)
  {
    sub_100003A94(&qword_1004AF090, &qword_100403B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF088);
  }

  return result;
}

unint64_t sub_10029C678()
{
  result = qword_1004AF098;
  if (!qword_1004AF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF098);
  }

  return result;
}

uint64_t sub_10029C6CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10029C714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10029C790()
{
  result = qword_1004AF0A8;
  if (!qword_1004AF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0A8);
  }

  return result;
}

unint64_t sub_10029C7E4()
{
  result = qword_1004AF0B0;
  if (!qword_1004AF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0B0);
  }

  return result;
}

void sub_10029C8BC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = v3;
  __len = a3 - a2;
  if (a2)
  {
    v7 = a3 == a2;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v26 = v8;
  while (1)
  {
    while (1)
    {
      v9 = FileDescriptor._read(into:retryOnInterrupt:)();
      if (!v4)
      {
        break;
      }

      v4 = 0;
LABEL_13:
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      if ((swift_dynamicCast() & 1) == 0 || v28 != 35)
      {
        if (qword_1004A9F20 != -1)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      usleep(0x64u);
    }

    v11 = v9;
    if (v10)
    {
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v12 = v11;
      goto LABEL_13;
    }

    if (!v9)
    {
      break;
    }

    v13 = _swiftEmptyArrayStorage;
    if ((v26 & 1) == 0)
    {
      v14 = __len;
      if (__len >= 1)
      {
        sub_1000039E8(&qword_1004A6148, &qword_1003769F0);
        v13 = swift_allocObject();
        v15 = j__malloc_size(v13);
        v14 = __len;
        v13[2] = __len;
        v13[3] = 2 * v15 - 64;
      }

      if (a3 <= a2)
      {
        __break(1u);
        return;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        swift_once();
LABEL_24:
        v16 = type metadata accessor for Logger();
        sub_1000270B4(v16, qword_1004B00F8);
        swift_errorRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          swift_errorRetain();
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v21;
          *v20 = v21;
          _os_log_impl(&_mh_execute_header, v17, v18, "Error reading from remote service connection: %@", v19, 0xCu);
          sub_10019AC78(v20);
        }

        swift_willThrow();
        return;
      }

      memmove(v13 + 4, a2, v14);
    }

    Data._Representation.append(contentsOf:)();
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000270B4(v22, qword_1004B00F8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "remote service connection closed", v25, 2u);
  }
}

uint64_t *sub_10029CC6C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v34 = xmmword_1003780A0;
  if (remote_device_get_state() != 2)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000270B4(v14, qword_1004B00F8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "remote device is not connected", v17, 2u);
    }

    sub_10029D270();
    swift_allocError();
    *v18 = 0;
    goto LABEL_20;
  }

  String.utf8CString.getter();
  v6 = remote_device_copy_service();

  if (!v6)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, qword_1004B00F8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000026C0(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v20, v21, "remote device doesn't have service %s", v22, 0xCu);
      sub_100003C3C(v23);
    }

    sub_10029D270();
    swift_allocError();
    *v24 = 1;
LABEL_20:
    swift_willThrow();
    goto LABEL_27;
  }

  if (remote_service_create_connected_socket() == -1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000270B4(v25, qword_1004B00F8);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000026C0(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v26, v27, "failed to connect to %s", v28, 0xCu);
      sub_100003C3C(v29);
    }

    sub_10029D270();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
  }

  else
  {
    swift_slowAlloc();
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "fetching config from remote service", v10, 2u);
    }

    a2 = &v32;
    __chkstk_darwin(v11);
    FileDescriptor.closeAfter<A>(_:)();
    if (!v3)
    {
      a2 = v34;
      sub_1000318C0(v34, *(&v34 + 1), v12, v13);

      sub_100031928(v34, *(&v34 + 1));
      return a2;
    }
  }

LABEL_27:
  sub_100031928(v34, *(&v34 + 1));
  return a2;
}

unint64_t sub_10029D1FC()
{
  result = qword_1004AF0B8;
  if (!qword_1004AF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0B8);
  }

  return result;
}

unint64_t sub_10029D270()
{
  result = qword_1004AF0C0;
  if (!qword_1004AF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0C0);
  }

  return result;
}

Swift::Void __swiftcall FileDescriptor.closeNoThrow()()
{
  v1 = v0;
  while (1)
  {
    if (qword_1004A9F30 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, static Logger.filesystem);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Closing file descriptor (%d)", v6, 8u);
    }

    v7 = FileDescriptor._close()();
    if ((v7 & 0x100000000) == 0)
    {
      break;
    }

    v8 = v7;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v9 = v8;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    if ((swift_dynamicCast() & 1) == 0 || v17 != 4)
    {
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 67109378;
        *(v14 + 4) = v1;
        *(v14 + 8) = 2112;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 10) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to close file descriptor (%d): %@", v14, 0x12u);
        sub_10019AC78(v15);
      }

      else
      {
      }

      return;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v2 = swift_slowAlloc();
      *v2 = 67109120;
      *(v2 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v10, v11, "File descriptor (%d) close: Interrupted", v2, 8u);
    }

    else
    {
    }
  }
}

uint64_t CredentialString.redactionOverrideKey.unsafeMutableAddressor()
{
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return sub_1000270B4(v0, static CredentialString.redactionOverrideKey);
}

uint64_t sub_10029D674()
{
  v0 = sub_1000039E8(&qword_1004AF0D0, &qword_100403FB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000279B4(v3, static CredentialString.redactionOverrideKey);
  v4 = sub_1000270B4(v3, static CredentialString.redactionOverrideKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CredentialString.redactionOverrideKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = sub_1000270B4(v2, static CredentialString.redactionOverrideKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

DarwinInit::CredentialString_optional __swiftcall CredentialString.init(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  *v1 = countAndFlagsBits;
  v1[1] = a1.value._object;
  result.value = a1;
  return result;
}

uint64_t CredentialString.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10000E2A8(a1, a1[3]);
  v2 = dispatch thunk of Encoder.userInfo.getter();
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000270B4(v3, static CredentialString.redactionOverrideKey);
  if (!*(v2 + 16) || (v4 = sub_1001814FC(), (v5 & 1) == 0))
  {

    memset(v8, 0, sizeof(v8));
LABEL_10:
    sub_100003BEC(v9, v10);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    goto LABEL_11;
  }

  sub_100003CA0(*(v2 + 56) + 32 * v4, v8);

  sub_10007D654(v8, v7);
  if ((swift_dynamicCast() & 1) == 0 || v11 != 1)
  {
    sub_100003C3C(v7);
    goto LABEL_10;
  }

  sub_100003BEC(v9, v10);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  sub_100003C3C(v7);
LABEL_11:
  sub_1001EDC44(v8);
  return sub_100003C3C(v9);
}

unint64_t sub_10029DB20()
{
  result = qword_1004AF0C8;
  if (!qword_1004AF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0C8);
  }

  return result;
}

void *sub_10029DB9C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10029DF2C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t DInitData.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Data.base64EncodedString(options:)(0);
  sub_100003BEC(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100003C3C(v2);
}

uint64_t sub_10029DC88(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Data.base64EncodedString(options:)(0);
  sub_100003BEC(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100003C3C(v2);
}

BOOL sub_10029DD44(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  sub_1000318C0(*a1, v5, a3, a4);
  sub_1000318C0(v6, v7, v8, v9);
  v10 = sub_10030651C(v4, v5, v6, v7);
  sub_100031928(v6, v7);
  sub_100031928(v4, v5);
  return v10;
}

uint64_t sub_10029DDC8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = _s10DarwinInit9DInitDataV8argumentACSgSS_tcfC_0(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

Swift::Int sub_10029DDF0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000318C0(v1, v2, v3, v4);
  Data.hash(into:)();
  sub_100031928(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10029DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  sub_1000318C0(v6, v5, a3, a4);
  Data.hash(into:)();

  return sub_100031928(v6, v5);
}

Swift::Int sub_10029DEB4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000318C0(v1, v2, v3, v4);
  Data.hash(into:)();
  sub_100031928(v1, v2);
  return Hasher._finalize()();
}

__n128 sub_10029DF14@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10029DF20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  *a3 = *v3;
  a3[1] = v5;
  return sub_1000318C0(v4, v5, a1, a2);
}

void *sub_10029DF2C(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000E2A8(v14, v14[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = Data.init(base64Encoded:options:)();
    v9 = v8;

    if (v9 >> 60 != 15)
    {
      sub_100003C3C(v14);
      sub_100003C3C(a1);
      return v7;
    }

    sub_10000E2A8(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    (*(v4 + 16))(v10, v6, v3);
    (*(*(v7 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100003C3C(v14);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t _s10DarwinInit9DInitDataV8argumentACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;

  v44 = a1;
  FilePath.init(_:)();
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000270B4(v18, qword_1004B00F8);
  v46 = *(v10 + 16);
  v46(v15, v17, v9);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v45 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = v17;
    v23 = v22;
    v24 = swift_slowAlloc();
    v43 = a2;
    v25 = v24;
    v51 = v24;
    *v23 = 136315138;
    sub_100190550();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v8;
    v28 = v27;
    v29 = v15;
    v30 = *(v10 + 8);
    v30(v29, v9);
    v31 = sub_1000026C0(v26, v28, &v51);
    v8 = v42;

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Loading raw data of file at %s", v23, 0xCu);
    sub_100003C3C(v25);

    v17 = v41;
  }

  else
  {

    v32 = v15;
    v30 = *(v10 + 8);
    v30(v32, v9);
  }

  v33 = v47;
  v46(v47, v17, v9);
  v34 = v48;
  (*(v49 + 104))(v48, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
  sub_1001746A8(v33, v34, v8);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  result = (*(v36 + 48))(v8, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = Data.init(contentsOf:options:)();
    v39 = (v36 + 8);
    v40 = v38;
    (*v39)(v8, v35);
    v30(v17, v9);

    return v40;
  }

  return result;
}

unint64_t sub_10029E6A8()
{
  result = qword_1004AF0D8;
  if (!qword_1004AF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0D8);
  }

  return result;
}

BOOL DInitCARoots.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489030, v2);

  return v3 != 0;
}

BOOL DInitCARoots.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489068, v2);

  return v3 != 0;
}

uint64_t sub_10029E79C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004890A0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10029E7F0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004890D8, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10029E848(uint64_t a1)
{
  v2 = sub_10029EA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029E884(uint64_t a1)
{
  v2 = sub_10029EA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *DInitCARoots.init(from:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF0E0, &qword_100404198);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_10029EA14()
{
  result = qword_1004AF0E8;
  if (!qword_1004AF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0E8);
  }

  return result;
}

uint64_t sub_10029EA68@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AF0E0, &qword_100404198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = v9;
  return result;
}

uint64_t DInitCARoots.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_1000039E8(&qword_1004AF0F0, &qword_1004041A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10029ECF8(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AF0F0, &qword_1004041A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

BOOL static DInitCARoots.== infix(_:_:)(int a1, int a2)
{
  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

BOOL sub_10029EE70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void DInitCARoots.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = a2 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int DInitCARoots.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = a1 & 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10029EF5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10029EFC0()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10029F008()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10029F06C()
{
  result = qword_1004AF0F8;
  if (!qword_1004AF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0F8);
  }

  return result;
}

unint64_t sub_10029F0C4()
{
  result = qword_1004AF100;
  if (!qword_1004AF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF100);
  }

  return result;
}

unint64_t sub_10029F11C()
{
  result = qword_1004AF108;
  if (!qword_1004AF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF108);
  }

  return result;
}

unint64_t sub_10029F174()
{
  result = qword_1004AF110;
  if (!qword_1004AF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitCARoots(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t SHA256Digest.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.description.getter();
  String.utf8CString.getter();

  v9 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  v10 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    v21 = v9;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v14 = v10;
    v15 = type metadata accessor for FilePath();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  else
  {
    v19 = a2;

    if ((vm_page_size & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      swift_slowAlloc();
      SHA256.init()();
      while (1)
      {
        v12 = FileDescriptor._read(into:retryOnInterrupt:)();
        if (v2)
        {
          break;
        }

        if (v13)
        {
          v20 = v12;
          v16 = v12;
          sub_100187D3C();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v17 = v16;
          break;
        }

        if (v12 <= 0)
        {
          SHA256.finalize()();
          break;
        }

        SHA256.update(bufferPointer:)();
      }

      (*(v6 + 8))(v8, v5);

      v18 = type metadata accessor for FilePath();
      return (*(*(v18 - 8) + 8))(a1, v18);
    }
  }

  return result;
}

uint64_t sub_10029F54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10029F5DC(uint64_t a1)
{
  v2 = sub_10029FDAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029F618(uint64_t a1)
{
  v2 = sub_10029FDAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10029F66C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10029FC3C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DInitNVRAMArguments.encode(to:)(void *a1, char a2)
{
  v4 = sub_1000039E8(&qword_1004AF118, &qword_1004043F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000E2A8(a1, a1[3]);
  sub_10029FDAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_10019C044();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void DInitNVRAMArguments.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int DInitNVRAMArguments.hashValue.getter(unsigned __int8 a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10029F988(uint64_t a1)
{
  if (*v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int sub_10029FA4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL _s10DarwinInit19DInitNVRAMArgumentsV2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  v3 = a1;
  if (!a1)
  {
    v5 = 0xE600000000000000;
    v4 = 0x746F6F626572;
    v6 = a2;
    if (a2)
    {
      goto LABEL_14;
    }

LABEL_23:
    v8 = 0xE600000000000000;
    if (v4 != 0x746F6F626572)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a1 == 1)
  {
    v4 = 0x6E776F6474756873;
  }

  else
  {
    v4 = 1953069157;
  }

  if (v3 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = a2;
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v6 == 1)
  {
    v7 = 0x6E776F6474756873;
  }

  else
  {
    v7 = 1953069157;
  }

  if (v6 == 1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 != v7)
  {
LABEL_26:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v9 & 1) != 0;
  }

LABEL_24:
  if (v5 != v8)
  {
    goto LABEL_26;
  }

  return 1;
}

void *sub_10029FC3C(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF148, &qword_100404608);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10029FDAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10019C280();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_10029FDAC()
{
  result = qword_1004AF120;
  if (!qword_1004AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF120);
  }

  return result;
}

unint64_t sub_10029FE04()
{
  result = qword_1004AF128;
  if (!qword_1004AF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitNVRAMArguments(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_10029FF1C()
{
  result = qword_1004AF130;
  if (!qword_1004AF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF130);
  }

  return result;
}

unint64_t sub_10029FF74()
{
  result = qword_1004AF138;
  if (!qword_1004AF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF138);
  }

  return result;
}

unint64_t sub_10029FFCC()
{
  result = qword_1004AF140;
  if (!qword_1004AF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF140);
  }

  return result;
}

uint64_t ExclusiveLockedFile.deinit()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v1);
  sub_1002A0744(v5, v4);
  v7 = *(v2 + 8);
  v7(v4, v1);
  v7((v0 + v6), v1);
  return v0;
}

uint64_t ExclusiveLockedFile.__deallocating_deinit()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v1);
  sub_1002A0744(v5, v4);
  v7 = *(v2 + 8);
  v7(v4, v1);
  v7((v0 + v6), v1);
  return swift_deallocClassInstance();
}

uint64_t static ExclusiveLockedFile.open(_:permissions:nonBlocking:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1002A0B48(a1, v5, v4);
  if (!v3)
  {
    v12 = v11;
    (*(v8 + 16))(v10, a1, v7);
    type metadata accessor for ExclusiveLockedFile(0);
    a1 = swift_allocObject();
    *(a1 + 16) = v12;
    (*(v8 + 32))(a1 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v10, v7);
  }

  return a1;
}

uint64_t static ExclusiveLockedFile.withLock<A>(on:permissions:nonBlocking:_:)(uint64_t a1, uint64_t a2, __int16 a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 70) = a4;
  *(v6 + 68) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return _swift_task_switch(sub_1002A0410, 0, 0);
}

uint64_t sub_1002A0410()
{
  *(v0 + 64) = sub_1002A0B48(*(v0 + 24), *(v0 + 68), *(v0 + 70));
  v4 = (*(v0 + 32) + **(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1002A0560;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1002A0560()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1002A06DC;
  }

  else
  {
    v2 = sub_1002A0674;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A0674()
{
  sub_1002A0744(*(v0 + 64), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A06DC()
{
  sub_1002A0744(*(v0 + 64), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002A0744(int a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v35 - v9;
  if (qword_1004A9F30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000270B4(v11, static Logger.filesystem);
  v38 = *(v5 + 16);
  v38(v10, a2, v4);
  v39 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v40 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35[1] = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v36 = a2;
    v19 = v18;
    v41[0] = v18;
    *v17 = 136315138;
    sub_100190550();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v8;
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v10, v4);
    v24 = sub_1000026C0(v20, v22, v41);
    v8 = v37;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Releasing exclusive lock on %s", v17, 0xCu);
    sub_100003C3C(v19);
    a2 = v36;
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v10, v4);
  }

  FilePath.withCString<A>(_:)();
  FileDescriptor.closeNoThrow()();
  v38(v8, a2, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = v23;
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v27 = 136315138;
    sub_100190550();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v8;
    v33 = v32;
    v28(v31, v4);
    v34 = sub_1000026C0(v30, v33, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Released exclusive lock on %s", v27, 0xCu);
    sub_100003C3C(v29);
  }

  else
  {

    v23(v8, v4);
  }
}

NSObject *sub_1002A0B48(uint64_t a1, int a2, int a3)
{
  v72 = a2;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v65 - v11;
  v13 = __chkstk_darwin(v10);
  v67 = v65 - v14;
  __chkstk_darwin(v13);
  v16 = v65 - v15;
  if (qword_1004A9F30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000270B4(v17, static Logger.filesystem);
  v19 = *(v7 + 16);
  v75 = a1;
  v74 = v7 + 16;
  v73 = v19;
  v19(v16, a1, v6);
  v69 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v70 = v7;
  v66 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v65[1] = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v71 = v6;
    v26 = v25;
    v77[0] = v25;
    *v24 = 136315138;
    sub_100190550();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v7 + 8);
    v30(v16, v71);
    v31 = sub_1000026C0(v27, v29, v77);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Acquiring exclusive lock on %s", v24, 0xCu);
    sub_100003C3C(v26);
    v6 = v71;
  }

  else
  {

    v30 = *(v7 + 8);
    v32 = v30(v16, v6);
  }

  v71 = v30;
  while (1)
  {
    __chkstk_darwin(v32);
    *&v65[-4] = 0x100020000000002;
    LOWORD(v65[-2]) = v72;
    HIWORD(v65[-2]) = v33;
    FilePath.withCString<A>(_:)();
    if (v3)
    {
      break;
    }

    v34 = LODWORD(v77[0]);
    v77[0] = 0;
    v77[1] = 0;
    v77[2] = 0x300000000;
    v35 = v75;
    while (fcntl(_:_:_:)() == -1)
    {
      v36 = errno.getter();
      if (v36 != 4)
      {
        v38 = v36;
        sub_100187D3C();
        swift_allocError();
        *v39 = v38;
        v40 = v75;
        swift_willThrow();
        FileDescriptor.closeNoThrow()();
        swift_willThrow();
        v41 = v68;
        goto LABEL_14;
      }
    }

    v37 = v67;
    v73(v67, v35, v6);
    sub_1002EC1CC(v37, &v76);
    if (v76.st_nlink)
    {
      v54 = v66;
      v73(v66, v35, v6);
      v55 = Logger.logObject.getter();
      v56 = v6;
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77[0] = v59;
        *v58 = 136315394;
        sub_100190550();
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v54;
        v63 = v62;
        v71(v61, v56);
        v64 = sub_1000026C0(v60, v63, v77);

        *(v58 + 4) = v64;
        *(v58 + 12) = 1024;
        *(v58 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v55, v57, "Acquired exclusive lock on %s with fd %d", v58, 0x12u);
        sub_100003C3C(v59);
      }

      else
      {

        v71(v54, v56);
      }

      return v34;
    }

    FileDescriptor.closeNoThrow()();
  }

  v41 = v68;
  v40 = v75;
LABEL_14:
  v73(v41, v40, v6);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v42 = v6;
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v77[0] = v46;
    *v44 = 136315394;
    sub_100190550();
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v41;
    v50 = v49;
    v71(v48, v42);
    v51 = sub_1000026C0(v47, v50, v77);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2112;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v52;
    *v45 = v52;
    _os_log_impl(&_mh_execute_header, v34, v43, "Failed to acquire exclusive locked file '%s': %@", v44, 0x16u);
    sub_10019AC78(v45);

    sub_100003C3C(v46);
  }

  else
  {

    v71(v41, v42);
  }

  swift_willThrow();
  return v34;
}

uint64_t type metadata accessor for ExclusiveLockedFile(uint64_t a1)
{
  result = qword_1004AF180;
  if (!qword_1004AF180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A13EC(uint64_t a1)
{
  result = type metadata accessor for FilePath();
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

uint64_t static FilePath.newTemporaryPath()@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  FilePath.init(_:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    strcpy(v18, "darwin-init-");
    HIBYTE(v18[6]) = 0;
    v18[7] = -5120;
    UUID.init()();
    sub_1002A3494(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    (*(v2 + 8))(v4, v1);
    return FilePath.appending(_:)();
  }

  return result;
}

void *FilePath.save(_:append:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for URL.DirectoryHint();
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v9 - 8);
  v69 = &v59 - v10;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = (&v59 - v18);
  if ((a3 & 1) == 0)
  {
    v64 = v17;
    v65 = v7;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000270B4(v29, qword_1004B00F8);
    v15 = (v12 + 16);
    v30 = v11;
    v63 = *(v12 + 16);
    v63(v19, v70, v11);
    sub_1000318C0(a1, a2, v31, v32);
    v33 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v33, v62))
    {
      sub_100031928(a1, a2);

      (*(v12 + 8))(v19, v11);
      goto LABEL_34;
    }

    v25 = v3;
    v21 = swift_slowAlloc();
    result = swift_slowAlloc();
    v60 = result;
    v71 = result;
    *v21 = 134218242;
    v28 = a2 >> 62;
    v66 = v3;
    v61 = v33;
    if ((a2 >> 62) <= 1)
    {
      if (v28)
      {
        LODWORD(v34) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v34 = v34;
      }

      else
      {
        v34 = BYTE6(a2);
      }

LABEL_33:
      *(v21 + 4) = v34;
      sub_100031928(a1, a2);
      *(v21 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v30 = v11;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v12 + 8))(v19, v11);
      v51 = sub_1000026C0(v48, v50, &v71);

      *(v21 + 14) = v51;
      v52 = v61;
      _os_log_impl(&_mh_execute_header, v61, v62, "Saving %ld bytes of data to file at %s", v21, 0x16u);
      sub_100003C3C(v60);

LABEL_34:
      v54 = v64;
      v53 = v65;
      v63(v64, v70, v30);
      v55 = v67;
      (v68[13])(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v53);
      v56 = v69;
      sub_1001746A8(v54, v55, v69);
      v57 = type metadata accessor for URL();
      v58 = *(v57 - 8);
      result = (*(v58 + 48))(v56, 1, v57);
      if (result != 1)
      {
        Data.write(to:options:)();
        return (*(v58 + 8))(v56, v57);
      }

LABEL_39:
      __break(1u);
      return result;
    }

LABEL_20:
    if (v28 == 2)
    {
      v40 = *(a1 + 16);
      v39 = *(a1 + 24);
      v38 = __OFSUB__(v39, v40);
      v34 = v39 - v40;
      if (v38)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_33;
  }

  v66 = v3;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000270B4(v20, qword_1004B00F8);
  v21 = v11;
  (*(v12 + 16))(v15, v70, v11);
  sub_1000318C0(a1, a2, v22, v23);
  v19 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v19, v24))
  {
    sub_100031928(a1, a2);

    v35 = (*(v12 + 8))(v15, v11);
    goto LABEL_30;
  }

  v25 = swift_slowAlloc();
  result = swift_slowAlloc();
  v68 = result;
  v71 = result;
  *v25 = 134218242;
  v27 = a2 >> 62;
  LODWORD(v69) = v24;
  if ((a2 >> 62) > 1)
  {
    if (v27 != 2)
    {
      v28 = 0;
      goto LABEL_29;
    }

    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v38 = __OFSUB__(v36, v37);
    v28 = v36 - v37;
    if (!v38)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v27)
  {
LABEL_24:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v28 = v28;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_38;
  }

  v28 = BYTE6(a2);
LABEL_29:
  *(v25 + 4) = v28;
  sub_100031928(a1, a2);
  *(v25 + 12) = 2080;
  sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = a2;
  v44 = v43;
  (*(v12 + 8))(v15, v11);
  v45 = sub_1000026C0(v41, v44, &v71);
  a2 = v42;

  *(v25 + 14) = v45;
  _os_log_impl(&_mh_execute_header, v19, v69, "Appending %ld bytes of string to file at %s", v25, 0x16u);
  sub_100003C3C(v68);

LABEL_30:
  __chkstk_darwin(v35);
  *(&v59 - 2) = 0x20800000001;
  *(&v59 - 2) = 16777636;
  v46 = v66;
  result = FilePath.withCString<A>(_:)();
  if (!v46)
  {
    __chkstk_darwin(result);
    *(&v59 - 8) = v47;
    *(&v59 - 3) = a1;
    *(&v59 - 2) = a2;
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t FilePath.loadData()()
{
  v37 = type metadata accessor for URL.DirectoryHint();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000270B4(v12, qword_1004B00F8);
  v13 = *(v7 + 16);
  v36 = v0;
  v32 = v13;
  v13(v11, v0, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v29 = swift_slowAlloc();
    v38 = v29;
    *v17 = 136315138;
    sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v5;
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000026C0(v18, v20, &v38);
    v5 = v30;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Loading raw data of file at %s", v17, 0xCu);
    sub_100003C3C(v29);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v33;
  v32(v33, v36, v6);
  v23 = v34;
  (*(v35 + 104))(v34, enum case for URL.DirectoryHint.inferFromPath(_:), v37);
  sub_1001746A8(v22, v23, v5);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v5, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v27 = Data.init(contentsOf:options:)();
    (*(v25 + 8))(v5, v24);
    return v27;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.loadString()()
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v4 = (v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for URL.DirectoryHint();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v7 - 8);
  v43 = v36 - v8;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);
  v16 = *(v10 + 16);
  v42 = v0;
  v37 = v16;
  v16(v14, v0, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36[2] = v1;
    v20 = v19;
    v36[0] = swift_slowAlloc();
    v44 = v36[0];
    *v20 = 136315138;
    sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v36[1] = v4;
    v23 = v22;
    (*(v10 + 8))(v14, v9);
    v24 = sub_1000026C0(v21, v23, &v44);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Loading utf8 data of file at %s", v20, 0xCu);
    sub_100003C3C(v36[0]);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v25 = v38;
  v37(v38, v42, v9);
  v26 = v39;
  (*(v40 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
  v27 = v43;
  sub_1001746A8(v25, v26, v43);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v27, 1, v28);
  if (v30 == 1)
  {
    __break(1u);
  }

  else
  {
    static String.Encoding.utf8.getter();
    v32 = String.init(contentsOf:encoding:)();
    v34 = v33;
    (*(v29 + 8))(v27, v28);
    v30 = v32;
    v31 = v34;
  }

  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.save(_:append:)(Swift::String _, Swift::Bool append)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for String.Encoding();
  v58 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v10 - 8);
  v62 = (&v50 - v11);
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - v18;
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  if (append)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000270B4(v22, qword_1004B00F8);
    (*(v13 + 16))(v16, v65, v12);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v56 = v2;
      v25 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = v62;
      *v25 = 134218242;
      if ((object & 0x1000000000000000) != 0)
      {
        v26 = String.UTF8View._foreignCount()();
      }

      else if ((object & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(object) & 0xF;
      }

      else
      {
        v26 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *(v25 + 4) = v26;

      *(v25 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = object;
      v30 = v29;
      (*(v13 + 8))(v16, v12);
      v31 = sub_1000026C0(v27, v30, v64);
      object = v28;

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Appending %ld bytes of string to file at %s", v25, 0x16u);
      sub_100003C3C(v62);

      v3 = v56;
    }

    else
    {

      v32 = (*(v13 + 8))(v16, v12);
    }

    __chkstk_darwin(v32);
    *(&v50 - 2) = 0x20800000001;
    *(&v50 - 2) = 16777636;
    v43 = FilePath.withCString<A>(_:)();
    if (!v3)
    {
      __chkstk_darwin(v43);
      *(&v50 - 8) = v44;
      *(&v50 - 3) = countAndFlagsBits;
      *(&v50 - 2) = object;
      FileDescriptor.closeAfter<A>(_:)();
    }
  }

  else
  {
    v54 = v6;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000270B4(v33, qword_1004B00F8);
    v55 = *(v13 + 16);
    v55(v21, v65, v12);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v53 = v35;
      v36 = object;
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v64[0] = v52;
      *v37 = 134218242;
      v56 = v2;
      if ((v36 & 0x1000000000000000) != 0)
      {
        v38 = String.UTF8View._foreignCount()();
      }

      else if ((v36 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(v36) & 0xF;
      }

      else
      {
        v38 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *(v37 + 4) = v38;

      *(v37 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v51 = v36;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v13 + 8))(v21, v12);
      v42 = sub_1000026C0(v39, v41, v64);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v53, "Saving %ld bytes of data to file at %s", v37, 0x16u);
      sub_100003C3C(v52);

      object = v51;
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    v64[0] = countAndFlagsBits;
    v64[1] = object;
    v55(v19, v65, v12);
    v45 = v59;
    (*(v60 + 104))(v59, enum case for URL.DirectoryHint.inferFromPath(_:), v61);
    v46 = v62;
    sub_1001746A8(v19, v45, v62);
    v47 = type metadata accessor for URL();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = v57;
      static String.Encoding.utf8.getter();
      sub_10000B080();
      StringProtocol.write(to:atomically:encoding:)();
      (*(v58 + 8))(v49, v54);
      (*(v48 + 8))(v46, v47);
    }
  }
}

uint64_t static FilePath.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  FilePath.init(_:)();
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A333C@<X0>(uint64_t *a4@<X8>)
{
  sub_1002A3570();
  result = FileDescriptor._writeAll<A>(_:)();
  if (v6)
  {
    v7 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1002A33E8@<X0>(uint64_t *a4@<X8>)
{
  sub_1002A351C();
  result = FileDescriptor._writeAll<A>(_:)();
  if (v6)
  {
    v7 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1002A3494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002A351C()
{
  result = qword_1004AF210;
  if (!qword_1004AF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF210);
  }

  return result;
}

unint64_t sub_1002A3570()
{
  result = qword_1004AF218;
  if (!qword_1004AF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF218);
  }

  return result;
}

uint64_t Config.prepare(on:)()
{
  v1[212] = v0;
  sub_1000039E8(&qword_1004AF220, &qword_100404688);
  v1[213] = swift_task_alloc();
  v2 = type metadata accessor for PrepareError(0);
  v1[214] = v2;
  v1[215] = *(v2 - 8);
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v3 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v1[218] = v3;
  v1[219] = *(v3 - 8);
  v1[220] = swift_task_alloc();
  v1[221] = sub_1000039E8(&qword_1004ABB80, &unk_100404690);
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v4 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v1[224] = v4;
  v1[225] = *(v4 - 8);
  v1[226] = swift_task_alloc();
  v1[227] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v1[228] = v5;
  v1[229] = *(v5 - 8);
  v1[230] = swift_task_alloc();
  sub_1000039E8(&qword_1004AD1B8, &unk_1003FC2E0);
  v1[231] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v1[232] = swift_task_alloc();

  return _swift_task_switch(sub_1002A38A0, 0, 0);
}

uint64_t sub_1002A38A0()
{
  v111 = v0;
  v1 = *(v0 + 1696);
  memcpy((v0 + 280), (v1 + 216), 0x101uLL);
  memcpy((v0 + 16), (v1 + 216), 0x101uLL);
  if (sub_100220C40((v0 + 16)) == 1)
  {
    goto LABEL_39;
  }

  memcpy((v0 + 544), (v0 + 16), 0x101uLL);
  v2 = *(v0 + 256);
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = *(v0 + 1848);
  v4 = *(v0 + 1696);
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  v7 = *(v4 + 8);
  *(v0 + 1368) = *(v4 + 40);
  *(v0 + 1384) = v6;
  *(v0 + 1336) = v7;
  *(v0 + 1352) = v5;
  v8 = *(v4 + 88);
  v9 = *(v4 + 104);
  v10 = *(v4 + 72);
  *(v0 + 1448) = *(v4 + 120);
  *(v0 + 1416) = v8;
  *(v0 + 1432) = v9;
  *(v0 + 1400) = v10;
  v11 = *(v4 + 88);
  v109[4] = *(v4 + 72);
  v109[5] = v11;
  v109[6] = *(v4 + 104);
  v110 = *(v4 + 120);
  v12 = *(v4 + 24);
  v109[0] = *(v4 + 8);
  v109[1] = v12;
  v13 = *(v4 + 56);
  v109[2] = *(v4 + 40);
  v109[3] = v13;
  v14 = v4 + *(type metadata accessor for Config(0) + 36);
  v15 = sub_1000039E8(&qword_1004ACDA0, &qword_1003FA370);
  sub_100013E54(v14 + *(v15 + 44), v3, &qword_1004AD1B8, &unk_1003FC2E0);
  v16 = type metadata accessor for Config.Diavlo(0);
  v17 = (*(*(v16 - 8) + 48))(v3, 1, v16);
  v18 = *(v0 + 1856);
  v19 = *(v0 + 1848);
  if (v17 == 1)
  {
    sub_100013E54(v0 + 280, v0 + 808, &qword_1004ACE90, &unk_1003FA3F0);

    sub_100013E54(v0 + 1336, v0 + 1456, &qword_1004AD1E0, &qword_1003FC318);
    sub_100013F2C(v19, &qword_1004AD1B8, &unk_1003FC2E0);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  else
  {
    v21 = sub_1000039E8(&qword_1004ACD10, &qword_1003FA110);
    sub_100013E54(v19 + *(v21 + 44), v18, &qword_1004A6D30, &unk_100376820);
    sub_100013E54(v0 + 280, v0 + 1072, &qword_1004ACE90, &unk_1003FA3F0);

    sub_100013E54(v0 + 1336, v0 + 1576, &qword_1004AD1E0, &qword_1003FC318);
    sub_1002A732C(v19, type metadata accessor for Config.Diavlo);
  }

  v22 = *(v0 + 1856);
  type metadata accessor for CryptexManager();
  *(v0 + 1864) = CryptexManager.__allocating_init(from:auth:diavlo:)(v0 + 544, v109, v22);
  v23 = *(v2 + 16);
  if (v23)
  {
    v96 = *(v0 + 1792);
    v97 = *(v0 + 1800);
    v94 = *(v0 + 1768);
    v95 = *(v0 + 1776);
    v24 = *(v0 + 1760);
    v92 = *(v0 + 1752);
    v107 = *(v0 + 1744);
    *&v109[0] = _swiftEmptyArrayStorage;
    sub_100311128(0, v23, 0);
    v108 = *&v109[0];
    v25 = v2 + 64;
    v26 = _HashTable.startBucket.getter();
    v27 = 0;
    v28 = *(v2 + 36);
    v93 = v24;
    v90 = v2;
    v91 = v24 + 8;
    v85 = v2 + 72;
    v86 = v23;
    v87 = v28;
    v88 = v2 + 64;
    v89 = v0;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v2 + 32))
    {
      if ((*(v25 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_44;
      }

      if (v28 != *(v2 + 36))
      {
        goto LABEL_45;
      }

      v99 = 1 << v26;
      v100 = v26 >> 6;
      v98 = v27;
      v30 = *(v0 + 1784);
      v31 = *(v94 + 48);
      v32 = *(v0 + 1816);
      v33 = *(v0 + 1776);
      v34 = *(v0 + 1760);
      v35 = (*(v2 + 48) + 16 * v26);
      v36 = *v35;
      v37 = v35[1];
      v106 = v26;
      sub_1002A6D54(*(v2 + 56) + *(v92 + 72) * v26, v30 + v31, type metadata accessor for Config.Cryptex.Cryptex);
      *v33 = v36;
      *(v95 + 8) = v37;
      v38 = *(v94 + 48);
      v105 = v33;
      sub_1002A6CEC(v30 + v31, v33 + v38, type metadata accessor for Config.Cryptex.Cryptex);
      v39 = v33 + v38;
      v40 = v34;
      sub_1002A6D54(v39, v34, type metadata accessor for Config.Cryptex.Cryptex);
      v102 = v96[7];
      v41 = (v32 + v96[6]);
      v42 = v32 + v96[8];
      v43 = (v32 + v96[9]);
      v104 = v96[10];
      v44 = v32 + v96[11];
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
      *v44 = 0u;
      v45 = v96[12];
      v46 = (v32 + v96[5]);
      *v46 = v36;
      v46[1] = v37;
      v47 = v40 + v107[10];
      v48 = v40;
      v101 = v40;
      v49 = *(sub_1000039E8(&qword_1004ACD08, &unk_1004046A0) + 44);
      v50 = type metadata accessor for URL();
      (*(*(v50 - 8) + 16))(v32, v47 + v49, v50);
      *(v32 + v45) = *(v93 + 96);
      v51 = *(v93 + 144);
      *v42 = *(v93 + 136);
      *(v42 + 8) = v51;
      v52 = *(v93 + 120);
      *v43 = *(v93 + 112);
      v43[1] = v52;
      v53 = v48 + v107[11];
      v54 = *(v53 + 16);
      *v41 = *(v53 + 8);
      v41[1] = v54;
      *(v32 + v102) = *(v93 + 64);
      v56 = *(v93 + 8);
      v55 = *(v93 + 16);
      v58 = *(v93 + 24);
      v57 = *(v93 + 32);
      v59 = *(v93 + 40);
      v60 = *(v93 + 48);
      v103 = *v44;

      swift_bridgeObjectRetain_n();

      sub_10021E528(v56, v55, v58, v57, v59, v60);
      sub_10021E638(v103);
      *v44 = v56;
      *(v44 + 8) = v55;
      *(v44 + 16) = v58;
      *(v44 + 24) = v57;
      *(v44 + 32) = v59;
      *(v44 + 40) = v60;
      LOBYTE(v59) = *(v91 + v107[13]);
      sub_1002A732C(v101, type metadata accessor for Config.Cryptex.Cryptex);
      *(v32 + v104) = v59;
      sub_100013F2C(v105, &qword_1004ABB80, &unk_100404690);
      *&v109[0] = v108;
      v0 = v108[2];
      v61 = v108[3];
      if (v0 >= v61 >> 1)
      {
        sub_100311128((v61 > 1), v0 + 1, 1);
        v108 = *&v109[0];
      }

      v23 = v89;
      v62 = *(v89 + 1816);
      v108[2] = v0 + 1;
      sub_1002A6CEC(v62, v108 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v0, type metadata accessor for CryptexManager.CryptexConfig);
      v2 = v90;
      v29 = 1 << *(v90 + 32);
      if (v106 >= v29)
      {
        goto LABEL_46;
      }

      v25 = v88;
      v63 = *(v88 + 8 * v100);
      if ((v63 & v99) == 0)
      {
        goto LABEL_47;
      }

      v28 = v87;
      if (v87 != *(v90 + 36))
      {
        goto LABEL_48;
      }

      v0 = v89;
      v64 = v63 & (-2 << (v106 & 0x3F));
      if (v64)
      {
        v29 = __clz(__rbit64(v64)) | v106 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v65 = v100 << 6;
        v66 = (v85 + 8 * v100);
        v67 = v100 + 1;
        while (v67 < (v29 + 63) >> 6)
        {
          v69 = *v66++;
          v68 = v69;
          v65 += 64;
          ++v67;
          if (v69)
          {
            sub_100220ACC(v106, v87, 0);
            v29 = __clz(__rbit64(v68)) + v65;
            goto LABEL_9;
          }
        }

        sub_100220ACC(v106, v87, 0);
      }

LABEL_9:
      v27 = v98 + 1;
      v26 = v29;
      v23 = v86;
      if (v98 + 1 == v86)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v108 = _swiftEmptyArrayStorage;
LABEL_27:
  *(v0 + 1872) = v108;
  type metadata accessor for CryptexCacheDelegate();
  v23 = swift_allocObject();
  *(v0 + 1880) = v23;
  if (qword_1004A9DE8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v70 = *(v0 + 1840);
  v71 = *(v0 + 1832);
  v72 = *(v0 + 1824);
  v73 = sub_1000270B4(v72, static Cache<>.defaultCacheDirectoryPath);
  (*(v71 + 16))(v70, v73, v72);
  sub_1000039E8(&qword_1004AEA00, &qword_100402ED8);
  swift_allocObject();

  result = sub_1002A6784(v70, v23, 0x7FFFFFFFFFFFFFFFLL);
  *(v0 + 1888) = result;
  if (result)
  {
    v75 = v108[2];
    *(v0 + 1896) = v75;
    if (v75)
    {
      v76 = *(v0 + 1800);
      *(v0 + 1912) = 0;
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v77 = *(v0 + 1872);
      if (*(v77 + 16))
      {
        v78 = result;
        sub_1002A6D54(v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), *(v0 + 1808), type metadata accessor for CryptexManager.CryptexConfig);
        v79 = swift_task_alloc();
        *(v0 + 1920) = v79;
        *v79 = v0;
        v79[1] = sub_1002A4414;
        v80 = *(v0 + 1864);
        v81 = *(v0 + 1808);
        v82 = *(v0 + 1704);

        return sub_1002A539C(v82, v81, v80, v78);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      sub_1002A6DBC();
      swift_allocError();
      *v83 = _swiftEmptyArrayStorage;
      swift_willThrow();

      goto LABEL_37;
    }

LABEL_39:

    v84 = *(v0 + 8);
    goto LABEL_40;
  }

  sub_1002A6C98();
  swift_allocError();
  swift_willThrow();
LABEL_37:

  v84 = *(v0 + 8);
LABEL_40:

  return v84();
}

uint64_t sub_1002A4414()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 1808);

    sub_1002A732C(v3, type metadata accessor for CryptexManager.CryptexConfig);

    v4 = DInitData.init(rawValue:);
  }

  else
  {
    sub_1002A732C(*(v2 + 1808), type metadata accessor for CryptexManager.CryptexConfig);
    v4 = sub_1002A457C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A457C()
{
  v1 = v0[213];
  if ((*(v0[215] + 48))(v1, 1, v0[214]) == 1)
  {
    result = sub_100013F2C(v1, &qword_1004AF220, &qword_100404688);
    v3 = v0[238];
  }

  else
  {
    v4 = v0[217];
    v5 = v0[216];
    sub_1002A6CEC(v1, v4, type metadata accessor for PrepareError);
    sub_1002A6D54(v4, v5, type metadata accessor for PrepareError);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[238];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_10018CF64(0, v3[2] + 1, 1, v0[238]);
    }

    v8 = v3[2];
    v7 = v3[3];
    if (v8 >= v7 >> 1)
    {
      v3 = sub_10018CF64((v7 > 1), v8 + 1, 1, v3);
    }

    v9 = v0[216];
    v10 = v0[215];
    sub_1002A732C(v0[217], type metadata accessor for PrepareError);
    v3[2] = v8 + 1;
    result = sub_1002A6CEC(v9, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for PrepareError);
  }

  v11 = v0[239] + 1;
  if (v11 == v0[237])
  {

    if (v3[2])
    {
      sub_1002A6DBC();
      swift_allocError();
      *v12 = v3;
      swift_willThrow();
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[239] = v11;
    v0[238] = v3;
    v14 = v0[234];
    if (v11 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = v0[236];
      sub_1002A6D54(v14 + ((*(v0[225] + 80) + 32) & ~*(v0[225] + 80)) + *(v0[225] + 72) * v11, v0[226], type metadata accessor for CryptexManager.CryptexConfig);
      v16 = swift_task_alloc();
      v0[240] = v16;
      *v16 = v0;
      v16[1] = sub_1002A4414;
      v17 = v0[233];
      v18 = v0[226];
      v19 = v0[213];

      return sub_1002A539C(v19, v18, v17, v15);
    }
  }

  return result;
}

uint64_t PrepareError.init(url:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PrepareError(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for PrepareError(uint64_t a1)
{
  result = qword_1004AF2D8;
  if (!qword_1004AF2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrepareError.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrepareError(0) + 20));
  swift_errorRetain();
  return v1;
}

DarwinInit::PrepareError::CodingKeys_optional __swiftcall PrepareError.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489110, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_PrepareError_CodingKeys_errorMessage;
  }

  else
  {
    v4.value = DarwinInit_PrepareError_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PrepareError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73654D726F727265;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1002A4B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73654D726F727265;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEC00000065676173;
  }

  if (*a2)
  {
    v5 = 0x73654D726F727265;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xEC00000065676173;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002A4C00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4C84(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A4CF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4D74@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489110, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002A4DD4(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x73654D726F727265;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEC00000065676173;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002A4E14()
{
  if (*v0)
  {
    return 0x73654D726F727265;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1002A4E50@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489110, v3);

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

uint64_t sub_1002A4EB4(uint64_t a1)
{
  v2 = sub_1002A6E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002A4EF0(uint64_t a1)
{
  v2 = sub_1002A6E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PrepareError.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF238, &qword_1004046C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000E2A8(a1, a1[3]);
  sub_1002A6E10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  URL.absoluteString.getter();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {

    type metadata accessor for PrepareError(0);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t PrepareErrors.localizedDescription.getter(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v4 + 104))(v6, enum case for JSONEncoder.KeyEncodingStrategy.convertToSnakeCase(_:), v3);
  dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();
  v14[5] = a1;

  sub_1000039E8(&qword_1004AF248, &qword_1004046C8);
  sub_1002A6E64();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = v11;

  sub_100031928(v7, v9);
  if (v12)
  {
    return v10;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1002A539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002A546C, 0, 0);
}

uint64_t sub_1002A546C()
{
  v21 = v0;
  if (qword_1004A9DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 184) = sub_1000270B4(v3, static Cache<>.logger);
  sub_1002A6D54(v2, v1, type metadata accessor for CryptexManager.CryptexConfig);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = (v7 + *(v8 + 20));
    v12 = *v11;
    v13 = v11[1];

    sub_1002A732C(v7, type metadata accessor for CryptexManager.CryptexConfig);
    v14 = sub_1000026C0(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Prefetching", v9, 0xCu);
    sub_100003C3C(v10);
  }

  else
  {

    sub_1002A732C(v7, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v19 = (*(**(v0 + 136) + 120) + **(**(v0 + 136) + 120));
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_1002A5738;
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);

  return v19(v16, v17);
}

uint64_t sub_1002A5738()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1002A5BA4;
  }

  else
  {
    v2 = sub_1002A584C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A584C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v2 + 104);
  v4 = *(v2 + 88);
  *(v0 + 72) = *(v2 + 72);
  *(v0 + 88) = v4;
  *(v0 + 104) = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 48);
  v7 = *(v2 + 16);
  *(v0 + 64) = *(v2 + 64);
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v12 = (*(*v1 + 184) + **(*v1 + 184));
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_1002A59A8;
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  return v12(v0 + 112, v10, v0 + 72, v0 + 16, v9);
}

uint64_t sub_1002A59A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002A5E74;
  }

  else
  {

    v2 = sub_1002A5AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A5AC4()
{
  sub_1002A732C(v0[19], type metadata accessor for CryptexCacheDelegate.AccessParameter);
  v1 = type metadata accessor for PrepareError(0);
  (*(*(v1 - 8) + 56))(v0[15], 1, 1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A5BA4()
{
  v22 = v0;
  v1 = v0[25];
  sub_1002A6D54(v0[16], v0[21], type metadata accessor for CryptexManager.CryptexConfig);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    v10 = (v5 + *(v6 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
    v13 = sub_1000026C0(v11, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to handle cache access: %@", v7, 0x16u);
    sub_100013F2C(v8, &qword_1004AA050, &unk_1003F2F10);

    sub_100003C3C(v9);
  }

  else
  {

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(v16, v15, v17);
  v18 = type metadata accessor for PrepareError(0);
  *(v16 + *(v18 + 20)) = v1;
  (*(*(v18 - 8) + 56))(v0[15], 0, 1);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002A5E74()
{
  v22 = v0;
  sub_1002A732C(v0[19], type metadata accessor for CryptexCacheDelegate.AccessParameter);
  v1 = v0[27];
  sub_1002A6D54(v0[16], v0[21], type metadata accessor for CryptexManager.CryptexConfig);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    v10 = (v5 + *(v6 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
    v13 = sub_1000026C0(v11, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to handle cache access: %@", v7, 0x16u);
    sub_100013F2C(v8, &qword_1004AA050, &unk_1003F2F10);

    sub_100003C3C(v9);
  }

  else
  {

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(v16, v15, v17);
  v18 = type metadata accessor for PrepareError(0);
  *(v16 + *(v18 + 20)) = v1;
  (*(*(v18 - 8) + 56))(v0[15], 0, 1);

  v19 = v0[1];

  return v19();
}

uint64_t prepareString(from:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = type metadata accessor for Config(0);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for String.Encoding();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002A6250, 0, 0);
}

uint64_t sub_1002A6250()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_beginAccess();
  v4 = static RealComputer.shared;
  v0[17] = static RealComputer.shared;
  type metadata accessor for JSONDecoder();
  swift_allocObject();

  v0[18] = JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  v0[19] = v5;
  v0[20] = v6;
  (*(v2 + 8))(v1, v3);
  if (v7 >> 60 == 15)
  {
    sub_100187D3C();
    swift_allocError();
    *v8 = 22;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_1002A738C(&qword_1004AC910, type metadata accessor for Config, &protocol conformance descriptor for Config);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v0[5] = type metadata accessor for RealComputer();
    v0[6] = &protocol witness table for RealComputer;
    v0[2] = v4;

    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1002A64F8;

    return Config.prepare(on:)();
  }
}

uint64_t sub_1002A64F8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1002A66C8;
  }

  else
  {
    sub_100003C3C((v2 + 16));
    v3 = sub_1002A6614;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A6614()
{
  v1 = v0[13];
  sub_100031914(v0[19], v0[20]);

  sub_1002A732C(v1, type metadata accessor for Config);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A66C8()
{
  v1 = v0[13];
  sub_100031914(v0[19], v0[20]);

  sub_1002A732C(v1, type metadata accessor for Config);
  sub_100003C3C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A6784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = direct field offset for Cache.cacheRootDirectory;
  v16 = *(v9 + 16);
  v22 = a1;
  v17 = a1;
  v18 = v16;
  v16((v4 + direct field offset for Cache.cacheRootDirectory), v17, v8);
  *(v4 + qword_1004B0AC8) = a3 & ~(a3 >> 63);
  *(v4 + *(*v4 + 112)) = a2;
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19 = *(v9 + 32);
  v19(v4 + *(*v4 + 120), v14, v8);
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19(v4 + *(*v4 + 128), v14, v8);
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19(v4 + *(*v4 + 136), v14, v8);
  FilePath.createDirectory(permissions:intermediateDirectories:)(448, 1);
  (*(v9 + 8))(v22, v8);
  return v4;
}

unint64_t sub_1002A6C98()
{
  result = qword_1004AF228;
  if (!qword_1004AF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF228);
  }

  return result;
}

uint64_t sub_1002A6CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A6D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A6DBC()
{
  result = qword_1004AF230;
  if (!qword_1004AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF230);
  }

  return result;
}

unint64_t sub_1002A6E10()
{
  result = qword_1004AF240;
  if (!qword_1004AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF240);
  }

  return result;
}

unint64_t sub_1002A6E64()
{
  result = qword_1004AF250;
  if (!qword_1004AF250)
  {
    sub_100003A94(&qword_1004AF248, &qword_1004046C8);
    sub_1002A738C(&qword_1004AF258, type metadata accessor for PrepareError, &protocol conformance descriptor for PrepareError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF250);
  }

  return result;
}

unint64_t sub_1002A6F1C()
{
  result = qword_1004AF260;
  if (!qword_1004AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF260);
  }

  return result;
}

unint64_t sub_1002A6F74()
{
  result = qword_1004AF268;
  if (!qword_1004AF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF268);
  }

  return result;
}

unint64_t sub_1002A6FCC()
{
  result = qword_1004AF270;
  if (!qword_1004AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF270);
  }

  return result;
}

unint64_t sub_1002A7024()
{
  result = qword_1004AF278;
  if (!qword_1004AF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF278);
  }

  return result;
}

uint64_t sub_1002A708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_1002A715C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1002A7214(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_1002A7298();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002A7298()
{
  result = qword_1004AF2E8;
  if (!qword_1004AF2E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1004AF2E8);
  }

  return result;
}

uint64_t sub_1002A732C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A738C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A73DC(uint64_t a1, unint64_t a2)
{
  v4 = kCFPreferencesAnyApplication;
  v5 = kCFPreferencesAnyUser;
  v6 = kCFPreferencesCurrentHost;
  v7 = String._bridgeToObjectiveC()();
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_100184D50(&v34, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v11, v7, v8, v9, v10);

  swift_beginAccess();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_100184D50(&v34, v12, v13, v14);
  swift_endAccess();

  if (!CFPreferencesSynchronize(v12, v13, v14))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000026C0(a1, a2, &v34);
    v27 = "Failed to set %{public}s to %{public}s: Failed to synchronize preferences.";
    goto LABEL_18;
  }

  _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
  swift_beginAccess();
  v12 = v12;
  v13 = v13;
  v14 = v14;
  sub_100184D50(&v34, v12, v13, v14);
  swift_endAccess();

  v15 = String._bridgeToObjectiveC()();
  v16 = CFPreferencesCopyValue(v15, v12, v13, v14);

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000270B4(v28, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000026C0(a1, a2, &v34);
    v27 = "Failed to set %{public}s to %{public}s: Failed persist preferences.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    return 0;
  }

  swift_unknownObjectRetain();
  v17 = String._bridgeToObjectiveC()();
  v18 = CFEqual(v16, v17);
  swift_unknownObjectRelease();

  if (!v18)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1000026C0(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to set %{public}s to %{public}s: Invalid persisted value.", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000270B4(v19, qword_1004B00F8);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1000026C0(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v20, v21, "Set %{public}s to %{public}s.", v22, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t retry<A>(count:backoff:body:shouldRetry:onRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1002A7CF4, 0, 0);
}

uint64_t sub_1002A7CF4()
{
  v1 = v0[11];
  v0[24] = 1;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1002A7DF4;
  v3 = v0[8];

  return v5(v3, 1);
}

uint64_t sub_1002A7DF4()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A7F48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002A7F48(uint64_t a1)
{
  if (*(v1 + 192) < *(v1 + 72) && ((*(v1 + 104))(*(v1 + 208)) & 1) != 0)
  {
    v2 = *(v1 + 80);
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*(v2 + 32))
    {
      if (*(v2 + 32) == 1)
      {
        *(v1 + 56) = *(v1 + 192) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v5 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v5 = v3(*(v1 + 192));
      }

      v3 = v5;
      v4 = v6;
    }

    v10 = *(v1 + 144);
    v9 = *(v1 + 152);
    v11 = *(v1 + 136);
    static Clock<>.continuous.getter();
    *(v1 + 40) = v3;
    *(v1 + 48) = v4;
    *(v1 + 24) = 0;
    *(v1 + 16) = 0;
    *(v1 + 32) = 1;
    v12 = sub_1001FC188(&qword_1004AAFD0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001FC188(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v13 = *(v10 + 8);
    *(v1 + 216) = v13;
    *(v1 + 224) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v14 = swift_task_alloc();
    *(v1 + 232) = v14;
    *v14 = v1;
    v14[1] = sub_1002A8204;
    v16 = *(v1 + 160);
    v15 = *(v1 + 168);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v1 + 16, v15, v12);
  }

  else
  {
    swift_willThrow();

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_1002A8204()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    (*(v2 + 216))(*(v2 + 160), *(v2 + 136));
    v3 = sub_1002A8484;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = *(v2 + 184);
    v6 = *(v2 + 168);
    (*(v2 + 216))(*(v2 + 160), *(v2 + 136));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1002A835C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A835C()
{
  v1 = *(v0 + 192);
  (*(v0 + 120))(v1);

  *(v0 + 192) = v1 + 1;
  v5 = (*(v0 + 88) + **(v0 + 88));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1002A7DF4;
  v3 = *(v0 + 64);

  return v5(v3, v1 + 1);
}

uint64_t sub_1002A8484()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

unint64_t retry<A>(count:delay:backoff:body:shouldRetry:onRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, void (*a10)(uint64_t))
{
  if (a1 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1;
  }

  result = a6(1);
  if (v10)
  {
    if (v12 != 1)
    {
      result = a8(v10);
      if (result)
      {
        if (&_mh_execute_header)
        {
          sub_1001B1C34();
          static Duration.* infix<A>(_:_:)();
          static Duration.+ infix(_:_:)();
          result = Duration.components.getter();
          if ((result & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(result))
            {
              sleep(result);
              a10(1);

              return a6(2);
            }

            goto LABEL_15;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t (*BackOff.duration(for:)(uint64_t a1))(uint64_t)
{
  result = *v1;
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        return static Duration.+ infix(_:_:)();
      }
    }

    else
    {
      return (*v1)(a1);
    }
  }

  return result;
}

uint64_t sub_1002A872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1002A882C, 0, 0);
}

uint64_t sub_1002A882C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1001FC188(&qword_1004AAFD0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001FC188(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1002A89BC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1002A89BC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1002A8B78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002A8B78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A8BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A8C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *static Validate.preflight(configs:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Config(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __chkstk_darwin(v4);
  v9 = &v31[-v8 - 8];
  __chkstk_darwin(v7);
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_11:
    sub_1002A9114(v32);
    return memcpy(v30, v32, 0x2D8uLL);
  }

  v13 = &v31[-v11 - 8];
  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = v12;
  while (1)
  {
    sub_1002AB1D0(v14, v6, type metadata accessor for Config);
    if (*(v6 + 20))
    {
      if (*(v6 + 22))
      {
        break;
      }
    }

    sub_1002AB170(v6, type metadata accessor for Config);
    v14 += v15;
    if (!--v16)
    {
      goto LABEL_11;
    }
  }

  sub_1001F6548(v6, v9);
  sub_1001F6548(v9, v13);
  if (v12 != 1)
  {
    v26 = 0x8000000100441090;
    sub_10028DBF4();
    swift_allocError();
    v28 = 0xD000000000000029;
LABEL_14:
    *v27 = v28;
    v27[1] = v26;
    swift_willThrow();
    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  v17 = &v13[*(v3 + 104)];
  v18 = *v17;
  if (!*v17)
  {
    v26 = 0x8000000100441040;
    sub_10028DBF4();
    swift_allocError();
    v28 = 0xD000000000000015;
    goto LABEL_14;
  }

  v19 = v17[1];

  if (Array<A>.version.getter(v20) != 1)
  {
    sub_10028DBF4();
    swift_allocError();
    *v29 = 0xD000000000000023;
    v29[1] = 0x8000000100441060;
    swift_willThrow();
    sub_1001D6FE0(v18, v19);
    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *&v32[0] = v19;
  sub_1001B54D4();

  v21 = v33;
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = v23;

  if (v21)
  {
    sub_1001D6FE0(v18, v19);

    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001D81C8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1002AB170(0, type metadata accessor for Config);

  sub_100031928(v22, v24);
  sub_1001D6FE0(v18, v19);
  memcpy(v31, v32, sizeof(v31));
  DInitData.init(rawValue:)();
  return memcpy(v30, v31, 0x2D8uLL);
}

uint64_t sub_1002A9128()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Validate.configuration);
  sub_1000270B4(v3, static Validate.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Validate.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E68 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Validate.configuration);
}

uint64_t static Validate.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Validate.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Validate.source.getter()
{
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);

  return Argument.wrappedValue.getter();
}

uint64_t sub_1002A93D8(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10026C6C4(a1, &v9 - v6);
  sub_10026C6C4(v7, v5);
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.setter();
  return sub_100013F2C(v7, &qword_1004AB540, &qword_1003F69E8);
}

uint64_t Validate.source.setter(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  __chkstk_darwin(v2 - 8);
  sub_10026C6C4(a1, &v5 - v3);
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.setter();
  return sub_100013F2C(a1, &qword_1004AB540, &qword_1003F69E8);
}

uint64_t (*Validate.source.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197120;
}

uint64_t Validate.system.getter()
{
  type metadata accessor for Validate(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for Validate(uint64_t a1)
{
  result = qword_1004AF398;
  if (!qword_1004AF398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1002A96C0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Validate(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002A9728(char *a1)
{
  type metadata accessor for Validate(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t Validate.system.setter(char a1)
{
  type metadata accessor for Validate(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  return Flag.wrappedValue.setter();
}

uint64_t (*Validate.system.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Validate(0);
  sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Validate.validate()()
{
  v0 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  __chkstk_darwin(v0 - 8);
  v2 = &v5[-v1];
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.getter();
  v3 = type metadata accessor for DInitConfigSource(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100013F2C(v2, &qword_1004AB540, &qword_1003F69E8);
  if (v4 == 1)
  {
    type metadata accessor for Validate(0);
    sub_1000039E8(&qword_1004AE998, &qword_100402E78);
    Flag.wrappedValue.getter();
    if ((v5[15] & 1) == 0)
    {
      type metadata accessor for ValidationError();
      sub_1002AB310(&qword_1004AB958, &type metadata accessor for ValidationError, &protocol conformance descriptor for ValidationError);
      swift_allocError();
      ValidationError.init(_:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002A9A54()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Validate.run(on:)((v0 + 2));
}

uint64_t Validate.run(on:)(uint64_t a1)
{
  v2[197] = v1;
  v2[196] = a1;
  sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v2[198] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9C10, 0, 0);
}

uint64_t sub_1002A9C10()
{
  sub_100003B20(*(v0 + 1568), v0 + 1480);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 1472) = JSONDecoder.init()();
  *(v0 + 1520) = xmmword_1003F69C0;
  *(v0 + 1536) = 1;
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0;
  sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  Argument.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 1592) = v1;
  *v1 = v0;
  v1[1] = sub_1002A9D2C;
  v2 = *(v0 + 1584);

  return ConfigLoader.load(from:)(v2);
}

uint64_t sub_1002A9D2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1600) = a1;
  *(v4 + 1608) = v1;

  sub_100013F2C(*(v3 + 1584), &qword_1004AB540, &qword_1003F69E8);
  if (v1)
  {
    v5 = sub_1002AA258;
  }

  else
  {
    v5 = sub_1002A9E7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A9E7C()
{
  v25 = v0;
  v1 = v0[201];
  v2 = Array<A>.jsonString(prettyPrinted:redacted:origin:)(1, 0, 0, v0[200]);
  if (v1)
  {
    sub_1001C1C88((v0 + 184));

    v6 = v0[1];
  }

  else
  {
    v4 = v3;
    v5 = v2;
    static Validate.preflight(configs:)(v0[200], __src);

    memcpy(v0 + 93, __src, 0x2D8uLL);
    memcpy(v0 + 2, __src, 0x2D8uLL);
    if (sub_1001D8458((v0 + 2)) == 1 || (v8 = v0[81]) == 0)
    {

      sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100376A40;
      v22 = 0x80000001004410F0;
      v21 = 0xD000000000000066;
    }

    else
    {
      v9 = v0[80];
      sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100376A40;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(37);

      __dst[0] = 0xD000000000000018;
      __dst[1] = 0x8000000100441160;
      v11._countAndFlagsBits = v9;
      v11._object = v8;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 0x3A7963696C6F7020;
      v12._object = 0xE900000000000020;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v5;
      v13._object = v4;
      String.append(_:)(v13);

      v14 = __dst[0];
      v15 = __dst[1];
      *(v10 + 56) = &type metadata for String;
      *(v10 + 32) = v14;
      *(v10 + 40) = v15;
      print(_:separator:terminator:)();

      memcpy(__dst, v0 + 2, 0x2D8uLL);
      sub_10028CF60(v9, v8, __dst);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100376A40;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v17._countAndFlagsBits = 0xD00000000000002CLL;
      v17._object = 0x8000000100441180;
      String.append(_:)(v17);
      v18._countAndFlagsBits = v9;
      v18._object = v8;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0x2E7963696C6F7020;
      v19._object = 0xE800000000000000;
      String.append(_:)(v19);
      v20 = v16;
      v21 = __dst[0];
      v22 = __dst[1];
    }

    *(v20 + 56) = &type metadata for String;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    print(_:separator:terminator:)();

    sub_100013F2C((v0 + 93), &qword_1004AE9F8, &qword_100402ED0);
    sub_1001C1C88((v0 + 184));

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_1002AA258()
{
  sub_1001C1C88(v0 + 1472);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AA2C4()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1002AA2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002AA3C4(uint64_t a1)
{
  v2 = sub_1002AB11C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002AA400(uint64_t a1)
{
  v2 = sub_1002AB11C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Validate.init()()
{
  v0 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  ArgumentHelp.init(stringLiteral:)();
  v7 = type metadata accessor for ArgumentHelp();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for DInitConfigSource(0);
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  type metadata accessor for Validate(0);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8(v6, 0, 1, v7);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t Validate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v36 = a2;
  v38 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v35 - v2;
  v3 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v42 = &v35 - v4;
  v43 = sub_1000039E8(&qword_1004AF318, &unk_100404A88);
  v39 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v35 - v5;
  v6 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Validate(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArgumentHelp.init(stringLiteral:)();
  v17 = type metadata accessor for ArgumentHelp();
  v18 = *(*(v17 - 8) + 56);
  v18(v12, 0, 1, v17);
  v19 = type metadata accessor for CompletionKind();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  type metadata accessor for DInitConfigSource(0);
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  v20 = *(v14 + 28);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v18(v12, 0, 1, v17);
  v21 = v45;
  v22 = v16;
  Flag<A>.init(wrappedValue:name:help:)();
  sub_10000E2A8(v21, v21[3]);
  sub_1002AB11C();
  v23 = v44;
  v24 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100003C3C(v21);
    v34 = v22;
  }

  else
  {
    v26 = v39;
    v25 = v40;
    v48 = 0;
    sub_10000E720(&qword_1004AEA48, &qword_1004AE988, &qword_100402E70, &protocol conformance descriptor for Argument<A>);
    v27 = v41;
    v28 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v22;
    (*(v25 + 40))(v22, v42, v27);
    v47 = 1;
    sub_10000E720(&qword_1004AEA50, &qword_1004AE998, &qword_100402E78, &protocol conformance descriptor for Flag<A>);
    v32 = v37;
    v31 = v38;
    v33 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 8))(v28, v33);
    (*(v35 + 40))(v30 + v20, v32, v31);
    sub_1002AB1D0(v30, v36, type metadata accessor for Validate);
    sub_100003C3C(v21);
    v34 = v30;
  }

  return sub_1002AB170(v34, type metadata accessor for Validate);
}

uint64_t default argument 0 of Validate.init(source:system:)()
{
  v0 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for CompletionKind();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for DInitConfigSource(0);
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  return Argument.init<A>(help:completion:)();
}

uint64_t Validate.init(source:system:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  type metadata accessor for Validate(0);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v10 = type metadata accessor for ArgumentHelp();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_1002AB05C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Validate.run()();
}

unint64_t sub_1002AB11C()
{
  result = qword_1004AF320;
  if (!qword_1004AF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF320);
  }

  return result;
}

uint64_t sub_1002AB170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002AB1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AB310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AB3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1002AB4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AE988, &qword_100402E70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004AE998, &qword_100402E78);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1002AB5E8(uint64_t a1)
{
  sub_1002AB66C(319);
  if (v1 <= 0x3F)
  {
    sub_10028E120();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002AB66C(uint64_t a1)
{
  if (!qword_1004AEAB8)
  {
    sub_100003A94(&qword_1004AB540, &qword_1003F69E8);
    v1 = type metadata accessor for Argument();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AEAB8);
    }
  }
}

unint64_t sub_1002AB6E4()
{
  result = qword_1004AF3D0;
  if (!qword_1004AF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3D0);
  }

  return result;
}

unint64_t sub_1002AB73C()
{
  result = qword_1004AF3D8;
  if (!qword_1004AF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3D8);
  }

  return result;
}

unint64_t sub_1002AB794()
{
  result = qword_1004AF3E0;
  if (!qword_1004AF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3E0);
  }

  return result;
}

uint64_t static SCNSManagerRef.create(_:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SCNSManagerCreate();

  return v1;
}

uint64_t SCNSManagerRef.copyService(interface:netif:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = SCNSManagerCopyService();
  if (v5)
  {
    v6 = v5;
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static SCNSManagerRef.logger);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000026C0(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v8, v9, "Found service for interface %s", v10, 0xCu);
      sub_100003C3C(v11);
    }

    return v6;
  }

  else
  {
    v13 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000270B4(v14, static SCNSManagerRef.logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1000026C0(a1, a2, &v22);
      *(v17 + 12) = 2112;
      sub_100189C58();
      swift_allocError();
      *v20 = "copyService(interface:netif:)";
      *(v20 + 8) = 29;
      *(v20 + 16) = 2;
      *(v20 + 20) = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "No service found for %s: %@", v17, 0x16u);
      sub_10019AC78(v18);

      sub_100003C3C(v19);
    }

    return 0;
  }
}

Swift::Bool __swiftcall SCNSManagerRef.apply()()
{
  v0 = SCNSManagerApplyChanges();
  if (!v0)
  {
    v1 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000270B4(v2, static SCNSManagerRef.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v7 = "apply()";
      *(v7 + 8) = 7;
      *(v7 + 16) = 2;
      *(v7 + 20) = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to apply network configuration: %@", v5, 0xCu);
      sub_10019AC78(v6);
    }
  }

  return v0 != 0;
}

uint64_t sub_1002ABCA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static SCNSManagerRef.logger);
  sub_1000270B4(v0, static SCNSManagerRef.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t SCNSManagerRef.logger.unsafeMutableAddressor()
{
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static SCNSManagerRef.logger);
}

uint64_t static SCNSManagerRef.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static SCNSManagerRef.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *SCNSManagerRef.interfaces.unsafeMutableAddressor()
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  return &static SCNSManagerRef.interfaces;
}

double static SCNSManagerRef.interfaces.getter()
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static SCNSManagerRef.interfaces.setter(uint64_t a1)
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SCNSManagerRef.interfaces = a1;
}

uint64_t (*static SCNSManagerRef.interfaces.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

const __SCNetworkInterface *_sSo14SCNSManagerRefa10DarwinInitE13copyInterface4nameSo09SCNetworkfB0aSgSS_tF_0(uint64_t a1, void *a2)
{
  if (qword_1004A9E78 != -1)
  {
LABEL_28:
    swift_once();
  }

  swift_beginAccess();
  if (static SCNSManagerRef.interfaces >> 62)
  {
    v4 = &unk_1004E2000;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_5:
      while (1)
      {
        v6 = v4[461];
        if (!(v6 >> 62))
        {
          break;
        }

        v5 = _CocoaArrayWrapper.endIndex.getter();
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        __break(1u);
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          v21 = SCError();
          if (qword_1004A9E70 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_1000270B4(v22, static SCNSManagerRef.logger);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            sub_100189C58();
            swift_allocError();
            *v27 = "copyInterface(name:)";
            *(v27 + 8) = 20;
            *(v27 + 16) = 2;
            *(v27 + 20) = v21;
            v28 = _swift_stdlib_bridgeErrorToNSError();
            *(v25 + 4) = v28;
            *v26 = v28;
            _os_log_impl(&_mh_execute_header, v23, v24, "No interfaces found: %@", v25, 0xCu);
            sub_10019AC78(v26);
          }

          return 0;
        }
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
LABEL_39:
        v29 = SCError();
        if (qword_1004A9E70 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000270B4(v30, static SCNSManagerRef.logger);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v39[0] = v35;
          *v33 = 136315394;
          *(v33 + 4) = sub_1000026C0(a1, a2, v39);
          *(v33 + 12) = 2112;
          sub_100189C58();
          swift_allocError();
          *v36 = "copyInterface(name:)";
          *(v36 + 8) = 20;
          *(v36 + 16) = 2;
          *(v36 + 20) = v29;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 14) = v37;
          *v34 = v37;
          _os_log_impl(&_mh_execute_header, v31, v32, "Found no matching interfaces with name %s: %@", v33, 0x16u);
          sub_10019AC78(v34);

          sub_100003C3C(v35);
        }

        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = &unk_1004E2000;
    if (*((static SCNSManagerRef.interfaces & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  SCNetworkInterfaceCopyAll();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v39[0] = 0;
  type metadata accessor for SCNetworkInterface(0);
  v5 = static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
LABEL_38:
  v7 = v5;
  if (!v5)
  {
    goto LABEL_39;
  }

LABEL_7:
  v8 = 0;
  while (1)
  {
    swift_beginAccess();
    if ((static SCNSManagerRef.interfaces & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((static SCNSManagerRef.interfaces & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(static SCNSManagerRef.interfaces + 8 * v8 + 32);
    }

    v10 = v9;
    swift_endAccess();
    v11 = SCNetworkInterfaceGetBSDName(v10);
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = String.init(_:)(v12);
    if (v13._countAndFlagsBits == a1 && v13._object == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_22;
    }

LABEL_9:
    ++v8;

    if (v7 == v8)
    {
      goto LABEL_39;
    }
  }

LABEL_22:
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000270B4(v16, static SCNSManagerRef.logger);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000026C0(a1, a2, v39);
    _os_log_impl(&_mh_execute_header, v17, v18, "Found matching interface with name: %s", v19, 0xCu);
    sub_100003C3C(v20);
  }

  return v10;
}

uint64_t _sSo14SCNSManagerRefa10DarwinInitE18copyProtocolEntity7service9interface5protoSo012CFDictionaryB0aSgSo011SCNSServiceB0a_S2StF_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = SCNSServiceCopyProtocolEntity();

  if (v10)
  {
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, static SCNSManagerRef.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1000026C0(a2, a3, &v24);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1000026C0(a4, a5, &v24);
      _os_log_impl(&_mh_execute_header, v12, v13, "Found config for %s and %s", v14, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v15 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000270B4(v16, static SCNSManagerRef.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000026C0(a2, a3, &v24);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1000026C0(a4, a5, &v24);
      *(v19 + 22) = 2112;
      sub_100189C58();
      swift_allocError();
      *v21 = "copyProtocolEntity(service:interface:proto:)";
      *(v21 + 8) = 44;
      *(v21 + 16) = 2;
      *(v21 + 20) = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "No existing config for %s and %s: %@", v19, 0x20u);
      sub_10019AC78(v20);

      swift_arrayDestroy();
    }

    return 0;
  }

  return v10;
}

BOOL _sSo14SCNSManagerRefa10DarwinInitE17setProtocolEntity7service9interface5proto6configSbSo011SCNSServiceB0a_S2SSo012CFDictionaryB0aSgtF_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = SCNSServiceSetProtocolEntity();

  if (!v11)
  {
    v12 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000270B4(v13, static SCNSManagerRef.logger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = v12;
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v16 = 136315650;
      *(v16 + 4) = sub_1000026C0(a2, a3, &v22);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1000026C0(a4, a5, &v22);
      *(v16 + 22) = 2112;
      sub_100189C58();
      swift_allocError();
      *v18 = "setProtocolEntity(service:interface:proto:config:)";
      *(v18 + 8) = 50;
      *(v18 + 16) = 2;
      *(v18 + 20) = v21;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to set config for %s and proto %s: %@", v16, 0x20u);
      sub_10019AC78(v17);

      swift_arrayDestroy();
    }
  }

  return v11 != 0;
}

void *sub_1002ACC50(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v29 = a7;
  v30 = a1;
  v31 = a2;
  v11 = a5(0);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v32 = a4;
  v14 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v7;
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v35 = _swiftEmptyArrayStorage;
  a6(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v26 = a6;
    v16 = 0;
    v15 = v35;
    v17 = v32;
    if (v32 <= a3)
    {
      v17 = a3;
    }

    v27 = v17 - a3 + 1;
    while (v16 < v14)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_17;
      }

      v34 = a3 + v16;
      v19 = v13;
      v20 = v33;
      v30(&v34);
      v33 = v20;
      if (v20)
      {
        goto LABEL_22;
      }

      v35 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        v26(v21 > 1, v22 + 1, 1);
        v15 = v35;
      }

      v15[2] = v22 + 1;
      v23 = v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22;
      v13 = v19;
      sub_1002DE698(v19, v23, v29);
      if (v32 < a3)
      {
        goto LABEL_18;
      }

      if (v27 == ++v16)
      {
        goto LABEL_19;
      }

      if (v18 == v14)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *sub_1002ACE7C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      return v6;
    }

    v25 = _swiftEmptyArrayStorage;
    sub_100311298(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v6 = v25;
      if (a4 <= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a4;
      }

      v11 = a3 - v10;
      while (1)
      {
        v22 = a3 + v9;
        a1(v23, &v22);
        if (v4)
        {
          goto LABEL_23;
        }

        v21 = v24;
        v19 = v23[2];
        v20 = v23[3];
        v17 = v23[0];
        v18 = v23[1];
        v25 = v6;
        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          sub_100311298((v12 > 1), v13 + 1, 1);
          v6 = v25;
        }

        v6[2] = v13 + 1;
        v14 = &v6[9 * v13];
        *(v14 + 2) = v17;
        v14[12] = v21;
        *(v14 + 4) = v19;
        *(v14 + 5) = v20;
        *(v14 + 3) = v18;
        if (a4 < a3)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (!(v11 + v9))
        {
          goto LABEL_19;
        }

        if (~a3 + a4 == v9)
        {
          return v6;
        }

        if (__OFADD__(++v9, 1))
        {
          goto LABEL_20;
        }
      }
    }
  }

  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

void *sub_1002AD010(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = a3;
  v30 = _swiftEmptyArrayStorage;
  a5(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v30;
    v10 = a4;
    if (a4 <= v8)
    {
      v10 = v8;
    }

    v23 = v10 - v8 + 1;
    while (v9 < v6)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v12 = v8;
      v26 = v8 + v9;
      a1(&v27, &v26);
      if (v5)
      {
        goto LABEL_22;
      }

      v14 = v27;
      v13 = v28;
      v15 = v29;
      v30 = v7;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        v21 = v28;
        v19 = v29;
        a5(v16 > 1, v17 + 1, 1);
        v15 = v19;
        v13 = v21;
        v7 = v30;
      }

      v7[2] = v17 + 1;
      v18 = &v7[3 * v17];
      v18[4] = v14;
      v18[5] = v13;
      v18[6] = v15;
      if (a4 < v12)
      {
        goto LABEL_18;
      }

      if (v23 == ++v9)
      {
        goto LABEL_19;
      }

      v8 = v12;
      if (v11 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1002AD1B0()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Generate.configuration);
  sub_1000270B4(v3, static Generate.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Generate.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Generate.configuration);
}

uint64_t static Generate.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Generate.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Generate.fileName.getter()
{
  sub_1000039E8(&qword_1004AF3E8, &qword_100404CA0);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t sub_1002AD454(uint64_t *a1)
{

  sub_1000039E8(&qword_1004AF3E8, &qword_100404CA0);
  return Argument.wrappedValue.setter();
}

uint64_t (*Generate.fileName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AF3E8, &qword_100404CA0);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t (*Generate.log.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_1002AD680(uint64_t a1)
{
  v1 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v9 = type metadata accessor for ArgumentHelp();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = type metadata accessor for CompletionKind();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t (*Generate.preInitCommands.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100197120;
}

uint64_t (*Generate.preInitCritical.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.ssh.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_1002ADBA0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002ADC08(char *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t Generate.ssh.setter(char a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t (*Generate.ssh.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.sshPasswordAuth.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_1002ADDB0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002ADE18(char *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t Generate.sshPasswordAuth.setter(char a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t (*Generate.sshPasswordAuth.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t (*Generate.perfdata.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t (*Generate.issueDCRT.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.computerName.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AE1A0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AE208(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate.computerName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.computerName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate._hostName.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AE3C0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AE428(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate._hostName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate._hostName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.localHostName.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AE5E0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AE648(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate.localHostName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.localHostName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.usageLabel.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AE800@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AE868(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate.usageLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.usageLabel.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.configSecurityPolicy.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AEA20@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AEA88(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate.configSecurityPolicy.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.configSecurityPolicy.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.configSecurityPolicyVersion.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  Option.wrappedValue.getter();
  return v1;
}

void *sub_1002AEC44@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1002AECB4(uint64_t *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t Generate.configSecurityPolicyVersion.setter(uint64_t a1, char a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.configSecurityPolicyVersion.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.retainPreviouslyCachedCryptexesUnsafelyFlagCount.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF408, &qword_100404CC8);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_1002AEE6C@<X0>(void *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF408, &qword_100404CC8);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002AEED4(uint64_t *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF408, &qword_100404CC8);
  return Flag.wrappedValue.setter();
}

uint64_t Generate.retainPreviouslyCachedCryptexesUnsafelyFlagCount.setter(uint64_t a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF408, &qword_100404CC8);
  return Flag.wrappedValue.setter();
}

uint64_t (*Generate.retainPreviouslyCachedCryptexesUnsafelyFlagCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF408, &qword_100404CC8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.cryptexCacheMaxTotalSize.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  Option.wrappedValue.getter();
  return v1;
}

void *sub_1002AF080@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1002AF0F0(uint64_t *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t Generate.cryptexCacheMaxTotalSize.setter(uint64_t a1, char a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.cryptexCacheMaxTotalSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.diagnosticsSubmission.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_1002AF2A8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002AF310(char *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t Generate.diagnosticsSubmission.setter(char a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t (*Generate.diagnosticsSubmission.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.applyTimeoutArgument.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  return v1;
}

double sub_1002AF4B8@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  Option.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AF520(void *a1)
{
  type metadata accessor for Generate(0);

  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t Generate.applyTimeoutArgument.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.applyTimeoutArgument.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0, &unk_100404CA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.bandwidthLimit.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF410, &qword_100404CD0);
  Option.wrappedValue.getter();
  return v1;
}

void *sub_1002AF6DC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF410, &qword_100404CD0);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1002AF74C(uint64_t *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF410, &qword_100404CD0);
  return Option.wrappedValue.setter();
}

uint64_t Generate.bandwidthLimit.setter(uint64_t a1, char a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF410, &qword_100404CD0);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.bandwidthLimit.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF410, &qword_100404CD0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.lockCryptexes.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  Flag.wrappedValue.getter();
  return v1;
}

void *sub_1002AF904@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002AF96C(char *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t Generate.lockCryptexes.setter(char a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  return Flag.wrappedValue.setter();
}

uint64_t (*Generate.lockCryptexes.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8, &qword_100404CB8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.networkUplinkMTU.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  Option.wrappedValue.getter();
  return v1;
}

void *sub_1002AFB18@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1002AFB88(uint64_t *a1)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t Generate.networkUplinkMTU.setter(uint64_t a1, char a2)
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  return Option.wrappedValue.setter();
}

uint64_t (*Generate.networkUplinkMTU.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF400, &qword_100404CC0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.cryptexOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF418, &qword_100404CD8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002AFD40()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF418, &qword_100404CD8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002AFD98(uint64_t a1)
{
  v2 = type metadata accessor for Generate.CryptexOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.CryptexOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.CryptexOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF418, &qword_100404CD8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.CryptexOptions);
}

uint64_t Generate.cryptexOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.CryptexOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.CryptexOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF418, &qword_100404CD8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.CryptexOptions);
}

uint64_t (*Generate.cryptexOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF418, &qword_100404CD8);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.diavloOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF420, &qword_100404CE0);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B008C()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF420, &qword_100404CE0);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B00E4(uint64_t a1)
{
  v2 = type metadata accessor for Generate.DiavloOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.DiavloOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.DiavloOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF420, &qword_100404CE0);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.DiavloOptions);
}

uint64_t Generate.diavloOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.DiavloOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.DiavloOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF420, &qword_100404CE0);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.DiavloOptions);
}

uint64_t sub_1002B02E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B0350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*Generate.diavloOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF420, &qword_100404CE0);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.installOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF428, &qword_100404CE8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B04A0()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF428, &qword_100404CE8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B04F8(uint64_t a1)
{
  v2 = type metadata accessor for Generate.InstallOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.InstallOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.InstallOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF428, &qword_100404CE8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.InstallOptions);
}

uint64_t Generate.installOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.InstallOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.InstallOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF428, &qword_100404CE8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.InstallOptions);
}

uint64_t (*Generate.installOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF428, &qword_100404CE8);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.packageOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF430, &qword_100404CF0);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B07EC()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF430, &qword_100404CF0);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B0844(uint64_t a1)
{
  v2 = type metadata accessor for Generate.PackageOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.PackageOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.PackageOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF430, &qword_100404CF0);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.PackageOptions);
}

uint64_t Generate.packageOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.PackageOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.PackageOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF430, &qword_100404CF0);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.PackageOptions);
}

uint64_t (*Generate.packageOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF430, &qword_100404CF0);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.resultConfig.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF438, &qword_100404CF8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B0B38()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF438, &qword_100404CF8);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B0B90(uint64_t a1)
{
  v2 = type metadata accessor for Generate.ResultOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.ResultOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.ResultOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF438, &qword_100404CF8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.ResultOptions);
}

uint64_t Generate.resultConfig.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.ResultOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.ResultOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF438, &qword_100404CF8);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.ResultOptions);
}

uint64_t (*Generate.resultConfig.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF438, &qword_100404CF8);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.preferenceOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF440, &qword_100404D00);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B0E84()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF440, &qword_100404D00);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B0EDC(uint64_t a1)
{
  v2 = type metadata accessor for Generate.PreferenceOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.PreferenceOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.PreferenceOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF440, &qword_100404D00);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.PreferenceOptions);
}

uint64_t Generate.preferenceOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.PreferenceOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.PreferenceOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF440, &qword_100404D00);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.PreferenceOptions);
}

uint64_t (*Generate.preferenceOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF440, &qword_100404D00);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.narrativeIdentitiesOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF448, &qword_100404D08);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B11D0()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF448, &qword_100404D08);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B1228(uint64_t a1)
{
  v2 = type metadata accessor for Generate.NarrativeIdentityOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.NarrativeIdentityOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.NarrativeIdentityOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF448, &qword_100404D08);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.NarrativeIdentityOptions);
}

uint64_t Generate.narrativeIdentitiesOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.NarrativeIdentityOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.NarrativeIdentityOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF448, &qword_100404D08);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.NarrativeIdentityOptions);
}

uint64_t (*Generate.narrativeIdentitiesOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF448, &qword_100404D08);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.userOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF450, &qword_100404D10);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B151C()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF450, &qword_100404D10);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B1574(uint64_t a1)
{
  v2 = type metadata accessor for Generate.UserOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.UserOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.UserOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF450, &qword_100404D10);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.UserOptions);
}

uint64_t Generate.userOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.UserOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.UserOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF450, &qword_100404D10);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.UserOptions);
}

uint64_t (*Generate.userOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF450, &qword_100404D10);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.logOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF458, &qword_100404D18);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B1868()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF458, &qword_100404D18);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B18C0(uint64_t a1)
{
  v2 = type metadata accessor for Generate.LogOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.LogOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.LogOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF458, &qword_100404D18);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.LogOptions);
}

uint64_t Generate.logOptions.setter(uint64_t a1)
{
  v2 = type metadata accessor for Generate.LogOptions(0);
  __chkstk_darwin(v2 - 8);
  sub_1002B02E8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Generate.LogOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF458, &qword_100404D18);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(a1, type metadata accessor for Generate.LogOptions);
}

uint64_t (*Generate.logOptions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF458, &qword_100404D18);
  *(v3 + 32) = OptionGroup.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.networkOptions.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF460, &unk_100404D20);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B1BB4()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF460, &unk_100404D20);
  return OptionGroup.wrappedValue.getter();
}

uint64_t sub_1002B1C0C(uint64_t a1)
{
  v2 = type metadata accessor for Generate.NetworkOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1002B02E8(a1, &v9 - v6, type metadata accessor for Generate.NetworkOptions);
  sub_1002B02E8(v7, v5, type metadata accessor for Generate.NetworkOptions);
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF460, &unk_100404D20);
  OptionGroup.wrappedValue.setter();
  return sub_1002B0350(v7, type metadata accessor for Generate.NetworkOptions);
}